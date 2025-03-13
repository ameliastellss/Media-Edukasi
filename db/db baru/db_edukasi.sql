-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_edukasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'pengajar.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'dan', 'dan@gmail.com', '$2y$10$Q.Y8weRowNtvShN1xirqAeZcrmfvGZiZ/4713mnsB9qAJQhyBlHJK', 'dan', 'pengajar.svg');

-- --------------------------------------------------------

--
-- Table structure for table `soal_aljabar`
--

CREATE TABLE `soal_aljabar` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_aljabar`
--

INSERT INTO `soal_aljabar` (`id_soal`, `soal`, `a`, `b`, `c`, `d`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Hasil penjumlahan dari -3a –6b + 7 dan 13a – (-2b) + 4 adalah ...', ' 16a -8b + 11', '10a + 4b + 11', '10a -4b + 11', ' -16a -4b + 11', 'c', '', '2018-07-02', 'Y'),
(2, 'Hasil perkalian dari (4x - 5)(3x + 3) adalah ....', ' 12x² -3x - 15', '12x² +3x - 15', '12x² -27x - 15', '12x² -27x - 15', 'a', '', '2018-07-02', 'Y'),
(3, 'Bentuk -6x² – x + 4y variabel-variabelnya adalah ....', '-6, -1 dan 4', 'x² , x dan y', 'x + y', ' x² – 4y', 'b', '', '2018-07-18', 'Y'),
(4, 'Pada bentuk aljabar x² – 2x – 5 koefisien-koefisiennya adalah ....', 'x²', '-2', '- 2x dan - 5', ' -2 dan -5', 'b', '', '2018-07-02', 'Y'),
(5, 'Diketahui bentuk aljabar 3a² -7a -9, suku yang merupakan konstanta saja adalah ....', '3a²', 'a', '-7', '-9', 'd', '', '2018-07-02', 'Y'),
(6, ' 8p + 5q dikurangkan dengan 2p – 4q maka hasilnya adalah ....', ' 6p - q', '6p + 9q', '-6p + q', '-6p – 9q', 'b', '', '2018-07-02', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_bangun`
--

CREATE TABLE `soal_bangun` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `d` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_bangun`
--

INSERT INTO `soal_bangun` (`id_soal`, `soal`, `a`, `b`, `c`, `d`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Berapa volume dari sebuah kubus yang mempunyai panjang rusuk 6 cm.', '216', '226', '246', '256', 'a', '', '2018-07-02', 'Y'),
(2, 'Diketahui sebuah kubus memiliki panjang rusuk 13 cm, maka volume kubus yang didapat adalah …. cm³.', '169', '1.728', '2.197', '2.798', 'c', '', '2018-07-02', 'Y'),
(3, 'Sebuah kubus memiliki volume 2.744 cm3. Panjang rusuknya adalah …. cm', '14cm', '16cm', '42cm', '61cm', 'a', '', '2018-07-18', 'Y'),
(4, 'Diketahui panjang sebuah balok 15 cm, lebarnya 7 cm dan tingginya 11 cm, maka volume balok itu.', '1.665', '1.105', '1.655', '1.155', 'd', '', '2018-07-02', 'Y'),
(5, 'Disebut apa bangun datar yang menyusun jaring-jaring balok', 'Persegi', 'Belah Ketupat', 'Layang-layang', 'Persegi panjang', 'd', '', '2018-07-02', 'Y'),
(6, 'Volume sebuah balok 9.240 cm3. Panjang 35 cm dan lebar 22 cm. Maka tinggi balok adalah ….', '8cm', '12cm', '14cm', '16cm', 'b', '', '2018-07-02', 'Y'),
(7, ' Rahmat memiliki rubik berbentuk 2 buah kubus dengan panjang rusuk 16 cm dan 18 cm maka selisih volume kedua kubus itu adalah?', '1.673', '1.763', '1.736', '1.766', 'c', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_complate`
--

