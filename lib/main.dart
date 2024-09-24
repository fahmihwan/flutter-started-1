import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: const WelcomeScreen());
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.6,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 94, 81, 235),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                  child: const Center(
                      child: Text("Tes Bg aplikasi",
                          style: TextStyle(color: Colors.white))),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                padding: const EdgeInsets.only(top: 20),
                // color: Colors.red,
                child: Column(children: [
                  const Text("Learning is everything",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, top: 30),
                    child: Text(
                        "Learning is preasure with dear programmer, whenever you ds"),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 94, 81, 235),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Container(
                          width: 200,
                          alignment: Alignment.center,
                          height: 50,
                          padding: const EdgeInsets.all(5),
                          child: const Text("Get Start",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List catNames = [
  "Category",
  "Clases",
  "Free Course",
  "BookStore",
  "Live Course",
  "LeaderBoard"
];

List<Icon> catIcons = [
  const Icon(Icons.category, color: Colors.white, size: 30),
  const Icon(Icons.video_library, color: Colors.white, size: 30),
  const Icon(Icons.assignment, color: Colors.white, size: 30),
  const Icon(Icons.store, color: Colors.white, size: 30),
  const Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
  const Icon(Icons.emoji_events, color: Colors.white, size: 30),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 94, 81, 235),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard, size: 30, color: Colors.white),
                    Icon(Icons.notifications, size: 30, color: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                    padding: EdgeInsets.all(1),
                    child: Text(
                      "Hallo Fahmi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                  color: Colors.white,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      labelText: 'Masukkan teks',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Column(
                    children: [
                      GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 1.2),
                          itemCount: catNames.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 94, 81, 235),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Center(child: catIcons[index]),
                                  // decoration: BoxDecoration(borderRadius: BorderRadiusGeometry),
                                ),
                                SizedBox(height: 5),
                                Text(catNames[index])
                                // decoration: BoxDecoration()
                              ],
                            );
                          })
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
