-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2.2
-- http://www.phpmyadmin.net
--
-- Máquina: mysql04.andreteste.hospedagemdesites.ws
-- Data de Criação: 06-Ago-2015 às 15:49
-- Versão do servidor: 5.6.21
-- versão do PHP: 5.3.3-7+squeeze26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `andreteste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao_de_credito`
--

CREATE TABLE IF NOT EXISTS `cartao_de_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(2) NOT NULL,
  `ano` varchar(10) NOT NULL,
  `mes` int(2) NOT NULL,
  `ano_fim` int(11) NOT NULL,
  `mes_fim` int(11) NOT NULL,
  `data_compra` date NOT NULL,
  `categoria` int(2) NOT NULL,
  `sub_categoria` int(2) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `type` int(1) NOT NULL,
  `parcela` varchar(10) NOT NULL,
  `p_total` int(3) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Extraindo dados da tabela `cartao_de_credito`
--

INSERT INTO `cartao_de_credito` (`id`, `usuario`, `ano`, `mes`, `ano_fim`, `mes_fim`, `data_compra`, `categoria`, `sub_categoria`, `descricao`, `type`, `parcela`, `p_total`, `valor`) VALUES
(1, 1, '2015', 7, 0, 0, '2014-11-30', 3, 0, 'Geladeira', 2, '07', 10, -184.87),
(2, 1, '', 0, 0, 0, '2014-12-06', 4, 23, 'Hospedagem', 1, '---', 0, -49.9),
(3, 1, '', 0, 0, 0, '2015-01-01', 5, 4, 'Net Flix', 1, '---', 0, -26.9),
(4, 1, '2015', 7, 0, 0, '2015-05-31', 3, 0, 'Calças FOREVER 21', 3, '', 0, -223.2),
(5, 1, '2015', 7, 0, 0, '2015-06-08', 10, 10, 'Perfume Dior - Dia dos Namorados', 2, '1', 2, -229.5),
(6, 1, '2015', 7, 0, 0, '2015-06-08', 11, 11, 'Anália Franco', 3, '', 0, -7),
(7, 1, '2015', 7, 0, 0, '2015-06-15', 5, 14, 'XXX - (EU + DU + DINHO)', 2, '1', 2, -340.15),
(8, 1, '2015', 8, 0, 0, '2015-06-08', 10, 10, 'Perfume Dior - Dia dos Namorados', 2, '2', 2, -229.5),
(9, 1, '2015', 8, 0, 0, '2015-06-15', 5, 14, 'XXX - (EU + DU + DINHO)', 2, '2', 2, -340.15),
(10, 1, '2015', 8, 0, 0, '2014-11-30', 3, 0, 'Geladeira', 2, '8', 10, -184.87),
(11, 1, '2015', 9, 0, 0, '2014-11-30', 3, 0, 'Geladeira', 2, '9', 10, -184.87),
(12, 1, '2015', 10, 0, 0, '2014-11-30', 3, 0, 'Geladeira', 2, '10', 10, -184.87),
(13, 1, '2015', 7, 0, 0, '0000-00-00', 2, 2, 'Mastercard', 2, '1', 3, -30),
(14, 1, '2015', 8, 0, 0, '0000-00-00', 2, 2, 'Mastercard', 2, '2', 3, -30),
(15, 1, '2015', 9, 0, 0, '0000-00-00', 2, 2, 'Mastercard', 2, '3', 3, -30),
(16, 1, '2015', 7, 0, 0, '0000-00-00', 5, 20, 'Divertidamente', 3, '', 0, -44.5),
(17, 1, '2015', 8, 0, 0, '2015-06-29', 11, 11, 'Est. Anália', 3, '', 0, -7),
(18, 1, '2015', 8, 0, 0, '2015-06-29', 7, 13, 'Celular Carmem', 3, '', 0, -54.1),
(19, 1, '2015', 8, 0, 0, '2015-07-05', 11, 11, 'Est. Anália', 3, '', 0, -9),
(20, 1, '2015', 8, 0, 0, '2015-07-05', 7, 13, 'Khelf Blusas', 2, '1', 4, -129.5),
(21, 1, '2015', 9, 0, 0, '2015-07-05', 7, 13, 'Khelf Blusas', 2, '2', 4, -129.5),
(22, 1, '2015', 10, 0, 0, '2015-07-05', 7, 13, 'Khelf Blusas', 2, '3', 4, -129.5),
(23, 1, '2015', 11, 0, 0, '2015-07-05', 7, 13, 'Khelf Blusas', 2, '4', 4, -129.5),
(24, 1, '2015', 8, 0, 0, '2015-07-10', 13, 13, 'Samcell - Notbook Ativ6', 2, '1', 3, -184.64),
(25, 1, '2015', 9, 0, 0, '2015-07-10', 13, 13, 'Samcell - Notbook Ativ6', 2, '2', 3, -184.64),
(26, 1, '2015', 10, 0, 0, '2015-07-10', 13, 13, 'Samcell - Notbook Ativ6', 2, '3', 3, -184.64),
(27, 1, '2015', 8, 2015, 9, '2015-07-14', 4, 25, 'Catho', 1, '', 0, -89.9),
(29, 1, '2015', 8, 0, 0, '2015-07-18', 5, 20, 'UC', 3, '', 0, -45.54),
(30, 1, '2015', 8, 0, 0, '2015-07-18', 11, 11, 'Est. Anália', 3, '', 0, -7),
(31, 1, '2015', 8, 0, 0, '2015-07-27', 4, 0, 'Alura - ASP.NET', 2, '1', 2, -150),
(32, 1, '2015', 9, 0, 0, '2015-07-27', 4, 0, 'Alura - ASP.NET', 2, '2', 2, -150),
(33, 1, '2016', 8, 0, 0, '2015-07-28', 4, 29, 'Alura - Pacote Premium ', 2, '12', 12, -75),
(34, 1, '2015', 9, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '1', 12, -75),
(35, 1, '2015', 10, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '2', 12, -75),
(36, 1, '2015', 11, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '3', 12, -75),
(37, 1, '2015', 12, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '4', 12, -75),
(38, 1, '2016', 1, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '5', 12, -75),
(39, 1, '2016', 2, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '6', 12, -75),
(40, 1, '2016', 3, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '7', 12, -75),
(41, 1, '2016', 4, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '8', 12, -75),
(42, 1, '2016', 5, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '9', 12, -75),
(43, 1, '2016', 6, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '10', 12, -75),
(44, 1, '2016', 7, 0, 0, '0000-00-00', 4, 29, 'Alura - Pacote Premium ', 2, '11', 12, -75),
(45, 1, '2015', 8, 0, 0, '0000-00-00', 11, 11, 'Est. Anália', 3, '', 0, -7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Salário'),
(2, 'Taxa'),
(3, 'Dizimo'),
(4, 'Investimentos'),
(5, 'Lazer'),
(6, 'Estudo'),
(7, 'Acerto'),
(8, 'Assinatura'),
(9, 'Poupança'),
(10, 'Presente'),
(11, 'Veículos'),
(12, 'Ajuste'),
(13, 'Outros'),
(14, 'Compras');

-- --------------------------------------------------------

--
-- Estrutura da tabela `geral`
--

CREATE TABLE IF NOT EXISTS `geral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(100) NOT NULL,
  `mes` int(100) NOT NULL,
  `receita` float NOT NULL,
  `despesas` float NOT NULL,
  `salario` float NOT NULL,
  `cartao` float NOT NULL,
  `poupanca` float NOT NULL,
  `poupanca_final` float NOT NULL,
  `dizimo` float NOT NULL,
  `saldo_mes` float NOT NULL,
  `saldo_final` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=49 ;

