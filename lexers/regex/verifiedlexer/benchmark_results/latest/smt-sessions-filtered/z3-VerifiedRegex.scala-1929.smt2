; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95314 () Bool)

(assert start!95314)

(declare-fun bs!259898 () Bool)

(declare-fun b!1104778 () Bool)

(assert (= bs!259898 (and b!1104778 start!95314)))

(declare-fun lambda!44204 () Int)

(declare-fun lambda!44203 () Int)

(assert (=> bs!259898 (not (= lambda!44204 lambda!44203))))

(declare-fun b!1104803 () Bool)

(declare-fun e!700098 () Bool)

(assert (=> b!1104803 (= e!700098 true)))

(declare-fun b!1104802 () Bool)

(declare-fun e!700097 () Bool)

(assert (=> b!1104802 (= e!700097 e!700098)))

(assert (=> b!1104778 e!700097))

(assert (= b!1104802 b!1104803))

(assert (= b!1104778 b!1104802))

(declare-fun lambda!44205 () Int)

(assert (=> bs!259898 (not (= lambda!44205 lambda!44203))))

(assert (=> b!1104778 (not (= lambda!44205 lambda!44204))))

(declare-fun b!1104805 () Bool)

(declare-fun e!700100 () Bool)

(assert (=> b!1104805 (= e!700100 true)))

(declare-fun b!1104804 () Bool)

(declare-fun e!700099 () Bool)

(assert (=> b!1104804 (= e!700099 e!700100)))

(assert (=> b!1104778 e!700099))

(assert (= b!1104804 b!1104805))

(assert (= b!1104778 b!1104804))

(declare-fun lambda!44206 () Int)

(assert (=> bs!259898 (not (= lambda!44206 lambda!44203))))

(assert (=> b!1104778 (not (= lambda!44206 lambda!44204))))

(assert (=> b!1104778 (not (= lambda!44206 lambda!44205))))

(declare-fun b!1104807 () Bool)

(declare-fun e!700102 () Bool)

(assert (=> b!1104807 (= e!700102 true)))

(declare-fun b!1104806 () Bool)

(declare-fun e!700101 () Bool)

(assert (=> b!1104806 (= e!700101 e!700102)))

(assert (=> b!1104778 e!700101))

(assert (= b!1104806 b!1104807))

(assert (= b!1104778 b!1104806))

(declare-fun b!1104779 () Bool)

(declare-datatypes ((Unit!16372 0))(
  ( (Unit!16373) )
))
(declare-fun e!700086 () Unit!16372)

(declare-fun Unit!16374 () Unit!16372)

(assert (=> b!1104779 (= e!700086 Unit!16374)))

(declare-fun b!1104780 () Bool)

(declare-fun e!700079 () Bool)

(declare-fun e!700090 () Bool)

(assert (=> b!1104780 (= e!700079 e!700090)))

(declare-fun res!489745 () Bool)

(assert (=> b!1104780 (=> (not res!489745) (not e!700090))))

(declare-fun lt!374425 () Bool)

(assert (=> b!1104780 (= res!489745 (not lt!374425))))

(declare-fun lt!374427 () Unit!16372)

(declare-fun e!700089 () Unit!16372)

(assert (=> b!1104780 (= lt!374427 e!700089)))

(declare-fun c!187559 () Bool)

(assert (=> b!1104780 (= c!187559 lt!374425)))

