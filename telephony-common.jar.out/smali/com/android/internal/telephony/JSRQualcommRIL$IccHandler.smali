.class Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;
.super Landroid/os/Handler;
.source "JSRQualcommRIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/JSRQualcommRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x3

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x4

.field private static final EVENT_RADIO_ON:I = 0x1


# instance fields
.field private mRadioOn:Z

.field private mRil:Lcom/android/internal/telephony/RIL;

.field final synthetic this$0:Lcom/android/internal/telephony/JSRQualcommRIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/JSRQualcommRIL;Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p2, "ril"    # Lcom/android/internal/telephony/RIL;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->this$0:Lcom/android/internal/telephony/JSRQualcommRIL;

    .line 398
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRadioOn:Z

    .line 399
    iput-object p2, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    .line 400
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "paramMessage"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    .line 403
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 486
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JSR] Unknown Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 405
    :pswitch_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRadioOn:Z

    .line 406
    const-string v6, "RILJ"

    const-string v7, "[JSR] Radio on -> Forcing sim status update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 411
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRadioOn:Z

    if-eqz v6, :cond_1

    .line 412
    const-string v6, "RILJ"

    const-string v7, "[JSR] Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x3

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 415
    :cond_1
    const-string v6, "RILJ"

    const-string v7, "[JSR] Received EVENT_ICC_STATUS_CHANGED while radio is not ON. Ignoring"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :pswitch_2
    const-string v6, "RILJ"

    const-string v7, "[JSR] EVENT_GET_ICC_STATUS_DONE"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 422
    .local v4, "asyncResult":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 423
    const-string v6, "RILJ"

    const-string v7, "[JSR] IccCardStatusDone shouldn\'t return exceptions!"

    iget-object v8, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 426
    :cond_2
    iget-object v5, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 427
    .local v5, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v6, v6

    if-nez v6, :cond_4

    .line 428
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 433
    :cond_4
    const/4 v0, -0x1

    .line 434
    .local v0, "appIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->this$0:Lcom/android/internal/telephony/JSRQualcommRIL;

    iget v6, v6, Lcom/android/internal/telephony/JSRQualcommRIL;->mPhoneType:I

    if-ne v6, v8, :cond_6

    iget v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ltz v6, :cond_6

    .line 435
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 436
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JSR] This is a CDMA PHONE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_5
    :goto_1
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v3, v6, v0

    .line 444
    .local v3, "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    iget-object v1, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 445
    .local v1, "app_state":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v2, v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 447
    .local v2, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v6, Lcom/android/internal/telephony/JSRQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 450
    :pswitch_3
    sget-object v6, Lcom/android/internal/telephony/JSRQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 457
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JSR] Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 438
    .end local v1    # "app_state":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v2    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v3    # "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_6
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 439
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JSR] This is a GSM PHONE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-gez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    .line 454
    .restart local v1    # "app_state":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v2    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v3    # "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 462
    :pswitch_5
    sget-object v6, Lcom/android/internal/telephony/JSRQualcommRIL$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 469
    const-string v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[JSR] Currently we don\'t handle SIMs of type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 480
    .end local v0    # "appIndex":I
    .end local v1    # "app_state":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v2    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v3    # "application":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v4    # "asyncResult":Landroid/os/AsyncResult;
    .end local v5    # "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :pswitch_7
    const-string v6, "RILJ"

    const-string v7, "[JSR] EVENT_RADIO_OFF_OR_UNAVAILABLE"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRadioOn:Z

    goto/16 :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 447
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 450
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 462
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 493
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/JSRQualcommRIL$IccHandler;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 495
    return-void
.end method
