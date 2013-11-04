# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    tasks = Task.create(
        [{
            title: 'Milk',
            body: 'Do not forget to get the milk like last time.',
            complete: true,
            due: DateTime.new(2013, 12, 2, 13)
         },
         {
            title: 'Call someone',
            body: 'someone is the new CEO and Marketing head of GE, give her a call to congratulate her.',
            complete: true,
            due: DateTime.new(2013, 12, 2, 13)
         },
         {
             title: 'Call someone',
             body: 'someone is the new CEO and Marketing head of GE, give her a call to congratulate her.',
             complete: true,
             due: DateTime.new(2013, 12, 2, 13)

         }
        ]
    )