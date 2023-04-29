import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      this.id,
      this.title,
      this.subtitle,
      this.body,
      this.author,
      this.authorImageUrl,
      this.category,
      this.imageUrl,
      this.views,
      this.createdAt);
  static List<Article> Articles = [
    Article(
        '1',
        'Where solar wind meets interstellar medium?',
        'A solar-cycle-length study reveals the detailed structure of the outer heliosphere. The boundary of our heliosphere is more dynamic and structured than previously known.',
        'The solar wind streaming out from our Sun carves a magnetic bubble from the interstellar plasma as we plough through it: this is our heliosphere (Fig. 1). The complex processes at the interface of this bubble shield the Solar System from the very high-energy cosmic rays that otherwise would have bombarded and affected the chemical evolution of the planetary atmospheres. Although of crucial importance for understanding the physics and habitability of our heliosphere, the structure and plasma processes of this interface region are difficult to study. In Nature Astronomy, Zirnstein et al.1 use data from the Interstellar Boundary Explorer to quantify the details of the shape of this interface.',
        'Robert DeMajistre',
        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        'Solar System',
        'https://www.sciencenews.org/wp-content/uploads/2023/02/020923_LG_quenched-galaxy_feat-1030x580.jpg',
        2153,
        DateTime.now().subtract(const Duration(hours: 20))),
    Article(
      '2',
      'The symphony of Jupiter',
      'Forty-year monitoring of Jupiter reveals long-term oscillations and teleconnections across the north–south hemispheres and upper–lower atmospheres. This discovery has important implications for the atmospheres of exoplanets and brown dwarfs.',
      'Order emerges from chaos. Like other complex systems, planetary atmospheres self-organize to exhibit quasi-steady, coherent behaviours on many spatial and temporal scales. The long-term oscillations that are not resonant with any external forcing appear to be the most puzzling but tantalizing. In the Earth’s atmosphere–ocean system, decadal modes such as the El Niño–Southern Oscillation and North Atlantic Oscillation are intimately linked together1. But multiple interactive atmospheric modes of long-term variability had not been detected on other planets before now. Writing in Nature Astronomy, Orton and colleagues2 present forty-year-long continuous infrared data of Jupiter since 1978 that reveal several long-term quasi-periodic variations.',
      'Xi Zhang',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Planetary science',
      'https://www.sciencenews.org/wp-content/uploads/2022/12/121722_Space_Artemis-launch-feat_rev-1030x580.jpg',
      984,
      DateTime.now().subtract(const Duration(hours: 12)),
    ),
    Article(
      '3',
      'A more sustainable future for astronomy',
      'More than 500 participants from around the globe registered for the first Astronomers for Planet Earth Symposium, to discuss and push for more sustainability in the field of astronomy as well as opportunities for astronomers to contribute to climate communication.',
      'The inaugural, fully virtual Astronomers for Planet Earth (A4E) Symposium took place from 28 November–2 December 2022, with 576 registrations from all over the world (Fig. 1). A4E was formed in 2019 by astronomers concerned about the impending climate crisis, and has since grown to a membership of more than 1,700 people from 75 countries. Given this wide membership, the symposium was designed to be accessible for all time zones by providing recorded talks in advance and two daily live discussion slots for all topics. Content from the symposium is available on the A4E YouTube channel. Live audiences of as many as 150 people, as well as over 4,000 views in total on recorded material, made the event a resounding success. This response from astronomers world-wide, as well as the growth of A4E in just a few years, clearly shows that sustainability is of key interest and concern to our community.',
      'Sarah M. Wagner',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Nature Astronomy',
      'https://www.sciencenews.org/wp-content/uploads/2023/02/021023_kc_star-formation_feat-1030x580.jpg',
      1479,
      DateTime.now().subtract(const Duration(hours: 16)),
    ),
    Article(
      '4',
      'Supermassive black hole movies in action',
      'The Event Horizon Telescope (EHT) is expanding to include a site (or two) in Africa. It first stunned us with an image of the black hole shadow of M87* in 2019 and then with Sgr A* three years later. ',
      'Incorporating the extra coverage and time window from these sites, the authors reproduced the plasma flow in the quiescent state of Sgr A* using general relativistic magnetohydrodynamic simulations (SANE model) under the same antenna and weather parameters of observations taken in 2017. To reproduce the flares, La Bella et al. used a simulated Gaussian flaring feature with the correct orbiting period to produce hotspot synthetic data. Movie reconstructions from these data were made using standard EHT dynamical imaging methods and compared with models of the accretion flow and jet. The inclusion of these two sites improves the resolution and better constrains the size of source.',
      'May Chiao',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Nature Astronomy',
      'https://www.sciencenews.org/wp-content/uploads/2023/02/020823_lg_Quaoar_feat-1030x580.jpg',
      823,
      DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      '5',
      'The epoch of galaxy quenching',
      'Over the last ten billion years, star formation in the Universe has been on the decline. Astronomers met at the University of Cambridge to discuss causes and themes of galaxy quenching.',
      'From cosmic noon to the present day, the Universe has seen a dramatic decrease in the typical star formation rates of galaxies; as we push to higher redshifts, beyond cosmic noon, star forming galaxies rule the show. Yet, in the local Universe we see a plethora of galaxy types, which have historically primarily been classified by galaxy colours, as ‘red and dead’, ‘blue and star-forming’, or in between in the ‘green valley’. The recent meeting, ‘The Epoch of Galaxy Quenching’, at the Kavli Institute of Cosmology, Cambridge, brought together observers and theorists to ask and answer the question: why, when and how do galaxies cease forming stars?',
      'Emma Curtis-Lake',
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'Nature Astronomy',
      'https://www.sciencenews.org/wp-content/uploads/2023/02/022123_lg_jwst-massive-early-galaxies_feat-1030x580.jpg',
      1235,
      DateTime.now().subtract(const Duration(hours: 13)),
    )
  ];
  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
