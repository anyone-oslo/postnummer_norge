# encoding: utf-8

require "spec_helper"
include PostnummerNorge

describe PostnummerNorge::PostalCode do

  it 'checks for existence' do
    PostalCode.exists?('0662').should be_true
    PostalCode.exists?('0002').should be_false
  end

  it 'finds postal code by number' do
    postal_code = PostalCode.find('4085')
    postal_code.should be_kind_of(PostalCode)
    postal_code.name.should == 'HUNDVÅG'
    postal_code.municipality.should == 'STAVANGER'
  end

  it 'returns nil for invalid postal codes' do
    PostalCode.find('0002').should be_nil
  end

  it 'finds postal code by name' do
    postal_code = PostalCode.find_by_name('HUNDVÅG').first
    postal_code.should be_kind_of(PostalCode)
    postal_code.code.should == '4085'
    postal_code.name.should == 'HUNDVÅG'
  end
end