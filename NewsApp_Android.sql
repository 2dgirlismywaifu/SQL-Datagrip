USE [newsapp-android]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description', @level0type=N'SCHEMA', @level0name=N'dbo',
     @level1type=N'TABLE', @level1name=N'USER_PASSLOGIN'
GO
ALTER TABLE [dbo].[USER_SSO_INFORMATION]
    DROP CONSTRAINT [FK_USER_SSO_INFORMATION_USER_SSO]
GO
ALTER TABLE [dbo].[USER_INFORMATION]
    DROP CONSTRAINT [FK_USER_INFORMATION_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    DROP CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_USER_SSO]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    DROP CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    DROP CONSTRAINT [FK_SYNC_SUBSCRIBE_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    DROP CONSTRAINT [FK_SYNC_SUBSCRIBE_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE_SSO]
    DROP CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_SSO_USER_SSO]
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE]
    DROP CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    DROP CONSTRAINT [FK_NEWS_DETAIL_NEWSTYPE_IMAGE]
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    DROP CONSTRAINT [FK_NEWS_DETAIL_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[IMAGE_INFORMATION]
    DROP CONSTRAINT [FK_IMAGE_INFORMATION_NEWS_SOURCE]
GO
/****** Object:  Table [dbo].[USER_SSO_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[USER_SSO_INFORMATION]')
             AND type in (N'U'))
    DROP TABLE [dbo].[USER_SSO_INFORMATION]
GO
/****** Object:  Table [dbo].[USER_SSO]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[USER_SSO]')
             AND type in (N'U'))
    DROP TABLE [dbo].[USER_SSO]
GO
/****** Object:  Table [dbo].[USER_PASSLOGIN]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[USER_PASSLOGIN]')
             AND type in (N'U'))
    DROP TABLE [dbo].[USER_PASSLOGIN]
GO
/****** Object:  Table [dbo].[USER_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[USER_INFORMATION]')
             AND type in (N'U'))
    DROP TABLE [dbo].[USER_INFORMATION]
GO
/****** Object:  Table [dbo].[SYNC_SUBSCRIBE_SSO]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[SYNC_SUBSCRIBE_SSO]')
             AND type in (N'U'))
    DROP TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
GO
/****** Object:  Table [dbo].[SYNC_SUBSCRIBE]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[SYNC_SUBSCRIBE]')
             AND type in (N'U'))
    DROP TABLE [dbo].[SYNC_SUBSCRIBE]
GO
/****** Object:  Table [dbo].[SYNC_NEWS_FAVOURITE_SSO]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[SYNC_NEWS_FAVOURITE_SSO]')
             AND type in (N'U'))
    DROP TABLE [dbo].[SYNC_NEWS_FAVOURITE_SSO]
GO
/****** Object:  Table [dbo].[SYNC_NEWS_FAVOURITE]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[SYNC_NEWS_FAVOURITE]')
             AND type in (N'U'))
    DROP TABLE [dbo].[SYNC_NEWS_FAVOURITE]
GO
/****** Object:  Table [dbo].[NEWSTYPE_IMAGE]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[NEWSTYPE_IMAGE]')
             AND type in (N'U'))
    DROP TABLE [dbo].[NEWSTYPE_IMAGE]
GO
/****** Object:  Table [dbo].[NEWSAPI_COUNTRY]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[NEWSAPI_COUNTRY]')
             AND type in (N'U'))
    DROP TABLE [dbo].[NEWSAPI_COUNTRY]
GO
/****** Object:  Table [dbo].[NEWS_SOURCE]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[NEWS_SOURCE]')
             AND type in (N'U'))
    DROP TABLE [dbo].[NEWS_SOURCE]
GO
/****** Object:  Table [dbo].[NEWS_DETAIL]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[NEWS_DETAIL]')
             AND type in (N'U'))
    DROP TABLE [dbo].[NEWS_DETAIL]
GO
/****** Object:  Table [dbo].[IMAGE_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[IMAGE_INFORMATION]')
             AND type in (N'U'))
    DROP TABLE [dbo].[IMAGE_INFORMATION]
GO
/****** Object:  Table [dbo].[IMAGE_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMAGE_INFORMATION]
(
    [image_id]  [int]           NOT NULL,
    [source_id] [int]           NOT NULL,
    [image]     [nvarchar](max) NULL,
    CONSTRAINT [PK_IMAGE_INFORMATION] PRIMARY KEY CLUSTERED
        (
         [image_id] ASC,
         [source_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS_DETAIL]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS_DETAIL]
(
    [source_id] [int]           NOT NULL,
    [url_type]  [nvarchar](255) NOT NULL,
    [url]       [nvarchar](max) NULL,
    CONSTRAINT [PK_NEWS_HEALTH_DETAIL] PRIMARY KEY CLUSTERED
        (
         [source_id] ASC,
         [url_type] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS_SOURCE]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS_SOURCE]
(
    [source_id]   [int]           NOT NULL,
    [source_name] [nvarchar](255) NULL,
    [urlmain]     [nvarchar](max) NULL,
    [information] [nvarchar](max) NULL,
    CONSTRAINT [PK_NEWS_SOURCE] PRIMARY KEY CLUSTERED
        (
         [source_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWSAPI_COUNTRY]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWSAPI_COUNTRY]
(
    [country_id]   [int]          NOT NULL,
    [country_code] [nvarchar](50) NULL,
    [country_name] [nvarchar](50) NULL,
    CONSTRAINT [PK_NEWSAPI_COUNTRY] PRIMARY KEY CLUSTERED
        (
         [country_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWSTYPE_IMAGE]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWSTYPE_IMAGE]
(
    [url_type]  [nvarchar](255) NOT NULL,
    [name_type] [nvarchar](50)  NULL,
    [url_image] [nvarchar](max) NULL,
    CONSTRAINT [PK_NEWSTYPE_IMAGE] PRIMARY KEY CLUSTERED
        (
         [url_type] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYNC_NEWS_FAVOURITE]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYNC_NEWS_FAVOURITE]
(
    [favourite_id] [int]           NOT NULL,
    [user_id]      [int]           NOT NULL,
    [url]          [nvarchar](max) NULL,
    [title]        [nvarchar](max) NULL,
    [image_url]    [nvarchar](max) NULL,
    [pubdate]      [nvarchar](max) NULL,
    [source_name]  [nvarchar](max) NULL,
    CONSTRAINT [PK_SYNC_NEWS_FAVOURITE] PRIMARY KEY CLUSTERED
        (
         [favourite_id] ASC,
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYNC_NEWS_FAVOURITE_SSO]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYNC_NEWS_FAVOURITE_SSO]
(
    [favourite_id] [int]           NOT NULL,
    [user_id]      [int]           NOT NULL,
    [url]          [nvarchar](max) NULL,
    [title]        [nvarchar](max) NULL,
    [image_url]    [nvarchar](max) NULL,
    [pubdate]      [nvarchar](max) NULL,
    [source_name]  [nvarchar](max) NULL,
    CONSTRAINT [PK_SYNC_NEWS_FAVOURITE_SSO] PRIMARY KEY CLUSTERED
        (
         [favourite_id] ASC,
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYNC_SUBSCRIBE]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYNC_SUBSCRIBE]
(
    [sync_id]   [int] NOT NULL,
    [user_id]   [int] NOT NULL,
    [source_id] [int] NOT NULL,
    CONSTRAINT [SYNC_SUBSCRIBE_PK] PRIMARY KEY CLUSTERED
        (
         [sync_id] ASC,
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYNC_SUBSCRIBE_SSO]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
(
    [sync_id]   [int] NOT NULL,
    [user_id]   [int] NOT NULL,
    [source_id] [int] NOT NULL,
    CONSTRAINT [SYNC_SUBSCRIBE_SSO_PK] PRIMARY KEY CLUSTERED
        (
         [sync_id] ASC,
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_INFORMATION]
(
    [user_id]  [int]           NOT NULL,
    [name]     [nvarchar](max) NULL,
    [birthday] [date]          NULL,
    [gender]   [nvarchar](max) NULL,
    [avatar]   [nvarchar](max) NULL,
    CONSTRAINT [USER_INFORMATION_PK] PRIMARY KEY CLUSTERED
        (
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_PASSLOGIN]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_PASSLOGIN]
(
    [user_id]  [int]           NOT NULL,
    [email]    [nvarchar](max) NOT NULL,
    [password] [nvarchar](max) NULL,
    [salt]     [nvarchar](max) NULL,
    [nickname] [nvarchar](max) NULL,
    [verify]   [nvarchar](20)  NULL,
    [recovery] [nvarchar](max) NULL,
    CONSTRAINT [USER_PASSLOGIN_PK] PRIMARY KEY CLUSTERED
        (
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_SSO]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_SSO]
(
    [user_id]  [int]           NOT NULL,
    [email]    [nvarchar](max) NULL,
    [nickname] [nvarchar](max) NULL,
    [verify]   [nvarchar](20)  NULL,
    CONSTRAINT [PK_USER_SSO] PRIMARY KEY CLUSTERED
        (
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER_SSO_INFORMATION]    Script Date: 20/02/2023 22:34:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_SSO_INFORMATION]
(
    [user_id]  [int]           NOT NULL,
    [name]     [nvarchar](max) NULL,
    [birthday] [date]          NULL,
    [gender]   [nvarchar](max) NULL,
    [avatar]   [nvarchar](max) NULL,
    CONSTRAINT [PK_USER_SSO_INFORMATION] PRIMARY KEY CLUSTERED
        (
         [user_id] ASC
            ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[IMAGE_INFORMATION]
    WITH CHECK ADD CONSTRAINT [FK_IMAGE_INFORMATION_NEWS_SOURCE] FOREIGN KEY ([source_id])
        REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[IMAGE_INFORMATION]
    CHECK CONSTRAINT [FK_IMAGE_INFORMATION_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    WITH CHECK ADD CONSTRAINT [FK_NEWS_DETAIL_NEWS_SOURCE] FOREIGN KEY ([source_id])
        REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    CHECK CONSTRAINT [FK_NEWS_DETAIL_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    WITH CHECK ADD CONSTRAINT [FK_NEWS_DETAIL_NEWSTYPE_IMAGE] FOREIGN KEY ([url_type])
        REFERENCES [dbo].[NEWSTYPE_IMAGE] ([url_type])
GO
ALTER TABLE [dbo].[NEWS_DETAIL]
    CHECK CONSTRAINT [FK_NEWS_DETAIL_NEWSTYPE_IMAGE]
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_USER_PASSLOGIN] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_PASSLOGIN] ([user_id])
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE]
    CHECK CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE_SSO]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_SSO_USER_SSO] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_SSO] ([user_id])
GO
ALTER TABLE [dbo].[SYNC_NEWS_FAVOURITE_SSO]
    CHECK CONSTRAINT [FK_SYNC_NEWS_FAVOURITE_SSO_USER_SSO]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_SUBSCRIBE_NEWS_SOURCE] FOREIGN KEY ([source_id])
        REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_SUBSCRIBE_USER_PASSLOGIN] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_PASSLOGIN] ([user_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE]
    CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_NEWS_SOURCE] FOREIGN KEY ([source_id])
        REFERENCES [dbo].[NEWS_SOURCE] ([source_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_NEWS_SOURCE]
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    WITH CHECK ADD CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_USER_SSO] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_SSO] ([user_id])
GO
ALTER TABLE [dbo].[SYNC_SUBSCRIBE_SSO]
    CHECK CONSTRAINT [FK_SYNC_SUBSCRIBE_SSO_USER_SSO]
GO
ALTER TABLE [dbo].[USER_INFORMATION]
    WITH CHECK ADD CONSTRAINT [FK_USER_INFORMATION_USER_PASSLOGIN] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_PASSLOGIN] ([user_id])
GO
ALTER TABLE [dbo].[USER_INFORMATION]
    CHECK CONSTRAINT [FK_USER_INFORMATION_USER_PASSLOGIN]
GO
ALTER TABLE [dbo].[USER_SSO_INFORMATION]
    WITH CHECK ADD CONSTRAINT [FK_USER_SSO_INFORMATION_USER_SSO] FOREIGN KEY ([user_id])
        REFERENCES [dbo].[USER_SSO] ([user_id])
GO
ALTER TABLE [dbo].[USER_SSO_INFORMATION]
    CHECK CONSTRAINT [FK_USER_SSO_INFORMATION_USER_SSO]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'NORMAL LOGIN', @level0type=N'SCHEMA',
     @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'USER_PASSLOGIN'
GO

DELETE
FROM [dbo].[NEWSAPI_COUNTRY]
GO
DELETE
FROM [dbo].[IMAGE_INFORMATION]
GO
DELETE
FROM [dbo].[NEWS_DETAIL]
GO
DELETE
FROM [dbo].[NEWS_SOURCE]
GO
DELETE
FROM [dbo].[NEWSTYPE_IMAGE]
GO
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'BreakingNews', N'Breaking News', N'https://newsappimage.blob.core.windows.net/newstypeimage/breakingnews.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Education', N'Education', N'https://newsappimage.blob.core.windows.net/newstypeimage/education.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Health', N'Health', N'https://newsappimage.blob.core.windows.net/newstypeimage/health.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Law', N'Law', N'https://newsappimage.blob.core.windows.net/newstypeimage/Law.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Lifestyle', N'Life Style', N'https://newsappimage.blob.core.windows.net/newstypeimage/lifestyle.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'News', N'News', N'https://newsappimage.blob.core.windows.net/newstypeimage/news.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Science', N'Science', N'https://newsappimage.blob.core.windows.net/newstypeimage/science.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Sport', N'Sport', N'https://newsappimage.blob.core.windows.net/newstypeimage/sport.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'Travel', N'Travel', N'https://newsappimage.blob.core.windows.net/newstypeimage/travel.png')
INSERT [dbo].[NEWSTYPE_IMAGE] ([url_type], [name_type], [url_image])
VALUES (N'World', N'World', N'https://newsappimage.blob.core.windows.net/newstypeimage/world.png')
GO
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [urlmain], [information])
VALUES (629603, N'VNExpress', N'https://vnexpress.net',
        N'VnExpress là một tờ báo tại Việt Nam được thành lập bởi tập đoàn FPT, ra mắt vào ngày 26 tháng 2 năm 2001 và hoạt động theo giấy phép số 548/GP-BTTTT do Bộ Thông tin và Truyền thông cấp ngày 24/08/2021, hiện tại do Bộ Khoa học và Công nghệ quản lý. Ngoài ra, VnExpress cũng cho ra mắt một phiên bản báo điện tử Tiếng Anh để phục vụ người đọc tại nước ngoài.')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [urlmain], [information])
VALUES (665297, N'SohaNews', N'https://soha.vn',
        N'Báo Soha trực thuộc công ty cổ phần VCCrop. Soha.vn là một ứng dụng tin tức, tạp chí với các tin tức mới nhất được cập nhật liên tục 24. Ngoài ra, Soha.vn còn phân loại các bài báo, tin tức theo chuyên mục rõ ràng giúp bạn dễ dàng theo dõi những bản tin được quan tâm, chia sẻ nhiều nhất.')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [urlmain], [information])
VALUES (721439, N'TinTuc24H', N'https://www.24h.com.vn',
        N'24h hay Tin tức 24h là một trang tin điện tử tại Việt Nam. Trang tin hoạt động theo giấy phép số 332/GP–TTĐT ngày cấp 22/01/2018 do Sở Thông tin và Truyền thông Hà Nội cấp. Trang do Công ty Cổ phần Trực tuyến 24H (gọi tắt là 24h) chịu trách nhiệm vận hành và quản lý.')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [urlmain], [information])
VALUES (749896, N'NguoiLaoDongNews', N'https://nld.com.vn', N'Người Lao động là nhật báo thuộc Thành ủy Thành phố Hồ Chí Minh, được thành lập ngày 28 tháng 7 năm 1975. Ngoài nhật báo, Người Lao động còn có phụ trương Thế giới @ chuyên về công nghệ thông tin phát hành Thứ Năm hàng tuần. Tuy nhiên phụ trương Thế giới @ đã bị ngưng xuất bản từ ngày 25 tháng 7 năm 2015. Hiện tại báo Người Lao Động hoạt động theo mô hình toà soạn hội tụ. Cùng lúc thực hiện thể loại báo in, truyền hình và điện tử.

Ngày 29 tháng 7 năm 2012, Người Lao động đã khánh thành trụ sở mới tại số 123-127 Võ Văn Tần, phường 6, quận 3, Thành phố Hồ Chí Minh.

Trụ sở của báo Người Lao động được xây dựng trên diện tích 1.039 m². Khởi công từ ngày 14 tháng 9 năm 2010, sau gần 2 năm thi công, tòa nhà được hoàn tất với quy mô 11 tầng và 2 tầng hầm, là nơi làm việc, sinh hoạt của gần 200 cán bộ, phóng viên, công nhân viên.

Tòa soạn của báo đặt tại số 127 đường Võ Văn Tần, phường Võ Thị Sáu, quận 3, thành phố Hồ Chí Minh.')
INSERT [dbo].[NEWS_SOURCE] ([source_id], [source_name], [urlmain], [information])
VALUES (847629, N'ThanhNienNews', N'https://thanhnien.vn', N'Báo Thanh Niên là một tờ nhật báo Việt Nam có trụ sở tại Thành phố Hồ Chí Minh. Đây là một trong những tờ báo có số lượng phát hành lớn nhất Việt Nam với 300.000 bản/ngày (có thời điểm phát hành hơn 400.000 bản).

Ngày 3 tháng 1 năm 1986, báo ra số đầu tiên với tên gọi Tuần tin Thanh Niên trực thuộc Hội Liên hiệp Thanh niên Việt Nam. Trước đây, ngày 21 tháng 6 năm 1925, cũng có một tờ báo mang tên Thanh Niên do Nguyễn Ái Quốc sáng lập nhưng không phải là tiền thân của tờ Thanh Niên ngày nay.

Tòa soạn hiện nay đặt tại số 268 - 270 đường Nguyễn Đình Chiểu, phường Võ Thị Sáu, quận 3, thành phố Hồ Chí Minh và 218 Tây Sơn, phường Quang Trung, quận Đống Đa, Hà Nội.

Các phòng ban: Ban Kinh tế Ban Chính trị xã hội Ban Văn nghệ Ban Thanh Niên - Giáo dục Ban Thế thao Ban Quốc tế; Ban Thư ký tòa soạn.

Báo Thanh Niên cũng là đơn vị nắm giữ bản quyền cử thí sinh đến cuộc thi Hoa hậu Trái Đất từ năm 2010 đến năm 2012.')
GO
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'BreakingNews', N'https://vnexpress.net/rss/tin-moi-nhat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Education', N'https://vnexpress.net/rss/giao-duc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Health', N'https://vnexpress.net/rss/suc-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Law', N'https://vnexpress.net/rss/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'LifeStyle', N'https://vnexpress.net/rss/gia-dinh.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'News', N'https://vnexpress.net/rss/thoi-su.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Science', N'https://vnexpress.net/rss/khoa-hoc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Sport', N'https://vnexpress.net/rss/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'Travel', N'https://vnexpress.net/rss/du-lich.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (629603, N'World', N'https://vnexpress.net/rss/the-gioi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'BreakingNews', N'https://soha.vn/thoi-su-xa-hoi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Education', N'not_available')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Health', N'https://soha.vn/song-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Law', N'https://soha.vn/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'LifeStyle', N'https://soha.vn/doi-song.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'News', N'https://soha.vn/thoi-su-xa-hoi.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Science', N'https://soha.vn/cong-nghe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Sport', N'https://soha.vn/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'Travel', N'https://soha.vn/kham-pha.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (665297, N'World', N'https://soha.vn/quoc-te.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'BreakingNews', N'https://cdn.24h.com.vn/upload/rss/trangchu24h.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Education', N'https://cdn.24h.com.vn/upload/rss/giaoducduhoc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Health', N'https://cdn.24h.com.vn/upload/rss/suckhoedoisong.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Law', N'https://cdn.24h.com.vn/upload/rss/thethao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'LifeStyle', N'https://cdn.24h.com.vn/upload/rss/bantrecuocsong.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'News', N'https://cdn.24h.com.vn/upload/rss/tintuctrongngay.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Science', N'https://cdn.24h.com.vn/upload/rss/congnghethongtin.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Sport', N'https://cdn.24h.com.vn/upload/rss/thethao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'Travel', N'https://cdn.24h.com.vn/upload/rss/dulich24h.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (721439, N'World', N'not_available')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'BreakingNews', N'https://nld.com.vn/tin-moi-nhat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Education', N'https://nld.com.vn/giao-duc-khoa-hoc.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Health', N'https://nld.com.vn/suc-khoe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Law', N'https://nld.com.vn/phap-luat.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'LifeStyle', N'https://nld.com.vn/ly-tuong-song.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'News', N'https://nld.com.vn/thoi-su.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Science', N'https://nld.com.vn/cong-nghe.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Sport', N'https://nld.com.vn/the-thao.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'Travel', N'https://nld.com.vn/du-lich-xanh.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (749896, N'World', N'https://nld.com.vn/thoi-su-quoc-te.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'BreakingNews', N'https://thanhnien.vn/rss/home.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Education', N'https://thanhnien.vn/rss/giao-duc-26.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Health', N'https://thanhnien.vn/rss/suc-khoe-65.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Law', N'https://thanhnien.vn/rss/thoi-su/phap-luat-5.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'LifeStyle', N'https://thanhnien.vn/rss/doi-song-17.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'News', N'https://thanhnien.vn/rss/thoi-su-4.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Science', N'https://thanhnien.vn/rss/cong-nghe-game/tin-tuc-330.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Sport', N'https://thanhnien.vn/rss/the-thao-318.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'Travel', N'https://thanhnien.vn/rss/du-lich-234.rss')
INSERT [dbo].[NEWS_DETAIL] ([source_id], [url_type], [url])
VALUES (847629, N'World', N'https://thanhnien.vn/rss/the-gioi-66.rss')
GO
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image])
VALUES (3515, 721439,
        N'https://upload.wikimedia.org/wikipedia/vi/thumb/6/6b/Logo_trang_24h.png/220px-Logo_trang_24h.png')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image])
VALUES (5368, 665297,
        N'https://play-lh.googleusercontent.com/vBgE9AG3HAKIDiXTiRMNxWkyALhcFipv-lPsgszEduzf2VcnqmOaGvLtAYOHry41-PA')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image])
VALUES (6436, 629603,
        N'https://play-lh.googleusercontent.com/6eBVmDIQNXsUd06jK9sRRdUEHsp4oiI7jwFFZq4ccFpY3Jc1nAsRMv0pnH__mYYExak')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image])
VALUES (8409, 847629,
        N'https://play-lh.googleusercontent.com/WKLidAunta9pcv-nvtXaln9LY6YkGUdYN3GOfivc4ti4mfGEHEq1MOM0DN8U2Ic6oJw')
INSERT [dbo].[IMAGE_INFORMATION] ([image_id], [source_id], [image])
VALUES (9333, 749896,
        N'https://play-lh.googleusercontent.com/DCDX3C-F2-jY0zs6SScwbLjQbdsf5boJ3o6x0zr77Md3RLLVRPD1-tloKsgp6pJ6Bjc')
GO
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (1, N'ar', N'Argentina')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (2, N'au', N'Australia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (3, N'at', N'Austria')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (4, N'be', N'Belgium')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (5, N'br', N'Brazil')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (6, N'bg', N'Bulgaria')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (7, N'ca', N'Canada')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (8, N'co', N'Colombia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (9, N'cu', N'Cuba')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (10, N'cz', N'Czech Republic')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (11, N'eg', N'Egypt')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (12, N'fr', N'France')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (13, N'de', N'Germany')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (14, N'gr', N'Greece')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (15, N'hk', N'Hong Kong')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (16, N'hu', N'Hungary')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (17, N'in', N'India')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (18, N'id', N'Indonesia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (19, N'ie', N'Ireland')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (20, N'il', N'Israel')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (21, N'it', N'Italy')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (22, N'jp', N'Japan')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (23, N'lv', N'Latvia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (24, N'lt', N'Lithuania')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (25, N'my', N'Malaysia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (26, N'mx', N'Mexico')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (27, N'ma', N'Morocco')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (28, N'nl', N'Netherlands')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (29, N'nz', N'New Zealand')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (30, N'ng', N'Nigeria')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (31, N'no', N'Norway')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (32, N'ph', N'Philippines')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (33, N'pl', N'Poland')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (34, N'pt', N'Portugal')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (35, N'ro', N'Romania')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (36, N'ru', N'Russia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (37, N'sa', N'Saudi Arabia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (38, N'rs', N'Serbia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (39, N'sg', N'Singapore')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (40, N'sk', N'Slovakia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (41, N'si', N'Slovenia')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (42, N'za', N'South Africa')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (43, N'kr', N'South Korea')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (44, N'se', N'Sweden')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (45, N'ch', N'Switzerland')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (46, N'tw', N'Taiwan')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (47, N'th', N'Thailand')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (48, N'tr', N'Turkey')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (49, N'ae', N'UAE')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (50, N'ua', N'Ukraine')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (51, N'gb', N'United Kingdom')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (52, N'us', N'United States')
INSERT [dbo].[NEWSAPI_COUNTRY] ([country_id], [country_code], [country_name])
VALUES (53, N've', N'Venuzuela')
GO
