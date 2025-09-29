// import 'package:flutter/material.dart';
// import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

// class SnackbarHelper {
//   static void showSuccess(BuildContext context, String message, {String title = "Berhasil!"}) {
//     show(context, title, message, ContentType.success);
//   }

//   static void showError(BuildContext context, String message, {String title = "Terjadi Kesalahan"}) {
//     show(context, title, message, ContentType.failure);
//   }

//   static void showWarning(BuildContext context, String message, {String title = "Peringatan"}) {
//     show(context, title, message, ContentType.warning);
//   }

//   static void showInfo(BuildContext context, String message, {String title = "Info"}) {
//     show(context, title, message, ContentType.help);
//   }

//   static void show(BuildContext context, String title, String message, ContentType type) {
//     final snackBar = SnackBar(
//       elevation: 0,
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: Colors.transparent,
//       content: AwesomeSnackbarContent(
//         title: title,
//         message: message,
//         contentType: type,
//       ),
//     );

//     ScaffoldMessenger.of(context)
//       ..hideCurrentSnackBar()
//       ..showSnackBar(snackBar);
//   }
// }
