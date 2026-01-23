; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!518310 () Bool)

(assert start!518310)

(declare-fun b!4933256 () Bool)

(declare-fun res!2105409 () Bool)

(declare-fun e!3082320 () Bool)

(assert (=> b!4933256 (=> res!2105409 e!3082320)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4933256 (= res!2105409 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4933257 () Bool)

(declare-fun e!3082317 () Bool)

(declare-fun tp!1384944 () Bool)

(assert (=> b!4933257 (= e!3082317 tp!1384944)))

(declare-fun b!4933258 () Bool)

(declare-fun e!3082326 () Bool)

(declare-datatypes ((C!27066 0))(
  ( (C!27067 (val!22867 Int)) )
))
(declare-datatypes ((List!56928 0))(
  ( (Nil!56804) (Cons!56804 (h!63252 C!27066) (t!367408 List!56928)) )
))
(declare-datatypes ((IArray!29915 0))(
  ( (IArray!29916 (innerList!15015 List!56928)) )
))
(declare-datatypes ((Conc!14927 0))(
  ( (Node!14927 (left!41425 Conc!14927) (right!41755 Conc!14927) (csize!30084 Int) (cheight!15138 Int)) (Leaf!24824 (xs!18251 IArray!29915) (csize!30085 Int)) (Empty!14927) )
))
(declare-datatypes ((BalanceConc!29284 0))(
  ( (BalanceConc!29285 (c!840744 Conc!14927)) )
))
(declare-fun totalInput!685 () BalanceConc!29284)

(declare-fun tp!1384947 () Bool)

(declare-fun inv!73775 (Conc!14927) Bool)

(assert (=> b!4933258 (= e!3082326 (and (inv!73775 (c!840744 totalInput!685)) tp!1384947))))

(declare-fun b!4933259 () Bool)

(declare-fun res!2105411 () Bool)

(declare-fun e!3082325 () Bool)

(assert (=> b!4933259 (=> res!2105411 e!3082325)))

(declare-datatypes ((tuple2!61288 0))(
  ( (tuple2!61289 (_1!33947 BalanceConc!29284) (_2!33947 BalanceConc!29284)) )
))
(declare-fun lt!2031531 () tuple2!61288)

(declare-fun size!37614 (BalanceConc!29284) Int)

(assert (=> b!4933259 (= res!2105411 (not (= (size!37614 (_1!33947 lt!2031531)) testedPSize!70)))))

(declare-fun b!4933260 () Bool)

(declare-fun e!3082322 () Bool)

(declare-fun lt!2031518 () Int)

(assert (=> b!4933260 (= e!3082322 (and (<= 0 testedPSize!70) (< testedPSize!70 lt!2031518)))))

(declare-fun b!4933261 () Bool)

(declare-fun e!3082328 () Bool)

(declare-fun e!3082318 () Bool)

(assert (=> b!4933261 (= e!3082328 e!3082318)))

(declare-fun res!2105410 () Bool)

(assert (=> b!4933261 (=> res!2105410 e!3082318)))

(declare-fun lt!2031524 () Int)

(assert (=> b!4933261 (= res!2105410 (>= lt!2031524 lt!2031518))))

(declare-datatypes ((Unit!147461 0))(
  ( (Unit!147462) )
))
(declare-fun lt!2031529 () Unit!147461)

(declare-fun e!3082323 () Unit!147461)

(assert (=> b!4933261 (= lt!2031529 e!3082323)))

(declare-fun c!840743 () Bool)

(assert (=> b!4933261 (= c!840743 (= lt!2031524 lt!2031518))))

(declare-fun lt!2031516 () List!56928)

(declare-fun size!37615 (List!56928) Int)

(assert (=> b!4933261 (<= lt!2031524 (size!37615 lt!2031516))))

(declare-fun lt!2031527 () Unit!147461)

(declare-fun testedP!110 () List!56928)

(declare-fun lemmaIsPrefixThenSmallerEqSize!704 (List!56928 List!56928) Unit!147461)

(assert (=> b!4933261 (= lt!2031527 (lemmaIsPrefixThenSmallerEqSize!704 testedP!110 lt!2031516))))

(declare-fun b!4933262 () Bool)

(declare-fun Unit!147463 () Unit!147461)

(assert (=> b!4933262 (= e!3082323 Unit!147463)))

(declare-fun lt!2031515 () Unit!147461)

(declare-fun lemmaIsPrefixRefl!3382 (List!56928 List!56928) Unit!147461)

(assert (=> b!4933262 (= lt!2031515 (lemmaIsPrefixRefl!3382 lt!2031516 lt!2031516))))

(declare-fun isPrefix!5016 (List!56928 List!56928) Bool)

(assert (=> b!4933262 (isPrefix!5016 lt!2031516 lt!2031516)))

(declare-fun lt!2031533 () Unit!147461)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1140 (List!56928 List!56928 List!56928) Unit!147461)

(assert (=> b!4933262 (= lt!2031533 (lemmaIsPrefixSameLengthThenSameList!1140 lt!2031516 testedP!110 lt!2031516))))

(assert (=> b!4933262 false))

(declare-fun setIsEmpty!27731 () Bool)

(declare-fun setRes!27731 () Bool)

(assert (=> setIsEmpty!27731 setRes!27731))

(declare-fun res!2105413 () Bool)

(declare-fun e!3082316 () Bool)

(assert (=> start!518310 (=> (not res!2105413) (not e!3082316))))

(declare-fun lt!2031520 () List!56928)

(assert (=> start!518310 (= res!2105413 (= lt!2031520 lt!2031516))))

(declare-fun list!18033 (BalanceConc!29284) List!56928)

(assert (=> start!518310 (= lt!2031516 (list!18033 totalInput!685))))

(declare-fun testedSuffix!70 () List!56928)

(declare-fun ++!12383 (List!56928 List!56928) List!56928)

(assert (=> start!518310 (= lt!2031520 (++!12383 testedP!110 testedSuffix!70))))

(assert (=> start!518310 e!3082316))

(declare-fun e!3082327 () Bool)

(assert (=> start!518310 e!3082327))

(declare-fun condSetEmpty!27731 () Bool)

(declare-datatypes ((Regex!13418 0))(
  ( (ElementMatch!13418 (c!840745 C!27066)) (Concat!21991 (regOne!27348 Regex!13418) (regTwo!27348 Regex!13418)) (EmptyExpr!13418) (Star!13418 (reg!13747 Regex!13418)) (EmptyLang!13418) (Union!13418 (regOne!27349 Regex!13418) (regTwo!27349 Regex!13418)) )
))
(declare-datatypes ((List!56929 0))(
  ( (Nil!56805) (Cons!56805 (h!63253 Regex!13418) (t!367409 List!56929)) )
))
(declare-datatypes ((Context!6120 0))(
  ( (Context!6121 (exprs!3560 List!56929)) )
))
(declare-fun z!3568 () (Set Context!6120))

(assert (=> start!518310 (= condSetEmpty!27731 (= z!3568 (as set.empty (Set Context!6120))))))

(assert (=> start!518310 setRes!27731))

(assert (=> start!518310 true))

(declare-fun inv!73776 (BalanceConc!29284) Bool)

(assert (=> start!518310 (and (inv!73776 totalInput!685) e!3082326)))

(declare-fun e!3082319 () Bool)

(assert (=> start!518310 e!3082319))

(declare-fun b!4933263 () Bool)

(declare-fun e!3082324 () Bool)

(assert (=> b!4933263 (= e!3082324 e!3082320)))

(declare-fun res!2105412 () Bool)

(assert (=> b!4933263 (=> res!2105412 e!3082320)))

(declare-fun lostCauseZipper!736 ((Set Context!6120)) Bool)

(assert (=> b!4933263 (= res!2105412 (lostCauseZipper!736 z!3568))))

(declare-fun lt!2031530 () List!56928)

(assert (=> b!4933263 (and (= testedSuffix!70 lt!2031530) (= lt!2031530 testedSuffix!70))))

(declare-fun lt!2031519 () Unit!147461)

(declare-fun lemmaSamePrefixThenSameSuffix!2414 (List!56928 List!56928 List!56928 List!56928 List!56928) Unit!147461)

(assert (=> b!4933263 (= lt!2031519 (lemmaSamePrefixThenSameSuffix!2414 testedP!110 testedSuffix!70 testedP!110 lt!2031530 lt!2031516))))

(declare-fun getSuffix!3000 (List!56928 List!56928) List!56928)

(assert (=> b!4933263 (= lt!2031530 (getSuffix!3000 lt!2031516 testedP!110))))

(declare-fun b!4933264 () Bool)

(declare-fun Unit!147464 () Unit!147461)

(assert (=> b!4933264 (= e!3082323 Unit!147464)))

(declare-fun b!4933265 () Bool)

(assert (=> b!4933265 (= e!3082320 e!3082325)))

(declare-fun res!2105416 () Bool)

(assert (=> b!4933265 (=> res!2105416 e!3082325)))

(declare-fun lt!2031517 () List!56928)

(declare-fun lt!2031523 () List!56928)

(assert (=> b!4933265 (= res!2105416 (not (= (++!12383 lt!2031517 lt!2031523) lt!2031516)))))

(assert (=> b!4933265 (= lt!2031523 (list!18033 (_2!33947 lt!2031531)))))

(assert (=> b!4933265 (= lt!2031517 (list!18033 (_1!33947 lt!2031531)))))

(declare-fun splitAt!314 (BalanceConc!29284 Int) tuple2!61288)

(assert (=> b!4933265 (= lt!2031531 (splitAt!314 totalInput!685 testedPSize!70))))

(declare-fun b!4933266 () Bool)

(assert (=> b!4933266 (= e!3082325 e!3082328)))

(declare-fun res!2105417 () Bool)

(assert (=> b!4933266 (=> res!2105417 e!3082328)))

(declare-fun lt!2031525 () C!27066)

(declare-fun head!10555 (List!56928) C!27066)

(assert (=> b!4933266 (= res!2105417 (not (= lt!2031525 (head!10555 testedSuffix!70))))))

(declare-fun apply!13714 (BalanceConc!29284 Int) C!27066)

(assert (=> b!4933266 (= lt!2031525 (apply!13714 totalInput!685 testedPSize!70))))

(declare-fun drop!2249 (List!56928 Int) List!56928)

(declare-fun apply!13715 (List!56928 Int) C!27066)

(assert (=> b!4933266 (= (head!10555 (drop!2249 lt!2031516 testedPSize!70)) (apply!13715 lt!2031516 testedPSize!70))))

(declare-fun lt!2031514 () Unit!147461)

(declare-fun lemmaDropApply!1307 (List!56928 Int) Unit!147461)

(assert (=> b!4933266 (= lt!2031514 (lemmaDropApply!1307 lt!2031516 testedPSize!70))))

(assert (=> b!4933266 (not (or (not (= lt!2031517 testedP!110)) (not (= lt!2031523 testedSuffix!70))))))

(declare-fun lt!2031522 () Unit!147461)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!684 (List!56928 List!56928 List!56928 List!56928) Unit!147461)

