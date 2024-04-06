import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

/// [ImageUtils] class to store image related methods
/// Used to convert image to base64, base64 to image, image to file etc
/// This class methods can be used to convert the images
///
/// Example:
///
/// ```dart
/// ImageUtils.base64ImageToImageFile("base64String");
/// ImageUtils.getImageFileFromAssets("assets/image.png");
/// ImageUtils.networkImageToBase64("https://example.com/image.png");
/// ImageUtils.localImageToBase64("path/to/image.png");
/// ```
class ImageUtils {
  /// [base64ImageToImageFile] method to convert base64 image to image file
  /// This method takes base64 image string and extension name as input
  /// This method returns the image file path
  /// This method uses base64.decode method to decode the image
  /// This method uses getApplicationDocumentsDirectory to get the application directory
  /// This method uses File class to create the file
  /// This method uses writeAsBytes method to write the image
  /// This method is an async method
  /// This method is a static method
  ///
  /// Example:
  ///
  /// ```dart
  /// ImageUtils.base64ImageToImageFile("base64String");
  /// ```
  static Future<String> base64ImageToImageFile(String encodedData, [String extensionName = 'png']) async {
    // final encodedStr = "put base64 encoded string here";
    Uint8List bytes = base64.decode(encodedData);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File("$dir/${DateTime.now().millisecondsSinceEpoch}.$extensionName");
    await file.writeAsBytes(bytes);
    return file.path;
  }

  /// [getImageFileFromAssets] method to get image file from assets
  /// This method takes image path as input
  /// This method returns the image file
  /// This method uses rootBundle to load the image
  /// This method uses getTemporaryDirectory to get the temporary directory
  /// This method uses File class to create the file
  /// This method uses writeAsBytes method to write the image
  /// This method is an async method
  /// This method is a static method
  ///
  /// Example:
  ///
  /// ```dart
  /// ImageUtils.getImageFileFromAssets("assets/image.png");
  /// ```
  static Future<File> getImageFileFromAssets(String path) async {
    // globalLogger.d('getImageFileFromAssets: $path', error: 'ImageUtils');
    final temp = await getTemporaryDirectory();
    // globalLogger.d('getImageFileFromAssets temp: ${temp.path}', error: 'ImageUtils');
    final file = File('${temp.path}/$path');
    // globalLogger.d('getImageFileFromAssets file: ${file.path}', error: 'ImageUtils');
    await file.create(recursive: true);
    // try {
    final byteData = await rootBundle.load(path);
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    // } catch (e) {
    //   globalLogger.e('getImageFileFromAssets: $e', error: 'ImageUtils');
    // }

    return file;
  }

  /// [networkImageToBase64] method to convert network image to base64
  /// This method takes image url as input
  /// This method returns the base64 image string
  /// This method uses http package to get the image
  /// This method uses base64Encode method to encode the image
  /// This method returns null if image is not found
  /// This method returns base64 image string if image is found
  /// This method is an async method
  /// This method is a static method
  ///
  /// Example:
  ///
  /// ```dart
  /// ImageUtils.networkImageToBase64("https://example.com/image.png");
  /// ```
  static Future<String?> networkImageToBase64(String imageUrl) async {
    http.Response response = await http.get(Uri.parse(imageUrl));
    final bytes = response.bodyBytes;
    return (bytes.isNotEmpty ? base64Encode(bytes) : null);
  }

  /// [localImageToBase64] method to convert local image to base64
  /// This method takes image path as input
  /// This method returns the base64 image string
  /// This method uses File class to read the image
  /// This method uses base64Encode method to encode the image
  /// This method returns null if image is not found
  /// This method returns base64 image string if image is found
  /// This method is a static method
  ///
  /// Example:
  ///
  /// ```dart
  /// ImageUtils.localImageToBase64("path/to/image.png");
  /// ```
  static String? localImageToBase64(String imagePath) {
    if (imagePath.isEmpty) {
      return null;
    }
    List<int> imageBytes = File(imagePath).readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }
}
