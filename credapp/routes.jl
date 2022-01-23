using Genie.Router
using ApplicationsController
using Genie, Stipple, StippleUI

#=== config ===#
if Genie.Configuration.isprod()
  for m in [Genie, Stipple, StippleUI, StipplePlotly]
    m.assets_config.host = "https://cdn.statically.io/gh/GenieFramework"
  end
end

#=== server ===#
route("/") do
  serve_static_file("welcome.html")
end

route("/applications", ApplicationsController.applications)