
import 'package:flutter/material.dart';

// class DatePickerDemo extends StatelessWidget {
//   const DatePickerDemo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       restorationScopeId: 'app',
//       home: const DatePickerExample(restorationId: 'main'),
//     );
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Date picker demo'),
//         ),
//         body: const Center(
//           child: DatePickerExample(restorationId: 'main'),
//         )
//     );
//   }
// }

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePickerExample>{
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year}",
            ),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000)
                  );
                  if(dateTime != null) {
                    setState(() {
                      selectedDate = dateTime;
                    });
                  }
                },
                child: const Text("Choose Date"),
            ),
          ],
        )
      ),
    );
  }

  // void _selectDate(DateTime? newSelectedDate) {
  //   if(newSelectedDate != null) {
  //     setState(() {
  //       _selectedDate.value = newSelectedDate;
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //           content: Text(
  //             'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'
  //           ),
  //       ));
  //     });
  //   }
  // }
}