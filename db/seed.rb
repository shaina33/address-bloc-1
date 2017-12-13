require_relative '../models/address_book'
require_relative '../models/entry'
require_relative '../models/dog'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')
puts "AddressBook Created"

sally1 =  Entry.create(address_book_id: book.id, name: 'Sally', phone_number: '999-999-9999', email: 'sally@gmail.com' )
sally2 = Entry.create(address_book_id: book.id, name: 'Sally', phone_number: '888-999-9999', email: 'sally@gmail.com' )
john =  Entry.create(address_book_id: book.id, name: 'John', phone_number: '111-111-1111', email: 'john@gmail.com' )
jane =  Entry.create(address_book_id: book.id, name: 'Jane', phone_number: '222-222-2222', email: 'jane@gmail.com' )
puts "#{Entry.all.length} entries created"

Dog.create(name: "Sally1's Dog", entry_id: sally1.id)
Dog.create(name: "Sally2's Dog", entry_id: sally2.id)
Dog.create(name: "John's Dog", entry_id: john.id)
Dog.create(name: "Jane's Dog", entry_id: jane.id)
puts "Dogs created"