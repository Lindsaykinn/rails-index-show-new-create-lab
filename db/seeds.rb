# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create([
  { coupon_code: "TT123", store: "Publix"},
  { coupon_code: "TT456", store: "Kroger"},
  { coupon_code: "TT789", store: "Whole Foods"},
  { coupon_code: "TT101", store: "Ralph's"},
  { coupon_code: "TT102", store: "Rite Aid"},
  { coupon_code: "TT118", store: "Aldi"},
  { coupon_code: "TT180", store: "Publix"},
  { coupon_code: "TT500", store: "Kroger"}
])