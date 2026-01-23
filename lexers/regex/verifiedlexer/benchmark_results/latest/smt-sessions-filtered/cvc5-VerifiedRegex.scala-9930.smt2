; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!520634 () Bool)

(assert start!520634)

(declare-fun setIsEmpty!28025 () Bool)

(declare-fun setRes!28025 () Bool)

(assert (=> setIsEmpty!28025 setRes!28025))

(declare-fun b!4945684 () Bool)

(declare-fun e!3090036 () Bool)

(declare-fun e!3090032 () Bool)

(assert (=> b!4945684 (= e!3090036 e!3090032)))

(declare-fun res!2110338 () Bool)

(assert (=> b!4945684 (=> res!2110338 e!3090032)))

(declare-datatypes ((C!27202 0))(
  ( (C!27203 (val!22935 Int)) )
))
(declare-datatypes ((Regex!13476 0))(
  ( (ElementMatch!13476 (c!843908 C!27202)) (Concat!22049 (regOne!27464 Regex!13476) (regTwo!27464 Regex!13476)) (EmptyExpr!13476) (Star!13476 (reg!13805 Regex!13476)) (EmptyLang!13476) (Union!13476 (regOne!27465 Regex!13476) (regTwo!27465 Regex!13476)) )
))
(declare-datatypes ((List!57087 0))(
  ( (Nil!56963) (Cons!56963 (h!63411 Regex!13476) (t!367623 List!57087)) )
))
(declare-datatypes ((Context!6236 0))(
  ( (Context!6237 (exprs!3618 List!57087)) )
))
(declare-fun z!3568 () (Set Context!6236))

(declare-fun lostCauseZipper!794 ((Set Context!6236)) Bool)

(assert (=> b!4945684 (= res!2110338 (lostCauseZipper!794 z!3568))))

(declare-datatypes ((List!57088 0))(
  ( (Nil!56964) (Cons!56964 (h!63412 C!27202) (t!367624 List!57088)) )
))
(declare-fun testedSuffix!70 () List!57088)

(declare-fun lt!2039254 () List!57088)

(assert (=> b!4945684 (and (= testedSuffix!70 lt!2039254) (= lt!2039254 testedSuffix!70))))

(declare-fun testedP!110 () List!57088)

(declare-datatypes ((Unit!147750 0))(
  ( (Unit!147751) )
))
(declare-fun lt!2039255 () Unit!147750)

(declare-fun lt!2039257 () List!57088)

(declare-fun lemmaSamePrefixThenSameSuffix!2474 (List!57088 List!57088 List!57088 List!57088 List!57088) Unit!147750)

(assert (=> b!4945684 (= lt!2039255 (lemmaSamePrefixThenSameSuffix!2474 testedP!110 testedSuffix!70 testedP!110 lt!2039254 lt!2039257))))

(declare-fun getSuffix!3064 (List!57088 List!57088) List!57088)

(assert (=> b!4945684 (= lt!2039254 (getSuffix!3064 lt!2039257 testedP!110))))

(declare-fun res!2110337 () Bool)

(declare-fun e!3090038 () Bool)

(assert (=> start!520634 (=> (not res!2110337) (not e!3090038))))

(declare-fun lt!2039262 () List!57088)

(assert (=> start!520634 (= res!2110337 (= lt!2039262 lt!2039257))))

(declare-datatypes ((IArray!30051 0))(
  ( (IArray!30052 (innerList!15083 List!57088)) )
))
(declare-datatypes ((Conc!14995 0))(
  ( (Node!14995 (left!41559 Conc!14995) (right!41889 Conc!14995) (csize!30220 Int) (cheight!15206 Int)) (Leaf!24926 (xs!18321 IArray!30051) (csize!30221 Int)) (Empty!14995) )
))
(declare-datatypes ((BalanceConc!29420 0))(
  ( (BalanceConc!29421 (c!843909 Conc!14995)) )
))
(declare-fun totalInput!685 () BalanceConc!29420)

(declare-fun list!18152 (BalanceConc!29420) List!57088)

(assert (=> start!520634 (= lt!2039257 (list!18152 totalInput!685))))

(declare-fun ++!12461 (List!57088 List!57088) List!57088)

(assert (=> start!520634 (= lt!2039262 (++!12461 testedP!110 testedSuffix!70))))

(assert (=> start!520634 e!3090038))

(declare-fun e!3090037 () Bool)

(assert (=> start!520634 e!3090037))

(declare-fun condSetEmpty!28025 () Bool)

(assert (=> start!520634 (= condSetEmpty!28025 (= z!3568 (as set.empty (Set Context!6236))))))

(assert (=> start!520634 setRes!28025))

(assert (=> start!520634 true))

(declare-fun e!3090033 () Bool)

(declare-fun inv!74185 (BalanceConc!29420) Bool)

(assert (=> start!520634 (and (inv!74185 totalInput!685) e!3090033)))

(declare-fun e!3090035 () Bool)

(assert (=> start!520634 e!3090035))

(declare-fun b!4945685 () Bool)

(declare-fun e!3090039 () Bool)

(declare-fun e!3090040 () Bool)

(assert (=> b!4945685 (= e!3090039 e!3090040)))

(declare-fun res!2110340 () Bool)

(assert (=> b!4945685 (=> (not res!2110340) (not e!3090040))))

(declare-fun testedPSize!70 () Int)

(assert (=> b!4945685 (= res!2110340 (>= testedPSize!70 0))))

(declare-fun lt!2039260 () List!57088)

(declare-fun lt!2039261 () List!57088)

(assert (=> b!4945685 (not (or (not (= lt!2039260 testedP!110)) (not (= lt!2039261 testedSuffix!70))))))

(declare-fun lt!2039259 () Unit!147750)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!720 (List!57088 List!57088 List!57088 List!57088) Unit!147750)

(assert (=> b!4945685 (= lt!2039259 (lemmaConcatSameAndSameSizesThenSameLists!720 lt!2039260 lt!2039261 testedP!110 testedSuffix!70))))

(declare-fun b!4945686 () Bool)

(declare-fun tp_is_empty!36149 () Bool)

(declare-fun tp!1387306 () Bool)

(assert (=> b!4945686 (= e!3090037 (and tp_is_empty!36149 tp!1387306))))

(declare-fun b!4945687 () Bool)

(assert (=> b!4945687 (= e!3090032 e!3090039)))

(declare-fun res!2110342 () Bool)

(assert (=> b!4945687 (=> res!2110342 e!3090039)))

