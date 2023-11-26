USE [LightNovelStore]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[TransactStatus]')
             AND type in (N'U'))
    DROP TABLE [dbo].[TransactStatus]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Shipper]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Shipper]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Roles]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Publisher]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Publisher]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Product]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]')
             AND type in (N'U'))
    DROP TABLE [dbo].[OrderDetails]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Order]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Customers]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Category]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Cart]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[AttributePrices]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[AttributePrices]')
             AND type in (N'U'))
    DROP TABLE [dbo].[AttributePrices]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Attribute]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Attribute]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Account]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/04/2022 14:39:26 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]')
             AND type in (N'U'))
    DROP TABLE [dbo].[__EFMigrationsHistory]
GO
ALTER TABLE [dbo].[Product]
    DROP CONSTRAINT [FK_Product_Publisher]
GO
ALTER TABLE [dbo].[Product]
    DROP CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[OrderDetails]
    DROP CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[OrderDetails]
    DROP CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[Order]
    DROP CONSTRAINT [FK_Order_TransactStatus]
GO
ALTER TABLE [dbo].[Order]
    DROP CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[AttributePrices]
    DROP CONSTRAINT [FK_AttributePrices_Product]
GO
ALTER TABLE [dbo].[AttributePrices]
    DROP CONSTRAINT [FK_AttributePrices_Attribute]
GO
ALTER TABLE [dbo].[Account]
    DROP CONSTRAINT [FK_Account_Roles]
GO
ALTER TABLE [dbo].[Roles]
    DROP CONSTRAINT [DF__Roles__Descripti__412EB0B6]
GO
ALTER TABLE [dbo].[Product]
    DROP CONSTRAINT [DF__Product__Homefla__403A8C7D]
GO
ALTER TABLE [dbo].[Order]
    DROP CONSTRAINT [DF__Order__OrderDate__3F466844]
GO
ALTER TABLE [dbo].[Category]
    DROP CONSTRAINT [DF__Category__IsPubl__3E52440B]
GO
ALTER TABLE [dbo].[Cart]
    DROP CONSTRAINT [DF__Cart__Price__3D5E1FD2]
GO
ALTER TABLE [dbo].[Cart]
    DROP CONSTRAINT [DF__Cart__Quantity__3C69FB99]
GO
ALTER TABLE [dbo].[Account]
    DROP CONSTRAINT [DF__Account__FullNam__3B75D760]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory]
