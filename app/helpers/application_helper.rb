module ApplicationHelper

  def payment_status( status )
    if status === 'paid'
      'text-success' 
    elsif status === 'partial'
      'text-warning' 
    else
      'text-danger'
    end
  end
end
