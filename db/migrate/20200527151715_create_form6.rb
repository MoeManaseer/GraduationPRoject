class CreateForm6 < ActiveRecord::Migration[5.2]
  def change
    create_table :form6s do |t|
      t.timestamps
      t.string :formType
      t.string :number
      t.string :info
      t.string :fNum
      t.string :fDate
      t.string :fCompany
      t.string :fAmount
      t.string :fNum1
      t.string :fDate1
      t.string :fCompany1
      t.string :fAmount1
      t.string :fNum2
      t.string :fDate2
      t.string :fCompany2
      t.string :fAmount2
      t.string :fNum3
      t.string :fDate3
      t.string :fCompany3
      t.string :fAmount3
      t.string :fNum4
      t.string :fDate4
      t.string :fCompany4
      t.string :fAmount4
      t.string :mR
      t.string :jNum
      t.string :date
    end
  end
end
