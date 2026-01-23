; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93622 () Bool)

(assert start!93622)

(declare-fun bs!258332 () Bool)

(declare-fun b!1093754 () Bool)

(assert (= bs!258332 (and b!1093754 start!93622)))

(declare-fun lambda!42044 () Int)

(declare-fun lambda!42043 () Int)

(assert (=> bs!258332 (not (= lambda!42044 lambda!42043))))

(declare-fun b!1093765 () Bool)

(declare-fun e!692326 () Bool)

(assert (=> b!1093765 (= e!692326 true)))

(declare-fun b!1093764 () Bool)

(declare-fun e!692325 () Bool)

(assert (=> b!1093764 (= e!692325 e!692326)))

(assert (=> b!1093754 e!692325))

(assert (= b!1093764 b!1093765))

(assert (= b!1093754 b!1093764))

(declare-fun lambda!42045 () Int)

(assert (=> bs!258332 (not (= lambda!42045 lambda!42043))))

(assert (=> b!1093754 (not (= lambda!42045 lambda!42044))))

(declare-fun b!1093767 () Bool)

(declare-fun e!692328 () Bool)

(assert (=> b!1093767 (= e!692328 true)))

(declare-fun b!1093766 () Bool)

(declare-fun e!692327 () Bool)

(assert (=> b!1093766 (= e!692327 e!692328)))

(assert (=> b!1093754 e!692327))

(assert (= b!1093766 b!1093767))

(assert (= b!1093754 b!1093766))

(declare-fun lambda!42046 () Int)

(assert (=> bs!258332 (not (= lambda!42046 lambda!42043))))

(assert (=> b!1093754 (not (= lambda!42046 lambda!42044))))

(assert (=> b!1093754 (not (= lambda!42046 lambda!42045))))

(declare-fun b!1093769 () Bool)

(declare-fun e!692330 () Bool)

(assert (=> b!1093769 (= e!692330 true)))

(declare-fun b!1093768 () Bool)

(declare-fun e!692329 () Bool)

(assert (=> b!1093768 (= e!692329 e!692330)))

(assert (=> b!1093754 e!692329))

(assert (= b!1093768 b!1093769))

(assert (= b!1093754 b!1093768))

(declare-fun b!1093740 () Bool)

(declare-fun e!692309 () Bool)

(declare-fun e!692311 () Bool)

(assert (=> b!1093740 (= e!692309 e!692311)))

(declare-fun res!485869 () Bool)

(assert (=> b!1093740 (=> res!485869 e!692311)))

(declare-fun lt!367464 () Bool)

(assert (=> b!1093740 (= res!485869 lt!367464)))

(declare-datatypes ((Unit!15982 0))(
  ( (Unit!15983) )
))
(declare-fun lt!367476 () Unit!15982)

(declare-fun e!692318 () Unit!15982)

(assert (=> b!1093740 (= lt!367476 e!692318)))

(declare-fun c!185463 () Bool)

(assert (=> b!1093740 (= c!185463 lt!367464)))

(declare-datatypes ((List!10527 0))(
  ( (Nil!10511) (Cons!10511 (h!15912 (_ BitVec 16)) (t!102701 List!10527)) )
))
(declare-datatypes ((TokenValue!1862 0))(
  ( (FloatLiteralValue!3724 (text!13479 List!10527)) (TokenValueExt!1861 (__x!7444 Int)) (Broken!9310 (value!59113 List!10527)) (Object!1877) (End!1862) (Def!1862) (Underscore!1862) (Match!1862) (Else!1862) (Error!1862) (Case!1862) (If!1862) (Extends!1862) (Abstract!1862) (Class!1862) (Val!1862) (DelimiterValue!3724 (del!1922 List!10527)) (KeywordValue!1868 (value!59114 List!10527)) (CommentValue!3724 (value!59115 List!10527)) (WhitespaceValue!3724 (value!59116 List!10527)) (IndentationValue!1862 (value!59117 List!10527)) (String!12879) (Int32!1862) (Broken!9311 (value!59118 List!10527)) (Boolean!1863) (Unit!15984) (OperatorValue!1865 (op!1922 List!10527)) (IdentifierValue!3724 (value!59119 List!10527)) (IdentifierValue!3725 (value!59120 List!10527)) (WhitespaceValue!3725 (value!59121 List!10527)) (True!3724) (False!3724) (Broken!9312 (value!59122 List!10527)) (Broken!9313 (value!59123 List!10527)) (True!3725) (RightBrace!1862) (RightBracket!1862) (Colon!1862) (Null!1862) (Comma!1862) (LeftBracket!1862) (False!3725) (LeftBrace!1862) (ImaginaryLiteralValue!1862 (text!13480 List!10527)) (StringLiteralValue!5586 (value!59124 List!10527)) (EOFValue!1862 (value!59125 List!10527)) (IdentValue!1862 (value!59126 List!10527)) (DelimiterValue!3725 (value!59127 List!10527)) (DedentValue!1862 (value!59128 List!10527)) (NewLineValue!1862 (value!59129 List!10527)) (IntegerValue!5586 (value!59130 (_ BitVec 32)) (text!13481 List!10527)) (IntegerValue!5587 (value!59131 Int) (text!13482 List!10527)) (Times!1862) (Or!1862) (Equal!1862) (Minus!1862) (Broken!9314 (value!59132 List!10527)) (And!1862) (Div!1862) (LessEqual!1862) (Mod!1862) (Concat!4927) (Not!1862) (Plus!1862) (SpaceValue!1862 (value!59133 List!10527)) (IntegerValue!5588 (value!59134 Int) (text!13483 List!10527)) (StringLiteralValue!5587 (text!13484 List!10527)) (FloatLiteralValue!3725 (text!13485 List!10527)) (BytesLiteralValue!1862 (value!59135 List!10527)) (CommentValue!3725 (value!59136 List!10527)) (StringLiteralValue!5588 (value!59137 List!10527)) (ErrorTokenValue!1862 (msg!1923 List!10527)) )
))
(declare-datatypes ((Regex!3065 0))(
  ( (ElementMatch!3065 (c!185464 (_ BitVec 16))) (Concat!4928 (regOne!6642 Regex!3065) (regTwo!6642 Regex!3065)) (EmptyExpr!3065) (Star!3065 (reg!3394 Regex!3065)) (EmptyLang!3065) (Union!3065 (regOne!6643 Regex!3065) (regTwo!6643 Regex!3065)) )
))
(declare-datatypes ((String!12880 0))(
  ( (String!12881 (value!59138 String)) )
))
(declare-datatypes ((IArray!6435 0))(
  ( (IArray!6436 (innerList!3275 List!10527)) )
))
(declare-datatypes ((Conc!3215 0))(
  ( (Node!3215 (left!9036 Conc!3215) (right!9366 Conc!3215) (csize!6660 Int) (cheight!3426 Int)) (Leaf!5119 (xs!5908 IArray!6435) (csize!6661 Int)) (Empty!3215) )
))
(declare-datatypes ((BalanceConc!6444 0))(
  ( (BalanceConc!6445 (c!185465 Conc!3215)) )
))
(declare-datatypes ((TokenValueInjection!3424 0))(
  ( (TokenValueInjection!3425 (toValue!2873 Int) (toChars!2732 Int)) )
))
(declare-datatypes ((Rule!3392 0))(
  ( (Rule!3393 (regex!1796 Regex!3065) (tag!2058 String!12880) (isSeparator!1796 Bool) (transformation!1796 TokenValueInjection!3424)) )
))
(declare-datatypes ((Token!3258 0))(
  ( (Token!3259 (value!59139 TokenValue!1862) (rule!3219 Rule!3392) (size!8132 Int) (originalCharacters!2352 List!10527)) )
))
(declare-datatypes ((List!10528 0))(
  ( (Nil!10512) (Cons!10512 (h!15913 Token!3258) (t!102702 List!10528)) )
))
(declare-datatypes ((IArray!6437 0))(
  ( (IArray!6438 (innerList!3276 List!10528)) )
))
(declare-datatypes ((Conc!3216 0))(
  ( (Node!3216 (left!9037 Conc!3216) (right!9367 Conc!3216) (csize!6662 Int) (cheight!3427 Int)) (Leaf!5120 (xs!5909 IArray!6437) (csize!6663 Int)) (Empty!3216) )
))
(declare-datatypes ((List!10529 0))(
  ( (Nil!10513) (Cons!10513 (h!15914 Rule!3392) (t!102703 List!10529)) )
))
(declare-datatypes ((BalanceConc!6446 0))(
  ( (BalanceConc!6447 (c!185466 Conc!3216)) )
))
(declare-datatypes ((PrintableTokens!308 0))(
  ( (PrintableTokens!309 (rules!9083 List!10529) (tokens!1355 BalanceConc!6446)) )
))
(declare-datatypes ((tuple2!11718 0))(
  ( (tuple2!11719 (_1!6685 Int) (_2!6685 PrintableTokens!308)) )
))
(declare-datatypes ((List!10530 0))(
  ( (Nil!10514) (Cons!10514 (h!15915 tuple2!11718) (t!102704 List!10530)) )
))
(declare-datatypes ((IArray!6439 0))(
  ( (IArray!6440 (innerList!3277 List!10530)) )
))
(declare-datatypes ((Conc!3217 0))(
  ( (Node!3217 (left!9038 Conc!3217) (right!9368 Conc!3217) (csize!6664 Int) (cheight!3428 Int)) (Leaf!5121 (xs!5910 IArray!6439) (csize!6665 Int)) (Empty!3217) )
))
(declare-datatypes ((BalanceConc!6448 0))(
  ( (BalanceConc!6449 (c!185467 Conc!3217)) )
))
(declare-fun lt!367474 () BalanceConc!6448)

(declare-fun lt!367460 () tuple2!11718)

(declare-fun contains!1786 (BalanceConc!6448 tuple2!11718) Bool)

(assert (=> b!1093740 (= lt!367464 (contains!1786 lt!367474 lt!367460))))

(declare-fun b!1093741 () Bool)

(declare-fun e!692317 () Bool)

(assert (=> b!1093741 (= e!692317 (not e!692309))))

(declare-fun res!485863 () Bool)

(assert (=> b!1093741 (=> res!485863 e!692309)))

(declare-fun lt!367487 () BalanceConc!6448)

(declare-fun lt!367465 () Int)

(declare-fun size!8133 (BalanceConc!6448) Int)

(assert (=> b!1093741 (= res!485863 (>= (size!8133 lt!367487) lt!367465))))

(declare-fun e!692312 () Bool)

(assert (=> b!1093741 e!692312))

(declare-fun res!485862 () Bool)

(assert (=> b!1093741 (=> res!485862 e!692312)))

(declare-fun lt!367491 () Bool)

(assert (=> b!1093741 (= res!485862 lt!367491)))

(declare-fun lt!367466 () List!10530)

(declare-fun isEmpty!6668 (List!10530) Bool)

(assert (=> b!1093741 (= lt!367491 (isEmpty!6668 lt!367466))))

(declare-fun lt!367462 () Unit!15982)

(declare-fun lemmaNotForallFilterShorter!39 (List!10530 Int) Unit!15982)

(assert (=> b!1093741 (= lt!367462 (lemmaNotForallFilterShorter!39 lt!367466 lambda!42044))))

(declare-fun objs!8 () BalanceConc!6448)

(declare-fun list!3770 (BalanceConc!6448) List!10530)

(assert (=> b!1093741 (= lt!367466 (list!3770 objs!8))))

(declare-fun lt!367489 () Unit!15982)

(declare-fun e!692315 () Unit!15982)

(assert (=> b!1093741 (= lt!367489 e!692315)))

(declare-fun c!185462 () Bool)

(declare-fun forall!2362 (BalanceConc!6448 Int) Bool)

(assert (=> b!1093741 (= c!185462 (forall!2362 objs!8 lambda!42044))))

(declare-fun b!1093742 () Bool)

(declare-fun err!2200 () Unit!15982)

(assert (=> b!1093742 (= e!692318 err!2200)))

(declare-fun lt!367490 () Unit!15982)

(declare-fun forallContained!498 (List!10530 Int tuple2!11718) Unit!15982)

(assert (=> b!1093742 (= lt!367490 (forallContained!498 (list!3770 lt!367474) lambda!42046 lt!367460))))

(assert (=> b!1093742 true))

(declare-fun b!1093743 () Bool)

(declare-fun e!692320 () Bool)

(assert (=> b!1093743 (= e!692320 (forall!2362 lt!367474 lambda!42043))))

(declare-fun lt!367477 () List!10530)

(declare-fun lt!367488 () List!10530)

(declare-fun lt!367471 () List!10530)

(declare-fun ++!2847 (List!10530 List!10530) List!10530)

(assert (=> b!1093743 (= lt!367477 (++!2847 lt!367488 lt!367471))))

(declare-fun lt!367470 () Unit!15982)

(declare-fun lemmaConcatPreservesForall!84 (List!10530 List!10530 Int) Unit!15982)

(assert (=> b!1093743 (= lt!367470 (lemmaConcatPreservesForall!84 lt!367488 lt!367471 lambda!42043))))

(declare-fun lt!367473 () BalanceConc!6448)

(assert (=> b!1093743 (= lt!367471 (list!3770 lt!367473))))

(declare-fun sortObjectsByID!0 (BalanceConc!6448) BalanceConc!6448)

(assert (=> b!1093743 (= lt!367488 (list!3770 (sortObjectsByID!0 lt!367487)))))

(declare-fun lt!367475 () List!10530)

(declare-fun forall!2363 (List!10530 Int) Bool)

(assert (=> b!1093743 (forall!2363 lt!367475 lambda!42043)))

(declare-fun lt!367463 () Unit!15982)

(declare-fun lemmaForallSubseq!41 (List!10530 List!10530 Int) Unit!15982)

(assert (=> b!1093743 (= lt!367463 (lemmaForallSubseq!41 lt!367475 lt!367466 lambda!42043))))

(declare-fun filter!264 (BalanceConc!6448 Int) BalanceConc!6448)

(assert (=> b!1093743 (= lt!367475 (list!3770 (filter!264 objs!8 lambda!42046)))))

(declare-fun lt!367485 () List!10530)

(assert (=> b!1093743 (forall!2363 lt!367485 lambda!42043)))

(declare-fun lt!367472 () Unit!15982)

