.class public Lcom/king/pacther/com/SketchApplication;
.super Landroid/app/Application;
.source "SketchApplication.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;


# instance fields
.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/king/pacther/com/SketchApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/king/pacther/com/SketchApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/king/pacther/com/SketchApplication;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/king/pacther/com/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/king/pacther/com/SketchApplication;->mApplicationContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/king/pacther/com/SketchApplication;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 26
    new-instance v0, Lcom/king/pacther/com/SketchApplication$1;

    invoke-direct {v0, p0}, Lcom/king/pacther/com/SketchApplication$1;-><init>(Lcom/king/pacther/com/SketchApplication;)V

    .line 25
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 51
    invoke-static {}, Lcom/king/pacther/com/SketchLogger;->startLogging()V

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    return-void
.end method
