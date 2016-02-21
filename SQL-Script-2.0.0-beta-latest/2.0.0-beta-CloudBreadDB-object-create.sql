
/*
drop table AdminMembers
drop table Coupon
drop table CouponMember
drop table GameEventMember
drop table GameEvents
drop table GiftDepositories
drop table ItemLists
drop table MemberAccountBlockLog
drop table MemberGameInfoes
drop table MemberGameInfoStages
drop table MemberItemPurchases
drop table MemberItems
drop table Members
drop table Notices
drop table ServerInfo
drop table StatsData
drop table CloudBreadAdminLog
drop table CloudBreadErrorLog
drop table CloudBreadLog
drop table Sessions
*/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [AdminMembers](
	[AdminMemberID] [nvarchar](128) NOT NULL,
	[AdminMemberPWD] [nvarchar](128) NOT NULL DEFAULT (''),
	[AdminMemberEmail] [nvarchar](256) NOT NULL DEFAULT (''),
	[IDCreateAdminMember] [nvarchar](128) NOT NULL DEFAULT (''),
	[AdminGroup] [nvarchar](40) NOT NULL DEFAULT (''),
	[TimeZoneID] [nvarchar](40) NOT NULL DEFAULT ('Korea Standard Time'),
	[PINumber] [nvarchar](50) NOT NULL DEFAULT (''),
	[Name1] [nvarchar](50) NOT NULL DEFAULT (''),
	[Name2] [nvarchar](50) NOT NULL DEFAULT (''),
	[Name3] [nvarchar](50) NOT NULL DEFAULT (''),
	[DOB] [nvarchar](16) NOT NULL DEFAULT (''),
	[LastIPaddress] [nvarchar](32) NOT NULL DEFAULT (''),
	[LastLoginDT] [nvarchar](32) NOT NULL DEFAULT (''),
	[LastLogoutDT] [nvarchar](32) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.AdminMembers] PRIMARY KEY NONCLUSTERED 