(assert (=> b!1093743 (= lt!367472 (lemmaForallSubseq!41 lt!367485 lt!367466 lambda!42043))))

(assert (=> b!1093743 (= lt!367485 (list!3770 (filter!264 objs!8 lambda!42045)))))

(declare-fun lt!367469 () List!10530)

(assert (=> b!1093743 (forall!2363 lt!367469 lambda!42043)))

(declare-fun lt!367479 () Unit!15982)

(assert (=> b!1093743 (= lt!367479 (lemmaForallSubseq!41 lt!367469 lt!367466 lambda!42043))))

(assert (=> b!1093743 (= lt!367469 (list!3770 (filter!264 objs!8 lambda!42044)))))

(declare-fun lt!367461 () Unit!15982)

(declare-fun filterSubseq!33 (List!10530 Int) Unit!15982)

(assert (=> b!1093743 (= lt!367461 (filterSubseq!33 lt!367466 lambda!42046))))

(declare-fun lt!367480 () Unit!15982)

(assert (=> b!1093743 (= lt!367480 (filterSubseq!33 lt!367466 lambda!42045))))

(declare-fun lt!367481 () Unit!15982)

(assert (=> b!1093743 (= lt!367481 (filterSubseq!33 lt!367466 lambda!42044))))

(declare-fun b!1093744 () Bool)

(declare-fun e!692314 () Unit!15982)

(declare-fun Unit!15985 () Unit!15982)

(assert (=> b!1093744 (= e!692314 Unit!15985)))

(declare-fun b!1093745 () Bool)

(declare-fun e!692308 () Bool)

(declare-fun tp!326570 () Bool)

(declare-fun inv!13462 (Conc!3217) Bool)

(assert (=> b!1093745 (= e!692308 (and (inv!13462 (c!185467 objs!8)) tp!326570))))

(declare-fun b!1093746 () Bool)

(declare-fun Unit!15986 () Unit!15982)

(assert (=> b!1093746 (= e!692315 Unit!15986)))

(declare-fun b!1093747 () Bool)

(assert (=> b!1093747 (= e!692311 e!692320)))

(declare-fun res!485866 () Bool)

(assert (=> b!1093747 (=> res!485866 e!692320)))

(assert (=> b!1093747 (= res!485866 (>= (size!8133 lt!367474) lt!367465))))

(declare-fun e!692316 () Bool)

(assert (=> b!1093747 e!692316))

(declare-fun res!485867 () Bool)

(assert (=> b!1093747 (=> res!485867 e!692316)))

(assert (=> b!1093747 (= res!485867 lt!367491)))

(declare-fun lt!367483 () Unit!15982)

(assert (=> b!1093747 (= lt!367483 (lemmaNotForallFilterShorter!39 lt!367466 lambda!42046))))

(declare-fun lt!367468 () Unit!15982)

(declare-fun e!692310 () Unit!15982)

(assert (=> b!1093747 (= lt!367468 e!692310)))

(declare-fun c!185461 () Bool)

(assert (=> b!1093747 (= c!185461 (forall!2362 objs!8 lambda!42046))))

(declare-fun b!1093748 () Bool)

(declare-fun err!2201 () Unit!15982)

(assert (=> b!1093748 (= e!692314 err!2201)))

(declare-fun lt!367478 () Unit!15982)

(assert (=> b!1093748 (= lt!367478 (forallContained!498 (list!3770 lt!367487) lambda!42044 lt!367460))))

(assert (=> b!1093748 true))

(declare-fun res!485868 () Bool)

(declare-fun e!692313 () Bool)

(assert (=> start!93622 (=> (not res!485868) (not e!692313))))

(assert (=> start!93622 (= res!485868 (forall!2362 objs!8 lambda!42043))))

(assert (=> start!93622 e!692313))

(declare-fun inv!13463 (BalanceConc!6448) Bool)

(assert (=> start!93622 (and (inv!13463 objs!8) e!692308)))

(declare-fun b!1093749 () Bool)

(declare-fun Unit!15987 () Unit!15982)

(assert (=> b!1093749 (= e!692310 Unit!15987)))

(declare-fun b!1093750 () Bool)

(declare-fun e!692319 () Bool)

(assert (=> b!1093750 (= e!692313 e!692319)))

(declare-fun res!485861 () Bool)

(assert (=> b!1093750 (=> (not res!485861) (not e!692319))))

(assert (=> b!1093750 (= res!485861 (> lt!367465 1))))

(assert (=> b!1093750 (= lt!367465 (size!8133 objs!8))))

(declare-fun b!1093751 () Bool)

(declare-fun size!8134 (List!10530) Int)

(declare-fun filter!265 (List!10530 Int) List!10530)

(assert (=> b!1093751 (= e!692312 (< (size!8134 (filter!265 lt!367466 lambda!42044)) (size!8134 lt!367466)))))

(declare-fun b!1093752 () Bool)

(assert (=> b!1093752 (= e!692316 (< (size!8134 (filter!265 lt!367466 lambda!42046)) (size!8134 lt!367466)))))

(declare-fun b!1093753 () Bool)

(declare-fun err!2199 () Unit!15982)

(assert (=> b!1093753 (= e!692310 err!2199)))

(declare-fun lt!367484 () Unit!15982)

(assert (=> b!1093753 (= lt!367484 (forallContained!498 lt!367466 lambda!42046 lt!367460))))

(assert (=> b!1093753 true))

(declare-fun e!692307 () Bool)

(assert (=> b!1093754 (= e!692319 e!692307)))

(declare-fun res!485864 () Bool)

(assert (=> b!1093754 (=> (not res!485864) (not e!692307))))

(assert (=> b!1093754 (= res!485864 (contains!1786 objs!8 lt!367460))))

(assert (=> b!1093754 (= lt!367474 (filter!264 objs!8 lambda!42046))))

(assert (=> b!1093754 (= lt!367473 (filter!264 objs!8 lambda!42045))))

(assert (=> b!1093754 (= lt!367487 (filter!264 objs!8 lambda!42044))))

(declare-fun apply!2065 (BalanceConc!6448 Int) tuple2!11718)

(assert (=> b!1093754 (= lt!367460 (apply!2065 objs!8 (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2)))))))

(declare-fun b!1093755 () Bool)

(declare-fun err!2198 () Unit!15982)

(assert (=> b!1093755 (= e!692315 err!2198)))

(declare-fun lt!367482 () Unit!15982)

(assert (=> b!1093755 (= lt!367482 (forallContained!498 (list!3770 objs!8) lambda!42044 lt!367460))))

(assert (=> b!1093755 true))

(declare-fun b!1093756 () Bool)

(assert (=> b!1093756 (= e!692307 e!692317)))

(declare-fun res!485865 () Bool)

(assert (=> b!1093756 (=> (not res!485865) (not e!692317))))

(declare-fun lt!367467 () Bool)

(assert (=> b!1093756 (= res!485865 (not lt!367467))))

(declare-fun lt!367486 () Unit!15982)

(assert (=> b!1093756 (= lt!367486 e!692314)))

(declare-fun c!185460 () Bool)

(assert (=> b!1093756 (= c!185460 lt!367467)))

(assert (=> b!1093756 (= lt!367467 (contains!1786 lt!367487 lt!367460))))

(declare-fun b!1093757 () Bool)

(declare-fun Unit!15988 () Unit!15982)

(assert (=> b!1093757 (= e!692318 Unit!15988)))

(assert (= (and start!93622 res!485868) b!1093750))

(assert (= (and b!1093750 res!485861) b!1093754))

(assert (= (and b!1093754 res!485864) b!1093756))

(assert (= (and b!1093756 c!185460) b!1093748))

(assert (= (and b!1093756 (not c!185460)) b!1093744))

(assert (= (and b!1093756 res!485865) b!1093741))

(assert (= (and b!1093741 c!185462) b!1093755))

(assert (= (and b!1093741 (not c!185462)) b!1093746))

(assert (= (and b!1093741 (not res!485862)) b!1093751))

(assert (= (and b!1093741 (not res!485863)) b!1093740))

(assert (= (and b!1093740 c!185463) b!1093742))

(assert (= (and b!1093740 (not c!185463)) b!1093757))

(assert (= (and b!1093740 (not res!485869)) b!1093747))

(assert (= (and b!1093747 c!185461) b!1093753))

(assert (= (and b!1093747 (not c!185461)) b!1093749))

(assert (= (and b!1093747 (not res!485867)) b!1093752))

(assert (= (and b!1093747 (not res!485866)) b!1093743))

(assert (= start!93622 b!1093745))

(declare-fun m!1245835 () Bool)

(assert (=> b!1093747 m!1245835))

(declare-fun m!1245837 () Bool)

(assert (=> b!1093747 m!1245837))

(declare-fun m!1245839 () Bool)

(assert (=> b!1093747 m!1245839))

(declare-fun m!1245841 () Bool)

(assert (=> start!93622 m!1245841))

(declare-fun m!1245843 () Bool)

(assert (=> start!93622 m!1245843))

(declare-fun m!1245845 () Bool)

(assert (=> b!1093740 m!1245845))

(declare-fun m!1245847 () Bool)

(assert (=> b!1093755 m!1245847))

(assert (=> b!1093755 m!1245847))

(declare-fun m!1245849 () Bool)

(assert (=> b!1093755 m!1245849))

(declare-fun m!1245851 () Bool)

(assert (=> b!1093741 m!1245851))

(declare-fun m!1245853 () Bool)

(assert (=> b!1093741 m!1245853))

(declare-fun m!1245855 () Bool)

(assert (=> b!1093741 m!1245855))

(assert (=> b!1093741 m!1245847))

(declare-fun m!1245857 () Bool)

(assert (=> b!1093741 m!1245857))

(declare-fun m!1245859 () Bool)

(assert (=> b!1093748 m!1245859))

(assert (=> b!1093748 m!1245859))

(declare-fun m!1245861 () Bool)

(assert (=> b!1093748 m!1245861))

(declare-fun m!1245863 () Bool)

(assert (=> b!1093752 m!1245863))

(assert (=> b!1093752 m!1245863))

(declare-fun m!1245865 () Bool)

(assert (=> b!1093752 m!1245865))

(declare-fun m!1245867 () Bool)

(assert (=> b!1093752 m!1245867))

(declare-fun m!1245869 () Bool)

(assert (=> b!1093750 m!1245869))

(declare-fun m!1245871 () Bool)

(assert (=> b!1093743 m!1245871))

(declare-fun m!1245873 () Bool)

(assert (=> b!1093743 m!1245873))

(declare-fun m!1245875 () Bool)

(assert (=> b!1093743 m!1245875))

(declare-fun m!1245877 () Bool)

(assert (=> b!1093743 m!1245877))

(declare-fun m!1245879 () Bool)

(assert (=> b!1093743 m!1245879))

(declare-fun m!1245881 () Bool)

(assert (=> b!1093743 m!1245881))

(declare-fun m!1245883 () Bool)

(assert (=> b!1093743 m!1245883))

(declare-fun m!1245885 () Bool)

(assert (=> b!1093743 m!1245885))

(declare-fun m!1245887 () Bool)

(assert (=> b!1093743 m!1245887))

(declare-fun m!1245889 () Bool)

(assert (=> b!1093743 m!1245889))

(declare-fun m!1245891 () Bool)

(assert (=> b!1093743 m!1245891))

(declare-fun m!1245893 () Bool)

(assert (=> b!1093743 m!1245893))

(declare-fun m!1245895 () Bool)

(assert (=> b!1093743 m!1245895))

(declare-fun m!1245897 () Bool)

(assert (=> b!1093743 m!1245897))

(declare-fun m!1245899 () Bool)

(assert (=> b!1093743 m!1245899))

(declare-fun m!1245901 () Bool)

(assert (=> b!1093743 m!1245901))

(assert (=> b!1093743 m!1245893))

(declare-fun m!1245903 () Bool)

(assert (=> b!1093743 m!1245903))

(assert (=> b!1093743 m!1245873))

(declare-fun m!1245905 () Bool)

(assert (=> b!1093743 m!1245905))

(assert (=> b!1093743 m!1245899))

(declare-fun m!1245907 () Bool)

(assert (=> b!1093743 m!1245907))

(assert (=> b!1093743 m!1245889))

(declare-fun m!1245909 () Bool)

(assert (=> b!1093743 m!1245909))

(declare-fun m!1245911 () Bool)

(assert (=> b!1093743 m!1245911))

(declare-fun m!1245913 () Bool)

(assert (=> b!1093745 m!1245913))

(declare-fun m!1245915 () Bool)

(assert (=> b!1093756 m!1245915))

(declare-fun m!1245917 () Bool)

(assert (=> b!1093742 m!1245917))

(assert (=> b!1093742 m!1245917))

(declare-fun m!1245919 () Bool)

(assert (=> b!1093742 m!1245919))

(declare-fun m!1245921 () Bool)

(assert (=> b!1093751 m!1245921))

(assert (=> b!1093751 m!1245921))

(declare-fun m!1245923 () Bool)

(assert (=> b!1093751 m!1245923))

(assert (=> b!1093751 m!1245867))

(declare-fun m!1245925 () Bool)

(assert (=> b!1093753 m!1245925))

(assert (=> b!1093754 m!1245893))

(assert (=> b!1093754 m!1245889))

(declare-fun m!1245927 () Bool)

(assert (=> b!1093754 m!1245927))

(assert (=> b!1093754 m!1245899))

(declare-fun m!1245929 () Bool)

(assert (=> b!1093754 m!1245929))

(check-sat (not b!1093768) (not b!1093750) (not b!1093766) (not b!1093747) (not b!1093752) (not b!1093767) (not b!1093754) (not b!1093756) (not b!1093742) (not b!1093745) (not b!1093741) (not start!93622) (not b!1093769) (not b!1093751) (not b!1093765) (not b!1093748) (not b!1093753) (not b!1093743) (not b!1093740) (not b!1093755) (not b!1093764))
(check-sat)
(get-model)

(declare-fun d!308122 () Bool)

(declare-fun lt!367533 () tuple2!11718)

(declare-fun apply!2066 (List!10530 Int) tuple2!11718)

(assert (=> d!308122 (= lt!367533 (apply!2066 (list!3770 objs!8) (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2)))))))

(declare-fun apply!2067 (Conc!3217 Int) tuple2!11718)

