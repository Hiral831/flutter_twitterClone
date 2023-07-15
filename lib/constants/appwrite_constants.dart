class AppwriteConstants {
  static const String databaseId = '6491636a66a6996e002e';
  static const String projectId = '648c3467ac5f9e1aabc3';
  static const String endPoint = 'http://192.168.12.104/v1';
  //'http://localhost:80/v1' but to put connected ip address in place of localhost

  static const String usersCollection = '6491639a6675775af49d';
  static const String tweetsCollection = '6492f138b487644c91a5';
  static const String imagesBucket = '64941d7ba9e887d8ea41';
  static String imageUrl(String imageId) =>
      '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}
