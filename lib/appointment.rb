class Appointment
  attr_accessor :date, :doctor, :patient

    @@all = []

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
  
  def self.all
    @@all
  end
end 