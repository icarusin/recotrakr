class AddStockModel < ActiveRecord::Migration
  def change
      create_table :exchanges do |t|
        t.string :name
        t.string :country
        t.string :code
        t.timestamps
      end
      create_table :companies do |t|
        t.string :name
        t.string :office_location
        t.timestamps
      end
      create_table :sectors do |t|
        t.string :name
        t.timestamps
      end
      create_table :advisors do |t|
        t.string :name
        t.string :institution
        t.string :website
        t.string :gender
        t.string :jobTitle
        t.timestamps
      end
      create_table :articles do |t|
        t.belongs_to :advisor
        t.string :url
        t.string :source
        t.timestamp :publish_date
        t.timestamps
      end
      create_table :stocks do |t|
        t.belongs_to :exchange
        t.belongs_to :company
        t.belongs_to :sector
        t.string :symbol
        t.decimal :current_price, precision: 10, scale: 2
        t.string :total_shares
        t.timestamps
      end
      create_table :recommendations do |t|
        t.belongs_to :advisor
        t.belongs_to :stock
        t.belongs_to :article
        t.datetime :reco_start_date
        t.datetime :reco_end_date
        t.decimal :start_value, precision: 10, scale: 2
        t.decimal :end_value, precision: 10, scale: 2
        t.decimal :recommendation_end_value, precision: 10, scale:2
        t.boolean :open
        t.decimal :diff_from_target, precision: 10, scale:2
        t.boolean :hit_target
        t.timestamps
      end
      create_table :transactions do |t|
        t.decimal :price, precision: 10, scale: 2
        t.integer :daily_volume
        t.datetime :transaction_date
        t.timestamps
      end
  end
end