(
    [MigrationId]    [nvarchar](150) NOT NULL,
    [ProductVersion] [nvarchar](32)  NOT NULL,
    CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED
        (
         [MigrationId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account]
(
    [UserID]     [int] IDENTITY (1,1) NOT NULL,
    [Username]   [nvarchar](50)       NOT NULL,
    [Password]   [nvarchar](50)       NOT NULL,
    [Email]      [nvarchar](100)      NULL,
    [FullName]   [nvarchar](150)      NOT NULL,
    [Phone]      [varchar](13)        NULL,
    [CreateDate] [datetime]           NULL,
    [LastLogin]  [datetime]           NULL,
    [RoleId]     [int]                NULL,
    [IsActived]  [bit]                NOT NULL,
    [Randomkey]  [nchar](10)          NULL,
    CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED
        (
         [UserID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute]
(
    [AttributeID] [int] IDENTITY (1,1) NOT NULL,
    [Name]        [nvarchar](50)       NULL,
    CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED
        (
         [AttributeID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributePrices]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributePrices]
(
    [AttributePriceID] [int] IDENTITY (1,1) NOT NULL,
    [AttributeID]      [int]                NULL,
    [ProductID]        [int]                NULL,
    [Price]            [int]                NULL,
    [IsActived]        [bit]                NULL,
    CONSTRAINT [PK_AttributePrices] PRIMARY KEY CLUSTERED
        (
         [AttributePriceID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart]
(
    [CartID]      [int] IDENTITY (1,1) NOT NULL,
    [UserID]      [int]                NULL,
    [ProductID]   [int]                NULL,
    [Quantity]    [int]                NOT NULL,
    [Price]       [int]                NOT NULL,
    [DateCreated] [datetime]           NULL,
    CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED
        (
         [CartID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category]
(
    [CateID]       [int] IDENTITY (1,1) NOT NULL,
    [CategoryName] [nvarchar](200)      NOT NULL,
    [Descriptions] [nvarchar](250)      NULL,
    [ParentID]     [int]                NOT NULL,
    [Levels]       [int]                NULL,
    [Ordering]     [int]                NULL,
    [IsPublished]  [bit]                NOT NULL,
    [ThumbImg]     [nvarchar](250)      NULL,
    [Title]        [nvarchar](200)      NULL,
    [Alias]        [nvarchar](250)      NULL,
    [Cover]        [nvarchar](255)      NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED
        (
         [CateID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers]
(
    [CustommerID] [int] IDENTITY (1,1) NOT NULL,
    [Password]    [nvarchar](max)      NULL,
    [FullName]    [nvarchar](max)      NULL,
    [BirthDay]    [datetime]           NULL,
    [Avatar]      [nvarchar](250)      NULL,
    [Address]     [nvarchar](max)      NULL,
    [Mail]        [nvarchar](max)      NULL,
    [Phone]       [varchar](13)        NULL,
    [District]    [nvarchar](max)      NULL,
    [Ward]        [nvarchar](max)      NULL,
    [CreateDate]  [datetime]           NULL,
    [LastLogin]   [datetime]           NULL,
    [IsActived]   [bit]                NOT NULL,
    [Username]    [nvarchar](max)      NULL,
    [Province]    [nvarchar](max)      NULL,
    [Randomkey]   [nvarchar](10)       NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED
        (
         [CustommerID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order]
(
    [OrderID]             [int] IDENTITY (1,1) NOT NULL,
    [CustomerID]          [int]                NULL,
    [OrderDate]           [datetime]           NOT NULL,
    [TransactionStatusID] [int]                NULL,
    [IsDeleted]           [bit]                NULL,
    [IsPaid]              [bit]                NULL,
    [Note]                [nvarchar](max)      NULL,
    [TotalMoney]          [decimal](18, 2)     NULL,
    [District]            [nvarchar](max)      NULL,
    [Province]            [nvarchar](max)      NULL,
    [Ward]                [nvarchar](max)      NULL,
    [Address]             [nvarchar](max)      NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED
        (
         [OrderID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails]
(
    [OrderDetailID] [int] IDENTITY (1,1) NOT NULL,
    [OrderID]       [int]                NULL,
    [ProductID]     [int]                NULL,
    [OrderNumber]   [int]                NULL,
    [Quantity]      [int]                NULL,
    [Discount]      [int]                NULL,
    [Total]         [decimal](18, 2)     NULL,
    [CreateDate]    [datetime]           NULL,
    [Price]         [decimal](18, 2)     NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED
        (
         [OrderDetailID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product]
(
    [ProductID]     [int]            NOT NULL,
    [ProductName]   [nvarchar](255)  NOT NULL,
    [ShortDesc]     [nvarchar](255)  NULL,
    [Descriptions]  [nvarchar](4000) NULL,
    [CateID]        [int]            NULL,
    [Price]         [decimal](18, 2) NOT NULL,
    [Discount]      [int]            NULL,
    [ThumbImg]      [nvarchar](max)  NULL,
    [Video]         [nvarchar](max)  NULL,
    [DateCreated]   [datetime]       NULL,
    [DateModified]  [datetime]       NULL,
    [IsBestsellers] [bit]            NOT NULL,
    [Homeflag]      [bit]            NOT NULL,
    [IsActived]     [bit]            NOT NULL,
    [Tag]           [nvarchar](max)  NULL,
    [Title]         [nvarchar](max)  NULL,
    [Alias]         [nvarchar](max)  NULL,
    [UnitInStock]   [int]            NULL,
    [PublisherID]   [int]            NULL,
    [SalesPrice]    [decimal](18, 2) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED
        (
         [ProductID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher]
(
    [PublisherID]   [int] IDENTITY (1,1) NOT NULL,
    [PublisherName] [nvarchar](100)      NULL,
    [Logo]          [nvarchar](max)      NULL,
    CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED
        (
         [PublisherID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles]
(
    [RoleId]       [int] IDENTITY (1,1) NOT NULL,
    [RoleName]     [nvarchar](50)       NULL,
    [Descriptions] [nvarchar](200)      NOT NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED
        (
         [RoleId] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipper]
(
    [ShipperID]   [int] IDENTITY (1,1) NOT NULL,
    [ShipperName] [nvarchar](200)      NULL,
    [Phone]       [varchar](13)        NULL,
    [Company]     [nvarchar](255)      NULL,
    [Shipdate]    [datetime]           NULL,
    CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED
        (
         [ShipperID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactStatus]    Script Date: 11/04/2022 14:39:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactStatus]
(
    [TransactionStatusID] [int] IDENTITY (1,1) NOT NULL,
    [Status]              [nvarchar](50)       NULL,
    [Descriptions]        [nvarchar](50)       NULL,
    CONSTRAINT [PK_TransactStatus] PRIMARY KEY CLUSTERED
        (
         [TransactionStatusID] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON

INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin],
                        [RoleId], [IsActived], [Randomkey])
VALUES (1, N'Admin', N'2e95e0081e8d5a1fd6f86eaade7fb80c', N'ngothanhlong19943@gmail.com', N'Ngô Thành Long',
        N'0355767198', NULL, CAST(N'2022-04-09T11:42:10.380' AS DateTime), 3, 1, N'4@163     ')
INSERT [dbo].[Account] ([UserID], [Username], [Password], [Email], [FullName], [Phone], [CreateDate], [LastLogin],
                        [RoleId], [IsActived], [Randomkey])
VALUES (2, N'Staff', N'88af302b04ad283a84c146f50423f844', N'mahdi.noal@zooants.com', N'Đỗ Bá Sơn', N'0968454612', NULL,
        CAST(N'2022-04-07T11:43:02.807' AS DateTime), 2, 1, N'*rcj9     ')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON

INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished],
                         [ThumbImg], [Title], [Alias], [Cover])
VALUES (1, N'Novel Nhật Bản', N'<p>Văn học Nhật Bản</p>', 0, NULL, NULL, 1, N'laptop.png', N'JPNovel', N'novelnhtbn',
        NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished],
                         [ThumbImg], [Title], [Alias], [Cover])
VALUES (2, N'Novel Trung Quốc', N'<p>Văn học Trung Quốc<br></p>', 0, NULL, NULL, 1, N'smartphone.jpg', N'CNNovel',
        N'noveltrungquc', NULL)
INSERT [dbo].[Category] ([CateID], [CategoryName], [Descriptions], [ParentID], [Levels], [Ordering], [IsPublished],
                         [ThumbImg], [Title], [Alias], [Cover])
VALUES (3, N'Novel Hàn Quốc', N'<p>Văn học Hàn Quốc</p>', 0, NULL, NULL, 1, N'phkin.jpg', N'KRNovel', N'novelhnquc',
        NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON

INSERT [dbo].[Customers] ([CustommerID], [Password], [FullName], [BirthDay], [Avatar], [Address], [Mail], [Phone],
                          [District], [Ward], [CreateDate], [LastLogin], [IsActived], [Username], [Province],
                          [Randomkey])
VALUES (4, N'ff1ecb27bd8d1ab168c7bde532e77ffa', N'Ngô Thành Long', CAST(N'2000-11-29T10:31:00.000' AS DateTime),
        N'ngthnhlong.jpg', N'Khu 10', N'ngothanhlong19943@gmail.com', N'0355767198', N'Huyện Phù Ninh', N'Xã Phù Ninh',
        CAST(N'2022-04-07T10:25:54.000' AS DateTime), CAST(N'2022-04-07T10:32:27.990' AS DateTime), 1, N'notmiyoujiok',
        N'Phú Thọ', N'opd!y')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON

INSERT [dbo].[Order] ([OrderID], [CustomerID], [OrderDate], [TransactionStatusID], [IsDeleted], [IsPaid], [Note],
                      [TotalMoney], [District], [Province], [Ward], [Address])
VALUES (8, 4, CAST(N'2022-04-09T11:48:54.000' AS DateTime), 5, 1, 1, NULL, CAST(160000.00 AS Decimal(18, 2)),
        N'Huyện Phù Ninh', N'Phú Thọ', N'Xã Phù Ninh', N'Khu 10')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [ProductID], [OrderNumber], [Quantity], [Discount], [Total],
                             [CreateDate], [Price])
VALUES (10, 8, 24, NULL, 1, NULL, CAST(160000.00 AS Decimal(18, 2)), CAST(N'2022-04-09T11:48:54.930' AS DateTime),
        CAST(160000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (1, N'Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé (Tập 5)', NULL, NULL, 1, CAST(90000.00 AS Decimal(18, 2)), 10,
        N'tnthnukhngbnanhcuchngemnhtp5.jpg', NULL, CAST(N'2022-04-11T11:52:43.783' AS DateTime),
        CAST(N'2022-04-11T11:52:43.783' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'tnthnukhngbnanhcuchngemnhtp5', 50, 5,
        CAST(81000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (2, N'Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé (Tập 3)', NULL, NULL, 1, CAST(90000.00 AS Decimal(18, 2)), 10,
        N'tnthnukhngbnanhcuchngemnhtp3.jpg', NULL, CAST(N'2022-04-11T11:51:58.167' AS DateTime),
        CAST(N'2022-04-11T11:51:58.167' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'tnthnukhngbnanhcuchngemnhtp3', 50, 5,
        CAST(81000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (3, N'Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé (Tập 2)', NULL, NULL, 1, CAST(90000.00 AS Decimal(18, 2)), 10,
        N'tnthnukhngbnanhcuchngemnhtp2.jpg', NULL, CAST(N'2022-04-11T11:51:16.033' AS DateTime),
        CAST(N'2022-04-11T11:51:16.033' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'tnthnukhngbnanhcuchngemnhtp2', 50, 5,
        CAST(81000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (4, N'Tận Thế Nếu Không Bận, Anh Cứu Chúng Em Nhé (Tập 1)', NULL, NULL, 1, CAST(90000.00 AS Decimal(18, 2)), 10,
        N'tnthnukhngbnanhcuchngemnhtp1.jpg', NULL, CAST(N'2022-04-11T11:50:34.477' AS DateTime),
        CAST(N'2022-04-11T11:50:34.477' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'tnthnukhngbnanhcuchngemnhtp1', 50, 5,
        CAST(81000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (5, N'Hành Trình Của Elaina (Tập 10)', NULL, NULL, 1, CAST(128000.00 AS Decimal(18, 2)), 10,
        N'hnhtrnhcaelainatp10.jpeg', NULL, CAST(N'2022-04-11T11:45:32.793' AS DateTime),
        CAST(N'2022-04-11T11:45:32.793' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'hnhtrnhcaelainatp10', 10, 2,
        CAST(115200.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (6, N'Hành Trình Của Elaina (Tập 6)', NULL, NULL, 1, CAST(98000.00 AS Decimal(18, 2)), 10,
        N'hnhtrnhcaelainatp6.jpg', NULL, CAST(N'2022-04-11T11:44:52.000' AS DateTime),
        CAST(N'2022-04-11T11:49:32.730' AS DateTime), 0, 1, 1, NULL, N'JPNovel', N'hnhtrnhcaelainatp6', 50, 1,
        CAST(88200.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (7, N'Hành Trình Của Elaina (Tập 4) Tái Bản', NULL, NULL, 1, CAST(98000.00 AS Decimal(18, 2)), 10,
        N'hnhtrnhcaelainatp4tibn.jpg', NULL, CAST(N'2022-04-11T11:44:02.000' AS DateTime),
        CAST(N'2022-04-11T11:49:43.097' AS DateTime), 0, 1, 1, NULL, N'JPNovel', N'hnhtrnhcaelainatp4tibn', 50, 2,
        CAST(88200.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (8, N'Vì Con Gái Tôi Có Thể Đánh Bại Cả Ma Vương (Tập 5)', NULL, NULL, 1, CAST(140000.00 AS Decimal(18, 2)), 20,
        N'vcongiticthdnhbicmavngtp5.jpg', NULL, CAST(N'2022-04-11T11:39:30.427' AS DateTime),
        CAST(N'2022-04-11T11:39:30.427' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'vcongiticthdnhbicmavngtp5', 40, 6,
        CAST(112000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (9, N'Vì Con Gái Tôi Có Thể Đánh Bại Cả Ma Vương (Tập 4)', NULL, NULL, 1, CAST(129000.00 AS Decimal(18, 2)), 10,
        N'vcongiticthdnhbicmavngtp4.png', NULL, CAST(N'2022-04-11T11:38:38.000' AS DateTime),
        CAST(N'2022-04-11T11:39:54.773' AS DateTime), 0, 1, 1, NULL, N'JPNovel', N'vcongiticthdnhbicmavngtp4', 50, 6,
        CAST(116100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (10, N'Vì Con Gái Tôi Có Thể Đánh Bại Cả Ma Vương (Tập 2)', NULL, NULL, 1, CAST(109000.00 AS Decimal(18, 2)), 10,
        N'vcongiticthdnhbicmavngtp2.jpg', NULL, CAST(N'2022-04-11T11:34:46.000' AS DateTime),
        CAST(N'2022-04-11T11:40:03.067' AS DateTime), 0, 1, 1, NULL, N'JPNovel', N'vcongiticthdnhbicmavngtp2', 50, 6,
        CAST(98100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (11, N'Vì Con Gái Tôi Có Thể Đánh Bại Cả Ma Vương (Tập 1)', NULL, N'<p class="MsoNormal">Thị trấn nhỏ Kreuz – nơi cầu vồng chạm đường chân trời, nơi
các vị thần bảo hộ đang ngày đêm dõi theo… và nơi ấy, câu chuyện giữa cô bé
Latina cùng chàng trai Dale Reki lại được lật sang một chương mới.</p><p>



</p><p class="MsoNormal">Vậy là đã hai năm trôi qua kể từ ngày Dale tìm thấy Latina -
cô bé thuộc Quỷ nhân tộc - phía ngoài bìa rừng. Ngày qua ngày, cậu luôn dõi
theo đứa trẻ yếu ớt, bơ vơ này lớn lên khỏe mạnh. Giờ đây khi nằm trong vòng
tay cậu, cô nhóc trông thật nhẹ nhõm, thậm chí còn nở một nụ cười hạnh phúc.<o:p></o:p></p>', 1,
        CAST(98000.00 AS Decimal(18, 2)), 0, N'vcongiticthdnhbicmavngtp1.jpg', NULL,
        CAST(N'2022-04-11T11:33:44.050' AS DateTime), CAST(N'2022-04-11T11:33:44.050' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'vcongiticthdnhbicmavngtp1', 50, 6, CAST(98000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (12, N'Chủ Tiệm Bánh Chiến Binh Và Cô Phục Vụ Người Máy (Tập 5)', NULL, NULL, 1,
        CAST(129000.00 AS Decimal(18, 2)), 10, N'chtimbnhchinbinhvcphcvngimytp5.jpg', NULL,
        CAST(N'2022-04-11T11:11:41.000' AS DateTime), CAST(N'2022-04-11T11:15:18.520' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'chtimbnhchinbinhvcphcvngimytp5', 100, 1, CAST(116100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (13, N'Chủ Tiệm Bánh Chiến Binh Và Cô Phục Vụ Người Máy (Tập 4)', NULL, NULL, 1,
        CAST(129000.00 AS Decimal(18, 2)), 10, N'chtimbnhchinbinhvcphcvngimytp4.jpg', NULL,
        CAST(N'2022-04-11T11:10:44.000' AS DateTime), CAST(N'2022-04-11T11:15:24.220' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'chtimbnhchinbinhvcphcvngimytp4', 100, 1, CAST(116100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (14, N'Chủ Tiệm Bánh Chiến Binh Và Cô Phục Vụ Người Máy (Tập 3)', NULL, NULL, 1,
        CAST(115000.00 AS Decimal(18, 2)), 15, N'chtimbnhchinbinhvcphcvngimytp3.png', NULL,
        CAST(N'2022-04-11T11:09:49.000' AS DateTime), CAST(N'2022-04-11T11:15:31.880' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'chtimbnhchinbinhvcphcvngimytp3', 100, 1, CAST(97750.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (15, N'Chủ Tiệm Bánh Chiến Binh Và Cô Phục Vụ Người Máy (Tập 2)', NULL, NULL, 1,
        CAST(113000.00 AS Decimal(18, 2)), 15, N'chtimbnhchinbinhvcphcvngimytp2.jpg', NULL,
        CAST(N'2022-04-11T11:08:42.000' AS DateTime), CAST(N'2022-04-11T11:08:52.620' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'chtimbnhchinbinhvcphcvngimytp2', 100, 1, CAST(96050.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (16, N'Chủ Tiệm Bánh Chiến Binh Và Cô Phục Vụ Người Máy (Tập 1)', NULL, NULL, 1,
        CAST(109000.00 AS Decimal(18, 2)), 15, N'chtimbnhchinbinhvcphcvngimy.jpg', NULL,
        CAST(N'2022-04-11T10:47:44.000' AS DateTime), CAST(N'2022-04-11T11:06:54.080' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'chtimbnhchinbinhvcphcvngimytp1', 100, 1, CAST(92650.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (17, N'World Teacher (Tập 4)', NULL, N'<p>Tác giả: Koichi Neko</p><p>Dịch: RIMOKA</p><p>Năm xuất bản: 2021</p><p class="MsoNormal">Những ngày tháng luyện tập ở Elysium êm đềm trôi qua, và các
đệ tử của Sirius chẳng mấy chốc đã trưởng thành. Vì muốn các đệ tử trưởng thành
hơn, ngay trong tình huống cam go nhất, Sirius đã quyết định không ra tay giúp
đỡ họ. Không còn Sirius ở bên, Emilia, Reese và Reus buộc phải phát huy hết thực
lực của chính mình …!! Một thời gian sau…</p><p class="MsoNormal">Ngày Sirius và các đệ tử tốt nghiệp cũng sắp sửa đến. Trước
ngày tốt nghiệp, mỗi một học viên đều phải hoàn thành một thử thách được giao.
Với Sirius, đó chính là giao chiến công khai với thầy hiệu trưởng Rodwell – bậc
thầy ma pháp sở hữu sức mạnh bậc nhất!</p><p>







</p><p class="MsoNormal">“Hãy nhận lời thách đấu của ta. Tất nhiên, ta sẽ chiến đấu
nghiêm túc với trò!”<o:p></o:p></p>', 1, CAST(129000.00 AS Decimal(18, 2)), 15, N'worldteachertp4.jpg', NULL,
        CAST(N'2022-04-11T10:38:03.000' AS DateTime), CAST(N'2022-04-11T10:43:19.323' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'worldteachertp4', 100, 2, CAST(109650.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (18, N'World Teacher (Tập 3)', NULL, N'<p>Tác giả: Koichi Neko</p><p>Dịch: Sétuko</p><p>Năm xuất bản: 2020</p><p class="MsoNormal"><span style="font-size: 10.5pt; line-height: 107%; color: rgb(51, 51, 51); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;">Công cuộc đào tạo đệ tử của Sirius, vốn là điệp viên mạnh nhất
thế giới, tiếp tục thuận lợi sau khi chuyển đến Elysium. Mặt khác, năng lực và
sự trưởng thành nhanh chóng của các đệ tử đã trở thành mối đe dọa tới những thế
lực thù địch. Khi các đệ tử đến tuổi được phép khám phá mê cung, bàn tay của quỷ
cuối cùng cũng tiếp cận được họ. Là một người thầy tới cứu học trò khi họ rơi
vào cạm bẫy của kẻ thù, Sirius đã phát huy năng lực mà cậu vẫn luôn che giấu!!!</span><o:p></o:p></p>', 1,
        CAST(129000.00 AS Decimal(18, 2)), 20, N'worldteachertp3.jpeg', NULL,
        CAST(N'2022-04-11T10:29:00.000' AS DateTime), CAST(N'2022-04-11T10:30:02.183' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'worldteachertp3', 100, 2, CAST(103200.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (19, N'World Teacher (Tập 2)', NULL, N'<p>Tác giả: Koichi Neko</p><p>Dịch: Minh Hoàng</p><p>Năm xuất bản: 2020</p><p class="MsoNormal">Cựu đặc vụ mạnh nhất thế giới sau khi chuyển sinh sang thế
giới khác với hình dáng của một đứa trẻ. Sirius, để hoàn thành ước nguyện chỉ dạy
học trò, cậu đã bắt đầu nhận về dạy dỗ những đệ tử đầu tiên của mình. Kể từ đó
vài năm, đã đến lúc cậu phải rời xa ngôi nhà của mình và bắt đầu hành trình hướng
đến học viện Elysion. Với năng lực ma thuật vượt xa so với người thường, thể hiện
ở kỳ kiểm tra đầu vào, tất cả mọi ánh mắt đều tập trung về phía họ. Tuy nhiên,
cũng chính vì những biểu hiện quá dị thường đó, những học viên là quý tộc cùng
một số giáo viên khác đều thể hiện rõ thái độ không mấy thân thiện. Và Reese, một
cô gái cũng mang gánh nặng cùng phiền muộn không đáng có bởi chính sự dị thường
của mình… Sau khi gặp được Sirius, vận mệnh của cô đã bắt đầu chuyển động, rẽ
sang hướng cô chưa từng nghĩ đến.<o:p></o:p></p>', 1, CAST(129000.00 AS Decimal(18, 2)), 15, N'worldteachertp2.png',
        NULL, CAST(N'2022-04-11T10:06:41.000' AS DateTime), CAST(N'2022-04-11T10:10:01.963' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'worldteachertp2', 100, 2, CAST(109650.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (20, N'World Teacher (Tập 1)', NULL,
        N'<p>Tác giả: Koichi Neko</p><p>Dịch: Minh Hoàng</p><p>Năm xuất bản: 2019</p><p class="MsoNormal">Một ông già từng được xưng tụng là điệp viên tài giỏi nhất thế giới, sau khi về hưu đã quyết định trở thành một thầy giáo, đào tạo cho những cô cậu trẻ tuổi để nối nghiệp mình. Tuy nhiên, chỉ vài năm sau đó, ông đã bị ám sát ở tuổi sáu mươi trong một nhiệm vụ chống lại thế giới ngầm. Những tưởng rằng đã chết, nhưng khi tỉnh dậy thì lại thấy bản thân được đầu thai ở một thế giới khác, nơi mà phép thuật và những sinh vật huyền bí cùng tồn tại. Bởi kí ức của kiếp trước vẫn được giữ lại, lão già – hiện giờ là một đứa trẻ sơ sinh nhanh chóng nắm bắt tình hình, và bắt đầu một sự khổ luyện ngay từ khi còn bé. Sau những chăm chỉ rèn luyện, cậu bé đã đạt được loại phép thuật đặc biệt, cùng với một nguồn sức mạnh to lớn. Cậu quyết định sẽ tiếp tục sự nghiệp giáo viên còn dang dở ở kiếp trước.&nbsp;<br></p><p class="MsoNormal"><o:p></o:p></p>',
        1, CAST(129000.00 AS Decimal(18, 2)), 10, N'worldteachertp1.jpg', NULL,
        CAST(N'2022-04-11T10:00:59.000' AS DateTime), CAST(N'2022-04-11T10:06:57.103' AS DateTime), 0, 1, 1, NULL,
        N'JPNovel', N'worldteachertp1', 100, 2, CAST(116100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (21, N'Bác Sĩ Cuối Cùng Dưới Tán Hoa Anh Đào', NULL,
        N'<p>Tác giả: Atsuto Ninomiya</p><p>Dịch: Mai</p><p>Năm xuất bản: 2020</p><p style="margin-right: 0px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;"><br></p>',
        1, CAST(119000.00 AS Decimal(18, 2)), 10, N'bcscuicngditnhoaanhdo.jpg', NULL,
        CAST(N'2022-04-11T09:54:04.000' AS DateTime), CAST(N'2022-04-11T09:56:09.520' AS DateTime), 1, 1, 1, NULL,
        N'JPNovel', N'bcscuicngditnhoaanhdo', 100, 7, CAST(107100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (22, N'SPY ROM (Tập 2)', NULL,
        N'<p>Tác giả: Takemachi</p><p>Người dịch: Ngọc Đỗ</p><p>Năm xuất bản: 2022</p><p class="MsoNormal">Spy room – Lớp học điệp viên (tên gốc: Spy kyoushitsu) là series light novel độc đáo về thể loại điệp viên, tình báo vốn rất hiếm hoi trong dòng manga/light novel, là cái tên xuất sắc đã giành giải nhất giải thưởng thường niên của Fantasia Bunko lần thứ 32. Trong năm đầu tiên ra mắt, 2020, chỉ với 4 tập truyện thì Spy Room đã tạo tiếng vang lớn, đứng top 2 bảng xếp hạng light novel yêu thích Kono Light novel ga sugoi! ở cả 2 hạng mục Light novel mới hay nhất và Light novel hay nhất. Tính đến thời điểm hiện tại, series đã cán mốc 400.000 bản được bán ra tại Nhật Bản.</p>',
        1, CAST(109000.00 AS Decimal(18, 2)), 10, N'spyromtp2.jpg', NULL, CAST(N'2022-04-11T09:44:19.000' AS DateTime),
        CAST(N'2022-04-11T09:45:12.217' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'spyromtp2', 100, 3,
        CAST(98100.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (23, N'SPY ROOM (Tập 1)', NULL, N'<p>Tác giả: Takemachi</p><p>Người dịch: Trần Anh Ly, Nguyên Phạm</p><p>Năm xuất bản: 2021&nbsp;</p><p class="MsoNormal">Spy room – Lớp học điệp viên (tên gốc: Spy kyoushitsu) là
series light novel độc đáo về thể loại điệp viên, tình báo vốn rất hiếm hoi
trong dòng manga/light novel, là cái tên xuất sắc đã giành giải nhất giải thưởng
thường niên của Fantasia Bunko lần thứ 32. Trong năm đầu tiên ra mắt, 2020, chỉ
với 4 tập truyện thì Spy Room đã tạo tiếng vang lớn, đứng top 2 bảng xếp hạng
light novel yêu thích Kono Light novel ga sugoi! ở cả 2 hạng mục Light novel mới
hay nhất và Light novel hay nhất. Tính đến thời điểm hiện tại, series đã cán mốc
400.000 bản được bán ra tại Nhật Bản.</p><p class="MsoNormal"><br></p><p class="MsoNormal"><o:p></o:p></p><p></p>', 1,
        CAST(159000.00 AS Decimal(18, 2)), 15, N'spyroomtp1.jpg', NULL, CAST(N'2022-04-11T09:02:54.000' AS DateTime),
        CAST(N'2022-04-11T09:43:07.107' AS DateTime), 1, 1, 1, NULL, N'JPNovel', N'spyroomtp1', 100, 3,
        CAST(135150.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (24, N'Solo Leveling (Tập 2)', NULL,
        N'<p>Thể loại:&nbsp;Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả:&nbsp;Jang Sung Lak</p><p>Năm xuất bản: 2021</p>',
        3, CAST(200000.00 AS Decimal(18, 2)), 20, N'sololevelingtp2.jpg', NULL,
        CAST(N'2022-04-09T11:26:23.290' AS DateTime), CAST(N'2022-04-09T11:26:23.290' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'sololevelingtp2', 99, 5, CAST(160000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (25, N'Câu Chuyện Cổ Tích Của Mẹ Kế', NULL,
        N'<p>Thể loại:&nbsp;Cổ Đạ ,Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Jo YongSeuk</p><p>Năm xuất bản: 2020</p>',
        3, CAST(85000.00 AS Decimal(18, 2)), 10, N'cuchuynctchcamk.jpg', NULL,
        CAST(N'2022-04-09T11:28:56.510' AS DateTime), CAST(N'2022-04-09T11:28:56.510' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'cuchuynctchcamk', 100, 10, CAST(76500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (26, N'Thiếu Niên Phương Sĩ', NULL,
        N'<p>Thể loại:&nbsp;Võ hiệp ,Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Woon Sowol</p><p>Năm xuất bản: 2021</p>',
        3, CAST(125000.00 AS Decimal(18, 2)), 10, N'thiuninphngs.jpg', NULL,
        CAST(N'2022-04-09T11:30:21.717' AS DateTime), CAST(N'2022-04-09T11:30:21.717' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'thiuninphngs', 100, 8, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (27, N'Houshin Engi Tập 01', NULL,
        N'<p>Thể loại:&nbsp;Romance, Lịch Sử, Drama, Fantasy ,Adventure, Action</p><p>Tác giả:&nbsp;Kisetsu Morita</p>',
        2, CAST(120000.00 AS Decimal(18, 2)), 15, N'houshinengitp01.jpg', NULL,
        CAST(N'2022-04-09T02:31:05.000' AS DateTime), CAST(N'2022-04-09T03:57:11.470' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'houshinengitp01', 100, 2, CAST(102000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (28, N'Houshin Engi Tập 02', NULL,
        N'<p>Thể loại:&nbsp;&nbsp;Romance, Lịch Sử ,Drama, Fantasy ,Adventure, Action</p><p><div><table border="0" cellpadding="0" cellspacing="0" width="513" style="width: 385pt;"><tbody></tbody></table>Tác giả:&nbsp;Kisetsu Morita</div></p>',
        2, CAST(120000.00 AS Decimal(18, 2)), 10, N'houshinengitp02.jpg', NULL,
        CAST(N'2022-04-09T03:51:53.000' AS DateTime), CAST(N'2022-04-09T04:38:52.800' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'houshinengitp02', 100, 2, CAST(108000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (29, N'Thú Phi Thiên Hạ: Thần Y Đại Tiểu Thư', NULL,
        N'<p>Thể loại:&nbsp;Dị Giới, Huyền Huyễn, Ngôn Tình, Xuyên Không, Cung Đấu, Cổ Đại</p><p>Tác giả:&nbsp;Ngư Tiểu Đồng</p><p>Năm xuất bản: 2021</p>',
        2, CAST(110000.00 AS Decimal(18, 2)), 20, N'thphithinhthnyditiuth.jpg', NULL,
        CAST(N'2022-04-09T04:01:53.873' AS DateTime), CAST(N'2022-04-09T04:01:53.873' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'thphithinhthnyditiuth', 100, 2, CAST(88000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (30, N'Thế Giới Hoàn Mỹ', NULL,
        N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả: Thần Đồng</p><p>Năm xuất bản: 2018</p>', 2,
        CAST(120000.00 AS Decimal(18, 2)), 20, N'thgiihonm.jpg', NULL, CAST(N'2022-04-09T04:04:38.000' AS DateTime),
        CAST(N'2022-04-09T04:11:19.147' AS DateTime), 0, 1, 1, N'Hàng mới', N'CNNovel', N'thgiihonm', 100, 5,
        CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (31, N'Già Thiên', NULL,
        N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Thần Đồng</p><p>Năm xuất bản: 2019</p>',
        2, CAST(120000.00 AS Decimal(18, 2)), 20, N'githin.jpg', NULL, CAST(N'2022-04-09T10:02:13.000' AS DateTime),
        CAST(N'2022-04-09T10:59:00.467' AS DateTime), 1, 1, 1, NULL, N'CNNovel', N'githin', 100, 6,
        CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (32, N'Trường Sinh Giới', NULL,
        N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Thần Đồng</p><p>Năm xuất bản: 2020</p>',
        2, CAST(120000.00 AS Decimal(18, 2)), 20, N'trngsinhgii.jpg', NULL,
        CAST(N'2022-04-09T10:22:06.870' AS DateTime), CAST(N'2022-04-09T10:22:06.870' AS DateTime), 1, 1, 1, NULL,
        N'CNNovel', N'trngsinhgii', 100, 6, CAST(96000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (33, N'Ngày Nào Thiếu Soái Cũng Gen', NULL,
        N'<p>Thể loại:&nbsp;Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Bát Tầm</p><p>Năm xuất bản: 2021</p>', 2,
        CAST(130000.00 AS Decimal(18, 2)), 15, N'ngynothiusoicnggen.jpg', NULL,
        CAST(N'2022-04-09T10:24:00.683' AS DateTime), CAST(N'2022-04-09T10:24:00.683' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'ngynothiusoicnggen', 100, 5, CAST(110500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (34, N'Đánh Dấu Từ Bộ Khoái Bắt Đầu', NULL,
        N'<p>Thể loại:&nbsp;Nguyên sang, Nam sinh, Cổ đại , OE , Tình cảm , Võ hiệp , Dị thế&nbsp;</p><p>Tác giả:&nbsp;Thăng Đấu Yên Dân</p><p>Năm xuất bản: 2022</p>',
        2, CAST(125000.00 AS Decimal(18, 2)), 10, N'dnhdutbkhoibtdu.jpg', NULL,
        CAST(N'2022-04-09T10:26:50.000' AS DateTime), CAST(N'2022-04-09T10:59:09.923' AS DateTime), 1, 1, 1, NULL,
        N'CNNovel', N'dnhdutbkhoibtdu', 100, 9, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (35, N'Thiên Đạo Bảng:  Kiếm Thần ', NULL,
        N'<p>Thể loại:&nbsp;&nbsp;Dị thế , Xuyên việt , Hệ thống&nbsp; , Nhẹ nhàng , Hài hước , Vô địch lưu</p><p>Tác giả:&nbsp;Thất Niên Linh Thất Thiên</p><p>Năm xuất bản: 2019</p>',
        2, CAST(125000.00 AS Decimal(18, 2)), 0, N'thindobngkimthn.jpg', NULL,
        CAST(N'2022-04-09T10:30:50.873' AS DateTime), CAST(N'2022-04-09T10:30:50.873' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'thindobngkimthn', 100, 4, CAST(125000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (36, N'Luân Hồi Nhạc Viên', NULL,
        N'<p>Thể loại:&nbsp;Diễn sinh, Nam sinh, Cận đại, Hiện đại, Khoa học viễn tưởng</p><p>Tác giả:&nbsp;Na Nhất Chỉ Văn Tử</p><p>Năm xuất bản: 2020</p>',
        2, CAST(130000.00 AS Decimal(18, 2)), 10, N'lunhinhcvin.jpg', NULL,
        CAST(N'2022-04-09T10:33:54.740' AS DateTime), CAST(N'2022-04-09T10:33:54.740' AS DateTime), 0, 1, 1, NULL,
        N'CNNovel', N'lunhinhcvin', 100, 9, CAST(117000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (37, N'Hoa Thiên Cốt ( Tập 1)', NULL,
        N'<p>Thể loại:&nbsp;Ngôn Tình, Huyền Huyễn</p><p>Tác giả:&nbsp;Nuôi Thả Tiểu Trư</p><p>Năm xuất bản: 2019</p>',
        2, CAST(75000.00 AS Decimal(18, 2)), 0, N'hoathincttp1.jpg', NULL, CAST(N'2022-04-09T10:35:42.183' AS DateTime),
        CAST(N'2022-04-09T10:35:42.183' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'hoathincttp1', 100, 10,
        CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (38, N'Hoa Thiên Cốt ( Tập 2)', NULL,
        N'<p>Thể loại:&nbsp;Ngôn Tình, Huyền Huyễn</p><p>Tác giả:&nbsp;Nuôi Thả Tiểu Trư</p><p>Năm xuất bản: 2020</p>',
        2, CAST(75000.00 AS Decimal(18, 2)), 0, N'hoathincttp2.jpg', NULL, CAST(N'2022-04-09T10:36:53.400' AS DateTime),
        CAST(N'2022-04-09T10:36:53.400' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'hoathincttp2', 100, 6,
        CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (39, N'Linh Kiếm Tôn', NULL,
        N'<p>Thể loại:&nbsp;Tiên hiệp ,Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Lưu Hạ</p><p>Năm xuất bản: 2020</p>',
        2, CAST(125000.00 AS Decimal(18, 2)), 10, N'linhkimtn.jpg', NULL, CAST(N'2022-04-09T10:38:23.657' AS DateTime),
        CAST(N'2022-04-09T10:38:23.657' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'linhkimtn', 100, 10,
        CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (40, N'Lạn Kha Kỳ Duyên', NULL,
        N'<p>Thể loại:&nbsp;Tiên hiệp, Kiếm hiệp, Huyền Huyễn, Xuyên Không</p><p>Tác giả:&nbsp;Lâm Hiên</p><p>Năm xuất bản: 2020</p>',
        2, CAST(125000.00 AS Decimal(18, 2)), 10, N'lnkhakduyn.jpg', NULL, CAST(N'2022-04-09T10:49:43.810' AS DateTime),
        CAST(N'2022-04-09T10:49:43.810' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'lnkhakduyn', 100, 8,
        CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (41, N'Thú Thụ Bất Thân', NULL,
        N'<p>Thể loại:&nbsp;Đan Mỹ, Hiện Đại, Huyền Huyễn</p><p>Tác giả:&nbsp;Nguyệt Nguyễn</p><p>Năm xuất bản: 2019</p>',
        2, CAST(200000.00 AS Decimal(18, 2)), 25, N'ththbtthn.jpg', NULL, CAST(N'2022-04-09T10:51:20.753' AS DateTime),
        CAST(N'2022-04-09T10:51:20.753' AS DateTime), 0, 1, 1, NULL, N'CNNovel', N'ththbtthn', 100, 8,
        CAST(150000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (42, N'Thể Thao Cực Hạn', NULL,
        N'<p>Thể loại: Action , Drama , Manhwa , Sports&nbsp;</p><p>Tác giả:&nbsp;Jo YongSeuk</p><p>Năm xuất bản: 202</p>',
        3, CAST(150000.00 AS Decimal(18, 2)), 10, N'ththaocchn.jpg', NULL, CAST(N'2022-04-09T10:52:55.600' AS DateTime),
        CAST(N'2022-04-09T10:52:55.600' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'ththaocchn', 100, 8,
        CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (43, N'Legendary Moonlight Sculptor (Tập 1)', NULL,
        N'<p>Thể loại:&nbsp;Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả:&nbsp;&nbsp;Nam Hi Sung</p><p>Năm xuất bản: 2018</p><p><br></p>',
        3, CAST(150000.00 AS Decimal(18, 2)), 10, N'legendarymoonlightsculptortp1.jpg', NULL,
        CAST(N'2022-04-09T10:57:45.000' AS DateTime), CAST(N'2022-04-09T11:04:07.860' AS DateTime), 1, 1, 1, NULL,
        N'KRNovel', N'legendarymoonlightsculptortp1', 100, 7, CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (44, N'Legendary Moonlight Sculptor (Tập 2)', NULL,
        N'<p>Thể loại: Romance, Drama, Fantasy, Adventure, Action</p><p>Tác giả: Nam Hi Sung</p><p>Năm xuất bản: 2018</p>',
        3, CAST(150000.00 AS Decimal(18, 2)), 10, N'legendarymoonlightsculptortp2.jpg', NULL,
        CAST(N'2022-04-09T11:06:06.550' AS DateTime), CAST(N'2022-04-09T11:06:06.550' AS DateTime), 1, 1, 1, NULL,
        N'KRNovel', N'legendarymoonlightsculptortp2', 100, 7, CAST(135000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (45, N'Solo Leveling (Tập 1)', NULL,
        N'<p>Thể loại: Romance, Drama, Fantasy, Adventure, Action</p><p>Tác gải: Jang Sung Lak</p><p>Năm xuất bản: 2021</p>',
        3, CAST(200000.00 AS Decimal(18, 2)), 30, N'sololevelingtp1.jpg', NULL,
        CAST(N'2022-04-09T11:08:19.210' AS DateTime), CAST(N'2022-04-09T11:08:19.210' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'sololevelingtp1', 100, 5, CAST(140000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (46, N'Nhân Trùng Đại Chiến', NULL,
        N'<p>Thể loại: Action , Drama , Manhwa , Sports&nbsp;</p><p>Tác giả: Jung Soo Chan</p><p>Năm xuất bản: 2020</p>',
        3, CAST(120000.00 AS Decimal(18, 2)), 10, N'nhntrngdichin.jpg', NULL,
        CAST(N'2022-04-09T11:11:08.903' AS DateTime), CAST(N'2022-04-09T11:11:08.903' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'nhntrngdichin', 100, 9, CAST(108000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (47, N'Tôi Đã Cướp Mất Đêm Đầu Của Nam Chính', NULL,
        N'<p>Thể loại:&nbsp;Chuyển sinh, Ngôn Tình, Cổ Đại</p><p>Tác giả:&nbsp;Hwang Do Tol</p><p>Năm xuất bản:&nbsp;2021</p>',
        3, CAST(120000.00 AS Decimal(18, 2)), 30, N'tidcpmtdmducanamchnh.jpg', NULL,
        CAST(N'2022-04-09T11:13:34.323' AS DateTime), CAST(N'2022-04-09T11:13:34.323' AS DateTime), 1, 1, 1, NULL,
        N'KRNovel', N'tidcpmtdmducanamchnh', 100, 6, CAST(84000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (48, N'Thế Giới Hậu Tận Thế', NULL,
        N'<p>Thể loại:&nbsp;Action ,Comedy ,Manhwa , Mystery</p><p>Tác giả:&nbsp;Sing Shong</p><p>Năm xuất bản: 2022</p>',
        3, CAST(150000.00 AS Decimal(18, 2)), 20, N'thgiihutnth.jpg', NULL,
        CAST(N'2022-04-09T11:14:49.400' AS DateTime), CAST(N'2022-04-09T11:14:49.400' AS DateTime), 1, 1, 1, NULL,
        N'KRNovel', N'thgiihutnth', 100, 4, CAST(120000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (49, N'Võ Đang Kỳ Hiệp', NULL,
        N'<p>Thể loại:&nbsp;Võ hiệp, Kiếm hiệp, Huyền Huyễn</p><p>Tác giả:&nbsp;Sing Shong</p><p>Năm xuất bản: 2020</p>',
        3, CAST(75000.00 AS Decimal(18, 2)), 0, N'vdangkhip.jpg', NULL, CAST(N'2022-04-09T11:16:43.963' AS DateTime),
        CAST(N'2022-04-09T11:16:43.963' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'vdangkhip', 50, 10,
        CAST(75000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (50, N'Cha, Con Không Muốn Kết Hôn', NULL,
        N'<p>Thể loại:&nbsp;Ngôn Tình, Xuyên Không</p><p>Tác giả:&nbsp;Hong Hee Su</p><p>Năm xuất bản: 2021</p>', 3,
        CAST(125000.00 AS Decimal(18, 2)), 10, N'chaconkhngmunkthn.jpg', NULL,
        CAST(N'2022-04-09T11:18:31.710' AS DateTime), CAST(N'2022-04-09T11:18:31.710' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'chaconkhngmunkthn', 50, 4, CAST(112500.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (51, N'Tôi Đang Nuôi Dưỡng Một Con Quái Thú', NULL,
        N'<p>Thể loại:&nbsp;Cổ Đại, Ngôn Tình</p><p>Tác giả:&nbsp;Ireunkkot Teava</p><p>Năm xuất bản: 2022</p>', 3,
        CAST(85000.00 AS Decimal(18, 2)), 0, N'tidangnuidngmtconquith.jpg', NULL,
        CAST(N'2022-04-09T11:20:04.677' AS DateTime), CAST(N'2022-04-09T11:20:04.677' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'tidangnuidngmtconquith', 50, 2, CAST(85000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (52, N'Tôi Trở Thành Mẹ Kế Của Cinderella', NULL,
        N'<p>Thể loại:&nbsp;Cổ Đạ, Ngôn Tình, Xuyên Không</p><p>Tác giả: Nam Hi Yung</p><p>Năm xuất bản: 2021</p>', 3,
        CAST(150000.00 AS Decimal(18, 2)), 20, N'titrthnhmkcacinderella.jpg', NULL,
        CAST(N'2022-04-09T11:22:13.350' AS DateTime), CAST(N'2022-04-09T11:22:13.350' AS DateTime), 0, 1, 1, NULL,
        N'KRNovel', N'titrthnhmkcacinderella', 50, 6, CAST(120000.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([ProductID], [ProductName], [ShortDesc], [Descriptions], [CateID], [Price], [Discount],
                        [ThumbImg], [Video], [DateCreated], [DateModified], [IsBestsellers], [Homeflag], [IsActived],
                        [Tag], [Title], [Alias], [UnitInStock], [PublisherID], [SalesPrice])
VALUES (53, N'Tàn Tinh Tái Thế', NULL,
        N'<p>Thể loại:&nbsp;Action, Adventure, Fantasy, Shounen</p><p>Tác giả:&nbsp;Lee Chang-Son</p><p>Năm xuất bản: 2022</p>',
        3, CAST(125000.00 AS Decimal(18, 2)), 10, N'tntinhtith.jpg', NULL, CAST(N'2022-04-09T11:24:11.080' AS DateTime),
        CAST(N'2022-04-09T11:24:11.080' AS DateTime), 0, 1, 1, NULL, N'KRNovel', N'tntinhtith', 50, 3,
        CAST(112500.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON

INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (1, N'Tsuki Lightnovel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (2, N'Amak', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (3, N'Hikari Lightnovel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (4, N'Shine Novel', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (5, N'IPM', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (6, N'Skybook', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (7, N'AZ Việt Nam', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (8, N'Nhã Nam', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (9, N'Kim Đồng', N'thumb-6.jpg')
INSERT [dbo].[Publisher] ([PublisherID], [PublisherName], [Logo])
VALUES (10, N'Zgroup', N'thumb-6.jpg')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON

INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions])
VALUES (2, N'Staff', N'Staff')
INSERT [dbo].[Roles] ([RoleId], [RoleName], [Descriptions])
VALUES (3, N'Admin', N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactStatus] ON

INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions])
VALUES (1, N'Đơn hàng đã đặt', N'Đơn hàng đã đặt')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions])
VALUES (2, N'Xác nhận thông tin thanh toán', N'Xác nhận thông tin thanh toán')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions])
VALUES (3, N'Đang vận chuyển', N'Đang vận chuyển')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions])
VALUES (4, N'Đơn hàng đã nhận', N'Đơn hàng đã nhận')
INSERT [dbo].[TransactStatus] ([TransactionStatusID], [Status], [Descriptions])
VALUES (5, N'Đơn hàng đã giao', N'Đơn hàng đã giao')
SET IDENTITY_INSERT [dbo].[TransactStatus] OFF
GO
ALTER TABLE [dbo].[Account]
    ADD DEFAULT (N'') FOR [FullName]
GO
ALTER TABLE [dbo].[Cart]
    ADD DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Cart]
    ADD DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Category]
    ADD DEFAULT (CONVERT([bit], (0))) FOR [IsPublished]
GO
ALTER TABLE [dbo].[Order]
    ADD DEFAULT ('0001-01-01T00:00:00.000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Product]
    ADD CONSTRAINT [DF__Product__Homefla__403A8C7D] DEFAULT (CONVERT([bit], (0))) FOR [Homeflag]
GO
ALTER TABLE [dbo].[Roles]
    ADD DEFAULT (N'') FOR [Descriptions]
GO
ALTER TABLE [dbo].[Account]
    WITH CHECK ADD CONSTRAINT [FK_Account_Roles] FOREIGN KEY ([RoleId])
        REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Account]
    CHECK CONSTRAINT [FK_Account_Roles]
GO
ALTER TABLE [dbo].[AttributePrices]
    WITH CHECK ADD CONSTRAINT [FK_AttributePrices_Attribute] FOREIGN KEY ([AttributeID])
        REFERENCES [dbo].[Attribute] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributePrices]
    CHECK CONSTRAINT [FK_AttributePrices_Attribute]
GO
ALTER TABLE [dbo].[AttributePrices]
    WITH CHECK ADD CONSTRAINT [FK_AttributePrices_Product] FOREIGN KEY ([ProductID])
        REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[AttributePrices]
    CHECK CONSTRAINT [FK_AttributePrices_Product]
GO
ALTER TABLE [dbo].[Order]
    WITH CHECK ADD CONSTRAINT [FK_Order_Customers] FOREIGN KEY ([CustomerID])
        REFERENCES [dbo].[Customers] ([CustommerID])
GO
ALTER TABLE [dbo].[Order]
    CHECK CONSTRAINT [FK_Order_Customers]
GO
ALTER TABLE [dbo].[Order]
    WITH CHECK ADD CONSTRAINT [FK_Order_TransactStatus] FOREIGN KEY ([TransactionStatusID])
        REFERENCES [dbo].[TransactStatus] ([TransactionStatusID])
GO
ALTER TABLE [dbo].[Order]
    CHECK CONSTRAINT [FK_Order_TransactStatus]
GO
ALTER TABLE [dbo].[OrderDetails]
    WITH CHECK ADD CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY ([OrderID])
        REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails]
    CHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[OrderDetails]
    WITH CHECK ADD CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY ([ProductID])
        REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails]
    CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
ALTER TABLE [dbo].[Product]
    WITH CHECK ADD CONSTRAINT [FK_Product_Category] FOREIGN KEY ([CateID])
        REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Product]
    CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]
    WITH CHECK ADD CONSTRAINT [FK_Product_Publisher] FOREIGN KEY ([PublisherID])
        REFERENCES [dbo].[Publisher] ([PublisherID])
GO
ALTER TABLE [dbo].[Product]
    CHECK CONSTRAINT [FK_Product_Publisher]
GO
