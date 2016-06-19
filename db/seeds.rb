DamClassification.create!([
  {title: "Art and Literature"},
  {title: "Employment"},
  {title: "Health"},
  {title: "Manufacturing"},
  {title: "Primary Industry"},
  {title: "Te Reo"},
  {title: "Tready"},
  {title: "Business"},
  {title: "Entertainment"},
  {title: "Housing"},
  {title: "Korero"},
  {title: "Music and Dance"},
  {title: "Science and Research"},
  {title: "Tikanga"},
  {title: "Waiata"},
  {title: "Economic Development"},
  {title: "Fashion and Design"},
  {title: "Innovation and Technology"},
  {title: "Learning and Education"},
  {title: "Parliament"},
  {title: "Tourism"},
  {title: "Sport and Activity"},
  {title: "Whenua/Land"}
])
DamLocation.create!([
  {name: "Te Taitokerau/Northland"},
  {name: "Tamaki Makaurau/Auckland"},
  {name: "Waikato/Hamilton"},
  {name: "Te Arawa/Rotorua"},
  {name: "Te Moana a Toi/ Bay of Plenty"},
  {name: "Te Tairawhiti/Gisborne"},
  {name: "Takitimu/Hawke's Bay"},
  {name: "Te Tai Hauauru/ Manawatu-Wanganui"},
  {name: "Te Whanganui Tara/ Wellington"},
  {name: "Te Waipounamu/ South island"}
])
DamPerson.create!([
  {title: "Youth/Child/Tamaiti"},
  {title: "Tamariki/Children"},
  {title: "Kaumatua/Elder"},
  {title: "Wahine/Female"},
  {title: "Pakeke/Adult"},
  {title: "Tane/Male"}
])
DamUser.create!([
  {name: "Admin",
  email: "admin@test-dam.co.nz",
  access_level: "admin",
  password: "password"},
  {name: "User",
  email: "user@test-dam.co.nz",
  access_level: "user",
  password: "password"}
])
DamHistoryReason.create!([
  {
    reason: "Image already exist",
    track_action: "decline"
  },
  {
    reason: "Inappropriate content",
    track_action: "decline"
  },
  {
    reason: "Missing metadata",
    track_action: "reject"
  },
  {
    reason: "Consent file is not valid",
    track_action: "reject"
  },
])