(assert (=> d!308122 (= lt!367533 (apply!2067 (c!185467 objs!8) (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2)))))))

(declare-fun e!692367 () Bool)

(assert (=> d!308122 e!692367))

(declare-fun res!485899 () Bool)

(assert (=> d!308122 (=> (not res!485899) (not e!692367))))

(assert (=> d!308122 (= res!485899 (<= 0 (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2)))))))

(assert (=> d!308122 (= (apply!2065 objs!8 (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2)))) lt!367533)))

(declare-fun b!1093825 () Bool)

(assert (=> b!1093825 (= e!692367 (< (ite (>= lt!367465 0) (div lt!367465 2) (- (div (- lt!367465) 2))) (size!8133 objs!8)))))

(assert (= (and d!308122 res!485899) b!1093825))

(assert (=> d!308122 m!1245847))

(assert (=> d!308122 m!1245847))

(declare-fun m!1246043 () Bool)

(assert (=> d!308122 m!1246043))

(declare-fun m!1246045 () Bool)

(assert (=> d!308122 m!1246045))

(assert (=> b!1093825 m!1245869))

(assert (=> b!1093754 d!308122))

(declare-fun d!308130 () Bool)

(declare-fun e!692370 () Bool)

(assert (=> d!308130 e!692370))

(declare-fun res!485902 () Bool)

(assert (=> d!308130 (=> (not res!485902) (not e!692370))))

(declare-fun isBalanced!888 (Conc!3217) Bool)

(declare-fun filter!267 (Conc!3217 Int) Conc!3217)

(assert (=> d!308130 (= res!485902 (isBalanced!888 (filter!267 (c!185467 objs!8) lambda!42044)))))

(declare-fun lt!367536 () BalanceConc!6448)

(assert (=> d!308130 (= lt!367536 (BalanceConc!6449 (filter!267 (c!185467 objs!8) lambda!42044)))))

(assert (=> d!308130 (= (filter!264 objs!8 lambda!42044) lt!367536)))

(declare-fun b!1093828 () Bool)

(assert (=> b!1093828 (= e!692370 (= (list!3770 lt!367536) (filter!265 (list!3770 objs!8) lambda!42044)))))

(assert (= (and d!308130 res!485902) b!1093828))

(declare-fun m!1246047 () Bool)

(assert (=> d!308130 m!1246047))

(assert (=> d!308130 m!1246047))

(declare-fun m!1246049 () Bool)

(assert (=> d!308130 m!1246049))

(declare-fun m!1246051 () Bool)

(assert (=> b!1093828 m!1246051))

(assert (=> b!1093828 m!1245847))

(assert (=> b!1093828 m!1245847))

(declare-fun m!1246053 () Bool)

(assert (=> b!1093828 m!1246053))

(assert (=> b!1093754 d!308130))

(declare-fun d!308132 () Bool)

(declare-fun lt!367539 () Bool)

(declare-fun contains!1789 (List!10530 tuple2!11718) Bool)

(assert (=> d!308132 (= lt!367539 (contains!1789 (list!3770 objs!8) lt!367460))))

(declare-fun contains!1790 (Conc!3217 tuple2!11718) Bool)

(assert (=> d!308132 (= lt!367539 (contains!1790 (c!185467 objs!8) lt!367460))))

(assert (=> d!308132 (= (contains!1786 objs!8 lt!367460) lt!367539)))

(declare-fun bs!258348 () Bool)

(assert (= bs!258348 d!308132))

(assert (=> bs!258348 m!1245847))

(assert (=> bs!258348 m!1245847))

(declare-fun m!1246055 () Bool)

(assert (=> bs!258348 m!1246055))

(declare-fun m!1246057 () Bool)

(assert (=> bs!258348 m!1246057))

(assert (=> b!1093754 d!308132))

(declare-fun d!308134 () Bool)

(declare-fun e!692371 () Bool)

(assert (=> d!308134 e!692371))

(declare-fun res!485903 () Bool)

(assert (=> d!308134 (=> (not res!485903) (not e!692371))))

(assert (=> d!308134 (= res!485903 (isBalanced!888 (filter!267 (c!185467 objs!8) lambda!42046)))))

(declare-fun lt!367540 () BalanceConc!6448)

(assert (=> d!308134 (= lt!367540 (BalanceConc!6449 (filter!267 (c!185467 objs!8) lambda!42046)))))

(assert (=> d!308134 (= (filter!264 objs!8 lambda!42046) lt!367540)))

(declare-fun b!1093829 () Bool)

(assert (=> b!1093829 (= e!692371 (= (list!3770 lt!367540) (filter!265 (list!3770 objs!8) lambda!42046)))))

(assert (= (and d!308134 res!485903) b!1093829))

(declare-fun m!1246059 () Bool)

(assert (=> d!308134 m!1246059))

(assert (=> d!308134 m!1246059))

(declare-fun m!1246061 () Bool)

(assert (=> d!308134 m!1246061))

(declare-fun m!1246063 () Bool)

(assert (=> b!1093829 m!1246063))

(assert (=> b!1093829 m!1245847))

(assert (=> b!1093829 m!1245847))

(declare-fun m!1246065 () Bool)

(assert (=> b!1093829 m!1246065))

(assert (=> b!1093754 d!308134))

(declare-fun d!308136 () Bool)

(declare-fun e!692372 () Bool)

(assert (=> d!308136 e!692372))

(declare-fun res!485904 () Bool)

(assert (=> d!308136 (=> (not res!485904) (not e!692372))))

(assert (=> d!308136 (= res!485904 (isBalanced!888 (filter!267 (c!185467 objs!8) lambda!42045)))))

(declare-fun lt!367541 () BalanceConc!6448)

(assert (=> d!308136 (= lt!367541 (BalanceConc!6449 (filter!267 (c!185467 objs!8) lambda!42045)))))

(assert (=> d!308136 (= (filter!264 objs!8 lambda!42045) lt!367541)))

(declare-fun b!1093830 () Bool)

(assert (=> b!1093830 (= e!692372 (= (list!3770 lt!367541) (filter!265 (list!3770 objs!8) lambda!42045)))))

(assert (= (and d!308136 res!485904) b!1093830))

(declare-fun m!1246067 () Bool)

(assert (=> d!308136 m!1246067))

(assert (=> d!308136 m!1246067))

(declare-fun m!1246069 () Bool)

(assert (=> d!308136 m!1246069))

(declare-fun m!1246071 () Bool)

(assert (=> b!1093830 m!1246071))

(assert (=> b!1093830 m!1245847))

(assert (=> b!1093830 m!1245847))

(declare-fun m!1246073 () Bool)

(assert (=> b!1093830 m!1246073))

(assert (=> b!1093754 d!308136))

(declare-fun d!308138 () Bool)

(declare-fun list!3772 (Conc!3217) List!10530)

(assert (=> d!308138 (= (list!3770 (filter!264 objs!8 lambda!42045)) (list!3772 (c!185467 (filter!264 objs!8 lambda!42045))))))

(declare-fun bs!258349 () Bool)

(assert (= bs!258349 d!308138))

(declare-fun m!1246075 () Bool)

(assert (=> bs!258349 m!1246075))

(assert (=> b!1093743 d!308138))

(declare-fun d!308140 () Bool)

(declare-fun res!485909 () Bool)

(declare-fun e!692377 () Bool)

(assert (=> d!308140 (=> res!485909 e!692377)))

(get-info :version)

(assert (=> d!308140 (= res!485909 ((_ is Nil!10514) lt!367475))))

(assert (=> d!308140 (= (forall!2363 lt!367475 lambda!42043) e!692377)))

(declare-fun b!1093835 () Bool)

(declare-fun e!692378 () Bool)

(assert (=> b!1093835 (= e!692377 e!692378)))

(declare-fun res!485910 () Bool)

(assert (=> b!1093835 (=> (not res!485910) (not e!692378))))

(declare-fun dynLambda!4593 (Int tuple2!11718) Bool)

(assert (=> b!1093835 (= res!485910 (dynLambda!4593 lambda!42043 (h!15915 lt!367475)))))

(declare-fun b!1093836 () Bool)

(assert (=> b!1093836 (= e!692378 (forall!2363 (t!102704 lt!367475) lambda!42043))))

(assert (= (and d!308140 (not res!485909)) b!1093835))

(assert (= (and b!1093835 res!485910) b!1093836))

(declare-fun b_lambda!31035 () Bool)

(assert (=> (not b_lambda!31035) (not b!1093835)))

(declare-fun m!1246077 () Bool)

(assert (=> b!1093835 m!1246077))

(declare-fun m!1246079 () Bool)

(assert (=> b!1093836 m!1246079))

(assert (=> b!1093743 d!308140))

(declare-fun d!308142 () Bool)

(assert (=> d!308142 (= (list!3770 lt!367473) (list!3772 (c!185467 lt!367473)))))

(declare-fun bs!258350 () Bool)

(assert (= bs!258350 d!308142))

(declare-fun m!1246081 () Bool)

(assert (=> bs!258350 m!1246081))

(assert (=> b!1093743 d!308142))

(declare-fun d!308144 () Bool)

(assert (=> d!308144 (= (list!3770 (filter!264 objs!8 lambda!42044)) (list!3772 (c!185467 (filter!264 objs!8 lambda!42044))))))

(declare-fun bs!258351 () Bool)

(assert (= bs!258351 d!308144))

(declare-fun m!1246083 () Bool)

(assert (=> bs!258351 m!1246083))

(assert (=> b!1093743 d!308144))

(declare-fun d!308146 () Bool)

(assert (=> d!308146 (forall!2363 lt!367475 lambda!42043)))

(declare-fun lt!367544 () Unit!15982)

(declare-fun choose!7035 (List!10530 List!10530 Int) Unit!15982)

(assert (=> d!308146 (= lt!367544 (choose!7035 lt!367475 lt!367466 lambda!42043))))

(assert (=> d!308146 (forall!2363 lt!367466 lambda!42043)))

(assert (=> d!308146 (= (lemmaForallSubseq!41 lt!367475 lt!367466 lambda!42043) lt!367544)))

(declare-fun bs!258352 () Bool)

(assert (= bs!258352 d!308146))

(assert (=> bs!258352 m!1245879))

(declare-fun m!1246085 () Bool)

(assert (=> bs!258352 m!1246085))

(declare-fun m!1246087 () Bool)

(assert (=> bs!258352 m!1246087))

(assert (=> b!1093743 d!308146))

(declare-fun d!308148 () Bool)

(declare-fun res!485911 () Bool)

(declare-fun e!692379 () Bool)

(assert (=> d!308148 (=> res!485911 e!692379)))

(assert (=> d!308148 (= res!485911 ((_ is Nil!10514) lt!367485))))

(assert (=> d!308148 (= (forall!2363 lt!367485 lambda!42043) e!692379)))

(declare-fun b!1093837 () Bool)

(declare-fun e!692380 () Bool)

(assert (=> b!1093837 (= e!692379 e!692380)))

(declare-fun res!485912 () Bool)

(assert (=> b!1093837 (=> (not res!485912) (not e!692380))))

(assert (=> b!1093837 (= res!485912 (dynLambda!4593 lambda!42043 (h!15915 lt!367485)))))

(declare-fun b!1093838 () Bool)

(assert (=> b!1093838 (= e!692380 (forall!2363 (t!102704 lt!367485) lambda!42043))))

(assert (= (and d!308148 (not res!485911)) b!1093837))

(assert (= (and b!1093837 res!485912) b!1093838))

(declare-fun b_lambda!31037 () Bool)

(assert (=> (not b_lambda!31037) (not b!1093837)))

(declare-fun m!1246089 () Bool)

(assert (=> b!1093837 m!1246089))

(declare-fun m!1246091 () Bool)

(assert (=> b!1093838 m!1246091))

(assert (=> b!1093743 d!308148))

(assert (=> b!1093743 d!308134))

(declare-fun d!308150 () Bool)

(declare-fun res!485913 () Bool)

(declare-fun e!692381 () Bool)

(assert (=> d!308150 (=> res!485913 e!692381)))

(assert (=> d!308150 (= res!485913 ((_ is Nil!10514) lt!367469))))

(assert (=> d!308150 (= (forall!2363 lt!367469 lambda!42043) e!692381)))

(declare-fun b!1093839 () Bool)

(declare-fun e!692382 () Bool)

(assert (=> b!1093839 (= e!692381 e!692382)))

(declare-fun res!485914 () Bool)

(assert (=> b!1093839 (=> (not res!485914) (not e!692382))))

(assert (=> b!1093839 (= res!485914 (dynLambda!4593 lambda!42043 (h!15915 lt!367469)))))

(declare-fun b!1093840 () Bool)

(assert (=> b!1093840 (= e!692382 (forall!2363 (t!102704 lt!367469) lambda!42043))))

(assert (= (and d!308150 (not res!485913)) b!1093839))

(assert (= (and b!1093839 res!485914) b!1093840))

(declare-fun b_lambda!31039 () Bool)

(assert (=> (not b_lambda!31039) (not b!1093839)))

(declare-fun m!1246093 () Bool)

(assert (=> b!1093839 m!1246093))

(declare-fun m!1246095 () Bool)

(assert (=> b!1093840 m!1246095))

(assert (=> b!1093743 d!308150))

(declare-fun d!308152 () Bool)

(declare-fun subseq!144 (List!10530 List!10530) Bool)

(assert (=> d!308152 (subseq!144 (filter!265 lt!367466 lambda!42044) lt!367466)))

(declare-fun lt!367547 () Unit!15982)

(declare-fun choose!7036 (List!10530 Int) Unit!15982)

(assert (=> d!308152 (= lt!367547 (choose!7036 lt!367466 lambda!42044))))

(assert (=> d!308152 (= (filterSubseq!33 lt!367466 lambda!42044) lt!367547)))

(declare-fun bs!258353 () Bool)

(assert (= bs!258353 d!308152))

(assert (=> bs!258353 m!1245921))

(assert (=> bs!258353 m!1245921))

(declare-fun m!1246097 () Bool)

(assert (=> bs!258353 m!1246097))

(declare-fun m!1246099 () Bool)

(assert (=> bs!258353 m!1246099))

(assert (=> b!1093743 d!308152))

(declare-fun d!308154 () Bool)

(declare-fun lt!367550 () Bool)

