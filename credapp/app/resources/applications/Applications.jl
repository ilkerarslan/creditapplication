module Applications

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Application

@kwdef mutable struct Application <: AbstractModel
  id::DbId = DbId()
  refno::String = ""
  musno::Int = 0
  musunvan::String = "" 
  borcluno::Int = 0 
  borcluunvan::String = "" 
  cekno::Int = 0 
  cektutar::Int = 0 
end

end