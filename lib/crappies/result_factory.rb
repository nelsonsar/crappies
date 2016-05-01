module ResultFactory
  def self.win
    WinResult.new
  end

  def self.loss
    LossResult.new
  end

  def self.undefined
    UndefinedResult.new
  end
end
