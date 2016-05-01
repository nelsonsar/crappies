class ComeOutHandler
  attr_writer :next

  def handle(runs)
    return result(runs) if can_handle?(runs)

    return ResultFactory.undefined unless @next

    @next.handle(runs)
  end

  protected

  def can_handle?(runs)
    raise 'Override me'
  end

  def result
    raise 'Override me'
  end
end
