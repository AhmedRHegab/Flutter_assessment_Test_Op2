import 'package:flutter/material.dart';

List<Widget> buildTextChunks(String text, int chunkSize) {
  List<Widget> chunks = [];
  int startIndex = 0;

  while (startIndex < text.length) {
    final endIndex = (startIndex + chunkSize < text.length)
        ? startIndex + chunkSize
        : text.length;
    final substring = text.substring(startIndex, endIndex);

    chunks.add(
      Text(
        substring,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );

    chunks.add(
      const SizedBox(height: 2),
    );

    startIndex += chunkSize;
  }

  return chunks;
}
