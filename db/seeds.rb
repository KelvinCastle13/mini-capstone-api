# Supplier.create!(name: "Amazon", email: "amazon@email.com", phone_number: "451-666-1233")
# Supplier.create!(name: "Walmart", email: "walmart@email.com", phone_number: "781-444-4321")
# Supplier.create!(name: "Costco", email: "costco@email.com", phone_number: "617-999-5678")

# Product.create!(name: "Book", price: 20, description: "a written or printed work consisting of pages glued or sewn together along one side and bound in covers.", supplier_id: "1")
# Product.create!(name: "hair dryer", price: 15, description: "an electrical device for drying a person's hair by blowing warm air over it.", supplier_id: "1")
# Product.create!(name: "dumbbell", price: 40, description: "a short bar with weights on either side which people use for physical exercise to strengthen their arm and shoulder muscles.", supplier_id: "1")
# Product.create!(name: "heater", price: 60, description: "a device that converts electrical energy into heat to provide warmth in a room or space", supplier_id: "2")
# Product.create!(name: "charger", price: 8, description: "a device that is used to recharge a battery (= fill it with electricity), for example the battery in a mobile phone", supplier_id: "2")
# Product.create!(name: "keyboard", price: 35, description: "a computer or typewriter is the set of keys that you press in order to operate it.
# He was in his office, battering the keyboard of his computer as if it were an old manual typewriter.", supplier_id: "2")
# Product.create!(name: "headphones", price: 100, description: "fa device with a part to cover each ear through which you can listen to music, radio broadcasts, etc. without other people hearing", supplier_id: "3")
# Product.create!(name: "mouse", price: 70, description: "a small device that a computer user pushes across a desk surface in order to point to a place on a display screen and to select one or more actions to take from that position.", supplier_id: "3")
# Product.create!(name: "mug", price: 5, description: "a large deep cup with straight sides and a handle, used for hot drinks.
# He spooned instant coffee into two of the mugs.", supplier_id: "3")
# Product.create!(name: "laptop", price: 2000, description: "a laptop computer is a small portable computer.
# She used to work at her laptop until four in the morning.", supplier_id: "1")
# Product.create!(name: "pen", price: 1, description: "a long thin object which you use to write in ink.", supplier_id: "2")
# Product.create!(name: "clippers", price: 45, description: "a hairdresser's tool, operated either by hand or electrically, with one fixed and one reciprocating set of teeth for cutting short hair", supplier_id: "3")

# Image.create!(url: "https://media.istockphoto.com/id/147705864/photo/book.jpg?s=612x612&w=0&k=20&c=-soEnelp8aqvBO9Qhckq2wmDuKFYnPb1DnfD00oxIRw=", product_id: 1)
# Image.create!(url: "https://www.ingenia.org.uk/media/cn3kjkra/hair-dryer-exploded-annotations.jpg?width=1000&format=webp&rnd=133432466745730000", product_id: 2)
# Image.create!(url: "https://www.collinsdictionary.com/images/thumb/dumbbell_372692149_250.jpg?version=6.0.84", product_id: 3)
# Image.create!(url: "https://cdn.langeek.co/photo/49836/original/?type=jpeg", product_id: 4)
# Image.create!(url: "https://dictionary.cambridge.org/images/thumb/charge_noun_002_06368.jpg?version=6.0.53", product_id: 5)
# Image.create!(url: "https://www.collinsdictionary.com/images/thumb/keyboard_345115319_250.jpg?version=6.0.84", product_id: 6)
# Image.create!(url: "https://dictionary.cambridge.org/images/thumb/headph_noun_002_17401.jpg?version=6.0.53", product_id: 7)
# Image.create!(url: "https://www.techtarget.com/rms/onlineimages/computer_mouse-h.png", product_id: 8)
# Image.create!(url: "https://www.collinsdictionary.com/images/thumb/mug_125689826_250.jpg?version=6.0.84", product_id: 9)
# Image.create!(url: "https://techterms.com/img/xl/laptop_586.png", product_id: 10)
# Image.create!(url: "https://www.collinsdictionary.com/images/thumb/pen_525053431_250.jpg?version=6.0.84", product_id: 11)
# Image.create!(url: "https://www.collinsdictionary.com/images/thumb/2151601749_clippers_250.jpg?version=6.0.84", product_id: 12)


