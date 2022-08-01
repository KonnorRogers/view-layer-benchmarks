class Template
  def render
    @_template ||= template
    @_render ||= eval(Erubi::Engine.new(@_template).src).html_safe
  end
end
