.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;
.super Ljava/lang/Object;
.source "DolbyMobileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingDefn"
.end annotation


# instance fields
.field public feature:B

.field public parameter:B


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "feature"    # I
    .param p2, "parameter"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->feature:B

    .line 292
    int-to-byte v0, p2

    iput-byte v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->parameter:B

    .line 293
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 299
    instance-of v0, p1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    if-nez v0, :cond_6

    .line 301
    .end local p1    # "other":Ljava/lang/Object;
    :goto_5
    return v1

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    iget-byte v0, v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->feature:B

    iget-byte v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->feature:B

    if-ne v0, v2, :cond_1a

    check-cast p1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    .end local p1    # "other":Ljava/lang/Object;
    iget-byte v0, p1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->parameter:B

    iget-byte v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->parameter:B

    if-ne v0, v2, :cond_1a

    const/4 v0, 0x1

    :goto_18
    move v1, v0

    goto :goto_5

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 307
    iget-byte v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->feature:B

    mul-int/lit8 v0, v0, 0xd

    iget-byte v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->parameter:B

    add-int/2addr v0, v1

    return v0
.end method
