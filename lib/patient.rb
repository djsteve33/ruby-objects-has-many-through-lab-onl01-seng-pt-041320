class Patient
  attr_accessor :name
  
    @@all = []
    
    def initalize(name)
      @name = name
      @@all << self 
    end
    
    def self.all 
      @@all 
    end
    
    def new_appointment(date, doctor)
      Appointment.new(date,doctor, self)
    end
    
    def appointments
      Appointment.all.select do |appointment| appointment.patient == self
    end
    
    def doctors
      appointment.map do |appointment|appointment.doctor
    end
end 