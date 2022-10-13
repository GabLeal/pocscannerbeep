import 'package:flutter/material.dart';
import 'package:pocscanner/qr_code_provider/scan_qr_code.dart';

class QrScannerProvider {
  /// return url referring to the scanned QRcode
  static Future<String?> openScannerQRcode(BuildContext context) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ScanQrCode(),
      ),
    );

    return result;
  }
}