(
	[AdminMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_AdminMembers_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_AdminMembers_CreatedAt] ON [AdminMembers]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [Coupon]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Coupon](
	[CouponID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[CouponCategory1] [nvarchar](50) NOT NULL DEFAULT (''),
	[CouponCategory2] [nvarchar](50) NOT NULL DEFAULT (''),
	[CouponCategory3] [nvarchar](50) NOT NULL DEFAULT (''),
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (''),
	[ItemCount] [nvarchar](50) NOT NULL DEFAULT (''),
	[ItemStatus] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetGroup] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetOS] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetDevice] [nvarchar](80) NOT NULL DEFAULT (''),
	[Title] [nvarchar](100) NOT NULL DEFAULT (''),
	[Content] [nvarchar](4000) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[DupeYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[OrderNumber] [int] NOT NULL DEFAULT ((0)),
	[CouponDurationFrom] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[CouponDurationTo] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[CreateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL,
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.[Coupon] PRIMARY KEY NONCLUSTERED 
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_Coupon]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_Coupon] ON [Coupon]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [CouponMember]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CouponMember](
	[CouponMemberID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[CouponID] [nvarchar](128) NOT NULL DEFAULT (''),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.[CouponMember] PRIMARY KEY NONCLUSTERED 
(
	[CouponMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_CouponMember_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_CouponMember_CreatedAt] ON [CouponMember]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [GameEventMember]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GameEventMember](
	[GameEventMemberID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[eventID] [nvarchar](128) NOT NULL DEFAULT (''),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.GameEventMember] PRIMARY KEY NONCLUSTERED 
(
	[GameEventMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_GameEventMember_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_GameEventMember_CreatedAt] ON [GameEventMember]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [GameEvents]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GameEvents](
	[GameEventID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[EventCategory1] [nvarchar](50) NOT NULL DEFAULT (''),
	[EventCategory2] [nvarchar](50) NOT NULL DEFAULT (''),
	[EventCategory3] [nvarchar](50) NOT NULL DEFAULT (''),
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (''),
	[ItemCount] [nvarchar](50) NOT NULL DEFAULT (''),
	[Itemstatus] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetGroup] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetOS] [nvarchar](40) NOT NULL DEFAULT (''),
	[TargetDevice] [nvarchar](80) NOT NULL DEFAULT (''),
	[EventImageLink] [nvarchar](512) NOT NULL DEFAULT (''),
	[Title] [nvarchar](100) NOT NULL DEFAULT (''),
	[Content] [nvarchar](4000) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[EventDurationFrom] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[EventDurationTo] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[OrderNumber] [int] NOT NULL DEFAULT ((0)),
	[CreateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_GameEvents] PRIMARY KEY NONCLUSTERED 
(
	[GameEventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_GameEvents_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_GameEvents_CreatedAt] ON [GameEvents]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [GiftDepositories]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GiftDepositories](
	[GiftDepositoryID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (''),
	[ItemCount] [nvarchar](40) NOT NULL DEFAULT (''),
	[FromMemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[ToMemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[SentMemberYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.GiftDepositories] PRIMARY KEY NONCLUSTERED 
(
	[GiftDepositoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_GiftDepositories_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_GiftDepositories_CreatedAt] ON [GiftDepositories]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [ItemLists]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ItemLists](
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[ItemName] [nvarchar](120) NOT NULL DEFAULT (''),
	[ItemDescription] [nvarchar](4000) NOT NULL DEFAULT (''),
	[ItemPrice] [nvarchar](50) NOT NULL DEFAULT (''),
	[ItemSellPrice] [nvarchar](50) NOT NULL DEFAULT (''),
	[ItemCategory1] [nvarchar](100) NOT NULL DEFAULT (''),
	[ItemCategory2] [nvarchar](100) NOT NULL DEFAULT (''),
	[ItemCategory3] [nvarchar](100) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[IteamCreateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[IteamUpdateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.ItemLists] PRIMARY KEY NONCLUSTERED 
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_ItemLists_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_ItemLists_CreatedAt] ON [ItemLists]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [MemberAccountBlockLog]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MemberAccountBlockLog](
	[MemberAccountBlockID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[MemberAccountBlockReasonCategory1] [nvarchar](50) NOT NULL DEFAULT (''),
	[MemberAccountBlockReasonCategory2] [nvarchar](50) NOT NULL DEFAULT (''),
	[MemberAccountBlockReasonCategory3] [nvarchar](50) NOT NULL DEFAULT (''),
	[MemberAccountBlockReason] [nvarchar](1000) NOT NULL DEFAULT (''),
	[MemberAccountBlockProcess] [nvarchar](50) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[CreateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.[MemberAccountBlockLog] PRIMARY KEY NONCLUSTERED 
(
	[MemberAccountBlockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MemberAccountBlockLog_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_MemberAccountBlockLog_CreatedAt] ON [MemberAccountBlockLog]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [MemberGameInfoes]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MemberGameInfoes](
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[Level] [nvarchar](40) NOT NULL DEFAULT (''),
	[Exps] [nvarchar](50) NOT NULL DEFAULT (''),
	[Points] [nvarchar](50) NOT NULL DEFAULT (''),
	[UserSTAT1] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT2] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT3] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT4] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT5] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT6] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT7] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT8] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT9] [nvarchar](max) NOT NULL DEFAULT (''),
	[UserSTAT10] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.MemberGameInfoes] PRIMARY KEY NONCLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MemberGameInfoes_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_MemberGameInfoes_CreatedAt] ON [MemberGameInfoes]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [MemberGameInfoStages]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MemberGameInfoStages](
	[MemberGameInfoStageID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[StageName] [nvarchar](100) NOT NULL DEFAULT (''),
	[StageStatus] [nvarchar](40) NOT NULL DEFAULT (''),
	[Category1] [nvarchar](80) NOT NULL DEFAULT (''),
	[Category2] [nvarchar](80) NOT NULL DEFAULT (''),
	[Category3] [nvarchar](80) NOT NULL DEFAULT (''),
	[Mission1] [nvarchar](80) NOT NULL DEFAULT (''),
	[Mission2] [nvarchar](80) NOT NULL DEFAULT (''),
	[Mission3] [nvarchar](80) NOT NULL DEFAULT (''),
	[Mission4] [nvarchar](80) NOT NULL DEFAULT (''),
	[Mission5] [nvarchar](80) NOT NULL DEFAULT (''),
	[Points] [nvarchar](50) NOT NULL DEFAULT (''),
	[StageStat1] [nvarchar](max) NOT NULL DEFAULT (''),
	[StageStat2] [nvarchar](max) NOT NULL DEFAULT (''),
	[StageStat3] [nvarchar](max) NOT NULL DEFAULT (''),
	[StageStat4] [nvarchar](max) NOT NULL DEFAULT (''),
	[StageStat5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](max) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](max) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.[MemberGameInfoStages] PRIMARY KEY NONCLUSTERED 
(
	[MemberGameInfoStageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MemberGameInfoStages]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_MemberGameInfoStages] ON [MemberGameInfoStages]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [MemberItemPurchases]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MemberItemPurchases](
	[MemberItemPurchaseID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (''),
	[PurchaseQuantity] [nvarchar](128) NOT NULL DEFAULT (''),
	[PurchasePrice] [nvarchar](50) NOT NULL DEFAULT (''),
	[PGinfo1] [nvarchar](512) NOT NULL DEFAULT (''),
	[PGinfo2] [nvarchar](512) NOT NULL DEFAULT (''),
	[PGinfo3] [nvarchar](512) NOT NULL DEFAULT (''),
	[PGinfo4] [nvarchar](512) NOT NULL DEFAULT (''),
	[PGinfo5] [nvarchar](512) NOT NULL DEFAULT (''),
	[PurchaseDeviceID] [nvarchar](128) NOT NULL DEFAULT (''),
	[PurchaseDeviceIPAddress] [nvarchar](64) NOT NULL DEFAULT (''),
	[PurchaseDeviceMACAddress] [nvarchar](128) NOT NULL DEFAULT (''),
	[PurchaseDT] [nvarchar](64) NOT NULL DEFAULT (''),
	[PurchaseCancelYN] [nvarchar](40) NOT NULL DEFAULT (''),
	[PurchaseCancelDT] [nvarchar](64) NOT NULL DEFAULT (''),
	[PurchaseCancelingStatus] [nvarchar](40) NOT NULL DEFAULT (''),
	[PurchaseCancelReturnedAmount] [nvarchar](50) NOT NULL DEFAULT (''),
	[PurchaseCancelDeviceID] [nvarchar](128) NOT NULL DEFAULT (''),
	[PurchaseCancelDeviceIPAddress] [nvarchar](64) NOT NULL DEFAULT (''),
	[PurchaseCancelDeviceMACAddress] [nvarchar](128) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[PurchaseCancelConfirmAdminMemberID] [nvarchar](128) NOT NULL DEFAULT (''),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.MemberItemPruchases] PRIMARY KEY NONCLUSTERED 
(
	[MemberItemPurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MemberItemPruchases_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_MemberItemPruchases_CreatedAt] ON [MemberItemPurchases]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [MemberItems]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MemberItems](
	[MemberItemID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (''),
	[ItemListID] [nvarchar](128) NOT NULL DEFAULT (''),
	[ItemCount] [nvarchar](40) NOT NULL DEFAULT (''),
	[ItemStatus] [nvarchar](50) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL CONSTRAINT [DF__MemberIte__HideY__7BE56230]  DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL CONSTRAINT [DF__MemberIte__Delet__7CD98669]  DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.MemberItems] PRIMARY KEY NONCLUSTERED 
(
	[MemberItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_MemberItems_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_MemberItems_CreatedAt] ON [MemberItems]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [Members]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Members](
	[MemberID] [nvarchar](256) NOT NULL DEFAULT (newid()),
	[MemberPWD] [nvarchar](256) NOT NULL DEFAULT (''),
	[EmailAddress] [nvarchar](450) NOT NULL DEFAULT (''),
	[EmailConfirmedYN] [nvarchar](40) NOT NULL DEFAULT (''),
	[PhoneNumber1] [nvarchar](50) NOT NULL DEFAULT (''),
	[PhoneNumber2] [nvarchar](50) NOT NULL DEFAULT (''),
	[PINumber] [nvarchar](100) NOT NULL DEFAULT (''),
	[Name1] [nvarchar](100) NOT NULL DEFAULT (''),
	[Name2] [nvarchar](100) NOT NULL DEFAULT (''),
	[Name3] [nvarchar](100) NOT NULL DEFAULT (''),
	[DOB] [nvarchar](50) NOT NULL DEFAULT (''),
	[RecommenderID] [nvarchar](256) NOT NULL DEFAULT (''),
	[MemberGroup] [nvarchar](50) NOT NULL DEFAULT (''),
	[LastDeviceID] [nvarchar](128) NOT NULL DEFAULT (''),
	[LastIPaddress] [nvarchar](128) NOT NULL DEFAULT (''),
	[LastLoginDT] [nvarchar](64) NOT NULL DEFAULT (''),
	[LastLogoutDT] [nvarchar](64) NOT NULL DEFAULT (''),
	[LastMACAddress] [nvarchar](128) NOT NULL DEFAULT (''),
	[AccountBlockYN] [nvarchar](40) NOT NULL DEFAULT (''),
	[AccountBlockEndDT] [nvarchar](64) NOT NULL DEFAULT (''),
	[AnonymousYN] [nvarchar](40) NOT NULL DEFAULT (''),
	[3rdAuthProvider] [nvarchar](128) NOT NULL DEFAULT (''),
	[3rdAuthID] [nvarchar](256) NOT NULL DEFAULT (''),
	[3rdAuthParam] [nvarchar](256) NOT NULL DEFAULT (''),
	[PushNotificationID] [nvarchar](450) NOT NULL DEFAULT (''),
	[PushNotificationProvider] [nvarchar](256) NOT NULL DEFAULT (''),
	[PushNotificationGroup] [nvarchar](256) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[TimeZoneID] [nvarchar](30) NOT NULL DEFAULT ('Korea Standard Time'),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.Members] PRIMARY KEY NONCLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_Members_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_Members_CreatedAt] ON [Members]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [Notices]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Notices](
	[NoticeID] [nvarchar](128) NOT NULL DEFAULT (newid()),
	[NoticeCategory1] [nvarchar](50) NOT NULL DEFAULT (''),
	[NoticeCategory2] [nvarchar](50) NOT NULL DEFAULT (''),
	[NoticeCategory3] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetGroup] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetOS] [nvarchar](50) NOT NULL DEFAULT (''),
	[TargetDevice] [nvarchar](80) NOT NULL DEFAULT (''),
	[NoticeImageLink] [nvarchar](512) NOT NULL DEFAULT (''),
	[title] [nvarchar](100) NOT NULL DEFAULT (''),
	[content] [nvarchar](4000) NOT NULL DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol6] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol7] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol8] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol9] [nvarchar](max) NOT NULL DEFAULT (''),
	[sCol10] [nvarchar](max) NOT NULL DEFAULT (''),
	[NoticeDurationFrom] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[NoticeDurationTo] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[OrderNumber] [int] NOT NULL DEFAULT ((0)),
	[CreateAdminID] [nvarchar](128) NOT NULL DEFAULT (''),
	[HideYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[DeleteYN] [nvarchar](1) NOT NULL DEFAULT ('N'),
	[CreatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
 CONSTRAINT [PK_CloudBread.[Notices] PRIMARY KEY NONCLUSTERED 
(
	[NoticeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Index [IX_Notices]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_Notices] ON [Notices]
(
	[CreatedAt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [ServerInfo]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ServerInfo](
	[InfoID] [nvarchar](128) NOT NULL CONSTRAINT [DF_ServerInfo_InfoID]  DEFAULT (newid()),
	[FEServerLists] [nvarchar](4000) NOT NULL CONSTRAINT [DF_ServerInfo_FEServerLists]  DEFAULT (''),
	[SocketServerLists] [nvarchar](4000) NOT NULL CONSTRAINT [DF_ServerInfo_SocketServerLists]  DEFAULT (''),
	[Version] [nvarchar](50) NOT NULL CONSTRAINT [DF_ServerInfo_Version]  DEFAULT (''),
	[ResourceLink] [nvarchar](4000) NOT NULL CONSTRAINT [DF_ServerInfo_ResourceLink]  DEFAULT (''),
	[EULAText] [nvarchar](4000) NOT NULL CONSTRAINT [DF_ServerInfo_EULAText]  DEFAULT (''),
	[sCol1] [nvarchar](max) NOT NULL CONSTRAINT [DF_ServerInfo_sCol1]  DEFAULT (''),
	[sCol2] [nvarchar](max) NOT NULL CONSTRAINT [DF_ServerInfo_sCol2]  DEFAULT (''),
	[sCol3] [nvarchar](max) NOT NULL CONSTRAINT [DF_ServerInfo_sCol3]  DEFAULT (''),
	[sCol4] [nvarchar](max) NOT NULL CONSTRAINT [DF_ServerInfo_sCol4]  DEFAULT (''),
	[sCol5] [nvarchar](max) NOT NULL CONSTRAINT [DF_ServerInfo_sCol5]  DEFAULT (''),
	[CreatedAt] [datetimeoffset](7) NOT NULL CONSTRAINT [DF_ServerInfo_CreatedAt]  DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL CONSTRAINT [DF_ServerInfo_UpdatedAt]  DEFAULT (sysutcdatetime()),
	[DataFromRegion] [nvarchar](64) NOT NULL CONSTRAINT [DF_ServerInfo_DataFromRegion]  DEFAULT (''),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL CONSTRAINT [DF_ServerInfo_DataFromRegionDT]  DEFAULT (''),
 CONSTRAINT [PK_ServerInfo] PRIMARY KEY CLUSTERED 
(
	[InfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [StatsData]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [StatsData](
	[StatID] [nvarchar](50) NOT NULL CONSTRAINT [DF_StatsData_StatID]  DEFAULT (newid()),
	[CategoryName] [nvarchar](256) NOT NULL CONSTRAINT [DF_Table_1_Group]  DEFAULT (''),
	[CountNum] [bigint] NOT NULL CONSTRAINT [DF_Table_1_Count]  DEFAULT ((0)),
	[Fields] [nvarchar](100) NOT NULL CONSTRAINT [DF_StatsData_Fileds]  DEFAULT (''),
	[CreatedAt] [datetimeoffset](7) NOT NULL CONSTRAINT [DF_StatsData_CreatedAt]  DEFAULT (sysutcdatetime()),
	[UpdatedAt] [datetimeoffset](7) NOT NULL CONSTRAINT [DF_StatsData_UpdatedAt]  DEFAULT (sysutcdatetime()),
	[DataFromRegionDT] [datetimeoffset](7) NOT NULL DEFAULT (''),
	[DataFromRegion] [nvarchar](64) NOT NULL DEFAULT (''),
PRIMARY KEY NONCLUSTERED 
(
	[StatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_StatsData_CategoryName]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE CLUSTERED INDEX [IX_StatsData_CategoryName] ON [StatsData]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloudBreadAdminLog]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CloudBreadAdminLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](256) NOT NULL,
	[JobID] [varchar](100) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](2000) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CloudBreadErrorLog]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CloudBreadErrorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](256) NOT NULL,
	[JobID] [varchar](100) NOT NULL,
	[Date] [datetime] NOT NULL DEFAULT (sysutcdatetime()),
	[Thread] [varchar](2000) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CloudBreadLog]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CloudBreadLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [varchar](256) NOT NULL,
	[JobID] [varchar](100) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](2000) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 2016-02-21 PM 5:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionId] [nvarchar](88) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Expires] [datetime] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockCookie] [int] NOT NULL,
	[Locked] [bit] NOT NULL,
	[SessionItem] [image] NULL,
	[Flags] [int] NOT NULL,
	[Timeout] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

