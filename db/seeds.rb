10.times do
  RentalListing.create(price: 100,
                       bedrooms: 2,
                       size_in_metre_square: 90,
                       bathrooms: 2,
                       description_en: 'Lorem ipsum dolor amet air plant wolf 3 wolf moon, single-origin coffee DIY vice lumbersexual pickled knausgaard pop-up cornhole ennui kinfolk venmo. Schlitz art party health goth fanny pack flannel. Microdosing offal iPhone, vape cornhole iceland small batch hot chicken affogato portland celiac aesthetic. Leggings man braid twee hashtag sriracha everyday carry swag succulents narwhal chillwave asymmetrical cronut. XOXO air plant poutine quinoa chicharrones, narwhal PBR&B ennui blog ethical salvia twee gochujang trust fund tote bag.',
                       description_gr: 'Kala',
                       telephone: '123',
                       zip_code: 11251,
                       lister: Lister.first )
end
