# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

User.create({
    name:"Joe Schmo",
    location:"Brooklyn",
    email:"joe@gmail.com",
    password_digest:"joe"
    })
User.create({
    name:"TJ Lynch",
    location:"Brooklyn",
    email:"tj@gmail.com",
    password_digest:"tj"
    })
User.create({
    name:"Jennie",
    location:"East Village",
    email:"jennie@gmail.com",
    password_digest:"jennie"
    })


Cause.create({
    type:"Wildlife"
  })
Cause.create({
    type:"Climate Change"
  })
Cause.create({
    type:"Water Conservation"
  })
Cause.create({
    type:"Vetrans"
  })
Cause.create({
    type:"AIDS"
  })
Cause.create({
    type:"Poverty"
  })


Interest.create({
    user_id:2,
    cause_id:3
  })
Interest.create({
    user_id:4,
    cause_id:1
  })
Interest.create({
    user_id:3,
    cause_id:2
  })
Interest.create({
    user_id:1,
    cause_id:4
  })
Interest.create({
    user_id:3,
    cause_id:3
  })
Interest.create({
    user_id:2,
    cause_id:1
  })



Deed.create({
    organization_id:4,
    type:"volunteer",
    description:"Spend some time doing something for the vetrans."
  })
Deed.create({
    organization_id:1,
    type:"fundraise",
    description:"Raise some money to help save the dolphins."
  })
Deed.create({
    organization_id:5,
    type:"donate",
    description:"Pledge some money to help fight AIDS."
  })
Deed.create({
    organization_id:2,
    type:"join an event",
    description:"Pledge to join the Clean the Bay Day."
  })
Deed.create({
    organization_id:6,
    type:"shop",
    description:"Buy some sweet swag."
  })
Deed.create({
    organization_id:3,
    type:"write a legislator",
    description:"Write a letter asking to help conserve water."
  })

Organization.create({
    name:"WWF",
    cause_id:1
  })
Organization.create({
    name:"350org",
    cause_id:2
  })
Organization.create({
    name:"CharityWater",
    cause_id:3
  })
Organization.create({
    name:"WoundedWarriorProject",
    cause_id:4
  })
Organization.create({
    name:"RED",
    cause_id:5
  })
Organization.create({
    name:"ONE",
    cause_id:6
  })