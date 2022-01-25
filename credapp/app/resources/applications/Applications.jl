module Applications

using Stipple
using Genie.Requests
using Dates 
using SearchLight, SearchLightSQLite
using OrderedCollections
using DataFrames, GLM

import SearchLight: AbstractModel, DbId

export Application

@reactive mutable struct Application <: ReactiveModel
  id::DbId = DbId()
  refno::String = ""
  musno::Int = 0
  musunvan::String = "" 
  borcluno::Int = 0 
  borcluunvan::String = "" 
  cekno::Int = 0 
  cektutar::Int = 0   
end

function factory()
  model = Application |> init  
  model
end


end