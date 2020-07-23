require 'rails_helper'

describe 'Representative Show Page' do
  it 'displays representative information' do
    rep = Representative.first

    visit "/representatives/#{rep.id}"

    expect(page).to have_css('.rep-info')
    expect(page).to have_css('.rep-image')
    expect(page).to have_css('.rep-name')
    expect(page).to have_css('.rep-dob')
    expect(page).to have_css('.rep-gender')
    expect(page).to have_css('.rep-party')
    expect(page).to have_css('.rep-leadership')
    expect(page).to have_css('.rep-facebook')
    expect(page).to have_css('.rep-twitter')
    expect(page).to have_css('.rep-govtrack')
    expect(page).to have_css('.rep-url')
    expect(page).to have_css('.rep-contact')
    expect(page).to have_css('.rep-cook_pvi')
    expect(page).to have_css('.rep-dw_nominate')
    expect(page).to have_css('.rep-total_votes')
    expect(page).to have_css('.rep-missed_votes')
    expect(page).to have_css('.rep-last_updated')
    expect(page).to have_css('.rep-office')
    expect(page).to have_css('.rep-phone')
    expect(page).to have_css('.rep-state')
    expect(page).to have_css('.rep-district')
    expect(page).to have_css('.rep-at_large')
    expect(page).to have_css('.rep-missed_votes_percentage')
    expect(page).to have_css('.rep-votes_with_percentage')
    expect(page).to have_css('.rep-votes_without_party_percentage')
    expect(page).to have_css('.rep-congress_id')
    expect(page).to have_css('.side-nav')

  end

  it 'displays representative information' do
    senator = Senator.first

    visit "/senators/#{senator.id}"

    expect(page).to have_css('.sen-info')
    expect(page).to have_css('.sen-image')
    expect(page).to have_css('.sen-name')
    expect(page).to have_css('.sen-dob')
    expect(page).to have_css('.sen-gender')
    expect(page).to have_css('.sen-party')
    expect(page).to have_css('.sen-leadership')
    expect(page).to have_css('.sen-facebook')
    expect(page).to have_css('.sen-twitter')
    expect(page).to have_css('.sen-govtrack')
    expect(page).to have_css('.sen-url')
    expect(page).to have_css('.sen-contact')
    expect(page).to have_css('.sen-dw_nominate')
    expect(page).to have_css('.sen-next_election')
    expect(page).to have_css('.sen-total_votes')
    expect(page).to have_css('.sen-missed_votes')
    expect(page).to have_css('.sen-last_updated')
    expect(page).to have_css('.sen-office')
    expect(page).to have_css('.sen-phone')
    expect(page).to have_css('.sen-state')
    expect(page).to have_css('.sen-missed_votes_percentage')
    expect(page).to have_css('.sen-votes_with_percentage')
    expect(page).to have_css('.sen-votes_without_party_percentage')
    expect(page).to have_css('.sen-congress_id')
    expect(page).to have_css('.sen-senate_class')
    expect(page).to have_css('.sen-state_rank')
    expect(page).to have_css('.side-nav')
  end
end