(assert (=> d!308154 (= lt!367550 (forall!2363 (list!3770 lt!367474) lambda!42043))))

(declare-fun forall!2365 (Conc!3217 Int) Bool)

(assert (=> d!308154 (= lt!367550 (forall!2365 (c!185467 lt!367474) lambda!42043))))

(assert (=> d!308154 (= (forall!2362 lt!367474 lambda!42043) lt!367550)))

(declare-fun bs!258354 () Bool)

(assert (= bs!258354 d!308154))

(assert (=> bs!258354 m!1245917))

(assert (=> bs!258354 m!1245917))

(declare-fun m!1246101 () Bool)

(assert (=> bs!258354 m!1246101))

(declare-fun m!1246103 () Bool)

(assert (=> bs!258354 m!1246103))

(assert (=> b!1093743 d!308154))

(assert (=> b!1093743 d!308136))

(declare-fun d!308156 () Bool)

(assert (=> d!308156 (= (list!3770 (filter!264 objs!8 lambda!42046)) (list!3772 (c!185467 (filter!264 objs!8 lambda!42046))))))

(declare-fun bs!258355 () Bool)

(assert (= bs!258355 d!308156))

(declare-fun m!1246105 () Bool)

(assert (=> bs!258355 m!1246105))

(assert (=> b!1093743 d!308156))

(declare-fun d!308158 () Bool)

(assert (=> d!308158 (forall!2363 lt!367469 lambda!42043)))

(declare-fun lt!367551 () Unit!15982)

(assert (=> d!308158 (= lt!367551 (choose!7035 lt!367469 lt!367466 lambda!42043))))

(assert (=> d!308158 (forall!2363 lt!367466 lambda!42043)))

(assert (=> d!308158 (= (lemmaForallSubseq!41 lt!367469 lt!367466 lambda!42043) lt!367551)))

(declare-fun bs!258356 () Bool)

(assert (= bs!258356 d!308158))

(assert (=> bs!258356 m!1245887))

(declare-fun m!1246107 () Bool)

(assert (=> bs!258356 m!1246107))

(assert (=> bs!258356 m!1246087))

(assert (=> b!1093743 d!308158))

(declare-fun d!308160 () Bool)

(assert (=> d!308160 (forall!2363 lt!367485 lambda!42043)))

(declare-fun lt!367552 () Unit!15982)

(assert (=> d!308160 (= lt!367552 (choose!7035 lt!367485 lt!367466 lambda!42043))))

(assert (=> d!308160 (forall!2363 lt!367466 lambda!42043)))

(assert (=> d!308160 (= (lemmaForallSubseq!41 lt!367485 lt!367466 lambda!42043) lt!367552)))

(declare-fun bs!258357 () Bool)

(assert (= bs!258357 d!308160))

(assert (=> bs!258357 m!1245881))

(declare-fun m!1246109 () Bool)

(assert (=> bs!258357 m!1246109))

(assert (=> bs!258357 m!1246087))

(assert (=> b!1093743 d!308160))

(declare-fun d!308162 () Bool)

(assert (=> d!308162 (subseq!144 (filter!265 lt!367466 lambda!42046) lt!367466)))

(declare-fun lt!367553 () Unit!15982)

(assert (=> d!308162 (= lt!367553 (choose!7036 lt!367466 lambda!42046))))

(assert (=> d!308162 (= (filterSubseq!33 lt!367466 lambda!42046) lt!367553)))

(declare-fun bs!258358 () Bool)

(assert (= bs!258358 d!308162))

(assert (=> bs!258358 m!1245863))

(assert (=> bs!258358 m!1245863))

(declare-fun m!1246111 () Bool)

(assert (=> bs!258358 m!1246111))

(declare-fun m!1246113 () Bool)

(assert (=> bs!258358 m!1246113))

(assert (=> b!1093743 d!308162))

(assert (=> b!1093743 d!308130))

(declare-fun b!1093850 () Bool)

(declare-fun e!692388 () List!10530)

(assert (=> b!1093850 (= e!692388 (Cons!10514 (h!15915 lt!367488) (++!2847 (t!102704 lt!367488) lt!367471)))))

(declare-fun d!308164 () Bool)

(declare-fun e!692387 () Bool)

(assert (=> d!308164 e!692387))

(declare-fun res!485920 () Bool)

(assert (=> d!308164 (=> (not res!485920) (not e!692387))))

(declare-fun lt!367556 () List!10530)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1516 (List!10530) (InoxSet tuple2!11718))

(assert (=> d!308164 (= res!485920 (= (content!1516 lt!367556) ((_ map or) (content!1516 lt!367488) (content!1516 lt!367471))))))

(assert (=> d!308164 (= lt!367556 e!692388)))

(declare-fun c!185485 () Bool)

(assert (=> d!308164 (= c!185485 ((_ is Nil!10514) lt!367488))))

(assert (=> d!308164 (= (++!2847 lt!367488 lt!367471) lt!367556)))

(declare-fun b!1093849 () Bool)

(assert (=> b!1093849 (= e!692388 lt!367471)))

(declare-fun b!1093851 () Bool)

(declare-fun res!485919 () Bool)

(assert (=> b!1093851 (=> (not res!485919) (not e!692387))))

(assert (=> b!1093851 (= res!485919 (= (size!8134 lt!367556) (+ (size!8134 lt!367488) (size!8134 lt!367471))))))

(declare-fun b!1093852 () Bool)

(assert (=> b!1093852 (= e!692387 (or (not (= lt!367471 Nil!10514)) (= lt!367556 lt!367488)))))

(assert (= (and d!308164 c!185485) b!1093849))

(assert (= (and d!308164 (not c!185485)) b!1093850))

(assert (= (and d!308164 res!485920) b!1093851))

(assert (= (and b!1093851 res!485919) b!1093852))

(declare-fun m!1246115 () Bool)

(assert (=> b!1093850 m!1246115))

(declare-fun m!1246117 () Bool)

(assert (=> d!308164 m!1246117))

(declare-fun m!1246119 () Bool)

(assert (=> d!308164 m!1246119))

(declare-fun m!1246121 () Bool)

(assert (=> d!308164 m!1246121))

(declare-fun m!1246123 () Bool)

(assert (=> b!1093851 m!1246123))

(declare-fun m!1246125 () Bool)

(assert (=> b!1093851 m!1246125))

(declare-fun m!1246127 () Bool)

(assert (=> b!1093851 m!1246127))

(assert (=> b!1093743 d!308164))

(declare-fun bs!258382 () Bool)

(declare-fun b!1093996 () Bool)

(assert (= bs!258382 (and b!1093996 start!93622)))

(declare-fun lambda!42144 () Int)

(assert (=> bs!258382 (not (= lambda!42144 lambda!42043))))

(declare-fun bs!258383 () Bool)

(assert (= bs!258383 (and b!1093996 b!1093754)))

(declare-fun lt!367762 () tuple2!11718)

(assert (=> bs!258383 (= (= (_1!6685 lt!367762) (_1!6685 lt!367460)) (= lambda!42144 lambda!42044))))

(assert (=> bs!258383 (not (= lambda!42144 lambda!42045))))

(assert (=> bs!258383 (not (= lambda!42144 lambda!42046))))

(declare-fun b!1094007 () Bool)

(declare-fun e!692492 () Bool)

(assert (=> b!1094007 (= e!692492 true)))

(declare-fun b!1094006 () Bool)

(declare-fun e!692491 () Bool)

(assert (=> b!1094006 (= e!692491 e!692492)))

(assert (=> b!1093996 e!692491))

(assert (= b!1094006 b!1094007))

(assert (= b!1093996 b!1094006))

(declare-fun lambda!42145 () Int)

(assert (=> bs!258382 (not (= lambda!42145 lambda!42043))))

(assert (=> bs!258383 (not (= lambda!42145 lambda!42046))))

(assert (=> b!1093996 (not (= lambda!42145 lambda!42144))))

(assert (=> bs!258383 (= (= (_1!6685 lt!367762) (_1!6685 lt!367460)) (= lambda!42145 lambda!42045))))

(assert (=> bs!258383 (not (= lambda!42145 lambda!42044))))

(declare-fun b!1094009 () Bool)

(declare-fun e!692494 () Bool)

(assert (=> b!1094009 (= e!692494 true)))

(declare-fun b!1094008 () Bool)

(declare-fun e!692493 () Bool)

(assert (=> b!1094008 (= e!692493 e!692494)))

(assert (=> b!1093996 e!692493))

(assert (= b!1094008 b!1094009))

(assert (= b!1093996 b!1094008))

(declare-fun lambda!42146 () Int)

(assert (=> b!1093996 (not (= lambda!42146 lambda!42145))))

(assert (=> bs!258382 (not (= lambda!42146 lambda!42043))))

(assert (=> bs!258383 (= (= (_1!6685 lt!367762) (_1!6685 lt!367460)) (= lambda!42146 lambda!42046))))

(assert (=> b!1093996 (not (= lambda!42146 lambda!42144))))

(assert (=> bs!258383 (not (= lambda!42146 lambda!42045))))

(assert (=> bs!258383 (not (= lambda!42146 lambda!42044))))

(declare-fun b!1094011 () Bool)

(declare-fun e!692496 () Bool)

(assert (=> b!1094011 (= e!692496 true)))

(declare-fun b!1094010 () Bool)

(declare-fun e!692495 () Bool)

(assert (=> b!1094010 (= e!692495 e!692496)))

(assert (=> b!1093996 e!692495))

(assert (= b!1094010 b!1094011))

(assert (= b!1093996 b!1094010))

(declare-fun lambda!42147 () Int)

(assert (=> b!1093996 (not (= lambda!42147 lambda!42145))))

(assert (=> bs!258382 (= lambda!42147 lambda!42043)))

(assert (=> bs!258383 (not (= lambda!42147 lambda!42046))))

(assert (=> b!1093996 (not (= lambda!42147 lambda!42146))))

(assert (=> b!1093996 (not (= lambda!42147 lambda!42144))))

(assert (=> bs!258383 (not (= lambda!42147 lambda!42045))))

(assert (=> bs!258383 (not (= lambda!42147 lambda!42044))))

(declare-fun bs!258384 () Bool)

(declare-fun d!308166 () Bool)

(assert (= bs!258384 (and d!308166 b!1093996)))

(declare-fun lambda!42148 () Int)

(assert (=> bs!258384 (not (= lambda!42148 lambda!42145))))

(declare-fun bs!258385 () Bool)

(assert (= bs!258385 (and d!308166 start!93622)))

(assert (=> bs!258385 (= lambda!42148 lambda!42043)))

(assert (=> bs!258384 (= lambda!42148 lambda!42147)))

(declare-fun bs!258386 () Bool)

(assert (= bs!258386 (and d!308166 b!1093754)))

(assert (=> bs!258386 (not (= lambda!42148 lambda!42046))))

(assert (=> bs!258384 (not (= lambda!42148 lambda!42146))))

(assert (=> bs!258384 (not (= lambda!42148 lambda!42144))))

(assert (=> bs!258386 (not (= lambda!42148 lambda!42045))))

(assert (=> bs!258386 (not (= lambda!42148 lambda!42044))))

(declare-fun b!1093994 () Bool)

(assert (=> b!1093994 true))

(declare-fun lt!367767 () Unit!15982)

(assert (=> b!1093994 (= lt!367767 (forallContained!498 (list!3770 lt!367487) lambda!42146 lt!367762))))

(declare-fun e!692487 () Unit!15982)

(declare-fun err!2222 () Unit!15982)

(assert (=> b!1093994 (= e!692487 err!2222)))

(declare-fun b!1093995 () Bool)

(declare-fun e!692484 () Unit!15982)

(declare-fun Unit!15993 () Unit!15982)

(assert (=> b!1093995 (= e!692484 Unit!15993)))

(declare-fun lt!367788 () BalanceConc!6448)

(declare-fun e!692490 () BalanceConc!6448)

(declare-fun lt!367784 () BalanceConc!6448)

(declare-fun lt!367781 () BalanceConc!6448)

(declare-fun ++!2849 (BalanceConc!6448 BalanceConc!6448) BalanceConc!6448)

(assert (=> b!1093996 (= e!692490 (++!2849 (++!2849 (sortObjectsByID!0 lt!367788) lt!367781) (sortObjectsByID!0 lt!367784)))))

(assert (=> b!1093996 (= lt!367762 (apply!2065 lt!367487 (ite (>= (size!8133 lt!367487) 0) (div (size!8133 lt!367487) 2) (- (div (- (size!8133 lt!367487)) 2)))))))

(assert (=> b!1093996 (= lt!367788 (filter!264 lt!367487 lambda!42144))))

(assert (=> b!1093996 (= lt!367781 (filter!264 lt!367487 lambda!42145))))

(assert (=> b!1093996 (= lt!367784 (filter!264 lt!367487 lambda!42146))))

(declare-fun c!185520 () Bool)

(assert (=> b!1093996 (= c!185520 (contains!1786 lt!367788 lt!367762))))

(declare-fun lt!367772 () Unit!15982)

(declare-fun e!692485 () Unit!15982)

(assert (=> b!1093996 (= lt!367772 e!692485)))

(declare-fun c!185521 () Bool)

(assert (=> b!1093996 (= c!185521 (forall!2362 lt!367487 lambda!42144))))

(declare-fun lt!367780 () Unit!15982)

(declare-fun e!692486 () Unit!15982)

(assert (=> b!1093996 (= lt!367780 e!692486)))

(declare-fun lt!367791 () List!10530)

(assert (=> b!1093996 (= lt!367791 (list!3770 lt!367487))))

(declare-fun lt!367775 () Unit!15982)

(assert (=> b!1093996 (= lt!367775 (lemmaNotForallFilterShorter!39 lt!367791 lambda!42144))))

(declare-fun res!485950 () Bool)

(assert (=> b!1093996 (= res!485950 (isEmpty!6668 lt!367791))))

(declare-fun e!692488 () Bool)

(assert (=> b!1093996 (=> res!485950 e!692488)))

(assert (=> b!1093996 e!692488))

(declare-fun lt!367782 () Unit!15982)

(assert (=> b!1093996 (= lt!367782 lt!367775)))

(declare-fun c!185517 () Bool)

(assert (=> b!1093996 (= c!185517 (contains!1786 lt!367784 lt!367762))))

(declare-fun lt!367774 () Unit!15982)

