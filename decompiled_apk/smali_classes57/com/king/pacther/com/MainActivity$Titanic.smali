.class public Lcom/king/pacther/com/MainActivity$Titanic;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/pacther/com/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Titanic"
.end annotation


# instance fields
.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;


# direct methods
.method public constructor <init>(Lcom/king/pacther/com/MainActivity;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/king/pacther/com/MainActivity$Titanic;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$1(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2(Lcom/king/pacther/com/MainActivity$Titanic;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 448
    :cond_0
    return-void
.end method

.method public getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$Titanic;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 363
    return-void
.end method

.method public start(Lcom/king/pacther/com/MainActivity$TitanicTextView;)V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lcom/king/pacther/com/MainActivity$Titanic$1;

    invoke-direct {v0, p0, p1}, Lcom/king/pacther/com/MainActivity$Titanic$1;-><init>(Lcom/king/pacther/com/MainActivity$Titanic;Lcom/king/pacther/com/MainActivity$TitanicTextView;)V

    .line 432
    invoke-virtual {p1}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->isSetUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    new-instance v1, Lcom/king/pacther/com/MainActivity$Titanic$2;

    invoke-direct {v1, p0, v0}, Lcom/king/pacther/com/MainActivity$Titanic$2;-><init>(Lcom/king/pacther/com/MainActivity$Titanic;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setAnimationSetupCallback(Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
