class CreateForm5 < ActiveRecord::Migration[5.2]
  def change
    create_table :form5s do |t|
      t.timestamps
      t.string :formType
      t.string :number
      t.string :rNumber
      t.string :date
      t.string :address
      t.string :info
      t.string :mR
      t.string :eR
      t.string :aDate
      t.string :sDate
      t.string :fDate
      t.string :amount
      t.string :spent
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4
      t.string :s5
      t.string :s6
      t.string :l1
      t.string :l2
      t.string :l3
      t.string :l4
      t.string :l5
      t.string :l6
      t.string :timeLeft
      t.string :infoOn
      t.string :infoNotStarted
      t.string :infoStopped
      t.string :mName
      t.string :mDep
      t.string :mSection

    end
  end
end
