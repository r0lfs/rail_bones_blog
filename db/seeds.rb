Comment.create!([
  {user_id: 10, post_id: 11, content: "so, i should get all the params this time, even if it doesn't post"},
  {user_id: 10, post_id: 12, content: "now, why is this showing on the wrong comment?"},
  {user_id: 10, post_id: 13, content: "it flew, didn't it?"},
  {user_id: 10, post_id: 35, content: "git it"},
  {user_id: 22, post_id: 39, content: "are you tho"},
  {user_id: 22, post_id: 39, content: "I gotta make these replies look better. replies is a word that spelled in an unexpected manner\n"},
  {user_id: 22, post_id: 35, content: "why the save so far over"},
  {user_id: 10, post_id: 40, content: "kind of looks better nao, but could still yuse sum werk"},
  {user_id: 10, post_id: 40, content: "i changed it and now it works better. can't believe i did what i did"},
  {user_id: 10, post_id: 40, content: "i gotta add timestamps"}
])
Post.create!([
  {user_id: 13, title: "Making things just", content: "so i can destroy them"},
  {user_id: 10, title: "But it throws errors", content: "Not sure how this works exactly"},
  {user_id: 10, title: "Do it!", content: "Edit til I can't edit no mo! HAHAHAHAHA"},
  {user_id: 10, title: "Keep going", content: "It DID IT"},
  {user_id: 10, title: "Test", content: "Until we can't test no mo!"},
  {user_id: 10, title: "break", content: "it up"},
  {user_id: 10, title: "so", content: "just some more tests"},
  {user_id: 10, title: "why oh why", content: "does it not want to fly"},
  {user_id: 20, title: "ya", content: "does"},
  {user_id: 22, title: "Sipping", content: "on some of that classic jonestown purple flavor"},
  {user_id: 22, title: "got muh", content: "follows kind of werking!!!!!!!!!!!!!!!1 ahahahahahahahhahahahahaa. but my ajax on unfollow is still a lil off, nahimean"},
  {user_id: 10, title: "This refactoring shall be", content: "a bit challenging to say the least."}
])
Relationship.create!([
  {followed_id: 20, follower_id: 22},
  {followed_id: 10, follower_id: 22},
  {followed_id: 13, follower_id: 22},
  {followed_id: 18, follower_id: 22},
  {followed_id: 11, follower_id: 22},
  {followed_id: 8, follower_id: 22},
  {followed_id: 21, follower_id: 22},
  {followed_id: 22, follower_id: 10},
  {followed_id: 21, follower_id: 10},
  {followed_id: 20, follower_id: 10},
  {followed_id: 18, follower_id: 10},
  {followed_id: 13, follower_id: 10}
])
User.create!([
  {first_name: "test", last_name: "test", dis_name: "test", email: "test@test", password: "test", about: nil},
  {first_name: "another", last_name: "check", dis_name: "to", email: "see@", password: "if", about: nil},
  {first_name: "will", last_name: "you", dis_name: "work", email: "without@", password: "erb", about: nil},
  {first_name: "this", last_name: "is", dis_name: "the_defaultz", email: "me@me", password: "werk", about: "So I'm just adding all this to see if it scrolls and what not, but you know, it might not, so I'll have to change the settings but it looks like it did, so that's awesome. content is really hard, nahimean. Also, if you haven't, check out trevor noahs... damn, i can't remember what it was called, but it's groovy. real groovy."},
  {first_name: "Rolf", last_name: "Woolen", dis_name: "r0lfs", email: "rdwoolen@gmail.com", password: "me", about: nil},
  {first_name: "check", last_name: "it", dis_name: "out", email: "test@test.com", password: "pass", about: nil},
  {first_name: "testing", last_name: "yet", dis_name: "another", email: "email@pass", password: "pass", about: nil},
  {first_name: "meezer", last_name: "meady", dis_name: "mick", email: "mo@mo", password: "mo", about: nil},
  {first_name: "so my name iz", last_name: "whatever you say it z", dis_name: "frack", email: "j@j", password: "j", about: "why didn't i auto log i>/"},
  {first_name: "me", last_name: "me", dis_name: "me", email: "me@me", password: "me", about: "all about me. But right now I'm just goint to put as much words stuf a s i can so i can see wihat the max height I gotta make it is, but that could dtak a awhile cus you know, i let this be a bit too long I think, but, what you gonna do. i guess i coulg change it, but that seems likea lot of werk and i don't knw i fi want to do that. like sresly how many is 5-00 like his tsams like i already should have gotten that but nope, i keep on keeping on a wha tin the world is oging on, what's going ion "},
  {first_name: "just", last_name: "another", dis_name: "kind of test", email: "duh@duh", password: "duh", about: "what about nao!?"},
  {first_name: "we", last_name: "just ", dis_name: "gonna", email: "keep@on", password: "creating", about: nil},
  {first_name: "do", last_name: "it", dis_name: "until", email: "it@works", password: "yes", about: "still don't work tho do it"},
  {first_name: "", last_name: "", dis_name: "fra", email: "ha@", password: "ya", about: nil},
  {first_name: "", last_name: "", dis_name: "testing", email: "test@", password: "test", about: nil},
  {first_name: "", last_name: "", dis_name: "Gil", email: "more@", password: "slay", about: "Adding some sutfff"},
  {first_name: "My", last_name: "Name", dis_name: "Iz", email: "wut@it", password: "do", about: "blah blah blah, my disk got corrupted so i had to change some ish"}
])
