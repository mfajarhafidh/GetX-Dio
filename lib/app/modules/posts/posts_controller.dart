import 'package:get/get.dart';
import 'package:getx_dio/app/modules/posts/posts_provider.dart';
import 'package:getx_dio/models/post.dart';

class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    super.onInit();
    PostsProvider().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("error");
      },
    );
  }
}