import 'package:flutter/material.dart';
import 'package:individual_meetup_app/feature_2/view/pages/description_page.dart';

class TopTrendingMeetups extends StatelessWidget {
  const TopTrendingMeetups({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DescriptionPage()));
                },
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn.dribbble.com/assets/meetups/meetup-photo-4-5f1910f0a6383ce82795c26da096ce78418066f8619f6c54ecf1b88a1a6a67f5.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8)),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: Center(
                          child: Text(
                        '0${index + 1}',
                        style: const TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 5),
    );
  }
}
