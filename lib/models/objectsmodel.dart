//import 'package:equatable/equatable.dart';

class Object {
  final String Id;
  final String Name;
  final String Title;
  final String Subtitle;
  final String Body;
  final String Category;
  final String ImageUrl;
  final String InfoUrl;

  const Object(
    this.Id,
    this.Name,
    this.Title,
    this.Subtitle,
    this.Body,
    this.Category,
    this.ImageUrl,
    this.InfoUrl,
  );
  static List<Object> objects = [
    const Object(
      '1',
      'Moon',
      'the brightest object in our night sky',
      "The only place beyond Earth where humans have set foot, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. ",
      "With a radius of about 1,080 miles (1,740 kilometers), the Moon is less than a third of the width of Earth. If Earth were the size of a nickel, the Moon would be about as big as a coffee bean.n/The Moon is an average of 238,855 miles (384,400 kilometers) away.n/ That means 30 Earth-sized planets could fit in between Earth and the Moon.The Moon is slowly moving away from Earth, getting about an inch farther away each year.",
      'moon',
      'https://m.media-amazon.com/images/I/8180BPagkML._AC_SL1200_.jpg',
      "https://solarsystem.nasa.gov/moons/earths-moon/in-depth/",
    ),
    const Object(
      '2',
      'Mercury',
      "The smallest planet in our solar system and nearest to the Sun.",
      "From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere.",
      "Mercury spins slowly on its axis and completes one rotation every 59 Earth days. But when Mercury is moving fastest in its elliptical orbit around the Sun (and it is closest to the Sun), each rotation is not accompanied by sunrise and sunset like it is on most other planets. The morning Sun appears to rise briefly, set, and rise again from some parts of the planet's surface. The same thing happens in reverse at sunset for other parts of the surface. One Mercury solar day (one full day-night cycle) equals 176 Earth days – just over two years on Mercury.",
      "planet",
      "https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1440,f_auto/AW_Mercury_ladprw.jpg",
      "https://solarsystem.nasa.gov/planets/mercury/in-depth/",
    ),
    const Object(
      "3",
      "Venus",
      "Venus is the second planet from the Sun and is Earth’s closest planetary neighbor.",
      "It’s one of the four inner, terrestrial (or rocky) planets, and it’s often called Earth’s twin because it’s similar in size and density. These are not identical twins, however – there are radical differences between the two worlds.",
      "Venus has a thick, toxic atmosphere filled with carbon dioxide and it’s perpetually shrouded in thick, yellowish clouds of sulfuric acid that trap heat, causing a runaway greenhouse effect. It’s the hottest planet in our solar system, even though Mercury is closer to the Sun. Surface temperatures on Venus are about 900 degrees Fahrenheit (475 degrees Celsius) – hot enough to melt lead. The surface is a rusty color and it’s peppered with intensely crunched mountains and thousands of large volcanoes. Scientists think it’s possible some volcanoes are still active.",
      "planet",
      "https://image.pngaaa.com/55/2055-middle.png",
      "https://solarsystem.nasa.gov/planets/venus/in-depth/",
    ),
    const Object(
      "4",
      "Mars",
      "Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. ",
      "Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.",
      "Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.",
      "planet",
      "https://www.pngkit.com/png/full/1-19647_planet-mars-cut-out.png",
      "https://solarsystem.nasa.gov/planets/mars/in-depth/",
    ),
    const Object(
      "5",
      "Jupiter",
      "The largest planet in the solar system",
      "Jupiter has a long history of surprising scientists – all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe.",
      "Jupiter's four largest moons – Io, Europa, Ganymede, and Callisto – were first observed by the astronomer Galileo Galilei in 1610 using an early version of the telescope. These four moons are known today as the Galilean satellites, and they're some of the most fascinating destinations in our solar system. Io is the most volcanically active body in the solar system. Ganymede is the largest moon in the solar system (even bigger than the planet Mercury). Callisto’s very few small craters indicate a small degree of current surface activity. A liquid-water ocean with the ingredients for life may lie beneath the frozen crust of Europa, making it a tempting place to explore.",
      "planet",
      "https://i0.wp.com/kidsofthewild.co.uk/wp-content/uploads/2017/01/planet-jupiter-from-the-juno-space-probe-showing-blue-atmosphere-at-the-pole-and-red-storm.jpg?fit=1200%2C1196&ssl=1",
      "https://solarsystem.nasa.gov/planets/jupiter/in-depth/",
    ),
    const Object(
      "6",
      "Saturn",
      "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system.",
      "Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings – made of chunks of ice and rock – but none are as spectacular or as complicated as Saturn's.",
      "Saturn is home to a vast array of intriguing and unique worlds. From the haze-shrouded surface of Titan to crater-riddled Phoebe, each of Saturn's moons tells another piece of the story surrounding the Saturn system. Saturn has 83 moons. Sixty-three moons are confirmed and named, and another 20 moons are awaiting confirmation of discovery and official naming by the International Astronomical Union (IAU).",
      "planet",
      "https://www.pngkit.com/png/full/1-19647_planet-mars-cut-out.png",
      "https://solarsystem.nasa.gov/planets/saturn/in-depth/",
    )
  ];
}
