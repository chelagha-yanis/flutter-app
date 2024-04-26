import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D9FE),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            mycarttext(),
            profilepic(),
            almofid(),
            logout(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget mycarttext() {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            'My Profile',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E),
                fontFamily: "Poppins"),
          ),
        ),
      ],
    );
  }

  Widget profilepic() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFF7FAFF),
                image: const DecorationImage(
                  image: AssetImage("images/profile.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Rayane Beddou",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
              maxLines: 1,
            ),
          ),
          Text(
            "RayaneBeddou@uni-boumerdes.com",
            style: TextStyle(
              fontSize: 10,
              fontFamily: "Poppins",
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ])
      ],
    );
  }

  Widget almofid() {
    return Expanded(
      child: ListView.builder(
        itemCount: Profileinfo.length,
        itemBuilder: (context, index) {
          Profile profile = Profileinfo[index];
          return Column(
            children: [
              Container(
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            profile.title,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins",
                            ),
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            profile.description,
                            style: const TextStyle(
                              fontSize: 10,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget logout() {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              decoration: BoxDecoration(
                color: const Color(0xFFCF0826),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Profile {
  Profile({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "titel": title,
        "describtion": description,
      };
}

final Profileinfo = [
  Profile(
    title: 'My Products',
    description: 'Already have 12 orders',
  ),
  Profile(
    title: 'My Orders',
    description: 'Already have 12 orders',
  ),
  Profile(
    title: 'Payment Methods',
    description: 'Visa **34',
  ),
  Profile(
    title: 'Promocodes',
    description: 'You have special promocodes',
  ),
  Profile(
    title: 'My Reviews',
    description: 'Reviews for 4 items',
  ),
  Profile(
    title: 'Settings',
    description: 'Notification,Password',
  ),
];