CREATE TABLE `soal_complate` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_complate`
--

INSERT INTO `soal_complate` (`id_soal`, `soal`, `A`, `B`, `C`, `D`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Complete the sentence below with the suitable words! <br></br>\r\n\r\nI ..... with my family at around 6.15. <br></br> We usually have boiled eggs, milk with toast, butter and jam.', 'Have breakfast ', 'Breakfast', 'Had breakfast', 'Do breakfast', 'A', '', '2018-07-02', 'Y'),
(2, 'Complete the dialogue below! <br></br> \r\n\r\nDoni: Hi, Dara. How are you? <br></br> \r\nDara: I am fine, thanks. <br></br> \r\nDoni: Id like you to meet dewa. Dara, this is dewa. <br></br> \r\nDara: Hello, I am dara (......) <br></br> \r\nDewa: nice to meet you, too. Hey, are you from Bali? <br></br> \r\nDara: No, I am not. I am from surabaya. <br></br> The correct aswer is....', 'Glad to see you', 'Hang on a minute', 'Wow! You are', 'Its nice to meet you', 'D', '', '2018-07-02', 'Y'),
(3, 'Choose the correct answer! <br></br> \r\n\r\nRoni: Excuse me, Are you Doni? <br></br> Doni: Yes, thats me. <br></br> \r\nRoni: May I introduce myself? Im Roni. How do you do?<br></br> \r\n Doni: .....', 'How are you?', 'How do you do?', 'Nice to see you', 'whats up', 'B', '', '2018-07-18', 'Y'),
(4, 'Choose the best aswer to complete the dialogue! <br></br> \r\nDina: Hello, Eddy. Its been a long time.<br></br> \r\n Eddo: Hi, Dinda. How are you doing? <br></br> \r\n Dina: ..... How about you? <br></br> \r\nEddo: Great. So happy to see you again.', 'So long', 'im doing fine', 'im little bit sick', 'i have to go now', 'B', '', '2018-07-02', 'Y'),
(5, 'Choose the best aswer to complete the dialogue! <br></br> \r\nBella: Chintya, my mom is waiting at home. I’ll go home first. <br></br> \r\nChintya: Okay, Bella. See you tomorrow. <br></br> \r\nBella: .......', 'Its very kind of you', 'im fine thank you', 'Nice to meet you', 'See you', 'D', '', '2018-07-02', 'Y'),
(6, 'Read the dialogue below! <br></br> \r\nSiti: Hi, guys. How are you? <br></br> \r\nMamat: Hi, Siti ... <br></br> \r\nThanks The best expression to complete the dialog is...', 'i am good', 'we are fine', 'It is no problem', 'You are welcome', 'B', '', '2018-07-02', 'Y'),
(7, 'The best expression to complete the dialogue below is... <br></br> \r\n\r\nMessi : Dad, may I accompany mother going to market <br></br> \r\nFather : Sure. But you have to wear your mask Messi <br></br> \r\n : Okay, Dad. ...... <br></br> \r\nFather : You re welcome', 'Good Bye', 'Im sorry', 'See You', 'Thanks', 'D', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_ide`
--

