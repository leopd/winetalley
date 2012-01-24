class Bottlechange < ActiveRecord::Base
  belongs_to :drinker
  validates :drinker, :presence => true
  validates :addremove, :presence => true,
                        :inclusion => { :in => [-1, 1] }

  before_save :remove_blank_comment

  def remove_blank_comment
    if self.comment == " "
        self.comment = nil
    end
  end

  def plusminus
    if self.addremove > 0
       return "+"
    else
        return "-"
    end
  end

end