(declare-datatypes ((List!10735 0))(
  ( (Nil!10719) (Cons!10719 (h!16120 (_ BitVec 16)) (t!104839 List!10735)) )
))
(declare-datatypes ((TokenValue!1914 0))(
  ( (FloatLiteralValue!3828 (text!13843 List!10735)) (TokenValueExt!1913 (__x!7496 Int)) (Broken!9570 (value!60595 List!10735)) (Object!1929) (End!1914) (Def!1914) (Underscore!1914) (Match!1914) (Else!1914) (Error!1914) (Case!1914) (If!1914) (Extends!1914) (Abstract!1914) (Class!1914) (Val!1914) (DelimiterValue!3828 (del!1974 List!10735)) (KeywordValue!1920 (value!60596 List!10735)) (CommentValue!3828 (value!60597 List!10735)) (WhitespaceValue!3828 (value!60598 List!10735)) (IndentationValue!1914 (value!60599 List!10735)) (String!13139) (Int32!1914) (Broken!9571 (value!60600 List!10735)) (Boolean!1915) (Unit!16375) (OperatorValue!1917 (op!1974 List!10735)) (IdentifierValue!3828 (value!60601 List!10735)) (IdentifierValue!3829 (value!60602 List!10735)) (WhitespaceValue!3829 (value!60603 List!10735)) (True!3828) (False!3828) (Broken!9572 (value!60604 List!10735)) (Broken!9573 (value!60605 List!10735)) (True!3829) (RightBrace!1914) (RightBracket!1914) (Colon!1914) (Null!1914) (Comma!1914) (LeftBracket!1914) (False!3829) (LeftBrace!1914) (ImaginaryLiteralValue!1914 (text!13844 List!10735)) (StringLiteralValue!5742 (value!60606 List!10735)) (EOFValue!1914 (value!60607 List!10735)) (IdentValue!1914 (value!60608 List!10735)) (DelimiterValue!3829 (value!60609 List!10735)) (DedentValue!1914 (value!60610 List!10735)) (NewLineValue!1914 (value!60611 List!10735)) (IntegerValue!5742 (value!60612 (_ BitVec 32)) (text!13845 List!10735)) (IntegerValue!5743 (value!60613 Int) (text!13846 List!10735)) (Times!1914) (Or!1914) (Equal!1914) (Minus!1914) (Broken!9574 (value!60614 List!10735)) (And!1914) (Div!1914) (LessEqual!1914) (Mod!1914) (Concat!5031) (Not!1914) (Plus!1914) (SpaceValue!1914 (value!60615 List!10735)) (IntegerValue!5744 (value!60616 Int) (text!13847 List!10735)) (StringLiteralValue!5743 (text!13848 List!10735)) (FloatLiteralValue!3829 (text!13849 List!10735)) (BytesLiteralValue!1914 (value!60617 List!10735)) (CommentValue!3829 (value!60618 List!10735)) (StringLiteralValue!5744 (value!60619 List!10735)) (ErrorTokenValue!1914 (msg!1975 List!10735)) )
))
(declare-datatypes ((Regex!3117 0))(
  ( (ElementMatch!3117 (c!187560 (_ BitVec 16))) (Concat!5032 (regOne!6746 Regex!3117) (regTwo!6746 Regex!3117)) (EmptyExpr!3117) (Star!3117 (reg!3446 Regex!3117)) (EmptyLang!3117) (Union!3117 (regOne!6747 Regex!3117) (regTwo!6747 Regex!3117)) )
))
(declare-datatypes ((String!13140 0))(
  ( (String!13141 (value!60620 String)) )
))
(declare-datatypes ((IArray!6747 0))(
  ( (IArray!6748 (innerList!3431 List!10735)) )
))
(declare-datatypes ((Conc!3371 0))(
  ( (Node!3371 (left!9310 Conc!3371) (right!9640 Conc!3371) (csize!6972 Int) (cheight!3582 Int)) (Leaf!5301 (xs!6064 IArray!6747) (csize!6973 Int)) (Empty!3371) )
))
(declare-datatypes ((BalanceConc!6756 0))(
  ( (BalanceConc!6757 (c!187561 Conc!3371)) )
))
(declare-datatypes ((TokenValueInjection!3528 0))(
  ( (TokenValueInjection!3529 (toValue!2925 Int) (toChars!2784 Int)) )
))
(declare-datatypes ((Rule!3496 0))(
  ( (Rule!3497 (regex!1848 Regex!3117) (tag!2110 String!13140) (isSeparator!1848 Bool) (transformation!1848 TokenValueInjection!3528)) )
))
(declare-datatypes ((Token!3362 0))(
  ( (Token!3363 (value!60621 TokenValue!1914) (rule!3271 Rule!3496) (size!8336 Int) (originalCharacters!2404 List!10735)) )
))
(declare-datatypes ((List!10736 0))(
  ( (Nil!10720) (Cons!10720 (h!16121 Token!3362) (t!104840 List!10736)) )
))
(declare-datatypes ((IArray!6749 0))(
  ( (IArray!6750 (innerList!3432 List!10736)) )
))
(declare-datatypes ((Conc!3372 0))(
  ( (Node!3372 (left!9311 Conc!3372) (right!9641 Conc!3372) (csize!6974 Int) (cheight!3583 Int)) (Leaf!5302 (xs!6065 IArray!6749) (csize!6975 Int)) (Empty!3372) )
))
(declare-datatypes ((List!10737 0))(
  ( (Nil!10721) (Cons!10721 (h!16122 Rule!3496) (t!104841 List!10737)) )
))
(declare-datatypes ((BalanceConc!6758 0))(
  ( (BalanceConc!6759 (c!187562 Conc!3372)) )
))
(declare-datatypes ((PrintableTokens!412 0))(
  ( (PrintableTokens!413 (rules!9135 List!10737) (tokens!1407 BalanceConc!6758)) )
))
(declare-datatypes ((tuple2!11822 0))(
  ( (tuple2!11823 (_1!6737 Int) (_2!6737 PrintableTokens!412)) )
))
(declare-datatypes ((List!10738 0))(
  ( (Nil!10722) (Cons!10722 (h!16123 tuple2!11822) (t!104842 List!10738)) )
))
(declare-datatypes ((IArray!6751 0))(
  ( (IArray!6752 (innerList!3433 List!10738)) )
))
(declare-datatypes ((Conc!3373 0))(
  ( (Node!3373 (left!9312 Conc!3373) (right!9642 Conc!3373) (csize!6976 Int) (cheight!3584 Int)) (Leaf!5303 (xs!6066 IArray!6751) (csize!6977 Int)) (Empty!3373) )
))
(declare-datatypes ((BalanceConc!6760 0))(
  ( (BalanceConc!6761 (c!187563 Conc!3373)) )
))
(declare-fun lt!374443 () BalanceConc!6760)

