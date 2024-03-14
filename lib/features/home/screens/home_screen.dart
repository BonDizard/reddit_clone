import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_clone/core/common/error_text.dart';
import 'package:reddit_clone/core/common/loader.dart';
import 'package:reddit_clone/features/community/controller/community_controller.dart';
import '../../auth/controller/auth_controller.dart';
import '../drawer/community_list_drawer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      drawer: const CommunityListDrawer(),
      appBar: AppBar(
        title: const Text('Home'),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              displayDrawer(context);
            },
          );
        }),
        actions: [
          IconButton(
            onPressed: () {
              ref.watch(userCommunitiesProvider).when(
                    data: (communities) {
                      if (kDebugMode) {
                        print('communities: $communities');
                      }
                    },
                    error: (error, stackTrace) =>
                        print('communities: ${error.toString()}'),
                    loading: () => const Loader(),
                  );
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundImage: NetworkImage(user!.profilePic),
            ),
          ),
        ],
      ),
    );
  }
}