(assert (=> b!4933266 (= lt!2031522 (lemmaConcatSameAndSameSizesThenSameLists!684 lt!2031517 lt!2031523 testedP!110 testedSuffix!70))))

(declare-fun setNonEmpty!27731 () Bool)

(declare-fun tp!1384948 () Bool)

(declare-fun setElem!27731 () Context!6120)

(declare-fun inv!73777 (Context!6120) Bool)

(assert (=> setNonEmpty!27731 (= setRes!27731 (and tp!1384948 (inv!73777 setElem!27731) e!3082317))))

(declare-fun setRest!27731 () (Set Context!6120))

(assert (=> setNonEmpty!27731 (= z!3568 (set.union (set.insert setElem!27731 (as set.empty (Set Context!6120))) setRest!27731))))

(declare-fun b!4933267 () Bool)

(declare-fun tp_is_empty!36013 () Bool)

(declare-fun tp!1384946 () Bool)

(assert (=> b!4933267 (= e!3082327 (and tp_is_empty!36013 tp!1384946))))

(declare-fun b!4933268 () Bool)

(declare-fun e!3082315 () Bool)

(declare-fun e!3082321 () Bool)

(assert (=> b!4933268 (= e!3082315 e!3082321)))

(declare-fun res!2105407 () Bool)

(assert (=> b!4933268 (=> (not res!2105407) (not e!3082321))))

(assert (=> b!4933268 (= res!2105407 (= totalInputSize!132 lt!2031518))))

(assert (=> b!4933268 (= lt!2031518 (size!37614 totalInput!685))))

(declare-fun b!4933269 () Bool)

(assert (=> b!4933269 (= e!3082318 e!3082322)))

(declare-fun res!2105414 () Bool)

(assert (=> b!4933269 (=> res!2105414 e!3082322)))

(declare-fun nullableZipper!823 ((Set Context!6120)) Bool)

(assert (=> b!4933269 (= res!2105414 (not (nullableZipper!823 z!3568)))))

(declare-fun lt!2031521 () List!56928)

(assert (=> b!4933269 (= (++!12383 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804)) lt!2031521) lt!2031516)))

(declare-fun lt!2031528 () Unit!147461)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1398 (List!56928 C!27066 List!56928 List!56928) Unit!147461)

(assert (=> b!4933269 (= lt!2031528 (lemmaMoveElementToOtherListKeepsConcatEq!1398 testedP!110 lt!2031525 lt!2031521 lt!2031516))))

(declare-fun tail!9694 (List!56928) List!56928)

(assert (=> b!4933269 (= lt!2031521 (tail!9694 testedSuffix!70))))

(assert (=> b!4933269 (isPrefix!5016 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804)) lt!2031516)))

(declare-fun lt!2031532 () Unit!147461)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!786 (List!56928 List!56928) Unit!147461)

(assert (=> b!4933269 (= lt!2031532 (lemmaAddHeadSuffixToPrefixStillPrefix!786 testedP!110 lt!2031516))))

(declare-fun b!4933270 () Bool)

(assert (=> b!4933270 (= e!3082316 e!3082315)))

(declare-fun res!2105408 () Bool)

(assert (=> b!4933270 (=> (not res!2105408) (not e!3082315))))

(assert (=> b!4933270 (= res!2105408 (= testedPSize!70 lt!2031524))))

(assert (=> b!4933270 (= lt!2031524 (size!37615 testedP!110))))

(declare-fun b!4933271 () Bool)

(declare-fun tp!1384945 () Bool)

(assert (=> b!4933271 (= e!3082319 (and tp_is_empty!36013 tp!1384945))))

(declare-fun b!4933272 () Bool)

(assert (=> b!4933272 (= e!3082321 (not e!3082324))))

(declare-fun res!2105415 () Bool)

(assert (=> b!4933272 (=> res!2105415 e!3082324)))

(assert (=> b!4933272 (= res!2105415 (not (isPrefix!5016 testedP!110 lt!2031516)))))

(assert (=> b!4933272 (isPrefix!5016 testedP!110 lt!2031520)))

(declare-fun lt!2031526 () Unit!147461)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3240 (List!56928 List!56928) Unit!147461)

(assert (=> b!4933272 (= lt!2031526 (lemmaConcatTwoListThenFirstIsPrefix!3240 testedP!110 testedSuffix!70))))

(assert (= (and start!518310 res!2105413) b!4933270))

(assert (= (and b!4933270 res!2105408) b!4933268))

(assert (= (and b!4933268 res!2105407) b!4933272))

(assert (= (and b!4933272 (not res!2105415)) b!4933263))

(assert (= (and b!4933263 (not res!2105412)) b!4933256))

(assert (= (and b!4933256 (not res!2105409)) b!4933265))

(assert (= (and b!4933265 (not res!2105416)) b!4933259))

(assert (= (and b!4933259 (not res!2105411)) b!4933266))

(assert (= (and b!4933266 (not res!2105417)) b!4933261))

(assert (= (and b!4933261 c!840743) b!4933262))

(assert (= (and b!4933261 (not c!840743)) b!4933264))

(assert (= (and b!4933261 (not res!2105410)) b!4933269))

(assert (= (and b!4933269 (not res!2105414)) b!4933260))

(assert (= (and start!518310 (is-Cons!56804 testedP!110)) b!4933267))

(assert (= (and start!518310 condSetEmpty!27731) setIsEmpty!27731))

(assert (= (and start!518310 (not condSetEmpty!27731)) setNonEmpty!27731))

(assert (= setNonEmpty!27731 b!4933257))

(assert (= start!518310 b!4933258))

(assert (= (and start!518310 (is-Cons!56804 testedSuffix!70)) b!4933271))

(declare-fun m!5953664 () Bool)

(assert (=> b!4933262 m!5953664))

(declare-fun m!5953666 () Bool)

(assert (=> b!4933262 m!5953666))

(declare-fun m!5953668 () Bool)

(assert (=> b!4933262 m!5953668))

(declare-fun m!5953670 () Bool)

(assert (=> start!518310 m!5953670))

(declare-fun m!5953672 () Bool)

(assert (=> start!518310 m!5953672))

(declare-fun m!5953674 () Bool)

(assert (=> start!518310 m!5953674))

(declare-fun m!5953676 () Bool)

(assert (=> b!4933263 m!5953676))

(declare-fun m!5953678 () Bool)

(assert (=> b!4933263 m!5953678))

(declare-fun m!5953680 () Bool)

(assert (=> b!4933263 m!5953680))

(declare-fun m!5953682 () Bool)

(assert (=> b!4933259 m!5953682))

(declare-fun m!5953684 () Bool)

(assert (=> b!4933268 m!5953684))

(declare-fun m!5953686 () Bool)

(assert (=> b!4933269 m!5953686))

(declare-fun m!5953688 () Bool)

(assert (=> b!4933269 m!5953688))

(assert (=> b!4933269 m!5953686))

(declare-fun m!5953690 () Bool)

(assert (=> b!4933269 m!5953690))

(declare-fun m!5953692 () Bool)

(assert (=> b!4933269 m!5953692))

(declare-fun m!5953694 () Bool)

(assert (=> b!4933269 m!5953694))

(declare-fun m!5953696 () Bool)

(assert (=> b!4933269 m!5953696))

(declare-fun m!5953698 () Bool)

(assert (=> b!4933269 m!5953698))

(declare-fun m!5953700 () Bool)

(assert (=> b!4933269 m!5953700))

(assert (=> b!4933269 m!5953696))

(declare-fun m!5953702 () Bool)

(assert (=> b!4933269 m!5953702))

(declare-fun m!5953704 () Bool)

(assert (=> b!4933272 m!5953704))

(declare-fun m!5953706 () Bool)

(assert (=> b!4933272 m!5953706))

(declare-fun m!5953708 () Bool)

(assert (=> b!4933272 m!5953708))

(declare-fun m!5953710 () Bool)

(assert (=> b!4933258 m!5953710))

(declare-fun m!5953712 () Bool)

(assert (=> b!4933270 m!5953712))

(declare-fun m!5953714 () Bool)

(assert (=> setNonEmpty!27731 m!5953714))

(declare-fun m!5953716 () Bool)

(assert (=> b!4933266 m!5953716))

(declare-fun m!5953718 () Bool)

(assert (=> b!4933266 m!5953718))

(declare-fun m!5953720 () Bool)

(assert (=> b!4933266 m!5953720))

(declare-fun m!5953722 () Bool)

(assert (=> b!4933266 m!5953722))

(assert (=> b!4933266 m!5953722))

(declare-fun m!5953724 () Bool)

(assert (=> b!4933266 m!5953724))

(declare-fun m!5953726 () Bool)

(assert (=> b!4933266 m!5953726))

(declare-fun m!5953728 () Bool)

(assert (=> b!4933266 m!5953728))

(declare-fun m!5953730 () Bool)

(assert (=> b!4933265 m!5953730))

(declare-fun m!5953732 () Bool)

(assert (=> b!4933265 m!5953732))

(declare-fun m!5953734 () Bool)

(assert (=> b!4933265 m!5953734))

(declare-fun m!5953736 () Bool)

(assert (=> b!4933265 m!5953736))

(declare-fun m!5953738 () Bool)

(assert (=> b!4933261 m!5953738))

(declare-fun m!5953740 () Bool)

(assert (=> b!4933261 m!5953740))

(push 1)

(assert tp_is_empty!36013)

(assert (not b!4933271))

(assert (not b!4933261))

(assert (not setNonEmpty!27731))

(assert (not b!4933268))

(assert (not start!518310))

(assert (not b!4933258))

(assert (not b!4933267))

(assert (not b!4933266))

(assert (not b!4933270))

(assert (not b!4933263))

(assert (not b!4933259))

(assert (not b!4933269))

(assert (not b!4933265))

(assert (not b!4933262))

(assert (not b!4933272))

