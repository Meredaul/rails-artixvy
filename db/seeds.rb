User.destroy_all
alvaro = User.create!(first_name: "Alvaro", email: "avo_112@hotmail.com" password:"1234567")

Artwork.destroy_all
a = Artwork.new(title: "Chasing the sun", price: 1000, size: "500x500 cm", category: "Universe", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "Butterflies", price: 2000, size: "600x500 cm", category: "Realism", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "Refugees", price: 3000, size: "700x500 cm", category: "Modern Realism", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "A night in Paris", price: 4000, size: "800x500 cm", category: "Cubism", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "Ronnie Scotts", price: 5000, size: "900x500 cm", category: "Cubism", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "Why?", price: 6000, size: "100x500 cm", category: "Romantic", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "Universe", price: 7000, size: "200x500 cm", category: "Funny", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!
a = Artwork.new(title: "In the hood", price: 8000, size: "300x500 cm", category: "Sad", user: alvaro)
a.remote_photo_url = "https://i.pinimg.com/736x/ea/4b/e9/ea4be98c819ab60cad3494c5339ec192--starry-nights-jewelry-art.jpg"
a.save!

