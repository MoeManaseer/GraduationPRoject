class CreateForm8 < ActiveRecord::Migration[5.2]
  def change
    create_table :form8s do |t|
      t.timestamps
      t.string :formType
      t.string :amount
      t.string :number
      t.string :from
      t.string :rNum
      t.string :mawsoom
      t.string :mR
      t.string :jNum
      t.string :date
    end
  end
end