(assert (not b!4933257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4933334 () Bool)

(declare-fun e!3082379 () Bool)

(assert (=> b!4933334 (= e!3082379 (isPrefix!5016 (tail!9694 testedP!110) (tail!9694 lt!2031516)))))

(declare-fun b!4933333 () Bool)

(declare-fun res!2105461 () Bool)

(assert (=> b!4933333 (=> (not res!2105461) (not e!3082379))))

(assert (=> b!4933333 (= res!2105461 (= (head!10555 testedP!110) (head!10555 lt!2031516)))))

(declare-fun b!4933335 () Bool)

(declare-fun e!3082378 () Bool)

(assert (=> b!4933335 (= e!3082378 (>= (size!37615 lt!2031516) (size!37615 testedP!110)))))

(declare-fun b!4933332 () Bool)

(declare-fun e!3082377 () Bool)

(assert (=> b!4933332 (= e!3082377 e!3082379)))

(declare-fun res!2105462 () Bool)

(assert (=> b!4933332 (=> (not res!2105462) (not e!3082379))))

(assert (=> b!4933332 (= res!2105462 (not (is-Nil!56804 lt!2031516)))))

(declare-fun d!1587933 () Bool)

(assert (=> d!1587933 e!3082378))

(declare-fun res!2105460 () Bool)

(assert (=> d!1587933 (=> res!2105460 e!3082378)))

(declare-fun lt!2031596 () Bool)

(assert (=> d!1587933 (= res!2105460 (not lt!2031596))))

(assert (=> d!1587933 (= lt!2031596 e!3082377)))

(declare-fun res!2105459 () Bool)

(assert (=> d!1587933 (=> res!2105459 e!3082377)))

(assert (=> d!1587933 (= res!2105459 (is-Nil!56804 testedP!110))))

(assert (=> d!1587933 (= (isPrefix!5016 testedP!110 lt!2031516) lt!2031596)))

(assert (= (and d!1587933 (not res!2105459)) b!4933332))

(assert (= (and b!4933332 res!2105462) b!4933333))

(assert (= (and b!4933333 res!2105461) b!4933334))

(assert (= (and d!1587933 (not res!2105460)) b!4933335))

(declare-fun m!5953820 () Bool)

(assert (=> b!4933334 m!5953820))

(declare-fun m!5953822 () Bool)

(assert (=> b!4933334 m!5953822))

(assert (=> b!4933334 m!5953820))

(assert (=> b!4933334 m!5953822))

(declare-fun m!5953824 () Bool)

(assert (=> b!4933334 m!5953824))

(declare-fun m!5953826 () Bool)

(assert (=> b!4933333 m!5953826))

(declare-fun m!5953828 () Bool)

(assert (=> b!4933333 m!5953828))

(assert (=> b!4933335 m!5953738))

(assert (=> b!4933335 m!5953712))

(assert (=> b!4933272 d!1587933))

(declare-fun b!4933338 () Bool)

(declare-fun e!3082382 () Bool)

(assert (=> b!4933338 (= e!3082382 (isPrefix!5016 (tail!9694 testedP!110) (tail!9694 lt!2031520)))))

(declare-fun b!4933337 () Bool)

(declare-fun res!2105465 () Bool)

(assert (=> b!4933337 (=> (not res!2105465) (not e!3082382))))

(assert (=> b!4933337 (= res!2105465 (= (head!10555 testedP!110) (head!10555 lt!2031520)))))

(declare-fun b!4933339 () Bool)

(declare-fun e!3082381 () Bool)

(assert (=> b!4933339 (= e!3082381 (>= (size!37615 lt!2031520) (size!37615 testedP!110)))))

(declare-fun b!4933336 () Bool)

(declare-fun e!3082380 () Bool)

(assert (=> b!4933336 (= e!3082380 e!3082382)))

(declare-fun res!2105466 () Bool)

(assert (=> b!4933336 (=> (not res!2105466) (not e!3082382))))

(assert (=> b!4933336 (= res!2105466 (not (is-Nil!56804 lt!2031520)))))

(declare-fun d!1587935 () Bool)

(assert (=> d!1587935 e!3082381))

(declare-fun res!2105464 () Bool)

(assert (=> d!1587935 (=> res!2105464 e!3082381)))

(declare-fun lt!2031597 () Bool)

(assert (=> d!1587935 (= res!2105464 (not lt!2031597))))

(assert (=> d!1587935 (= lt!2031597 e!3082380)))

(declare-fun res!2105463 () Bool)

(assert (=> d!1587935 (=> res!2105463 e!3082380)))

(assert (=> d!1587935 (= res!2105463 (is-Nil!56804 testedP!110))))

(assert (=> d!1587935 (= (isPrefix!5016 testedP!110 lt!2031520) lt!2031597)))

(assert (= (and d!1587935 (not res!2105463)) b!4933336))

(assert (= (and b!4933336 res!2105466) b!4933337))

(assert (= (and b!4933337 res!2105465) b!4933338))

(assert (= (and d!1587935 (not res!2105464)) b!4933339))

(assert (=> b!4933338 m!5953820))

(declare-fun m!5953830 () Bool)

(assert (=> b!4933338 m!5953830))

(assert (=> b!4933338 m!5953820))

(assert (=> b!4933338 m!5953830))

(declare-fun m!5953832 () Bool)

(assert (=> b!4933338 m!5953832))

(assert (=> b!4933337 m!5953826))

(declare-fun m!5953834 () Bool)

(assert (=> b!4933337 m!5953834))

(declare-fun m!5953836 () Bool)

(assert (=> b!4933339 m!5953836))

(assert (=> b!4933339 m!5953712))

(assert (=> b!4933272 d!1587935))

(declare-fun d!1587939 () Bool)

(assert (=> d!1587939 (isPrefix!5016 testedP!110 (++!12383 testedP!110 testedSuffix!70))))

(declare-fun lt!2031600 () Unit!147461)

(declare-fun choose!36184 (List!56928 List!56928) Unit!147461)

(assert (=> d!1587939 (= lt!2031600 (choose!36184 testedP!110 testedSuffix!70))))

(assert (=> d!1587939 (= (lemmaConcatTwoListThenFirstIsPrefix!3240 testedP!110 testedSuffix!70) lt!2031600)))

(declare-fun bs!1180469 () Bool)

(assert (= bs!1180469 d!1587939))

(assert (=> bs!1180469 m!5953672))

(assert (=> bs!1180469 m!5953672))

(declare-fun m!5953838 () Bool)

(assert (=> bs!1180469 m!5953838))

(declare-fun m!5953840 () Bool)

(assert (=> bs!1180469 m!5953840))

(assert (=> b!4933272 d!1587939))

(declare-fun d!1587941 () Bool)

(declare-fun list!18035 (Conc!14927) List!56928)

(assert (=> d!1587941 (= (list!18033 totalInput!685) (list!18035 (c!840744 totalInput!685)))))

(declare-fun bs!1180470 () Bool)

(assert (= bs!1180470 d!1587941))

(declare-fun m!5953842 () Bool)

(assert (=> bs!1180470 m!5953842))

(assert (=> start!518310 d!1587941))

(declare-fun b!4933348 () Bool)

(declare-fun e!3082388 () List!56928)

(assert (=> b!4933348 (= e!3082388 testedSuffix!70)))

(declare-fun b!4933350 () Bool)

(declare-fun res!2105471 () Bool)

(declare-fun e!3082387 () Bool)

(assert (=> b!4933350 (=> (not res!2105471) (not e!3082387))))

(declare-fun lt!2031603 () List!56928)

(assert (=> b!4933350 (= res!2105471 (= (size!37615 lt!2031603) (+ (size!37615 testedP!110) (size!37615 testedSuffix!70))))))

(declare-fun b!4933351 () Bool)

(assert (=> b!4933351 (= e!3082387 (or (not (= testedSuffix!70 Nil!56804)) (= lt!2031603 testedP!110)))))

(declare-fun b!4933349 () Bool)

(assert (=> b!4933349 (= e!3082388 (Cons!56804 (h!63252 testedP!110) (++!12383 (t!367408 testedP!110) testedSuffix!70)))))

(declare-fun d!1587943 () Bool)

(assert (=> d!1587943 e!3082387))

(declare-fun res!2105472 () Bool)

(assert (=> d!1587943 (=> (not res!2105472) (not e!3082387))))

(declare-fun content!10095 (List!56928) (Set C!27066))

(assert (=> d!1587943 (= res!2105472 (= (content!10095 lt!2031603) (set.union (content!10095 testedP!110) (content!10095 testedSuffix!70))))))

(assert (=> d!1587943 (= lt!2031603 e!3082388)))

(declare-fun c!840753 () Bool)

(assert (=> d!1587943 (= c!840753 (is-Nil!56804 testedP!110))))

(assert (=> d!1587943 (= (++!12383 testedP!110 testedSuffix!70) lt!2031603)))

(assert (= (and d!1587943 c!840753) b!4933348))

(assert (= (and d!1587943 (not c!840753)) b!4933349))

(assert (= (and d!1587943 res!2105472) b!4933350))

(assert (= (and b!4933350 res!2105471) b!4933351))

(declare-fun m!5953844 () Bool)

(assert (=> b!4933350 m!5953844))

(assert (=> b!4933350 m!5953712))

(declare-fun m!5953846 () Bool)

(assert (=> b!4933350 m!5953846))

(declare-fun m!5953848 () Bool)

(assert (=> b!4933349 m!5953848))

(declare-fun m!5953850 () Bool)

(assert (=> d!1587943 m!5953850))

(declare-fun m!5953852 () Bool)

(assert (=> d!1587943 m!5953852))

(declare-fun m!5953854 () Bool)

(assert (=> d!1587943 m!5953854))

(assert (=> start!518310 d!1587943))

(declare-fun d!1587945 () Bool)

(declare-fun isBalanced!4110 (Conc!14927) Bool)

(assert (=> d!1587945 (= (inv!73776 totalInput!685) (isBalanced!4110 (c!840744 totalInput!685)))))

(declare-fun bs!1180471 () Bool)

(assert (= bs!1180471 d!1587945))

(declare-fun m!5953856 () Bool)

(assert (=> bs!1180471 m!5953856))

(assert (=> start!518310 d!1587945))

(declare-fun bs!1180472 () Bool)

(declare-fun b!4933360 () Bool)

(declare-fun d!1587947 () Bool)

(assert (= bs!1180472 (and b!4933360 d!1587947)))

(declare-fun lambda!245658 () Int)

(declare-fun lambda!245657 () Int)

(assert (=> bs!1180472 (not (= lambda!245658 lambda!245657))))

(declare-fun bs!1180473 () Bool)

(declare-fun b!4933361 () Bool)

(assert (= bs!1180473 (and b!4933361 d!1587947)))

(declare-fun lambda!245659 () Int)

(assert (=> bs!1180473 (not (= lambda!245659 lambda!245657))))

(declare-fun bs!1180474 () Bool)

(assert (= bs!1180474 (and b!4933361 b!4933360)))

(assert (=> bs!1180474 (= lambda!245659 lambda!245658)))

(declare-fun e!3082397 () Unit!147461)

(declare-fun Unit!147469 () Unit!147461)

(assert (=> b!4933360 (= e!3082397 Unit!147469)))

(declare-datatypes ((List!56932 0))(
  ( (Nil!56808) (Cons!56808 (h!63256 Context!6120) (t!367412 List!56932)) )
))
(declare-fun lt!2031628 () List!56932)

(declare-fun call!344226 () List!56932)

(assert (=> b!4933360 (= lt!2031628 call!344226)))

(declare-fun lt!2031627 () Unit!147461)

(declare-fun lemmaNotForallThenExists!198 (List!56932 Int) Unit!147461)

(assert (=> b!4933360 (= lt!2031627 (lemmaNotForallThenExists!198 lt!2031628 lambda!245657))))

(declare-fun call!344225 () Bool)

(assert (=> b!4933360 call!344225))

(declare-fun lt!2031624 () Unit!147461)

(assert (=> b!4933360 (= lt!2031624 lt!2031627)))

(declare-fun lt!2031631 () Bool)

(declare-datatypes ((Option!14178 0))(
  ( (None!14177) (Some!14177 (v!50147 List!56928)) )
))
(declare-fun isEmpty!30603 (Option!14178) Bool)

(declare-fun getLanguageWitness!636 ((Set Context!6120)) Option!14178)

(assert (=> d!1587947 (= lt!2031631 (isEmpty!30603 (getLanguageWitness!636 z!3568)))))

(declare-fun forall!13175 ((Set Context!6120) Int) Bool)

(assert (=> d!1587947 (= lt!2031631 (forall!13175 z!3568 lambda!245657))))

(declare-fun lt!2031629 () Unit!147461)

(assert (=> d!1587947 (= lt!2031629 e!3082397)))

(declare-fun c!840768 () Bool)

(assert (=> d!1587947 (= c!840768 (not (forall!13175 z!3568 lambda!245657)))))

(assert (=> d!1587947 (= (lostCauseZipper!736 z!3568) lt!2031631)))

(declare-fun Unit!147470 () Unit!147461)

(assert (=> b!4933361 (= e!3082397 Unit!147470)))

(declare-fun lt!2031630 () List!56932)

(assert (=> b!4933361 (= lt!2031630 call!344226)))

(declare-fun lt!2031625 () Unit!147461)

(declare-fun lemmaForallThenNotExists!181 (List!56932 Int) Unit!147461)

(assert (=> b!4933361 (= lt!2031625 (lemmaForallThenNotExists!181 lt!2031630 lambda!245657))))

(assert (=> b!4933361 (not call!344225)))

(declare-fun lt!2031626 () Unit!147461)

(assert (=> b!4933361 (= lt!2031626 lt!2031625)))

(declare-fun bm!344221 () Bool)

(declare-fun toList!7960 ((Set Context!6120)) List!56932)

(assert (=> bm!344221 (= call!344226 (toList!7960 z!3568))))

(declare-fun bm!344220 () Bool)

(declare-fun exists!1267 (List!56932 Int) Bool)

(assert (=> bm!344220 (= call!344225 (exists!1267 (ite c!840768 lt!2031628 lt!2031630) (ite c!840768 lambda!245658 lambda!245659)))))

(assert (= (and d!1587947 c!840768) b!4933360))

(assert (= (and d!1587947 (not c!840768)) b!4933361))

(assert (= (or b!4933360 b!4933361) bm!344220))

(assert (= (or b!4933360 b!4933361) bm!344221))

(declare-fun m!5953858 () Bool)

(assert (=> bm!344221 m!5953858))

(declare-fun m!5953860 () Bool)

(assert (=> b!4933360 m!5953860))

(declare-fun m!5953862 () Bool)

(assert (=> d!1587947 m!5953862))

(assert (=> d!1587947 m!5953862))

(declare-fun m!5953864 () Bool)

(assert (=> d!1587947 m!5953864))

(declare-fun m!5953866 () Bool)

(assert (=> d!1587947 m!5953866))

(assert (=> d!1587947 m!5953866))

(declare-fun m!5953868 () Bool)

(assert (=> bm!344220 m!5953868))

(declare-fun m!5953870 () Bool)

(assert (=> b!4933361 m!5953870))

(assert (=> b!4933263 d!1587947))

(declare-fun d!1587949 () Bool)

(assert (=> d!1587949 (= testedSuffix!70 lt!2031530)))

(declare-fun lt!2031634 () Unit!147461)

(declare-fun choose!36185 (List!56928 List!56928 List!56928 List!56928 List!56928) Unit!147461)

(assert (=> d!1587949 (= lt!2031634 (choose!36185 testedP!110 testedSuffix!70 testedP!110 lt!2031530 lt!2031516))))

(assert (=> d!1587949 (isPrefix!5016 testedP!110 lt!2031516)))

(assert (=> d!1587949 (= (lemmaSamePrefixThenSameSuffix!2414 testedP!110 testedSuffix!70 testedP!110 lt!2031530 lt!2031516) lt!2031634)))

(declare-fun bs!1180475 () Bool)

(assert (= bs!1180475 d!1587949))

(declare-fun m!5953872 () Bool)

(assert (=> bs!1180475 m!5953872))

(assert (=> bs!1180475 m!5953704))

(assert (=> b!4933263 d!1587949))

(declare-fun d!1587951 () Bool)

(declare-fun lt!2031637 () List!56928)

(assert (=> d!1587951 (= (++!12383 testedP!110 lt!2031637) lt!2031516)))

(declare-fun e!3082400 () List!56928)

(assert (=> d!1587951 (= lt!2031637 e!3082400)))

(declare-fun c!840771 () Bool)

(assert (=> d!1587951 (= c!840771 (is-Cons!56804 testedP!110))))

(assert (=> d!1587951 (>= (size!37615 lt!2031516) (size!37615 testedP!110))))

(assert (=> d!1587951 (= (getSuffix!3000 lt!2031516 testedP!110) lt!2031637)))

(declare-fun b!4933366 () Bool)

(assert (=> b!4933366 (= e!3082400 (getSuffix!3000 (tail!9694 lt!2031516) (t!367408 testedP!110)))))

(declare-fun b!4933367 () Bool)

(assert (=> b!4933367 (= e!3082400 lt!2031516)))

(assert (= (and d!1587951 c!840771) b!4933366))

(assert (= (and d!1587951 (not c!840771)) b!4933367))

(declare-fun m!5953874 () Bool)

(assert (=> d!1587951 m!5953874))

(assert (=> d!1587951 m!5953738))

(assert (=> d!1587951 m!5953712))

(assert (=> b!4933366 m!5953822))

(assert (=> b!4933366 m!5953822))

(declare-fun m!5953876 () Bool)

(assert (=> b!4933366 m!5953876))

(assert (=> b!4933263 d!1587951))

(declare-fun d!1587953 () Bool)

(assert (=> d!1587953 (isPrefix!5016 lt!2031516 lt!2031516)))

(declare-fun lt!2031640 () Unit!147461)

(declare-fun choose!36186 (List!56928 List!56928) Unit!147461)

(assert (=> d!1587953 (= lt!2031640 (choose!36186 lt!2031516 lt!2031516))))

(assert (=> d!1587953 (= (lemmaIsPrefixRefl!3382 lt!2031516 lt!2031516) lt!2031640)))

(declare-fun bs!1180476 () Bool)

(assert (= bs!1180476 d!1587953))

(assert (=> bs!1180476 m!5953666))

(declare-fun m!5953878 () Bool)

(assert (=> bs!1180476 m!5953878))

(assert (=> b!4933262 d!1587953))

(declare-fun b!4933370 () Bool)

(declare-fun e!3082403 () Bool)

(assert (=> b!4933370 (= e!3082403 (isPrefix!5016 (tail!9694 lt!2031516) (tail!9694 lt!2031516)))))

(declare-fun b!4933369 () Bool)

(declare-fun res!2105475 () Bool)

(assert (=> b!4933369 (=> (not res!2105475) (not e!3082403))))

(assert (=> b!4933369 (= res!2105475 (= (head!10555 lt!2031516) (head!10555 lt!2031516)))))

(declare-fun b!4933371 () Bool)

(declare-fun e!3082402 () Bool)

(assert (=> b!4933371 (= e!3082402 (>= (size!37615 lt!2031516) (size!37615 lt!2031516)))))

(declare-fun b!4933368 () Bool)

(declare-fun e!3082401 () Bool)

(assert (=> b!4933368 (= e!3082401 e!3082403)))

(declare-fun res!2105476 () Bool)

(assert (=> b!4933368 (=> (not res!2105476) (not e!3082403))))

(assert (=> b!4933368 (= res!2105476 (not (is-Nil!56804 lt!2031516)))))

(declare-fun d!1587955 () Bool)

(assert (=> d!1587955 e!3082402))

(declare-fun res!2105474 () Bool)

(assert (=> d!1587955 (=> res!2105474 e!3082402)))

(declare-fun lt!2031641 () Bool)

(assert (=> d!1587955 (= res!2105474 (not lt!2031641))))

(assert (=> d!1587955 (= lt!2031641 e!3082401)))

(declare-fun res!2105473 () Bool)

(assert (=> d!1587955 (=> res!2105473 e!3082401)))

(assert (=> d!1587955 (= res!2105473 (is-Nil!56804 lt!2031516))))

(assert (=> d!1587955 (= (isPrefix!5016 lt!2031516 lt!2031516) lt!2031641)))

(assert (= (and d!1587955 (not res!2105473)) b!4933368))

(assert (= (and b!4933368 res!2105476) b!4933369))

(assert (= (and b!4933369 res!2105475) b!4933370))

(assert (= (and d!1587955 (not res!2105474)) b!4933371))

(assert (=> b!4933370 m!5953822))

(assert (=> b!4933370 m!5953822))

(assert (=> b!4933370 m!5953822))

(assert (=> b!4933370 m!5953822))

(declare-fun m!5953880 () Bool)

(assert (=> b!4933370 m!5953880))

(assert (=> b!4933369 m!5953828))

(assert (=> b!4933369 m!5953828))

(assert (=> b!4933371 m!5953738))

(assert (=> b!4933371 m!5953738))

(assert (=> b!4933262 d!1587955))

(declare-fun d!1587957 () Bool)

(assert (=> d!1587957 (= lt!2031516 testedP!110)))

(declare-fun lt!2031644 () Unit!147461)

(declare-fun choose!36187 (List!56928 List!56928 List!56928) Unit!147461)

(assert (=> d!1587957 (= lt!2031644 (choose!36187 lt!2031516 testedP!110 lt!2031516))))

(assert (=> d!1587957 (isPrefix!5016 lt!2031516 lt!2031516)))

(assert (=> d!1587957 (= (lemmaIsPrefixSameLengthThenSameList!1140 lt!2031516 testedP!110 lt!2031516) lt!2031644)))

(declare-fun bs!1180477 () Bool)

(assert (= bs!1180477 d!1587957))

(declare-fun m!5953882 () Bool)

(assert (=> bs!1180477 m!5953882))

(assert (=> bs!1180477 m!5953666))

(assert (=> b!4933262 d!1587957))

(declare-fun bs!1180478 () Bool)

(declare-fun d!1587959 () Bool)

(assert (= bs!1180478 (and d!1587959 d!1587947)))

(declare-fun lambda!245662 () Int)

(assert (=> bs!1180478 (not (= lambda!245662 lambda!245657))))

(declare-fun bs!1180479 () Bool)

(assert (= bs!1180479 (and d!1587959 b!4933360)))

(assert (=> bs!1180479 (not (= lambda!245662 lambda!245658))))

(declare-fun bs!1180480 () Bool)

(assert (= bs!1180480 (and d!1587959 b!4933361)))

(assert (=> bs!1180480 (not (= lambda!245662 lambda!245659))))

(declare-fun exists!1268 ((Set Context!6120) Int) Bool)

(assert (=> d!1587959 (= (nullableZipper!823 z!3568) (exists!1268 z!3568 lambda!245662))))

(declare-fun bs!1180481 () Bool)

(assert (= bs!1180481 d!1587959))

(declare-fun m!5953884 () Bool)

(assert (=> bs!1180481 m!5953884))

(assert (=> b!4933269 d!1587959))

(declare-fun b!4933372 () Bool)

(declare-fun e!3082405 () List!56928)

(assert (=> b!4933372 (= e!3082405 lt!2031521)))

(declare-fun b!4933374 () Bool)

(declare-fun res!2105477 () Bool)

(declare-fun e!3082404 () Bool)

(assert (=> b!4933374 (=> (not res!2105477) (not e!3082404))))

(declare-fun lt!2031645 () List!56928)

(assert (=> b!4933374 (= res!2105477 (= (size!37615 lt!2031645) (+ (size!37615 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804))) (size!37615 lt!2031521))))))