(assert (=> b!1093996 (= lt!367774 e!692484)))

(declare-fun c!185519 () Bool)

(assert (=> b!1093996 (= c!185519 (forall!2362 lt!367487 lambda!42146))))

(declare-fun lt!367769 () Unit!15982)

(assert (=> b!1093996 (= lt!367769 e!692487)))

(declare-fun lt!367776 () List!10530)

(assert (=> b!1093996 (= lt!367776 (list!3770 lt!367487))))

(declare-fun lt!367778 () Unit!15982)

(assert (=> b!1093996 (= lt!367778 (lemmaNotForallFilterShorter!39 lt!367776 lambda!42146))))

(declare-fun res!485949 () Bool)

(assert (=> b!1093996 (= res!485949 (isEmpty!6668 lt!367776))))

(declare-fun e!692489 () Bool)

(assert (=> b!1093996 (=> res!485949 e!692489)))

(assert (=> b!1093996 e!692489))

(declare-fun lt!367790 () Unit!15982)

(assert (=> b!1093996 (= lt!367790 lt!367778)))

(declare-fun lt!367785 () Unit!15982)

(assert (=> b!1093996 (= lt!367785 (filterSubseq!33 (list!3770 lt!367487) lambda!42144))))

(declare-fun lt!367763 () Unit!15982)

(assert (=> b!1093996 (= lt!367763 (filterSubseq!33 (list!3770 lt!367487) lambda!42145))))

(declare-fun lt!367777 () Unit!15982)

(assert (=> b!1093996 (= lt!367777 (filterSubseq!33 (list!3770 lt!367487) lambda!42146))))

(declare-fun lt!367786 () List!10530)

(assert (=> b!1093996 (= lt!367786 (list!3770 (filter!264 lt!367487 lambda!42144)))))

(declare-fun lt!367759 () List!10530)

(assert (=> b!1093996 (= lt!367759 (list!3770 lt!367487))))

(declare-fun lt!367768 () Unit!15982)

(assert (=> b!1093996 (= lt!367768 (lemmaForallSubseq!41 lt!367786 lt!367759 lambda!42147))))

(assert (=> b!1093996 (forall!2363 lt!367786 lambda!42147)))

(declare-fun lt!367764 () Unit!15982)

(assert (=> b!1093996 (= lt!367764 lt!367768)))

(declare-fun lt!367787 () List!10530)

(assert (=> b!1093996 (= lt!367787 (list!3770 (filter!264 lt!367487 lambda!42145)))))

(declare-fun lt!367765 () List!10530)

(assert (=> b!1093996 (= lt!367765 (list!3770 lt!367487))))

(declare-fun lt!367789 () Unit!15982)

(assert (=> b!1093996 (= lt!367789 (lemmaForallSubseq!41 lt!367787 lt!367765 lambda!42147))))

(assert (=> b!1093996 (forall!2363 lt!367787 lambda!42147)))

(declare-fun lt!367770 () Unit!15982)

(assert (=> b!1093996 (= lt!367770 lt!367789)))

(declare-fun lt!367783 () List!10530)

(assert (=> b!1093996 (= lt!367783 (list!3770 (filter!264 lt!367487 lambda!42146)))))

(declare-fun lt!367757 () List!10530)

(assert (=> b!1093996 (= lt!367757 (list!3770 lt!367487))))

(declare-fun lt!367779 () Unit!15982)

(assert (=> b!1093996 (= lt!367779 (lemmaForallSubseq!41 lt!367783 lt!367757 lambda!42147))))

(assert (=> b!1093996 (forall!2363 lt!367783 lambda!42147)))

(declare-fun lt!367773 () Unit!15982)

(assert (=> b!1093996 (= lt!367773 lt!367779)))

(declare-fun lt!367792 () Unit!15982)

(assert (=> b!1093996 (= lt!367792 (lemmaConcatPreservesForall!84 (list!3770 (sortObjectsByID!0 lt!367788)) (list!3770 lt!367781) lambda!42147))))

(declare-fun lt!367771 () Unit!15982)

(assert (=> b!1093996 (= lt!367771 (lemmaConcatPreservesForall!84 (++!2847 (list!3770 (sortObjectsByID!0 lt!367788)) (list!3770 lt!367781)) (list!3770 (sortObjectsByID!0 lt!367784)) lambda!42147))))

(declare-fun lt!367758 () BalanceConc!6448)

(assert (=> d!308166 (forall!2362 lt!367758 lambda!42148)))

(assert (=> d!308166 (= lt!367758 e!692490)))

(declare-fun c!185518 () Bool)

(assert (=> d!308166 (= c!185518 (<= (size!8133 lt!367487) 1))))

(assert (=> d!308166 (= (sortObjectsByID!0 lt!367487) lt!367758)))

(declare-fun b!1093997 () Bool)

(declare-fun Unit!15994 () Unit!15982)

(assert (=> b!1093997 (= e!692487 Unit!15994)))

(declare-fun b!1093998 () Bool)

(assert (=> b!1093998 true))

(declare-fun lt!367760 () Unit!15982)

(assert (=> b!1093998 (= lt!367760 (forallContained!498 (list!3770 lt!367788) lambda!42144 lt!367762))))

(declare-fun err!2223 () Unit!15982)

(assert (=> b!1093998 (= e!692485 err!2223)))

(declare-fun b!1093999 () Bool)

(assert (=> b!1093999 (= e!692488 (< (size!8134 (filter!265 lt!367791 lambda!42144)) (size!8134 lt!367791)))))

(declare-fun b!1094000 () Bool)

(assert (=> b!1094000 true))

(declare-fun lt!367766 () Unit!15982)

(assert (=> b!1094000 (= lt!367766 (forallContained!498 (list!3770 lt!367784) lambda!42146 lt!367762))))

(declare-fun err!2224 () Unit!15982)

(assert (=> b!1094000 (= e!692484 err!2224)))

(declare-fun b!1094001 () Bool)

(assert (=> b!1094001 true))

(declare-fun lt!367761 () Unit!15982)

(assert (=> b!1094001 (= lt!367761 (forallContained!498 (list!3770 lt!367487) lambda!42144 lt!367762))))

(declare-fun err!2225 () Unit!15982)

(assert (=> b!1094001 (= e!692486 err!2225)))

(declare-fun b!1094002 () Bool)

(declare-fun Unit!15995 () Unit!15982)

(assert (=> b!1094002 (= e!692486 Unit!15995)))

(declare-fun b!1094003 () Bool)

(assert (=> b!1094003 (= e!692490 lt!367487)))

(declare-fun b!1094004 () Bool)

(declare-fun Unit!15996 () Unit!15982)

(assert (=> b!1094004 (= e!692485 Unit!15996)))

(declare-fun b!1094005 () Bool)

(assert (=> b!1094005 (= e!692489 (< (size!8134 (filter!265 lt!367776 lambda!42146)) (size!8134 lt!367776)))))

(assert (= (and d!308166 c!185518) b!1094003))

(assert (= (and d!308166 (not c!185518)) b!1093996))

(assert (= (and b!1093996 c!185520) b!1093998))

(assert (= (and b!1093996 (not c!185520)) b!1094004))

(assert (= (and b!1093996 c!185521) b!1094001))

(assert (= (and b!1093996 (not c!185521)) b!1094002))

(assert (= (and b!1093996 (not res!485950)) b!1093999))

(assert (= (and b!1093996 c!185517) b!1094000))

(assert (= (and b!1093996 (not c!185517)) b!1093995))

(assert (= (and b!1093996 c!185519) b!1093994))

(assert (= (and b!1093996 (not c!185519)) b!1093997))

(assert (= (and b!1093996 (not res!485949)) b!1094005))

(declare-fun m!1246321 () Bool)

(assert (=> b!1093996 m!1246321))

(assert (=> b!1093996 m!1245859))

(declare-fun m!1246323 () Bool)

(assert (=> b!1093996 m!1246323))

(declare-fun m!1246325 () Bool)

(assert (=> b!1093996 m!1246325))

(declare-fun m!1246327 () Bool)

(assert (=> b!1093996 m!1246327))

(assert (=> b!1093996 m!1245859))

(declare-fun m!1246329 () Bool)

(assert (=> b!1093996 m!1246329))

(declare-fun m!1246331 () Bool)

(assert (=> b!1093996 m!1246331))

(declare-fun m!1246333 () Bool)

(assert (=> b!1093996 m!1246333))

(declare-fun m!1246335 () Bool)

(assert (=> b!1093996 m!1246335))

(declare-fun m!1246337 () Bool)

(assert (=> b!1093996 m!1246337))

(declare-fun m!1246339 () Bool)

(assert (=> b!1093996 m!1246339))

(declare-fun m!1246341 () Bool)

(assert (=> b!1093996 m!1246341))

(declare-fun m!1246343 () Bool)

(assert (=> b!1093996 m!1246343))

(declare-fun m!1246345 () Bool)

(assert (=> b!1093996 m!1246345))

(declare-fun m!1246347 () Bool)

(assert (=> b!1093996 m!1246347))

(declare-fun m!1246349 () Bool)

(assert (=> b!1093996 m!1246349))

(assert (=> b!1093996 m!1246337))

(assert (=> b!1093996 m!1246339))

(declare-fun m!1246351 () Bool)

(assert (=> b!1093996 m!1246351))

(assert (=> b!1093996 m!1246339))

(assert (=> b!1093996 m!1246341))

(declare-fun m!1246353 () Bool)

(assert (=> b!1093996 m!1246353))

(declare-fun m!1246355 () Bool)

(assert (=> b!1093996 m!1246355))

(assert (=> b!1093996 m!1246333))

(declare-fun m!1246357 () Bool)

(assert (=> b!1093996 m!1246357))

(declare-fun m!1246359 () Bool)

(assert (=> b!1093996 m!1246359))

(declare-fun m!1246361 () Bool)

(assert (=> b!1093996 m!1246361))

(declare-fun m!1246363 () Bool)

(assert (=> b!1093996 m!1246363))

(assert (=> b!1093996 m!1246357))

(assert (=> b!1093996 m!1246357))

(declare-fun m!1246365 () Bool)

(assert (=> b!1093996 m!1246365))

(assert (=> b!1093996 m!1246337))

(declare-fun m!1246367 () Bool)

(assert (=> b!1093996 m!1246367))

(declare-fun m!1246369 () Bool)

(assert (=> b!1093996 m!1246369))

(declare-fun m!1246371 () Bool)

(assert (=> b!1093996 m!1246371))

(assert (=> b!1093996 m!1246321))

(declare-fun m!1246373 () Bool)

(assert (=> b!1093996 m!1246373))

(assert (=> b!1093996 m!1246369))

(declare-fun m!1246375 () Bool)

(assert (=> b!1093996 m!1246375))

(declare-fun m!1246377 () Bool)

(assert (=> b!1093996 m!1246377))

(assert (=> b!1093996 m!1245859))

(assert (=> b!1093996 m!1245853))

(assert (=> b!1093996 m!1246321))

(assert (=> b!1093996 m!1246369))

(assert (=> b!1093996 m!1246367))

(assert (=> b!1093996 m!1246333))

(declare-fun m!1246379 () Bool)

(assert (=> b!1093996 m!1246379))

(declare-fun m!1246381 () Bool)

(assert (=> b!1093996 m!1246381))

(declare-fun m!1246383 () Bool)

(assert (=> b!1093996 m!1246383))

(assert (=> b!1093996 m!1246341))

(assert (=> b!1093996 m!1245859))

(declare-fun m!1246385 () Bool)

(assert (=> b!1093996 m!1246385))

(assert (=> b!1093996 m!1246353))

(assert (=> b!1093996 m!1246335))

(declare-fun m!1246387 () Bool)

(assert (=> b!1093996 m!1246387))

(declare-fun m!1246389 () Bool)

(assert (=> b!1093999 m!1246389))

(assert (=> b!1093999 m!1246389))

(declare-fun m!1246391 () Bool)

(assert (=> b!1093999 m!1246391))

(declare-fun m!1246393 () Bool)

(assert (=> b!1093999 m!1246393))

(declare-fun m!1246395 () Bool)

(assert (=> b!1094005 m!1246395))

(assert (=> b!1094005 m!1246395))

(declare-fun m!1246397 () Bool)

(assert (=> b!1094005 m!1246397))

(declare-fun m!1246399 () Bool)

(assert (=> b!1094005 m!1246399))

(declare-fun m!1246401 () Bool)

(assert (=> b!1093998 m!1246401))

(assert (=> b!1093998 m!1246401))

(declare-fun m!1246403 () Bool)

(assert (=> b!1093998 m!1246403))

(assert (=> b!1094001 m!1245859))

(assert (=> b!1094001 m!1245859))

(declare-fun m!1246405 () Bool)

(assert (=> b!1094001 m!1246405))

(assert (=> b!1093994 m!1245859))

(assert (=> b!1093994 m!1245859))

(declare-fun m!1246407 () Bool)

(assert (=> b!1093994 m!1246407))

(declare-fun m!1246409 () Bool)

(assert (=> d!308166 m!1246409))

(assert (=> d!308166 m!1245853))

(declare-fun m!1246411 () Bool)

(assert (=> b!1094000 m!1246411))

(assert (=> b!1094000 m!1246411))

(declare-fun m!1246413 () Bool)

(assert (=> b!1094000 m!1246413))

(assert (=> b!1093743 d!308166))

(declare-fun d!308228 () Bool)

(assert (=> d!308228 (forall!2363 (++!2847 lt!367488 lt!367471) lambda!42043)))

(declare-fun lt!367795 () Unit!15982)

(declare-fun choose!7037 (List!10530 List!10530 Int) Unit!15982)

(assert (=> d!308228 (= lt!367795 (choose!7037 lt!367488 lt!367471 lambda!42043))))

(assert (=> d!308228 (forall!2363 lt!367488 lambda!42043)))

(assert (=> d!308228 (= (lemmaConcatPreservesForall!84 lt!367488 lt!367471 lambda!42043) lt!367795)))

(declare-fun bs!258387 () Bool)

(assert (= bs!258387 d!308228))

(assert (=> bs!258387 m!1245883))

(assert (=> bs!258387 m!1245883))

(declare-fun m!1246415 () Bool)

(assert (=> bs!258387 m!1246415))

(declare-fun m!1246417 () Bool)

(assert (=> bs!258387 m!1246417))

