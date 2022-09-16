# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling', price: 12)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is valid with valid attributes' do
	subject.author = 'JK Rowling'
    expect(subject).to be_valid
  end

  #it 'is not valid without a name' do
	#subject.title = 'Harry Potter'
   # subject.author = 12
    #expect(subject).not_to be_valid
  #end
  
  it 'is valid with valid attributes' do
	subject.price = 12
    expect(subject).to be_valid
  end
  
  it 'is valid with valid attributes' do
	subject.created_at = '9 Jul 2022'
    expect(subject).to be_valid
  end
  
  it 'is valid with valid attributes' do
	subject.updated_at = '15 Sep 2022'
    expect(subject).to be_valid
  end
end