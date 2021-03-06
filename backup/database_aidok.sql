-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2021 pada 12.20
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_aidok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kategori_artikel` varchar(100) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `konten_artikel` text NOT NULL,
  `sumber_artikel` varchar(200) NOT NULL,
  `gambar_artikel` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kategori_artikel`, `judul_artikel`, `konten_artikel`, `sumber_artikel`, `gambar_artikel`) VALUES
(4, 'Vitamin, Obat, Manfaat', 'MANFAAT VITAMIN A BAGI TUBUH', 'Vitamin A atau retinol atau asam retinoik merupakan nutrisi yang penting untuk organ penglihatan, pertumbuhan tubuh, pembelahan sel, kesehatan sistem reproduksi dan menunjang sistem kekebalan tubuh. Vitamin A dapat\r\ndibedakan menjadi dua jenis berdasarkan asalnya, yaitu:\r\n\r\nRetinoid merupakan vitamin A yang berasal dari produk hewani beta karoten merupakan vitamin A yang berasal dari tumbuhan Vitamin A juga memiliki sifat antioksidan. Antioksidan merupakan zat yang dapat melindungi sel terhadap efek radikal bebas. Radikal bebas memiliki kemungkinan dapat memicu terjadinya penyakit jantung, kanker dan penyakit lain. The American Heart Association merekomendasikan untuk mendapatkan antioksidan seperti beta karoten adalah dengan mengkonsumsi makanan seperti buah-buahan, sayuran, dan biji-bijian.\r\nSuplemen vitamin A dapat bermanfaat bagi orang yang memiliki pola makan buruk atau terbatas atau yang membutuhkan asupan tinggi vitamin A seperti pada penyakit pancreas, penyakit mata, atau campak. Jumlah kebutuhan harian vitamin A pada tubuh adalah 900mcg pada pria dewasa dan 700mcg untuk wanita dewasa.\r\n\r\nApakah fungsi vitamin A bagi kesehatan?\r\nBeberapa penelitian menunjukkan bahwa vitamin A yang dikonsumsi oral dapat bermanfaat bagi kesehatan. Menjaga Kesehatan Mata Vitamin A merupakan bagian penting dari molekul rhodopsin yang diaktifkan ketika cahaya bersinar pada retina. Sedangkan beta karoten pada vitamin A berperan dalam mencegah degenerasi makula yang merupakan penyebab utama kebutaan karena usia. Meningkatkan Daya Tahan Tubuh Beberapa fungsi sistem kekebalan tubuh bergantung pada asupan vitamin A. Beberapa gen yang terlibat dalam respon sistem kekebalan diatur oleh vitamin A, sehingga vitamin A memiliki peran penting untuk melawan kondisi serius seperti kanker, penyakit autoimun atau juga penyakit seperti flu. Beta karoten juga merupakan antioksidan kuat yang dapat membantu meningkatkan sistem kekebalan tubuh dan mencegah berbagai penyakit kronis. Pada suatu penelitian menemukan bahwa kekurangan vitamin A pada anak dapat meningkatkan resiko infeksi seperti diare dan campak.\r\n\r\nMengatasi peradangan Vitamin A memiliki sifat antioksidan yang dapat menetralisir radikal bebas dalam tubuh yang menjadi pemicu kerusakan jaringan dan sel. Konsumsi vitamin A juga dapat membantu menurunkan resiko terjadinya alergi pada makanan tertentu. Menunjang kesehatan kulit dan pertumbuhan sel Vitamin A diperlukan untuk penyembuhan luka dan pertumbuhan kembali kulit. Kekurangan vitamin A dapat menyebabkan kulit menjadi tidak sehat. Pada penelitian menunjukkan bahwa vitamin A dapat mengatasi jerawat dan meningkatkan kesehatan kulit secara keseluruhan. Vitamin A dapat mengatasi gari dan kerutan pada kulit dan membantu memproduksi kolagen lebih banyak. Vitamin A juga diketahui dapat membantu menjaga kesehatan rambut.\r\n\r\nMembantu mencegah kanker Asupan vitamin A dapat membantu mengobati beberapa bentuk kanker karena mampu mengendalikan sel-sel ganas dalam tubuh. Sumber Vitamin A pada Makanan Terdapat beberapa makanan yang mengandung tinggi vitamin A, seperti:\r\n\r\nHati sapi, Wortel, Ubi, Kubis, Bayam, Brokol, Telur, Ikan tuna, Mangga, Labu\r\n', 'https://vivahealth.co.id/article/detail/12319/manfaat-vitamin-a-bagi-tubuh', 'health.png'),
(5, 'Penyakit, Tubuh, Kesehatan', 'Banyak Kondisi Buruk Menanti Anda Karena Efek Begadang', 'Sejauh ini belum ada informasi tentang efek begadang yang baik bagi kesehatan. Namun sebaliknya, kondisi kurang tidur, sebagai salah satu efek buruk dari begadang, dapat membuat kondisi fisik dan mental menjadi lebih buruk. Hal ini berkaitan dengan manfaat tidur untuk tubuh manusia.\r\n\r\nJam tidur yang dibutuhkan setiap orang berbeda tergantung usianya, orang dewasa dikatakan telah mendapat tidur yang cukup jika jam tidurnya selama 7 ??? 9 jam per hari, sedangkan anak-anak perlu tidur selama 10 ??? 13 jam setiap hari. Jika sulit menjalani tidur malam selama itu, Anda bisa mencoba tidur bifasik.\r\n\r\nPada saat manusia tidur, tubuh memperbaiki kondisi fisik dan mental. Khususnya pada usia remaja, tidur adalah saat di mana tubuh melepas hormon pertumbuhan. Hormon inilah yang akan membangun massa otot serta memperbaiki jaringan tubuh yang rusak.\r\n\r\nEfek Begadang yang Buruk Bagi Kesehatan\r\nSelain mengantuk berlebihan dan sering menguap, kurang tidur akibat begadang akan berpengaruh kepada kondisi emosi, kemampuan kognitif, dan fungsi otak. Efek begadang bagi kesehatan juga termasuk meningkatkan risiko penyakit, seperti diabetes, obesitas, tekanan darah tinggi, kanker, dan penyakit jantung.\r\n\r\nSelain hal-hal yang sudah disebutkan di atas, ternyata masih banyak risiko-risiko yang menyertai kebiasaan buruk seseorang untuk begadang. Mari kita telaah satu-persatu efek begadang berikut ini:\r\n\r\nMenambah berat badan\r\nPenelitian menunjukkan, orang yang kurang tidur cenderung lebih banyak makan camilan berkalori tinggi di malam hari. Selain itu, mereka juga cenderung mengonsumsi makanan berkarbohidrat tinggi dengan porsi lebih besar. Studi lain membuktikan bahwa orang yang tidur kurang dari tujuh jam sehari cenderung mengalami kenaikan berat badan ditambah peningkatan risiko obesitas dibandingkan orang yang jam tidurnya tercukupi.\r\nKurang tidur ada kaitannya dengan peningkatan nafsu makan dan bertambahnya rasa lapar. Bagi Anda yang berencana menurunkan berat badan, tentu saja begadang bukan cara yang baik untuk mewujudkannya.\r\nKulit tampak lebih tua\r\nBerkebalikan dengan hormon pertumbuhan yang dilepas dalam jumlah lebih sedikit ketika begadang, kurang tidur membuat hormon kortisol (hormon stres) dilepaskan dalam jumlah yang lebih banyak. Hormon ini bersifat memecah kolagen pada kulit, padahal kolagen adalah protein yang membuat kulit lebih kencang dan elastis.\r\nKurang tidur akibat begadang juga dapat menyebabkan mata bengkak dan kulit menjadi pucat dan kusam. Kebiasaan begadang secara berkepanjangan akan menimbulkan efek kurang tidur kronis. Akibatnya, timbul garis-garis penuaan halus di wajah dan menjadikan kulit terlihat kusam.\r\nPernah mendengar istilah mata panda? Mata panda adalah lingkaran gelap di sekitar mata yang muncul akibat pelebaran pembuluh darah di balik kulit mata yang tipis. Kondisi kurang tidur adalah penyebab utama terjadinya mata panda.\r\nPelupa\r\nKetika tidur, otak akan mengalami proses regenerasi sel yang berguna untuk memperkuat ingatan. Proses ini juga akan memindahkan ingatan dan memori ke bagian otak yang berfungsi sebagai tempat penyimpanan memori jangka panjang.\r\nBergadang akan menghambat semua proses ini dan meningkatkan rasa mengantuk, sehingga Anda menjadi pelupa dan sulit berkonsentrasi. Agar tidak mudah lupa, sekaligus untuk meningkatkan kemampuan mengingat, hentikan kebiasaan begadang. Terutama bagi Anda yang disibukkan dengan aktivitas bersekolah dan bekerja.\r\nMenurunkan kemampuan berpikir\r\nEfek begadang dapat mengurangi daya nalar, kemampuan memecahkan masalah, dan konsentrasi. Kemampuan memperhatikan sesuatu serta tingkat kewaspadaan juga akan mengalami penurunan. Kesulitan fokus dapat berakibat pada kecelakaan saat berkendara atau bekerja.\r\nMenurunkan libido\r\nLibido yang menurun adalah salah satu efek begadang. Ketika kurang tidur, tubuh menjadi kelelahan, mengantuk, energi berkurang, meningkatkan ketegangan, dan pada akhirnya menjadi kurang berminat kepada seks.\r\nDepresi\r\nBegadang berarti memotong jam tidur Anda di malam hari. Kebanyakan orang yang didiagnosis mengalami depresi dan kecemasan adalah mereka yang tidur kurang dari enam jam di malam hari. Tidak hanya kebiasaan begadang, gangguan tidur pun dapat mengarah kepada insomnia yang sangat berkaitan dengan kondisi depresi.\r\nRisiko kanker\r\nTernyata efek begadang juga berkaitan dengan peningkatan risiko terkena kanker. Penelitian menunjukkan bahwa mereka yang memiliki kebiasaan kurang tidur, atau sering bekerja shift di malam hari, memiliki risiko terkena kanker yang tinggi. Belum diketahui pasti apa efek begadang terhadap kemunculan kanker, namun diduga berkaitan dengan stres dan kerusakan sel tubuh.\r\nMeningkatkan risiko kematian\r\nSebuah studi menyatakan bahwa tidur yang hanya berdurasi lima jam, dapat meningkatkan risiko kematian sebesar 12 persen. Peningkatan risiko ini berlaku untuk semua penyebab kematian, terutama kematian yang disebabkan penyakit jantung dan pembuluh darah.\r\nSetelah mengetahui bahwa efek begadang tidak ada yang baik bagi tubuh, kini saatnya Anda berpikir lagi sebelum memutuskan untuk begadang. Usahakan untuk memenuhi kebutuhan tidur minimal tujuh jam setiap harinya. Jika terdapat gangguan tidur yang membuat kualitas atau jam tidur berkurang, Anda dapat berkonsultasi ke dokter untuk mendapatkan pengobatan lebih lanjut.', 'https://www.alodokter.com/banyak-kondisi-buruk-menanti-anda-karena-efek-begadang', 'health.png'),
(6, 'Penyakit, Kesehatan', '5 Penyakit Umum yang Sering Dialami Balita', 'Selama usia bayi hingga prasekolah, umumnya anak akan mengalami 6-8 kali sakit per tahun. Berikut adalaha 5 penyakit umum yang sering dialami balita dan cara menanganinya.\r\n\r\nKondisi kesehatan balita bisa terjadi karena antibodi yang si Kecil dapatkan dari Ibu selama kehamilan hanya bertahan selama 6-12 bulan pertama. Akibatnya, sistem imunnya yang belum matang menyebabkan ia rentan sakit. \r\n\r\nSistem imun yang matang baru tercapai saat usia anak 5 tahun. Selain itu, lingkungan juga memperbesar kemungkinan anak sakit, seperti asap rokok dan paparan kuman di tempat penitipan anak atau sekolah. Terdapat 5 kondisi sakit yang sering dialami anak, yaitu:\r\n\r\nInfeksi Saluran Napas Atas (ISPA)\r\n\r\nKondisi ini biasanya disertai dengan gejala berupa pilek, batuk dan demam. Demam pada ISPA bisa mencapai 39-40oC dan sering membuat ibu merasa khawatir. Umumnya ISPA disebabkan oleh virus, sehingga si kecil akan sembuh dengan sendirinya selama 7-10 hari. Pengobatan ISPA biasanya berupa obat-obatan untuk meringankan gejala dan tidak memerlukan antibiotik.\r\n\r\nYang perlu ibu lakukan bila si kecil mengalami ISPA antara lain mengompres jika demam, memberikan obat penurun panas, obat batuk-pilek, memberikan minuman lebih banyak dari biasa, dan memperhatikan perjalanan gejala si kecil. Jika gejala semakin berat, seperti sesak napas berat, napas cepat, batuk disertai darah, dan demam yang disertai kejang, sebaiknya segera bawa si kecil ke dokter. \r\n\r\nIbu juga perlu mengajarkan si Kecil untuk menutup hidung saat bersin dan menutup mulut saat batuk agar anggota keluarga lain tidak tertular.\r\n\r\nBintik Merah pada Kulit\r\n\r\nUmumnya bintik merah yang muncul di kulit anak disebabkan oleh penyakit yang cukup beragam namun tidak berbahaya. Bintik merah dapat menjadi tanda penyakit yang disebabkan virus, bakteri, parasit, reaksi alergi, atau gangguan pembuluh darah. \r\n\r\nNamun terdapat 3 kondisi yang paling sering terjadi dengan tanda bintik merah, yaitu infeksi virus yang tidak spesifik, campak, dan cacar. Infeksi virus yang tidak spesifik (viral exanthema) seringkali menimbulkan gejala bintik merah pada tubuh, lengan, dan tungkai tanpa bentuk yang spesifik. Tidak ada gejala khas pada infeksi ini, namun anak dapat mengalami demam, menggigil, batuk, pilek, gelisah, dan sulit makan.\r\n\r\nLain halnya pada campak, bintik merah umumnya timbul pertama kali di bagian wajah atau belakang telinga dan menyebar ke bawah. Campak seringkali disertai pilek, nyeri tenggorok, dan mata merah. Bintik merah pada cacar berbeda dengan bintik pada campak. Pada cacar, bintik merah akan menyerupai jerawat yang berisi cairan dan terasa gatal. \r\n\r\nBintik merah karena penyakit-peyakit tersebut umumnya tidak berbahaya dan akan menghilang dalam 7 hari. Ibu bisa memberikan obat penurun panas jika si kecil demam dan obat oles pereda gatal jika anak terus menerus menggaruk kulit. Sebaiknya ibu tetap membawa anak ke dokter untuk diperiksa lebih lanjut dan menyingkirkan kemungkinan penyakit lain serta mendapatkan pengobatan yang sesuai.', 'https://www.nutriclub.co.id/kategori/balita/kesehatan/5-penyakit-umum-yang-sering-dialami-balita/', 'health.png'),
(7, 'Obat', '10 Jenis Tanaman Obat-obatan yang Wajib Ada di Rumah Anda', 'Sebelum menggunakan obat dokter, nyatanya sudah banyak orang Indonesia yang lebih dulu mencoba melakukan pengobatan menggunakan obat herbal. Tanaman obat-obatan tersebut memiliki ribuan jenis spesies.\r\n\r\nDari total sekitar 40 ribu jenis obat tradisional yang telah dikenal di dunia, 30 ribunya diyakini berada di Indonesia. Meski demikian, ternyata hanya ada sekitar 9 ribu spesies obat herbal yang diduga memiliki manfaat bagi kesehatan.\r\n\r\nLantas, apa saja tanaman obat-obatan yang bisa ditanam sendiri di rumah dan memiliki khasiat yang baik bagi kesehatan?\r\n\r\nApa itu tanaman obat?\r\nSesuai dengan namanya, tanaman obat adalah jenis tanaman yang sebagian atau seluruh isi tanaman tersebut, seperti daun, batang, buah, umbi (rimpang), hingga akar digunakan sebagai obat, bahan, atau ramuan obat-obatan.\r\n\r\nBadan Kesehatan Dunia (WHO) sendiri mendefinisikan obat herbal atau medicinal plants sebagai tanaman yang digunakan dengan tujuan pengobatan dan merupakan bahan asli dalam pembuatan obat herbal.\r\n\r\nKecenderungan masyarakat untuk mengonsumsi obat tradisional tentu tak terlepas dari gaya hidup back to nature. Akibatnya, masyarakat mulai beralih menggunakan bahan-bahan alami untuk meminimalisir efek samping obat-obatan medis dari dokter.\r\n\r\nApa saja manfaat tanaman obat bagi kesehatan?\r\nManfaat tanaman obat bisa berasal dari akar, batang, hingga daunnya. Tak ayal apabila dari satu jenis obat herbal saja sudah dapat memiliki khasiat yang berbeda-beda dalam mengobati berbagai macam penyakit.\r\n\r\nMenurut Kementerian Kesehatan Republik Indonesia, ada beberapa bagian dari tanaman obat yang dapat digunakan untuk keperluan yang berbeda-beda, di antaranya:\r\n\r\nTanaman atau bagian tanaman yang digunakan sebagai bahan obat herbal atau jamu.\r\nTanaman atau bagian tanaman yang digunakan sebagai bahan utama bahan baku obat.\r\nTanaman atau bagian tanaman yang diekstraksi dan ekstrak tanaman tersebut digunakan sebagai obat.\r\nObat herbal memiliki berbagai efek pada sistem metabolisme tubuh manusia. Mulai dari memberikan efek analgesik, antioksidan, hingga antiradang.\r\n\r\nTak heran apabila banyak masyarakat Indonesia yang menggunakan obat tradisional sebagai cara mengobati beberapa masalah kesehatan, seperti demam, batuk, pilek, flu, sakit kepala, sakit perut, gangguan pencernaan, masalah kulit, hingga insomnia.\r\n\r\nTanaman obat-obatan juga dapat dikembangkan dan diolah untuk berbagai macam kebutuhan, seperti industri makanan atau minuman, sebagai bahan pembuatan kosmetik, serta digunakan dalam industri spa tradisional.\r\n\r\nJenis tanaman obat yang populer di Indonesia dan bisa ditanam sendiri di rumah\r\nBerdasarkan Undang-undang Nomor 13 tahun 2010 mengenai hortikultura, tanaman obat termasuk dalam kelompok tanaman hortikultura, yaitu tanaman yang menghasilkan buah, sayuran, bahan obat nabati, florikultura, dan bahan estetika.\r\n\r\nKementerian Pertanian Republik Indonesia menyatakan bahwa ada 15 jenis tanaman obat-obatan yang dibudidayakan di Indonesia. Kelima belas jenis tanaman obat tersebut adalah\r\n\r\nJahe\r\nLengkuas (laos)\r\nKencur\r\nKunyit\r\nLempuyang\r\nTemulawak\r\nTemuireng\r\nTemukunci\r\nDlingo atau dringo\r\nKapulaga\r\nMengkudu\r\nMahkota dewa\r\nKejibeling\r\nSambiloto\r\nLidah buaya', 'https://www.sehatq.com/artikel/jenis-tanaman-obat-obatan-yang-wajib-ada-di-rumah-anda', 'health.png'),
(8, 'Kesehatan, Manfaat, Tubuh', '8 Manfaat Lidah Buaya bagi Kesehatan, Jadi Bahan untuk Cuci Tangan', 'Merdeka.com - Pemanfaatan lidah buaya tidak hanya sebatas menjadi tanaman hias di rumah. Lidah buaya juga sering dimanfaatkan sebagai obat dari bahan alami ataupun untuk kesehatan. Khasiatnya banyak digunakan sebagai perawatan tubuh bagi manusia ataupun untuk menyembuhkan luka.\r\n\r\nBanyaknya manfaat lidah buaya karena adanya kandungan seperti protein, lemak, karbohidrat, kalsium, dan masih banyak lagi. Berikut 8 manfaat lidah buaya yang telah merdeka.com rangkum dari berbagai sumber, Selasa (24/03/2020).\r\n\r\nMencegah Penuaan Dini\r\nManfaat lidah buaya pertama yaitu dapat mencegah penuaan dini. Lidah buaya dapat bermanfaat untuk menjaga kesehatan kulit. Kamu bisa menggunakan lidah buaya untuk melawan munculnya kerutan dan tanda penuaan pada kulit wajah.\r\n\r\nUntuk mendapatkan manfaat lidah buata, oleskan gel dari lidah buaya ke permukaan kulit secara rutin selama 90 hari. Bila dilakukan secara teratur, kamu bisa mendapatkan hasil berupa kulit yang halus dan kenyal.\r\n\r\nSelain itu, lidah buaya juga dapat berperan sebagai toner. Lidah buaya dapat meningkatkan tekstur kulit dan mengurangi keriput. Lidah buaya juga dapat menenangkan kulit yang pada akhirnya dapat membuat kulit menjadi terasa lebih lembut dan lentur.\r\n\r\nKeriput pada mata pun bisa diatasi dengan lidah buaya. Oleskan gel lidah buaya di daerah bawah mata ketika akan tidur di malam hari. Kandungan vitamin A, C, dan E pada gel lidah buaya tersebut dapat mengobati dan membantu memelihara kulit serta meningkatkan tekstur pada kulit.\r\n\r\nGunakan gel lidah buaya ini secara teratur untuk mendapatkan manfaat yang maksimal. Namun, harus diperhatikan juga agar gel tersebut tidak mengenai mata kita karena efeknya akan membahayakan mata.\r\n\r\nSebagai Obat Pencahar\r\nManfaat lidah buaya berikutnya adalah menghilangkan sembelit. Untuk mendapatkan manfaat lidah buata, kamu bisa mengonsumsi zat lilin berwarna kuning yang menempel pada bagian permukaan bawah daun lidah buaya. Karena pada bagian tersebut mengandung senyawa aloin atau barbaloin yang mana merupakan zat pencahar yang ampuh.\r\n\r\nMerawat Rambut dan Kulit Kepala\r\nManfaat lidah buaya selanjutnya dapat digunakan sebagai perawatan rambut dan kulit kepala. Lidah buaya mengandung mineral, vitamin, asam amino dan phytonutrient yang mana kandungan-kandungan tersebut sangat baik bagi kesehatan kulit dan rambut.\r\n\r\nGel lidah buaya yang mengandung mineral dan vitamin itulah yang mampu menghidrasi kulit kepala dan mengurangi peradangan ketombe. Lidah buaya juga dapat digunakan sebagai conditioner, yang nantinya dapat memberikan manfaat halus pada rambut.\r\n\r\nMencegah Penyakit Gigi\r\nManfaat lidah buaya dapat mencegah penyakit gigi dan menjaga kesehatan gigi. Penyakit gigi banyak disebabkan oleh plak gigi atau biofilm bakteri yang ada di sekitar gusi.\r\n\r\nPenelitian menunjukkan bahwa membilas mulut menggunakan lidah buaya yang diolah menjadi jus, 100 persen memiliki efek yang sama dengan efek yang diberikan oleh chiorthexidine, atau obat kumur standar emas. Hal ini karena kandungan antibakteri yang dimiliki lidah buaya dapat menghancurkan kuman dan melindungi gigi.\r\n\r\nMenyembuhkan Luka Bakar\r\nManfaat lidah buaya lainnya dapat menyembuhkan luka bakar. Getah dari lidah buaya dapat dengan cepat membantu kulit yang mengalami iritasi. Hal ini karena lidah buaya memiliki sifat antiinflamasi dan juga khasiatnya sebagai penyembuh luka. Manfaat tersebut dapat kita peroleh dengan cara mengoleskan lidah buaya dalam bentuk gel.\r\n\r\nPenelitian juga menunjukkan bila kita mengoleskan gel lidah buaya secara rutin di daerah luka bakar, dapat memberikan efek mengurangi waktu penyembuhan hingga 9 hari dari pada menggunakan salep bakar pada umumnya.\r\n\r\nAntioksidan Tinggi\r\nManfaat lidah buaya didapat karena memiliki kandungan antioksidan yang tinggi. Selain kandungan vitamin dan mineral, lidah buaya juga memiliki kandungan senyawa yang berguna sebagai obat.\r\n\r\nSalah satu senyawa yang terdapat pada lidah buaya adalah polifenol. Senyawa ini memiliki sifat antioksidan yang kuat sehingga mampu menghambat perkembangan bakteri yang berbahaya penyebab penyakit.\r\n\r\nObat Diabetes\r\nManfaat lidah buaya lainnya dapat dijadikan sebagai obat bagi penderita diabetes, terutama diabetes tipe 2. Mengonsumsi jus lidah buaya secara teratur, kamu bisa mendapatkan vitamin yang terkandung di dalam lidah buaya sehingga dapat membantu meningkatkan sensitivitas insulin dalam tubuh.\r\n\r\nSelain itu, lidah buaya juga bermanfaat untuk mengatur kadar gula darah kita. Namun, perlu diingat juga agar tidak mengonsumsi lidah buaya terlalu banyak. Beberapa penelitian telah menemukan jika konsumsi lidah buaya yang terlalu banyak dapat merusak hati.\r\n\r\nSebagai Bahan Hand Sanitizer\r\nManfaat lidah buaya yang terakhir sebagai bahan untuk membuat hand sanitizer.Cara membuatnya cukup mudah. Kamu hanya perlu mencampurkan setengah cangkir gel lidah buaya dengan setengah cangkir alkohol dan beberapa tetes minyak esensial. Campuran tersebut nantinya dapat membersihkan tangan, melembutkan kulit, dan juga mengharumkan kulit.', 'https://www.merdeka.com/jabar/8-manfaat-lidah-buaya-tanaman-berduri-untuk-cuci-tangan-kln.html', 'health.png'),
(9, 'Kesehatan, Penyakit, Virus', 'Pentingnya Menggunakan Hand Sanitizer untuk Menangkal Virus!', 'Menjaga kebersihan adalah hal wajib yang harus selalu dilakukan oleh siapapun dan kapanpun. Salah satunya yang terpenting adalah menjaga kebersihan tangan, pasalnya tangan adalah bagian tubuh yang sangat rentan dan dapat dengan mudah menjadi tempat bersarangnya virus, dan bakteri. \r\n\r\nTangan sebagai salah satu organ tubuh yang sering kali berinteraksi, menyentuh dan dapat menjadi media penyebaran kuman, virus serta bakteri yang berbahaya.  Misalnya aktivitas saat membuka pintu, memegang tangga, memencet tombol lift, keyboard komputer dan berjabat tangan. Lalu tanpa disadari, setelahnya kita makan, mengusap mata, menyentuh hidung atau mulut kita sendiri, pada saat itulah kuman atau virus dapat masuk ke tubuh kita.\r\n\r\nDampak yang ditimbulkan akibat kebiasaan tidak menjaga kebersihan tangan bisa berskala ringan hingga berat akibat terserang virus dan bakteri. Dan penyebarannya sendiri dapat terjadi lewat tangan, seperti flu, diare, hepatitis, H1N1 hingga penyakit COVID-19 akibat virus Corona.\r\n\r\nMaka cara terbaik untuk mencegah berbagai infeksi dan penyakit, yaitu menjaga kebersihan tangan dengan rutin mencuci tangan menggunakan air dan sabun selama kurang lebih 20 detik di bawah air yang mengalir.\r\n\r\nNamun, sayangnya ada saat dimana kita sedang bepergian atau beraktivitas di luar rumah sehingga mengalami kesulitan mencari toilet dan tempat mencuci tangan. Karena alasan inilah, penggunaan hand sanitizer bisa menjadi salah satu solusi untuk membersihkan tangan dari kuman serta virus yang menempel.\r\n\r\nHand sanitizer adalah cairan pembersih tangan yang digunakan sebagai alternatif untuk mencuci tangan selain menggunakan sabun dan air. Hand sanitizer berbasis alkohol dengan minimal 60% dipercaya lebih efektif untuk membunuh kuman dan mikroorganisme berbahaya di tangan, termasuk pencegahan virus Corona.\r\n\r\nPerlu kamu tahu, jika hand sanitizer sendiri memiliki banyak manfaat seperti :\r\n\r\nA. Menjaga Kebersihan dan Mencegah Bakteri : Produk ini dirancang untuk membunuh kuman dan mikroorganisme berbahaya sehingga aman jika diaplikasikan pada kulit tangan apabila dilakukan dengan benar.\r\n\r\nB. Dapat Digunakan untuk Benda Lain : Selain digunakan pada kulit tangan, hand sanitizer juga bisa diaplikasikan untuk membersihkan benda mati di sekitar kita. Misalnya saja untuk membersihkan layar hp dan laptop, membersihkan pegangan pintu, serta alat makan saat tidak tersedianya air. \r\n\r\nC. Fleksibel Saat Dibawa Bepergian:  Hand sanitizer biasanya dikemas dalam bentuk gel atau spray dalam ukuran botol yang mini, sehingga dapat dengan mudah dibawa di dalam tas kapan dan dimana saja.\r\n\r\nSayangnya jika digunakan terlalu sering, banyak yang mengeluhkan jika hand sanitizer dapat membuat kulit tangan menjadi kering karena kandungan alkoholnya di dalamnya.\r\n\r\nTapi, kamu tidak perlu khawatir nih, karena Sophie baru saja meluncurkan produk Hand Moisturizer dengan Ekstrak Aloe Vera dan kandungan Alkohol 63%.\r\n\r\nKenapa disebut Hand Moisturizer? Dinamakan demikian karena, produk ini mampu membunuh kuman sekaligus melembabkan dan melembutkan kulit tangan. Tangan pun jadi terasa lebih halus, bersih, dan tentunya membuat kamu merasa nyaman saat beraktivitas.\r\n\r\nMengaplikasikan hand moisturizer ini juga cukup mudah, yaitu dengan cara :\r\n\r\n1. Semprotkan 1 kali di telapak tangan\r\n\r\n2. Gosoklah tangan bersama-sama hingga semua permukaan tangan dan jari terkena cairannya.\r\n\r\n3. Tunggulah sampai cairan meresap dan kering.\r\n\r\n4. Dapat juga digunakan untuk membersihkan permukaan benda disekitarmu menggunakan tisu', 'https://www.sophieparis.com/blog/manfaat-hand-sanitizer', 'health.png'),
(10, 'Penyakit, Virus', '5 Cara Efektif agar Tidak Tertular Virus Corona', 'Coronavirus telah menyerang ribuan orang di berbagai negara dan menelan ratusan korban jiwa. Agar tidak terkena penyakit infeksi yang sedang mewabah ini, ada beberapa cara yang bisa dilakukan untuk mencegah penularan virus Corona.\r\n\r\nPenyebab dari wabah ini adalah coronavirus jenis baru yang disebut dengan novel coronavirus 2019 (2019-nCoV). Penyakit ini termasuk dalam golongan virus yang sama dengan virus penyebab severe acute respiratory syndrome (SARS) dan Middle-East respiratory syndrome (MERS).\r\n\r\nInfeksi virus Corona yang disebut COVID-19 ini pertama kali terjadi di kota Wuhan, China dan sekarang telah ditemukan di berbagai negara, termasuk Indonesia.\r\n\r\nLangkah Mencegah Penularan Virus Corona\r\nVirus ini diperkirakan berasal dari hewan, seperti kelelawar dan unta, dan bisa menular dari hewan ke manusia, serta dari manusia ke manusia. Penularan antarmanusia kemungkinan besar melalui percikan dahak saat batuk atau bersin.\r\n\r\nKetika terinfeksi virus Corona, seseorang akan mengalami gejala mirip flu, seperti demam, batuk, dan pilek. Namun, beberapa hari setelahnya, orang yang terserang infeksi virus corona bisa mengalami sesak napas akibat infeksi pada paru-paru (pneumonia).\r\n\r\nHingga saat ini, belum ada pengobatan yang dapat menyembuhkan infeksi virus Corona. Oleh sebab itu, Organisasi Kesehatan Dunia (WHO) mengimbau agar masyarakat tidak memandang sepele penyakit ini dan senantiasa melakukan tindakan pencegahan. Salah satunya adalah dengan menerapkan social distancing.\r\n\r\nBeberapa langkah yang bisa dilakukan untuk mencegah infeksi virus Corona, di antaranya:\r\n\r\n1. Mencuci tangan dengan benar\r\nMencuci tangan dengan benar adalah cara paling sederhana namun efektif untuk mencegah penyebaran virus 2019-nCoV. Cucilah tangan dengan air mengalir dan sabun, setidaknya selama 20 detik. Pastikan seluruh bagian tangan tercuci hingga bersih, termasuk punggung tangan, pergelangan tangan, sela-sela jari, dan kuku. Setelah itu, keringkan tangan menggunakan tisu, handuk bersih, atau mesin pengering tangan.\r\n\r\nJika Anda adalah pekerja komuter yang berada di dalam transportasi umum, akan sulit untuk menemukan air dan sabun. Anda bisa membersihkan tangan dengan hand sanitizer. Gunakan produk hand sanitizer dengan kandungan alkohol minimal 60% agar lebih efektif membasmi kuman.\r\n\r\nCucilah tangan secara teratur, terutama sebelum dan setelah makan, setelah menggunakan toilet, setelah menyentuh hewan, membuang sampah, serta setelah batuk atau bersin. Cuci tangan juga penting dilakukan sebelum menyusui bayi atau memerah ASI.\r\n\r\n2. Menggunakan masker\r\nBanyak yang menggunakan masker kain untuk mencegah infeksi virus Corona, padahal masker tersebut belum tentu efektif. Secara umum, ada dua tipe masker yang bisa Anda digunakan untuk mencegah penularan virus Corona, yaitu masker bedah dan masker N95.\r\n\r\nMasker bedah atau surgical mask merupakan masker sekali pakai yang umum digunakan. Masker ini mudah ditemukan, harganya terjangkau, dan nyaman dipakai, sehingga banyak orang yang menggunakan masker ini saat beraktivitas sehari-hari.\r\n\r\nCara pakai masker bedah yang benar adalah sisi berwarna pada masker harus menghadap ke luar, sementara sisi dalamnya yang berwarna putih menghadap wajah dan menutupi dagu, hidung, dan mulut. Sisi berwarna putih terbuat dari material yang dapat menyerap kotoran dan menyaring kuman dari udara.\r\n\r\nMeski tidak sepenuhnya efektif mencegah paparan kuman, namun penggunaan masker ini tetap bisa menurunkan risiko penyebaran penyakit infeksi, termasuk infeksi virus Corona. Penggunaan masker lebih disarankan bagi orang yang sedang sakit untuk mencegah penyebaran virus dan kuman, ketimbang pada orang yang sehat.\r\n\r\nSedangkan masker N95 adalah jenis masker yang digunakan sebagai salah satu alat pelindung diri atau APD untuk petugas medis yang merawat pasien COVID-19.\r\n\r\nKetika melepaskan masker dari wajah, baik masker bedah maupun masker N95, hindari menyentuh bagian depan masker, sebab bagian tersebut penuh dengan kuman yang menempel. Setelah melepas masker, cucilah tangan dengan sabun atau hand sanitizer, agar tangan bersih dari kuman yang menempel.\r\n\r\n3. Menjaga daya tahan tubuh\r\nDaya tahan tubuh yang kuat dapat mencegah munculnya berbagai macam penyakit. Untuk menjaga dan meningkatkan daya tahan tubuh, Anda disarankan untuk mengonsumsi makanan sehat, seperti sayuran dan buah-buahan, dan makanan berprotein, seperti telur, ikan, dan daging tanpa lemak. Bila perlu, Anda juga menambah konsumsi suplemen sesuai anjuran dokter.\r\n\r\nSelain itu, rutin berolahraga, tidur yang cukup, tidak merokok, dan tidak mengonsumsi minuman beralkohol juga bisa meningkatkan daya tahan tubuh agar terhindar dari penularan virus Corona.\r\n\r\nBeberapa informasi menyebutkan bahwa berjemur di bawah sinar matahari juga dapat mencegah infeksi virus Corona. Sayangnya hal ini masih perlu diteliti lebih lanjut.\r\n\r\n4. Tidak pergi ke negara terjangkit\r\nTidak hanya Tiongkok, penyakit infeksi virus Corona kini juga sudah mewabah ke beberapa negara lain, seperti Jepang, Korea Selatan, Hongkong, Taiwan, India, Amerika Serikat, dan Eropa. Virus Corona juga sudah terkonfirmasi ditemukan di negara-negara tetangga Indonesia, seperti Singapura, Malaysia, Thailand, Vietnam, dan Filipina.\r\n\r\nAgar tidak tertular virus ini, Anda disarankan untuk tidak bepergian ke tempat-tempat yang sudah memiliki kasus infeksi virus Corona atau berpotensi menjadi lokasi penyebaran coronavirus, baik di luar maupun dalam negeri.\r\n\r\nAnda juga disarankan untuk melakukan physical distancing dengan cara menjaga jarak minimal 1 meter saat berinteraksi dengan orang lain dan hindari bepergian ke tempat yang ramai, kecuali untuk urusan penting seperti berbelanja kebutuhan sehari-hari. Selama di rumah, Anda juga perlu rutin membersihkan rumah guna mengurangi risiko tertular virus Corona.\r\n\r\n5. Menghindari kontak dengan hewan yang berpotensi menularkan coronavirus\r\nCoronavirus jenis baru diduga kuat berasal dari kelelawar dan disebarkan oleh beberapa hewan mamalia dan reptil. Oleh karena itu, hindarilah kontak dengan hewan-hewan tersebut\r\n\r\nJika ingin mengonsumsi daging atau ikan, pastikan daging atau ikan tersebut sudah dicuci dan dimasak hingga benar-benar matang. Hindari mengonsumsi daging atau ikan yang sudah tidak segar atau busuk.\r\n\r\nBila Anda mengalami gejala flu, seperti batuk, demam, dan pilek, yang disertai lemas dan sesak napas, apalagi bila dalam 2 minggu terakhir Anda bepergian ke Tiongkok atau negara-negara lain yang sudah memiliki kasus infeksi virus Corona, segeralah tanyakan ke dokter agar dapat dipastikan penyebabnya dan diberikan penanganan yang tepat.', 'https://www.alodokter.com/ketahui-cara-untuk-mencegah-penularan-virus-corona', 'health.png'),
(11, 'Vitamin', 'Vitamin Mantapuu', 'telah menyerang ribuan orang di berbagai negara dan menelan ratusan korban jiwa. Agar tidak terkena penyakit infeksi yang sedang mewabah ini, ada beberapa cara yang bisa dilakukan untuk mencegah penularan virus Corona.\r\n\r\nPenyebab dari wabah ini adalah coronavirus jenis baru yang disebut dengan novel coronavirus 2019 (2019-nCoV). Penyakit ini termasuk dalam golongan virus yang sama dengan virus penyebab severe acute respiratory syndrome (SARS) dan Middle-East respiratory syndrome (MERS).\r\n\r\nInfeksi virus Corona yang disebut COVID-19 ini pertama kali terjadi di kota Wuhan, China dan sekarang telah ditemukan di berbagai negara, termasuk Indonesia.\r\n\r\nLangkah Mencegah Penularan Virus Corona\r\nVirus ini diperkirakan berasal dari hewan, seperti kelelawar dan unta, dan bisa menular dari hewan ke manusia, serta dari manusia ke manusia. Penularan antarmanusia kemungkinan besar melalui percikan dahak saat batuk atau bersin.\r\n\r\nKetika terinfeksi virus Corona, seseorang akan mengalami gejala mirip flu, seperti demam, batuk, dan pilek. Namun, beberapa hari setelahnya, orang yang terserang infeksi virus corona bisa mengalami sesak napas akibat infeksi pada paru-paru (pneumonia).\r\n\r\nHingga saat ini, belum ada pengobatan yang dapat menyembuhkan infeksi virus Corona. Oleh sebab itu, Organisasi Kesehatan Dunia (WHO) mengimbau agar masyarakat tidak memandang sepele penyakit ini dan senantiasa melakukan tindakan pencegahan. Salah satunya adalah dengan menerapkan social distancing.\r\n\r\nBeberapa langkah yang bisa dilakukan untuk mencegah infeksi virus Corona, di antaranya:\r\n\r\n1. Mencuci tangan dengan benar\r\nMencuci tangan dengan benar adalah cara paling sederhana namun efektif untuk mencegah penyebaran virus 2019-nCoV. Cucilah tangan dengan air mengalir dan sabun, setidaknya selama 20 detik. Pastikan seluruh bagian tangan tercuci hingga bersih, termasuk punggung tangan, pergelangan tangan, sela-sela jari, dan kuku. Setelah itu, keringkan tangan menggunakan tisu, handuk bersih, atau mesin pengering tangan.\r\n\r\nJika Anda adalah pekerja komuter yang berada di dalam transportasi umum, akan sulit untuk menemukan air dan sabun. Anda bisa membersihkan tangan dengan hand sanitizer. Gunakan produk hand sanitizer dengan kandungan alkohol minimal 60% agar lebih efektif membasmi kuman.\r\n\r\nCucilah tangan secara teratur, terutama sebelum dan setelah makan, setelah menggunakan toilet, setelah menyentuh hewan, membuang sampah, serta setelah batuk atau bersin. Cuci tangan juga penting dilakukan sebelum menyusui bayi atau memerah ASI.\r\n\r\n2. Menggunakan masker\r\nBanyak yang menggunakan masker kain untuk mencegah infeksi virus Corona, padahal masker tersebut belum tentu efektif. Secara umum, ada dua tipe masker yang bisa Anda digunakan untuk mencegah penularan virus Corona, yaitu masker bedah dan masker N95.\r\n\r\nMasker bedah atau surgical mask merupakan masker sekali pakai yang umum digunakan. Masker ini mudah ditemukan, harganya terjangkau, dan nyaman dipakai, sehingga banyak orang yang menggunakan masker ini saat beraktivitas sehari-hari.\r\n\r\nCara pakai masker bedah yang benar adalah sisi berwarna pada masker harus menghadap ke luar, sementara sisi dalamnya yang berwarna putih menghadap wajah dan menutupi dagu, hidung, dan mulut. Sisi berwarna putih terbuat dari material yang dapat menyerap kotoran dan menyaring kuman dari udara.\r\n\r\nMeski tidak sepenuhnya efektif mencegah paparan kuman, namun penggunaan masker ini tetap bisa menurunkan risiko penyebaran penyakit infeksi, termasuk infeksi virus Corona. Penggunaan masker lebih disarankan bagi orang yang sedang sakit untuk mencegah penyebaran virus dan kuman, ketimbang pada orang yang sehat.\r\n\r\nSedangkan masker N95 adalah jenis masker yang digunakan sebagai salah satu alat pelindung diri atau APD untuk petugas medis yang merawat pasien COVID-19.\r\n\r\nKetika melepaskan masker dari wajah, baik masker bedah maupun masker N95, hindari menyentuh bagian depan masker, sebab bagian tersebut penuh dengan kuman yang menempel. Setelah melepas masker, cucilah tangan dengan sabun atau hand sanitizer, agar tangan bersih dari kuman yang menempel.\r\n\r\n3. Menjaga daya tahan tubuh\r\nDaya tahan tubuh yang kuat dapat mencegah munculnya berbagai macam penyakit. Untuk menjaga dan meningkatkan daya tahan tubuh, Anda disarankan untuk mengonsumsi makanan sehat, seperti sayuran dan buah-buahan, dan makanan berprotein, seperti telur, ikan, dan daging tanpa lemak. Bila perlu, Anda juga menambah konsumsi suplemen sesuai anjuran dokter.\r\n\r\nSelain itu, rutin berolahraga, tidur yang cukup, tidak merokok, dan tidak mengonsumsi minuman beralkohol juga bisa meningkatkan daya tahan tubuh agar terhindar dari penularan virus Corona.\r\n\r\nBeberapa informasi menyebutkan bahwa berjemur di bawah sinar matahari juga dapat mencegah infeksi virus Corona. Sayangnya hal ini masih perlu diteliti lebih lanjut.\r\n\r\n4. Tidak pergi ke negara terjangkit\r\nTidak hanya Tiongkok, penyakit infeksi virus Corona kini juga sudah mewabah ke beberapa negara lain, seperti Jepang, Korea Selatan, Hongkong, Taiwan, India, Amerika Serikat, dan Eropa. Virus Corona juga sudah terkonfirmasi ditemukan di negara-negara tetangga Indonesia, seperti Singapura, Malaysia, Thailand, Vietnam, dan Filipina.\r\n\r\nAgar tidak tertular virus ini, Anda disarankan untuk tidak bepergian ke tempat-tempat yang sudah memiliki kasus infeksi virus Corona atau berpotensi menjadi lokasi penyebaran coronavirus, baik di luar maupun dalam negeri.\r\n\r\nAnda juga disarankan untuk melakukan physical distancing dengan cara menjaga jarak minimal 1 meter saat berinteraksi dengan orang lain dan hindari bepergian ke tempat yang ramai, kecuali untuk urusan penting seperti berbelanja kebutuhan sehari-hari. Selama di rumah, Anda juga perlu rutin membersihkan rumah guna mengurangi risiko tertular virus Corona.\r\n\r\n5. Menghindari kontak dengan hewan yang berpotensi menularkan coronavirus\r\nCoronavirus jenis baru diduga kuat berasal dari kelelawar dan disebarkan oleh beberapa hewan mamalia dan reptil. Oleh karena itu, hindarilah kontak dengan hewan-hewan tersebut\r\n\r\nJika ingin mengonsumsi daging atau ikan, pastikan daging atau ikan tersebut sudah dicuci dan dimasak hingga benar-benar matang. Hindari mengonsumsi daging atau ikan yang sudah tidak segar atau busuk.\r\n\r\nBila Anda mengalami gejala flu, seperti batuk, demam, dan pilek, yang disertai lemas dan sesak napas, apalagi bila dalam 2 minggu terakhir Anda bepergian ke Tiongkok atau negara-negara lain yang sudah memiliki kasus infeksi virus Corona, segeralah tanyakan ke dokter agar dapat dipastikan penyebabnya dan diberikan penanganan yang tepat.\"\r\n                                ', 'vitamin.com', 'Chrysanthemum2.jpg'),
(14, 'Vitamin', 'Vitamin Mantapuu', '                Vitamin C atau asam askorbat adalah salah satu nutrisi penting bagi tubuh yang aman. Vitamin C bisa didapat dari stroberi, kubis, kembang kol, paprika, kentang brokoli, dan cabai.\r\n\r\nDi Hari Vitamin C Sedunia ini, yuk kenali fakta-fakta unik seputar manfaat vitamin C bagi kesehatan kamu.\r\n\r\nDengan begitu, kamu bakal lebih sering mengonsumsinya. Dilansir dari Organic Facts, berikut beberapa yang terpenting di antaranya!\r\n\r\n1. Dilansir dari Cochrane Database of Systematic Reviews, asam askorbat meningkatkan kekebalan tubuh sehingga bisa mengobati pilek\r\n2. Vitamin C bisa mencegah penyakit kudis sebagai akibat melemahnya jaringan ikat, tulang, kolagen, dan pembuluh darah\r\n3. Menurut American Journal of Clinical Nutrition, asupan vitamin C membantu menurunkan tekanan darah atau hipertensi\r\n4. Dilansir dari National Cancer Institute, vitamin C dosis tinggi bisa mencegah kanker\r\n5. Asupan vitamin C yang disertai diet sayur dan buah-buahan mengurangi risiko stroke dan melindungi tubuh dari radikal bebas\r\n6. Vitamin C berperan penting dalam produksi neurotransmiter yang bisa meningkatkan suasana hati dan mengurangi tekanan psikologis\r\n7. Vitamin C juga membantu mempercepat penyembuhan luka\r\n8. Asam askorbat membantu mengurangi gejala asma dengan cara melindungimu dari efek bahaya polusi\r\n9. Vitamin C bermanfaat sebagai obat diabetes karena membantu memproses insulin dan glukosa\r\n10. Asam askorbat mencegah penyakit jantung karena melindungi pembuluh darah dari kerusakan akibat radikal bebas', 'vitamin.com', 'Chrysanthemum.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `id_rs` int(11) NOT NULL,
  `id_poli` int(11) NOT NULL,
  `nama_dokter` varchar(50) NOT NULL,
  `no_dokter` varchar(15) DEFAULT NULL,
  `email_dokter` varchar(30) DEFAULT NULL,
  `foto_dokter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `id_rs`, `id_poli`, `nama_dokter`, `no_dokter`, `email_dokter`, `foto_dokter`) VALUES
(47, 7, 1, ' dr. Yusni Puspita, Sp. An, KAKV, KIC, M. Kes', '6281373100915', 'yusnipuspita@gmail.com', 'yusni.jpg'),
(49, 7, 1, ' dr. Agustina Br Haloho, Sp. An, M. Kes', '', '', ''),
(50, 7, 1, 'dr. Andi Miarti, Sp.An', '', '', ''),
(51, 7, 1, 'dr. Ferriansyah Gunawan, Sp.An', '', '', ''),
(54, 0, 18, 'dr. Henny Luniagus Hardida, Sp.OG (K)', '', '', 'drhenny1.jpeg'),
(55, 0, 18, 'dr. Asrol Byrin, Sp.OG (K)', '', '', '27.png'),
(56, 0, 18, 'dr. Diah Melly Marlyana, Sp.OG', '', '', '271.png'),
(57, 0, 18, 'dr. Iskandar Zulqarnain, Sp.OG (K)', '', '', '272.png'),
(58, 0, 18, 'Prof. dr. Mahyuddin NS., Sp.OG (K)', '', '', '273.png'),
(59, 0, 18, 'dr. Putri Mirani, Sp.OG (K)', '', '', '274.png'),
(60, 0, 19, 'dr. Achirul Bakri, Sp.A (K)', '', '', '275.png'),
(61, 0, 19, 'dr. Afifah Ramadanti, Sp.A., M.Kes', '', '', '276.png'),
(62, 0, 19, 'dr. Ariesti Karmila, Sp.A., M.Kes', '', '', '277.png'),
(63, 0, 19, 'dr. H. Julius Anzar, Sp.A (K)', '', '', 'drjulius.jpeg'),
(64, 0, 19, 'dr. Kiagus Yangtjik N., Sp.A(K)', '', '', 'dr_kiagus.jpeg'),
(65, 0, 19, 'dr. Murdiati, Sp.A (K)', '', '', '278.png'),
(66, 0, 19, 'dr. Netty Herawaty, Sp.A', '', '', '279.png'),
(67, 0, 19, 'dr. Rismarini, Sp.A (K)', '', '', '2710.png'),
(68, 0, 19, 'dr. Sonny Hakkun Ayubi Harsono, Sp.A', '', '', '2711.png'),
(69, 0, 36, 'dr. Asrul Sani, Sp.PD', '', '', '23.png'),
(70, 0, 36, 'dr. Erwin Azmar, Sp.PD., FINASIM', '', '', 'drerwin.jpeg'),
(71, 0, 36, 'dr. Susi Kurnia, Sp.PD', '', '', '2712.png'),
(72, 0, 37, 'dr. Hanafza Hakikat, Sp.JP(K)., FIHA', '', '', '2713.png'),
(73, 0, 20, 'dr. Billy Indra Gunawan, Sp.S (K)', '', '', 'drbilly.jpeg'),
(74, 0, 20, 'dr. Muhammad Hasnawi Haddani, Sp.S (K)', '', '', '2714.png'),
(75, 0, 21, 'dr. Muzakkie, Sp.OT., FICS', '', '', '2715.png'),
(76, 0, 22, 'dr. Eueis Restetty, Sp.B', '', '', '2716.png'),
(77, 0, 22, 'dr. Herry Rahardjo, Sp.B', '', '', '2717.png'),
(78, 0, 22, 'dr. Heru Purwanto, Sp.B', '', '', 'drheru.jpeg'),
(79, 0, 23, 'dr. Anjar Arum Setiawati, Sp.THT-KL', '', '', '1.jpeg'),
(80, 0, 23, 'dr. Dewi Sinaga, Sp.THT-KL', '', '', 'drdewi.jpeg'),
(81, 0, 23, 'dr. Halipah Mahyuddin, Sp.THT., MM', '', '', '2718.png'),
(82, 0, 23, 'dr. Lisa Apri Yanti, Sp.THT-KL', '', '', '2719.png'),
(83, 0, 24, 'dr. Edi Suhaimi, Sp.Ak', '', '', '2720.png'),
(84, 0, 25, 'Dra. Sri Agustina, Psi', '', '', '2721.png'),
(85, 0, 26, 'dr. Abdullah Shahab, Sp.KJ', '', '', '2722.png'),
(86, 0, 27, 'drg. Fitria Wulansari', '', '', '2723.png'),
(87, 0, 27, 'drg. Ria Primavera', '', '', '2724.png'),
(88, 0, 28, 'dr. Suyata, Sp.PD-KGEH', '', '', '2725.png'),
(89, 0, 29, 'dr. Rukiah Chodilawati, Sp.PD-KKV, FINASIM', '', '', '2726.png'),
(90, 0, 30, 'dr. Karyusi, Sp.M', '', '', '2727.png'),
(91, 0, 31, 'dr. Muhammad Salim, Sp.Rad', '', '', '2728.png'),
(92, 0, 32, 'dr. Elvina Febrianti, Sp.KK', '', '', '2729.png'),
(93, 0, 32, 'dr. Indah Permata Sari, Sp.KK', '', '', '2730.png'),
(94, 0, 33, 'dr. Rudi Mangatur Pasaribu, Sp.An', '', '', '2731.png'),
(95, 0, 34, 'dr. Nur Qodir, Sp.B(K)Onk', '', '', '2732.png'),
(96, 0, 35, 'dr. Eny Rahmawati, Sp.PK (K)., M.Sc', '', '', '2733.png'),
(97, 7, 1, 'dr. Fredi Heru Irwanto, Sp.An (K)', '', '', '2734.png'),
(98, 7, 1, 'dr. Mayang Indah Lestari, SpAn', '', '', '2735.png'),
(99, 7, 1, 'dr. Rose Mafiana, Sp. An, KNA, KIC, KAO', '', '', '2736.png'),
(100, 7, 1, 'dr.Aidyl Fitrisyah, Sp.An', '', '', '2737.png'),
(101, 7, 1, 'dr.H. Zulkifli, Sp. An, KIC, M. Kes, MARS', '', '', '2738.png'),
(102, 7, 1, 'dr Rizal Zainal , Sp. An, KMN', '', '', 'rizal1.jpeg'),
(103, 7, 2, 'dr. Abda Arif , Sp. BP-RE', '6285267117646', 'abda.arif@yahoo.com', 'dr_abda_arif,_sp_bp_re11.jpg'),
(104, 7, 2, 'dr. Ahmat Umar, Sp.B, BTKV', '6282186706101', 'umarahmat04@gmail.com', 'dr__Ahmad_Umar,_Sp_B1.jpg'),
(105, 7, 2, 'dr. Aswin Nugraha, Sp. BTKV', '', 'dr.aswinnugraha@gmail.com', 'Aswin_Nugraha.jpg'),
(106, 7, 2, 'dr. Benny Kusuma, Sp. B (K) Onk, MARS', '6281364728609', 'bennyk_onk@yahoo.com', 'dr__Benny_Kusuma,_SpB(K)Onk,_MARS.jpg'),
(107, 7, 2, 'dr. Bermansyah, Sp. B (K)-BTKV', '6281368601137', 'iben63@yahoo.co.id', 'dr_bermansyah,Sp_B,BTKV_NIP_196303281989111001.jpg'),
(108, 7, 2, 'dr. Agung Muda Patih, Sp.BS', '', '', '2739.png'),
(109, 7, 2, 'dr. Anugerah Onie Widhiatmo, Sp. BS', '', '', '2740.png'),
(110, 7, 2, 'dr. Nur Rachmat Lubis, Sp. OT, FICS', '', '', '2741.png'),
(111, 7, 2, 'dr. Rendra Leonas, Sp. OT (K), SPINE, M. HumKes, M', '', '', '2742.png'),
(112, 7, 2, 'dr. Hasan, Sp.BS', '', '', '2743.png'),
(113, 7, 2, 'dr. Ismail Bastomi, Sp. OT', '', '', '2744.png'),
(114, 7, 2, 'dr. Mochammad Ridho Nur Hidayah, Sp. OT', '', '', '2745.png'),
(115, 7, 2, ' dr. Primadika Rubiansyah, Sp. OT (K)', '', '', '2746.png'),
(116, 7, 2, 'dr. Wiria Aryanta, Sp. Ot (K) Hand', '', '', '2747.png'),
(117, 7, 2, 'dr.Trijoso Permono, Sp. BS', '', '', '2748.png'),
(118, 7, 2, 'dr. Efman Efraim Ulrich Manawan, Sp. B, KBD', '628117105860', 'urieyossie@gmail.com', '3.jpg'),
(119, 7, 2, 'dr. Fadil Pramudhya Hoesain, Sp.U, M.Ked. Klin', '6281322979733', 'prafadil@gmail.com', '4.jpg'),
(120, 7, 2, 'dr. Fahmi Jaka Yusuf, Sp. B (K)V', '628117884472', 'jibooom@yahoo.com', '5.jpg'),
(121, 7, 2, 'dr. Gama Satria, Sp. BTKV', '', '', '2749.png'),
(122, 7, 2, 'dr. Iqmal Perlianta, Sp.BP-RE', '6282179913501', '', '6.jpg'),
(123, 7, 2, ' dr. Kemas Muhammad Dahlan, Sp. B (K) V', '6285382730514', 'dokterdahlanspb@gmail.com', '2.jpeg'),
(124, 7, 2, 'dr. Marta Hendry, Sp. U, MARS', '628126566969', 'martahendryspu@gmail.com', '7.jpg'),
(125, 7, 2, 'dr. Mufida Muzakkie, Sp. BP-RE', '62818884038', 'mufida.muzakkie@gmail.com', '8.jpg'),
(126, 7, 2, 'dr. Muhammad Hafidh Komar, Sp. B, KBD', '628117107900', 'drhafied@gmail.cm', '9.jpg'),
(127, 7, 2, 'dr. Mulawan Umar, Sp.B (K) Onk', '628127119126 ', 'mulawanumar@yahoo.com', '2750.png'),
(128, 7, 2, 'dr. Nurqodir, Sp. B (K) ONK', '6285383836540', 'dokterhakim@yahoo.com', '11.jpg'),
(129, 7, 2, 'dr. Sarup Singh, Sp. B, KBD', '628161367508', 'sarups@yahoo.com', '12.jpg'),
(130, 7, 2, 'dr. Shalita Dastamuar, Sp. BA (K)', '', 'me_tatadasta@icould.com', '13.jpg'),
(131, 7, 2, 'dr. Sindu Saksono, Sp. B, Sp. BA', '628161367508', 'sindusaksono92@gmail.com', '2751.png'),
(132, 7, 3, 'dr. Rusmawardiana, Sp. KK (K), FINC', '', '', '2752.png'),
(133, 7, 3, 'dr. Yuli Kurniawati, Sp. KK (K)', '', '', '2753.png'),
(134, 7, 3, 'dr. Yulia F Yahya, Sp. KK (K)', '', '', '2754.png'),
(135, 7, 3, 'dr. Fifa Argentina, Sp. KK', '', '', '2755.png'),
(136, 7, 3, 'dr. Fitriani, Sp. KK', '', '', '2756.png'),
(137, 7, 3, 'dr. Inda Astri Aryani, Sp. KK', '', '', '2757.png'),
(138, 7, 3, 'dr. Mutia Devi, Sp. KK', '', '', '2758.png'),
(139, 7, 3, ' dr. Nopriyati, Sp. KK', '', '', '2759.png'),
(140, 7, 3, ' dr. Sarah Diba, Sp. KK', '', '', '2760.png'),
(141, 7, 3, 'dr. Muhamad Izazi Hari Purwoko, Sp. KK (K)', '628127126495', 'm_izazi_hp@yahoo.com', '2761.png'),
(142, 7, 3, 'Prof. dr. Soenarto K, Sp. KK (K), FINS DV', '', '', '2762.png'),
(143, 7, 3, ' Prof. dr. Theresia Lumban Toruan, Sp. KK (K), FIN', '', '', '2763.png'),
(144, 7, 4, 'drg. Ade Puspa Sari, Sp. PM', '6281330519024', 'adepuspasari@gmail.com', '15.jpg'),
(145, 7, 4, 'drg. Billy Sujatmiko, Sp. KG', '628995167129', 'billysujatmiko@gmail.com', '16.jpg'),
(146, 7, 4, 'drg. Anton Sp.BMM', '', '', '2764.png'),
(147, 7, 4, 'drg. Budi Asri Kawuryani', '', '', '2765.png'),
(148, 7, 4, 'drg. Emilia Chrystiana Prasetyanti, Sp. Orth, M. K', '', '', '2766.png'),
(149, 7, 4, 'drg. Irma Kusumawati', '', '', '2767.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(250) NOT NULL,
  `senin` varchar(100) NOT NULL,
  `selasa` varchar(100) NOT NULL,
  `rabu` varchar(100) NOT NULL,
  `kamis` varchar(100) NOT NULL,
  `jumat` varchar(100) NOT NULL,
  `sabtu` varchar(100) NOT NULL,
  `minggu` varchar(100) NOT NULL,
  `id_dokter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `senin`, `selasa`, `rabu`, `kamis`, `jumat`, `sabtu`, `minggu`, `id_dokter`) VALUES