--
-- Extraindo dados da tabela `geral`
--

INSERT INTO `geral` (`id`, `ano`, `mes`, `receita`, `despesas`, `salario`, `cartao`, `poupanca`, `poupanca_final`, `dizimo`, `saldo_mes`, `saldo_final`) VALUES
(1, 2015, 6, 0, 0, 2918, 1518.13, 0, 18.23, 291.8, 103.52, 1112.74),
(2, 2015, 7, 0, 0, 2334.84, 1136.02, 1000, 1015.98, 193.4, 67.31, 1180.05),
(3, 2015, 8, 3695.84, 3461.76, 2370.84, 1545, 1000, 2015.98, 232.337, 222.4, 1402.45),
(4, 2015, 9, 0, 0, 2170.84, 920.71, 800, 2815.98, 212.337, 283.22, 1685.67),
(5, 2015, 10, 0, 0, 2170.84, 664.81, 1000, 3815.98, 212.337, 264.117, 1877.6),
(6, 2015, 11, 0, 0, 2956.84, 295.3, 1774.1, 5590.08, 290.937, 567.687, 2444.54),
(7, 2015, 12, 0, 0, 2818.84, 185.8, 1691.3, 7384.05, 277.137, 445.027, 2889.57),
(9, 2012, 1, 0, 0, 0, 0, 0, 0, 0, 0, -636),
(10, 2012, 2, 0, 0, 875, -420, 100, 100, 87, 278, -358.74),
(11, 2012, 3, 0, 0, 845.77, 411.12, 220, 320, 84.5, -260.25, -618.99),
(12, 2012, 4, 0, 0, 878.77, 355.85, 232, 552, 87.8, 16.39, -602.6),
(13, 2012, 5, 0, 0, 937.59, 348.07, 220, 772, 93.7, 43.32, -559.28),
(14, 2012, 6, 0, 0, 938.2, 311.93, 226, 998, 93.8, 87.99, -471.29),
(15, 2012, 7, 0, 0, 1316.8, 799.35, 238, 1236, 131.6, 10.84, -460.45),
(16, 2012, 8, 0, 0, 987, 566.67, 220, 1456, 98.7, 86.52, -373.93),
(17, 2012, 9, 0, 0, 879.07, 751.15, 232, 1688, 87.9, 383.19, 9.29),
(18, 2012, 10, 0, 0, 965, 1260.26, 100, 1788, 96.5, 15.65, 24.91),
(19, 2012, 11, 0, 0, 1491.66, 1198.05, -1788, 0, 149.1, 201.31, 226.22),
(20, 2012, 12, 0, 0, 1370.46, 1237.61, 0, 0, 137, 245.78, 472),
(21, 2013, 1, 0, 0, 987, 515.06, 0, 0, 98.7, 94.05, 519.45),
(22, 2013, 2, 0, 0, 1550.11, 631.66, 0, 0, 155, 31.56, 551.01),
(23, 2013, 3, 0, 0, 1849, 731.56, 0, 0, 184.9, 21.07, 572.28),
(24, 2013, 4, 0, 0, 1599, 1187.51, 0, 0, 159.9, 119.22, 692),
(25, 2013, 5, 0, 0, 1113, 602.19, 0, 0, 111.3, 3.64, 695.64),
(26, 2013, 6, 0, 0, 1222.48, 935.69, 0, 0, 122.24, -420.66, 274.98),
(27, 2013, 7, 0, 0, 1377.42, 935.69, 0, 0, 137.7, -205.27, 69.71),
(28, 2013, 8, 0, 0, 1252, 411.69, 0, 0, 125.2, 353.88, 423.59),
(29, 2013, 9, 0, 0, 1307, 425.69, 0, 0, 130.7, -109.59, 314),
(30, 2013, 10, 0, 0, 1372.18, 480.69, 0, 0, 137.2, 134.5, 448.5),
(31, 2013, 11, 0, 0, 2119.86, 476.49, 735, 735, 211.9, 151.57, 570),
(32, 2013, 12, 0, 0, 1999.21, 506.69, 607, 1342.32, 199.9, -89.2, 480.8),
(33, 2014, 1, 0, 0, 1382.94, 371.33, 507.08, 1849.4, 138.2, -273.21, 207.59),
(34, 2014, 2, 0, 0, 1821, 820.23, 311.32, 2160.72, 182.1, -22.05, 185.54),
(35, 2014, 3, 0, 0, 1508, 420.43, 311.17, 2471.89, 150.8, -29.2, 156.34),
(36, 2014, 4, 0, 0, 3409, 623.55, 1723.27, 4198.16, 340.9, 129.84, 170.19),
(37, 2014, 5, 0, 0, 1119, 385.37, -478.02, 3720.14, 111.9, 141.05, 311.34),
(38, 2014, 6, 0, 0, 1727.44, -780, 320.63, 4040.77, 1727.44, -55.32, 256.02),
(39, 2014, 7, 0, 0, 1639.37, 541.16, -976.85, 3063.92, 163.9, 10.77, 266.79),
(40, 2014, 8, 0, 0, 1778.76, 198, 374.27, 3438.19, 177.8, 2.4, 269.19),
(41, 2014, 9, 0, 0, 2733, 1148.82, 20.45, 3458.64, 273.3, 100, 369.19),
(42, 2014, 10, 0, 0, 4465, 336, 2764.55, 6223.19, 446.5, 0.99, 370.18),
(43, 2014, 12, 0, 0, 2450.41, 2119.55, 23, 7329.86, 245, 45.66, 423),
(44, 2015, 1, 0, 0, 2694, 798.85, -7311.63, 18.23, 269.4, 15.8, 438.45),
(45, 2015, 2, 0, 0, 2229, 1139.71, 0, 18.23, 222.9, 165.3, 603.75),
(46, 2015, 3, 0, 0, 2438, 1493.52, 0, 18.23, 243.8, 209, 812.75),
(47, 2015, 4, 0, 0, 3200, 1842.52, 0, 18.23, 320, 24.55, 837.3),
(48, 2015, 5, 0, 0, 2241.31, 806.67, 0, 18.23, 224, 172.19, 1009.49);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_categoria`
--

CREATE TABLE IF NOT EXISTS `sub_categoria` (
  `id_sub_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(2) NOT NULL,
  `nome_sub_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_sub_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `sub_categoria`
--

INSERT INTO `sub_categoria` (`id_sub_categoria`, `categoria`, `nome_sub_categoria`) VALUES
(0, 0, ''),
(1, 1, 'Bonetti'),
(2, 2, 'MAX CONTA'),
(4, 5, 'Assinatura'),
(5, 7, 'Empréstimo'),
(6, 1, 'Site'),
(9, 8, 'Celular'),
(10, 10, 'Mari'),
(11, 11, 'Estacionamento'),
(12, 7, 'Mari Crédito'),
(13, 7, 'Mari Débito'),
(14, 5, 'Baladas-Raves-Festas'),
(15, 7, 'Dinho'),
(16, 7, 'Duda'),
(17, 12, 'Transferência Mês'),
(18, 5, 'Lanchonetes-Restaurantes'),
(19, 13, 'Manutenção Equipamentos'),
(20, 5, 'Cinema'),
(21, 14, 'Farmácia'),
(22, 2, 'Anuidade'),
(23, 4, 'Sites'),
(24, 14, 'Produtos Esportivos'),
(25, 4, 'Vagas de Emprego'),
(26, 5, 'M'),
(27, 7, 'Site - Acerto'),
(28, 7, 'Site - Acerto'),
(29, 4, 'Cursos'),
(30, 12, 'Ajuste C-C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacoes`
--

