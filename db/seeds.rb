# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

provider_1 = Provider.create(name: "Homer Simpson", email: "homer.simpson@gmail.com")
provider_2 = Provider.create(name: "Marge Simpson", email: "marge.simpson@gmail.com")
provider_3 = Provider.create(name: "Abe Simpson", email: "abe.simpson@gmail.com")

client_1 = Client.create(name: "Ned Flanders", email: "ned.flanders@gmail.com")
client_2 = Client.create(name: "Maude Flanders", email: "maude.flanders@gmail.com")
client_3 = Client.create(name: "Montgomery Burns", email: "montgomery.burns@gmail.com")

provider_1.clients << client_1
provider_1.clients << client_2
provider_1.clients << client_3
provider_1.save

provider_2.clients << client_2
provider_2.save

journal_entry_1 = JournalEntry.create(client: client_1, entry: "I had a bad day today.")
journal_entry_2 = JournalEntry.create(client: client_1, entry: "I had an okay day today.")
journal_entry_3 = JournalEntry.create(client: client_1, entry: "I had a good day today.")