(declare-fun lt!374418 () tuple2!11822)

(declare-fun contains!1927 (BalanceConc!6760 tuple2!11822) Bool)

(assert (=> b!1104780 (= lt!374425 (contains!1927 lt!374443 lt!374418))))

(declare-fun b!1104781 () Bool)

(declare-fun err!2943 () Unit!16372)

(assert (=> b!1104781 (= e!700089 err!2943)))

(declare-fun lt!374431 () Unit!16372)

(declare-fun forallContained!542 (List!10738 Int tuple2!11822) Unit!16372)

(declare-fun list!3872 (BalanceConc!6760) List!10738)

(assert (=> b!1104781 (= lt!374431 (forallContained!542 (list!3872 lt!374443) lambda!44204 lt!374418))))

(assert (=> b!1104781 true))

(declare-fun b!1104782 () Bool)

(declare-fun e!700083 () Bool)

(declare-fun e!700081 () Bool)

(assert (=> b!1104782 (= e!700083 e!700081)))

(declare-fun res!489749 () Bool)

(assert (=> b!1104782 (=> res!489749 e!700081)))

(declare-fun lt!374434 () BalanceConc!6760)

(declare-fun lt!374441 () Int)

(declare-fun size!8337 (BalanceConc!6760) Int)

(assert (=> b!1104782 (= res!489749 (>= (size!8337 lt!374434) lt!374441))))

(declare-fun e!700087 () Bool)

(assert (=> b!1104782 e!700087))

(declare-fun res!489744 () Bool)

(assert (=> b!1104782 (=> res!489744 e!700087)))

(declare-fun lt!374428 () Bool)

(assert (=> b!1104782 (= res!489744 lt!374428)))

(declare-fun lt!374421 () Unit!16372)

(declare-fun lt!374440 () List!10738)

(declare-fun lemmaNotForallFilterShorter!75 (List!10738 Int) Unit!16372)

(assert (=> b!1104782 (= lt!374421 (lemmaNotForallFilterShorter!75 lt!374440 lambda!44206))))

