# README

## Setup
This is a Rails application  set up to demonstrate proficiency with data modeling and ORMs, or in this case, Active Record.

To set up the database and seed dummy data, you can run the following commands.
- `rails db:create`
- `rails db:migrate`
- `rails db:seed`

## Queries
For the queries, open the console by running `rails c`, and then copying the commands below.
### Find all clients for a particular provider
```ruby
provider = Provider.find(1)

provider.clients
```

### Find all providers for a particular client
```ruby
client = Client.find(2)

client.providers
```

### Find all of a particular client's journal entries, sorted by date posted
```ruby
client = Client.find(1)

client.journal_entries.order(created_at: :desc) # you can pass in :asc if you want in reverse order
```

### Find all of the journal entries of all of the clients of a particular provider, sorted by date posted
```ruby
provider = Provider.find(1)

journal_entries = JournalEntry
                    .joins(client: :provider_clients)
                    .where(provider_clients: { provider_id: provider.id })
                    .order(created_at: :asc)
```