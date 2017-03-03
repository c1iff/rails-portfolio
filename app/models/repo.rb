class Repo < ApplicationRecord
  before_create :get_data


private
  def get_data
    begin
      response = RestClient.get('https://api.github.com/users/c1iff/repos/',
                                   {:params => {:access_token => ENV['GITHUB_API']},
                                    :accept => :json})
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      throw(:abort)
    end
  end
end
