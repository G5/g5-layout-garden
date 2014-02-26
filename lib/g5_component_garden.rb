module G5ComponentGarden
  COMPONENT_PATH = "public/static/components/"

  class << self
    def last_modified
      # used in production for http conditional get caching
      # every deploy creates this directory
      # so the mtime is updated after a deploy
      File.new(COMPONENT_PATH).mtime.utc
    end

    def all
      # each directory in public/components is a component
      components = file_paths(COMPONENT_PATH, "*")
      # parse from directory each one and return them as an Array
      components.map do |component_directory|
        parse_from_directory(component_directory)
      end
    end

    def find(slug)
      # look for directory in public/components with name slug
      component = file_paths(COMPONENT_PATH, slug).first
      # parse from directory
      parse_from_directory(component)
    end

    def parse_from_directory(directory)
      # assign name, summary, and preview from index.html
      component = Microformats2.parse(File.join(directory, "index.html")).g5_components.first
      relative_directory = get_directory(directory)

      # assign uid as slug from directory name for now
      uid = directory.split("/").last
      component.add_property("u-g5-uid", uid)

      thumbnail_path = "#{relative_directory}/images/thumbnail.png"
      component.add_property("u-photo", thumbnail_path)

      assemble_component_assets(component, directory)
    end

    def assemble_component_assets(component, directory)
      component_assets = file_basenames(directory, "*").select{ |f| ['stylesheets', 'images'].include?(f) }
      component_assets.each do |component_asset|
        folder = component_asset.singularize
        file_paths_without_public(directory, component_asset, "*").each do |file|
          component.add_property("u-g5-#{folder}", file)
        end
      end
      component
    end

    def file_basenames(*path)
      Dir[File.join(path)].map { |d| File.basename(d) }
    end

    def file_paths(*path)
      Dir[File.join(path)].map { |d| File.path(d) }
    end

    def file_paths_without_public(*path)
      Dir[File.join(path)].map { |d| File.path(d).split("/")[1..-1].join("/") }
    end

    def get_directory(directory)
      directory.split("/")[1..-1].join("/")
    end
  end # class << self
end
