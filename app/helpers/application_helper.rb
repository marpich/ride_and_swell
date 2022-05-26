module ApplicationHelper

  def status_class(status)
    case status
    when "pending" then "pending_status"
    when "accepted" then "accepted_status"
    when "rejected" then "rejected_status"
    end
  end


end
