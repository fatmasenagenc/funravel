import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/contants.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  State<SelectDate> createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  DateTimeRange? _selectedDateRange;

  // This function will be triggered when the floating button is pressed
  void _show() async {
    final DateTimeRange? result = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1),
      lastDate: DateTime(2030, 12, 31),
      currentDate: DateTime.now(),
      saveText: 'Done',
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              onPrimary: kPrimaryDarkenedColor, // <-- SEE HERE
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: Colors.red, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },

    );

    if (result != null) {
      // Rebuild the UI
      print(result.start.toString());
      setState(() {
        _selectedDateRange = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Preferred Date Range', style: TextStyle(color: kPrimaryColor))),
      body: _selectedDateRange == null
          ? const Center(
        child: Text('Press the button to see the calendar'),
      )
          : Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Start date
            Text(
              "Start date: ${_selectedDateRange?.start.toString().split(' ')[0]}",
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
            const SizedBox(
              height: 20,
            ),
            // End date
            Text(
                "End date: ${_selectedDateRange?.end.toString().split(' ')[0]}",
                style: const TextStyle(fontSize: 24, color: Colors.red))
          ],
        ),
      ),
      // This button is used to show the date range picker
      floatingActionButton: FloatingActionButton(
        onPressed: _show,
        child: const Icon(Icons.date_range),
      ),
    );
  }
}