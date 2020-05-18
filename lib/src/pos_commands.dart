import 'package:esc_pos_utils/src/commands.dart';

class PosCommands extends Commands {
  PosCommands()
      : super(
          cInit: '${Commands.esc}@',
          cBeep: '${Commands.esc}B',
          // Beeper [count] [duration]

          /// Mech. Control
          cCutFull: '${Commands.gs}V0',
          // Full cut
          cCutPart: '${Commands.gs}V1',
          // Partial cut

          /// Character
          cReverseOn: '${Commands.gs}B\x01',
          // Turn white/black reverse print mode on
          cReverseOff: '${Commands.gs}B\x00',
          // Turn white/black reverse print mode off
          cSizeGSn: '${Commands.gs}!',
          // Select character size [N]
          cSizeESCn: '${Commands.esc}!',
          // Select character size [N]
          cUnderlineOff: '${Commands.esc}-\x00',
          // Turns off underline mode
          cUnderline1dot: '${Commands.esc}-\x01',
          // Turns on underline mode (1-dot thick)
          cUnderline2dots: '${Commands.esc}-\x02',
          // Turns on underline mode (2-dots thick)
          cBoldOn: '${Commands.esc}E\x01',
          // Turn emphasized mode on
          cBoldOff: '${Commands.esc}E\x00',
          // Turn emphasized mode off
          cFontA: '${Commands.esc}M\x00',
          // Font A
          cFontB: '${Commands.esc}M\x01',
          // Font B
          cTurn90On: '${Commands.esc}V\x01',
          // Turn 90° clockwise rotation mode on
          cTurn90Off: '${Commands.esc}V\x00',
          // Turn 90° clockwise rotation mode off
          cCodeTable: '${Commands.esc}t',
          // Select character code table [N]
          cKanjiOn: '${Commands.fs}&',
          // Select Kanji character mode
          cKanjiOff: '${Commands.fs}.',
          // Cancel Kanji character mode

          /// Print Position
          cAlignLeft: '${Commands.esc}a0',
          // Left justification
          cAlignCenter: '${Commands.esc}a1',
          // Centered
          cAlignRight: '${Commands.esc}a2',
          // Right justification
          cPos: '${Commands.esc}\$',
          // Set absolute print position [nL] [nH]

          /// Print
          cFeedN: '${Commands.esc}d',
          // Print and feed n lines [N]
          cReverseFeedN: '${Commands.esc}e',
          // Print and reverse feed n lines [N]

          /// Bit Image
          cRasterImg: '${Commands.gs}(L',
          // Print image - raster bit format (graphics)
          cRasterImg2: '${Commands.gs}v0',
          // Print image - raster bit format (bitImageRaster) [obsolete]
          cBitImg: '${Commands.esc}*',
          // Print image - column format

          /// Barcode
          cBarcodeSelectPos: '${Commands.gs}H',
          // Select print position of HRI characters [N]
          cBarcodeSelectFont: '${Commands.gs}f',
          // Select font for HRI characters [N]
          cBarcodeSetH: '${Commands.gs}h',
          // Set barcode height [N]
          cBarcodeSetW: '${Commands.gs}w',
          // Set barcode width [N]
          cBarcodePrint: '${Commands.gs}k',
          // Print barcode

          /// Cash Drawer Open
          cCashDrawerPin2: '${Commands.esc}p030',
          cCashDrawerPin5: '${Commands.esc}p130',

          /// QR Code
          cQrHeader: '${Commands.gs}(k',
        );
}
