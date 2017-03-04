require 'rails_helper'

describe Repo, :vcr => true do
  it "Retrieves a list of repos from the github api" do
    repo = Repo.new()
    result = repo.get_data
    expect(result[0][0]['name']).to eq('js_immigration-data')
  end
end
