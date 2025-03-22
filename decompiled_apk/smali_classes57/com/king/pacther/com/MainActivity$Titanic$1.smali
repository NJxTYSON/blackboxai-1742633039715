.class Lcom/king/pacther/com/MainActivity$Titanic$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity$Titanic;->start(Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/king/pacther/com/MainActivity$Titanic;

.field private final synthetic val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity$Titanic;Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/king/pacther/com/MainActivity$Titanic$1;)Lcom/king/pacther/com/MainActivity$Titanic;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 371
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-virtual {v0, v7}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setSinking(Z)V

    .line 374
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    const-string v1, "maskX"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 376
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 377
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 379
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-virtual {v1}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getHeight()I

    move-result v1

    .line 384
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    const-string v3, "maskY"

    new-array v4, v6, [F

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    aput v5, v4, v9

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 386
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 387
    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 388
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 391
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v2, v3}, Lcom/king/pacther/com/MainActivity$Titanic;->access$0(Lcom/king/pacther/com/MainActivity$Titanic;Landroid/animation/AnimatorSet;)V

    .line 392
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v2}, Lcom/king/pacther/com/MainActivity$Titanic;->access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v2

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v9

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 393
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic;->access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic;->access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/king/pacther/com/MainActivity$Titanic$1$1;

    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->val$textView:Lcom/king/pacther/com/MainActivity$TitanicTextView;

    invoke-direct {v1, p0, v2}, Lcom/king/pacther/com/MainActivity$Titanic$1$1;-><init>(Lcom/king/pacther/com/MainActivity$Titanic$1;Lcom/king/pacther/com/MainActivity$TitanicTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic;->access$2(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic;->access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v1}, Lcom/king/pacther/com/MainActivity$Titanic;->access$2(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic$1;->this$1:Lcom/king/pacther/com/MainActivity$Titanic;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity$Titanic;->access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 429
    return-void

    .line 374
    :array_0
    .array-data 4
        0x0
        0x43480000    # 200.0f
    .end array-data
.end method
