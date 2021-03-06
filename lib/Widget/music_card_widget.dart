import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_clone/Model/track_model.dart';
import 'package:spotify_clone/Model/artist_model.dart';

class MusicCard extends StatelessWidget {
  final TrackModel music = TrackModel(
    name: "Sauce",
    artist: ArtistModel(name: "Ella Mai"),
    album: "Ella Mai",
    durationMs: 304,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Color(0xff121212),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 59,
          color: Color(0xff222326),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        music.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Entypo.dot_single,
                        color: Colors.white54,
                      ),
                      Text(
                        music.artist.name,
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  AntDesign.rightcircleo,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  AntDesign.stepforward,
                  color: Colors.white,
                  size: 25,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
