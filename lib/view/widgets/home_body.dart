import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecoplants/utils.dart';
import 'package:ecoplants/view/widgets/product_card.dart';
import 'package:ecoplants/view/widgets/top_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.size,
    required this.list,
  });

  final Size size;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 110,
          ),
          Center(
            child: Text(
              'Semua Event',
              style: TextStyle(
                  fontSize: 14,
                  color: Utils.primaryColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) => Container(
                    width: size.width * 0.8,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(list.elementAt(index)),
                  ),
              itemCount: list.length,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.8,
                initialPage: list.length ~/ 2,
                height: 115,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
              )),
          const SizedBox(
            height: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Populer',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(
                              fontSize: 10, color: Utils.primaryColor),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              CarouselSlider.builder(
                  itemCount: 9,
                  itemBuilder: (context, index, realIndex) =>
                      const ProductCard(),
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    initialPage: list.length ~/ 2,
                    aspectRatio: 238 / 160,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Rekomendasi',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(
                              fontSize: 10, color: Utils.primaryColor),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemBuilder: (context, index) => const ProductCard(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 240 / 160,
                      mainAxisExtent: 243,
                      crossAxisCount: 2),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
      Container(
        decoration: BoxDecoration(
            color: Utils.primaryColor,
            borderRadius: const BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(20),
                bottomStart: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TopCard(
                asset: 'assets/images/promo_icon.png',
                title: 'Promo',
              ),
              TopCard(
                asset: 'assets/images/donasi_icon.png',
                title: 'Donasi',
              ),
              TopCard(
                asset: 'assets/images/komunitas_icon.png',
                title: 'Komunitas',
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
