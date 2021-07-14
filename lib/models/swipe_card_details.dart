class SwipeData {
  String imageUrl;
  String name;
  String description;

  SwipeData(this.imageUrl, this.name, this.description);

  static List<SwipeData> samples = [
    SwipeData('assets/profile0.jpg', 'Christy Hawk',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vitae viverra orci, ac euismod ante.'),
    SwipeData('assets/profile1.jpg', 'John Deer',
        'Maecenas feugiat vehicula dictum. Nam sodales semper nunc, non porta massa ornare et.'),
    SwipeData('assets/profile2.jpg', 'Jackson Ms',
        'Donec justo lectus, pulvinar in auctor a, tincidunt at quam. In non tempor tellus, sit amet malesuada metus.'),
    SwipeData('assets/profile3.jpg', 'Mallot Cury',
        'Praesent consequat libero non enim gravida, ut tempor sem ornare. Curabitur pulvinar nulla est, in sollicitudin sem congue quis.'),
    SwipeData('assets/profile4.jpg', 'Klein Johns',
        'Ut et pharetra tortor. Vivamus turpis tellus, venenatis a hendrerit vel, porta quis ante.'),
  ];
}
