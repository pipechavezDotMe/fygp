-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2021 a las 01:01:21
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fygp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_periodos`
--

CREATE TABLE `app_periodos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(300) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `app_periodos`
--

INSERT INTO `app_periodos` (`id`, `titulo`, `create_at`, `update_at`, `slug`) VALUES
(20, '2018-1', '2021-04-27 20:37:55', '2021-04-27 20:44:58', '2016-1'),
(21, '2018-2', '2021-04-27 20:45:04', '2021-04-27 20:45:04', '2018-2'),
(22, '2018-3', '2021-04-27 20:45:10', '2021-04-27 20:45:10', '2018-3'),
(23, '2018-4', '2021-04-27 20:45:16', '2021-04-27 20:45:16', '2018-4'),
(24, '2018-5', '2021-04-27 20:45:22', '2021-04-27 20:45:22', '2018-5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_proyecto`
--

CREATE TABLE `app_proyecto` (
  `id` int(11) NOT NULL,
  `experiencia` varchar(300) NOT NULL,
  `ids` int(11) DEFAULT NULL,
  `inicio` datetime NOT NULL,
  `duracion` varchar(300) NOT NULL,
  `descripcion` longtext NOT NULL,
  `herramientas` longtext NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `unidades` int(11) DEFAULT NULL,
  `departametos` int(11) DEFAULT NULL,
  `ciudades` int(11) DEFAULT NULL,
  `consultores` int(11) DEFAULT NULL,
  `asesorados` int(11) DEFAULT NULL,
  `aliados` varchar(300) NOT NULL,
  `contratantes` varchar(300) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `slug` varchar(50) NOT NULL,
  `user_id` int(11),
  `periodos_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `app_proyecto`
--

INSERT INTO `app_proyecto` (`id`, `experiencia`, `ids`, `inicio`, `duracion`, `descripcion`, `herramientas`, `foto`, `unidades`, `departametos`, `ciudades`, `consultores`, `asesorados`, `aliados`, `contratantes`, `create_at`, `update_at`, `slug`, `user_id`, `periodos_id`) VALUES
(1, 'Moda Productiva y competitiva I', 0, '2017-09-15 15:27:32', '7.3 Meses', 'En consorcio con la firma Avance Organizacional Consultores, asesoramos y brindamos herramientas para mejorar su productividad y competitividad a unidades productivas de las localidades de Restrepo y Tunjuelito, en la ciudad e Bogotá D.C., pertenecientes a los sectores moda, cuero, calzado y confecciones. Todo esto mediante la operación de los Centros de Servicio e Innovación Empresarial – CSEI, dispuestos por la Alcaldía Mayor de Bogotá D.C. en la localidades en mención.', ' <p>Encuentros lúdico – empresariales sobre gestión del cambio.</br>\r\n                                          Talleres de fortalecimiento de habilidades empresariales.</br>\r\n                                          Rueda de negocios.</br>\r\n                                          Diagnóstico.</b', 'proyectos/01_alcaldia_bogot.jpg', 225, 1, 1, 12, 450, 'img/logos/34_analdex.png', 'img/logos/02_logo_bogota_mejor_todos.png', '2021-04-27 15:30:02', '2021-04-27 20:19:32', 'moda-productiva-y-competitiva-i', NULL, NULL),
(2, 'Productividad empresarial rural en empresas de turismo rural, café, cacao y hortofrutícolas', 1900, '2018-02-14 15:31:17', '14.7 Meses', 'En consorcio con la Fundación del Alto Magdalena y en alianza con la Fundación Amanecer, realizamos el fortalecimiento, en áreas como mercadeo, producción, planeación, creación de valor e innovación, a unidades productivas en entornos rurales de los sectores turismo, cacao, café y hortofrutícola, mejorando su productividad en un 8% o más.', ' <p>\r\n                                          Diagnóstico.</br>\r\n                                          Plan de acción.</br>\r\n                                          2 Soluciones empresariales.</br>\r\n                                          Asesoría en core de negocio.</p>', 'proyectos/02_alcaldia_bogot.jpg', 375, 10, 83, 54, 750, 'img/03_alto_magadalena_y_fundacion_amanecer.png', 'img/logos/03_fiducoldexColombiaProductiva.png', '2021-04-27 15:34:59', '2021-04-27 20:20:01', 'productividad-empresarial-rural-en-empresas-de-tur', NULL, NULL),
(3, 'Moda productiva y competitiva II', 1930, '2018-06-27 15:34:59', '5.1 Meses', 'En consorcio con la firma Avance Organizacional Consultores, asesoramos y brindamos herramientas para mejorar su productividad y competitividad a unidades productivas de las localidades de Restrepo y Tunjuelito, en la ciudad e Bogotá D.C., pertenecientes a los sectores moda, cuero, calzado y confecciones. Todo esto mediante la operación de los Centros de Servicio e Innovación Empresarial – CSEI, dispuestos por la Alcaldía Mayor de Bogotá D.C. en la localidades en mención.', ' <p>Diagnóstico.</br>\r\n                                          Talleres de fortalecimiento de habilidades empresariales.</br>\r\n                                          Asistencia técnica en temas de producción y comercialización.</p>', 'proyectos/03_FIDUCOLDEX.jpg', 100, 1, 1, 12, 200, 'img/04_logo_avance_organizacional.png', 'img/logos/04_logo_bogota_mejor_todos.png', '2021-04-27 15:36:51', '2021-04-27 15:36:51', 'moda-productiva-y-competitiva-ii', NULL, NULL),
(4, 'Herramientas de marketing digital en el sector turismo', 1900, '2018-08-21 15:36:52', '11.1 Meses', 'En consorcio con PI Interactiva, capacitamos a empresas del sector turismo, ubicadas en entornos rurales de los departamentos de Chocó, Magdalena y Tolima, para desarrollar competencias que les permitieran implementar una estrategia de marketing digital con el fin de ampliar su presencia internacional y tener acceso a nuevos mercados a través de herramientas digitales y canales disponibles para ello.', '<p>Diagnóstico.</br>\r\n                                          Talleres fortalecimientos competencias digitales.</br>\r\n                                          Estrategia de marketing digital.</br>\r\n                                          Evaluación de impacto.</p>', 'proyectos/05_FIDUCOLDEX.jpg', 48, 3, 6, 6, 144, 'img/04_pi_interactiva.png', 'img/logos/05_fiducoldexColombiaProductiva.png', '2021-04-27 15:39:36', '2021-04-27 15:39:36', 'herramientas-de-marketing-digital-en-el-sector-tur', NULL, NULL),
(5, 'Ruta de Internacionalización de Bogotá - RIBE', 1600, '2018-07-26 15:40:24', '6.1 Meses', 'En consorcio con la Asociación Nacional de Comercio Exterior - ANALDEX, desarrollamos un proceso de fortalecimiento empresarial orientado a la internacionalizaciòn de un grupo de empresas exportadoras o con potencial exportador de la ciudad de Bogotà D.C., de los sectores salud, agroindustria, industrias en movimiento, cosméticos, calzado, cuero y moda.', '<p>\r\n                                          Diagnóstico capacidad exportadora.</br>\r\n                                          Plan de internacionalzación.</br>\r\n                                          Asistencia técnica para fortalecer procesos de venta en el exterior.</p>', 'proyectos/02_alcaldia_bogot_VQ7xe5X.jpg', 45, 1, 1, 8, 90, 'img/logos/34_analdex.png', 'img/logos/02_logo_bogota_mejor_todos.png', '2021-04-27 15:43:19', '2021-04-27 15:43:19', 'ruta-de-internacionalizacion-de-bogota-ribe', NULL, NULL),
(6, 'Fábricas de productividad  - Especial Microempresas', 1930, '2019-09-01 15:43:38', '10 Meses', 'En joint venture con la Asociación Colombiana de Pequeños Industriales – ACOPI, operamos el proyecto Fábricas de Productividad - Especial Microempresas, apoyando el desarrollo metodológico de la herramienta automatizada de diagnóstico de las microempresas y el modelo de consultoría asociado, así como la implementación de los mismos en microempresas de agroindustria, manufactura y servicios,  que le permitió mejorar su productividad, en promedio, en un 8% o más.', '  <p>Diagnóstico.</br>\r\n                                          Plan de trabajo.</br>\r\n                                          2 Soluciones empresariales.</p>', 'proyectos/06_ACOPI.jpg', 280, 9, 20, 56, 560, 'img/06_soluciones_socialmente_sostenibles.png', 'img/logos/06_Acopi_fiducoldexColombiaProductiva.png', '2021-04-27 15:46:03', '2021-04-27 15:46:03', 'fabricas-de-productividad-especial-microempresas', NULL, NULL),
(7, 'Asistencia técnica planes de negocio programas de desarrollo y paz', 1600, '2020-06-10 15:46:03', '4 Meses', 'Apoyamos la ruta construida para la consolidación de las iniciativas de sostenibilidad financiera de los Programas de Desarrollo y Paz - PDP y de la Redprodepaz, desde un asesoramiento especializado en planes y modelos de negocio. Las iniciativas estaban relacionadas con negocios de producción, transformación y  comercialización de productos agropecuarios, y la prestación de servicios ambientales.', ' <p> Diagnóstico.</br>\r\n                                          Viabilidad técnica.</br>\r\n                                          Viabilidad financiera.</br>\r\n                                          Modelo de negocio. </br>\r\n                                          Figura jurídica. </br>\r\n                                          Estudio de mercado. </br>\r\n                                          Estrategia de mercadeo.</p>', 'proyectos/07_GIZ.jpg', 13, 12, 13, 18, 39, 'img/06_soluciones_socialmente_sostenibles.png', 'img/logos/07_Giz_Agencia_coperacion_alemana.png', '2021-04-27 15:48:00', '2021-04-27 15:48:01', 'asistencia-tecnica-planes-de-negocio-programas-de-', NULL, NULL),
(8, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada I', 1900, '2017-10-23 15:48:01', '3.1 Meses', 'Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en asuntos estratégicos.', ' <p>Proyección financiera y operativa.</br>\r\n                                          Análisis oferta comercial.</br>\r\n                                          Construcción de caso de negocio.</p>', 'proyectos/08_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/08_Renata.png', '2021-04-27 15:49:58', '2021-04-27 15:49:58', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(9, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada II', 1930, '2018-01-26 15:49:59', '6 Meses', 'Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en asuntos comerciales, operativos, financieros  y de proyectos.', ' <p>Proyección financiera y operativa.</br>\r\n                                          Pricing.</br>\r\n                                          Rueda de negocios.</br>\r\n                                          Libro blanco de la Dirección Ejecutiva.</br>\r\n                                          Tablero de control de la Dirección Ejecutiva.</p>', 'proyectos/09_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/09_Renata.png', '2021-04-27 15:52:25', '2021-04-27 15:52:25', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(10, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1900, '2018-08-08 15:52:25', '9.1 Meses', 'Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en asuntos comerciales, operativos y de proyectos, particularmente en los siguientes frentes (i) negociación con TELEFONICA, (ii) empalme con los nuevos socios de Gobierno y (iii) seguimiento presupuestal.', ' <p>Proyección financiera y operativa.</br>\r\n                                          Presupuesto de la Corporación</br>\r\n                                          Seguiemiento a negociación con Telefónica.</p>', 'proyectos/10_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/10_Renata.png', '2021-04-27 15:55:00', '2021-04-27 15:55:00', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(11, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1930, '2019-05-17 15:55:00', '1.5 Meses', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III</p>\r\n                                    <p class=\"descripcionexp\">Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en asuntos comerciales, operativos y de proyectos.', ' <p>Proyección financiera y operativa.</br>\r\n                                          Presupuesto de la Corporación</br>\r\n                                          Pricing.</br>\r\n                                          Prospección de clientes.</p>', 'proyectos/11_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/11_Renata.png', '2021-04-27 15:57:10', '2021-04-27 15:57:10', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(12, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1600, '2019-09-05 15:57:11', '1.9 Meses', 'Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en asuntos de  fortalecimiento empresarial, comerciales, operativos y de proyectos de la Corporación Red Nacional Académica de Tecnología Avanzada – RENATA- en especial los que se deriven del contrato interadministrativo No. 1-0140 de 2019 celebrado con el SENA.', '   <p>Proyección financiera y operativa.</br>\r\n                                          Presupuesto de la Corporación.</br>\r\n                                          Informe de gestión.</p>', 'proyectos/12_renata.jpg', 1, 1, 1, 2, 5, 'img/logos/12_Renata.png', '', '2021-04-27 16:04:20', '2021-04-27 16:04:20', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(13, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1900, '2019-11-19 16:04:20', '1.4 Meses', 'Realizamos un acompañamiento a la Red Nacional Académica de Tecnología Avanzada – RENATA en el desarrollo de los procesos que requiera la representación legal de la Corporación Red Nacional Académica de Tecnología, avanzada - RENATA', ' <p>Proyección financiera y operativa.</br>\r\n                                          Presupuesto de la Corporación.</br>\r\n                                          Seguiemiento a negociación con Telefónica.</br>\r\n                                          Plan de mejoramiento.</p>', 'proyectos/13_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/13_Renata.png', '2021-04-27 16:06:15', '2021-04-27 16:06:15', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(14, 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1930, '2020-02-07 16:06:15', '1.8 Meses', 'Realizamos un acompañamiento  el desarrollo de los procesos que requiera la representación legal de la Corporación Red Nacional Académica de Tecnología, avanzada - RENATA', ' <p>Informe de gestión.</br>\r\n                                          Proyección financiera y operativa.</br>\r\n                                          Presupuesto de la Corporación.</br>\r\n                                          Trazabilidad negociación con Telefónica.</br>\r\n                                          Avalúo de activos.</p>', 'proyectos/14_renata.jpg', 1, 1, 1, 2, 5, '', 'img/logos/14_Renata.png', '2021-04-27 16:07:52', '2021-04-27 16:07:52', 'fortalecimiento-a-la-red-nacional-academica-de-tec', NULL, NULL),
(15, 'Elaboración contenidos de capacitación para micro negocios en la Guajira', 1900, '2016-07-10 16:07:53', '3.1 Meses', 'Desarrollamos un proceso de capacitación en mercado, contabilidad, servicio al cliente y manejo de objeciones, soluciones técnicas  a 3 emprendimientos especializados en la comercialización de soluciones fotovoltaicas, ubicados en las zonas de Aruatachon y Santana Norte en el Departamento de la Guajira y el corregimiento de Palmor de La Sierra del municipio de Ciénaga del departamento de Magdalena.', '  <p>Cartilla Iluminando mi negocio.</p>', 'proyectos/15_brand_solutions.jpg', 3, 2, 2, 4, 9, '', 'img/logos/15_Brand_solutions_USAID.png', '2021-04-27 16:09:36', '2021-04-27 16:09:36', 'elaboracion-contenidos-de-capacitacion-para-micro-', NULL, NULL),
(16, 'Formulación Apoyo Microfranquicias Empresariales', 1930, '2015-08-15 16:09:37', '3.1 Meses', 'Realizamos la fomulación de la propuesta presentada por BRAND SOLUTIONS LTDA para la convocatoria para el \"Apoyo al desarrollo de microfranquicias empresariales o esquemas de marca social para población víctima del desplazamiento No UGCE-MMS006 2015\", de Innpulsa Colombia.', '<p>Proyecto tipo.</p>', 'proyectos/16_brand_solutions.jpg', 1, 1, 1, 1, 1, '', 'img/logos/16_Brand_Solutions.png', '2021-04-27 16:11:49', '2021-04-27 19:28:04', 'formulacion-apoyo-microfranquicias-empresariales', NULL, NULL),
(17, 'Estructuración proyecto logística para Wildlife Conservation Society - WCS', 1600, '2016-11-27 16:11:49', '7.2 Meses', 'Apoyamos a  BIOLOGIKA PROYECTOS S.A.S.  en la estructuraciòn de la propuesta para contratar la logistica para la presentaciòn de servicio de alimentaciòn, alojamiento, desplazamientos terrestres, maritimos y multimodales, material de apoyo y demas elementos logisticos requeridos para la realizaciòn de las actividades desarrolladas en el marco del Convenio de Asociaciòn 005 de 2016, suscrito entre Parques Nacionales Naturales de Colombia Wild Life Conversaciòn Society - WCS, Word Wildlife Fund Inc - WWF Fundaciòn Mario Santo Domingo y Fundaciòn para el Beneficio para la declaratoria, gestión y ampliaciòn de areas protegidas, contrato realizado bajo la modalidad de monto agotable.', '  <p>Proyecto tipo.</p>', 'proyectos/17_BIOLOGIKA.jpg', 1, 1, 1, 1, 1, '', 'img/logos/17_biologica.png', '2021-04-27 16:13:41', '2021-04-27 16:13:41', 'estructuracion-proyecto-logistica-para-wildlife-co', NULL, NULL),
(18, 'Formulación proyecto Internacionalización Arquitectura Más Verde', 1900, '2017-03-24 16:13:42', '12.2 Meses', 'Realizar una consultoría de fortalecimiento empresarial para la formulación del proyecto de internacionalización de ARQUITECTURA MAS VERDE S.A.S. y para presentar a la empresa a la convocatoria nacional de INNpulsa para la entrega de recursos de cofinanciación a proyectos que tengan por objeto el alistamiento de mipymes para el mercado internacional Almi - 17 y AMPM - 17', '<p>Plan de interncionalización</br>\r\n                                          Proyecto tipo</p>', 'proyectos/18_ARQUITECTURA-MAS-VERDE.jpg', 1, 1, 1, 1, 1, '', 'img/logos/18_Arquitectura_mas_verde.png', '2021-04-27 16:15:25', '2021-04-27 16:15:25', 'formulacion-proyecto-internacionalizacion-arquitec', NULL, NULL),
(19, 'Fortalecimiento a Ecocenter en modelo de negocio', 1930, '2015-05-02 16:15:26', '0.2 Meses', 'Asesoramos  y acompañamos a  ECO CENTER  para el fortalecimiento de su modelo de negocio y el desarrollo de capacidades para el intraemprendimiento.', ' <p>Modelo de negocio</p>', 'proyectos/19_ECO-CENTER.jpg', 1, 1, 1, 1, 4, '', 'img/logos/19_Ecocenter.png', '2021-04-27 16:16:57', '2021-04-27 16:16:57', 'fortalecimiento-a-ecocenter-en-modelo-de-negocio', NULL, NULL),
(20, 'Fortalecimiento a Ecocenter en modelo de negocio', 1900, '2021-04-27 16:16:58', '1.7 Meses', 'Realizamos la búsqueda y envio via e-mail de información sobre oportunidades, concursos, licitaciones y convocatorias públicas y privadas y de cooperación internacional con potencial de  generar negocios y valor para la FUNDACIÒN CANTO PARA LA VIDA.', ' <p>Cazador de oportunidades.</p>', 'proyectos/20_FUNDACION-CANTO-PARA-LA-VIDA.jpg', 1, 1, 1, 1, 1, '', 'img/logos/20_Canto-por-la-vida.png', '2021-04-27 16:18:32', '2021-04-27 19:24:09', 'ortalecimiento-a-ecocenter-en-modelo-de-negocio', NULL, NULL),
(21, 'Elaboramos los estudios de viabilidad requeridos para la estructuración del proyecto en fase 1 para el mejoramiento de los hospitales de Salento, Génova y Quimbaya en el departamento del Quindío, en el marco del convenio 212020', 1930, '2013-10-28 16:18:32', '2.1 Meses', '<p>Proyecto tipo.</p>', '', 'proyectos/21_FEDERACION-NACIONAL-DE-DEPARTAMENTOS.jpg', 1, 1, 3, 2, 5, '', 'img/logos/21_FND.png', '2021-04-27 16:20:42', '2021-04-27 16:20:42', 'elaboramos-los-estudios-de-viabilidad-requeridos-p', NULL, NULL),
(22, 'Capacidades empresariales para la gestión de la innovación - selección', 1600, '2013-12-05 16:20:42', '6.1 Meses', 'Capacidades empresariales para la gestión de la innovación - selección</p>\r\n                                    <p class=\"descripcionexp\">Seleccionamos las empresas con capacidad para desarrollar de manera exitosa el proceso de fortalecimiento a sus capacidades de innovación, en el marco de la convocatoria \"Consolidación de capacidades empresariales para la gestión de la innovación\" del Departamento Administrativo de Ciencia, Tecnología e Innovación - Colciencias (Locomotora)', ' <p>Diagnóstico de la capacidad de innovación.</p>', 'proyectos/22_CORPORACION-PARA-EL-FOMENTO-DE-LA-CALIDAD.jpg', 223, 1, 1, 7, 223, '', 'img/logos/22_corporacion_fomento.png', '2021-04-27 16:23:49', '2021-04-27 16:23:49', 'capacidades-empresariales-para-la-gestion-de-la-in', NULL, NULL),
(23, 'Capacidades empresariales para la gestión de la innovación - prefactibilidad', 1900, '2014-04-02 16:23:49', '1.0 Meses', 'Elaboramos conceptos técnicos para la prefactibilidad de las empresas en el marco del proyecto \"Desarrollo de capacidades empresariales para la innovación\" el cual es un convenio entre COLCIENCIAS Y CYGA', ' <p>Prefactibilidad innovación</p>', 'proyectos/23_CORPORACION-PARA-EL-FOMENTO-DE-LA-CALIDAD.jpg', 223, 1, 1, 7, 66, '', 'img/logos/23_corporacion_fomento.png', '2021-04-27 16:25:48', '2021-04-27 16:25:48', 'capacidades-empresariales-para-la-gestion-de-la-in', NULL, NULL),
(24, 'Caracterización empresarial entornos IED', 1930, '2014-10-01 16:25:48', '2.0 Meses', 'Desarrollamos  un estudio de caracterización del entorno económico empresarial y las oportunidades que ese entorno ofrecía a 20 Instituciones Educativas Distritales - IED de Bogotá  y sus planes educativos institucionales PEI.', ' <p>Panel de expertos</br>\r\n                                          <p>Estudios de caracterización del entorno económico-empresarial</br>\r\n                                          <p>Encuesta entorno</p>', 'proyectos/24_UNIVERSIDAD-DE-ADMINISTRACION-DE-NEGOCIOS.jpg', 20, 1, 1, 7, 40, '', 'img/logos/24_EAN_Universidad.pn', '2021-04-27 16:27:08', '2021-04-27 16:27:08', 'caracterizacion-empresarial-entornos-ied', NULL, NULL),
(25, 'Cazador de Oportunidades / Fundación Amanecer', 1900, '2016-11-01 16:27:09', '14.2 Meses', 'Realizamos la búsqueda y envio via e-mail de información sobre oportunidades, concursos, licitaciones y convocatorias públicas y privadas y de cooperación internacional con potencial de  generar negocios y valor para la FUNDACIÓN AMANECER.', '<p>Cazador de oportunidades.</p>', 'proyectos/25_LA-FUNDACION-AMANECER.jpg', 1, 1, 1, 1, 1, '', 'img/logos/25_amanecer.png', '2021-04-27 16:28:48', '2021-04-27 19:26:26', 'cazador-de-oportunidades-fundacion-amanecer', NULL, NULL),
(26, 'Estudio modernización administrativa Alcaldía de Neiva', 1930, '2016-08-02 16:28:49', '4.1 Meses', 'Estudio modernización administrativa Alcaldía de Neiva</p>\r\n                                    <p class=\"descripcionexp\">Realizar los análisis financieros y presupuestales en el marco del proyecto de modernización de la Planta de Recursos Humanos de la Alcaldía de Neiva.', '<p>Análisis presupuestal</p>', 'proyectos/26_COPORACION-SOLUCIONES-SOCIALMENTE-COMPETENTES.jpg', 1, 1, 1, 3, 5, '', 'img/logos/26_Soluciones_Neiva.png', '2021-04-27 16:30:37', '2021-04-27 16:30:37', 'estudio-modernizacion-administrativa-alcaldia-de-n', NULL, NULL),
(27, 'Transferencia metodológica Tejido Empresarial a Cajas de Compensación', 1600, '2016-09-01 17:02:24', '2.9 Meses', 'Capacitaciones a funcionarios de las Cajas de Compensación Familiar afiliadas a Asocajas en la operación de la Metodología Tejido Empresarial. ', 'Transferencia metodológica Tejido Empresarial a Cajas de Compensación', 'proyectos/27_ASOCIACION-NACIONAL-DE-CAJAS-DE-COMPENSACION.jpg', 1, 1, 1, 7, 20, '', 'img/logos/27_Asocajas.png', '2021-04-27 17:05:18', '2021-04-27 17:05:18', 'transferencia-metodologica-tejido-empresarial-a-ca', NULL, NULL),
(28, 'Fortalecimiento a ByMedia en metodología para gestión de proyecto', 1900, '2016-04-01 17:05:18', '8.1 Meses', 'Apoyamos a Bymedia para  diseñar el marco teórico y conceptual del proyecto asociado al contrato 806/2016 suscrito con el Ministerio de Educación Nacional, así como en la elaboración de la metodología de trabajo, la generación de indicadores de gestión y reportes del mismo.', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/28_BYMEDIA.jpg', 1, 1, 1, 2, 2, '', 'img/logos/28_ByMedia.png', '2021-04-27 17:07:29', '2021-04-27 17:07:29', 'fortalecimiento-a-bymedia-en-metodologia-para-gest', NULL, NULL),
(29, 'Fortalecimiento a By Media en planeación estratégica', 1930, '2017-01-10 17:07:29', '5.8 Meses', 'Realizamos la planeación estratégica de la compañía incluyendo la asesoría y rediseño de los procesos de operación del área de proyectos de BYMEDIA S.A.S', '<p>Planeación estratégica.</p>', 'proyectos/29_BYMEDIA.jpg', 1, 1, 1, 2, 2, '', 'img/logos/29_ByMedia.png', '2021-04-27 17:10:31', '2021-04-27 17:10:31', 'fortalecimiento-a-by-media-en-planeacion-estrategi', NULL, NULL),
(30, 'Fortalecimiento a Cepsa en Formulación de Proyectos', 1900, '2016-04-01 17:10:31', '9.1 Meses', 'En unión temporal con la empresa Valor Compartido, realizamos fortalecimiento y asistencia tecnica al equipo RSE de CEPSA S.A. mediante el desarrollo de capacitaciones al equipo de Responsabilidad Social Empresarial, responsable del area de casanare en metodologias relacionadas con priorizaciòn, diseño ejecuciòn y evaluaciòn de proyectos de inversiòn social con grupos de interes de areas de influencia de proyectos de la industria de hidrocarburos, asì como tambien, en el tema de Planes de Beneficio a las Comunidades, su ejecuciòn, base jurìdica, lineas de inversiòn propuestas, papel del Estado, las empresas y las comunidades y demàs aspectos relacionados, con el fin de contar con las herramientas necesarias para orientar la gestiòn al momento de su implementaciòn.', ' <p>Marco lógico.</br>\r\n                                          Proyecto tipo.</br>\r\n                                          Cartilla PBC.</p>', 'proyectos/30_CEPSA.jpg', 1, 1, 1, 3, 7, '', 'img/logos/30_Cepsa - copia.png', '2021-04-27 17:13:49', '2021-04-27 17:13:49', 'fortalecimiento-a-cepsa-en-formulacion-de-proyecto', NULL, NULL),
(31, 'Diseño de formación para directivos en innovación', 1930, '2014-05-30 17:13:49', '1.0 Meses', 'Estructuramos y diseñamos los contenidos académicos empleados en el proyecto desarrollado en el marco del convenio 0051 - 2013, celebraco entre UNAES y la Cámara de Comercio de Villavicencio, en e que se llevaron a cabo 3 procesos de formación: \r\n                                    </br>1. Taller de sensibilización y capacitación en innovación a empresarios (Directivos de empresas).\r\n                                    </br>2. Diplomado en innovación para empleados de las empresas. \r\n                                    </br>3)  Diplomado en innovación para consultores que apoyaron el proceso en las empresas.', ' <p> Diplomado en innovación.</p>', 'proyectos/31_UNION-AMERICANA-DE-EDUCACION-SUPERIOR.jpg', 1, 1, 1, 3, 30, '', 'img/logos/31_Unaes.png', '2021-04-27 17:16:26', '2021-04-27 17:16:26', 'diseno-de-formacion-para-directivos-en-innovacion', NULL, NULL),
(32, 'Cazador de Oportunidades / Bodas y Fiestas', 1600, '2015-10-01 17:16:26', '3.0 Meses', 'Realizamos la búsqueda y envio via e-mail de información sobre oportunidades comerciales BODAS Y FIESTAS JULIET CATALINA MORENO ZEA.', '<p>Cazador de oportunidades.</p>', 'proyectos/32_BODAS-Y-FIESTAS.jpg', 1, 1, 1, 1, 1, '', '', '2021-04-27 17:18:27', '2021-04-27 17:18:28', 'cazador-de-oportunidades-bodas-y-fiestas', NULL, NULL),
(33, 'Fortalecimiento a la Liga Colombiana de Hemofílicos en Estrategia', 1900, '2017-05-27 17:18:28', '3.5 Meses', 'Realizamos un ejercicio de revisiòn de la planeaciòn estrategica de la LIGA COLOMBIANA DE HEMOFILICOS desde su planteamiento estrategico, hasta la construcciòn de su plan operativo 2017-2018, buscando que las actividades y gestiones de la LIGA fuesen acordes con las circustancias de sus pacientes, logrando la maxima eficiencia en los porcesos y procedimientos, estimulando la competitividad y la productividad de la LIGA.', '<p>Planeación estratégica</p>', 'proyectos/33_LIGA-COLOMBIANA-DE-HEMOFILICOS-Y-OTRAS-DEFICIENCIAS.jpg', 1, 1, 1, 2, 5, '', 'img/logos/33_colhemofilicos.png', '2021-04-27 17:20:26', '2021-04-27 17:20:26', 'fortalecimiento-a-la-liga-colombiana-de-hemofilico', NULL, NULL),
(34, 'Proyecto: El Agro Exporta / Aguacate Hass', 1930, '2017-06-01 17:45:48', '7.1 Meses', 'Desarrollamos la coordinaciòn del proyecto ATGII003 - 17 suscrito entre Fiducoldex en nombre del Programa de Transformaciòn Productiva y Analdex, cuyo objeto era la  Asistencia Tecnica para Fortalecer la Admisibilidad del Aguacate Hass Colombiano al mercado de los Estados Unidos.', ' <p>Gerencia de proyecto</br>\r\n                                          Actualización censo catastral núcleos productivos</p>', 'proyectos/34_ANALDEX.jpg', 37, 11, 18, 12, 0, '', 'img/logos/34_analdex.png', '2021-04-27 17:47:50', '2021-04-27 17:47:50', 'proyecto-el-agro-exporta-aguacate-hass', NULL, NULL),
(35, 'Coordinación Convenio Analdex / Sena', 1930, '2020-12-31 17:47:50', '2.5 Meses', 'Realizamos  la coordinaciòn operativa del Convenio 095 suscrito entre el Servicio Nacional de Aprendizaje SENA y la Asociaciòn Nacional de Comercio Exterior Analdex', '<p>Gerencia de proyecto</p>', 'proyectos/35_ANALDEX.jpg', 1, 1, 1, 2, 0, '', 'img/logos/35_analdex.png', '2021-04-27 17:49:50', '2021-04-27 17:49:50', 'coordinacion-convenio-analdex-sena', NULL, NULL),
(36, 'Al Invest 5.0 /Analdex', 1900, '2018-12-25 17:49:51', '15.2 Meses', 'Llevar asistencia tecnica gremial para fortalecer a la admisibilidad de Aguacate Hass a mercados extranjeros en el marco del programa AL Invest 5.0, contrato AFT - AL INVEST 5 10/2017', '<p>Gerencia de proyecto </p>', 'proyectos/36_ANALDEX.jpg', 638, 11, 18, 12, 1276, '', 'img/logos/36_analdex.png', '2021-04-27 17:52:32', '2021-04-27 17:52:32', 'al-invest-50-analdex', NULL, NULL),
(37, 'El Agro Exporta /Aguacate Hass', 1930, '2018-12-25 17:52:32', '15.2 Meses', 'Contribuimos a la asistencia técnica gremial rural desde el fortalecimiento empresarial y socioproductivo a los productores de aguacate beneficiarias del proyecto asistencia técnica gremial para fortalecer la admisibilidad del aguacate hass colombiano al mercado de los Estados Unidos.', '<p>Mentoring</br>\r\n                                          Cartilla socioempresarial</br>\r\n                                          Plan de trabajo</p>', 'proyectos/37_ANALDEX.jpg', 638, 11, 18, 12, 1276, '', 'img/logos/37_analdex.png', '2021-04-27 17:54:33', '2021-04-27 17:54:33', 'el-agro-exporta-aguacate-hass', NULL, NULL),
(38, 'Cazador de Oportunidades / Analdex', 1600, '2019-01-01 17:54:33', '12.0 Meses', 'Realizamos el alistamiento comercial de La Asociación Nacional de Comercio Exterior – ANALDEX asesorando la organización de documentos para realizar su inscripción y consolidación del Registro Único de Proponentes. Así mismo, identificamos oportunidades de proyectos por medio del sistema Cazador de Oportunidades, formulación y presentación de propuestas para dichas convocatorias.', '<p>Alistamiento comercial</p>\r\n                                          <p>Cazador de oportunidades</p>', 'proyectos/38_ANALDEX.jpg', 1, 1, 1, 2, 2, '', 'img/logos/38_analdex.png', '2021-04-27 17:56:10', '2021-04-27 17:56:10', 'cazador-de-oportunidades-analdex', NULL, NULL),
(39, 'Implementación Operador Económico Autorizado a Genomma Lab Colombia', 1900, '2019-08-13 17:56:10', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Genomma Lab Colombia', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/39_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/39_genoma_lab.png', '2021-04-27 17:57:38', '2021-04-27 17:57:38', 'implementacion-operador-economico-autorizado-a-gen', NULL, NULL),
(40, 'Implementación Operador Económico Autorizado a Legrand', 1930, '2019-09-05 17:57:38', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Legrand', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/40_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/40_analdex_legrand.png', '2021-04-27 17:59:48', '2021-04-27 17:59:48', 'implementacion-operador-economico-autorizado-a-leg', NULL, NULL),
(41, 'Implementación Operador Económico Autorizado a Proalco', 1900, '2019-08-06 17:59:48', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Proalco', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/41_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/41_analdex_proalco.png', '2021-04-27 18:01:29', '2021-04-27 18:01:29', 'implementacion-operador-economico-autorizado-a-pro', NULL, NULL),
(42, 'Implementación Operador Económico Autorizado a Strykers', 1930, '2019-06-12 18:01:29', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Stryker', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/42_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/42_Analdex_Stryker.png', '2021-04-27 18:03:40', '2021-04-27 18:03:40', 'implementacion-operador-economico-autorizado-a-str', NULL, NULL),
(43, 'mplementación Operador Económico Autorizado a Janus', 1600, '2019-09-17 18:03:40', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Janus', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/43_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/43_Analdex_Janus.png', '2021-04-27 18:05:20', '2021-04-27 18:05:20', 'mplementacion-operador-economico-autorizado-a-janu', NULL, NULL),
(44, 'Implementación Operador Económico Autorizado a Zoetis', 1900, '2020-02-11 18:05:20', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Zoetis', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/44_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/44_Analdex_Zoetis.png', '2021-04-27 18:06:53', '2021-04-27 18:06:53', 'implementacion-operador-economico-autorizado-a-zoe', NULL, NULL),
(45, 'Implementación Operador Económico Autorizado a Tornillos y Partes', 1930, '2019-09-11 18:06:53', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa Tornillos y Partes', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/45_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/45_Analdex_Herrameitnas_grandes_proyectos.png', '2021-04-27 18:08:19', '2021-04-27 18:08:19', 'implementacion-operador-economico-autorizado-a-tor', NULL, NULL),
(46, 'Implementación Operador Económico Autorizado a  Messer', 1900, '2020-07-17 18:08:20', 'En ejecución', 'Desarrollamos para Analdex la consultoría para implementar el programa Operador Económico Autorizado Importador y/o Exportador de conformidad con lo establecido en los Decretos 3568 de 2011 y 1984 de 2015 del Ministerio de Hacienda y Crédito Público, en la empresa  Messer', '<p>Diagnóstico</br>\r\n                                          Implementación sistema OEA</br>\r\n                                          Preauditoría</br>\r\n                                          Asesoría inscripción DIAN</p>', 'proyectos/46_ANALDEX.jpg', 1, 1, 1, 3, 4, '', 'img/logos/46_Analdex_Messer.png', '2021-04-27 18:09:42', '2021-04-27 18:09:42', 'implementacion-operador-economico-autorizado-a-mes', NULL, NULL),
(47, 'Fortalecimiento a Cepsa en estrategia RSE', 1930, '2017-02-07 18:09:42', '10.1 Meses', 'Prestamos a CEPSA S.A. un servicio de asesoria para la revisiòn, analisis y elaboraciòn de ajustes al contenido de los procedimentos que componen el sistema integrado de calidad de gestion de responsabiliadad social empresarial. No. 400272539.', '<p>RSE.</p>', 'proyectos/47_CEPSA.jpg', 1, 1, 1, 3, 7, '', 'img/logos/47_Cepsa.png', '2021-04-27 18:11:48', '2021-04-27 18:11:48', 'fortalecimiento-a-cepsa-en-estrategia-rse', NULL, NULL),
(48, 'Fortalecimiento a Cepsa en estrategia RSE', 1600, '2017-06-22 18:11:48', '1.2 Meses', 'Estructuración y diseño del plan de Gestión Social a Cepsa.', '<span>1</span># Unidades productivas intervenidas', 'proyectos/48_CEPSA.jpg', 1, 1, 1, 3, 7, '', 'img/logos/48_geocol.png', '2021-04-27 18:19:52', '2021-04-27 18:19:52', 'fortalecimiento-a-cepsa-en-estrategia-rse', NULL, NULL),
(49, 'Cazador de Oportunidades / Cotelco', 1900, '2016-09-15 18:19:52', '15.7 Meses', 'Realizamos la búsqueda y envio via e-mail de información sobre oportunidades, concursos, licitaciones y convocatorias públicas y privadas y de cooperación internacional con potencial de  generar negocios y valor para COTELCO.', '<p>Cazador de oportunidades</p>', 'proyectos/49_COTELCO.jpg', 1, 1, 1, 2, 2, '', 'img/logos/49_Cotelco.png', '2021-04-27 18:26:13', '2021-04-27 18:26:13', 'cazador-de-oportunidades-cotelco', NULL, NULL),
(50, 'Reactivación Tejido Empresarial Mocoa', 1930, '2021-04-27 18:26:13', '5.1 Meses', 'Asesor a Confamiliar Putumayo en  la formulación y ejecución del proyecto recuperaciòn y fortalecimiento el tejido empresarial de Mocoa que la caja de compensaciòn familiar del Putumayo, ejecuta en el marco del contrato de cofinanciaciòn No. RTEM011 - 2017', '<p>Modelo Tejido Empresarial</p>', 'proyectos/50_CAJA-DE-COMPENSACION-FAMILIAR-DE-PUTUMAYO.jpg', 40, 1, 1, 7, 80, '', 'img/logos/50_Cotelco.png', '2021-04-27 18:27:54', '2021-04-27 18:28:21', 'reactivacion-tejido-empresarial-mocoa', NULL, NULL),
(51, 'Cazador de Oportunidades / Cotelco', 1900, '2018-01-01 18:28:22', '12.1 Meses', 'Realizamos la búsqueda y envio via e-mail de información sobre oportunidades, concursos, licitaciones y convocatorias públicas y privadas y de cooperación internacional con potencial de  generar negocios y valor para COTELCO.', '<p>Cazador de oportunidades.</p>', 'proyectos/51_ASOCIACION-HOTELERA-Y-TURISTICA-DE-COLOMBIA.jpg', 1, 1, 1, 2, 2, '', 'img/logos/51_ut.png', '2021-04-27 18:30:46', '2021-04-27 18:30:46', 'cazador-de-oportunidades-cotelco', NULL, NULL),
(52, 'Fortalecimiento a Proyecto Empresario Digital', 1930, '2018-06-08 18:30:46', '7.1 Meses', 'Apoyamos la ejecuciòn del contrato de consultoria No. 68573-06-2017 celebrado entre la Previsora S.A. como vocera y administradora del patrimonio autonomo PA FINDETER PAF y  la Uniòn Temporal de Transformaciòn Digital  Mypime, en la direcciòn estrategica y operativa del mismo para lograr su objeto y la ejecuciòn de los cuatro (4) componentes del programa Empresarios Digital del MINTIC', '<p>Gerencia de proyectos.</p>', 'proyectos/52_UTTDM.jpg', 35167, 15, 30, 15, 35167, '', 'img/logos/52_avance.png', '2021-04-27 18:32:47', '2021-04-27 19:15:20', 'fortalecimiento-a-proyecto-empresario-digital', NULL, NULL),
(53, 'Fortalecimiento a Avance Organizacional en Estrategia', 1600, '2018-02-15 18:32:49', '7.1 Meses', 'Desarrollamos un proceso de estructuración de nuevos negocios colaborativos entre las 5 empresas aliadas a Avance Organizacional', '<p>Colaboración empresarial.</p>', 'proyectos/53_AVANCE-ORGANIZACIONAL.jpg', 1, 1, 1, 2, 4, '', 'img/logos/53_Cydep.png', '2021-04-27 18:34:32', '2021-04-27 18:34:32', 'fortalecimiento-a-avance-organizacional-en-estrate', NULL, NULL),
(54, 'Asesoría en estructuración de proyectos en desarrollo PGIR', 1900, '2018-10-03 18:34:33', '1.0 Meses', 'Asesoramos metodologicamente a CYDEP SAS en la presentaciòn de la estructura de trabajo para el proyecto que tiene por objeto \" Construcciòn y articulaciòn de la politica de producciòn, consumo sostenible y gestiòn integral de aseo\" Departamento del Quindio', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/54_CONSULTORIA-Y-DIRECCION-DE-PROYECTOS.jpg', 1, 1, 1, 2, 2, '', 'img/logos/54_Amerisur.png', '2021-04-27 18:36:24', '2021-04-27 18:36:24', 'asesoria-en-estructuracion-de-proyectos-en-desarro', NULL, NULL),
(55, 'Formulación de Proyectos a Comunidades de Area de Influencia de Amerisur en Putumayo', 1930, '2018-08-25 18:36:24', '6.1 Meses', 'Brindamos asesoría especializada a AMERISUR en la formulación de proyectos sociales con catorce (14) comunidades del área de influencia del campo platanillo en el departamento del putumayo y lo acompañamos en la priorización y concertación con las comunidades del AID de la inversión social pendiente', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/55_-AMERISUR-EXPLORACION-COLOMBIA.jpg', 14, 1, 1, 6, 28, '', 'img/logos/55_amerisur.png', '2021-04-27 18:38:03', '2021-04-27 18:38:03', 'formulacion-de-proyectos-a-comunidades-de-area-de-', NULL, NULL),
(56, 'Fortalecimiento en estrategia a Transiciones Crecer', 1900, '2012-08-15 18:38:03', '12.2 Meses', 'Diseñamos y concertamos una plataforma empresarial solidaria que le permite a las familas de la Corporación Tramsiciones Crecer, desarrollar negocios y empresas que generen fuentes de empleo, capital económica y capital social para personas en situación de discapacidad intelectual.', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</br>\r\n                                          Colaboración empresarial</p>', 'proyectos/56_CORPORACION-TRANSICIONES-CRECER.jpg', 1, 1, 1, 2, 10, '', 'img/logos/56_transicion_es_crecer.png', '2021-04-27 18:40:02', '2021-04-27 18:40:02', 'fortalecimiento-en-estrategia-a-transiciones-crece', NULL, NULL),
(57, 'Formulación de Proyectos a Comunidades de Area de Influencia de Amerisur en Putumayo', 1930, '2013-11-11 18:40:02', '12,2 Meses', 'Apoyamos a las organizaciones culturales inscritas en el proyecto de apropiación productiva y sostenible del Parque Saco Recicla, para que desarrollaran capacidades para estructurar proyectos empresariales culturales productivos.', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/57_CORPORACION-MINIKUSUTO.jpg', 4, 1, 1, 2, 12, '', 'img/logos/57_mini_ku_sutu.png', '2021-04-27 18:41:45', '2021-04-27 18:41:45', 'formulacion-de-proyectos-a-comunidades-de-area-de-', NULL, NULL),
(58, 'Revista Negocios & Petróleo', 1600, '2013-08-01 18:41:45', '12.1 Meses', 'Brindamos asesoría, acompañamiento y capacitación en la creación e incubación de la Revista Negocios & Petróleo, la cual pasaría posteriormente a llamarse Revista Negocios e Industria.', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/58_REVISTA-NEGOCIOS--PETROLEO.jpg', 1, 1, 1, 2, 1, '', 'img/logos/58_revista_negocios_y_petroleo.png', '2021-04-27 18:43:31', '2021-04-27 18:43:31', 'revista-negocios-petroleo', NULL, NULL),
(59, 'Fortalecimiento  en estrategia comercial y operativa a Renata IV', 1900, '2019-09-05 18:43:31', '1.9 Meses', 'Realizamos el acompañamiento en asuntos de fortalecimiento empresarial, comerciales, operativos y de proyectos de la Corporación Red Nacional Académica de Tecnología Avanzada – RENATA- en especial los que se deriven del contrato interadministrativo No. 1-0140 de 2019 celebrado con el SENA.', '<p>Proyección financiera y operativa</br>\r\n                                          Presupuesto de la Corporación</br>\r\n                                          Trazabilidad negociación con Telefónica.</br>\r\n                                          Marco Lógico</p>', 'proyectos/59_CORPORACION-RED-ACADEMICA-DE-TECNOLOGIA-AVANZADA.jpg', 1, 1, 1, 2, 4, '', 'img/logos/59_ Renata.png', '2021-04-27 18:45:04', '2021-04-27 19:24:38', 'fortalecimiento-en-estrategia-comercial-y-operativ', NULL, NULL),
(60, 'Diseño Banco de Proyectos Política Gobierno Digital', 1930, '2019-08-26 18:45:05', '3.7 Meses', 'Brindamos asistencia metodológica, técnica y operativa para apoyar las diferentes etapas de los procesos de condonación de los créditos condonables derivados de los convenios con el ICETEX.', '<p>Marco lógico.</br>\r\n                                          Proyecto tipo.</p>\r\n                                          Metodología del PMI</p>', 'proyectos/60_ASOCIACION-COLOMBIANA.jpg', 1, 1, 1, 7, 7, '', 'img/logos/60_Aociacion_col.png', '2021-04-27 18:46:39', '2021-04-27 18:46:39', 'diseno-banco-de-proyectos-politica-gobierno-digita', NULL, NULL),
(61, 'Fábricas de Productividad Mazamorras de Urabá', 1900, '2019-10-18 18:46:39', '4.0 Meses', 'Brindsamos consultoría especializada en extensionismo tecnológico, a la empresa MAZAMORRAS DE URABA, participante del Proyecto Fábricas de Productividad (Antioquia), liderado por (MinCIT), Colombia Productiva y La Cámara', '<p>Diagnóstico</br>\r\n                                          Diseño de procesos industriales</p>', 'proyectos/61_CAMARA-DE-COMERCIO-DE-MEDELLIN-PARA-ANTIOQUIA.jpg', 1, 1, 1, 2, 1, '', 'img/logos/61_camara_comercio_antioquia.png', '2021-04-27 18:48:30', '2021-04-27 18:48:30', 'fabricas-de-productividad-mazamorras-de-uraba', NULL, NULL),
(62, 'TIP - E', 1930, '2018-09-01 18:48:31', '12.1 Meses', 'Diseñamos y pusimos a prueba una metodología basada en el modelo Tejido Empresarial de desarrollo empresarial para unidades productivas y microempresas que estén en las etapas de su ciclo de vida de inicio de actividades, incubación y consolidación, bajo el convenio \"Acuerdo de cooperación entre Formulación y Gestión de Proyectos y Fundación Amanecer - Fase 1.', '<p>Metodología Tejido Empresarial</br>\r\n                                          TIP-E</p>', 'proyectos/62_LA-FUNDACION-AMANECER.jpg', 4, 1, 1, 7, 8, '', 'img/logos/62_amanecer.png', '2021-04-27 18:50:19', '2021-04-27 18:50:19', 'tip-e', NULL, NULL),
(63, 'Desarrollo de estrategias comerciales nacionales e internacionales', 1600, '2018-07-13 18:50:19', '16.8 Meses', 'Brindamos asistencia técnica implementando un modelo de intervención que permitió el fortalecimiento de la estrategia comercial de 115 empresas de los sectores de manufactura y de servicios en el territorio nacional, con el propósito de aportar a su inserción en mercados nacionales e internacionales.', '<p>Proyecto tipo.</br>\r\n                                          Proyecto tipo.</br>\r\n                                          Proyecto tipo.</p>', 'proyectos/63_FIDUCIARIA-COLOMBIANA.jpg', 115, 8, 23, 10, 115, '', 'img/logos/63_fiducoldexColombiaProductiva - copia.png', '2021-04-27 18:52:03', '2021-04-27 18:52:03', 'desarrollo-de-estrategias-comerciales-nacionales-e', NULL, NULL),
(64, 'Capacitación Comunidades Área Influencia Amerisur', 1900, '2017-08-22 18:52:03', '12.6 Meses', 'Capacitamos  a la comunidad del área de influencia del campo Fenix jurisdicción municipio de Rio Negro Santander en el cumplimiento a la ficha de plan de manejo ambiental durante la fase de abandono de Fenix', '<p>Plan de manejo ambiental</p>', 'proyectos/64_FENIX-OIL.jpg', 4, 1, 1, 2, 1, '', 'img/logos/64_fenix.png', '2021-04-27 18:53:37', '2021-04-27 18:53:37', 'capacitacion-comunidades-area-influencia-amerisur', NULL, NULL),
(65, 'Piloto Tejido Empresarial Cajasán', 1930, '2019-12-01 18:53:37', '1.0 Meses', 'Realizar un diagnóstico empresarial a una empresa beneficiaria de CAJASAN', ' <p>Diagnóstico empresarial</p>', 'proyectos/65_CAJASAN.jpg', 1, 1, 1, 1, 1, '', 'img/logos/65_cajasan.png', '2021-04-27 18:55:17', '2021-04-27 18:55:17', 'piloto-tejido-empresarial-cajasan', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_userprofile`
--

CREATE TABLE `app_userprofile` (
  `id` int(11) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `slug` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Usuario', 7, 'add_userprofile'),
(20, 'Can change Usuario', 7, 'change_userprofile'),
(21, 'Can delete Usuario', 7, 'delete_userprofile'),
(22, 'Can add Proyecto', 8, 'add_proyecto'),
(23, 'Can change Proyecto', 8, 'change_proyecto'),
(24, 'Can delete Proyecto', 8, 'delete_proyecto'),
(25, 'Can add Periodo', 9, 'add_periodos'),
(26, 'Can change Periodo', 9, 'change_periodos'),
(27, 'Can delete Periodo', 9, 'delete_periodos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$yDle6mNPs3Pu$yHFPyuiHFdWJM7taEpux/XDluAl/bMEEbzgP+NHcbew=', '2021-04-27 15:11:17', 1, 'fygp', '', '', 'fygp@gmail.com', 1, 1, '2021-04-27 15:10:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-27 15:30:02', '1', 'Moda Productiva y competitiva I', 1, '', 8, 1),
(2, '2021-04-27 15:34:59', '2', 'Productividad empresarial rural en empresas de turismo rural, café, cacao y hortofrutícolas', 1, '', 8, 1),
(3, '2021-04-27 15:36:51', '3', 'Moda productiva y competitiva II', 1, '', 8, 1),
(4, '2021-04-27 15:39:36', '4', 'Herramientas de marketing digital en el sector turismo', 1, '', 8, 1),
(5, '2021-04-27 15:43:19', '5', 'Ruta de Internacionalización de Bogotá - RIBE', 1, '', 8, 1),
(6, '2021-04-27 15:46:03', '6', 'Fábricas de productividad  - Especial Microempresas', 1, '', 8, 1),
(7, '2021-04-27 15:48:01', '7', 'Asistencia técnica planes de negocio programas de desarrollo y paz', 1, '', 8, 1),
(8, '2021-04-27 15:49:58', '8', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada I', 1, '', 8, 1),
(9, '2021-04-27 15:52:25', '9', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada II', 1, '', 8, 1),
(10, '2021-04-27 15:55:00', '10', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1, '', 8, 1),
(11, '2021-04-27 15:57:10', '11', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1, '', 8, 1),
(12, '2021-04-27 16:04:20', '12', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1, '', 8, 1),
(13, '2021-04-27 16:06:15', '13', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1, '', 8, 1),
(14, '2021-04-27 16:07:52', '14', 'Fortalecimiento a la Red Nacional Académica de Tecnología Avanzada III', 1, '', 8, 1),
(15, '2021-04-27 16:09:36', '15', 'Elaboración contenidos de capacitación para micro negocios en la Guajira', 1, '', 8, 1),
(16, '2021-04-27 16:11:49', '16', 'Formulación Apoyo Microfranquicias Empresariales', 1, '', 8, 1),
(17, '2021-04-27 16:13:41', '17', 'Estructuración proyecto logística para Wildlife Conservation Society - WCS', 1, '', 8, 1),
(18, '2021-04-27 16:15:25', '18', 'Formulación proyecto Internacionalización Arquitectura Más Verde', 1, '', 8, 1),
(19, '2021-04-27 16:16:58', '19', 'Fortalecimiento a Ecocenter en modelo de negocio', 1, '', 8, 1),
(20, '2021-04-27 16:18:32', '20', 'ortalecimiento a Ecocenter en modelo de negocio', 1, '', 8, 1),
(21, '2021-04-27 16:20:42', '21', 'Elaboramos los estudios de viabilidad requeridos para la estructuración del proyecto en fase 1 para el mejoramiento de los hospitales de Salento, Génova y Quimbaya en el departamento del Quindío, en e', 1, '', 8, 1),
(22, '2021-04-27 16:23:49', '22', 'Capacidades empresariales para la gestión de la innovación - selección', 1, '', 8, 1),
(23, '2021-04-27 16:25:48', '23', 'Capacidades empresariales para la gestión de la innovación - prefactibilidad', 1, '', 8, 1),
(24, '2021-04-27 16:27:08', '24', 'Caracterización empresarial entornos IED', 1, '', 8, 1),
(25, '2021-04-27 16:28:48', '25', 'Cazador de Oportunidades / Fundación Amanecer', 1, '', 8, 1),
(26, '2021-04-27 16:30:37', '26', 'Estudio modernización administrativa Alcaldía de Neiva', 1, '', 8, 1),
(27, '2021-04-27 17:05:18', '27', 'Transferencia metodológica Tejido Empresarial a Cajas de Compensación', 1, '', 8, 1),
(28, '2021-04-27 17:07:29', '28', 'Fortalecimiento a ByMedia en metodología para gestión de proyecto', 1, '', 8, 1),
(29, '2021-04-27 17:10:31', '29', 'Fortalecimiento a By Media en planeación estratégica', 1, '', 8, 1),
(30, '2021-04-27 17:13:49', '30', 'Fortalecimiento a Cepsa en Formulación de Proyectos', 1, '', 8, 1),
(31, '2021-04-27 17:16:26', '31', 'Diseño de formación para directivos en innovación', 1, '', 8, 1),
(32, '2021-04-27 17:18:28', '32', 'Cazador de Oportunidades / Bodas y Fiestas', 1, '', 8, 1),
(33, '2021-04-27 17:20:27', '33', 'Fortalecimiento a la Liga Colombiana de Hemofílicos en Estrategia', 1, '', 8, 1),
(34, '2021-04-27 17:47:50', '34', 'Proyecto: El Agro Exporta / Aguacate Hass', 1, '', 8, 1),
(35, '2021-04-27 17:49:50', '35', 'Coordinación Convenio Analdex / Sena', 1, '', 8, 1),
(36, '2021-04-27 17:52:32', '36', 'Al Invest 5.0 /Analdex', 1, '', 8, 1),
(37, '2021-04-27 17:54:33', '37', 'El Agro Exporta /Aguacate Hass', 1, '', 8, 1),
(38, '2021-04-27 17:56:10', '38', 'Cazador de Oportunidades / Analdex', 1, '', 8, 1),
(39, '2021-04-27 17:57:38', '39', 'Implementación Operador Económico Autorizado a Genomma Lab Colombia', 1, '', 8, 1),
(40, '2021-04-27 17:59:48', '40', 'Implementación Operador Económico Autorizado a Legrand', 1, '', 8, 1),
(41, '2021-04-27 18:01:29', '41', 'Implementación Operador Económico Autorizado a Proalco', 1, '', 8, 1),
(42, '2021-04-27 18:03:40', '42', 'Implementación Operador Económico Autorizado a Strykers', 1, '', 8, 1),
(43, '2021-04-27 18:05:20', '43', 'mplementación Operador Económico Autorizado a Janus', 1, '', 8, 1),
(44, '2021-04-27 18:06:53', '44', 'Implementación Operador Económico Autorizado a Zoetis', 1, '', 8, 1),
(45, '2021-04-27 18:08:20', '45', 'Implementación Operador Económico Autorizado a Tornillos y Partes', 1, '', 8, 1),
(46, '2021-04-27 18:09:42', '46', 'Implementación Operador Económico Autorizado a  Messer', 1, '', 8, 1),
(47, '2021-04-27 18:11:48', '47', 'Fortalecimiento a Cepsa en estrategia RSE', 1, '', 8, 1),
(48, '2021-04-27 18:19:52', '48', 'Fortalecimiento a Cepsa en estrategia RSE', 1, '', 8, 1),
(49, '2021-04-27 18:26:13', '49', 'Cazador de Oportunidades / Cotelco', 1, '', 8, 1),
(50, '2021-04-27 18:27:54', '50', 'Reactivación Tejido Empresarial Mocoa', 1, '', 8, 1),
(51, '2021-04-27 18:28:21', '50', 'Reactivación Tejido Empresarial Mocoa', 2, 'Modificado/a foto.', 8, 1),
(52, '2021-04-27 18:30:46', '51', 'Cazador de Oportunidades / Cotelco', 1, '', 8, 1),
(53, '2021-04-27 18:32:47', '52', 'Fortalecimiento a Proyecto Empresario Digital', 1, '', 8, 1),
(54, '2021-04-27 18:34:33', '53', 'Fortalecimiento a Avance Organizacional en Estrategia', 1, '', 8, 1),
(55, '2021-04-27 18:36:24', '54', 'Asesoría en estructuración de proyectos en desarrollo PGIR', 1, '', 8, 1),
(56, '2021-04-27 18:38:03', '55', 'Formulación de Proyectos a Comunidades de Area de Influencia de Amerisur en Putumayo', 1, '', 8, 1),
(57, '2021-04-27 18:40:02', '56', 'Fortalecimiento en estrategia a Transiciones Crecer', 1, '', 8, 1),
(58, '2021-04-27 18:41:45', '57', 'Formulación de Proyectos a Comunidades de Area de Influencia de Amerisur en Putumayo', 1, '', 8, 1),
(59, '2021-04-27 18:43:31', '58', 'Revista Negocios & Petróleo', 1, '', 8, 1),
(60, '2021-04-27 18:45:05', '59', 'Fortalecimiento  en estrategia comercial y operativa a Renata IV', 1, '', 8, 1),
(61, '2021-04-27 18:46:39', '60', 'Diseño Banco de Proyectos Política Gobierno Digital', 1, '', 8, 1),
(62, '2021-04-27 18:48:30', '61', 'Fábricas de Productividad Mazamorras de Urabá', 1, '', 8, 1),
(63, '2021-04-27 18:50:19', '62', 'TIP - E', 1, '', 8, 1),
(64, '2021-04-27 18:52:03', '63', 'Desarrollo de estrategias comerciales nacionales e internacionales', 1, '', 8, 1),
(65, '2021-04-27 18:53:37', '64', 'Capacitación Comunidades Área Influencia Amerisur', 1, '', 8, 1),
(66, '2021-04-27 18:55:17', '65', 'Piloto Tejido Empresarial Cajasán', 1, '', 8, 1),
(67, '2021-04-27 19:15:20', '52', 'Fortalecimiento a Proyecto Empresario Digital', 2, 'Modificado/a foto.', 8, 1),
(68, '2021-04-27 19:24:09', '20', 'Fortalecimiento a Ecocenter en modelo de negocio', 2, 'Modificado/a experiencia.', 8, 1),
(69, '2021-04-27 19:24:38', '59', 'Fortalecimiento  en estrategia comercial y operativa a Renata IV', 2, 'Modificado/a foto.', 8, 1),
(70, '2021-04-27 19:26:26', '25', 'Cazador de Oportunidades / Fundación Amanecer', 2, 'Modificado/a foto.', 8, 1),
(71, '2021-04-27 19:28:04', '16', 'Formulación Apoyo Microfranquicias Empresariales', 2, 'Modificado/a foto.', 8, 1),
(72, '2021-04-27 19:30:04', '1', 'Moda Productiva y competitiva I', 2, 'Modificado/a foto.', 8, 1),
(73, '2021-04-27 20:18:06', '1', 'Moda Productiva y competitiva I', 2, 'Modificado/a periodo.', 8, 1),
(74, '2021-04-27 20:19:32', '1', 'Moda Productiva y competitiva I', 2, 'Modificado/a periodo.', 8, 1),
(75, '2021-04-27 20:20:01', '2', 'Productividad empresarial rural en empresas de turismo rural, café, cacao y hortofrutícolas', 2, 'Modificado/a periodo.', 8, 1),
(76, '2021-04-27 20:33:39', '2', '2018-1', 1, '', 9, 1),
(77, '2021-04-27 20:33:52', '3', '2018-1', 1, '', 9, 1),
(78, '2021-04-27 20:34:26', '4', '2018-2', 1, '', 9, 1),
(79, '2021-04-27 20:34:33', '5', '2018-3', 1, '', 9, 1),
(80, '2021-04-27 20:34:38', '6', '2018-4', 1, '', 9, 1),
(81, '2021-04-27 20:34:42', '7', '2018-5', 1, '', 9, 1),
(82, '2021-04-27 20:34:49', '8', '2019-1', 1, '', 9, 1),
(83, '2021-04-27 20:35:26', '9', '2019-2', 1, '', 9, 1),
(84, '2021-04-27 20:35:30', '10', '2019-3', 1, '', 9, 1),
(85, '2021-04-27 20:35:37', '11', '2019-4', 1, '', 9, 1),
(86, '2021-04-27 20:36:03', '12', '2016-1', 1, '', 9, 1),
(87, '2021-04-27 20:36:08', '13', '2016-2', 1, '', 9, 1),
(88, '2021-04-27 20:36:21', '14', '2015-1', 1, '', 9, 1),
(89, '2021-04-27 20:36:25', '15', '2015-2', 1, '', 9, 1),
(90, '2021-04-27 20:36:29', '16', '2015-3', 1, '', 9, 1),
(91, '2021-04-27 20:36:34', '17', '2015-4', 1, '', 9, 1),
(92, '2021-04-27 20:36:39', '18', '2016-5', 1, '', 9, 1),
(93, '2021-04-27 20:36:48', '19', '2016-5', 1, '', 9, 1),
(94, '2021-04-27 20:37:37', '2', '2018-1', 3, '', 9, 1),
(95, '2021-04-27 20:37:37', '3', '2018-1', 3, '', 9, 1),
(96, '2021-04-27 20:37:37', '4', '2018-2', 3, '', 9, 1),
(97, '2021-04-27 20:37:37', '5', '2018-3', 3, '', 9, 1),
(98, '2021-04-27 20:37:37', '6', '2018-4', 3, '', 9, 1),
(99, '2021-04-27 20:37:37', '7', '2018-5', 3, '', 9, 1),
(100, '2021-04-27 20:37:37', '8', '2019-1', 3, '', 9, 1),
(101, '2021-04-27 20:37:37', '9', '2019-2', 3, '', 9, 1),
(102, '2021-04-27 20:37:37', '10', '2019-3', 3, '', 9, 1),
(103, '2021-04-27 20:37:37', '11', '2019-4', 3, '', 9, 1),
(104, '2021-04-27 20:37:37', '12', '2016-1', 3, '', 9, 1),
(105, '2021-04-27 20:37:37', '13', '2016-2', 3, '', 9, 1),
(106, '2021-04-27 20:37:37', '14', '2015-1', 3, '', 9, 1),
(107, '2021-04-27 20:37:38', '15', '2015-2', 3, '', 9, 1),
(108, '2021-04-27 20:37:38', '16', '2015-3', 3, '', 9, 1),
(109, '2021-04-27 20:37:38', '17', '2015-4', 3, '', 9, 1),
(110, '2021-04-27 20:37:38', '18', '2016-5', 3, '', 9, 1),
(111, '2021-04-27 20:37:38', '19', '2016-5', 3, '', 9, 1),
(112, '2021-04-27 20:37:55', '20', '2016-1', 1, '', 9, 1),
(113, '2021-04-27 20:44:58', '20', '2018-1', 2, 'Modificado/a titulo.', 9, 1),
(114, '2021-04-27 20:45:04', '21', '2018-2', 1, '', 9, 1),
(115, '2021-04-27 20:45:10', '22', '2018-3', 1, '', 9, 1),
(116, '2021-04-27 20:45:16', '23', '2018-4', 1, '', 9, 1),
(117, '2021-04-27 20:45:22', '24', '2018-5', 1, '', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'app', 'periodos'),
(8, 'app', 'proyecto'),
(7, 'app', 'userprofile'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-27 15:07:27'),
(2, 'auth', '0001_initial', '2021-04-27 15:07:44'),
(3, 'admin', '0001_initial', '2021-04-27 15:07:48'),
(4, 'app', '0001_initial', '2021-04-27 15:07:55'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-04-27 15:07:57'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-04-27 15:08:00'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-04-27 15:08:02'),
(8, 'auth', '0004_alter_user_username_opts', '2021-04-27 15:08:02'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-04-27 15:08:03'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-04-27 15:08:04'),
(11, 'sessions', '0001_initial', '2021-04-27 15:08:04'),
(12, 'app', '0002_auto_20210427_1026', '2021-04-27 15:26:59'),
(13, 'app', '0003_auto_20210427_1030', '2021-04-27 15:31:04'),
(14, 'app', '0004_auto_20210427_1440', '2021-04-27 19:40:21'),
(15, 'app', '0005_auto_20210427_1525', '2021-04-27 20:25:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aa68pw6a6dlkjfh08azpn8l8dw7kefzx', 'NzVjMTE5MTQyNDU2ZTc0ODdjMTBkYzVlYjMwM2M3YTAzMGNlMDQ0Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjYzNjA4YzY1MzU0MzgyZjlmZjVhMGU4NjhkYjNlNDE5ZDYxM2M3NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2021-05-11 15:11:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_periodos`
--
ALTER TABLE `app_periodos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_periodos_2dbcba41` (`slug`);

--
-- Indices de la tabla `app_proyecto`
--
ALTER TABLE `app_proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_proyecto_2dbcba41` (`slug`),
  ADD KEY `app_proyecto_e8701ad4` (`user_id`),
  ADD KEY `app_proyecto_dbfe64f3` (`periodos_id`);

--
-- Indices de la tabla `app_userprofile`
--
ALTER TABLE `app_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `app_userprofile_2dbcba41` (`slug`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_periodos`
--
ALTER TABLE `app_periodos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `app_proyecto`
--
ALTER TABLE `app_proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `app_userprofile`
--
ALTER TABLE `app_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_proyecto`
--
ALTER TABLE `app_proyecto`
  ADD CONSTRAINT `app_proyecto_periodos_id_70854ede_fk_app_periodos_id` FOREIGN KEY (`periodos_id`) REFERENCES `app_periodos` (`id`),
  ADD CONSTRAINT `app_proyecto_user_id_553053a6_fk_app_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `app_userprofile` (`id`);

--
-- Filtros para la tabla `app_userprofile`
--
ALTER TABLE `app_userprofile`
  ADD CONSTRAINT `app_userprofile_user_id_4ed9bee8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
