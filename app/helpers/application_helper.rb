module ApplicationHelper

    def img_planet(planet)
        if planet.photo.attached?
           url = url_for(planet.photo)
        else
            url = image_url("mercury.jpg")
        end
    end
end
