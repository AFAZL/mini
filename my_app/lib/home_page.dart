import 'package:flutter/material.dart';
import 'profile_page.dart'; // Import the profile page

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Previous History'),
              onTap: () {
                // Add your functionality to navigate to previous history here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.sentiment_satisfied),
              title: Text('Suggestion on Feelings'),
              onTap: () {
                // Add your functionality for suggestions on feelings here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.emoji_emotions),
              title: Text('Suggestion on Emoji'),
              onTap: () {
                // Add your functionality for suggestions on emojis here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Section(
            title: 'Top Songs',
            musicList: [
              'Song 1',
              'Song 2',
              'Song 3',
              'Song 4',
              'Song 5',
              'Song 6',
              'Song 4',
              'Song 5',
              'Song 6',
              // Add more songs as needed
            ],
          ),
          Section(
            title: 'Suggestions For You',
            musicList: [
              'Song 4',
              'Song 5',
              'Song 6',
              'Song 4',
              'Song 5',
              'Song 6',
              'Song 4',
              'Song 5',
              'Song 6',
              // Add more songs as needed
            ],
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<String> musicList;

  const Section({
    required this.title,
    required this.musicList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: musicList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Card(
                  child: Container(
                    width: 100,
                    child: Center(
                      child: Text(musicList[index]),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
