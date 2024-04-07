import 'package:flutter/material.dart';

class ImageHelpers {
  Map<String, String> imageUrls = {
    // ToolTip : ImageUrl,
    'Mokou IS SHOOK!':
        'https://cdn.donmai.us/original/18/07/__fujiwara_no_mokou_touhou_drawn_by_jokanhiyou__1807f8da3fee5e694acc5a8f9e3c3267.jpg',
    'Whaat??':
        'https://cdn.donmai.us/original/4c/c6/__hakurei_reimu_touhou_drawn_by_takadoya__4cc6b3bd111cf7cb2f02a8313ae904a0.jpg',
    'hELLO ~!':
        'https://cdn.donmai.us/original/62/1a/__remilia_scarlet_touhou_drawn_by_ane__621a6bfe8440a109a2dce14062e4acc4.png',
    'eh ehe he ':
        'https://cdn.donmai.us/original/72/fa/__miyamae_kanako_maria_holic__72fa553ea8df62c352b83ff3f30df18e.gif',
    'lol':
        'https://cdn.donmai.us/sample/5e/46/__onozuka_komachi_touhou_drawn_by_ganmen2525__sample-5e46f5c8d95d827e39f4ae809f05fb65.jpg',
    'he is evolving':
        'https://cdn.donmai.us/sample/67/cc/__akuma_street_fighter_and_3_more_drawn_by_kaituburing__sample-67cc6d4d374893a57aefecb870132e6e.jpg',
    'power made flesh':
        'https://cdn.donmai.us/sample/85/a4/__akuma_street_fighter_and_1_more_drawn_by_caprara__sample-85a4862275ba55bfb55f267919c0d075.jpg'
  };

  List<Widget> imageListBuilder() {
    List<Widget> images = [];
    for (var imageInfo in imageUrls.entries) {
      images.add(_buildNetworkImage(imageInfo.key, imageInfo.value));
    }

    return images;
  }

  Widget _buildNetworkImage(String toolTipMessage, String imageUrl) {
    return Expanded(
      child: Tooltip(
        enableFeedback: true,
        preferBelow: true,
        message: toolTipMessage,
        child: Image.network(
          imageUrl,
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
