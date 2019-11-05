require 'date'
class Offset
  def todays_date
    date = Time.now.strftime("%d/%m/%y")
    date.tr('/', '').to_i
  end

  def square_date(date)
    todays_date * todays_date.round(2)
  end
end
