import 'dart:math';

class UsernameGenerator {
  String generateUsername() {
    var rng = Random();
    var adjective = adjectives[rng.nextInt(adjectives.length)];
    var object = objects[rng.nextInt(objects.length)];
    return '$adjective-$object';
  }

  List<String> adjectives = [
    'adaptable',
    'adventurous',
    'affectionate',
    'ambitious',
    'amiable',
    'amusing',
    'appreciative',
    'assertive',
    'attentive',
    'authentic',
    'benevolent',
    'blissful',
    'brave',
    'brilliant',
    'caring',
    'charismatic',
    'cheerful',
    'compassionate',
    'considerate',
    'courageous',
    'creative',
    'dazzling',
    'decisive',
    'delightful',
    'dependable',
    'diligent',
    'dynamic',
    'eager',
    'effervescent',
    'efficient',
    'empathetic',
    'enchanting',
    'energetic',
    'enthusiastic',
    'exuberant',
    'fair',
    'fearless',
    'friendly',
    'generous',
    'gentle',
    'genuine',
    'gracious',
    'happy',
    'harmonious',
    'helpful',
    'honest',
    'imaginative',
    'ingenious',
    'inspiring',
    'intelligent',
    'intuitive',
    'joyful',
    'jubilant',
    'kind',
    'knowledgeable',
    'lively',
    'loving',
    'loyal',
    'magnanimous',
    'mindful',
    'modest',
    'nurturing',
    'optimistic',
    'passionate',
    'patient',
    'perceptive',
    'persistent',
    'playful',
    'positive',
    'proactive',
    'radiant',
    'reliable',
    'resilient',
    'resourceful',
    'respectful',
    'sincere',
    'skillful',
    'spirited',
    'steadfast',
    'supportive',
    'sympathetic',
    'thoughtful',
    'tranquil',
    'trustworthy',
    'understanding',
    'unique',
    'upbeat',
    'vibrant',
    'virtuous',
    'warmhearted',
    'wise',
    'witty',
    'wonderful',
    'youthful',
    'zealous',
    'zestful',
    'zippy',
    'agreeable',
    'capable',
    'grateful',
  ];

  List<String> objects = [
    'chair',
    'ball',
    'stone',
    'mountain',
    'sun',
    'star',
    'frog',
    'dog',
    'flower',
    'book',
    'cloud',
    'tree',
    'ocean',
    'river',
    'island',
    'cake',
    'rainbow',
    'butterfly',
    'rain',
    'guitar',
    'painting',
    'bridge',
    'bicycle',
    'beach',
    'candle',
    'key',
    'song',
    'phone',
    'watch',
    'hat',
    'shoe',
    'ship',
    'plane',
    'moon',
    'couch',
    'mirror',
    'globe',
    'camera',
    'mirror',
    'pillow',
    'cookie',
    'garden',
    'guitar',
    'door',
    'kite',
    'kitten',
    'puzzle',
    'breeze',
    'starfish',
    'giraffe',
    'balloon',
    'swing',
    'mailbox',
    'lighthouse',
    'breeze',
    'gazelle',
    'carousel',
    'piano',
    'beetle',
    'bracelet',
    'comet',
    'comics',
    'cupcake',
    'donut',
    'easel',
    'fireplace',
    'feather',
    'frisbee',
    'gazelle',
    'harmony',
    'horizon',
    'iceberg',
    'jigsaw',
    'kangaroo',
    'lagoon',
    'lemur',
    'lighthouse',
    'mango',
    'mermaid',
    'muffin',
    'napkin',
    'nest',
    'octopus',
    'opal',
    'orchid',
    'palette',
    'parade',
    'parrot',
    'pebble',
    'pendulum',
    'penguin',
    'petal',
    'quasar',
    'quilt',
    'quiver',
    'radiance',
    'raindrop',
    'ripple',
    'sapphire',
    'serenity',
    'silhouette',
    'sunset',
    'teacup',
    'trampoline',
  ];
}