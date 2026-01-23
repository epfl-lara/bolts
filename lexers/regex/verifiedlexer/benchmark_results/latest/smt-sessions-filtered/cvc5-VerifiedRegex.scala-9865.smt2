; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!516782 () Bool)

(assert start!516782)

(declare-fun b!4921872 () Bool)

(declare-fun e!3075639 () Bool)

(declare-datatypes ((C!26942 0))(
  ( (C!26943 (val!22805 Int)) )
))
(declare-datatypes ((List!56795 0))(
  ( (Nil!56671) (Cons!56671 (h!63119 C!26942) (t!367233 List!56795)) )
))
(declare-datatypes ((IArray!29791 0))(
  ( (IArray!29792 (innerList!14953 List!56795)) )
))
(declare-datatypes ((Conc!14865 0))(
  ( (Node!14865 (left!41320 Conc!14865) (right!41650 Conc!14865) (csize!29960 Int) (cheight!15076 Int)) (Leaf!24731 (xs!18185 IArray!29791) (csize!29961 Int)) (Empty!14865) )
))
(declare-datatypes ((BalanceConc!29160 0))(
  ( (BalanceConc!29161 (c!837631 Conc!14865)) )
))
(declare-fun input!5492 () BalanceConc!29160)

(declare-fun tp!1383090 () Bool)

(declare-fun inv!73421 (Conc!14865) Bool)

(assert (=> b!4921872 (= e!3075639 (and (inv!73421 (c!837631 input!5492)) tp!1383090))))

(declare-fun setIsEmpty!27487 () Bool)

(declare-fun setRes!27487 () Bool)

(assert (=> setIsEmpty!27487 setRes!27487))

(declare-fun res!2101311 () Bool)

(declare-fun e!3075641 () Bool)

(assert (=> start!516782 (=> (not res!2101311) (not e!3075641))))

(declare-fun lt!2023301 () List!56795)

(declare-fun ++!12315 (List!56795 List!56795) List!56795)

(assert (=> start!516782 (= res!2101311 (= (++!12315 Nil!56671 lt!2023301) lt!2023301))))

(declare-fun lt!2023297 () Int)

(declare-datatypes ((Regex!13366 0))(
  ( (ElementMatch!13366 (c!837632 C!26942)) (Concat!21939 (regOne!27244 Regex!13366) (regTwo!27244 Regex!13366)) (EmptyExpr!13366) (Star!13366 (reg!13695 Regex!13366)) (EmptyLang!13366) (Union!13366 (regOne!27245 Regex!13366) (regTwo!27245 Regex!13366)) )
))
(declare-datatypes ((List!56796 0))(
  ( (Nil!56672) (Cons!56672 (h!63120 Regex!13366) (t!367234 List!56796)) )
))
(declare-datatypes ((Context!6016 0))(
  ( (Context!6017 (exprs!3508 List!56796)) )
))
(declare-fun z!3559 () (Set Context!6016))

(declare-datatypes ((tuple2!61132 0))(
  ( (tuple2!61133 (_1!33869 List!56795) (_2!33869 List!56795)) )
))
(declare-fun lt!2023299 () tuple2!61132)

(declare-fun findLongestMatchInnerZipper!51 ((Set Context!6016) List!56795 Int List!56795 List!56795 Int) tuple2!61132)

(assert (=> start!516782 (= lt!2023299 (findLongestMatchInnerZipper!51 z!3559 Nil!56671 0 lt!2023301 lt!2023301 lt!2023297))))

(declare-fun lt!2023300 () List!56795)

(declare-datatypes ((tuple2!61134 0))(
  ( (tuple2!61135 (_1!33870 BalanceConc!29160) (_2!33870 BalanceConc!29160)) )
))
(declare-fun lt!2023298 () tuple2!61134)

(declare-fun list!17936 (BalanceConc!29160) List!56795)

(assert (=> start!516782 (= lt!2023300 (list!17936 (_2!33870 lt!2023298)))))

(declare-fun lt!2023296 () List!56795)

(assert (=> start!516782 (= lt!2023296 (list!17936 (_1!33870 lt!2023298)))))

(declare-fun splitAt!258 (BalanceConc!29160 Int) tuple2!61134)

(declare-fun findLongestMatchInnerZipperFast!78 ((Set Context!6016) List!56795 Int List!56795 BalanceConc!29160 Int) Int)

(assert (=> start!516782 (= lt!2023298 (splitAt!258 input!5492 (findLongestMatchInnerZipperFast!78 z!3559 Nil!56671 0 lt!2023301 input!5492 lt!2023297)))))

(declare-fun size!37457 (BalanceConc!29160) Int)

(assert (=> start!516782 (= lt!2023297 (size!37457 input!5492))))

(assert (=> start!516782 (= lt!2023301 (list!17936 input!5492))))

(assert (=> start!516782 e!3075641))

(declare-fun inv!73422 (BalanceConc!29160) Bool)

(assert (=> start!516782 (and (inv!73422 input!5492) e!3075639)))

(declare-fun condSetEmpty!27487 () Bool)

(assert (=> start!516782 (= condSetEmpty!27487 (= z!3559 (as set.empty (Set Context!6016))))))

(assert (=> start!516782 setRes!27487))

(declare-fun b!4921873 () Bool)

(declare-fun res!2101312 () Bool)

(assert (=> b!4921873 (=> (not res!2101312) (not e!3075641))))

(declare-fun size!37458 (List!56795) Int)

(assert (=> b!4921873 (= res!2101312 (= 0 (size!37458 Nil!56671)))))

(declare-fun b!4921874 () Bool)

(declare-fun e!3075640 () Bool)

(declare-fun tp!1383089 () Bool)

(assert (=> b!4921874 (= e!3075640 tp!1383089)))

(declare-fun b!4921875 () Bool)

(assert (=> b!4921875 (= e!3075641 (not (= lt!2023297 (size!37458 lt!2023301))))))

(declare-fun tp!1383088 () Bool)

(declare-fun setElem!27487 () Context!6016)

(declare-fun setNonEmpty!27487 () Bool)

(declare-fun inv!73423 (Context!6016) Bool)

(assert (=> setNonEmpty!27487 (= setRes!27487 (and tp!1383088 (inv!73423 setElem!27487) e!3075640))))

(declare-fun setRest!27487 () (Set Context!6016))

(assert (=> setNonEmpty!27487 (= z!3559 (set.union (set.insert setElem!27487 (as set.empty (Set Context!6016))) setRest!27487))))

(assert (= (and start!516782 res!2101311) b!4921873))

(assert (= (and b!4921873 res!2101312) b!4921875))

(assert (= start!516782 b!4921872))

(assert (= (and start!516782 condSetEmpty!27487) setIsEmpty!27487))

(assert (= (and start!516782 (not condSetEmpty!27487)) setNonEmpty!27487))

(assert (= setNonEmpty!27487 b!4921874))

(declare-fun m!5936700 () Bool)

(assert (=> setNonEmpty!27487 m!5936700))

(declare-fun m!5936702 () Bool)

(assert (=> b!4921875 m!5936702))

(declare-fun m!5936704 () Bool)

(assert (=> b!4921873 m!5936704))

(declare-fun m!5936706 () Bool)

(assert (=> b!4921872 m!5936706))

(declare-fun m!5936708 () Bool)

(assert (=> start!516782 m!5936708))

(declare-fun m!5936710 () Bool)

(assert (=> start!516782 m!5936710))

(declare-fun m!5936712 () Bool)

(assert (=> start!516782 m!5936712))

(declare-fun m!5936714 () Bool)

