import 'package:flutter/material.dart';



class FirstRoute extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NameDog'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Fomrts()),
            );
          },
        ),
      ),
    );
  }
}


class Fomrts extends StatefulWidget {
  @override
  _FomrtsState createState() => _FomrtsState();
}
class _FomrtsState extends State<Fomrts> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedTextField(
                controller: _controller,
                hintText: "Username",
                icon: Icons.perm_identity_outlined,
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(height: 8),
              RoundedTextField(
                controller: _controller,
                hintText: "Fullname",
                icon: Icons.credit_card_sharp,
                color: Colors.orangeAccent,
                backgroundColor: Colors.lightGreen,
                onChanged: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color color;
  final Color backgroundColor;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedTextField(
      {Key key,
        this.hintText,
        this.icon,
        this.onChanged,
        this.color = Colors.white,
        this.backgroundColor = Colors.blueAccent,
        this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: color,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: color,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: color),
          border: InputBorder.none,
        ),
      ),
    );
  }
}