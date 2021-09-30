class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/Logo.png',
            width: 160,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/instagram.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/facebook.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/twitter.png'),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 25,
                icon: Image.asset('assets/tiktok.png'),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {},
              child: Center(child: Text('Download the App')),
            ),
          ),
        ],
      ),
    );
  }
}
