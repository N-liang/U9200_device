.class Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static presets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation
.end field

.field private static speakerCoefficients24000:[B

.field private static speakerCoefficients32000:[B

.field private static speakerCoefficients44100:[B

.field private static speakerCoefficients48000:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 48
    const-string v4, "configuration"

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->TAG:Ljava/lang/String;

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "is":Ljava/io/InputStream;
    :try_start_5
    sget-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->TAG:Ljava/lang/String;

    const-string v5, "init config xml"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;

    invoke-direct {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;-><init>()V

    .line 56
    .local v0, "contentHandler":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/cust/"

    const-string/jumbo v6, "xml/dolby_config.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_20} :catch_54
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_20} :catch_60
    .catchall {:try_start_5 .. :try_end_20} :catchall_91

    .line 58
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_20
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v3, v4, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 59
    sget-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->TAG:Ljava/lang/String;

    const-string v5, "config xmlparse over"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->getSpeakerCoefficients48000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients48000:[B

    .line 61
    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->getSpeakerCoefficients44100()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients44100:[B

    .line 62
    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->getSpeakerCoefficients32000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients32000:[B

    .line 63
    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->getSpeakerCoefficients24000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients24000:[B

    .line 64
    invoke-virtual {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->getPresets()Ljava/util/Vector;

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->presets:Ljava/util/Vector;
    :try_end_4a
    .catch Lorg/xml/sax/SAXException; {:try_start_20 .. :try_end_4a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_4a} :catch_9d
    .catchall {:try_start_20 .. :try_end_4a} :catchall_9a

    .line 77
    if-eqz v3, :cond_a3

    .line 79
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_51

    move-object v2, v3

    .line 84
    .end local v0    # "contentHandler":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_50
    :goto_50
    return-void

    .line 80
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "contentHandler":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_51
    move-exception v4

    move-object v2, v3

    .line 81
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_50

    .line 65
    .end local v0    # "contentHandler":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
    :catch_54
    move-exception v1

    .line 66
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_91

    .line 77
    if-eqz v2, :cond_50

    .line 79
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_50

    .line 80
    :catch_5e
    move-exception v4

    goto :goto_50

    .line 67
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_60
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/IOException;
    :goto_61
    :try_start_61
    sget-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->TAG:Ljava/lang/String;

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetDefaultSpeakerCoefficients48000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients48000:[B

    .line 71
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetDefaultSpeakerCoefficients44100()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients44100:[B

    .line 72
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetDefaultSpeakerCoefficients32000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients32000:[B

    .line 73
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetDefaultSpeakerCoefficients24000()[B

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients24000:[B

    .line 74
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->GetDefaultPresets()Ljava/util/Vector;

    move-result-object v4

    sput-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->presets:Ljava/util/Vector;

    .line 75
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_91

    .line 77
    if-eqz v2, :cond_50

    .line 79
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_50

    .line 80
    :catch_8f
    move-exception v4

    goto :goto_50

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_91
    move-exception v4

    :goto_92
    if-eqz v2, :cond_97

    .line 79
    :try_start_94
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 81
    :cond_97
    :goto_97
    throw v4

    .line 80
    :catch_98
    move-exception v5

    goto :goto_97

    .line 77
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "contentHandler":Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_9a
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_92

    .line 67
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_9d
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_61

    .line 65
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_a0
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_55

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_a3
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_50
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetDefaultPresets()Ljava/util/Vector;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x3

    .line 200
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 203
    .local v6, "presets":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v3, "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x18

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_30f4

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_30fe

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3108

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3112

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_311c

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3126

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3130

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_313a

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3144

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_314e

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3158

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3162

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_316c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3176

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3180

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_318a

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3194

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_319e

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_31a8

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_31b2

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_31bc

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_31c6

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_31d0

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_31da

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_31e4

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_31ee

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_31f8

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3202

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_320c

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3216

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3220

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_322a

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3234

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_323e

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3248

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3252

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_325c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3266

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3270

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_327a

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3284

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_328e

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3298

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_32a2

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_32ac

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_32b6

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_32c0

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_32ca

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_32d4

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Default"

    const-string/jumbo v2, "movie preset 0"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 296
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_32de

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_32e8

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_32f2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_32fc

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3306

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3310

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_331a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3324

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_332e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3338

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3342

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_334c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3356

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3360

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_336a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3374

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_337e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3388

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3392

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_339c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_33a6

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_33b0

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_33ba

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_33c4

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_33ce

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_33d8

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_33e2

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_33ec

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_33f6

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3400

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_340a

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3414

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_341e

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3428

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3432

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_343c

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3446

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3450

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_345a

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3464

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_346e

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3478

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3482

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_348c

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3496

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_34a0

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_34aa

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "News"

    const-string v2, "A preset designed for a surround sound movie experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 385
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_34b4

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_34be

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_34c8

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_34d2

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_34dc

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_34e6

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_34f0

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_34fa

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3504

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_350e

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3518

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3522

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_352c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3536

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3540

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_354a

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3554

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_355e

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3568

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3572

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_357c

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3586

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3590

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_359a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_35a4

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_35ae

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_35b8

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_35c2

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_35cc

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_35d6

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_35e0

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_35ea

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_35f4

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_35fe

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3608

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3612

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_361c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3626

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3630

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_363a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3644

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_364e

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3658

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3662

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_366c

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_3676

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3680

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Sports"

    const-string v2, "Example movie preset 1"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 470
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_368a

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3694

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_369e

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_36a8

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_36b2

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_36bc

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_36c6

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_36d0

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_36da

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_36e4

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_36ee

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_36f8

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3702

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_370c

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3716

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3720

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_372a

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3734

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_373e

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3748

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3752

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_375c

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3766

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3770

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_377a

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3784

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_378e

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3798

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_37a2

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_37ac

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_37b6

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_37c0

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_37ca

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_37d4

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_37de

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_37e8

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_37f2

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_37fc

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3806

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3810

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_381a

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3824

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_382e

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3838

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3842

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_384c

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3856

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Drama"

    const-string v2, "Example movie 2"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 555
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3860

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_386a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3874

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_387e

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3888

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3892

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_389c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_38a6

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_38b0

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_38ba

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_38c4

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_38ce

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_38d8

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_38e2

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_38ec

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_38f6

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3900

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_390a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3914

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_391e

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3928

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3932

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_393c

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3946

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3950

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_395a

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3964

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_396e

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3978

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3982

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_398c

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3996

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_39a0

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_39aa

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_39b4

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_39be

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_39c8

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_39d2

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_39dc

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_39e6

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_39f0

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_39fa

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3a04

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3a0e

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3a18

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_3a22

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3a2c

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Music video"

    const-string v2, "Example movie 3"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 640
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3a36

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3a40

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3a4a

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3a54

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3a5e

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3a68

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3a72

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3a7c

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3a86

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3a90

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3a9a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3aa4

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3aae

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3ab8

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3ac2

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3acc

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3ad6

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3ae0

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3aea

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3af4

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3afe

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3b08

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3b12

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3b1c

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3b26

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3b30

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3b3a

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3b44

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3b4e

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3b58

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3b62

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3b6c

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3b76

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3b80

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3b8a

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3b94

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3b9e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3ba8

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3bb2

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3bbc

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3bc6

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3bd0

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3bda

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3be4

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3bee

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_3bf8

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3c02

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Movie"

    const-string v2, "Example movie preset 4"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 723
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 725
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3c0c

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3c16

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3c20

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3c2a

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3c34

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3c3e

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3c48

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3c52

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3c5c

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3c66

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3c70

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3c7a

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3c84

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3c8e

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3c98

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3ca2

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3cac

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3cb6

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3cc0

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3cca

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3cd4

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3cde

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3ce8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3cf2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3cfc

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3d06

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3d10

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3d1a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3d24

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3d2e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3d38

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3d42

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3d4c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3d56

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3d60

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3d6a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3d74

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3d7e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3d88

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3d92

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3d9c

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3da6

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3db0

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3dba

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3dc4

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_3dce

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3dd8

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Comedy"

    const-string v2, "Example movie preset 5"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 811
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3de2

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3dec

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3df6

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3e00

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3e0a

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3e14

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3e1e

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3e28

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3e32

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3e3c

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3e46

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3e50

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3e5a

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3e64

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3e6e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3e78

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3e82

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3e8c

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3e96

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3ea0

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3eaa

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3eb4

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3ebe

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3ec8

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3ed2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3edc

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3ee6

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3ef0

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3efa

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3f04

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_3f0e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_3f18

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_3f22

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_3f2c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_3f36

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_3f40

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_3f4a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_3f54

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_3f5e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_3f68

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_3f72

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_3f7c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_3f86

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_3f90

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_3f9a

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_3fa4

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_3fae

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Musical"

    const-string v2, "Example movie preset 7"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 895
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 897
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_3fb8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_3fc2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_3fcc

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_3fd6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_3fe0

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_3fea

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_3ff4

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_3ffe

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4008

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4012

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_401c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4026

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4030

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_403a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4044

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_404e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4058

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4062

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_406c

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4076

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4080

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_408a

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4094

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_409e

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_40a8

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_40b2

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_40bc

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_40c6

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_40d0

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_40da

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_40e4

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_40ee

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_40f8

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4102

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_410c

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4116

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4120

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_412a

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4134

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_413e

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4148

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4152

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_415c

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4166

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4170

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_417a

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4184

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Animated"

    const-string v2, "Example movie preset 8"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 981
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 983
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_418e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4198

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_41a2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_41ac

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_41b6

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_41c0

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_41ca

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_41d4

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_41de

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_41e8

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_41f2

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_41fc

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4206

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4210

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_421a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4224

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_422e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4238

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4242

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_424c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4256

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4260

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_426a

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4274

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_427e

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4288

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4292

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_429c

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_42a6

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_42b0

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_42ba

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_42c4

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_42ce

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_42d8

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_42e2

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_42ec

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_42f6

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4300

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_430a

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4314

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_431e

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4328

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4332

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_433c

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4346

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4350

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_435a

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Variety Show"

    const-string v2, "Example movie preset 9"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1066
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1068
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x18

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4364

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_436e

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4378

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4382

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_438c

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4396

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_43a0

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_43aa

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_43b4

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_43be

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_43c8

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_43d2

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_43dc

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_43e6

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_43f0

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_43fa

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4404

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_440e

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4418

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4422

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_442c

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4436

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4440

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_444a

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4454

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_445e

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4468

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4472

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_447c

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4486

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4490

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_449a

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_44a4

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_44ae

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_44b8

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_44c2

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_44cc

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_44d6

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_44e0

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_44ea

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_44f4

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_44fe

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4508

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4512

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_451c

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4526

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4530

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_453a

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4544

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string/jumbo v1, "speaker on"

    const-string v2, "Example movie preset 10"

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MOVIE:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1158
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x15

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_454e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4558

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4562

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_456c

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4576

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4580

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_458a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4594

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_459e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_45a8

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_45b2

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_45bc

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_45c6

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_45d0

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_45da

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_45e4

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_45ee

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_45f8

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4602

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_460c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4616

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4620

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_462a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4634

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_463e

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4648

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4652

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_465c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4666

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4670

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_467a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4684

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_468e

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4698

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_46a2

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_46ac

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_46b6

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_46c0

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_46ca

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_46d4

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_46de

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_46e8

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_46f2

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_46fc

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4706

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4710

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Default"

    const-string v2, "Example music preset with NB disabled."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1242
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1243
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_471a

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4724

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_472e

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4738

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4742

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_474c

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4756

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4760

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_476a

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4774

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_477e

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4788

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4792

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_479c

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_47a6

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_47b0

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_47ba

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_47c4

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_47ce

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_47d8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_47e2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_47ec

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_47f6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4800

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_480a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4814

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_481e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4828

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4832

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_483c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4846

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4850

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_485a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4864

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_486e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4878

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4882

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_488c

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4896

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_48a0

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_48aa

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_48b4

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_48be

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_48c8

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Rock"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1324
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1325
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_48d2

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_48dc

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_48e6

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_48f0

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_48fa

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4904

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_490e

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4918

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4922

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_492c

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4936

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4940

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_494a

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4954

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_495e

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4968

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4972

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_497c

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4986

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4990

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_499a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_49a4

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_49ae

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_49b8

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_49c2

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_49cc

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_49d6

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_49e0

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_49ea

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_49f4

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_49fe

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4a08

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4a12

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4a1c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4a26

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4a30

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4a3a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4a44

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4a4e

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4a58

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4a62

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4a6c

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4a76

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4a80

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Jazz"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1406
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1407
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4a8a

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4a94

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4a9e

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4aa8

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4ab2

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4abc

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4ac6

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4ad0

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4ada

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4ae4

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4aee

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4af8

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4b02

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4b0c

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4b16

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4b20

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4b2a

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4b34

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4b3e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4b48

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4b52

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4b5c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4b66

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4b70

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4b7a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4b84

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4b8e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4b98

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4ba2

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4bac

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4bb6

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4bc0

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4bca

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4bd4

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4bde

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4be8

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4bf2

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4bfc

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4c06

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4c10

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4c1a

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4c24

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4c2e

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4c38

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Pop"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1489
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1490
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x16

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4c42

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4c4c

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4c56

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4c60

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4c6a

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4c74

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4c7e

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4c88

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4c92

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4c9c

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4ca6

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4cb0

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4cba

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4cc4

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4cce

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4cd8

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4ce2

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4cec

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4cf6

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4d00

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4d0a

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4d14

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4d1e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4d28

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4d32

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4d3c

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4d46

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4d50

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4d5a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4d64

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4d6e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4d78

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4d82

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4d8c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4d96

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4da0

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4daa

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4db4

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4dbe

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4dc8

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4dd2

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4ddc

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4de6

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4df0

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4dfa

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4e04

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4e0e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Classical"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1575
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1576
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4e18

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4e22

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4e2c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4e36

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4e40

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4e4a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4e54

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4e5e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4e68

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4e72

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4e7c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4e86

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4e90

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4e9a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4ea4

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4eae

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4eb8

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4ec2

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4ecc

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4ed6

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4ee0

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4eea

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4ef4

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4efe

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_4f08

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_4f12

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_4f1c

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_4f26

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_4f30

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_4f3a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_4f44

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_4f4e

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_4f58

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_4f62

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_4f6c

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_4f76

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_4f80

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_4f8a

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_4f94

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_4f9e

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_4fa8

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_4fb2

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_4fbc

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_4fc6

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "R&B"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1657
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1658
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_4fd0

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_4fda

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_4fe4

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_4fee

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_4ff8

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5002

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_500c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5016

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5020

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_502a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5034

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_503e

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5048

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5052

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_505c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5066

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5070

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_507a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5084

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_508e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5098

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_50a2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_50ac

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_50b6

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_50c0

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_50ca

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_50d4

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_50de

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_50e8

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_50f2

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_50fc

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5106

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5110

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_511a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5124

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_512e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5138

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5142

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_514c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_5156

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5160

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_516a

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5174

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_517e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Hip Hop"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1739
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1740
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5188

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5192

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_519c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_51a6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_51b0

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_51ba

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_51c4

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_51ce

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_51d8

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_51e2

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_51ec

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_51f6

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5200

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_520a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5214

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_521e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5228

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5232

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_523c

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5246

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5250

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_525a

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5264

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_526e

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5278

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5282

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_528c

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5296

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_52a0

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_52aa

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_52b4

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_52be

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_52c8

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_52d2

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_52dc

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_52e6

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_52f0

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_52fa

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_5304

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_530e

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5318

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5322

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_532c

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_5336

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Blues"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1821
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1822
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5340

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_534a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5354

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_535e

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5368

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5372

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_537c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5386

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5390

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_539a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_53a4

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_53ae

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_53b8

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_53c2

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_53cc

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_53d6

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_53e0

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_53ea

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_53f4

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_53fe

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5408

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5412

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_541c

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5426

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5430

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_543a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5444

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_544e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5458

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5462

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_546c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5476

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5480

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_548a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5494

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_549e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_54a8

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_54b2

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_54bc

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_54c6

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_54d0

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_54da

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_54e4

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_54ee

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Electronic"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1903
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1904
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_54f8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5502

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_550c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5516

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5520

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_552a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5534

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_553e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5548

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5552

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_555c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5566

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5570

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_557a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5584

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_558e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5598

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_55a2

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_55ac

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_55b6

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_55c0

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_55ca

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_55d4

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_55de

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_55e8

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_55f2

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_55fc

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5606

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5610

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_561a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5624

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_562e

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5638

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5642

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_564c

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5656

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5660

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_566a

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_5674

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_567e

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5688

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5692

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_569c

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_56a6

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Country"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1985
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1986
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_56b0

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_56ba

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_56c4

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_56ce

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_56d8

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_56e2

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_56ec

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_56f6

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5700

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_570a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5714

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_571e

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5728

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5732

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_573c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5746

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5750

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_575a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5764

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_576e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5778

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5782

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_578c

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5796

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_57a0

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_57aa

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_57b4

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_57be

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_57c8

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_57d2

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_57dc

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_57e6

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_57f0

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_57fa

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5804

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_580e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5818

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5822

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_582c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_5836

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5840

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_584a

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5854

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_585e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Urban Contemporary"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2067
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2068
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5868

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5872

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_587c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5886

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5890

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_589a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_58a4

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_58ae

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_58b8

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_58c2

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_58cc

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_58d6

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_58e0

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_58ea

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_58f4

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_58fe

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5908

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5912

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_591c

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5926

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5930

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_593a

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5944

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_594e

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5958

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5962

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_596c

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5976

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5980

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_598a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5994

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_599e

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_59a8

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_59b2

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_59bc

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_59c6

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_59d0

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_59da

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_59e4

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_59ee

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_59f8

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5a02

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5a0c

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_5a16

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2144
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Podcast"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2149
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2150
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5a20

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5a2a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5a34

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5a3e

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5a48

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5a52

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5a5c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5a66

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5a70

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5a7a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5a84

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5a8e

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5a98

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5aa2

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5aac

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5ab6

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5ac0

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5aca

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5ad4

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2183
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5ade

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5ae8

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5af2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5afc

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5b06

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5b10

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5b1a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5b24

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5b2e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5b38

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5b42

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5b4c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5b56

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5b60

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5b6a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5b74

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5b7e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5b88

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5b92

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_5b9c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_5ba6

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5bb0

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5bba

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5bc4

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_5bce

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Dance"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2232
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2233
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5bd8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5be2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5bec

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5bf6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5c00

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5c0a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5c14

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5c1e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5c28

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5c32

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5c3c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5c46

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5c50

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5c5a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5c64

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5c6e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5c78

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5c82

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5c8c

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5c96

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5ca0

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5caa

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5cb4

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5cbe

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5cc8

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5cd2

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5cdc

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5ce6

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5cf0

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5cfa

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5d04

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5d0e

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5d18

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5d22

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5d2c

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5d36

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5d40

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5d4a

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_5d54

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_5d5e

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5d68

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5d72

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5d7c

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_5d86

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Latin American"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2314
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2315
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5d90

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5d9a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5da4

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5dae

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5db8

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5dc2

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5dcc

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5dd6

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5de0

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5dea

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5df4

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5dfe

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5e08

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5e12

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5e1c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5e26

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5e30

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5e3a

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5e44

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2348
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5e4e

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5e58

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5e62

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5e6c

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5e76

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5e80

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5e8a

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5e94

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5e9e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5ea8

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5eb2

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5ebc

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5ec6

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5ed0

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5eda

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5ee4

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5eee

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5ef8

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5f02

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_5f0c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_5f16

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_5f20

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_5f2a

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_5f34

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_5f3e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2391
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Jungle"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2396
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2397
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_5f48

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_5f52

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_5f5c

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_5f66

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_5f70

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5f7a

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_5f84

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_5f8e

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_5f98

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_5fa2

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_5fac

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_5fb6

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_5fc0

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_5fca

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_5fd4

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_5fde

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_5fe8

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_5ff2

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_5ffc

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2430
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_6006

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_6010

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_601a

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_6024

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_602e

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_6038

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_6042

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_604c

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_6056

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_6060

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_606a

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_6074

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_607e

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_6088

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_6092

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_609c

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_60a6

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_60b0

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_60ba

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_60c4

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_60ce

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_60d8

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_60e2

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_60ec

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_60f6

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Metal"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2478
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2479
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x13

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_6100

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_610a

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_6114

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_611e

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_6128

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_6132

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_613c

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_6146

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_6150

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_615a

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_6164

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_616e

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_6178

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_6182

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_618c

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_6196

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_61a0

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_61aa

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_61b4

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_61be

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_61c8

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_61d2

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_61dc

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_61e6

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_61f0

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_61fa

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_6204

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_620e

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_6218

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_6222

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_622c

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_6236

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_6240

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_624a

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_6254

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_625e

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_6268

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_6272

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_627c

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_6286

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_6290

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_629a

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_62a4

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_62ae

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string v1, "Flat"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2559
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2560
    .restart local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->HEADPHONES:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x18

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_62b8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_62c2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_62cc

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_62d6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_62e0

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_62ea

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_62f4

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_62fe

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_6308

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_6312

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_631c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_6326

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_6330

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_633a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_6344

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_634e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_6358

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_6362

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_636c

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_6376

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_6380

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_638a

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_6394

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_639e

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2601
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->SPEAKERS:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v1, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const/16 v2, 0x19

    new-array v2, v2, [[I

    new-array v5, v8, [I

    fill-array-data v5, :array_63a8

    aput-object v5, v2, v4

    new-array v5, v8, [I

    fill-array-data v5, :array_63b2

    aput-object v5, v2, v9

    new-array v5, v8, [I

    fill-array-data v5, :array_63bc

    aput-object v5, v2, v10

    new-array v5, v8, [I

    fill-array-data v5, :array_63c6

    aput-object v5, v2, v8

    new-array v5, v8, [I

    fill-array-data v5, :array_63d0

    aput-object v5, v2, v11

    const/4 v5, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_63da

    aput-object v7, v2, v5

    const/4 v5, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_63e4

    aput-object v7, v2, v5

    const/4 v5, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_63ee

    aput-object v7, v2, v5

    const/16 v5, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_63f8

    aput-object v7, v2, v5

    const/16 v5, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_6402

    aput-object v7, v2, v5

    const/16 v5, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_640c

    aput-object v7, v2, v5

    const/16 v5, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_6416

    aput-object v7, v2, v5

    const/16 v5, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_6420

    aput-object v7, v2, v5

    const/16 v5, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_642a

    aput-object v7, v2, v5

    const/16 v5, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_6434

    aput-object v7, v2, v5

    const/16 v5, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_643e

    aput-object v7, v2, v5

    const/16 v5, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_6448

    aput-object v7, v2, v5

    const/16 v5, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_6452

    aput-object v7, v2, v5

    const/16 v5, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_645c

    aput-object v7, v2, v5

    const/16 v5, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_6466

    aput-object v7, v2, v5

    const/16 v5, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_6470

    aput-object v7, v2, v5

    const/16 v5, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_647a

    aput-object v7, v2, v5

    const/16 v5, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_6484

    aput-object v7, v2, v5

    const/16 v5, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_648e

    aput-object v7, v2, v5

    const/16 v5, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_6498

    aput-object v7, v2, v5

    invoke-direct {v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    const-string/jumbo v1, "speaker on"

    const-string v2, "A preset designed for an immersive music listening experience."

    sget-object v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->MUSIC:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2646
    return-object v6

    .line 205
    nop

    nop

    :array_30f4
    .array-data 4
        0xa
        0x0
        0x1
    .end array-data

    :array_30fe
    .array-data 4
        0xa
        0x1
        0x1
    .end array-data

    :array_3108
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_3112
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_311c
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_3126
    .array-data 4
        0x9
        0x2
        0x2
    .end array-data

    :array_3130
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_313a
    .array-data 4
        0x4
        0x1
        0x3
    .end array-data

    :array_3144
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    :array_314e
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3158
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3162
    .array-data 4
        0x7
        0x4
        -0x4
    .end array-data

    :array_316c
    .array-data 4
        0x7
        0x5
        0xc
    .end array-data

    :array_3176
    .array-data 4
        0x7
        0x6
        0x10
    .end array-data

    :array_3180
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_318a
    .array-data 4
        0x7
        0x8
        0xe
    .end array-data

    :array_3194
    .array-data 4
        0x7
        0x9
        0x14
    .end array-data

    :array_319e
    .array-data 4
        0x7
        0xa
        0x12
    .end array-data

    :array_31a8
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_31b2
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_31bc
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_31c6
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_31d0
    .array-data 4
        0x6
        0x2
        0x3
    .end array-data

    :array_31da
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    .line 245
    :array_31e4
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_31ee
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_31f8
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_3202
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_320c
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_3216
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_3220
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_322a
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3234
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_323e
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_3248
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_3252
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_325c
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_3266
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_3270
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_327a
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3284
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_328e
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3298
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_32a2
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_32ac
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_32b6
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_32c0
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_32ca
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_32d4
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 296
    :array_32de
    .array-data 4
        0x0
        0x3
        0x0
    .end array-data

    :array_32e8
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_32f2
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_32fc
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3306
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3310
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_331a
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_3324
    .array-data 4
        0x9
        0x2
        0x0
    .end array-data

    :array_332e
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3338
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3342
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_334c
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3356
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_3360
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_336a
    .array-data 4
        0x7
        0x6
        0xc
    .end array-data

    :array_3374
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_337e
    .array-data 4
        0x7
        0x8
        0x10
    .end array-data

    :array_3388
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_3392
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_339c
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

    :array_33a6
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_33b0
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 334
    :array_33ba
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_33c4
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_33ce
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_33d8
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_33e2
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_33ec
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_33f6
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_3400
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_340a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3414
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_341e
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_3428
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3432
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_343c
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_3446
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_3450
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_345a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3464
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_346e
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3478
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3482
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_348c
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3496
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_34a0
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_34aa
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 385
    :array_34b4
    .array-data 4
        0x0
        0x3
        0x4
    .end array-data

    :array_34be
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_34c8
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_34d2
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_34dc
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_34e6
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_34f0
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_34fa
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_3504
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_350e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3518
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3522
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_352c
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_3536
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_3540
    .array-data 4
        0x7
        0x6
        0x4
    .end array-data

    :array_354a
    .array-data 4
        0x7
        0x7
        0x0
    .end array-data

    :array_3554
    .array-data 4
        0x7
        0x8
        0x4
    .end array-data

    :array_355e
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_3568
    .array-data 4
        0x7
        0xa
        0x8
    .end array-data

    :array_3572
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_357c
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3586
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 423
    :array_3590
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_359a
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_35a4
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_35ae
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_35b8
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_35c2
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_35cc
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_35d6
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_35e0
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_35ea
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_35f4
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_35fe
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3608
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_3612
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_361c
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_3626
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3630
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_363a
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3644
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_364e
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3658
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3662
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_366c
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3676
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3680
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 470
    :array_368a
    .array-data 4
        0x0
        0x3
        0x4
    .end array-data

    :array_3694
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_369e
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_36a8
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_36b2
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_36bc
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_36c6
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_36d0
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_36da
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_36e4
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_36ee
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_36f8
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3702
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_370c
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_3716
    .array-data 4
        0x7
        0x6
        0xc
    .end array-data

    :array_3720
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_372a
    .array-data 4
        0x7
        0x8
        0x8
    .end array-data

    :array_3734
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_373e
    .array-data 4
        0x7
        0xa
        0x14
    .end array-data

    :array_3748
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3752
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_375c
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 508
    :array_3766
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_3770
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_377a
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_3784
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_378e
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_3798
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_37a2
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_37ac
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_37b6
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_37c0
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_37ca
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_37d4
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_37de
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_37e8
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_37f2
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_37fc
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3806
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3810
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_381a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3824
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_382e
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3838
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3842
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_384c
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3856
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 555
    :array_3860
    .array-data 4
        0x0
        0x3
        0x0
    .end array-data

    :array_386a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3874
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_387e
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3888
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3892
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_389c
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_38a6
    .array-data 4
        0x9
        0x2
        0x2
    .end array-data

    :array_38b0
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_38ba
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_38c4
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_38ce
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_38d8
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_38e2
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_38ec
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_38f6
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_3900
    .array-data 4
        0x7
        0x8
        -0xc
    .end array-data

    :array_390a
    .array-data 4
        0x7
        0x9
        -0xc
    .end array-data

    :array_3914
    .array-data 4
        0x7
        0xa
        0xc
    .end array-data

    :array_391e
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3928
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3932
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 593
    :array_393c
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_3946
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_3950
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_395a
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_3964
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_396e
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_3978
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_3982
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_398c
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3996
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_39a0
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_39aa
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_39b4
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_39be
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_39c8
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_39d2
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_39dc
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_39e6
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_39f0
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_39fa
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3a04
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3a0e
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3a18
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3a22
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3a2c
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 640
    :array_3a36
    .array-data 4
        0x0
        0x3
        0x4
    .end array-data

    :array_3a40
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3a4a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_3a54
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3a5e
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3a68
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_3a72
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_3a7c
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_3a86
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3a90
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3a9a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3aa4
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3aae
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_3ab8
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_3ac2
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3acc
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_3ad6
    .array-data 4
        0x7
        0x8
        -0xc
    .end array-data

    :array_3ae0
    .array-data 4
        0x7
        0x9
        -0xc
    .end array-data

    :array_3aea
    .array-data 4
        0x7
        0xa
        0xc
    .end array-data

    :array_3af4
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3afe
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3b08
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 678
    :array_3b12
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_3b1c
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_3b26
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_3b30
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_3b3a
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_3b44
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_3b4e
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_3b58
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3b62
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3b6c
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_3b76
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_3b80
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3b8a
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_3b94
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_3b9e
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_3ba8
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3bb2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3bbc
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3bc6
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3bd0
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3bda
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3be4
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3bee
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3bf8
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3c02
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 725
    :array_3c0c
    .array-data 4
        0x0
        0x3
        0x0
    .end array-data

    :array_3c16
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3c20
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_3c2a
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3c34
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3c3e
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_3c48
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_3c52
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_3c5c
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3c66
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3c70
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3c7a
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3c84
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_3c8e
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_3c98
    .array-data 4
        0x7
        0x6
        0xc
    .end array-data

    :array_3ca2
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_3cac
    .array-data 4
        0x7
        0x8
        0x18
    .end array-data

    :array_3cb6
    .array-data 4
        0x7
        0x9
        0xa
    .end array-data

    :array_3cc0
    .array-data 4
        0x7
        0xa
        0x2
    .end array-data

    :array_3cca
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3cd4
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3cde
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 763
    :array_3ce8
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_3cf2
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_3cfc
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_3d06
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_3d10
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_3d1a
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_3d24
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_3d2e
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3d38
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3d42
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_3d4c
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_3d56
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3d60
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_3d6a
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_3d74
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_3d7e
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3d88
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3d92
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3d9c
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3da6
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3db0
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3dba
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3dc4
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3dce
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3dd8
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 811
    :array_3de2
    .array-data 4
        0x0
        0x3
        0x4
    .end array-data

    :array_3dec
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3df6
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_3e00
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3e0a
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3e14
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_3e1e
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_3e28
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_3e32
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3e3c
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3e46
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3e50
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3e5a
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_3e64
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_3e6e
    .array-data 4
        0x7
        0x6
        0x4
    .end array-data

    :array_3e78
    .array-data 4
        0x7
        0x7
        0x0
    .end array-data

    :array_3e82
    .array-data 4
        0x7
        0x8
        0x4
    .end array-data

    :array_3e8c
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_3e96
    .array-data 4
        0x7
        0xa
        0x8
    .end array-data

    :array_3ea0
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3eaa
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3eb4
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 849
    :array_3ebe
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_3ec8
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_3ed2
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_3edc
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_3ee6
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_3ef0
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_3efa
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_3f04
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_3f0e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_3f18
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_3f22
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_3f2c
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_3f36
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_3f40
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_3f4a
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_3f54
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_3f5e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_3f68
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_3f72
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3f7c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_3f86
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_3f90
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_3f9a
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_3fa4
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_3fae
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 897
    :array_3fb8
    .array-data 4
        0x0
        0x3
        0x4
    .end array-data

    :array_3fc2
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_3fcc
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_3fd6
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_3fe0
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_3fea
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_3ff4
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_3ffe
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_4008
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4012
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_401c
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4026
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4030
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_403a
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_4044
    .array-data 4
        0x7
        0x6
        0x4
    .end array-data

    :array_404e
    .array-data 4
        0x7
        0x7
        0x0
    .end array-data

    :array_4058
    .array-data 4
        0x7
        0x8
        0x4
    .end array-data

    :array_4062
    .array-data 4
        0x7
        0x9
        0x2
    .end array-data

    :array_406c
    .array-data 4
        0x7
        0xa
        0x8
    .end array-data

    :array_4076
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4080
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_408a
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 935
    :array_4094
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_409e
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_40a8
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_40b2
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_40bc
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_40c6
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_40d0
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_40da
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_40e4
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_40ee
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_40f8
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4102
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_410c
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_4116
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_4120
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_412a
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_4134
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_413e
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4148
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4152
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_415c
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4166
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4170
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_417a
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4184
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 983
    :array_418e
    .array-data 4
        0x0
        0x3
        0x0
    .end array-data

    :array_4198
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_41a2
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_41ac
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_41b6
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_41c0
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_41ca
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_41d4
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_41de
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_41e8
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_41f2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_41fc
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4206
    .array-data 4
        0x7
        0x4
        0x8
    .end array-data

    :array_4210
    .array-data 4
        0x7
        0x5
        0x8
    .end array-data

    :array_421a
    .array-data 4
        0x7
        0x6
        0xc
    .end array-data

    :array_4224
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_422e
    .array-data 4
        0x7
        0x8
        0x10
    .end array-data

    :array_4238
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_4242
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_424c
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4256
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_4260
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 1021
    :array_426a
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_4274
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_427e
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_4288
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4292
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_429c
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_42a6
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_42b0
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_42ba
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_42c4
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_42ce
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_42d8
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_42e2
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_42ec
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_42f6
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_4300
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_430a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4314
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_431e
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4328
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_4332
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_433c
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4346
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4350
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_435a
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1068
    :array_4364
    .array-data 4
        0xa
        0x0
        0x1
    .end array-data

    :array_436e
    .array-data 4
        0xa
        0x1
        0x1
    .end array-data

    :array_4378
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_4382
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_438c
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4396
    .array-data 4
        0x9
        0x2
        0x2
    .end array-data

    :array_43a0
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_43aa
    .array-data 4
        0x4
        0x1
        0x3
    .end array-data

    :array_43b4
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    :array_43be
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_43c8
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_43d2
    .array-data 4
        0x7
        0x4
        -0x4
    .end array-data

    :array_43dc
    .array-data 4
        0x7
        0x5
        0xc
    .end array-data

    :array_43e6
    .array-data 4
        0x7
        0x6
        0x10
    .end array-data

    :array_43f0
    .array-data 4
        0x7
        0x7
        0x14
    .end array-data

    :array_43fa
    .array-data 4
        0x7
        0x8
        0xe
    .end array-data

    :array_4404
    .array-data 4
        0x7
        0x9
        0x14
    .end array-data

    :array_440e
    .array-data 4
        0x7
        0xa
        0x12
    .end array-data

    :array_4418
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4422
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_442c
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4436
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_4440
    .array-data 4
        0x6
        0x2
        0x3
    .end array-data

    :array_444a
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    .line 1108
    :array_4454
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_445e
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_4468
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_4472
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_447c
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_4486
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_4490
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_449a
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_44a4
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_44ae
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_44b8
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_44c2
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_44cc
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_44d6
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_44e0
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_44ea
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_44f4
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_44fe
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4508
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4512
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_451c
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4526
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4530
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_453a
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4544
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1158
    :array_454e
    .array-data 4
        0xa
        0x0
        0x1
    .end array-data

    :array_4558
    .array-data 4
        0xa
        0x1
        0x1
    .end array-data

    :array_4562
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_456c
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_4576
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4580
    .array-data 4
        0x9
        0x2
        0x2
    .end array-data

    :array_458a
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4594
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_459e
    .array-data 4
        0x7
        0x4
        -0x8
    .end array-data

    :array_45a8
    .array-data 4
        0x7
        0x5
        -0x4
    .end array-data

    :array_45b2
    .array-data 4
        0x7
        0x6
        -0x4
    .end array-data

    :array_45bc
    .array-data 4
        0x7
        0x7
        0x2
    .end array-data

    :array_45c6
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_45d0
    .array-data 4
        0x7
        0x9
        0x4
    .end array-data

    :array_45da
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_45e4
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_45ee
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_45f8
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4602
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_460c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4616
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    .line 1194
    :array_4620
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_462a
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_4634
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_463e
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4648
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_4652
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_465c
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_4666
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4670
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_467a
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4684
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_468e
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4698
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_46a2
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_46ac
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_46b6
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_46c0
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_46ca
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_46d4
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_46de
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_46e8
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_46f2
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_46fc
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4706
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4710
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1243
    :array_471a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4724
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_472e
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4738
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_4742
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_474c
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4756
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_4760
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_476a
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4774
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_477e
    .array-data 4
        0x7
        0x4
        0x4
    .end array-data

    :array_4788
    .array-data 4
        0x7
        0x5
        -0x4
    .end array-data

    :array_4792
    .array-data 4
        0x7
        0x6
        -0xc
    .end array-data

    :array_479c
    .array-data 4
        0x7
        0x7
        -0x14
    .end array-data

    :array_47a6
    .array-data 4
        0x7
        0x8
        -0xc
    .end array-data

    :array_47b0
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_47ba
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_47c4
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_47ce
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1276
    :array_47d8
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_47e2
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_47ec
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_47f6
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4800
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_480a
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_4814
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_481e
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4828
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4832
    .array-data 4
        0x7
        0x4
        -0xc
    .end array-data

    :array_483c
    .array-data 4
        0x7
        0x5
        -0xc
    .end array-data

    :array_4846
    .array-data 4
        0x7
        0x6
        -0xc
    .end array-data

    :array_4850
    .array-data 4
        0x7
        0x7
        -0x6
    .end array-data

    :array_485a
    .array-data 4
        0x7
        0x8
        -0x6
    .end array-data

    :array_4864
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_486e
    .array-data 4
        0x7
        0xa
        0x1
    .end array-data

    :array_4878
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4882
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_488c
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4896
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_48a0
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_48aa
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_48b4
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_48be
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_48c8
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1325
    :array_48d2
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_48dc
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_48e6
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_48f0
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_48fa
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_4904
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_490e
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_4918
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_4922
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_492c
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4936
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4940
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_494a
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4954
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_495e
    .array-data 4
        0x7
        0x8
        -0x8
    .end array-data

    :array_4968
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_4972
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_497c
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4986
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1358
    :array_4990
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_499a
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_49a4
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_49ae
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_49b8
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_49c2
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_49cc
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_49d6
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_49e0
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_49ea
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_49f4
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_49fe
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4a08
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_4a12
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_4a1c
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_4a26
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_4a30
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4a3a
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4a44
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4a4e
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_4a58
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4a62
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4a6c
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4a76
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4a80
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1407
    :array_4a8a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4a94
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_4a9e
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4aa8
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_4ab2
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_4abc
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4ac6
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_4ad0
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_4ada
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4ae4
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4aee
    .array-data 4
        0x7
        0x4
        -0x4
    .end array-data

    :array_4af8
    .array-data 4
        0x7
        0x5
        -0x4
    .end array-data

    :array_4b02
    .array-data 4
        0x7
        0x6
        0x4
    .end array-data

    :array_4b0c
    .array-data 4
        0x7
        0x7
        0xc
    .end array-data

    :array_4b16
    .array-data 4
        0x7
        0x8
        0x8
    .end array-data

    :array_4b20
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_4b2a
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_4b34
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4b3e
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1440
    :array_4b48
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_4b52
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_4b5c
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_4b66
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4b70
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_4b7a
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_4b84
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_4b8e
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4b98
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4ba2
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4bac
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4bb6
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4bc0
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_4bca
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_4bd4
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_4bde
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_4be8
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4bf2
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4bfc
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4c06
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_4c10
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4c1a
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4c24
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4c2e
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4c38
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1490
    :array_4c42
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4c4c
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_4c56
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4c60
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_4c6a
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_4c74
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4c7e
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_4c88
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_4c92
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4c9c
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4ca6
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4cb0
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4cba
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4cc4
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_4cce
    .array-data 4
        0x7
        0x8
        -0xc
    .end array-data

    :array_4cd8
    .array-data 4
        0x7
        0x9
        -0xc
    .end array-data

    :array_4ce2
    .array-data 4
        0x7
        0xa
        0x0
    .end array-data

    :array_4cec
    .array-data 4
        0x7
        0x2
        -0x8
    .end array-data

    :array_4cf6
    .array-data 4
        0x7
        0x3
        0x10
    .end array-data

    :array_4d00
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

    :array_4d0a
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_4d14
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    .line 1527
    :array_4d1e
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_4d28
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_4d32
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_4d3c
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4d46
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_4d50
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_4d5a
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_4d64
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4d6e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4d78
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4d82
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4d8c
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4d96
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_4da0
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_4daa
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_4db4
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_4dbe
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4dc8
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4dd2
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4ddc
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_4de6
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4df0
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4dfa
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4e04
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4e0e
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1576
    :array_4e18
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4e22
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_4e2c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4e36
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_4e40
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_4e4a
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_4e54
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_4e5e
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_4e68
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4e72
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4e7c
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4e86
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4e90
    .array-data 4
        0x7
        0x6
        -0x4
    .end array-data

    :array_4e9a
    .array-data 4
        0x7
        0x7
        -0x4
    .end array-data

    :array_4ea4
    .array-data 4
        0x7
        0x8
        0x4
    .end array-data

    :array_4eae
    .array-data 4
        0x7
        0x9
        -0x8
    .end array-data

    :array_4eb8
    .array-data 4
        0x7
        0xa
        0x0
    .end array-data

    :array_4ec2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4ecc
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1609
    :array_4ed6
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_4ee0
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_4eea
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_4ef4
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_4efe
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_4f08
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_4f12
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_4f1c
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_4f26
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_4f30
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_4f3a
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_4f44
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_4f4e
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_4f58
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_4f62
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_4f6c
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_4f76
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_4f80
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_4f8a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4f94
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_4f9e
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_4fa8
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_4fb2
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_4fbc
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_4fc6
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1658
    :array_4fd0
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_4fda
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_4fe4
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_4fee
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_4ff8
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5002
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_500c
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5016
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5020
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_502a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5034
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_503e
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5048
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5052
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_505c
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_5066
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_5070
    .array-data 4
        0x7
        0xa
        -0x8
    .end array-data

    :array_507a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5084
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1691
    :array_508e
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5098
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_50a2
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_50ac
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_50b6
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_50c0
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_50ca
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_50d4
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_50de
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_50e8
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_50f2
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_50fc
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5106
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5110
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_511a
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5124
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_512e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5138
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_5142
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_514c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_5156
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5160
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_516a
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5174
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_517e
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1740
    :array_5188
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5192
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_519c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_51a6
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_51b0
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_51ba
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_51c4
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_51ce
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_51d8
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_51e2
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_51ec
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_51f6
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5200
    .array-data 4
        0x7
        0x6
        -0x4
    .end array-data

    :array_520a
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_5214
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_521e
    .array-data 4
        0x7
        0x9
        -0x8
    .end array-data

    :array_5228
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_5232
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_523c
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1773
    :array_5246
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5250
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_525a
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_5264
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_526e
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5278
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_5282
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_528c
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5296
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_52a0
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_52aa
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_52b4
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_52be
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_52c8
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_52d2
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_52dc
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_52e6
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_52f0
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_52fa
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5304
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_530e
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5318
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5322
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_532c
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_5336
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1822
    :array_5340
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_534a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_5354
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_535e
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5368
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5372
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_537c
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5386
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5390
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_539a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_53a4
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_53ae
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_53b8
    .array-data 4
        0x7
        0x6
        -0x8
    .end array-data

    :array_53c2
    .array-data 4
        0x7
        0x7
        -0x4
    .end array-data

    :array_53cc
    .array-data 4
        0x7
        0x8
        -0x8
    .end array-data

    :array_53d6
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_53e0
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_53ea
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_53f4
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1855
    :array_53fe
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5408
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_5412
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_541c
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_5426
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5430
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_543a
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_5444
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_544e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5458
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5462
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_546c
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5476
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5480
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_548a
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5494
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_549e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_54a8
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_54b2
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_54bc
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_54c6
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_54d0
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_54da
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_54e4
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_54ee
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1904
    :array_54f8
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5502
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_550c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5516
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5520
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_552a
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_5534
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_553e
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5548
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5552
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_555c
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5566
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5570
    .array-data 4
        0x7
        0x6
        -0x4
    .end array-data

    :array_557a
    .array-data 4
        0x7
        0x7
        -0x4
    .end array-data

    :array_5584
    .array-data 4
        0x7
        0x8
        -0x8
    .end array-data

    :array_558e
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_5598
    .array-data 4
        0x7
        0xa
        -0xc
    .end array-data

    :array_55a2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_55ac
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 1937
    :array_55b6
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_55c0
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_55ca
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_55d4
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_55de
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_55e8
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_55f2
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_55fc
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5606
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5610
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_561a
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5624
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_562e
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5638
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_5642
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_564c
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_5656
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5660
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_566a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5674
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_567e
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5688
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5692
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_569c
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_56a6
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 1986
    :array_56b0
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_56ba
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_56c4
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_56ce
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_56d8
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_56e2
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_56ec
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_56f6
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5700
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_570a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5714
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_571e
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5728
    .array-data 4
        0x7
        0x6
        -0x4
    .end array-data

    :array_5732
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_573c
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_5746
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_5750
    .array-data 4
        0x7
        0xa
        -0x8
    .end array-data

    :array_575a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5764
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2019
    :array_576e
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5778
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_5782
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_578c
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_5796
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_57a0
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_57aa
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_57b4
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_57be
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_57c8
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_57d2
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_57dc
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_57e6
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_57f0
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_57fa
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5804
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_580e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5818
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_5822
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_582c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_5836
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5840
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_584a
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5854
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_585e
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2068
    :array_5868
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5872
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_587c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5886
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5890
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_589a
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_58a4
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_58ae
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_58b8
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_58c2
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_58cc
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_58d6
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_58e0
    .array-data 4
        0x7
        0x6
        -0x8
    .end array-data

    :array_58ea
    .array-data 4
        0x7
        0x7
        -0x4
    .end array-data

    :array_58f4
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_58fe
    .array-data 4
        0x7
        0x9
        -0x4
    .end array-data

    :array_5908
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_5912
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_591c
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2101
    :array_5926
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5930
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_593a
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_5944
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_594e
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5958
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_5962
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_596c
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5976
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5980
    .array-data 4
        0x7
        0x4
        -0x8
    .end array-data

    :array_598a
    .array-data 4
        0x7
        0x5
        -0x8
    .end array-data

    :array_5994
    .array-data 4
        0x7
        0x6
        -0x8
    .end array-data

    :array_599e
    .array-data 4
        0x7
        0x7
        -0x2
    .end array-data

    :array_59a8
    .array-data 4
        0x7
        0x8
        -0x2
    .end array-data

    :array_59b2
    .array-data 4
        0x7
        0x9
        0x0
    .end array-data

    :array_59bc
    .array-data 4
        0x7
        0xa
        0x5
    .end array-data

    :array_59c6
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_59d0
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_59da
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_59e4
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_59ee
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_59f8
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5a02
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5a0c
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_5a16
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2150
    :array_5a20
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5a2a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_5a34
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5a3e
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5a48
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5a52
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_5a5c
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5a66
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5a70
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5a7a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5a84
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5a8e
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5a98
    .array-data 4
        0x7
        0x6
        -0x18
    .end array-data

    :array_5aa2
    .array-data 4
        0x7
        0x7
        -0x1c
    .end array-data

    :array_5aac
    .array-data 4
        0x7
        0x8
        -0x10
    .end array-data

    :array_5ab6
    .array-data 4
        0x7
        0x9
        0x4
    .end array-data

    :array_5ac0
    .array-data 4
        0x7
        0xa
        0xc
    .end array-data

    :array_5aca
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5ad4
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2183
    :array_5ade
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5ae8
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_5af2
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_5afc
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_5b06
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5b10
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_5b1a
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_5b24
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5b2e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5b38
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5b42
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5b4c
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5b56
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5b60
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_5b6a
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5b74
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_5b7e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5b88
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_5b92
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5b9c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_5ba6
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5bb0
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5bba
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5bc4
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_5bce
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2233
    :array_5bd8
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5be2
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_5bec
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5bf6
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5c00
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5c0a
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_5c14
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5c1e
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5c28
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5c32
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5c3c
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5c46
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5c50
    .array-data 4
        0x7
        0x6
        -0x8
    .end array-data

    :array_5c5a
    .array-data 4
        0x7
        0x7
        -0x8
    .end array-data

    :array_5c64
    .array-data 4
        0x7
        0x8
        -0x8
    .end array-data

    :array_5c6e
    .array-data 4
        0x7
        0x9
        -0x10
    .end array-data

    :array_5c78
    .array-data 4
        0x7
        0xa
        -0x4
    .end array-data

    :array_5c82
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5c8c
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2266
    :array_5c96
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5ca0
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_5caa
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_5cb4
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_5cbe
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5cc8
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_5cd2
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_5cdc
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5ce6
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5cf0
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5cfa
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5d04
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5d0e
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5d18
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_5d22
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5d2c
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_5d36
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5d40
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_5d4a
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5d54
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_5d5e
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5d68
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5d72
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5d7c
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_5d86
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2315
    :array_5d90
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5d9a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_5da4
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5dae
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5db8
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5dc2
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_5dcc
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5dd6
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5de0
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5dea
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5df4
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5dfe
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5e08
    .array-data 4
        0x7
        0x6
        -0x1c
    .end array-data

    :array_5e12
    .array-data 4
        0x7
        0x7
        -0x2
    .end array-data

    :array_5e1c
    .array-data 4
        0x7
        0x8
        -0x2
    .end array-data

    :array_5e26
    .array-data 4
        0x7
        0x9
        0x0
    .end array-data

    :array_5e30
    .array-data 4
        0x7
        0xa
        0x8
    .end array-data

    :array_5e3a
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5e44
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2348
    :array_5e4e
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_5e58
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_5e62
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_5e6c
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_5e76
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_5e80
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_5e8a
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_5e94
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5e9e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5ea8
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5eb2
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5ebc
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_5ec6
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5ed0
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_5eda
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_5ee4
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_5eee
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5ef8
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_5f02
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5f0c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_5f16
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_5f20
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_5f2a
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_5f34
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_5f3e
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2397
    :array_5f48
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_5f52
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_5f5c
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_5f66
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_5f70
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_5f7a
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_5f84
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_5f8e
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_5f98
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_5fa2
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_5fac
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_5fb6
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_5fc0
    .array-data 4
        0x7
        0x6
        -0x14
    .end array-data

    :array_5fca
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_5fd4
    .array-data 4
        0x7
        0x8
        0xe
    .end array-data

    :array_5fde
    .array-data 4
        0x7
        0x9
        0x4
    .end array-data

    :array_5fe8
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_5ff2
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_5ffc
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2430
    :array_6006
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_6010
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_601a
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_6024
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_602e
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_6038
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_6042
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_604c
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_6056
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_6060
    .array-data 4
        0x7
        0x4
        -0x8
    .end array-data

    :array_606a
    .array-data 4
        0x7
        0x5
        -0x8
    .end array-data

    :array_6074
    .array-data 4
        0x7
        0x6
        -0x8
    .end array-data

    :array_607e
    .array-data 4
        0x7
        0x7
        -0x2
    .end array-data

    :array_6088
    .array-data 4
        0x7
        0x8
        -0x2
    .end array-data

    :array_6092
    .array-data 4
        0x7
        0x9
        0x0
    .end array-data

    :array_609c
    .array-data 4
        0x7
        0xa
        0x5
    .end array-data

    :array_60a6
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_60b0
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_60ba
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_60c4
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_60ce
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_60d8
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_60e2
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_60ec
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_60f6
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2479
    :array_6100
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_610a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_6114
    .array-data 4
        0x6
        0x2
        0x4
    .end array-data

    :array_611e
    .array-data 4
        0x6
        0x3
        0x0
    .end array-data

    :array_6128
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_6132
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_613c
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_6146
    .array-data 4
        0x9
        0x2
        0x1
    .end array-data

    :array_6150
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_615a
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_6164
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_616e
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_6178
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_6182
    .array-data 4
        0x7
        0x7
        0x0
    .end array-data

    :array_618c
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_6196
    .array-data 4
        0x7
        0x9
        -0xc
    .end array-data

    :array_61a0
    .array-data 4
        0x7
        0xa
        0x4
    .end array-data

    :array_61aa
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_61b4
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    .line 2512
    :array_61be
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_61c8
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_61d2
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_61dc
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_61e6
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_61f0
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_61fa
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_6204
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_620e
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_6218
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_6222
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_622c
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_6236
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_6240
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_624a
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_6254
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_625e
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_6268
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_6272
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_627c
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_6286
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_6290
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_629a
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_62a4
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_62ae
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    .line 2560
    :array_62b8
    .array-data 4
        0xa
        0x0
        0x1
    .end array-data

    :array_62c2
    .array-data 4
        0xa
        0x1
        0x1
    .end array-data

    :array_62cc
    .array-data 4
        0x9
        0x0
        0x1
    .end array-data

    :array_62d6
    .array-data 4
        0x0
        0x9
        0x0
    .end array-data

    :array_62e0
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_62ea
    .array-data 4
        0x9
        0x2
        0x2
    .end array-data

    :array_62f4
    .array-data 4
        0x4
        0x0
        0x0
    .end array-data

    :array_62fe
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_6308
    .array-data 4
        0x4
        0x2
        0x0
    .end array-data

    :array_6312
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_631c
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_6326
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_6330
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_633a
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_6344
    .array-data 4
        0x7
        0x7
        0x0
    .end array-data

    :array_634e
    .array-data 4
        0x7
        0x8
        0x0
    .end array-data

    :array_6358
    .array-data 4
        0x7
        0x9
        0x0
    .end array-data

    :array_6362
    .array-data 4
        0x7
        0xa
        0x0
    .end array-data

    :array_636c
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_6376
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_6380
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_638a
    .array-data 4
        0x6
        0x1
        0x6
    .end array-data

    :array_6394
    .array-data 4
        0x6
        0x2
        0x3
    .end array-data

    :array_639e
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    .line 2601
    :array_63a8
    .array-data 4
        0x9
        0x0
        0x0
    .end array-data

    :array_63b2
    .array-data 4
        0xa
        0x0
        0x0
    .end array-data

    :array_63bc
    .array-data 4
        0x1
        0x0
        0x0
    .end array-data

    :array_63c6
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data

    :array_63d0
    .array-data 4
        0xc
        0x0
        0x1
    .end array-data

    :array_63da
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_63e4
    .array-data 4
        0xc
        0x2
        0x0
    .end array-data

    :array_63ee
    .array-data 4
        0x7
        0x0
        0x1
    .end array-data

    :array_63f8
    .array-data 4
        0x7
        0x1
        0x7
    .end array-data

    :array_6402
    .array-data 4
        0x7
        0x4
        0x0
    .end array-data

    :array_640c
    .array-data 4
        0x7
        0x5
        0x0
    .end array-data

    :array_6416
    .array-data 4
        0x7
        0x6
        0x0
    .end array-data

    :array_6420
    .array-data 4
        0x7
        0x7
        0x6
    .end array-data

    :array_642a
    .array-data 4
        0x7
        0x8
        0x6
    .end array-data

    :array_6434
    .array-data 4
        0x7
        0x9
        0x8
    .end array-data

    :array_643e
    .array-data 4
        0x7
        0xa
        0xd
    .end array-data

    :array_6448
    .array-data 4
        0x7
        0x2
        0x0
    .end array-data

    :array_6452
    .array-data 4
        0x7
        0x3
        0x18
    .end array-data

    :array_645c
    .array-data 4
        0x6
        0x0
        0x1
    .end array-data

    :array_6466
    .array-data 4
        0x6
        0x1
        0x12
    .end array-data

    :array_6470
    .array-data 4
        0x6
        0x2
        0x2
    .end array-data

    :array_647a
    .array-data 4
        0x6
        0x3
        0x1
    .end array-data

    :array_6484
    .array-data 4
        0x4
        0x0
        0x1
    .end array-data

    :array_648e
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_6498
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data
.end method

.method private static GetDefaultSpeakerCoefficients24000()[B
    .registers 1

    .prologue
    .line 143
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x61t
        -0x3et
        -0x10t
        -0x2t
        -0x49t
        -0x4t
        -0x16t
        0x74t
        -0x75t
        0x1et
        0x0t
        0x0t
        0x61t
        -0x3et
        -0x10t
        -0x2t
        -0x49t
        -0x4t
        -0x16t
        0x74t
        -0x75t
        0x1et
        0x0t
        0x0t
    .end array-data
.end method

.method private static GetDefaultSpeakerCoefficients32000()[B
    .registers 1

    .prologue
    .line 156
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x1t
        0x0t
        0x20t
        0x0t
        -0x6ft
        -0x66t
        0x56t
        -0xet
        -0x54t
        -0x25t
        0x3bt
        -0x10t
        -0x36t
        0x22t
        0x0t
        0x0t
        -0x6ft
        -0x66t
        0x56t
        -0xet
        -0x54t
        -0x25t
        0x3bt
        -0x10t
        -0x36t
        0x22t
        0x0t
        0x0t
    .end array-data
.end method

.method private static GetDefaultSpeakerCoefficients44100()[B
    .registers 1

    .prologue
    .line 167
    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x4t
        0x0t
        0x8t
        0x0t
        0x74t
        -0x3ft
        0x40t
        -0x1t
        -0x6t
        -0x3t
        0x27t
        0x7at
        0x15t
        0xft
        0x0t
        0x0t
        -0x6dt
        -0x38t
        0x4ft
        0x4t
        0x62t
        -0xdt
        0x7t
        0x3et
        -0x2bt
        0x43t
        0x0t
        0x0t
        -0x72t
        -0x42t
        0x65t
        0x0t
        0x1at
        0x2t
        -0x5ct
        0x6et
        -0x23t
        0x23t
        0x0t
        0x0t
        0x7dt
        -0x43t
        0x75t
        -0x2t
        0x3dt
        0x3t
        0x38t
        0x2bt
        0x40t
        0x67t
        0x0t
        0x0t
        0x74t
        -0x3ft
        0x40t
        -0x1t
        -0x6t
        -0x3t
        0x27t
        0x7at
        0x15t
        0xft
        0x0t
        0x0t
        -0x6dt
        -0x38t
        0x4ft
        0x4t
        0x62t
        -0xdt
        0x7t
        0x3et
        -0x2bt
        0x43t
        0x0t
        0x0t
        -0x72t
        -0x42t
        0x65t
        0x0t
        0x1at
        0x2t
        -0x5ct
        0x6et
        -0x23t
        0x23t
        0x0t
        0x0t
        0x7dt
        -0x43t
        0x75t
        -0x2t
        0x3dt
        0x3t
        0x38t
        0x2bt
        0x40t
        0x67t
        0x0t
        0x0t
    .end array-data
.end method

.method private static GetDefaultSpeakerCoefficients48000()[B
    .registers 1

    .prologue
    .line 193
    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x3t
        0x0t
        0x20t
        0x0t
        0x6t
        -0x3dt
        -0x42t
        -0x1t
        -0x58t
        -0x5t
        0x6et
        0x61t
        0x28t
        0x3et
        0x0t
        0x0t
        0x4at
        -0x55t
        0x22t
        -0x11t
        -0x69t
        0x1et
        0x64t
        0x2at
        0x79t
        0x3ft
        0x0t
        0x0t
        -0x47t
        -0x44t
        0x38t
        0x1t
        -0x7dt
        0x4t
        -0x1at
        0x6ft
        -0x54t
        0x2ft
        0x0t
        0x0t
        0x6t
        -0x3dt
        -0x42t
        -0x1t
        -0x58t
        -0x5t
        0x6et
        0x61t
        0x28t
        0x3et
        0x0t
        0x0t
        0x4at
        -0x55t
        0x22t
        -0x11t
        -0x69t
        0x1et
        0x64t
        0x2at
        0x79t
        0x3ft
        0x0t
        0x0t
        -0x47t
        -0x44t
        0x38t
        0x1t
        -0x7dt
        0x4t
        -0x1at
        0x6ft
        -0x54t
        0x2ft
        0x0t
        0x0t
    .end array-data
.end method

.method static GetInitialCustomPresets()Ljava/util/Vector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 133
    .local v0, "presets":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;>;"
    return-object v0
.end method

.method static GetPresets()Ljava/util/Vector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->presets:Ljava/util/Vector;

    return-object v0
.end method

.method static GetSpeakerCoefficients24000()[B
    .registers 1

    .prologue
    .line 102
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients24000:[B

    return-object v0
.end method

.method static GetSpeakerCoefficients32000()[B
    .registers 1

    .prologue
    .line 109
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients32000:[B

    return-object v0
.end method

.method static GetSpeakerCoefficients44100()[B
    .registers 1

    .prologue
    .line 115
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients44100:[B

    return-object v0
.end method

.method static GetSpeakerCoefficients48000()[B
    .registers 1

    .prologue
    .line 122
    sget-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/Configuration;->speakerCoefficients48000:[B

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method