CREATE TABLE `soal_ide` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_ide`
--

INSERT INTO `soal_ide` (`id_soal`, `soal`, `A`, `B`, `C`, `D`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Bacalah paragraf berikut!<br></br>Dengan sumber daya alam yang semakin terbatas dan jumlah penduduk bumi yang terus berkembang pesat, sudah saatnya inovasi untuk menekan penggunaan sumber daya alam melalui teknologi ramah lingkungan dapat diterapkan di masyarakat. Salah satu contohnya adalah biotoilet. Tidak hanya berhenti pada proses penelitian, sekarang telah dikembangkan biotoilet yang merupakan desain toilet sistem kering mempergunakan matriks serbuk kayu sebagai media penangkap dan pengurai tinja dan urine. Tidak hanya itu, limbah dapur sisa makanan juga bisa dioleh di sini untuk dijadikan kompos.<br></br>\r\nIde pokok paragraf pertama bacaan di atas adalah ….', 'Manfaat penggunaan biotoilet', 'penelitian mengenai biotoilet', 'penerapan teknologi ramah lingkungan', 'pengembangan teknologi modern', 'C', '', '2018-07-02', 'Y'),
(2, 'Bacalah paragraf berikut!<br></br>\r\nRendahnya kualitas pendidikan kita sangat dipengaruhi oleh kualitas tenaga pendidik yang ada dan juga tingkat penguasaan teknologi informasi yang kurang memadai. Guru harus berperan sebagai mediator dan fasilitator dalam mentransfer ilmu kepada peserta didik, guru harus menjadi pembina akhlak dan budi pekerti mulia kepada siswa sejak dini dan guru harus menjadi teladan yang baik bagi peserta didik. Dari beberapa hasil penelitian selama ini sebagian besar guru masih bertindak sebatas mengajar saja, sedang fungsi mendidik, melatih, memberi nasehat yang baik, dan juga sebagai konsultan bagi peserta didik terabaikan.<br></br>\r\nIde pokok paragraf di atas adalah ….', 'Rendahnya kualitas Pendidikan dipengaruhi oleh tek', 'Cara meningkatkan kualitas pendidikan melalui peng', 'Guru menjadi teladan yang baik untuk meningkatkan ', 'Kualitas pendidikan dipengaruhi kualitas tenaga pe', 'D', '', '2018-07-02', 'Y'),
(3, 'Bahan bakar minyak memiliki berbagai kegunaan. Sepeda motor menggunakan bahan bakar pertalite. Kendaraan bermesin diesel menggunakan bahan bakar solar. Pesawat terbang menggunakan avtur sebagai bahan bakar. Ibu rumah tangga menggunakan minyak tanah sebagai bahan bakar kompor minyak.<br></br>\r\nIde pokok paragraf tersebut adalah ….', 'kegunaan bahan bakar minyak', 'berbagai jenis kendaraan', 'bahan bakar rumah tangga', 'manfaat pertalite dan minyak tanah', 'A', '', '2018-07-18', 'Y'),
(4, 'Kecelakaan lalu lintas di jalan raya disebabkan oleh berbagai hal. Banyak pemakai jalan raya tidak menaati peraturan lalu lintas. Misalnya kebut-kebutan, melanggar lampu rambu-rambu lalu lintas, dan mau menang sendiri. Selain itu, banyak kendaraan yang tidak dilengkapi spion. Jika semua pemakai jalan raya taat peraturan, maka kecelakaan lalu lintas dapat berkurang.<br></br>Ide pokok paragraf tersebut adalah ….', 'ketaatan berlalu lintas di jalan raya', ' kesadaran berlalu lintas di jalan raya', 'penyebab kecelakaan di jalan raya', 'mengurangi kecelakaan di jalan raya', 'C', '', '2018-07-02', 'Y'),
(5, 'Pasokan listrik pada musim penghujan sering terganggu. Hujan lebat dan angin ribut dapat menyebabkan pohon-pohon di beberapa ruas jalan tumbang dan menimpa kabel listrik. Untuk mempercepat perbaikan jaringan listrik. PLN melakukan pemadaman listrik sementara.<br></br>Ide pokok paragraf tersebut adalah ….', 'pengaruh hujan terhadap pasokan listrik', 'pemadaman listrik sementara oleh PLN', 'rusaknya alat listrik karena hujan dan angin', 'gangguan pasokan listrik pada musim penghujan', 'A', '', '2018-07-02', 'Y'),
(6, 'Sampah plastik sulit terurai di tanah. Apabila dibakar dapat menimbulkan pencemaran dan gangguan pernapasan. Selain itu sampah plastik dapat mencemari lingkungan. Itulah beberapa bahaya yang disebabkan dari sampah plastik.<br></br>Ide pokok paragraf tersebut adalah ….', 'kantong plastik sulit terurai', 'penyebab pencemaran udara', 'plastik mencemari lingkungan', 'beberapa bahaya sampah plastik', 'D', '', '2018-07-02', 'Y'),
(7, 'Saat berbelanja kita menggunakan kantong kain. Selain kantong kain, kita juga dapat menggunakan keranjang belanja. Kantong plastik bekas juga dapat kita gunakan kembali saat berbelanja. Itulah beberapa cara untuk mengurangi sampah plastik.<br></br> Ide pokok paragraf tersebut adalah ….', 'penggunaan kantong belanja', 'cara mengurangi sampah plastik', 'penggunaan sampah plastik', 'manfaat sampah plastik', 'B', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_job`
--

CREATE TABLE `soal_job` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_job`
--

INSERT INTO `soal_job` (`id_soal`, `soal`, `A`, `B`, `C`, `D`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Why does the sender write the letter?.', 'To apply for a certain position.', ' To provide inputs for the company.', 'To give information about his speciality.', 'To convince the readers about his experience.', 'A', 'soal_job1.svg', '2018-07-02', 'Y'),
(2, 'What does the sender possibly do after sending the letter?', 'Wait for the response of the recipient.', 'Call the recipient for the confirmation.', 'Work as a marketing specialist.', 'Complete his firs degree', 'A', 'soal_job.svg', '2018-07-02', 'Y'),
(3, ' “…I enclose my curriculum vitae..”  The word “enclose” is in the closest meaning to…', 'Hedge.', 'Attach.', 'Confine.', 'Encircle', 'B', 'soal_job1.svg', '2018-07-18', 'Y'),
(4, 'Why did Mr. Krick write the letter?', 'To apply for a job.', 'To ask for some information.', 'To introduce himself to Taylor.', 'To explain his educational background.', 'A', 'soal_job2.svg', '2018-07-02', 'Y'),
(5, 'How does Mr. Krick know the vacancy?', 'From the radio.', 'From a colleague.', 'From a newspaper.', 'From the television.', 'C', 'soal_job2.svg', '2018-07-02', 'Y'),
(6, 'What will the Human Resources Director probably do after reading the letter?', 'Evaluate the salary offered.', 'Start working at Taylor, Inc.', 'Promote Mr. Krick to be a manager.', 'Ask Mr. Krick to come for an interview', 'D', 'soal_job2.svg', '2018-07-02', 'Y'),
(7, ' What is the synonym of the word ‘fresh’?', 'Old', 'New', 'Urgent', 'Present', 'B', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_passive`
--

