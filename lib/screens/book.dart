
class Book {
  String? type;
  String? name;
  String? publisher;
  DateTime? date;
  String? imgUrl;
  num? score;
  num? ratings;
  String? review;
  num? height;
  String? pdfUrl;


  Book(
      this.type,
      this.name,
      this.publisher,
      this.date,
      this.imgUrl,
      this.score,
      this.ratings,
      this.review,
      this.height,
      this.pdfUrl,
      );
  static List<Book> generateBooks() {
    return [
      Book(
          'Motivational',
          'Living in the Light',
          'Shakti Gawain',
          DateTime(1948, 3, 23),
          'images/livingin.jpg',
          4.05,
          5326,
          "In Living in the Light, Shakti Gawain introduced a powerful new way of life: that of listening to one's own intuition and relying on it as a guiding force. In the newly revised edition of that classic work, she elaborates on her original ideas, adding aspects of her own experiences and learning process over the past twelve years.",
          220.0,
          'pdfs/resu.pdf'),
      Book(
          'Horror fiction',
          'The Call of Cthulhu',
          'H.P Lovecraft',
          DateTime(1928, 2, 1),
          'images/coc.jpg',
          4.18,
          42732,
          'This collection spans Lovecraft’s literary career, and charts the development of his ‘cosmicist’ philosophy; the belief that behind the veil of our blinkered everyday lives lies another reality, too terrible for the human mind to comprehend. In stories written in the gothic tradition, narrators recount their descent into madness and despair. Through their investigations into the unexplained, they tug at the thin threads that separate our world from another of indescribable horror. ',
          220.0,
          'pdfs/COC.pdf'),
      Book(
          'Motivational',
          '100 Ways to Motivate Yourself',
          'Steve Chandler',
          DateTime(2004, 10, 15),
          'images/100ways.jpg',
          4.01,
          7217,
          'In this first-ever paperback edition of his longtime bestseller, motivational speaker Chandler helps readers create an action plan for living their vision in business and in life.',
          220.0,
          'pdfs/100.pdf'),
      Book(
          'Romance Novel',
          'Half Girlfriend',
          'Chetan Bhagat',
          DateTime(2004, 10, 13),
          'images/halfgf.jpg',
          3.2,
          46920,
          "HALF GIRLFRIEND (HINDI) Once upon a time, there was a Bihari boy called Madhav. He fell in love with a girl from Delhi called Riya. Madhav didn't speak English well. Riya did. Madhav wanted a relationship. Riya didn't. Riya just wanted friendship. Madhav didn't. Riya suggested a compromise. She agreed to be his half girlfriend.",
          220.0,
          'pdfs/hgf.pdf'),
      Book(
          'Spiritual/Physical Evolution',
          'The Book of Secret Wisdom',
          'Zinovya Dushkova',
          DateTime(2015, 8, 12),
          'images/secret.jpg',
          3.83,
          272,
          'Do you wonder about the future and the destiny of humanity? Do you want to know the true purpose of your existence on Earth and in the Universe? A long-hidden ancient text holds the answers you seek!',
          220.0,
          'pdfs/wisdom.pdf'),
      Book(
          'History',
          'The Adventures of Sherlock Holmes',
          'Conan Doyle',
          DateTime(1998, 8, 22),
          'images/ad.jpg',
          4.3,
          270685,
          "The Adventures of Sherlock Holmes is the series of short stories that made the fortunes of the Strand magazine, in which they were first published, and won immense popularity for Sherlock Holmes and Dr Watson. The detective is at the height of his powers and the volume is full of famous cases, including 'The Red-Headed League', 'The Blue Carbuncle', and 'The Speckled Band'",
          220.0,
          'pdfs/adofsher.pdf'),
    ];
  }
}

