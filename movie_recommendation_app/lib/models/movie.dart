class Movie {
  final String id;
  final String title;
  final String posterUrl;
  final String category; // 'bollywood', 'hollywood', 'tollywood', 'kdrama'
  final double rating;
  final String description;

  Movie({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.category,
    required this.rating,
    required this.description,
  });
}

// Sample data for our UI
class MovieData {
  static List<Movie> getSampleMovies() {
    return [
      // Bollywood Movies
      Movie(
        id: 'b1',
        title: 'Jawan',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BOWI5NmU3NTUtOTZiMS00YzA1LThlYTktNDJjYTU5NDFiMDUxXkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_.jpg',
        category: 'bollywood',
        rating: 4.5,
        description: 'A high-octane action thriller that outlines the emotional journey of a man who is set to rectify the wrongs in society.',
      ),
      Movie(
        id: 'b2',
        title: 'Pathaan',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BM2QzM2JiNTMtYjU4Ny00MDZkLTk3MmUtYTRjMzVkZGJlNmYyXkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_.jpg',
        category: 'bollywood',
        rating: 4.3,
        description: 'An exiled spy works with RAW to track down a sinister terrorist planning a major attack against India.',
      ),
      Movie(
        id: 'b3',
        title: 'Brahmastra',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BZjY2MmI1ZWItNmU0Yy00NTdkLWJiYmQtNzFlZWNlMzkxZTZjXkEyXkFqcGdeQXVyNjkwOTg4MTA@._V1_.jpg',
        category: 'bollywood',
        rating: 4.0,
        description: 'A young man discovers he has a divine connection to celestial weapons that can defeat dark forces threatening the world.',
      ),
      
      // Hollywood Movies
      Movie(
        id: 'h1',
        title: 'Oppenheimer',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg',
        category: 'hollywood',
        rating: 4.8,
        description: 'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.',
      ),
      Movie(
        id: 'h2',
        title: 'Barbie',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BNjU3N2QxNzYtMjk1NC00MTc4LTk1NTQtMmUxNTljM2I0NDA5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
        category: 'hollywood',
        rating: 4.2,
        description: 'Barbie suffers a crisis that leads her to question her world and her existence.',
      ),
      Movie(
        id: 'h3',
        title: 'Dune',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BMDQ0NjgyN2YtNWViNS00YjA3LTkxNDktYzFkZTExZGMxZDkxXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
        category: 'hollywood',
        rating: 4.6,
        description: 'A noble family becomes embroiled in a war for control over the galaxy\'s most valuable asset while its heir experiences visions of a dark future.',
      ),
      
      // Tollywood Movies
      Movie(
        id: 't1',
        title: 'RRR',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BODUwNDNjYzctODUxNy00ZTA2LWIyYTEtMDc5Y2E5ZjBmNTMzXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
        category: 'tollywood',
        rating: 4.7,
        description: 'A fictional story about two legendary revolutionaries and their journey away from home before they started fighting for their country in the 1920s.',
      ),
      Movie(
        id: 't2',
        title: 'Pushpa: The Rise',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BMmQ4YmM3NjgtNTExNC00ZTZhLWEwZTctYjdhOWI4ZWFlMDk2XkEyXkFqcGdeQXVyMTI1NDEyNTM5._V1_.jpg',
        category: 'tollywood',
        rating: 4.1,
        description: 'A laborer rises through the ranks of a red sandalwood smuggling syndicate and faces off against the police.',
      ),
      Movie(
        id: 't3',
        title: 'Baahubali',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BYWVlMjVhZWYtNWViNC00ODFkLTk1MmItYjU1MDY5ZDdhMTU3XkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg',
        category: 'tollywood',
        rating: 4.8,
        description: 'In ancient India, an adventurous and daring man becomes involved in a decades-old feud between two warring dynasties.',
      ),
      
      // K-Drama
      Movie(
        id: 'k1',
        title: 'Squid Game',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BYWE3MDVkN2EtNjQ5MS00ZDQ4LTliNzYtMjc2YWMzMDEwMTA3XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg',
        category: 'kdrama',
        rating: 4.7,
        description: 'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games for a tempting prize, but the stakes are deadly.',
      ),
      Movie(
        id: 'k2',
        title: 'Crash Landing on You',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BMzRiZWUyN2YtNDI4YS00NTg2LTg0OTgtMGI2ZjU4ODQ4Yjk3XkEyXkFqcGdeQXVyNTI0NzU5ODM@._V1_.jpg',
        category: 'kdrama',
        rating: 4.5,
        description: 'A wealthy South Korean businesswoman accidentally lands in North Korea after a paragliding accident and falls in love with a North Korean officer.',
      ),
      Movie(
        id: 'k3',
        title: 'Goblin',
        posterUrl: 'https://m.media-amazon.com/images/M/MV5BZTg0YmQxZTgtMzgwYi00N2NhLTlkMWYtOWYwNDA1YjkxMmViL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzE4MDkyNTA@._V1_.jpg',
        category: 'kdrama',
        rating: 4.6,
        description: 'A modern fantasy about a 939-year-old goblin who needs to find a human bride to end his immortal life.',
      ),
    ];
  }
} 