(declare-fun b!4933375 () Bool)

(assert (=> b!4933375 (= e!3082404 (or (not (= lt!2031521 Nil!56804)) (= lt!2031645 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804)))))))

(declare-fun b!4933373 () Bool)

(assert (=> b!4933373 (= e!3082405 (Cons!56804 (h!63252 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804))) (++!12383 (t!367408 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804))) lt!2031521)))))

(declare-fun d!1587961 () Bool)

(assert (=> d!1587961 e!3082404))

(declare-fun res!2105478 () Bool)

(assert (=> d!1587961 (=> (not res!2105478) (not e!3082404))))

(assert (=> d!1587961 (= res!2105478 (= (content!10095 lt!2031645) (set.union (content!10095 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804))) (content!10095 lt!2031521))))))

(assert (=> d!1587961 (= lt!2031645 e!3082405)))

(declare-fun c!840774 () Bool)

(assert (=> d!1587961 (= c!840774 (is-Nil!56804 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804))))))

(assert (=> d!1587961 (= (++!12383 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804)) lt!2031521) lt!2031645)))

(assert (= (and d!1587961 c!840774) b!4933372))

(assert (= (and d!1587961 (not c!840774)) b!4933373))

(assert (= (and d!1587961 res!2105478) b!4933374))

(assert (= (and b!4933374 res!2105477) b!4933375))

