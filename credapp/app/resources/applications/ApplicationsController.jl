module ApplicationsController
  using Genie, Stipple, StippleUI
  using Genie.Renderers.Html
  using Applications

  function applications()
    html(:applications, "applications.jl", model=Applications.factory(), context=@__MODULE__)
  end

  function basvuru()
    html(:applications, "basvuru.jl", model=Applications.factory(), context=@__MODULE__)
  end


end
