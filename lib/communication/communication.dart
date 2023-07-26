import 'package:flutter/material.dart';

class CommunicationDemo extends StatelessWidget {
  const CommunicationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Communication demo'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
        children: const <Widget>[
          Text('Progress indicator:'),
          SizedBox(height: 10,),
          ProgressIndicatorDemo(),
          SizedBox(height: 20,),

          Text('Snack bar: '),
          SizedBox(height: 10,),
          SnackBarDemo(),
          SizedBox(height: 20,),
        ],
      )
    );
  }
}

class ProgressIndicatorDemo extends StatefulWidget {
  const ProgressIndicatorDemo({super.key});

  @override
  State<ProgressIndicatorDemo> createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicatorDemo> with TickerProviderStateMixin {
  Future startDownload() async{}

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(seconds: 4),
                builder: (context, value, _) => SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    value: value,
                    backgroundColor: Colors.grey,
                    strokeWidth: 8,
                  ),
                ),
            ),
          ],
        ),
    );
  }

}

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show a SnackBar'),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            backgroundColor: Colors.green[400],
            action: SnackBarAction(
              label: 'Action',
              textColor: Colors.white,
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}