(declare-fun lt!374429 () Unit!16372)

(declare-fun e!700084 () Unit!16372)

(assert (=> b!1104782 (= lt!374429 e!700084)))

(declare-fun c!187558 () Bool)

(declare-fun objs!8 () BalanceConc!6760)

(declare-fun forall!2517 (BalanceConc!6760 Int) Bool)

(assert (=> b!1104782 (= c!187558 (forall!2517 objs!8 lambda!44206))))

(declare-fun b!1104783 () Bool)

(declare-fun e!700091 () Bool)

(declare-fun tp!327290 () Bool)

(declare-fun inv!13787 (Conc!3373) Bool)

(assert (=> b!1104783 (= e!700091 (and (inv!13787 (c!187563 objs!8)) tp!327290))))

(declare-fun b!1104784 () Bool)

(declare-fun e!700082 () Unit!16372)

(declare-fun Unit!16376 () Unit!16372)

(assert (=> b!1104784 (= e!700082 Unit!16376)))

(declare-fun b!1104785 () Bool)

(declare-fun err!2944 () Unit!16372)

(assert (=> b!1104785 (= e!700084 err!2944)))

(declare-fun lt!374435 () Unit!16372)

(assert (=> b!1104785 (= lt!374435 (forallContained!542 lt!374440 lambda!44206 lt!374418))))

(assert (=> b!1104785 true))

(declare-fun b!1104786 () Bool)

(declare-fun err!2945 () Unit!16372)

(assert (=> b!1104786 (= e!700086 err!2945)))

(declare-fun lt!374416 () Unit!16372)

(assert (=> b!1104786 (= lt!374416 (forallContained!542 (list!3872 lt!374434) lambda!44206 lt!374418))))

(assert (=> b!1104786 true))

(declare-fun res!489747 () Bool)

(declare-fun e!700092 () Bool)

(assert (=> start!95314 (=> (not res!489747) (not e!700092))))

(assert (=> start!95314 (= res!489747 (forall!2517 objs!8 lambda!44203))))

(assert (=> start!95314 e!700092))

(declare-fun inv!13788 (BalanceConc!6760) Bool)

(assert (=> start!95314 (and (inv!13788 objs!8) e!700091)))

(declare-fun e!700088 () Bool)

(assert (=> b!1104778 (= e!700088 e!700079)))

(declare-fun res!489751 () Bool)

(assert (=> b!1104778 (=> (not res!489751) (not e!700079))))

(assert (=> b!1104778 (= res!489751 (contains!1927 objs!8 lt!374418))))

(declare-fun filter!405 (BalanceConc!6760 Int) BalanceConc!6760)

(assert (=> b!1104778 (= lt!374434 (filter!405 objs!8 lambda!44206))))

(declare-fun lt!374417 () BalanceConc!6760)

(assert (=> b!1104778 (= lt!374417 (filter!405 objs!8 lambda!44205))))

(assert (=> b!1104778 (= lt!374443 (filter!405 objs!8 lambda!44204))))

(declare-fun apply!2199 (BalanceConc!6760 Int) tuple2!11822)

(assert (=> b!1104778 (= lt!374418 (apply!2199 objs!8 (ite (>= lt!374441 0) (div lt!374441 2) (- (div (- lt!374441) 2)))))))

(declare-fun b!1104787 () Bool)

(declare-fun e!700080 () Bool)

(declare-fun size!8338 (List!10738) Int)

(declare-fun filter!406 (List!10738 Int) List!10738)

(assert (=> b!1104787 (= e!700080 (< (size!8338 (filter!406 lt!374440 lambda!44204)) (size!8338 lt!374440)))))

(declare-fun b!1104788 () Bool)

(assert (=> b!1104788 (= e!700081 true)))

(declare-fun lt!374437 () Unit!16372)

(declare-fun lemmaConcatPreservesForall!94 (List!10738 List!10738 Int) Unit!16372)

(declare-fun sortObjectsByID!0 (BalanceConc!6760) BalanceConc!6760)

