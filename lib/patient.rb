class Patient
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @appointments = []
        self.class.all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.filter{|a| a.patient == self}
    end

    def doctors
        appointments.collect{|a| a.doctor}.uniq
    end
end
