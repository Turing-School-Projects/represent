require 'rails_helper'

RSpec.describe "Representatives Index Page" do
  describe "Issue-18 As a visitor, when I select a state from the dropdown menu" do
    before(:each) do
      @member1 = create(:house_member, state: "CO", congress_id: "A000374", last_name: "zz")
      @member2 = create(:house_member, state: "FL", congress_id: "E000297")
      @member3 = create(:house_member, state: "CO", congress_id: "E000296")
      @member4 = create(:house_member, state: "CO", congress_id: "E000296")
      @member5 = create(:house_member, state: "CA", congress_id: "E000296")
      @member6 = create(:house_member, state: "CO", congress_id: "E000296")
      @member7 = create(:house_member, state: "CO", congress_id: "E000296")
      @member8 = create(:house_member, state: "CA", congress_id: "E000296")
      @member9 = create(:house_member, state: "CO", congress_id: "E000296")
      @member10 = create(:house_member, state: "CO", congress_id: "E000296")

      @senator1 = create(:senator, state: "CO", congress_id: "E000296", last_name: "zz")
      @senator2 = create(:senator, state: "CO", congress_id: "E000296")
      @senator3 = create(:senator, state: "MN", congress_id: "E000296")
      @senator4 = create(:senator, state: "CT", congress_id: "E000296")
    end

    it 'it displays the name of the state in the header', :vcr do
      visit '/representatives/CO'
      expect(page).to have_content("Colorado")

      visit '/representatives/MN'
      expect(page).to have_content("Minnesota")

      visit '/representatives/SC'
      expect(page).to have_content("South Carolina")

    end
    it 'it displays the names of all house members from that state', :vcr do
      visit '/representatives/CO'

      expect(page).to have_css('.member', count: 7)

      within(first('.member')) do
        expect(page).to have_css(".name")
        expect(page).to have_css(".rep-image")
      end
    end

    it 'it displays the names of all senate members from that state', :vcr do 
      visit '/representatives/CO'

      expect(page).to have_css('.senator', count: 2)

      within(first('.senator')) do
          expect(page).to have_css(".name")
          expect(page).to have_css(".rep-image")
      end

    end
  end
end
