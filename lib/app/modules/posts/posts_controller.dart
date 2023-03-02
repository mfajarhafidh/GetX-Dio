import 'package:get/get.dart';
import 'package:getx_dio/app/modules/posts/posts_provider.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  @override
  void onInit() {
    super.onInit();
    PostsProvider().getPostsList(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (posts) {
        postsList.addAll(posts);
      },
      onError: (error) {
        print('error');
      },
    );
  }
}