(declare-fun m!1246419 () Bool)

(assert (=> bs!258387 m!1246419))

(assert (=> b!1093743 d!308228))

(declare-fun d!308230 () Bool)

(assert (=> d!308230 (subseq!144 (filter!265 lt!367466 lambda!42045) lt!367466)))

(declare-fun lt!367796 () Unit!15982)

(assert (=> d!308230 (= lt!367796 (choose!7036 lt!367466 lambda!42045))))

(assert (=> d!308230 (= (filterSubseq!33 lt!367466 lambda!42045) lt!367796)))

(declare-fun bs!258388 () Bool)

(assert (= bs!258388 d!308230))

(declare-fun m!1246421 () Bool)

(assert (=> bs!258388 m!1246421))

(assert (=> bs!258388 m!1246421))

(declare-fun m!1246423 () Bool)

(assert (=> bs!258388 m!1246423))

(declare-fun m!1246425 () Bool)

(assert (=> bs!258388 m!1246425))

(assert (=> b!1093743 d!308230))

(declare-fun d!308232 () Bool)

(assert (=> d!308232 (= (list!3770 (sortObjectsByID!0 lt!367487)) (list!3772 (c!185467 (sortObjectsByID!0 lt!367487))))))

(declare-fun bs!258389 () Bool)

(assert (= bs!258389 d!308232))

(declare-fun m!1246427 () Bool)

(assert (=> bs!258389 m!1246427))

(assert (=> b!1093743 d!308232))

(declare-fun d!308234 () Bool)

(assert (=> d!308234 (dynLambda!4593 lambda!42046 lt!367460)))

(declare-fun lt!367799 () Unit!15982)

(declare-fun choose!7038 (List!10530 Int tuple2!11718) Unit!15982)

(assert (=> d!308234 (= lt!367799 (choose!7038 lt!367466 lambda!42046 lt!367460))))

(declare-fun e!692499 () Bool)

(assert (=> d!308234 e!692499))

(declare-fun res!485953 () Bool)

(assert (=> d!308234 (=> (not res!485953) (not e!692499))))

(assert (=> d!308234 (= res!485953 (forall!2363 lt!367466 lambda!42046))))

(assert (=> d!308234 (= (forallContained!498 lt!367466 lambda!42046 lt!367460) lt!367799)))

(declare-fun b!1094014 () Bool)

(assert (=> b!1094014 (= e!692499 (contains!1789 lt!367466 lt!367460))))

(assert (= (and d!308234 res!485953) b!1094014))

(declare-fun b_lambda!31069 () Bool)

(assert (=> (not b_lambda!31069) (not d!308234)))

(declare-fun m!1246429 () Bool)

(assert (=> d!308234 m!1246429))

(declare-fun m!1246431 () Bool)

(assert (=> d!308234 m!1246431))

(declare-fun m!1246433 () Bool)

(assert (=> d!308234 m!1246433))

(declare-fun m!1246435 () Bool)

(assert (=> b!1094014 m!1246435))

(assert (=> b!1093753 d!308234))

(declare-fun d!308236 () Bool)

(assert (=> d!308236 (dynLambda!4593 lambda!42046 lt!367460)))

(declare-fun lt!367800 () Unit!15982)

(assert (=> d!308236 (= lt!367800 (choose!7038 (list!3770 lt!367474) lambda!42046 lt!367460))))

(declare-fun e!692500 () Bool)

(assert (=> d!308236 e!692500))

(declare-fun res!485954 () Bool)

(assert (=> d!308236 (=> (not res!485954) (not e!692500))))

(assert (=> d!308236 (= res!485954 (forall!2363 (list!3770 lt!367474) lambda!42046))))

(assert (=> d!308236 (= (forallContained!498 (list!3770 lt!367474) lambda!42046 lt!367460) lt!367800)))

(declare-fun b!1094015 () Bool)

(assert (=> b!1094015 (= e!692500 (contains!1789 (list!3770 lt!367474) lt!367460))))

(assert (= (and d!308236 res!485954) b!1094015))

(declare-fun b_lambda!31071 () Bool)

(assert (=> (not b_lambda!31071) (not d!308236)))

(assert (=> d!308236 m!1246429))

(assert (=> d!308236 m!1245917))

(declare-fun m!1246437 () Bool)

(assert (=> d!308236 m!1246437))

(assert (=> d!308236 m!1245917))

(declare-fun m!1246439 () Bool)

(assert (=> d!308236 m!1246439))

(assert (=> b!1094015 m!1245917))

(declare-fun m!1246441 () Bool)

(assert (=> b!1094015 m!1246441))

(assert (=> b!1093742 d!308236))

(declare-fun d!308238 () Bool)

(assert (=> d!308238 (= (list!3770 lt!367474) (list!3772 (c!185467 lt!367474)))))

(declare-fun bs!258390 () Bool)

(assert (= bs!258390 d!308238))

(declare-fun m!1246443 () Bool)

(assert (=> bs!258390 m!1246443))

(assert (=> b!1093742 d!308238))

(declare-fun d!308240 () Bool)

(declare-fun lt!367803 () Int)

(assert (=> d!308240 (>= lt!367803 0)))

(declare-fun e!692503 () Int)

(assert (=> d!308240 (= lt!367803 e!692503)))

(declare-fun c!185524 () Bool)

(assert (=> d!308240 (= c!185524 ((_ is Nil!10514) (filter!265 lt!367466 lambda!42046)))))

(assert (=> d!308240 (= (size!8134 (filter!265 lt!367466 lambda!42046)) lt!367803)))

(declare-fun b!1094020 () Bool)

(assert (=> b!1094020 (= e!692503 0)))

(declare-fun b!1094021 () Bool)

(assert (=> b!1094021 (= e!692503 (+ 1 (size!8134 (t!102704 (filter!265 lt!367466 lambda!42046)))))))

(assert (= (and d!308240 c!185524) b!1094020))

(assert (= (and d!308240 (not c!185524)) b!1094021))

(declare-fun m!1246445 () Bool)

(assert (=> b!1094021 m!1246445))

(assert (=> b!1093752 d!308240))

(declare-fun b!1094035 () Bool)

(declare-fun e!692512 () List!10530)

(assert (=> b!1094035 (= e!692512 Nil!10514)))

(declare-fun b!1094036 () Bool)

(declare-fun e!692511 () List!10530)

(declare-fun call!80303 () List!10530)

(assert (=> b!1094036 (= e!692511 call!80303)))

(declare-fun b!1094037 () Bool)

(assert (=> b!1094037 (= e!692512 e!692511)))

(declare-fun c!185530 () Bool)

(assert (=> b!1094037 (= c!185530 (dynLambda!4593 lambda!42046 (h!15915 lt!367466)))))

(declare-fun b!1094038 () Bool)

(assert (=> b!1094038 (= e!692511 (Cons!10514 (h!15915 lt!367466) call!80303))))

(declare-fun bm!80298 () Bool)

(assert (=> bm!80298 (= call!80303 (filter!265 (t!102704 lt!367466) lambda!42046))))

(declare-fun b!1094039 () Bool)

(declare-fun res!485959 () Bool)

(declare-fun e!692510 () Bool)

(assert (=> b!1094039 (=> (not res!485959) (not e!692510))))

(declare-fun lt!367806 () List!10530)

(assert (=> b!1094039 (= res!485959 (= ((_ map implies) (content!1516 lt!367806) (content!1516 lt!367466)) ((as const (InoxSet tuple2!11718)) true)))))

(declare-fun b!1094034 () Bool)

(assert (=> b!1094034 (= e!692510 (forall!2363 lt!367806 lambda!42046))))

(declare-fun d!308242 () Bool)

(assert (=> d!308242 e!692510))

(declare-fun res!485960 () Bool)

(assert (=> d!308242 (=> (not res!485960) (not e!692510))))

(assert (=> d!308242 (= res!485960 (<= (size!8134 lt!367806) (size!8134 lt!367466)))))

(assert (=> d!308242 (= lt!367806 e!692512)))

(declare-fun c!185529 () Bool)

(assert (=> d!308242 (= c!185529 ((_ is Nil!10514) lt!367466))))

(assert (=> d!308242 (= (filter!265 lt!367466 lambda!42046) lt!367806)))

(assert (= (and d!308242 c!185529) b!1094035))

(assert (= (and d!308242 (not c!185529)) b!1094037))

(assert (= (and b!1094037 c!185530) b!1094038))

(assert (= (and b!1094037 (not c!185530)) b!1094036))

(assert (= (or b!1094038 b!1094036) bm!80298))

(assert (= (and d!308242 res!485960) b!1094039))

(assert (= (and b!1094039 res!485959) b!1094034))

(declare-fun b_lambda!31073 () Bool)

(assert (=> (not b_lambda!31073) (not b!1094037)))

(declare-fun m!1246447 () Bool)

(assert (=> b!1094034 m!1246447))

(declare-fun m!1246449 () Bool)

(assert (=> d!308242 m!1246449))

(assert (=> d!308242 m!1245867))

(declare-fun m!1246451 () Bool)

(assert (=> bm!80298 m!1246451))

(declare-fun m!1246453 () Bool)

(assert (=> b!1094037 m!1246453))

(declare-fun m!1246455 () Bool)

(assert (=> b!1094039 m!1246455))

(declare-fun m!1246457 () Bool)

(assert (=> b!1094039 m!1246457))

(assert (=> b!1093752 d!308242))

(declare-fun d!308244 () Bool)

(declare-fun lt!367807 () Int)

(assert (=> d!308244 (>= lt!367807 0)))

(declare-fun e!692513 () Int)

(assert (=> d!308244 (= lt!367807 e!692513)))

(declare-fun c!185531 () Bool)

(assert (=> d!308244 (= c!185531 ((_ is Nil!10514) lt!367466))))

(assert (=> d!308244 (= (size!8134 lt!367466) lt!367807)))

(declare-fun b!1094040 () Bool)

(assert (=> b!1094040 (= e!692513 0)))

(declare-fun b!1094041 () Bool)

(assert (=> b!1094041 (= e!692513 (+ 1 (size!8134 (t!102704 lt!367466))))))

(assert (= (and d!308244 c!185531) b!1094040))

(assert (= (and d!308244 (not c!185531)) b!1094041))

(declare-fun m!1246459 () Bool)

(assert (=> b!1094041 m!1246459))

(assert (=> b!1093752 d!308244))

(declare-fun d!308246 () Bool)

(assert (=> d!308246 (= (list!3770 objs!8) (list!3772 (c!185467 objs!8)))))

(declare-fun bs!258391 () Bool)

(assert (= bs!258391 d!308246))

(declare-fun m!1246461 () Bool)

(assert (=> bs!258391 m!1246461))

(assert (=> b!1093741 d!308246))

(declare-fun d!308248 () Bool)

(assert (=> d!308248 (= (isEmpty!6668 lt!367466) ((_ is Nil!10514) lt!367466))))

(assert (=> b!1093741 d!308248))

(declare-fun d!308250 () Bool)

(declare-fun e!692516 () Bool)

(assert (=> d!308250 e!692516))

(declare-fun res!485963 () Bool)

(assert (=> d!308250 (=> res!485963 e!692516)))

(assert (=> d!308250 (= res!485963 (isEmpty!6668 lt!367466))))

(declare-fun lt!367810 () Unit!15982)

(declare-fun choose!7039 (List!10530 Int) Unit!15982)

(assert (=> d!308250 (= lt!367810 (choose!7039 lt!367466 lambda!42044))))

(assert (=> d!308250 (not (forall!2363 lt!367466 lambda!42044))))

(assert (=> d!308250 (= (lemmaNotForallFilterShorter!39 lt!367466 lambda!42044) lt!367810)))

(declare-fun b!1094044 () Bool)

(assert (=> b!1094044 (= e!692516 (< (size!8134 (filter!265 lt!367466 lambda!42044)) (size!8134 lt!367466)))))

(assert (= (and d!308250 (not res!485963)) b!1094044))

(assert (=> d!308250 m!1245855))

(declare-fun m!1246463 () Bool)

(assert (=> d!308250 m!1246463))

(declare-fun m!1246465 () Bool)

(assert (=> d!308250 m!1246465))

(assert (=> b!1094044 m!1245921))

(assert (=> b!1094044 m!1245921))

(assert (=> b!1094044 m!1245923))

(assert (=> b!1094044 m!1245867))

(assert (=> b!1093741 d!308250))

(declare-fun d!308252 () Bool)

(declare-fun lt!367813 () Int)

(assert (=> d!308252 (= lt!367813 (size!8134 (list!3770 lt!367487)))))

(declare-fun size!8136 (Conc!3217) Int)

(assert (=> d!308252 (= lt!367813 (size!8136 (c!185467 lt!367487)))))

(assert (=> d!308252 (= (size!8133 lt!367487) lt!367813)))

(declare-fun bs!258392 () Bool)

(assert (= bs!258392 d!308252))

(assert (=> bs!258392 m!1245859))

(assert (=> bs!258392 m!1245859))

(declare-fun m!1246467 () Bool)

(assert (=> bs!258392 m!1246467))

(declare-fun m!1246469 () Bool)

(assert (=> bs!258392 m!1246469))

(assert (=> b!1093741 d!308252))

(declare-fun d!308254 () Bool)

(declare-fun lt!367814 () Bool)

(assert (=> d!308254 (= lt!367814 (forall!2363 (list!3770 objs!8) lambda!42044))))

(assert (=> d!308254 (= lt!367814 (forall!2365 (c!185467 objs!8) lambda!42044))))

(assert (=> d!308254 (= (forall!2362 objs!8 lambda!42044) lt!367814)))

(declare-fun bs!258393 () Bool)

(assert (= bs!258393 d!308254))

(assert (=> bs!258393 m!1245847))

(assert (=> bs!258393 m!1245847))

(declare-fun m!1246471 () Bool)

(assert (=> bs!258393 m!1246471))

(declare-fun m!1246473 () Bool)

(assert (=> bs!258393 m!1246473))

(assert (=> b!1093741 d!308254))

(declare-fun d!308256 () Bool)

(declare-fun lt!367815 () Int)

(assert (=> d!308256 (>= lt!367815 0)))

(declare-fun e!692517 () Int)

(assert (=> d!308256 (= lt!367815 e!692517)))

(declare-fun c!185532 () Bool)

