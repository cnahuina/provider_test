import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_provider/core/models/comment.dart';
import 'package:project_provider/core/models/post.dart';
import 'package:project_provider/core/models/user.dart';

// The service responsible for networking requests
class Api{

  static const endpoint = 'https://jsonplaceholder.typecode.com';

  var client = new http.Client();

  Future<User> getUserProfile(int userId) async {
    //get user profile for id

    var response = await client.get('$endpoint/users/$userId');

    //convert and return

    return User.fromJson(json.decode(response.body));
  }

  Future <List<Post>> getPostsForUser(int userId) async{
    var posts = List<Post>();
    //get user posts for id

    var response = await client.get('$endpoint/posts?userId=$userId');

    //parse into List
    var parsed = json.decode(response.body) as List<dynamic>;

    //loop and convert each item to post
    for (var post in parsed){
      posts.add(Post.fromJson(post));
    }

    return posts;
  }

  Future <List<Comment>> getCommentsForPost(int postId) async{

    var comments = List<Comment>();

    //Get comments for post
    var response = await client.get('$endpoint/comments?postId=$postId');

    // Parse into List
    var parsed = json.decode(response.body) as List<dynamic>;

    // Loop and convert each items to a comment
    for(var comment in parsed){
      comments.add(Comment.fromJson(comment));
    }

    return comments;
  }
}