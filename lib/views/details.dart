part of 'pages.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Color tapIcon = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.indigoAccent, Colors.lightBlueAccent])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://www.mitrasolusi.id/wp-content/uploads/2020/11/SKYDOME-04-1-scaled.jpg"),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          child: Icon(
                            Icons.favorite,
                            color: tapIcon,
                          ),
                          onPressed: () {
                            setState(() {
                              if (tapIcon == Colors.grey) {
                                tapIcon = Colors.pink;
                              } else {
                                tapIcon = Colors.grey;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(50, 50),
                            backgroundColor: Colors.grey.shade100,
                            shape: CircleBorder(),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cf.bstatic.com/xdata/images/hotel/max1280x900/325899376.jpg?k=794332724c18091155121ec38bac748442f6c6936bb4e7f70259c8b9b2773de1&o=&hp=1"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.hotelscombined.co.id/rimg/himg/04/30/f9/expediav2-2924569-21334713-348536.jpg?width=1366&height=768&crop=true"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "http://dimg04.c-ctrip.com/images/0203w120008vukwn27DD5.jpg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://q-xx.bstatic.com/xdata/images/hotel/max1280x900/209019902.jpg?k=42a9b15cea4e174467fd6e1cf7e26a2de0b758539e9fb21718ea19d249bfe964&o="),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://malangpagi.com/wp-content/uploads/2020/02/IMG-20200209-WA0041-01.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 4,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    "Welcome to Golden Tulip Holland Batu",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Golden Tulip Holland Resort Batu is conveniently located in the popular Batu area. The hotel offers guests a range of services and amenities designed to provide comfort and convenience.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "24-hour room service, 24-hour security, chapel, daily housekeeping, free Wi-Fi in all rooms are just some of the facilities on offer. Bathroom phone, towels, smoke detector, internet access – wireless, non smoking rooms can be found in selected guestrooms.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Recuperate from a full day of sightseeing in the comfort of your room or take advantage of the hotel's recreational facilities, including fitness center, children's playground, pool (kids). For reliable service and professional staff, Golden Tulip Holland Resort Batu caters to your needs.",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: Text(
                            "Jalan Cherry No.10, Panderman Hills , Malang, 65314, Indonesia",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