(assert (=> b!4945687 (= res!2110342 (not (= (++!12461 lt!2039260 lt!2039261) lt!2039257)))))

(declare-datatypes ((tuple2!61502 0))(
  ( (tuple2!61503 (_1!34054 BalanceConc!29420) (_2!34054 BalanceConc!29420)) )
))
(declare-fun lt!2039258 () tuple2!61502)

(assert (=> b!4945687 (= lt!2039261 (list!18152 (_2!34054 lt!2039258)))))

(assert (=> b!4945687 (= lt!2039260 (list!18152 (_1!34054 lt!2039258)))))

(declare-fun splitAt!387 (BalanceConc!29420 Int) tuple2!61502)

(assert (=> b!4945687 (= lt!2039258 (splitAt!387 totalInput!685 testedPSize!70))))

(declare-fun setElem!28025 () Context!6236)

(declare-fun tp!1387308 () Bool)

(declare-fun setNonEmpty!28025 () Bool)

(declare-fun e!3090034 () Bool)

(declare-fun inv!74186 (Context!6236) Bool)

(assert (=> setNonEmpty!28025 (= setRes!28025 (and tp!1387308 (inv!74186 setElem!28025) e!3090034))))

(declare-fun setRest!28025 () (Set Context!6236))

(assert (=> setNonEmpty!28025 (= z!3568 (set.union (set.insert setElem!28025 (as set.empty (Set Context!6236))) setRest!28025))))

(declare-fun b!4945688 () Bool)

(declare-fun tp!1387307 () Bool)

(declare-fun inv!74187 (Conc!14995) Bool)

(assert (=> b!4945688 (= e!3090033 (and (inv!74187 (c!843909 totalInput!685)) tp!1387307))))

(declare-fun b!4945689 () Bool)

(declare-fun tp!1387310 () Bool)

(assert (=> b!4945689 (= e!3090035 (and tp_is_empty!36149 tp!1387310))))

(declare-fun b!4945690 () Bool)

(declare-fun res!2110336 () Bool)

(assert (=> b!4945690 (=> res!2110336 e!3090039)))

(declare-fun size!37791 (BalanceConc!29420) Int)

(assert (=> b!4945690 (= res!2110336 (not (= (size!37791 (_1!34054 lt!2039258)) testedPSize!70)))))

(declare-fun b!4945691 () Bool)

(assert (=> b!4945691 (= e!3090038 (not e!3090036))))

(declare-fun res!2110339 () Bool)

(assert (=> b!4945691 (=> res!2110339 e!3090036)))

(declare-fun isPrefix!5082 (List!57088 List!57088) Bool)

(assert (=> b!4945691 (= res!2110339 (not (isPrefix!5082 testedP!110 lt!2039257)))))

(assert (=> b!4945691 (isPrefix!5082 testedP!110 lt!2039262)))

(declare-fun lt!2039256 () Unit!147750)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3306 (List!57088 List!57088) Unit!147750)

(assert (=> b!4945691 (= lt!2039256 (lemmaConcatTwoListThenFirstIsPrefix!3306 testedP!110 testedSuffix!70))))

(declare-fun b!4945692 () Bool)

(declare-fun res!2110343 () Bool)

(assert (=> b!4945692 (=> (not res!2110343) (not e!3090038))))

(declare-fun size!37792 (List!57088) Int)

(assert (=> b!4945692 (= res!2110343 (= testedPSize!70 (size!37792 testedP!110)))))

(declare-fun b!4945693 () Bool)

(declare-fun res!2110335 () Bool)