(assert (=> b!1104788 (= lt!374437 (lemmaConcatPreservesForall!94 (list!3872 (sortObjectsByID!0 lt!374443)) (list!3872 lt!374417) lambda!44203))))

(declare-fun lt!374439 () List!10738)

(declare-fun forall!2518 (List!10738 Int) Bool)

(assert (=> b!1104788 (forall!2518 lt!374439 lambda!44203)))

(declare-fun lt!374426 () Unit!16372)

(declare-fun lemmaForallSubseq!61 (List!10738 List!10738 Int) Unit!16372)

(assert (=> b!1104788 (= lt!374426 (lemmaForallSubseq!61 lt!374439 lt!374440 lambda!44203))))

(assert (=> b!1104788 (= lt!374439 (list!3872 (filter!405 objs!8 lambda!44206)))))

(declare-fun lt!374424 () List!10738)

(assert (=> b!1104788 (forall!2518 lt!374424 lambda!44203)))

(declare-fun lt!374436 () Unit!16372)

(assert (=> b!1104788 (= lt!374436 (lemmaForallSubseq!61 lt!374424 lt!374440 lambda!44203))))

(assert (=> b!1104788 (= lt!374424 (list!3872 (filter!405 objs!8 lambda!44205)))))

(declare-fun lt!374419 () List!10738)

(assert (=> b!1104788 (forall!2518 lt!374419 lambda!44203)))

(declare-fun lt!374415 () Unit!16372)

(assert (=> b!1104788 (= lt!374415 (lemmaForallSubseq!61 lt!374419 lt!374440 lambda!44203))))

(assert (=> b!1104788 (= lt!374419 (list!3872 (filter!405 objs!8 lambda!44204)))))

(declare-fun lt!374442 () Unit!16372)

(declare-fun filterSubseq!57 (List!10738 Int) Unit!16372)

(assert (=> b!1104788 (= lt!374442 (filterSubseq!57 lt!374440 lambda!44206))))

(declare-fun lt!374422 () Unit!16372)

(assert (=> b!1104788 (= lt!374422 (filterSubseq!57 lt!374440 lambda!44205))))

(declare-fun lt!374438 () Unit!16372)

(assert (=> b!1104788 (= lt!374438 (filterSubseq!57 lt!374440 lambda!44204))))

(declare-fun b!1104789 () Bool)

(assert (=> b!1104789 (= e!700092 e!700088)))

(declare-fun res!489750 () Bool)

(assert (=> b!1104789 (=> (not res!489750) (not e!700088))))

(assert (=> b!1104789 (= res!489750 (> lt!374441 1))))

(assert (=> b!1104789 (= lt!374441 (size!8337 objs!8))))

(declare-fun b!1104790 () Bool)

(declare-fun Unit!16377 () Unit!16372)

(assert (=> b!1104790 (= e!700089 Unit!16377)))

(declare-fun b!1104791 () Bool)

(declare-fun err!2942 () Unit!16372)

(assert (=> b!1104791 (= e!700082 err!2942)))

(declare-fun lt!374433 () Unit!16372)

(assert (=> b!1104791 (= lt!374433 (forallContained!542 (list!3872 objs!8) lambda!44204 lt!374418))))

(assert (=> b!1104791 true))

(declare-fun b!1104792 () Bool)

(declare-fun e!700085 () Bool)

(assert (=> b!1104792 (= e!700090 (not e!700085))))

(declare-fun res!489748 () Bool)

(assert (=> b!1104792 (=> res!489748 e!700085)))

(assert (=> b!1104792 (= res!489748 (>= (size!8337 lt!374443) lt!374441))))

(assert (=> b!1104792 e!700080))

(declare-fun res!489743 () Bool)

(assert (=> b!1104792 (=> res!489743 e!700080)))

(assert (=> b!1104792 (= res!489743 lt!374428)))

(declare-fun isEmpty!6713 (List!10738) Bool)

(assert (=> b!1104792 (= lt!374428 (isEmpty!6713 lt!374440))))

(declare-fun lt!374423 () Unit!16372)

