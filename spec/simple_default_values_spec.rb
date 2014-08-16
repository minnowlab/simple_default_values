require 'spec_helper'
require 'active_record'

class Product < ActiveRecord::Base
  establish_connection adapter: 'sqlite3', database: ':memory:'
  connection.execute 'CREATE TABLE products (id INTEGER NOT NULL PRIMARY KEY, name SRING, price INTEGER, number INTEGER)'
  has_default_values(
    price: 0,
    number: 0
  )
end

describe SimpleDefaultValues do
  it 'new object has default values' do
    apple = Product.new(name: "Apple")
    expect(apple.price).to eq(0)
    expect(apple.number).to eq(0)
  end

  it 'create object has default values' do
    apple = Product.create!(name: "Apple")
    expect(apple.price).to eq(0)
    expect(apple.number).to eq(0)
  end
end