(assert (=> b!4945693 (=> res!2110335 e!3090032)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4945693 (= res!2110335 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4945694 () Bool)

(declare-fun res!2110341 () Bool)

(assert (=> b!4945694 (=> (not res!2110341) (not e!3090038))))

(assert (=> b!4945694 (= res!2110341 (= totalInputSize!132 (size!37791 totalInput!685)))))

(declare-fun b!4945695 () Bool)

(assert (=> b!4945695 (= e!3090040 (< testedPSize!70 (size!37792 lt!2039257)))))

(declare-fun b!4945696 () Bool)

(declare-fun tp!1387309 () Bool)

(assert (=> b!4945696 (= e!3090034 tp!1387309)))

(assert (= (and start!520634 res!2110337) b!4945692))

(assert (= (and b!4945692 res!2110343) b!4945694))

(assert (= (and b!4945694 res!2110341) b!4945691))

(assert (= (and b!4945691 (not res!2110339)) b!4945684))

(assert (= (and b!4945684 (not res!2110338)) b!4945693))

(assert (= (and b!4945693 (not res!2110335)) b!4945687))

(assert (= (and b!4945687 (not res!2110342)) b!4945690))

(assert (= (and b!4945690 (not res!2110336)) b!4945685))

(assert (= (and b!4945685 res!2110340) b!4945695))

(assert (= (and start!520634 (is-Cons!56964 testedP!110)) b!4945686))

(assert (= (and start!520634 condSetEmpty!28025) setIsEmpty!28025))

(assert (= (and start!520634 (not condSetEmpty!28025)) setNonEmpty!28025))

(assert (= setNonEmpty!28025 b!4945696))

(assert (= start!520634 b!4945688))

(assert (= (and start!520634 (is-Cons!56964 testedSuffix!70)) b!4945689))

(declare-fun m!5968732 () Bool)

(assert (=> b!4945684 m!5968732))

(declare-fun m!5968734 () Bool)

(assert (=> b!4945684 m!5968734))

(declare-fun m!5968736 () Bool)

(assert (=> b!4945684 m!5968736))

(declare-fun m!5968738 () Bool)

(assert (=> b!4945695 m!5968738))

(declare-fun m!5968740 () Bool)

(assert (=> b!4945691 m!5968740))

(declare-fun m!5968742 () Bool)

(assert (=> b!4945691 m!5968742))

(declare-fun m!5968744 () Bool)

(assert (=> b!4945691 m!5968744))

(declare-fun m!5968746 () Bool)

(assert (=> b!4945694 m!5968746))

(declare-fun m!5968748 () Bool)

(assert (=> b!4945688 m!5968748))

(declare-fun m!5968750 () Bool)

(assert (=> b!4945692 m!5968750))

(declare-fun m!5968752 () Bool)

(assert (=> b!4945687 m!5968752))

(declare-fun m!5968754 () Bool)

(assert (=> b!4945687 m!5968754))

(declare-fun m!5968756 () Bool)

(assert (=> b!4945687 m!5968756))

(declare-fun m!5968758 () Bool)

(assert (=> b!4945687 m!5968758))

(declare-fun m!5968760 () Bool)

(assert (=> b!4945685 m!5968760))

(declare-fun m!5968762 () Bool)

(assert (=> setNonEmpty!28025 m!5968762))

(declare-fun m!5968764 () Bool)

(assert (=> b!4945690 m!5968764))

(declare-fun m!5968766 () Bool)

(assert (=> start!520634 m!5968766))

(declare-fun m!5968768 () Bool)

(assert (=> start!520634 m!5968768))

(declare-fun m!5968770 () Bool)

(assert (=> start!520634 m!5968770))

(push 1)

(assert tp_is_empty!36149)

(assert (not setNonEmpty!28025))

(assert (not b!4945686))

(assert (not b!4945687))

(assert (not b!4945692))

(assert (not b!4945691))

(assert (not b!4945684))

(assert (not b!4945695))

(assert (not b!4945685))

(assert (not b!4945689))

(assert (not start!520634))

(assert (not b!4945688))

(assert (not b!4945690))

(assert (not b!4945694))

(assert (not b!4945696))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1592349 () Bool)

(declare-fun e!3090081 () Bool)

(assert (=> d!1592349 e!3090081))

(declare-fun res!2110384 () Bool)

(assert (=> d!1592349 (=> res!2110384 e!3090081)))

(declare-fun lt!2039298 () Bool)

(assert (=> d!1592349 (= res!2110384 (not lt!2039298))))

(declare-fun e!3090082 () Bool)

(assert (=> d!1592349 (= lt!2039298 e!3090082)))

(declare-fun res!2110382 () Bool)

(assert (=> d!1592349 (=> res!2110382 e!3090082)))

(assert (=> d!1592349 (= res!2110382 (is-Nil!56964 testedP!110))))

(assert (=> d!1592349 (= (isPrefix!5082 testedP!110 lt!2039257) lt!2039298)))

(declare-fun b!4945755 () Bool)

(declare-fun e!3090080 () Bool)

(declare-fun tail!9741 (List!57088) List!57088)

(assert (=> b!4945755 (= e!3090080 (isPrefix!5082 (tail!9741 testedP!110) (tail!9741 lt!2039257)))))

(declare-fun b!4945756 () Bool)

(assert (=> b!4945756 (= e!3090081 (>= (size!37792 lt!2039257) (size!37792 testedP!110)))))

(declare-fun b!4945754 () Bool)

(declare-fun res!2110385 () Bool)

(assert (=> b!4945754 (=> (not res!2110385) (not e!3090080))))

(declare-fun head!10602 (List!57088) C!27202)

(assert (=> b!4945754 (= res!2110385 (= (head!10602 testedP!110) (head!10602 lt!2039257)))))

(declare-fun b!4945753 () Bool)

(assert (=> b!4945753 (= e!3090082 e!3090080)))

(declare-fun res!2110383 () Bool)

(assert (=> b!4945753 (=> (not res!2110383) (not e!3090080))))

(assert (=> b!4945753 (= res!2110383 (not (is-Nil!56964 lt!2039257)))))

(assert (= (and d!1592349 (not res!2110382)) b!4945753))

(assert (= (and b!4945753 res!2110383) b!4945754))

(assert (= (and b!4945754 res!2110385) b!4945755))

(assert (= (and d!1592349 (not res!2110384)) b!4945756))

(declare-fun m!5968822 () Bool)

(assert (=> b!4945755 m!5968822))

(declare-fun m!5968824 () Bool)

(assert (=> b!4945755 m!5968824))

(assert (=> b!4945755 m!5968822))

(assert (=> b!4945755 m!5968824))

(declare-fun m!5968826 () Bool)

(assert (=> b!4945755 m!5968826))

(assert (=> b!4945756 m!5968738))

(assert (=> b!4945756 m!5968750))

(declare-fun m!5968828 () Bool)

(assert (=> b!4945754 m!5968828))

(declare-fun m!5968830 () Bool)

(assert (=> b!4945754 m!5968830))

(assert (=> b!4945691 d!1592349))

(declare-fun d!1592353 () Bool)

(declare-fun e!3090084 () Bool)

(assert (=> d!1592353 e!3090084))

(declare-fun res!2110388 () Bool)

(assert (=> d!1592353 (=> res!2110388 e!3090084)))

(declare-fun lt!2039299 () Bool)

(assert (=> d!1592353 (= res!2110388 (not lt!2039299))))

(declare-fun e!3090085 () Bool)

(assert (=> d!1592353 (= lt!2039299 e!3090085)))

(declare-fun res!2110386 () Bool)

(assert (=> d!1592353 (=> res!2110386 e!3090085)))

(assert (=> d!1592353 (= res!2110386 (is-Nil!56964 testedP!110))))

(assert (=> d!1592353 (= (isPrefix!5082 testedP!110 lt!2039262) lt!2039299)))

(declare-fun b!4945759 () Bool)

(declare-fun e!3090083 () Bool)

(assert (=> b!4945759 (= e!3090083 (isPrefix!5082 (tail!9741 testedP!110) (tail!9741 lt!2039262)))))

(declare-fun b!4945760 () Bool)

(assert (=> b!4945760 (= e!3090084 (>= (size!37792 lt!2039262) (size!37792 testedP!110)))))

(declare-fun b!4945758 () Bool)

(declare-fun res!2110389 () Bool)

(assert (=> b!4945758 (=> (not res!2110389) (not e!3090083))))

(assert (=> b!4945758 (= res!2110389 (= (head!10602 testedP!110) (head!10602 lt!2039262)))))

(declare-fun b!4945757 () Bool)

(assert (=> b!4945757 (= e!3090085 e!3090083)))

(declare-fun res!2110387 () Bool)

(assert (=> b!4945757 (=> (not res!2110387) (not e!3090083))))

(assert (=> b!4945757 (= res!2110387 (not (is-Nil!56964 lt!2039262)))))

(assert (= (and d!1592353 (not res!2110386)) b!4945757))

(assert (= (and b!4945757 res!2110387) b!4945758))

(assert (= (and b!4945758 res!2110389) b!4945759))

(assert (= (and d!1592353 (not res!2110388)) b!4945760))

(assert (=> b!4945759 m!5968822))

(declare-fun m!5968832 () Bool)

(assert (=> b!4945759 m!5968832))

(assert (=> b!4945759 m!5968822))

(assert (=> b!4945759 m!5968832))

(declare-fun m!5968834 () Bool)

(assert (=> b!4945759 m!5968834))

(declare-fun m!5968836 () Bool)

(assert (=> b!4945760 m!5968836))

(assert (=> b!4945760 m!5968750))

(assert (=> b!4945758 m!5968828))

(declare-fun m!5968838 () Bool)

(assert (=> b!4945758 m!5968838))

(assert (=> b!4945691 d!1592353))

(declare-fun d!1592355 () Bool)

(assert (=> d!1592355 (isPrefix!5082 testedP!110 (++!12461 testedP!110 testedSuffix!70))))

(declare-fun lt!2039304 () Unit!147750)

(declare-fun choose!36450 (List!57088 List!57088) Unit!147750)

(assert (=> d!1592355 (= lt!2039304 (choose!36450 testedP!110 testedSuffix!70))))

(assert (=> d!1592355 (= (lemmaConcatTwoListThenFirstIsPrefix!3306 testedP!110 testedSuffix!70) lt!2039304)))

(declare-fun bs!1181665 () Bool)

(assert (= bs!1181665 d!1592355))

(assert (=> bs!1181665 m!5968768))

(assert (=> bs!1181665 m!5968768))

(declare-fun m!5968840 () Bool)

(assert (=> bs!1181665 m!5968840))

(declare-fun m!5968842 () Bool)

(assert (=> bs!1181665 m!5968842))

(assert (=> b!4945691 d!1592355))

(declare-fun d!1592357 () Bool)

(declare-fun list!18154 (Conc!14995) List!57088)

(assert (=> d!1592357 (= (list!18152 totalInput!685) (list!18154 (c!843909 totalInput!685)))))

(declare-fun bs!1181666 () Bool)

(assert (= bs!1181666 d!1592357))

(declare-fun m!5968844 () Bool)

(assert (=> bs!1181666 m!5968844))

(assert (=> start!520634 d!1592357))

(declare-fun b!4945783 () Bool)

(declare-fun res!2110401 () Bool)

(declare-fun e!3090096 () Bool)

(assert (=> b!4945783 (=> (not res!2110401) (not e!3090096))))

(declare-fun lt!2039308 () List!57088)

(assert (=> b!4945783 (= res!2110401 (= (size!37792 lt!2039308) (+ (size!37792 testedP!110) (size!37792 testedSuffix!70))))))

(declare-fun b!4945782 () Bool)

(declare-fun e!3090097 () List!57088)

(assert (=> b!4945782 (= e!3090097 (Cons!56964 (h!63412 testedP!110) (++!12461 (t!367624 testedP!110) testedSuffix!70)))))

(declare-fun d!1592359 () Bool)

(assert (=> d!1592359 e!3090096))

(declare-fun res!2110400 () Bool)

(assert (=> d!1592359 (=> (not res!2110400) (not e!3090096))))

(declare-fun content!10144 (List!57088) (Set C!27202))

(assert (=> d!1592359 (= res!2110400 (= (content!10144 lt!2039308) (set.union (content!10144 testedP!110) (content!10144 testedSuffix!70))))))

(assert (=> d!1592359 (= lt!2039308 e!3090097)))

(declare-fun c!843920 () Bool)

(assert (=> d!1592359 (= c!843920 (is-Nil!56964 testedP!110))))

(assert (=> d!1592359 (= (++!12461 testedP!110 testedSuffix!70) lt!2039308)))

(declare-fun b!4945784 () Bool)

(assert (=> b!4945784 (= e!3090096 (or (not (= testedSuffix!70 Nil!56964)) (= lt!2039308 testedP!110)))))

(declare-fun b!4945781 () Bool)

(assert (=> b!4945781 (= e!3090097 testedSuffix!70)))

(assert (= (and d!1592359 c!843920) b!4945781))

(assert (= (and d!1592359 (not c!843920)) b!4945782))

(assert (= (and d!1592359 res!2110400) b!4945783))

(assert (= (and b!4945783 res!2110401) b!4945784))

(declare-fun m!5968860 () Bool)

(assert (=> b!4945783 m!5968860))

(assert (=> b!4945783 m!5968750))

(declare-fun m!5968862 () Bool)

(assert (=> b!4945783 m!5968862))

(declare-fun m!5968864 () Bool)

(assert (=> b!4945782 m!5968864))

(declare-fun m!5968866 () Bool)

(assert (=> d!1592359 m!5968866))

(declare-fun m!5968868 () Bool)

(assert (=> d!1592359 m!5968868))

(declare-fun m!5968870 () Bool)

(assert (=> d!1592359 m!5968870))

(assert (=> start!520634 d!1592359))

(declare-fun d!1592363 () Bool)

(declare-fun isBalanced!4149 (Conc!14995) Bool)

(assert (=> d!1592363 (= (inv!74185 totalInput!685) (isBalanced!4149 (c!843909 totalInput!685)))))

(declare-fun bs!1181667 () Bool)

(assert (= bs!1181667 d!1592363))

(declare-fun m!5968872 () Bool)

(assert (=> bs!1181667 m!5968872))

(assert (=> start!520634 d!1592363))

(declare-fun d!1592365 () Bool)

(declare-fun lt!2039311 () Int)

(assert (=> d!1592365 (>= lt!2039311 0)))

(declare-fun e!3090100 () Int)

(assert (=> d!1592365 (= lt!2039311 e!3090100)))

(declare-fun c!843923 () Bool)

(assert (=> d!1592365 (= c!843923 (is-Nil!56964 testedP!110))))

(assert (=> d!1592365 (= (size!37792 testedP!110) lt!2039311)))

(declare-fun b!4945789 () Bool)

(assert (=> b!4945789 (= e!3090100 0)))

(declare-fun b!4945790 () Bool)

(assert (=> b!4945790 (= e!3090100 (+ 1 (size!37792 (t!367624 testedP!110))))))

(assert (= (and d!1592365 c!843923) b!4945789))

(assert (= (and d!1592365 (not c!843923)) b!4945790))

(declare-fun m!5968878 () Bool)

(assert (=> b!4945790 m!5968878))

(assert (=> b!4945692 d!1592365))

(declare-fun bs!1181672 () Bool)

(declare-fun b!4945815 () Bool)

(declare-fun d!1592371 () Bool)

(assert (= bs!1181672 (and b!4945815 d!1592371)))

(declare-fun lambda!246584 () Int)

(declare-fun lambda!246583 () Int)

(assert (=> bs!1181672 (not (= lambda!246584 lambda!246583))))

(declare-fun bs!1181673 () Bool)

(declare-fun b!4945816 () Bool)

(assert (= bs!1181673 (and b!4945816 d!1592371)))

(declare-fun lambda!246585 () Int)

(assert (=> bs!1181673 (not (= lambda!246585 lambda!246583))))

(declare-fun bs!1181674 () Bool)

(assert (= bs!1181674 (and b!4945816 b!4945815)))

(assert (=> bs!1181674 (= lambda!246585 lambda!246584)))

(declare-datatypes ((List!57091 0))(
  ( (Nil!56967) (Cons!56967 (h!63415 Context!6236) (t!367627 List!57091)) )
))
(declare-fun lt!2039345 () List!57091)

(declare-fun call!345182 () Bool)

(declare-fun c!843942 () Bool)

(declare-fun lt!2039343 () List!57091)

(declare-fun bm!345176 () Bool)

(declare-fun exists!1329 (List!57091 Int) Bool)

(assert (=> bm!345176 (= call!345182 (exists!1329 (ite c!843942 lt!2039345 lt!2039343) (ite c!843942 lambda!246584 lambda!246585)))))

(declare-fun e!3090117 () Unit!147750)

(declare-fun Unit!147754 () Unit!147750)

(assert (=> b!4945816 (= e!3090117 Unit!147754)))

(declare-fun call!345181 () List!57091)

(assert (=> b!4945816 (= lt!2039343 call!345181)))

(declare-fun lt!2039349 () Unit!147750)

(declare-fun lemmaForallThenNotExists!214 (List!57091 Int) Unit!147750)

(assert (=> b!4945816 (= lt!2039349 (lemmaForallThenNotExists!214 lt!2039343 lambda!246583))))

(assert (=> b!4945816 (not call!345182)))

(declare-fun lt!2039346 () Unit!147750)

(assert (=> b!4945816 (= lt!2039346 lt!2039349)))

(declare-fun lt!2039344 () Bool)

(declare-datatypes ((Option!14211 0))(
  ( (None!14210) (Some!14210 (v!50186 List!57088)) )
))
(declare-fun isEmpty!30655 (Option!14211) Bool)

(declare-fun getLanguageWitness!680 ((Set Context!6236)) Option!14211)

(assert (=> d!1592371 (= lt!2039344 (isEmpty!30655 (getLanguageWitness!680 z!3568)))))

(declare-fun forall!13253 ((Set Context!6236) Int) Bool)

(assert (=> d!1592371 (= lt!2039344 (forall!13253 z!3568 lambda!246583))))

(declare-fun lt!2039342 () Unit!147750)

(assert (=> d!1592371 (= lt!2039342 e!3090117)))

(assert (=> d!1592371 (= c!843942 (not (forall!13253 z!3568 lambda!246583)))))

(assert (=> d!1592371 (= (lostCauseZipper!794 z!3568) lt!2039344)))

(declare-fun bm!345177 () Bool)

(declare-fun toList!7993 ((Set Context!6236)) List!57091)

(assert (=> bm!345177 (= call!345181 (toList!7993 z!3568))))

(declare-fun Unit!147755 () Unit!147750)

(assert (=> b!4945815 (= e!3090117 Unit!147755)))

(assert (=> b!4945815 (= lt!2039345 call!345181)))

(declare-fun lt!2039347 () Unit!147750)

(declare-fun lemmaNotForallThenExists!231 (List!57091 Int) Unit!147750)

(assert (=> b!4945815 (= lt!2039347 (lemmaNotForallThenExists!231 lt!2039345 lambda!246583))))

(assert (=> b!4945815 call!345182))

(declare-fun lt!2039348 () Unit!147750)

(assert (=> b!4945815 (= lt!2039348 lt!2039347)))

(assert (= (and d!1592371 c!843942) b!4945815))

(assert (= (and d!1592371 (not c!843942)) b!4945816))

(assert (= (or b!4945815 b!4945816) bm!345176))

(assert (= (or b!4945815 b!4945816) bm!345177))

(declare-fun m!5968910 () Bool)

(assert (=> b!4945816 m!5968910))

(declare-fun m!5968912 () Bool)

(assert (=> d!1592371 m!5968912))

(assert (=> d!1592371 m!5968912))

(declare-fun m!5968914 () Bool)

(assert (=> d!1592371 m!5968914))

(declare-fun m!5968916 () Bool)

(assert (=> d!1592371 m!5968916))

(assert (=> d!1592371 m!5968916))

(declare-fun m!5968918 () Bool)

(assert (=> bm!345177 m!5968918))

(declare-fun m!5968920 () Bool)

(assert (=> b!4945815 m!5968920))

(declare-fun m!5968922 () Bool)

(assert (=> bm!345176 m!5968922))

(assert (=> b!4945684 d!1592371))

(declare-fun d!1592383 () Bool)

(assert (=> d!1592383 (= testedSuffix!70 lt!2039254)))

(declare-fun lt!2039352 () Unit!147750)

(declare-fun choose!36451 (List!57088 List!57088 List!57088 List!57088 List!57088) Unit!147750)

(assert (=> d!1592383 (= lt!2039352 (choose!36451 testedP!110 testedSuffix!70 testedP!110 lt!2039254 lt!2039257))))

(assert (=> d!1592383 (isPrefix!5082 testedP!110 lt!2039257)))

(assert (=> d!1592383 (= (lemmaSamePrefixThenSameSuffix!2474 testedP!110 testedSuffix!70 testedP!110 lt!2039254 lt!2039257) lt!2039352)))

(declare-fun bs!1181675 () Bool)

(assert (= bs!1181675 d!1592383))

(declare-fun m!5968924 () Bool)

(assert (=> bs!1181675 m!5968924))

(assert (=> bs!1181675 m!5968740))

(assert (=> b!4945684 d!1592383))

(declare-fun d!1592385 () Bool)

(declare-fun lt!2039355 () List!57088)

(assert (=> d!1592385 (= (++!12461 testedP!110 lt!2039355) lt!2039257)))

(declare-fun e!3090120 () List!57088)

(assert (=> d!1592385 (= lt!2039355 e!3090120)))

(declare-fun c!843945 () Bool)

(assert (=> d!1592385 (= c!843945 (is-Cons!56964 testedP!110))))

(assert (=> d!1592385 (>= (size!37792 lt!2039257) (size!37792 testedP!110))))

(assert (=> d!1592385 (= (getSuffix!3064 lt!2039257 testedP!110) lt!2039355)))

(declare-fun b!4945821 () Bool)

(assert (=> b!4945821 (= e!3090120 (getSuffix!3064 (tail!9741 lt!2039257) (t!367624 testedP!110)))))

(declare-fun b!4945822 () Bool)

(assert (=> b!4945822 (= e!3090120 lt!2039257)))

(assert (= (and d!1592385 c!843945) b!4945821))

(assert (= (and d!1592385 (not c!843945)) b!4945822))

(declare-fun m!5968926 () Bool)

(assert (=> d!1592385 m!5968926))

(assert (=> d!1592385 m!5968738))

(assert (=> d!1592385 m!5968750))

(assert (=> b!4945821 m!5968824))

(assert (=> b!4945821 m!5968824))

(declare-fun m!5968928 () Bool)

(assert (=> b!4945821 m!5968928))

(assert (=> b!4945684 d!1592385))

(declare-fun d!1592387 () Bool)

(declare-fun lt!2039358 () Int)

(assert (=> d!1592387 (= lt!2039358 (size!37792 (list!18152 totalInput!685)))))

(declare-fun size!37795 (Conc!14995) Int)

(assert (=> d!1592387 (= lt!2039358 (size!37795 (c!843909 totalInput!685)))))

(assert (=> d!1592387 (= (size!37791 totalInput!685) lt!2039358)))

(declare-fun bs!1181676 () Bool)

(assert (= bs!1181676 d!1592387))

(assert (=> bs!1181676 m!5968766))

(assert (=> bs!1181676 m!5968766))

(declare-fun m!5968930 () Bool)

(assert (=> bs!1181676 m!5968930))

(declare-fun m!5968932 () Bool)

(assert (=> bs!1181676 m!5968932))

(assert (=> b!4945694 d!1592387))

(declare-fun d!1592389 () Bool)

(declare-fun lt!2039359 () Int)

(assert (=> d!1592389 (>= lt!2039359 0)))

(declare-fun e!3090121 () Int)

(assert (=> d!1592389 (= lt!2039359 e!3090121)))

(declare-fun c!843946 () Bool)

(assert (=> d!1592389 (= c!843946 (is-Nil!56964 lt!2039257))))

(assert (=> d!1592389 (= (size!37792 lt!2039257) lt!2039359)))

(declare-fun b!4945823 () Bool)

(assert (=> b!4945823 (= e!3090121 0)))

(declare-fun b!4945824 () Bool)

(assert (=> b!4945824 (= e!3090121 (+ 1 (size!37792 (t!367624 lt!2039257))))))

(assert (= (and d!1592389 c!843946) b!4945823))

(assert (= (and d!1592389 (not c!843946)) b!4945824))

(declare-fun m!5968934 () Bool)

(assert (=> b!4945824 m!5968934))

(assert (=> b!4945695 d!1592389))

(declare-fun d!1592391 () Bool)

(assert (=> d!1592391 (and (= lt!2039260 testedP!110) (= lt!2039261 testedSuffix!70))))

(declare-fun lt!2039362 () Unit!147750)

(declare-fun choose!36452 (List!57088 List!57088 List!57088 List!57088) Unit!147750)

(assert (=> d!1592391 (= lt!2039362 (choose!36452 lt!2039260 lt!2039261 testedP!110 testedSuffix!70))))

(assert (=> d!1592391 (= (++!12461 lt!2039260 lt!2039261) (++!12461 testedP!110 testedSuffix!70))))

(assert (=> d!1592391 (= (lemmaConcatSameAndSameSizesThenSameLists!720 lt!2039260 lt!2039261 testedP!110 testedSuffix!70) lt!2039362)))

(declare-fun bs!1181677 () Bool)

(assert (= bs!1181677 d!1592391))

(declare-fun m!5968936 () Bool)

(assert (=> bs!1181677 m!5968936))

(assert (=> bs!1181677 m!5968752))

(assert (=> bs!1181677 m!5968768))

(assert (=> b!4945685 d!1592391))

(declare-fun b!4945827 () Bool)

(declare-fun res!2110411 () Bool)

(declare-fun e!3090122 () Bool)

(assert (=> b!4945827 (=> (not res!2110411) (not e!3090122))))

(declare-fun lt!2039363 () List!57088)

(assert (=> b!4945827 (= res!2110411 (= (size!37792 lt!2039363) (+ (size!37792 lt!2039260) (size!37792 lt!2039261))))))

(declare-fun b!4945826 () Bool)

(declare-fun e!3090123 () List!57088)

(assert (=> b!4945826 (= e!3090123 (Cons!56964 (h!63412 lt!2039260) (++!12461 (t!367624 lt!2039260) lt!2039261)))))

(declare-fun d!1592393 () Bool)

(assert (=> d!1592393 e!3090122))

(declare-fun res!2110410 () Bool)

(assert (=> d!1592393 (=> (not res!2110410) (not e!3090122))))

(assert (=> d!1592393 (= res!2110410 (= (content!10144 lt!2039363) (set.union (content!10144 lt!2039260) (content!10144 lt!2039261))))))

(assert (=> d!1592393 (= lt!2039363 e!3090123)))

(declare-fun c!843947 () Bool)

(assert (=> d!1592393 (= c!843947 (is-Nil!56964 lt!2039260))))

(assert (=> d!1592393 (= (++!12461 lt!2039260 lt!2039261) lt!2039363)))

(declare-fun b!4945828 () Bool)

(assert (=> b!4945828 (= e!3090122 (or (not (= lt!2039261 Nil!56964)) (= lt!2039363 lt!2039260)))))

(declare-fun b!4945825 () Bool)

(assert (=> b!4945825 (= e!3090123 lt!2039261)))

(assert (= (and d!1592393 c!843947) b!4945825))

(assert (= (and d!1592393 (not c!843947)) b!4945826))

(assert (= (and d!1592393 res!2110410) b!4945827))

(assert (= (and b!4945827 res!2110411) b!4945828))

(declare-fun m!5968938 () Bool)

(assert (=> b!4945827 m!5968938))

(declare-fun m!5968940 () Bool)

(assert (=> b!4945827 m!5968940))

(declare-fun m!5968942 () Bool)

(assert (=> b!4945827 m!5968942))

(declare-fun m!5968944 () Bool)

(assert (=> b!4945826 m!5968944))

(declare-fun m!5968946 () Bool)

(assert (=> d!1592393 m!5968946))

(declare-fun m!5968948 () Bool)

(assert (=> d!1592393 m!5968948))

(declare-fun m!5968950 () Bool)

(assert (=> d!1592393 m!5968950))

(assert (=> b!4945687 d!1592393))

(declare-fun d!1592395 () Bool)

(assert (=> d!1592395 (= (list!18152 (_2!34054 lt!2039258)) (list!18154 (c!843909 (_2!34054 lt!2039258))))))

(declare-fun bs!1181678 () Bool)

(assert (= bs!1181678 d!1592395))

(declare-fun m!5968952 () Bool)

(assert (=> bs!1181678 m!5968952))

(assert (=> b!4945687 d!1592395))

(declare-fun d!1592397 () Bool)

(assert (=> d!1592397 (= (list!18152 (_1!34054 lt!2039258)) (list!18154 (c!843909 (_1!34054 lt!2039258))))))

(declare-fun bs!1181679 () Bool)

(assert (= bs!1181679 d!1592397))

(declare-fun m!5968954 () Bool)

(assert (=> bs!1181679 m!5968954))

(assert (=> b!4945687 d!1592397))

(declare-fun d!1592399 () Bool)

(declare-fun e!3090126 () Bool)

(assert (=> d!1592399 e!3090126))

(declare-fun res!2110417 () Bool)

(assert (=> d!1592399 (=> (not res!2110417) (not e!3090126))))

(declare-fun lt!2039368 () tuple2!61502)

(assert (=> d!1592399 (= res!2110417 (isBalanced!4149 (c!843909 (_1!34054 lt!2039368))))))

(declare-datatypes ((tuple2!61506 0))(
  ( (tuple2!61507 (_1!34056 Conc!14995) (_2!34056 Conc!14995)) )
))
(declare-fun lt!2039369 () tuple2!61506)

(assert (=> d!1592399 (= lt!2039368 (tuple2!61503 (BalanceConc!29421 (_1!34056 lt!2039369)) (BalanceConc!29421 (_2!34056 lt!2039369))))))

(declare-fun splitAt!389 (Conc!14995 Int) tuple2!61506)

(assert (=> d!1592399 (= lt!2039369 (splitAt!389 (c!843909 totalInput!685) testedPSize!70))))

(assert (=> d!1592399 (isBalanced!4149 (c!843909 totalInput!685))))

(assert (=> d!1592399 (= (splitAt!387 totalInput!685 testedPSize!70) lt!2039368)))

(declare-fun b!4945833 () Bool)

(declare-fun res!2110416 () Bool)

(assert (=> b!4945833 (=> (not res!2110416) (not e!3090126))))

(assert (=> b!4945833 (= res!2110416 (isBalanced!4149 (c!843909 (_2!34054 lt!2039368))))))

(declare-fun b!4945834 () Bool)

(declare-datatypes ((tuple2!61508 0))(
  ( (tuple2!61509 (_1!34057 List!57088) (_2!34057 List!57088)) )
))
(declare-fun splitAtIndex!143 (List!57088 Int) tuple2!61508)

(assert (=> b!4945834 (= e!3090126 (= (tuple2!61509 (list!18152 (_1!34054 lt!2039368)) (list!18152 (_2!34054 lt!2039368))) (splitAtIndex!143 (list!18152 totalInput!685) testedPSize!70)))))

(assert (= (and d!1592399 res!2110417) b!4945833))

(assert (= (and b!4945833 res!2110416) b!4945834))

(declare-fun m!5968956 () Bool)

(assert (=> d!1592399 m!5968956))

(declare-fun m!5968958 () Bool)

(assert (=> d!1592399 m!5968958))

(assert (=> d!1592399 m!5968872))

(declare-fun m!5968960 () Bool)

(assert (=> b!4945833 m!5968960))

(declare-fun m!5968962 () Bool)

(assert (=> b!4945834 m!5968962))

(declare-fun m!5968964 () Bool)

(assert (=> b!4945834 m!5968964))

(assert (=> b!4945834 m!5968766))

(assert (=> b!4945834 m!5968766))

(declare-fun m!5968966 () Bool)

(assert (=> b!4945834 m!5968966))

(assert (=> b!4945687 d!1592399))

(declare-fun d!1592401 () Bool)

(declare-fun lambda!246588 () Int)

(declare-fun forall!13254 (List!57087 Int) Bool)

(assert (=> d!1592401 (= (inv!74186 setElem!28025) (forall!13254 (exprs!3618 setElem!28025) lambda!246588))))

(declare-fun bs!1181680 () Bool)

(assert (= bs!1181680 d!1592401))

(declare-fun m!5968968 () Bool)

(assert (=> bs!1181680 m!5968968))

(assert (=> setNonEmpty!28025 d!1592401))

(declare-fun d!1592403 () Bool)

(declare-fun c!843950 () Bool)

(assert (=> d!1592403 (= c!843950 (is-Node!14995 (c!843909 totalInput!685)))))

(declare-fun e!3090131 () Bool)

(assert (=> d!1592403 (= (inv!74187 (c!843909 totalInput!685)) e!3090131)))

(declare-fun b!4945841 () Bool)

(declare-fun inv!74191 (Conc!14995) Bool)

(assert (=> b!4945841 (= e!3090131 (inv!74191 (c!843909 totalInput!685)))))

(declare-fun b!4945842 () Bool)

(declare-fun e!3090132 () Bool)

(assert (=> b!4945842 (= e!3090131 e!3090132)))

(declare-fun res!2110420 () Bool)

(assert (=> b!4945842 (= res!2110420 (not (is-Leaf!24926 (c!843909 totalInput!685))))))

(assert (=> b!4945842 (=> res!2110420 e!3090132)))

(declare-fun b!4945843 () Bool)

(declare-fun inv!74192 (Conc!14995) Bool)

(assert (=> b!4945843 (= e!3090132 (inv!74192 (c!843909 totalInput!685)))))

(assert (= (and d!1592403 c!843950) b!4945841))

(assert (= (and d!1592403 (not c!843950)) b!4945842))

(assert (= (and b!4945842 (not res!2110420)) b!4945843))

(declare-fun m!5968970 () Bool)

(assert (=> b!4945841 m!5968970))

(declare-fun m!5968972 () Bool)

(assert (=> b!4945843 m!5968972))

(assert (=> b!4945688 d!1592403))

(declare-fun d!1592405 () Bool)

(declare-fun lt!2039370 () Int)

(assert (=> d!1592405 (= lt!2039370 (size!37792 (list!18152 (_1!34054 lt!2039258))))))

(assert (=> d!1592405 (= lt!2039370 (size!37795 (c!843909 (_1!34054 lt!2039258))))))

(assert (=> d!1592405 (= (size!37791 (_1!34054 lt!2039258)) lt!2039370)))

(declare-fun bs!1181681 () Bool)

(assert (= bs!1181681 d!1592405))

(assert (=> bs!1181681 m!5968756))

(assert (=> bs!1181681 m!5968756))

(declare-fun m!5968974 () Bool)

(assert (=> bs!1181681 m!5968974))

(declare-fun m!5968976 () Bool)

(assert (=> bs!1181681 m!5968976))

(assert (=> b!4945690 d!1592405))

(declare-fun b!4945848 () Bool)

(declare-fun e!3090135 () Bool)

(declare-fun tp!1387328 () Bool)

(assert (=> b!4945848 (= e!3090135 (and tp_is_empty!36149 tp!1387328))))

(assert (=> b!4945686 (= tp!1387306 e!3090135)))

(assert (= (and b!4945686 (is-Cons!56964 (t!367624 testedP!110))) b!4945848))

(declare-fun b!4945853 () Bool)

(declare-fun e!3090138 () Bool)

(declare-fun tp!1387333 () Bool)

(declare-fun tp!1387334 () Bool)

(assert (=> b!4945853 (= e!3090138 (and tp!1387333 tp!1387334))))

(assert (=> b!4945696 (= tp!1387309 e!3090138)))

(assert (= (and b!4945696 (is-Cons!56963 (exprs!3618 setElem!28025))) b!4945853))

(declare-fun condSetEmpty!28031 () Bool)

(assert (=> setNonEmpty!28025 (= condSetEmpty!28031 (= setRest!28025 (as set.empty (Set Context!6236))))))

(declare-fun setRes!28031 () Bool)

(assert (=> setNonEmpty!28025 (= tp!1387308 setRes!28031)))

(declare-fun setIsEmpty!28031 () Bool)

(assert (=> setIsEmpty!28031 setRes!28031))

(declare-fun setNonEmpty!28031 () Bool)

(declare-fun e!3090141 () Bool)

(declare-fun setElem!28031 () Context!6236)

(declare-fun tp!1387340 () Bool)

(assert (=> setNonEmpty!28031 (= setRes!28031 (and tp!1387340 (inv!74186 setElem!28031) e!3090141))))

(declare-fun setRest!28031 () (Set Context!6236))

(assert (=> setNonEmpty!28031 (= setRest!28025 (set.union (set.insert setElem!28031 (as set.empty (Set Context!6236))) setRest!28031))))

(declare-fun b!4945858 () Bool)

(declare-fun tp!1387339 () Bool)

(assert (=> b!4945858 (= e!3090141 tp!1387339)))

(assert (= (and setNonEmpty!28025 condSetEmpty!28031) setIsEmpty!28031))

(assert (= (and setNonEmpty!28025 (not condSetEmpty!28031)) setNonEmpty!28031))

(assert (= setNonEmpty!28031 b!4945858))

(declare-fun m!5968978 () Bool)

(assert (=> setNonEmpty!28031 m!5968978))

(declare-fun tp!1387347 () Bool)

(declare-fun b!4945867 () Bool)

(declare-fun tp!1387349 () Bool)

(declare-fun e!3090147 () Bool)

(assert (=> b!4945867 (= e!3090147 (and (inv!74187 (left!41559 (c!843909 totalInput!685))) tp!1387349 (inv!74187 (right!41889 (c!843909 totalInput!685))) tp!1387347))))

(declare-fun b!4945869 () Bool)

(declare-fun e!3090146 () Bool)

(declare-fun tp!1387348 () Bool)

(assert (=> b!4945869 (= e!3090146 tp!1387348)))

(declare-fun b!4945868 () Bool)

(declare-fun inv!74193 (IArray!30051) Bool)

(assert (=> b!4945868 (= e!3090147 (and (inv!74193 (xs!18321 (c!843909 totalInput!685))) e!3090146))))

(assert (=> b!4945688 (= tp!1387307 (and (inv!74187 (c!843909 totalInput!685)) e!3090147))))

(assert (= (and b!4945688 (is-Node!14995 (c!843909 totalInput!685))) b!4945867))

(assert (= b!4945868 b!4945869))

(assert (= (and b!4945688 (is-Leaf!24926 (c!843909 totalInput!685))) b!4945868))

(declare-fun m!5968980 () Bool)

(assert (=> b!4945867 m!5968980))

(declare-fun m!5968982 () Bool)

(assert (=> b!4945867 m!5968982))

(declare-fun m!5968984 () Bool)

(assert (=> b!4945868 m!5968984))

(assert (=> b!4945688 m!5968748))

(declare-fun b!4945870 () Bool)

(declare-fun e!3090148 () Bool)

(declare-fun tp!1387350 () Bool)

(assert (=> b!4945870 (= e!3090148 (and tp_is_empty!36149 tp!1387350))))

(assert (=> b!4945689 (= tp!1387310 e!3090148)))

(assert (= (and b!4945689 (is-Cons!56964 (t!367624 testedSuffix!70))) b!4945870))

(push 1)

(assert (not b!4945841))

(assert (not d!1592383))

(assert (not b!4945867))

(assert (not d!1592395))

(assert (not d!1592363))

(assert (not d!1592387))

(assert (not bm!345176))

(assert (not b!4945843))

(assert (not b!4945870))

(assert (not b!4945834))

(assert (not b!4945858))

(assert (not b!4945821))

(assert (not b!4945826))

(assert tp_is_empty!36149)

(assert (not d!1592355))

(assert (not b!4945783))

(assert (not b!4945782))

(assert (not d!1592385))

(assert (not d!1592391))

(assert (not b!4945760))

(assert (not d!1592393))

(assert (not b!4945824))

(assert (not d!1592399))

(assert (not b!4945790))

(assert (not b!4945827))

(assert (not b!4945815))

(assert (not d!1592401))

(assert (not b!4945754))

(assert (not bm!345177))

(assert (not b!4945848))

(assert (not b!4945688))

(assert (not b!4945853))

(assert (not b!4945758))

(assert (not b!4945833))

(assert (not b!4945869))

(assert (not d!1592371))

(assert (not setNonEmpty!28031))

(assert (not d!1592359))

(assert (not d!1592397))

(assert (not b!4945816))

(assert (not b!4945868))

(assert (not d!1592405))

(assert (not b!4945759))

(assert (not d!1592357))

(assert (not b!4945755))

(assert (not b!4945756))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

