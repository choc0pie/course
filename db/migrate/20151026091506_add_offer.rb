class AddOffer < ActiveRecord::Migration

  def change
  drop_table "offers"
  create_table "offers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "to"
    t.datetime "reportdate"
    t.integer  "obcode"
    t.string   "reason"
    t.string   "adress"
    t.string   "offertype"
    t.string   "org"
    t.string   "offerstat"
    t.integer  "kolpredp"
    t.integer  "kolpredupr"
    t.integer  "kolshtraf"
    t.integer  "summshtraf"
    t.integer  "otdel_id"
    t.integer  "user_id"
    t.integer  "organisations_id"
  end
end
  #add_index "offers", ["organisations_id"], name: "organisations_id"
  #add_index "offers", ["otdel_id"], name: "otdel_id"
  #add_index "offers", ["user_id"], name: "user_id"
end
