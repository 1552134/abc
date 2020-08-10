# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SciBackend.Repo.insert!(%SciBackend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias SciBackend.{Repo, Event, Booking, EventDetail}

# SciBackend.Repo.insert!(%SciBackend.User{
#   name: "admin"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image:
#     "https://bizweb.dktcdn.net/100/081/562/files/yoga-clubm-giup-phuc-hoi-cot-song-va-dau-lung-1.jpg?v=1462266422511",
#   type: "Yoga",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ho Chi Minh",
#   description: "4 Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ho Chi Minh"
# })

# Repo.insert!(%Event{
#   image:
#     "https://media.baodautu.vn/Images/manhcuong/2018/03/28/tipsy-art-san-choi-co-gia1522197686.jpg",
#   type: "Tipsy Art",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Ha Noi",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Ha Noi"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Meet Up",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Featured",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Featured",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Featured",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

# Repo.insert!(%Event{
#   image: "https://media.glassdoor.com/l/39/33/dd/87/ad-club-meet-up.jpg",
#   type: "Featured",
#   date: ~U[2016-05-24 13:26:08Z],
#   from_time: "7:30AM",
#   end_time: "8:30A",
#   day: 7,
#   repeat_every_week: 1,
#   city: "Hue",
#   description: "Tham gia lop hoc YOGA cho BNUT",
#   place: "CLB Olympic GYM & Fitness",
#   address: "31 Nguyen Thai Hoc, Thanh pho Hue"
# })

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 1
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 2
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 3
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 4
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 1
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 2
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 3
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 4
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 1
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 2
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 3
})

Repo.insert!(%Booking{
  status: "hrhr",
  is_happened: false,
  user_id: 1,
  event_id: 4
})
