.class public Lcom/king/pacther/com/MainActivity$TitanicTextView;
.super Landroid/widget/TextView;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/pacther/com/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TitanicTextView"
.end annotation


# instance fields
.field private animationSetupCallback:Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;

.field private maskX:F

.field private maskY:F

.field private offsetY:F

.field private setUp:Z

.field private shader:Landroid/graphics/BitmapShader;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private sinking:Z

.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;

.field private wave:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/king/pacther/com/MainActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->this$0:Lcom/king/pacther/com/MainActivity;

    .line 477
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->init()V

    .line 479
    return-void
.end method

.method public constructor <init>(Lcom/king/pacther/com/MainActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->this$0:Lcom/king/pacther/com/MainActivity;

    .line 482
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 483
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->init()V

    .line 484
    return-void
.end method

.method public constructor <init>(Lcom/king/pacther/com/MainActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->this$0:Lcom/king/pacther/com/MainActivity;

    .line 487
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 488
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->init()V

    .line 489
    return-void
.end method

.method private createShader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 567
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 574
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 575
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 579
    iget-object v4, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 580
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->wave:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 582
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    .line 583
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 585
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->offsetY:F

    .line 587
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 492
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    .line 493
    return-void
.end method


# virtual methods
.method public getAnimationSetupCallback()Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->animationSetupCallback:Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;

    return-object v0
.end method

.method public getMaskX()F
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskX:F

    return v0
.end method

.method public getMaskY()F
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskY:F

    return v0
.end method

.method public isSetUp()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setUp:Z

    return v0
.end method

.method public isSinking()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->sinking:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->sinking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskX:F

    iget v2, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskY:F

    iget v3, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->offsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 605
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 610
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 611
    return-void

    .line 607
    :cond_1
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 549
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->createShader()V

    .line 551
    iget-boolean v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setUp:Z

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->setUp:Z

    .line 553
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->animationSetupCallback:Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->animationSetupCallback:Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;

    invoke-interface {v0, p0}, Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;->onSetupAnimation(Lcom/king/pacther/com/MainActivity$TitanicTextView;)V

    .line 557
    :cond_0
    return-void
.end method

.method public setAnimationSetupCallback(Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->animationSetupCallback:Lcom/king/pacther/com/MainActivity$AnimationSetupCallback;

    .line 501
    return-void
.end method

.method public setMaskX(F)V
    .locals 0

    .prologue
    .line 508
    iput p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskX:F

    .line 509
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->invalidate()V

    .line 510
    return-void
.end method

.method public setMaskY(F)V
    .locals 0

    .prologue
    .line 517
    iput p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->maskY:F

    .line 518
    invoke-virtual {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->invalidate()V

    .line 519
    return-void
.end method

.method public setSinking(Z)V
    .locals 0

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/king/pacther/com/MainActivity$TitanicTextView;->sinking:Z

    .line 527
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->createShader()V

    .line 537
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 541
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 542
    invoke-direct {p0}, Lcom/king/pacther/com/MainActivity$TitanicTextView;->createShader()V

    .line 543
    return-void
.end method