(1, '10.00-12.15', '08.30-11.45', '08.30-11.45', '08.30-11.45', '08.30-11.45', '08.30-11.45', '08.30-11.45', 47);

-- --------------------------------------------------------

--
-- Struktur dari tabel `janji`
--

CREATE TABLE `janji` (
  `id_janji` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `no_user` int(15) NOT NULL,
  `tgl_janji` date NOT NULL,
  `waktu_janji` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliklinik`
--

CREATE TABLE `poliklinik` (
  `id_poli` int(11) NOT NULL,
  `id_rs` int(11) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `tentang_poli` varchar(1000) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poliklinik`
--

INSERT INTO `poliklinik` (`id_poli`, `id_rs`, `nama_poli`, `tentang_poli`, `gambar`) VALUES
(1, 7, 'Anestesiologi dan terapi intensif', '                ', 'anestesi.png'),
(2, 7, 'Bedah', '                ', 'bedah.png'),
(3, 7, 'Dermatologi dan venereologi', '                ', 'kulit.png'),
(4, 7, 'Gigi dan mulut', '                ', 'gigi.png'),
(5, 7, 'Gizi klinik', '                ', 'gizi.png'),
(6, 7, 'Jiwa', '                ', 'jiwa.png'),
(7, 7, 'Kardiologi', '                ', 'kardiologi.png'),
(8, 7, 'Kedokteran Forensik', '                ', 'forensik.png'),
(9, 7, 'Kesehatan Anak', '                ', 'anak.png'),
(10, 7, 'Mata', '                ', 'mata.png'),
(11, 7, 'Neurologi', '                ', 'otak.png'),
(12, 7, 'Obgyn', '                ', 'Obgyn.png'),
(13, 7, 'Orthopedi', '                ', 'cedera.png'),
(18, 0, 'Spesialis Kebidanan dan Kandungan', '                                        ', 'kandungan2.png'),
(19, 0, 'Spesialis Anak', '                ', 'anak1.png'),
(20, 0, 'Spesialis Saraf', '                ', 'saraf1.png'),
(21, 0, 'Spesialis Orthopedi dan Traumatologi', '                ', 'cedera1.png'),
(22, 0, 'Spesialis Bedah Umum', '                ', 'bedah1.png'),
(23, 0, 'Spesialis Telinga Hidung dan Tenggorokan (THT)', '                ', 'tht1.png'),
(24, 0, 'Spesialis Akupuntur', '                ', 'anestesi1.png'),
(25, 0, 'Psikolog Klinis', '                ', '20.png'),
(26, 0, 'Speslialis Jiwa dan Psikiatri', '                ', '24.png'),
(27, 0, 'Dokter Gigi', '                ', '22.png'),
(28, 0, 'Spesialis Penyakit Dalam(Gastroenterologi-Hepatolo', '                                                                ', '23.png'),
(29, 0, 'Spesialis Penyakit Dalam (Kardiovaskular)', '                ', '19.png'),
(30, 0, 'Spesialias Mata', '                ', '13.png'),
(31, 0, 'Spesialis Radiologi', '                ', '25.png'),
(32, 0, 'Spesialis Penyakit Kulit dan Kelamin', '                ', '8.png'),
(33, 0, 'Spesialis Anestesiologi dan Terapi Intensif', '                ', '14.png'),
(34, 0, 'Spesialis Bedah Onkologi', '                ', '26.png'),
(35, 0, 'Spesialis Patologi', '                ', '15.png'),
(36, 0, 'Spesialis Penyakit Dalam', '                ', '231.png'),
(37, 0, 'Spesialis Jantung dan Pembuluh Darah', '                                        ', '191.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id_rating` int(11) NOT NULL,
  `id_rs` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id_rating`, `id_rs`, `rating`) VALUES
(1, 7, 4),
(2, 0, 4),
(3, 7, 4),
(4, 0, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumahsakit`
--

CREATE TABLE `rumahsakit` (
  `id_rs` int(11) NOT NULL,
  `nama_rs` varchar(50) NOT NULL,
  `alamat_rs` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `kota` varchar(25) NOT NULL,
  `telp_rs` varchar(25) NOT NULL,
  `fasilitas_rs` varchar(1000) NOT NULL,
  `tentang_rs` varchar(1000) NOT NULL,
  `foto_rumahsakit` varchar(50) NOT NULL,
  `rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rumahsakit`
--

INSERT INTO `rumahsakit` (`id_rs`, `nama_rs`, `alamat_rs`, `website`, `kota`, `telp_rs`, `fasilitas_rs`, `tentang_rs`, `foto_rumahsakit`, `rating`) VALUES
(0, 'Rumah Sakit Bunda', ' Jl. Demang Lebar Daun, Demang Lebar Daun, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan', 'https://www.instagram.com/rsbundapalembang/?hl=en', 'Palembang', '0711 311866', 'Farmasi, Ambulans, Instalasi Bersalin, Instalasi Bedah, Instalasi Rawat Inap, Instalasi Rawat Jalan, Instalasi Fisioterapi, Kafetaria, Area Parkir, Medical Check Up, Instalasi Laboratorium, Instalasi Radiologi, Ruang Tunggu, Neonate Intensive Care Unit (NICU), Instalasi Gawat Darurat (IGD), Instalasi Tumbuh Kembang Anak', 'Rumah Sakit Bunda Palembang yang beroperasi sejak tanggal 6 Agustus 1990, dibawah naungan PT. Bundamedik. Rumah Sakit Bunda Palembang memiliki Visi mewujudkan Rumah Sakit pilihan utama masyarakat dengan pelayanan yang berkualitas. Dengan Misi memberikan pelayanan yang berkualitas, meningkatkan kualitas SDM yang sakit.', 'rsbunda1.jpg', 4.3),
(7, 'RSUP Dr. Mohammad Hoesin', 'Jl. Jend. Sudirman No.Km, RW.5, Sekip Jaya, Kec. Kemuning, Kota Palembang, Sumatera Selatan 30126', 'https://www.rsmh.co.id', 'Palembang', '0711 354088', 'IGD, Rawat Jalan, Rawat Inap', 'RSMH merupakan Rumah Sakit Pendidikan Utama Fakultas Kedokteran Universitas Sriwijaya sesuai SK MENKES Nomor:HK.02.02/MENKES/192/2015 tanggal 27 Mei 2015 dengan mewujudkan Academic Health System &#40;AHS&#41;, selain itu sesuai dengan PERMENKES Nomor:HK.02.02/MENKES/390/2019 tanggal 17 Otober 2014 ditetapkan menjadi Rumah Sakit Rujukan Nasional. Dalam upaya menjamin mutu dan keselamtan pelayanan, maka RSMH sudah meraih akreditasi paripurna KARS dan akan meraih akreditasi International JCI ditahun 2016.', 'rshusein1.jpg', 3.5),
(9, 'Rumah Sakit Siloam', 'Jl. POM IX, Lorok Pakjo, Kec. Ilir Bar. I, Kota Palembang, Sumatera Selatan 30137', 'https://www.siloamhospitals.com/', 'Palembang', '0711 522 9100', 'Gawat Darurat, Rawat Inap, Layanan Diagnostik, Radiologi, Laboratorium, ', 'Siloam Sriwijaya Palembang menyediakan beragam layanan kesehatan, terutama layanan kebidanan dan kandungan, kedokteran anak, penyakit dalam, dan radiologi. Rumah sakit ini telah dilengkapi dengan teknologi yang kedokteran yang canggih dan tim tenaga medis yang berpengalaman. Terletak di lokasi strategis di jantung Kota Palembang, Rumah Sakit Siloam Sriwijaya terkenal sebagai pusat layanan kesehatan andalan bagi masyarakat Kota Palembang dan kota-kota lain di sekitarnya.', 'rssiloam2.jpg', 4),
(10, 'Rumah Sakit RK Charitas', 'Jl. Jendral Sudirman No. 1054 Palembang, Sumatera Selatan', 'http://charitashospital.com/palembang', 'Palembang', '62-0711-353374', 'Home Care, Pastoral Care, Rumah Duka, Rumah Singgah, Auditorium, Kantin, ATM Center, Area Parkir, Tempat Ibadah, Credit Card & Debit ATM dan Medical Information', 'Rumah sakit yang didirikan para Suster Charitas ini merupakan rumah sakit pertama yang ada di Palembang, mempunyai 59 tempat tidur. Disamping itu , pelayanan kunjungan dan persalinan di rumah tetap dilaksanakan oleh suster - suster rumah sakit yang berkendaraan sepeda.  Selama penjajahan Jepang rumah sakit diambil dan dijadikan markas tentara Jepang. Para suster dan pastor diinternir/ditawan di berbagai tempat. Pada waktu kemerdekaan rumah sakit Charitas dikembalikan kepada Konggregasi Suster Charitas dan terus dibenahi hingga menjadi rumah sakit seperti saat ini.', 'rkcharitas1.jpg', 4.4),
(11, 'Rumah Sakit Siti Khadijah', ' Jl. Demang Lebar Daun, Pakjo Palembang Palembang 30137', 'http://rsi-sitikhadijah.com', 'Palembang', ' 0711 ??? 356008', 'UGD, Rawat Inap, Rawat Jalan, Medical Check-up, Laboratorium, Farmasi, Radiologi, Fisioterapi, Hemodialisa, Bedah dan Kateterisasi Jantung & Angiografi ', 'Yayasan Islam Siti Khadijah Palembang, dibentuk dengan SK gubernur KDH TK I Sumatera Selatan, tertanggal 14 Desember 1974, Nomor 593/KPTS/VII/1974, dan disahkan melalui Akte Notaris Aminus Palembang, Tangggal 29 Januari 1975 Nomor 62 dan didaftarkan pada Pengeadilan Negeri (PN) Palembang, tanggal 5 Februari 1975, Nomor 32/1975, RS. Islam Siti Khadijah Palembang, mulai beroprasional secara defenitif pada tanggal 28 Februari 1980.', 'rssitikhodijah1.jpg', 3.2),
(12, 'RSUD Siti Fatimah ', ' Jl. Kol. H. Burlian, Suka Bangun, Kec. Sukarami, Kota Palembang, Sumatera Selatan', 'http://rsud.sumselprov.go.id', 'Palembang', ' 0711 5718883', 'Farmasi, Instalasi Rawat Inap, Instalasi Rawat Jalan, Area Parkir, Medical Check Up, Instalasi Laboratorium, Instalasi Radiologi, Ruang Tunggu, Instalasi Gawat Darurat (IGD)', 'Merupakan rumah sakit milik permerintah daerah terbesar di indonesia, yg berdiri di atas lahan seluas 4,1 Hektar dengan area bangunan seluas 52,952,11 m2. Lahir sebagai bukti keseriusan pemerintah daerah untuk meningkatkan derajat kesehatan masyarakat khususnya di wilayah Provinsi Sumatera Selatan.  Di resmikan oleh Gubernur Sumatera Selatan dan di saksikan oleh Menteri Kesehatan Republik Indonesia tahun 2018', 'rssitifatimah11.jpg', 4.7),
(15, 'Rumah Sakit Hermina', 'Jl. Basuki Rahmat No. 897, Sumatera Selatan, Indonesia', 'https://herminahospitals.com', 'Palembang', ' +62 711 352 525', 'CT Scan Hemodialisa KTK (Klinik Tumbuh Kembang), Gigi Spesialistik, PICU (Unit Perawatan Intensif Anak), ICU/NICU (Unit Perawatan Intensif/Unit Perawatan Intensif Neonatal), Audiometri Spirometri Thalassemia Perina', 'RS Hermina Palembang dibangun pada tahun 2011, yang menyediakan layanan khusus obgyn, pediatrik dan perawatan kecantikan. Rumah sakit ini memiliki 150 tempat tidur, termasuk fasilitas ICU, PICU, NICU, Hemodialisis, Kemoterapi, Bobath, dan Sperm Washing.', 'rssitihermina1.jpeg', 4.4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `password_user`) VALUES
(14, 'Kresna', 'Kresna@gmail.com', '$2y$10$KxWs60bynxguH54dehQeGerauyBZUd4RAt0I1HqjFfJNZLnmhFUfq');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `fk_dokter_rs` (`id_rs`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indeks untuk tabel `janji`
--
ALTER TABLE `janji`
  ADD PRIMARY KEY (`id_janji`),
  ADD KEY `fk_janji_dokter` (`id_dokter`),
  ADD KEY `fk_janji_user` (`id_user`);

--
-- Indeks untuk tabel `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id_poli`),
  ADD KEY `fk_poli_rs` (`id_rs`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id_rating`),
  ADD KEY `rating_ibfk_1` (`id_rs`);

--
-- Indeks untuk tabel `rumahsakit`
--
ALTER TABLE `rumahsakit`
  ADD PRIMARY KEY (`id_rs`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `janji`
--
ALTER TABLE `janji`
  MODIFY `id_janji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `id_poli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `rumahsakit`
--
ALTER TABLE `rumahsakit`
  MODIFY `id_rs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`id_poli`) REFERENCES `poliklinik` (`id_poli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dokter_rs` FOREIGN KEY (`id_rs`) REFERENCES `rumahsakit` (`id_rs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `janji`
--
ALTER TABLE `janji`
  ADD CONSTRAINT `fk_janji_dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_janji_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD CONSTRAINT `fk_poli_rs` FOREIGN KEY (`id_rs`) REFERENCES `rumahsakit` (`id_rs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_rs`) REFERENCES `rumahsakit` (`id_rs`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
