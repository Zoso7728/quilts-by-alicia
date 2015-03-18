# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PhotoMemory.create(name: 'Dave Blasting', email: 'dave@gmail.com', phone: '3948203948', size: 'Medium', total: '600')
PhotoMemory.create(name: 'Blake Toot', email: 'blake@gmail.com', phone: '4832938271', size: 'Large', total: '850')
PhotoMemory.create(name: 'Stan Row', email: 'stan@gmail.com', phone: '3849382718', size: 'Medium', total: '600')
PhotoMemory.create(name: 'Jack White', email: 'jack@gmail.com', phone: '3928304938', size: 'Medium', total: '600')
PhotoMemory.create(name: 'Edward Stone', email: 'edward@gmail.com', phone: '8475847362', size: 'Small', total: '450')

Tshirt.create(name: 'George Yeild', email: 'george@gmail.com', phone: '4837489584', shirts: '20', total: '400')
Tshirt.create(name: 'Hue Long', email: 'hue@gmail.com', phone: '7468372837', shirts: '40', total: '800')
Tshirt.create(name: 'Stan Row', email: 'stan@gmail.com', phone: '3849382718', shirts: '30', total: '600')
Tshirt.create(name: 'Bill Red', email: 'bill@gmail.com', phone: '4837293847', shirts: '40', total: '800')
Tshirt.create(name: 'Ted Stone', email: 'ted@gmail.com', phone: '4738472839', shirts: '20', total: '400')

Custom.create(name: 'Dave Blasting', email: 'dave@gmail.com', phone: '3948203948', size: '9600 sq in', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '1104')
Custom.create(name: 'Blake Toot', email: 'blake@gmail.com', phone: '4832938271', size: '8000 sq in', quilting: 'Pantograph',pantograph_patterns: 'Templet 1', total: '920')
Custom.create(name: 'Stan Row', email: 'stan@gmail.com', phone: '3849382718', size: '7200', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '828')
Custom.create(name: 'Jack White', email: 'jack@gmail.com', phone: '3928304938', size: '9600 sq in', quilting: 'Pantograph', pantograph_patterns: 'Templet 2', total: '1104')
Custom.create(name: 'Edward Stone', email: 'edward@gmail.com', phone: '8475847362', size: '8000', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '920')

LongArm.create(name: 'Dave Blasting', email: 'dave@gmail.com', phone: '3948203948', size: '9600 sq in', batting: 'N/A', binding: 'N/A', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '1104')
LongArm.create(name: 'Blake Toot', email: 'blake@gmail.com', phone: '4832938271', size: '9600 sq in', batting: 'N/A', binding: 'Yes', quilting: 'Pantograph', pantograph_patterns: 'Templet 2', total: '1104')
LongArm.create(name: 'Stan Row', email: 'stan@gmail.com', phone: '3849382718', size: '8000', batting: 'Yes', binding: 'Yes', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '920')
LongArm.create(name: 'Jack White', email: 'jack@gmail.com', phone: '3928304938', size: '9600 sq in', batting: 'Yes', binding: 'N/A', quilting: 'Meandering', pantograph_patterns: 'N/A', total: '1104')
LongArm.create(name: 'Edward Stone', email: 'edward@gmail.com', phone: '8475847362', size: '9600 sq in', batting: 'Yes', binding: 'Yes', quilting: 'Pantograph', pantograph_patterns: 'Templet 2', total: '1104')