CREATE TABLE IF NOT EXISTS `transacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `ano` int(4) NOT NULL,
  `mes` int(2) NOT NULL,
  `dia` int(2) NOT NULL,
  `categoria` int(2) NOT NULL,
  `sub_categoria` int(2) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `type` int(2) NOT NULL,
  `status` int(11) NOT NULL,
  `parcela` varchar(20) NOT NULL,
  `p_total` int(3) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Extraindo dados da tabela `transacoes`
--

INSERT INTO `transacoes` (`id`, `usuario`, `ano`, `mes`, `dia`, `categoria`, `sub_categoria`, `descricao`, `type`, `status`, `parcela`, `p_total`, `valor`) VALUES
(1, '1', 2015, 9, 6, 1, 1, '', 1, 0, '', 0, 660.37),
(2, '1', 2015, 8, 5, 2, 2, '', 1, 0, '', 0, -34),
(3, '1', 2015, 8, 10, 7, 5, 'Mãe - Poupança', 1, 0, '', 0, 160),
(4, '1', 2015, 7, 10, 1, 6, 'Jobara - Manutenção', 1, 0, '', 0, 50),
(5, '1', 2015, 8, 20, 1, 1, 'Vale', 1, 0, '', 0, 666),
(6, '1', 2015, 8, 26, 8, 9, 'VIVO', 1, 0, '', 0, -98.1),
(7, '1', 2015, 7, 8, 7, 12, 'Geladeira', 2, 0, '8', 13, 120),
(9, '1', 2015, 7, 23, 7, 12, 'Americana Ingressos 55/85', 3, 0, '', 0, 55),
(10, '1', 2015, 8, 31, 1, 6, 'Manutenção - Veromath 07-2015', 3, 0, '', 0, 200),
(12, '1', 2015, 7, 0, 7, 5, 'Ygor - Hotel', 4, 0, '2', 2, 200),
(13, '1', 2015, 7, 31, 1, 6, 'Manutenção - Bonetti ', 1, 0, '', 0, 100),
(14, '1', 2015, 8, 31, 1, 1, 'Vale Transporte', 1, 0, '', 0, 147),
(15, '1', 2015, 7, 13, 7, 12, 'Forever 21', 3, 0, '1', 2, 100),
(16, '1', 2015, 7, 0, 1, 6, 'Desenvolvimento - CraneTech', 4, 0, '', 0, 1250),
(17, '1', 2015, 7, 0, 1, 6, 'Desenvolvimento - La No Parque', 4, 0, '', 0, 1500),
(18, '1', 2015, 7, 23, 10, 10, 'Sony Vaio ', 3, 0, '12', 12, 145),
(19, '1', 2015, 8, 20, 7, 12, 'Forever 21', 2, 0, '2', 2, 110),
(20, '1', 2015, 8, 20, 7, 12, 'Geladeira', 2, 0, '9', 12, 110),
(21, '1', 2015, 8, 20, 7, 12, 'Hotel Americana', 2, 0, '2', 2, 70),
(22, '1', 2015, 7, 11, 7, 15, 'Dinho XXX ', 3, 0, '1', 2, 110),
(23, '1', 2015, 7, 6, 7, 16, 'Duda XXX', 2, 0, '1', 2, 110),
(25, '1', 2015, 8, 10, 7, 15, 'Dinhu XXX', 2, 0, '2', 2, 110),
(26, '1', 2015, 8, 10, 7, 16, 'Duda XXX', 2, 0, '2', 2, 110),
(27, '1', 2015, 9, 21, 7, 12, 'Geladeira', 2, 0, '10', 12, 110),
(28, '1', 2015, 10, 20, 7, 12, 'Geladeira', 2, 0, '11', 12, 110),
(29, '1', 2015, 11, 20, 7, 12, 'Geladeira', 2, 0, '12', 12, 110),
(31, '1', 2015, 11, 30, 1, 1, '13º Salário', 2, 0, '1', 2, 786),
(32, '1', 2015, 12, 21, 1, 1, '13º Salário', 2, 0, '2', 2, 648),
(33, '1', 2015, 7, 1, 12, 17, 'Junho -> Julho', 3, 0, '', 0, -350),
(34, '1', 2015, 7, 2, 7, 12, 'Vaio 11/12', 3, 0, '', 0, 145),
(35, '1', 2015, 7, 7, 7, 12, 'Roupão', 3, 0, '', 0, 85),
(36, '1', 2015, 7, 2, 7, 12, 'Moto X 12/12', 3, 0, '', 0, 55),
(37, '1', 2015, 7, 1, 5, 18, 'Mc Donald''s', 3, 0, '', 0, -54),
(38, '1', 2015, 7, 1, 11, 11, 'Est. Extra', 3, 0, '', 0, -3),
(39, '1', 2015, 7, 6, 1, 6, 'Desenvolvimento - Balanças 6/6', 3, 0, '', 0, 264),
(40, '1', 2015, 7, 5, 5, 18, 'América', 3, 0, '', 0, -80.9),
(41, '1', 2015, 7, 4, 11, 11, 'Est. Avi Cena', 3, 0, '', 0, -18),
(42, '1', 2015, 7, 7, 13, 0, 'Samcell - Análise Notbook ', 3, 0, '', 0, -20),
(43, '1', 2015, 7, 5, 11, 11, 'Est. Anália', 3, 0, '', 0, -8),
(44, '1', 2015, 7, 4, 5, 18, 'Lanchonete CEMA', 3, 0, '', 0, -4),
(45, '1', 2015, 7, 5, 5, 20, 'UCI Anália Franco - Meu Passado me Condena 2', 3, 0, '', 0, -22),
(46, '1', 2015, 7, 7, 14, 21, 'Desodorante', 3, 0, '', 0, -14),
(47, '1', 2015, 7, 8, 12, 10, 'Depósito', 3, 0, '', 0, 200),
(48, '1', 2015, 7, 8, 12, 10, 'Depósito', 3, 0, '', 0, -200),
(55, '1', 2015, 8, 31, 7, 5, 'Ygor Pousada 1/2', 3, 0, '', 0, 250),
(56, '1', 2015, 7, 0, 7, 5, 'Ygor Pousada 2/2', 4, 0, '', 0, 250),
(57, '1', 2015, 8, 31, 1, 6, 'Manutenção - Veromath 06-2015', 3, 0, '', 0, 200),
(58, '1', 2015, 7, 30, 7, 5, 'Shutterstock - Gerensys', 3, 0, '', 0, 350),
(59, '1', 2015, 7, 11, 5, 18, 'Café da Manhã - Requinte', 3, 0, '', 0, -55.8),
(60, '1', 2015, 8, 20, 7, 7, 'Blusas Khelf ', 2, 0, '1', 4, 100),
(61, '1', 2015, 9, 20, 7, 7, 'Blusas Khelf ', 2, 0, '2', 4, 100),
(62, '1', 2015, 10, 20, 7, 7, 'Blusas Khelf ', 2, 0, '3', 4, 100),
(63, '1', 2015, 11, 20, 7, 7, 'Blusas Khelf ', 2, 0, '4', 4, 100),
(67, '1', 2015, 8, 30, 1, 6, 'Manutenção - Balanças', 1, 0, '', 0, 100),
(68, '1', 2015, 7, 14, 14, 24, 'Bola Futsal', 3, 0, '', 0, -20),
(69, '1', 2015, 7, 14, 5, 18, 'Mc Donald''s', 3, 0, '', 0, -28),
(71, '1', 2015, 7, 15, 5, 26, 'Lush', 3, 0, '', 0, -287),
(72, '1', 2015, 8, 31, 7, 27, 'Fotos  - Shutterstock', 3, 0, '', 0, 150),
(73, '1', 2015, 8, 20, 7, 12, 'Khelf Casaco', 2, 0, '1', 4, 100),
(74, '1', 2015, 9, 20, 7, 12, 'Khelf Casaco', 2, 0, '2', 4, 100),
(75, '1', 2015, 10, 20, 7, 12, 'Khelf Casaco', 2, 0, '3', 4, 100),
(76, '1', 2015, 11, 20, 7, 12, 'Khelf Casaco', 2, 0, '4', 4, 100),
(77, '1', 2015, 7, 18, 5, 18, 'América - Sobremesa', 3, 0, '', 0, -55.7),
(78, '1', 2015, 7, 20, 1, 1, 'Vale', 3, 0, '', 0, 666),
(79, '1', 2015, 7, 20, 8, 9, 'VIVO', 3, 0, '', 0, -98.1),
(80, '1', 0, 0, 0, 7, 21, 'Mãe - Poupança', 4, 0, '', 0, 8000),
(81, '1', 2015, 8, 20, 7, 12, 'Americana Ingressos 85/85', 3, 0, '', 0, 30),
(82, '1', 2015, 8, 20, 7, 12, 'Hotel Americana', 3, 0, '', 0, 70),
(83, '1', 2015, 7, 25, 5, 18, 'America - Mooca', 3, 0, '', 0, -126),
(84, '1', 2015, 8, 20, 7, 12, 'Celular CAR', 2, 0, '1', 10, 55),
(85, '1', 2015, 9, 20, 7, 12, 'Celular CAR', 2, 0, '2', 10, 55),
(86, '1', 2015, 10, 20, 7, 12, 'Celular CAR', 2, 0, '3', 10, 55),
(87, '1', 2015, 11, 20, 7, 12, 'Celular CAR', 2, 0, '4', 10, 55),
(88, '1', 2015, 12, 20, 7, 12, 'Celular CAR', 2, 0, '5', 10, 55),
(89, '1', 2016, 1, 20, 7, 12, 'Celular CAR', 2, 0, '6', 10, 55),
(90, '1', 2016, 2, 20, 7, 12, 'Celular CAR', 2, 0, '7', 10, 55),
(91, '1', 2016, 3, 20, 7, 12, 'Celular CAR', 2, 0, '8', 10, 55),
(92, '1', 2016, 4, 20, 7, 12, 'Celular CAR', 2, 0, '9', 10, 55),
(93, '1', 2016, 5, 20, 7, 12, 'Celular CAR', 2, 0, '10', 10, 55),
(94, '1', 2015, 7, 31, 1, 1, 'Vale Transporte', 3, 0, '', 0, 147),
(98, '1', 2015, 8, 1, 12, 17, 'Julho > Agosto', 3, 0, '', 0, -300),
(100, '1', 0, 0, 12, 1, 6, 'Manutenção - Veromath', 1, 0, '', 0, 200),
(101, '1', 2015, 8, 1, 5, 18, 'Japones - Vl.Matilde', 3, 0, '', 0, -134),
(102, '1', 2015, 8, 2, 5, 18, 'Mc Donald''s', 3, 0, '', 0, -47.5),
(103, '1', 2015, 7, 30, 7, 5, 'Emprestimo - mãe', 3, 0, '', 0, 160),
(104, '1', 2015, 7, 31, 12, 17, 'Julho > Agosto', 3, 0, '', 0, 300),
(105, '1', 2015, 7, 31, 12, 17, 'Excel', 3, 0, '', 0, -539.03),
(107, '1', 2015, 7, 4, 1, 1, '', 3, 0, '', 0, 707.84),
(108, '1', 2015, 8, 3, 5, 18, 'Barrada do Valdir', 3, 0, '', 0, -24.15),
(109, '1', 2015, 8, 4, 5, 18, 'Açai - Caprichosa', 3, 0, '', 0, -10.5),
(110, '1', 2015, 8, 5, 1, 1, '', 3, 0, '', 0, 660);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_usuario`, `usuario`, `senha`) VALUES
(1, 'André Bonetti', 'andrebonetti2@gmail.com', '13ef0066ced516d68fc0c308f174cfb5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
