class ComeOutHandler
  def handle(runs)
    return result(runs) if can_handle?(runs)

    return ResultFactory.undefined unless @next

    @next.handle(runs)
  end

  def next(handler)
    @next = handler
  end

  protected

  def can_handle?(runs)
    raise 'Override me'
  end

  def result
    raise 'Override me'
  end
end
