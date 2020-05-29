class API

    def self.get_characters
        url="https://rickandmortyapi.com/api/character/"
        response = Net::HTTP.get(URI(url))
        characters = JSON.parse(response)["results"]
        characters.each do |details|
          Character.create(details["name"], details["species"], details["origin"]["name"])
        end
    end
       
end