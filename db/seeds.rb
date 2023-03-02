puts "seed some data bitch"

# runners
runner1 = Runner.create(
    username: "SOM1000",
    password: "123",
    name: "Pa",
    age: 61,
    neighborhood: "anacortes",
    bio: "why run when you can drive a crash box",
    running_deets: "whatever works best"
)
runner2 = Runner.create(
    username: "bob",
    password: "123",
    name: "Bob",
    age: 12,
    neighborhood: "wapa",
    bio: "going to middle school nationals",
    running_deets: "im just hella cool"
)

runner3 = Runner.create(
    username: "asd",
    password: "123",
    name: "Larry",
    age: 23,
    neighborhood: "Sloans",
    bio: "got into running to find a girlfriend",
    running_deets: "i try to keep up but always get dropped"
)

runner4 = Runner.create(
    username: "sueee",
    password: "123",
    name: "Suzie",
    age: 28,
    neighborhood: "highlands",
    bio: "post collegiate runner getting back in the game",
    running_deets: "seems chill but drops the hammer when prompted"
)

# runs
# TO DO: FIX THE TIME INPUT
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

run2 = Run.create(
    run_location: "Sloops",
    when: Time.new(2023, 3, 1, 6, 0, 0),
    mileage: 4,
    run_type: "ez miles",
    pace: " 8:00",
    creator_id: runner3.id, 
    bevs_after: true,
    notes: "afternoon sloops to creep on cooldown"
)

run3 = Run.create(
    run_location: "Cheeka T",
    when: Time.new(2023, 3, 1, 6, 0, 0),
    mileage: 10,
    run_type: "progression",
    pace: "7:30 down to 6:30",
    creator_id: runner4.id, 
    bevs_after: true,
    notes: "thurs morn tempo, coffee after"
)

run4 = Run.create(
    run_location: "South Middle School",
    when: Time.new(2023, 3, 1, 6, 0, 0),
    mileage: 3,
    run_type: "practice",
    pace: "idk how to pace",
    creator_id: runner2.id, 
    bevs_after: false,
    notes: "monday afternoon practice"
)

# joins for run 1
j1 = RunRunnerJoin.create(
    runner_id: runner3.id,
    run_id: run1.id
)

j2 = RunRunnerJoin.create(
    runner_id: runner4.id,
    run_id: run1.id
)

# joins for run 2
j1 = RunRunnerJoin.create(
    runner_id: runner1.id,
    run_id: run2.id
)

j2 = RunRunnerJoin.create(
    runner_id: runner4.id,
    run_id: run2.id
)

# joins for run 3
j3 = RunRunnerJoin.create(
    runner_id: runner2.id,
    run_id: run3.id
)

puts "thats all you get stoopid"