.class Lcom/king/pacther/com/MainActivity$6;
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

.field private final synthetic val$icon:Landroid/widget/LinearLayout;

.field private final synthetic val$linear1:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/king/pacther/com/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/king/pacther/com/MainActivity$6;->this$0:Lcom/king/pacther/com/MainActivity;

    iput-object p2, p0, Lcom/king/pacther/com/MainActivity$6;->val$linear1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/king/pacther/com/MainActivity$6;->val$icon:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$6;->val$linear1:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/king/pacther/com/MainActivity$6;->val$icon:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    return-void
.end method
