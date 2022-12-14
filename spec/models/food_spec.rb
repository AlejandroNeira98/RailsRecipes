# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Food', type: :model do
  subject { Food.new(name: 'Banana', measurement_unit: 'gram', price: 20, quantity: 4, user_id: 1) }
  before { subject.save }

  it 'name should not be empty' do
    user = User.new(id: 1, name: 'Chris')
    subject.user_id = user.id
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'measurement_unit should not be empty' do
    user = User.new(id: 1, name: 'Chris')
    subject.user_id = user.id
    subject.measurement_unit = nil
    expect(subject).to_not be_valid
  end

  it 'price should not be empty' do
    user = User.new(id: 1, name: 'Chris')
    subject.user_id = user.id
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'quantity should not be empty' do
    user = User.new(id: 1, name: 'Chris')
    subject.user_id = user.id
    subject.quantity = nil
    expect(subject).to_not be_valid
  end

  it 'user_id should not be empty' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
