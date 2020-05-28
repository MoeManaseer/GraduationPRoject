class CreateForm3 < ActiveRecord::Migration[5.2]
  def change
    create_table :form3s do |t|
      t.string :formType
      t.string :number
      t.string :info
      t.string :name
      t.string :degree
      t.string :time
      t.string :reward
      t.string :mainB
      t.string :jobN
      t.string :date
      t.timestamps
    end
  end
end
