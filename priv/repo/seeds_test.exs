# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds_test.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SciBackend.Repo.insert!(%SciBackend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
SciBackend.Repo.insert!(%SciBackend.User{
  name: "admin"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Get Volunteer Idea Festival 2017",
  nr_slot: 100,
  status: "SET_UP"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Make Donation Day For All People",
  nr_slot: 75,
  status: "RUNNING"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Trinity Trash Bash Waterway Cleanup",
  nr_slot: 100,
  status: "DONE"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Great American Cleanup 2017",
  nr_slot: 250,
  status: "SET_UP"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Bike Racing Charity Event 2017",
  nr_slot: 150,
  status: "SET_UP"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Help End Homelessness",
  nr_slot: 300,
  status: "DONE"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Digital Help for Language volunteers",
  nr_slot: 175,
  status: "SET_UP"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Historic Agreement will Rid Colombia of Landmines",
  nr_slot: 200,
  status: "RUNNING"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Preparing to Help Young Central American Refugees",
  nr_slot: 65,
  status: "DONE"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Cancer Research UK - Race for Life",
  nr_slot: 150,
  status: "DONE"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Macmillan Cancer Support - World's Biggest Coffee Morning",
  nr_slot: 270,
  status: "RUNNING"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Macmillan Cancer Support - Brave the Shave",
  nr_slot: 500,
  status: "SET_UP"
})

SciBackend.Repo.insert!(%SciBackend.Event{
  name: "Alzheimer's Society - Memory Walk",
  nr_slot: 400,
  status: "RUNNING"
})