(assert (=> start!516782 m!5936714))

(declare-fun m!5936716 () Bool)

(assert (=> start!516782 m!5936716))

(declare-fun m!5936718 () Bool)

(assert (=> start!516782 m!5936718))

(declare-fun m!5936720 () Bool)

(assert (=> start!516782 m!5936720))

(declare-fun m!5936722 () Bool)

(assert (=> start!516782 m!5936722))

(assert (=> start!516782 m!5936710))

(declare-fun m!5936724 () Bool)

(assert (=> start!516782 m!5936724))

(push 1)

(assert (not b!4921873))

(assert (not b!4921874))

(assert (not setNonEmpty!27487))

(assert (not b!4921872))

(assert (not start!516782))

(assert (not b!4921875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1583238 () Bool)

(declare-fun lambda!245109 () Int)

(declare-fun forall!13127 (List!56796 Int) Bool)

(assert (=> d!1583238 (= (inv!73423 setElem!27487) (forall!13127 (exprs!3508 setElem!27487) lambda!245109))))

(declare-fun bs!1179191 () Bool)

(assert (= bs!1179191 d!1583238))

(declare-fun m!5936834 () Bool)

(assert (=> bs!1179191 m!5936834))

(assert (=> setNonEmpty!27487 d!1583238))

(declare-fun d!1583254 () Bool)

(declare-fun c!837661 () Bool)

(assert (=> d!1583254 (= c!837661 (is-Node!14865 (c!837631 input!5492)))))

(declare-fun e!3075691 () Bool)

(assert (=> d!1583254 (= (inv!73421 (c!837631 input!5492)) e!3075691)))

(declare-fun b!4921960 () Bool)

(declare-fun inv!73427 (Conc!14865) Bool)

(assert (=> b!4921960 (= e!3075691 (inv!73427 (c!837631 input!5492)))))

(declare-fun b!4921961 () Bool)

(declare-fun e!3075692 () Bool)

(assert (=> b!4921961 (= e!3075691 e!3075692)))

(declare-fun res!2101339 () Bool)

(assert (=> b!4921961 (= res!2101339 (not (is-Leaf!24731 (c!837631 input!5492))))))

(assert (=> b!4921961 (=> res!2101339 e!3075692)))

(declare-fun b!4921962 () Bool)

(declare-fun inv!73428 (Conc!14865) Bool)

(assert (=> b!4921962 (= e!3075692 (inv!73428 (c!837631 input!5492)))))

(assert (= (and d!1583254 c!837661) b!4921960))

(assert (= (and d!1583254 (not c!837661)) b!4921961))

(assert (= (and b!4921961 (not res!2101339)) b!4921962))

(declare-fun m!5936836 () Bool)

(assert (=> b!4921960 m!5936836))

(declare-fun m!5936838 () Bool)

(assert (=> b!4921962 m!5936838))

(assert (=> b!4921872 d!1583254))

(declare-fun d!1583256 () Bool)

(declare-fun list!17938 (Conc!14865) List!56795)

(assert (=> d!1583256 (= (list!17936 (_1!33870 lt!2023298)) (list!17938 (c!837631 (_1!33870 lt!2023298))))))

(declare-fun bs!1179192 () Bool)

(assert (= bs!1179192 d!1583256))

(declare-fun m!5936840 () Bool)

(assert (=> bs!1179192 m!5936840))

(assert (=> start!516782 d!1583256))

(declare-fun b!4921973 () Bool)

(declare-fun res!2101345 () Bool)

(declare-fun e!3075697 () Bool)

(assert (=> b!4921973 (=> (not res!2101345) (not e!3075697))))

(declare-fun lt!2023412 () List!56795)

(assert (=> b!4921973 (= res!2101345 (= (size!37458 lt!2023412) (+ (size!37458 Nil!56671) (size!37458 lt!2023301))))))

(declare-fun b!4921974 () Bool)

(assert (=> b!4921974 (= e!3075697 (or (not (= lt!2023301 Nil!56671)) (= lt!2023412 Nil!56671)))))

(declare-fun d!1583258 () Bool)

(assert (=> d!1583258 e!3075697))

(declare-fun res!2101344 () Bool)

(assert (=> d!1583258 (=> (not res!2101344) (not e!3075697))))

(declare-fun content!10064 (List!56795) (Set C!26942))

(assert (=> d!1583258 (= res!2101344 (= (content!10064 lt!2023412) (set.union (content!10064 Nil!56671) (content!10064 lt!2023301))))))

(declare-fun e!3075698 () List!56795)

(assert (=> d!1583258 (= lt!2023412 e!3075698)))

(declare-fun c!837664 () Bool)

(assert (=> d!1583258 (= c!837664 (is-Nil!56671 Nil!56671))))

(assert (=> d!1583258 (= (++!12315 Nil!56671 lt!2023301) lt!2023412)))

(declare-fun b!4921971 () Bool)

(assert (=> b!4921971 (= e!3075698 lt!2023301)))

(declare-fun b!4921972 () Bool)

(assert (=> b!4921972 (= e!3075698 (Cons!56671 (h!63119 Nil!56671) (++!12315 (t!367233 Nil!56671) lt!2023301)))))

(assert (= (and d!1583258 c!837664) b!4921971))

(assert (= (and d!1583258 (not c!837664)) b!4921972))

(assert (= (and d!1583258 res!2101344) b!4921973))

(assert (= (and b!4921973 res!2101345) b!4921974))

(declare-fun m!5936842 () Bool)

(assert (=> b!4921973 m!5936842))

(assert (=> b!4921973 m!5936704))

(assert (=> b!4921973 m!5936702))

(declare-fun m!5936844 () Bool)

(assert (=> d!1583258 m!5936844))

(declare-fun m!5936846 () Bool)

(assert (=> d!1583258 m!5936846))

(declare-fun m!5936848 () Bool)

(assert (=> d!1583258 m!5936848))

(declare-fun m!5936850 () Bool)

(assert (=> b!4921972 m!5936850))

(assert (=> start!516782 d!1583258))

(declare-fun bm!342702 () Bool)

(declare-fun call!342713 () List!56795)

(declare-fun tail!9662 (List!56795) List!56795)

(assert (=> bm!342702 (= call!342713 (tail!9662 lt!2023301))))

(declare-fun b!4922003 () Bool)

(declare-fun e!3075715 () Bool)

(declare-fun lt!2023471 () tuple2!61132)

(assert (=> b!4922003 (= e!3075715 (>= (size!37458 (_1!33869 lt!2023471)) (size!37458 Nil!56671)))))

(declare-fun bm!342703 () Bool)

(declare-fun call!342707 () Bool)

(declare-fun isPrefix!4956 (List!56795 List!56795) Bool)

(assert (=> bm!342703 (= call!342707 (isPrefix!4956 lt!2023301 lt!2023301))))

(declare-fun b!4922004 () Bool)

(declare-fun e!3075718 () tuple2!61132)

(declare-fun lt!2023502 () tuple2!61132)

(assert (=> b!4922004 (= e!3075718 lt!2023502)))

(declare-fun b!4922005 () Bool)

(declare-datatypes ((Unit!147097 0))(
  ( (Unit!147098) )
))
(declare-fun e!3075721 () Unit!147097)

(declare-fun Unit!147099 () Unit!147097)

(assert (=> b!4922005 (= e!3075721 Unit!147099)))

(declare-fun lt!2023477 () Unit!147097)

(declare-fun call!342710 () Unit!147097)

(assert (=> b!4922005 (= lt!2023477 call!342710)))

(assert (=> b!4922005 call!342707))

(declare-fun lt!2023501 () Unit!147097)

(assert (=> b!4922005 (= lt!2023501 lt!2023477)))

(declare-fun lt!2023475 () Unit!147097)

(declare-fun call!342712 () Unit!147097)

(assert (=> b!4922005 (= lt!2023475 call!342712)))

(assert (=> b!4922005 (= lt!2023301 Nil!56671)))

(declare-fun lt!2023481 () Unit!147097)

(assert (=> b!4922005 (= lt!2023481 lt!2023475)))

(assert (=> b!4922005 false))

(declare-fun call!342714 () (Set Context!6016))

(declare-fun call!342711 () tuple2!61132)

(declare-fun lt!2023493 () List!56795)

(declare-fun bm!342704 () Bool)

(assert (=> bm!342704 (= call!342711 (findLongestMatchInnerZipper!51 call!342714 lt!2023493 (+ 0 1) call!342713 lt!2023301 lt!2023297))))

(declare-fun b!4922006 () Bool)

(declare-fun e!3075719 () tuple2!61132)

(declare-fun e!3075720 () tuple2!61132)

(assert (=> b!4922006 (= e!3075719 e!3075720)))

(declare-fun c!837678 () Bool)

(assert (=> b!4922006 (= c!837678 (= 0 lt!2023297))))

(declare-fun bm!342705 () Bool)

(declare-fun lemmaIsPrefixRefl!3352 (List!56795 List!56795) Unit!147097)

(assert (=> bm!342705 (= call!342710 (lemmaIsPrefixRefl!3352 lt!2023301 lt!2023301))))

(declare-fun b!4922007 () Bool)

(declare-fun c!837680 () Bool)

(declare-fun call!342708 () Bool)

(assert (=> b!4922007 (= c!837680 call!342708)))

(declare-fun lt!2023482 () Unit!147097)

(declare-fun lt!2023494 () Unit!147097)

(assert (=> b!4922007 (= lt!2023482 lt!2023494)))

(declare-fun lt!2023472 () C!26942)

(declare-fun lt!2023484 () List!56795)

(assert (=> b!4922007 (= (++!12315 (++!12315 Nil!56671 (Cons!56671 lt!2023472 Nil!56671)) lt!2023484) lt!2023301)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1386 (List!56795 C!26942 List!56795 List!56795) Unit!147097)

(assert (=> b!4922007 (= lt!2023494 (lemmaMoveElementToOtherListKeepsConcatEq!1386 Nil!56671 lt!2023472 lt!2023484 lt!2023301))))

(assert (=> b!4922007 (= lt!2023484 (tail!9662 lt!2023301))))

(declare-fun head!10515 (List!56795) C!26942)

(assert (=> b!4922007 (= lt!2023472 (head!10515 lt!2023301))))

(declare-fun lt!2023478 () Unit!147097)

(declare-fun lt!2023480 () Unit!147097)

(assert (=> b!4922007 (= lt!2023478 lt!2023480)))

(declare-fun getSuffix!2944 (List!56795 List!56795) List!56795)

(assert (=> b!4922007 (isPrefix!4956 (++!12315 Nil!56671 (Cons!56671 (head!10515 (getSuffix!2944 lt!2023301 Nil!56671)) Nil!56671)) lt!2023301)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!768 (List!56795 List!56795) Unit!147097)

(assert (=> b!4922007 (= lt!2023480 (lemmaAddHeadSuffixToPrefixStillPrefix!768 Nil!56671 lt!2023301))))

(assert (=> b!4922007 (= lt!2023493 (++!12315 Nil!56671 (Cons!56671 (head!10515 lt!2023301) Nil!56671)))))

(declare-fun lt!2023473 () Unit!147097)

(assert (=> b!4922007 (= lt!2023473 e!3075721)))

(declare-fun c!837677 () Bool)

(assert (=> b!4922007 (= c!837677 (= (size!37458 Nil!56671) (size!37458 lt!2023301)))))

(declare-fun lt!2023500 () Unit!147097)

(declare-fun lt!2023483 () Unit!147097)

(assert (=> b!4922007 (= lt!2023500 lt!2023483)))

(assert (=> b!4922007 (<= (size!37458 Nil!56671) (size!37458 lt!2023301))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!680 (List!56795 List!56795) Unit!147097)

(assert (=> b!4922007 (= lt!2023483 (lemmaIsPrefixThenSmallerEqSize!680 Nil!56671 lt!2023301))))

(declare-fun e!3075722 () tuple2!61132)

(assert (=> b!4922007 (= e!3075720 e!3075722)))

(declare-fun b!4922008 () Bool)

(assert (=> b!4922008 (= e!3075719 (tuple2!61133 Nil!56671 lt!2023301))))

(declare-fun b!4922009 () Bool)

(declare-fun e!3075717 () tuple2!61132)

(assert (=> b!4922009 (= e!3075717 (tuple2!61133 Nil!56671 Nil!56671))))

(declare-fun b!4922010 () Bool)

(assert (=> b!4922010 (= e!3075718 (tuple2!61133 Nil!56671 lt!2023301))))

(declare-fun bm!342706 () Bool)

(declare-fun call!342709 () C!26942)

(declare-fun derivationStepZipper!583 ((Set Context!6016) C!26942) (Set Context!6016))

(assert (=> bm!342706 (= call!342714 (derivationStepZipper!583 z!3559 call!342709))))

(declare-fun bm!342707 () Bool)

(assert (=> bm!342707 (= call!342709 (head!10515 lt!2023301))))

(declare-fun b!4922012 () Bool)

(declare-fun Unit!147100 () Unit!147097)

(assert (=> b!4922012 (= e!3075721 Unit!147100)))

(declare-fun bm!342708 () Bool)

(declare-fun nullableZipper!805 ((Set Context!6016)) Bool)

(assert (=> bm!342708 (= call!342708 (nullableZipper!805 z!3559))))

(declare-fun b!4922013 () Bool)

(declare-fun c!837682 () Bool)

(assert (=> b!4922013 (= c!837682 call!342708)))

(declare-fun lt!2023486 () Unit!147097)

(declare-fun lt!2023479 () Unit!147097)

(assert (=> b!4922013 (= lt!2023486 lt!2023479)))

(assert (=> b!4922013 (= lt!2023301 Nil!56671)))

(assert (=> b!4922013 (= lt!2023479 call!342712)))

(declare-fun lt!2023497 () Unit!147097)

(declare-fun lt!2023495 () Unit!147097)

(assert (=> b!4922013 (= lt!2023497 lt!2023495)))

(assert (=> b!4922013 call!342707))

(assert (=> b!4922013 (= lt!2023495 call!342710)))

(assert (=> b!4922013 (= e!3075720 e!3075717)))

(declare-fun b!4922014 () Bool)

(assert (=> b!4922014 (= e!3075722 e!3075718)))

(assert (=> b!4922014 (= lt!2023502 call!342711)))

(declare-fun c!837681 () Bool)

(declare-fun isEmpty!30560 (List!56795) Bool)

(assert (=> b!4922014 (= c!837681 (isEmpty!30560 (_1!33869 lt!2023502)))))

(declare-fun b!4922015 () Bool)

(assert (=> b!4922015 (= e!3075722 call!342711)))

(declare-fun b!4922016 () Bool)

(assert (=> b!4922016 (= e!3075717 (tuple2!61133 Nil!56671 lt!2023301))))

(declare-fun bm!342709 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1114 (List!56795 List!56795 List!56795) Unit!147097)

(assert (=> bm!342709 (= call!342712 (lemmaIsPrefixSameLengthThenSameList!1114 lt!2023301 Nil!56671 lt!2023301))))

(declare-fun b!4922011 () Bool)

(declare-fun e!3075716 () Bool)

(assert (=> b!4922011 (= e!3075716 e!3075715)))

(declare-fun res!2101350 () Bool)

(assert (=> b!4922011 (=> res!2101350 e!3075715)))

(assert (=> b!4922011 (= res!2101350 (isEmpty!30560 (_1!33869 lt!2023471)))))

(declare-fun d!1583260 () Bool)

(assert (=> d!1583260 e!3075716))

(declare-fun res!2101351 () Bool)

(assert (=> d!1583260 (=> (not res!2101351) (not e!3075716))))

(assert (=> d!1583260 (= res!2101351 (= (++!12315 (_1!33869 lt!2023471) (_2!33869 lt!2023471)) lt!2023301))))

(assert (=> d!1583260 (= lt!2023471 e!3075719)))

(declare-fun c!837679 () Bool)

(declare-fun lostCauseZipper!686 ((Set Context!6016)) Bool)

(assert (=> d!1583260 (= c!837679 (lostCauseZipper!686 z!3559))))

(declare-fun lt!2023485 () Unit!147097)

(declare-fun Unit!147101 () Unit!147097)

(assert (=> d!1583260 (= lt!2023485 Unit!147101)))

(assert (=> d!1583260 (= (getSuffix!2944 lt!2023301 Nil!56671) lt!2023301)))

(declare-fun lt!2023476 () Unit!147097)

(declare-fun lt!2023496 () Unit!147097)

(assert (=> d!1583260 (= lt!2023476 lt!2023496)))

(declare-fun lt!2023474 () List!56795)

(assert (=> d!1583260 (= lt!2023301 lt!2023474)))

(declare-fun lemmaSamePrefixThenSameSuffix!2360 (List!56795 List!56795 List!56795 List!56795 List!56795) Unit!147097)

(assert (=> d!1583260 (= lt!2023496 (lemmaSamePrefixThenSameSuffix!2360 Nil!56671 lt!2023301 Nil!56671 lt!2023474 lt!2023301))))

(assert (=> d!1583260 (= lt!2023474 (getSuffix!2944 lt!2023301 Nil!56671))))

(declare-fun lt!2023490 () Unit!147097)

(declare-fun lt!2023492 () Unit!147097)

(assert (=> d!1583260 (= lt!2023490 lt!2023492)))

(assert (=> d!1583260 (isPrefix!4956 Nil!56671 (++!12315 Nil!56671 lt!2023301))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3180 (List!56795 List!56795) Unit!147097)

(assert (=> d!1583260 (= lt!2023492 (lemmaConcatTwoListThenFirstIsPrefix!3180 Nil!56671 lt!2023301))))

(assert (=> d!1583260 (= (++!12315 Nil!56671 lt!2023301) lt!2023301)))

(assert (=> d!1583260 (= (findLongestMatchInnerZipper!51 z!3559 Nil!56671 0 lt!2023301 lt!2023301 lt!2023297) lt!2023471)))

(assert (= (and d!1583260 c!837679) b!4922008))

(assert (= (and d!1583260 (not c!837679)) b!4922006))

(assert (= (and b!4922006 c!837678) b!4922013))

(assert (= (and b!4922006 (not c!837678)) b!4922007))

(assert (= (and b!4922013 c!837682) b!4922009))

(assert (= (and b!4922013 (not c!837682)) b!4922016))

(assert (= (and b!4922007 c!837677) b!4922005))

(assert (= (and b!4922007 (not c!837677)) b!4922012))

(assert (= (and b!4922007 c!837680) b!4922014))

(assert (= (and b!4922007 (not c!837680)) b!4922015))

(assert (= (and b!4922014 c!837681) b!4922010))

(assert (= (and b!4922014 (not c!837681)) b!4922004))

(assert (= (or b!4922014 b!4922015) bm!342702))

(assert (= (or b!4922014 b!4922015) bm!342707))

(assert (= (or b!4922014 b!4922015) bm!342706))

(assert (= (or b!4922014 b!4922015) bm!342704))

(assert (= (or b!4922013 b!4922005) bm!342703))

(assert (= (or b!4922013 b!4922005) bm!342705))

(assert (= (or b!4922013 b!4922005) bm!342709))

(assert (= (or b!4922013 b!4922007) bm!342708))

(assert (= (and d!1583260 res!2101351) b!4922011))

(assert (= (and b!4922011 (not res!2101350)) b!4922003))

(declare-fun m!5936852 () Bool)

(assert (=> bm!342709 m!5936852))

(declare-fun m!5936854 () Bool)

(assert (=> bm!342703 m!5936854))

(declare-fun m!5936856 () Bool)

(assert (=> b!4922014 m!5936856))

(declare-fun m!5936858 () Bool)

(assert (=> d!1583260 m!5936858))

(assert (=> d!1583260 m!5936708))

(declare-fun m!5936860 () Bool)

(assert (=> d!1583260 m!5936860))

(assert (=> d!1583260 m!5936708))

(declare-fun m!5936862 () Bool)

(assert (=> d!1583260 m!5936862))

(declare-fun m!5936864 () Bool)

(assert (=> d!1583260 m!5936864))

(declare-fun m!5936866 () Bool)

(assert (=> d!1583260 m!5936866))

(declare-fun m!5936868 () Bool)

(assert (=> d!1583260 m!5936868))

(declare-fun m!5936870 () Bool)

(assert (=> bm!342707 m!5936870))

(declare-fun m!5936872 () Bool)

(assert (=> bm!342706 m!5936872))

(declare-fun m!5936874 () Bool)

(assert (=> bm!342704 m!5936874))

(declare-fun m!5936876 () Bool)

(assert (=> b!4922003 m!5936876))

(assert (=> b!4922003 m!5936704))

(declare-fun m!5936878 () Bool)

(assert (=> b!4922011 m!5936878))

(declare-fun m!5936880 () Bool)

(assert (=> b!4922007 m!5936880))

(declare-fun m!5936882 () Bool)

(assert (=> b!4922007 m!5936882))

(assert (=> b!4922007 m!5936870))

(assert (=> b!4922007 m!5936864))

(declare-fun m!5936884 () Bool)

(assert (=> b!4922007 m!5936884))

(declare-fun m!5936886 () Bool)

(assert (=> b!4922007 m!5936886))

(declare-fun m!5936888 () Bool)

(assert (=> b!4922007 m!5936888))

(assert (=> b!4922007 m!5936864))

(assert (=> b!4922007 m!5936704))

(assert (=> b!4922007 m!5936702))

(declare-fun m!5936890 () Bool)

(assert (=> b!4922007 m!5936890))

(declare-fun m!5936892 () Bool)

(assert (=> b!4922007 m!5936892))

(assert (=> b!4922007 m!5936888))

(declare-fun m!5936894 () Bool)

(assert (=> b!4922007 m!5936894))

(declare-fun m!5936896 () Bool)

(assert (=> b!4922007 m!5936896))

(declare-fun m!5936898 () Bool)

(assert (=> b!4922007 m!5936898))

(assert (=> b!4922007 m!5936880))

(declare-fun m!5936900 () Bool)

(assert (=> bm!342708 m!5936900))

(assert (=> bm!342702 m!5936898))

(declare-fun m!5936902 () Bool)

(assert (=> bm!342705 m!5936902))

(assert (=> start!516782 d!1583260))

(declare-fun b!4922073 () Bool)

(declare-fun e!3075751 () Unit!147097)

(declare-fun Unit!147102 () Unit!147097)

(assert (=> b!4922073 (= e!3075751 Unit!147102)))

(declare-fun lt!2023712 () List!56795)

(declare-fun call!342767 () List!56795)

(assert (=> b!4922073 (= lt!2023712 call!342767)))

(declare-fun lt!2023707 () List!56795)

(assert (=> b!4922073 (= lt!2023707 call!342767)))

(declare-fun lt!2023728 () Unit!147097)

(declare-fun call!342765 () Unit!147097)

(assert (=> b!4922073 (= lt!2023728 call!342765)))

(declare-fun call!342772 () Bool)

(assert (=> b!4922073 call!342772))

(declare-fun lt!2023730 () Unit!147097)

(assert (=> b!4922073 (= lt!2023730 lt!2023728)))

(declare-fun lt!2023738 () List!56795)

(assert (=> b!4922073 (= lt!2023738 call!342767)))

(declare-fun lt!2023711 () Unit!147097)

(declare-fun call!342774 () Unit!147097)

(assert (=> b!4922073 (= lt!2023711 call!342774)))

(assert (=> b!4922073 (= lt!2023738 Nil!56671)))

(declare-fun lt!2023718 () Unit!147097)

(assert (=> b!4922073 (= lt!2023718 lt!2023711)))

(assert (=> b!4922073 false))

(declare-fun b!4922074 () Bool)

(declare-fun e!3075752 () Int)

(declare-fun e!3075755 () Int)

(assert (=> b!4922074 (= e!3075752 e!3075755)))

(declare-fun c!837714 () Bool)

(assert (=> b!4922074 (= c!837714 (= 0 lt!2023297))))

(declare-fun bm!342761 () Bool)

(declare-fun lt!2023708 () List!56795)

(declare-fun lt!2023744 () List!56795)

(assert (=> bm!342761 (= call!342772 (isPrefix!4956 (ite c!837714 lt!2023744 lt!2023712) (ite c!837714 lt!2023708 lt!2023707)))))

(declare-fun bm!342762 () Bool)

(declare-fun call!342771 () C!26942)

(declare-fun apply!13645 (BalanceConc!29160 Int) C!26942)

(assert (=> bm!342762 (= call!342771 (apply!13645 input!5492 0))))

(declare-fun b!4922075 () Bool)

(assert (=> b!4922075 (= e!3075752 0)))

(declare-fun b!4922076 () Bool)

(declare-fun c!837711 () Bool)

(declare-fun call!342766 () Bool)

(assert (=> b!4922076 (= c!837711 call!342766)))

(declare-fun lt!2023714 () Unit!147097)

(declare-fun lt!2023729 () Unit!147097)

(assert (=> b!4922076 (= lt!2023714 lt!2023729)))

(declare-fun lt!2023721 () List!56795)

(assert (=> b!4922076 (= lt!2023721 Nil!56671)))

(assert (=> b!4922076 (= lt!2023729 call!342774)))

(assert (=> b!4922076 (= lt!2023721 call!342767)))

(declare-fun lt!2023731 () Unit!147097)

(declare-fun lt!2023706 () Unit!147097)

(assert (=> b!4922076 (= lt!2023731 lt!2023706)))

(assert (=> b!4922076 call!342772))

(assert (=> b!4922076 (= lt!2023706 call!342765)))

(assert (=> b!4922076 (= lt!2023708 call!342767)))

(assert (=> b!4922076 (= lt!2023744 call!342767)))

(declare-fun e!3075754 () Int)

(assert (=> b!4922076 (= e!3075755 e!3075754)))

(declare-fun call!342773 () List!56795)

(declare-fun call!342770 () (Set Context!6016))

(declare-fun call!342768 () List!56795)

(declare-fun bm!342763 () Bool)

(declare-fun call!342769 () Int)

(assert (=> bm!342763 (= call!342769 (findLongestMatchInnerZipperFast!78 call!342770 call!342768 (+ 0 1) call!342773 input!5492 lt!2023297))))

(declare-fun b!4922077 () Bool)

(assert (=> b!4922077 (= e!3075754 0)))

(declare-fun bm!342764 () Bool)

(assert (=> bm!342764 (= call!342768 (++!12315 Nil!56671 (Cons!56671 call!342771 Nil!56671)))))

(declare-fun bm!342765 () Bool)

(assert (=> bm!342765 (= call!342770 (derivationStepZipper!583 z!3559 call!342771))))

(declare-fun bm!342766 () Bool)

(assert (=> bm!342766 (= call!342765 (lemmaIsPrefixRefl!3352 (ite c!837714 lt!2023744 lt!2023712) (ite c!837714 lt!2023708 lt!2023707)))))

(declare-fun b!4922078 () Bool)

(declare-fun e!3075753 () Int)

(assert (=> b!4922078 (= e!3075753 call!342769)))

(declare-fun b!4922079 () Bool)

(declare-fun Unit!147103 () Unit!147097)

(assert (=> b!4922079 (= e!3075751 Unit!147103)))

(declare-fun bm!342767 () Bool)

(assert (=> bm!342767 (= call!342773 (tail!9662 lt!2023301))))

(declare-fun bm!342760 () Bool)

(assert (=> bm!342760 (= call!342774 (lemmaIsPrefixSameLengthThenSameList!1114 (ite c!837714 lt!2023721 lt!2023738) Nil!56671 call!342767))))

(declare-fun lt!2023720 () Int)

(declare-fun d!1583262 () Bool)

(assert (=> d!1583262 (= (size!37458 (_1!33869 (findLongestMatchInnerZipper!51 z!3559 Nil!56671 0 lt!2023301 (list!17936 input!5492) lt!2023297))) lt!2023720)))

(assert (=> d!1583262 (= lt!2023720 e!3075752)))

(declare-fun c!837715 () Bool)

(assert (=> d!1583262 (= c!837715 (lostCauseZipper!686 z!3559))))

(declare-fun lt!2023745 () Unit!147097)

(declare-fun Unit!147104 () Unit!147097)

(assert (=> d!1583262 (= lt!2023745 Unit!147104)))

(assert (=> d!1583262 (= (getSuffix!2944 (list!17936 input!5492) Nil!56671) lt!2023301)))

(declare-fun lt!2023723 () Unit!147097)

(declare-fun lt!2023733 () Unit!147097)

(assert (=> d!1583262 (= lt!2023723 lt!2023733)))

(declare-fun lt!2023740 () List!56795)

(assert (=> d!1583262 (= lt!2023301 lt!2023740)))

(assert (=> d!1583262 (= lt!2023733 (lemmaSamePrefixThenSameSuffix!2360 Nil!56671 lt!2023301 Nil!56671 lt!2023740 (list!17936 input!5492)))))

(assert (=> d!1583262 (= lt!2023740 (getSuffix!2944 (list!17936 input!5492) Nil!56671))))

(declare-fun lt!2023713 () Unit!147097)

(declare-fun lt!2023727 () Unit!147097)

(assert (=> d!1583262 (= lt!2023713 lt!2023727)))

(assert (=> d!1583262 (isPrefix!4956 Nil!56671 (++!12315 Nil!56671 lt!2023301))))

(assert (=> d!1583262 (= lt!2023727 (lemmaConcatTwoListThenFirstIsPrefix!3180 Nil!56671 lt!2023301))))

(assert (=> d!1583262 (= (++!12315 Nil!56671 lt!2023301) (list!17936 input!5492))))

(assert (=> d!1583262 (= (findLongestMatchInnerZipperFast!78 z!3559 Nil!56671 0 lt!2023301 input!5492 lt!2023297) lt!2023720)))

(declare-fun b!4922080 () Bool)

(declare-fun lt!2023734 () Int)

(assert (=> b!4922080 (= e!3075753 (ite (= lt!2023734 0) 0 lt!2023734))))

(assert (=> b!4922080 (= lt!2023734 call!342769)))

(declare-fun b!4922081 () Bool)

(declare-fun c!837713 () Bool)

(assert (=> b!4922081 (= c!837713 call!342766)))

(declare-fun lt!2023726 () Unit!147097)

(declare-fun lt!2023705 () Unit!147097)

(assert (=> b!4922081 (= lt!2023726 lt!2023705)))

(declare-fun lt!2023717 () C!26942)

(declare-fun lt!2023716 () List!56795)

(declare-fun lt!2023724 () List!56795)

(assert (=> b!4922081 (= (++!12315 (++!12315 Nil!56671 (Cons!56671 lt!2023717 Nil!56671)) lt!2023716) lt!2023724)))

(assert (=> b!4922081 (= lt!2023705 (lemmaMoveElementToOtherListKeepsConcatEq!1386 Nil!56671 lt!2023717 lt!2023716 lt!2023724))))

(assert (=> b!4922081 (= lt!2023724 call!342767)))

(assert (=> b!4922081 (= lt!2023716 (tail!9662 lt!2023301))))

(assert (=> b!4922081 (= lt!2023717 (apply!13645 input!5492 0))))

(declare-fun lt!2023736 () Unit!147097)

(declare-fun lt!2023732 () Unit!147097)

(assert (=> b!4922081 (= lt!2023736 lt!2023732)))

(declare-fun lt!2023715 () List!56795)

(assert (=> b!4922081 (isPrefix!4956 (++!12315 Nil!56671 (Cons!56671 (head!10515 (getSuffix!2944 lt!2023715 Nil!56671)) Nil!56671)) lt!2023715)))

(assert (=> b!4922081 (= lt!2023732 (lemmaAddHeadSuffixToPrefixStillPrefix!768 Nil!56671 lt!2023715))))

(assert (=> b!4922081 (= lt!2023715 call!342767)))

(declare-fun lt!2023739 () Unit!147097)

(assert (=> b!4922081 (= lt!2023739 e!3075751)))

(declare-fun c!837712 () Bool)

(assert (=> b!4922081 (= c!837712 (= (size!37458 Nil!56671) (size!37457 input!5492)))))

(declare-fun lt!2023725 () Unit!147097)

(declare-fun lt!2023743 () Unit!147097)

(assert (=> b!4922081 (= lt!2023725 lt!2023743)))

(declare-fun lt!2023719 () List!56795)

(assert (=> b!4922081 (<= (size!37458 Nil!56671) (size!37458 lt!2023719))))

(assert (=> b!4922081 (= lt!2023743 (lemmaIsPrefixThenSmallerEqSize!680 Nil!56671 lt!2023719))))

(assert (=> b!4922081 (= lt!2023719 call!342767)))

(declare-fun lt!2023709 () Unit!147097)

(declare-fun lt!2023737 () Unit!147097)

(assert (=> b!4922081 (= lt!2023709 lt!2023737)))

(declare-fun lt!2023722 () List!56795)

(declare-fun drop!2219 (List!56795 Int) List!56795)

(declare-fun apply!13646 (List!56795 Int) C!26942)

(assert (=> b!4922081 (= (head!10515 (drop!2219 lt!2023722 0)) (apply!13646 lt!2023722 0))))

(declare-fun lemmaDropApply!1277 (List!56795 Int) Unit!147097)

(assert (=> b!4922081 (= lt!2023737 (lemmaDropApply!1277 lt!2023722 0))))

(assert (=> b!4922081 (= lt!2023722 call!342767)))

(declare-fun lt!2023742 () Unit!147097)

(declare-fun lt!2023710 () Unit!147097)

(assert (=> b!4922081 (= lt!2023742 lt!2023710)))

(declare-fun lt!2023741 () List!56795)

(declare-fun lt!2023735 () List!56795)

(assert (=> b!4922081 (and (= lt!2023741 Nil!56671) (= lt!2023735 lt!2023301))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!652 (List!56795 List!56795 List!56795 List!56795) Unit!147097)

(assert (=> b!4922081 (= lt!2023710 (lemmaConcatSameAndSameSizesThenSameLists!652 lt!2023741 lt!2023735 Nil!56671 lt!2023301))))

(declare-fun lt!2023704 () tuple2!61134)

(assert (=> b!4922081 (= lt!2023735 (list!17936 (_2!33870 lt!2023704)))))

(assert (=> b!4922081 (= lt!2023741 (list!17936 (_1!33870 lt!2023704)))))

(assert (=> b!4922081 (= lt!2023704 (splitAt!258 input!5492 0))))

(assert (=> b!4922081 (= e!3075755 e!3075753)))

(declare-fun bm!342768 () Bool)

(assert (=> bm!342768 (= call!342767 (list!17936 input!5492))))

(declare-fun bm!342769 () Bool)

(assert (=> bm!342769 (= call!342766 (nullableZipper!805 z!3559))))

(declare-fun b!4922082 () Bool)

(assert (=> b!4922082 (= e!3075754 0)))

(assert (= (and d!1583262 c!837715) b!4922075))

(assert (= (and d!1583262 (not c!837715)) b!4922074))

(assert (= (and b!4922074 c!837714) b!4922076))

(assert (= (and b!4922074 (not c!837714)) b!4922081))

(assert (= (and b!4922076 c!837711) b!4922077))

(assert (= (and b!4922076 (not c!837711)) b!4922082))

(assert (= (and b!4922081 c!837712) b!4922073))

(assert (= (and b!4922081 (not c!837712)) b!4922079))

(assert (= (and b!4922081 c!837713) b!4922080))

(assert (= (and b!4922081 (not c!837713)) b!4922078))

(assert (= (or b!4922080 b!4922078) bm!342762))

(assert (= (or b!4922080 b!4922078) bm!342767))

(assert (= (or b!4922080 b!4922078) bm!342765))

(assert (= (or b!4922080 b!4922078) bm!342764))

(assert (= (or b!4922080 b!4922078) bm!342763))

(assert (= (or b!4922076 b!4922073) bm!342766))

(assert (= (or b!4922076 b!4922081) bm!342769))

(assert (= (or b!4922076 b!4922073) bm!342761))

(assert (= (or b!4922076 b!4922073 b!4922081) bm!342768))

(assert (= (or b!4922076 b!4922073) bm!342760))

(assert (=> d!1583262 m!5936718))

(declare-fun m!5936968 () Bool)

(assert (=> d!1583262 m!5936968))

(assert (=> d!1583262 m!5936858))

(assert (=> d!1583262 m!5936708))

(assert (=> d!1583262 m!5936860))

(assert (=> d!1583262 m!5936718))

(assert (=> d!1583262 m!5936866))

(declare-fun m!5936970 () Bool)

(assert (=> d!1583262 m!5936970))

(assert (=> d!1583262 m!5936718))

(declare-fun m!5936972 () Bool)

(assert (=> d!1583262 m!5936972))

(assert (=> d!1583262 m!5936718))

(declare-fun m!5936974 () Bool)

(assert (=> d!1583262 m!5936974))

(assert (=> d!1583262 m!5936708))

(declare-fun m!5936976 () Bool)

(assert (=> bm!342762 m!5936976))

(declare-fun m!5936978 () Bool)

(assert (=> bm!342761 m!5936978))

(assert (=> bm!342767 m!5936898))

(assert (=> bm!342769 m!5936900))

(declare-fun m!5936980 () Bool)

(assert (=> bm!342763 m!5936980))

(declare-fun m!5936982 () Bool)

(assert (=> b!4922081 m!5936982))

(declare-fun m!5936984 () Bool)

(assert (=> b!4922081 m!5936984))

(declare-fun m!5936986 () Bool)

(assert (=> b!4922081 m!5936986))

(declare-fun m!5936988 () Bool)

(assert (=> b!4922081 m!5936988))

(declare-fun m!5936990 () Bool)

(assert (=> b!4922081 m!5936990))

(declare-fun m!5936992 () Bool)

(assert (=> b!4922081 m!5936992))

(assert (=> b!4922081 m!5936898))

(declare-fun m!5936994 () Bool)

(assert (=> b!4922081 m!5936994))

(assert (=> b!4922081 m!5936990))

(declare-fun m!5936996 () Bool)

(assert (=> b!4922081 m!5936996))

(assert (=> b!4922081 m!5936722))

(assert (=> b!4922081 m!5936976))

(assert (=> b!4922081 m!5936704))

(declare-fun m!5936998 () Bool)

(assert (=> b!4922081 m!5936998))

(assert (=> b!4922081 m!5936986))

(declare-fun m!5937000 () Bool)

(assert (=> b!4922081 m!5937000))

(declare-fun m!5937002 () Bool)

(assert (=> b!4922081 m!5937002))

(declare-fun m!5937004 () Bool)

(assert (=> b!4922081 m!5937004))

(declare-fun m!5937006 () Bool)

(assert (=> b!4922081 m!5937006))

(declare-fun m!5937008 () Bool)

(assert (=> b!4922081 m!5937008))

(assert (=> b!4922081 m!5937006))

(declare-fun m!5937010 () Bool)

(assert (=> b!4922081 m!5937010))

(declare-fun m!5937012 () Bool)

(assert (=> b!4922081 m!5937012))

(assert (=> b!4922081 m!5937010))

(declare-fun m!5937014 () Bool)

(assert (=> b!4922081 m!5937014))

(declare-fun m!5937016 () Bool)

(assert (=> b!4922081 m!5937016))

(declare-fun m!5937018 () Bool)

(assert (=> bm!342765 m!5937018))

(assert (=> bm!342768 m!5936718))

(declare-fun m!5937020 () Bool)

(assert (=> bm!342760 m!5937020))

(declare-fun m!5937022 () Bool)

(assert (=> bm!342764 m!5937022))

(declare-fun m!5937024 () Bool)

(assert (=> bm!342766 m!5937024))

(assert (=> start!516782 d!1583262))

(declare-fun d!1583272 () Bool)

(declare-fun lt!2023748 () Int)

(assert (=> d!1583272 (= lt!2023748 (size!37458 (list!17936 input!5492)))))

(declare-fun size!37461 (Conc!14865) Int)

(assert (=> d!1583272 (= lt!2023748 (size!37461 (c!837631 input!5492)))))

(assert (=> d!1583272 (= (size!37457 input!5492) lt!2023748)))

(declare-fun bs!1179196 () Bool)

(assert (= bs!1179196 d!1583272))

(assert (=> bs!1179196 m!5936718))

(assert (=> bs!1179196 m!5936718))

(declare-fun m!5937026 () Bool)

(assert (=> bs!1179196 m!5937026))

(declare-fun m!5937028 () Bool)

(assert (=> bs!1179196 m!5937028))

(assert (=> start!516782 d!1583272))

(declare-fun d!1583274 () Bool)

(assert (=> d!1583274 (= (list!17936 (_2!33870 lt!2023298)) (list!17938 (c!837631 (_2!33870 lt!2023298))))))

(declare-fun bs!1179197 () Bool)

(assert (= bs!1179197 d!1583274))

(declare-fun m!5937030 () Bool)

(assert (=> bs!1179197 m!5937030))

(assert (=> start!516782 d!1583274))

(declare-fun d!1583276 () Bool)

(declare-fun e!3075758 () Bool)

(assert (=> d!1583276 e!3075758))

(declare-fun res!2101357 () Bool)

(assert (=> d!1583276 (=> (not res!2101357) (not e!3075758))))

(declare-fun lt!2023754 () tuple2!61134)

(declare-fun isBalanced!4080 (Conc!14865) Bool)

(assert (=> d!1583276 (= res!2101357 (isBalanced!4080 (c!837631 (_1!33870 lt!2023754))))))

(declare-datatypes ((tuple2!61140 0))(
  ( (tuple2!61141 (_1!33873 Conc!14865) (_2!33873 Conc!14865)) )
))
(declare-fun lt!2023753 () tuple2!61140)

(assert (=> d!1583276 (= lt!2023754 (tuple2!61135 (BalanceConc!29161 (_1!33873 lt!2023753)) (BalanceConc!29161 (_2!33873 lt!2023753))))))

(declare-fun splitAt!260 (Conc!14865 Int) tuple2!61140)

(assert (=> d!1583276 (= lt!2023753 (splitAt!260 (c!837631 input!5492) (findLongestMatchInnerZipperFast!78 z!3559 Nil!56671 0 lt!2023301 input!5492 lt!2023297)))))

(assert (=> d!1583276 (isBalanced!4080 (c!837631 input!5492))))

(assert (=> d!1583276 (= (splitAt!258 input!5492 (findLongestMatchInnerZipperFast!78 z!3559 Nil!56671 0 lt!2023301 input!5492 lt!2023297)) lt!2023754)))

(declare-fun b!4922087 () Bool)

(declare-fun res!2101356 () Bool)

(assert (=> b!4922087 (=> (not res!2101356) (not e!3075758))))

(assert (=> b!4922087 (= res!2101356 (isBalanced!4080 (c!837631 (_2!33870 lt!2023754))))))

(declare-fun b!4922088 () Bool)

(declare-fun splitAtIndex!96 (List!56795 Int) tuple2!61132)

(assert (=> b!4922088 (= e!3075758 (= (tuple2!61133 (list!17936 (_1!33870 lt!2023754)) (list!17936 (_2!33870 lt!2023754))) (splitAtIndex!96 (list!17936 input!5492) (findLongestMatchInnerZipperFast!78 z!3559 Nil!56671 0 lt!2023301 input!5492 lt!2023297))))))

(assert (= (and d!1583276 res!2101357) b!4922087))

(assert (= (and b!4922087 res!2101356) b!4922088))

(declare-fun m!5937032 () Bool)

(assert (=> d!1583276 m!5937032))

(assert (=> d!1583276 m!5936710))

(declare-fun m!5937034 () Bool)

(assert (=> d!1583276 m!5937034))

(declare-fun m!5937036 () Bool)

(assert (=> d!1583276 m!5937036))

(declare-fun m!5937038 () Bool)

(assert (=> b!4922087 m!5937038))

(declare-fun m!5937040 () Bool)

(assert (=> b!4922088 m!5937040))

(declare-fun m!5937042 () Bool)

(assert (=> b!4922088 m!5937042))

(assert (=> b!4922088 m!5936718))

(assert (=> b!4922088 m!5936718))

(assert (=> b!4922088 m!5936710))

(declare-fun m!5937044 () Bool)

(assert (=> b!4922088 m!5937044))

(assert (=> start!516782 d!1583276))

(declare-fun d!1583278 () Bool)

(assert (=> d!1583278 (= (list!17936 input!5492) (list!17938 (c!837631 input!5492)))))

(declare-fun bs!1179198 () Bool)

(assert (= bs!1179198 d!1583278))

(declare-fun m!5937046 () Bool)

(assert (=> bs!1179198 m!5937046))

(assert (=> start!516782 d!1583278))

(declare-fun d!1583280 () Bool)

(assert (=> d!1583280 (= (inv!73422 input!5492) (isBalanced!4080 (c!837631 input!5492)))))

(declare-fun bs!1179199 () Bool)

(assert (= bs!1179199 d!1583280))

(assert (=> bs!1179199 m!5937036))

(assert (=> start!516782 d!1583280))

(declare-fun d!1583282 () Bool)

(declare-fun lt!2023757 () Int)

(assert (=> d!1583282 (>= lt!2023757 0)))

(declare-fun e!3075761 () Int)

(assert (=> d!1583282 (= lt!2023757 e!3075761)))

(declare-fun c!837718 () Bool)

(assert (=> d!1583282 (= c!837718 (is-Nil!56671 Nil!56671))))

(assert (=> d!1583282 (= (size!37458 Nil!56671) lt!2023757)))

(declare-fun b!4922093 () Bool)

(assert (=> b!4922093 (= e!3075761 0)))

(declare-fun b!4922094 () Bool)

(assert (=> b!4922094 (= e!3075761 (+ 1 (size!37458 (t!367233 Nil!56671))))))

(assert (= (and d!1583282 c!837718) b!4922093))

(assert (= (and d!1583282 (not c!837718)) b!4922094))

(declare-fun m!5937048 () Bool)

(assert (=> b!4922094 m!5937048))

(assert (=> b!4921873 d!1583282))

(declare-fun d!1583284 () Bool)

(declare-fun lt!2023758 () Int)

(assert (=> d!1583284 (>= lt!2023758 0)))

(declare-fun e!3075762 () Int)

(assert (=> d!1583284 (= lt!2023758 e!3075762)))

(declare-fun c!837719 () Bool)

(assert (=> d!1583284 (= c!837719 (is-Nil!56671 lt!2023301))))

(assert (=> d!1583284 (= (size!37458 lt!2023301) lt!2023758)))

(declare-fun b!4922095 () Bool)

(assert (=> b!4922095 (= e!3075762 0)))

(declare-fun b!4922096 () Bool)

(assert (=> b!4922096 (= e!3075762 (+ 1 (size!37458 (t!367233 lt!2023301))))))

(assert (= (and d!1583284 c!837719) b!4922095))

(assert (= (and d!1583284 (not c!837719)) b!4922096))

(declare-fun m!5937050 () Bool)

(assert (=> b!4922096 m!5937050))

(assert (=> b!4921875 d!1583284))

(declare-fun condSetEmpty!27493 () Bool)

(assert (=> setNonEmpty!27487 (= condSetEmpty!27493 (= setRest!27487 (as set.empty (Set Context!6016))))))

(declare-fun setRes!27493 () Bool)

(assert (=> setNonEmpty!27487 (= tp!1383088 setRes!27493)))

(declare-fun setIsEmpty!27493 () Bool)

(assert (=> setIsEmpty!27493 setRes!27493))

(declare-fun e!3075765 () Bool)

(declare-fun tp!1383105 () Bool)

(declare-fun setNonEmpty!27493 () Bool)

(declare-fun setElem!27493 () Context!6016)

(assert (=> setNonEmpty!27493 (= setRes!27493 (and tp!1383105 (inv!73423 setElem!27493) e!3075765))))

(declare-fun setRest!27493 () (Set Context!6016))

(assert (=> setNonEmpty!27493 (= setRest!27487 (set.union (set.insert setElem!27493 (as set.empty (Set Context!6016))) setRest!27493))))

(declare-fun b!4922101 () Bool)

(declare-fun tp!1383104 () Bool)

(assert (=> b!4922101 (= e!3075765 tp!1383104)))

(assert (= (and setNonEmpty!27487 condSetEmpty!27493) setIsEmpty!27493))

(assert (= (and setNonEmpty!27487 (not condSetEmpty!27493)) setNonEmpty!27493))

(assert (= setNonEmpty!27493 b!4922101))

(declare-fun m!5937052 () Bool)

(assert (=> setNonEmpty!27493 m!5937052))

(declare-fun tp!1383112 () Bool)

(declare-fun tp!1383114 () Bool)

(declare-fun e!3075771 () Bool)

(declare-fun b!4922110 () Bool)

(assert (=> b!4922110 (= e!3075771 (and (inv!73421 (left!41320 (c!837631 input!5492))) tp!1383112 (inv!73421 (right!41650 (c!837631 input!5492))) tp!1383114))))

(declare-fun b!4922112 () Bool)

(declare-fun e!3075770 () Bool)

(declare-fun tp!1383113 () Bool)

(assert (=> b!4922112 (= e!3075770 tp!1383113)))

(declare-fun b!4922111 () Bool)

(declare-fun inv!73429 (IArray!29791) Bool)

(assert (=> b!4922111 (= e!3075771 (and (inv!73429 (xs!18185 (c!837631 input!5492))) e!3075770))))

(assert (=> b!4921872 (= tp!1383090 (and (inv!73421 (c!837631 input!5492)) e!3075771))))

(assert (= (and b!4921872 (is-Node!14865 (c!837631 input!5492))) b!4922110))

(assert (= b!4922111 b!4922112))

(assert (= (and b!4921872 (is-Leaf!24731 (c!837631 input!5492))) b!4922111))

(declare-fun m!5937054 () Bool)

(assert (=> b!4922110 m!5937054))

(declare-fun m!5937056 () Bool)

(assert (=> b!4922110 m!5937056))

(declare-fun m!5937058 () Bool)

(assert (=> b!4922111 m!5937058))

(assert (=> b!4921872 m!5936706))

(declare-fun b!4922117 () Bool)

(declare-fun e!3075774 () Bool)

(declare-fun tp!1383119 () Bool)

(declare-fun tp!1383120 () Bool)

(assert (=> b!4922117 (= e!3075774 (and tp!1383119 tp!1383120))))

(assert (=> b!4921874 (= tp!1383089 e!3075774)))

(assert (= (and b!4921874 (is-Cons!56672 (exprs!3508 setElem!27487))) b!4922117))

(push 1)

(assert (not d!1583272))

(assert (not bm!342767))

(assert (not d!1583258))

(assert (not d!1583260))

(assert (not b!4922094))

(assert (not bm!342760))

(assert (not bm!342707))

(assert (not setNonEmpty!27493))

(assert (not b!4922087))

(assert (not bm!342765))

(assert (not b!4921962))

(assert (not bm!342766))

(assert (not b!4922096))

(assert (not b!4922110))

(assert (not bm!342764))

(assert (not b!4922101))

(assert (not b!4921960))

(assert (not b!4921872))

(assert (not b!4922112))

(assert (not bm!342702))

(assert (not d!1583278))

(assert (not b!4922011))

(assert (not b!4922014))

(assert (not d!1583274))

(assert (not b!4921973))

(assert (not b!4921972))

(assert (not bm!342768))

(assert (not d!1583280))

(assert (not bm!342708))

(assert (not d!1583276))

(assert (not bm!342704))

(assert (not bm!342706))

(assert (not d!1583238))

(assert (not bm!342769))

(assert (not b!4922003))

(assert (not bm!342705))

(assert (not bm!342761))

(assert (not bm!342703))

(assert (not b!4922111))

(assert (not bm!342763))

(assert (not bm!342709))

(assert (not bm!342762))

(assert (not d!1583262))

(assert (not b!4922117))

(assert (not b!4922081))

(assert (not b!4922088))

(assert (not b!4922007))

(assert (not d!1583256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

