module Screen
    def self.clear
        print "\e[2J\2[f"
    end
end

Screen::clear