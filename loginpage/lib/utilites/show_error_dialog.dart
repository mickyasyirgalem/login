import 'package:flutter/material.dart';

import 'dialog.dart';

Future<bool> showImagePicker(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Image picker',
    content: 'Choose from which source you want to upload',
    optionBuilder: () => {
      'from camera': false,
      'from gallery': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
