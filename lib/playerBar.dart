import 'package:flutter/material.dart';

class ExtraControlSection extends StatelessWidget {
  const ExtraControlSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.mic_none, size: 22),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.article_outlined, size: 24),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.devices, size: 24),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.volume_down_outlined, size: 24),
          ),
          buildPlayerBar(80),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.fullscreen_rounded, size: 24),
          ),
        ],
      ),
    );
  }
}

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 240,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.shuffle_rounded),
                Icon(Icons.skip_previous_rounded),
                Icon(Icons.pause_circle_filled_outlined, size: 40),
                Icon(Icons.skip_next_rounded),
                Icon(Icons.repeat_rounded),
              ],
            ),
          ),
          Container(
            width: 480,
            child: Row(
              children: [
                Text('00:28'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildPlayerBar(378),
                ),
                Text('02:36'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Container buildPlayerBar(double width) {
  return Container(
    width: width,
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey,
          ),
          height: 4,
          width: width,
        ),
        Container(
          height: 4,
          width: width / 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AlbumCover(),
        Title(),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Talking to the moon'),
                Text(
                  'Tai Vedas',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_sharp,
              semanticLabel: 'Favorite Button',
            ),
          )
        ],
      ),
    );
  }
}

class AlbumCover extends StatelessWidget {
  const AlbumCover({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 65,
      width: 65,
      child: Image.asset(
        'assets/images/cover.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
