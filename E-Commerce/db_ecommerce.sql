-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Set-2024 às 21:33
-- Versão do servidor: 8.0.32
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_ecomerce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa_11`
--

CREATE TABLE `caixa_11` (
  `A11_id` int NOT NULL,
  `A20_id` int NOT NULL,
  `A29_id` int NOT NULL,
  `A11_numeroCaixa` char(40) NOT NULL,
  `A11_preferencial` tinyint(1) DEFAULT NULL,
  `A11_rapido` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo_30`
--

CREATE TABLE `cargo_30` (
  `A30_id` int NOT NULL,
  `A30_nome` varchar(255) NOT NULL,
  `A30_setor` int NOT NULL,
  `A30_oficio` varchar(255) NOT NULL,
  `A30_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cargo_30`
--

INSERT INTO `cargo_30` (`A30_id`, `A30_nome`, `A30_setor`, `A30_oficio`, `A30_descricao`) VALUES
(1, 'Gerente de Projetos', 1, 'Gerenciamento', 'Responsável pela coordenação e planejamento de projetos.'),
(2, 'Analista de Sistemas', 2, 'Tecnologia da Informação', 'Analisa e desenvolve sistemas para atender às necessidades da empresa.'),
(3, 'Assistente Administrativo', 3, 'Administração', 'Auxilia nas tarefas administrativas e no gerenciamento de documentos.'),
(4, 'Desenvolvedor Backend', 2, 'Tecnologia da Informação', 'Desenvolve e mantém a parte de servidor de aplicações web.'),
(5, 'Designer Gráfico', 4, 'Marketing', 'Cria designs e materiais gráficos para campanhas e comunicações.'),
(6, 'Consultor de Recursos Humanos', 5, 'Recursos Humanos', 'Gerencia recrutamento, treinamentos e políticas de recursos humanos.'),
(7, 'Contador', 6, 'Financeiro', 'Responsável pela contabilidade e relatórios financeiros da empresa.'),
(8, 'Engenheiro de Software', 2, 'Tecnologia da Informação', 'Desenvolve e implementa softwares e sistemas complexos.'),
(9, 'Coordenador de Vendas', 7, 'Vendas', 'Coordena a equipe de vendas e define estratégias para alcançar metas.'),
(10, 'Especialista em Marketing Digital', 4, 'Marketing', 'Desenvolve e implementa estratégias de marketing digital e SEO.'),
(11, 'Técnico de Suporte', 2, 'Tecnologia da Informação', 'Fornece suporte técnico e resolve problemas relacionados a TI.'),
(12, 'Gerente de Operações', 8, 'Operações', 'Gerencia e otimiza os processos operacionais da empresa.'),
(13, 'Analista Financeiro', 6, 'Financeiro', 'Analisa e controla as finanças da empresa, incluindo orçamento e relatórios.'),
(14, 'Supervisor de Logística', 9, 'Logística', 'Supervisiona o transporte e a distribuição de produtos e materiais.'),
(15, 'Especialista em Segurança da Informação', 2, 'Tecnologia da Informação', 'Protege os sistemas e dados da empresa contra ameaças e ataques cibernéticos.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_19`
--

CREATE TABLE `categoria_19` (
  `A19_id` int NOT NULL,
  `A19_nome` varchar(255) NOT NULL,
  `A19_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categoria_19`
--

INSERT INTO `categoria_19` (`A19_id`, `A19_nome`, `A19_descricao`) VALUES
(1, 'Eletrônicos', 'Dispositivos e gadgets eletrônicos, incluindo smartphones, laptops e acessórios.'),
(2, 'Roupas', 'Vestimentas para diferentes ocasiões e estações, incluindo roupas masculinas, femininas e infantis.'),
(3, 'Móveis', 'Artigos para mobiliar e decorar ambientes, como sofás, mesas e cadeiras.'),
(4, 'Brinquedos', 'Produtos destinados ao entretenimento e desenvolvimento infantil, como brinquedos e jogos.'),
(5, 'Alimentos e Bebidas', 'Produtos comestíveis e bebidas, desde alimentos frescos até produtos enlatados e bebidas.'),
(6, 'Beleza e Cuidados Pessoais', 'Produtos para cuidados com a pele, cabelo e higiene pessoal, como cosméticos e shampoos.'),
(7, 'Ferramentas e Construção', 'Equipamentos e ferramentas para construção e reparos, incluindo ferramentas elétricas e manuais.'),
(8, 'Esportes e Lazer', 'Artigos para atividades físicas e recreativas, como equipamentos esportivos e acessórios de lazer.'),
(9, 'Saúde', 'Produtos relacionados à saúde e bem-estar, como suplementos, medicamentos e dispositivos médicos.'),
(10, 'Livros e Mídia', 'Publicações e mídias diversas, incluindo livros, revistas, CDs e DVDs.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao_cliente_31`
--

CREATE TABLE `classificacao_cliente_31` (
  `A31_id` int NOT NULL,
  `A01_id` int NOT NULL,
  `A31_categoria` varchar(255) NOT NULL,
  `A31_renda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao_produto_18`
--

CREATE TABLE `classificacao_produto_18` (
  `A18_id` int NOT NULL,
  `A18_nome` varchar(255) NOT NULL,
  `A18_descricao` varchar(255) NOT NULL,
  `A18_idadeLimite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `classificacao_produto_18`
--

INSERT INTO `classificacao_produto_18` (`A18_id`, `A18_nome`, `A18_descricao`, `A18_idadeLimite`) VALUES
(1, 'Brinquedo Educativo', 'Brinquedo que estimula o desenvolvimento cognitivo.', 3),
(2, 'Jogo de Construção', 'Peças para montar e criar diferentes estruturas.', 6),
(3, 'Livro Infantil', 'Histórias e atividades apropriadas para crianças.', 5),
(4, 'Quebra-Cabeça', 'Desafio de montagem com peças interligadas.', 7),
(5, 'Boneca Interativa', 'Boneca que responde a comandos e interage.', 4),
(6, 'Carro de Controle Remoto', 'Carro movido por controle remoto.', 8),
(7, 'Videogame', 'Console com jogos eletrônicos interativos.', 10),
(8, 'Kit de Ciências', 'Conjunto para experimentos científicos básicos.', 9),
(9, 'Jogo de Tabuleiro', 'Jogo de mesa com regras e peças.', 12),
(10, 'Material Artístico', 'Conjunto de ferramentas para pintura e desenho.', 6),
(11, 'Robô Programável', 'Robô que pode ser programado para realizar tarefas.', 11),
(12, 'Livro de Atividades', 'Livro com exercícios e desafios educativos.', 5),
(13, 'Instrumento Musical', 'Instrumento para aprendizado musical básico.', 7),
(14, 'Jogo de Cartas', 'Baralho de cartas para jogos variados.', 10),
(15, 'Puzzles de Múltiplas Peças', 'Desafio de montagem com várias peças pequenas.', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_01`
--

CREATE TABLE `cliente_01` (
  `A01_id` int NOT NULL,
  `A01_nome` varchar(255) NOT NULL,
  `A01_nomeSocial` varchar(255) DEFAULT NULL,
  `AO1_pronome` varchar(255) DEFAULT NULL,
  `A01_genero` varchar(255) DEFAULT NULL,
  `A01_dataNasc` date NOT NULL,
  `A01_estadoCivil` varchar(255) NOT NULL,
  `A01_cpf` varchar(255) NOT NULL,
  `A01_email` varchar(255) NOT NULL,
  `A01_cepOriginal` char(11) DEFAULT NULL,
  `A01_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente_01`
--

INSERT INTO `cliente_01` (`A01_id`, `A01_nome`, `A01_nomeSocial`, `AO1_pronome`, `A01_genero`, `A01_dataNasc`, `A01_estadoCivil`, `A01_cpf`, `A01_email`, `A01_cepOriginal`, `A01_estado`) VALUES
(1, 'Tadeo Giorgielli', NULL, 'elu/delu', 'Masculino', '1996-03-01', 'Solteiro', '73347645133', 'tgiorgielli0@netscape.com', '27179452', 'Ativo, Desativo'),
(2, 'Phaidra Brixey', NULL, 'ula/dula', 'Masculino', '1988-12-20', 'Solteiro', '23314364173', 'pbrixey1@lulu.com', '62151833', 'Ativo, Desativo'),
(3, 'Madison Tilio', NULL, 'ulu/dulu', 'Prefiriu não informar', '1996-09-17', 'Solteiro', '60115671517', 'mtilio2@tiny.cc', '88741509', 'Ativo, Desativo'),
(4, 'Woody Besant', NULL, 'elu/delu', 'Outro', '1982-10-13', 'Viúvo', '13443224122', 'wbesant3@rambler.ru', '13011708', 'Ativo, Desativo'),
(5, 'Shelden Skrines', NULL, 'ula/dula', 'Feminino', '1999-02-26', 'Viúvo', '23368415628', 'sskrines4@homestead.com', '43713854', 'Ativo, Desativo'),
(6, 'Susy Mattaser', NULL, 'ele/dele', 'Feminino', '2002-09-16', 'Casado', '22727238891', 'smattaser5@ft.com', '56032093', 'Ativo, Desativo'),
(7, 'Gallagher Keems', NULL, 'ule/dele', 'Feminino', '1994-03-24', 'Casado', '70608261199', 'gkeems6@joomla.org', '05671694', 'Ativo, Desativo'),
(8, 'Annalise Bettam', 'Annalise', 'elu/delu', 'Masculino', '1982-10-12', 'Casado', '93547773982', 'abettam7@artisteer.com', '90472827', 'Ativo, Desativo'),
(9, 'Payton Gosney', NULL, 'elu/delu', 'Outro', '1981-03-04', 'Viúvo', '41931701014', 'pgosney8@yellowbook.com', '41401643', 'Ativo, Desativo'),
(10, 'Jillian Coey', NULL, 'ela/dela', 'Masculino', '1974-08-26', 'Viúvo', '43824193053', 'jcoey9@alexa.com', '31665065', 'Ativo, Desativo'),
(11, 'Vladimir Ruler', 'Vladimir', 'ela/dela', 'Outro', '1973-07-29', 'Casado', '91564740406', 'vrulera@google.de', '07409583', 'Ativo, Desativo'),
(12, 'Avigdor Gaishson', NULL, 'ele/dele', 'Outro', '1986-08-22', 'Solteiro', '13579096476', 'agaishsonb@elegantthemes.com', '97038092', 'Ativo, Desativo'),
(13, 'Lars Sandbatch', 'Lars', 'ele/dele', 'Prefiriu não informar', '1973-06-19', 'Solteiro', '63464351727', 'lsandbatchc@nyu.edu', '62408599', 'Ativo, Desativo'),
(14, 'Sabra Lamprecht', 'Sabra', 'ule/dele', 'Feminino', '1980-07-28', 'Solteiro', '62324335691', 'slamprechtd@lulu.com', '75823668', 'Ativo, Desativo'),
(15, 'Scott Melbourne', NULL, 'ela/dela', 'Prefiriu não informar', '1993-12-17', 'Solteiro', '31719959778', 'smelbournee@ning.com', '69239600', 'Ativo, Desativo'),
(16, 'Dalis Twelves', NULL, 'elu/delu', 'Prefiriu não informar', '1988-08-22', 'Solteiro', '95442599596', 'dtwelvesf@disqus.com', '63806336', 'Ativo, Desativo'),
(17, 'Porter Willimot', NULL, 'ele/dele', 'Feminino', '1980-04-04', 'Viúvo', '54427909421', 'pwillimotg@bluehost.com', '90713630', 'Ativo, Desativo'),
(18, 'Franky Petrovsky', NULL, 'ule/dele', 'Outro', '1996-07-25', 'Viúvo', '65970559016', 'fpetrovskyh@examiner.com', '28556655', 'Ativo, Desativo'),
(19, 'Vic Pardie', 'Vic', 'elu/delu', 'Feminino', '2002-12-07', 'Viúvo', '87769011320', 'vpardiei@geocities.com', '62943103', 'Ativo, Desativo'),
(20, 'Susan Ruperto', NULL, 'ele/dele', 'Prefiriu não informar', '1987-06-02', 'Casado', '90370784283', 'srupertoj@jiathis.com', '65706181', 'Ativo, Desativo'),
(21, 'Ugo Wildash', NULL, 'ulu/dulu', 'Outro', '1979-03-19', 'Solteiro', '22254022321', 'uwildashk@yale.edu', '14309594', 'Ativo, Desativo'),
(22, 'Jessy Pattenden', NULL, 'ulu/dulu', 'Feminino', '1984-01-29', 'Viúvo', '67898416616', 'jpattendenl@multiply.com', '70043872', 'Ativo, Desativo'),
(23, 'Vin Jeffes', NULL, 'ulu/dulu', 'Feminino', '1990-02-19', 'Viúvo', '60419719567', 'vjeffesm@mail.ru', '60878339', 'Ativo, Desativo'),
(24, 'Meade Tschursch', NULL, 'ela/dela', 'Prefiriu não informar', '1998-05-02', 'Solteiro', '57418621338', 'mtschurschn@alibaba.com', '46590360', 'Ativo, Desativo'),
(25, 'Dorey Bysouth', NULL, 'ule/dele', 'Feminino', '1979-09-23', 'Casado', '52230476174', 'dbysoutho@t-online.de', '26584196', 'Ativo, Desativo'),
(26, 'Donal Atmore', NULL, 'ele/dele', 'Feminino', '1979-03-03', 'Viúvo', '35358159878', 'datmorep@seattletimes.com', '39323478', 'Ativo, Desativo'),
(27, 'Bartram Fulstow', 'Bartram', 'ele/dele', 'Masculino', '1978-04-14', 'Solteiro', '33442245703', 'bfulstowq@marriott.com', '84583499', 'Ativo, Desativo'),
(28, 'Bertie Martinuzzi', NULL, 'ule/dele', 'Masculino', '1987-07-15', 'Solteiro', '20774772746', 'bmartinuzzir@zimbio.com', '51522832', 'Ativo, Desativo'),
(29, 'Kelwin Kalisch', NULL, 'elu/delu', 'Prefiriu não informar', '1980-01-18', 'Solteiro', '63129426115', 'kkalischs@ebay.com', '29870870', 'Ativo, Desativo'),
(30, 'Gelya Guyer', 'Gelya', 'ula/dula', 'Outro', '1995-11-02', 'Solteiro', '89747693638', 'gguyert@is.gd', '51266835', 'Ativo, Desativo'),
(31, 'Xever Gravatt', 'Xever', 'ulu/dulu', 'Masculino', '1992-06-21', 'Casado', '18768964319', 'xgravattu@msn.com', '97154241', 'Ativo, Desativo'),
(32, 'Rafaelia Benezet', NULL, 'elu/delu', 'Masculino', '1988-11-28', 'Viúvo', '57869354767', 'rbenezetv@1688.com', '81733889', 'Ativo, Desativo'),
(33, 'Jeth Lusher', 'Jeth', 'ula/dula', 'Feminino', '1980-06-15', 'Solteiro', '86107065252', 'jlusherw@timesonline.co.uk', '91844982', 'Ativo, Desativo'),
(34, 'Hew Rosenhaupt', 'Hew', 'ula/dula', 'Prefiriu não informar', '1990-11-16', 'Solteiro', '93535170062', 'hrosenhauptx@acquirethisname.com', '90763379', 'Ativo, Desativo'),
(35, 'Rebecka Laste', NULL, 'ule/dele', 'Prefiriu não informar', '1983-01-23', 'Casado', '48433229598', 'rlastey@hao123.com', '81807337', 'Ativo, Desativo'),
(36, 'Des Catmull', 'Des', 'ulu/dulu', 'Feminino', '1994-02-25', 'Casado', '32511254859', 'dcatmullz@google.cn', '60414059', 'Ativo, Desativo'),
(37, 'Fiann Sworn', NULL, 'ula/dula', 'Prefiriu não informar', '1993-03-25', 'Viúvo', '45227919827', 'fsworn10@simplemachines.org', '73054832', 'Ativo, Desativo'),
(38, 'Dallas Lohering', NULL, 'ulu/dulu', 'Feminino', '1984-11-01', 'Solteiro', '72057759643', 'dlohering11@de.vu', '00013554', 'Ativo, Desativo'),
(39, 'Stacy Burkman', 'Stacy', 'ule/dele', 'Outro', '1995-07-29', 'Solteiro', '52156901731', 'sburkman12@friendfeed.com', '65611578', 'Ativo, Desativo'),
(40, 'Rory Galiero', NULL, 'ula/dula', 'Feminino', '1988-08-04', 'Solteiro', '08133721660', 'rgaliero13@bluehost.com', '88464924', 'Ativo, Desativo'),
(41, 'Welby Olivey', NULL, 'ula/dula', 'Feminino', '1997-07-15', 'Viúvo', '33655794648', 'wolivey14@mapquest.com', '06928511', 'Ativo, Desativo'),
(42, 'Melinde Convery', NULL, 'elu/delu', 'Masculino', '2002-02-21', 'Casado', '65118761121', 'mconvery15@jimdo.com', '30535899', 'Ativo, Desativo'),
(43, 'Elisha Treadgall', NULL, 'ula/dula', 'Feminino', '1983-10-30', 'Viúvo', '99286536699', 'etreadgall16@google.com', '77358323', 'Ativo, Desativo'),
(44, 'Adan Swigger', NULL, 'ule/dele', 'Prefiriu não informar', '2000-07-15', 'Casado', '33355478323', 'aswigger17@tumblr.com', '83222560', 'Ativo, Desativo'),
(45, 'Dotti Foltin', NULL, 'ulu/dulu', 'Masculino', '1979-07-15', 'Solteiro', '53651729440', 'dfoltin18@vistaprint.com', '41199580', 'Ativo, Desativo'),
(46, 'Alley Reader', NULL, 'ele/dele', 'Outro', '1983-02-18', 'Viúvo', '89287010493', 'areader19@prnewswire.com', '50824628', 'Ativo, Desativo'),
(47, 'Timoteo Perazzo', NULL, 'elu/delu', 'Masculino', '2005-09-03', 'Viúvo', '38764657738', 'tperazzo1a@forbes.com', '44323982', 'Ativo, Desativo'),
(48, 'Meridith Yantsev', NULL, 'ulu/dulu', 'Prefiriu não informar', '1989-09-24', 'Casado', '88028339829', 'myantsev1b@tuttocitta.it', '15152900', 'Ativo, Desativo'),
(49, 'Auberon Melanaphy', 'Auberon', 'ulu/dulu', 'Masculino', '1973-05-09', 'Solteiro', '25017326605', 'amelanaphy1c@wsj.com', '72701847', 'Ativo, Desativo'),
(50, 'Ely Arrighi', 'Ely', 'ele/dele', 'Prefiriu não informar', '1994-05-06', 'Casado', '59110909992', 'earrighi1d@blogger.com', '38658707', 'Ativo, Desativo'),
(51, 'Roda Kenningley', 'Roda', 'ele/dele', 'Feminino', '2004-10-01', 'Casado', '55326267563', 'rkenningley1e@wp.com', '21207154', 'Ativo, Desativo'),
(52, 'Desiri Coldman', NULL, 'ule/dele', 'Feminino', '1996-07-15', 'Solteiro', '27942460893', 'dcoldman1f@yale.edu', '10780228', 'Ativo, Desativo'),
(53, 'Kurt Vernazza', NULL, 'ule/dele', 'Feminino', '1988-01-20', 'Solteiro', '51994869433', 'kvernazza1g@unesco.org', '97464713', 'Ativo, Desativo'),
(54, 'Essa Adamson', 'Essa', 'elu/delu', 'Feminino', '1972-05-25', 'Solteiro', '54746052039', 'eadamson1h@symantec.com', '27649482', 'Ativo, Desativo'),
(55, 'Hilary Stellin', 'Hilary', 'ele/dele', 'Outro', '1982-03-02', 'Viúvo', '87038645357', 'hstellin1i@discovery.com', '24388514', 'Ativo, Desativo'),
(56, 'Ricky Salliere', NULL, 'ule/dele', 'Prefiriu não informar', '1992-03-13', 'Solteiro', '81695219509', 'rsalliere1j@pen.io', '20300782', 'Ativo, Desativo'),
(57, 'Barbabra Chasney', NULL, 'ele/dele', 'Outro', '1981-05-02', 'Solteiro', '22372321290', 'bchasney1k@goodreads.com', '38516707', 'Ativo, Desativo'),
(58, 'Louie Prettjohn', NULL, 'ule/dele', 'Masculino', '1985-05-13', 'Casado', '79443116483', 'lprettjohn1l@delicious.com', '77222207', 'Ativo, Desativo'),
(59, 'Anthea Van Daalen', NULL, 'ule/dele', 'Feminino', '1980-08-27', 'Solteiro', '13759084514', 'avan1m@aboutads.info', '15499832', 'Ativo, Desativo'),
(60, 'Grange Portress', NULL, 'ule/dele', 'Outro', '1989-11-18', 'Viúvo', '46714178734', 'gportress1n@scientificamerican.com', '81084785', 'Ativo, Desativo'),
(61, 'Vanni Hynard', NULL, 'ule/dele', 'Outro', '1998-07-11', 'Viúvo', '42651684492', 'vhynard1o@sakura.ne.jp', '45516389', 'Ativo, Desativo'),
(62, 'Mark Bigley', NULL, 'ele/dele', 'Masculino', '2003-07-04', 'Casado', '14511041279', 'mbigley1p@toplist.cz', '10545742', 'Ativo, Desativo'),
(63, 'Modesta Morpeth', NULL, 'ula/dula', 'Masculino', '1975-02-23', 'Casado', '35895468555', 'mmorpeth1q@github.io', '97039597', 'Ativo, Desativo'),
(64, 'Catlin Buttner', NULL, 'ele/dele', 'Outro', '1973-03-07', 'Solteiro', '78010977667', 'cbuttner1r@cbsnews.com', '72129237', 'Ativo, Desativo'),
(65, 'Gilligan Lafee', NULL, 'ulu/dulu', 'Outro', '1998-05-28', 'Casado', '46734071543', 'glafee1s@webs.com', '62675016', 'Ativo, Desativo'),
(66, 'Michele Marquess', NULL, 'elu/delu', 'Outro', '2002-10-26', 'Viúvo', '26742399856', 'mmarquess1t@myspace.com', '75234602', 'Ativo, Desativo'),
(67, 'Alli Sapwell', 'Alli', 'elu/delu', 'Outro', '1983-12-10', 'Solteiro', '79782191747', 'asapwell1u@businessinsider.com', '23558174', 'Ativo, Desativo'),
(68, 'Alvy Cryer', NULL, 'ulu/dulu', 'Feminino', '1977-06-18', 'Casado', '88253495127', 'acryer1v@rakuten.co.jp', '26025416', 'Ativo, Desativo'),
(69, 'Mireielle Gales', NULL, 'elu/delu', 'Masculino', '1989-05-04', 'Casado', '38970575465', 'mgales1w@blogs.com', '38189625', 'Ativo, Desativo'),
(70, 'Howie Edscer', NULL, 'ule/dele', 'Masculino', '2006-03-24', 'Solteiro', '37737987255', 'hedscer1x@sina.com.cn', '10173307', 'Ativo, Desativo'),
(71, 'Kincaid Clendennen', NULL, 'ele/dele', 'Feminino', '1974-02-11', 'Casado', '86296034818', 'kclendennen1y@china.com.cn', '11319271', 'Ativo, Desativo'),
(72, 'Clerissa Glader', NULL, 'ele/dele', 'Outro', '2001-10-06', 'Casado', '73157272371', 'cglader1z@oaic.gov.au', '26908262', 'Ativo, Desativo'),
(73, 'Henry Sadat', 'Henry', 'ulu/dulu', 'Masculino', '1991-09-16', 'Solteiro', '57380819269', 'hsadat20@goodreads.com', '71447216', 'Ativo, Desativo'),
(74, 'Madelena Lehrahan', NULL, 'ule/dele', 'Masculino', '1992-11-23', 'Viúvo', '00232375226', 'mlehrahan21@constantcontact.com', '59856149', 'Ativo, Desativo'),
(75, 'Ynez Josefson', NULL, 'ula/dula', 'Masculino', '2005-07-12', 'Casado', '06816964616', 'yjosefson22@shop-pro.jp', '94366517', 'Ativo, Desativo'),
(76, 'Gisela Beavis', NULL, 'ela/dela', 'Prefiriu não informar', '1977-07-28', 'Casado', '91825339543', 'gbeavis23@unc.edu', '91208943', 'Ativo, Desativo'),
(77, 'Margaret Cunradi', NULL, 'elu/delu', 'Feminino', '2001-07-03', 'Solteiro', '01288898994', 'mcunradi24@sun.com', '28829565', 'Ativo, Desativo'),
(78, 'Kane Fellnee', NULL, 'ele/dele', 'Masculino', '1974-02-03', 'Casado', '33373440913', 'kfellnee25@goo.gl', '36430915', 'Ativo, Desativo'),
(79, 'Bridgette Jaqueminet', 'Bridgette', 'ule/dele', 'Masculino', '1978-12-24', 'Casado', '52317443488', 'bjaqueminet26@ed.gov', '47562363', 'Ativo, Desativo'),
(80, 'Maxie Clarkson', NULL, 'ele/dele', 'Prefiriu não informar', '1971-05-22', 'Viúvo', '07454782681', 'mclarkson27@webeden.co.uk', '37174108', 'Ativo, Desativo'),
(81, 'Beatrisa MacSherry', NULL, 'ele/dele', 'Masculino', '2000-03-31', 'Casado', '03518749871', 'bmacsherry28@comsenz.com', '91465514', 'Ativo, Desativo'),
(82, 'Ange Hensmans', 'Ange', 'ulu/dulu', 'Prefiriu não informar', '2001-01-25', 'Solteiro', '93045753835', 'ahensmans29@parallels.com', '74638027', 'Ativo, Desativo'),
(83, 'Raf Osman', NULL, 'ela/dela', 'Masculino', '1972-09-28', 'Casado', '32095815317', 'rosman2a@hexun.com', '45273355', 'Ativo, Desativo'),
(84, 'Grove Standidge', NULL, 'ula/dula', 'Masculino', '1992-05-24', 'Solteiro', '61955842637', 'gstandidge2b@ca.gov', '10196639', 'Ativo, Desativo'),
(85, 'Daryn Manueli', NULL, 'elu/delu', 'Prefiriu não informar', '1973-04-12', 'Casado', '38100871347', 'dmanueli2c@indiegogo.com', '91298880', 'Ativo, Desativo'),
(86, 'Culver Lerohan', NULL, 'ula/dula', 'Feminino', '1984-03-01', 'Solteiro', '99805694784', 'clerohan2d@foxnews.com', '15204171', 'Ativo, Desativo'),
(87, 'Barbi Lawlie', NULL, 'ulu/dulu', 'Prefiriu não informar', '1997-06-27', 'Solteiro', '13939015023', 'blawlie2e@mtv.com', '35378928', 'Ativo, Desativo'),
(88, 'Stuart Garroway', NULL, 'ulu/dulu', 'Feminino', '1977-07-25', 'Casado', '88432406382', 'sgarroway2f@sfgate.com', '94468669', 'Ativo, Desativo'),
(89, 'Janeen Vero', NULL, 'ulu/dulu', 'Feminino', '1987-10-16', 'Solteiro', '15699161301', 'jvero2g@fastcompany.com', '96374005', 'Ativo, Desativo'),
(90, 'Harry Darben', NULL, 'ela/dela', 'Prefiriu não informar', '1999-02-19', 'Casado', '30203469724', 'hdarben2h@statcounter.com', '52456874', 'Ativo, Desativo'),
(91, 'Mame Clemow', NULL, 'elu/delu', 'Masculino', '1988-05-30', 'Solteiro', '42118183557', 'mclemow2i@time.com', '46490959', 'Ativo, Desativo'),
(92, 'Jessa Normavill', 'Jessa', 'ele/dele', 'Masculino', '2003-08-14', 'Casado', '50347382474', 'jnormavill2j@jigsy.com', '13902646', 'Ativo, Desativo'),
(93, 'Win Martyns', 'Win', 'ele/dele', 'Outro', '1979-03-02', 'Casado', '51018595862', 'wmartyns2k@altervista.org', '11621829', 'Ativo, Desativo'),
(94, 'Noam Ferrero', 'Noam', 'ula/dula', 'Masculino', '2004-04-14', 'Solteiro', '56955268285', 'nferrero2l@example.com', '48068575', 'Ativo, Desativo'),
(95, 'Danya Eyree', NULL, 'ulu/dulu', 'Outro', '1977-04-25', 'Viúvo', '15471937924', 'deyree2m@upenn.edu', '15712736', 'Ativo, Desativo'),
(96, 'Cully Hawton', NULL, 'ule/dele', 'Outro', '2003-05-24', 'Casado', '63539532740', 'chawton2n@reuters.com', '15664008', 'Ativo, Desativo'),
(97, 'Manuel Redhead', NULL, 'ele/dele', 'Feminino', '1993-10-22', 'Solteiro', '32875404465', 'mredhead2o@patch.com', '23901166', 'Ativo, Desativo'),
(98, 'Heloise Dyball', NULL, 'ele/dele', 'Prefiriu não informar', '1971-03-11', 'Viúvo', '67269573530', 'hdyball2p@miibeian.gov.cn', '63436624', 'Ativo, Desativo'),
(99, 'Delores Beaudry', NULL, 'ela/dela', 'Outro', '1980-10-23', 'Solteiro', '04175121460', 'dbeaudry2q@usatoday.com', '69278380', 'Ativo, Desativo'),
(100, 'Kaitlynn Wesley', NULL, 'ulu/dulu', 'Masculino', '1980-04-25', 'Viúvo', '78920667404', 'kwesley2r@people.com.cn', '44863237', 'Ativo, Desativo'),
(101, 'Mortimer Haighton', NULL, 'elu/delu', 'Masculino', '1977-05-02', 'Casado', '55743849378', 'mhaighton2s@npr.org', '73149275', 'Ativo, Desativo'),
(102, 'Benn Storre', NULL, 'ulu/dulu', 'Masculino', '1984-11-18', 'Solteiro', '30342348954', 'bstorre2t@sina.com.cn', '04318393', 'Ativo, Desativo'),
(103, 'Pinchas Gradly', NULL, 'ela/dela', 'Outro', '1975-12-21', 'Viúvo', '95735869570', 'pgradly2u@blogger.com', '25487666', 'Ativo, Desativo'),
(104, 'Jerrome Toombs', NULL, 'ulu/dulu', 'Masculino', '2000-09-26', 'Viúvo', '89290062147', 'jtoombs2v@java.com', '04218711', 'Ativo, Desativo'),
(105, 'Isabel Dallinder', NULL, 'ulu/dulu', 'Masculino', '1980-08-05', 'Solteiro', '83871835684', 'idallinder2w@themeforest.net', '29991744', 'Ativo, Desativo'),
(106, 'Merle Ilyasov', NULL, 'ule/dele', 'Masculino', '1974-11-19', 'Viúvo', '03535169601', 'milyasov2x@imdb.com', '38881660', 'Ativo, Desativo'),
(107, 'Ax Wingham', NULL, 'ula/dula', 'Feminino', '1983-04-08', 'Viúvo', '20615812110', 'awingham2y@bluehost.com', '42069328', 'Ativo, Desativo'),
(108, 'Martie Dexter', NULL, 'ula/dula', 'Prefiriu não informar', '1998-12-25', 'Viúvo', '68483602829', 'mdexter2z@wikipedia.org', '82425915', 'Ativo, Desativo'),
(109, 'Hewett Curtin', NULL, 'ulu/dulu', 'Prefiriu não informar', '1984-07-25', 'Solteiro', '22033183718', 'hcurtin30@webmd.com', '20879439', 'Ativo, Desativo'),
(110, 'Bron Seggie', NULL, 'ele/dele', 'Masculino', '2003-07-21', 'Viúvo', '57894034869', 'bseggie31@godaddy.com', '90040280', 'Ativo, Desativo'),
(111, 'Belicia Candelin', 'Belicia', 'ula/dula', 'Prefiriu não informar', '2001-11-12', 'Casado', '78540534933', 'bcandelin32@cmu.edu', '75130274', 'Ativo, Desativo'),
(112, 'Ellyn Eilhertsen', 'Ellyn', 'ula/dula', 'Feminino', '2000-01-08', 'Viúvo', '48444421153', 'eeilhertsen33@unblog.fr', '05437321', 'Ativo, Desativo'),
(113, 'Marion Sent', NULL, 'ula/dula', 'Prefiriu não informar', '1991-07-04', 'Viúvo', '58406905934', 'msent34@fc2.com', '34291404', 'Ativo, Desativo'),
(114, 'Koressa Spikeings', 'Koressa', 'ela/dela', 'Outro', '1998-04-19', 'Solteiro', '71614819038', 'kspikeings35@aol.com', '97655911', 'Ativo, Desativo'),
(115, 'Courtnay Jiricka', NULL, 'elu/delu', 'Feminino', '1984-12-09', 'Casado', '08263962465', 'cjiricka36@umn.edu', '28471745', 'Ativo, Desativo'),
(116, 'Cristi Floyed', NULL, 'ela/dela', 'Outro', '2005-12-08', 'Viúvo', '73325418921', 'cfloyed37@japanpost.jp', '67960906', 'Ativo, Desativo'),
(117, 'Dolley Guppy', NULL, 'ula/dula', 'Outro', '1993-10-09', 'Solteiro', '11145838453', 'dguppy38@comcast.net', '22280373', 'Ativo, Desativo'),
(118, 'Warde Grishin', NULL, 'ule/dele', 'Prefiriu não informar', '1974-10-03', 'Casado', '78760733496', 'wgrishin39@opensource.org', '25566854', 'Ativo, Desativo'),
(119, 'Gaile Tourner', 'Gaile', 'elu/delu', 'Masculino', '1990-11-15', 'Solteiro', '83028754666', 'gtourner3a@washington.edu', '05316494', 'Ativo, Desativo'),
(120, 'Rutter Kingswood', NULL, 'ela/dela', 'Feminino', '1987-04-02', 'Casado', '38100143474', 'rkingswood3b@mapy.cz', '28104748', 'Ativo, Desativo'),
(121, 'Sherie Ball', 'Sherie', 'ele/dele', 'Feminino', '1985-09-11', 'Solteiro', '56041320363', 'sball3c@cocolog-nifty.com', '83714985', 'Ativo, Desativo'),
(122, 'Joella Tomisch', 'Joella', 'elu/delu', 'Masculino', '1990-02-25', 'Casado', '18136495716', 'jtomisch3d@about.com', '64395265', 'Ativo, Desativo'),
(123, 'Nikola Simak', NULL, 'elu/delu', 'Feminino', '1988-05-25', 'Casado', '29076333453', 'nsimak3e@cnbc.com', '14945366', 'Ativo, Desativo'),
(124, 'Derk Lago', NULL, 'ula/dula', 'Feminino', '1978-05-20', 'Solteiro', '56912587063', 'dlago3f@netscape.com', '88183454', 'Ativo, Desativo'),
(125, 'Vail Colleymore', NULL, 'ela/dela', 'Masculino', '1987-11-27', 'Viúvo', '76003880961', 'vcolleymore3g@time.com', '44434597', 'Ativo, Desativo'),
(126, 'Ralf Hagard', 'Ralf', 'ulu/dulu', 'Masculino', '1996-03-24', 'Viúvo', '14882429638', 'rhagard3h@forbes.com', '31387541', 'Ativo, Desativo'),
(127, 'Danice Spolton', NULL, 'ula/dula', 'Prefiriu não informar', '1996-10-13', 'Casado', '39319441136', 'dspolton3i@amazon.co.uk', '39256692', 'Ativo, Desativo'),
(128, 'Robers Lifton', 'Robers', 'ula/dula', 'Outro', '1976-04-08', 'Casado', '06526655670', 'rlifton3j@merriam-webster.com', '43592070', 'Ativo, Desativo'),
(129, 'Genvieve Ciccotti', NULL, 'ele/dele', 'Masculino', '2005-07-06', 'Solteiro', '79506836537', 'gciccotti3k@google.com.au', '00321329', 'Ativo, Desativo'),
(130, 'Johnna Vivien', NULL, 'ulu/dulu', 'Masculino', '1994-06-26', 'Viúvo', '44249530131', 'jvivien3l@surveymonkey.com', '42270504', 'Ativo, Desativo'),
(131, 'Jolene Emblin', NULL, 'ele/dele', 'Outro', '1993-07-19', 'Casado', '61599347403', 'jemblin3m@wufoo.com', '61454313', 'Ativo, Desativo'),
(132, 'Olive Astridge', 'Olive', 'ele/dele', 'Masculino', '1993-12-24', 'Solteiro', '15664369588', 'oastridge3n@yahoo.com', '96918753', 'Ativo, Desativo'),
(133, 'Nealson Lensch', NULL, 'ula/dula', 'Feminino', '1993-08-23', 'Casado', '49420928629', 'nlensch3o@moonfruit.com', '58617812', 'Ativo, Desativo'),
(134, 'Nadya Baldoni', NULL, 'ule/dele', 'Prefiriu não informar', '1999-01-03', 'Viúvo', '14621527857', 'nbaldoni3p@reference.com', '32880695', 'Ativo, Desativo'),
(135, 'Goldarina Bushby', NULL, 'ele/dele', 'Feminino', '1985-06-30', 'Viúvo', '39479754119', 'gbushby3q@mlb.com', '73812838', 'Ativo, Desativo'),
(136, 'Colene Bonde', 'Colene', 'elu/delu', 'Outro', '2005-11-19', 'Casado', '19060328344', 'cbonde3r@ted.com', '64247422', 'Ativo, Desativo'),
(137, 'Roy Sowrey', NULL, 'elu/delu', 'Prefiriu não informar', '1972-04-09', 'Solteiro', '33395968376', 'rsowrey3s@mozilla.com', '47922868', 'Ativo, Desativo'),
(138, 'Jephthah Bruckman', NULL, 'elu/delu', 'Feminino', '1973-11-09', 'Solteiro', '75466246741', 'jbruckman3t@tripod.com', '67497229', 'Ativo, Desativo'),
(139, 'Oswald Georgius', 'Oswald', 'ela/dela', 'Prefiriu não informar', '2002-02-20', 'Solteiro', '58673830672', 'ogeorgius3u@issuu.com', '27094786', 'Ativo, Desativo'),
(140, 'Kenneth Draye', NULL, 'elu/delu', 'Masculino', '1973-02-06', 'Solteiro', '80333329979', 'kdraye3v@fema.gov', '56669614', 'Ativo, Desativo'),
(141, 'Berrie Domenge', NULL, 'ela/dela', 'Masculino', '1987-10-01', 'Solteiro', '18597437281', 'bdomenge3w@trellian.com', '31590612', 'Ativo, Desativo'),
(142, 'Marcelle Dunning', NULL, 'ela/dela', 'Feminino', '1982-07-25', 'Casado', '74736412138', 'mdunning3x@purevolume.com', '80369115', 'Ativo, Desativo'),
(143, 'Garreth Danigel', NULL, 'elu/delu', 'Prefiriu não informar', '1972-09-20', 'Viúvo', '87719653774', 'gdanigel3y@plala.or.jp', '93719579', 'Ativo, Desativo'),
(144, 'Kimball Quibell', 'Kimball', 'ulu/dulu', 'Masculino', '1986-10-12', 'Solteiro', '60022798795', 'kquibell3z@examiner.com', '86111708', 'Ativo, Desativo'),
(145, 'Martynne Lovat', NULL, 'ulu/dulu', 'Prefiriu não informar', '1997-02-14', 'Casado', '47775173392', 'mlovat40@dagondesign.com', '40844411', 'Ativo, Desativo'),
(146, 'Cathrine Tolfrey', NULL, 'ula/dula', 'Masculino', '1982-05-17', 'Casado', '23967264371', 'ctolfrey41@wikia.com', '98043004', 'Ativo, Desativo'),
(147, 'Tallulah Hicken', 'Tallulah', 'ula/dula', 'Feminino', '1990-11-19', 'Solteiro', '42580868589', 'thicken42@prnewswire.com', '72537372', 'Ativo, Desativo'),
(148, 'Darla Finnigan', NULL, 'ela/dela', 'Prefiriu não informar', '1997-08-30', 'Viúvo', '83917091742', 'dfinnigan43@sina.com.cn', '36070082', 'Ativo, Desativo'),
(149, 'Felecia Oselton', NULL, 'ele/dele', 'Prefiriu não informar', '1992-03-11', 'Viúvo', '33854517560', 'foselton44@europa.eu', '03105034', 'Ativo, Desativo'),
(150, 'Tadeas Terbrug', NULL, 'ela/dela', 'Prefiriu não informar', '1982-04-15', 'Casado', '59840569307', 'tterbrug45@constantcontact.com', '25702602', 'Ativo, Desativo'),
(151, 'Melodee Osipov', NULL, 'ulu/dulu', 'Prefiriu não informar', '1982-04-04', 'Viúvo', '82801729134', 'mosipov46@unesco.org', '95901076', 'Ativo, Desativo'),
(152, 'Rik Matthius', NULL, 'elu/delu', 'Feminino', '1973-09-18', 'Casado', '40532910528', 'rmatthius47@elegantthemes.com', '98382289', 'Ativo, Desativo'),
(153, 'Willi Janton', NULL, 'ule/dele', 'Prefiriu não informar', '2004-08-19', 'Solteiro', '47449412977', 'wjanton48@edublogs.org', '42462274', 'Ativo, Desativo'),
(154, 'Ingram Sowrah', NULL, 'ele/dele', 'Prefiriu não informar', '1989-08-30', 'Viúvo', '09355759728', 'isowrah49@pagesperso-orange.fr', '39720970', 'Ativo, Desativo'),
(155, 'Neala Knee', 'Neala', 'ele/dele', 'Prefiriu não informar', '1982-07-15', 'Casado', '18079327831', 'nknee4a@cdbaby.com', '96984677', 'Ativo, Desativo'),
(156, 'Myrtle Rivenzon', NULL, 'ela/dela', 'Masculino', '2002-05-21', 'Solteiro', '58767087870', 'mrivenzon4b@cisco.com', '49993799', 'Ativo, Desativo'),
(157, 'Taddeo Gladdis', NULL, 'ela/dela', 'Feminino', '2001-07-26', 'Casado', '83009007822', 'tgladdis4c@cam.ac.uk', '97127259', 'Ativo, Desativo'),
(158, 'Alvis Foord', 'Alvis', 'ele/dele', 'Outro', '1982-09-29', 'Solteiro', '39642962812', 'afoord4d@apple.com', '01229052', 'Ativo, Desativo'),
(159, 'Laura Pottell', NULL, 'ela/dela', 'Outro', '2004-01-10', 'Solteiro', '91799344372', 'lpottell4e@last.fm', '93377226', 'Ativo, Desativo'),
(160, 'Dru Lampard', NULL, 'elu/delu', 'Prefiriu não informar', '1990-08-07', 'Casado', '16723790830', 'dlampard4f@github.io', '33438533', 'Ativo, Desativo'),
(161, 'Timothy Lackner', 'Timothy', 'elu/delu', 'Masculino', '1997-01-31', 'Solteiro', '32738583130', 'tlackner4g@trellian.com', '87874443', 'Ativo, Desativo'),
(162, 'Whitman Edmundson', 'Whitman', 'ula/dula', 'Outro', '1997-11-07', 'Casado', '61760725379', 'wedmundson4h@engadget.com', '36519284', 'Ativo, Desativo'),
(163, 'Laurel Hacard', NULL, 'ula/dula', 'Feminino', '1999-04-25', 'Casado', '93982559170', 'lhacard4i@plala.or.jp', '92287302', 'Ativo, Desativo'),
(164, 'Marla Bartunek', NULL, 'ule/dele', 'Masculino', '1995-01-01', 'Casado', '29066665803', 'mbartunek4j@comcast.net', '16479343', 'Ativo, Desativo'),
(165, 'Cass Lumm', NULL, 'ele/dele', 'Feminino', '1994-11-04', 'Casado', '62613349549', 'clumm4k@drupal.org', '82695204', 'Ativo, Desativo'),
(166, 'Prent Redier', NULL, 'ele/dele', 'Prefiriu não informar', '2005-06-02', 'Viúvo', '39061194010', 'predier4l@shareasale.com', '66200513', 'Ativo, Desativo'),
(167, 'Norri Croall', NULL, 'ula/dula', 'Outro', '1990-04-27', 'Casado', '66377405465', 'ncroall4m@aol.com', '44377787', 'Ativo, Desativo'),
(168, 'Jana Hardwidge', NULL, 'elu/delu', 'Prefiriu não informar', '1976-08-03', 'Solteiro', '79023922958', 'jhardwidge4n@omniture.com', '31310916', 'Ativo, Desativo'),
(169, 'Doe Fost', 'Doe', 'ule/dele', 'Outro', '2003-04-29', 'Solteiro', '47347416582', 'dfost4o@hibu.com', '34507771', 'Ativo, Desativo'),
(170, 'Denni Crufts', NULL, 'elu/delu', 'Prefiriu não informar', '1981-06-29', 'Casado', '34484162143', 'dcrufts4p@prnewswire.com', '26155625', 'Ativo, Desativo'),
(171, 'Anjanette Vinson', NULL, 'elu/delu', 'Prefiriu não informar', '1986-12-14', 'Solteiro', '69630770769', 'avinson4q@imgur.com', '53110849', 'Ativo, Desativo'),
(172, 'Margareta Botcherby', 'Margareta', 'ule/dele', 'Prefiriu não informar', '2001-04-22', 'Casado', '00222929455', 'mbotcherby4r@senate.gov', '52124032', 'Ativo, Desativo'),
(173, 'Kettie Bronot', NULL, 'elu/delu', 'Feminino', '1987-11-16', 'Solteiro', '83024267558', 'kbronot4s@dyndns.org', '33212106', 'Ativo, Desativo'),
(174, 'Madelin MacVicar', 'Madelin', 'elu/delu', 'Outro', '2005-12-22', 'Casado', '06088702412', 'mmacvicar4t@technorati.com', '34859506', 'Ativo, Desativo'),
(175, 'Finley Hoogendorp', NULL, 'ule/dele', 'Masculino', '1991-08-21', 'Casado', '20655272792', 'fhoogendorp4u@trellian.com', '75663965', 'Ativo, Desativo'),
(176, 'Jobie Wernham', NULL, 'elu/delu', 'Prefiriu não informar', '1982-12-13', 'Solteiro', '53232803883', 'jwernham4v@fda.gov', '66343768', 'Ativo, Desativo'),
(177, 'Sybille Bysshe', NULL, 'ele/dele', 'Prefiriu não informar', '1987-11-13', 'Solteiro', '55053724182', 'sbysshe4w@hostgator.com', '13830117', 'Ativo, Desativo'),
(178, 'Mercedes Drennan', NULL, 'ula/dula', 'Feminino', '1979-06-01', 'Viúvo', '48417568254', 'mdrennan4x@latimes.com', '93624021', 'Ativo, Desativo'),
(179, 'Anallese Mashro', NULL, 'ule/dele', 'Masculino', '1998-02-23', 'Solteiro', '82607791144', 'amashro4y@reuters.com', '84453679', 'Ativo, Desativo'),
(180, 'Curry Polo', NULL, 'elu/delu', 'Masculino', '1992-05-30', 'Casado', '56800443008', 'cpolo4z@gmpg.org', '71709784', 'Ativo, Desativo'),
(181, 'Noland Bains', NULL, 'ule/dele', 'Feminino', '1998-02-27', 'Solteiro', '36425415076', 'nbains50@youtu.be', '95168650', 'Ativo, Desativo'),
(182, 'Stephi Findlater', NULL, 'ule/dele', 'Masculino', '1978-02-07', 'Viúvo', '09470973380', 'sfindlater51@google.cn', '23064967', 'Ativo, Desativo'),
(183, 'Rodrigo Janodet', NULL, 'ele/dele', 'Outro', '1980-05-05', 'Casado', '72606929417', 'rjanodet52@abc.net.au', '91450267', 'Ativo, Desativo'),
(184, 'Leif Wegman', NULL, 'ele/dele', 'Masculino', '1995-04-15', 'Solteiro', '85066451234', 'lwegman53@hubpages.com', '05068059', 'Ativo, Desativo'),
(185, 'Fancy Van Hove', NULL, 'ula/dula', 'Outro', '2005-03-22', 'Viúvo', '61283211581', 'fvan54@businessinsider.com', '65735016', 'Ativo, Desativo'),
(186, 'Crystie Jalland', 'Crystie', 'ula/dula', 'Outro', '2000-01-16', 'Casado', '79662732805', 'cjalland55@skype.com', '57319488', 'Ativo, Desativo'),
(187, 'Daven Hynes', NULL, 'ula/dula', 'Feminino', '2004-08-26', 'Viúvo', '80957016138', 'dhynes56@tripadvisor.com', '75788915', 'Ativo, Desativo'),
(188, 'Heddi Wevell', NULL, 'ulu/dulu', 'Masculino', '1974-05-06', 'Solteiro', '38397533220', 'hwevell57@networkadvertising.org', '68287709', 'Ativo, Desativo'),
(189, 'Elna MacKeig', NULL, 'ulu/dulu', 'Outro', '1997-07-28', 'Casado', '35360133410', 'emackeig58@pcworld.com', '77705707', 'Ativo, Desativo'),
(190, 'Tiler Dytham', NULL, 'ele/dele', 'Outro', '1978-07-04', 'Viúvo', '47971400231', 'tdytham59@example.com', '47340469', 'Ativo, Desativo'),
(191, 'Sharl Spriggs', NULL, 'ulu/dulu', 'Prefiriu não informar', '2005-04-25', 'Viúvo', '13216284635', 'sspriggs5a@slideshare.net', '33730927', 'Ativo, Desativo'),
(192, 'Martina Audus', NULL, 'ule/dele', 'Masculino', '1972-03-01', 'Viúvo', '99221181226', 'maudus5b@census.gov', '43666978', 'Ativo, Desativo'),
(193, 'Gerrie Wavell', NULL, 'ule/dele', 'Masculino', '2004-12-21', 'Solteiro', '45778211816', 'gwavell5c@marketwatch.com', '60053983', 'Ativo, Desativo'),
(194, 'Nettle Grundey', NULL, 'ele/dele', 'Prefiriu não informar', '2001-11-15', 'Casado', '00355727610', 'ngrundey5d@furl.net', '57404933', 'Ativo, Desativo'),
(195, 'Cher Klassman', NULL, 'ela/dela', 'Prefiriu não informar', '1982-06-18', 'Solteiro', '36582695586', 'cklassman5e@istockphoto.com', '87200268', 'Ativo, Desativo'),
(196, 'Trever Holbie', NULL, 'ela/dela', 'Prefiriu não informar', '1978-01-20', 'Solteiro', '26769079171', 'tholbie5f@skyrock.com', '15641894', 'Ativo, Desativo'),
(197, 'Aloysia Cockton', NULL, 'ulu/dulu', 'Feminino', '1980-07-19', 'Solteiro', '98393547834', 'acockton5g@moonfruit.com', '37366986', 'Ativo, Desativo'),
(198, 'Karlan Treske', NULL, 'ule/dele', 'Outro', '1970-12-27', 'Casado', '50332042710', 'ktreske5h@java.com', '74017840', 'Ativo, Desativo'),
(199, 'Nan Groundwator', NULL, 'ele/dele', 'Outro', '1989-10-05', 'Casado', '57717184629', 'ngroundwator5i@themeforest.net', '32319785', 'Ativo, Desativo'),
(200, 'Jonie Hebbard', NULL, 'ule/dele', 'Masculino', '1973-11-02', 'Casado', '22708133915', 'jhebbard5j@oakley.com', '51970361', 'Ativo, Desativo'),
(201, 'Olia Speedin', NULL, 'elu/delu', 'Feminino', '1998-10-21', 'Casado', '39568987405', 'ospeedin5k@bloomberg.com', '11181689', 'Ativo, Desativo'),
(202, 'Dania Ciobutaro', NULL, 'ulu/dulu', 'Outro', '1994-10-09', 'Viúvo', '97629472357', 'dciobutaro5l@fda.gov', '71423188', 'Ativo, Desativo'),
(203, 'Merrel Morde', 'Merrel', 'ela/dela', 'Feminino', '1981-05-07', 'Viúvo', '44977029799', 'mmorde5m@etsy.com', '59900511', 'Ativo, Desativo'),
(204, 'Damiano Wear', 'Damiano', 'ulu/dulu', 'Feminino', '1999-01-03', 'Casado', '46741243954', 'dwear5n@hexun.com', '35766295', 'Ativo, Desativo'),
(205, 'Ravi Stukings', NULL, 'ele/dele', 'Prefiriu não informar', '1981-08-11', 'Viúvo', '22396681717', 'rstukings5o@admin.ch', '08811526', 'Ativo, Desativo'),
(206, 'Leola McNeill', NULL, 'ela/dela', 'Masculino', '2000-03-31', 'Viúvo', '12576311814', 'lmcneill5p@marketwatch.com', '27511599', 'Ativo, Desativo'),
(207, 'Rebe Trahear', NULL, 'ela/dela', 'Prefiriu não informar', '1998-02-05', 'Viúvo', '81485324206', 'rtrahear5q@cisco.com', '29197624', 'Ativo, Desativo'),
(208, 'Karlis Fourmy', NULL, 'ele/dele', 'Outro', '2002-04-04', 'Viúvo', '74121878268', 'kfourmy5r@rediff.com', '38195710', 'Ativo, Desativo'),
(209, 'Munroe Volker', NULL, 'elu/delu', 'Feminino', '1983-12-05', 'Casado', '17464528044', 'mvolker5s@ask.com', '08431107', 'Ativo, Desativo'),
(210, 'Jecho Couper', NULL, 'ule/dele', 'Prefiriu não informar', '1988-10-09', 'Viúvo', '46764697325', 'jcouper5t@weibo.com', '84754087', 'Ativo, Desativo'),
(211, 'Olivero Verny', 'Olivero', 'ulu/dulu', 'Outro', '1980-09-23', 'Viúvo', '61662106493', 'overny5u@theguardian.com', '75879393', 'Ativo, Desativo'),
(212, 'Angeline Mignot', NULL, 'ela/dela', 'Feminino', '2005-10-24', 'Casado', '53356485353', 'amignot5v@bravesites.com', '72486142', 'Ativo, Desativo'),
(213, 'Cameron Hakey', NULL, 'ule/dele', 'Feminino', '1974-01-14', 'Viúvo', '60973511871', 'chakey5w@icq.com', '58200810', 'Ativo, Desativo'),
(214, 'Sibilla Matijevic', NULL, 'ele/dele', 'Prefiriu não informar', '1984-11-26', 'Solteiro', '96600714088', 'smatijevic5x@answers.com', '31817037', 'Ativo, Desativo'),
(215, 'Sonny Weighell', NULL, 'ule/dele', 'Feminino', '1996-05-09', 'Casado', '61011535738', 'sweighell5y@sogou.com', '24051228', 'Ativo, Desativo'),
(216, 'Damon Furzer', NULL, 'ele/dele', 'Outro', '2001-05-15', 'Casado', '45056240896', 'dfurzer5z@is.gd', '07931795', 'Ativo, Desativo'),
(217, 'Zebulen Letts', NULL, 'elu/delu', 'Masculino', '2003-07-10', 'Solteiro', '71350069799', 'zletts60@narod.ru', '09876748', 'Ativo, Desativo'),
(218, 'Billie Leadbetter', NULL, 'ele/dele', 'Feminino', '1980-09-12', 'Solteiro', '09772614683', 'bleadbetter61@usgs.gov', '55270721', 'Ativo, Desativo'),
(219, 'Freddi Carluccio', 'Freddi', 'ela/dela', 'Outro', '1990-08-21', 'Solteiro', '61692610308', 'fcarluccio62@artisteer.com', '56590930', 'Ativo, Desativo'),
(220, 'Donall Peet', NULL, 'ula/dula', 'Masculino', '1984-09-19', 'Viúvo', '11702885762', 'dpeet63@amazon.co.uk', '03723726', 'Ativo, Desativo'),
(221, 'Margit Farleigh', NULL, 'ele/dele', 'Masculino', '2003-02-17', 'Viúvo', '86904412606', 'mfarleigh64@altervista.org', '59073897', 'Ativo, Desativo'),
(222, 'Timothy McElree', NULL, 'ule/dele', 'Masculino', '1984-11-05', 'Solteiro', '37006230451', 'tmcelree65@miibeian.gov.cn', '89428137', 'Ativo, Desativo'),
(223, 'Marve Surfleet', NULL, 'ulu/dulu', 'Prefiriu não informar', '1978-01-22', 'Casado', '35037548983', 'msurfleet66@thetimes.co.uk', '92942197', 'Ativo, Desativo'),
(224, 'Beniamino Gilli', NULL, 'ela/dela', 'Masculino', '1985-04-27', 'Solteiro', '54359003727', 'bgilli67@fastcompany.com', '67403955', 'Ativo, Desativo'),
(225, 'Morris MacHoste', NULL, 'ula/dula', 'Feminino', '1995-11-29', 'Solteiro', '38228516415', 'mmachoste68@google.com.br', '44322444', 'Ativo, Desativo'),
(226, 'Pattie Evert', NULL, 'elu/delu', 'Outro', '1980-05-28', 'Solteiro', '57565463067', 'pevert69@elpais.com', '40922294', 'Ativo, Desativo'),
(227, 'Devonna Medlin', NULL, 'ule/dele', 'Feminino', '2005-03-26', 'Viúvo', '20705383998', 'dmedlin6a@squarespace.com', '89623229', 'Ativo, Desativo'),
(228, 'Juli Oki', NULL, 'elu/delu', 'Prefiriu não informar', '1993-06-04', 'Casado', '79326779995', 'joki6b@123-reg.co.uk', '33254299', 'Ativo, Desativo'),
(229, 'Burtie Glowacha', 'Burtie', 'ele/dele', 'Feminino', '1977-01-29', 'Solteiro', '28378114717', 'bglowacha6c@amazon.co.uk', '84131569', 'Ativo, Desativo'),
(230, 'Hermann Longforth', NULL, 'ula/dula', 'Prefiriu não informar', '2006-05-20', 'Solteiro', '56343778254', 'hlongforth6d@etsy.com', '04469748', 'Ativo, Desativo'),
(231, 'Eliot Dalwood', NULL, 'ele/dele', 'Prefiriu não informar', '1980-04-16', 'Viúvo', '24657690753', 'edalwood6e@freewebs.com', '91740382', 'Ativo, Desativo'),
(232, 'Consuelo Roofe', NULL, 'ula/dula', 'Feminino', '1997-09-06', 'Viúvo', '93179548518', 'croofe6f@howstuffworks.com', '83553854', 'Ativo, Desativo'),
(233, 'Hamnet MacKimm', NULL, 'ela/dela', 'Masculino', '1973-07-14', 'Viúvo', '42421599156', 'hmackimm6g@seattletimes.com', '98654576', 'Ativo, Desativo'),
(234, 'Spike Rettie', 'Spike', 'elu/delu', 'Outro', '1988-03-03', 'Viúvo', '56169152654', 'srettie6h@samsung.com', '57444094', 'Ativo, Desativo'),
(235, 'Zola De Lorenzo', 'Zola', 'ule/dele', 'Masculino', '2005-09-29', 'Casado', '74721781864', 'zde6i@newyorker.com', '48362322', 'Ativo, Desativo'),
(236, 'Verine Dimberline', 'Verine', 'ela/dela', 'Outro', '1988-03-20', 'Viúvo', '66127143781', 'vdimberline6j@pagesperso-orange.fr', '25802426', 'Ativo, Desativo'),
(237, 'Danyelle Clapson', NULL, 'elu/delu', 'Feminino', '1998-08-12', 'Solteiro', '12315227264', 'dclapson6k@blogtalkradio.com', '57854057', 'Ativo, Desativo'),
(238, 'Delcine Pontin', NULL, 'ule/dele', 'Masculino', '1984-10-18', 'Solteiro', '67792764216', 'dpontin6l@gravatar.com', '98434789', 'Ativo, Desativo'),
(239, 'Valentia Berrygun', NULL, 'ela/dela', 'Prefiriu não informar', '1979-10-28', 'Viúvo', '92719643616', 'vberrygun6m@hostgator.com', '10056799', 'Ativo, Desativo'),
(240, 'Franky Cupitt', NULL, 'ela/dela', 'Prefiriu não informar', '2006-03-25', 'Casado', '55225321150', 'fcupitt6n@washingtonpost.com', '00276344', 'Ativo, Desativo'),
(241, 'Gabriella Lurcock', NULL, 'elu/delu', 'Outro', '2003-02-03', 'Viúvo', '22720165882', 'glurcock6o@epa.gov', '17519547', 'Ativo, Desativo'),
(242, 'Wat Broadberrie', 'Wat', 'ula/dula', 'Masculino', '1997-09-23', 'Solteiro', '94700036891', 'wbroadberrie6p@goo.ne.jp', '54469955', 'Ativo, Desativo'),
(243, 'Carlynne Holbury', NULL, 'elu/delu', 'Outro', '1980-04-16', 'Solteiro', '76983467606', 'cholbury6q@acquirethisname.com', '83199569', 'Ativo, Desativo'),
(244, 'Eudora Betteson', 'Eudora', 'ulu/dulu', 'Feminino', '1987-09-13', 'Viúvo', '70849775803', 'ebetteson6r@fda.gov', '19362138', 'Ativo, Desativo'),
(245, 'Darin Epinoy', NULL, 'ele/dele', 'Masculino', '1982-12-17', 'Viúvo', '59795199912', 'depinoy6s@dedecms.com', '39275963', 'Ativo, Desativo'),
(246, 'Amble Glandon', NULL, 'ulu/dulu', 'Prefiriu não informar', '1997-12-02', 'Casado', '32106901312', 'aglandon6t@alibaba.com', '33774116', 'Ativo, Desativo'),
(247, 'Davey Siverns', NULL, 'ula/dula', 'Masculino', '1997-09-16', 'Casado', '44717192516', 'dsiverns6u@psu.edu', '24325040', 'Ativo, Desativo'),
(248, 'Kippy Naire', 'Kippy', 'elu/delu', 'Prefiriu não informar', '1974-10-27', 'Casado', '70440579711', 'knaire6v@elpais.com', '61947937', 'Ativo, Desativo'),
(249, 'Sarah Warmisham', NULL, 'ulu/dulu', 'Feminino', '1992-10-22', 'Casado', '89645493549', 'swarmisham6w@statcounter.com', '58559033', 'Ativo, Desativo'),
(250, 'Lenette O\'Crotty', NULL, 'ela/dela', 'Outro', '1972-08-13', 'Viúvo', '65816465284', 'locrotty6x@angelfire.com', '48854181', 'Ativo, Desativo'),
(251, 'Deina MacCarter', NULL, 'ula/dula', 'Outro', '1977-06-12', 'Casado', '19055486054', 'dmaccarter6y@newsvine.com', '40449334', 'Ativo, Desativo'),
(252, 'Russ Jeppensen', NULL, 'ele/dele', 'Masculino', '1978-05-10', 'Viúvo', '70487912381', 'rjeppensen6z@jugem.jp', '10949026', 'Ativo, Desativo'),
(253, 'Gayel Pinckney', NULL, 'ele/dele', 'Prefiriu não informar', '1984-06-06', 'Viúvo', '90069194397', 'gpinckney70@woothemes.com', '74885786', 'Ativo, Desativo'),
(254, 'Wittie Grzes', NULL, 'ela/dela', 'Masculino', '1976-11-05', 'Casado', '93162864210', 'wgrzes71@loc.gov', '28783176', 'Ativo, Desativo'),
(255, 'Adriena Stenett', NULL, 'ula/dula', 'Feminino', '1994-11-18', 'Casado', '78162167109', 'astenett72@alibaba.com', '87913139', 'Ativo, Desativo'),
(256, 'Sanford Knevett', NULL, 'elu/delu', 'Feminino', '1973-08-29', 'Solteiro', '54801606675', 'sknevett73@multiply.com', '00655112', 'Ativo, Desativo'),
(257, 'Maxine Bein', 'Maxine', 'ulu/dulu', 'Feminino', '1992-09-09', 'Casado', '10917702336', 'mbein74@utexas.edu', '00237184', 'Ativo, Desativo'),
(258, 'Abeu Powys', NULL, 'ula/dula', 'Outro', '1987-05-29', 'Viúvo', '75213761877', 'apowys75@t-online.de', '30356856', 'Ativo, Desativo'),
(259, 'Albina Ranald', NULL, 'ula/dula', 'Masculino', '1974-09-07', 'Solteiro', '00002851725', 'aranald76@dion.ne.jp', '69203163', 'Ativo, Desativo'),
(260, 'Remington Gerdts', NULL, 'ule/dele', 'Prefiriu não informar', '1971-03-07', 'Viúvo', '26727643901', 'rgerdts77@auda.org.au', '10880368', 'Ativo, Desativo'),
(261, 'L;urette Gregore', 'L;urette', 'ulu/dulu', 'Feminino', '1978-02-28', 'Viúvo', '29265297674', 'lgregore78@tuttocitta.it', '67311308', 'Ativo, Desativo'),
(262, 'Lynnell Zorro', NULL, 'ela/dela', 'Outro', '1981-10-02', 'Viúvo', '04938732671', 'lzorro79@opera.com', '46424182', 'Ativo, Desativo'),
(263, 'Lucilia Speenden', NULL, 'ele/dele', 'Outro', '1975-07-03', 'Viúvo', '27623980201', 'lspeenden7a@jiathis.com', '62034016', 'Ativo, Desativo'),
(264, 'Ulrike Copins', NULL, 'ula/dula', 'Outro', '1978-07-31', 'Casado', '99825372985', 'ucopins7b@flickr.com', '86359423', 'Ativo, Desativo'),
(265, 'Lezlie Meran', NULL, 'ula/dula', 'Feminino', '2002-08-14', 'Solteiro', '62201941518', 'lmeran7c@furl.net', '40324117', 'Ativo, Desativo'),
(266, 'Eleonore Fleury', NULL, 'ulu/dulu', 'Prefiriu não informar', '1989-01-03', 'Viúvo', '31446869379', 'efleury7d@google.fr', '23837246', 'Ativo, Desativo'),
(267, 'Rowena Lemasney', NULL, 'ula/dula', 'Feminino', '2005-06-10', 'Viúvo', '02481733438', 'rlemasney7e@gmpg.org', '41533530', 'Ativo, Desativo'),
(268, 'Devora Reiners', NULL, 'ulu/dulu', 'Masculino', '1970-12-15', 'Casado', '37509971276', 'dreiners7f@shutterfly.com', '04526907', 'Ativo, Desativo'),
(269, 'Nanice McCollum', NULL, 'ela/dela', 'Outro', '1993-08-15', 'Viúvo', '40671386758', 'nmccollum7g@virginia.edu', '27348795', 'Ativo, Desativo'),
(270, 'Tirrell Todeo', 'Tirrell', 'ula/dula', 'Outro', '2001-04-13', 'Solteiro', '57996137773', 'ttodeo7h@home.pl', '51589376', 'Ativo, Desativo'),
(271, 'Neddy Olliver', NULL, 'ule/dele', 'Prefiriu não informar', '1983-01-15', 'Casado', '58672975426', 'nolliver7i@amazonaws.com', '75640925', 'Ativo, Desativo'),
(272, 'Yvette Ovington', 'Yvette', 'ele/dele', 'Outro', '2003-06-29', 'Viúvo', '69768915298', 'yovington7j@tinypic.com', '11484579', 'Ativo, Desativo'),
(273, 'Sibilla Draayer', NULL, 'ele/dele', 'Outro', '1978-08-03', 'Solteiro', '77124704682', 'sdraayer7k@ibm.com', '86667736', 'Ativo, Desativo'),
(274, 'Ana Seekings', NULL, 'ulu/dulu', 'Feminino', '1981-04-06', 'Casado', '64836089896', 'aseekings7l@huffingtonpost.com', '62516820', 'Ativo, Desativo'),
(275, 'Tiffie Cappleman', NULL, 'elu/delu', 'Masculino', '1980-10-01', 'Viúvo', '15470981864', 'tcappleman7m@1und1.de', '11569766', 'Ativo, Desativo'),
(276, 'Kerby Advani', NULL, 'ulu/dulu', 'Prefiriu não informar', '1977-02-10', 'Casado', '56564087521', 'kadvani7n@nsw.gov.au', '69340803', 'Ativo, Desativo'),
(277, 'Irv Brodhead', NULL, 'ele/dele', 'Feminino', '2005-03-27', 'Viúvo', '82153366722', 'ibrodhead7o@trellian.com', '03436778', 'Ativo, Desativo'),
(278, 'Marigold Mariner', NULL, 'ele/dele', 'Outro', '1974-07-22', 'Solteiro', '43551948268', 'mmariner7p@hao123.com', '48938673', 'Ativo, Desativo'),
(279, 'Scot Morffew', NULL, 'ele/dele', 'Prefiriu não informar', '1991-11-28', 'Solteiro', '36428605477', 'smorffew7q@hibu.com', '34757022', 'Ativo, Desativo'),
(280, 'Reilly McLay', NULL, 'ule/dele', 'Outro', '1992-11-08', 'Casado', '20583633488', 'rmclay7r@opensource.org', '13682368', 'Ativo, Desativo'),
(281, 'Madelin Illsley', NULL, 'ule/dele', 'Feminino', '1981-07-24', 'Casado', '08128900725', 'millsley7s@macromedia.com', '66789638', 'Ativo, Desativo'),
(282, 'Belinda Dufton', NULL, 'elu/delu', 'Outro', '1994-08-09', 'Solteiro', '55154617290', 'bdufton7t@1688.com', '43467989', 'Ativo, Desativo'),
(283, 'Kora Madgewick', NULL, 'ulu/dulu', 'Masculino', '1994-02-06', 'Casado', '49542007022', 'kmadgewick7u@census.gov', '67885171', 'Ativo, Desativo'),
(284, 'Anabelle Jagson', NULL, 'ule/dele', 'Prefiriu não informar', '1982-03-29', 'Viúvo', '58246237902', 'ajagson7v@woothemes.com', '78754555', 'Ativo, Desativo'),
(285, 'Flossie Folca', NULL, 'ule/dele', 'Prefiriu não informar', '1976-05-16', 'Viúvo', '64484311706', 'ffolca7w@prlog.org', '36453342', 'Ativo, Desativo'),
(286, 'Fiona Langland', 'Fiona', 'ula/dula', 'Feminino', '1975-11-21', 'Viúvo', '20020744395', 'flangland7x@rediff.com', '54522794', 'Ativo, Desativo'),
(287, 'Cthrine Cabral', NULL, 'ele/dele', 'Masculino', '1999-01-18', 'Solteiro', '81032899849', 'ccabral7y@google.cn', '39015791', 'Ativo, Desativo'),
(288, 'Eb Phillins', NULL, 'ele/dele', 'Masculino', '1971-05-31', 'Viúvo', '36841627543', 'ephillins7z@livejournal.com', '85497918', 'Ativo, Desativo'),
(289, 'Ingeberg Jiroutka', 'Ingeberg', 'ele/dele', 'Masculino', '1974-08-21', 'Casado', '05249961245', 'ijiroutka80@fastcompany.com', '68271706', 'Ativo, Desativo'),
(290, 'Zorah Brookzie', NULL, 'ulu/dulu', 'Outro', '1986-03-24', 'Viúvo', '42235933316', 'zbrookzie81@mysql.com', '31835265', 'Ativo, Desativo'),
(291, 'Jacky Jemison', NULL, 'ela/dela', 'Feminino', '1971-03-22', 'Casado', '52134762988', 'jjemison82@economist.com', '55394448', 'Ativo, Desativo'),
(292, 'Ted D\'Ambrosio', 'Ted', 'ele/dele', 'Outro', '2004-09-28', 'Casado', '62446738413', 'tdambrosio83@nsw.gov.au', '87249903', 'Ativo, Desativo'),
(293, 'Sammy MacDavitt', NULL, 'ulu/dulu', 'Masculino', '1995-07-27', 'Solteiro', '14133075797', 'smacdavitt84@pinterest.com', '95520501', 'Ativo, Desativo'),
(294, 'Eyde Rouch', NULL, 'ela/dela', 'Masculino', '1981-02-01', 'Casado', '62221516946', 'erouch85@blogspot.com', '65770912', 'Ativo, Desativo'),
(295, 'Giuseppe Daoust', NULL, 'ula/dula', 'Prefiriu não informar', '1983-04-19', 'Casado', '06431757344', 'gdaoust86@nyu.edu', '26044257', 'Ativo, Desativo'),
(296, 'Silas Agass', NULL, 'elu/delu', 'Feminino', '1975-04-23', 'Solteiro', '03023844164', 'sagass87@ted.com', '00083508', 'Ativo, Desativo'),
(297, 'Laurella Danick', NULL, 'ela/dela', 'Feminino', '1972-11-29', 'Casado', '64584373571', 'ldanick88@samsung.com', '91124429', 'Ativo, Desativo'),
(298, 'Hamlin Morgan', NULL, 'ulu/dulu', 'Prefiriu não informar', '1999-07-31', 'Casado', '44326592205', 'hmorgan89@cdbaby.com', '71617760', 'Ativo, Desativo'),
(299, 'Quincey Rapsey', NULL, 'elu/delu', 'Masculino', '1977-07-14', 'Casado', '00848899508', 'qrapsey8a@engadget.com', '07876494', 'Ativo, Desativo'),
(300, 'Xenia Jaray', NULL, 'ule/dele', 'Feminino', '1998-05-11', 'Casado', '41281957576', 'xjaray8b@usnews.com', '58688193', 'Ativo, Desativo'),
(301, 'Mordy Markwell', NULL, 'ela/dela', 'Outro', '1977-11-27', 'Solteiro', '12125965832', 'mmarkwell8c@privacy.gov.au', '75515062', 'Ativo, Desativo'),
(302, 'Nero Wyer', NULL, 'elu/delu', 'Feminino', '1995-06-30', 'Casado', '81393347994', 'nwyer8d@rambler.ru', '77477831', 'Ativo, Desativo'),
(303, 'Tobe Nary', 'Tobe', 'ela/dela', 'Prefiriu não informar', '1983-09-19', 'Viúvo', '30960397003', 'tnary8e@myspace.com', '46282472', 'Ativo, Desativo'),
(304, 'Sheri Ivashin', NULL, 'ula/dula', 'Feminino', '1998-05-16', 'Viúvo', '57701012827', 'sivashin8f@arstechnica.com', '33206859', 'Ativo, Desativo'),
(305, 'Annetta Vaz', NULL, 'elu/delu', 'Masculino', '1983-08-31', 'Casado', '01017356731', 'avaz8g@taobao.com', '94599514', 'Ativo, Desativo'),
(306, 'Joline Wordesworth', 'Joline', 'elu/delu', 'Outro', '1993-10-26', 'Viúvo', '35184953482', 'jwordesworth8h@furl.net', '15023974', 'Ativo, Desativo'),
(307, 'Ollie Simonou', 'Ollie', 'elu/delu', 'Prefiriu não informar', '2002-02-17', 'Solteiro', '71926615990', 'osimonou8i@technorati.com', '37699301', 'Ativo, Desativo'),
(308, 'Christa Mephan', NULL, 'ulu/dulu', 'Prefiriu não informar', '1981-03-13', 'Solteiro', '89039501949', 'cmephan8j@pcworld.com', '00757218', 'Ativo, Desativo'),
(309, 'Melina Scoggans', NULL, 'ula/dula', 'Outro', '2000-03-27', 'Casado', '07930513688', 'mscoggans8k@dagondesign.com', '36846961', 'Ativo, Desativo'),
(310, 'Rafaelia McClean', NULL, 'ulu/dulu', 'Prefiriu não informar', '1977-10-29', 'Solteiro', '01600516549', 'rmcclean8l@ftc.gov', '31101376', 'Ativo, Desativo'),
(311, 'Nadeen Stiegers', 'Nadeen', 'ula/dula', 'Prefiriu não informar', '1996-12-10', 'Solteiro', '32106678007', 'nstiegers8m@webs.com', '44772753', 'Ativo, Desativo'),
(312, 'Brenna Branston', 'Brenna', 'elu/delu', 'Prefiriu não informar', '1976-04-06', 'Solteiro', '37011321027', 'bbranston8n@moonfruit.com', '24519596', 'Ativo, Desativo'),
(313, 'Ade Imesson', NULL, 'elu/delu', 'Prefiriu não informar', '1999-10-10', 'Casado', '34194575099', 'aimesson8o@auda.org.au', '43827300', 'Ativo, Desativo'),
(314, 'Brinna Winterburn', NULL, 'ela/dela', 'Prefiriu não informar', '1976-08-07', 'Solteiro', '71687423126', 'bwinterburn8p@usgs.gov', '81684643', 'Ativo, Desativo'),
(315, 'Josh Endrighi', NULL, 'ele/dele', 'Outro', '1977-01-31', 'Casado', '30187945339', 'jendrighi8q@typepad.com', '02114479', 'Ativo, Desativo'),
(316, 'Vonny Riepel', NULL, 'ula/dula', 'Outro', '2006-06-29', 'Casado', '04254524967', 'vriepel8r@cnbc.com', '57436233', 'Ativo, Desativo'),
(317, 'Mordecai Lynde', NULL, 'ulu/dulu', 'Feminino', '1980-07-18', 'Solteiro', '61786902197', 'mlynde8s@boston.com', '05527380', 'Ativo, Desativo'),
(318, 'Dulcia Pearson', NULL, 'elu/delu', 'Prefiriu não informar', '1977-01-12', 'Solteiro', '74991982937', 'dpearson8t@google.cn', '19143604', 'Ativo, Desativo'),
(319, 'Wilhelmina Bichard', NULL, 'ule/dele', 'Masculino', '1992-11-23', 'Viúvo', '82940303974', 'wbichard8u@mapquest.com', '56262083', 'Ativo, Desativo'),
(320, 'Ximenes Elmes', NULL, 'ule/dele', 'Prefiriu não informar', '1998-07-26', 'Viúvo', '39839157747', 'xelmes8v@free.fr', '25841186', 'Ativo, Desativo'),
(321, 'Augusta Ainsby', 'Augusta', 'elu/delu', 'Prefiriu não informar', '1988-02-19', 'Solteiro', '44992656535', 'aainsby8w@cdc.gov', '44352792', 'Ativo, Desativo'),
(322, 'Merlina Jessett', NULL, 'ula/dula', 'Prefiriu não informar', '1972-07-18', 'Casado', '51673408283', 'mjessett8x@unicef.org', '82257281', 'Ativo, Desativo'),
(323, 'Osbert Gunn', NULL, 'ula/dula', 'Outro', '1974-03-03', 'Casado', '93026989437', 'ogunn8y@icio.us', '58032389', 'Ativo, Desativo'),
(324, 'Maurice Wilhelmy', NULL, 'elu/delu', 'Masculino', '1980-01-27', 'Viúvo', '08829532493', 'mwilhelmy8z@symantec.com', '23799967', 'Ativo, Desativo'),
(325, 'Gusta Digle', NULL, 'ulu/dulu', 'Feminino', '1976-08-14', 'Casado', '55723297086', 'gdigle90@wix.com', '02051131', 'Ativo, Desativo'),
(326, 'Jule Radbond', NULL, 'ula/dula', 'Prefiriu não informar', '2006-02-11', 'Solteiro', '24374968830', 'jradbond91@marriott.com', '41690716', 'Ativo, Desativo'),
(327, 'Ronnica Darridon', NULL, 'elu/delu', 'Masculino', '1992-06-04', 'Solteiro', '36308930093', 'rdarridon92@qq.com', '79928012', 'Ativo, Desativo');
INSERT INTO `cliente_01` (`A01_id`, `A01_nome`, `A01_nomeSocial`, `AO1_pronome`, `A01_genero`, `A01_dataNasc`, `A01_estadoCivil`, `A01_cpf`, `A01_email`, `A01_cepOriginal`, `A01_estado`) VALUES
(328, 'Delinda Silman', NULL, 'elu/delu', 'Outro', '2006-02-10', 'Viúvo', '97801549702', 'dsilman93@goodreads.com', '71587286', 'Ativo, Desativo'),
(329, 'Paige Russe', NULL, 'ulu/dulu', 'Prefiriu não informar', '1974-02-08', 'Solteiro', '09473800541', 'prusse94@typepad.com', '65416923', 'Ativo, Desativo'),
(330, 'Gabie Billham', 'Gabie', 'ela/dela', 'Prefiriu não informar', '1996-09-04', 'Casado', '50460091742', 'gbillham95@list-manage.com', '98871842', 'Ativo, Desativo'),
(331, 'Rodina Justun', NULL, 'ulu/dulu', 'Feminino', '1998-04-28', 'Viúvo', '48892545981', 'rjustun96@latimes.com', '81924642', 'Ativo, Desativo'),
(332, 'Ardath Grigoriscu', NULL, 'ulu/dulu', 'Feminino', '2004-08-09', 'Solteiro', '25242492314', 'agrigoriscu97@foxnews.com', '12665141', 'Ativo, Desativo'),
(333, 'Theresita Madgin', NULL, 'ele/dele', 'Outro', '1974-01-27', 'Solteiro', '21467277199', 'tmadgin98@amazon.co.uk', '11108564', 'Ativo, Desativo'),
(334, 'Filia Vaughan-Hughes', NULL, 'ele/dele', 'Prefiriu não informar', '1993-08-26', 'Viúvo', '28685222292', 'fvaughanhughes99@prweb.com', '48983992', 'Ativo, Desativo'),
(335, 'Hanan Gerding', NULL, 'ela/dela', 'Feminino', '1990-04-03', 'Casado', '85206724429', 'hgerding9a@ucoz.ru', '34437969', 'Ativo, Desativo'),
(336, 'Khalil McMurray', NULL, 'ule/dele', 'Outro', '2001-11-01', 'Casado', '84281908231', 'kmcmurray9b@technorati.com', '76856100', 'Ativo, Desativo'),
(337, 'Cathleen Mannakee', NULL, 'ele/dele', 'Masculino', '1992-02-25', 'Viúvo', '42009876779', 'cmannakee9c@technorati.com', '69527750', 'Ativo, Desativo'),
(338, 'Brandy Gaze', NULL, 'ule/dele', 'Outro', '1975-07-24', 'Casado', '80444223395', 'bgaze9d@wired.com', '68099227', 'Ativo, Desativo'),
(339, 'Constantia Kauscher', 'Constantia', 'ele/dele', 'Prefiriu não informar', '1994-05-24', 'Solteiro', '68174751032', 'ckauscher9e@fastcompany.com', '40890783', 'Ativo, Desativo'),
(340, 'Cristina Roycraft', NULL, 'ula/dula', 'Feminino', '1975-03-23', 'Casado', '44050060314', 'croycraft9f@yolasite.com', '18579740', 'Ativo, Desativo'),
(341, 'Lanie Repp', NULL, 'elu/delu', 'Prefiriu não informar', '2003-07-10', 'Viúvo', '50480632010', 'lrepp9g@tumblr.com', '65061397', 'Ativo, Desativo'),
(342, 'Cami Panting', NULL, 'elu/delu', 'Feminino', '1991-08-30', 'Viúvo', '74007512861', 'cpanting9h@linkedin.com', '12189965', 'Ativo, Desativo'),
(343, 'Hermia Croster', NULL, 'ele/dele', 'Outro', '1979-12-30', 'Casado', '18925859671', 'hcroster9i@google.de', '16668296', 'Ativo, Desativo'),
(344, 'Eleanore Walch', 'Eleanore', 'ula/dula', 'Outro', '1978-02-19', 'Viúvo', '16389096412', 'ewalch9j@fastcompany.com', '41515892', 'Ativo, Desativo'),
(345, 'Nell Nestor', NULL, 'ule/dele', 'Prefiriu não informar', '1978-01-22', 'Solteiro', '15689417985', 'nnestor9k@weebly.com', '02467483', 'Ativo, Desativo'),
(346, 'Melody Latore', NULL, 'elu/delu', 'Feminino', '1982-02-05', 'Solteiro', '49142493077', 'mlatore9l@vistaprint.com', '22624342', 'Ativo, Desativo'),
(347, 'Danyelle Maceur', NULL, 'ule/dele', 'Outro', '1983-04-16', 'Casado', '55194546702', 'dmaceur9m@google.nl', '30201273', 'Ativo, Desativo'),
(348, 'Hillier Heamus', 'Hillier', 'ele/dele', 'Prefiriu não informar', '2002-09-07', 'Viúvo', '51867066592', 'hheamus9n@cornell.edu', '33444769', 'Ativo, Desativo'),
(349, 'Chrissy Shaves', NULL, 'ele/dele', 'Feminino', '2001-07-09', 'Casado', '22887033655', 'cshaves9o@etsy.com', '70536413', 'Ativo, Desativo'),
(350, 'Shanan Dionsetto', NULL, 'ulu/dulu', 'Masculino', '1977-07-11', 'Casado', '86377987953', 'sdionsetto9p@irs.gov', '07511770', 'Ativo, Desativo'),
(351, 'Myrta Learmouth', NULL, 'ule/dele', 'Masculino', '1984-06-08', 'Viúvo', '65916753175', 'mlearmouth9q@gov.uk', '78329148', 'Ativo, Desativo'),
(352, 'Dallis Ilyasov', NULL, 'ele/dele', 'Prefiriu não informar', '1992-01-09', 'Viúvo', '01161934830', 'dilyasov9r@51.la', '28985865', 'Ativo, Desativo'),
(353, 'Emmett Risebrow', NULL, 'ele/dele', 'Outro', '1973-03-23', 'Viúvo', '47678856309', 'erisebrow9s@nps.gov', '54767097', 'Ativo, Desativo'),
(354, 'Opal Dunstan', NULL, 'ule/dele', 'Masculino', '1971-08-17', 'Casado', '12722493331', 'odunstan9t@canalblog.com', '32273628', 'Ativo, Desativo'),
(355, 'Lorelle Gardiner', NULL, 'ulu/dulu', 'Outro', '1977-02-03', 'Casado', '83534710899', 'lgardiner9u@buzzfeed.com', '21572335', 'Ativo, Desativo'),
(356, 'Thane Tourle', NULL, 'ela/dela', 'Outro', '1974-02-26', 'Casado', '03711280768', 'ttourle9v@mapy.cz', '78018615', 'Ativo, Desativo'),
(357, 'Jessi Calwell', NULL, 'ele/dele', 'Prefiriu não informar', '1977-02-14', 'Solteiro', '73492433997', 'jcalwell9w@independent.co.uk', '09224411', 'Ativo, Desativo'),
(358, 'Mozelle Seale', NULL, 'ula/dula', 'Feminino', '1979-11-25', 'Casado', '05872297718', 'mseale9x@independent.co.uk', '65080745', 'Ativo, Desativo'),
(359, 'Ario Earles', NULL, 'ela/dela', 'Prefiriu não informar', '1999-02-16', 'Viúvo', '75611703144', 'aearles9y@google.ca', '12121068', 'Ativo, Desativo'),
(360, 'Dunn Brownsey', NULL, 'ele/dele', 'Outro', '1994-12-24', 'Solteiro', '61996538449', 'dbrownsey9z@harvard.edu', '17546938', 'Ativo, Desativo'),
(361, 'Sherry Mount', NULL, 'ule/dele', 'Masculino', '1973-12-08', 'Viúvo', '95101129669', 'smounta0@newsvine.com', '30834742', 'Ativo, Desativo'),
(362, 'Sybilla Happel', 'Sybilla', 'elu/delu', 'Prefiriu não informar', '1982-05-15', 'Casado', '04601198127', 'shappela1@live.com', '57485927', 'Ativo, Desativo'),
(363, 'Even Tetther', NULL, 'elu/delu', 'Prefiriu não informar', '1977-04-02', 'Casado', '52752532369', 'etetthera2@github.io', '37270686', 'Ativo, Desativo'),
(364, 'Cicily Wegner', NULL, 'ula/dula', 'Feminino', '1993-08-05', 'Viúvo', '49287273620', 'cwegnera3@google.nl', '88620424', 'Ativo, Desativo'),
(365, 'Raleigh Duggan', NULL, 'ele/dele', 'Prefiriu não informar', '1975-12-10', 'Solteiro', '02419404324', 'rduggana4@latimes.com', '08543973', 'Ativo, Desativo'),
(366, 'Sibelle Bissatt', NULL, 'ule/dele', 'Prefiriu não informar', '1975-09-21', 'Viúvo', '52683818881', 'sbissatta5@gov.uk', '52992560', 'Ativo, Desativo'),
(367, 'Lodovico Jurasek', NULL, 'ulu/dulu', 'Masculino', '1971-03-07', 'Casado', '43637734660', 'ljuraseka6@timesonline.co.uk', '38913242', 'Ativo, Desativo'),
(368, 'Holden Lisciardelli', NULL, 'ule/dele', 'Masculino', '1985-07-31', 'Casado', '83240562245', 'hlisciardellia7@skyrock.com', '76868557', 'Ativo, Desativo'),
(369, 'Torr Milstead', NULL, 'ulu/dulu', 'Prefiriu não informar', '1982-12-16', 'Viúvo', '24690258601', 'tmilsteada8@elpais.com', '20513561', 'Ativo, Desativo'),
(370, 'Ario Mossdale', NULL, 'ela/dela', 'Feminino', '2003-01-28', 'Solteiro', '91260907888', 'amossdalea9@linkedin.com', '73966248', 'Ativo, Desativo'),
(371, 'Lombard MacCaughey', 'Lombard', 'ule/dele', 'Feminino', '1992-01-23', 'Viúvo', '73604929109', 'lmaccaugheyaa@quantcast.com', '16714556', 'Ativo, Desativo'),
(372, 'Liv Farnie', NULL, 'ule/dele', 'Feminino', '1983-12-21', 'Solteiro', '10645795949', 'lfarnieab@columbia.edu', '35913105', 'Ativo, Desativo'),
(373, 'Godiva Fritz', NULL, 'ulu/dulu', 'Prefiriu não informar', '1974-09-18', 'Solteiro', '01511196267', 'gfritzac@ifeng.com', '83400527', 'Ativo, Desativo'),
(374, 'Annice Lillee', NULL, 'ula/dula', 'Prefiriu não informar', '1971-03-24', 'Viúvo', '11678220502', 'alilleead@epa.gov', '43542135', 'Ativo, Desativo'),
(375, 'Garrek Pickrill', NULL, 'elu/delu', 'Masculino', '1995-04-26', 'Casado', '23038421207', 'gpickrillae@so-net.ne.jp', '34371876', 'Ativo, Desativo'),
(376, 'Imojean Primmer', 'Imojean', 'ela/dela', 'Outro', '1995-02-13', 'Casado', '33214336094', 'iprimmeraf@weather.com', '88092662', 'Ativo, Desativo'),
(377, 'Maire Pennone', NULL, 'ula/dula', 'Outro', '2006-09-03', 'Solteiro', '39988951178', 'mpennoneag@cnet.com', '81846899', 'Ativo, Desativo'),
(378, 'Rabbi Mardlin', NULL, 'ulu/dulu', 'Prefiriu não informar', '2003-07-19', 'Solteiro', '76190122659', 'rmardlinah@free.fr', '26128341', 'Ativo, Desativo'),
(379, 'Hughie Topham', NULL, 'ule/dele', 'Outro', '1990-02-19', 'Viúvo', '89372779523', 'htophamai@ucla.edu', '76493507', 'Ativo, Desativo'),
(380, 'Zed Campkin', NULL, 'ulu/dulu', 'Outro', '1984-10-06', 'Solteiro', '53588279956', 'zcampkinaj@europa.eu', '29435214', 'Ativo, Desativo'),
(381, 'Cassandry Mityakov', 'Cassandry', 'ele/dele', 'Masculino', '2000-08-29', 'Viúvo', '35105588502', 'cmityakovak@naver.com', '14017003', 'Ativo, Desativo'),
(382, 'Cary Holligan', NULL, 'ula/dula', 'Outro', '1971-06-24', 'Viúvo', '47619729879', 'cholliganal@deviantart.com', '89682493', 'Ativo, Desativo'),
(383, 'Coreen Crichmer', NULL, 'elu/delu', 'Prefiriu não informar', '1987-05-21', 'Casado', '97575655365', 'ccrichmeram@dropbox.com', '66529207', 'Ativo, Desativo'),
(384, 'Halli Sefton', NULL, 'elu/delu', 'Masculino', '1971-05-12', 'Solteiro', '27016714446', 'hseftonan@howstuffworks.com', '28234037', 'Ativo, Desativo'),
(385, 'Milty Twine', NULL, 'ele/dele', 'Feminino', '1989-01-03', 'Viúvo', '10976072216', 'mtwineao@java.com', '79300404', 'Ativo, Desativo'),
(386, 'Stanford Clemencet', NULL, 'elu/delu', 'Feminino', '1972-02-09', 'Casado', '34813171597', 'sclemencetap@oaic.gov.au', '18868548', 'Ativo, Desativo'),
(387, 'Cinderella Astles', NULL, 'ele/dele', 'Prefiriu não informar', '1997-01-22', 'Viúvo', '84008078805', 'castlesaq@newsvine.com', '52175418', 'Ativo, Desativo'),
(388, 'Blinny Erskin', NULL, 'ulu/dulu', 'Prefiriu não informar', '2001-11-27', 'Solteiro', '86653366985', 'berskinar@ox.ac.uk', '62002249', 'Ativo, Desativo'),
(389, 'Darrelle Malkinson', NULL, 'ulu/dulu', 'Feminino', '1985-01-01', 'Viúvo', '07690511784', 'dmalkinsonas@yale.edu', '73355438', 'Ativo, Desativo'),
(390, 'Bella Tillot', 'Bella', 'ulu/dulu', 'Outro', '1996-05-01', 'Viúvo', '00870411839', 'btillotat@1und1.de', '86791337', 'Ativo, Desativo'),
(391, 'Pansie Mitkov', NULL, 'ele/dele', 'Outro', '2001-01-17', 'Viúvo', '94699626606', 'pmitkovau@walmart.com', '49646106', 'Ativo, Desativo'),
(392, 'Suellen Roll', NULL, 'elu/delu', 'Masculino', '1984-05-03', 'Casado', '59043051460', 'srollav@vistaprint.com', '26858959', 'Ativo, Desativo'),
(393, 'Salome Ivannikov', NULL, 'ela/dela', 'Masculino', '1989-07-21', 'Viúvo', '78883652141', 'sivannikovaw@ocn.ne.jp', '06926863', 'Ativo, Desativo'),
(394, 'Ramonda Hatchett', NULL, 'ule/dele', 'Prefiriu não informar', '1998-11-23', 'Solteiro', '53404087679', 'rhatchettax@so-net.ne.jp', '91904961', 'Ativo, Desativo'),
(395, 'Perry Blose', NULL, 'ula/dula', 'Masculino', '1976-07-02', 'Viúvo', '04730947092', 'pbloseay@mapquest.com', '21427317', 'Ativo, Desativo'),
(396, 'Codie Hawford', NULL, 'ela/dela', 'Outro', '1988-05-16', 'Solteiro', '01543338125', 'chawfordaz@cnn.com', '82700206', 'Ativo, Desativo'),
(397, 'Hatty Leband', 'Hatty', 'elu/delu', 'Outro', '1999-10-26', 'Casado', '43446906783', 'hlebandb0@usa.gov', '64595440', 'Ativo, Desativo'),
(398, 'Stephen Cessford', NULL, 'elu/delu', 'Feminino', '2004-08-21', 'Viúvo', '42922774809', 'scessfordb1@ow.ly', '65542436', 'Ativo, Desativo'),
(399, 'Corbett Tingley', 'Corbett', 'ele/dele', 'Prefiriu não informar', '1996-04-05', 'Viúvo', '45771588448', 'ctingleyb2@google.co.jp', '88096355', 'Ativo, Desativo'),
(400, 'Bibbye Blomefield', NULL, 'elu/delu', 'Outro', '1984-07-24', 'Casado', '20707833554', 'bblomefieldb3@homestead.com', '29389882', 'Ativo, Desativo'),
(401, 'Erna Wareham', NULL, 'ula/dula', 'Masculino', '1999-05-12', 'Casado', '15036009005', 'ewarehamb4@goodreads.com', '20924842', 'Ativo, Desativo'),
(402, 'Gwenora McCrohon', 'Gwenora', 'ule/dele', 'Outro', '1973-04-23', 'Viúvo', '29803784736', 'gmccrohonb5@live.com', '65884246', 'Ativo, Desativo'),
(403, 'Jayne Shillaker', 'Jayne', 'ule/dele', 'Masculino', '1998-09-09', 'Viúvo', '45770383352', 'jshillakerb6@umich.edu', '13877966', 'Ativo, Desativo'),
(404, 'Felice Rouby', 'Felice', 'ele/dele', 'Masculino', '1994-01-22', 'Solteiro', '20675462411', 'froubyb7@forbes.com', '25898172', 'Ativo, Desativo'),
(405, 'Vance Vivers', NULL, 'elu/delu', 'Feminino', '1978-03-04', 'Viúvo', '37702698739', 'vviversb8@harvard.edu', '09317884', 'Ativo, Desativo'),
(406, 'Jermaine Brimfield', NULL, 'elu/delu', 'Prefiriu não informar', '1987-09-08', 'Casado', '57276662851', 'jbrimfieldb9@bloglovin.com', '84934866', 'Ativo, Desativo'),
(407, 'Immanuel Davidwitz', 'Immanuel', 'ulu/dulu', 'Masculino', '1973-07-31', 'Casado', '39476924317', 'idavidwitzba@mozilla.com', '81690412', 'Ativo, Desativo'),
(408, 'Corbet Lockyer', NULL, 'ule/dele', 'Outro', '1982-04-03', 'Solteiro', '79708316767', 'clockyerbb@accuweather.com', '90156529', 'Ativo, Desativo'),
(409, 'Haleigh Bentje', 'Haleigh', 'ele/dele', 'Feminino', '1992-03-15', 'Casado', '00402764683', 'hbentjebc@comcast.net', '93601434', 'Ativo, Desativo'),
(410, 'Geralda Hamblett', NULL, 'ulu/dulu', 'Outro', '1970-11-02', 'Casado', '76154910122', 'ghamblettbd@ebay.com', '21454732', 'Ativo, Desativo'),
(411, 'Gib Twamley', NULL, 'ela/dela', 'Masculino', '1976-07-15', 'Solteiro', '66321516108', 'gtwamleybe@google.es', '38408314', 'Ativo, Desativo'),
(412, 'Quinta Scherme', NULL, 'ela/dela', 'Prefiriu não informar', '1971-08-10', 'Solteiro', '23231408722', 'qschermebf@g.co', '01107000', 'Ativo, Desativo'),
(413, 'Hillel Oyley', NULL, 'ulu/dulu', 'Masculino', '1980-08-20', 'Casado', '40512068033', 'hoyleybg@weather.com', '63974444', 'Ativo, Desativo'),
(414, 'Dorise Dudley', 'Dorise', 'ele/dele', 'Masculino', '2005-01-21', 'Solteiro', '88899131199', 'ddudleybh@shareasale.com', '98227853', 'Ativo, Desativo'),
(415, 'Lilian Eyree', 'Lilian', 'ule/dele', 'Outro', '1976-01-16', 'Viúvo', '33674035767', 'leyreebi@go.com', '71316922', 'Ativo, Desativo'),
(416, 'Currie Sudworth', NULL, 'ele/dele', 'Feminino', '1993-05-21', 'Casado', '28527879656', 'csudworthbj@live.com', '79838885', 'Ativo, Desativo'),
(417, 'Babbie Wolseley', 'Babbie', 'ule/dele', 'Masculino', '1994-12-07', 'Viúvo', '54740849241', 'bwolseleybk@amazon.co.uk', '91251829', 'Ativo, Desativo'),
(418, 'Fairfax Casseldine', 'Fairfax', 'ele/dele', 'Prefiriu não informar', '1996-01-24', 'Solteiro', '09062963364', 'fcasseldinebl@com.com', '96708394', 'Ativo, Desativo'),
(419, 'Ivan Berford', NULL, 'elu/delu', 'Outro', '2004-12-03', 'Solteiro', '29926765353', 'iberfordbm@istockphoto.com', '06131442', 'Ativo, Desativo'),
(420, 'Filbert Clash', NULL, 'elu/delu', 'Masculino', '1997-01-25', 'Casado', '49404071071', 'fclashbn@163.com', '05352741', 'Ativo, Desativo'),
(421, 'Bobbe Lincke', NULL, 'ele/dele', 'Outro', '1990-10-06', 'Solteiro', '63992021870', 'blinckebo@trellian.com', '08591422', 'Ativo, Desativo'),
(422, 'Raimund Quidenham', NULL, 'ula/dula', 'Outro', '1974-10-30', 'Casado', '26415120536', 'rquidenhambp@omniture.com', '86231953', 'Ativo, Desativo'),
(423, 'Charo Millwater', 'Charo', 'ula/dula', 'Feminino', '1975-05-17', 'Casado', '12578566535', 'cmillwaterbq@yellowpages.com', '19320999', 'Ativo, Desativo'),
(424, 'Sander Ventura', NULL, 'elu/delu', 'Prefiriu não informar', '1999-07-18', 'Viúvo', '05899918397', 'sventurabr@1und1.de', '91725633', 'Ativo, Desativo'),
(425, 'Waverley Monni', NULL, 'ela/dela', 'Outro', '2002-05-31', 'Solteiro', '42821984824', 'wmonnibs@sohu.com', '74330021', 'Ativo, Desativo'),
(426, 'Ricoriki Pembery', NULL, 'ulu/dulu', 'Outro', '1981-05-03', 'Viúvo', '72868471661', 'rpemberybt@nymag.com', '95098979', 'Ativo, Desativo'),
(427, 'Willard Tebbs', NULL, 'ele/dele', 'Outro', '1978-08-06', 'Solteiro', '24797674734', 'wtebbsbu@nps.gov', '18382975', 'Ativo, Desativo'),
(428, 'Lindsy Estabrook', NULL, 'ela/dela', 'Masculino', '1976-09-06', 'Viúvo', '67228267050', 'lestabrookbv@so-net.ne.jp', '01313095', 'Ativo, Desativo'),
(429, 'Oralle Brearty', NULL, 'ula/dula', 'Feminino', '1987-02-12', 'Viúvo', '35621556024', 'obreartybw@scribd.com', '93873467', 'Ativo, Desativo'),
(430, 'Prissie Starsmore', 'Prissie', 'ela/dela', 'Masculino', '1984-12-17', 'Viúvo', '34524137775', 'pstarsmorebx@nydailynews.com', '45469799', 'Ativo, Desativo'),
(431, 'Sheffy Cottom', 'Sheffy', 'ela/dela', 'Outro', '1986-06-12', 'Solteiro', '75304084297', 'scottomby@typepad.com', '06802975', 'Ativo, Desativo'),
(432, 'Billi Rizzardo', NULL, 'elu/delu', 'Masculino', '1981-05-14', 'Casado', '19601066260', 'brizzardobz@wired.com', '29801107', 'Ativo, Desativo'),
(433, 'Bryn Cuzen', NULL, 'ule/dele', 'Masculino', '1975-11-17', 'Viúvo', '43281158479', 'bcuzenc0@wired.com', '63433682', 'Ativo, Desativo'),
(434, 'Gardy Scurr', NULL, 'ela/dela', 'Masculino', '2005-01-13', 'Viúvo', '02789776382', 'gscurrc1@seesaa.net', '38496344', 'Ativo, Desativo'),
(435, 'Cornie Blacklock', 'Cornie', 'elu/delu', 'Outro', '2000-05-08', 'Casado', '22932067261', 'cblacklockc2@earthlink.net', '28285500', 'Ativo, Desativo'),
(436, 'Pablo Ribey', 'Pablo', 'ela/dela', 'Feminino', '1980-08-04', 'Viúvo', '86250628219', 'pribeyc3@xrea.com', '78401976', 'Ativo, Desativo'),
(437, 'Melisent Headington', NULL, 'ela/dela', 'Feminino', '1987-07-09', 'Viúvo', '04126161940', 'mheadingtonc4@xinhuanet.com', '01996092', 'Ativo, Desativo'),
(438, 'Irvin Lecount', NULL, 'ulu/dulu', 'Feminino', '1981-03-12', 'Casado', '45670447554', 'ilecountc5@xrea.com', '75901775', 'Ativo, Desativo'),
(439, 'Randa MacKniely', 'Randa', 'elu/delu', 'Prefiriu não informar', '2003-09-27', 'Solteiro', '36836138707', 'rmacknielyc6@unicef.org', '12166833', 'Ativo, Desativo'),
(440, 'Aurora Artinstall', NULL, 'ela/dela', 'Prefiriu não informar', '1977-11-13', 'Viúvo', '81084837041', 'aartinstallc7@sbwire.com', '27493037', 'Ativo, Desativo'),
(441, 'Elnora Arenson', NULL, 'ula/dula', 'Prefiriu não informar', '1987-05-29', 'Solteiro', '43352132482', 'earensonc8@rambler.ru', '61822225', 'Ativo, Desativo'),
(442, 'Sally Melross', NULL, 'ulu/dulu', 'Masculino', '1998-12-08', 'Casado', '80613026211', 'smelrossc9@cyberchimps.com', '27035546', 'Ativo, Desativo'),
(443, 'Leena Twallin', NULL, 'ule/dele', 'Feminino', '1984-05-11', 'Viúvo', '29369557478', 'ltwallinca@wikimedia.org', '00304750', 'Ativo, Desativo'),
(444, 'Alfredo Everiss', NULL, 'ulu/dulu', 'Prefiriu não informar', '1977-01-12', 'Solteiro', '92952249734', 'aeverisscb@reference.com', '72043036', 'Ativo, Desativo'),
(445, 'Patience Feary', 'Patience', 'ulu/dulu', 'Outro', '1995-10-02', 'Viúvo', '72367936533', 'pfearycc@comsenz.com', '19936489', 'Ativo, Desativo'),
(446, 'Sherry Cota', NULL, 'ela/dela', 'Prefiriu não informar', '1983-04-12', 'Solteiro', '38645425129', 'scotacd@slate.com', '02996744', 'Ativo, Desativo'),
(447, 'Marnia Onion', NULL, 'ele/dele', 'Outro', '1984-01-21', 'Viúvo', '02841554551', 'monionce@deviantart.com', '17013006', 'Ativo, Desativo'),
(448, 'Gavan Lumby', NULL, 'ula/dula', 'Masculino', '1976-08-28', 'Solteiro', '85769305660', 'glumbycf@google.co.uk', '06622778', 'Ativo, Desativo'),
(449, 'Jimmie Ianetti', NULL, 'ele/dele', 'Masculino', '1989-01-31', 'Casado', '82229885420', 'jianetticg@foxnews.com', '49683576', 'Ativo, Desativo'),
(450, 'Payton Garlinge', NULL, 'ule/dele', 'Prefiriu não informar', '1984-04-26', 'Casado', '49389112736', 'pgarlingech@wordpress.com', '87551384', 'Ativo, Desativo'),
(451, 'Adorne Clemmey', NULL, 'ele/dele', 'Outro', '1980-06-24', 'Viúvo', '96495688619', 'aclemmeyci@virginia.edu', '88127016', 'Ativo, Desativo'),
(452, 'Leonardo Steger', NULL, 'ele/dele', 'Masculino', '1985-03-03', 'Casado', '23428193836', 'lstegercj@toplist.cz', '86077541', 'Ativo, Desativo'),
(453, 'Yvette Denne', NULL, 'ele/dele', 'Outro', '1993-07-19', 'Solteiro', '85111040293', 'ydenneck@barnesandnoble.com', '80436668', 'Ativo, Desativo'),
(454, 'Edd Bjerkan', NULL, 'ulu/dulu', 'Outro', '1974-02-20', 'Solteiro', '09978698764', 'ebjerkancl@feedburner.com', '03511559', 'Ativo, Desativo'),
(455, 'Willem Brunn', 'Willem', 'ele/dele', 'Masculino', '2000-04-28', 'Casado', '92071747026', 'wbrunncm@cam.ac.uk', '21110835', 'Ativo, Desativo'),
(456, 'Benedick Oliva', NULL, 'ulu/dulu', 'Prefiriu não informar', '1987-03-02', 'Solteiro', '34723971802', 'bolivacn@ning.com', '85086001', 'Ativo, Desativo'),
(457, 'Caresa Conochie', NULL, 'ulu/dulu', 'Outro', '1987-01-27', 'Solteiro', '40899874337', 'cconochieco@sakura.ne.jp', '73656197', 'Ativo, Desativo'),
(458, 'Freddi Sacher', NULL, 'ule/dele', 'Outro', '2004-09-15', 'Casado', '36876222733', 'fsachercp@freewebs.com', '61628640', 'Ativo, Desativo'),
(459, 'Elysha Kippie', NULL, 'ela/dela', 'Masculino', '1995-04-25', 'Casado', '72912028347', 'ekippiecq@spotify.com', '20713876', 'Ativo, Desativo'),
(460, 'Batholomew Yakovl', 'Batholomew', 'ela/dela', 'Prefiriu não informar', '1988-05-23', 'Solteiro', '24182386056', 'byakovlcr@livejournal.com', '42553930', 'Ativo, Desativo'),
(461, 'Rube Smedmore', NULL, 'elu/delu', 'Prefiriu não informar', '1989-04-02', 'Casado', '35488372752', 'rsmedmorecs@acquirethisname.com', '56854337', 'Ativo, Desativo'),
(462, 'Finley Lamshead', NULL, 'ulu/dulu', 'Outro', '1988-10-29', 'Casado', '92134526307', 'flamsheadct@mozilla.org', '86795134', 'Ativo, Desativo'),
(463, 'Kelci Boydell', NULL, 'ele/dele', 'Prefiriu não informar', '2004-03-28', 'Casado', '19360575096', 'kboydellcu@tmall.com', '00472589', 'Ativo, Desativo'),
(464, 'Darelle Howey', NULL, 'ela/dela', 'Outro', '1994-02-09', 'Solteiro', '45785296680', 'dhoweycv@skype.com', '36367621', 'Ativo, Desativo'),
(465, 'Whittaker Balaizot', NULL, 'ela/dela', 'Prefiriu não informar', '2001-03-18', 'Viúvo', '59749790685', 'wbalaizotcw@dropbox.com', '02847844', 'Ativo, Desativo'),
(466, 'Putnem Fawthrop', NULL, 'ulu/dulu', 'Outro', '1982-04-03', 'Casado', '24973753637', 'pfawthropcx@gnu.org', '13461489', 'Ativo, Desativo'),
(467, 'Jone Vosse', NULL, 'elu/delu', 'Outro', '1987-05-05', 'Viúvo', '17048088053', 'jvossecy@craigslist.org', '34114871', 'Ativo, Desativo'),
(468, 'Menard Jackalin', NULL, 'ule/dele', 'Outro', '1981-06-09', 'Solteiro', '06225270126', 'mjackalincz@state.gov', '16322723', 'Ativo, Desativo'),
(469, 'Leyla Cohr', NULL, 'ulu/dulu', 'Masculino', '1979-05-06', 'Solteiro', '31093693868', 'lcohrd0@cnn.com', '06730346', 'Ativo, Desativo'),
(470, 'Terrell Cruess', NULL, 'ela/dela', 'Feminino', '1981-06-24', 'Viúvo', '78423115520', 'tcruessd1@tinypic.com', '14417261', 'Ativo, Desativo'),
(471, 'Elke Tiery', NULL, 'ule/dele', 'Outro', '2001-05-26', 'Casado', '51385146851', 'etieryd2@tripod.com', '61663736', 'Ativo, Desativo'),
(472, 'Augy Barneveld', NULL, 'ele/dele', 'Outro', '1992-09-22', 'Solteiro', '46189799797', 'abarneveldd3@google.co.uk', '30936020', 'Ativo, Desativo'),
(473, 'Devon Josiah', NULL, 'elu/delu', 'Feminino', '1991-08-28', 'Solteiro', '89932701948', 'djosiahd4@e-recht24.de', '54287896', 'Ativo, Desativo'),
(474, 'Herby Aucott', NULL, 'ele/dele', 'Masculino', '1973-05-01', 'Viúvo', '17380114044', 'haucottd5@symantec.com', '05830653', 'Ativo, Desativo'),
(475, 'Edythe Sweatland', 'Edythe', 'ulu/dulu', 'Prefiriu não informar', '1987-03-19', 'Solteiro', '59483928443', 'esweatlandd6@nydailynews.com', '46869899', 'Ativo, Desativo'),
(476, 'Jere Mottershaw', NULL, 'elu/delu', 'Feminino', '1975-08-20', 'Casado', '86710192244', 'jmottershawd7@google.co.uk', '36164007', 'Ativo, Desativo'),
(477, 'Richie Gascoyen', NULL, 'ule/dele', 'Masculino', '1981-09-09', 'Viúvo', '78211638608', 'rgascoyend8@naver.com', '73327560', 'Ativo, Desativo'),
(478, 'Robby Lutas', 'Robby', 'ulu/dulu', 'Feminino', '2002-07-07', 'Casado', '07385426000', 'rlutasd9@who.int', '13330598', 'Ativo, Desativo'),
(479, 'Simonette Elcom', NULL, 'ele/dele', 'Feminino', '1991-11-07', 'Casado', '51840769439', 'selcomda@biblegateway.com', '06514446', 'Ativo, Desativo'),
(480, 'Nolie Tuftin', NULL, 'ulu/dulu', 'Prefiriu não informar', '1992-06-08', 'Viúvo', '90677330967', 'ntuftindb@weibo.com', '40662993', 'Ativo, Desativo'),
(481, 'Claire Miroy', NULL, 'ele/dele', 'Masculino', '1999-09-04', 'Viúvo', '96364265083', 'cmiroydc@princeton.edu', '82709262', 'Ativo, Desativo'),
(482, 'Tamar Biddlecombe', 'Tamar', 'ele/dele', 'Feminino', '1974-09-03', 'Viúvo', '69241637430', 'tbiddlecombedd@flavors.me', '20699534', 'Ativo, Desativo'),
(483, 'Opal Jansen', NULL, 'elu/delu', 'Prefiriu não informar', '1992-01-14', 'Viúvo', '10131306884', 'ojansende@jiathis.com', '65318442', 'Ativo, Desativo'),
(484, 'Abdul Bulfit', NULL, 'elu/delu', 'Prefiriu não informar', '2004-11-15', 'Viúvo', '45974054999', 'abulfitdf@npr.org', '67335269', 'Ativo, Desativo'),
(485, 'Ollie Pinsent', NULL, 'ele/dele', 'Outro', '1993-09-04', 'Viúvo', '10197713019', 'opinsentdg@gov.uk', '26576806', 'Ativo, Desativo'),
(486, 'Christiane Swan', NULL, 'ela/dela', 'Feminino', '1975-03-10', 'Solteiro', '58447381286', 'cswandh@edublogs.org', '58073414', 'Ativo, Desativo'),
(487, 'Batholomew McElane', NULL, 'ulu/dulu', 'Masculino', '1999-08-30', 'Casado', '47738086663', 'bmcelanedi@gizmodo.com', '24470619', 'Ativo, Desativo'),
(488, 'Kimble Rotlauf', NULL, 'ulu/dulu', 'Outro', '1990-08-11', 'Viúvo', '26222079506', 'krotlaufdj@unesco.org', '57124142', 'Ativo, Desativo'),
(489, 'Neddy Kiddle', NULL, 'ulu/dulu', 'Outro', '1981-01-06', 'Viúvo', '91528022998', 'nkiddledk@yelp.com', '64669295', 'Ativo, Desativo'),
(490, 'Holmes Garrique', NULL, 'ela/dela', 'Feminino', '1995-05-10', 'Viúvo', '20951210636', 'hgarriquedl@engadget.com', '81216736', 'Ativo, Desativo'),
(491, 'Ignazio Semmens', 'Ignazio', 'ulu/dulu', 'Feminino', '1995-07-01', 'Casado', '38866324790', 'isemmensdm@spiegel.de', '20636223', 'Ativo, Desativo'),
(492, 'Selby Chuck', NULL, 'ele/dele', 'Masculino', '1986-10-25', 'Casado', '85164389527', 'schuckdn@tiny.cc', '17821857', 'Ativo, Desativo'),
(493, 'Diahann Tesoe', NULL, 'ule/dele', 'Masculino', '1986-11-24', 'Casado', '83892311625', 'dtesoedo@4shared.com', '55599697', 'Ativo, Desativo'),
(494, 'Paolo Kynaston', NULL, 'ula/dula', 'Masculino', '1980-09-24', 'Viúvo', '25904434340', 'pkynastondp@photobucket.com', '41982542', 'Ativo, Desativo'),
(495, 'Florette Ornillos', NULL, 'ele/dele', 'Masculino', '2001-02-23', 'Casado', '71827980941', 'fornillosdq@delicious.com', '03095491', 'Ativo, Desativo'),
(496, 'Myles Mandifield', NULL, 'ula/dula', 'Feminino', '2002-03-09', 'Viúvo', '63643990156', 'mmandifielddr@spotify.com', '75646907', 'Ativo, Desativo'),
(497, 'Yasmin Barents', NULL, 'ele/dele', 'Prefiriu não informar', '1995-03-27', 'Solteiro', '13948067617', 'ybarentsds@nydailynews.com', '41879756', 'Ativo, Desativo'),
(498, 'Amabel Swyne', NULL, 'ela/dela', 'Outro', '1978-11-29', 'Viúvo', '59849052294', 'aswynedt@cocolog-nifty.com', '96772080', 'Ativo, Desativo'),
(499, 'Vale Bahl', NULL, 'ela/dela', 'Outro', '1975-01-13', 'Casado', '01509791414', 'vbahldu@aol.com', '56552708', 'Ativo, Desativo'),
(500, 'Marlo Backs', NULL, 'ula/dula', 'Masculino', '1994-08-30', 'Viúvo', '70017955725', 'mbacksdv@state.tx.us', '55227435', 'Ativo, Desativo'),
(501, 'Jenny Stainbridge', NULL, 'ule/dele', 'Outro', '1971-12-21', 'Solteiro', '29544911698', 'jstainbridgedw@intel.com', '98694975', 'Ativo, Desativo'),
(502, 'Moira Tildesley', 'Moira', 'elu/delu', 'Prefiriu não informar', '1985-07-09', 'Casado', '91318296444', 'mtildesleydx@slate.com', '13946443', 'Ativo, Desativo'),
(503, 'Joana Grimsdith', 'Joana', 'ela/dela', 'Masculino', '1998-06-09', 'Viúvo', '14075043417', 'jgrimsdithdy@bbb.org', '32068182', 'Ativo, Desativo'),
(504, 'Branden Romayn', NULL, 'elu/delu', 'Prefiriu não informar', '1986-10-15', 'Viúvo', '69783753946', 'bromayndz@foxnews.com', '36495827', 'Ativo, Desativo'),
(505, 'Daisi Jedras', NULL, 'elu/delu', 'Outro', '2003-11-27', 'Casado', '81144207382', 'djedrase0@nasa.gov', '99377047', 'Ativo, Desativo'),
(506, 'Horacio Fillingham', 'Horacio', 'ula/dula', 'Prefiriu não informar', '1971-11-09', 'Solteiro', '35212063243', 'hfillinghame1@dot.gov', '84143264', 'Ativo, Desativo'),
(507, 'Daniela Guinane', NULL, 'ulu/dulu', 'Masculino', '1997-08-25', 'Viúvo', '92577602011', 'dguinanee2@liveinternet.ru', '68898632', 'Ativo, Desativo'),
(508, 'Karee Grigorescu', NULL, 'ule/dele', 'Masculino', '2004-10-24', 'Casado', '84125055070', 'kgrigorescue3@goo.gl', '64914226', 'Ativo, Desativo'),
(509, 'Shantee Brokenshaw', NULL, 'ulu/dulu', 'Outro', '1984-04-23', 'Casado', '13416510669', 'sbrokenshawe4@senate.gov', '56877137', 'Ativo, Desativo'),
(510, 'Lark Briand', NULL, 'ela/dela', 'Feminino', '1977-08-24', 'Viúvo', '40605720816', 'lbriande5@mail.ru', '76724639', 'Ativo, Desativo'),
(511, 'Denny Corkan', NULL, 'ula/dula', 'Feminino', '1991-07-16', 'Casado', '31626516762', 'dcorkane6@abc.net.au', '47036483', 'Ativo, Desativo'),
(512, 'Willem Bricksey', NULL, 'ele/dele', 'Prefiriu não informar', '1988-08-25', 'Viúvo', '32934898642', 'wbrickseye7@ehow.com', '30515671', 'Ativo, Desativo'),
(513, 'Aleta Levison', NULL, 'ule/dele', 'Masculino', '1987-09-19', 'Viúvo', '17068937398', 'alevisone8@feedburner.com', '50932710', 'Ativo, Desativo'),
(514, 'Oren Molfino', NULL, 'ulu/dulu', 'Feminino', '1992-11-20', 'Solteiro', '57906035720', 'omolfinoe9@tmall.com', '95941602', 'Ativo, Desativo'),
(515, 'Rochella Evered', NULL, 'ule/dele', 'Prefiriu não informar', '1983-07-05', 'Viúvo', '98656100627', 'reveredea@google.pl', '47417430', 'Ativo, Desativo'),
(516, 'Skyler Novotna', NULL, 'ela/dela', 'Prefiriu não informar', '2004-07-13', 'Viúvo', '15062753282', 'snovotnaeb@cmu.edu', '71877100', 'Ativo, Desativo'),
(517, 'Barbette Jackson', NULL, 'elu/delu', 'Masculino', '1971-09-28', 'Casado', '65147936867', 'bjacksonec@google.com.hk', '75628913', 'Ativo, Desativo'),
(518, 'Phelia Leckie', 'Phelia', 'elu/delu', 'Masculino', '1996-02-27', 'Viúvo', '81451506493', 'pleckieed@nationalgeographic.com', '51224009', 'Ativo, Desativo'),
(519, 'Celka Dumbrill', NULL, 'ele/dele', 'Prefiriu não informar', '1972-09-24', 'Viúvo', '36364342537', 'cdumbrillee@ezinearticles.com', '99176168', 'Ativo, Desativo'),
(520, 'Shanta Grevile', NULL, 'elu/delu', 'Prefiriu não informar', '1995-06-04', 'Viúvo', '54573376344', 'sgrevileef@ezinearticles.com', '10582588', 'Ativo, Desativo'),
(521, 'Shari Fatharly', NULL, 'ule/dele', 'Masculino', '1989-12-09', 'Viúvo', '21700070385', 'sfatharlyeg@epa.gov', '83073366', 'Ativo, Desativo'),
(522, 'Garrott Haymes', NULL, 'ulu/dulu', 'Masculino', '1992-08-10', 'Solteiro', '70407051395', 'ghaymeseh@printfriendly.com', '20944614', 'Ativo, Desativo'),
(523, 'Winifield Pleasance', NULL, 'ula/dula', 'Feminino', '1989-01-03', 'Casado', '21852598284', 'wpleasanceei@yellowpages.com', '09789111', 'Ativo, Desativo'),
(524, 'Graeme Coggen', NULL, 'ulu/dulu', 'Feminino', '1972-11-25', 'Viúvo', '96480483986', 'gcoggenej@spotify.com', '36847691', 'Ativo, Desativo'),
(525, 'Eadie Champerlen', 'Eadie', 'elu/delu', 'Feminino', '2005-12-26', 'Solteiro', '17389387311', 'echamperlenek@dyndns.org', '39730059', 'Ativo, Desativo'),
(526, 'Bernardine Cromarty', 'Bernardine', 'ela/dela', 'Feminino', '1995-07-02', 'Viúvo', '13457549433', 'bcromartyel@storify.com', '97180185', 'Ativo, Desativo'),
(527, 'Ashton McGrorty', NULL, 'ulu/dulu', 'Feminino', '1997-08-30', 'Casado', '40614121805', 'amcgrortyem@discovery.com', '36068830', 'Ativo, Desativo'),
(528, 'Tandie Wernham', NULL, 'ele/dele', 'Masculino', '2006-02-27', 'Viúvo', '96811252666', 'twernhamen@ftc.gov', '12892195', 'Ativo, Desativo'),
(529, 'Margeaux Defew', NULL, 'ela/dela', 'Masculino', '1999-03-28', 'Solteiro', '45906991564', 'mdefeweo@epa.gov', '31794311', 'Ativo, Desativo'),
(530, 'Hashim Greenly', NULL, 'ula/dula', 'Prefiriu não informar', '1972-04-04', 'Viúvo', '62982774971', 'hgreenlyep@yelp.com', '55383483', 'Ativo, Desativo'),
(531, 'Barty Gant', 'Barty', 'ela/dela', 'Feminino', '1998-06-04', 'Viúvo', '15743677692', 'bganteq@ehow.com', '11782353', 'Ativo, Desativo'),
(532, 'Marcos O\' Cloney', NULL, 'elu/delu', 'Masculino', '1988-01-31', 'Casado', '20729249366', 'moer@ucoz.ru', '55461494', 'Ativo, Desativo'),
(533, 'Ellissa Peartree', NULL, 'ela/dela', 'Masculino', '1973-08-30', 'Viúvo', '40306177833', 'epeartreees@bigcartel.com', '80056209', 'Ativo, Desativo'),
(534, 'Clayton Chastaing', NULL, 'ulu/dulu', 'Masculino', '1972-06-30', 'Casado', '78403251216', 'cchastainget@nba.com', '29290413', 'Ativo, Desativo'),
(535, 'Colene Davidovsky', NULL, 'elu/delu', 'Prefiriu não informar', '2001-08-15', 'Casado', '63377996014', 'cdavidovskyeu@wikia.com', '57016621', 'Ativo, Desativo'),
(536, 'Jarred Bolitho', 'Jarred', 'elu/delu', 'Masculino', '1994-05-10', 'Viúvo', '38985101143', 'jbolithoev@go.com', '88377130', 'Ativo, Desativo'),
(537, 'Matthiew Trowler', 'Matthiew', 'ula/dula', 'Feminino', '1993-04-29', 'Solteiro', '53273571691', 'mtrowlerew@w3.org', '91092660', 'Ativo, Desativo'),
(538, 'Verna Andrus', NULL, 'elu/delu', 'Outro', '1974-12-05', 'Viúvo', '34545699736', 'vandrusex@ox.ac.uk', '63162883', 'Ativo, Desativo'),
(539, 'Shelden Capstack', NULL, 'ele/dele', 'Prefiriu não informar', '1982-04-28', 'Viúvo', '48163869641', 'scapstackey@nps.gov', '34187620', 'Ativo, Desativo'),
(540, 'Madelene Hardingham', NULL, 'ele/dele', 'Masculino', '1975-06-18', 'Solteiro', '56088912943', 'mhardinghamez@shareasale.com', '99893308', 'Ativo, Desativo'),
(541, 'Brianna Chaudhry', NULL, 'elu/delu', 'Masculino', '1972-12-12', 'Casado', '15807793878', 'bchaudhryf0@tmall.com', '54285949', 'Ativo, Desativo'),
(542, 'Josh Chiverton', NULL, 'elu/delu', 'Masculino', '1980-10-07', 'Solteiro', '20528642945', 'jchivertonf1@nationalgeographic.com', '10944086', 'Ativo, Desativo'),
(543, 'Koressa Lombard', 'Koressa', 'ela/dela', 'Outro', '1973-04-07', 'Viúvo', '09137908827', 'klombardf2@skype.com', '55714014', 'Ativo, Desativo'),
(544, 'Will Andrysiak', NULL, 'elu/delu', 'Masculino', '2003-05-01', 'Casado', '32000782732', 'wandrysiakf3@si.edu', '76349542', 'Ativo, Desativo'),
(545, 'Allis Fancy', NULL, 'ula/dula', 'Masculino', '1981-05-26', 'Casado', '05464983111', 'afancyf4@flickr.com', '73564311', 'Ativo, Desativo'),
(546, 'Giustino Baselli', NULL, 'ela/dela', 'Feminino', '1988-11-10', 'Casado', '92118431448', 'gbasellif5@acquirethisname.com', '57376271', 'Ativo, Desativo'),
(547, 'Adriena Barke', NULL, 'elu/delu', 'Feminino', '1987-01-01', 'Viúvo', '93481414370', 'abarkef6@noaa.gov', '32246266', 'Ativo, Desativo'),
(548, 'Garvey Artharg', NULL, 'ula/dula', 'Outro', '1988-10-23', 'Viúvo', '90429934863', 'garthargf7@vk.com', '20807747', 'Ativo, Desativo'),
(549, 'Frederik Williment', 'Frederik', 'ulu/dulu', 'Outro', '1990-07-29', 'Viúvo', '06200004488', 'fwillimentf8@so-net.ne.jp', '94173898', 'Ativo, Desativo'),
(550, 'Lorry Ertelt', 'Lorry', 'ula/dula', 'Prefiriu não informar', '1990-06-27', 'Solteiro', '95185810969', 'lerteltf9@upenn.edu', '23567422', 'Ativo, Desativo'),
(551, 'Johan Baraja', NULL, 'ele/dele', 'Outro', '1999-09-20', 'Viúvo', '28293372987', 'jbarajafa@go.com', '82695668', 'Ativo, Desativo'),
(552, 'Jeane Louys', NULL, 'ulu/dulu', 'Prefiriu não informar', '1988-12-13', 'Casado', '03927734080', 'jlouysfb@smh.com.au', '63371890', 'Ativo, Desativo'),
(553, 'Renelle Janicek', NULL, 'ule/dele', 'Outro', '1989-09-14', 'Solteiro', '32520091848', 'rjanicekfc@timesonline.co.uk', '54305960', 'Ativo, Desativo'),
(554, 'Christoper Pavelka', NULL, 'ula/dula', 'Outro', '1994-05-28', 'Viúvo', '41655581745', 'cpavelkafd@wp.com', '01456546', 'Ativo, Desativo'),
(555, 'Finlay Shelford', NULL, 'ela/dela', 'Feminino', '1996-10-20', 'Casado', '25869797585', 'fshelfordfe@meetup.com', '03591272', 'Ativo, Desativo'),
(556, 'Oren Attoe', NULL, 'ele/dele', 'Outro', '1985-01-26', 'Solteiro', '51084653224', 'oattoeff@princeton.edu', '48110121', 'Ativo, Desativo'),
(557, 'Jobey Dahl', 'Jobey', 'elu/delu', 'Feminino', '1971-12-24', 'Solteiro', '56595508092', 'jdahlfg@google.com', '53729341', 'Ativo, Desativo'),
(558, 'Alfie Olijve', NULL, 'ula/dula', 'Prefiriu não informar', '1988-04-17', 'Viúvo', '44002443328', 'aolijvefh@phpbb.com', '80452472', 'Ativo, Desativo'),
(559, 'Carolus Holdey', NULL, 'ule/dele', 'Prefiriu não informar', '1985-08-02', 'Casado', '75472438328', 'choldeyfi@live.com', '36287276', 'Ativo, Desativo'),
(560, 'Ky Bohike', NULL, 'ulu/dulu', 'Feminino', '1993-11-20', 'Casado', '91153902312', 'kbohikefj@google.ru', '01423790', 'Ativo, Desativo'),
(561, 'Townie Eltun', 'Townie', 'ele/dele', 'Outro', '1985-10-30', 'Casado', '07829015034', 'teltunfk@pcworld.com', '52743022', 'Ativo, Desativo'),
(562, 'Addi Grimmolby', 'Addi', 'elu/delu', 'Outro', '1984-03-31', 'Casado', '78516771674', 'agrimmolbyfl@clickbank.net', '19958945', 'Ativo, Desativo'),
(563, 'Berty Burnet', NULL, 'elu/delu', 'Feminino', '2002-12-30', 'Casado', '49810524037', 'bburnetfm@i2i.jp', '98387640', 'Ativo, Desativo'),
(564, 'Yelena Whitwam', NULL, 'ulu/dulu', 'Masculino', '1989-06-21', 'Solteiro', '15022491762', 'ywhitwamfn@elpais.com', '66137125', 'Ativo, Desativo'),
(565, 'Wynny Weeks', 'Wynny', 'ele/dele', 'Prefiriu não informar', '1975-03-17', 'Viúvo', '50743787514', 'wweeksfo@altervista.org', '24128150', 'Ativo, Desativo'),
(566, 'Charmine Edwardes', 'Charmine', 'elu/delu', 'Outro', '1973-03-03', 'Solteiro', '03810838514', 'cedwardesfp@discovery.com', '71873386', 'Ativo, Desativo'),
(567, 'Darsey Evequot', NULL, 'ele/dele', 'Feminino', '1981-10-26', 'Casado', '85838150694', 'devequotfq@de.vu', '73201123', 'Ativo, Desativo'),
(568, 'Ealasaid Ashburne', NULL, 'ele/dele', 'Prefiriu não informar', '1988-09-10', 'Solteiro', '93974896890', 'eashburnefr@google.es', '08437612', 'Ativo, Desativo'),
(569, 'Cinderella Ayre', 'Cinderella', 'ula/dula', 'Masculino', '1970-11-10', 'Viúvo', '86985525976', 'cayrefs@wisc.edu', '50565789', 'Ativo, Desativo'),
(570, 'Lorne Pisculli', NULL, 'ela/dela', 'Prefiriu não informar', '1988-11-11', 'Casado', '85224642694', 'lpiscullift@archive.org', '68190426', 'Ativo, Desativo'),
(571, 'Madison Sheather', NULL, 'elu/delu', 'Prefiriu não informar', '1982-05-23', 'Solteiro', '72611629543', 'msheatherfu@ocn.ne.jp', '24357970', 'Ativo, Desativo'),
(572, 'Jaime Fisbey', NULL, 'ele/dele', 'Outro', '1989-06-27', 'Solteiro', '73789416734', 'jfisbeyfv@cdbaby.com', '49279567', 'Ativo, Desativo'),
(573, 'Paxon Hutchings', NULL, 'ulu/dulu', 'Outro', '2002-03-07', 'Viúvo', '41742838486', 'phutchingsfw@mail.ru', '76401177', 'Ativo, Desativo'),
(574, 'Yankee Chieco', NULL, 'elu/delu', 'Masculino', '1994-07-22', 'Casado', '69833640280', 'ychiecofx@opensource.org', '92750812', 'Ativo, Desativo'),
(575, 'Dominga Sams', NULL, 'ule/dele', 'Prefiriu não informar', '2003-08-08', 'Casado', '45644564782', 'dsamsfy@bing.com', '16674116', 'Ativo, Desativo'),
(576, 'Norrie Lightwood', NULL, 'ulu/dulu', 'Feminino', '1996-04-03', 'Viúvo', '77584643664', 'nlightwoodfz@moonfruit.com', '27300365', 'Ativo, Desativo'),
(577, 'Leyla Glamart', NULL, 'ele/dele', 'Feminino', '2002-03-05', 'Solteiro', '17285242218', 'lglamartg0@china.com.cn', '07381682', 'Ativo, Desativo'),
(578, 'Frederica Ingman', NULL, 'ela/dela', 'Prefiriu não informar', '1996-02-20', 'Solteiro', '82488815400', 'fingmang1@wp.com', '56431220', 'Ativo, Desativo'),
(579, 'Whitney Sigart', NULL, 'ule/dele', 'Prefiriu não informar', '1988-05-23', 'Casado', '09066997871', 'wsigartg2@jigsy.com', '57340649', 'Ativo, Desativo'),
(580, 'April Wanden', NULL, 'ule/dele', 'Feminino', '1982-01-30', 'Viúvo', '64028996606', 'awandeng3@cocolog-nifty.com', '54917621', 'Ativo, Desativo'),
(581, 'Misha Purdom', NULL, 'ule/dele', 'Feminino', '1995-01-23', 'Casado', '02280013005', 'mpurdomg4@fda.gov', '36166458', 'Ativo, Desativo'),
(582, 'Jessy Howman', NULL, 'elu/delu', 'Prefiriu não informar', '2004-02-23', 'Viúvo', '48140274901', 'jhowmang5@google.it', '47950019', 'Ativo, Desativo'),
(583, 'Rodrigo Einchcombe', NULL, 'ela/dela', 'Prefiriu não informar', '2001-06-16', 'Viúvo', '55118189925', 'reinchcombeg6@sourceforge.net', '61948359', 'Ativo, Desativo'),
(584, 'Querida Ourry', NULL, 'ele/dele', 'Outro', '1999-06-03', 'Casado', '22991810811', 'qourryg7@sciencedaily.com', '66078490', 'Ativo, Desativo'),
(585, 'Constantine Armor', NULL, 'ele/dele', 'Masculino', '1994-03-11', 'Viúvo', '23229699577', 'carmorg8@biblegateway.com', '68346056', 'Ativo, Desativo'),
(586, 'Alejandrina Daniaud', NULL, 'ela/dela', 'Prefiriu não informar', '2004-05-15', 'Casado', '73660678650', 'adaniaudg9@pcworld.com', '83932216', 'Ativo, Desativo'),
(587, 'Myrwyn Felgat', NULL, 'ula/dula', 'Masculino', '1989-07-06', 'Solteiro', '18180298424', 'mfelgatga@microsoft.com', '22786546', 'Ativo, Desativo'),
(588, 'Michail Slatten', NULL, 'ula/dula', 'Masculino', '1986-04-01', 'Viúvo', '62793953578', 'mslattengb@tuttocitta.it', '64114587', 'Ativo, Desativo'),
(589, 'Ann Joselin', NULL, 'ulu/dulu', 'Outro', '2003-08-17', 'Casado', '78203176906', 'ajoselingc@last.fm', '99399084', 'Ativo, Desativo'),
(590, 'Corly Yesson', NULL, 'elu/delu', 'Masculino', '1990-05-04', 'Solteiro', '67116904337', 'cyessongd@lycos.com', '89811467', 'Ativo, Desativo'),
(591, 'Jerri Gipp', NULL, 'ulu/dulu', 'Outro', '1988-03-24', 'Solteiro', '28341517981', 'jgippge@php.net', '78446187', 'Ativo, Desativo'),
(592, 'Shannah Gasnoll', NULL, 'ela/dela', 'Feminino', '1989-07-03', 'Viúvo', '19368590117', 'sgasnollgf@wordpress.org', '75833138', 'Ativo, Desativo'),
(593, 'Marquita Melding', NULL, 'ule/dele', 'Prefiriu não informar', '1986-02-23', 'Viúvo', '74471186466', 'mmeldinggg@qq.com', '08680494', 'Ativo, Desativo'),
(594, 'Elizabeth Dallan', NULL, 'ule/dele', 'Outro', '1971-09-30', 'Casado', '91622630817', 'edallangh@privacy.gov.au', '94832748', 'Ativo, Desativo'),
(595, 'Daphna Falconar', NULL, 'ule/dele', 'Prefiriu não informar', '1991-12-01', 'Solteiro', '07327913627', 'dfalconargi@vimeo.com', '10528116', 'Ativo, Desativo'),
(596, 'Neile Norres', NULL, 'elu/delu', 'Masculino', '1993-04-14', 'Casado', '32951770173', 'nnorresgj@imageshack.us', '44336164', 'Ativo, Desativo'),
(597, 'Tobye Aleshintsev', NULL, 'ula/dula', 'Outro', '1979-12-17', 'Viúvo', '44622578707', 'taleshintsevgk@statcounter.com', '50215922', 'Ativo, Desativo'),
(598, 'Sandy Fischer', NULL, 'ula/dula', 'Prefiriu não informar', '1999-02-12', 'Solteiro', '89902702901', 'sfischergl@europa.eu', '08024159', 'Ativo, Desativo'),
(599, 'Myrah Borrill', NULL, 'ula/dula', 'Masculino', '2001-10-22', 'Casado', '31758195722', 'mborrillgm@acquirethisname.com', '63612817', 'Ativo, Desativo'),
(600, 'Pandora Heggison', NULL, 'ele/dele', 'Outro', '1975-06-07', 'Viúvo', '20081029465', 'pheggisongn@yandex.ru', '01075269', 'Ativo, Desativo'),
(601, 'Amil Larner', NULL, 'ule/dele', 'Feminino', '1988-03-10', 'Solteiro', '96470214470', 'alarnergo@cloudflare.com', '30979108', 'Ativo, Desativo'),
(602, 'Karoly Brockway', NULL, 'ele/dele', 'Prefiriu não informar', '1993-06-02', 'Casado', '93380104628', 'kbrockwaygp@amazon.com', '69943259', 'Ativo, Desativo'),
(603, 'Osbourn Stranio', NULL, 'ele/dele', 'Prefiriu não informar', '1985-01-22', 'Viúvo', '79007134865', 'ostraniogq@tripadvisor.com', '69346409', 'Ativo, Desativo'),
(604, 'Bart Brushfield', NULL, 'ulu/dulu', 'Outro', '1985-06-27', 'Solteiro', '26965337063', 'bbrushfieldgr@ebay.co.uk', '97296296', 'Ativo, Desativo'),
(605, 'Stephanie Ashburne', NULL, 'ela/dela', 'Prefiriu não informar', '1994-12-27', 'Casado', '37201125968', 'sashburnegs@privacy.gov.au', '31390135', 'Ativo, Desativo'),
(606, 'Dalli Meier', NULL, 'ula/dula', 'Masculino', '1979-10-02', 'Solteiro', '14356284365', 'dmeiergt@yahoo.com', '34116238', 'Ativo, Desativo'),
(607, 'Finlay MacGiany', NULL, 'ula/dula', 'Masculino', '1987-07-30', 'Solteiro', '01895809341', 'fmacgianygu@imgur.com', '13758359', 'Ativo, Desativo'),
(608, 'Ragnar Osgorby', NULL, 'ule/dele', 'Feminino', '1995-03-25', 'Solteiro', '73189397687', 'rosgorbygv@foxnews.com', '30570324', 'Ativo, Desativo'),
(609, 'Bondie Orritt', NULL, 'elu/delu', 'Feminino', '1992-07-13', 'Casado', '89899795087', 'borrittgw@abc.net.au', '84219064', 'Ativo, Desativo'),
(610, 'York Renowden', NULL, 'ula/dula', 'Prefiriu não informar', '1983-04-05', 'Viúvo', '88097354411', 'yrenowdengx@woothemes.com', '49711886', 'Ativo, Desativo'),
(611, 'Myles Crosston', NULL, 'ula/dula', 'Outro', '1999-03-18', 'Viúvo', '09274696469', 'mcrosstongy@tamu.edu', '94437417', 'Ativo, Desativo'),
(612, 'Robbie Melia', NULL, 'ele/dele', 'Masculino', '1992-08-04', 'Casado', '25890539775', 'rmeliagz@answers.com', '61871188', 'Ativo, Desativo'),
(613, 'Catina Pace', 'Catina', 'ele/dele', 'Outro', '1988-11-20', 'Casado', '92136843145', 'cpaceh0@cyberchimps.com', '28077325', 'Ativo, Desativo'),
(614, 'Kitti Boath', NULL, 'elu/delu', 'Feminino', '2000-12-08', 'Viúvo', '81794715365', 'kboathh1@tmall.com', '79324170', 'Ativo, Desativo'),
(615, 'Chandal Slopier', NULL, 'ele/dele', 'Prefiriu não informar', '1971-04-13', 'Casado', '22297899447', 'cslopierh2@histats.com', '64443312', 'Ativo, Desativo'),
(616, 'Charo Pittman', NULL, 'ulu/dulu', 'Prefiriu não informar', '1991-12-07', 'Solteiro', '34859640824', 'cpittmanh3@buzzfeed.com', '28786725', 'Ativo, Desativo'),
(617, 'Corinna Walhedd', NULL, 'ele/dele', 'Feminino', '1971-08-01', 'Casado', '00655221622', 'cwalheddh4@gov.uk', '89253385', 'Ativo, Desativo'),
(618, 'Eduard Kunzelmann', NULL, 'ulu/dulu', 'Feminino', '1975-10-07', 'Casado', '88056955624', 'ekunzelmannh5@ftc.gov', '92272767', 'Ativo, Desativo'),
(619, 'Melitta Drennan', 'Melitta', 'ele/dele', 'Outro', '2003-02-20', 'Viúvo', '94894412966', 'mdrennanh6@omniture.com', '76337050', 'Ativo, Desativo'),
(620, 'Laurence Barizeret', NULL, 'ela/dela', 'Masculino', '1997-03-01', 'Solteiro', '08602840436', 'lbarizereth7@list-manage.com', '93813397', 'Ativo, Desativo'),
(621, 'Helen-elizabeth Jammet', NULL, 'ela/dela', 'Prefiriu não informar', '1987-10-07', 'Solteiro', '36508618363', 'hjammeth8@soup.io', '47686495', 'Ativo, Desativo'),
(622, 'Elvira Davidofski', NULL, 'ela/dela', 'Feminino', '1984-09-20', 'Viúvo', '04412119694', 'edavidofskih9@addtoany.com', '42038454', 'Ativo, Desativo'),
(623, 'Stephen Becks', 'Stephen', 'elu/delu', 'Feminino', '1982-06-22', 'Casado', '65315034543', 'sbecksha@netvibes.com', '92746866', 'Ativo, Desativo'),
(624, 'Jarret Kleine', NULL, 'ule/dele', 'Prefiriu não informar', '2006-06-27', 'Casado', '66504645973', 'jkleinehb@shop-pro.jp', '66445289', 'Ativo, Desativo'),
(625, 'Fred Gruszka', NULL, 'ula/dula', 'Feminino', '1983-07-16', 'Casado', '23668877523', 'fgruszkahc@1688.com', '68289071', 'Ativo, Desativo'),
(626, 'Ancell Angliss', 'Ancell', 'ele/dele', 'Prefiriu não informar', '1973-07-27', 'Solteiro', '05762784181', 'aanglisshd@vk.com', '81727013', 'Ativo, Desativo'),
(627, 'Chrissy Marryatt', NULL, 'ule/dele', 'Feminino', '1987-09-16', 'Viúvo', '09650107259', 'cmarryatthe@mediafire.com', '35719324', 'Ativo, Desativo'),
(628, 'Antony Milne', NULL, 'ule/dele', 'Feminino', '1987-04-11', 'Solteiro', '33428024891', 'amilnehf@so-net.ne.jp', '29963332', 'Ativo, Desativo'),
(629, 'Fancie Ainley', 'Fancie', 'elu/delu', 'Masculino', '1985-10-02', 'Solteiro', '01019894037', 'fainleyhg@tuttocitta.it', '47518324', 'Ativo, Desativo'),
(630, 'Lauri Hefferan', NULL, 'ele/dele', 'Feminino', '1995-08-07', 'Solteiro', '89875887580', 'lhefferanhh@jimdo.com', '13786313', 'Ativo, Desativo'),
(631, 'Milka Kerry', NULL, 'elu/delu', 'Masculino', '2004-07-09', 'Viúvo', '76856501979', 'mkerryhi@free.fr', '51258356', 'Ativo, Desativo'),
(632, 'Dee dee MacMenemy', NULL, 'ule/dele', 'Masculino', '1982-05-25', 'Casado', '73819828308', 'ddeehj@cdbaby.com', '44746732', 'Ativo, Desativo'),
(633, 'Goober Jacobowicz', NULL, 'ele/dele', 'Masculino', '1997-10-31', 'Viúvo', '23768702379', 'gjacobowiczhk@google.fr', '91151466', 'Ativo, Desativo'),
(634, 'Saloma O\'Hone', NULL, 'ele/dele', 'Masculino', '1985-10-22', 'Casado', '77993331440', 'sohonehl@digg.com', '37735979', 'Ativo, Desativo'),
(635, 'Tobe Higgen', NULL, 'ule/dele', 'Prefiriu não informar', '1980-10-26', 'Casado', '59112986816', 'thiggenhm@sourceforge.net', '59282953', 'Ativo, Desativo'),
(636, 'Somerset Leversha', 'Somerset', 'ele/dele', 'Feminino', '1985-10-29', 'Solteiro', '58615825209', 'slevershahn@yelp.com', '25305136', 'Ativo, Desativo'),
(637, 'Bondie Waywell', 'Bondie', 'ulu/dulu', 'Masculino', '1975-01-16', 'Viúvo', '04985492166', 'bwaywellho@multiply.com', '42420722', 'Ativo, Desativo'),
(638, 'Francoise Rendall', 'Francoise', 'ulu/dulu', 'Prefiriu não informar', '1974-01-31', 'Casado', '62350027869', 'frendallhp@blogs.com', '01924638', 'Ativo, Desativo'),
(639, 'Aurora Beeckx', NULL, 'elu/delu', 'Feminino', '1998-02-04', 'Solteiro', '38636584175', 'abeeckxhq@wisc.edu', '60698068', 'Ativo, Desativo'),
(640, 'Adele Dufer', NULL, 'ulu/dulu', 'Feminino', '1979-12-28', 'Solteiro', '79838252684', 'aduferhr@nymag.com', '46490374', 'Ativo, Desativo'),
(641, 'Eryn Chipp', NULL, 'elu/delu', 'Outro', '1977-09-07', 'Solteiro', '90770164613', 'echipphs@fda.gov', '41353894', 'Ativo, Desativo'),
(642, 'Kim Glennon', NULL, 'ule/dele', 'Outro', '1973-04-04', 'Casado', '91011840381', 'kglennonht@toplist.cz', '61586732', 'Ativo, Desativo'),
(643, 'Jaimie Garvill', NULL, 'ula/dula', 'Masculino', '2004-12-26', 'Viúvo', '78818586035', 'jgarvillhu@bbc.co.uk', '63647134', 'Ativo, Desativo'),
(644, 'Arel Vowell', 'Arel', 'elu/delu', 'Feminino', '1987-07-28', 'Solteiro', '75986020890', 'avowellhv@dyndns.org', '85835940', 'Ativo, Desativo'),
(645, 'Clayborn Ettles', NULL, 'ela/dela', 'Prefiriu não informar', '1988-07-25', 'Solteiro', '88482783324', 'cettleshw@weather.com', '20490586', 'Ativo, Desativo'),
(646, 'Jock Bowell', NULL, 'ele/dele', 'Masculino', '1992-04-14', 'Viúvo', '06100746323', 'jbowellhx@bizjournals.com', '48128263', 'Ativo, Desativo'),
(647, 'Adrian Shippam', 'Adrian', 'ule/dele', 'Masculino', '2002-11-04', 'Viúvo', '09441551014', 'ashippamhy@illinois.edu', '41080801', 'Ativo, Desativo'),
(648, 'Moses Habberjam', NULL, 'elu/delu', 'Prefiriu não informar', '1986-03-07', 'Viúvo', '63028195615', 'mhabberjamhz@woothemes.com', '07648971', 'Ativo, Desativo'),
(649, 'Jana Stubbin', NULL, 'ule/dele', 'Feminino', '1993-10-24', 'Solteiro', '41209761668', 'jstubbini0@gnu.org', '35313880', 'Ativo, Desativo'),
(650, 'Guy Wagerfield', NULL, 'ela/dela', 'Feminino', '1992-06-22', 'Casado', '34660803507', 'gwagerfieldi1@taobao.com', '53269780', 'Ativo, Desativo'),
(651, 'Bobette Neasam', NULL, 'ele/dele', 'Masculino', '1991-04-19', 'Casado', '19927407462', 'bneasami2@discuz.net', '70519639', 'Ativo, Desativo'),
(652, 'Cesare Magister', NULL, 'elu/delu', 'Prefiriu não informar', '1988-02-01', 'Casado', '85485621407', 'cmagisteri3@cornell.edu', '90338958', 'Ativo, Desativo'),
(653, 'Flori Pennrington', NULL, 'elu/delu', 'Prefiriu não informar', '2001-09-11', 'Solteiro', '95660270462', 'fpennringtoni4@shareasale.com', '79044132', 'Ativo, Desativo');
INSERT INTO `cliente_01` (`A01_id`, `A01_nome`, `A01_nomeSocial`, `AO1_pronome`, `A01_genero`, `A01_dataNasc`, `A01_estadoCivil`, `A01_cpf`, `A01_email`, `A01_cepOriginal`, `A01_estado`) VALUES
(654, 'Sofia Castel', NULL, 'ulu/dulu', 'Outro', '1977-06-06', 'Casado', '95352384714', 'scasteli5@cloudflare.com', '94824770', 'Ativo, Desativo'),
(655, 'Maitilde Flannigan', NULL, 'ela/dela', 'Prefiriu não informar', '1991-08-01', 'Casado', '14936226510', 'mflannigani6@discuz.net', '51226448', 'Ativo, Desativo'),
(656, 'Aggie Deering', NULL, 'ela/dela', 'Feminino', '2004-08-27', 'Solteiro', '15802764473', 'adeeringi7@macromedia.com', '20590969', 'Ativo, Desativo'),
(657, 'Dyna Coburn', 'Dyna', 'ula/dula', 'Outro', '1996-12-06', 'Viúvo', '59033000322', 'dcoburni8@indiatimes.com', '11049656', 'Ativo, Desativo'),
(658, 'Clerissa Habble', 'Clerissa', 'ela/dela', 'Masculino', '1976-09-06', 'Solteiro', '03202323242', 'chabblei9@google.pl', '39881660', 'Ativo, Desativo'),
(659, 'Janine Afonso', NULL, 'ela/dela', 'Masculino', '1991-01-23', 'Solteiro', '78867603083', 'jafonsoia@jigsy.com', '36934149', 'Ativo, Desativo'),
(660, 'Joann Cotton', NULL, 'ula/dula', 'Feminino', '1981-12-11', 'Viúvo', '04970007128', 'jcottonib@themeforest.net', '01307118', 'Ativo, Desativo'),
(661, 'Rafaela Pappin', NULL, 'ule/dele', 'Outro', '2003-07-18', 'Casado', '41811505018', 'rpappinic@moonfruit.com', '18759519', 'Ativo, Desativo'),
(662, 'Bill Martellini', 'Bill', 'ele/dele', 'Masculino', '1977-11-11', 'Viúvo', '50017111909', 'bmartelliniid@digg.com', '83865421', 'Ativo, Desativo'),
(663, 'Miquela Bang', NULL, 'ule/dele', 'Prefiriu não informar', '1987-11-27', 'Casado', '85152326877', 'mbangie@jigsy.com', '98327330', 'Ativo, Desativo'),
(664, 'Jacinthe Archbald', NULL, 'ule/dele', 'Feminino', '1980-03-30', 'Casado', '64385076197', 'jarchbaldif@bizjournals.com', '90189955', 'Ativo, Desativo'),
(665, 'Beau McAdam', NULL, 'ela/dela', 'Masculino', '2006-05-21', 'Casado', '38850966692', 'bmcadamig@e-recht24.de', '58010320', 'Ativo, Desativo'),
(666, 'Petey Ringsell', NULL, 'ulu/dulu', 'Prefiriu não informar', '1972-01-17', 'Viúvo', '56907110983', 'pringsellih@salon.com', '14075722', 'Ativo, Desativo'),
(667, 'Teresita Giuron', NULL, 'ele/dele', 'Prefiriu não informar', '1999-06-10', 'Viúvo', '48379582663', 'tgiuronii@amazon.com', '71792022', 'Ativo, Desativo'),
(668, 'Kinnie Labat', NULL, 'ela/dela', 'Masculino', '1973-10-18', 'Casado', '23846166510', 'klabatij@ezinearticles.com', '71789538', 'Ativo, Desativo'),
(669, 'Kin Fullwood', NULL, 'elu/delu', 'Prefiriu não informar', '1993-12-04', 'Viúvo', '80441945083', 'kfullwoodik@google.com.hk', '02138083', 'Ativo, Desativo'),
(670, 'Constanta Dunstone', NULL, 'elu/delu', 'Masculino', '1983-03-12', 'Solteiro', '04116262895', 'cdunstoneil@bloomberg.com', '97839276', 'Ativo, Desativo'),
(671, 'Mufinella Skittrell', 'Mufinella', 'elu/delu', 'Masculino', '1982-12-01', 'Casado', '63393125523', 'mskittrellim@ebay.com', '50994009', 'Ativo, Desativo'),
(672, 'Ennis Farrand', NULL, 'ula/dula', 'Prefiriu não informar', '1979-08-31', 'Solteiro', '95150533821', 'efarrandin@cpanel.net', '59058855', 'Ativo, Desativo'),
(673, 'Samara Duffus', NULL, 'ela/dela', 'Masculino', '1973-06-06', 'Viúvo', '58316043907', 'sduffusio@fc2.com', '35556333', 'Ativo, Desativo'),
(674, 'Briney Blencowe', NULL, 'ela/dela', 'Outro', '1983-03-24', 'Viúvo', '93233106887', 'bblencoweip@people.com.cn', '99352921', 'Ativo, Desativo'),
(675, 'Rossie Rottenbury', NULL, 'elu/delu', 'Outro', '1998-12-01', 'Solteiro', '30441517802', 'rrottenburyiq@oaic.gov.au', '92665872', 'Ativo, Desativo'),
(676, 'Carlen Wynrehame', NULL, 'elu/delu', 'Prefiriu não informar', '1998-05-22', 'Viúvo', '27002758769', 'cwynrehameir@economist.com', '30837545', 'Ativo, Desativo'),
(677, 'Waldo Demare', 'Waldo', 'elu/delu', 'Feminino', '2000-04-23', 'Viúvo', '40135824009', 'wdemareis@ow.ly', '91827308', 'Ativo, Desativo'),
(678, 'Isaak Seamon', NULL, 'ula/dula', 'Prefiriu não informar', '1988-02-28', 'Viúvo', '48756919243', 'iseamonit@walmart.com', '66683063', 'Ativo, Desativo'),
(679, 'Ambrose Guerrero', NULL, 'ula/dula', 'Prefiriu não informar', '1996-05-03', 'Casado', '66417654729', 'aguerreroiu@cdbaby.com', '41772902', 'Ativo, Desativo'),
(680, 'Romonda Husbands', NULL, 'ulu/dulu', 'Feminino', '1998-04-08', 'Solteiro', '94571345051', 'rhusbandsiv@issuu.com', '47869138', 'Ativo, Desativo'),
(681, 'Florella Wilse', 'Florella', 'ulu/dulu', 'Prefiriu não informar', '1971-05-03', 'Casado', '69820450957', 'fwilseiw@surveymonkey.com', '83799558', 'Ativo, Desativo'),
(682, 'Emmett Mollene', NULL, 'ulu/dulu', 'Prefiriu não informar', '1984-03-27', 'Viúvo', '60564182478', 'emolleneix@timesonline.co.uk', '29897328', 'Ativo, Desativo'),
(683, 'Rog Garaway', 'Rog', 'ulu/dulu', 'Feminino', '2000-08-11', 'Casado', '19000330779', 'rgarawayiy@nba.com', '55052677', 'Ativo, Desativo'),
(684, 'Lefty Pendergrast', 'Lefty', 'ela/dela', 'Prefiriu não informar', '1971-04-21', 'Casado', '25769775568', 'lpendergrastiz@youtube.com', '53835389', 'Ativo, Desativo'),
(685, 'Cobbie Basden', NULL, 'ule/dele', 'Prefiriu não informar', '1975-11-29', 'Casado', '19975977625', 'cbasdenj0@cafepress.com', '71340754', 'Ativo, Desativo'),
(686, 'Geoff McEneny', NULL, 'ulu/dulu', 'Feminino', '2006-01-18', 'Casado', '40351433997', 'gmcenenyj1@marketwatch.com', '47690119', 'Ativo, Desativo'),
(687, 'Blanch Novichenko', NULL, 'ele/dele', 'Feminino', '1995-08-25', 'Casado', '29894699370', 'bnovichenkoj2@pagesperso-orange.fr', '29376924', 'Ativo, Desativo'),
(688, 'Lamond McDermott-Row', 'Lamond', 'ule/dele', 'Prefiriu não informar', '1976-12-17', 'Casado', '26747351189', 'lmcdermottrowj3@sogou.com', '36995160', 'Ativo, Desativo'),
(689, 'Prent Loney', NULL, 'elu/delu', 'Masculino', '1971-02-22', 'Casado', '97731107117', 'ploneyj4@hc360.com', '59163899', 'Ativo, Desativo'),
(690, 'Payton Gowen', NULL, 'ula/dula', 'Feminino', '1972-10-02', 'Casado', '35925897691', 'pgowenj5@baidu.com', '17668999', 'Ativo, Desativo'),
(691, 'Arte Meikle', NULL, 'elu/delu', 'Feminino', '1986-07-28', 'Casado', '23353974652', 'ameiklej6@etsy.com', '05773629', 'Ativo, Desativo'),
(692, 'Jacquelin Holme', NULL, 'ela/dela', 'Outro', '2003-09-22', 'Viúvo', '32486020162', 'jholmej7@comcast.net', '19140961', 'Ativo, Desativo'),
(693, 'Lulita Suart', NULL, 'ulu/dulu', 'Feminino', '1988-10-19', 'Casado', '38619027840', 'lsuartj8@hhs.gov', '24385479', 'Ativo, Desativo'),
(694, 'Leonidas Crowthe', NULL, 'ule/dele', 'Outro', '1985-02-11', 'Viúvo', '85145694881', 'lcrowthej9@shinystat.com', '93077609', 'Ativo, Desativo'),
(695, 'Gray Monte', NULL, 'ula/dula', 'Prefiriu não informar', '1998-05-20', 'Casado', '66044053050', 'gmonteja@chronoengine.com', '73826826', 'Ativo, Desativo'),
(696, 'Nathanil Damant', 'Nathanil', 'ulu/dulu', 'Feminino', '1984-05-26', 'Casado', '80707280092', 'ndamantjb@economist.com', '12070780', 'Ativo, Desativo'),
(697, 'Felicio Wanka', NULL, 'elu/delu', 'Feminino', '1982-02-12', 'Viúvo', '49415560524', 'fwankajc@linkedin.com', '84816572', 'Ativo, Desativo'),
(698, 'Kevan Bossel', NULL, 'ulu/dulu', 'Feminino', '1987-03-16', 'Casado', '50413535724', 'kbosseljd@dailymail.co.uk', '86751111', 'Ativo, Desativo'),
(699, 'Aurilia Jacson', NULL, 'ulu/dulu', 'Masculino', '1998-12-28', 'Viúvo', '99278828974', 'ajacsonje@jimdo.com', '41273476', 'Ativo, Desativo'),
(700, 'Danella Jalland', 'Danella', 'ulu/dulu', 'Masculino', '1974-02-13', 'Solteiro', '60103257019', 'djallandjf@engadget.com', '66269760', 'Ativo, Desativo'),
(701, 'Dud Kamiyama', NULL, 'elu/delu', 'Prefiriu não informar', '1972-07-10', 'Solteiro', '01606014837', 'dkamiyamajg@slate.com', '68744639', 'Ativo, Desativo'),
(702, 'Arman Arrigo', NULL, 'ela/dela', 'Feminino', '1973-07-28', 'Casado', '61852628702', 'aarrigojh@admin.ch', '55711234', 'Ativo, Desativo'),
(703, 'Gan Mulvaney', 'Gan', 'ulu/dulu', 'Masculino', '1989-01-10', 'Casado', '13678107027', 'gmulvaneyji@reddit.com', '71697175', 'Ativo, Desativo'),
(704, 'Roda McSkeagan', NULL, 'ulu/dulu', 'Outro', '1981-10-23', 'Viúvo', '30634005388', 'rmcskeaganjj@purevolume.com', '21776481', 'Ativo, Desativo'),
(705, 'Wade O\'Hagan', 'Wade', 'ulu/dulu', 'Outro', '2006-05-17', 'Solteiro', '83848566067', 'wohaganjk@goo.gl', '06532748', 'Ativo, Desativo'),
(706, 'Rickert Rowledge', 'Rickert', 'ela/dela', 'Outro', '1985-02-21', 'Casado', '69850398929', 'rrowledgejl@over-blog.com', '80614543', 'Ativo, Desativo'),
(707, 'Robby Wais', NULL, 'ula/dula', 'Masculino', '1988-11-01', 'Viúvo', '99204766791', 'rwaisjm@google.it', '18884160', 'Ativo, Desativo'),
(708, 'Mervin Kirvin', 'Mervin', 'ula/dula', 'Feminino', '1994-08-29', 'Casado', '16730034968', 'mkirvinjn@bizjournals.com', '49907774', 'Ativo, Desativo'),
(709, 'Concordia Vivians', NULL, 'ulu/dulu', 'Prefiriu não informar', '1973-02-24', 'Casado', '32107452493', 'cviviansjo@youtube.com', '14879242', 'Ativo, Desativo'),
(710, 'Anallese Abells', NULL, 'ula/dula', 'Outro', '1976-03-05', 'Viúvo', '82622922448', 'aabellsjp@jimdo.com', '58669473', 'Ativo, Desativo'),
(711, 'Dulcie Amort', NULL, 'ela/dela', 'Prefiriu não informar', '2003-02-06', 'Casado', '27943670186', 'damortjq@furl.net', '19076080', 'Ativo, Desativo'),
(712, 'Torrance Neenan', NULL, 'ele/dele', 'Masculino', '1982-09-19', 'Solteiro', '73411010490', 'tneenanjr@geocities.com', '54291285', 'Ativo, Desativo'),
(713, 'Adam Ivins', NULL, 'ule/dele', 'Masculino', '2001-03-21', 'Casado', '71526739516', 'aivinsjs@icq.com', '22657917', 'Ativo, Desativo'),
(714, 'Isis Taunton.', NULL, 'ule/dele', 'Outro', '1990-12-18', 'Solteiro', '83983223359', 'itauntonjt@prlog.org', '39150167', 'Ativo, Desativo'),
(715, 'Katherine Hadleigh', NULL, 'ule/dele', 'Prefiriu não informar', '1987-02-16', 'Viúvo', '90346208666', 'khadleighju@mail.ru', '26018541', 'Ativo, Desativo'),
(716, 'Cissy Madgewick', NULL, 'ula/dula', 'Masculino', '1985-06-21', 'Solteiro', '92563372743', 'cmadgewickjv@netvibes.com', '67790460', 'Ativo, Desativo'),
(717, 'Leelah Brobyn', 'Leelah', 'ele/dele', 'Masculino', '2002-12-16', 'Casado', '12656135103', 'lbrobynjw@t-online.de', '84213868', 'Ativo, Desativo'),
(718, 'Bartolemo Quadri', NULL, 'ele/dele', 'Masculino', '2000-07-23', 'Viúvo', '08872556118', 'bquadrijx@list-manage.com', '57250230', 'Ativo, Desativo'),
(719, 'Sibyl Barrowclough', NULL, 'ulu/dulu', 'Outro', '1971-11-27', 'Casado', '90427675458', 'sbarrowcloughjy@tripadvisor.com', '10054919', 'Ativo, Desativo'),
(720, 'Meredith Seabrooke', NULL, 'ulu/dulu', 'Outro', '1980-07-26', 'Viúvo', '16631368479', 'mseabrookejz@virginia.edu', '41131014', 'Ativo, Desativo'),
(721, 'Maurice Threadgold', 'Maurice', 'ule/dele', 'Prefiriu não informar', '1979-07-02', 'Casado', '81255003354', 'mthreadgoldk0@ihg.com', '97183250', 'Ativo, Desativo'),
(722, 'Nonna Bygate', 'Nonna', 'ula/dula', 'Feminino', '1978-09-12', 'Solteiro', '07423230541', 'nbygatek1@seattletimes.com', '48360364', 'Ativo, Desativo'),
(723, 'Edithe Peckett', 'Edithe', 'ele/dele', 'Prefiriu não informar', '1987-09-22', 'Viúvo', '15154757413', 'epeckettk2@theglobeandmail.com', '80867668', 'Ativo, Desativo'),
(724, 'Jaye Tillett', NULL, 'ela/dela', 'Feminino', '1978-11-18', 'Casado', '47187255113', 'jtillettk3@w3.org', '19589804', 'Ativo, Desativo'),
(725, 'Greggory Domino', NULL, 'ula/dula', 'Feminino', '1989-10-25', 'Casado', '93134735252', 'gdominok4@simplemachines.org', '67777256', 'Ativo, Desativo'),
(726, 'Allis De Metz', NULL, 'ela/dela', 'Feminino', '2006-08-09', 'Viúvo', '05606982673', 'adek5@cnn.com', '75958358', 'Ativo, Desativo'),
(727, 'Ivy Girardoni', NULL, 'ulu/dulu', 'Outro', '1972-06-30', 'Casado', '29519344644', 'igirardonik6@privacy.gov.au', '08528763', 'Ativo, Desativo'),
(728, 'Anjanette Butter', NULL, 'ela/dela', 'Prefiriu não informar', '1973-03-02', 'Casado', '68407806391', 'abutterk7@hao123.com', '51626837', 'Ativo, Desativo'),
(729, 'Cybill Vannoort', 'Cybill', 'ele/dele', 'Prefiriu não informar', '1989-08-14', 'Viúvo', '83649184684', 'cvannoortk8@facebook.com', '28715277', 'Ativo, Desativo'),
(730, 'Patrizia Tuckley', 'Patrizia', 'ula/dula', 'Feminino', '1998-02-23', 'Casado', '32822269789', 'ptuckleyk9@ning.com', '52405583', 'Ativo, Desativo'),
(731, 'Gracie Birkmyre', NULL, 'ele/dele', 'Feminino', '1973-08-21', 'Casado', '48740958770', 'gbirkmyreka@twitter.com', '60928536', 'Ativo, Desativo'),
(732, 'Bartolomeo Pieracci', 'Bartolomeo', 'ula/dula', 'Prefiriu não informar', '1984-12-08', 'Solteiro', '85985332422', 'bpieraccikb@harvard.edu', '58629716', 'Ativo, Desativo'),
(733, 'Jacquenetta Curlis', NULL, 'elu/delu', 'Masculino', '1997-02-08', 'Viúvo', '86736613133', 'jcurliskc@livejournal.com', '60574065', 'Ativo, Desativo'),
(734, 'Bianca Skittle', 'Bianca', 'ela/dela', 'Feminino', '1988-12-08', 'Viúvo', '47407329128', 'bskittlekd@dailymotion.com', '36136887', 'Ativo, Desativo'),
(735, 'Ethelred Gonnin', NULL, 'ula/dula', 'Masculino', '1997-04-14', 'Viúvo', '06941557859', 'egonninke@ask.com', '87952750', 'Ativo, Desativo'),
(736, 'Sari Bourgeois', NULL, 'ele/dele', 'Outro', '1973-09-17', 'Viúvo', '31446235129', 'sbourgeoiskf@marriott.com', '46547828', 'Ativo, Desativo'),
(737, 'Scottie Thurby', NULL, 'ulu/dulu', 'Feminino', '1981-03-28', 'Viúvo', '95647527135', 'sthurbykg@blogger.com', '28558897', 'Ativo, Desativo'),
(738, 'Wildon Kesper', NULL, 'ula/dula', 'Outro', '1990-03-29', 'Viúvo', '37104198244', 'wkesperkh@bigcartel.com', '03161160', 'Ativo, Desativo'),
(739, 'Jessalin Dearnley', NULL, 'ula/dula', 'Outro', '1996-08-01', 'Casado', '33863276614', 'jdearnleyki@ucoz.ru', '93968549', 'Ativo, Desativo'),
(740, 'Chester Prozescky', 'Chester', 'ela/dela', 'Outro', '1981-02-06', 'Casado', '67316924188', 'cprozesckykj@jalbum.net', '51280737', 'Ativo, Desativo'),
(741, 'Ber Brigham', NULL, 'ela/dela', 'Prefiriu não informar', '1980-04-16', 'Casado', '74689217278', 'bbrighamkk@statcounter.com', '73217406', 'Ativo, Desativo'),
(742, 'Jillian Bere', NULL, 'ela/dela', 'Feminino', '2005-07-26', 'Casado', '09723778823', 'jberekl@privacy.gov.au', '95790077', 'Ativo, Desativo'),
(743, 'Kizzie Ubanks', NULL, 'ela/dela', 'Feminino', '1985-11-15', 'Viúvo', '24830641481', 'kubankskm@time.com', '34729561', 'Ativo, Desativo'),
(744, 'Hilton MacSporran', NULL, 'elu/delu', 'Feminino', '2000-07-02', 'Casado', '62197373090', 'hmacsporrankn@geocities.com', '33527922', 'Ativo, Desativo'),
(745, 'Verna Neicho', NULL, 'elu/delu', 'Feminino', '1976-03-03', 'Casado', '62066135308', 'vneichoko@yahoo.co.jp', '99203501', 'Ativo, Desativo'),
(746, 'Mora Simpkiss', NULL, 'ulu/dulu', 'Prefiriu não informar', '2003-03-22', 'Viúvo', '60035681929', 'msimpkisskp@slideshare.net', '19770311', 'Ativo, Desativo'),
(747, 'Donaugh Colbeck', NULL, 'ule/dele', 'Prefiriu não informar', '2005-03-31', 'Casado', '98138475426', 'dcolbeckkq@theguardian.com', '95210823', 'Ativo, Desativo'),
(748, 'Dalt Yashunin', NULL, 'ela/dela', 'Prefiriu não informar', '1977-09-12', 'Solteiro', '01527862661', 'dyashuninkr@sina.com.cn', '15856788', 'Ativo, Desativo'),
(749, 'Abbie Wathan', 'Abbie', 'ela/dela', 'Feminino', '1977-03-22', 'Solteiro', '87252847413', 'awathanks@flavors.me', '14041197', 'Ativo, Desativo'),
(750, 'Rhetta Helstrip', NULL, 'elu/delu', 'Feminino', '2005-03-10', 'Casado', '18939144617', 'rhelstripkt@unesco.org', '04171021', 'Ativo, Desativo'),
(751, 'Jermaine Philcox', NULL, 'ula/dula', 'Feminino', '1996-02-01', 'Viúvo', '35401955043', 'jphilcoxku@irs.gov', '26085307', 'Ativo, Desativo'),
(752, 'Lenna Gomersal', NULL, 'ele/dele', 'Masculino', '1982-07-14', 'Casado', '91692500776', 'lgomersalkv@whitehouse.gov', '44306500', 'Ativo, Desativo'),
(753, 'Dorthea MacPeake', NULL, 'ulu/dulu', 'Prefiriu não informar', '2002-03-10', 'Solteiro', '20427129053', 'dmacpeakekw@scribd.com', '13125879', 'Ativo, Desativo'),
(754, 'Alair Worsalls', 'Alair', 'ula/dula', 'Prefiriu não informar', '1991-07-29', 'Solteiro', '40358480167', 'aworsallskx@dmoz.org', '80377032', 'Ativo, Desativo'),
(755, 'Joyce Quinn', NULL, 'ela/dela', 'Feminino', '1978-02-28', 'Casado', '79294022136', 'jquinnky@github.io', '18813703', 'Ativo, Desativo'),
(756, 'Kalil Stannah', NULL, 'ulu/dulu', 'Masculino', '1985-09-01', 'Solteiro', '06330126860', 'kstannahkz@plala.or.jp', '86194514', 'Ativo, Desativo'),
(757, 'Ambrosius Biermatowicz', NULL, 'elu/delu', 'Feminino', '1998-11-29', 'Casado', '57688177433', 'abiermatowiczl0@msn.com', '76490608', 'Ativo, Desativo'),
(758, 'Haslett Cliss', 'Haslett', 'ela/dela', 'Prefiriu não informar', '1973-09-13', 'Casado', '10268237557', 'hclissl1@fotki.com', '05283109', 'Ativo, Desativo'),
(759, 'Cyndy Volet', NULL, 'ule/dele', 'Feminino', '1993-03-04', 'Solteiro', '08709697845', 'cvoletl2@noaa.gov', '40897840', 'Ativo, Desativo'),
(760, 'Bertrand Lory', NULL, 'ulu/dulu', 'Outro', '1976-11-29', 'Casado', '68996767354', 'bloryl3@upenn.edu', '80876936', 'Ativo, Desativo'),
(761, 'Nicoli Swyer-Sexey', NULL, 'ulu/dulu', 'Masculino', '1986-11-02', 'Viúvo', '34174075779', 'nswyersexeyl4@joomla.org', '38960798', 'Ativo, Desativo'),
(762, 'Wendeline Huncoot', NULL, 'ele/dele', 'Feminino', '1985-07-19', 'Viúvo', '56633205866', 'whuncootl5@storify.com', '56189064', 'Ativo, Desativo'),
(763, 'Joshua Ferriere', 'Joshua', 'ele/dele', 'Masculino', '1989-08-27', 'Solteiro', '70701735323', 'jferrierel6@baidu.com', '79287492', 'Ativo, Desativo'),
(764, 'Alisun Mattedi', NULL, 'ela/dela', 'Masculino', '1990-09-26', 'Solteiro', '70613520857', 'amattedil7@issuu.com', '35388762', 'Ativo, Desativo'),
(765, 'Waring Merrill', NULL, 'ula/dula', 'Feminino', '2005-05-22', 'Casado', '75982440528', 'wmerrilll8@columbia.edu', '31720140', 'Ativo, Desativo'),
(766, 'Susy Fomichkin', NULL, 'ule/dele', 'Masculino', '1994-05-31', 'Solteiro', '89714139841', 'sfomichkinl9@admin.ch', '87236364', 'Ativo, Desativo'),
(767, 'Deanne Battson', NULL, 'ela/dela', 'Prefiriu não informar', '1983-10-23', 'Viúvo', '03625350305', 'dbattsonla@google.com', '49395308', 'Ativo, Desativo'),
(768, 'Margaret Bransby', NULL, 'ule/dele', 'Feminino', '1982-02-01', 'Viúvo', '97087720444', 'mbransbylb@webeden.co.uk', '41069696', 'Ativo, Desativo'),
(769, 'Tootsie Martonfi', NULL, 'ela/dela', 'Prefiriu não informar', '1989-01-10', 'Casado', '36928873832', 'tmartonfilc@weibo.com', '90239034', 'Ativo, Desativo'),
(770, 'Carly Wooster', 'Carly', 'ulu/dulu', 'Masculino', '1998-10-28', 'Solteiro', '44518268099', 'cwoosterld@bloglovin.com', '68806703', 'Ativo, Desativo'),
(771, 'Rickert Buxy', NULL, 'ele/dele', 'Outro', '1984-09-14', 'Solteiro', '60409241207', 'rbuxyle@reverbnation.com', '23572423', 'Ativo, Desativo'),
(772, 'Rodd Ireland', NULL, 'ula/dula', 'Masculino', '1984-11-27', 'Viúvo', '04051385610', 'rirelandlf@wikimedia.org', '51199414', 'Ativo, Desativo'),
(773, 'Ella Gerlack', 'Ella', 'ela/dela', 'Prefiriu não informar', '1983-11-18', 'Casado', '64546252044', 'egerlacklg@pinterest.com', '11386661', 'Ativo, Desativo'),
(774, 'Anabal Dewdney', 'Anabal', 'ulu/dulu', 'Masculino', '2005-10-25', 'Viúvo', '69082380859', 'adewdneylh@ihg.com', '70682604', 'Ativo, Desativo'),
(775, 'Fayina Lisciardelli', NULL, 'ela/dela', 'Prefiriu não informar', '1998-03-07', 'Casado', '15972750906', 'flisciardellili@webnode.com', '47477693', 'Ativo, Desativo'),
(776, 'Terencio Charter', NULL, 'ule/dele', 'Outro', '1996-03-23', 'Solteiro', '19536789030', 'tcharterlj@state.tx.us', '70406221', 'Ativo, Desativo'),
(777, 'Kirsten Kellitt', 'Kirsten', 'elu/delu', 'Outro', '2004-07-15', 'Casado', '93859700519', 'kkellittlk@vk.com', '28139443', 'Ativo, Desativo'),
(778, 'Tonya Ullrich', NULL, 'ele/dele', 'Prefiriu não informar', '1979-06-16', 'Viúvo', '42029506824', 'tullrichll@ft.com', '43151828', 'Ativo, Desativo'),
(779, 'Clint Cordie', NULL, 'elu/delu', 'Masculino', '1989-05-04', 'Solteiro', '12569278692', 'ccordielm@newsvine.com', '17909651', 'Ativo, Desativo'),
(780, 'Arlene Foord', NULL, 'ele/dele', 'Feminino', '1990-04-06', 'Viúvo', '79244766302', 'afoordln@sitemeter.com', '30570689', 'Ativo, Desativo'),
(781, 'Natal Blabie', NULL, 'ule/dele', 'Outro', '1985-07-10', 'Solteiro', '91831540116', 'nblabielo@angelfire.com', '63246954', 'Ativo, Desativo'),
(782, 'Sauveur Mephan', NULL, 'ule/dele', 'Outro', '1992-11-25', 'Solteiro', '15242551608', 'smephanlp@icio.us', '60016258', 'Ativo, Desativo'),
(783, 'Zackariah Frunks', NULL, 'ele/dele', 'Feminino', '1987-05-22', 'Solteiro', '66130688114', 'zfrunkslq@quantcast.com', '03649668', 'Ativo, Desativo'),
(784, 'Maegan Rewbottom', NULL, 'elu/delu', 'Prefiriu não informar', '2001-02-06', 'Viúvo', '16587871622', 'mrewbottomlr@mozilla.org', '10386083', 'Ativo, Desativo'),
(785, 'Clemens Lavies', NULL, 'elu/delu', 'Masculino', '1986-11-07', 'Viúvo', '10126892833', 'claviesls@elpais.com', '49407440', 'Ativo, Desativo'),
(786, 'Abra Jamblin', 'Abra', 'ela/dela', 'Outro', '1978-08-25', 'Solteiro', '03512421387', 'ajamblinlt@geocities.jp', '87743299', 'Ativo, Desativo'),
(787, 'Jemima Wrightham', NULL, 'elu/delu', 'Masculino', '1980-02-03', 'Casado', '74621513264', 'jwrighthamlu@eepurl.com', '82656393', 'Ativo, Desativo'),
(788, 'Rebekkah MacGillreich', 'Rebekkah', 'ulu/dulu', 'Masculino', '1994-01-01', 'Viúvo', '33300666192', 'rmacgillreichlv@biglobe.ne.jp', '56306738', 'Ativo, Desativo'),
(789, 'Ashley Vasilischev', NULL, 'elu/delu', 'Masculino', '1971-03-07', 'Solteiro', '13566686668', 'avasilischevlw@moonfruit.com', '41373135', 'Ativo, Desativo'),
(790, 'Essie Adolthine', 'Essie', 'elu/delu', 'Masculino', '2000-10-18', 'Viúvo', '26513915010', 'eadolthinelx@samsung.com', '57372581', 'Ativo, Desativo'),
(791, 'Salem Slate', 'Salem', 'ule/dele', 'Masculino', '1988-12-29', 'Solteiro', '74333171337', 'sslately@blog.com', '54624365', 'Ativo, Desativo'),
(792, 'Doe Dows', NULL, 'ule/dele', 'Outro', '1985-08-30', 'Casado', '33357360554', 'ddowslz@army.mil', '13563530', 'Ativo, Desativo'),
(793, 'Charyl Sellack', 'Charyl', 'ela/dela', 'Prefiriu não informar', '1979-08-23', 'Casado', '79201709586', 'csellackm0@hp.com', '13674678', 'Ativo, Desativo'),
(794, 'Casey Noor', NULL, 'ulu/dulu', 'Masculino', '1977-09-02', 'Solteiro', '65369877161', 'cnoorm1@rediff.com', '61734119', 'Ativo, Desativo'),
(795, 'Camellia Drakers', 'Camellia', 'elu/delu', 'Feminino', '1971-08-23', 'Solteiro', '81903617868', 'cdrakersm2@jigsy.com', '87411124', 'Ativo, Desativo'),
(796, 'Riannon Jeaneau', 'Riannon', 'ula/dula', 'Outro', '1992-04-17', 'Casado', '50840906640', 'rjeaneaum3@geocities.jp', '46254626', 'Ativo, Desativo'),
(797, 'Rebekah Ferney', NULL, 'ule/dele', 'Outro', '1979-04-05', 'Casado', '52500810075', 'rferneym4@nih.gov', '54780449', 'Ativo, Desativo'),
(798, 'Roz Jorry', NULL, 'ulu/dulu', 'Outro', '1975-10-31', 'Solteiro', '43847614632', 'rjorrym5@posterous.com', '41355128', 'Ativo, Desativo'),
(799, 'Maura Manhare', NULL, 'ule/dele', 'Masculino', '1993-04-29', 'Casado', '87679309961', 'mmanharem6@cornell.edu', '19417527', 'Ativo, Desativo'),
(800, 'Janessa Cammiemile', NULL, 'ela/dela', 'Feminino', '1975-02-21', 'Viúvo', '93878979255', 'jcammiemilem7@google.com.hk', '87952522', 'Ativo, Desativo'),
(801, 'Quintina Southall', 'Quintina', 'elu/delu', 'Outro', '1994-06-27', 'Viúvo', '33279102365', 'qsouthallm8@japanpost.jp', '37786655', 'Ativo, Desativo'),
(802, 'Kareem Readwing', NULL, 'elu/delu', 'Outro', '1987-12-19', 'Solteiro', '67109421817', 'kreadwingm9@altervista.org', '85564788', 'Ativo, Desativo'),
(803, 'Garreth Lindman', NULL, 'elu/delu', 'Feminino', '1995-03-30', 'Casado', '50702752536', 'glindmanma@github.com', '75485836', 'Ativo, Desativo'),
(804, 'Gerty Acarson', NULL, 'ule/dele', 'Prefiriu não informar', '1992-06-04', 'Casado', '26052270814', 'gacarsonmb@cnbc.com', '17176638', 'Ativo, Desativo'),
(805, 'Amelie Verbruggen', 'Amelie', 'ulu/dulu', 'Prefiriu não informar', '1983-04-19', 'Casado', '72775772265', 'averbruggenmc@prnewswire.com', '85671905', 'Ativo, Desativo'),
(806, 'Leone Hambribe', NULL, 'ele/dele', 'Prefiriu não informar', '1979-03-01', 'Viúvo', '94178295029', 'lhambribemd@buzzfeed.com', '70888534', 'Ativo, Desativo'),
(807, 'Onfre Gladdis', NULL, 'ulu/dulu', 'Prefiriu não informar', '1994-07-23', 'Casado', '08856892659', 'ogladdisme@smugmug.com', '26828280', 'Ativo, Desativo'),
(808, 'Alejoa Brydon', 'Alejoa', 'ele/dele', 'Prefiriu não informar', '1974-07-09', 'Solteiro', '56126440736', 'abrydonmf@flavors.me', '07222338', 'Ativo, Desativo'),
(809, 'Vitia Cristofalo', NULL, 'ulu/dulu', 'Masculino', '2006-04-30', 'Solteiro', '85452655118', 'vcristofalomg@mapquest.com', '22657193', 'Ativo, Desativo'),
(810, 'Minne Bettridge', NULL, 'ele/dele', 'Feminino', '2001-07-01', 'Viúvo', '84873794917', 'mbettridgemh@domainmarket.com', '13592406', 'Ativo, Desativo'),
(811, 'Erek Revans', NULL, 'ela/dela', 'Feminino', '1993-12-30', 'Solteiro', '14426309948', 'erevansmi@harvard.edu', '29647118', 'Ativo, Desativo'),
(812, 'Gabriela Picker', NULL, 'ele/dele', 'Masculino', '1979-02-15', 'Solteiro', '11135113165', 'gpickermj@etsy.com', '95078445', 'Ativo, Desativo'),
(813, 'Darla Kaley', NULL, 'ulu/dulu', 'Prefiriu não informar', '1990-04-18', 'Casado', '29648982618', 'dkaleymk@stumbleupon.com', '23654392', 'Ativo, Desativo'),
(814, 'Ewart Rands', NULL, 'ele/dele', 'Masculino', '1994-07-29', 'Viúvo', '97362511314', 'erandsml@webnode.com', '57871068', 'Ativo, Desativo'),
(815, 'Hattie De la Yglesia', NULL, 'ulu/dulu', 'Prefiriu não informar', '1981-06-28', 'Viúvo', '92056427804', 'hdemm@house.gov', '99207955', 'Ativo, Desativo'),
(816, 'Bradley Moynham', NULL, 'ula/dula', 'Outro', '1997-02-13', 'Solteiro', '82092937136', 'bmoynhammn@harvard.edu', '98385586', 'Ativo, Desativo'),
(817, 'Josephine Philip', NULL, 'ule/dele', 'Feminino', '2000-02-05', 'Casado', '34497048032', 'jphilipmo@sciencedirect.com', '80300477', 'Ativo, Desativo'),
(818, 'Dallas Loughead', 'Dallas', 'ele/dele', 'Prefiriu não informar', '2002-12-26', 'Solteiro', '56054165066', 'dlougheadmp@wp.com', '02364925', 'Ativo, Desativo'),
(819, 'Alfredo Cowgill', NULL, 'ula/dula', 'Outro', '1975-03-01', 'Solteiro', '25208567726', 'acowgillmq@unc.edu', '51095709', 'Ativo, Desativo'),
(820, 'Annice Winnister', 'Annice', 'ulu/dulu', 'Masculino', '1978-02-13', 'Solteiro', '65153961305', 'awinnistermr@oaic.gov.au', '99710613', 'Ativo, Desativo'),
(821, 'Blondelle Hartop', 'Blondelle', 'ele/dele', 'Outro', '1979-12-03', 'Solteiro', '42275776072', 'bhartopms@w3.org', '53829338', 'Ativo, Desativo'),
(822, 'Danyette MacElane', NULL, 'ele/dele', 'Masculino', '1974-03-19', 'Casado', '70775649238', 'dmacelanemt@google.fr', '36576064', 'Ativo, Desativo'),
(823, 'Alexandrina Thorlby', NULL, 'ele/dele', 'Outro', '2004-09-01', 'Casado', '71002028024', 'athorlbymu@marketwatch.com', '17499365', 'Ativo, Desativo'),
(824, 'Nolie Huriche', NULL, 'ele/dele', 'Feminino', '1983-04-03', 'Casado', '44487526201', 'nhurichemv@topsy.com', '05834536', 'Ativo, Desativo'),
(825, 'Timoteo Gowthrop', NULL, 'ulu/dulu', 'Outro', '1994-03-24', 'Casado', '91308439694', 'tgowthropmw@squarespace.com', '46552742', 'Ativo, Desativo'),
(826, 'Zed Rogans', NULL, 'ulu/dulu', 'Feminino', '2000-06-14', 'Solteiro', '06426310137', 'zrogansmx@reddit.com', '02267954', 'Ativo, Desativo'),
(827, 'Willard Undrill', NULL, 'ule/dele', 'Feminino', '1986-07-05', 'Viúvo', '52129929508', 'wundrillmy@comcast.net', '98804405', 'Ativo, Desativo'),
(828, 'Jo-anne Schwier', NULL, 'ulu/dulu', 'Outro', '1979-08-06', 'Casado', '00051305744', 'jschwiermz@hibu.com', '89354262', 'Ativo, Desativo'),
(829, 'Patti Clapshaw', NULL, 'elu/delu', 'Masculino', '1994-08-24', 'Viúvo', '28527277173', 'pclapshawn0@blogs.com', '06428962', 'Ativo, Desativo'),
(830, 'Nathan Ivison', NULL, 'ela/dela', 'Feminino', '1980-11-22', 'Viúvo', '78499135456', 'nivisonn1@youtube.com', '16655064', 'Ativo, Desativo'),
(831, 'Chaunce Castenda', NULL, 'ule/dele', 'Feminino', '2001-09-01', 'Solteiro', '72985854089', 'ccastendan2@hp.com', '75682053', 'Ativo, Desativo'),
(832, 'Hallie Lorrimer', 'Hallie', 'elu/delu', 'Outro', '1983-07-28', 'Solteiro', '46251947536', 'hlorrimern3@nhs.uk', '01196402', 'Ativo, Desativo'),
(833, 'Joachim Domb', NULL, 'ula/dula', 'Prefiriu não informar', '1996-07-29', 'Solteiro', '34469002240', 'jdombn4@bloglovin.com', '79378470', 'Ativo, Desativo'),
(834, 'Engelbert Vine', NULL, 'ula/dula', 'Masculino', '1972-01-04', 'Viúvo', '52033984943', 'evinen5@princeton.edu', '94806652', 'Ativo, Desativo'),
(835, 'Berte Asch', NULL, 'ula/dula', 'Prefiriu não informar', '2002-11-27', 'Casado', '50164219829', 'baschn6@mlb.com', '15590989', 'Ativo, Desativo'),
(836, 'Marlowe Wager', NULL, 'ula/dula', 'Outro', '1984-01-07', 'Solteiro', '30805736693', 'mwagern7@myspace.com', '21370564', 'Ativo, Desativo'),
(837, 'Jules Bonnavant', NULL, 'ele/dele', 'Feminino', '1986-04-05', 'Casado', '87546413562', 'jbonnavantn8@blogspot.com', '47726723', 'Ativo, Desativo'),
(838, 'Arty Branson', 'Arty', 'ula/dula', 'Outro', '1977-03-14', 'Viúvo', '82594745602', 'abransonn9@rediff.com', '32128772', 'Ativo, Desativo'),
(839, 'Hermy Slym', NULL, 'ele/dele', 'Masculino', '1996-01-16', 'Solteiro', '89289576597', 'hslymna@cafepress.com', '49520469', 'Ativo, Desativo'),
(840, 'Neala Challinor', NULL, 'ula/dula', 'Prefiriu não informar', '1985-05-29', 'Solteiro', '71519322373', 'nchallinornb@yolasite.com', '76032000', 'Ativo, Desativo'),
(841, 'Veda Fellis', NULL, 'elu/delu', 'Masculino', '2002-10-30', 'Solteiro', '88066145484', 'vfellisnc@alexa.com', '23769746', 'Ativo, Desativo'),
(842, 'Tammie McReynolds', NULL, 'elu/delu', 'Masculino', '2001-06-09', 'Viúvo', '98834177198', 'tmcreynoldsnd@telegraph.co.uk', '06091540', 'Ativo, Desativo'),
(843, 'Briana Potbury', 'Briana', 'ula/dula', 'Outro', '1971-01-20', 'Solteiro', '57190939206', 'bpotburyne@rambler.ru', '62629755', 'Ativo, Desativo'),
(844, 'Neda Waliszewski', NULL, 'ula/dula', 'Outro', '1984-07-16', 'Viúvo', '89793499350', 'nwaliszewskinf@oakley.com', '71140761', 'Ativo, Desativo'),
(845, 'Teddie Berk', NULL, 'elu/delu', 'Masculino', '1993-02-11', 'Viúvo', '91863456095', 'tberkng@storify.com', '54008433', 'Ativo, Desativo'),
(846, 'Baryram McGeachie', NULL, 'ele/dele', 'Prefiriu não informar', '1996-06-28', 'Solteiro', '68420590232', 'bmcgeachienh@slideshare.net', '13319546', 'Ativo, Desativo'),
(847, 'Rafa Willishire', NULL, 'ele/dele', 'Outro', '1971-11-21', 'Casado', '75752375075', 'rwillishireni@seesaa.net', '91464186', 'Ativo, Desativo'),
(848, 'Kareem Schooley', 'Kareem', 'elu/delu', 'Feminino', '2005-05-23', 'Casado', '46167616770', 'kschooleynj@elpais.com', '79152875', 'Ativo, Desativo'),
(849, 'Alys Andresser', NULL, 'ela/dela', 'Masculino', '1993-08-19', 'Casado', '17017175817', 'aandressernk@google.nl', '74687643', 'Ativo, Desativo'),
(850, 'Wallace Tune', NULL, 'ela/dela', 'Feminino', '1998-12-26', 'Solteiro', '44333698660', 'wtunenl@ft.com', '14059425', 'Ativo, Desativo'),
(851, 'Dalston Ballingal', NULL, 'elu/delu', 'Feminino', '2000-07-27', 'Casado', '65419211232', 'dballingalnm@taobao.com', '52321332', 'Ativo, Desativo'),
(852, 'Giuditta Oxlade', NULL, 'ela/dela', 'Feminino', '1995-08-27', 'Casado', '77344992927', 'goxladenn@hibu.com', '45294863', 'Ativo, Desativo'),
(853, 'Nicolette Manilove', NULL, 'ula/dula', 'Outro', '1971-06-15', 'Casado', '84433544815', 'nmaniloveno@earthlink.net', '16986118', 'Ativo, Desativo'),
(854, 'Rocky Wolfers', NULL, 'ule/dele', 'Masculino', '1974-12-25', 'Solteiro', '33800014563', 'rwolfersnp@bloglovin.com', '76458211', 'Ativo, Desativo'),
(855, 'Yettie Showl', NULL, 'elu/delu', 'Feminino', '1980-04-18', 'Viúvo', '10635629725', 'yshowlnq@feedburner.com', '02084052', 'Ativo, Desativo'),
(856, 'Shirley Penhaligon', NULL, 'ele/dele', 'Masculino', '2005-12-17', 'Casado', '18110985616', 'spenhaligonnr@reuters.com', '84936525', 'Ativo, Desativo'),
(857, 'Micaela Main', NULL, 'ule/dele', 'Outro', '1972-01-25', 'Viúvo', '45483084932', 'mmainns@answers.com', '83148420', 'Ativo, Desativo'),
(858, 'Kassey Lythgoe', NULL, 'ula/dula', 'Prefiriu não informar', '1995-10-21', 'Solteiro', '12596195720', 'klythgoent@mapy.cz', '84118731', 'Ativo, Desativo'),
(859, 'Ettie Jarvie', NULL, 'elu/delu', 'Masculino', '1998-04-12', 'Solteiro', '78271410776', 'ejarvienu@nationalgeographic.com', '89289932', 'Ativo, Desativo'),
(860, 'Eldredge McCurry', 'Eldredge', 'ule/dele', 'Outro', '2000-01-09', 'Casado', '58366256065', 'emccurrynv@irs.gov', '94812263', 'Ativo, Desativo'),
(861, 'Allie Catlin', NULL, 'ulu/dulu', 'Feminino', '2005-08-13', 'Solteiro', '66964278907', 'acatlinnw@wp.com', '32552187', 'Ativo, Desativo'),
(862, 'Elisabeth Waller-Bridge', NULL, 'ela/dela', 'Masculino', '2005-03-09', 'Viúvo', '43335054346', 'ewallerbridgenx@seesaa.net', '16028805', 'Ativo, Desativo'),
(863, 'Avrit Peperell', NULL, 'ele/dele', 'Masculino', '1980-12-25', 'Casado', '13385281477', 'apeperellny@ning.com', '85768977', 'Ativo, Desativo'),
(864, 'Any Barkus', NULL, 'ula/dula', 'Masculino', '1980-07-15', 'Solteiro', '63314910628', 'abarkusnz@squidoo.com', '19574402', 'Ativo, Desativo'),
(865, 'Mada Lippitt', NULL, 'ulu/dulu', 'Masculino', '1974-07-05', 'Casado', '77307058563', 'mlippitto0@qq.com', '06609068', 'Ativo, Desativo'),
(866, 'Garner Dibdale', NULL, 'elu/delu', 'Masculino', '1987-08-26', 'Solteiro', '53656602214', 'gdibdaleo1@addthis.com', '80951903', 'Ativo, Desativo'),
(867, 'Aeriell Pill', NULL, 'ule/dele', 'Masculino', '2002-12-17', 'Viúvo', '54543978217', 'apillo2@utexas.edu', '15768625', 'Ativo, Desativo'),
(868, 'Angela Haukey', NULL, 'ele/dele', 'Outro', '1976-09-29', 'Viúvo', '46092578047', 'ahaukeyo3@php.net', '73133224', 'Ativo, Desativo'),
(869, 'Donni Anglish', 'Donni', 'ula/dula', 'Outro', '1995-08-16', 'Casado', '42065645169', 'danglisho4@samsung.com', '05101024', 'Ativo, Desativo'),
(870, 'Eziechiele Wonham', NULL, 'ela/dela', 'Masculino', '1975-04-19', 'Viúvo', '41010911113', 'ewonhamo5@nsw.gov.au', '49136834', 'Ativo, Desativo'),
(871, 'Staford Mandifield', NULL, 'ula/dula', 'Feminino', '2002-05-13', 'Casado', '62467576643', 'smandifieldo6@canalblog.com', '84485644', 'Ativo, Desativo'),
(872, 'Valry Ponton', NULL, 'ele/dele', 'Feminino', '1975-04-27', 'Viúvo', '91287470909', 'vpontono7@samsung.com', '42633509', 'Ativo, Desativo'),
(873, 'Rorke Podbury', NULL, 'ela/dela', 'Outro', '1986-04-08', 'Solteiro', '99995370566', 'rpodburyo8@diigo.com', '22798484', 'Ativo, Desativo'),
(874, 'Cayla Stannion', NULL, 'ula/dula', 'Prefiriu não informar', '1971-03-14', 'Viúvo', '97842212958', 'cstanniono9@discovery.com', '27351051', 'Ativo, Desativo'),
(875, 'Jen Deme', 'Jen', 'ulu/dulu', 'Outro', '2004-11-05', 'Solteiro', '49628494983', 'jdemeoa@alibaba.com', '67207621', 'Ativo, Desativo'),
(876, 'Luciano Yepiskopov', NULL, 'elu/delu', 'Feminino', '1980-08-11', 'Casado', '81835242751', 'lyepiskopovob@flickr.com', '49828882', 'Ativo, Desativo'),
(877, 'Homerus Coppledike', NULL, 'elu/delu', 'Prefiriu não informar', '1999-08-16', 'Solteiro', '71175912101', 'hcoppledikeoc@google.com.br', '11189541', 'Ativo, Desativo'),
(878, 'Agata Iskov', NULL, 'ela/dela', 'Prefiriu não informar', '1983-05-06', 'Viúvo', '07941210485', 'aiskovod@oracle.com', '40858465', 'Ativo, Desativo'),
(879, 'Sybille Ambrose', 'Sybille', 'ulu/dulu', 'Outro', '1991-02-07', 'Solteiro', '74876882073', 'sambroseoe@earthlink.net', '51854389', 'Ativo, Desativo'),
(880, 'Etan Robley', NULL, 'ula/dula', 'Feminino', '1989-08-05', 'Solteiro', '30885736766', 'erobleyof@dion.ne.jp', '36711907', 'Ativo, Desativo'),
(881, 'Aigneis Jerdon', NULL, 'ula/dula', 'Outro', '1986-08-20', 'Casado', '44775505280', 'ajerdonog@google.com.br', '02716043', 'Ativo, Desativo'),
(882, 'Kania Ranken', NULL, 'ule/dele', 'Prefiriu não informar', '2005-08-11', 'Casado', '21704094169', 'krankenoh@wix.com', '03290406', 'Ativo, Desativo'),
(883, 'Brigit Treasure', NULL, 'ule/dele', 'Prefiriu não informar', '1978-07-25', 'Viúvo', '00072749858', 'btreasureoi@columbia.edu', '88015649', 'Ativo, Desativo'),
(884, 'Erinna Langeren', 'Erinna', 'elu/delu', 'Feminino', '1971-08-08', 'Viúvo', '09153766575', 'elangerenoj@instagram.com', '82995609', 'Ativo, Desativo'),
(885, 'Marlowe Yeskin', 'Marlowe', 'ulu/dulu', 'Outro', '1983-11-01', 'Viúvo', '54710798703', 'myeskinok@state.tx.us', '88546814', 'Ativo, Desativo'),
(886, 'Marybeth Spong', NULL, 'elu/delu', 'Prefiriu não informar', '1985-12-08', 'Solteiro', '20797012803', 'mspongol@woothemes.com', '72394327', 'Ativo, Desativo'),
(887, 'Lorinda Capey', NULL, 'ulu/dulu', 'Outro', '1991-06-02', 'Solteiro', '35910713819', 'lcapeyom@theglobeandmail.com', '52919398', 'Ativo, Desativo'),
(888, 'Rebekah Dadge', NULL, 'ele/dele', 'Outro', '1978-11-29', 'Viúvo', '20697098964', 'rdadgeon@imdb.com', '70907547', 'Ativo, Desativo'),
(889, 'Perri Speek', NULL, 'elu/delu', 'Prefiriu não informar', '1980-09-28', 'Casado', '76126879002', 'pspeekoo@phpbb.com', '40986402', 'Ativo, Desativo'),
(890, 'Isadora Dreher', NULL, 'ula/dula', 'Feminino', '2000-08-29', 'Viúvo', '11256840122', 'idreherop@gnu.org', '05164777', 'Ativo, Desativo'),
(891, 'Myranda Glen', 'Myranda', 'ule/dele', 'Prefiriu não informar', '1999-10-15', 'Casado', '77298866632', 'mglenoq@stanford.edu', '93246664', 'Ativo, Desativo'),
(892, 'Ryon MacMychem', NULL, 'ule/dele', 'Feminino', '1985-10-20', 'Casado', '92272462888', 'rmacmychemor@springer.com', '44921917', 'Ativo, Desativo'),
(893, 'Torrie Burles', NULL, 'ulu/dulu', 'Prefiriu não informar', '1981-10-17', 'Casado', '43023661825', 'tburlesos@creativecommons.org', '20714677', 'Ativo, Desativo'),
(894, 'Tucker Lamblin', NULL, 'elu/delu', 'Prefiriu não informar', '1972-07-28', 'Viúvo', '66098811332', 'tlamblinot@indiegogo.com', '20047795', 'Ativo, Desativo'),
(895, 'Lia Fryett', NULL, 'ula/dula', 'Prefiriu não informar', '1999-07-12', 'Viúvo', '12424162972', 'lfryettou@bigcartel.com', '58790943', 'Ativo, Desativo'),
(896, 'Samuele Schriren', NULL, 'ula/dula', 'Masculino', '2005-07-04', 'Casado', '08792335509', 'sschrirenov@vinaora.com', '14185544', 'Ativo, Desativo'),
(897, 'Evelina Phippin', NULL, 'ule/dele', 'Masculino', '2000-10-26', 'Casado', '27948559333', 'ephippinow@sun.com', '43145183', 'Ativo, Desativo'),
(898, 'Alvie Graddon', NULL, 'ula/dula', 'Masculino', '1989-09-09', 'Solteiro', '69971036391', 'agraddonox@ibm.com', '47975235', 'Ativo, Desativo'),
(899, 'Ximenez Rawdall', NULL, 'ele/dele', 'Prefiriu não informar', '2003-10-01', 'Viúvo', '92127149339', 'xrawdalloy@umich.edu', '96761535', 'Ativo, Desativo'),
(900, 'Delmar Reubbens', NULL, 'elu/delu', 'Outro', '1981-09-05', 'Solteiro', '35084389894', 'dreubbensoz@hibu.com', '60168724', 'Ativo, Desativo'),
(901, 'Shelli Wyer', NULL, 'ule/dele', 'Outro', '1993-07-22', 'Solteiro', '69301199948', 'swyerp0@flickr.com', '63690734', 'Ativo, Desativo'),
(902, 'Gonzales Luppitt', NULL, 'ela/dela', 'Feminino', '1983-08-29', 'Solteiro', '83580789097', 'gluppittp1@abc.net.au', '22433418', 'Ativo, Desativo'),
(903, 'Vernice Canedo', NULL, 'ele/dele', 'Outro', '1995-10-29', 'Viúvo', '69992946453', 'vcanedop2@scientificamerican.com', '48066384', 'Ativo, Desativo'),
(904, 'Moss Meconi', 'Moss', 'ele/dele', 'Outro', '1977-01-17', 'Viúvo', '86027732570', 'mmeconip3@nytimes.com', '26634054', 'Ativo, Desativo'),
(905, 'Lari William', NULL, 'elu/delu', 'Masculino', '1997-09-22', 'Casado', '61738510361', 'lwilliamp4@about.me', '13154087', 'Ativo, Desativo'),
(906, 'Kristine Cotterel', NULL, 'ule/dele', 'Outro', '1989-03-20', 'Solteiro', '73003581851', 'kcotterelp5@de.vu', '88718477', 'Ativo, Desativo'),
(907, 'Drucie Revill', NULL, 'ula/dula', 'Masculino', '1973-08-30', 'Solteiro', '57350951275', 'drevillp6@wiley.com', '36053209', 'Ativo, Desativo'),
(908, 'Blythe Shouler', NULL, 'ele/dele', 'Prefiriu não informar', '1994-05-29', 'Casado', '17314853205', 'bshoulerp7@lulu.com', '16164160', 'Ativo, Desativo'),
(909, 'Liane McCahill', 'Liane', 'ele/dele', 'Outro', '1992-10-31', 'Viúvo', '24844790159', 'lmccahillp8@wordpress.org', '88583030', 'Ativo, Desativo'),
(910, 'Pollyanna Risley', NULL, 'ule/dele', 'Prefiriu não informar', '1992-07-07', 'Solteiro', '47363722310', 'prisleyp9@accuweather.com', '05110699', 'Ativo, Desativo'),
(911, 'Anestassia Maddrah', NULL, 'ele/dele', 'Prefiriu não informar', '1994-07-29', 'Solteiro', '49786448040', 'amaddrahpa@china.com.cn', '68513156', 'Ativo, Desativo'),
(912, 'Reba Hellicar', NULL, 'ele/dele', 'Masculino', '1984-09-29', 'Casado', '65993329882', 'rhellicarpb@vinaora.com', '43862386', 'Ativo, Desativo'),
(913, 'Korney Fantham', NULL, 'ula/dula', 'Outro', '2000-05-04', 'Solteiro', '74313925443', 'kfanthampc@diigo.com', '22192841', 'Ativo, Desativo'),
(914, 'Rivalee Boxe', 'Rivalee', 'ula/dula', 'Prefiriu não informar', '1972-11-17', 'Solteiro', '39125364407', 'rboxepd@mozilla.org', '88673026', 'Ativo, Desativo'),
(915, 'Ddene Llywarch', NULL, 'ele/dele', 'Masculino', '1974-03-13', 'Casado', '65619440716', 'dllywarchpe@salon.com', '30699797', 'Ativo, Desativo'),
(916, 'Chrissy Rizzotto', NULL, 'ulu/dulu', 'Masculino', '1979-11-13', 'Solteiro', '41752949903', 'crizzottopf@icq.com', '76193672', 'Ativo, Desativo'),
(917, 'Kristin Donkersley', NULL, 'elu/delu', 'Feminino', '1976-09-22', 'Solteiro', '66827952118', 'kdonkersleypg@ucsd.edu', '28940423', 'Ativo, Desativo'),
(918, 'Hanna Brogiotti', NULL, 'elu/delu', 'Masculino', '1979-01-23', 'Viúvo', '96779166475', 'hbrogiottiph@odnoklassniki.ru', '64056287', 'Ativo, Desativo'),
(919, 'Stan Cregan', NULL, 'ule/dele', 'Masculino', '1978-05-20', 'Viúvo', '95509745350', 'screganpi@businessinsider.com', '54376344', 'Ativo, Desativo'),
(920, 'Margi Whistlecroft', NULL, 'ule/dele', 'Masculino', '1997-01-07', 'Solteiro', '59186665205', 'mwhistlecroftpj@answers.com', '19322927', 'Ativo, Desativo'),
(921, 'Chariot Garnul', NULL, 'ule/dele', 'Prefiriu não informar', '1977-04-18', 'Viúvo', '19089602615', 'cgarnulpk@ucsd.edu', '68976392', 'Ativo, Desativo'),
(922, 'Carlene Millions', NULL, 'ela/dela', 'Feminino', '1980-01-22', 'Solteiro', '55625192446', 'cmillionspl@rakuten.co.jp', '02429143', 'Ativo, Desativo'),
(923, 'Trenna Macek', NULL, 'ela/dela', 'Masculino', '1980-04-07', 'Solteiro', '85244810984', 'tmacekpm@sphinn.com', '24447398', 'Ativo, Desativo'),
(924, 'Osborn Benito', NULL, 'ulu/dulu', 'Masculino', '2005-09-27', 'Casado', '63427960536', 'obenitopn@mysql.com', '18595146', 'Ativo, Desativo'),
(925, 'Reidar Pisculli', NULL, 'ula/dula', 'Masculino', '1988-04-05', 'Solteiro', '64229313837', 'rpiscullipo@over-blog.com', '71807317', 'Ativo, Desativo'),
(926, 'Dru Paolinelli', NULL, 'elu/delu', 'Outro', '2004-01-23', 'Casado', '73268137569', 'dpaolinellipp@de.vu', '62474956', 'Ativo, Desativo'),
(927, 'Dennet Reeks', NULL, 'ula/dula', 'Outro', '1994-02-02', 'Viúvo', '01860039963', 'dreekspq@bbc.co.uk', '24953702', 'Ativo, Desativo'),
(928, 'Cooper Titmuss', NULL, 'ela/dela', 'Outro', '1999-10-16', 'Casado', '42906029057', 'ctitmusspr@prweb.com', '80559223', 'Ativo, Desativo'),
(929, 'Kimball Afield', NULL, 'ulu/dulu', 'Outro', '2000-07-28', 'Casado', '07622590259', 'kafieldps@ucoz.ru', '44330350', 'Ativo, Desativo'),
(930, 'Ardelis Sheeran', 'Ardelis', 'ule/dele', 'Outro', '1996-01-24', 'Viúvo', '84731729058', 'asheeranpt@constantcontact.com', '77388287', 'Ativo, Desativo'),
(931, 'Ros MacGiolla Pheadair', 'Ros', 'ula/dula', 'Outro', '1977-03-18', 'Viúvo', '58976664013', 'rmacgiollapu@1688.com', '08534228', 'Ativo, Desativo'),
(932, 'Abel Bourget', 'Abel', 'elu/delu', 'Feminino', '1993-01-31', 'Casado', '86521608008', 'abourgetpv@washingtonpost.com', '46714272', 'Ativo, Desativo'),
(933, 'Coral Robottom', 'Coral', 'ele/dele', 'Feminino', '1986-08-14', 'Casado', '31939890881', 'crobottompw@arizona.edu', '49008313', 'Ativo, Desativo'),
(934, 'Wilmette Stanbro', NULL, 'ule/dele', 'Prefiriu não informar', '1987-03-29', 'Solteiro', '16651239146', 'wstanbropx@issuu.com', '96158510', 'Ativo, Desativo'),
(935, 'Yankee McKevany', NULL, 'elu/delu', 'Masculino', '1993-11-11', 'Solteiro', '22043756923', 'ymckevanypy@slate.com', '47796203', 'Ativo, Desativo'),
(936, 'Fayre Correa', NULL, 'ele/dele', 'Prefiriu não informar', '2005-03-15', 'Viúvo', '94143813183', 'fcorreapz@weather.com', '57852370', 'Ativo, Desativo'),
(937, 'Salomi Glassopp', NULL, 'elu/delu', 'Outro', '2006-05-23', 'Viúvo', '36917376802', 'sglassoppq0@diigo.com', '15093959', 'Ativo, Desativo'),
(938, 'Tades Hairyes', NULL, 'ula/dula', 'Outro', '1971-11-06', 'Casado', '33741405201', 'thairyesq1@lulu.com', '68705899', 'Ativo, Desativo'),
(939, 'Brina Catford', 'Brina', 'ula/dula', 'Feminino', '1989-01-29', 'Casado', '37909908956', 'bcatfordq2@sfgate.com', '98596062', 'Ativo, Desativo'),
(940, 'Sydney Washington', NULL, 'ula/dula', 'Prefiriu não informar', '1998-11-05', 'Solteiro', '91840837766', 'swashingtonq3@yahoo.com', '01409770', 'Ativo, Desativo'),
(941, 'Wittie Benzi', NULL, 'ule/dele', 'Outro', '1997-03-04', 'Viúvo', '58139769531', 'wbenziq4@addtoany.com', '85656408', 'Ativo, Desativo'),
(942, 'Nappy Kneesha', NULL, 'ula/dula', 'Prefiriu não informar', '1976-08-25', 'Casado', '48862036693', 'nkneeshaq5@springer.com', '93654483', 'Ativo, Desativo'),
(943, 'Aundrea Korting', NULL, 'elu/delu', 'Prefiriu não informar', '1992-05-11', 'Viúvo', '00659862429', 'akortingq6@ucoz.com', '02338517', 'Ativo, Desativo'),
(944, 'Layney Hatliff', NULL, 'elu/delu', 'Outro', '1971-11-15', 'Casado', '36811550562', 'lhatliffq7@xing.com', '00141976', 'Ativo, Desativo'),
(945, 'Bard Jaggard', NULL, 'ele/dele', 'Prefiriu não informar', '1998-06-09', 'Viúvo', '43987440045', 'bjaggardq8@utexas.edu', '20372317', 'Ativo, Desativo'),
(946, 'Abbe Straneo', NULL, 'ele/dele', 'Masculino', '1972-11-12', 'Viúvo', '16976788998', 'astraneoq9@imageshack.us', '08761640', 'Ativo, Desativo'),
(947, 'Alric Shervil', NULL, 'ula/dula', 'Masculino', '1980-04-18', 'Solteiro', '04237356536', 'ashervilqa@tiny.cc', '57563150', 'Ativo, Desativo'),
(948, 'Delano Tutill', NULL, 'ele/dele', 'Outro', '1986-12-06', 'Casado', '13635908190', 'dtutillqb@tinypic.com', '87586905', 'Ativo, Desativo'),
(949, 'Virgilio Keveren', NULL, 'elu/delu', 'Feminino', '1999-10-04', 'Solteiro', '30963947345', 'vkeverenqc@rediff.com', '41685246', 'Ativo, Desativo'),
(950, 'Jacinta Pina', NULL, 'ulu/dulu', 'Feminino', '1981-02-14', 'Casado', '75851520681', 'jpinaqd@histats.com', '96587476', 'Ativo, Desativo'),
(951, 'Josy Gavrieli', NULL, 'ule/dele', 'Prefiriu não informar', '1997-06-11', 'Solteiro', '96299331320', 'jgavrieliqe@cam.ac.uk', '66472238', 'Ativo, Desativo'),
(952, 'Kenyon Faers', NULL, 'elu/delu', 'Prefiriu não informar', '1976-11-27', 'Casado', '79728472386', 'kfaersqf@last.fm', '14328202', 'Ativo, Desativo'),
(953, 'Cristobal Grindall', NULL, 'ula/dula', 'Masculino', '1980-07-13', 'Solteiro', '61456274213', 'cgrindallqg@wikispaces.com', '60425050', 'Ativo, Desativo'),
(954, 'Zsa zsa Knappitt', NULL, 'ule/dele', 'Masculino', '1993-01-02', 'Casado', '49072449026', 'zzsaqh@jalbum.net', '06354558', 'Ativo, Desativo'),
(955, 'Jackie Penwarden', 'Jackie', 'ele/dele', 'Prefiriu não informar', '1975-02-13', 'Casado', '98041704411', 'jpenwardenqi@spotify.com', '43585176', 'Ativo, Desativo'),
(956, 'Florri Reddy', NULL, 'ela/dela', 'Feminino', '1979-08-12', 'Casado', '56296838621', 'freddyqj@msn.com', '04977611', 'Ativo, Desativo'),
(957, 'Klara Curgenven', 'Klara', 'ele/dele', 'Outro', '1994-03-04', 'Solteiro', '72390375476', 'kcurgenvenqk@webmd.com', '42137436', 'Ativo, Desativo'),
(958, 'Vonnie West', NULL, 'elu/delu', 'Masculino', '1971-05-31', 'Solteiro', '20770118256', 'vwestql@mapy.cz', '80322588', 'Ativo, Desativo'),
(959, 'Samuel Murrhardt', NULL, 'elu/delu', 'Feminino', '1995-03-22', 'Casado', '56899565569', 'smurrhardtqm@xrea.com', '39558316', 'Ativo, Desativo'),
(960, 'Gaile Elener', NULL, 'ela/dela', 'Feminino', '1985-05-22', 'Solteiro', '96900785032', 'gelenerqn@hibu.com', '45778976', 'Ativo, Desativo'),
(961, 'Mortie Heild', 'Mortie', 'ula/dula', 'Prefiriu não informar', '1977-08-20', 'Casado', '97834242654', 'mheildqo@cmu.edu', '26889963', 'Ativo, Desativo'),
(962, 'Morganica Cloney', NULL, 'elu/delu', 'Prefiriu não informar', '1986-10-05', 'Solteiro', '79474246007', 'mcloneyqp@blog.com', '17706221', 'Ativo, Desativo'),
(963, 'Carma Goodwyn', NULL, 'ule/dele', 'Masculino', '1982-02-14', 'Casado', '53235780930', 'cgoodwynqq@miibeian.gov.cn', '84367441', 'Ativo, Desativo'),
(964, 'Claudianus Schneidar', NULL, 'ule/dele', 'Masculino', '1974-03-21', 'Casado', '10135832190', 'cschneidarqr@nature.com', '94279902', 'Ativo, Desativo'),
(965, 'Sheridan Lamb-shine', NULL, 'ula/dula', 'Feminino', '1980-10-23', 'Casado', '14705483565', 'slambshineqs@huffingtonpost.com', '65619699', 'Ativo, Desativo'),
(966, 'Alexi Mcimmie', NULL, 'ele/dele', 'Outro', '2000-02-11', 'Solteiro', '79355488574', 'amcimmieqt@istockphoto.com', '40346772', 'Ativo, Desativo'),
(967, 'Margaretha Smitton', NULL, 'elu/delu', 'Outro', '2006-01-16', 'Solteiro', '03214704913', 'msmittonqu@i2i.jp', '11122759', 'Ativo, Desativo'),
(968, 'Gui Aslett', NULL, 'ela/dela', 'Prefiriu não informar', '2004-10-31', 'Solteiro', '14413707067', 'gaslettqv@state.tx.us', '48920955', 'Ativo, Desativo'),
(969, 'Lexi Chasemore', NULL, 'ule/dele', 'Prefiriu não informar', '1984-04-13', 'Casado', '22428903102', 'lchasemoreqw@webeden.co.uk', '10168662', 'Ativo, Desativo'),
(970, 'Gerianne Damerell', NULL, 'ulu/dulu', 'Masculino', '1997-01-08', 'Casado', '08603463482', 'gdamerellqx@alibaba.com', '56444133', 'Ativo, Desativo'),
(971, 'Alano Beaudry', 'Alano', 'ula/dula', 'Masculino', '1970-11-07', 'Viúvo', '71011265107', 'abeaudryqy@seesaa.net', '16253329', 'Ativo, Desativo'),
(972, 'Jethro Trett', 'Jethro', 'ulu/dulu', 'Prefiriu não informar', '1983-03-11', 'Solteiro', '94877854876', 'jtrettqz@wp.com', '64795486', 'Ativo, Desativo'),
(973, 'Leigha Giorgiutti', NULL, 'ule/dele', 'Masculino', '1978-07-11', 'Casado', '63737846936', 'lgiorgiuttir0@instagram.com', '04249289', 'Ativo, Desativo'),
(974, 'Christin Buckell', NULL, 'ule/dele', 'Outro', '1985-02-03', 'Casado', '74211708831', 'cbuckellr1@over-blog.com', '07238693', 'Ativo, Desativo'),
(975, 'Lucita Guest', NULL, 'ule/dele', 'Outro', '1983-03-21', 'Solteiro', '95736127299', 'lguestr2@infoseek.co.jp', '99437504', 'Ativo, Desativo'),
(976, 'Sheelagh Trymme', NULL, 'ele/dele', 'Prefiriu não informar', '1974-05-10', 'Solteiro', '03094476725', 'strymmer3@tinypic.com', '29435273', 'Ativo, Desativo'),
(977, 'Darrell Methingam', NULL, 'elu/delu', 'Masculino', '1972-01-30', 'Casado', '89168366666', 'dmethingamr4@yolasite.com', '09974912', 'Ativo, Desativo'),
(978, 'Jere Braven', 'Jere', 'ule/dele', 'Prefiriu não informar', '1974-11-07', 'Casado', '95092829418', 'jbravenr5@seattletimes.com', '48257485', 'Ativo, Desativo');
INSERT INTO `cliente_01` (`A01_id`, `A01_nome`, `A01_nomeSocial`, `AO1_pronome`, `A01_genero`, `A01_dataNasc`, `A01_estadoCivil`, `A01_cpf`, `A01_email`, `A01_cepOriginal`, `A01_estado`) VALUES
(979, 'Coop Rawcliffe', NULL, 'ele/dele', 'Outro', '1973-04-18', 'Solteiro', '72762612746', 'crawcliffer6@mayoclinic.com', '34563390', 'Ativo, Desativo'),
(980, 'Bertie Splaven', NULL, 'elu/delu', 'Outro', '1988-06-08', 'Solteiro', '45647746608', 'bsplavenr7@privacy.gov.au', '52687684', 'Ativo, Desativo'),
(981, 'Ailina Kruse', NULL, 'ule/dele', 'Outro', '2004-09-26', 'Viúvo', '24913063594', 'akruser8@cbslocal.com', '63754397', 'Ativo, Desativo'),
(982, 'Petunia Greetham', 'Petunia', 'ele/dele', 'Masculino', '2006-07-24', 'Viúvo', '27298405671', 'pgreethamr9@chron.com', '49099770', 'Ativo, Desativo'),
(983, 'Reed Wilse', NULL, 'ula/dula', 'Feminino', '1992-08-01', 'Casado', '35316813259', 'rwilsera@yahoo.co.jp', '66324128', 'Ativo, Desativo'),
(984, 'Loree Askin', NULL, 'ulu/dulu', 'Feminino', '1984-07-18', 'Solteiro', '84074764810', 'laskinrb@google.nl', '47204983', 'Ativo, Desativo'),
(985, 'Celestyna Meadows', NULL, 'ele/dele', 'Outro', '2006-05-24', 'Viúvo', '50453353834', 'cmeadowsrc@weebly.com', '93334405', 'Ativo, Desativo'),
(986, 'Arlette Brackstone', NULL, 'ele/dele', 'Prefiriu não informar', '2005-03-10', 'Casado', '13400267546', 'abrackstonerd@auda.org.au', '75344496', 'Ativo, Desativo'),
(987, 'Dix O\'Ruane', NULL, 'ela/dela', 'Outro', '1995-09-19', 'Casado', '27679999381', 'doruanere@clickbank.net', '15102779', 'Ativo, Desativo'),
(988, 'Kahaleel Learned', 'Kahaleel', 'ela/dela', 'Prefiriu não informar', '1972-06-11', 'Viúvo', '65963295954', 'klearnedrf@pinterest.com', '19456022', 'Ativo, Desativo'),
(989, 'Ada Heap', 'Ada', 'ulu/dulu', 'Prefiriu não informar', '1992-04-18', 'Solteiro', '76322513460', 'aheaprg@whitehouse.gov', '22914539', 'Ativo, Desativo'),
(990, 'Lotte Proby', NULL, 'ela/dela', 'Outro', '1984-05-10', 'Solteiro', '54698867340', 'lprobyrh@ask.com', '73956749', 'Ativo, Desativo'),
(991, 'Saudra Castaignet', NULL, 'elu/delu', 'Outro', '1987-02-24', 'Viúvo', '65511344055', 'scastaignetri@bbb.org', '49145167', 'Ativo, Desativo'),
(992, 'Ruben Negus', 'Ruben', 'ule/dele', 'Prefiriu não informar', '2004-01-17', 'Solteiro', '85562428881', 'rnegusrj@freewebs.com', '86625575', 'Ativo, Desativo'),
(993, 'Raeann Lednor', NULL, 'ela/dela', 'Masculino', '1997-11-22', 'Viúvo', '71154509190', 'rlednorrk@angelfire.com', '84652846', 'Ativo, Desativo'),
(994, 'Veriee D\'Acth', NULL, 'ulu/dulu', 'Prefiriu não informar', '2005-08-12', 'Viúvo', '83193255884', 'vdacthrl@facebook.com', '68364660', 'Ativo, Desativo'),
(995, 'Blanch Owthwaite', NULL, 'ula/dula', 'Feminino', '1988-01-24', 'Casado', '49183285621', 'bowthwaiterm@washington.edu', '08446298', 'Ativo, Desativo'),
(996, 'Georgeta Jenkyn', NULL, 'ula/dula', 'Prefiriu não informar', '2006-03-01', 'Solteiro', '41412618062', 'gjenkynrn@reuters.com', '27328578', 'Ativo, Desativo'),
(997, 'Corrinne Grewe', NULL, 'ele/dele', 'Outro', '1972-10-18', 'Solteiro', '18630987841', 'cgrewero@booking.com', '14778486', 'Ativo, Desativo'),
(998, 'Tammy Trappe', NULL, 'ele/dele', 'Feminino', '1978-06-04', 'Casado', '00204170291', 'ttrapperp@cocolog-nifty.com', '53897526', 'Ativo, Desativo'),
(999, 'Brnaby Foxton', NULL, 'ule/dele', 'Masculino', '1990-09-17', 'Solteiro', '93496430420', 'bfoxtonrq@desdev.cn', '39748066', 'Ativo, Desativo'),
(1000, 'Hyacinthie Anselmi', NULL, 'ela/dela', 'Feminino', '1974-01-13', 'Viúvo', '90727366611', 'hanselmirr@go.com', '89661938', 'Ativo, Desativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comissao_13`
--

CREATE TABLE `comissao_13` (
  `A13_id` int NOT NULL,
  `A13_porCentagem` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `comissao_13`
--

INSERT INTO `comissao_13` (`A13_id`, `A13_porCentagem`) VALUES
(1, 5),
(2, 7.5),
(3, 10),
(4, 12.5),
(5, 15),
(6, 20),
(7, 25),
(8, 30),
(9, 35),
(10, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dispositivo_acesso_21`
--

CREATE TABLE `dispositivo_acesso_21` (
  `A21_id` int NOT NULL,
  `A21_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `dispositivo_acesso_21`
--

INSERT INTO `dispositivo_acesso_21` (`A21_id`, `A21_categoria`) VALUES
(1, 'Computador'),
(2, 'Tablet'),
(3, 'Celular'),
(4, 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_06`
--

CREATE TABLE `endereco_06` (
  `A06_id` int NOT NULL,
  `A10_id` int DEFAULT NULL,
  `A16_id` int DEFAULT NULL,
  `A08_id` int DEFAULT NULL,
  `A20_id` int DEFAULT NULL,
  `A02_id` int DEFAULT NULL,
  `A01_id` int DEFAULT NULL,
  `A06_CEP` varchar(11) DEFAULT NULL,
  `A06_numero` int DEFAULT NULL,
  `A06_complemento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_emergencial_32`
--

CREATE TABLE `endereco_emergencial_32` (
  `A32_id` int NOT NULL,
  `A02_id` int NOT NULL,
  `A01_id` int NOT NULL,
  `A32_bairro` varchar(255) NOT NULL,
  `A32_rua` varchar(255) DEFAULT NULL,
  `A32_numero` int DEFAULT NULL,
  `A32_complemento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque_05`
--

CREATE TABLE `estoque_05` (
  `A05_id` int NOT NULL,
  `A04_id` int NOT NULL,
  `A05_quantidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filial_20`
--

CREATE TABLE `filial_20` (
  `A20_id` int NOT NULL,
  `A20_nome` varchar(255) NOT NULL,
  `A20_gerente` varchar(255) NOT NULL,
  `A20_email` varchar(255) DEFAULT NULL,
  `A20_estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `filial_20`
--

INSERT INTO `filial_20` (`A20_id`, `A20_nome`, `A20_gerente`, `A20_email`, `A20_estado`) VALUES
(1, 'Roth', 'Loria Swallwell', 'lswallwell0@noaa.gov', 'Ativo'),
(2, 'Meadow Valley', 'Ariella Gummow', 'agummow1@bbb.org', 'Ativo'),
(3, 'American', 'Yul Lanchbury', 'ylanchbury2@unesco.org', 'Desativo'),
(4, 'Vahlen', 'Meta Lamont', 'mlamont3@istockphoto.com', 'Desativo'),
(5, 'Debra', 'Vincent Tomas', 'vtomas4@instagram.com', 'Ativo'),
(6, 'Arizona', 'Magdalena Hagart', 'mhagart5@mediafire.com', 'Desativo'),
(7, 'Kinsman', 'Fransisco Pursehouse', 'fpursehouse6@usgs.gov', 'Ativo'),
(8, 'Vera', 'Rustie McGillreich', 'rmcgillreich7@123-reg.co.uk', 'Desativo'),
(9, 'Menomonie', 'Guido Cassley', 'gcassley8@berkeley.edu', 'Ativo'),
(10, 'Monterey', 'Tana Race', 'trace9@vk.com', 'Ativo'),
(11, 'Surrey', 'Helaine Noddings', 'hnoddingsa@hubpages.com', 'Desativo'),
(12, 'Esch', 'Lorette Tatlock', 'ltatlockb@cmu.edu', 'Desativo'),
(13, 'Vidon', 'Birdie Blofield', 'bblofieldc@homestead.com', 'Ativo'),
(14, 'Granby', 'Cristabel Mearns', 'cmearnsd@spiegel.de', 'Ativo'),
(15, 'Cody', 'Jeanna Risborough', 'jrisboroughe@google.nl', 'Ativo'),
(16, 'Ramsey', 'Verina Alldred', 'valldredf@hp.com', 'Desativo'),
(17, 'Reinke', 'Gregory Barrand', 'gbarrandg@mozilla.com', 'Ativo'),
(18, 'Tennyson', 'Eleonore De Goey', 'edeh@free.fr', 'Ativo'),
(19, 'Troy', 'Bertie Favela', 'bfavelai@loc.gov', 'Desativo'),
(20, 'Schmedeman', 'Frasco Sandison', 'fsandisonj@purevolume.com', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento_17`
--

CREATE TABLE `forma_pagamento_17` (
  `A17_id` int NOT NULL,
  `A17_descricao` varchar(255) NOT NULL,
  `A17_nome` varchar(255) NOT NULL,
  `A17_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `forma_pagamento_17`
--

INSERT INTO `forma_pagamento_17` (`A17_id`, `A17_descricao`, `A17_nome`, `A17_estado`) VALUES
(1, 'Moeda', 'Célula física', 'Desativo'),
(2, 'Crédito', 'Cartão de crédito', 'Ativo'),
(3, 'Cheque', 'Categoria especia', 'Desativo'),
(4, 'Outros', 'Categoria especia', 'Ativo'),
(5, 'Pix', 'Transferência Bancária', 'Desativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor_10`
--

CREATE TABLE `fornecedor_10` (
  `A10_id` int NOT NULL,
  `A10_nome` varchar(255) NOT NULL,
  `A10_cnpj` varchar(255) NOT NULL,
  `A10_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fornecedor_10`
--

INSERT INTO `fornecedor_10` (`A10_id`, `A10_nome`, `A10_cnpj`, `A10_estado`) VALUES
(1, 'Ullrich-Hahn', '91948010627134', 'Ativo'),
(2, 'Bednar, Pouros and Kreiger', '81061581442844', 'Desativo'),
(3, 'Leuschke-Hegmann', '22139024931990', 'Desativo'),
(4, 'Moen and Sons', '10665069722229', 'Desativo'),
(5, 'Shanahan-Pfeffer', '19932954523461', 'Desativo'),
(6, 'Bergnaum and Sons', '60169862331881', 'Ativo'),
(7, 'Stanton, Monahan and Swift', '62436216039210', 'Ativo'),
(8, 'Konopelski-Reilly', '29142940887534', 'Ativo'),
(9, 'Shields-Ebert', '78529222938950', 'Desativo'),
(10, 'Graham-Strosin', '28102234228596', 'Desativo'),
(11, 'Marquardt LLC', '89167369102785', 'Ativo'),
(12, 'Sawayn-Dickens', '90673647424156', 'Desativo'),
(13, 'Gerlach and Sons', '51259835953114', 'Desativo'),
(14, 'Keebler LLC', '87713333168711', 'Ativo'),
(15, 'Leuschke, Johnston and Prosacco', '83987403457929', 'Ativo'),
(16, 'Kunde-Maggio', '39825628416730', 'Ativo'),
(17, 'O\'Reilly LLC', '36200016201651', 'Ativo'),
(18, 'Tromp-Lindgren', '83604853190371', 'Ativo'),
(19, 'Harvey-Padberg', '47085673066194', 'Ativo'),
(20, 'Paucek, Mills and Fahey', '21284964565033', 'Desativo'),
(21, 'Krajcik-Wyman', '52639764596798', 'Ativo'),
(22, 'Flatley, Schamberger and Stehr', '56891769726918', 'Ativo'),
(23, 'Dickens, Moen and Schimmel', '28032005542834', 'Desativo'),
(24, 'Kuvalis, Kovacek and Kling', '20250374073492', 'Desativo'),
(25, 'Koss Inc', '34703501086654', 'Ativo'),
(26, 'Carroll, Bernhard and Crona', '47203244125304', 'Desativo'),
(27, 'Ankunding, Crooks and Graham', '38972699898897', 'Desativo'),
(28, 'Dicki Group', '38370974395982', 'Ativo'),
(29, 'Donnelly, Larkin and Kiehn', '97205188419263', 'Ativo'),
(30, 'Nitzsche-Hahn', '58698115527276', 'Ativo'),
(31, 'Schinner-Volkman', '99586043161175', 'Desativo'),
(32, 'Wisozk-Hahn', '89597550472949', 'Ativo'),
(33, 'Schowalter-Ortiz', '82040274329973', 'Ativo'),
(34, 'Ward-Schuster', '40060696967325', 'Ativo'),
(35, 'Green and Sons', '67303779113505', 'Desativo'),
(36, 'Carter Group', '60368993973192', 'Desativo'),
(37, 'Wiza and Sons', '18365712133898', 'Ativo'),
(38, 'Goyette LLC', '61078202065246', 'Desativo'),
(39, 'Huel, Beatty and Schuster', '61004227955046', 'Desativo'),
(40, 'Kovacek, Kunze and Balistreri', '68948427178803', 'Ativo'),
(41, 'Huels LLC', '67441223037604', 'Ativo'),
(42, 'Wunsch Inc', '17008527125081', 'Desativo'),
(43, 'Gutmann, Swaniawski and Labadie', '62376178937382', 'Desativo'),
(44, 'Spencer-Cummings', '62719591315353', 'Ativo'),
(45, 'Dietrich, Kemmer and Kuvalis', '36317963437067', 'Desativo'),
(46, 'Anderson and Sons', '10039754260951', 'Ativo'),
(47, 'Padberg Inc', '38528086447371', 'Desativo'),
(48, 'Greenfelder-Marquardt', '90442390299374', 'Ativo'),
(49, 'Stark-Nolan', '21502492481613', 'Ativo'),
(50, 'Kozey, Runolfsson and Carter', '98482700826343', 'Ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_29`
--

CREATE TABLE `funcionario_29` (
  `A29_id` int NOT NULL,
  `A30_id` int NOT NULL,
  `A29_nome` varchar(255) NOT NULL,
  `A29_nomeSocial` varchar(255) NOT NULL,
  `A29_cpf` varchar(255) NOT NULL,
  `A29_pcd` tinyint(1) NOT NULL,
  `A29_etinia` varchar(255) DEFAULT NULL,
  `A29_genero` varchar(255) DEFAULT NULL,
  `A29_identidade` varchar(255) DEFAULT NULL,
  `A29_pronome` varchar(255) DEFAULT NULL,
  `A29_dataNasc` date NOT NULL,
  `A29_dataInicioContrato` date NOT NULL,
  `A29_dataFinalContrato` date DEFAULT NULL,
  `A29_salario` int NOT NULL,
  `A29_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_pedido_22`
--

CREATE TABLE `item_pedido_22` (
  `A03_id` int NOT NULL,
  `A04_id` int NOT NULL,
  `A22_quantidade` int NOT NULL,
  `A22_valorPago` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lote_produto_23`
--

CREATE TABLE `lote_produto_23` (
  `A23_id` int NOT NULL,
  `A10_id` int NOT NULL,
  `A04_id` int NOT NULL,
  `A12_id` int NOT NULL,
  `A23_quantidade` int NOT NULL,
  `A23_valorUni` double NOT NULL,
  `A23_data` datetime NOT NULL,
  `A23_dataValidade` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_fiscal_12`
--

CREATE TABLE `nota_fiscal_12` (
  `A12_id` int NOT NULL,
  `A12_numero` int NOT NULL,
  `A12_dataEmissao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `nota_fiscal_12`
--

INSERT INTO `nota_fiscal_12` (`A12_id`, `A12_numero`, `A12_dataEmissao`) VALUES
(1, 54173, '2014-06-21 00:00:00'),
(2, 67578, '2014-11-28 00:00:00'),
(3, 65251, '2016-11-14 00:00:00'),
(4, 52347, '2013-07-27 00:00:00'),
(5, 50807, '2010-10-12 00:00:00'),
(6, 57544, '2022-03-05 00:00:00'),
(7, 56124, '2014-08-13 00:00:00'),
(8, 28674, '2021-03-22 00:00:00'),
(9, 95695, '2016-04-18 00:00:00'),
(10, 37616, '2014-09-28 00:00:00'),
(11, 25659, '2013-08-12 00:00:00'),
(12, 44793, '2014-12-05 00:00:00'),
(13, 51289, '2023-11-29 00:00:00'),
(14, 45136, '2018-06-17 00:00:00'),
(15, 21367, '2023-06-08 00:00:00'),
(16, 30877, '2012-12-17 00:00:00'),
(17, 74123, '2021-05-31 00:00:00'),
(18, 89089, '2015-07-27 00:00:00'),
(19, 14557, '2022-07-17 00:00:00'),
(20, 48084, '2013-12-01 00:00:00'),
(21, 75699, '2020-02-24 00:00:00'),
(22, 62392, '2021-07-15 00:00:00'),
(23, 23662, '2017-02-14 00:00:00'),
(24, 90250, '2015-12-14 00:00:00'),
(25, 16789, '2023-09-07 00:00:00'),
(26, 79553, '2018-06-13 00:00:00'),
(27, 58390, '2021-05-03 00:00:00'),
(28, 66465, '2021-11-20 00:00:00'),
(29, 90762, '2023-08-05 00:00:00'),
(30, 27966, '2021-01-11 00:00:00'),
(31, 59953, '2016-10-07 00:00:00'),
(32, 16422, '2023-12-12 00:00:00'),
(33, 28649, '2019-03-27 00:00:00'),
(34, 70652, '2017-01-05 00:00:00'),
(35, 86782, '2011-10-08 00:00:00'),
(36, 84455, '2010-01-31 00:00:00'),
(37, 35749, '2022-11-17 00:00:00'),
(38, 26086, '2013-06-08 00:00:00'),
(39, 62216, '2011-04-25 00:00:00'),
(40, 26877, '2018-02-02 00:00:00'),
(41, 17921, '2017-01-16 00:00:00'),
(42, 65556, '2011-06-09 00:00:00'),
(43, 60521, '2013-12-15 00:00:00'),
(44, 98388, '2011-10-24 00:00:00'),
(45, 36600, '2017-11-03 00:00:00'),
(46, 15605, '2017-04-28 00:00:00'),
(47, 49211, '2013-01-29 00:00:00'),
(48, 71413, '2010-08-23 00:00:00'),
(49, 30349, '2019-02-10 00:00:00'),
(50, 38045, '2011-02-14 00:00:00'),
(51, 76912, '2023-11-07 00:00:00'),
(52, 25045, '2018-12-02 00:00:00'),
(53, 85731, '2018-12-29 00:00:00'),
(54, 91491, '2011-11-27 00:00:00'),
(55, 56548, '2017-11-29 00:00:00'),
(56, 13293, '2018-09-05 00:00:00'),
(57, 65075, '2016-09-25 00:00:00'),
(58, 26059, '2021-08-16 00:00:00'),
(59, 81230, '2016-01-08 00:00:00'),
(60, 50052, '2015-04-16 00:00:00'),
(61, 43832, '2019-03-15 00:00:00'),
(62, 18982, '2013-11-22 00:00:00'),
(63, 53646, '2018-02-12 00:00:00'),
(64, 66211, '2019-02-17 00:00:00'),
(65, 42138, '2020-05-20 00:00:00'),
(66, 80137, '2015-06-07 00:00:00'),
(67, 18552, '2016-01-17 00:00:00'),
(68, 31827, '2014-09-30 00:00:00'),
(69, 42614, '2022-06-23 00:00:00'),
(70, 89981, '2013-04-30 00:00:00'),
(71, 82951, '2017-04-27 00:00:00'),
(72, 50755, '2011-08-13 00:00:00'),
(73, 29576, '2014-06-13 00:00:00'),
(74, 61810, '2010-01-14 00:00:00'),
(75, 43546, '2022-09-01 00:00:00'),
(76, 26589, '2013-05-17 00:00:00'),
(77, 93453, '2019-12-11 00:00:00'),
(78, 38731, '2019-03-04 00:00:00'),
(79, 74033, '2023-11-02 00:00:00'),
(80, 41151, '2010-11-16 00:00:00'),
(81, 88585, '2011-11-22 00:00:00'),
(82, 93466, '2015-04-19 00:00:00'),
(83, 80510, '2022-05-12 00:00:00'),
(84, 65437, '2023-04-07 00:00:00'),
(85, 27252, '2013-09-08 00:00:00'),
(86, 71461, '2022-09-09 00:00:00'),
(87, 55286, '2015-09-14 00:00:00'),
(88, 70760, '2019-04-17 00:00:00'),
(89, 41548, '2016-10-11 00:00:00'),
(90, 37930, '2013-12-09 00:00:00'),
(91, 45236, '2023-06-07 00:00:00'),
(92, 24267, '2012-09-22 00:00:00'),
(93, 54707, '2013-09-01 00:00:00'),
(94, 97941, '2015-08-18 00:00:00'),
(95, 55599, '2011-04-13 00:00:00'),
(96, 36089, '2013-02-18 00:00:00'),
(97, 68523, '2010-10-31 00:00:00'),
(98, 56510, '2014-01-25 00:00:00'),
(99, 29783, '2017-05-16 00:00:00'),
(100, 86944, '2018-04-19 00:00:00'),
(101, 86976, '2018-03-20 00:00:00'),
(102, 88649, '2017-05-22 00:00:00'),
(103, 66213, '2017-10-17 00:00:00'),
(104, 23914, '2013-05-12 00:00:00'),
(105, 68400, '2012-01-09 00:00:00'),
(106, 10655, '2018-03-28 00:00:00'),
(107, 14872, '2010-01-30 00:00:00'),
(108, 22629, '2014-03-22 00:00:00'),
(109, 78288, '2012-01-04 00:00:00'),
(110, 76231, '2019-04-23 00:00:00'),
(111, 38491, '2017-01-16 00:00:00'),
(112, 21043, '2019-12-08 00:00:00'),
(113, 19245, '2019-09-19 00:00:00'),
(114, 25124, '2010-06-01 00:00:00'),
(115, 75143, '2021-07-25 00:00:00'),
(116, 55931, '2015-10-27 00:00:00'),
(117, 72870, '2013-09-19 00:00:00'),
(118, 55947, '2015-07-05 00:00:00'),
(119, 29640, '2013-12-27 00:00:00'),
(120, 66743, '2012-04-05 00:00:00'),
(121, 75258, '2015-04-23 00:00:00'),
(122, 30416, '2020-04-08 00:00:00'),
(123, 97658, '2019-09-22 00:00:00'),
(124, 77986, '2018-11-24 00:00:00'),
(125, 87668, '2014-01-11 00:00:00'),
(126, 88804, '2012-06-22 00:00:00'),
(127, 60891, '2015-08-30 00:00:00'),
(128, 23288, '2010-10-21 00:00:00'),
(129, 59938, '2018-09-02 00:00:00'),
(130, 63824, '2016-10-30 00:00:00'),
(131, 10269, '2019-04-07 00:00:00'),
(132, 51848, '2018-03-27 00:00:00'),
(133, 21688, '2022-08-13 00:00:00'),
(134, 14636, '2014-03-01 00:00:00'),
(135, 31408, '2022-09-24 00:00:00'),
(136, 45529, '2012-06-29 00:00:00'),
(137, 33523, '2014-12-02 00:00:00'),
(138, 38556, '2023-04-17 00:00:00'),
(139, 30145, '2011-11-07 00:00:00'),
(140, 68498, '2018-07-30 00:00:00'),
(141, 14548, '2019-03-15 00:00:00'),
(142, 97518, '2011-07-15 00:00:00'),
(143, 72904, '2019-12-25 00:00:00'),
(144, 56687, '2016-04-10 00:00:00'),
(145, 29230, '2016-08-27 00:00:00'),
(146, 18002, '2012-02-23 00:00:00'),
(147, 66011, '2010-09-11 00:00:00'),
(148, 65198, '2010-05-24 00:00:00'),
(149, 57902, '2023-04-28 00:00:00'),
(150, 67417, '2019-01-06 00:00:00'),
(151, 58508, '2013-05-26 00:00:00'),
(152, 56982, '2019-05-19 00:00:00'),
(153, 73328, '2011-11-01 00:00:00'),
(154, 65115, '2012-01-03 00:00:00'),
(155, 70894, '2011-01-02 00:00:00'),
(156, 57471, '2010-10-09 00:00:00'),
(157, 72195, '2018-05-21 00:00:00'),
(158, 25188, '2023-01-26 00:00:00'),
(159, 40814, '2018-08-03 00:00:00'),
(160, 87899, '2020-03-09 00:00:00'),
(161, 42976, '2012-08-04 00:00:00'),
(162, 30862, '2014-02-26 00:00:00'),
(163, 68491, '2013-08-02 00:00:00'),
(164, 40154, '2015-08-08 00:00:00'),
(165, 96328, '2017-07-17 00:00:00'),
(166, 31702, '2015-01-04 00:00:00'),
(167, 13553, '2022-07-16 00:00:00'),
(168, 11840, '2010-04-01 00:00:00'),
(169, 39700, '2011-01-25 00:00:00'),
(170, 92227, '2012-03-21 00:00:00'),
(171, 26891, '2014-06-30 00:00:00'),
(172, 69169, '2013-12-24 00:00:00'),
(173, 98590, '2019-11-29 00:00:00'),
(174, 94271, '2020-11-03 00:00:00'),
(175, 42468, '2018-07-23 00:00:00'),
(176, 66396, '2012-02-22 00:00:00'),
(177, 76244, '2016-09-11 00:00:00'),
(178, 83131, '2021-12-24 00:00:00'),
(179, 69784, '2013-02-26 00:00:00'),
(180, 21484, '2014-09-26 00:00:00'),
(181, 33953, '2012-05-31 00:00:00'),
(182, 93214, '2016-11-09 00:00:00'),
(183, 65443, '2020-06-27 00:00:00'),
(184, 97466, '2011-03-30 00:00:00'),
(185, 45254, '2021-06-07 00:00:00'),
(186, 10568, '2017-08-16 00:00:00'),
(187, 77879, '2019-12-23 00:00:00'),
(188, 12256, '2019-10-12 00:00:00'),
(189, 62709, '2017-01-07 00:00:00'),
(190, 36976, '2019-07-25 00:00:00'),
(191, 91571, '2023-06-17 00:00:00'),
(192, 14769, '2010-12-04 00:00:00'),
(193, 73970, '2018-03-03 00:00:00'),
(194, 52173, '2016-04-20 00:00:00'),
(195, 98098, '2019-04-10 00:00:00'),
(196, 41112, '2016-12-24 00:00:00'),
(197, 80695, '2014-03-03 00:00:00'),
(198, 53424, '2019-06-03 00:00:00'),
(199, 24043, '2010-10-10 00:00:00'),
(200, 83490, '2019-11-22 00:00:00'),
(201, 94990, '2015-04-26 00:00:00'),
(202, 66901, '2010-10-06 00:00:00'),
(203, 70162, '2011-07-24 00:00:00'),
(204, 42519, '2017-06-25 00:00:00'),
(205, 75765, '2023-06-30 00:00:00'),
(206, 51067, '2022-12-11 00:00:00'),
(207, 19482, '2020-06-18 00:00:00'),
(208, 71841, '2015-08-22 00:00:00'),
(209, 51962, '2013-11-27 00:00:00'),
(210, 50592, '2015-10-12 00:00:00'),
(211, 23108, '2014-07-29 00:00:00'),
(212, 25905, '2011-11-10 00:00:00'),
(213, 55599, '2020-03-17 00:00:00'),
(214, 27666, '2019-09-21 00:00:00'),
(215, 44460, '2018-11-21 00:00:00'),
(216, 56487, '2012-08-11 00:00:00'),
(217, 53852, '2017-06-29 00:00:00'),
(218, 14398, '2012-02-16 00:00:00'),
(219, 42437, '2021-09-01 00:00:00'),
(220, 17715, '2023-04-01 00:00:00'),
(221, 56535, '2018-01-13 00:00:00'),
(222, 24732, '2019-09-10 00:00:00'),
(223, 79032, '2011-11-22 00:00:00'),
(224, 69793, '2012-06-16 00:00:00'),
(225, 79610, '2010-04-28 00:00:00'),
(226, 35948, '2013-11-08 00:00:00'),
(227, 70223, '2021-11-26 00:00:00'),
(228, 96741, '2010-02-19 00:00:00'),
(229, 31120, '2013-11-07 00:00:00'),
(230, 35087, '2016-01-22 00:00:00'),
(231, 99223, '2021-11-09 00:00:00'),
(232, 17776, '2016-03-20 00:00:00'),
(233, 33253, '2010-06-22 00:00:00'),
(234, 46646, '2016-12-26 00:00:00'),
(235, 30403, '2011-03-21 00:00:00'),
(236, 17223, '2012-05-11 00:00:00'),
(237, 95684, '2022-08-01 00:00:00'),
(238, 72040, '2021-04-18 00:00:00'),
(239, 90465, '2016-09-22 00:00:00'),
(240, 91773, '2010-07-20 00:00:00'),
(241, 23813, '2010-08-12 00:00:00'),
(242, 32061, '2013-12-28 00:00:00'),
(243, 95078, '2015-05-15 00:00:00'),
(244, 55622, '2018-10-05 00:00:00'),
(245, 88050, '2017-04-05 00:00:00'),
(246, 84578, '2023-11-20 00:00:00'),
(247, 67807, '2023-11-10 00:00:00'),
(248, 85172, '2019-05-04 00:00:00'),
(249, 78358, '2011-11-22 00:00:00'),
(250, 52594, '2019-03-09 00:00:00'),
(251, 92053, '2019-11-21 00:00:00'),
(252, 85736, '2010-06-05 00:00:00'),
(253, 10466, '2021-08-01 00:00:00'),
(254, 97784, '2013-04-29 00:00:00'),
(255, 79923, '2016-12-10 00:00:00'),
(256, 37572, '2015-11-08 00:00:00'),
(257, 95200, '2018-11-20 00:00:00'),
(258, 26533, '2017-04-03 00:00:00'),
(259, 24482, '2017-09-10 00:00:00'),
(260, 32586, '2010-04-07 00:00:00'),
(261, 35044, '2015-12-15 00:00:00'),
(262, 69702, '2021-01-01 00:00:00'),
(263, 27815, '2020-09-15 00:00:00'),
(264, 78531, '2019-05-21 00:00:00'),
(265, 84961, '2013-09-16 00:00:00'),
(266, 13714, '2014-12-14 00:00:00'),
(267, 47307, '2018-10-19 00:00:00'),
(268, 60362, '2021-01-15 00:00:00'),
(269, 92207, '2023-11-19 00:00:00'),
(270, 57051, '2012-01-08 00:00:00'),
(271, 66870, '2019-11-29 00:00:00'),
(272, 16400, '2022-02-04 00:00:00'),
(273, 68546, '2017-05-21 00:00:00'),
(274, 85226, '2012-08-08 00:00:00'),
(275, 96937, '2010-02-14 00:00:00'),
(276, 76461, '2012-08-17 00:00:00'),
(277, 15216, '2016-04-29 00:00:00'),
(278, 38078, '2022-10-27 00:00:00'),
(279, 15941, '2015-02-08 00:00:00'),
(280, 92677, '2022-07-26 00:00:00'),
(281, 64062, '2011-09-19 00:00:00'),
(282, 59696, '2014-12-17 00:00:00'),
(283, 64861, '2016-07-30 00:00:00'),
(284, 64798, '2013-08-27 00:00:00'),
(285, 65551, '2023-12-23 00:00:00'),
(286, 10817, '2010-03-21 00:00:00'),
(287, 64083, '2014-10-08 00:00:00'),
(288, 10656, '2018-05-13 00:00:00'),
(289, 14275, '2012-12-14 00:00:00'),
(290, 45655, '2011-12-17 00:00:00'),
(291, 24788, '2019-08-30 00:00:00'),
(292, 82929, '2023-12-01 00:00:00'),
(293, 70803, '2021-08-10 00:00:00'),
(294, 62539, '2020-01-02 00:00:00'),
(295, 45716, '2018-12-13 00:00:00'),
(296, 48650, '2021-05-22 00:00:00'),
(297, 23930, '2013-05-10 00:00:00'),
(298, 47299, '2011-05-12 00:00:00'),
(299, 65300, '2017-04-13 00:00:00'),
(300, 75020, '2016-05-02 00:00:00'),
(301, 21429, '2016-09-07 00:00:00'),
(302, 64451, '2010-05-03 00:00:00'),
(303, 76622, '2023-12-03 00:00:00'),
(304, 16740, '2017-01-22 00:00:00'),
(305, 89020, '2015-02-20 00:00:00'),
(306, 98687, '2018-12-27 00:00:00'),
(307, 53874, '2015-05-15 00:00:00'),
(308, 13626, '2022-03-23 00:00:00'),
(309, 25817, '2010-05-28 00:00:00'),
(310, 79192, '2023-05-20 00:00:00'),
(311, 50978, '2021-12-15 00:00:00'),
(312, 13999, '2011-03-11 00:00:00'),
(313, 32186, '2013-04-23 00:00:00'),
(314, 12151, '2021-05-05 00:00:00'),
(315, 12950, '2015-05-30 00:00:00'),
(316, 84278, '2022-04-18 00:00:00'),
(317, 55171, '2021-11-25 00:00:00'),
(318, 22779, '2018-01-12 00:00:00'),
(319, 28973, '2020-07-20 00:00:00'),
(320, 68404, '2023-05-23 00:00:00'),
(321, 42272, '2020-02-11 00:00:00'),
(322, 70256, '2016-09-23 00:00:00'),
(323, 79704, '2011-07-25 00:00:00'),
(324, 39832, '2018-05-22 00:00:00'),
(325, 47139, '2023-07-14 00:00:00'),
(326, 58162, '2012-05-27 00:00:00'),
(327, 97815, '2023-12-15 00:00:00'),
(328, 86848, '2010-06-13 00:00:00'),
(329, 14743, '2019-02-13 00:00:00'),
(330, 28722, '2011-11-23 00:00:00'),
(331, 60968, '2018-09-11 00:00:00'),
(332, 25144, '2012-11-18 00:00:00'),
(333, 66669, '2011-08-04 00:00:00'),
(334, 31098, '2020-01-26 00:00:00'),
(335, 66434, '2020-12-01 00:00:00'),
(336, 59811, '2014-04-05 00:00:00'),
(337, 54048, '2011-10-18 00:00:00'),
(338, 70162, '2021-12-27 00:00:00'),
(339, 62318, '2013-03-22 00:00:00'),
(340, 21564, '2023-05-19 00:00:00'),
(341, 75349, '2022-09-18 00:00:00'),
(342, 10013, '2020-02-05 00:00:00'),
(343, 21927, '2014-11-07 00:00:00'),
(344, 98705, '2017-10-11 00:00:00'),
(345, 22656, '2010-06-16 00:00:00'),
(346, 11733, '2012-09-29 00:00:00'),
(347, 97532, '2018-12-13 00:00:00'),
(348, 54932, '2018-11-21 00:00:00'),
(349, 13899, '2020-09-13 00:00:00'),
(350, 55544, '2015-12-11 00:00:00'),
(351, 81213, '2011-05-22 00:00:00'),
(352, 36460, '2016-09-15 00:00:00'),
(353, 10076, '2018-10-11 00:00:00'),
(354, 38561, '2016-10-10 00:00:00'),
(355, 68217, '2022-01-03 00:00:00'),
(356, 19637, '2022-01-08 00:00:00'),
(357, 51263, '2014-02-01 00:00:00'),
(358, 77538, '2020-02-02 00:00:00'),
(359, 49954, '2013-07-01 00:00:00'),
(360, 84046, '2018-10-12 00:00:00'),
(361, 83199, '2021-12-06 00:00:00'),
(362, 98664, '2011-05-06 00:00:00'),
(363, 66015, '2022-11-17 00:00:00'),
(364, 34963, '2015-10-04 00:00:00'),
(365, 17208, '2020-01-26 00:00:00'),
(366, 70106, '2018-08-29 00:00:00'),
(367, 68875, '2021-05-20 00:00:00'),
(368, 52189, '2012-05-31 00:00:00'),
(369, 64484, '2019-10-15 00:00:00'),
(370, 51289, '2020-06-18 00:00:00'),
(371, 78345, '2016-06-06 00:00:00'),
(372, 46387, '2013-01-22 00:00:00'),
(373, 25181, '2014-10-01 00:00:00'),
(374, 62325, '2021-10-24 00:00:00'),
(375, 54682, '2015-03-28 00:00:00'),
(376, 85376, '2023-09-28 00:00:00'),
(377, 98093, '2018-12-03 00:00:00'),
(378, 76143, '2018-11-06 00:00:00'),
(379, 76006, '2017-01-11 00:00:00'),
(380, 92900, '2017-02-09 00:00:00'),
(381, 68065, '2013-09-17 00:00:00'),
(382, 23696, '2015-11-14 00:00:00'),
(383, 98725, '2017-11-19 00:00:00'),
(384, 50218, '2018-08-11 00:00:00'),
(385, 22309, '2011-10-30 00:00:00'),
(386, 97871, '2021-01-12 00:00:00'),
(387, 69549, '2020-06-22 00:00:00'),
(388, 89737, '2020-08-22 00:00:00'),
(389, 91484, '2014-01-04 00:00:00'),
(390, 29501, '2018-03-02 00:00:00'),
(391, 19938, '2017-06-06 00:00:00'),
(392, 89759, '2010-08-16 00:00:00'),
(393, 87071, '2022-09-22 00:00:00'),
(394, 74560, '2016-07-24 00:00:00'),
(395, 79400, '2018-12-05 00:00:00'),
(396, 48157, '2016-06-11 00:00:00'),
(397, 49887, '2010-09-30 00:00:00'),
(398, 85535, '2012-09-25 00:00:00'),
(399, 16070, '2022-06-26 00:00:00'),
(400, 22907, '2015-09-24 00:00:00'),
(401, 55381, '2017-05-29 00:00:00'),
(402, 67414, '2016-12-21 00:00:00'),
(403, 65159, '2010-07-05 00:00:00'),
(404, 67602, '2023-07-29 00:00:00'),
(405, 21820, '2014-05-30 00:00:00'),
(406, 55164, '2019-04-30 00:00:00'),
(407, 75050, '2020-12-13 00:00:00'),
(408, 69840, '2020-11-01 00:00:00'),
(409, 50250, '2014-02-11 00:00:00'),
(410, 32829, '2014-02-16 00:00:00'),
(411, 70337, '2018-04-06 00:00:00'),
(412, 77623, '2011-08-04 00:00:00'),
(413, 63207, '2016-09-23 00:00:00'),
(414, 91602, '2018-11-10 00:00:00'),
(415, 73735, '2011-05-17 00:00:00'),
(416, 78520, '2017-10-16 00:00:00'),
(417, 55565, '2022-04-11 00:00:00'),
(418, 18422, '2017-02-22 00:00:00'),
(419, 53945, '2014-06-21 00:00:00'),
(420, 68516, '2017-06-15 00:00:00'),
(421, 40935, '2011-08-09 00:00:00'),
(422, 94107, '2011-03-20 00:00:00'),
(423, 91287, '2014-12-10 00:00:00'),
(424, 73478, '2016-09-03 00:00:00'),
(425, 88482, '2011-11-30 00:00:00'),
(426, 32064, '2020-10-27 00:00:00'),
(427, 87188, '2010-10-31 00:00:00'),
(428, 29288, '2017-01-19 00:00:00'),
(429, 26413, '2018-07-08 00:00:00'),
(430, 52401, '2010-06-08 00:00:00'),
(431, 37774, '2011-11-18 00:00:00'),
(432, 14035, '2020-11-06 00:00:00'),
(433, 86662, '2016-09-13 00:00:00'),
(434, 82254, '2014-08-23 00:00:00'),
(435, 15156, '2010-06-24 00:00:00'),
(436, 84068, '2016-11-03 00:00:00'),
(437, 26000, '2019-09-29 00:00:00'),
(438, 30353, '2011-02-13 00:00:00'),
(439, 73461, '2013-04-08 00:00:00'),
(440, 74352, '2010-12-08 00:00:00'),
(441, 61074, '2011-07-23 00:00:00'),
(442, 68628, '2019-04-14 00:00:00'),
(443, 92362, '2023-07-15 00:00:00'),
(444, 60360, '2010-01-16 00:00:00'),
(445, 99517, '2014-02-03 00:00:00'),
(446, 98275, '2016-09-23 00:00:00'),
(447, 27784, '2013-03-12 00:00:00'),
(448, 99164, '2018-01-30 00:00:00'),
(449, 61256, '2020-06-13 00:00:00'),
(450, 94103, '2022-07-12 00:00:00'),
(451, 10773, '2012-01-26 00:00:00'),
(452, 20151, '2016-01-03 00:00:00'),
(453, 45363, '2022-10-20 00:00:00'),
(454, 25026, '2020-10-19 00:00:00'),
(455, 53755, '2014-07-05 00:00:00'),
(456, 32603, '2022-01-10 00:00:00'),
(457, 38087, '2012-06-27 00:00:00'),
(458, 28696, '2016-04-06 00:00:00'),
(459, 81988, '2023-03-19 00:00:00'),
(460, 89392, '2011-06-03 00:00:00'),
(461, 86301, '2012-02-21 00:00:00'),
(462, 27282, '2015-02-25 00:00:00'),
(463, 17224, '2023-04-17 00:00:00'),
(464, 24293, '2010-11-17 00:00:00'),
(465, 47774, '2017-07-15 00:00:00'),
(466, 67651, '2014-09-26 00:00:00'),
(467, 28384, '2022-01-21 00:00:00'),
(468, 75684, '2011-05-20 00:00:00'),
(469, 83265, '2014-02-20 00:00:00'),
(470, 79828, '2012-06-24 00:00:00'),
(471, 23237, '2019-06-10 00:00:00'),
(472, 84527, '2020-07-30 00:00:00'),
(473, 75853, '2023-07-14 00:00:00'),
(474, 58086, '2020-06-10 00:00:00'),
(475, 61933, '2021-03-13 00:00:00'),
(476, 69012, '2012-11-30 00:00:00'),
(477, 44867, '2013-11-07 00:00:00'),
(478, 76707, '2012-06-06 00:00:00'),
(479, 86082, '2015-03-07 00:00:00'),
(480, 12834, '2013-11-17 00:00:00'),
(481, 16763, '2011-07-02 00:00:00'),
(482, 82725, '2017-10-26 00:00:00'),
(483, 41711, '2017-06-01 00:00:00'),
(484, 87904, '2010-09-12 00:00:00'),
(485, 70858, '2020-09-14 00:00:00'),
(486, 53190, '2015-04-25 00:00:00'),
(487, 28313, '2013-06-11 00:00:00'),
(488, 51599, '2012-06-24 00:00:00'),
(489, 49844, '2017-08-06 00:00:00'),
(490, 38752, '2018-06-18 00:00:00'),
(491, 71706, '2012-06-23 00:00:00'),
(492, 63169, '2010-12-31 00:00:00'),
(493, 90152, '2023-02-24 00:00:00'),
(494, 80531, '2012-11-02 00:00:00'),
(495, 89144, '2019-03-04 00:00:00'),
(496, 81507, '2023-09-08 00:00:00'),
(497, 65058, '2013-12-14 00:00:00'),
(498, 58175, '2020-10-09 00:00:00'),
(499, 28222, '2021-08-15 00:00:00'),
(500, 68011, '2021-07-21 00:00:00'),
(501, 39452, '2015-03-13 00:00:00'),
(502, 87239, '2011-05-02 00:00:00'),
(503, 23143, '2019-11-18 00:00:00'),
(504, 19260, '2018-06-18 00:00:00'),
(505, 23383, '2013-10-23 00:00:00'),
(506, 59891, '2013-05-20 00:00:00'),
(507, 42504, '2022-08-06 00:00:00'),
(508, 89696, '2012-08-18 00:00:00'),
(509, 37633, '2015-10-30 00:00:00'),
(510, 89721, '2016-10-15 00:00:00'),
(511, 32372, '2017-09-23 00:00:00'),
(512, 34225, '2012-04-15 00:00:00'),
(513, 64625, '2013-12-27 00:00:00'),
(514, 73871, '2015-09-12 00:00:00'),
(515, 15259, '2010-06-30 00:00:00'),
(516, 94389, '2023-05-18 00:00:00'),
(517, 13677, '2012-11-27 00:00:00'),
(518, 47333, '2016-12-07 00:00:00'),
(519, 56699, '2010-10-19 00:00:00'),
(520, 17960, '2014-08-30 00:00:00'),
(521, 94604, '2022-12-16 00:00:00'),
(522, 48186, '2019-02-18 00:00:00'),
(523, 37841, '2021-05-04 00:00:00'),
(524, 18459, '2021-06-21 00:00:00'),
(525, 96644, '2020-09-05 00:00:00'),
(526, 33598, '2020-02-15 00:00:00'),
(527, 64489, '2022-12-22 00:00:00'),
(528, 91867, '2015-10-03 00:00:00'),
(529, 10731, '2016-11-24 00:00:00'),
(530, 17147, '2012-02-05 00:00:00'),
(531, 58143, '2015-12-24 00:00:00'),
(532, 59370, '2018-07-01 00:00:00'),
(533, 55080, '2016-08-22 00:00:00'),
(534, 57978, '2015-10-12 00:00:00'),
(535, 26351, '2017-06-19 00:00:00'),
(536, 65284, '2019-04-13 00:00:00'),
(537, 51813, '2014-02-13 00:00:00'),
(538, 11518, '2016-06-08 00:00:00'),
(539, 42535, '2017-08-14 00:00:00'),
(540, 61796, '2011-12-16 00:00:00'),
(541, 85131, '2011-08-22 00:00:00'),
(542, 22835, '2013-05-18 00:00:00'),
(543, 87271, '2015-05-31 00:00:00'),
(544, 67538, '2011-12-20 00:00:00'),
(545, 10719, '2014-05-01 00:00:00'),
(546, 91256, '2023-04-04 00:00:00'),
(547, 31426, '2021-09-25 00:00:00'),
(548, 14766, '2022-03-05 00:00:00'),
(549, 53934, '2013-04-20 00:00:00'),
(550, 25152, '2015-02-10 00:00:00'),
(551, 21776, '2010-06-03 00:00:00'),
(552, 88544, '2019-09-01 00:00:00'),
(553, 56229, '2013-11-15 00:00:00'),
(554, 40997, '2019-04-21 00:00:00'),
(555, 68870, '2020-07-16 00:00:00'),
(556, 18466, '2011-01-22 00:00:00'),
(557, 40615, '2015-05-03 00:00:00'),
(558, 89360, '2015-06-27 00:00:00'),
(559, 55574, '2017-03-31 00:00:00'),
(560, 91984, '2014-02-26 00:00:00'),
(561, 98124, '2016-04-24 00:00:00'),
(562, 69386, '2010-08-19 00:00:00'),
(563, 69160, '2015-08-18 00:00:00'),
(564, 43193, '2018-07-26 00:00:00'),
(565, 69171, '2017-07-27 00:00:00'),
(566, 66173, '2013-05-12 00:00:00'),
(567, 97187, '2020-06-17 00:00:00'),
(568, 40357, '2017-05-22 00:00:00'),
(569, 18265, '2015-07-31 00:00:00'),
(570, 19332, '2020-07-09 00:00:00'),
(571, 49859, '2019-06-16 00:00:00'),
(572, 49289, '2018-06-16 00:00:00'),
(573, 20064, '2020-09-19 00:00:00'),
(574, 12068, '2014-03-28 00:00:00'),
(575, 88853, '2018-08-24 00:00:00'),
(576, 15940, '2012-10-13 00:00:00'),
(577, 68177, '2011-07-13 00:00:00'),
(578, 60487, '2016-11-29 00:00:00'),
(579, 10764, '2015-09-27 00:00:00'),
(580, 68393, '2023-04-20 00:00:00'),
(581, 14506, '2020-10-11 00:00:00'),
(582, 91982, '2014-09-23 00:00:00'),
(583, 36392, '2013-09-15 00:00:00'),
(584, 20122, '2019-02-27 00:00:00'),
(585, 53289, '2012-09-17 00:00:00'),
(586, 55714, '2013-11-30 00:00:00'),
(587, 58069, '2018-04-30 00:00:00'),
(588, 45059, '2011-01-31 00:00:00'),
(589, 23035, '2017-09-03 00:00:00'),
(590, 24443, '2022-03-22 00:00:00'),
(591, 12042, '2021-02-20 00:00:00'),
(592, 18526, '2021-01-05 00:00:00'),
(593, 95859, '2012-04-03 00:00:00'),
(594, 24954, '2011-07-09 00:00:00'),
(595, 55172, '2016-02-10 00:00:00'),
(596, 30355, '2012-04-20 00:00:00'),
(597, 52058, '2016-05-07 00:00:00'),
(598, 99787, '2018-05-31 00:00:00'),
(599, 73915, '2015-11-23 00:00:00'),
(600, 30747, '2022-10-29 00:00:00'),
(601, 36414, '2016-01-04 00:00:00'),
(602, 96499, '2022-02-17 00:00:00'),
(603, 92817, '2016-10-05 00:00:00'),
(604, 59941, '2014-05-11 00:00:00'),
(605, 20043, '2010-11-11 00:00:00'),
(606, 94925, '2024-01-07 00:00:00'),
(607, 44821, '2019-03-14 00:00:00'),
(608, 96567, '2019-03-19 00:00:00'),
(609, 19788, '2022-06-28 00:00:00'),
(610, 25326, '2021-04-18 00:00:00'),
(611, 36711, '2012-05-06 00:00:00'),
(612, 40126, '2011-03-11 00:00:00'),
(613, 50998, '2020-01-28 00:00:00'),
(614, 93261, '2023-02-23 00:00:00'),
(615, 27354, '2014-07-30 00:00:00'),
(616, 52094, '2012-11-02 00:00:00'),
(617, 17494, '2020-04-29 00:00:00'),
(618, 42053, '2015-02-12 00:00:00'),
(619, 71437, '2011-12-30 00:00:00'),
(620, 49856, '2018-08-05 00:00:00'),
(621, 19964, '2019-05-15 00:00:00'),
(622, 55187, '2023-01-02 00:00:00'),
(623, 65322, '2020-10-06 00:00:00'),
(624, 37016, '2020-03-27 00:00:00'),
(625, 26589, '2020-12-04 00:00:00'),
(626, 49922, '2021-08-02 00:00:00'),
(627, 58891, '2022-06-14 00:00:00'),
(628, 72468, '2021-07-24 00:00:00'),
(629, 73674, '2017-12-27 00:00:00'),
(630, 66951, '2011-12-16 00:00:00'),
(631, 99717, '2021-07-30 00:00:00'),
(632, 62887, '2021-02-26 00:00:00'),
(633, 59589, '2023-06-12 00:00:00'),
(634, 21468, '2020-01-12 00:00:00'),
(635, 34712, '2012-04-13 00:00:00'),
(636, 20096, '2023-07-08 00:00:00'),
(637, 91471, '2021-03-20 00:00:00'),
(638, 59428, '2019-01-31 00:00:00'),
(639, 55535, '2019-10-09 00:00:00'),
(640, 24194, '2013-09-09 00:00:00'),
(641, 80657, '2021-03-12 00:00:00'),
(642, 26427, '2018-12-09 00:00:00'),
(643, 22807, '2011-03-09 00:00:00'),
(644, 10203, '2018-05-24 00:00:00'),
(645, 80630, '2019-12-06 00:00:00'),
(646, 94825, '2010-02-01 00:00:00'),
(647, 90638, '2021-11-20 00:00:00'),
(648, 77102, '2023-09-14 00:00:00'),
(649, 74746, '2015-06-08 00:00:00'),
(650, 29535, '2022-05-07 00:00:00'),
(651, 15239, '2013-12-20 00:00:00'),
(652, 97519, '2016-01-03 00:00:00'),
(653, 48720, '2014-07-15 00:00:00'),
(654, 31931, '2018-02-26 00:00:00'),
(655, 97643, '2013-09-05 00:00:00'),
(656, 42815, '2020-03-12 00:00:00'),
(657, 42252, '2019-12-30 00:00:00'),
(658, 49509, '2011-11-16 00:00:00'),
(659, 11973, '2015-03-03 00:00:00'),
(660, 62746, '2020-12-25 00:00:00'),
(661, 58049, '2013-03-25 00:00:00'),
(662, 64125, '2022-01-23 00:00:00'),
(663, 45012, '2021-04-27 00:00:00'),
(664, 21511, '2022-12-12 00:00:00'),
(665, 22024, '2010-02-25 00:00:00'),
(666, 72138, '2010-07-19 00:00:00'),
(667, 86922, '2017-12-07 00:00:00'),
(668, 80748, '2013-03-09 00:00:00'),
(669, 37346, '2023-05-12 00:00:00'),
(670, 71985, '2013-03-21 00:00:00'),
(671, 35043, '2020-01-24 00:00:00'),
(672, 66268, '2013-07-04 00:00:00'),
(673, 93437, '2015-08-15 00:00:00'),
(674, 66302, '2019-07-03 00:00:00'),
(675, 81103, '2016-06-17 00:00:00'),
(676, 69540, '2017-04-11 00:00:00'),
(677, 29189, '2023-06-01 00:00:00'),
(678, 26191, '2018-08-17 00:00:00'),
(679, 15278, '2020-05-01 00:00:00'),
(680, 67261, '2018-04-01 00:00:00'),
(681, 42960, '2017-07-02 00:00:00'),
(682, 94962, '2012-08-27 00:00:00'),
(683, 73302, '2020-02-04 00:00:00'),
(684, 37954, '2018-08-05 00:00:00'),
(685, 52462, '2021-05-03 00:00:00'),
(686, 10289, '2011-09-08 00:00:00'),
(687, 56617, '2022-01-18 00:00:00'),
(688, 91701, '2013-12-06 00:00:00'),
(689, 16201, '2011-09-17 00:00:00'),
(690, 71101, '2022-10-27 00:00:00'),
(691, 16554, '2021-10-19 00:00:00'),
(692, 61502, '2021-09-07 00:00:00'),
(693, 58802, '2016-02-02 00:00:00'),
(694, 23080, '2022-06-29 00:00:00'),
(695, 90940, '2015-10-08 00:00:00'),
(696, 65098, '2017-06-17 00:00:00'),
(697, 58340, '2014-05-04 00:00:00'),
(698, 34991, '2023-03-25 00:00:00'),
(699, 49524, '2018-06-19 00:00:00'),
(700, 99723, '2010-03-31 00:00:00'),
(701, 79784, '2016-01-02 00:00:00'),
(702, 40044, '2015-08-24 00:00:00'),
(703, 28761, '2018-06-05 00:00:00'),
(704, 44689, '2021-02-16 00:00:00'),
(705, 82812, '2012-06-16 00:00:00'),
(706, 83771, '2014-09-08 00:00:00'),
(707, 69175, '2014-08-16 00:00:00'),
(708, 59854, '2014-01-01 00:00:00'),
(709, 20319, '2017-08-27 00:00:00'),
(710, 66997, '2010-12-04 00:00:00'),
(711, 67442, '2023-06-22 00:00:00'),
(712, 32554, '2020-09-10 00:00:00'),
(713, 15002, '2016-12-26 00:00:00'),
(714, 25732, '2020-08-27 00:00:00'),
(715, 15565, '2015-03-07 00:00:00'),
(716, 66936, '2011-03-24 00:00:00'),
(717, 80180, '2016-05-21 00:00:00'),
(718, 62226, '2022-10-12 00:00:00'),
(719, 88181, '2012-10-06 00:00:00'),
(720, 89483, '2015-07-02 00:00:00'),
(721, 80653, '2013-05-02 00:00:00'),
(722, 65696, '2014-10-23 00:00:00'),
(723, 35332, '2012-11-13 00:00:00'),
(724, 85360, '2020-02-09 00:00:00'),
(725, 10212, '2012-02-20 00:00:00'),
(726, 49606, '2017-10-08 00:00:00'),
(727, 80726, '2016-07-27 00:00:00'),
(728, 10666, '2018-03-30 00:00:00'),
(729, 35062, '2019-02-22 00:00:00'),
(730, 67269, '2018-08-22 00:00:00'),
(731, 10546, '2016-05-05 00:00:00'),
(732, 79155, '2020-03-10 00:00:00'),
(733, 43739, '2015-10-12 00:00:00'),
(734, 28500, '2021-12-16 00:00:00'),
(735, 57002, '2022-09-22 00:00:00'),
(736, 32988, '2012-06-01 00:00:00'),
(737, 30903, '2022-11-20 00:00:00'),
(738, 50632, '2021-05-12 00:00:00'),
(739, 21897, '2012-09-06 00:00:00'),
(740, 86640, '2015-12-24 00:00:00'),
(741, 76140, '2019-10-02 00:00:00'),
(742, 77140, '2012-11-02 00:00:00'),
(743, 52665, '2017-07-05 00:00:00'),
(744, 74844, '2020-02-14 00:00:00'),
(745, 99911, '2014-07-26 00:00:00'),
(746, 64734, '2018-04-04 00:00:00'),
(747, 95639, '2023-08-22 00:00:00'),
(748, 14259, '2020-07-24 00:00:00'),
(749, 23530, '2014-02-15 00:00:00'),
(750, 39550, '2011-03-16 00:00:00'),
(751, 60946, '2021-08-08 00:00:00'),
(752, 18713, '2016-02-05 00:00:00'),
(753, 98381, '2019-11-15 00:00:00'),
(754, 24726, '2016-10-26 00:00:00'),
(755, 46697, '2023-02-26 00:00:00'),
(756, 89124, '2021-04-13 00:00:00'),
(757, 17941, '2023-01-30 00:00:00'),
(758, 14916, '2020-10-09 00:00:00'),
(759, 73945, '2016-03-30 00:00:00'),
(760, 39404, '2020-05-10 00:00:00'),
(761, 52281, '2011-03-19 00:00:00'),
(762, 17321, '2014-06-23 00:00:00'),
(763, 53714, '2016-11-26 00:00:00'),
(764, 70991, '2012-04-06 00:00:00'),
(765, 28454, '2013-04-13 00:00:00'),
(766, 95904, '2010-09-10 00:00:00'),
(767, 10820, '2017-02-04 00:00:00'),
(768, 53843, '2017-05-31 00:00:00'),
(769, 38177, '2011-12-28 00:00:00'),
(770, 30266, '2012-01-10 00:00:00'),
(771, 30562, '2013-12-25 00:00:00'),
(772, 26462, '2018-11-21 00:00:00'),
(773, 79322, '2010-05-27 00:00:00'),
(774, 58983, '2014-05-06 00:00:00'),
(775, 17475, '2020-06-21 00:00:00'),
(776, 12690, '2011-03-11 00:00:00'),
(777, 83010, '2019-02-19 00:00:00'),
(778, 59397, '2016-07-08 00:00:00'),
(779, 48801, '2015-07-25 00:00:00'),
(780, 33549, '2022-05-02 00:00:00'),
(781, 88454, '2012-12-06 00:00:00'),
(782, 31350, '2018-08-15 00:00:00'),
(783, 84655, '2019-05-02 00:00:00'),
(784, 50340, '2011-12-05 00:00:00'),
(785, 24202, '2019-09-08 00:00:00'),
(786, 93406, '2012-08-14 00:00:00'),
(787, 47986, '2017-09-17 00:00:00'),
(788, 89534, '2018-07-13 00:00:00'),
(789, 26184, '2011-08-19 00:00:00'),
(790, 16226, '2022-09-11 00:00:00'),
(791, 77207, '2023-03-05 00:00:00'),
(792, 82671, '2021-12-23 00:00:00'),
(793, 22647, '2013-08-06 00:00:00'),
(794, 89913, '2011-09-27 00:00:00'),
(795, 18906, '2016-01-30 00:00:00'),
(796, 24760, '2012-05-26 00:00:00'),
(797, 27242, '2014-06-25 00:00:00'),
(798, 30154, '2019-02-08 00:00:00'),
(799, 46900, '2010-07-13 00:00:00'),
(800, 39683, '2010-12-04 00:00:00'),
(801, 36273, '2011-09-26 00:00:00'),
(802, 21512, '2020-03-07 00:00:00'),
(803, 77222, '2019-03-27 00:00:00'),
(804, 76207, '2022-10-31 00:00:00'),
(805, 48251, '2017-05-03 00:00:00'),
(806, 90781, '2018-12-05 00:00:00'),
(807, 64769, '2013-05-08 00:00:00'),
(808, 84721, '2021-01-17 00:00:00'),
(809, 94061, '2016-05-23 00:00:00'),
(810, 76563, '2019-11-21 00:00:00'),
(811, 20219, '2017-12-11 00:00:00'),
(812, 84606, '2017-01-02 00:00:00'),
(813, 72860, '2012-12-14 00:00:00'),
(814, 60661, '2011-05-23 00:00:00'),
(815, 69520, '2019-05-15 00:00:00'),
(816, 99981, '2011-01-31 00:00:00'),
(817, 13450, '2010-02-01 00:00:00'),
(818, 55964, '2022-08-07 00:00:00'),
(819, 58984, '2012-01-03 00:00:00'),
(820, 44043, '2012-10-12 00:00:00'),
(821, 40748, '2010-09-22 00:00:00'),
(822, 10800, '2013-05-05 00:00:00'),
(823, 50171, '2012-01-20 00:00:00'),
(824, 89347, '2019-08-19 00:00:00'),
(825, 46808, '2016-04-15 00:00:00'),
(826, 43824, '2013-01-17 00:00:00'),
(827, 79688, '2017-07-24 00:00:00'),
(828, 51729, '2016-12-03 00:00:00'),
(829, 91530, '2016-02-23 00:00:00'),
(830, 90899, '2018-07-18 00:00:00'),
(831, 14989, '2014-11-16 00:00:00'),
(832, 27540, '2016-06-29 00:00:00'),
(833, 97544, '2016-04-04 00:00:00'),
(834, 59347, '2018-10-28 00:00:00'),
(835, 71977, '2016-01-30 00:00:00'),
(836, 73451, '2022-05-31 00:00:00'),
(837, 99861, '2023-02-21 00:00:00'),
(838, 36448, '2014-05-06 00:00:00'),
(839, 72392, '2011-07-25 00:00:00'),
(840, 70140, '2023-11-04 00:00:00'),
(841, 20261, '2010-02-24 00:00:00'),
(842, 90093, '2010-08-13 00:00:00'),
(843, 30765, '2023-04-15 00:00:00'),
(844, 80489, '2017-01-22 00:00:00'),
(845, 71435, '2019-02-02 00:00:00'),
(846, 82521, '2021-08-25 00:00:00'),
(847, 70445, '2023-11-15 00:00:00'),
(848, 85110, '2010-04-23 00:00:00'),
(849, 77593, '2022-01-16 00:00:00'),
(850, 94799, '2023-02-02 00:00:00'),
(851, 80801, '2011-05-23 00:00:00'),
(852, 11598, '2013-05-22 00:00:00'),
(853, 56804, '2019-08-27 00:00:00'),
(854, 81766, '2015-02-03 00:00:00'),
(855, 73405, '2020-02-05 00:00:00'),
(856, 12459, '2020-04-25 00:00:00'),
(857, 85648, '2014-09-15 00:00:00'),
(858, 87563, '2017-08-30 00:00:00'),
(859, 52877, '2023-06-13 00:00:00'),
(860, 51524, '2021-07-29 00:00:00'),
(861, 26990, '2023-11-28 00:00:00'),
(862, 59177, '2012-11-06 00:00:00'),
(863, 31491, '2017-04-05 00:00:00'),
(864, 82656, '2015-06-05 00:00:00'),
(865, 54654, '2015-07-18 00:00:00'),
(866, 21917, '2017-02-21 00:00:00'),
(867, 49136, '2021-04-17 00:00:00'),
(868, 84539, '2014-07-05 00:00:00'),
(869, 41972, '2019-05-26 00:00:00'),
(870, 24150, '2011-03-14 00:00:00'),
(871, 84063, '2021-12-27 00:00:00'),
(872, 33916, '2019-08-06 00:00:00'),
(873, 11087, '2023-03-12 00:00:00'),
(874, 84636, '2022-11-03 00:00:00'),
(875, 86253, '2020-07-25 00:00:00'),
(876, 53539, '2013-02-25 00:00:00'),
(877, 46242, '2021-11-07 00:00:00'),
(878, 31437, '2013-05-04 00:00:00'),
(879, 99878, '2020-11-06 00:00:00'),
(880, 35592, '2015-08-05 00:00:00'),
(881, 69239, '2013-07-05 00:00:00'),
(882, 41685, '2023-04-21 00:00:00'),
(883, 27681, '2016-05-17 00:00:00'),
(884, 17208, '2022-01-01 00:00:00'),
(885, 26704, '2016-05-15 00:00:00'),
(886, 87359, '2021-01-10 00:00:00'),
(887, 19109, '2012-05-26 00:00:00'),
(888, 78747, '2016-07-11 00:00:00'),
(889, 19759, '2012-11-28 00:00:00'),
(890, 32579, '2010-05-29 00:00:00'),
(891, 10473, '2017-06-03 00:00:00'),
(892, 66145, '2020-07-18 00:00:00'),
(893, 85586, '2018-09-09 00:00:00'),
(894, 74866, '2012-03-06 00:00:00'),
(895, 40539, '2017-04-27 00:00:00'),
(896, 15155, '2021-08-28 00:00:00'),
(897, 53643, '2016-07-14 00:00:00'),
(898, 22171, '2015-06-17 00:00:00'),
(899, 24963, '2011-12-04 00:00:00'),
(900, 63178, '2017-10-29 00:00:00'),
(901, 73746, '2019-05-30 00:00:00'),
(902, 21759, '2018-07-07 00:00:00'),
(903, 51992, '2020-12-10 00:00:00'),
(904, 39790, '2015-02-27 00:00:00'),
(905, 70240, '2021-10-07 00:00:00'),
(906, 24582, '2023-07-31 00:00:00'),
(907, 66784, '2016-05-30 00:00:00'),
(908, 74486, '2013-09-12 00:00:00'),
(909, 69524, '2015-12-09 00:00:00'),
(910, 97920, '2011-02-21 00:00:00'),
(911, 87386, '2022-11-15 00:00:00'),
(912, 76329, '2016-09-09 00:00:00'),
(913, 87441, '2016-11-11 00:00:00'),
(914, 86185, '2012-07-17 00:00:00'),
(915, 94261, '2021-09-18 00:00:00'),
(916, 21730, '2010-06-23 00:00:00'),
(917, 22447, '2017-04-19 00:00:00'),
(918, 80153, '2022-08-30 00:00:00'),
(919, 14564, '2022-04-15 00:00:00'),
(920, 25549, '2017-04-11 00:00:00'),
(921, 97219, '2018-09-21 00:00:00'),
(922, 27359, '2012-04-29 00:00:00'),
(923, 36876, '2022-10-23 00:00:00'),
(924, 23377, '2022-10-20 00:00:00'),
(925, 31125, '2021-07-03 00:00:00'),
(926, 56816, '2019-03-30 00:00:00'),
(927, 55542, '2016-01-26 00:00:00'),
(928, 14705, '2019-01-23 00:00:00'),
(929, 97188, '2017-12-10 00:00:00'),
(930, 11259, '2019-01-16 00:00:00'),
(931, 10659, '2020-05-30 00:00:00'),
(932, 89490, '2013-09-11 00:00:00'),
(933, 36802, '2014-08-06 00:00:00'),
(934, 98050, '2012-12-10 00:00:00'),
(935, 82678, '2012-06-11 00:00:00'),
(936, 79579, '2015-12-09 00:00:00'),
(937, 30519, '2010-09-15 00:00:00'),
(938, 23594, '2010-02-13 00:00:00'),
(939, 43425, '2019-03-10 00:00:00'),
(940, 67493, '2016-09-26 00:00:00'),
(941, 76260, '2016-10-22 00:00:00'),
(942, 92679, '2023-10-01 00:00:00'),
(943, 41245, '2011-12-01 00:00:00'),
(944, 25386, '2012-06-16 00:00:00'),
(945, 18802, '2012-12-20 00:00:00'),
(946, 54946, '2017-06-25 00:00:00'),
(947, 68734, '2020-11-06 00:00:00'),
(948, 37661, '2013-09-17 00:00:00'),
(949, 67892, '2021-03-13 00:00:00'),
(950, 17959, '2011-11-24 00:00:00'),
(951, 10660, '2014-10-15 00:00:00'),
(952, 89397, '2011-04-26 00:00:00'),
(953, 35185, '2018-09-25 00:00:00'),
(954, 39773, '2019-03-17 00:00:00'),
(955, 13544, '2015-08-19 00:00:00'),
(956, 30818, '2023-03-16 00:00:00'),
(957, 51122, '2022-08-01 00:00:00'),
(958, 95050, '2019-10-09 00:00:00'),
(959, 26593, '2023-03-12 00:00:00'),
(960, 63434, '2017-07-13 00:00:00'),
(961, 52544, '2021-11-30 00:00:00'),
(962, 71680, '2010-10-29 00:00:00'),
(963, 22496, '2022-01-15 00:00:00'),
(964, 81196, '2017-11-20 00:00:00'),
(965, 40376, '2013-08-04 00:00:00'),
(966, 92757, '2022-04-01 00:00:00'),
(967, 47516, '2015-02-17 00:00:00'),
(968, 84984, '2019-07-15 00:00:00'),
(969, 56504, '2018-11-11 00:00:00'),
(970, 44489, '2012-03-10 00:00:00'),
(971, 47185, '2018-11-23 00:00:00'),
(972, 44841, '2023-09-02 00:00:00'),
(973, 10553, '2012-09-08 00:00:00'),
(974, 52164, '2012-05-21 00:00:00'),
(975, 86046, '2015-12-18 00:00:00'),
(976, 73383, '2022-11-15 00:00:00'),
(977, 42236, '2016-03-29 00:00:00'),
(978, 47632, '2019-10-21 00:00:00'),
(979, 95501, '2013-08-24 00:00:00'),
(980, 74493, '2011-06-22 00:00:00'),
(981, 92270, '2014-10-08 00:00:00'),
(982, 93573, '2012-08-23 00:00:00'),
(983, 15177, '2022-03-13 00:00:00'),
(984, 52139, '2011-03-25 00:00:00'),
(985, 92850, '2021-10-03 00:00:00'),
(986, 42688, '2011-09-14 00:00:00'),
(987, 72891, '2021-08-01 00:00:00'),
(988, 20596, '2022-11-23 00:00:00'),
(989, 60894, '2018-12-11 00:00:00'),
(990, 37120, '2022-05-10 00:00:00'),
(991, 24367, '2010-10-03 00:00:00'),
(992, 74407, '2012-06-01 00:00:00'),
(993, 63578, '2020-01-04 00:00:00'),
(994, 42354, '2012-07-14 00:00:00'),
(995, 16785, '2023-05-14 00:00:00'),
(996, 97082, '2014-12-08 00:00:00'),
(997, 73885, '2018-08-25 00:00:00'),
(998, 14387, '2022-09-11 00:00:00'),
(999, 82051, '2017-03-29 00:00:00'),
(1000, 86624, '2017-07-11 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceria_08`
--

CREATE TABLE `parceria_08` (
  `A08_id` int NOT NULL,
  `A02_id` int NOT NULL,
  `A08_nome` varchar(255) NOT NULL,
  `A08_nacional` tinyint(1) NOT NULL,
  `A08_dataValidade` date NOT NULL,
  `AO8_porte` varchar(255) NOT NULL,
  `A08_descricao` varchar(255) DEFAULT NULL,
  `A08_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_03`
--

CREATE TABLE `pedido_03` (
  `A03_id` int NOT NULL,
  `A21_id` int NOT NULL,
  `A12_id` int NOT NULL,
  `A16_id` int NOT NULL,
  `A17_id` int NOT NULL,
  `A01_id` int NOT NULL,
  `A03_data` datetime NOT NULL,
  `A03_valorTotal` double NOT NULL,
  `A03_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma_15`
--

CREATE TABLE `plataforma_15` (
  `A15_id` int NOT NULL,
  `A15_nome` varchar(255) NOT NULL,
  `A15_descricao` varchar(255) NOT NULL,
  `A15_idadeLimite` int NOT NULL,
  `A15_persona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `plataforma_15`
--

INSERT INTO `plataforma_15` (`A15_id`, `A15_nome`, `A15_descricao`, `A15_idadeLimite`, `A15_persona`) VALUES
(1, 'Hulu', 'Infográficos', 10, 'Customer service expert'),
(2, 'You tube', 'Conteúdo digital', 18, 'Tech-savvy professional'),
(3, 'Linkedin', 'Infográficos', 12, 'Marketing guru'),
(4, 'Vimeo', 'Vídeos', 14, 'Tech-savvy professional'),
(5, 'Twitch', 'Live Stream', 8, 'Tech-savvy professional');

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma_do_vendedor_28`
--

CREATE TABLE `plataforma_do_vendedor_28` (
  `A14_id` int NOT NULL,
  `A15_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_04`
--

CREATE TABLE `produto_04` (
  `A04_id` int NOT NULL,
  `A19_id` int NOT NULL,
  `A18_id` int NOT NULL,
  `A04_descricao` varchar(255) NOT NULL,
  `A04_valorUni` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao_09`
--

CREATE TABLE `promocao_09` (
  `A09_id` int NOT NULL,
  `A04_id` int NOT NULL,
  `A09_porCentagem` double NOT NULL,
  `A09_estado` varchar(255) NOT NULL,
  `A09_dataInicio` datetime NOT NULL,
  `A09_dataFinal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao_02`
--

CREATE TABLE `regiao_02` (
  `A02_id` int NOT NULL,
  `A02_nome` varchar(255) NOT NULL,
  `A02_estado` varchar(255) NOT NULL,
  `A02_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `regiao_02`
--

INSERT INTO `regiao_02` (`A02_id`, `A02_nome`, `A02_estado`, `A02_descricao`) VALUES
(1, 'Stamm-Hoppe', 'Pará', 'Vila X para Cidade Y'),
(2, 'Barrows, Sporer and Jerde', 'Pernambuco', 'Cidade Z para Povoado W'),
(3, 'Kessler and Sons', 'Pernambuco', 'Vila X para Cidade Y'),
(4, 'Hintz Inc', 'Pará', 'Cidade A para Cidade B'),
(5, 'Connelly Group', 'Pará', 'Vila X para Cidade Y'),
(6, 'Simonis-Schinner', 'São Paulo', 'Cidade A para Cidade B'),
(7, 'Hirthe-Rutherford', 'Pará', 'Cidade A para Cidade B'),
(8, 'Reichel-Mante', 'Santa Catarina', 'Cidade Z para Povoado W'),
(9, 'Heaney-Larson', 'Bahia', 'Vila X para Cidade Y'),
(10, 'Farrell Group', 'Rio de Janeiro', 'Cidade Z para Povoado W'),
(11, 'Turcotte-Hamill', 'Pernambuco', 'Cidade Z para Povoado W'),
(12, 'Muller, VonRueden and Wilkinson', 'Bahia', 'Cidade A para Cidade B'),
(13, 'Bogisich-Hyatt', 'Pernambuco', 'Cidade Z para Povoado W'),
(14, 'Greenfelder, Runolfsdottir and Satterfield', 'São Paulo', 'Cidade A para Cidade B'),
(15, 'Sawayn-Murray', 'Rio de Janeiro', 'Vila X para Cidade Y'),
(16, 'O\'Connell-Hodkiewicz', 'Bahia', 'Cidade A para Cidade B'),
(17, 'Ebert, Hane and Terry', 'Pará', 'Cidade A para Cidade B'),
(18, 'Schmitt-Corkery', 'Rio Grande do Sul', 'Vila X para Cidade Y'),
(19, 'Kassulke-Hagenes', 'Paraná', 'Cidade A para Cidade B'),
(20, 'Wisozk-Torphy', 'Rio de Janeiro', 'Cidade A para Cidade B'),
(21, 'McDermott LLC', 'Ceará', 'Cidade Z para Povoado W'),
(22, 'Rutherford LLC', 'Ceará', 'Cidade Z para Povoado W'),
(23, 'Stiedemann-Runte', 'Pernambuco', 'Vila X para Cidade Y'),
(24, 'Beatty, Daniel and Ward', 'Rio Grande do Sul', 'Cidade A para Cidade B'),
(25, 'Hettinger, Frami and Volkman', 'Rio de Janeiro', 'Vila X para Cidade Y'),
(26, 'Harber-Wiza', 'Santa Catarina', 'Cidade Z para Povoado W'),
(27, 'Ernser LLC', 'Ceará', 'Cidade Z para Povoado W'),
(28, 'Lubowitz Group', 'São Paulo', 'Cidade A para Cidade B'),
(29, 'Jenkins-Daugherty', 'Rio Grande do Sul', 'Vila X para Cidade Y'),
(30, 'Schuppe, Hirthe and Jenkins', 'Bahia', 'Cidade A para Cidade B'),
(31, 'Rutherford-Marquardt', 'Rio Grande do Sul', 'Cidade Z para Povoado W'),
(32, 'Will-Bahringer', 'Pernambuco', 'Cidade Z para Povoado W'),
(33, 'Bruen, Renner and Yost', 'Minas Gerais', 'Cidade A para Cidade B'),
(34, 'Wilkinson-Kovacek', 'São Paulo', 'Vila X para Cidade Y'),
(35, 'McLaughlin LLC', 'Rio de Janeiro', 'Cidade Z para Povoado W'),
(36, 'Metz, Douglas and Jacobson', 'Bahia', 'Cidade A para Cidade B'),
(37, 'Mertz Inc', 'Pernambuco', 'Vila X para Cidade Y'),
(38, 'Cronin, Von and Hintz', 'Minas Gerais', 'Vila X para Cidade Y'),
(39, 'Bogan-Nader', 'Ceará', 'Cidade A para Cidade B'),
(40, 'Dach Group', 'Pará', 'Cidade Z para Povoado W'),
(41, 'Block, Block and Jacobson', 'Ceará', 'Cidade A para Cidade B'),
(42, 'Ledner Group', 'Santa Catarina', 'Vila X para Cidade Y'),
(43, 'Schuppe, Collins and Lebsack', 'Rio de Janeiro', 'Vila X para Cidade Y'),
(44, 'Koss, Roob and Blanda', 'Ceará', 'Cidade A para Cidade B'),
(45, 'Fritsch, Jacobi and Powlowski', 'São Paulo', 'Vila X para Cidade Y'),
(46, 'Sauer and Sons', 'Bahia', 'Vila X para Cidade Y'),
(47, 'Friesen-Torp', 'Pará', 'Vila X para Cidade Y'),
(48, 'Dietrich, Pagac and Hudson', 'Pernambuco', 'Vila X para Cidade Y'),
(49, 'Streich Group', 'Santa Catarina', 'Cidade Z para Povoado W'),
(50, 'Cartwright, Reilly and Smitham', 'Minas Gerais', 'Cidade A para Cidade B');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_cliente_07`
--

CREATE TABLE `telefone_cliente_07` (
  `A07_id` int NOT NULL,
  `A01_id` int NOT NULL,
  `A07_numero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_filial_27`
--

CREATE TABLE `telefone_filial_27` (
  `A27_id` int NOT NULL,
  `A20_id` int NOT NULL,
  `A27_telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `telefone_filial_27`
--

INSERT INTO `telefone_filial_27` (`A27_id`, `A20_id`, `A27_telefone`) VALUES
(1, 1, '1234-5678'),
(2, 1, '1234-5679'),
(3, 2, '2345-6789'),
(4, 2, '2345-6790'),
(5, 3, '3456-7890'),
(6, 3, '3456-7891'),
(7, 4, '4567-8901'),
(8, 4, '4567-8902'),
(9, 5, '5678-9012'),
(10, 5, '5678-9013'),
(11, 6, '6789-0123'),
(12, 6, '6789-0124'),
(13, 7, '7890-1234'),
(14, 7, '7890-1235'),
(15, 8, '8901-2345'),
(16, 8, '8901-2346'),
(17, 9, '9012-3456'),
(18, 9, '9012-3457'),
(19, 10, '0123-4567'),
(20, 10, '0123-4568'),
(21, 11, '1234-5670'),
(22, 11, '1234-5671'),
(23, 12, '2345-6781'),
(24, 12, '2345-6782'),
(25, 13, '3456-7892'),
(26, 13, '3456-7893'),
(27, 14, '4567-8903'),
(28, 14, '4567-8904'),
(29, 15, '5678-9014'),
(30, 15, '5678-9015'),
(31, 16, '6789-0125'),
(32, 16, '6789-0126'),
(33, 17, '7890-1236'),
(34, 17, '7890-1237'),
(35, 18, '8901-2347'),
(36, 18, '8901-2348'),
(37, 19, '9012-3458'),
(38, 19, '9012-3459'),
(39, 20, '0123-4569'),
(40, 20, '0123-4570');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_parceira_25`
--

CREATE TABLE `telefone_parceira_25` (
  `A25_id` int NOT NULL,
  `A08_id` int NOT NULL,
  `A25_telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_transportadora_24`
--

CREATE TABLE `telefone_transportadora_24` (
  `A24_id` int NOT NULL,
  `A16_id` int NOT NULL,
  `A24_telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_vendedor_26`
--

CREATE TABLE `telefone_vendedor_26` (
  `A26_id` int NOT NULL,
  `A14_id` int NOT NULL,
  `A26_telefone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transportadora_16`
--

CREATE TABLE `transportadora_16` (
  `A16_id` int NOT NULL,
  `A16_nome` varchar(255) NOT NULL,
  `A16_email` varchar(255) DEFAULT NULL,
  `A16_cnpj` varchar(255) NOT NULL,
  `A16_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `transportadora_16`
--

INSERT INTO `transportadora_16` (`A16_id`, `A16_nome`, `A16_email`, `A16_cnpj`, `A16_estado`) VALUES
(1, 'Pagac-Fritsch', 'tlangham0@google.com.au', '98942991636108', 'Ativo'),
(2, 'Mohr, Daniel and Douglas', 'hrogerson1@zimbio.com', '13670996115095', 'Ativo'),
(3, 'Friesen, Smitham and Swift', 'vbridel2@latimes.com', '72609886468655', 'Ativo'),
(4, 'Schroeder-Reichert', 'mmcilriach3@mayoclinic.com', '75465350533685', 'Desativo'),
(5, 'Zulauf, Mertz and Kutch', 'hkatzmann4@ox.ac.uk', '37205800008829', 'Desativo'),
(6, 'Rohan, Schultz and Stiedemann', 'estoad5@cdbaby.com', '69775602568843', 'Desativo'),
(7, 'Mertz, Bosco and Homenick', 'eshevlin6@vimeo.com', '99449540614576', 'Desativo'),
(8, 'Howe Inc', 'bpryde7@arizona.edu', '79673221219234', 'Desativo'),
(9, 'Hamill-Becker', 'dbiggerdike8@gravatar.com', '44959233040826', 'Ativo'),
(10, 'Mante and Sons', 'hkunes9@blog.com', '79173864047184', 'Ativo'),
(11, 'Stracke and Sons', 'nstrobanda@cloudflare.com', '57250571697346', 'Desativo'),
(12, 'Medhurst, Gottlieb and Keebler', 'rlewsieb@illinois.edu', '62983315889690', 'Desativo'),
(13, 'McCullough LLC', 'gsewartc@google.com.br', '78138311877297', 'Ativo'),
(14, 'Jast, Howe and Denesik', 'aduttond@loc.gov', '86165899098814', 'Ativo'),
(15, 'McDermott and Sons', 'btourmelle@xrea.com', '85565631026989', 'Ativo'),
(16, 'Jenkins, Cronin and Waters', 'jchantillonf@over-blog.com', '95096582194635', 'Desativo'),
(17, 'Tillman Group', 'nkitchingmang@mit.edu', '13236674723634', 'Desativo'),
(18, 'Maggio Group', 'gsaigerh@xinhuanet.com', '31852145261993', 'Ativo'),
(19, 'Hickle, Bosco and Bednar', 'kearsmani@blogtalkradio.com', '66719248500178', 'Desativo'),
(20, 'Donnelly-Johnson', 'mgoshawkj@jalbum.net', '74889363963464', 'Ativo'),
(21, 'Kihn-Cummings', 'rfilliskirkk@huffingtonpost.com', '16356739909850', 'Desativo'),
(22, 'Zulauf, Keeling and Schinner', 'cfilyaevl@army.mil', '70771350061726', 'Ativo'),
(23, 'Beahan-Beahan', 'wsealym@list-manage.com', '48623653567129', 'Desativo'),
(24, 'Kris, Wintheiser and Terry', 'rbanden@unesco.org', '28309261271834', 'Desativo'),
(25, 'Windler LLC', 'gjacobbeo@fastcompany.com', '92657214475531', 'Ativo'),
(26, 'Stracke, Toy and Kessler', 'srigmondp@cbsnews.com', '83448735799288', 'Ativo'),
(27, 'Maggio, Stokes and Dach', 'mbubeerq@amazon.com', '10191942238219', 'Desativo'),
(28, 'Weimann and Sons', 'mhumphreyr@privacy.gov.au', '65265113288901', 'Desativo'),
(29, 'Terry-Gleason', 'gfoxwells@smugmug.com', '51051062109617', 'Desativo'),
(30, 'Rowe, Davis and Bins', 'rplett@reddit.com', '87787075634461', 'Desativo'),
(31, 'Mante, Casper and Schumm', 'ccotelardu@amazon.co.uk', '34566748015032', 'Ativo'),
(32, 'Bartoletti, Hammes and Casper', 'gtabertv@vinaora.com', '27481563114825', 'Desativo'),
(33, 'Macejkovic-Rempel', 'pgrabenw@networkadvertising.org', '64969085530920', 'Desativo'),
(34, 'Tremblay, Walker and Johns', 'ksegrottx@apache.org', '12123521941874', 'Ativo'),
(35, 'Bailey, Treutel and Boehm', 'lmacmarcuisy@mlb.com', '35337712799904', 'Desativo'),
(36, 'Runte and Sons', 'scafferkyz@amazon.co.uk', '19593598530555', 'Desativo'),
(37, 'Kilback-Simonis', 'kovery10@eepurl.com', '86126191301121', 'Desativo'),
(38, 'Bergstrom-DuBuque', 'lemer11@smh.com.au', '28055368822500', 'Ativo'),
(39, 'Swaniawski, Osinski and Kiehn', 'yworley12@123-reg.co.uk', '84390347339330', 'Desativo'),
(40, 'Hegmann, Senger and Quigley', 'mmcwhan13@springer.com', '55387954441433', 'Ativo'),
(41, 'Farrell-Kautzer', 'tmacgruer14@irs.gov', '39955785540452', 'Desativo'),
(42, 'Gleason, Batz and King', 'brubberts15@deviantart.com', '82409287274324', 'Ativo'),
(43, 'Volkman and Sons', 'nfallon16@jalbum.net', '59857599483042', 'Ativo'),
(44, 'Schulist Group', 'pkeilty17@google.es', '57848796379802', 'Ativo'),
(45, 'Kuhlman-Murazik', 'avillaron18@cam.ac.uk', '11266283902629', 'Desativo'),
(46, 'Feil and Sons', 'eyeowell19@springer.com', '36699136692381', 'Ativo'),
(47, 'Lakin LLC', 'nbiles1a@ucla.edu', '95964485470796', 'Desativo'),
(48, 'Nitzsche, Gibson and Feeney', 'ghealeas1b@lycos.com', '82452943024533', 'Desativo'),
(49, 'Schamberger Group', 'ciacovino1c@behance.net', '19525393932998', 'Desativo'),
(50, 'Graham, Dooley and Terry', 'ehinstridge1d@yahoo.com', '27428836975666', 'Desativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor_14`
--

CREATE TABLE `vendedor_14` (
  `A14_id` int NOT NULL,
  `A13_id` int NOT NULL,
  `A14_cpf` varchar(255) NOT NULL,
  `A14_nome` varchar(255) NOT NULL,
  `A14_dataNasc` date NOT NULL,
  `A14_terminoContrato` date NOT NULL,
  `A14_email` varchar(255) NOT NULL,
  `A14_codigoDeUso` varchar(255) NOT NULL,
  `A14_estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `caixa_11`
--
ALTER TABLE `caixa_11`
  ADD PRIMARY KEY (`A11_id`),
  ADD KEY `CAIXA_11_FKIndex1` (`A29_id`),
  ADD KEY `CAIXA_11_FKIndex2` (`A20_id`),
  ADD KEY `IFK_Tem` (`A29_id`),
  ADD KEY `IFK_Possui` (`A20_id`);

--
-- Índices para tabela `cargo_30`
--
ALTER TABLE `cargo_30`
  ADD PRIMARY KEY (`A30_id`);

--
-- Índices para tabela `categoria_19`
--
ALTER TABLE `categoria_19`
  ADD PRIMARY KEY (`A19_id`);

--
-- Índices para tabela `classificacao_cliente_31`
--
ALTER TABLE `classificacao_cliente_31`
  ADD PRIMARY KEY (`A31_id`),
  ADD KEY `CLASSIFICACAO_CLIENTE_31_FKIndex1` (`A01_id`),
  ADD KEY `IFK_Tem` (`A01_id`);

--
-- Índices para tabela `classificacao_produto_18`
--
ALTER TABLE `classificacao_produto_18`
  ADD PRIMARY KEY (`A18_id`);

--
-- Índices para tabela `cliente_01`
--
ALTER TABLE `cliente_01`
  ADD PRIMARY KEY (`A01_id`);

--
-- Índices para tabela `comissao_13`
--
ALTER TABLE `comissao_13`
  ADD PRIMARY KEY (`A13_id`);

--
-- Índices para tabela `dispositivo_acesso_21`
--
ALTER TABLE `dispositivo_acesso_21`
  ADD PRIMARY KEY (`A21_id`);

--
-- Índices para tabela `endereco_06`
--
ALTER TABLE `endereco_06`
  ADD PRIMARY KEY (`A06_id`),
  ADD KEY `ENDERECO_06_FKIndex1` (`A01_id`),
  ADD KEY `ENDERECO_06_FKIndex2` (`A02_id`),
  ADD KEY `ENDERECO_06_FKIndex3` (`A20_id`),
  ADD KEY `ENDERECO_06_FKIndex4` (`A08_id`),
  ADD KEY `ENDERECO_06_FKIndex5` (`A16_id`),
  ADD KEY `ENDERECO_06_FKIndex6` (`A10_id`),
  ADD KEY `IFK_Tem_Cliente` (`A01_id`),
  ADD KEY `IFK_Reside` (`A02_id`),
  ADD KEY `IFK_Tem_Filial` (`A20_id`),
  ADD KEY `IFK_Tem_Parceria` (`A08_id`),
  ADD KEY `IFK_Tem_Transportadora` (`A16_id`),
  ADD KEY `IFK_Tem_Fornecedor` (`A10_id`);

--
-- Índices para tabela `endereco_emergencial_32`
--
ALTER TABLE `endereco_emergencial_32`
  ADD PRIMARY KEY (`A32_id`),
  ADD KEY `ENDERECO_EMERGENCIAL_32_FKIndex1` (`A01_id`),
  ADD KEY `ENDERECO_EMERGENCIAL_32_FKIndex2` (`A02_id`),
  ADD KEY `IFK_Tem` (`A01_id`),
  ADD KEY `IFK_Possui` (`A02_id`);

--
-- Índices para tabela `estoque_05`
--
ALTER TABLE `estoque_05`
  ADD PRIMARY KEY (`A05_id`),
  ADD KEY `ESTOQUE_05_FKIndex1` (`A04_id`),
  ADD KEY `IFK_Compoe` (`A04_id`);

--
-- Índices para tabela `filial_20`
--
ALTER TABLE `filial_20`
  ADD PRIMARY KEY (`A20_id`);

--
-- Índices para tabela `forma_pagamento_17`
--
ALTER TABLE `forma_pagamento_17`
  ADD PRIMARY KEY (`A17_id`);

--
-- Índices para tabela `fornecedor_10`
--
ALTER TABLE `fornecedor_10`
  ADD PRIMARY KEY (`A10_id`);

--
-- Índices para tabela `funcionario_29`
--
ALTER TABLE `funcionario_29`
  ADD PRIMARY KEY (`A29_id`),
  ADD KEY `FUNCIONARIO_29_FKIndex1` (`A30_id`),
  ADD KEY `IFK_Possui` (`A30_id`);

--
-- Índices para tabela `item_pedido_22`
--
ALTER TABLE `item_pedido_22`
  ADD PRIMARY KEY (`A03_id`,`A04_id`),
  ADD KEY `PEDIDO_03_has_PRODUTO_04_FKIndex1` (`A03_id`),
  ADD KEY `PEDIDO_03_has_PRODUTO_04_FKIndex2` (`A04_id`),
  ADD KEY `IFK_Tem_Pedido` (`A03_id`),
  ADD KEY `IFK_Tem_Produto` (`A04_id`);

--
-- Índices para tabela `lote_produto_23`
--
ALTER TABLE `lote_produto_23`
  ADD PRIMARY KEY (`A23_id`),
  ADD KEY `LOTE_PRODUTO_23_FKIndex1` (`A10_id`),
  ADD KEY `LOTE_PRODUTO_23_FKIndex2` (`A04_id`),
  ADD KEY `LOTE_PRODUTO_23_FKIndex3` (`A12_id`),
  ADD KEY `IFK_Fornece_Fornecedor` (`A10_id`),
  ADD KEY `IFK_Fornece_Produto` (`A04_id`),
  ADD KEY `IFK_Gera_Nota` (`A12_id`);

--
-- Índices para tabela `nota_fiscal_12`
--
ALTER TABLE `nota_fiscal_12`
  ADD PRIMARY KEY (`A12_id`);

--
-- Índices para tabela `parceria_08`
--
ALTER TABLE `parceria_08`
  ADD PRIMARY KEY (`A08_id`),
  ADD KEY `PARCERIA_08_FKIndex1` (`A02_id`),
  ADD KEY `IFK_Reside` (`A02_id`);

--
-- Índices para tabela `pedido_03`
--
ALTER TABLE `pedido_03`
  ADD PRIMARY KEY (`A03_id`),
  ADD KEY `PEDIDO_03_FKIndex1` (`A01_id`),
  ADD KEY `PEDIDO_03_FKIndex2` (`A17_id`),
  ADD KEY `PEDIDO_03_FKIndex3` (`A16_id`),
  ADD KEY `PEDIDO_03_FKIndex4` (`A12_id`),
  ADD KEY `PEDIDO_03_FKIndex5` (`A21_id`),
  ADD KEY `IFK_Faz` (`A01_id`),
  ADD KEY `IFK_Paga` (`A17_id`),
  ADD KEY `IFK_Transporta` (`A16_id`),
  ADD KEY `IFK_Gera` (`A12_id`),
  ADD KEY `IFK_Possibilita` (`A21_id`);

--
-- Índices para tabela `plataforma_15`
--
ALTER TABLE `plataforma_15`
  ADD PRIMARY KEY (`A15_id`);

--
-- Índices para tabela `plataforma_do_vendedor_28`
--
ALTER TABLE `plataforma_do_vendedor_28`
  ADD PRIMARY KEY (`A14_id`,`A15_id`),
  ADD KEY `VENDEDOR_14_has_PLATAFORMA_15_FKIndex1` (`A14_id`),
  ADD KEY `VENDEDOR_14_has_PLATAFORMA_15_FKIndex2` (`A15_id`),
  ADD KEY `IFK_Utiliza_Vendedor` (`A14_id`),
  ADD KEY `IFK_Utiliza_Plataforma` (`A15_id`);

--
-- Índices para tabela `produto_04`
--
ALTER TABLE `produto_04`
  ADD PRIMARY KEY (`A04_id`),
  ADD KEY `PRODUTO_04_FKIndex1` (`A18_id`),
  ADD KEY `PRODUTO_04_FKIndex2` (`A19_id`),
  ADD KEY `IFK_Possui_Classificacao` (`A18_id`),
  ADD KEY `IFK_Possui_Categoria` (`A19_id`);

--
-- Índices para tabela `promocao_09`
--
ALTER TABLE `promocao_09`
  ADD PRIMARY KEY (`A09_id`),
  ADD KEY `PROMOCAO_09_FKIndex1` (`A04_id`),
  ADD KEY `IFK_possui` (`A04_id`);

--
-- Índices para tabela `regiao_02`
--
ALTER TABLE `regiao_02`
  ADD PRIMARY KEY (`A02_id`);

--
-- Índices para tabela `telefone_cliente_07`
--
ALTER TABLE `telefone_cliente_07`
  ADD PRIMARY KEY (`A07_id`),
  ADD KEY `TELEFONE_07_FKIndex1` (`A01_id`),
  ADD KEY `IFK_Possui` (`A01_id`);

--
-- Índices para tabela `telefone_filial_27`
--
ALTER TABLE `telefone_filial_27`
  ADD PRIMARY KEY (`A27_id`),
  ADD KEY `TELEFONE_FILIAL_27_FKIndex1` (`A20_id`),
  ADD KEY `IFK_Possui` (`A20_id`);

--
-- Índices para tabela `telefone_parceira_25`
--
ALTER TABLE `telefone_parceira_25`
  ADD PRIMARY KEY (`A25_id`),
  ADD KEY `TELEFONE_PARCEIRA_25_FKIndex1` (`A08_id`),
  ADD KEY `IFK_Possui` (`A08_id`);

--
-- Índices para tabela `telefone_transportadora_24`
--
ALTER TABLE `telefone_transportadora_24`
  ADD PRIMARY KEY (`A24_id`),
  ADD KEY `TELEFONE_TRANSPORTADORA_24_FKIndex1` (`A16_id`),
  ADD KEY `IFK_Possui` (`A16_id`);

--
-- Índices para tabela `telefone_vendedor_26`
--
ALTER TABLE `telefone_vendedor_26`
  ADD PRIMARY KEY (`A26_id`),
  ADD KEY `TELEFONE_VENDEDOR_26_FKIndex1` (`A14_id`),
  ADD KEY `IFK_Possui` (`A14_id`);

--
-- Índices para tabela `transportadora_16`
--
ALTER TABLE `transportadora_16`
  ADD PRIMARY KEY (`A16_id`);

--
-- Índices para tabela `vendedor_14`
--
ALTER TABLE `vendedor_14`
  ADD PRIMARY KEY (`A14_id`),
  ADD KEY `VENDEDOR_14_FKIndex1` (`A13_id`),
  ADD KEY `IFK_Recebe` (`A13_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `caixa_11`
--
ALTER TABLE `caixa_11`
  MODIFY `A11_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargo_30`
--
ALTER TABLE `cargo_30`
  MODIFY `A30_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `categoria_19`
--
ALTER TABLE `categoria_19`
  MODIFY `A19_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `classificacao_cliente_31`
--
ALTER TABLE `classificacao_cliente_31`
  MODIFY `A31_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `classificacao_produto_18`
--
ALTER TABLE `classificacao_produto_18`
  MODIFY `A18_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `cliente_01`
--
ALTER TABLE `cliente_01`
  MODIFY `A01_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de tabela `comissao_13`
--
ALTER TABLE `comissao_13`
  MODIFY `A13_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `dispositivo_acesso_21`
--
ALTER TABLE `dispositivo_acesso_21`
  MODIFY `A21_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `endereco_06`
--
ALTER TABLE `endereco_06`
  MODIFY `A06_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco_emergencial_32`
--
ALTER TABLE `endereco_emergencial_32`
  MODIFY `A32_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estoque_05`
--
ALTER TABLE `estoque_05`
  MODIFY `A05_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `filial_20`
--
ALTER TABLE `filial_20`
  MODIFY `A20_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `forma_pagamento_17`
--
ALTER TABLE `forma_pagamento_17`
  MODIFY `A17_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedor_10`
--
ALTER TABLE `fornecedor_10`
  MODIFY `A10_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `funcionario_29`
--
ALTER TABLE `funcionario_29`
  MODIFY `A29_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lote_produto_23`
--
ALTER TABLE `lote_produto_23`
  MODIFY `A23_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `nota_fiscal_12`
--
ALTER TABLE `nota_fiscal_12`
  MODIFY `A12_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de tabela `parceria_08`
--
ALTER TABLE `parceria_08`
  MODIFY `A08_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido_03`
--
ALTER TABLE `pedido_03`
  MODIFY `A03_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plataforma_15`
--
ALTER TABLE `plataforma_15`
  MODIFY `A15_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `plataforma_do_vendedor_28`
--
ALTER TABLE `plataforma_do_vendedor_28`
  MODIFY `A14_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto_04`
--
ALTER TABLE `produto_04`
  MODIFY `A04_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `promocao_09`
--
ALTER TABLE `promocao_09`
  MODIFY `A09_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `regiao_02`
--
ALTER TABLE `regiao_02`
  MODIFY `A02_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `telefone_cliente_07`
--
ALTER TABLE `telefone_cliente_07`
  MODIFY `A07_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefone_filial_27`
--
ALTER TABLE `telefone_filial_27`
  MODIFY `A27_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `telefone_parceira_25`
--
ALTER TABLE `telefone_parceira_25`
  MODIFY `A25_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefone_transportadora_24`
--
ALTER TABLE `telefone_transportadora_24`
  MODIFY `A24_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefone_vendedor_26`
--
ALTER TABLE `telefone_vendedor_26`
  MODIFY `A26_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transportadora_16`
--
ALTER TABLE `transportadora_16`
  MODIFY `A16_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `vendedor_14`
--
ALTER TABLE `vendedor_14`
  MODIFY `A14_id` int NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `caixa_11`
--
ALTER TABLE `caixa_11`
  ADD CONSTRAINT `caixa_11_ibfk_1` FOREIGN KEY (`A29_id`) REFERENCES `funcionario_29` (`A29_id`),
  ADD CONSTRAINT `caixa_11_ibfk_2` FOREIGN KEY (`A20_id`) REFERENCES `filial_20` (`A20_id`);

--
-- Limitadores para a tabela `classificacao_cliente_31`
--
ALTER TABLE `classificacao_cliente_31`
  ADD CONSTRAINT `classificacao_cliente_31_ibfk_1` FOREIGN KEY (`A01_id`) REFERENCES `cliente_01` (`A01_id`);

--
-- Limitadores para a tabela `endereco_06`
--
ALTER TABLE `endereco_06`
  ADD CONSTRAINT `endereco_06_ibfk_1` FOREIGN KEY (`A01_id`) REFERENCES `cliente_01` (`A01_id`),
  ADD CONSTRAINT `endereco_06_ibfk_2` FOREIGN KEY (`A02_id`) REFERENCES `regiao_02` (`A02_id`),
  ADD CONSTRAINT `endereco_06_ibfk_3` FOREIGN KEY (`A20_id`) REFERENCES `filial_20` (`A20_id`),
  ADD CONSTRAINT `endereco_06_ibfk_4` FOREIGN KEY (`A08_id`) REFERENCES `parceria_08` (`A08_id`),
  ADD CONSTRAINT `endereco_06_ibfk_5` FOREIGN KEY (`A16_id`) REFERENCES `transportadora_16` (`A16_id`),
  ADD CONSTRAINT `endereco_06_ibfk_6` FOREIGN KEY (`A10_id`) REFERENCES `fornecedor_10` (`A10_id`);

--
-- Limitadores para a tabela `endereco_emergencial_32`
--
ALTER TABLE `endereco_emergencial_32`
  ADD CONSTRAINT `endereco_emergencial_32_ibfk_1` FOREIGN KEY (`A01_id`) REFERENCES `cliente_01` (`A01_id`),
  ADD CONSTRAINT `endereco_emergencial_32_ibfk_2` FOREIGN KEY (`A02_id`) REFERENCES `regiao_02` (`A02_id`);

--
-- Limitadores para a tabela `estoque_05`
--
ALTER TABLE `estoque_05`
  ADD CONSTRAINT `estoque_05_ibfk_1` FOREIGN KEY (`A04_id`) REFERENCES `produto_04` (`A04_id`);

--
-- Limitadores para a tabela `funcionario_29`
--
ALTER TABLE `funcionario_29`
  ADD CONSTRAINT `funcionario_29_ibfk_1` FOREIGN KEY (`A30_id`) REFERENCES `cargo_30` (`A30_id`);

--
-- Limitadores para a tabela `item_pedido_22`
--
ALTER TABLE `item_pedido_22`
  ADD CONSTRAINT `item_pedido_22_ibfk_1` FOREIGN KEY (`A03_id`) REFERENCES `pedido_03` (`A03_id`),
  ADD CONSTRAINT `item_pedido_22_ibfk_2` FOREIGN KEY (`A04_id`) REFERENCES `produto_04` (`A04_id`);

--
-- Limitadores para a tabela `lote_produto_23`
--
ALTER TABLE `lote_produto_23`
  ADD CONSTRAINT `lote_produto_23_ibfk_1` FOREIGN KEY (`A10_id`) REFERENCES `fornecedor_10` (`A10_id`),
  ADD CONSTRAINT `lote_produto_23_ibfk_2` FOREIGN KEY (`A04_id`) REFERENCES `produto_04` (`A04_id`),
  ADD CONSTRAINT `lote_produto_23_ibfk_3` FOREIGN KEY (`A12_id`) REFERENCES `nota_fiscal_12` (`A12_id`);

--
-- Limitadores para a tabela `parceria_08`
--
ALTER TABLE `parceria_08`
  ADD CONSTRAINT `parceria_08_ibfk_1` FOREIGN KEY (`A02_id`) REFERENCES `regiao_02` (`A02_id`);

--
-- Limitadores para a tabela `pedido_03`
--
ALTER TABLE `pedido_03`
  ADD CONSTRAINT `pedido_03_ibfk_1` FOREIGN KEY (`A01_id`) REFERENCES `cliente_01` (`A01_id`),
  ADD CONSTRAINT `pedido_03_ibfk_2` FOREIGN KEY (`A17_id`) REFERENCES `forma_pagamento_17` (`A17_id`),
  ADD CONSTRAINT `pedido_03_ibfk_3` FOREIGN KEY (`A16_id`) REFERENCES `transportadora_16` (`A16_id`),
  ADD CONSTRAINT `pedido_03_ibfk_4` FOREIGN KEY (`A12_id`) REFERENCES `nota_fiscal_12` (`A12_id`),
  ADD CONSTRAINT `pedido_03_ibfk_5` FOREIGN KEY (`A21_id`) REFERENCES `dispositivo_acesso_21` (`A21_id`);

--
-- Limitadores para a tabela `plataforma_do_vendedor_28`
--
ALTER TABLE `plataforma_do_vendedor_28`
  ADD CONSTRAINT `plataforma_do_vendedor_28_ibfk_1` FOREIGN KEY (`A14_id`) REFERENCES `vendedor_14` (`A14_id`),
  ADD CONSTRAINT `plataforma_do_vendedor_28_ibfk_2` FOREIGN KEY (`A15_id`) REFERENCES `plataforma_15` (`A15_id`);

--
-- Limitadores para a tabela `produto_04`
--
ALTER TABLE `produto_04`
  ADD CONSTRAINT `produto_04_ibfk_1` FOREIGN KEY (`A18_id`) REFERENCES `classificacao_produto_18` (`A18_id`),
  ADD CONSTRAINT `produto_04_ibfk_2` FOREIGN KEY (`A19_id`) REFERENCES `categoria_19` (`A19_id`);

--
-- Limitadores para a tabela `promocao_09`
--
ALTER TABLE `promocao_09`
  ADD CONSTRAINT `promocao_09_ibfk_1` FOREIGN KEY (`A04_id`) REFERENCES `produto_04` (`A04_id`);

--
-- Limitadores para a tabela `telefone_cliente_07`
--
ALTER TABLE `telefone_cliente_07`
  ADD CONSTRAINT `telefone_cliente_07_ibfk_1` FOREIGN KEY (`A01_id`) REFERENCES `cliente_01` (`A01_id`);

--
-- Limitadores para a tabela `telefone_filial_27`
--
ALTER TABLE `telefone_filial_27`
  ADD CONSTRAINT `telefone_filial_27_ibfk_1` FOREIGN KEY (`A20_id`) REFERENCES `filial_20` (`A20_id`);

--
-- Limitadores para a tabela `telefone_parceira_25`
--
ALTER TABLE `telefone_parceira_25`
  ADD CONSTRAINT `telefone_parceira_25_ibfk_1` FOREIGN KEY (`A08_id`) REFERENCES `parceria_08` (`A08_id`);

--
-- Limitadores para a tabela `telefone_transportadora_24`
--
ALTER TABLE `telefone_transportadora_24`
  ADD CONSTRAINT `telefone_transportadora_24_ibfk_1` FOREIGN KEY (`A16_id`) REFERENCES `transportadora_16` (`A16_id`);

--
-- Limitadores para a tabela `telefone_vendedor_26`
--
ALTER TABLE `telefone_vendedor_26`
  ADD CONSTRAINT `telefone_vendedor_26_ibfk_1` FOREIGN KEY (`A14_id`) REFERENCES `vendedor_14` (`A14_id`);

--
-- Limitadores para a tabela `vendedor_14`
--
ALTER TABLE `vendedor_14`
  ADD CONSTRAINT `vendedor_14_ibfk_1` FOREIGN KEY (`A13_id`) REFERENCES `comissao_13` (`A13_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
