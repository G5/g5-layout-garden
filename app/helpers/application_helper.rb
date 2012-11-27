module ApplicationHelper
  def created_at_computer_readable(date)
    date.utc.to_s(:computer)
  end
  
end
