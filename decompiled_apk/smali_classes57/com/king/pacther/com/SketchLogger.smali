.class public Lcom/king/pacther/com/SketchLogger;
.super Ljava/lang/Object;
.source "SketchLogger.java"


# static fields
.field private static volatile isRunning:Z

.field private static loggerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/king/pacther/com/SketchLogger$1;

    invoke-direct {v0}, Lcom/king/pacther/com/SketchLogger$1;-><init>()V

    sput-object v0, Lcom/king/pacther/com/SketchLogger;->loggerThread:Ljava/lang/Thread;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0

    .prologue
    .line 52
    sput-boolean p0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    return v0
.end method

.method public static broadcastLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/king/pacther/com/SketchApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v2, "com.sketchware.remod.ACTION_NEW_DEBUG_LOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "log"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v2, "packageName"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public static startLogging()V
    .locals 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/king/pacther/com/SketchLogger;->loggerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stopLogging()V
    .locals 2

    .prologue
    .line 73
    sget-boolean v0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/king/pacther/com/SketchLogger;->isRunning:Z

    .line 75
    const-string v0, "Stopping logger by user request."

    invoke-static {v0}, Lcom/king/pacther/com/SketchLogger;->broadcastLog(Ljava/lang/String;)V

    .line 79
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
