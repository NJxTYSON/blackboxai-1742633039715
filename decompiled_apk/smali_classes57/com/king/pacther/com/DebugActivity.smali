.class public Lcom/king/pacther/com/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"


# instance fields
.field private exceptionMessages:[Ljava/lang/String;

.field private exceptionTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 14
    const-string v1, "StringIndexOutOfBoundsException"

    aput-object v1, v0, v2

    .line 15
    const-string v1, "IndexOutOfBoundsException"

    aput-object v1, v0, v3

    .line 16
    const-string v1, "ArithmeticException"

    aput-object v1, v0, v4

    .line 17
    const-string v1, "NumberFormatException"

    aput-object v1, v0, v5

    .line 18
    const-string v1, "ActivityNotFoundException"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/king/pacther/com/DebugActivity;->exceptionTypes:[Ljava/lang/String;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    const-string v1, "Invalid string operation\n"

    aput-object v1, v0, v2

    .line 23
    const-string v1, "Invalid list operation\n"

    aput-object v1, v0, v3

    .line 24
    const-string v1, "Invalid arithmetical operation\n"

    aput-object v1, v0, v4

    .line 25
    const-string v1, "Invalid toNumber block operation\n"

    aput-object v1, v0, v5

    .line 26
    const-string v1, "Invalid intent operation"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/king/pacther/com/DebugActivity;->exceptionMessages:[Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/king/pacther/com/DebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    const-string v1, ""

    .line 35
    const-string v1, ""

    .line 37
    if-eqz v0, :cond_2

    .line 38
    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 43
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/king/pacther/com/DebugActivity;->exceptionTypes:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v2, "An error occurred"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    const-string v1, "End Application"

    new-instance v2, Lcom/king/pacther/com/DebugActivity$1;

    invoke-direct {v2, p0}, Lcom/king/pacther/com/DebugActivity$1;-><init>(Lcom/king/pacther/com/DebugActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 74
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 75
    return-void

    .line 44
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    iget-object v5, p0, Lcom/king/pacther/com/DebugActivity;->exceptionTypes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    iget-object v4, p0, Lcom/king/pacther/com/DebugActivity;->exceptionMessages:[Ljava/lang/String;

    aget-object v1, v4, v2

    .line 47
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v5, p0, Lcom/king/pacther/com/DebugActivity;->exceptionTypes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/king/pacther/com/DebugActivity;->exceptionTypes:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\nDetailed error message:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\nError while getting error: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    move-object v0, v1

    goto/16 :goto_2
.end method
