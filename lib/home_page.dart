import 'package:flutter/material.dart';
import 'package:traveloka/save_banner_clipper.dart';
import 'dart:math' as math;
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _promoImages = [
    'assets/images/Promo ke Thailand.jpeg',
    'assets/images/Promo ke Thailand2.jpeg',
    'assets/images/Promo ke Thailand3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverToBoxAdapter(child: _buildHeaderImage()),
                SliverToBoxAdapter(child: _buildCustomTabBar()),
              ];
            },
            body: TabBarView(
              children: [
                _buildAllStaysTab(),
                _buildOverseasTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAllStaysTab() {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        _buildSearchCard(),
        const Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: Text(
            'New User Special Treats',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        _buildNewUserSpecialTreats(),
        _buildMenginapDiLuarNegeri(),
        _buildHotelHargaTerbaik(),
        _buildPenawaranSpesial(),
        _buildTravelokaAffiliate(),
      ],
    );
  }

  Widget _buildHeaderImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: SizedBox(
          height: 200,
          child: ImageSlider(imagePaths: _promoImages),
        ),
      ),
    );
  }

  Widget _buildCustomTabBar() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4F2),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TabBar(
          dividerColor: Colors.transparent,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(26),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: const Color(0xFF006CE5),
          unselectedLabelColor: Colors.black54,
          tabs: const [
            Tab(text: 'All Stays'),
            Tab(text: 'Overseas'),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchCard() {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchRow(Icons.location_on, 'Near me'),
            const Divider(),
            _buildSearchRow(Icons.calendar_today, 'Sat, 11 Oct 2025 - Sun, 12 Oct 2025'),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, top: 4.0, bottom: 4.0),
              child: Text('1 night(s) stay'),
            ),
            const Divider(),
            _buildSearchRow(Icons.person, '1 Room, 2 Adults, 0 Children'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE0F3FF),
                      foregroundColor: const Color(0xFF006CE5),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Map'),
                        SizedBox(width: 8),
                        Icon(Icons.map_outlined, size: 20),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0194F3),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    child: const Text('Search'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 16),
        Text(text),
      ],
    );
  }

  Widget _buildNewUserSpecialTreats() {
    return Card(
      color: const Color(0xFFFDFEEF),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Placeholder for the custom icon
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                        width: 48, height: 48, 
                        color: const Color(0xFF006CE5),
                        child: const Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(Icons.watch_later_outlined, color: Colors.lightBlueAccent, size: 40),
                            Icon(Icons.flash_on, color: Colors.yellow, size: 24),
                            Padding(
                              padding: EdgeInsets.only(top: 2, right: 4),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text('%', style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold, fontSize: 16)),
                              ),
                            ),
                          ],
                        )
                    )
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Discount up to 300K', style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text('Available for', style: TextStyle(color: Colors.grey[600])),
                          const SizedBox(width: 8),
                          const CircleAvatar(radius: 12, backgroundColor: Color(0xFF074590), child: Icon(Icons.hotel, color: Colors.white, size: 14)),
                          const SizedBox(width: 4),
                          const CircleAvatar(radius: 12, backgroundColor: Color(0xFFE55B5B), child: Icon(Icons.star, color: Colors.white, size: 14)),
                          const SizedBox(width: 4),
                          Icon(Icons.directions_car, color: Colors.grey[400], size: 24),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.info_outline, color: Colors.grey[400]),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Grab it while it lasts', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12)),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: LinearProgressIndicator(
                          value: 0.7,
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                          minHeight: 6,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0194F3),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12)
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Claim'),
                      SizedBox(width: 8),
                      Icon(Icons.schedule, size: 18),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenginapDiLuarNegeri() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Menginap di Luar Negeri 🌍',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text('Staycation di Hotel Internasional diskon s.d 30%'),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildCountryChip('Singapura', isSelected: true),
                _buildCountryChip('Jepang'),
                _buildCountryChip('Malaysia'),
                _buildCountryChip('Thailand'),
                _buildCountryChip('Korea Selatan'),
                _buildCountryChip('Vietnam'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 330,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildHotelCard(
                  imagePath: 'assets/images/hotel1.jpeg',
                  location: 'Serangoon',
                  hotelName: 'ibis Styles Singapore on Ma...',
                  rating: 3,
                  score: 8.0,
                  reviews: 1006,
                  originalPrice: 'Rp 1.770.626',
                  discountedPrice: 'Rp 1.769.491',
                ),
                _buildHotelCard(
                  imagePath: 'assets/images/hotel2.jpeg',
                  location: 'Orchard',
                  hotelName: 'Mercure Singapore On St...',
                  rating: 4,
                  score: 8.2,
                  reviews: 1510,
                  originalPrice: 'Rp 2.069.563',
                  discountedPrice: 'Rp 2.068.197',
                ),
                _buildHotelCard(
                  imagePath: 'assets/images/hotel3.jpeg',
                  location: 'Orchard',
                  hotelName: 'Novotel Singapore on...',
                  rating: 5,
                  score: 8.6,
                  reviews: 1234,
                  originalPrice: 'Rp 3.500.000',
                  discountedPrice: 'Rp 3.250.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHotelHargaTerbaik() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hotel Harga Terbaik 🤑',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 330,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildHotelCard(
                  imagePath: 'assets/images/terbaik1.jpeg',
                  location: 'Senayan',
                  hotelName: 'ARTOTEL Casa Hangtuah',
                  rating: 3,
                  score: 8.9,
                  reviews: 156,
                  originalPrice: 'Rp 1.024.068',
                  discountedPrice: 'Rp 803.282',
                  savePercentage: 22,
                ),
                _buildHotelCard(
                  imagePath: 'assets/images/terbaik2.jpeg',
                  location: 'Gunung Sahari',
                  hotelName: 'Golden Boutique Hotel K...',
                  rating: 4,
                  score: 8.5,
                  reviews: 4458,
                  originalPrice: 'Rp 466.208',
                  discountedPrice: 'Rp 350.532',
                  savePercentage: 25,
                ),
                _buildHotelCard(
                  imagePath: 'assets/images/terbaik3.jpeg',
                  location: 'Pluit',
                  hotelName: 'Grand Dafam Ancol Jakarta',
                  rating: 4,
                  score: 7.5,
                  reviews: 123,
                  originalPrice: 'Rp 425.000',
                  discountedPrice: 'Rp 395.000',
                  savePercentage: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPenawaranSpesial() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Penawaran Spesial',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(height: 8),
          const Text('Cari diskon dan harga terbaik disini!'),
          const SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSpecialOfferCard('assets/images/Spesial1.jpeg'),
                _buildSpecialOfferCard('assets/images/Spesial2.jpeg'),
                _buildSpecialOfferCard('assets/images/Spesial3.jpeg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOfferCard(String imagePath) {
    return Card(
      margin: const EdgeInsets.only(right: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imagePath,
          width: 300,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _buildTravelokaAffiliate() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            children: const [
              Text(
                'Traveloka Affiliate',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(width: 8),
              Text('🔔', style: TextStyle(fontSize: 18)),
            ],
          ),
          const SizedBox(height: 16),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/affiliate.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHotelCard({
    required String imagePath,
    required String location,
    required String hotelName,
    required int rating,
    required double score,
    required int reviews,
    required String originalPrice,
    required String discountedPrice,
    int? savePercentage,
  }) {
    return Card(
      margin: const EdgeInsets.only(right: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.asset(
                    imagePath,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B5B9E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.white, size: 14),
                        const SizedBox(width: 4),
                        Text(location, style: const TextStyle(color: Colors.white, fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(200),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey.shade300, width: 0.5)
                    ),
                    child: const Icon(Icons.add, color: Color(0xFF535A62), size: 20),
                  ),
                ),
                if (savePercentage != null)
                  Positioned(
                    top: 40,
                    right: 0,
                    child: ClipPath(
                      clipper: SaveBannerClipper(),
                      child: Container(
                        width: 70,
                        height: 28,
                        color: const Color(0xFFF96F3B),
                        child: Center(
                          child: Text(
                            'Save $savePercentage%',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelName,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Transform(alignment: Alignment.center, transform: Matrix4.rotationZ(math.pi * 1.8), child: const Icon(Icons.send, color: Color(0xFF0194F3), size: 18)),
                      const SizedBox(width: 4),
                      Text(
                        '$score/10',
                        style: const TextStyle(
                            color: Color(0xFF074590),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '• $reviews',
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    originalPrice,
                    style: TextStyle(
                      color: Colors.grey[500],
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    discountedPrice,
                    style: const TextStyle(
                      color: Color(0xFFF96F3B),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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

  Widget _buildCountryChip(String country, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ActionChip(
        onPressed: () {},
        label: Text(
          country,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.blue[800],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
        ),
        backgroundColor: isSelected ? Colors.blue[700] : Colors.blue[50],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: isSelected ? Colors.blue[700]! : Colors.grey[300]!)),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      ),
    );
  }

  Widget _buildOverseasTab() {
    return const Center(
      child: Text('Overseas Tab'),
    );
  }
}

class ImageSlider extends StatefulWidget {
  final List<String> imagePaths;

  const ImageSlider({super.key, required this.imagePaths});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
        if (!mounted) {
          timer.cancel();
          return;
        }
        if (_currentPage < widget.imagePaths.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        if (_pageController.hasClients) {
          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeIn,
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.imagePaths.length,
          itemBuilder: (context, index) {
            return Image.asset(
              widget.imagePaths[index],
              fit: BoxFit.cover,
            );
          },
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(widget.imagePaths.length, (int index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              height: 8.0,
              width: _currentPage == index ? 24.0 : 8.0,
              decoration: BoxDecoration(
                color: _currentPage == index
                    ? Colors.white
                    : Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(5.0),
              ),
            );
          }),
        ),
      ],
    );
  }
}
