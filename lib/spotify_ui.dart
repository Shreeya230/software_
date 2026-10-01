import 'package:flutter/material.dart';

class SpotifyUi extends StatelessWidget {
  const SpotifyUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recently played',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.notifications_none, color: Colors.white, size: 24),
                      SizedBox(width: 16),
                      Icon(Icons.history, color: Colors.white, size: 24),
                      SizedBox(width: 16),
                      Icon(Icons.settings_outlined, color: Colors.white, size: 24),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Recently Played Artists (Circular Avatars)
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    _ArtistAvatar(
                      name: 'Lana Del Rey',
                      imageUrl: 'assets/images/Screenshot 2026-10-01 220621.png',
                    ),
                    SizedBox(width: 20),
                    _ArtistAvatar(
                      name: 'Marvin Gaye',
                      imageUrl: 'assets/images/Screenshot 2026-10-01 220657.png',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Spotify Wrapped Banner Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      'assets/images/img.png',
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '#SPOTIFYWRAPPED',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Your 2021 in review',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Grid Cards for Wrapped
              Row(
                children: [
                  Expanded(
                    child: _SquareCard(
                      title: 'Your Top Songs 2021',
                      imageUrl: 'assets/images/img_1.png',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _SquareCard(
                      title: 'Your Artists Revealed',
                      imageUrl: 'assets/images/img_2.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              // Editor's Picks Section Title
              const Text(
                'Editor\'s picks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Editor's Picks Grid Cards
              Row(
                children: [
                  Expanded(
                    child: _SquareCard(
                      title: 'Ed Sheeran, Big Sean...',
                      imageUrl: 'assets/images/img_3.png',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _SquareCard(
                      title: 'Mitski, Tame Impala...',
                      imageUrl: 'assets/images/img_4.png',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Helper Widget for Circular Artist Avatars
class _ArtistAvatar extends StatelessWidget {
  final String name;
  final String imageUrl;

  const _ArtistAvatar({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 42,
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.grey[800],
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

// Helper Widget for Square Album/Playlist Cards
class _SquareCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _SquareCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}