class BALL::CLI
    
    def run
        greeting
        BALL::API.new.get_data
        menu
        goodbye
    end

    def greeting
        puts "Hello welcome to ball api"
    end

    def menu
        list_players

    end

    def list_players
        BALL::Player.all.each.with_index(1) do |player, i|
            puts "#{i}. #{player.first_name} #{player.last_name}"
        end
    end

    def goodbye

        puts "Goodbye"
    end

end