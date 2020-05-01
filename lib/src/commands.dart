/*
 * esc_pos_utils
 * Created by Andrey U.
 * 
 * Copyright (c) 2019-2020. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/cupertino.dart';

abstract class Commands {
  static const esc = '\x1B';
  static const gs = '\x1D';
  static const fs = '\x1C';

// Miscellaneous
  final String cInit; // Initialize printer
  final String cBeep; // Beeper [count] [duration]

// Mech. Control
  final String cCutFull; // Full cut
  final String cCutLongFull; // feed up and then Full cut
  final String cCutPart; // Partial cut
  final String cCutLongPart; // feed up and then Partial cut

// Character
  final String cReverseOn; // Turn white/black reverse print mode on
  final String cReverseOff; // Turn white/black reverse print mode off
  final String cSizeGSn; // Select character size [N]
  final String cSizeESCn; // Select character size [N]
  final String cUnderlineOff; // Turns off underline mode
  final String cUnderline1dot; // Turns on underline mode (1-dot thick)
  final String cUnderline2dots; // Turns on underline mode (2-dots thick)
  final String cBoldOn; // Turn emphasized mode on
  final String cBoldOff; // Turn emphasized mode off
  final String cFontA; // Font A
  final String cFontB; // Font B
  final String cTurn90On; // Turn 90° clockwise rotation mode on
  final String cTurn90Off; // Turn 90° clockwise rotation mode off
  final String cCodeTable; // Select character code table [N]
  final String cKanjiOn; // Select Kanji character mode
  final String cKanjiOff; // Cancel Kanji character mode

// Print Position
  final String cAlignLeft; // Left justification
  final String cAlignCenter; // Centered
  final String cAlignRight; // Right justification
  final String cPos; // Set absolute print position [nL] [nH]

// Print
  final String cFeedN; // Print and feed n lines [N]
  final String cReverseFeedN; // Print and reverse feed n lines [N]

// Bit Image
  final String cRasterImg; // Print image - raster bit format (graphics)
  final String
      cRasterImg2; // Print image - raster bit format (bitImageRaster) [obsolete]
  final String cBitImg; // Print image - column format

// Barcode
  final String cBarcodeSelectPos; // Select print position of HRI characters [N]
  final String cBarcodeSelectFont; // Select font for HRI characters [N]
  final String cBarcodeSetH; // Set barcode height [N]
  final String cBarcodeSetW; // Set barcode width [N]
  final String cBarcodePrint; // Print barcode

// Cash Drawer Open
  final String cCashDrawerPin2;
  final String cCashDrawerPin5;

// QR Code
  final String cQrHeader;

  Commands({
    @required this.cInit,
    @required this.cBeep,
    @required this.cCutFull,
    @required this.cCutLongFull,
    @required this.cCutPart,
    @required this.cCutLongPart,
    @required this.cReverseOn,
    @required this.cReverseOff,
    @required this.cSizeGSn,
    @required this.cSizeESCn,
    @required this.cUnderlineOff,
    @required this.cUnderline1dot,
    @required this.cUnderline2dots,
    @required this.cBoldOn,
    @required this.cBoldOff,
    @required this.cFontA,
    @required this.cFontB,
    @required this.cTurn90On,
    @required this.cTurn90Off,
    @required this.cCodeTable,
    @required this.cKanjiOn,
    @required this.cKanjiOff,
    @required this.cAlignLeft,
    @required this.cAlignCenter,
    @required this.cAlignRight,
    @required this.cPos,
    @required this.cFeedN,
    @required this.cReverseFeedN,
    @required this.cRasterImg,
    @required this.cRasterImg2,
    @required this.cBitImg,
    @required this.cBarcodeSelectPos,
    @required this.cBarcodeSelectFont,
    @required this.cBarcodeSetH,
    @required this.cBarcodeSetW,
    @required this.cBarcodePrint,
    @required this.cCashDrawerPin2,
    @required this.cCashDrawerPin5,
    @required this.cQrHeader,
  });
}
