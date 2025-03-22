.class Lcom/king/pacther/com/MainActivity$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field private final synthetic val$myView:Landroid/view/View;

.field private final synthetic val$params:Landroid/view/WindowManager$LayoutParams;

.field private final synthetic val$wm:Landroid/view/WindowManager;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity$1;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$1$2;->this$1:Lcom/king/pacther/com/MainActivity$1;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$wm:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$myView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 162
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->x:I

    .line 163
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->y:I

    goto :goto_0

    .line 166
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 168
    iget v2, p0, Lcom/king/pacther/com/MainActivity$1$2;->x:I

    sub-int v2, v0, v2

    .line 169
    iget v3, p0, Lcom/king/pacther/com/MainActivity$1$2;->y:I

    sub-int v3, v1, v3

    .line 170
    iput v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->x:I

    iput v1, p0, Lcom/king/pacther/com/MainActivity$1$2;->y:I

    .line 171
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 172
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$myView:Landroid/view/View;

    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$1$2;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
