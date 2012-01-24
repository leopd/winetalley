class Bottlechange < ActiveRecord::Base
  belongs_to :drinker
  validates :drinker, :presence => true
  validates :addremove, :presence => true,
                        :inclusion => { :in => [-1, 1] }

  #def talley_parent
    # Update the talley counter in the parent (drinker) object.
    #drinker.full_talley
  #end

end