CREATE TABLE `soal_passive` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_passive`
--

INSERT INTO `soal_passive` (`id_soal`, `soal`, `A`, `B`, `C`, `D`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'They canceled all flights because of fog. The passive form of the sentence is, because of fog…', 'All flights had canceled', 'All flights were canceled', 'All flights have been canceled', 'They be canceled', 'B', '', '2018-07-02', 'Y'),
(2, 'A well known architect is designing our new office. The passive form of the above sentence is, Our new office …… by a well known architect.', 'Design', ' Designed', 'Be designing', 'Is being designed', 'D', '', '2018-07-02', 'Y'),
(3, 'Jupiters four moons ……. through a telescope by Galileo.', 'Were first viewed', 'First viewed', 'Had been first viewed', 'Were being first viewed', 'A', '', '2018-07-18', 'Y'),
(4, 'They translated some old documents last week. What is the passive form of this sentence?', 'Some old documents are translated by them last wee', 'Some old documents have been translated by them la', ' Some old documents were being translated by them ', 'Some old documents were translated by them last we', 'D', '', '2018-07-02', 'Y'),
(5, 'The important email has been sent by my secretary. What is the active form of this sentence?', 'My secretary was sending the important email', 'My secretary sends the important email', 'My secretary is sending the important email', 'My secretary has sent the important email', 'D', '', '2018-07-02', 'Y'),
(6, 'We’ll be visiting our grandmother next week.  What is the passive form of this sentence?', 'Our grandmother will be being visited by us next w', 'Our grandmother will be visited by us next week.', 'Our grandmother would be visited by us next week.', ' Our grandmother would be being visited by us next', 'A', '', '2018-07-02', 'Y'),
(7, 'We can see many beautiful paintings in this exhibition. They were …. by a famous Indonesian painter.', 'Painting', 'Painted', ' Be Painting', 'Being painting', 'B', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `soal_peminatan`
--

CREATE TABLE `soal_peminatan` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `kunci` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal_peminatan`
--

INSERT INTO `soal_peminatan` (`id_soal`, `soal`, `A`, `B`, `C`, `D`, `kunci`, `gambar`, `tanggal`, `aktif`) VALUES
(1, 'Pencerminan suatu titik terhadap garis x = 3 dilanjutkan pencerminan terhadap garis x = 5, maka bayangan dari titik (2, 2) adalah...', '(7,2)', '(2,3)', '(3,6)', '(6,2)', 'D', '', '2018-07-02', 'Y'),
(2, 'Putaran sebesar + dengan pusat O dilanjutkan putaran sebesar + dengan pusat yang sama, bayangan dari titik (4, 5) adalah.....', '(5,4)', '(-4,5)', '(-5,4)', '(-4,-5)', 'C', '', '2018-07-02', 'Y'),
(3, 'ketika titik A(-1, 5, 4), B(2, -1, -2) dan C(p, -3, q) terletak pada satu garis lurus ,maka nilai (2p+q) adalah....', '3', '2', '1', '-1', 'B', '', '2018-07-18', 'Y'),
(4, 'Roni meminjam uang sebesar Rp. 1.000.000 di Bank dengan bunga majemuk 4 persen setahun. Jumlah pinjaman tersebut selama 10 tahun adalah...', 'Rp. 1.300.244', 'Rp. 1.400.000', 'Rp. 1.444.000', 'Rp. 1.480.244', 'D', '', '2018-07-02', 'Y'),
(5, 'Diketahui kubus ABCD.EFGH dengan rusuk 6 cm, titik P terletak pada perpanjangan CG sehingga CG = GP. Panjang proyeksi CP pada bidang BDP adalah....', '?14', '7?2', '8?2', '3?6', 'D', '', '2018-07-02', 'Y'),
(6, 'ketika A = {5, 4} , B = {2, 1} , dan C = {-5, 4} Maka panjang Vektor D = A + B – C adalah', '?85', '?125', '?135', '?145', 'D', '', '2018-07-02', 'Y'),
(7, 'Diketahui limas beraturan T.ABCD yang rusuknya 4 cm. Besar sinus sudut antara bidang TAD dan TBC adalah....', '1/3?7', '1/3?3', '2/3?3', '2/3?2', 'D', '', '2020-10-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kode_buku` varchar(25) NOT NULL,
  `nama_buku` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `size` int(11) NOT NULL,
  `ekstensi` varchar(25) NOT NULL,
  `berkas` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`kode_buku`, `nama_buku`, `title`, `size`, `ekstensi`, `berkas`) VALUES
