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

Analyzer.create(user_ip: '192.168.2.4', query: 'How can I add more users to')
Analyzer.create(user_ip: '192.168.2.4', query: 'How can I add more users to my')
Analyzer.create(user_ip: '192.168.2.4', query: 'How can I add more users to my account')

Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possib')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possibl')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to up')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrad')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrade m')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrade my plan')

Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrade my')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrade my storage')
Analyzer.create(user_ip: '192.168.2.2', query: 'Is it possible to upgrade my storage limit')

Analyzer.create(user_ip: '192.168.2.8', query: 'Am I able')
Analyzer.create(user_ip: '192.168.2.8', query: 'Am I able to inv')
Analyzer.create(user_ip: '192.168.2.8', query: 'Am I able to invite new users to my account')

Analyzer.create(user_ip: '192.168.2.5', query: 'Am I able to invite new users to my account')
Analyzer.create(user_ip: '192.168.2.5', query: 'How can I add more users to my account')
Analyzer.create(user_ip: '192.168.2.5', query: "How do I cancel my subscription")
Analyzer.create(user_ip: '192.168.2.5', query: "What is my account number")
Analyzer.create(user_ip: '192.168.2.5', query: "How do I signup")


Analyzer.create(user_ip: '192.168.2.11', query: "How do I cancel my subscription")
Analyzer.create(user_ip: '192.168.2.11', query: "What is my account number")


Analyzer.create(user_ip: '192.168.2.27', query: "How do I sig")
Analyzer.create(user_ip: '192.168.2.27', query: "How do I signu")
Analyzer.create(user_ip: '192.168.2.27', query: "How do I signup")