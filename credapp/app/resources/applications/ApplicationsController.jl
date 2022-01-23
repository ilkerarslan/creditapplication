module ApplicationsController
  using Genie, Stipple, StippleUI
  using Genie.Renderers.Html
  using Applications

  function apply()
    html(:applications, "apply.jl", context=@__MODULE__)
  end

end
