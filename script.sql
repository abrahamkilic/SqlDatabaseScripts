USE [KutuphaneSistemi]
GO
/****** Object:  Table [dbo].[Giris]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giris](
	[KullaniciAdi] [varchar](50) NOT NULL,
	[Sifre] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapRezerve]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapRezerve](
	[KitapAdi] [varchar](50) NULL,
	[YazarAdi] [varchar](50) NULL,
	[OğrenciNo] [varchar](50) NULL,
	[ÖğrenciAdi] [varchar](50) NULL,
	[TeslimTarihi] [date] NULL,
	[TahTeslim] [date] NULL,
	[Personel] [varchar](50) NULL,
	[Rezerve] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapTablosu]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapTablosu](
	[KitapAdi] [varchar](50) NOT NULL,
	[YayinEvi] [varchar](50) NOT NULL,
	[KitapTuru] [varchar](50) NOT NULL,
	[BasımTarihi] [date] NULL,
	[YazarAdi] [varchar](50) NULL,
	[KitapID] [int] IDENTITY(1,1) NOT NULL,
	[rezerve] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciTablosu]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciTablosu](
	[OgrenciNo] [varchar](50) NOT NULL,
	[BolumAdı] [varchar](50) NOT NULL,
	[DogumTarihi] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CepTel] [varchar](50) NOT NULL,
	[AdresBilgisi] [varchar](500) NULL,
	[UyeSırası] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakipTablosu]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakipTablosu](
	[OgrenciNo] [varchar](50) NULL,
	[KitapAdi] [varchar](50) NULL,
	[TeslimAlan] [varchar](50) NULL,
	[TeslimEden] [varchar](50) NULL,
	[TeslimTarihi] [date] NULL,
	[TahminiTeslimSüresi] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usersInfo]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usersInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](40) NULL,
	[UserPassWord] [nchar](64) NULL,
	[UserMail] [nchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YazarTablosu]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YazarTablosu](
	[YazarAdi] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[AraKit]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[AraKit] (@KitapAdi varchar(50))
as
select*from KitapTablosu where KitapAdi like 'KitapAdi%'
GO
/****** Object:  StoredProcedure [dbo].[KitapAl]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[KitapAl]

(@OgrenciNo varchar(50))
as
select * from TakipTablosu where OgrenciNo=@OgrenciNo
GO
/****** Object:  StoredProcedure [dbo].[KitapAra]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[KitapAra] (@KitapAdi varchar(50))
as
select*from KitapTablosu where KitapAdi=  @KitapAdi
GO
/****** Object:  StoredProcedure [dbo].[kitapsil]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[kitapsil]
(
@KitapAdi varchar(50)
)
as
delete from KitapTablosu where KitapAdi=@KitapAdi
GO
/****** Object:  StoredProcedure [dbo].[KitapVer]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[KitapVer]

 @KitapAdi varchar

as

delete FROM KitapTablosu where @KitapAdi=KitapAdi
GO
/****** Object:  StoredProcedure [dbo].[List]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[List]
as
select* from OgrenciTablosu
GO
/****** Object:  StoredProcedure [dbo].[Listele]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Listele]

as

select * from KitapTablosu
GO
/****** Object:  StoredProcedure [dbo].[OgrAra]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[OgrAra] (@OgrenciNo varchar(50))
as
select*from OgrenciTablosu where OgrenciNo=@OgrenciNo
GO
/****** Object:  StoredProcedure [dbo].[OgrGüncelle]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[OgrGüncelle]
(
@OgrenciNo VARCHAR(50),
@BolumAdı varchar(50),
@DogumTarihi datetime,
@Email varchar(50),
@CepTel varchar(50),
@AdresBilgisi varchar(50)
)

as 

update OgrenciTablosu
set BolumAdı=@BolumAdı, DogumTarihi= @DogumTarihi ,Email=@Email,CepTel=@CepTel, AdresBilgisi=  @AdresBilgisi 
where OgrenciNo=@OgrenciNo

GO
/****** Object:  StoredProcedure [dbo].[OgrKaydet]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[OgrKaydet] 
(
@OgrenciNo VARCHAR(50),
@BolumAdı varchar(50),
@DogumTarihi datetime,
@Email varchar(50),
@CepTel varchar(50),
@AdresBilgisi varchar(50)
)

as 
insert into OgrenciTablosu values(@OgrenciNo,@BolumAdı, @DogumTarihi,@Email,@CepTel,@AdresBilgisi )


GO
/****** Object:  StoredProcedure [dbo].[sil]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sil]
(
@OgrenciNo varchar(50)
)
as
delete from OgrenciTablosu where OgrenciNo=@OgrenciNo
GO
/****** Object:  StoredProcedure [dbo].[sp_ibrahimRezerve]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_ibrahimRezerve]
(
@KitapAdi varchar(50), @YazarAdi varchar(50), @OğrenciNo varchar(50),@ÖğrenciAdi varchar(50), @TeslimTarihi date, @TahTeslim date, @Personel varchar(50),@Rezerve bit
)
as 
begin
insert into KitapRezerve(KitapAdi, YazarAdi, OğrenciNo, ÖğrenciAdi ,TeslimTarihi, TahTeslim ,Rezerve)values (@KitapAdi,@YazarAdi, @OğrenciNo, @ÖğrenciAdi ,@TeslimTarihi, @TahTeslim,@Rezerve)
end;
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapEkle]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_KitapEkle]
(
@KitapAdı varchar(50), @YayinEvi varchar(50) , @KitapTuru varchar(50),@BasımTarihi date, @YazarAdi varchar(50)
)
AS
BEGIN
	insert into KitapTablosu(KitapAdi,YayinEvi,KitapTuru,BasımTarihi,YazarAdi) values (@KitapAdı , @YayinEvi  , @KitapTuru ,@BasımTarihi , @YazarAdi )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_KitapSil]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_KitapSil]
(
@KitapAdi varchar(50)
)
as
delete from KitapTablosu where KitapAdi=@KitapAdi
GO
/****** Object:  StoredProcedure [dbo].[TakipListele]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[TakipListele]

as

select * from KitapRezerve where Rezerve=1
GO
/****** Object:  StoredProcedure [dbo].[TakipSil]    Script Date: 7.06.2024 12:09:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[TakipSil]
@OgrenciNo varchar(20)
as
delete from TakipTablosu where OgrenciNo=@OgrenciNo
GO
