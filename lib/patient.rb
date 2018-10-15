class Patient
  attr_accessor :name

    @@all = []

  def initialize(name)
    @name = name
    @appointments = []
  end

  def self.all
    @@all
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
