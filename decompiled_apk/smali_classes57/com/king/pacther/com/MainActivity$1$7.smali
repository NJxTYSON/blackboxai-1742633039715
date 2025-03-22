.class Lcom/king/pacther/com/MainActivity$1$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/king/pacther/com/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity$1;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$1$7;->this$1:Lcom/king/pacther/com/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1$7;->this$1:Lcom/king/pacther/com/MainActivity$1;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$1;->access$0(Lcom/king/pacther/com/MainActivity$1;)Lcom/king/pacther/com/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/pacther/com/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/king/pacther/com/SketchwareUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    return-void
.end method
