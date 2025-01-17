-- CREATE DATABASE "saga_movies_weekend"

DROP TABLE "movies"; 

CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(120) NOT NULL,
  "poster"  VARCHAR(500) NOT NULL,
  "description" TEXT NOT NULL
);

DROP TABLE "genres";

CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(80) NOT NULL
);


DROP TABLE "movies_genres";

CREATE TABLE "movies_genres" (
  "id" SERIAL PRIMARY KEY,
  "movie_id" INT REFERENCES "movies" ON DELETE CASCADE NOT NULL,
  "genre_id" INT REFERENCES "genres" ON DELETE CASCADE NOT NULL
);

--------[ DATA! ]---------

INSERT INTO "movies" ("title", "poster", "description")
VALUES 

('Paris, Texas', 
'https://cdn.posteritati.com/posters/000/000/056/842/paris-texas-md-web.jpg', 
'A disheveled man who wanders out of the desert, Travis Henderson (Harry Dean Stanton) seems to have no idea who he is. When a stranger manages to contact his brother, Walt (Dean Stockwell), Travis is awkwardly reunited with his sibling. Travis has been missing for years, and his presence unsettles Walt and his family, which also includes Travis''s own son, Hunter (Hunter Carson). Soon Travis must confront his wife, Jane (Nastassja Kinski), and try to put his life back together.'),

('Solaris', 
'https://cdn.shopify.com/s/files/1/1416/8662/products/solaris_1972_italian_pbusta_original_film_art_5000x.jpg?v=1560654449', 
'Based on the classic science fiction novel by Stanislaw Lem, "Solaris" centers on a psychologist (George Clooney) sent to investigate unexplained behavior of key scientists on a space station orbiting the planet Solaris. Once aboard he, too, falls victim to this unique world''s mysteries -- as well as to an erotic obsession with someone he thought he had left behind.'),

('Blade Runner', 
'https://xl.movieposterdb.com/21_01/1982/83658/xl_83658_327434b6.jpg', 
'Blade Runner is a 1982 science fiction film directed by Ridley Scott, and written by Hampton Fancher and David Peoples.[7][8] Starring Harrison Ford, Rutger Hauer, Sean Young, and Edward James Olmos, it is an adaptation of Philip K. Dick''s 1968 novel Do Androids Dream of Electric Sheep? The film is set in a dystopian future Los Angeles of 2019, in which synthetic humans known as replicants are bio-engineered by the powerful Tyrell Corporation to work on space colonies. When a fugitive group of advanced replicants led by Roy Batty (Hauer) escapes back to Earth, burnt-out cop Rick Deckard (Ford) reluctantly agrees to hunt them down.'),

('The Passion of Anna', 
'https://m.media-amazon.com/images/M/MV5BNmY2NDkyYTQtNGI1NC00MjAxLTlmYmMtMWMxYTlkOGI5OTdiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_FMjpg_UX1000_.jpg', 
'Unsettled by his recent divorce, Andreas Winkelman (Max von Sydow) lives on a remote Swedish island. When he meets the unhappy married couple Elis and Eva Vergerus (Erland Josephson, Bibi Andersson), Andreas begins a brief affair with Eva, which leads to a romantic involvement with their friend Anna Fromm (Liv Ullmann), who is grieving the loss of her family. As these relationships unfold, someone on the island is killing animals, lending the drama a mysterious backdrop.'),

('The Hidden Fortress', 
'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/The_Hidden_Fortress.jpg/1200px-The_Hidden_Fortress.jpg', 
'Japanese peasants Matashichi (Kamatari Fujiwara) and Tahei (Minoru Chiaki) try and fail to make a profit from a tribal war. They find a man and woman whom they believe are simple tribe members hiding in a fortress. Although the peasants don''t know that Rokurota (Toshirô Mifune) is a general and Yuki (Misa Uehara) is a princess, the peasants agree to accompany the pair to safety in return for gold. Along the way, the general must prove his expertise in battle while also hiding his identity.'),

('Invasion of the Body Snatchers', 
'https://cdn.shopify.com/s/files/1/1416/8662/products/invasion_of_the_body_snatchers_1978_styleA_linen_intl_original_film_art_5000x.jpg?v=1603212184', 
'In Santa Mira, California, Dr. Miles Bennell (Kevin McCarthy) is baffled when all his patients come to him with the same complaint: their loved ones seem to have been replaced by emotionless impostors. Despite others'' dismissive denials, Dr. Bennell, his former girlfriend Becky (Dana Wynter) and his friend Jack (King Donovan) soon discover that the patients'' suspicions are true: an alien species of human duplicates, grown from plant-like pods, is taking over the small town.'),

