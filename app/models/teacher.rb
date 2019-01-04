class Teacher < ApplicationRecord
    has_many :instruments
    has_many :lessons
    has_many :availabilities

    #def availabilities_in_week(start_date)
        # start_date = '11022019'
        # DateTime.strptime(start_date, '%d/%m/%Y')
        # select lessons that occur in the next 7 days after start_date
        # return availabilities, combined with the lessons, stating which availabilities are booked
    #end

    def availabilities_in_week(start_date)
     start = DateTime.strptime(start_date, '%d%m%Y')
     lessons = self.lessons
     lessons_booked = lessons.select{ |l| ((start)..(start + 7.days)).cover?(DateTime.strptime(l.date, '%d/%m/%Y')) }
     availabilities_booked = lessons_booked.map{ |l| l.availability }

     return self.availabilities.each_with_index.map do |a, i|
        a.attributes.merge({booked: availabilities_booked.include?(a), date: start + i.days})
     end
    end

end