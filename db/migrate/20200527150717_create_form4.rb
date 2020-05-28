class CreateForm4 < ActiveRecord::Migration[5.2]
  def change
    create_table :form4s do |t|
      t.timestamps
        t.string :formType
        t.string :from
        t.string :to
        t.string :amount
        t.string :number
        t.string :info
        t.string :r1
        t.string :r2
        t.string :r3
        t.string :mR
        t.string :jNum
        t.string :date
    end
  end
end
