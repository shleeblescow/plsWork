puts "seed some data bitch"

runner1 = Runner.create(
    username: "SOM1000",
    password: "123",
    name: "Pa",
    age: 61,
    neighborhood: "anacortes",
    bio: "why run when you can drive a crash box",
    running_deets: "whatever works best"
)

run1 = Run.create(
    run_location: "Wapa P Cheepa",
    when: Time.new(2023, 3, 1, 6, 0, 0),
    mileage: 8,
    run_type: "ez miles",
    pace: "7:30 - 8:00",
    creator_id: runner1.id, 
    bevs_after: true,
    notes: "just a standard mid week ez run around wapa p cheepa"
)

puts "thats all you get stoopid"