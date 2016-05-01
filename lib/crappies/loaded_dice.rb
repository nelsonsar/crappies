class LoadedDice

  private_class_method :new

  def initialize(result)
    @result = result
  end

  def self.returning(result)
    new(result)
  end

  def roll
    @result
  end
end
