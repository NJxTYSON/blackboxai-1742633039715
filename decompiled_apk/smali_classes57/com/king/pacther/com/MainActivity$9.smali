.class Lcom/king/pacther/com/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity;->_exip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;

.field private final synthetic val$myView:Landroid/view/View;

.field private final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$9;->this$0:Lcom/king/pacther/com/MainActivity;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$9;->val$wm:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/king/pacther/com/MainActivity$9;->val$myView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$9;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$9;->val$myView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 340
    return-void
.end method