/****** Object:  Index [IX_AdminMembers_AdminMemberEmail]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AdminMembers_AdminMemberEmail] ON [AdminMembers]
(
	[AdminMemberEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AdminMembers_Name1]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_AdminMembers_Name1] ON [AdminMembers]
(
	[Name1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Coupon_CouponDurationFrom]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Coupon_CouponDurationFrom] ON [Coupon]
(
	[CouponDurationFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Coupon_CouponDurationTo]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Coupon_CouponDurationTo] ON [Coupon]
(
	[CouponDurationTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Coupon_ItemListID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Coupon_ItemListID] ON [Coupon]
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CouponMember_CouponID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_CouponMember_CouponID] ON [CouponMember]
(
	[CouponID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CouponMember_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_CouponMember_MemberID] ON [CouponMember]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GameEventMember_eventID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GameEventMember_eventID] ON [GameEventMember]
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GameEventMember_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GameEventMember_MemberID] ON [GameEventMember]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GameEvents_EventDurationFrom]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GameEvents_EventDurationFrom] ON [GameEvents]
(
	[EventDurationFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GameEvents_EventDurationTo]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GameEvents_EventDurationTo] ON [GameEvents]
(
	[EventDurationTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GameEvents_ItemListID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GameEvents_ItemListID] ON [GameEvents]
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GiftDepositories_FromMemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GiftDepositories_FromMemberID] ON [GiftDepositories]
(
	[FromMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GiftDepositories_ItemListID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GiftDepositories_ItemListID] ON [GiftDepositories]
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_GiftDepositories_ToMemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_GiftDepositories_ToMemberID] ON [GiftDepositories]
(
	[ToMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ItemLists_ItemCategory1]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_ItemLists_ItemCategory1] ON [ItemLists]
(
	[ItemCategory1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ItemLists_ItemCategory2]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_ItemLists_ItemCategory2] ON [ItemLists]
(
	[ItemCategory2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ItemLists_ItemCategory3]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_ItemLists_ItemCategory3] ON [ItemLists]
(
	[ItemCategory3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ItemLists_ItemName]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_ItemLists_ItemName] ON [ItemLists]
(
	[ItemName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberAccountBlockLog_CreateAdminID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberAccountBlockLog_CreateAdminID] ON [MemberAccountBlockLog]
(
	[CreateAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberAccountBlockLog_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberAccountBlockLog_MemberID] ON [MemberAccountBlockLog]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberGameInfoStages_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberGameInfoStages_MemberID] ON [MemberGameInfoStages]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItemPruchases_ItemListID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItemPruchases_ItemListID] ON [MemberItemPurchases]
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItemPruchases_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItemPruchases_MemberID] ON [MemberItemPurchases]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItemPruchases_PurchaseCancelDeviceID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItemPruchases_PurchaseCancelDeviceID] ON [MemberItemPurchases]
(
	[PurchaseCancelDeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItemPruchases_PurchaseDeviceID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItemPruchases_PurchaseDeviceID] ON [MemberItemPurchases]
(
	[PurchaseDeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItems_ItemListID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItems_ItemListID] ON [MemberItems]
(
	[ItemListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_MemberItems_MemberID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_MemberItems_MemberID] ON [MemberItems]
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_3rdAuthID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Members_3rdAuthID] ON [Members]
(
	[3rdAuthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_EmailAddress]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Members_EmailAddress] ON [Members]
(
	[EmailAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_LastDeviceID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Members_LastDeviceID] ON [Members]
(
	[LastDeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_Name1]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Members_Name1] ON [Members]
(
	[Name1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Members_PushNotificationID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Members_PushNotificationID] ON [Members]
(
	[PushNotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Notices_CreateAdminID]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Notices_CreateAdminID] ON [Notices]
(
	[CreateAdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_StatsData_CreatedAt]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_StatsData_CreatedAt] ON [StatsData]
(
	[CreatedAt] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sessions_Expires]    Script Date: 2016-02-21 PM 5:28:52 ******/
CREATE NONCLUSTERED INDEX [IX_Sessions_Expires] ON [dbo].[Sessions]
(
	[Expires] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CloudBreadAdminLog] ADD  DEFAULT (sysutcdatetime()) FOR [Date]
GO
ALTER TABLE [dbo].[CloudBreadLog] ADD  DEFAULT (sysutcdatetime()) FOR [Date]
GO


