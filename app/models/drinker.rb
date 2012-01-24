class Drinker < ActiveRecord::Base
    validates :name, :presence => true
    validates :talley, :presence => true

    has_many :bottlechanges
    has_many :bottlechanges,
                  :after_add    => :talley_delta,
                  :after_remove => :talley_delta

    def full_talley
        sum = 0
        self.bottlechanges.each do |bc|
            if bc.addremove
                sum += bc.addremove
            end
        end
        self.talley = sum
        self.save
        return sum
    end

    def talley_delta(bottlechange)
        if bottlechange.addremove 
            self.talley += bottlechange.addremove
            self.save
        end
    end

end
