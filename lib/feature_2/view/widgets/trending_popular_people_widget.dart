import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:individual_meetup_app/core/theme/app_theme.dart';

class TrendingPopularPeopleWidget extends ConsumerWidget {
  const TrendingPopularPeopleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 184,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    width: 290,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 58,
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Container(
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppTheme.button)),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/ic_leaf.png',
                                  width: 24,
                                  color: AppTheme.button,
                                ),
                              ),
                            ),
                            horizontalTitleGap: 8,
                            minVerticalPadding: 0,
                            title: const Text(
                              'Author',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppTheme.text,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text(
                              '1,028 Meetups',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        const Divider(),
                        const Expanded(child: Text('')),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: 90,
                              height: 30,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      padding: const MaterialStatePropertyAll(
                                          EdgeInsets.all(0)),
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              AppTheme.button),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8)))),
                                  onPressed: null,
                                  child: const Text(
                                    'See more',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 8,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.ventera.com/wp-content/uploads/2020/12/meetups-benefit-professional-growth.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 38,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/assets/meetups/meetup-photo-1-75b28ae5279a46d4e8b26f1b7cc8e8b7583241e2d7c4682a98025bd56f9b0e30.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 68,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-photo/people-taking-selfie-together-registration-day_23-2149096795.jpg'),
                    ),
                  ),
                  const Positioned(
                    left: 98,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOqN5hp2gjfPVAJnSJZEfwz42AAQLtOXR4KBD5Sb8t2dVnZPNWAe58vlSieXRD99wVaOk&usqp=CAU'),
                    ),
                  ),
                  const Positioned(
                    left: 130,
                    top: 76,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.dribbble.com/assets/meetups/meetup-photo-4-5f1910f0a6383ce82795c26da096ce78418066f8619f6c54ecf1b88a1a6a67f5.jpg'),
                    ),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 3),
    );
  }
}
