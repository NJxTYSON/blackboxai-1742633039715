.class Lcom/king/pacther/com/MainActivity$Titanic$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity$Titanic$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/king/pacther/com/MainActivity$Titanic$1;

.field private final synthetic val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity$Titanic$1;Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->this$2:Lcom/king/pacther/com/MainActivity$Titanic$1;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setSinking(Z)V

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-virtual {v0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->postInvalidate()V

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->this$2:Lcom/king/pacther/com/MainActivity$Titanic$1;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic$1;->access$0(Lcom/king/pacther/com/MainActivity$Titanic$1;)Lcom/king/pacther/com/MainActivity$Titanic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/king/pacther/com/MainActivity$Titanic;->access$0(Lcom/king/pacther/com/MainActivity$Titanic;Landroid/animation/AnimatorSet;)V

    .line 410
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-virtual {v0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method