(declare-fun m!5953886 () Bool)

(assert (=> b!4933374 m!5953886))

(assert (=> b!4933374 m!5953696))

(declare-fun m!5953888 () Bool)

(assert (=> b!4933374 m!5953888))

(declare-fun m!5953890 () Bool)

(assert (=> b!4933374 m!5953890))

(declare-fun m!5953892 () Bool)

(assert (=> b!4933373 m!5953892))

(declare-fun m!5953894 () Bool)

(assert (=> d!1587961 m!5953894))

(assert (=> d!1587961 m!5953696))

(declare-fun m!5953896 () Bool)

(assert (=> d!1587961 m!5953896))

(declare-fun m!5953898 () Bool)

(assert (=> d!1587961 m!5953898))

(assert (=> b!4933269 d!1587961))

(declare-fun e!3082408 () Bool)

(declare-fun b!4933378 () Bool)

(assert (=> b!4933378 (= e!3082408 (isPrefix!5016 (tail!9694 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804))) (tail!9694 lt!2031516)))))

(declare-fun b!4933377 () Bool)

(declare-fun res!2105481 () Bool)

(assert (=> b!4933377 (=> (not res!2105481) (not e!3082408))))

(assert (=> b!4933377 (= res!2105481 (= (head!10555 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804))) (head!10555 lt!2031516)))))

(declare-fun b!4933379 () Bool)

(declare-fun e!3082407 () Bool)

(assert (=> b!4933379 (= e!3082407 (>= (size!37615 lt!2031516) (size!37615 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804)))))))

(declare-fun b!4933376 () Bool)

(declare-fun e!3082406 () Bool)

(assert (=> b!4933376 (= e!3082406 e!3082408)))

(declare-fun res!2105482 () Bool)

(assert (=> b!4933376 (=> (not res!2105482) (not e!3082408))))

(assert (=> b!4933376 (= res!2105482 (not (is-Nil!56804 lt!2031516)))))

(declare-fun d!1587963 () Bool)

(assert (=> d!1587963 e!3082407))

(declare-fun res!2105480 () Bool)

(assert (=> d!1587963 (=> res!2105480 e!3082407)))

(declare-fun lt!2031646 () Bool)

(assert (=> d!1587963 (= res!2105480 (not lt!2031646))))

(assert (=> d!1587963 (= lt!2031646 e!3082406)))

(declare-fun res!2105479 () Bool)

(assert (=> d!1587963 (=> res!2105479 e!3082406)))

(assert (=> d!1587963 (= res!2105479 (is-Nil!56804 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804))))))

(assert (=> d!1587963 (= (isPrefix!5016 (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804)) lt!2031516) lt!2031646)))

(assert (= (and d!1587963 (not res!2105479)) b!4933376))

(assert (= (and b!4933376 res!2105482) b!4933377))

(assert (= (and b!4933377 res!2105481) b!4933378))

(assert (= (and d!1587963 (not res!2105480)) b!4933379))

(assert (=> b!4933378 m!5953686))

(declare-fun m!5953900 () Bool)

(assert (=> b!4933378 m!5953900))

(assert (=> b!4933378 m!5953822))

(assert (=> b!4933378 m!5953900))

(assert (=> b!4933378 m!5953822))

(declare-fun m!5953902 () Bool)

(assert (=> b!4933378 m!5953902))

(assert (=> b!4933377 m!5953686))

(declare-fun m!5953904 () Bool)

(assert (=> b!4933377 m!5953904))

(assert (=> b!4933377 m!5953828))

(assert (=> b!4933379 m!5953738))

(assert (=> b!4933379 m!5953686))

(declare-fun m!5953906 () Bool)

(assert (=> b!4933379 m!5953906))

(assert (=> b!4933269 d!1587963))

(declare-fun d!1587965 () Bool)

(assert (=> d!1587965 (= (++!12383 (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804)) lt!2031521) lt!2031516)))

(declare-fun lt!2031649 () Unit!147461)

(declare-fun choose!36188 (List!56928 C!27066 List!56928 List!56928) Unit!147461)

(assert (=> d!1587965 (= lt!2031649 (choose!36188 testedP!110 lt!2031525 lt!2031521 lt!2031516))))

(assert (=> d!1587965 (= (++!12383 testedP!110 (Cons!56804 lt!2031525 lt!2031521)) lt!2031516)))

(assert (=> d!1587965 (= (lemmaMoveElementToOtherListKeepsConcatEq!1398 testedP!110 lt!2031525 lt!2031521 lt!2031516) lt!2031649)))

(declare-fun bs!1180482 () Bool)

(assert (= bs!1180482 d!1587965))

(assert (=> bs!1180482 m!5953696))

(assert (=> bs!1180482 m!5953696))

(assert (=> bs!1180482 m!5953702))

(declare-fun m!5953908 () Bool)

(assert (=> bs!1180482 m!5953908))

(declare-fun m!5953910 () Bool)

(assert (=> bs!1180482 m!5953910))

(assert (=> b!4933269 d!1587965))

(declare-fun b!4933380 () Bool)

(declare-fun e!3082410 () List!56928)

(assert (=> b!4933380 (= e!3082410 (Cons!56804 lt!2031525 Nil!56804))))

(declare-fun b!4933382 () Bool)

(declare-fun res!2105483 () Bool)

(declare-fun e!3082409 () Bool)

(assert (=> b!4933382 (=> (not res!2105483) (not e!3082409))))

(declare-fun lt!2031650 () List!56928)

(assert (=> b!4933382 (= res!2105483 (= (size!37615 lt!2031650) (+ (size!37615 testedP!110) (size!37615 (Cons!56804 lt!2031525 Nil!56804)))))))

(declare-fun b!4933383 () Bool)

(assert (=> b!4933383 (= e!3082409 (or (not (= (Cons!56804 lt!2031525 Nil!56804) Nil!56804)) (= lt!2031650 testedP!110)))))

(declare-fun b!4933381 () Bool)

(assert (=> b!4933381 (= e!3082410 (Cons!56804 (h!63252 testedP!110) (++!12383 (t!367408 testedP!110) (Cons!56804 lt!2031525 Nil!56804))))))

(declare-fun d!1587967 () Bool)

(assert (=> d!1587967 e!3082409))

(declare-fun res!2105484 () Bool)

(assert (=> d!1587967 (=> (not res!2105484) (not e!3082409))))

(assert (=> d!1587967 (= res!2105484 (= (content!10095 lt!2031650) (set.union (content!10095 testedP!110) (content!10095 (Cons!56804 lt!2031525 Nil!56804)))))))

(assert (=> d!1587967 (= lt!2031650 e!3082410)))

(declare-fun c!840775 () Bool)

(assert (=> d!1587967 (= c!840775 (is-Nil!56804 testedP!110))))

(assert (=> d!1587967 (= (++!12383 testedP!110 (Cons!56804 lt!2031525 Nil!56804)) lt!2031650)))

(assert (= (and d!1587967 c!840775) b!4933380))

(assert (= (and d!1587967 (not c!840775)) b!4933381))

(assert (= (and d!1587967 res!2105484) b!4933382))

(assert (= (and b!4933382 res!2105483) b!4933383))

(declare-fun m!5953912 () Bool)

(assert (=> b!4933382 m!5953912))

(assert (=> b!4933382 m!5953712))

(declare-fun m!5953914 () Bool)

(assert (=> b!4933382 m!5953914))

(declare-fun m!5953916 () Bool)

(assert (=> b!4933381 m!5953916))

(declare-fun m!5953918 () Bool)

(assert (=> d!1587967 m!5953918))

(assert (=> d!1587967 m!5953852))

(declare-fun m!5953920 () Bool)

(assert (=> d!1587967 m!5953920))

(assert (=> b!4933269 d!1587967))

(declare-fun d!1587969 () Bool)

(assert (=> d!1587969 (isPrefix!5016 (++!12383 testedP!110 (Cons!56804 (head!10555 (getSuffix!3000 lt!2031516 testedP!110)) Nil!56804)) lt!2031516)))

(declare-fun lt!2031653 () Unit!147461)

(declare-fun choose!36189 (List!56928 List!56928) Unit!147461)

(assert (=> d!1587969 (= lt!2031653 (choose!36189 testedP!110 lt!2031516))))

(assert (=> d!1587969 (isPrefix!5016 testedP!110 lt!2031516)))

(assert (=> d!1587969 (= (lemmaAddHeadSuffixToPrefixStillPrefix!786 testedP!110 lt!2031516) lt!2031653)))

(declare-fun bs!1180483 () Bool)

(assert (= bs!1180483 d!1587969))

(declare-fun m!5953922 () Bool)

(assert (=> bs!1180483 m!5953922))

(assert (=> bs!1180483 m!5953680))

(assert (=> bs!1180483 m!5953680))

(declare-fun m!5953924 () Bool)

(assert (=> bs!1180483 m!5953924))

(declare-fun m!5953926 () Bool)

(assert (=> bs!1180483 m!5953926))

(declare-fun m!5953928 () Bool)

(assert (=> bs!1180483 m!5953928))

(assert (=> bs!1180483 m!5953926))

(assert (=> bs!1180483 m!5953704))

(assert (=> b!4933269 d!1587969))

(declare-fun d!1587971 () Bool)

(assert (=> d!1587971 (= (tail!9694 testedSuffix!70) (t!367408 testedSuffix!70))))

(assert (=> b!4933269 d!1587971))

(declare-fun b!4933384 () Bool)

(declare-fun e!3082412 () List!56928)

(assert (=> b!4933384 (= e!3082412 (Cons!56804 (head!10555 lt!2031530) Nil!56804))))

