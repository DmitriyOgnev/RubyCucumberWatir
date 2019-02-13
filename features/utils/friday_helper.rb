module FridayHelper
  def FridayHelper.isFriday?(day)
    if day=='Friday'
      'TGIF'
    else
      "Nope"
    end
  end
end