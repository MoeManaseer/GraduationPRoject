class CreateForm9 < ActiveRecord::Migration[5.2]
  def change
    create_table :form9s do |t|
      t.timestamps
      t.string :formType
      t.string :amount
      t.string :number
      t.string :mawsoom
      t.string :bNum
      t.string :bDate
      t.string :bCompany
      t.string :bAmount
      t.string :bNum1
      t.string :bDate1
      t.string :bCompany1
      t.string :bAmount1
      t.string :bNum2
      t.string :bDate2
      t.string :bCompany2
      t.string :bAmount2
      t.string :bNum3
      t.string :bDate3
      t.string :bCompany3
      t.string :bAmount3
      t.string :bNum4
      t.string :bDate4
      t.string :bCompany4
      t.string :bAmount4
      t.string :mR
      t.string :jNum
      t.string :date
    end
  end
end
