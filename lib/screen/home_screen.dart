import 'package:flutter/material.dart';

class Plant {
  final String title;
  final String description;
  final String imageUrl;

  Plant({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class HomeScreen extends StatelessWidget {
  final List<Plant> plants = [
    Plant(
        title: "Tanaman 1",
        description: "Deskripsi singkat tanaman 1",
        imageUrl: 'assets/images/tanaman_1'),
    Plant(
        title: "Tanaman 2",
        description: "Deskripsi singkat tanaman 2",
        imageUrl: "assets/images/tanaman_2"),
    Plant(
        title: "Tanaman 3",
        description: "Deskripsi singkat tanaman 3",
        imageUrl: "assets/images/tanaman_3")
  ];
  // const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Halo,\n',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Adhim Bin Oban',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                  ]),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Action when search button is pressed
                        },
                        icon: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/sun_decoration.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerRight),
                ),
                child: Container(
                  padding: const EdgeInsets.all(13),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/sun.png',
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            'Cerah',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          const Text(
                            '10:15',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '35°',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Jakarta',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '28, Maret 2024',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tanamanmu",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF219338)),
                  ),
                  Text(
                    "All",
                    style: TextStyle(fontSize: 14, color: Color(0xFF919191)),
                  ),
                  Text(
                    "Big Plants",
                    style: TextStyle(fontSize: 14, color: Color(0xFF919191)),
                  ),
                  Text(
                    "Indoor",
                    style: TextStyle(fontSize: 14, color: Color(0xFF919191)),
                  ),
                  Text(
                    "Outdoor",
                    style: TextStyle(fontSize: 14, color: Color(0xFF919191)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: plants.length,
                  itemBuilder: (context, index) {
                    Plant plant = plants[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            // Action ketika item di-tap
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: AspectRatio(
                              aspectRatio: 181 / 260,
                              child: Image.asset(
                                'assets/images/background_pattern.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Yang Baru di TerraTani",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF219338))),
                TextSpan(
                    text: "\nJangan ngaku update kalo belum coba fitur ini",
                    style: TextStyle(fontSize: 11, color: Color(0xFF219338)))
              ])),
            ),
            const SizedBox(
              height: 11,
            ),
            SizedBox(
              height: 109,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            // Action ketika item di-tap
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: AspectRatio(
                              aspectRatio: 179 / 109,
                              child: Image.asset(
                                'assets/images/background_pattern.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