# Create suppliers and save them to variables
amazon = Supplier.create!(name: "Amazon", email: "amazon@email.com", phone_number: "451-666-1233")
walmart = Supplier.create!(name: "Walmart", email: "walmart@email.com", phone_number: "781-444-4321")
costco = Supplier.create!(name: "Costco", email: "costco@email.com", phone_number: "617-999-5678")

# Create products using the supplier variables
Product.create!(name: "Book", price: 20, description: "a written or printed work...", supplier: amazon)
Product.create!(name: "Hair dryer", price: 15, description: "an electrical device...", supplier: amazon)
Product.create!(name: "Dumbbell", price: 40, description: "a short bar...", supplier: amazon)

Product.create!(name: "Heater", price: 60, description: "a device that converts...", supplier: walmart)
Product.create!(name: "Charger", price: 8, description: "a device that is used...", supplier: walmart)
Product.create!(name: "Keyboard", price: 35, description: "a computer or typewriter...", supplier: walmart)

Product.create!(name: "Headphones", price: 100, description: "a device with a part...", supplier: costco)
Product.create!(name: "Mouse", price: 70, description: "a small device that a computer...", supplier: costco)
Product.create!(name: "Mug", price: 5, description: "a large deep cup...", supplier: costco)

Product.create!(name: "Laptop", price: 2000, description: "a laptop computer is a small...", supplier: amazon)
Product.create!(name: "Pen", price: 1, description: "a long thin object...", supplier: walmart)
Product.create!(name: "Clippers", price: 45, description: "a hairdresser's tool...", supplier: costco)

Image.create!(url: "https://media.istockphoto.com/id/147705864/photo/book.jpg?s=612x612&w=0&k=20&c=-soEnelp8aqvBO9Qhckq2wmDuKFYnPb1DnfD00oxIRw=", product: Product.find_by(name: "Book"))
Image.create!(url: "https://www.ingenia.org.uk/media/cn3kjkra/hair-dryer-exploded-annotations.jpg?width=1000&format=webp&rnd=133432466745730000", product: Product.find_by(name: "Hair dryer"))
Image.create!(url: "https://www.collinsdictionary.com/images/thumb/dumbbell_372692149_250.jpg?version=6.0.84", product: Product.find_by(name: "Dumbbell"))
Image.create!(url: "https://cdn.langeek.co/photo/49836/original/?type=jpeg", product: Product.find_by(name: "Heater"))
Image.create!(url: "https://dictionary.cambridge.org/images/thumb/charge_noun_002_06368.jpg?version=6.0.53", product: Product.find_by(name: "Charger"))
Image.create!(url: "https://www.collinsdictionary.com/images/thumb/keyboard_345115319_250.jpg?version=6.0.84", product: Product.find_by(name: "Keyboard"))
Image.create!(url: "https://dictionary.cambridge.org/images/thumb/headph_noun_002_17401.jpg?version=6.0.53", product: Product.find_by(name: "Headphones"))
Image.create!(url: "https://www.techtarget.com/rms/onlineimages/computer_mouse-h.png", product: Product.find_by(name: "Mouse"))
Image.create!(url: "https://www.collinsdictionary.com/images/thumb/mug_125689826_250.jpg?version=6.0.84", product: Product.find_by(name: "Mug"))
Image.create!(url: "https://techterms.com/img/xl/laptop_586.png", product: Product.find_by(name: "Laptop"))
Image.create!(url: "https://www.collinsdictionary.com/images/thumb/pen_525053431_250.jpg?version=6.0.84", product: Product.find_by(name: "Pen"))
Image.create!(url: "https://www.collinsdictionary.com/images/thumb/2151601749_clippers_250.jpg?version=6.0.84", product: Product.find_by(name: "Clippers"))
