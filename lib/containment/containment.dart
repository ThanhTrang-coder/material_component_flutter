import 'package:flutter/material.dart';

class ContainmentDemo extends StatelessWidget {
  const ContainmentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Containment demo'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          children: <Widget>[
            const Text('Show bottom sheet:'),
            const SizedBox(height: 10,),
            const BottomSheetDemo(),
            const SizedBox(height: 20,),

            const Text('Show card: '),
            const SizedBox(height: 10,),
            const CardDemo(),
            const SizedBox(height: 20,),

            const Text('Show dialog:'),
            const SizedBox(height: 10,),
            const DialogDemo(),
            const SizedBox(height: 20,),

            const Text('Show list: '),
            const SizedBox(height: 10,),
            ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/show_list_view'),
                  child: const Text('show ListView')
            ),
            const SizedBox(height: 20,),
          ],
        )
    );
  }
}

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Modal Bottom Sheet'),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(
                    child: const Text('Close'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text('BUY TICKETS')
                ),
                const SizedBox(width: 8,),
                TextButton(
                  onPressed: () {},
                  child: const Text('LISTEN'),
                ),
                const SizedBox(width: 8,)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DialogDemo extends StatelessWidget {
  const DialogDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center (
        child: ElevatedButton(
          onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              )
          ),
          child: const Text('Show Dialog'),
        ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile(
            'Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subTitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(subTitle),
      leading: Icon(icon, color: Colors.green,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view demo'),
      ),
      body: Center(
        child: _buildList(),
      ),
    );
  }
}