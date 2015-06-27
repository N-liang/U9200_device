.class public abstract Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;
.super Landroid/os/Binder;
.source "IDolbyMobileSystemInterface.java"

# interfaces
.implements Landroid/media/dolby/IDolbyMobileSystemInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/IDolbyMobileSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.dolby.IDolbyMobileSystemInterface"

.field static final TRANSACTION_currentPreset:I = 0x3

.field static final TRANSACTION_getEffectOn:I = 0x1

.field static final TRANSACTION_getGlobalAudioHeadsetByPass:I = 0x11

.field static final TRANSACTION_getGlobalAudioPreset:I = 0xf

.field static final TRANSACTION_getGlobalAudioSpeakerByPass:I = 0x13

.field static final TRANSACTION_getGlobalEffectOn:I = 0xd

.field static final TRANSACTION_getGlobalVideoHeadsetByPass:I = 0x17

.field static final TRANSACTION_getGlobalVideoPreset:I = 0x15

.field static final TRANSACTION_getGlobalVideoSpeakerByPass:I = 0x19

.field static final TRANSACTION_getPresetCategory:I = 0x6

.field static final TRANSACTION_numPresets:I = 0x7

.field static final TRANSACTION_numPresetsPerCategory:I = 0x8

.field static final TRANSACTION_presetName:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectPreset:I = 0x4

.field static final TRANSACTION_setEffectByPass:I = 0xc

.field static final TRANSACTION_setEffectOn:I = 0x2

.field static final TRANSACTION_setGlobalAudioHeadsetByPass:I = 0x12

.field static final TRANSACTION_setGlobalAudioPreset:I = 0x10

.field static final TRANSACTION_setGlobalAudioSpeakerByPass:I = 0x14

.field static final TRANSACTION_setGlobalEffectOn:I = 0xe

.field static final TRANSACTION_setGlobalVideoHeadsetByPass:I = 0x18

.field static final TRANSACTION_setGlobalVideoPreset:I = 0x16

.field static final TRANSACTION_setGlobalVideoSpeakerByPass:I = 0x1a

.field static final TRANSACTION_setPresetCategory:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_208

    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEffectOn()Z

    move-result v1

    .line 49
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_1f

    move v2, v3

    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 55
    .end local v1    # "_result":Z
    :sswitch_23
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    move v0, v3

    .line 58
    .local v0, "_arg0":Z
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectOn(Z)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .end local v0    # "_arg0":Z
    :cond_36
    move v0, v2

    .line 57
    goto :goto_2f

    .line 64
    :sswitch_38
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->currentPreset()I

    move-result v1

    .line 66
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 72
    .end local v1    # "_result":I
    :sswitch_48
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->selectPreset(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_58
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setPresetCategory(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 90
    .end local v0    # "_arg0":I
    :sswitch_68
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getPresetCategory()I

    move-result v1

    .line 92
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 98
    .end local v1    # "_result":I
    :sswitch_78
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresets()I

    move-result v1

    .line 100
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 106
    .end local v1    # "_result":I
    :sswitch_88
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresetsPerCategory(I)I

    move-result v1

    .line 110
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 116
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_9d
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->presetName(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_b2
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->registerCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 135
    .end local v0    # "_arg0":Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_c7
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .line 138
    .restart local v0    # "_arg0":Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 144
    .end local v0    # "_arg0":Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_dc
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f0

    move v0, v3

    .line 147
    .local v0, "_arg0":Z
    :goto_e8
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectByPass(Z)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_f0
    move v0, v2

    .line 146
    goto :goto_e8

    .line 153
    :sswitch_f2
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalEffectOn()Z

    move-result v1

    .line 155
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v1, :cond_101

    move v2, v3

    :cond_101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 161
    .end local v1    # "_result":Z
    :sswitch_106
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    move v0, v3

    .line 164
    .restart local v0    # "_arg0":Z
    :goto_112
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalEffectOn(Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_11a
    move v0, v2

    .line 163
    goto :goto_112

    .line 170
    :sswitch_11c
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioPreset()I

    move-result v1

    .line 172
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 178
    .end local v1    # "_result":I
    :sswitch_12d
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioPreset(I)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 187
    .end local v0    # "_arg0":I
    :sswitch_13e
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioHeadsetByPass()Z

    move-result v1

    .line 189
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v1, :cond_14d

    move v2, v3

    :cond_14d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 195
    .end local v1    # "_result":Z
    :sswitch_152
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_166

    move v0, v3

    .line 198
    .local v0, "_arg0":Z
    :goto_15e
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioHeadsetByPass(Z)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_166
    move v0, v2

    .line 197
    goto :goto_15e

    .line 204
    :sswitch_168
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioSpeakerByPass()Z

    move-result v1

    .line 206
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v1, :cond_177

    move v2, v3

    :cond_177
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 212
    .end local v1    # "_result":Z
    :sswitch_17c
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_190

    move v0, v3

    .line 215
    .restart local v0    # "_arg0":Z
    :goto_188
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioSpeakerByPass(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_190
    move v0, v2

    .line 214
    goto :goto_188

    .line 221
    :sswitch_192
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoPreset()I

    move-result v1

    .line 223
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 229
    .end local v1    # "_result":I
    :sswitch_1a3
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoPreset(I)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 238
    .end local v0    # "_arg0":I
    :sswitch_1b4
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoHeadsetByPass()Z

    move-result v1

    .line 240
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v1, :cond_1c3

    move v2, v3

    :cond_1c3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 246
    .end local v1    # "_result":Z
    :sswitch_1c8
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1dc

    move v0, v3

    .line 249
    .local v0, "_arg0":Z
    :goto_1d4
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoHeadsetByPass(Z)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_1dc
    move v0, v2

    .line 248
    goto :goto_1d4

    .line 255
    :sswitch_1de
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoSpeakerByPass()Z

    move-result v1

    .line 257
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v1, :cond_1ed

    move v2, v3

    :cond_1ed
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 263
    .end local v1    # "_result":Z
    :sswitch_1f2
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_206

    move v0, v3

    .line 266
    .restart local v0    # "_arg0":Z
    :goto_1fe
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoSpeakerByPass(Z)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    :cond_206
    move v0, v2

    .line 265
    goto :goto_1fe

    .line 38
    :sswitch_data_208
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_38
        0x4 -> :sswitch_48
        0x5 -> :sswitch_58
        0x6 -> :sswitch_68
        0x7 -> :sswitch_78
        0x8 -> :sswitch_88
        0x9 -> :sswitch_9d
        0xa -> :sswitch_b2
        0xb -> :sswitch_c7
        0xc -> :sswitch_dc
        0xd -> :sswitch_f2
        0xe -> :sswitch_106
        0xf -> :sswitch_11c
        0x10 -> :sswitch_12d
        0x11 -> :sswitch_13e
        0x12 -> :sswitch_152
        0x13 -> :sswitch_168
        0x14 -> :sswitch_17c
        0x15 -> :sswitch_192
        0x16 -> :sswitch_1a3
        0x17 -> :sswitch_1b4
        0x18 -> :sswitch_1c8
        0x19 -> :sswitch_1de
        0x1a -> :sswitch_1f2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
