class MHUIAssetsConstant {
  static const String fileNotFound = "assets/images/file_not_found.jpg";
  static const String imageNotAvailable = "assets/images/image_not_available.png";
  static const String imageNotFound = "assets/images/image_not_found.avif";
  static const String noImageAvailable = "assets/images/no_image_available.jpg";
  static const String noImageAvailable2 = "assets/images/no_image_available2.png";
  static const String error = "assets/images/error.png";
}

enum ErrorImageType {
  fileNotFound,
  imageNotAvailable,
  imageNotFound,
  noImageAvailable,
  noImageAvailable2,
  error,
  customImage,
}

String getErrorImage(ErrorImageType errorImageType) {
  switch (errorImageType) {
    case ErrorImageType.fileNotFound:
      return MHUIAssetsConstant.fileNotFound;
    case ErrorImageType.imageNotAvailable:
      return MHUIAssetsConstant.imageNotAvailable;
    case ErrorImageType.imageNotFound:
      return MHUIAssetsConstant.imageNotFound;
    case ErrorImageType.noImageAvailable:
      return MHUIAssetsConstant.noImageAvailable;
    case ErrorImageType.noImageAvailable2:
      return MHUIAssetsConstant.noImageAvailable2;
    case ErrorImageType.error:
      return MHUIAssetsConstant.error;
    default:
      return MHUIAssetsConstant.noImageAvailable;
  }
}
