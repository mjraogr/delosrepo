.class public Lcom/android/internal/telephony/JSRQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "JSRQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/JSRQualcommRIL$1;,
        Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;
    }
.end annotation


# static fields
.field static final RIL_REQUEST_GET_DATA_SUBSCRIPTION:I = 0x2789

.field static final RIL_REQUEST_GET_UICC_SUBSCRIPTION:I = 0x2788

.field static final RIL_REQUEST_SET_SUBSCRIPTION_MODE:I = 0x278a


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private final RIL_INT_RADIO_OFF:I

.field private final RIL_INT_RADIO_ON:I

.field private final RIL_INT_RADIO_ON_HTC:I

.field private final RIL_INT_RADIO_ON_NG:I

.field private final RIL_INT_RADIO_UNAVAILABLE:I

.field protected mAid:Ljava/lang/String;

.field protected mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

.field protected mIccThread:Landroid/os/HandlerThread;

.field protected mLastDataIface:[Ljava/lang/String;

.field protected mUSIM:Z

.field skipCdmaSubcription:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGV:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mUSIM:Z

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mLastDataIface:[Ljava/lang/String;

    .line 73
    const-string v0, "skipCdmaSubcription"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->skipCdmaSubcription:Z

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_UNAVAILABLE:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON_NG:I

    .line 79
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mSetPreferredNetworkType:I

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mQANElements:I

    .line 85
    const-string v0, "RILJ"

    const-string v1, "[JSR] Create JSRQualcommRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGV:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mUSIM:Z

    .line 72
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mLastDataIface:[Ljava/lang/String;

    .line 73
    const-string v0, "skipCdmaSubcription"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->skipCdmaSubcription:Z

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_OFF:I

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_UNAVAILABLE:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON:I

    .line 78
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON_NG:I

    .line 79
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RIL_INT_RADIO_ON_HTC:I

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mSetPreferredNetworkType:I

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mQANElements:I

    .line 92
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JSR] Create JSRQualcommRIL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/JSRQualcommRIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public getCellInfoList(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "[JSR] > getCellInfoList [NOT SUPPORTED]"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0xb

    .line 153
    invoke-static {v3, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 155
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> getIMSI:RIL_REQUEST_GET_IMSI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 165
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 187
    const/16 v1, 0x1c

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 189
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> iccIO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 208
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 288
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .local v1, "response":I
    const-string v4, "datacall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/JSRQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    packed-switch v1, :pswitch_data_0

    .line 304
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 311
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 314
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 341
    :cond_1
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JSR] processUnsolicited: SKIP req = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 299
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 300
    .local v2, "ret":Ljava/lang/Object;
    goto :goto_0

    .line 305
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 318
    .restart local v2    # "ret":Ljava/lang/Object;
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JSR] processUnsolicited: req = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 320
    :cond_3
    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 322
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .local v3, "state":I
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/JSRQualcommRIL;->setRadioStateFromRILInt(I)V

    goto :goto_0

    .line 306
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "state":I
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 307
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/JSRQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_1

    .line 327
    :sswitch_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 329
    :cond_4
    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/JSRQualcommRIL;->setRadioPower(ZLandroid/os/Message;)V

    .line 330
    iget v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mPreferredNetworkType:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/JSRQualcommRIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 331
    iget v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mCdmaSubscription:I

    invoke-virtual {p0, v4, v6}, Lcom/android/internal/telephony/JSRQualcommRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 332
    check-cast v2, [I

    .end local v2    # "ret":Ljava/lang/Object;
    check-cast v2, [I

    aget v4, v2, v7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/JSRQualcommRIL;->notifyRegistrantsRilConnectionChanged(I)V

    goto/16 :goto_0

    .line 336
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 337
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x407
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 304
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x409 -> :sswitch_3
        0x40a -> :sswitch_2
    .end sparse-switch

    .line 320
    :sswitch_data_1
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x409 -> :sswitch_5
        0x40a -> :sswitch_4
    .end sparse-switch
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 141
    iget-object v4, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/JSRQualcommRIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 142
    return-void
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x2

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "cardState":I
    if-le v3, v8, :cond_0

    .line 219
    add-int/lit8 v3, v3, -0x3

    .line 221
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 222
    .local v4, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 230
    .local v6, "numApplications":I
    const/16 v7, 0x8

    if-le v6, v7, :cond_1

    .line 231
    const/16 v6, 0x8

    .line 233
    :cond_1
    new-array v7, v6, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 235
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 236
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 237
    .local v1, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 244
    const-string v7, "skippinpukcount"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/JSRQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 248
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 249
    const-string v7, "skippinpukcount"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/JSRQualcommRIL;->needsOldRilFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 253
    :cond_3
    iget-object v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v1, v7, v5

    .line 235
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_4
    const/4 v0, -0x1

    .line 256
    .local v0, "appIndex":I
    iget v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mPhoneType:I

    if-ne v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->skipCdmaSubcription:Z

    if-nez v7, :cond_6

    .line 257
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 258
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is a CDMA PHONE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    const/16 v7, 0xb

    if-ne v3, v7, :cond_7

    .line 278
    :cond_5
    :goto_2
    return-object v4

    .line 260
    :cond_6
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 261
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is a GSM PHONE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    :cond_7
    if-ltz v0, :cond_5

    if-lez v6, :cond_5

    .line 268
    iget-object v7, v4, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v2, v7, v0

    .line 269
    .local v2, "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    .line 270
    iget-object v7, v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mUSIM:Z

    .line 271
    iget v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mPreferredNetworkType:I

    iput v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mSetPreferredNetworkType:I

    .line 273
    iget-object v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 274
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    .line 275
    :cond_8
    const-string v7, "RILJ"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAid = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    :cond_9
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public setCellInfoListRate(ILandroid/os/Message;)V
    .locals 1
    .param p1, "rateInMillis"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "[JSR] > setCellInfoListRate [NOT SUPPORTED]"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 147
    iget-object v5, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/JSRQualcommRIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 148
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "[JSR] > setInitialAttachApn [NOT SUPPORTED]"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 170
    const/16 v1, 0x2f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 172
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-boolean v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->RILJ_LOGD:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/JSRQualcommRIL;->riljLog(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string v2, "NOCHANGE"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/JSRQualcommRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 179
    return-void
.end method

.method protected setRadioStateFromRILInt(I)V
    .locals 6
    .param p1, "stateCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 350
    sparse-switch p1, :sswitch_data_0

    .line 380
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized RIL_RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 353
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    const-string v3, "RILJ"

    const-string v4, "[JSR] set RIL_INT_RADIO_OFF"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    if-eqz v3, :cond_0

    .line 355
    iput-object v5, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 356
    iput-object v5, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    .line 383
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/JSRQualcommRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 384
    return-void

    .line 360
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_1
    const-string v3, "RILJ"

    const-string v4, "[JSR] set RIL_INT_RADIO_UNAVAILABLE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 362
    .restart local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 366
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_2
    const-string v3, "RILJ"

    const-string v4, "[JSR] set RIL_INT_RADIO_ON"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    if-nez v3, :cond_1

    .line 368
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "IccHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    iput-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 374
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    invoke-direct {v3, p0, p0, v1}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;-><init>(Lcom/android/internal/telephony/JSRQualcommRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mIccHandler:Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->run()V

    .line 377
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 378
    .restart local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    goto :goto_0

    .line 350
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/JSRQualcommRIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 121
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/JSRQualcommRIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 131
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL;->mAid:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/JSRQualcommRIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 136
    return-void
.end method
