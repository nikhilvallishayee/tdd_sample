require 'spec_helper'

describe Converter do
  context "Arabic To Roman" do
    it 'should only accept positive integers' do
      expect {Converter.new.convert_to_roman("VI")}.to raise_error
      expect {Converter.new.convert_to_roman(0)}.to raise_error
      expect {Converter.new.convert_to_roman(-1)}.to raise_error


    end

    it 'should return "I" when 1 is entered' do
      Converter.new.convert_to_roman(1).should eq "I"

    end

    it 'should return "II" when 2 is entered' do
      Converter.new.convert_to_roman(2).should eq "II"

    end

    it 'should return "IV" when 4 is entered' do
      Converter.new.convert_to_roman(4).should eq "IV"
    end

    it 'should convert 11 to "XI"' do
      Converter.new.convert_to_roman(11).should eq "XI"

    end
  end
end