(declare-fun b!4933386 () Bool)

(declare-fun res!2105485 () Bool)

(declare-fun e!3082411 () Bool)

(assert (=> b!4933386 (=> (not res!2105485) (not e!3082411))))

(declare-fun lt!2031654 () List!56928)

(assert (=> b!4933386 (= res!2105485 (= (size!37615 lt!2031654) (+ (size!37615 testedP!110) (size!37615 (Cons!56804 (head!10555 lt!2031530) Nil!56804)))))))

(declare-fun b!4933387 () Bool)

(assert (=> b!4933387 (= e!3082411 (or (not (= (Cons!56804 (head!10555 lt!2031530) Nil!56804) Nil!56804)) (= lt!2031654 testedP!110)))))

(declare-fun b!4933385 () Bool)

(assert (=> b!4933385 (= e!3082412 (Cons!56804 (h!63252 testedP!110) (++!12383 (t!367408 testedP!110) (Cons!56804 (head!10555 lt!2031530) Nil!56804))))))

(declare-fun d!1587973 () Bool)

(assert (=> d!1587973 e!3082411))

(declare-fun res!2105486 () Bool)

(assert (=> d!1587973 (=> (not res!2105486) (not e!3082411))))

(assert (=> d!1587973 (= res!2105486 (= (content!10095 lt!2031654) (set.union (content!10095 testedP!110) (content!10095 (Cons!56804 (head!10555 lt!2031530) Nil!56804)))))))

(assert (=> d!1587973 (= lt!2031654 e!3082412)))

(declare-fun c!840776 () Bool)

(assert (=> d!1587973 (= c!840776 (is-Nil!56804 testedP!110))))

(assert (=> d!1587973 (= (++!12383 testedP!110 (Cons!56804 (head!10555 lt!2031530) Nil!56804)) lt!2031654)))

(assert (= (and d!1587973 c!840776) b!4933384))

(assert (= (and d!1587973 (not c!840776)) b!4933385))

(assert (= (and d!1587973 res!2105486) b!4933386))

(assert (= (and b!4933386 res!2105485) b!4933387))

(declare-fun m!5953930 () Bool)

(assert (=> b!4933386 m!5953930))

(assert (=> b!4933386 m!5953712))

(declare-fun m!5953932 () Bool)

(assert (=> b!4933386 m!5953932))

(declare-fun m!5953934 () Bool)

(assert (=> b!4933385 m!5953934))

(declare-fun m!5953936 () Bool)

(assert (=> d!1587973 m!5953936))

(assert (=> d!1587973 m!5953852))

(declare-fun m!5953938 () Bool)

(assert (=> d!1587973 m!5953938))

(assert (=> b!4933269 d!1587973))

(declare-fun d!1587975 () Bool)

(assert (=> d!1587975 (= (head!10555 lt!2031530) (h!63252 lt!2031530))))

(assert (=> b!4933269 d!1587975))

(declare-fun d!1587977 () Bool)

(declare-fun lt!2031657 () Int)

(assert (=> d!1587977 (>= lt!2031657 0)))

(declare-fun e!3082415 () Int)

(assert (=> d!1587977 (= lt!2031657 e!3082415)))

(declare-fun c!840779 () Bool)

(assert (=> d!1587977 (= c!840779 (is-Nil!56804 lt!2031516))))

(assert (=> d!1587977 (= (size!37615 lt!2031516) lt!2031657)))

(declare-fun b!4933392 () Bool)

(assert (=> b!4933392 (= e!3082415 0)))

(declare-fun b!4933393 () Bool)

(assert (=> b!4933393 (= e!3082415 (+ 1 (size!37615 (t!367408 lt!2031516))))))

(assert (= (and d!1587977 c!840779) b!4933392))

(assert (= (and d!1587977 (not c!840779)) b!4933393))

(declare-fun m!5953940 () Bool)

(assert (=> b!4933393 m!5953940))

(assert (=> b!4933261 d!1587977))

(declare-fun d!1587979 () Bool)

(assert (=> d!1587979 (<= (size!37615 testedP!110) (size!37615 lt!2031516))))

(declare-fun lt!2031660 () Unit!147461)

(declare-fun choose!36190 (List!56928 List!56928) Unit!147461)

(assert (=> d!1587979 (= lt!2031660 (choose!36190 testedP!110 lt!2031516))))

(assert (=> d!1587979 (isPrefix!5016 testedP!110 lt!2031516)))

(assert (=> d!1587979 (= (lemmaIsPrefixThenSmallerEqSize!704 testedP!110 lt!2031516) lt!2031660)))

(declare-fun bs!1180484 () Bool)

(assert (= bs!1180484 d!1587979))

(assert (=> bs!1180484 m!5953712))

(assert (=> bs!1180484 m!5953738))

(declare-fun m!5953942 () Bool)

(assert (=> bs!1180484 m!5953942))

(assert (=> bs!1180484 m!5953704))

(assert (=> b!4933261 d!1587979))

(declare-fun d!1587981 () Bool)

(declare-fun lt!2031661 () Int)

(assert (=> d!1587981 (>= lt!2031661 0)))

(declare-fun e!3082416 () Int)

(assert (=> d!1587981 (= lt!2031661 e!3082416)))

(declare-fun c!840780 () Bool)

(assert (=> d!1587981 (= c!840780 (is-Nil!56804 testedP!110))))

(assert (=> d!1587981 (= (size!37615 testedP!110) lt!2031661)))

(declare-fun b!4933394 () Bool)

(assert (=> b!4933394 (= e!3082416 0)))

(declare-fun b!4933395 () Bool)

(assert (=> b!4933395 (= e!3082416 (+ 1 (size!37615 (t!367408 testedP!110))))))

(assert (= (and d!1587981 c!840780) b!4933394))

(assert (= (and d!1587981 (not c!840780)) b!4933395))

(declare-fun m!5953944 () Bool)

(assert (=> b!4933395 m!5953944))

(assert (=> b!4933270 d!1587981))

(declare-fun d!1587983 () Bool)

(declare-fun lt!2031664 () Int)

(assert (=> d!1587983 (= lt!2031664 (size!37615 (list!18033 (_1!33947 lt!2031531))))))

(declare-fun size!37618 (Conc!14927) Int)

(assert (=> d!1587983 (= lt!2031664 (size!37618 (c!840744 (_1!33947 lt!2031531))))))

(assert (=> d!1587983 (= (size!37614 (_1!33947 lt!2031531)) lt!2031664)))

(declare-fun bs!1180485 () Bool)

(assert (= bs!1180485 d!1587983))

(assert (=> bs!1180485 m!5953734))

(assert (=> bs!1180485 m!5953734))

(declare-fun m!5953946 () Bool)

(assert (=> bs!1180485 m!5953946))

(declare-fun m!5953948 () Bool)

(assert (=> bs!1180485 m!5953948))

(assert (=> b!4933259 d!1587983))

(declare-fun d!1587985 () Bool)

(declare-fun lt!2031665 () Int)

(assert (=> d!1587985 (= lt!2031665 (size!37615 (list!18033 totalInput!685)))))

(assert (=> d!1587985 (= lt!2031665 (size!37618 (c!840744 totalInput!685)))))

(assert (=> d!1587985 (= (size!37614 totalInput!685) lt!2031665)))

(declare-fun bs!1180486 () Bool)

(assert (= bs!1180486 d!1587985))

(assert (=> bs!1180486 m!5953670))

(assert (=> bs!1180486 m!5953670))

(declare-fun m!5953950 () Bool)

(assert (=> bs!1180486 m!5953950))

(declare-fun m!5953952 () Bool)

(assert (=> bs!1180486 m!5953952))

(assert (=> b!4933268 d!1587985))

(declare-fun d!1587987 () Bool)

(declare-fun c!840783 () Bool)

(assert (=> d!1587987 (= c!840783 (is-Node!14927 (c!840744 totalInput!685)))))

(declare-fun e!3082421 () Bool)

(assert (=> d!1587987 (= (inv!73775 (c!840744 totalInput!685)) e!3082421)))

(declare-fun b!4933402 () Bool)

(declare-fun inv!73781 (Conc!14927) Bool)

(assert (=> b!4933402 (= e!3082421 (inv!73781 (c!840744 totalInput!685)))))

(declare-fun b!4933403 () Bool)

(declare-fun e!3082422 () Bool)

(assert (=> b!4933403 (= e!3082421 e!3082422)))

(declare-fun res!2105489 () Bool)

(assert (=> b!4933403 (= res!2105489 (not (is-Leaf!24824 (c!840744 totalInput!685))))))

(assert (=> b!4933403 (=> res!2105489 e!3082422)))

(declare-fun b!4933404 () Bool)

(declare-fun inv!73782 (Conc!14927) Bool)

(assert (=> b!4933404 (= e!3082422 (inv!73782 (c!840744 totalInput!685)))))

(assert (= (and d!1587987 c!840783) b!4933402))

(assert (= (and d!1587987 (not c!840783)) b!4933403))

(assert (= (and b!4933403 (not res!2105489)) b!4933404))

(declare-fun m!5953954 () Bool)

(assert (=> b!4933402 m!5953954))

(declare-fun m!5953956 () Bool)

(assert (=> b!4933404 m!5953956))

(assert (=> b!4933258 d!1587987))

(declare-fun d!1587989 () Bool)

(assert (=> d!1587989 (= (head!10555 (drop!2249 lt!2031516 testedPSize!70)) (h!63252 (drop!2249 lt!2031516 testedPSize!70)))))

(assert (=> b!4933266 d!1587989))

(declare-fun d!1587991 () Bool)

(assert (=> d!1587991 (= (head!10555 (drop!2249 lt!2031516 testedPSize!70)) (apply!13715 lt!2031516 testedPSize!70))))

(declare-fun lt!2031668 () Unit!147461)

(declare-fun choose!36191 (List!56928 Int) Unit!147461)

(assert (=> d!1587991 (= lt!2031668 (choose!36191 lt!2031516 testedPSize!70))))

(declare-fun e!3082425 () Bool)

(assert (=> d!1587991 e!3082425))

(declare-fun res!2105492 () Bool)

(assert (=> d!1587991 (=> (not res!2105492) (not e!3082425))))

(assert (=> d!1587991 (= res!2105492 (>= testedPSize!70 0))))

(assert (=> d!1587991 (= (lemmaDropApply!1307 lt!2031516 testedPSize!70) lt!2031668)))

(declare-fun b!4933407 () Bool)

(assert (=> b!4933407 (= e!3082425 (< testedPSize!70 (size!37615 lt!2031516)))))

(assert (= (and d!1587991 res!2105492) b!4933407))

(assert (=> d!1587991 m!5953722))

(assert (=> d!1587991 m!5953722))

(assert (=> d!1587991 m!5953724))

(assert (=> d!1587991 m!5953726))

(declare-fun m!5953958 () Bool)

(assert (=> d!1587991 m!5953958))

(assert (=> b!4933407 m!5953738))

(assert (=> b!4933266 d!1587991))

(declare-fun d!1587993 () Bool)

(assert (=> d!1587993 (= (head!10555 testedSuffix!70) (h!63252 testedSuffix!70))))