('The Sentinel', 
'https://m.media-amazon.com/images/M/MV5BYmRhMjJhOWQtNTE0ZS00YTc5LWE5YzUtZTkwZDEyNTE4MTY3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 
'A New York City model with a troubled past, Alison Parker (Cristina Raines) decides to make some changes in her life. Breaking up with her boyfriend, Michael (Chris Sarandon), Alison relocates to an apartment in a brownstone building where the only other tenant is a withdrawn blind priest (John Carradine). After experiencing strange occurrences, Alison begins to realize why the holy man is present -- the building has an evil presence that must be kept in check at all costs.'),

('Scanners', 
'https://s3.amazonaws.com/criterion-production/films/72be64c7e0fe2adc28ae31719d0c4d88/6tMtPzuwVeGlo4qEXwaxq1vZa2eZca_large.jpg', 
'Scanners are men and women born with incredible telepathic and telekinetic powers. There are many who exercise the benefits of their special gifts in a safe and judicious manner. However, there is a group of renegade scanners who plan to create a race that will rule the world.'),

('L''Argent', 
'https://i.pinimg.com/originals/5a/46/39/5a4639a7fbf4b9d67a30095e28a80b79.jpg', 
'While collecting payment from a Paris photography shop, hard-working fuel delivery man Yvon Targe (Christian Patey) is purposefully given counterfeit money without his knowledge. When Yvon innocently uses the bills to pay for his lunch later that day at a local café, he narrowly avoids arrest but loses his job. To support his family, Yvon takes a new job with a criminal element, but his life continues nevertheless to spiral downward into the depths of violence and despair.'),

('The Thing', 
'https://scontent-ord5-1.xx.fbcdn.net/v/t1.6435-9/135867251_3650809408288033_424693977362344531_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_ohc=njz7a5peJsIAX-6tKyh&_nc_ht=scontent-ord5-1.xx&oh=00_AT-xDxukpXMDsbaeEuAMIe_3IBgh6hebaMCSXQyD_jQsKg&oe=635F68EC', 
'In remote Antarctica, a group of American research scientists are disturbed at their base camp by a helicopter shooting at a sled dog. When they take in the dog, it brutally attacks both human beings and canines in the camp and they discover that the beast can assume the shape of its victims. A resourceful helicopter pilot (Kurt Russell) and the camp doctor (Richard Dysart) lead the camp crew in a desperate, gory battle against the vicious creature before it picks them all off, one by one.'),

('The Wicker Man', 
'https://m.media-amazon.com/images/M/MV5BOWIzY2QyNDQtOWI3Ni00MjEwLTlhYTgtZTgyMThiY2JkMTY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 
'Sergeant Howie (Edward Woodward) arrives on the small Scottish island of Summerisle to investigate the report of a missing child. A conservative Christian, the policeman observes the residents'' frivolous sexual displays and strange pagan rituals, particularly the temptations of Willow (Britt Ekland), daughter of the island magistrate, Lord Summerisle (Christopher Lee). The more Sergeant Howie learns about the islanders'' strange practices, the closer he gets to tracking down the missing child.'),

('Miracle Mile', 
'https://posterspy.com/wp-content/uploads/2020/10/FINAL-Roman-Stevens-Miracle-Mile-FINAL-donesmall-scaled.jpg', 
'Musician Harry Washello (Anthony Edwards) sits down at a Los Angeles diner, where he instantly takes an interest in waitress Julie Peters (Mare Winningham). The feeling is mutual, too, so the pair arranges a date for later that day. But things go awry when Harry picks up a random pay phone call from a frantic soldier who warns of a nuclear attack that will hit L.A. within the hour. Scrambling, Harry finds Julie and the two do everything they can to escape to safety.'),

('Working Girl', 
'https://i.etsystatic.com/30412390/r/il/65a88d/3223039062/il_fullxfull.3223039062_cx4h.jpg', 
'Savvy New York City receptionist Tess McGill (Melanie Griffith) gives her conniving boss, Katharine Parker (Sigourney Weaver), an excellent business tip, but Katharine simply steals the idea without giving due credit to her secretary. After Katharine winds up in the hospital with an injured leg, Tess decides to exact revenge. Pretending to be her boss, Tess initiates a major deal with an investment broker (Harrison Ford) -- but things turn ugly after Katharine finds out what Tess has been up to.'),