('BG01', 'Materi Suhu Dan Kalor', 'Materi Suhu Dan Kalor.pdf', 977069, 'pdf', 'file/Materi Suhu Dan Kalor.pdf'),
('BG02', 'Materi Passive Voice', 'Materi Passive Voice.pdf', 472397, 'pdf', 'file/Materi Passive Voice.pdf'),
('BG03', 'Bahasa Indonesia Materi Bab Kritik Dan Esai', 'Bahasa Indonesia Materi Bab Kritik Dan esai.pdf', 1258507, 'pdf', 'file/Bahasa Indonesia Materi Bab Kritik Dan esai.pdf'),
('BG04', 'Modul Aljabar', 'Modul Aljabar.pdf', 1377508, 'pdf', 'file/Modul Aljabar.pdf'),
('BG05', 'Kimia Materi Struktur Atom', 'Kimia Materi Struktur Atom.pdf', 1104530, 'pdf', 'file/Kimia Materi Struktur Atom.pdf'),
('BG06', 'E Modul Job Application Letter', 'E Modul Job Application Letter.pdf', 1804667, 'pdf', 'file/E Modul Job Application Letter.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'profil.svg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'KENNANIEE', 'nanchannarong02@gmail.com', '$2y$10$q4bzwG0V9l6ZQZvN6//hDOFq89P2UCqQ/3XsdDoBvT8g0eF29g5P6', 'stella amelia', 'default.svg'),
(6, 'memel', 'ameliastella903@gmail.com', '$2y$10$ppJ07Sbk5uGJiBx5nnIKzeIwo7VgZObyKm8P8btBY0gqZc25gtGcO', 'stella amelia', 'default.svg'),
(7, 'lala', 'ameliastella903@gmail.com', '$2y$10$nj/F90ure4WYLJ/fm9fZSuH1C/ctSw.550NRqS42DZG2uqF/f7eVm', 'lala', 'profil.svg'),
(8, 'kawako', 'nanchannarong02@gmail.com', '$2y$10$olMebG5TazFrDDI.N2JugODwkYG7DokbGChjZP89rU0gcnr6mMTPu', 'kawa', 'default.svg'),
(9, 'rara', 'ameliastella903@gmail.com', '$2y$10$uUq38tecGwjKN43URKW.3..zBYTfXQoYnMqdzPBkb/6nnI8F1Cc3i', 'rara', 'default.svg'),
(10, 'amelia', 'ameliastella903@gmail.com', '$2y$10$h9uff7BOqDi9wbkpTAxBQuVyfnSSh82mzxIFZAOViFvQes/sd2742', 'amelia', 'profil.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `soal_aljabar`
--
ALTER TABLE `soal_aljabar`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_bangun`
--
ALTER TABLE `soal_bangun`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_complate`
--
ALTER TABLE `soal_complate`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_ide`
--
ALTER TABLE `soal_ide`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_job`
--
ALTER TABLE `soal_job`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_passive`
--
ALTER TABLE `soal_passive`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_peminatan`
--
ALTER TABLE `soal_peminatan`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `soal_aljabar`
--
ALTER TABLE `soal_aljabar`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soal_bangun`
--
ALTER TABLE `soal_bangun`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal_complate`
--
ALTER TABLE `soal_complate`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal_ide`
--
ALTER TABLE `soal_ide`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal_job`
--
ALTER TABLE `soal_job`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal_passive`
--
ALTER TABLE `soal_passive`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `soal_peminatan`
--
ALTER TABLE `soal_peminatan`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
