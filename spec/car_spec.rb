require './cars/car.rb'

describe Car do

    subject { described_class.new(color: 'green') }
    
    it 'color of the car' do
        expect(subject.color).to_not eq nil
    end

end