(assert (=> b!4933266 d!1587993))

(declare-fun d!1587995 () Bool)

(assert (=> d!1587995 (and (= lt!2031517 testedP!110) (= lt!2031523 testedSuffix!70))))

(declare-fun lt!2031671 () Unit!147461)

(declare-fun choose!36192 (List!56928 List!56928 List!56928 List!56928) Unit!147461)

(assert (=> d!1587995 (= lt!2031671 (choose!36192 lt!2031517 lt!2031523 testedP!110 testedSuffix!70))))

(assert (=> d!1587995 (= (++!12383 lt!2031517 lt!2031523) (++!12383 testedP!110 testedSuffix!70))))

(assert (=> d!1587995 (= (lemmaConcatSameAndSameSizesThenSameLists!684 lt!2031517 lt!2031523 testedP!110 testedSuffix!70) lt!2031671)))

(declare-fun bs!1180487 () Bool)

(assert (= bs!1180487 d!1587995))

(declare-fun m!5953960 () Bool)

(assert (=> bs!1180487 m!5953960))

(assert (=> bs!1180487 m!5953730))

(assert (=> bs!1180487 m!5953672))

(assert (=> b!4933266 d!1587995))

(declare-fun d!1587997 () Bool)

(declare-fun lt!2031674 () C!27066)

(declare-fun contains!19467 (List!56928 C!27066) Bool)

(assert (=> d!1587997 (contains!19467 lt!2031516 lt!2031674)))

(declare-fun e!3082431 () C!27066)

(assert (=> d!1587997 (= lt!2031674 e!3082431)))

(declare-fun c!840786 () Bool)

(assert (=> d!1587997 (= c!840786 (= testedPSize!70 0))))

(declare-fun e!3082430 () Bool)

(assert (=> d!1587997 e!3082430))

(declare-fun res!2105495 () Bool)

(assert (=> d!1587997 (=> (not res!2105495) (not e!3082430))))

(assert (=> d!1587997 (= res!2105495 (<= 0 testedPSize!70))))

(assert (=> d!1587997 (= (apply!13715 lt!2031516 testedPSize!70) lt!2031674)))

(declare-fun b!4933414 () Bool)

(assert (=> b!4933414 (= e!3082430 (< testedPSize!70 (size!37615 lt!2031516)))))

(declare-fun b!4933415 () Bool)

(assert (=> b!4933415 (= e!3082431 (head!10555 lt!2031516))))

(declare-fun b!4933416 () Bool)

(assert (=> b!4933416 (= e!3082431 (apply!13715 (tail!9694 lt!2031516) (- testedPSize!70 1)))))

(assert (= (and d!1587997 res!2105495) b!4933414))

(assert (= (and d!1587997 c!840786) b!4933415))

(assert (= (and d!1587997 (not c!840786)) b!4933416))

(declare-fun m!5953962 () Bool)

(assert (=> d!1587997 m!5953962))

(assert (=> b!4933414 m!5953738))

(assert (=> b!4933415 m!5953828))

(assert (=> b!4933416 m!5953822))

(assert (=> b!4933416 m!5953822))

(declare-fun m!5953964 () Bool)

(assert (=> b!4933416 m!5953964))

(assert (=> b!4933266 d!1587997))

(declare-fun b!4933435 () Bool)

(declare-fun e!3082444 () Int)

(declare-fun call!344229 () Int)

(assert (=> b!4933435 (= e!3082444 call!344229)))

(declare-fun bm!344224 () Bool)

(assert (=> bm!344224 (= call!344229 (size!37615 lt!2031516))))

(declare-fun b!4933436 () Bool)

(declare-fun e!3082442 () List!56928)

(declare-fun e!3082446 () List!56928)

(assert (=> b!4933436 (= e!3082442 e!3082446)))

(declare-fun c!840798 () Bool)

(assert (=> b!4933436 (= c!840798 (<= testedPSize!70 0))))

(declare-fun d!1587999 () Bool)

(declare-fun e!3082445 () Bool)

(assert (=> d!1587999 e!3082445))

(declare-fun res!2105498 () Bool)

(assert (=> d!1587999 (=> (not res!2105498) (not e!3082445))))

(declare-fun lt!2031677 () List!56928)

(assert (=> d!1587999 (= res!2105498 (set.subset (content!10095 lt!2031677) (content!10095 lt!2031516)))))

(assert (=> d!1587999 (= lt!2031677 e!3082442)))

(declare-fun c!840796 () Bool)

(assert (=> d!1587999 (= c!840796 (is-Nil!56804 lt!2031516))))

(assert (=> d!1587999 (= (drop!2249 lt!2031516 testedPSize!70) lt!2031677)))

(declare-fun b!4933437 () Bool)

(assert (=> b!4933437 (= e!3082445 (= (size!37615 lt!2031677) e!3082444))))

(declare-fun c!840797 () Bool)

(assert (=> b!4933437 (= c!840797 (<= testedPSize!70 0))))

(declare-fun b!4933438 () Bool)

(declare-fun e!3082443 () Int)

(assert (=> b!4933438 (= e!3082444 e!3082443)))

(declare-fun c!840795 () Bool)

(assert (=> b!4933438 (= c!840795 (>= testedPSize!70 call!344229))))

(declare-fun b!4933439 () Bool)

(assert (=> b!4933439 (= e!3082443 0)))

(declare-fun b!4933440 () Bool)

(assert (=> b!4933440 (= e!3082443 (- call!344229 testedPSize!70))))

(declare-fun b!4933441 () Bool)

(assert (=> b!4933441 (= e!3082442 Nil!56804)))

(declare-fun b!4933442 () Bool)

(assert (=> b!4933442 (= e!3082446 (drop!2249 (t!367408 lt!2031516) (- testedPSize!70 1)))))

(declare-fun b!4933443 () Bool)

(assert (=> b!4933443 (= e!3082446 lt!2031516)))

(assert (= (and d!1587999 c!840796) b!4933441))

(assert (= (and d!1587999 (not c!840796)) b!4933436))

(assert (= (and b!4933436 c!840798) b!4933443))

(assert (= (and b!4933436 (not c!840798)) b!4933442))

(assert (= (and d!1587999 res!2105498) b!4933437))

(assert (= (and b!4933437 c!840797) b!4933435))

(assert (= (and b!4933437 (not c!840797)) b!4933438))

(assert (= (and b!4933438 c!840795) b!4933439))

(assert (= (and b!4933438 (not c!840795)) b!4933440))

(assert (= (or b!4933435 b!4933438 b!4933440) bm!344224))

(assert (=> bm!344224 m!5953738))

(declare-fun m!5953966 () Bool)

(assert (=> d!1587999 m!5953966))

(declare-fun m!5953968 () Bool)

(assert (=> d!1587999 m!5953968))

(declare-fun m!5953970 () Bool)

(assert (=> b!4933437 m!5953970))

(declare-fun m!5953972 () Bool)

(assert (=> b!4933442 m!5953972))

(assert (=> b!4933266 d!1587999))

(declare-fun d!1588001 () Bool)

(declare-fun lt!2031680 () C!27066)

(assert (=> d!1588001 (= lt!2031680 (apply!13715 (list!18033 totalInput!685) testedPSize!70))))

(declare-fun apply!13718 (Conc!14927 Int) C!27066)

(assert (=> d!1588001 (= lt!2031680 (apply!13718 (c!840744 totalInput!685) testedPSize!70))))

(declare-fun e!3082449 () Bool)

(assert (=> d!1588001 e!3082449))

(declare-fun res!2105501 () Bool)

(assert (=> d!1588001 (=> (not res!2105501) (not e!3082449))))

(assert (=> d!1588001 (= res!2105501 (<= 0 testedPSize!70))))

(assert (=> d!1588001 (= (apply!13714 totalInput!685 testedPSize!70) lt!2031680)))

(declare-fun b!4933446 () Bool)

(assert (=> b!4933446 (= e!3082449 (< testedPSize!70 (size!37614 totalInput!685)))))

(assert (= (and d!1588001 res!2105501) b!4933446))

(assert (=> d!1588001 m!5953670))

(assert (=> d!1588001 m!5953670))

(declare-fun m!5953974 () Bool)

(assert (=> d!1588001 m!5953974))

(declare-fun m!5953976 () Bool)

(assert (=> d!1588001 m!5953976))

(assert (=> b!4933446 m!5953684))

(assert (=> b!4933266 d!1588001))

(declare-fun d!1588003 () Bool)

(declare-fun lambda!245665 () Int)

(declare-fun forall!13177 (List!56929 Int) Bool)

(assert (=> d!1588003 (= (inv!73777 setElem!27731) (forall!13177 (exprs!3560 setElem!27731) lambda!245665))))

(declare-fun bs!1180488 () Bool)

(assert (= bs!1180488 d!1588003))

(declare-fun m!5953978 () Bool)

(assert (=> bs!1180488 m!5953978))

(assert (=> setNonEmpty!27731 d!1588003))

(declare-fun b!4933447 () Bool)

(declare-fun e!3082451 () List!56928)

(assert (=> b!4933447 (= e!3082451 lt!2031523)))

(declare-fun b!4933449 () Bool)

(declare-fun res!2105502 () Bool)

(declare-fun e!3082450 () Bool)

(assert (=> b!4933449 (=> (not res!2105502) (not e!3082450))))

(declare-fun lt!2031681 () List!56928)

(assert (=> b!4933449 (= res!2105502 (= (size!37615 lt!2031681) (+ (size!37615 lt!2031517) (size!37615 lt!2031523))))))

(declare-fun b!4933450 () Bool)

(assert (=> b!4933450 (= e!3082450 (or (not (= lt!2031523 Nil!56804)) (= lt!2031681 lt!2031517)))))

(declare-fun b!4933448 () Bool)

(assert (=> b!4933448 (= e!3082451 (Cons!56804 (h!63252 lt!2031517) (++!12383 (t!367408 lt!2031517) lt!2031523)))))

(declare-fun d!1588005 () Bool)

(assert (=> d!1588005 e!3082450))

(declare-fun res!2105503 () Bool)

(assert (=> d!1588005 (=> (not res!2105503) (not e!3082450))))

(assert (=> d!1588005 (= res!2105503 (= (content!10095 lt!2031681) (set.union (content!10095 lt!2031517) (content!10095 lt!2031523))))))

(assert (=> d!1588005 (= lt!2031681 e!3082451)))

(declare-fun c!840799 () Bool)

(assert (=> d!1588005 (= c!840799 (is-Nil!56804 lt!2031517))))

(assert (=> d!1588005 (= (++!12383 lt!2031517 lt!2031523) lt!2031681)))

(assert (= (and d!1588005 c!840799) b!4933447))

(assert (= (and d!1588005 (not c!840799)) b!4933448))

(assert (= (and d!1588005 res!2105503) b!4933449))

(assert (= (and b!4933449 res!2105502) b!4933450))

(declare-fun m!5953980 () Bool)

(assert (=> b!4933449 m!5953980))

(declare-fun m!5953982 () Bool)

(assert (=> b!4933449 m!5953982))

(declare-fun m!5953984 () Bool)