(assert (=> d!308256 (= c!185532 ((_ is Nil!10514) (filter!265 lt!367466 lambda!42044)))))

(assert (=> d!308256 (= (size!8134 (filter!265 lt!367466 lambda!42044)) lt!367815)))

(declare-fun b!1094045 () Bool)

(assert (=> b!1094045 (= e!692517 0)))

(declare-fun b!1094046 () Bool)

(assert (=> b!1094046 (= e!692517 (+ 1 (size!8134 (t!102704 (filter!265 lt!367466 lambda!42044)))))))

(assert (= (and d!308256 c!185532) b!1094045))

(assert (= (and d!308256 (not c!185532)) b!1094046))

(declare-fun m!1246475 () Bool)

(assert (=> b!1094046 m!1246475))

(assert (=> b!1093751 d!308256))

(declare-fun b!1094048 () Bool)

(declare-fun e!692520 () List!10530)

(assert (=> b!1094048 (= e!692520 Nil!10514)))

(declare-fun b!1094049 () Bool)

(declare-fun e!692519 () List!10530)

(declare-fun call!80304 () List!10530)

(assert (=> b!1094049 (= e!692519 call!80304)))

(declare-fun b!1094050 () Bool)

(assert (=> b!1094050 (= e!692520 e!692519)))

(declare-fun c!185534 () Bool)

(assert (=> b!1094050 (= c!185534 (dynLambda!4593 lambda!42044 (h!15915 lt!367466)))))

(declare-fun b!1094051 () Bool)

(assert (=> b!1094051 (= e!692519 (Cons!10514 (h!15915 lt!367466) call!80304))))

(declare-fun bm!80299 () Bool)

(assert (=> bm!80299 (= call!80304 (filter!265 (t!102704 lt!367466) lambda!42044))))

(declare-fun b!1094052 () Bool)

(declare-fun res!485964 () Bool)

(declare-fun e!692518 () Bool)

(assert (=> b!1094052 (=> (not res!485964) (not e!692518))))

(declare-fun lt!367816 () List!10530)

(assert (=> b!1094052 (= res!485964 (= ((_ map implies) (content!1516 lt!367816) (content!1516 lt!367466)) ((as const (InoxSet tuple2!11718)) true)))))

(declare-fun b!1094047 () Bool)

(assert (=> b!1094047 (= e!692518 (forall!2363 lt!367816 lambda!42044))))

(declare-fun d!308258 () Bool)

(assert (=> d!308258 e!692518))

(declare-fun res!485965 () Bool)

(assert (=> d!308258 (=> (not res!485965) (not e!692518))))

(assert (=> d!308258 (= res!485965 (<= (size!8134 lt!367816) (size!8134 lt!367466)))))

(assert (=> d!308258 (= lt!367816 e!692520)))

(declare-fun c!185533 () Bool)

(assert (=> d!308258 (= c!185533 ((_ is Nil!10514) lt!367466))))

(assert (=> d!308258 (= (filter!265 lt!367466 lambda!42044) lt!367816)))

(assert (= (and d!308258 c!185533) b!1094048))

(assert (= (and d!308258 (not c!185533)) b!1094050))

(assert (= (and b!1094050 c!185534) b!1094051))

(assert (= (and b!1094050 (not c!185534)) b!1094049))

(assert (= (or b!1094051 b!1094049) bm!80299))

(assert (= (and d!308258 res!485965) b!1094052))

(assert (= (and b!1094052 res!485964) b!1094047))

(declare-fun b_lambda!31075 () Bool)

(assert (=> (not b_lambda!31075) (not b!1094050)))

(declare-fun m!1246477 () Bool)

(assert (=> b!1094047 m!1246477))

(declare-fun m!1246479 () Bool)

(assert (=> d!308258 m!1246479))

(assert (=> d!308258 m!1245867))

(declare-fun m!1246481 () Bool)

(assert (=> bm!80299 m!1246481))

(declare-fun m!1246483 () Bool)

(assert (=> b!1094050 m!1246483))

(declare-fun m!1246485 () Bool)

(assert (=> b!1094052 m!1246485))

(assert (=> b!1094052 m!1246457))

(assert (=> b!1093751 d!308258))

(assert (=> b!1093751 d!308244))

(declare-fun d!308260 () Bool)

(declare-fun lt!367817 () Bool)

(assert (=> d!308260 (= lt!367817 (contains!1789 (list!3770 lt!367474) lt!367460))))

(assert (=> d!308260 (= lt!367817 (contains!1790 (c!185467 lt!367474) lt!367460))))

(assert (=> d!308260 (= (contains!1786 lt!367474 lt!367460) lt!367817)))

(declare-fun bs!258394 () Bool)

(assert (= bs!258394 d!308260))

(assert (=> bs!258394 m!1245917))

(assert (=> bs!258394 m!1245917))

(assert (=> bs!258394 m!1246441))

(declare-fun m!1246487 () Bool)

(assert (=> bs!258394 m!1246487))

(assert (=> b!1093740 d!308260))

(declare-fun d!308262 () Bool)

(declare-fun lt!367818 () Int)

(assert (=> d!308262 (= lt!367818 (size!8134 (list!3770 objs!8)))))

(assert (=> d!308262 (= lt!367818 (size!8136 (c!185467 objs!8)))))

(assert (=> d!308262 (= (size!8133 objs!8) lt!367818)))

(declare-fun bs!258395 () Bool)

(assert (= bs!258395 d!308262))

(assert (=> bs!258395 m!1245847))

(assert (=> bs!258395 m!1245847))

(declare-fun m!1246489 () Bool)

(assert (=> bs!258395 m!1246489))

(declare-fun m!1246491 () Bool)

(assert (=> bs!258395 m!1246491))

(assert (=> b!1093750 d!308262))

(declare-fun d!308264 () Bool)

(declare-fun lt!367819 () Bool)

(assert (=> d!308264 (= lt!367819 (forall!2363 (list!3770 objs!8) lambda!42043))))

(assert (=> d!308264 (= lt!367819 (forall!2365 (c!185467 objs!8) lambda!42043))))

(assert (=> d!308264 (= (forall!2362 objs!8 lambda!42043) lt!367819)))

(declare-fun bs!258396 () Bool)

(assert (= bs!258396 d!308264))

(assert (=> bs!258396 m!1245847))

(assert (=> bs!258396 m!1245847))

(declare-fun m!1246493 () Bool)

(assert (=> bs!258396 m!1246493))

(declare-fun m!1246495 () Bool)

(assert (=> bs!258396 m!1246495))

(assert (=> start!93622 d!308264))

(declare-fun d!308266 () Bool)

(assert (=> d!308266 (= (inv!13463 objs!8) (isBalanced!888 (c!185467 objs!8)))))

(declare-fun bs!258397 () Bool)

(assert (= bs!258397 d!308266))

(declare-fun m!1246497 () Bool)

(assert (=> bs!258397 m!1246497))

(assert (=> start!93622 d!308266))

(declare-fun d!308268 () Bool)

(assert (=> d!308268 (dynLambda!4593 lambda!42044 lt!367460)))

(declare-fun lt!367820 () Unit!15982)

(assert (=> d!308268 (= lt!367820 (choose!7038 (list!3770 lt!367487) lambda!42044 lt!367460))))

(declare-fun e!692521 () Bool)

(assert (=> d!308268 e!692521))

(declare-fun res!485966 () Bool)

(assert (=> d!308268 (=> (not res!485966) (not e!692521))))

(assert (=> d!308268 (= res!485966 (forall!2363 (list!3770 lt!367487) lambda!42044))))

(assert (=> d!308268 (= (forallContained!498 (list!3770 lt!367487) lambda!42044 lt!367460) lt!367820)))

(declare-fun b!1094053 () Bool)

(assert (=> b!1094053 (= e!692521 (contains!1789 (list!3770 lt!367487) lt!367460))))

(assert (= (and d!308268 res!485966) b!1094053))

(declare-fun b_lambda!31077 () Bool)

(assert (=> (not b_lambda!31077) (not d!308268)))

(declare-fun m!1246499 () Bool)

(assert (=> d!308268 m!1246499))

(assert (=> d!308268 m!1245859))

(declare-fun m!1246501 () Bool)

(assert (=> d!308268 m!1246501))

(assert (=> d!308268 m!1245859))

(declare-fun m!1246503 () Bool)

(assert (=> d!308268 m!1246503))

(assert (=> b!1094053 m!1245859))

(declare-fun m!1246505 () Bool)

(assert (=> b!1094053 m!1246505))

(assert (=> b!1093748 d!308268))

(declare-fun d!308270 () Bool)

(assert (=> d!308270 (= (list!3770 lt!367487) (list!3772 (c!185467 lt!367487)))))

(declare-fun bs!258398 () Bool)

(assert (= bs!258398 d!308270))

(declare-fun m!1246507 () Bool)

(assert (=> bs!258398 m!1246507))

(assert (=> b!1093748 d!308270))

(declare-fun d!308272 () Bool)

(declare-fun lt!367821 () Int)

(assert (=> d!308272 (= lt!367821 (size!8134 (list!3770 lt!367474)))))

(assert (=> d!308272 (= lt!367821 (size!8136 (c!185467 lt!367474)))))

(assert (=> d!308272 (= (size!8133 lt!367474) lt!367821)))

(declare-fun bs!258399 () Bool)

(assert (= bs!258399 d!308272))

(assert (=> bs!258399 m!1245917))

(assert (=> bs!258399 m!1245917))

(declare-fun m!1246509 () Bool)

(assert (=> bs!258399 m!1246509))

(declare-fun m!1246511 () Bool)

(assert (=> bs!258399 m!1246511))

(assert (=> b!1093747 d!308272))

(declare-fun d!308274 () Bool)

(declare-fun e!692522 () Bool)

(assert (=> d!308274 e!692522))

(declare-fun res!485967 () Bool)

(assert (=> d!308274 (=> res!485967 e!692522)))

(assert (=> d!308274 (= res!485967 (isEmpty!6668 lt!367466))))

(declare-fun lt!367822 () Unit!15982)

(assert (=> d!308274 (= lt!367822 (choose!7039 lt!367466 lambda!42046))))

(assert (=> d!308274 (not (forall!2363 lt!367466 lambda!42046))))

(assert (=> d!308274 (= (lemmaNotForallFilterShorter!39 lt!367466 lambda!42046) lt!367822)))

(declare-fun b!1094054 () Bool)

(assert (=> b!1094054 (= e!692522 (< (size!8134 (filter!265 lt!367466 lambda!42046)) (size!8134 lt!367466)))))

(assert (= (and d!308274 (not res!485967)) b!1094054))

(assert (=> d!308274 m!1245855))

(declare-fun m!1246513 () Bool)

(assert (=> d!308274 m!1246513))

(assert (=> d!308274 m!1246433))

(assert (=> b!1094054 m!1245863))

(assert (=> b!1094054 m!1245863))

(assert (=> b!1094054 m!1245865))

(assert (=> b!1094054 m!1245867))

(assert (=> b!1093747 d!308274))

(declare-fun d!308276 () Bool)

(declare-fun lt!367823 () Bool)

(assert (=> d!308276 (= lt!367823 (forall!2363 (list!3770 objs!8) lambda!42046))))

(assert (=> d!308276 (= lt!367823 (forall!2365 (c!185467 objs!8) lambda!42046))))

(assert (=> d!308276 (= (forall!2362 objs!8 lambda!42046) lt!367823)))

(declare-fun bs!258400 () Bool)

(assert (= bs!258400 d!308276))

(assert (=> bs!258400 m!1245847))

(assert (=> bs!258400 m!1245847))

(declare-fun m!1246515 () Bool)

(assert (=> bs!258400 m!1246515))

(declare-fun m!1246517 () Bool)

(assert (=> bs!258400 m!1246517))

(assert (=> b!1093747 d!308276))

(declare-fun d!308278 () Bool)

(declare-fun lt!367824 () Bool)

(assert (=> d!308278 (= lt!367824 (contains!1789 (list!3770 lt!367487) lt!367460))))

(assert (=> d!308278 (= lt!367824 (contains!1790 (c!185467 lt!367487) lt!367460))))

(assert (=> d!308278 (= (contains!1786 lt!367487 lt!367460) lt!367824)))

(declare-fun bs!258401 () Bool)

(assert (= bs!258401 d!308278))

(assert (=> bs!258401 m!1245859))

(assert (=> bs!258401 m!1245859))

(assert (=> bs!258401 m!1246505))

(declare-fun m!1246519 () Bool)

(assert (=> bs!258401 m!1246519))

(assert (=> b!1093756 d!308278))

(declare-fun d!308280 () Bool)

(declare-fun c!185537 () Bool)

(assert (=> d!308280 (= c!185537 ((_ is Node!3217) (c!185467 objs!8)))))

(declare-fun e!692527 () Bool)

(assert (=> d!308280 (= (inv!13462 (c!185467 objs!8)) e!692527)))

(declare-fun b!1094061 () Bool)

(declare-fun inv!13467 (Conc!3217) Bool)

(assert (=> b!1094061 (= e!692527 (inv!13467 (c!185467 objs!8)))))

(declare-fun b!1094062 () Bool)

(declare-fun e!692528 () Bool)

(assert (=> b!1094062 (= e!692527 e!692528)))

(declare-fun res!485970 () Bool)

(assert (=> b!1094062 (= res!485970 (not ((_ is Leaf!5121) (c!185467 objs!8))))))

(assert (=> b!1094062 (=> res!485970 e!692528)))

(declare-fun b!1094063 () Bool)

(declare-fun inv!13468 (Conc!3217) Bool)

(assert (=> b!1094063 (= e!692528 (inv!13468 (c!185467 objs!8)))))

(assert (= (and d!308280 c!185537) b!1094061))

(assert (= (and d!308280 (not c!185537)) b!1094062))

(assert (= (and b!1094062 (not res!485970)) b!1094063))

(declare-fun m!1246521 () Bool)

(assert (=> b!1094061 m!1246521))

(declare-fun m!1246523 () Bool)

(assert (=> b!1094063 m!1246523))

(assert (=> b!1093745 d!308280))

(declare-fun d!308282 () Bool)

(assert (=> d!308282 (dynLambda!4593 lambda!42044 lt!367460)))

(declare-fun lt!367825 () Unit!15982)

