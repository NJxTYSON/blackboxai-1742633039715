.class Lcom/king/pacther/com/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/king/pacther/com/MainActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/king/pacther/com/MainActivity;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/king/pacther/com/MainActivity$1;)Lcom/king/pacther/com/MainActivity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f08012a

    const/4 v1, -0x2

    const/4 v6, 0x0

    .line 118
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-static {v0}, Lcom/king/pacther/com/MainActivity;->access$0(Lcom/king/pacther/com/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Samir499yt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-virtual {v3}, Lcom/king/pacther/com/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-virtual {v1, v0}, Lcom/king/pacther/com/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-virtual {v2, v0}, Lcom/king/pacther/com/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 129
    const/16 v3, 0x7f6

    .line 134
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 139
    const/16 v4, 0x28

    move v2, v1

    move v5, v1

    .line 134
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 144
    iget-object v1, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/king/pacther/com/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 145
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/king/pacther/com/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 148
    iget-object v2, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-virtual {v2}, Lcom/king/pacther/com/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 151
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 152
    new-instance v3, Lcom/king/pacther/com/MainActivity$1$1;

    invoke-direct {v3, p0}, Lcom/king/pacther/com/MainActivity$1$1;-><init>(Lcom/king/pacther/com/MainActivity$1;)V

    const/16 v4, 0x168

    invoke-virtual {v3, v4, v6}, Lcom/king/pacther/com/MainActivity$1$1;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    new-instance v3, Lcom/king/pacther/com/MainActivity$1$2;

    invoke-direct {v3, p0, v0, v1, v5}, Lcom/king/pacther/com/MainActivity$1$2;-><init>(Lcom/king/pacther/com/MainActivity$1;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 184
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 186
    const v2, 0x7f0800e5

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 188
    new-instance v3, Lcom/king/pacther/com/MainActivity$1$3;

    invoke-direct {v3, p0}, Lcom/king/pacther/com/MainActivity$1$3;-><init>(Lcom/king/pacther/com/MainActivity$1;)V

    invoke-virtual {v3, v6, v6}, Lcom/king/pacther/com/MainActivity$1$3;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    const v3, 0x7f080105

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 191
    new-instance v4, Lcom/king/pacther/com/MainActivity$1$4;

    invoke-direct {v4, p0}, Lcom/king/pacther/com/MainActivity$1$4;-><init>(Lcom/king/pacther/com/MainActivity$1;)V

    const/16 v6, 0xf

    const/high16 v7, -0x1000000

    invoke-virtual {v4, v6, v7}, Lcom/king/pacther/com/MainActivity$1$4;->getIns(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 194
    new-instance v6, Lcom/king/pacther/com/MainActivity$1$5;

    invoke-direct {v6, p0, v3, v2}, Lcom/king/pacther/com/MainActivity$1$5;-><init>(Lcom/king/pacther/com/MainActivity$1;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const v4, 0x7f080065

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 202
    new-instance v6, Lcom/king/pacther/com/MainActivity$1$6;

    invoke-direct {v6, p0, v3, v2}, Lcom/king/pacther/com/MainActivity$1$6;-><init>(Lcom/king/pacther/com/MainActivity$1;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v2, 0x7f080064

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 210
    new-instance v3, Lcom/king/pacther/com/MainActivity$1$7;

    invoke-direct {v3, p0}, Lcom/king/pacther/com/MainActivity$1$7;-><init>(Lcom/king/pacther/com/MainActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v2, 0x7f080066

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 217
    new-instance v3, Lcom/king/pacther/com/MainActivity$1$8;

    invoke-direct {v3, p0, v1, v5}, Lcom/king/pacther/com/MainActivity$1$8;-><init>(Lcom/king/pacther/com/MainActivity$1;Landroid/view/WindowManager;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-interface {v1, v5, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 131
    :cond_1
    const/16 v3, 0x7d2

    goto/16 :goto_1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$1;->this$0:Lcom/king/pacther/com/MainActivity;

    invoke-virtual {v0}, Lcom/king/pacther/com/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WRONG KEY.."

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdsmdg/tastytoast/TastyToast;->makeText(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/Toast;

    goto/16 :goto_0
.end method
