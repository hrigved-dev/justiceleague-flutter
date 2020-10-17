import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;

  Character({@required this.name, @required this.imagePath, @required this.description, @required this.colors});
}

List characters = [
  Character(
    name: "Aquaman",
    imagePath: "assets/images/aquaman1.png",
    description: "The son of a lighthouse keeper and an Atlantean queen, Arthur Curry is the bridge between the surface world and his tumultuous realm of the sea. Monarch of the undersea realm of Atlantis and King of the Seven Seas, Aquaman is one of the most powerful DC Super Heroes—commanding a kingdom that covers three-quarters of the Earth’s surface, including all the creatures contained within. Arthur Curry came from humble beginnings, as most of his life was spent exiled from his home, unaware of his noble origins. When he finally took the throne as an adult, he became the most legendary king in Atlantean history.A founding member of the Justice League of America, Aquaman has fought alongside Superman, Batman and Wonder Woman and held his own against the biggest threats the universe has ever seen. Despite being misunderstood by many as someone who merely “talks to fish,” Aquaman’s super-strength and fighting prowess alone make him a force to be reckoned with. His telepathic abilities make him one of the most powerful minds on the planet. If one chooses to underestimate the sea king, they do so at their own peril.",
    colors: [Colors.lightGreenAccent, Colors.green.shade900],
  ),

  Character(
    name: "Batman",
    imagePath: "assets/images/batman1.png",
    description: "In the name of his murdered parents, Bruce Wayne wages eternal war on the criminals of Gotham City. He is vengeance. He is the night. He is Batman. One of the most iconic fictional characters in the world, Batman has dedicated his life to an endless crusade, a war on all criminals in the name of his murdered parents, who were taken from him when he was just a child. Since that tragic night, he has trained his body and mind to near physical perfection to be a self-made Super Hero. He's developed an arsenal of technology that would put most armies to shame. And he's assembled teams of his fellow DC Super Heroes, like the Justice League, the Outsiders and Batman, Incorporated. A playboy billionaire by day, Bruce Wayne’s double life affords him the comfort of a life without financial worry, a loyal butler-turned-guardian and the perfect base of operations in the ancient network of caves beneath his family’s sprawling estate. By night, however, he sheds all pretense, dons his iconic scalloped cape and pointed cowl and takes to the shadowy streets, skies and rooftops of Gotham City.",
    colors: [Colors.orange.shade300, Colors.orange],
  ),


  Character(
    name: "Cyborg",
    imagePath: "assets/images/cyborg2.png",
    description: "Part man, part machine, Vic Stone is a former member of the Teen Titans and a current member of the Justice League who wrestles to preserve his humanity with every new upgrade. Although he always exhibited a genius level intellect, young Victor Stone didn’t want a life dedicated to science and research like his parents. Instead, Vic dreamed of being a football player, and devoted all of his time to becoming a star athlete while he was still in high school. But a tragic twist of fate that should have left him dead instead found him becoming part man and part machine—a Cyborg. Saved by his scientist father after an accident left very little of Victor’s body intact, Dr. Silas Stone used all of his advanced scientific knowledge to save his only child’s life, and to rebuild him into a superior being, one that was arguably now more machine than man. As a cyborg, Vic was now far stronger than the average person,  could interface with computers, and emit various types of energy that made him a formidable fighter. Although he ultimately chose the path of the superhero, Victor never fully acclimated to being only partially human. He always carried a sadness within him as he mourns for the normal life he never had. One of the planet’s greatest heroes, Cyborg nevertheless puts all of his internal struggles aside when the time comes to save innocent lives and protect the Earth. Because of his ability to interface with computer systems, perhaps there is no hero more fitting for this modern, digital age.",
    colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
  ),

  Character(
    name: "Flash",
    imagePath: "assets/images/flash2.png",
    description: "Three men have held the title of The Fastest Man Alive —Jay Garrick, Barry Allen and Wally West. Each of them redefined the word hero.The mysterious power known as the Speed Force is an energy field that has, over the centuries, granted incredible powers of velocity to certain heroes. The most famous of these is the Flash, also known as the Fastest Man Alive. Ever since the days of World War II, there has been a man clad in red who can run at impossible speeds, using his power to save lives and defend those who cannot defend themselves. All between the ticks of a second. In the 1940s, college student Jay Garrick acquired his super-speed abilities in a random lab accident and became the first DC Super Hero to go by the name the Flash. Years later, Jay was succeeded by police scientist Barry Allen, until Barry’s former kid partner Wally West took up the mantle at a time when Barry was considered dead. But, when Barry returned, he became the Flash once again. All three generations of speedsters have been cornerstone members of both the Justice Society and Justice League. The Flash has mastery over not just speed, but time itself, and he has often used his powers to travel though different eras and even into other dimensions. Although the Flash has not always been fast enough to outrun personal tragedy when it has come for him, he always does his best to prevent the same from happening to the people of Central City and Keystone City. In so doing, he's earned himself a spot among the greatest Super Heroes the DC Universe has ever known.",
    colors: [Colors.yellow, Colors.red.shade700],
  ),

  Character(
    name: "Wonder Woman",
    imagePath: "assets/images/wonderwoman.png",
    description: "Beautiful as Aphrodite, wise as Athena, swifter than Hermes, and stronger than Hercules, Princess Diana of Themyscira fights for peace in Man's World. One of the most beloved and iconic DC Super Heroes of all time, Wonder Woman has stood for nearly eighty years as a symbol of truth, justice and equality to people everywhere. Raised on the hidden island of Themyscira, also known as Paradise Island, Diana is an Amazon, like the figures of Greek legend, and her people's gift to humanity. As Themyscira's emissary to Man's World, Diana has made it her duty to lead by example, even if the differences between her birthplace and new home sometimes present hurdles for her to jump. She has come to represent the possibility and potential of life without war, hate or violence, and she is a beacon of hope to all who find themselves in need. She stands as an equal among the most powerful Super Heroes, with a sense of purpose to protect the world from injustice in all forms. Diana's job, however, is anything but easy. Constantly torn between her mission to promote peace and her need to fight back against the pervasive violence of her new home, Diana struggles to walk a line between her warrior strength and endless compassion each and every day.",
    colors: [Colors.lightBlueAccent, Colors.blue.shade900],
  ),
];