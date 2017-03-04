class Repo < ApplicationRecord


  def get_data
      url = "https://api.github.com/user/repos?sort=updated&access_token=#{ENV['GITHUB_API']}"

      begin
        response = HTTParty.get(url)

      rescue HTTP::Error => error
        message = JSON.parse(error)
      end
      results = [JSON.parse(response.body)]

    end
end
