class DropConceptTable < ActiveRecord::Migration
  def up
    drop_table :concepts
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end