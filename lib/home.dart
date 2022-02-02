import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int selectedindex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Good Morning ,',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.notifications,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Text(
                    'Fatuma',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    color: Colors.redAccent,
                    thickness: 3.0,
                    endIndent: 280.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 230,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => myCard(),
                      separatorBuilder: (context, indx) => const SizedBox(
                        width: 5.0,
                      ),
                      itemCount: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10.0,
                      ),
                      children: [
                        buildItem((Icons.hail), 'Retail Parcase'),
                        buildItem((Icons.payment), 'Bill Payment'),
                        buildItem((Icons.transform), 'Transfer'),
                        buildItem((Icons.comment_bank), 'Cash In'),
                        buildItem((Icons.outbond), 'Cash Out'),
                        buildItem((Icons.volunteer_activism_sharp), 'Voucher'),
                        buildItem((Icons.account_balance), 'Balance Inquiry'),
                        buildItem((Icons.check_circle), 'Mini Statement'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF39213),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.account_balance,
                            size: 30,
                          ),
                        ),
                        const Icon(
                          Icons.network_cell_outlined,
                          size: 30,
                        ),
                        const Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myCard() => Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              // begin: Alignment.bottomCenter,
              colors: [
                Color(0xFFF39213),
                Color(0xFFE36311),
                Color(0xFFF39213),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Main Card',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '5167 1280 3300 1299',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    const Icon(
                      Icons.power_input,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  '05 / 25',
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'SDG 7,907.10',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: const Image(
                        image: AssetImage('image/mastercard.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildItem(
    IconData icon,
    String text,
  ) =>
      Column(
        children: [
          Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF0C2D48),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            text,
          ),
        ],
      );
}
