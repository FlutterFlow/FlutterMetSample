import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

final random = Random();

int get dummyInteger => random.nextInt(10);
double get dummyDouble => random.nextDouble() * 10;
bool get dummyBoolean => random.nextBool();
String get dummyString => [
      'Lorem ipsum',
      'dolor sit',
      'amet consectetur',
      'adipiscing elit'
    ][random.nextInt(4)];
String get dummyImagePath =>
    "https://picsum.photos/seed/${random.nextInt(1000)}/400";
String get dummyVideoPath => 'https://assets.mixkit.co/videos/preview/'
    'mixkit-forest-stream-in-the-sunlight-529-large.mp4';
Timestamp get dummyTimestamp => Timestamp.fromMillisecondsSinceEpoch(
    1612302574000 - (random.nextDouble() * 8000000000).round());
