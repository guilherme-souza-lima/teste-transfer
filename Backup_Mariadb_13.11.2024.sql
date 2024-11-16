-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           11.3.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para banco2.0
CREATE DATABASE IF NOT EXISTS `banco2.0` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `banco2.0`;

-- Copiando estrutura para tabela banco2.0.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `data_orcamento` varchar(50) DEFAULT NULL,
  `orcamento` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(55) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `descricao_projeto` varchar(55) DEFAULT NULL,
  `carga_horária` varchar(20) DEFAULT NULL,
  `valor_hora` varchar(50) DEFAULT NULL,
  `valor_material` varchar(40) DEFAULT NULL,
  `prazo` varchar(50) DEFAULT NULL,
  `valor_final` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`orcamento`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela banco2.0.clientes: ~79 rows (aproximadamente)
DELETE FROM `clientes`;
INSERT INTO `clientes` (`data_orcamento`, `orcamento`, `cliente`, `endereco`, `telefone`, `descricao_projeto`, `carga_horária`, `valor_hora`, `valor_material`, `prazo`, `valor_final`) VALUES
	('11/04/2024', 11, 'guilherme', 'rua mario', '17 99122-2343', 'peça', '9', '89', '890', '02/05/2024', '1691'),
	('11/04/2024', 12, 'GUILHERME SALMAZZO', 'RUA MARIO, 456 - CENTRO', '(17) 91322-3535', 'PEÇA PARA FUSCA 78', '8', '80', '680.9', '02/05/2024', '1320.9'),
	('12/04/2024', 13, 'GUILHERME', 'RUA MARIO 123', '17 99999-0909', 'PEÇA FUSCA', '9', '90', '890.9', '02/05/2024', '1700.9'),
	('12/04/2024', 14, 'GUILHERME', 'RUA MARIO, 345', '(17) 99233-4545', 'PEÇA GOLF', '9', '90', '890.65', '02/05/2024', '1700.65'),
	('12/04/2024', 17, 'GUILHERME WOINER SALMAZZO', 'RUA SEBASTIÃO FIOREZI, 543', '(17) 99212-2390', 'PEÇA PARA GOLF AÇO90', '9', '60', '456.9', '02/05/2024', '996.9'),
	('12/04/2024', 18, 'GUILHERME', 'RUA MARIO 23', '17 99999-9090', 'PEÇA GOL G3', '6', '90', '675.9', '02/05/2024', '1215.9'),
	('12/04/2024', 19, 'GUILHERME', 'RUA MARIO 3', '17 99999-0000', 'PEÇA', '8', '67', '364', '02/05/2024', '900'),
	('12/04/2024', 20, 'GUILERME', 'RUA 3', '17', 'PEÇA', '9', '89', '90', '02/05/2024', '891'),
	('12/04/2024', 21, 'GUILHERME', 'RUA 4', '17', 'PEÇA GOL', '9', '89', '98', '02/05/2024', '899'),
	('12/04/2024', 22, 'GUILHERME', 'RUA MARIO 3', '17 99999-9090', 'PEÇA GOL', '9', '89', '890.9', '02/05/2024', '1691.9'),
	('12/04/2024', 23, 'GUILHERME', 'RUA MARIO 345', '17 99999-9090', 'PEÇA FUSCA', '9', '90', '987', '02/05/2024', '1797'),
	('12/04/2024', 24, 'GUILHERME WOINER SALMAZZO', 'RUA SEBASTIÃO FIOREZI, 546 - CENTRO', '(17) 99133-1790', 'PEÇA PARA FUSCA AÇO60 BLOCO INOX90', '9', '90', '655.99', '02/05/2024', '1465.99'),
	('13/04/2024', 25, 'Gustavo', 'Rua Mario 342 - Centro', '(17) 99123-2301', 'Encher Tornear  motor elétrico 200CV', '4', '180', '30', '17/04/2024', '750'),
	('30/04/2024', 26, 'Guilherme Salmazzo', 'Rua Mario 3 - centro', '17 99922233', 'Peça motor gol', '6', '80.9', '789', '02/05/2024', '1274.4'),
	('07/05/2024', 27, 'Guilherme Teste', 'Rua Jose Arroyo 48', '17 99122 9090', 'Peça para ignição', '8', '60', '780', '15/05/2024', '1260'),
	('07/05/2024', 28, 'Guilherme novo', 'Rua Jose Arroyo 48', '(17)3361 6933', 'Peça para Fusca Metal 80', '9', '89', '890', '15/05/2024', '1691'),
	('07/05/2024', 29, 'Guilherme Full', 'Rua Jose Arroyo 48', '1733616933', 'Peça para fusca Azul', '6', '45', '565', '15/05/2024', '835'),
	('07/05/2024', 30, 'Guilherme Power', 'Rua Jose Arroyo 48', '17991229090', 'Capo de Fusca', '30', '50', '345', '18/05/2024', '1845'),
	('07/05/2024', 31, 'Guilherme Fast', 'Rua Jose Arroyo 48', '17991229090', 'Fusca preto lataria', '9', '78', '890', '20/05/2024', '1592'),
	('07/05/2024', 32, 'Guilherme Bom', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '7', '56', '890', '15/05/2024', '1282'),
	('07/05/2024', 33, 'Gustavo Full', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '7', '56', '890', '15/05/2024', '1282'),
	('07/05/2024', 34, 'Guilherme Salvador', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '7', '56', '890', '15/05/2024', '1282'),
	('08/05/2024', 35, 'Marcio da Bike', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '7', '56', '890', '15/05/2024', '1282'),
	('08/05/2024', 36, 'Vishnu', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 37, 'Guilherme executa', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 38, 'Guilherme Retorna', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 39, 'Guilherme Retorna', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 40, 'Guilherme Retorna', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 41, 'Guilherme Retorna', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 42, 'Guilherme Ret', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 43, 'Guilherme Ret', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 44, 'Guilherme Retorno', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 45, 'Guilherme Retorno', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 46, 'Guilherme Retorno', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 47, 'Guilherme Pop', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 48, 'Guilherme Ret', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 49, 'Guilherme Teste', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 50, 'Guilherme Ret', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 51, 'Guilherme', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('09/05/2024', 52, 'Guilherme az', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('10/05/2024', 53, 'Gui', 'Rua Jose Arroyo 48', '17991229090', 'Peça para Carro Gol', '8', '73', '890', '15/05/2024', '1474'),
	('14/05/2024', 54, 'Guilherme Final', 'Rua teste 123', '17 99141 5252', 'Peça Volvo', '5', '80', '890', '25/05/2024', '1290'),
	('16/05/2024', 55, 'Guilherme final versão', 'Rua Teste 888', '(17) 99185-1258', 'Peça para fusca 85', '9', '80', '652.5', '03/06/2024', '1372.5'),
	('16/05/2024', 56, 'Gustavo Silva', 'Rua Antonio Borges 835', '(17)99185-2574', 'Peça para Fusca 85 Metal 90', '9', '75', '850', '03/06/2024', '1525'),
	('16/05/2024', 57, 'Guilherme', 'aadads', '17 99999 9999', 'teste', '9', '90', '950', '16/05/2024', '1760'),
	('20/05/2024', 58, 'Gui Teste 1', 'Rua Teste 854', '17 99855-8587 ', 'Peça Fusca Marrom', '8', '89', '856', '03/06/2024', '1568'),
	('22/05/2024', 59, 'Guilherme Salmazzo', 'Rua Mario Fernandes 898 - Centro', '(17) 99852-5471', 'Peça motor Honda Civic Ref1580 ', '9', '90', '790', '03/06/2024', '1600'),
	('22/05/2024', 60, 'Gustavo Santos', 'Rua Antonio Borges 45 - Centro', '(17)99122-8910', 'Peça para motor fusca 89 Ref129', '8', '90', '180', '15/06/2024', '900'),
	('23/05/2024', 61, 'Gustavo Henrique Souza', 'Rua: Mario Santos 465 - Centro', '(17) 99122-6768', 'Encher Tornear motor elétrico 220CV', '9', '90', '768.9', '17/05/2024', '1578.9'),
	('23/05/2024', 62, 'Gustavo Henrique Souza', 'Rua: Mario Santos 574 - Centro', '(17) 99122-6768', 'Encher Tornear motor elétrico 220CV', '9', '90', '687.9', '16/05/2024', '1497.9'),
	('20/08/2024', 63, 'Guilherme Mct', 'Rua Mario 120 Centro', '(17)99140-3250', 'Peça para parachoque', '8', '80', '320', '15/09/2024', '960'),
	('22/08/2024', 64, 'Guilherme Mct', 'Rua Mario Teste 2', '(17)99144 2390', 'Peça Motor', '8', '80', '250', '12/09/2024', '890'),
	('22/08/2024', 65, 'Guilherme Mct', 'Rua Sem Saida, 222 - Centro', '(17)99122 3244', 'Peça Motor Fusca', '8', '45', '786', '12/09/2024', '1146'),
	('22/08/2024', 66, 'Guilherme Mct', 'Rua Sem saida', '17 00909090', 'Peça motor', '8', '90', '90', '12/05/2024', '810'),
	('22/08/2024', 67, 'Guilherme Mct', 'Rua', '17 99999 9999', 'Peça Fusca', '8', '90', '990', '12/05/2024', '1710'),
	('23/09/2024', 68, 'Guilherme MCT', 'Rua teste', '17 99122-2344', 'TEste', '8', '80', '90', '21/12/2024', '730'),
	('23/09/2024', 69, 'Guilherme MCT', 'Rua teste 34', '17 99988 0909', 'Teste', '8', '90', '234', '12/09/2024', '954'),
	('23/09/2024', 70, 'Guilherme MCT', 'Rua Trinta 23', '17 99887 9090', 'Teste bobina', '9', '80', '890', '20/12/2024', '1610'),
	('23/09/2024', 71, 'Guilherme MCT', 'Rua Mario', '17 99898 0909', 'Bobina', '9', '89', '675', '12/12/2024', '1476'),
	('23/09/2024', 72, 'Guilherme MCT', 'Rua Mario 23', '12 99999 9999', 'Bobina', '3', '89', '132', '12/12/2024', '399'),
	('23/09/2024', 73, 'Guilherme MCT', 'Rua Mario 33', '17 99999 9999', 'Bobina', '8', '90', '989', '12/12/2024', '1709'),
	('23/09/2024', 74, 'Guilherme MCT', 'Rua Mario 23', '12 55555 5555', 'Teste Bobina', '8', '89', '765', '12/12/2024', '1477'),
	('23/09/2024', 75, 'Guilherme MCT', 'Rua Mario', '17 99999 9999', 'Teste', '9', '89', '897', '12/12/2024', '1698'),
	('23/09/2024', 76, 'Guilherme MCT', 'Rua Mario 33', '17 99999 0909', 'Bobina', '6', '87', '878', '12/12/2024', '1400'),
	('23/09/2024', 77, 'Guilherme MCT', 'Rua Mario 22', '17 99989 9090', 'Teste Bobina', '8', '86', '868', '12/12/2024', '1556'),
	('23/09/2024', 78, 'Guilherme MCT', 'Rua Mario 111', '17 99889 9272', 'Bobina', '9', '8', '87', '12/12/2024', '159'),
	('24/09/2024', 79, 'Guilherme Salmazzo', 'Rua Mario Celso 45', '17 99858 8989', 'Peça para Fusca', '4', '80', '425', '12/10/2024', '745'),
	('24/09/2024', 80, 'Rodolfo Mantelli', 'Rua Antonio Nunes 654', '17 99741-9999', 'Parachoque Celta', '8', '100', '552', '12/10/2024', '1352'),
	('24/09/2024', 81, 'Guilherme Salmazzo', 'Rua Mario 774', '17 99444-1512', 'Bobina Carro', '8', '52', '281', '12/10/2024', '697'),
	('24/09/2024', 82, 'Cleber Sartori', 'Rua Gatos de botas 55', '17 99962-1515', 'Peça para Gol G4', '8', '100', '432', '10/10/2024', '1232'),
	('24/09/2024', 83, 'Vishnu', 'Rua TEste', '17 9999 -8887', 'Peça bobina', '8', '100', '250', '12/10/2024', '1050'),
	('26/09/2024', 84, 'Guilherme Salmazzo', 'Rua Mario 58 - Centro', '17 99552-0000', 'Peça para motor 1.0', '8', '85', '149', '12/10/2024', '829'),
	('26/09/2024', 85, 'Guilherme Salmazzo', 'Rua Mario Celso 22', '17 99952-0000', 'Peça para moto 150c', '8', '90', '169', '12/10/2024', '889'),
	('02/10/2024', 87, 'Guilherme Salmazzo', 'Rua Mario 524', '17 99144 8888', 'Peça para Gol G5', '8', '80', '856', '12/10/2024', '1496'),
	('02/10/2024', 88, 'Marcio Ferro', 'Rua  Antonio 23', '17 99998 8888', 'Peça', '8', '89', '900', '12/10/2024', '1612'),
	('03/10/2024', 89, 'Cleber Sartori', 'Rua do Gatil 22', '17 99999 9999', 'Peça para carro', '8', '89', '354', '12/11/2024', '1066'),
	('04/10/2024', 90, 'Guilherme Salmazzo', 'Rua Mario 55', '17 99199 9999', 'Peça para carro 1.0', '8', '100', '252', '12/10/2024', '1052'),
	('04/10/2024', 92, 'Guilherme Salmazzo', 'Rua Mario 444', '17 99999 9090', 'Peça carro', '9', '89', '887', '12/10/2024', '1688'),
	('10/10/2024', 93, 'dsdsd', '', '', '', '0', '0', '0', '', '0'),
	('10/10/2024', 94, '', '', '', '', '0', '0', '0', '', '0'),
	('10/10/2024', 95, 'Vishnu', 'Rua Mario', '17 9999 1110', 'Peça', '8', '80', '890', '11/10/2024', '1530');

-- Copiando estrutura para tabela banco2.0.orcamento
CREATE TABLE IF NOT EXISTS `orcamento` (
  `numeroOrcamento` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`numeroOrcamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela banco2.0.orcamento: ~0 rows (aproximadamente)
DELETE FROM `orcamento`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
