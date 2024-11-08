USE [HotelReservationApp]
GO
/****** Object:  Table [dbo].[OdaTablosu]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaTablosu](
	[OdaID] [int] NOT NULL,
	[OdaAdı] [nchar](50) NULL,
	[Konum] [nchar](50) NULL,
	[Hizmet] [nchar](50) NULL,
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OdaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Odaview]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Odaview]
as
select * from OdaTablosu
GO
/****** Object:  Table [dbo].[AracıFirmaTablosu]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracıFirmaTablosu](
	[FirmaID] [nchar](50) NOT NULL,
	[Websitesi] [nchar](50) NULL,
	[OtelID] [int] NULL,
	[TelefonNo] [nchar](10) NULL,
	[MailAdres] [nchar](50) NULL,
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FirmaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[delLOGTable]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[delLOGTable](
	[delLogID] [int] NULL,
	[MüşteriSayısı] [int] NULL,
	[Tarih] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[girisbilgileri]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[girisbilgileri](
	[id] [nchar](6) NULL,
	[Kul_adı] [nchar](10) NULL,
	[sif] [nchar](10) NULL,
	[yetki] [nchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGTable]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGTable](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[MüşteriSayısı] [int] NULL,
	[Tarih] [date] NULL,
 CONSTRAINT [PK_LOGTable] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MusteriTablosu]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MusteriTablosu](
	[TCNO] [nchar](11) NOT NULL,
	[Ad] [nchar](50) NULL,
	[Soyad] [nchar](50) NULL,
	[TelefonNo] [nchar](10) NULL,
	[MailAdres] [nchar](50) NULL,
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TCNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtelTablosu]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtelTablosu](
	[OtelID] [int] NOT NULL,
	[OtelAdı] [nchar](50) NULL,
	[OdaID] [int] NULL,
	[TelefonNO] [nchar](10) NULL,
	[Adres] [nchar](100) NULL,
	[IndexId] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OtelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RezervasyonTablosu]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RezervasyonTablosu](
	[RezervID] [int] IDENTITY(1,1) NOT NULL,
	[GirisTarih] [date] NULL,
	[CıkısTarihi] [date] NULL,
	[FirmadID] [nchar](50) NULL,
	[TCNO] [nchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[RezervID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[silinenTable_1]    Script Date: 7.06.2024 12:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[silinenTable_1](
	[TCNO] [nchar](11) NOT NULL,
	[ad] [nchar](50) NULL,
	[soyad] [nchar](50) NULL,
	[telefonno] [nchar](50) NULL,
	[mailadres] [nchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AracıFirmaTablosu] ON 

INSERT [dbo].[AracıFirmaTablosu] ([FirmaID], [Websitesi], [OtelID], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'hotels                                            ', N'hotels.com                                        ', 2, N'2166421522', N'hotels@gmail.com                                  ', 4)
INSERT [dbo].[AracıFirmaTablosu] ([FirmaID], [Websitesi], [OtelID], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'joly                                              ', N'joly.com                                          ', 3, N'2222222222', N'joly@gmail.com                                    ', 5)
SET IDENTITY_INSERT [dbo].[AracıFirmaTablosu] OFF
GO
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 4, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 5, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 6, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 7, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 8, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 9, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[delLOGTable] ([delLogID], [MüşteriSayısı], [Tarih]) VALUES (NULL, 10, CAST(N'2023-01-12' AS Date))
GO
INSERT [dbo].[girisbilgileri] ([id], [Kul_adı], [sif], [yetki]) VALUES (N'36    ', N'admin     ', N'admin     ', N'0')
INSERT [dbo].[girisbilgileri] ([id], [Kul_adı], [sif], [yetki]) VALUES (N'46    ', N'operator1 ', N'123       ', N'1')
INSERT [dbo].[girisbilgileri] ([id], [Kul_adı], [sif], [yetki]) VALUES (N'06    ', N'operator2 ', N'123       ', N'2')
GO
SET IDENTITY_INSERT [dbo].[LOGTable] ON 

INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (1, 3, CAST(N'2023-01-10' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (2, 4, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (3, 5, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (4, 4, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (5, 5, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (6, 6, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (7, 7, CAST(N'2023-01-11' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (8, 8, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (9, 9, CAST(N'2023-01-12' AS Date))
INSERT [dbo].[LOGTable] ([LogId], [MüşteriSayısı], [Tarih]) VALUES (10, 10, CAST(N'2023-01-12' AS Date))
SET IDENTITY_INSERT [dbo].[LOGTable] OFF
GO
SET IDENTITY_INSERT [dbo].[MusteriTablosu] ON 

INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'10234412245', N'ahmet                                             ', N'mehmet                                            ', N'          ', N'-------                                           ', 1)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'20134652188', N'Alican                                            ', N'KOÇ                                               ', N'5469821166', N'asdq12@gmail.com                                  ', 17)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'21678945611', N'dasf                                              ', N'safd                                              ', N'6546549977', N'sadf                                              ', 13)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'30637341655', N'sajdnfk                                           ', N'skdjbf                                            ', N'5469261992', N'sadfj12@gmail.com                                 ', 10)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'34339818098', N'İbrahim                                           ', N'Kılıç                                             ', N'5376145541', N'fdlhdf332_}[$#@gmail.com                          ', 8)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'41227492674', N'Şafak                                             ', N'ATASEVER                                          ', N'5078268515', N'SDASDSAD@GMAİL.COM                                ', 15)
INSERT [dbo].[MusteriTablosu] ([TCNO], [Ad], [Soyad], [TelefonNo], [MailAdres], [IndexId]) VALUES (N'45612345612', N'MEHMET                                            ', N'ŞENTÜRK                                           ', N'5072689515', N'gfsdfdsadfsd@gmail.com                            ', 16)
SET IDENTITY_INSERT [dbo].[MusteriTablosu] OFF
GO
SET IDENTITY_INSERT [dbo].[OdaTablosu] ON 

INSERT [dbo].[OdaTablosu] ([OdaID], [OdaAdı], [Konum], [Hizmet], [IndexId]) VALUES (1, N'15                                                ', N'uzay                                              ', N'krallık                                           ', 1)
INSERT [dbo].[OdaTablosu] ([OdaID], [OdaAdı], [Konum], [Hizmet], [IndexId]) VALUES (2, N'30                                                ', N'dağ                                               ', N'apart                                             ', 2)
INSERT [dbo].[OdaTablosu] ([OdaID], [OdaAdı], [Konum], [Hizmet], [IndexId]) VALUES (3, N'35                                                ', N'bahçe                                             ', N'standart                                          ', 3)
INSERT [dbo].[OdaTablosu] ([OdaID], [OdaAdı], [Konum], [Hizmet], [IndexId]) VALUES (4, N'KralDairesi                                       ', N'gökyüzü                                           ', N'kraliyet                                          ', 4)
SET IDENTITY_INSERT [dbo].[OdaTablosu] OFF
GO
SET IDENTITY_INSERT [dbo].[OtelTablosu] ON 

INSERT [dbo].[OtelTablosu] ([OtelID], [OtelAdı], [OdaID], [TelefonNO], [Adres], [IndexId]) VALUES (1, N'hilton nişantaşı                                  ', 1, N'4554416646', N'nişantaşı                                                                                           ', 1)
INSERT [dbo].[OtelTablosu] ([OtelID], [OtelAdı], [OdaID], [TelefonNO], [Adres], [IndexId]) VALUES (2, N'ramoda                                            ', 2, N'2166425555', N'izmir                                                                                               ', 2)
INSERT [dbo].[OtelTablosu] ([OtelID], [OtelAdı], [OdaID], [TelefonNO], [Adres], [IndexId]) VALUES (3, N'dedeman                                           ', 3, N'2166421111', N'antalya                                                                                             ', 3)
INSERT [dbo].[OtelTablosu] ([OtelID], [OtelAdı], [OdaID], [TelefonNO], [Adres], [IndexId]) VALUES (4, N'qatar                                             ', 4, N'1121121122', N'doha                                                                                                ', 4)
SET IDENTITY_INSERT [dbo].[OtelTablosu] OFF
GO
SET IDENTITY_INSERT [dbo].[RezervasyonTablosu] ON 

INSERT [dbo].[RezervasyonTablosu] ([RezervID], [GirisTarih], [CıkısTarihi], [FirmadID], [TCNO]) VALUES (8, CAST(N'2004-04-04' AS Date), CAST(N'2004-04-06' AS Date), N'hotels                                            ', N'20134652188')
SET IDENTITY_INSERT [dbo].[RezervasyonTablosu] OFF
GO
INSERT [dbo].[silinenTable_1] ([TCNO], [ad], [soyad], [telefonno], [mailadres]) VALUES (N'12345678933', N'rthe                                              ', N'htr                                               ', N'5469261111                                        ', N'                                                  ')
INSERT [dbo].[silinenTable_1] ([TCNO], [ad], [soyad], [telefonno], [mailadres]) VALUES (N'30637341658', N'Alican                                            ', N'KOÇ                                               ', N'5469261994                                        ', N'alican112lg@gmail.com                             ')
GO
ALTER TABLE [dbo].[MusteriTablosu] ADD  CONSTRAINT [ck_MailAdres]  DEFAULT ('-------') FOR [MailAdres]
GO
ALTER TABLE [dbo].[OdaTablosu] ADD  CONSTRAINT [ck_OdaAdı]  DEFAULT ('Standart') FOR [OdaAdı]
GO
ALTER TABLE [dbo].[AracıFirmaTablosu]  WITH CHECK ADD  CONSTRAINT [FK_AracıFirmaTablosu_OtelTablosu] FOREIGN KEY([OtelID])
REFERENCES [dbo].[OtelTablosu] ([OtelID])
GO
ALTER TABLE [dbo].[AracıFirmaTablosu] CHECK CONSTRAINT [FK_AracıFirmaTablosu_OtelTablosu]
GO
ALTER TABLE [dbo].[OtelTablosu]  WITH CHECK ADD  CONSTRAINT [FK_OtelTablosu_OdaTablosu] FOREIGN KEY([OdaID])
REFERENCES [dbo].[OdaTablosu] ([OdaID])
GO
ALTER TABLE [dbo].[OtelTablosu] CHECK CONSTRAINT [FK_OtelTablosu_OdaTablosu]
GO
ALTER TABLE [dbo].[RezervasyonTablosu]  WITH CHECK ADD  CONSTRAINT [FK_RezervasyonTablosu_AracıFirmaTablosu] FOREIGN KEY([FirmadID])
REFERENCES [dbo].[AracıFirmaTablosu] ([FirmaID])
GO
ALTER TABLE [dbo].[RezervasyonTablosu] CHECK CONSTRAINT [FK_RezervasyonTablosu_AracıFirmaTablosu]
GO
ALTER TABLE [dbo].[RezervasyonTablosu]  WITH CHECK ADD  CONSTRAINT [FK_RezervasyonTablosu_MusteriTablosu] FOREIGN KEY([TCNO])
REFERENCES [dbo].[MusteriTablosu] ([TCNO])
GO
ALTER TABLE [dbo].[RezervasyonTablosu] CHECK CONSTRAINT [FK_RezervasyonTablosu_MusteriTablosu]
GO
ALTER TABLE [dbo].[MusteriTablosu]  WITH CHECK ADD  CONSTRAINT [ck_TCNOcontr] CHECK  (([tcno]>=(10000000000.) AND [tcno]<=(99999999999.)))
GO
ALTER TABLE [dbo].[MusteriTablosu] CHECK CONSTRAINT [ck_TCNOcontr]
GO
