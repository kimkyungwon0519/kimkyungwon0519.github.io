import 'package:kkw_blog/src/constants/app_constant.dart';
import 'package:kkw_blog/src/utils/models/posts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_notifier.g.dart';

@riverpod
class PostNotifier extends _$PostNotifier {
  @override
  Posts build() => Posts([]);

  @override
  set state(Posts newPosts) => super.state = newPosts;

  void categoryFilter(String category) {
    state = Posts(posts.where((element) => element.catetory == category));
  }
}