('The Omega Man', 
'https://www.phenomena-experience.com/galeria/Octubre_2018/omega-man-poster.jpg', 
'Due to an experimental vaccine, Doctor Robert Neville is the only survivor of an apocalyptic war, with the exception of a few hundred deformed, nocturnal people who are also homicidal maniacs. They blame science and technology for their condition and they see Neville, as the last symbol of science, therefore he must die. Neville, uses everything at his disposal in an attempt to survive.'),

('The Graduate', 
'https://s3.amazonaws.com/criterion-production/films/c1cb7c7c93760075005158d586b67d45/ace3Y8tk9zZ6RU58hIflxVsxZUIA2B_large.jpg', 
'Benjamin Braddock (Dustin Hoffman) has just finished college and, back at his parents'' house, he''s trying to avoid the one question everyone keeps asking: What does he want to do with his life? An unexpected diversion crops up when he is seduced by Mrs. Robinson (Anne Bancroft), a bored housewife and friend of his parents. But what begins as a fun tryst turns complicated when Benjamin falls for the one woman Mrs. Robinson demanded he stay away from, her daughter, Elaine (Katharine Ross).'),

('Dawn of The Dead ', 
'https://flxt.tmsimg.com/assets/p11744_p_v8_aa.jpg', 
'When her husband is attacked by a zombified neighbor, Ana (Sarah Polley) manages to escape, only to realize her entire Milwaukee neighborhood has been overrun by the walking dead. After being questioned by cautious policeman Kenneth (Ving Rhames), Ana joins him and a small group that gravitates to the local shopping mall as a bastion of safety. Once they convince suspicious security guards that they are not contaminated, the group bands together to fight the undead hordes.'),

('The Abominable Dr. Phibes', 
'https://assets.fontsinuse.com/static/use-media-items/56/55102/full-1935x2936/5979b812/the-abominable-dr-phibes-01.jpeg', 
'In a desperate attempt to reach his ill wife, organist Anton Phibes (Vincent Price) is horrifically disfigured in a car accident and presumed dead. When he learns that his wife died during an operation, Phibes blames her surgeons and plots an elaborate revenge to punish them for their incompetence. With the help of a mute assistant (Virginia North), Phibes creates a mask resembling his own face and murders the surgeons one by one using bizarre methods inspired by the biblical plagues.'),

('Housu', 
'https://assets.bigcartel.com/product_images/123186243/HAUSUweb.jpg?auto=format&fit=max&h=1000&w=1000',
'In an effort to avoid spending time with her father and his creepy new lover, young Gorgeous (Kimiko Ikegami) resolves to visit her aunt''s remote mansion. With six of her closest friends in tow, including the musically inclined Melody (Eriko Tanaka) and the geeky Prof (Ai Matsubara), Gorgeous arrives at the estate, where supernatural events occur almost immediately. A severed head takes flight, household appliances come to life and a portrait of a cat seems to contain an evil spirit.');


INSERT INTO "genres" ("name")
VALUES 
	('Action'),
	('Animated'),
	('Apocolypse'),
	('Arthouse'),
	('Crime'),
	('Classic'),
	('Comedy'),
	('Cult'),
	('Disaster'),
	('Drama'),
	('Epic'),
	('Fantasy'),
	('Foreign'),
	('Historical'),
	('Horror'),
	('Indie'),
	('Mystery'),
	('Noir'),
	('Romance'),      
	('Science Fiction'),
	('Silent'),
	('Thriller'),
	('Western');
	

INSERT INTO "movies_genres" ("movie_id", "genre_id")
VALUES 
(1,4), (1,11), (1,19),				--Paris, Texas
(2,8), (2,20), (2,22),				--Solaris
(3,1), (3,18), (3,20),				--Blade Runner
(4,6), (4,22), (4,13),				--The Passion of Anna
(5,1), (5,11), (5,13),				--The Hidden Fortress
(6,3), (6,8), (6,15), (6,20),		--Invasion of the Body Snatchers
(7,15), (7,17), (7,22),				--The Sentinel
(8,8), (8,15), (8,20),				--Scanners
(9,5), (9,13), (9,22),				--L''Argent
(10,15), (10,20), (10,22),			--The Thing
(11,8), (11,17), (11,22),			--The Wicker Man
(12,1), (12,9), (12,19),			--Miracle Mile
(13,7), (13,10), (13,19),			--Working Girl
(14,3), (14,8), (14,20),			--The Omega Man
(15,7), (15,10), (15,19),			--The Graduate
(16,1), (16,15), 					--Dawn of The Dead 
(17,8), (17,15), (17,17),			--The Abominable Dr. Phibes;
(18,8), (18,13), (18,15);			--Housu