(assert (=> b!1104792 (= lt!374423 (lemmaNotForallFilterShorter!75 lt!374440 lambda!44204))))

(assert (=> b!1104792 (= lt!374440 (list!3872 objs!8))))

(declare-fun lt!374430 () Unit!16372)

(assert (=> b!1104792 (= lt!374430 e!700082)))

(declare-fun c!187557 () Bool)

(assert (=> b!1104792 (= c!187557 (forall!2517 objs!8 lambda!44204))))

(declare-fun b!1104793 () Bool)

(declare-fun Unit!16378 () Unit!16372)

(assert (=> b!1104793 (= e!700084 Unit!16378)))

(declare-fun b!1104794 () Bool)

(assert (=> b!1104794 (= e!700087 (< (size!8338 (filter!406 lt!374440 lambda!44206)) (size!8338 lt!374440)))))

(declare-fun b!1104795 () Bool)

(assert (=> b!1104795 (= e!700085 e!700083)))

(declare-fun res!489746 () Bool)

(assert (=> b!1104795 (=> res!489746 e!700083)))

(declare-fun lt!374432 () Bool)

(assert (=> b!1104795 (= res!489746 lt!374432)))

(declare-fun lt!374420 () Unit!16372)

(assert (=> b!1104795 (= lt!374420 e!700086)))

(declare-fun c!187556 () Bool)

(assert (=> b!1104795 (= c!187556 lt!374432)))

(assert (=> b!1104795 (= lt!374432 (contains!1927 lt!374434 lt!374418))))

(assert (= (and start!95314 res!489747) b!1104789))

(assert (= (and b!1104789 res!489750) b!1104778))

(assert (= (and b!1104778 res!489751) b!1104780))

(assert (= (and b!1104780 c!187559) b!1104781))

(assert (= (and b!1104780 (not c!187559)) b!1104790))

(assert (= (and b!1104780 res!489745) b!1104792))

(assert (= (and b!1104792 c!187557) b!1104791))

(assert (= (and b!1104792 (not c!187557)) b!1104784))

(assert (= (and b!1104792 (not res!489743)) b!1104787))

(assert (= (and b!1104792 (not res!489748)) b!1104795))

(assert (= (and b!1104795 c!187556) b!1104786))

(assert (= (and b!1104795 (not c!187556)) b!1104779))

(assert (= (and b!1104795 (not res!489746)) b!1104782))

(assert (= (and b!1104782 c!187558) b!1104785))

(assert (= (and b!1104782 (not c!187558)) b!1104793))

(assert (= (and b!1104782 (not res!489744)) b!1104794))

(assert (= (and b!1104782 (not res!489749)) b!1104788))

(assert (= start!95314 b!1104783))

(declare-fun m!1261539 () Bool)

(assert (=> b!1104786 m!1261539))

(assert (=> b!1104786 m!1261539))

(declare-fun m!1261541 () Bool)

(assert (=> b!1104786 m!1261541))

(declare-fun m!1261543 () Bool)

(assert (=> b!1104780 m!1261543))

(declare-fun m!1261545 () Bool)

(assert (=> b!1104791 m!1261545))

(assert (=> b!1104791 m!1261545))

(declare-fun m!1261547 () Bool)

(assert (=> b!1104791 m!1261547))

(declare-fun m!1261549 () Bool)

(assert (=> b!1104781 m!1261549))

(assert (=> b!1104781 m!1261549))

(declare-fun m!1261551 () Bool)

(assert (=> b!1104781 m!1261551))

(declare-fun m!1261553 () Bool)

(assert (=> b!1104789 m!1261553))

(declare-fun m!1261555 () Bool)

(assert (=> start!95314 m!1261555))

(declare-fun m!1261557 () Bool)

(assert (=> start!95314 m!1261557))

(declare-fun m!1261559 () Bool)

(assert (=> b!1104782 m!1261559))

(declare-fun m!1261561 () Bool)

(assert (=> b!1104782 m!1261561))

(declare-fun m!1261563 () Bool)

(assert (=> b!1104782 m!1261563))

(declare-fun m!1261565 () Bool)

(assert (=> b!1104778 m!1261565))

