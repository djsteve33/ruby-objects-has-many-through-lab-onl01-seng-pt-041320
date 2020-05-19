class Doctor
  attr_accessor :name, :date
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def new_appintment(date)
    Appointment.new(date, self, patient)
  end
  
  def appointments
    Appointment.all.select do |appointment| appointment.patient == self
  end
  
  def patients
    appointment.map do |appointment| appointment.patient
  end
  
end 