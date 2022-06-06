import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(colors: [
              Color(0xff093EFE),
              Color(0xff2154FF),
              Color(0xff3A66FD)
            ]),
          ),
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            //    width: size.width * 0.8,
            //height: size.height * 0.6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 38.0,
                    backgroundImage: Image.network(
                            "https://th.bing.com/th/id/OIP.O5l0ZGIhrZsoTQzGj5SZ5AHaE7?pid=ImgDet&rs=1")
                        .image,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Manoj Dahiya",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Senior Software Developer",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 11.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        _buildMenu("All Inboxes", const Icon(Icons.inbox), () {}, false, "15"),
        const Divider(
          thickness: 1.0,
          endIndent: 20.0,
          indent: 20.0,
        ),
        _buildMenu("Primary", const Icon(Icons.email), () {}, false, "15"),
        _buildMenu(
            "Social", const Icon(Icons.social_distance), () {}, true, "14 new"),
        _buildMenu(
            "Promotions", const Icon(Icons.email), () {}, true, "99+ new"),
        const Divider(
          thickness: 1.0,
          endIndent: 20.0,
          indent: 20.0,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            "All labels",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            maxLines: 1,
          ),
        ),
        _buildMenu("Starred", const Icon(Icons.star), () {}, false, ""),
        _buildMenu(
            "Important", const Icon(Icons.import_contacts), () {}, false, "1"),
        _buildMenu("Sent", const Icon(Icons.send), () {}, false, ""),
        _buildMenu("Outbox", const Icon(Icons.outbox), () {}, false, ""),
        _buildMenu("Draft", const Icon(Icons.drafts), () {}, false, ""),
        _buildMenu(
            "All emails", const Icon(Icons.all_inbox), () {}, false, "99+"),
        _buildMenu("Span", const Icon(Icons.safety_check), () {}, false, "99+")
      ],
    );
  }
}

ListTile _buildMenu(String title, Icon icon, void Function()? onTap,
    bool isChip, String trailing) {
  return ListTile(
    leading: icon,
    title: Text(
      title,
      style: const TextStyle(
          color: Colors.black54, fontSize: 17.0, fontWeight: FontWeight.w600),
    ),
    horizontalTitleGap: 0.0,
    //  minVerticalPadding: -10.0,
    isThreeLine: false,
    dense: true,
    visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
    trailing: isChip
        ? _trailingChip(title, trailing)
        : Text(
            trailing,
            style: const TextStyle(color: Colors.black54, fontSize: 17.0),
          ),
    onTap: onTap,
  );
}

Chip _trailingChip(String title, String label) {
  return Chip(
    label: Text(
      label,
      style: const TextStyle(color: Colors.black54, fontSize: 15.0),
    ),
    visualDensity: const VisualDensity(vertical: -4),
    backgroundColor: title.compareTo("Promotions") != 0
        ? const Color(0xff99B8F8)
        : const Color(0xff7AF7BF),
    padding: const EdgeInsets.all(2.0),
  );
}
