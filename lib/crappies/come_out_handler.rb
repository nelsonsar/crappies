class ComeOutHandler
  def handle(runs)
    return result(runs) if can_handle?(runs)

    @next.handle(runs) if @next
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
