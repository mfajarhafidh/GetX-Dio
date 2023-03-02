import 'package:getx_dio/library/api_request.dart';

import '../../../models/post.dart';

class PostsProvider {
  void getPostsList({
    Function()? beforeSend,
    Function(List<Post> posts)? onSuccess,
    Function(dynamic error)? onError,
  }){
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null).get(  
      beforeSend: () => {if(beforeSend != null) beforeSend()},
      onSuccess: (data) {
        var postsJson = data as List;
        List<Post> posts = postsJson.map((postsJson) => Post.fromJson(postsJson)).toList();
        onSuccess!(posts);
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}