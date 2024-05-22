import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // todo msg text
  var msg = "First, solve the problem. Then, write the code.";
  // todo values using in text and dropdownbtn
  double selectedTextSize = 16.0;
  final List<double> textSizeOptions = [12.0, 16.0, 20.0, 25.0, 28.0, 32.0];
  Color textColor = Colors.white;

  void purpleTextColor() {
    setState(() {
      textColor = Color(0xffbf79d5);
    });
  }

  void greenTextColor() {
    setState(() {
      textColor = Color(0xff3bb47f);
    });
  }

  void lightOrangeTextColor() {
    setState(() {
      textColor = Color(0xffeda25f);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            margin: EdgeInsets.all(10),
            width: 600,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  // todo
                  msg,
                  style: TextStyle(
                    fontSize: selectedTextSize,
                    color: textColor,
                  ),
                ),
              ),
            )),
        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // todo
              ElevatedButton(
                onPressed: () {
                  // todo
                  purpleTextColor();
                },
                style: ElevatedButton.styleFrom(
                  // todo
                  backgroundColor: Color(0xffc77dd9),
                  elevation: 5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                ),
                child: const Text(
                  'click',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // todo
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // todo
                  greenTextColor();
                },
                style: ElevatedButton.styleFrom(
                  // todo
                  backgroundColor: const Color.fromARGB(255, 55, 189, 124),
                  elevation: 5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                ),
                child: const Text(
                  'click',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // todo
                  lightOrangeTextColor();
                },
                style: ElevatedButton.styleFrom(
                  // todo
                  backgroundColor: Color.fromARGB(255, 249, 169, 89),
                  elevation: 5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                  ),
                ),
                child: const Text(
                  'click',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              // todo drop down btn

              DropdownButton<double>(
                value: selectedTextSize,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (double? newValue) {
                  // This is called when the user selects an item.
                  setState(() {
                    selectedTextSize = newValue!;
                  });
                },
                items: textSizeOptions
                    .map<DropdownMenuItem<double>>((double value) {
                  return DropdownMenuItem<double>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
