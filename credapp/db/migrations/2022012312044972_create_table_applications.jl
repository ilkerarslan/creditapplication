module CreateTableApplications

import SearchLight.Migrations: create_table, column, columns, pk, add_index, drop_table, add_indices

function up()
  create_table(:applications) do
    [
      pk()
      column(:refno ,:string, limit=16)    
      column(:musno ,:integer, limit=16)    
      column(:musunvan ,:string, limit=100)
      column(:borcluno ,:integer, limit=16)
      column(:borcluunvan ,:string, limit=100)
      column(:cekno ,:integer, limit=16)
      column(:cektutar ,:integer, limit=16)
    ]
  end

  add_index(:applications, :refno)
  add_index(:applications, :musno)
  add_index(:applications, :borcluno)
  add_index(:applications, :cekno)
  
end

function down()
  drop_table(:applications)
end

end