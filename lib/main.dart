import 'package:flutter/material.dart';
import 'package:cricket_universe/Second_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MARVEL(),
        'second_page': (context) => const Second_page(),
      },
    ),
  );
}

class MARVEL extends StatefulWidget {
  const MARVEL({Key? key}) : super(key: key);

  @override
  State<MARVEL> createState() => _MARVELState();
}

class _MARVELState extends State<MARVEL> {
  List<Map> data = [
    {
      'RealName': "Cheis Evans",
      'ComicName': "Captain America",
      'images': "images/1 photos.png",
      'Description':
          "Captain America is the alter ego of Steve Rogers, a frail young artist enhanced to the peak of human perfection by an experimental super-soldier serum after joining the military to aid the United States governments efforts World War II.He is honest, up-front, loyal, extremely noble, and unfailingly dependable. His strengths don't lie in creativity or brilliance, especially when compared to some other Avengers, but he is the one who can step in and lead all the complex personalities, skill sets, strengths, and weaknesses of this diverse team.",
      'actions': "images/america captain.gif",
    },
    {
      'RealName': "Tony Stark",
      'ComicName': "Iron Man",
      'images': "images/2 photos.png",
      'Description':
          "Genius level intellect Proficient scientist and engineer Powered armor suit: Superhuman strength, speed, durability, agility, reflexes, and senses Supersonic flight Energy repulsor and missile projection Regenerative life supportA wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a mechanized suit of armor to save his life and escape captivity. Later, Stark develops his suit, adding weapons and other technological devices he designed through his company, Stark Industries. He uses the suit and successive versions to protect the world as Iron Man. Although at first concealing his true identity, Stark eventually publicly reveals himself to be Iron Man.",
      'actions': "images/iron man.gif",
    },
    {
      'RealName': "Chris Hemsworth",
      'ComicName': "Thor",
      'images': "images/3 photos.png",
      'Description':
          "Chris Hemsworth, in full Christopher Hemsworth, (born August 11, 1983, Melbourne, Australia), Australian actor who came to fame for his role as Thor in several Marvel Cinematic Universe movies.Thor's strength, endurance, and quest for battle are far greater than his Asgardian brethren. The mighty Thor wields an enchanted Uru hammer, Mjolnir, and is master of thunder and lightning. Thor's Powers and Abilities: Superhuman strength, speed, endurance & resistance to injury.",
      'actions': "images/thor.gif",
    },
    {
      'RealName': "Bruce Banner",
      'ComicName': "Hulk",
      'images': "images/4 photos.png",
      'Description':
          "The Incredible Hulk's alter ego is nuclear scientist Robert Bruce Banner, inventor of the gamma bomb, who absorbed a vast quantity of gamma rays after risking his life to save a teenager. The Incredible Hulk embodies the darkest, angriest, and most antisocial aspects of Banner's personality.The Incredible Hulk's alter ego is nuclear scientist Robert Bruce Banner, inventor of the gamma bomb, who absorbed a vast quantity of gamma rays after risking his life to save a teenager. The Incredible Hulk embodies the darkest, angriest, and most antisocial aspects of Banner's personality.",
      'actions': "images/hulk.gif",
    },
    {
      'RealName': "Tom Holland",
      'ComicName': "spider man",
      'images': "images/5 photos.png",
      'Description':
          "In his origin story, he gets spider-related abilities from a bite from a radioactive spider; these include clinging to surfaces, superhuman strength and agility, and detecting danger with his spider-sense. He also builds wrist-mounted web-shooter devices that shoot artificial spider webs of his own design.",
      'actions': "images/spider man.gif",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MARVEL UNIVERSE",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
        leading: const Text(""),
        centerTitle: true,
        backgroundColor: const Color(0xff10002B),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "AVENGERS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: data
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10),
                                ),
                                Container(
                                  height: 350,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff4D1185),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        child: Image(
                                          image: AssetImage(
                                            "${e['images']}",
                                          ),
                                          height: h - 570,
                                          width: w - 100,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "${e['ComicName']}",
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "${e['RealName']}",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            Navigator.of(context).pushNamed(
                                                'second_page',
                                                arguments: e);
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xff18042A),
                                          ),
                                          child: const Text(
                                            "KNOW MORE",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff240046),
    );
  }
}
