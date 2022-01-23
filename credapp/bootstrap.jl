(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Credapp
push!(Base.modules_warned_for, Base.PkgId(Credapp))
Credapp.main()
