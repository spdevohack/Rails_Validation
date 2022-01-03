# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Author.create([{first_name: "William", last_name: "Faulkner", title: "ABSALOM, ABSALOM!" },
# {first_name: "John", last_name: "Grisham", title: "A time to kill " },
# {first_name: "Edith", last_name: "Whartom", title: "A House of Mirth" }, 
# {first_name: "John", last_name: "Steinbeck", title: "East Of Eden" },
# {first_name: "Ernest", last_name: "Hemingway", title: "The Sun also Rises" }])

# Supplier.create([{name: "Satyam"}, {name: "Ravinder"}, {name: "Akki"},{name: "Rahul"}, {name: "Dinesh"}])

# Supplier.create([{name: "Satyam"}, {name: "Ravinder"}, {name: "Akki"},{name: "Rahul"}, {name: "Dinesh"}])

# Book.create([{ title: "ABSALOM, ABSALOM!", year_published: 1989, isbn: "AB-WF-89", price: 680, out_of_print: false, views:4000, supplier_id:1, author_id: 1 }, 
# { title: "A House of Mirth", year_published: 1954, isbn: " AHOM-EW-46", price: 450, out_of_print: true, views:4560, supplier_id:2, author_id: 3 },
# { title: "A Time to Kill", year_published: 1946, isbn: "ATTK-GJ-54", price: 980, out_of_print: true, views:40000, supplier_id:3, author_id: 2 },
# { title: "East Of Eden", year_published: 2007, isbn: "EOE-JS-07", price: 200, out_of_print: false, views:500, supplier_id:5, author_id: 4 },
# { title: "The Sun Also Rises", year_published: 2011, isbn: "TSAR-EH-11", price: 150, out_of_print: false, views:900, supplier_id:4, author_id: 5 }])

# Customer.create([{first_name: "Gunnu", last_name:"Sharma", title: "Ms.", email: "gunnu@gmail.com", visits: 24, orders_count: 2},
# {first_name: "Rani", last_name:"Saxena", title: "Ms.", email: "Rani@gmail.com", visits: 4, orders_count: 3},
# {first_name: "Raja babu", last_name:"kushwaha", title: "Mr.", email: "raja873@gmail.com", visits: 13, orders_count: 4},
# {first_name: "Abhishek", last_name:"choudhary", title: "Mr.", email: "abhi@gmail.com", visits: 2, orders_count: 1},
# {first_name: "vinay", last_name:"kumar", title: "Mr.", email: "vinay73@gmail.com", visits: 1, orders_count: 1},
# {first_name: "Gunnu", last_name:"Sharma", title: "Ms.", email: "pooja989@gmail.com", visits: 3, orders_count: 2},
# {first_name: "Sameer", last_name:"sheikh", title: "Mr.", email: "sammer@gmail.com", visits: 1, orders_count: 1},
# {first_name: "Gunnu", last_name:"Sharma", title: "Ms.", email: "gunnu@gmail.com", visits: 3, orders_count: 1},
# {first_name: "Kiran", last_name:"kapoor", title: "Mrs.", email: "kiran42@gmail.com", visits: 1, orders_count: 1},
# {first_name: "Anushka", last_name:"Sharma", title: "Ms.", email: "anushka098@gmail.com", visits:1, orders_count: 1},])


# Order.create([{date_submitted: "16:00:00", status: 1, subtotal: 400, shipping: 30, tax: 30, total: 460, customer_id: 1},
# {date_submitted: "19:00:00", status: 0, subtotal: 980, shipping: 50, tax: 50, total: 1080, customer_id: 2},
# {date_submitted: "16:00:00", status: 2, subtotal: 650, shipping: 40, tax: 00, total: 690, customer_id: 3},
# {date_submitted: "10:10:00", status: 1, subtotal: 600, shipping: 30, tax: 30, total: 660, customer_id: 4},
# {date_submitted: "17:00:00", status: 1, subtotal: 649, shipping: 40, tax: 30, total: 719, customer_id: 5},
# {date_submitted: "16:00:00", status: 1, subtotal: 700, shipping: 30, tax: 30, total: 760, customer_id: 6},
# {date_submitted: "16:00:00", status: 3, subtotal: 600, shipping: 30, tax: 30, total: 660, customer_id: 7},
# {date_submitted: "17:00:00", status: 1, subtotal: 499, shipping: 30, tax: 30, total: 559, customer_id: 8},
# {date_submitted: "16:00:00", status: 2, subtotal: 1099, shipping: 50, tax: 50, total: 1199, customer_id: 9},
# {date_submitted: "16:00:00", status: 0, subtotal: 799, shipping: 50, tax: 50, total: 899, customer_id: 10} ])


Review.create([{title: "Books Review", body: "I should say this book is very good.", rating: 4, state: 0, customer_id: 2, book_id:2},
{title: "Books Reviewed", body: "Very good", rating: 4.5, state: 1, customer_id: 4, book_id:1},
{title: "Books Review", body: "Not so good", rating: 3, state:2, customer_id: 1, book_id:3},
{title: "Books Review", body: "Not Good as Expected", rating: 3, state: 1, customer_id: 6, book_id:4},
{title: "Books Review", body: "Its very good", rating: 5, state: 0, customer_id: 7, book_id:5},
{title: "Books Review", body: "it Bad", rating: 1, state: 0, customer_id: 8, book_id:2},
{title: "Books Review", body: "Its very good", rating: 5, state: 1, customer_id: 10, book_id:3},
{title: "Books Review", body: "Not good or not bad", rating: 3, state: 2, customer_id: 5, book_id:4},
{title: "Books Review", body: "Its very good", rating: 5, state: 0, customer_id: 7, book_id:5},
{title: "Books Review", body: "Its very good", rating: 4, state:1, customer_id: 3, book_id:3},
{title: "Books Review", body: "Its very good", rating: 5, state: 0, customer_id: 7, book_id:5},
{title: "Books Review", body: "Its very good", rating: 4, state: 1, customer_id: 5, book_id:2}])