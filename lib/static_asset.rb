class StaticAsset < File
  class << self
    def all
      Dir.glob('lib/layouts/*.html').collect {|file| open(file)}
    end
  end

  def name
    path.split("/").last.gsub(".html", "")
  end
end