.class public Lcom/king/pacther/com/StartActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StartActivity.java"


# instance fields
.field private button1:Landroid/widget/Button;

.field private linear1:Landroid/widget/LinearLayout;

.field private linear2:Landroid/widget/LinearLayout;

.field private linear3:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/king/pacther/com/StartActivity;->linear1:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/king/pacther/com/StartActivity;->linear2:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/king/pacther/com/StartActivity;->button1:Landroid/widget/Button;

    .line 54
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/king/pacther/com/StartActivity;->linear3:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/king/pacther/com/StartActivity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/king/pacther/com/StartActivity$1;

    invoke-direct {v1, p0}, Lcom/king/pacther/com/StartActivity$1;-><init>(Lcom/king/pacther/com/StartActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private initializeLogic()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method


# virtual methods
.method public getCheckedItemPositionsToArray(Landroid/widget/ListView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 101
    return-object v1

    .line 98
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDip(I)F
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/king/pacther/com/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public getDisplayHeightPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/king/pacther/com/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplayWidthPixels()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/king/pacther/com/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getLocationX(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 77
    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLocationY(Landroid/view/View;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 84
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRandom(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 90
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/king/pacther/com/StartActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0, p1}, Lcom/king/pacther/com/StartActivity;->initialize(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/king/pacther/com/StartActivity;->initializeLogic()V

    .line 48
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/king/pacther/com/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
