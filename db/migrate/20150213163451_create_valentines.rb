class CreateValentines < ActiveRecord::Migration
  def change
    create_table :valentines do |t|
      t.string :message
      t.string :name
    end
  end
end
