.class public Lcom/android/internal/telephony/JSRCdmaQcomRIL;
.super Lcom/android/internal/telephony/JSRQualcommRIL;
.source "JSRCdmaQcomRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field public static final SEND_SMS_TIMEOUT_IN_MS:J = 0x7530L


# instance fields
.field RILJ_LOGD:Z

.field RILJ_LOGV:Z

.field private mIsSendingSMS:Z

.field private mSMSLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/JSRQualcommRIL;-><init>(Landroid/content/Context;II)V

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRCdmaQcomRIL;->RILJ_LOGV:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRCdmaQcomRIL;->RILJ_LOGD:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/JSRCdmaQcomRIL;->mSMSLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/JSRCdmaQcomRIL;->mIsSendingSMS:Z

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/JSRCdmaQcomRIL;->mQANElements:I

    .line 60
    return-void
.end method
