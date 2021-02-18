class BALL::API
    
    def initialize
        @url = "https://www.balldontlie.io/api/v1/players"
    end


    def get_data
        response_hash = HTTParty.get(@url)
        data_array = response_hash["data"] #
        self.create_player(data_array)
    end
    
    def create_player(data)
        data.each do |player_data|
            BALL::Player.new(player_data)
        end
    end

    
end