(assert (=> b!4933449 m!5953984))

(declare-fun m!5953986 () Bool)

(assert (=> b!4933448 m!5953986))

(declare-fun m!5953988 () Bool)

(assert (=> d!1588005 m!5953988))

(declare-fun m!5953990 () Bool)

(assert (=> d!1588005 m!5953990))

(declare-fun m!5953992 () Bool)

(assert (=> d!1588005 m!5953992))

(assert (=> b!4933265 d!1588005))

(declare-fun d!1588007 () Bool)

(assert (=> d!1588007 (= (list!18033 (_2!33947 lt!2031531)) (list!18035 (c!840744 (_2!33947 lt!2031531))))))

(declare-fun bs!1180489 () Bool)

(assert (= bs!1180489 d!1588007))

(declare-fun m!5953994 () Bool)

(assert (=> bs!1180489 m!5953994))

(assert (=> b!4933265 d!1588007))

(declare-fun d!1588009 () Bool)

(assert (=> d!1588009 (= (list!18033 (_1!33947 lt!2031531)) (list!18035 (c!840744 (_1!33947 lt!2031531))))))

(declare-fun bs!1180490 () Bool)

(assert (= bs!1180490 d!1588009))

(declare-fun m!5953996 () Bool)

(assert (=> bs!1180490 m!5953996))

(assert (=> b!4933265 d!1588009))

(declare-fun d!1588011 () Bool)

(declare-fun e!3082454 () Bool)

(assert (=> d!1588011 e!3082454))

(declare-fun res!2105508 () Bool)

(assert (=> d!1588011 (=> (not res!2105508) (not e!3082454))))

(declare-fun lt!2031687 () tuple2!61288)

(assert (=> d!1588011 (= res!2105508 (isBalanced!4110 (c!840744 (_1!33947 lt!2031687))))))

(declare-datatypes ((tuple2!61292 0))(
  ( (tuple2!61293 (_1!33949 Conc!14927) (_2!33949 Conc!14927)) )
))
(declare-fun lt!2031686 () tuple2!61292)

(assert (=> d!1588011 (= lt!2031687 (tuple2!61289 (BalanceConc!29285 (_1!33949 lt!2031686)) (BalanceConc!29285 (_2!33949 lt!2031686))))))

(declare-fun splitAt!316 (Conc!14927 Int) tuple2!61292)

(assert (=> d!1588011 (= lt!2031686 (splitAt!316 (c!840744 totalInput!685) testedPSize!70))))

(assert (=> d!1588011 (isBalanced!4110 (c!840744 totalInput!685))))

(assert (=> d!1588011 (= (splitAt!314 totalInput!685 testedPSize!70) lt!2031687)))

(declare-fun b!4933455 () Bool)

(declare-fun res!2105509 () Bool)

(assert (=> b!4933455 (=> (not res!2105509) (not e!3082454))))

(assert (=> b!4933455 (= res!2105509 (isBalanced!4110 (c!840744 (_2!33947 lt!2031687))))))

(declare-fun b!4933456 () Bool)

(declare-datatypes ((tuple2!61294 0))(
  ( (tuple2!61295 (_1!33950 List!56928) (_2!33950 List!56928)) )
))
(declare-fun splitAtIndex!116 (List!56928 Int) tuple2!61294)

(assert (=> b!4933456 (= e!3082454 (= (tuple2!61295 (list!18033 (_1!33947 lt!2031687)) (list!18033 (_2!33947 lt!2031687))) (splitAtIndex!116 (list!18033 totalInput!685) testedPSize!70)))))

(assert (= (and d!1588011 res!2105508) b!4933455))

(assert (= (and b!4933455 res!2105509) b!4933456))

(declare-fun m!5953998 () Bool)

(assert (=> d!1588011 m!5953998))

(declare-fun m!5954000 () Bool)

(assert (=> d!1588011 m!5954000))

(assert (=> d!1588011 m!5953856))

(declare-fun m!5954002 () Bool)

(assert (=> b!4933455 m!5954002))

(declare-fun m!5954004 () Bool)

(assert (=> b!4933456 m!5954004))

(declare-fun m!5954006 () Bool)

(assert (=> b!4933456 m!5954006))

(assert (=> b!4933456 m!5953670))

(assert (=> b!4933456 m!5953670))

(declare-fun m!5954008 () Bool)

(assert (=> b!4933456 m!5954008))

(assert (=> b!4933265 d!1588011))

(declare-fun e!3082459 () Bool)

(declare-fun tp!1384970 () Bool)

(declare-fun tp!1384972 () Bool)

(declare-fun b!4933465 () Bool)

(assert (=> b!4933465 (= e!3082459 (and (inv!73775 (left!41425 (c!840744 totalInput!685))) tp!1384970 (inv!73775 (right!41755 (c!840744 totalInput!685))) tp!1384972))))

(declare-fun b!4933467 () Bool)

(declare-fun e!3082460 () Bool)

(declare-fun tp!1384971 () Bool)

(assert (=> b!4933467 (= e!3082460 tp!1384971)))

(declare-fun b!4933466 () Bool)

(declare-fun inv!73785 (IArray!29915) Bool)

(assert (=> b!4933466 (= e!3082459 (and (inv!73785 (xs!18251 (c!840744 totalInput!685))) e!3082460))))

(assert (=> b!4933258 (= tp!1384947 (and (inv!73775 (c!840744 totalInput!685)) e!3082459))))

(assert (= (and b!4933258 (is-Node!14927 (c!840744 totalInput!685))) b!4933465))

(assert (= b!4933466 b!4933467))

(assert (= (and b!4933258 (is-Leaf!24824 (c!840744 totalInput!685))) b!4933466))

(declare-fun m!5954010 () Bool)

(assert (=> b!4933465 m!5954010))

(declare-fun m!5954012 () Bool)

(assert (=> b!4933465 m!5954012))

(declare-fun m!5954014 () Bool)

(assert (=> b!4933466 m!5954014))

(assert (=> b!4933258 m!5953710))

(declare-fun b!4933472 () Bool)

(declare-fun e!3082463 () Bool)

(declare-fun tp!1384975 () Bool)

(assert (=> b!4933472 (= e!3082463 (and tp_is_empty!36013 tp!1384975))))

(assert (=> b!4933267 (= tp!1384946 e!3082463)))

(assert (= (and b!4933267 (is-Cons!56804 (t!367408 testedP!110))) b!4933472))

(declare-fun b!4933477 () Bool)

(declare-fun e!3082466 () Bool)

(declare-fun tp!1384980 () Bool)

(declare-fun tp!1384981 () Bool)

(assert (=> b!4933477 (= e!3082466 (and tp!1384980 tp!1384981))))

(assert (=> b!4933257 (= tp!1384944 e!3082466)))

(assert (= (and b!4933257 (is-Cons!56805 (exprs!3560 setElem!27731))) b!4933477))

(declare-fun b!4933478 () Bool)

(declare-fun e!3082467 () Bool)

(declare-fun tp!1384982 () Bool)

(assert (=> b!4933478 (= e!3082467 (and tp_is_empty!36013 tp!1384982))))

(assert (=> b!4933271 (= tp!1384945 e!3082467)))

(assert (= (and b!4933271 (is-Cons!56804 (t!367408 testedSuffix!70))) b!4933478))

(declare-fun condSetEmpty!27737 () Bool)

(assert (=> setNonEmpty!27731 (= condSetEmpty!27737 (= setRest!27731 (as set.empty (Set Context!6120))))))

(declare-fun setRes!27737 () Bool)

(assert (=> setNonEmpty!27731 (= tp!1384948 setRes!27737)))

(declare-fun setIsEmpty!27737 () Bool)

(assert (=> setIsEmpty!27737 setRes!27737))

(declare-fun setElem!27737 () Context!6120)

(declare-fun e!3082470 () Bool)

(declare-fun setNonEmpty!27737 () Bool)

(declare-fun tp!1384987 () Bool)

(assert (=> setNonEmpty!27737 (= setRes!27737 (and tp!1384987 (inv!73777 setElem!27737) e!3082470))))

(declare-fun setRest!27737 () (Set Context!6120))

(assert (=> setNonEmpty!27737 (= setRest!27731 (set.union (set.insert setElem!27737 (as set.empty (Set Context!6120))) setRest!27737))))

(declare-fun b!4933483 () Bool)

(declare-fun tp!1384988 () Bool)

(assert (=> b!4933483 (= e!3082470 tp!1384988)))

(assert (= (and setNonEmpty!27731 condSetEmpty!27737) setIsEmpty!27737))

(assert (= (and setNonEmpty!27731 (not condSetEmpty!27737)) setNonEmpty!27737))

(assert (= setNonEmpty!27737 b!4933483))

(declare-fun m!5954016 () Bool)

(assert (=> setNonEmpty!27737 m!5954016))

(push 1)

(assert (not d!1587959))

(assert (not d!1588009))

(assert (not d!1587961))

(assert (not b!4933455))

(assert (not d!1587945))

(assert (not b!4933338))

(assert (not d!1587941))

(assert (not d!1588007))

(assert (not b!4933350))

(assert (not b!4933370))

(assert (not bm!344224))

(assert (not b!4933393))

(assert (not d!1587965))

(assert (not b!4933467))

(assert (not d!1587995))

(assert (not b!4933339))

(assert (not b!4933381))

(assert (not b!4933446))

(assert (not b!4933379))

(assert (not d!1587939))

(assert tp_is_empty!36013)

(assert (not b!4933414))

(assert (not d!1587953))

(assert (not b!4933334))

(assert (not b!4933415))

(assert (not d!1587991))

(assert (not bm!344220))

(assert (not d!1587951))

(assert (not d!1587999))

(assert (not d!1588005))

(assert (not b!4933442))

(assert (not b!4933407))

(assert (not b!4933483))

(assert (not setNonEmpty!27737))

(assert (not d!1587983))

(assert (not b!4933402))

(assert (not bm!344221))

(assert (not b!4933456))

(assert (not b!4933395))

(assert (not b!4933386))

(assert (not d!1587947))

(assert (not d!1587949))

(assert (not b!4933449))

(assert (not b!4933404))

(assert (not b!4933349))

(assert (not d!1587967))

(assert (not d!1588001))

(assert (not d!1588011))

(assert (not b!4933385))

(assert (not b!4933360))

(assert (not b!4933337))

(assert (not b!4933448))

(assert (not b!4933472))

(assert (not b!4933361))

(assert (not b!4933377))

(assert (not b!4933258))

(assert (not d!1588003))

(assert (not b!4933335))

(assert (not d!1587997))

(assert (not b!4933416))

(assert (not b!4933333))

(assert (not b!4933477))

(assert (not b!4933378))

(assert (not d!1587969))

(assert (not d!1587979))

(assert (not b!4933466))

(assert (not b!4933465))

(assert (not d!1587973))

(assert (not b!4933369))

(assert (not b!4933374))

(assert (not b!4933382))

(assert (not d!1587985))

(assert (not d!1587957))

(assert (not b!4933437))

(assert (not b!4933366))

(assert (not b!4933478))

(assert (not b!4933373))

(assert (not d!1587943))

(assert (not b!4933371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

