part of 'pages.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
  static const String routeName = "/booking";

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  void initState() {
    super.initState();
  }

  final _bookKey = GlobalKey<FormState>();
  final ctrlUser = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlUser.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Mission 2"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _bookKey,
            child: Column(
              children: [
                SizedBox(height: 32),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  controller: ctrlUser,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 4
                        ? "Name at least 4 character!"
                        : null;
                  },
                ),
                SizedBox(height: 32),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return !EmailValidator.validate(value.toString())
                        ? 'Email tidak valid'
                        : null;
                  },
                ),
                SizedBox(height: 32),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone_android_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  controller: ctrlPhone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 7
                        ? 'Phone Number at least 7 character!'
                        : null;
                  },
                ),
                SizedBox(height: 32),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "City",
                    prefixIcon: Icon(Icons.location_city_rounded),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().length < 2
                        ? 'City at least 2 character!'
                        : null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_bookKey.currentState!.validate()) {
                      Fluttertoast.showToast(
                          msg: "Data Saved!",
                          toastLength: Toast.LENGTH_SHORT,
                          fontSize: 18,
                          backgroundColor: Colors.greenAccent,
                          textColor: Colors.black);
                      Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (context) => DetailsPage()),
                          (route) => false);
                    } else {
                      Fluttertoast.showToast(
                          msg: "Please fill all fields!",
                          toastLength: Toast.LENGTH_SHORT,
                          fontSize: 18,
                          backgroundColor: Colors.redAccent,
                          textColor: Colors.white);
                    }
                  },
                  child: Text("Book Now"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
