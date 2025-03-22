.class Lcom/king/pacther/com/SketchApplication$1;
.super Ljava/lang/Object;
.source "SketchApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/SketchApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/SketchApplication;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/SketchApplication;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/king/pacther/com/SketchApplication$1;->this$0:Lcom/king/pacther/com/SketchApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/king/pacther/com/SketchApplication$1;->this$0:Lcom/king/pacther/com/SketchApplication;

    invoke-virtual {v1}, Lcom/king/pacther/com/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/king/pacther/com/DebugActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    const-string v1, "error"

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/king/pacther/com/SketchApplication$1;->this$0:Lcom/king/pacther/com/SketchApplication;

    invoke-virtual {v1}, Lcom/king/pacther/com/SketchApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    const/16 v2, 0x2b67

    .line 38
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 41
    iget-object v0, p0, Lcom/king/pacther/com/SketchApplication$1;->this$0:Lcom/king/pacther/com/SketchApplication;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/king/pacther/com/SketchApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 42
    const/4 v2, 0x2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 44
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/king/pacther/com/SketchLogger;->broadcastLog(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 48
    iget-object v0, p0, Lcom/king/pacther/com/SketchApplication$1;->this$0:Lcom/king/pacther/com/SketchApplication;

    invoke-static {v0}, Lcom/king/pacther/com/SketchApplication;->access$0(Lcom/king/pacther/com/SketchApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method