(assert (=> d!308282 (= lt!367825 (choose!7038 (list!3770 objs!8) lambda!42044 lt!367460))))

(declare-fun e!692529 () Bool)

(assert (=> d!308282 e!692529))

(declare-fun res!485971 () Bool)

(assert (=> d!308282 (=> (not res!485971) (not e!692529))))

(assert (=> d!308282 (= res!485971 (forall!2363 (list!3770 objs!8) lambda!42044))))

(assert (=> d!308282 (= (forallContained!498 (list!3770 objs!8) lambda!42044 lt!367460) lt!367825)))

(declare-fun b!1094064 () Bool)

(assert (=> b!1094064 (= e!692529 (contains!1789 (list!3770 objs!8) lt!367460))))

(assert (= (and d!308282 res!485971) b!1094064))

(declare-fun b_lambda!31079 () Bool)

(assert (=> (not b_lambda!31079) (not d!308282)))

(assert (=> d!308282 m!1246499))

(assert (=> d!308282 m!1245847))

(declare-fun m!1246525 () Bool)

(assert (=> d!308282 m!1246525))

(assert (=> d!308282 m!1245847))

(assert (=> d!308282 m!1246471))

(assert (=> b!1094064 m!1245847))

(assert (=> b!1094064 m!1246055))

(assert (=> b!1093755 d!308282))

(assert (=> b!1093755 d!308246))

(declare-fun b!1094075 () Bool)

(declare-fun e!692538 () Bool)

(assert (=> b!1094075 (= e!692538 true)))

(declare-fun b!1094074 () Bool)

(declare-fun e!692537 () Bool)

(assert (=> b!1094074 (= e!692537 e!692538)))

(declare-fun b!1094073 () Bool)

(declare-fun e!692536 () Bool)

(assert (=> b!1094073 (= e!692536 e!692537)))

(assert (=> b!1093766 e!692536))

(assert (= b!1094074 b!1094075))

(assert (= b!1094073 b!1094074))

(assert (= (and b!1093766 ((_ is Cons!10513) (rules!9083 (_2!6685 lt!367460)))) b!1094073))

(declare-fun order!6329 () Int)

(declare-fun order!6327 () Int)

(declare-fun dynLambda!4597 (Int Int) Int)

(declare-fun dynLambda!4598 (Int Int) Int)

(assert (=> b!1094075 (< (dynLambda!4597 order!6327 (toValue!2873 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42045))))

(declare-fun order!6331 () Int)

(declare-fun dynLambda!4599 (Int Int) Int)

(assert (=> b!1094075 (< (dynLambda!4599 order!6331 (toChars!2732 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42045))))

(declare-fun b!1094084 () Bool)

(declare-fun e!692543 () Bool)

(assert (=> b!1094084 (= e!692543 true)))

(declare-fun b!1094086 () Bool)

(declare-fun e!692544 () Bool)

(assert (=> b!1094086 (= e!692544 true)))

(declare-fun b!1094085 () Bool)

(assert (=> b!1094085 (= e!692543 e!692544)))

(assert (=> b!1093769 e!692543))

(assert (= (and b!1093769 ((_ is Node!3216) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094084))

(assert (= b!1094085 b!1094086))

(assert (= (and b!1093769 ((_ is Leaf!5120) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094085))

(declare-fun b!1094087 () Bool)

(declare-fun e!692545 () Bool)

(assert (=> b!1094087 (= e!692545 true)))

(declare-fun b!1094089 () Bool)

(declare-fun e!692546 () Bool)

(assert (=> b!1094089 (= e!692546 true)))

(declare-fun b!1094088 () Bool)

(assert (=> b!1094088 (= e!692545 e!692546)))

(assert (=> b!1093765 e!692545))

(assert (= (and b!1093765 ((_ is Node!3216) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094087))

(assert (= b!1094088 b!1094089))

(assert (= (and b!1093765 ((_ is Leaf!5120) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094088))

(declare-fun b!1094092 () Bool)

(declare-fun e!692549 () Bool)

(assert (=> b!1094092 (= e!692549 true)))

(declare-fun b!1094091 () Bool)

(declare-fun e!692548 () Bool)

(assert (=> b!1094091 (= e!692548 e!692549)))

(declare-fun b!1094090 () Bool)

(declare-fun e!692547 () Bool)

(assert (=> b!1094090 (= e!692547 e!692548)))

(assert (=> b!1093768 e!692547))

(assert (= b!1094091 b!1094092))

(assert (= b!1094090 b!1094091))

(assert (= (and b!1093768 ((_ is Cons!10513) (rules!9083 (_2!6685 lt!367460)))) b!1094090))

(assert (=> b!1094092 (< (dynLambda!4597 order!6327 (toValue!2873 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42046))))

(assert (=> b!1094092 (< (dynLambda!4599 order!6331 (toChars!2732 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42046))))

(declare-fun b!1094095 () Bool)

(declare-fun e!692552 () Bool)

(assert (=> b!1094095 (= e!692552 true)))

(declare-fun b!1094094 () Bool)

(declare-fun e!692551 () Bool)

(assert (=> b!1094094 (= e!692551 e!692552)))

(declare-fun b!1094093 () Bool)

(declare-fun e!692550 () Bool)

(assert (=> b!1094093 (= e!692550 e!692551)))

(assert (=> b!1093764 e!692550))

(assert (= b!1094094 b!1094095))

(assert (= b!1094093 b!1094094))

(assert (= (and b!1093764 ((_ is Cons!10513) (rules!9083 (_2!6685 lt!367460)))) b!1094093))

(assert (=> b!1094095 (< (dynLambda!4597 order!6327 (toValue!2873 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42044))))

(assert (=> b!1094095 (< (dynLambda!4599 order!6331 (toChars!2732 (transformation!1796 (h!15914 (rules!9083 (_2!6685 lt!367460)))))) (dynLambda!4598 order!6329 lambda!42044))))

(declare-fun tp!326588 () Bool)

(declare-fun b!1094104 () Bool)

(declare-fun tp!326586 () Bool)

(declare-fun e!692557 () Bool)

(assert (=> b!1094104 (= e!692557 (and (inv!13462 (left!9038 (c!185467 objs!8))) tp!326588 (inv!13462 (right!9368 (c!185467 objs!8))) tp!326586))))

(declare-fun b!1094106 () Bool)

(declare-fun e!692558 () Bool)

(declare-fun tp!326587 () Bool)

(assert (=> b!1094106 (= e!692558 tp!326587)))

(declare-fun b!1094105 () Bool)

(declare-fun inv!13469 (IArray!6439) Bool)

(assert (=> b!1094105 (= e!692557 (and (inv!13469 (xs!5910 (c!185467 objs!8))) e!692558))))

(assert (=> b!1093745 (= tp!326570 (and (inv!13462 (c!185467 objs!8)) e!692557))))

(assert (= (and b!1093745 ((_ is Node!3217) (c!185467 objs!8))) b!1094104))

(assert (= b!1094105 b!1094106))

(assert (= (and b!1093745 ((_ is Leaf!5121) (c!185467 objs!8))) b!1094105))

(declare-fun m!1246527 () Bool)

(assert (=> b!1094104 m!1246527))

(declare-fun m!1246529 () Bool)

(assert (=> b!1094104 m!1246529))

(declare-fun m!1246531 () Bool)

(assert (=> b!1094105 m!1246531))

(assert (=> b!1093745 m!1245913))

(declare-fun b!1094107 () Bool)

(declare-fun e!692559 () Bool)

(assert (=> b!1094107 (= e!692559 true)))

(declare-fun b!1094109 () Bool)

(declare-fun e!692560 () Bool)

(assert (=> b!1094109 (= e!692560 true)))

(declare-fun b!1094108 () Bool)

(assert (=> b!1094108 (= e!692559 e!692560)))

(assert (=> b!1093767 e!692559))

(assert (= (and b!1093767 ((_ is Node!3216) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094107))

(assert (= b!1094108 b!1094109))

(assert (= (and b!1093767 ((_ is Leaf!5120) (c!185466 (tokens!1355 (_2!6685 lt!367460))))) b!1094108))

(declare-fun b_lambda!31081 () Bool)

(assert (= b_lambda!31075 (or b!1093754 b_lambda!31081)))

(declare-fun bs!258402 () Bool)

(declare-fun d!308284 () Bool)

(assert (= bs!258402 (and d!308284 b!1093754)))

(assert (=> bs!258402 (= (dynLambda!4593 lambda!42044 (h!15915 lt!367466)) (< (_1!6685 (h!15915 lt!367466)) (_1!6685 lt!367460)))))

(assert (=> b!1094050 d!308284))

(declare-fun b_lambda!31083 () Bool)

(assert (= b_lambda!31071 (or b!1093754 b_lambda!31083)))

(declare-fun bs!258403 () Bool)

(declare-fun d!308286 () Bool)

(assert (= bs!258403 (and d!308286 b!1093754)))

(assert (=> bs!258403 (= (dynLambda!4593 lambda!42046 lt!367460) (> (_1!6685 lt!367460) (_1!6685 lt!367460)))))

(assert (=> d!308236 d!308286))

(declare-fun b_lambda!31085 () Bool)

(assert (= b_lambda!31079 (or b!1093754 b_lambda!31085)))

(declare-fun bs!258404 () Bool)

(declare-fun d!308288 () Bool)

(assert (= bs!258404 (and d!308288 b!1093754)))

(assert (=> bs!258404 (= (dynLambda!4593 lambda!42044 lt!367460) (< (_1!6685 lt!367460) (_1!6685 lt!367460)))))

(assert (=> d!308282 d!308288))

(declare-fun b_lambda!31087 () Bool)

(assert (= b_lambda!31073 (or b!1093754 b_lambda!31087)))

(declare-fun bs!258405 () Bool)

(declare-fun d!308290 () Bool)

(assert (= bs!258405 (and d!308290 b!1093754)))

(assert (=> bs!258405 (= (dynLambda!4593 lambda!42046 (h!15915 lt!367466)) (> (_1!6685 (h!15915 lt!367466)) (_1!6685 lt!367460)))))

(assert (=> b!1094037 d!308290))

(declare-fun b_lambda!31089 () Bool)

(assert (= b_lambda!31039 (or start!93622 b_lambda!31089)))

(declare-fun bs!258406 () Bool)

(declare-fun d!308292 () Bool)

(assert (= bs!258406 (and d!308292 start!93622)))

(declare-fun usesJsonRules!0 (PrintableTokens!308) Bool)

(assert (=> bs!258406 (= (dynLambda!4593 lambda!42043 (h!15915 lt!367469)) (usesJsonRules!0 (_2!6685 (h!15915 lt!367469))))))

(declare-fun m!1246533 () Bool)

(assert (=> bs!258406 m!1246533))

(assert (=> b!1093839 d!308292))

(declare-fun b_lambda!31091 () Bool)

(assert (= b_lambda!31069 (or b!1093754 b_lambda!31091)))

(assert (=> d!308234 d!308286))

(declare-fun b_lambda!31093 () Bool)

(assert (= b_lambda!31077 (or b!1093754 b_lambda!31093)))

(assert (=> d!308268 d!308288))

(declare-fun b_lambda!31095 () Bool)

(assert (= b_lambda!31035 (or start!93622 b_lambda!31095)))

(declare-fun bs!258407 () Bool)

(declare-fun d!308294 () Bool)

(assert (= bs!258407 (and d!308294 start!93622)))

(assert (=> bs!258407 (= (dynLambda!4593 lambda!42043 (h!15915 lt!367475)) (usesJsonRules!0 (_2!6685 (h!15915 lt!367475))))))

(declare-fun m!1246535 () Bool)

(assert (=> bs!258407 m!1246535))

(assert (=> b!1093835 d!308294))

(declare-fun b_lambda!31097 () Bool)

(assert (= b_lambda!31037 (or start!93622 b_lambda!31097)))

(declare-fun bs!258408 () Bool)

(declare-fun d!308296 () Bool)

(assert (= bs!258408 (and d!308296 start!93622)))

(assert (=> bs!258408 (= (dynLambda!4593 lambda!42043 (h!15915 lt!367485)) (usesJsonRules!0 (_2!6685 (h!15915 lt!367485))))))

(declare-fun m!1246537 () Bool)

(assert (=> bs!258408 m!1246537))

(assert (=> b!1093837 d!308296))

(check-sat (not b!1094006) (not d!308164) (not d!308228) (not b!1094107) (not d!308162) (not b!1094041) (not b!1094073) (not d!308250) (not d!308158) (not b!1093999) (not d!308152) (not b_lambda!31095) (not b!1094093) (not b_lambda!31087) (not b!1093829) (not b!1094063) (not d!308230) (not b!1094089) (not d!308270) (not b!1094000) (not b!1094090) (not b!1094044) (not d!308246) (not b!1093998) (not d!308282) (not d!308122) (not b!1094109) (not d!308142) (not b!1094086) (not bs!258408) (not b!1094064) (not b!1094009) (not b_lambda!31093) (not bm!80299) (not b!1093840) (not d!308236) (not d!308238) (not b_lambda!31089) (not b!1094104) (not b!1094005) (not d!308160) (not d!308258) (not b!1094084) (not d!308252) (not b!1094039) (not d!308136) (not d!308130) (not bs!258407) (not d!308266) (not b!1094047) (not b!1094015) (not b!1093836) (not b!1094061) (not b!1094053) (not b!1094034) (not d!308154) (not b!1093745) (not b_lambda!31085) (not b!1093828) (not d!308156) (not b!1094008) (not d!308274) (not d!308166) (not d!308254) (not b!1093996) (not d!308134) (not b_lambda!31081) (not b!1094087) (not d!308260) (not d!308232) (not b!1094105) (not d!308146) (not d!308144) (not b!1093825) (not d!308138) (not b!1094010) (not d!308268) (not bm!80298) (not b!1094014) (not b!1093994) (not b!1093850) (not b!1093830) (not b!1094001) (not d!308278) (not d!308276) (not d!308272) (not b!1094046) (not d!308262) (not d!308132) (not b_lambda!31097) (not b!1093838) (not b!1094106) (not d!308242) (not b_lambda!31091) (not d!308264) (not bs!258406) (not b!1094054) (not b!1093851) (not d!308234) (not b!1094007) (not b_lambda!31083) (not b!1094011) (not b!1094052) (not b!1094021))
(check-sat)
