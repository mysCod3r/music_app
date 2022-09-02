import 'package:flutter/material.dart';
import 'package:music_app/screens/home_albums.dart';
import 'package:music_app/screens/home_artist.dart';
import 'package:music_app/screens/home_folders.dart';
import 'package:music_app/screens/home_songs.dart';
import 'package:music_app/screens/home_suggested.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.music_video_outlined,
            color: Colors.orange,
          ),
          title: const Text("Music App"),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_outlined))
          ],
          bottom: const TabBar(
              isScrollable: true,
              padding: EdgeInsets.symmetric(horizontal: 12),
              labelColor: Colors.orange,
              indicatorColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: "Suggested"),
                Tab(text: "Songs"),
                Tab(text: "Artist"),
                Tab(text: "Albums"),
                Tab(text: "Folders"),
              ]),
        ),
        body: const TabBarView(
          children: [
            HomeSuggested(),
            HomeSongs(),
            HomeArtist(),
            HomeAlbums(),
            HomeFolders()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Favorites", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              label: "Playlist", icon: Icon(Icons.featured_play_list)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(Icons.settings)),
        ]),
      ),
    );
  }
}
