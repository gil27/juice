# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Analyzer.create(user_ip: '127.0.0.1', query: 'Ho')
Analyzer.create(user_ip: '127.0.0.1', query: 'How')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can I')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can I canc')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can I cancel')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can I cancel my')
Analyzer.create(user_ip: '127.0.0.1', query: 'How can I cancel my subscription')