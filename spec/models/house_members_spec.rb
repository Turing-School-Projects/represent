require 'rails_helper'

RSpec.describe HouseMember, type: :model do
  describe 'class methods' do
    before(:each) do
      @congress_id1 = "A000360"
      @congress_id2 = "O000172"
      @member1 = create(:house_member, state: "CO", last_name: "A", congress_id: @congress_id2)
      @member2 = create(:house_member, state: "AL", last_name: 'B')
      @member3 = create(:house_member, state: "CO", last_name: 'C')
      @member4 = create(:house_member, state: "TX", last_name: 'D')
    end

    it 'by_state' do

      expect(HouseMember.by_state("CO")).to eq([@member1, @member3])
    end

    it 'includes?' do

      expect(HouseMember.includes?(@congress_id1)).to eq(false)
      expect(HouseMember.includes?(@congress_id2)).to eq(true)
    end
  end

  describe 'instance methods' do
    before(:each) do
      @member1 = create(:house_member, state: "CO")
      @member2 = create(:house_member, state: "AL")
      @member3 = create(:house_member, state: "CO")
      @member4 = create(:house_member, state: "TX")
    end

    it 'full_name' do

      expect(@member1.full_name).to eq("#{@member1.first_name} #{@member1.last_name}")
    end
  end
end
