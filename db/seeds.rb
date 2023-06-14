# Create the book instance
require 'open-uri'

Book.destroy_all

book = Book.new(
  title: "Harry Potter and the Philosopher's Stone",
  author: "J.K. Rowling",
  description: "Harry Potter, a boy who learns on his eleventh birthday that he is the orphaned son of two powerful wizards and has unique magical powers of his own. He is summoned from his life as an unwanted child to become a student at Hogwarts, a boarding school for wizards. There, he meets several friends who become his closest allies and help him discover the truth about his parents' mysterious deaths.",
  genre: "fantasy",
  suitable_for: "school_age",
  rating: 5,
  monster: Monster.first
)

# Attach an image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127707/craiyon_084825_Cute_monster_avatar_for_preschool_kids__Use_pastel_colors___ilpvac.jpg") # Be sure to replace this with an actual URL of the book cover image
book.image.attach(io: cover, filename: "harry_potter.jpg", content_type: cover.content_type)

# Save the book instance
book.save!

# 1. Where the Wild Things Are
book = Book.new(
  title: "Where the Wild Things Are",
  author: "Maurice Sendak",
  description: "The story of Max, a boy who wears a wolf suit and makes mischief of one kind and another. He is sent to bed without supper, but his bedroom undergoes a mysterious transformation into a jungle environment, and he winds up sailing to an island inhabited by malicious beasts known as the 'Wild Things.'",
  genre: "fantasy",
  suitable_for: "pre_school",
  rating: 5,
  monster: Monster.first
)
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127707/wwt_g6kopv.jpg")
book.image.attach(io: cover, filename: "wild_things.jpg", content_type: cover.content_type)
book.save!

# 2. The Very Hungry Caterpillar
book = Book.new(
  title: "The Very Hungry Caterpillar",
  author: "Eric Carle",
  description: "The story of a hungry caterpillar's progress through an amazing variety and quantity of foods. After eating his way through the book, he spins a cocoon around himself and goes to sleep, awakening as a beautiful butterfly.",
  genre: "picture",
  suitable_for: "toddler",
  rating: 5,
  monster: Monster.first
)
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/the-very-hungry-caterpillar-taschenbuch-eric-carle-englisch_yqahvz.jpg")
book.image.attach(io: cover, filename: "caterpillar.jpg", content_type: cover.content_type)
book.save!

# 3. Goodnight Moon
book = Book.new(
  title: "Goodnight Moon",
  author: "Margaret Wise Brown",
  description: "A great green room, tucked away in bed, is the setting of this whimsical tale about bidding goodnight to everything around.",
  genre: "picture",
  suitable_for: "toddler",
  rating: 5,
  monster: Monster.first
)
# Attach the book's cover image (ensure to provide a valid image URL)
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/goodnightmoon_ucxd4u.jpg")
book.image.attach(io: cover, filename: "goodnight_moon.jpg", content_type: cover.content_type)
book.save!

# 4. The Cat in the Hat
book = Book.new(
  title: "The Cat in the Hat",
  author: "Dr. Seuss",
  description: "Two children sitting at home on a rainy day are visited by the Cat in the Hat, who shows them some tricks and games.",
  genre: "fantasy",
  suitable_for: "pre_school",
  rating: 5,
  monster: Monster.first
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686128314/51NpGEKBQoL._SY264_BO1_204_203_200_QL40_ML2__a1fzhs.jpg")
book.image.attach(io: cover, filename: "cat_hat.jpg", content_type: cover.content_type)
book.save!

# 5. Charlotte's Web
book = Book.new(
  title: "Charlotte's Web",
  author: "E.B. White",
  description: "Wilbur the pig is scared of the end of the season, because he knows that he will end up on the dinner table. He hatches a plan with Charlotte, a spider that lives in his pen, to ensure that this will never happen.",
  genre: "fantasy",
  suitable_for: "school_age",
  rating: 5,
  monster: Monster.first
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/charlotte-s-web-taschenbuch-e-b-white-englisch_u8dpx3.jpg")
book.image.attach(io: cover, filename: "charlotte_web.jpg", content_type: cover.content_type)
book.save!

# 6. The Giving Tree
book = Book.new(
  title: "The Giving Tree",
  author: "Shel Silverstein",
  description: "The Giving Tree is a tale about a relationship between a young boy and a tree in a forest. The tree always provides the boy with what he wants: branches on which to swing, shade in which to sit, apples to eat, branches with which to build a home.",
  genre: "picture",
  suitable_for: "pre_school",
  rating: 5,
  monster: Monster.second
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/giving_tree_m2u5dq.jpg")
book.image.attach(io: cover, filename: "giving_tree.jpg", content_type: cover.content_type)
book.save!

# 7. Green Eggs and Ham
book = Book.new(
  title: "Green Eggs and Ham",
  author: "Dr. Seuss",
  description: "Sam-I-am tries to convince an unnamed character to try a dish of green eggs and ham.",
  genre: "fantasy",
  suitable_for: "pre_school",
  rating: 5,
  monster: Monster.second
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127707/greeneggsandham_rtclcf.jpg")
book.image.attach(io: cover, filename: "green_eggs_ham.jpg", content_type: cover.content_type)
book.save!

# 8. Matilda
book = Book.new(
  title: "Matilda",
  author: "Roald Dahl",
  description: "Matilda, a brilliant, sensitive little girl, uses her talents and ingenuity to seek revenge on her crooked father, lazy mother, and the terrifying Miss Trunchbull, her wicked headmistress, and save her beloved teacher, Miss Honey.",
  genre: "fantasy",
  suitable_for: "school_age",
  rating: 5,
  monster: Monster.second
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/matilda_zktla0.jpg")
book.image.attach(io: cover, filename: "matilda.jpg", content_type: cover.content_type)
book.save!

# 9. The Lion, the Witch and the Wardrobe
book = Book.new(
  title: "The Lion, the Witch and the Wardrobe",
  author: "C.S. Lewis",
  description: "Four adventurous siblings—Peter, Susan, Edmund, and Lucy Pevensie—step through a wardrobe door and into the land of Narnia, a land frozen in eternal winter and enslaved by the power of the White Witch.",
  genre: "fantasy",
  suitable_for: "school_age",
  rating: 5,
  monster: Monster.third
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127707/MV5BMTc0NTUwMTU5OV5BMl5BanBnXkFtZTcwNjAwNzQzMw_._V1_FMjpg_UX1000__psk7yf.jpg")
book.image.attach(io: cover, filename: "lion_wardrobe.jpg", content_type: cover.content_type)
book.save!

# 10. The Tale of Peter Rabbit
book = Book.new(
  title: "The Tale of Peter Rabbit",
  author: "Beatrix Potter",
  description: "The story follows Peter Rabbit, a mischievous and disobedient young rabbit, as he ventures into the garden of Mr. McGregor.",
  genre: "picture",
  suitable_for: "pre_school",
  rating: 5,
  monster: Monster.third
)
# Attach the book's cover image
cover = URI.open("https://res.cloudinary.com/dzk0qfl8v/image/upload/v1686127706/the-tale-of-peter-rabbit-gebundene-ausgabe-beatrix-potter-englisch_iwec8v.webp")
book.image.attach(io: cover, filename: "peter_rabbit.jpg", content_type: cover.content_type)
book.save!
