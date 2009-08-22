ActiveRecord::Schema.define do
  create_table :bicycles, :force => true do |t|
    t.column :name,  :string, :null => false
    t.column :speeds, :integer, :null => false
    t.boolean :brakes, :null => false
  end
end