(declare-fun m!1261567 () Bool)

(assert (=> b!1104778 m!1261567))

(declare-fun m!1261569 () Bool)

(assert (=> b!1104778 m!1261569))

(declare-fun m!1261571 () Bool)

(assert (=> b!1104778 m!1261571))

(declare-fun m!1261573 () Bool)

(assert (=> b!1104778 m!1261573))

(declare-fun m!1261575 () Bool)

(assert (=> b!1104783 m!1261575))

(declare-fun m!1261577 () Bool)

(assert (=> b!1104794 m!1261577))

(assert (=> b!1104794 m!1261577))

(declare-fun m!1261579 () Bool)

(assert (=> b!1104794 m!1261579))

(declare-fun m!1261581 () Bool)

(assert (=> b!1104794 m!1261581))

(declare-fun m!1261583 () Bool)

(assert (=> b!1104795 m!1261583))

(declare-fun m!1261585 () Bool)

(assert (=> b!1104787 m!1261585))

(assert (=> b!1104787 m!1261585))

(declare-fun m!1261587 () Bool)

(assert (=> b!1104787 m!1261587))

(assert (=> b!1104787 m!1261581))

(assert (=> b!1104792 m!1261545))

(declare-fun m!1261589 () Bool)

(assert (=> b!1104792 m!1261589))

(declare-fun m!1261591 () Bool)

(assert (=> b!1104792 m!1261591))

(declare-fun m!1261593 () Bool)

(assert (=> b!1104792 m!1261593))

(declare-fun m!1261595 () Bool)

(assert (=> b!1104792 m!1261595))

(declare-fun m!1261597 () Bool)

(assert (=> b!1104785 m!1261597))

(assert (=> b!1104788 m!1261565))

(declare-fun m!1261599 () Bool)

(assert (=> b!1104788 m!1261599))

(assert (=> b!1104788 m!1261571))

(declare-fun m!1261601 () Bool)

(assert (=> b!1104788 m!1261601))

(declare-fun m!1261603 () Bool)

(assert (=> b!1104788 m!1261603))

(declare-fun m!1261605 () Bool)

(assert (=> b!1104788 m!1261605))

(declare-fun m!1261607 () Bool)

(assert (=> b!1104788 m!1261607))

(declare-fun m!1261609 () Bool)

(assert (=> b!1104788 m!1261609))

(declare-fun m!1261611 () Bool)

(assert (=> b!1104788 m!1261611))

(declare-fun m!1261613 () Bool)

(assert (=> b!1104788 m!1261613))

(assert (=> b!1104788 m!1261567))

(declare-fun m!1261615 () Bool)

(assert (=> b!1104788 m!1261615))

(declare-fun m!1261617 () Bool)

(assert (=> b!1104788 m!1261617))

(declare-fun m!1261619 () Bool)

(assert (=> b!1104788 m!1261619))

(declare-fun m!1261621 () Bool)

(assert (=> b!1104788 m!1261621))

(declare-fun m!1261623 () Bool)

(assert (=> b!1104788 m!1261623))

(assert (=> b!1104788 m!1261567))

(assert (=> b!1104788 m!1261565))

(declare-fun m!1261625 () Bool)

(assert (=> b!1104788 m!1261625))

(assert (=> b!1104788 m!1261571))

(assert (=> b!1104788 m!1261617))

(declare-fun m!1261627 () Bool)

(assert (=> b!1104788 m!1261627))

(assert (=> b!1104788 m!1261619))

(assert (=> b!1104788 m!1261609))

(declare-fun m!1261629 () Bool)

(assert (=> b!1104788 m!1261629))

(check-sat (not b!1104782) (not b!1104794) (not b!1104795) (not b!1104780) (not b!1104783) (not b!1104806) (not b!1104807) (not b!1104778) (not b!1104789) (not b!1104791) (not start!95314) (not b!1104804) (not b!1104788) (not b!1104802) (not b!1104787) (not b!1104786) (not b!1104792) (not b!1104781) (not b!1104785) (not b!1104805) (not b!1104803))
(check-sat)
