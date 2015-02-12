class UserMailer < ActionMailer::Base
  # default to: Proc.new { Admin.pluck(:email) },
  default to: 'lyrs@me.com',
          from: 'notification@example.com'

  def new_record_in_blog()
    # @post = post
    mail(subject: "Сеть парикмахерских 'Машенька'. У нас есть новости для Вас!")
  end

end
