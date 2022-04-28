import 'package:flutter/material.dart';
import 'package:flutter_assesment/widgets/custom_bottom_bar.dart';
import 'package:flutter_assesment/widgets/utils/enums.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen() : super();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              headerSection(context),
              content(context),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }

  SizedBox content(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 2.5,
      child: Column(children: [
        SizedBox(
          height: 110,
          child: Container(
            padding: const EdgeInsets.all(0),
            color: Colors.transparent,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Details",
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: Icon(
                      Icons.info_outline,
                      color: Color.fromARGB(103, 129, 123, 123),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Gallery",
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: Icon(
                      Icons.photo,
                      color: Color.fromARGB(103, 129, 123, 123),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Contacts",
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: Icon(
                      Icons.contact_page,
                      color: Color.fromARGB(103, 129, 123, 123),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Expanded(
          child: TabBarView(
            children: [Details(), Text(""), Text("")],
          ),
        ),
      ]),
    );
  }

  SizedBox headerSection(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              child: headerimage(context)),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.47,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    going(context),
                  ],
                ),
              )),
          Positioned(top: 50, child: ArrowIcons()),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.38,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Author(),
                  )))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row Author() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Billie Ellish Concert',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'By Robert Power',
              style: TextStyle(color: Colors.blue, fontSize: 14),
            )
          ],
        ),
        const Icon(
          Icons.favorite_rounded,
          color: Colors.pinkAccent,
          size: 30,
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Row ArrowIcons() {
    return Row(
      children: [
        const SizedBox(
          width: 40,
        ),
        Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white70,
              ),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
        const SizedBox(
          width: 220,
        ),
        Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              child: const Icon(
                Icons.airplane_ticket,
                color: Colors.white,
              ),
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ],
        ),
      ],
    );
  }

  ClipRRect headerimage(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
      child: Image.asset('assets/images/header.jpg', fit: BoxFit.cover),
    );
  }

  Container going(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.check,
            color: Color.fromARGB(197, 255, 255, 255),
            size: 25,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Going',
            style: TextStyle(
              color: Color.fromARGB(207, 255, 255, 255),
              fontSize: 18,
            ),
          ),
        ],
      ),
      width: 155,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.greenAccent,
            ],
          )),
    );
  }
}

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        editIcon(),
        const ScheduleTile(
            month: "Apr",
            day: "Thursday",
            date: "14",
            time: "8:00 am",
            type: "Starts"),
        const SizedBox(
          height: 30,
        ),
        const ScheduleTile(
            month: "Apr",
            day: "Saturday",
            date: "16",
            time: "6:00 pm",
            type: "Ends"),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45.0, right: 45),
          child: Container(
            child: Column(
              children: const [
                Text(
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur in nisl aliquet, dapibus risus non, laoreet leo. Cras consectetur sapien ipsum, et hendrerit velit tincidunt sit amet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dapibus, neque eget pulvinar congue, ex nunc consectetur sem, ac bibendum eros magna ac elit. Sed vel eros iaculis, tempus urna nec, pellentesque sem.""",
                  style: TextStyle(
                      color: Color.fromARGB(125, 0, 0, 0),
                      fontSize: 22,
                      wordSpacing: 4),
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Location',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    getLocation(context)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/map.jpg',
                fit: BoxFit.cover,
                height: 150,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 45),
                  child: Text(
                    'Address line 1 ,line 2,area,City ,Country',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45.0, right: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAvatars(),
                    Text(
                      "2,346 Participants",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, bottom: 12, right: 45, left: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sub Events',
                      style: TextStyle(
                          color: Color.fromARGB(221, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(157, 3, 168, 244),
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.all(10),
                        child: const Icon(Icons.edit,
                            size: 15, color: Colors.white)),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 45, left: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Event Title',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.schedule_outlined,
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 45),
                    child: Text(
                      '2 lines event description and then...',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 16.0, bottom: 20, right: 45, left: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Event Title',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.schedule_outlined,
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                color: const Color.fromARGB(71, 255, 193, 7),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.lunch_dining_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Lunch",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 45, left: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Event Title',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.schedule_outlined,
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 45),
                    child: Text(
                      '2 lines event description and then...',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 45, left: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Event Title',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.schedule_outlined,
                      color: Colors.lightBlue,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 45),
                    child: Text(
                      '2 lines event description and then...',
                      style: TextStyle(
                          color: Color.fromARGB(249, 6, 7, 83),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(206, 243, 77, 77),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text("Manage Teams & Tasks",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 23)),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Container getLocation(context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.directions_outlined,
            color: Color.fromARGB(197, 255, 255, 255),
            size: 25,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Get Direction',
            style: TextStyle(
              color: Color.fromARGB(207, 255, 255, 255),
              fontSize: 18,
            ),
          ),
        ],
      ),
      width: 165,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 11, 183, 196),
              Color.fromARGB(255, 145, 229, 240),
            ],
          )),
    );
  }

  Padding editIcon() {
    return Padding(
      padding: const EdgeInsets.only(right: 38.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(50)),
              padding: const EdgeInsets.all(10),
              child: const Icon(Icons.edit, size: 15, color: Colors.white)),
        ],
      ),
    );
  }
}

class ScheduleTile extends StatelessWidget {
  final String month;
  final String date;
  final String day;
  final String time;
  final String type;
  const ScheduleTile(
      {Key? key,
      required this.month,
      required this.date,
      required this.day,
      required this.time,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      month,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        color: type == "Starts"
                            ? Colors.green
                            : const Color.fromARGB(153, 173, 19, 7),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 1.5,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  day,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                type,
                style: TextStyle(
                    color: type == "Starts"
                        ? Colors.green
                        : const Color.fromARGB(153, 173, 19, 7),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: type == "Starts"
                      ? const Color.fromARGB(31, 76, 175, 79)
                      : const Color.fromARGB(31, 175, 99, 76)),
            ),
          ),
        ],
      ),
      width: 335,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: type == "Starts"
              ? const Color.fromARGB(183, 232, 245, 233)
              : const Color.fromARGB(31, 221, 80, 45)),
    );
  }
}

class CustomAvatars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                child: Image.asset(
                    'assets/images/avatar.png'), // Provide your custom image
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                child: Image.asset(
                    'assets/images/avatar.png'), // Provide your custom image
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.red,
                child: Image.asset(
                    'assets/images/avatar.png'), // Provide your custom image
              ),
            ),
          ),
        ],
      ),
    );
  }
}
