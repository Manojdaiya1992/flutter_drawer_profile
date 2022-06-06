import 'package:flutter/material.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: _headerWidget(),
        ),
        Expanded(
          flex: 3,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              _personInfo(
                  "Email", "james0121@gmail.com", const Icon(Icons.email)),
              _divider(),
              _personInfo("Mobile", "+01 1234567890",
                  const Icon(Icons.mobile_friendly)),
              _divider(),
              _personInfo("Twitter", "@jamer012",
                  const Icon(Icons.area_chart_outlined)),
              _divider(),
              _personInfo("Behance", "www.behance.jet/james012",
                  const Icon(Icons.zoom_in_outlined)),
              _divider(),
              _personInfo("Facebook", "www.facebook.com/james012",
                  const Icon(Icons.facebook)),
            ],
          ),
        )
      ],
    );
  }
}

Divider _divider() {
  return const Divider(
    color: Colors.black54,
    indent: 20,
    endIndent: 20,
    thickness: 0.2,
  );
}

ListTile _personInfo(String title, String subTitle, Icon leading) {
  return ListTile(
    leading: leading,
    //contentPadding: const EdgeInsets.all(25.0),
    horizontalTitleGap: -1.0,
    title: Text(
      title,
      style: const TextStyle(
          color: Colors.black54, fontSize: 14.0, fontWeight: FontWeight.w600),
    ),
    subtitle: Text(
      subTitle,
      style: const TextStyle(
          color: Color.fromARGB(156, 12, 12, 12),
          fontSize: 16.0,
          fontWeight: FontWeight.w500),
    ),
  );
}

Container _headerWidget() {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
      gradient: LinearGradient(
          colors: [Color(0xff093EFE), Color(0xff2154FF), Color(0xff3A66FD)]),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.arrow_back, color: Colors.white, size: 28),
              ),
              const Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.white, size: 28),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 58.0,
                  backgroundImage: Image.network(
                          "https://th.bing.com/th/id/OIP.O5l0ZGIhrZsoTQzGj5SZ5AHaE7?pid=ImgDet&rs=1")
                      .image,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Manoj Dahiya",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Senior Software Developer",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text.rich(
                TextSpan(
                  text: "1000",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: " Followers",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54,
                          wordSpacing: 17.0),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "1200",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                      text: " Following",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white54,
                          wordSpacing: 17.0),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
