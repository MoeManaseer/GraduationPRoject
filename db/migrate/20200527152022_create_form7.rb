class CreateForm7 < ActiveRecord::Migration[5.2]
  def change
    create_table :form7s do |t|
      t.timestamps
      t.string :formType
      t.string :amount
      t.string :name
      t.string :jNum
      t.string :from
      t.string :to
      t.string :rName
      t.string :fWork
      t.string :Date
      t.string :notes
    end
  end
end
