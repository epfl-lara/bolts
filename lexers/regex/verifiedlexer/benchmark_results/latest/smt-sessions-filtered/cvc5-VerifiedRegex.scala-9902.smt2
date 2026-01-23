; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!518762 () Bool)

(assert start!518762)

(declare-fun b!4935564 () Bool)

(declare-fun e!3083813 () Bool)

(declare-fun e!3083817 () Bool)

(assert (=> b!4935564 (= e!3083813 e!3083817)))

(declare-fun res!2106401 () Bool)

(assert (=> b!4935564 (=> res!2106401 e!3083817)))

(declare-datatypes ((C!27090 0))(
  ( (C!27091 (val!22879 Int)) )
))
(declare-datatypes ((Regex!13430 0))(
  ( (ElementMatch!13430 (c!841318 C!27090)) (Concat!22003 (regOne!27372 Regex!13430) (regTwo!27372 Regex!13430)) (EmptyExpr!13430) (Star!13430 (reg!13759 Regex!13430)) (EmptyLang!13430) (Union!13430 (regOne!27373 Regex!13430) (regTwo!27373 Regex!13430)) )
))
(declare-datatypes ((List!56958 0))(
  ( (Nil!56834) (Cons!56834 (h!63282 Regex!13430) (t!367448 List!56958)) )
))
(declare-datatypes ((Context!6144 0))(
  ( (Context!6145 (exprs!3572 List!56958)) )
))
(declare-fun z!3568 () (Set Context!6144))

(declare-fun lostCauseZipper!748 ((Set Context!6144)) Bool)

(assert (=> b!4935564 (= res!2106401 (lostCauseZipper!748 z!3568))))

(declare-datatypes ((List!56959 0))(
  ( (Nil!56835) (Cons!56835 (h!63283 C!27090) (t!367449 List!56959)) )
))
(declare-fun testedSuffix!70 () List!56959)

(declare-fun lt!2033046 () List!56959)

(assert (=> b!4935564 (and (= testedSuffix!70 lt!2033046) (= lt!2033046 testedSuffix!70))))

(declare-fun testedP!110 () List!56959)

(declare-fun lt!2033049 () List!56959)

(declare-datatypes ((Unit!147521 0))(
  ( (Unit!147522) )
))
(declare-fun lt!2033061 () Unit!147521)

(declare-fun lemmaSamePrefixThenSameSuffix!2426 (List!56959 List!56959 List!56959 List!56959 List!56959) Unit!147521)

(assert (=> b!4935564 (= lt!2033061 (lemmaSamePrefixThenSameSuffix!2426 testedP!110 testedSuffix!70 testedP!110 lt!2033046 lt!2033049))))

(declare-fun getSuffix!3012 (List!56959 List!56959) List!56959)

(assert (=> b!4935564 (= lt!2033046 (getSuffix!3012 lt!2033049 testedP!110))))

(declare-fun b!4935565 () Bool)

(declare-fun e!3083822 () Bool)

(declare-fun e!3083818 () Bool)

(assert (=> b!4935565 (= e!3083822 e!3083818)))

(declare-fun res!2106405 () Bool)

(assert (=> b!4935565 (=> (not res!2106405) (not e!3083818))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2033045 () Int)

(assert (=> b!4935565 (= res!2106405 (= testedPSize!70 lt!2033045))))

(declare-fun size!37644 (List!56959) Int)

(assert (=> b!4935565 (= lt!2033045 (size!37644 testedP!110))))

(declare-fun b!4935567 () Bool)

(declare-fun e!3083812 () Bool)

(declare-fun tp!1385334 () Bool)

(assert (=> b!4935567 (= e!3083812 tp!1385334)))

(declare-fun b!4935568 () Bool)

(declare-fun e!3083819 () Bool)

(declare-datatypes ((IArray!29939 0))(
  ( (IArray!29940 (innerList!15027 List!56959)) )
))
(declare-datatypes ((Conc!14939 0))(
  ( (Node!14939 (left!41447 Conc!14939) (right!41777 Conc!14939) (csize!30108 Int) (cheight!15150 Int)) (Leaf!24842 (xs!18263 IArray!29939) (csize!30109 Int)) (Empty!14939) )
))
(declare-datatypes ((BalanceConc!29308 0))(
  ( (BalanceConc!29309 (c!841319 Conc!14939)) )
))
(declare-fun totalInput!685 () BalanceConc!29308)

(declare-fun tp!1385335 () Bool)

(declare-fun inv!73846 (Conc!14939) Bool)

(assert (=> b!4935568 (= e!3083819 (and (inv!73846 (c!841319 totalInput!685)) tp!1385335))))

(declare-fun b!4935569 () Bool)

(declare-fun e!3083816 () Bool)

(declare-fun e!3083811 () Bool)

(assert (=> b!4935569 (= e!3083816 e!3083811)))

(declare-fun res!2106404 () Bool)

(assert (=> b!4935569 (=> res!2106404 e!3083811)))

(declare-fun lt!2033065 () Int)

(assert (=> b!4935569 (= res!2106404 (>= lt!2033045 lt!2033065))))

(declare-fun lt!2033051 () Unit!147521)

(declare-fun e!3083821 () Unit!147521)

(assert (=> b!4935569 (= lt!2033051 e!3083821)))

(declare-fun c!841317 () Bool)

(assert (=> b!4935569 (= c!841317 (= lt!2033045 lt!2033065))))

(declare-fun lt!2033062 () Int)

(assert (=> b!4935569 (<= lt!2033045 lt!2033062)))

(assert (=> b!4935569 (= lt!2033062 (size!37644 lt!2033049))))

(declare-fun lt!2033054 () Unit!147521)

(declare-fun lemmaIsPrefixThenSmallerEqSize!716 (List!56959 List!56959) Unit!147521)

(assert (=> b!4935569 (= lt!2033054 (lemmaIsPrefixThenSmallerEqSize!716 testedP!110 lt!2033049))))

(declare-fun b!4935570 () Bool)

(declare-fun e!3083824 () Bool)

(assert (=> b!4935570 (= e!3083824 (not e!3083813))))

(declare-fun res!2106408 () Bool)

(assert (=> b!4935570 (=> res!2106408 e!3083813)))

(declare-fun isPrefix!5028 (List!56959 List!56959) Bool)

(assert (=> b!4935570 (= res!2106408 (not (isPrefix!5028 testedP!110 lt!2033049)))))

(declare-fun lt!2033047 () List!56959)

(assert (=> b!4935570 (isPrefix!5028 testedP!110 lt!2033047)))

(declare-fun lt!2033056 () Unit!147521)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3252 (List!56959 List!56959) Unit!147521)

(assert (=> b!4935570 (= lt!2033056 (lemmaConcatTwoListThenFirstIsPrefix!3252 testedP!110 testedSuffix!70))))

(declare-fun b!4935571 () Bool)

(declare-fun e!3083815 () Bool)

(assert (=> b!4935571 (= e!3083811 e!3083815)))

(declare-fun res!2106398 () Bool)

(assert (=> b!4935571 (=> res!2106398 e!3083815)))

(declare-fun nullableZipper!835 ((Set Context!6144)) Bool)

(assert (=> b!4935571 (= res!2106398 (not (nullableZipper!835 z!3568)))))

(declare-fun lt!2033048 () List!56959)

(declare-fun lt!2033052 () List!56959)

(declare-fun ++!12397 (List!56959 List!56959) List!56959)

(assert (=> b!4935571 (= (++!12397 lt!2033048 lt!2033052) lt!2033049)))

(declare-fun lt!2033064 () C!27090)

(assert (=> b!4935571 (= lt!2033048 (++!12397 testedP!110 (Cons!56835 lt!2033064 Nil!56835)))))

(declare-fun lt!2033058 () Unit!147521)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1410 (List!56959 C!27090 List!56959 List!56959) Unit!147521)

(assert (=> b!4935571 (= lt!2033058 (lemmaMoveElementToOtherListKeepsConcatEq!1410 testedP!110 lt!2033064 lt!2033052 lt!2033049))))

(declare-fun tail!9706 (List!56959) List!56959)

(assert (=> b!4935571 (= lt!2033052 (tail!9706 testedSuffix!70))))

(declare-fun head!10567 (List!56959) C!27090)

(assert (=> b!4935571 (isPrefix!5028 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835)) lt!2033049)))

(declare-fun lt!2033060 () Unit!147521)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!798 (List!56959 List!56959) Unit!147521)

(assert (=> b!4935571 (= lt!2033060 (lemmaAddHeadSuffixToPrefixStillPrefix!798 testedP!110 lt!2033049))))

(declare-fun b!4935572 () Bool)

(declare-fun e!3083823 () Bool)

(assert (=> b!4935572 (= e!3083823 e!3083816)))

(declare-fun res!2106402 () Bool)

(assert (=> b!4935572 (=> res!2106402 e!3083816)))

(assert (=> b!4935572 (= res!2106402 (not (= lt!2033064 (head!10567 testedSuffix!70))))))

(declare-fun apply!13746 (BalanceConc!29308 Int) C!27090)

(assert (=> b!4935572 (= lt!2033064 (apply!13746 totalInput!685 testedPSize!70))))

(declare-fun drop!2261 (List!56959 Int) List!56959)

(declare-fun apply!13747 (List!56959 Int) C!27090)

(assert (=> b!4935572 (= (head!10567 (drop!2261 lt!2033049 testedPSize!70)) (apply!13747 lt!2033049 testedPSize!70))))

(declare-fun lt!2033050 () Unit!147521)

(declare-fun lemmaDropApply!1319 (List!56959 Int) Unit!147521)

(assert (=> b!4935572 (= lt!2033050 (lemmaDropApply!1319 lt!2033049 testedPSize!70))))

(declare-fun lt!2033059 () List!56959)

(declare-fun lt!2033063 () List!56959)

(assert (=> b!4935572 (not (or (not (= lt!2033063 testedP!110)) (not (= lt!2033059 testedSuffix!70))))))

(declare-fun lt!2033053 () Unit!147521)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!696 (List!56959 List!56959 List!56959 List!56959) Unit!147521)

(assert (=> b!4935572 (= lt!2033053 (lemmaConcatSameAndSameSizesThenSameLists!696 lt!2033063 lt!2033059 testedP!110 testedSuffix!70))))

(declare-fun b!4935573 () Bool)

(declare-fun Unit!147523 () Unit!147521)

(assert (=> b!4935573 (= e!3083821 Unit!147523)))

(declare-fun b!4935574 () Bool)

(declare-fun res!2106399 () Bool)

(assert (=> b!4935574 (=> res!2106399 e!3083815)))

(declare-fun totalInputSize!132 () Int)

(declare-fun findLongestMatchInnerZipperFast!94 ((Set Context!6144) List!56959 Int List!56959 BalanceConc!29308 Int) Int)

(declare-fun derivationStepZipper!597 ((Set Context!6144) C!27090) (Set Context!6144))

(assert (=> b!4935574 (= res!2106399 (not (= (findLongestMatchInnerZipperFast!94 (derivationStepZipper!597 z!3568 lt!2033064) lt!2033048 (+ 1 testedPSize!70) lt!2033052 totalInput!685 totalInputSize!132) 0)))))

(declare-fun b!4935575 () Bool)

(declare-fun res!2106406 () Bool)

(assert (=> b!4935575 (=> res!2106406 e!3083817)))

(assert (=> b!4935575 (= res!2106406 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4935576 () Bool)

(declare-fun Unit!147524 () Unit!147521)

(assert (=> b!4935576 (= e!3083821 Unit!147524)))

(declare-fun lt!2033044 () Unit!147521)

(declare-fun lemmaIsPrefixRefl!3394 (List!56959 List!56959) Unit!147521)

(assert (=> b!4935576 (= lt!2033044 (lemmaIsPrefixRefl!3394 lt!2033049 lt!2033049))))

(assert (=> b!4935576 (isPrefix!5028 lt!2033049 lt!2033049)))

(declare-fun lt!2033055 () Unit!147521)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1152 (List!56959 List!56959 List!56959) Unit!147521)

(assert (=> b!4935576 (= lt!2033055 (lemmaIsPrefixSameLengthThenSameList!1152 lt!2033049 testedP!110 lt!2033049))))

(assert (=> b!4935576 false))

(declare-fun b!4935577 () Bool)

(assert (=> b!4935577 (= e!3083818 e!3083824)))

(declare-fun res!2106397 () Bool)

(assert (=> b!4935577 (=> (not res!2106397) (not e!3083824))))

(assert (=> b!4935577 (= res!2106397 (= totalInputSize!132 lt!2033065))))

(declare-fun size!37645 (BalanceConc!29308) Int)

(assert (=> b!4935577 (= lt!2033065 (size!37645 totalInput!685))))

(declare-fun b!4935578 () Bool)

(declare-fun res!2106403 () Bool)

(assert (=> b!4935578 (=> res!2106403 e!3083823)))

(declare-datatypes ((tuple2!61336 0))(
  ( (tuple2!61337 (_1!33971 BalanceConc!29308) (_2!33971 BalanceConc!29308)) )
))
(declare-fun lt!2033057 () tuple2!61336)

(assert (=> b!4935578 (= res!2106403 (not (= (size!37645 (_1!33971 lt!2033057)) testedPSize!70)))))

(declare-fun b!4935579 () Bool)

(assert (=> b!4935579 (= e!3083817 e!3083823)))

(declare-fun res!2106407 () Bool)

(assert (=> b!4935579 (=> res!2106407 e!3083823)))

(assert (=> b!4935579 (= res!2106407 (not (= (++!12397 lt!2033063 lt!2033059) lt!2033049)))))

(declare-fun list!18053 (BalanceConc!29308) List!56959)

(assert (=> b!4935579 (= lt!2033059 (list!18053 (_2!33971 lt!2033057)))))

(assert (=> b!4935579 (= lt!2033063 (list!18053 (_1!33971 lt!2033057)))))

(declare-fun splitAt!332 (BalanceConc!29308 Int) tuple2!61336)

(assert (=> b!4935579 (= lt!2033057 (splitAt!332 totalInput!685 testedPSize!70))))

(declare-fun b!4935566 () Bool)

(assert (=> b!4935566 (= e!3083815 (= totalInputSize!132 lt!2033062))))

(declare-fun res!2106400 () Bool)

(assert (=> start!518762 (=> (not res!2106400) (not e!3083822))))

(assert (=> start!518762 (= res!2106400 (= lt!2033047 lt!2033049))))

(assert (=> start!518762 (= lt!2033049 (list!18053 totalInput!685))))

(assert (=> start!518762 (= lt!2033047 (++!12397 testedP!110 testedSuffix!70))))

(assert (=> start!518762 e!3083822))

(declare-fun e!3083820 () Bool)

(assert (=> start!518762 e!3083820))

(declare-fun condSetEmpty!27787 () Bool)

(assert (=> start!518762 (= condSetEmpty!27787 (= z!3568 (as set.empty (Set Context!6144))))))

(declare-fun setRes!27787 () Bool)

(assert (=> start!518762 setRes!27787))

(assert (=> start!518762 true))

(declare-fun inv!73847 (BalanceConc!29308) Bool)

(assert (=> start!518762 (and (inv!73847 totalInput!685) e!3083819)))

(declare-fun e!3083814 () Bool)

(assert (=> start!518762 e!3083814))

(declare-fun setIsEmpty!27787 () Bool)

(assert (=> setIsEmpty!27787 setRes!27787))

(declare-fun b!4935580 () Bool)

(declare-fun tp_is_empty!36037 () Bool)

(declare-fun tp!1385337 () Bool)

(assert (=> b!4935580 (= e!3083820 (and tp_is_empty!36037 tp!1385337))))

(declare-fun tp!1385338 () Bool)

(declare-fun setNonEmpty!27787 () Bool)

(declare-fun setElem!27787 () Context!6144)

(declare-fun inv!73848 (Context!6144) Bool)

(assert (=> setNonEmpty!27787 (= setRes!27787 (and tp!1385338 (inv!73848 setElem!27787) e!3083812))))

(declare-fun setRest!27787 () (Set Context!6144))

(assert (=> setNonEmpty!27787 (= z!3568 (set.union (set.insert setElem!27787 (as set.empty (Set Context!6144))) setRest!27787))))

(declare-fun b!4935581 () Bool)

(declare-fun tp!1385336 () Bool)

(assert (=> b!4935581 (= e!3083814 (and tp_is_empty!36037 tp!1385336))))

(assert (= (and start!518762 res!2106400) b!4935565))

(assert (= (and b!4935565 res!2106405) b!4935577))

(assert (= (and b!4935577 res!2106397) b!4935570))

(assert (= (and b!4935570 (not res!2106408)) b!4935564))

(assert (= (and b!4935564 (not res!2106401)) b!4935575))

(assert (= (and b!4935575 (not res!2106406)) b!4935579))

(assert (= (and b!4935579 (not res!2106407)) b!4935578))

(assert (= (and b!4935578 (not res!2106403)) b!4935572))

(assert (= (and b!4935572 (not res!2106402)) b!4935569))

(assert (= (and b!4935569 c!841317) b!4935576))

(assert (= (and b!4935569 (not c!841317)) b!4935573))

(assert (= (and b!4935569 (not res!2106404)) b!4935571))

(assert (= (and b!4935571 (not res!2106398)) b!4935574))

(assert (= (and b!4935574 (not res!2106399)) b!4935566))

(assert (= (and start!518762 (is-Cons!56835 testedP!110)) b!4935580))

(assert (= (and start!518762 condSetEmpty!27787) setIsEmpty!27787))

(assert (= (and start!518762 (not condSetEmpty!27787)) setNonEmpty!27787))

(assert (= setNonEmpty!27787 b!4935567))

(assert (= start!518762 b!4935568))

(assert (= (and start!518762 (is-Cons!56835 testedSuffix!70)) b!4935581))

(declare-fun m!5956684 () Bool)

(assert (=> b!4935574 m!5956684))

(assert (=> b!4935574 m!5956684))

(declare-fun m!5956686 () Bool)

(assert (=> b!4935574 m!5956686))

(declare-fun m!5956688 () Bool)

(assert (=> b!4935569 m!5956688))

(declare-fun m!5956690 () Bool)

(assert (=> b!4935569 m!5956690))

(declare-fun m!5956692 () Bool)

(assert (=> setNonEmpty!27787 m!5956692))

(declare-fun m!5956694 () Bool)

(assert (=> b!4935568 m!5956694))

(declare-fun m!5956696 () Bool)

(assert (=> b!4935576 m!5956696))

(declare-fun m!5956698 () Bool)

(assert (=> b!4935576 m!5956698))

(declare-fun m!5956700 () Bool)

(assert (=> b!4935576 m!5956700))

(declare-fun m!5956702 () Bool)

(assert (=> b!4935577 m!5956702))

(declare-fun m!5956704 () Bool)

(assert (=> b!4935579 m!5956704))

(declare-fun m!5956706 () Bool)

(assert (=> b!4935579 m!5956706))

(declare-fun m!5956708 () Bool)

(assert (=> b!4935579 m!5956708))

(declare-fun m!5956710 () Bool)

(assert (=> b!4935579 m!5956710))

(declare-fun m!5956712 () Bool)

(assert (=> b!4935578 m!5956712))

(declare-fun m!5956714 () Bool)

(assert (=> b!4935570 m!5956714))

(declare-fun m!5956716 () Bool)

(assert (=> b!4935570 m!5956716))

(declare-fun m!5956718 () Bool)

(assert (=> b!4935570 m!5956718))

(declare-fun m!5956720 () Bool)

(assert (=> b!4935565 m!5956720))

(declare-fun m!5956722 () Bool)

(assert (=> b!4935572 m!5956722))

(declare-fun m!5956724 () Bool)

(assert (=> b!4935572 m!5956724))

(declare-fun m!5956726 () Bool)

(assert (=> b!4935572 m!5956726))

(declare-fun m!5956728 () Bool)

(assert (=> b!4935572 m!5956728))

(declare-fun m!5956730 () Bool)

(assert (=> b!4935572 m!5956730))

(declare-fun m!5956732 () Bool)

(assert (=> b!4935572 m!5956732))

(declare-fun m!5956734 () Bool)

(assert (=> b!4935572 m!5956734))

(assert (=> b!4935572 m!5956732))

(declare-fun m!5956736 () Bool)

(assert (=> b!4935571 m!5956736))

(declare-fun m!5956738 () Bool)

(assert (=> b!4935571 m!5956738))

(declare-fun m!5956740 () Bool)

(assert (=> b!4935571 m!5956740))

(declare-fun m!5956742 () Bool)

(assert (=> b!4935571 m!5956742))

(declare-fun m!5956744 () Bool)

(assert (=> b!4935571 m!5956744))

(declare-fun m!5956746 () Bool)

(assert (=> b!4935571 m!5956746))

(assert (=> b!4935571 m!5956740))

(declare-fun m!5956748 () Bool)

(assert (=> b!4935571 m!5956748))

(declare-fun m!5956750 () Bool)

(assert (=> b!4935571 m!5956750))

(declare-fun m!5956752 () Bool)

(assert (=> b!4935571 m!5956752))

(declare-fun m!5956754 () Bool)

(assert (=> b!4935564 m!5956754))

(declare-fun m!5956756 () Bool)

(assert (=> b!4935564 m!5956756))

(declare-fun m!5956758 () Bool)

(assert (=> b!4935564 m!5956758))

(declare-fun m!5956760 () Bool)

(assert (=> start!518762 m!5956760))

(declare-fun m!5956762 () Bool)

(assert (=> start!518762 m!5956762))

(declare-fun m!5956764 () Bool)

(assert (=> start!518762 m!5956764))

(push 1)

(assert (not b!4935565))

(assert (not b!4935568))

(assert (not b!4935577))

(assert (not b!4935572))

(assert (not b!4935564))

(assert (not b!4935578))

(assert (not start!518762))

(assert (not b!4935579))

(assert tp_is_empty!36037)

(assert (not b!4935576))

(assert (not b!4935571))

(assert (not b!4935570))

(assert (not b!4935574))

(assert (not b!4935580))

(assert (not setNonEmpty!27787))

(assert (not b!4935581))

(assert (not b!4935569))

(assert (not b!4935567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1588819 () Bool)

(declare-fun lt!2033134 () Int)

(assert (=> d!1588819 (= lt!2033134 (size!37644 (list!18053 totalInput!685)))))

(declare-fun size!37648 (Conc!14939) Int)

(assert (=> d!1588819 (= lt!2033134 (size!37648 (c!841319 totalInput!685)))))

(assert (=> d!1588819 (= (size!37645 totalInput!685) lt!2033134)))

(declare-fun bs!1180696 () Bool)

(assert (= bs!1180696 d!1588819))

(assert (=> bs!1180696 m!5956760))

(assert (=> bs!1180696 m!5956760))

(declare-fun m!5956850 () Bool)

(assert (=> bs!1180696 m!5956850))

(declare-fun m!5956852 () Bool)

(assert (=> bs!1180696 m!5956852))

(assert (=> b!4935577 d!1588819))

(declare-fun d!1588821 () Bool)

(assert (=> d!1588821 (isPrefix!5028 lt!2033049 lt!2033049)))

(declare-fun lt!2033139 () Unit!147521)

(declare-fun choose!36248 (List!56959 List!56959) Unit!147521)

(assert (=> d!1588821 (= lt!2033139 (choose!36248 lt!2033049 lt!2033049))))

(assert (=> d!1588821 (= (lemmaIsPrefixRefl!3394 lt!2033049 lt!2033049) lt!2033139)))

(declare-fun bs!1180697 () Bool)

(assert (= bs!1180697 d!1588821))

(assert (=> bs!1180697 m!5956698))

(declare-fun m!5956854 () Bool)

(assert (=> bs!1180697 m!5956854))

(assert (=> b!4935576 d!1588821))

(declare-fun b!4935655 () Bool)

(declare-fun e!3083878 () Bool)

(assert (=> b!4935655 (= e!3083878 (>= (size!37644 lt!2033049) (size!37644 lt!2033049)))))

(declare-fun b!4935652 () Bool)

(declare-fun e!3083877 () Bool)

(declare-fun e!3083879 () Bool)

(assert (=> b!4935652 (= e!3083877 e!3083879)))

(declare-fun res!2106458 () Bool)

(assert (=> b!4935652 (=> (not res!2106458) (not e!3083879))))

(assert (=> b!4935652 (= res!2106458 (not (is-Nil!56835 lt!2033049)))))

(declare-fun b!4935654 () Bool)

(assert (=> b!4935654 (= e!3083879 (isPrefix!5028 (tail!9706 lt!2033049) (tail!9706 lt!2033049)))))

(declare-fun d!1588823 () Bool)

(assert (=> d!1588823 e!3083878))

(declare-fun res!2106459 () Bool)

(assert (=> d!1588823 (=> res!2106459 e!3083878)))

(declare-fun lt!2033142 () Bool)

(assert (=> d!1588823 (= res!2106459 (not lt!2033142))))

(assert (=> d!1588823 (= lt!2033142 e!3083877)))

(declare-fun res!2106460 () Bool)

(assert (=> d!1588823 (=> res!2106460 e!3083877)))

(assert (=> d!1588823 (= res!2106460 (is-Nil!56835 lt!2033049))))

(assert (=> d!1588823 (= (isPrefix!5028 lt!2033049 lt!2033049) lt!2033142)))

(declare-fun b!4935653 () Bool)

(declare-fun res!2106457 () Bool)

(assert (=> b!4935653 (=> (not res!2106457) (not e!3083879))))

(assert (=> b!4935653 (= res!2106457 (= (head!10567 lt!2033049) (head!10567 lt!2033049)))))

(assert (= (and d!1588823 (not res!2106460)) b!4935652))

(assert (= (and b!4935652 res!2106458) b!4935653))

(assert (= (and b!4935653 res!2106457) b!4935654))

(assert (= (and d!1588823 (not res!2106459)) b!4935655))

(assert (=> b!4935655 m!5956688))

(assert (=> b!4935655 m!5956688))

(declare-fun m!5956856 () Bool)

(assert (=> b!4935654 m!5956856))

(assert (=> b!4935654 m!5956856))

(assert (=> b!4935654 m!5956856))

(assert (=> b!4935654 m!5956856))

(declare-fun m!5956858 () Bool)

(assert (=> b!4935654 m!5956858))

(declare-fun m!5956860 () Bool)

(assert (=> b!4935653 m!5956860))

(assert (=> b!4935653 m!5956860))

(assert (=> b!4935576 d!1588823))

(declare-fun d!1588825 () Bool)

(assert (=> d!1588825 (= lt!2033049 testedP!110)))

(declare-fun lt!2033146 () Unit!147521)

(declare-fun choose!36249 (List!56959 List!56959 List!56959) Unit!147521)

(assert (=> d!1588825 (= lt!2033146 (choose!36249 lt!2033049 testedP!110 lt!2033049))))

(assert (=> d!1588825 (isPrefix!5028 lt!2033049 lt!2033049)))

(assert (=> d!1588825 (= (lemmaIsPrefixSameLengthThenSameList!1152 lt!2033049 testedP!110 lt!2033049) lt!2033146)))

(declare-fun bs!1180698 () Bool)

(assert (= bs!1180698 d!1588825))

(declare-fun m!5956874 () Bool)

(assert (=> bs!1180698 m!5956874))

(assert (=> bs!1180698 m!5956698))

(assert (=> b!4935576 d!1588825))

(declare-fun d!1588829 () Bool)

(declare-fun lt!2033149 () Int)

(assert (=> d!1588829 (>= lt!2033149 0)))

(declare-fun e!3083884 () Int)

(assert (=> d!1588829 (= lt!2033149 e!3083884)))

(declare-fun c!841330 () Bool)

(assert (=> d!1588829 (= c!841330 (is-Nil!56835 testedP!110))))

(assert (=> d!1588829 (= (size!37644 testedP!110) lt!2033149)))

(declare-fun b!4935664 () Bool)

(assert (=> b!4935664 (= e!3083884 0)))

(declare-fun b!4935665 () Bool)

(assert (=> b!4935665 (= e!3083884 (+ 1 (size!37644 (t!367449 testedP!110))))))

(assert (= (and d!1588829 c!841330) b!4935664))

(assert (= (and d!1588829 (not c!841330)) b!4935665))

(declare-fun m!5956876 () Bool)

(assert (=> b!4935665 m!5956876))

(assert (=> b!4935565 d!1588829))

(declare-fun bs!1180702 () Bool)

(declare-fun b!4935721 () Bool)

(declare-fun d!1588831 () Bool)

(assert (= bs!1180702 (and b!4935721 d!1588831)))

(declare-fun lambda!245818 () Int)

(declare-fun lambda!245817 () Int)

(assert (=> bs!1180702 (not (= lambda!245818 lambda!245817))))

(declare-fun bs!1180703 () Bool)

(declare-fun b!4935722 () Bool)

(assert (= bs!1180703 (and b!4935722 d!1588831)))

(declare-fun lambda!245819 () Int)

(assert (=> bs!1180703 (not (= lambda!245819 lambda!245817))))

(declare-fun bs!1180704 () Bool)

(assert (= bs!1180704 (and b!4935722 b!4935721)))

(assert (=> bs!1180704 (= lambda!245819 lambda!245818)))

(declare-fun lt!2033185 () Bool)

(declare-datatypes ((Option!14184 0))(
  ( (None!14183) (Some!14183 (v!50155 List!56959)) )
))
(declare-fun isEmpty!30611 (Option!14184) Bool)

(declare-fun getLanguageWitness!644 ((Set Context!6144)) Option!14184)

(assert (=> d!1588831 (= lt!2033185 (isEmpty!30611 (getLanguageWitness!644 z!3568)))))

(declare-fun forall!13189 ((Set Context!6144) Int) Bool)

(assert (=> d!1588831 (= lt!2033185 (forall!13189 z!3568 lambda!245817))))

(declare-fun lt!2033191 () Unit!147521)

(declare-fun e!3083924 () Unit!147521)

(assert (=> d!1588831 (= lt!2033191 e!3083924)))

(declare-fun c!841359 () Bool)

(assert (=> d!1588831 (= c!841359 (not (forall!13189 z!3568 lambda!245817)))))

(assert (=> d!1588831 (= (lostCauseZipper!748 z!3568) lt!2033185)))

(declare-fun Unit!147529 () Unit!147521)

(assert (=> b!4935721 (= e!3083924 Unit!147529)))

(declare-datatypes ((List!56962 0))(
  ( (Nil!56838) (Cons!56838 (h!63286 Context!6144) (t!367452 List!56962)) )
))
(declare-fun lt!2033186 () List!56962)

(declare-fun call!344326 () List!56962)

(assert (=> b!4935721 (= lt!2033186 call!344326)))

(declare-fun lt!2033188 () Unit!147521)

(declare-fun lemmaNotForallThenExists!204 (List!56962 Int) Unit!147521)

(assert (=> b!4935721 (= lt!2033188 (lemmaNotForallThenExists!204 lt!2033186 lambda!245817))))

(declare-fun call!344327 () Bool)

(assert (=> b!4935721 call!344327))

(declare-fun lt!2033189 () Unit!147521)

(assert (=> b!4935721 (= lt!2033189 lt!2033188)))

(declare-fun lt!2033190 () List!56962)

(declare-fun bm!344321 () Bool)

(declare-fun exists!1279 (List!56962 Int) Bool)

(assert (=> bm!344321 (= call!344327 (exists!1279 (ite c!841359 lt!2033186 lt!2033190) (ite c!841359 lambda!245818 lambda!245819)))))

(declare-fun bm!344322 () Bool)

(declare-fun toList!7966 ((Set Context!6144)) List!56962)

(assert (=> bm!344322 (= call!344326 (toList!7966 z!3568))))

(declare-fun Unit!147530 () Unit!147521)

(assert (=> b!4935722 (= e!3083924 Unit!147530)))

(assert (=> b!4935722 (= lt!2033190 call!344326)))

(declare-fun lt!2033184 () Unit!147521)

(declare-fun lemmaForallThenNotExists!187 (List!56962 Int) Unit!147521)

(assert (=> b!4935722 (= lt!2033184 (lemmaForallThenNotExists!187 lt!2033190 lambda!245817))))

(assert (=> b!4935722 (not call!344327)))

(declare-fun lt!2033187 () Unit!147521)

(assert (=> b!4935722 (= lt!2033187 lt!2033184)))

(assert (= (and d!1588831 c!841359) b!4935721))

(assert (= (and d!1588831 (not c!841359)) b!4935722))

(assert (= (or b!4935721 b!4935722) bm!344321))

(assert (= (or b!4935721 b!4935722) bm!344322))

(declare-fun m!5956912 () Bool)

(assert (=> b!4935721 m!5956912))

(declare-fun m!5956914 () Bool)

(assert (=> bm!344322 m!5956914))

(declare-fun m!5956916 () Bool)

(assert (=> bm!344321 m!5956916))

(declare-fun m!5956918 () Bool)

(assert (=> d!1588831 m!5956918))

(assert (=> d!1588831 m!5956918))

(declare-fun m!5956920 () Bool)

(assert (=> d!1588831 m!5956920))

(declare-fun m!5956922 () Bool)

(assert (=> d!1588831 m!5956922))

(assert (=> d!1588831 m!5956922))

(declare-fun m!5956924 () Bool)

(assert (=> b!4935722 m!5956924))

(assert (=> b!4935564 d!1588831))

(declare-fun d!1588853 () Bool)

(assert (=> d!1588853 (= testedSuffix!70 lt!2033046)))

(declare-fun lt!2033194 () Unit!147521)

(declare-fun choose!36250 (List!56959 List!56959 List!56959 List!56959 List!56959) Unit!147521)

(assert (=> d!1588853 (= lt!2033194 (choose!36250 testedP!110 testedSuffix!70 testedP!110 lt!2033046 lt!2033049))))

(assert (=> d!1588853 (isPrefix!5028 testedP!110 lt!2033049)))

(assert (=> d!1588853 (= (lemmaSamePrefixThenSameSuffix!2426 testedP!110 testedSuffix!70 testedP!110 lt!2033046 lt!2033049) lt!2033194)))

(declare-fun bs!1180705 () Bool)

(assert (= bs!1180705 d!1588853))

(declare-fun m!5956926 () Bool)

(assert (=> bs!1180705 m!5956926))

(assert (=> bs!1180705 m!5956714))

(assert (=> b!4935564 d!1588853))

(declare-fun d!1588855 () Bool)

(declare-fun lt!2033197 () List!56959)

(assert (=> d!1588855 (= (++!12397 testedP!110 lt!2033197) lt!2033049)))

(declare-fun e!3083927 () List!56959)

(assert (=> d!1588855 (= lt!2033197 e!3083927)))

(declare-fun c!841362 () Bool)

(assert (=> d!1588855 (= c!841362 (is-Cons!56835 testedP!110))))

(assert (=> d!1588855 (>= (size!37644 lt!2033049) (size!37644 testedP!110))))

(assert (=> d!1588855 (= (getSuffix!3012 lt!2033049 testedP!110) lt!2033197)))

(declare-fun b!4935727 () Bool)

(assert (=> b!4935727 (= e!3083927 (getSuffix!3012 (tail!9706 lt!2033049) (t!367449 testedP!110)))))

(declare-fun b!4935728 () Bool)

(assert (=> b!4935728 (= e!3083927 lt!2033049)))

(assert (= (and d!1588855 c!841362) b!4935727))

(assert (= (and d!1588855 (not c!841362)) b!4935728))

(declare-fun m!5956928 () Bool)

(assert (=> d!1588855 m!5956928))

(assert (=> d!1588855 m!5956688))

(assert (=> d!1588855 m!5956720))

(assert (=> b!4935727 m!5956856))

(assert (=> b!4935727 m!5956856))

(declare-fun m!5956930 () Bool)

(assert (=> b!4935727 m!5956930))

(assert (=> b!4935564 d!1588855))

(declare-fun b!4935785 () Bool)

(declare-fun e!3083958 () Unit!147521)

(declare-fun Unit!147531 () Unit!147521)

(assert (=> b!4935785 (= e!3083958 Unit!147531)))

(declare-fun c!841395 () Bool)

(declare-fun bm!344373 () Bool)

(declare-fun lt!2033432 () List!56959)

(declare-fun call!344378 () Bool)

(declare-fun lt!2033448 () List!56959)

(declare-fun lt!2033434 () List!56959)

(declare-fun lt!2033436 () List!56959)

(assert (=> bm!344373 (= call!344378 (isPrefix!5028 (ite c!841395 lt!2033434 lt!2033432) (ite c!841395 lt!2033436 lt!2033448)))))

(declare-fun lt!2033443 () Int)

(declare-fun d!1588857 () Bool)

(declare-datatypes ((tuple2!61340 0))(
  ( (tuple2!61341 (_1!33973 List!56959) (_2!33973 List!56959)) )
))
(declare-fun findLongestMatchInnerZipper!65 ((Set Context!6144) List!56959 Int List!56959 List!56959 Int) tuple2!61340)

(assert (=> d!1588857 (= (size!37644 (_1!33973 (findLongestMatchInnerZipper!65 (derivationStepZipper!597 z!3568 lt!2033064) lt!2033048 (+ 1 testedPSize!70) lt!2033052 (list!18053 totalInput!685) totalInputSize!132))) lt!2033443)))

(declare-fun e!3083959 () Int)

(assert (=> d!1588857 (= lt!2033443 e!3083959)))

(declare-fun c!841394 () Bool)

(assert (=> d!1588857 (= c!841394 (lostCauseZipper!748 (derivationStepZipper!597 z!3568 lt!2033064)))))

(declare-fun lt!2033414 () Unit!147521)

(declare-fun Unit!147532 () Unit!147521)

(assert (=> d!1588857 (= lt!2033414 Unit!147532)))

(assert (=> d!1588857 (= (getSuffix!3012 (list!18053 totalInput!685) lt!2033048) lt!2033052)))

(declare-fun lt!2033426 () Unit!147521)

(declare-fun lt!2033433 () Unit!147521)

(assert (=> d!1588857 (= lt!2033426 lt!2033433)))

(declare-fun lt!2033442 () List!56959)

(assert (=> d!1588857 (= lt!2033052 lt!2033442)))

(assert (=> d!1588857 (= lt!2033433 (lemmaSamePrefixThenSameSuffix!2426 lt!2033048 lt!2033052 lt!2033048 lt!2033442 (list!18053 totalInput!685)))))

(assert (=> d!1588857 (= lt!2033442 (getSuffix!3012 (list!18053 totalInput!685) lt!2033048))))

(declare-fun lt!2033429 () Unit!147521)

(declare-fun lt!2033417 () Unit!147521)

(assert (=> d!1588857 (= lt!2033429 lt!2033417)))

(assert (=> d!1588857 (isPrefix!5028 lt!2033048 (++!12397 lt!2033048 lt!2033052))))

(assert (=> d!1588857 (= lt!2033417 (lemmaConcatTwoListThenFirstIsPrefix!3252 lt!2033048 lt!2033052))))

(assert (=> d!1588857 (= (++!12397 lt!2033048 lt!2033052) (list!18053 totalInput!685))))

(assert (=> d!1588857 (= (findLongestMatchInnerZipperFast!94 (derivationStepZipper!597 z!3568 lt!2033064) lt!2033048 (+ 1 testedPSize!70) lt!2033052 totalInput!685 totalInputSize!132) lt!2033443)))

(declare-fun call!344380 () List!56959)

(declare-fun call!344387 () Unit!147521)

(declare-fun bm!344374 () Bool)

(declare-fun lt!2033428 () List!56959)

(declare-fun lt!2033439 () List!56959)

(assert (=> bm!344374 (= call!344387 (lemmaIsPrefixSameLengthThenSameList!1152 (ite c!841395 lt!2033428 lt!2033439) lt!2033048 call!344380))))

(declare-fun b!4935786 () Bool)

(declare-fun Unit!147533 () Unit!147521)

(assert (=> b!4935786 (= e!3083958 Unit!147533)))

(assert (=> b!4935786 (= lt!2033432 call!344380)))

(assert (=> b!4935786 (= lt!2033448 call!344380)))

(declare-fun lt!2033447 () Unit!147521)

(declare-fun call!344379 () Unit!147521)

(assert (=> b!4935786 (= lt!2033447 call!344379)))

(assert (=> b!4935786 call!344378))

(declare-fun lt!2033415 () Unit!147521)

(assert (=> b!4935786 (= lt!2033415 lt!2033447)))

(assert (=> b!4935786 (= lt!2033439 call!344380)))

(declare-fun lt!2033422 () Unit!147521)

(assert (=> b!4935786 (= lt!2033422 call!344387)))

(assert (=> b!4935786 (= lt!2033439 lt!2033048)))

(declare-fun lt!2033419 () Unit!147521)

(assert (=> b!4935786 (= lt!2033419 lt!2033422)))

(assert (=> b!4935786 false))

(declare-fun bm!344375 () Bool)

(declare-fun call!344384 () List!56959)

(declare-fun call!344385 () C!27090)

(assert (=> bm!344375 (= call!344384 (++!12397 lt!2033048 (Cons!56835 call!344385 Nil!56835)))))

(declare-fun call!344386 () (Set Context!6144))

(declare-fun bm!344376 () Bool)

(assert (=> bm!344376 (= call!344386 (derivationStepZipper!597 (derivationStepZipper!597 z!3568 lt!2033064) call!344385))))

(declare-fun call!344382 () Int)

(declare-fun call!344383 () List!56959)

(declare-fun bm!344377 () Bool)

(assert (=> bm!344377 (= call!344382 (findLongestMatchInnerZipperFast!94 call!344386 call!344384 (+ 1 testedPSize!70 1) call!344383 totalInput!685 totalInputSize!132))))

(declare-fun b!4935787 () Bool)

(declare-fun c!841397 () Bool)

(declare-fun call!344381 () Bool)

(assert (=> b!4935787 (= c!841397 call!344381)))

(declare-fun lt!2033431 () Unit!147521)

(declare-fun lt!2033424 () Unit!147521)

(assert (=> b!4935787 (= lt!2033431 lt!2033424)))

(declare-fun lt!2033408 () C!27090)

(declare-fun lt!2033446 () List!56959)

(declare-fun lt!2033416 () List!56959)

(assert (=> b!4935787 (= (++!12397 (++!12397 lt!2033048 (Cons!56835 lt!2033408 Nil!56835)) lt!2033446) lt!2033416)))

(assert (=> b!4935787 (= lt!2033424 (lemmaMoveElementToOtherListKeepsConcatEq!1410 lt!2033048 lt!2033408 lt!2033446 lt!2033416))))

(assert (=> b!4935787 (= lt!2033416 call!344380)))

(assert (=> b!4935787 (= lt!2033446 (tail!9706 lt!2033052))))

(assert (=> b!4935787 (= lt!2033408 (apply!13746 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun lt!2033409 () Unit!147521)

(declare-fun lt!2033441 () Unit!147521)

(assert (=> b!4935787 (= lt!2033409 lt!2033441)))

(declare-fun lt!2033410 () List!56959)

(assert (=> b!4935787 (isPrefix!5028 (++!12397 lt!2033048 (Cons!56835 (head!10567 (getSuffix!3012 lt!2033410 lt!2033048)) Nil!56835)) lt!2033410)))

(assert (=> b!4935787 (= lt!2033441 (lemmaAddHeadSuffixToPrefixStillPrefix!798 lt!2033048 lt!2033410))))

(assert (=> b!4935787 (= lt!2033410 call!344380)))

(declare-fun lt!2033438 () Unit!147521)

(assert (=> b!4935787 (= lt!2033438 e!3083958)))

(declare-fun c!841396 () Bool)

(assert (=> b!4935787 (= c!841396 (= (size!37644 lt!2033048) (size!37645 totalInput!685)))))

(declare-fun lt!2033423 () Unit!147521)

(declare-fun lt!2033449 () Unit!147521)

(assert (=> b!4935787 (= lt!2033423 lt!2033449)))

(declare-fun lt!2033411 () List!56959)

(assert (=> b!4935787 (<= (size!37644 lt!2033048) (size!37644 lt!2033411))))

(assert (=> b!4935787 (= lt!2033449 (lemmaIsPrefixThenSmallerEqSize!716 lt!2033048 lt!2033411))))

(assert (=> b!4935787 (= lt!2033411 call!344380)))

(declare-fun lt!2033418 () Unit!147521)

(declare-fun lt!2033412 () Unit!147521)

(assert (=> b!4935787 (= lt!2033418 lt!2033412)))

(declare-fun lt!2033445 () List!56959)

(assert (=> b!4935787 (= (head!10567 (drop!2261 lt!2033445 (+ 1 testedPSize!70))) (apply!13747 lt!2033445 (+ 1 testedPSize!70)))))

(assert (=> b!4935787 (= lt!2033412 (lemmaDropApply!1319 lt!2033445 (+ 1 testedPSize!70)))))

(assert (=> b!4935787 (= lt!2033445 call!344380)))

(declare-fun lt!2033430 () Unit!147521)

(declare-fun lt!2033444 () Unit!147521)

(assert (=> b!4935787 (= lt!2033430 lt!2033444)))

(declare-fun lt!2033421 () List!56959)

(declare-fun lt!2033440 () List!56959)

(assert (=> b!4935787 (and (= lt!2033421 lt!2033048) (= lt!2033440 lt!2033052))))

(assert (=> b!4935787 (= lt!2033444 (lemmaConcatSameAndSameSizesThenSameLists!696 lt!2033421 lt!2033440 lt!2033048 lt!2033052))))

(declare-fun lt!2033437 () tuple2!61336)

(assert (=> b!4935787 (= lt!2033440 (list!18053 (_2!33971 lt!2033437)))))

(assert (=> b!4935787 (= lt!2033421 (list!18053 (_1!33971 lt!2033437)))))

(assert (=> b!4935787 (= lt!2033437 (splitAt!332 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun e!3083956 () Int)

(declare-fun e!3083960 () Int)

(assert (=> b!4935787 (= e!3083956 e!3083960)))

(declare-fun b!4935788 () Bool)

(assert (=> b!4935788 (= e!3083959 0)))

(declare-fun b!4935789 () Bool)

(assert (=> b!4935789 (= e!3083960 call!344382)))

(declare-fun bm!344378 () Bool)

(assert (=> bm!344378 (= call!344380 (list!18053 totalInput!685))))

(declare-fun b!4935790 () Bool)

(declare-fun c!841393 () Bool)

(assert (=> b!4935790 (= c!841393 call!344381)))

(declare-fun lt!2033425 () Unit!147521)

(declare-fun lt!2033413 () Unit!147521)

(assert (=> b!4935790 (= lt!2033425 lt!2033413)))

(assert (=> b!4935790 (= lt!2033428 lt!2033048)))

(assert (=> b!4935790 (= lt!2033413 call!344387)))

(assert (=> b!4935790 (= lt!2033428 call!344380)))

(declare-fun lt!2033435 () Unit!147521)

(declare-fun lt!2033420 () Unit!147521)

(assert (=> b!4935790 (= lt!2033435 lt!2033420)))

(assert (=> b!4935790 call!344378))

(assert (=> b!4935790 (= lt!2033420 call!344379)))

(assert (=> b!4935790 (= lt!2033436 call!344380)))

(assert (=> b!4935790 (= lt!2033434 call!344380)))

(declare-fun e!3083957 () Int)

(assert (=> b!4935790 (= e!3083956 e!3083957)))

(declare-fun b!4935791 () Bool)

(assert (=> b!4935791 (= e!3083957 0)))

(declare-fun bm!344379 () Bool)

(assert (=> bm!344379 (= call!344385 (apply!13746 totalInput!685 (+ 1 testedPSize!70)))))

(declare-fun bm!344380 () Bool)

(assert (=> bm!344380 (= call!344379 (lemmaIsPrefixRefl!3394 (ite c!841395 lt!2033434 lt!2033432) (ite c!841395 lt!2033436 lt!2033448)))))

(declare-fun b!4935792 () Bool)

(assert (=> b!4935792 (= e!3083957 (+ 1 testedPSize!70))))

(declare-fun bm!344381 () Bool)

(assert (=> bm!344381 (= call!344381 (nullableZipper!835 (derivationStepZipper!597 z!3568 lt!2033064)))))

(declare-fun b!4935793 () Bool)

(assert (=> b!4935793 (= e!3083959 e!3083956)))

(assert (=> b!4935793 (= c!841395 (= (+ 1 testedPSize!70) totalInputSize!132))))

(declare-fun bm!344382 () Bool)

(assert (=> bm!344382 (= call!344383 (tail!9706 lt!2033052))))

(declare-fun b!4935794 () Bool)

(declare-fun lt!2033427 () Int)

(assert (=> b!4935794 (= e!3083960 (ite (= lt!2033427 0) (+ 1 testedPSize!70) lt!2033427))))

(assert (=> b!4935794 (= lt!2033427 call!344382)))

(assert (= (and d!1588857 c!841394) b!4935788))

(assert (= (and d!1588857 (not c!841394)) b!4935793))

(assert (= (and b!4935793 c!841395) b!4935790))

(assert (= (and b!4935793 (not c!841395)) b!4935787))

(assert (= (and b!4935790 c!841393) b!4935792))

(assert (= (and b!4935790 (not c!841393)) b!4935791))

(assert (= (and b!4935787 c!841396) b!4935786))

(assert (= (and b!4935787 (not c!841396)) b!4935785))

(assert (= (and b!4935787 c!841397) b!4935794))

(assert (= (and b!4935787 (not c!841397)) b!4935789))

(assert (= (or b!4935794 b!4935789) bm!344382))

(assert (= (or b!4935794 b!4935789) bm!344379))

(assert (= (or b!4935794 b!4935789) bm!344375))

(assert (= (or b!4935794 b!4935789) bm!344376))

(assert (= (or b!4935794 b!4935789) bm!344377))

(assert (= (or b!4935790 b!4935787) bm!344381))

(assert (= (or b!4935790 b!4935786) bm!344373))

(assert (= (or b!4935790 b!4935786) bm!344380))

(assert (= (or b!4935790 b!4935786 b!4935787) bm!344378))

(assert (= (or b!4935790 b!4935786) bm!344374))

(declare-fun m!5957002 () Bool)

(assert (=> b!4935787 m!5957002))

(declare-fun m!5957004 () Bool)

(assert (=> b!4935787 m!5957004))

(declare-fun m!5957006 () Bool)

(assert (=> b!4935787 m!5957006))

(declare-fun m!5957008 () Bool)

(assert (=> b!4935787 m!5957008))

(declare-fun m!5957010 () Bool)

(assert (=> b!4935787 m!5957010))

(declare-fun m!5957012 () Bool)

(assert (=> b!4935787 m!5957012))

(declare-fun m!5957014 () Bool)

(assert (=> b!4935787 m!5957014))

(declare-fun m!5957016 () Bool)

(assert (=> b!4935787 m!5957016))

(declare-fun m!5957018 () Bool)

(assert (=> b!4935787 m!5957018))

(declare-fun m!5957020 () Bool)

(assert (=> b!4935787 m!5957020))

(declare-fun m!5957022 () Bool)

(assert (=> b!4935787 m!5957022))

(assert (=> b!4935787 m!5957020))

(assert (=> b!4935787 m!5956702))

(declare-fun m!5957024 () Bool)

(assert (=> b!4935787 m!5957024))

(declare-fun m!5957026 () Bool)

(assert (=> b!4935787 m!5957026))

(declare-fun m!5957028 () Bool)

(assert (=> b!4935787 m!5957028))

(assert (=> b!4935787 m!5957018))

(declare-fun m!5957030 () Bool)

(assert (=> b!4935787 m!5957030))

(declare-fun m!5957032 () Bool)

(assert (=> b!4935787 m!5957032))

(declare-fun m!5957034 () Bool)

(assert (=> b!4935787 m!5957034))

(declare-fun m!5957036 () Bool)

(assert (=> b!4935787 m!5957036))

(assert (=> b!4935787 m!5957006))

(declare-fun m!5957038 () Bool)

(assert (=> b!4935787 m!5957038))

(assert (=> b!4935787 m!5957004))

(declare-fun m!5957040 () Bool)

(assert (=> b!4935787 m!5957040))

(declare-fun m!5957042 () Bool)

(assert (=> b!4935787 m!5957042))

(assert (=> bm!344378 m!5956760))

(declare-fun m!5957044 () Bool)

(assert (=> bm!344374 m!5957044))

(declare-fun m!5957046 () Bool)

(assert (=> bm!344375 m!5957046))

(assert (=> d!1588857 m!5956746))

(declare-fun m!5957048 () Bool)

(assert (=> d!1588857 m!5957048))

(assert (=> d!1588857 m!5956746))

(declare-fun m!5957050 () Bool)

(assert (=> d!1588857 m!5957050))

(assert (=> d!1588857 m!5956684))

(assert (=> d!1588857 m!5956760))

(declare-fun m!5957052 () Bool)

(assert (=> d!1588857 m!5957052))

(declare-fun m!5957054 () Bool)

(assert (=> d!1588857 m!5957054))

(assert (=> d!1588857 m!5956684))

(declare-fun m!5957056 () Bool)

(assert (=> d!1588857 m!5957056))

(assert (=> d!1588857 m!5956760))

(declare-fun m!5957058 () Bool)

(assert (=> d!1588857 m!5957058))

(assert (=> d!1588857 m!5956760))

(declare-fun m!5957060 () Bool)

(assert (=> d!1588857 m!5957060))

(assert (=> d!1588857 m!5956760))

(assert (=> bm!344382 m!5957002))

(declare-fun m!5957062 () Bool)

(assert (=> bm!344373 m!5957062))

(assert (=> bm!344381 m!5956684))

(declare-fun m!5957064 () Bool)

(assert (=> bm!344381 m!5957064))

(declare-fun m!5957066 () Bool)

(assert (=> bm!344377 m!5957066))

(declare-fun m!5957068 () Bool)

(assert (=> bm!344380 m!5957068))

(assert (=> bm!344376 m!5956684))

(declare-fun m!5957070 () Bool)

(assert (=> bm!344376 m!5957070))

(assert (=> bm!344379 m!5957042))

(assert (=> b!4935574 d!1588857))

(declare-fun d!1588861 () Bool)

(assert (=> d!1588861 true))

(declare-fun lambda!245822 () Int)

(declare-fun flatMap!268 ((Set Context!6144) Int) (Set Context!6144))

(assert (=> d!1588861 (= (derivationStepZipper!597 z!3568 lt!2033064) (flatMap!268 z!3568 lambda!245822))))

(declare-fun bs!1180706 () Bool)

(assert (= bs!1180706 d!1588861))

(declare-fun m!5957072 () Bool)

(assert (=> bs!1180706 m!5957072))

(assert (=> b!4935574 d!1588861))

(declare-fun d!1588863 () Bool)

(assert (=> d!1588863 (= (head!10567 (drop!2261 lt!2033049 testedPSize!70)) (h!63283 (drop!2261 lt!2033049 testedPSize!70)))))

(assert (=> b!4935572 d!1588863))

(declare-fun d!1588865 () Bool)

(declare-fun lt!2033452 () C!27090)

(declare-fun contains!19473 (List!56959 C!27090) Bool)

(assert (=> d!1588865 (contains!19473 lt!2033049 lt!2033452)))

(declare-fun e!3083966 () C!27090)

(assert (=> d!1588865 (= lt!2033452 e!3083966)))

(declare-fun c!841402 () Bool)

(assert (=> d!1588865 (= c!841402 (= testedPSize!70 0))))

(declare-fun e!3083965 () Bool)

(assert (=> d!1588865 e!3083965))

(declare-fun res!2106480 () Bool)

(assert (=> d!1588865 (=> (not res!2106480) (not e!3083965))))

(assert (=> d!1588865 (= res!2106480 (<= 0 testedPSize!70))))

(assert (=> d!1588865 (= (apply!13747 lt!2033049 testedPSize!70) lt!2033452)))

(declare-fun b!4935803 () Bool)

(assert (=> b!4935803 (= e!3083965 (< testedPSize!70 (size!37644 lt!2033049)))))

(declare-fun b!4935804 () Bool)

(assert (=> b!4935804 (= e!3083966 (head!10567 lt!2033049))))

(declare-fun b!4935805 () Bool)

(assert (=> b!4935805 (= e!3083966 (apply!13747 (tail!9706 lt!2033049) (- testedPSize!70 1)))))

(assert (= (and d!1588865 res!2106480) b!4935803))

(assert (= (and d!1588865 c!841402) b!4935804))

(assert (= (and d!1588865 (not c!841402)) b!4935805))

(declare-fun m!5957074 () Bool)

(assert (=> d!1588865 m!5957074))

(assert (=> b!4935803 m!5956688))

(assert (=> b!4935804 m!5956860))

(assert (=> b!4935805 m!5956856))

(assert (=> b!4935805 m!5956856))

(declare-fun m!5957076 () Bool)

(assert (=> b!4935805 m!5957076))

(assert (=> b!4935572 d!1588865))

(declare-fun d!1588867 () Bool)

(assert (=> d!1588867 (= (head!10567 (drop!2261 lt!2033049 testedPSize!70)) (apply!13747 lt!2033049 testedPSize!70))))

(declare-fun lt!2033455 () Unit!147521)

(declare-fun choose!36251 (List!56959 Int) Unit!147521)

(assert (=> d!1588867 (= lt!2033455 (choose!36251 lt!2033049 testedPSize!70))))

(declare-fun e!3083969 () Bool)

(assert (=> d!1588867 e!3083969))

(declare-fun res!2106483 () Bool)

(assert (=> d!1588867 (=> (not res!2106483) (not e!3083969))))

(assert (=> d!1588867 (= res!2106483 (>= testedPSize!70 0))))

(assert (=> d!1588867 (= (lemmaDropApply!1319 lt!2033049 testedPSize!70) lt!2033455)))

(declare-fun b!4935808 () Bool)

(assert (=> b!4935808 (= e!3083969 (< testedPSize!70 (size!37644 lt!2033049)))))

(assert (= (and d!1588867 res!2106483) b!4935808))

(assert (=> d!1588867 m!5956732))

(assert (=> d!1588867 m!5956732))

(assert (=> d!1588867 m!5956734))

(assert (=> d!1588867 m!5956728))

(declare-fun m!5957078 () Bool)

(assert (=> d!1588867 m!5957078))

(assert (=> b!4935808 m!5956688))

(assert (=> b!4935572 d!1588867))

(declare-fun d!1588869 () Bool)

(assert (=> d!1588869 (and (= lt!2033063 testedP!110) (= lt!2033059 testedSuffix!70))))

(declare-fun lt!2033458 () Unit!147521)

(declare-fun choose!36252 (List!56959 List!56959 List!56959 List!56959) Unit!147521)

(assert (=> d!1588869 (= lt!2033458 (choose!36252 lt!2033063 lt!2033059 testedP!110 testedSuffix!70))))

(assert (=> d!1588869 (= (++!12397 lt!2033063 lt!2033059) (++!12397 testedP!110 testedSuffix!70))))

(assert (=> d!1588869 (= (lemmaConcatSameAndSameSizesThenSameLists!696 lt!2033063 lt!2033059 testedP!110 testedSuffix!70) lt!2033458)))

(declare-fun bs!1180707 () Bool)

(assert (= bs!1180707 d!1588869))

(declare-fun m!5957080 () Bool)

(assert (=> bs!1180707 m!5957080))

(assert (=> bs!1180707 m!5956704))

(assert (=> bs!1180707 m!5956762))

(assert (=> b!4935572 d!1588869))

(declare-fun d!1588871 () Bool)

(declare-fun lt!2033461 () C!27090)

(assert (=> d!1588871 (= lt!2033461 (apply!13747 (list!18053 totalInput!685) testedPSize!70))))

(declare-fun apply!13750 (Conc!14939 Int) C!27090)

(assert (=> d!1588871 (= lt!2033461 (apply!13750 (c!841319 totalInput!685) testedPSize!70))))

(declare-fun e!3083972 () Bool)

(assert (=> d!1588871 e!3083972))

(declare-fun res!2106486 () Bool)

(assert (=> d!1588871 (=> (not res!2106486) (not e!3083972))))

(assert (=> d!1588871 (= res!2106486 (<= 0 testedPSize!70))))

(assert (=> d!1588871 (= (apply!13746 totalInput!685 testedPSize!70) lt!2033461)))

(declare-fun b!4935811 () Bool)

(assert (=> b!4935811 (= e!3083972 (< testedPSize!70 (size!37645 totalInput!685)))))

(assert (= (and d!1588871 res!2106486) b!4935811))

(assert (=> d!1588871 m!5956760))

(assert (=> d!1588871 m!5956760))

(declare-fun m!5957082 () Bool)

(assert (=> d!1588871 m!5957082))

(declare-fun m!5957084 () Bool)

(assert (=> d!1588871 m!5957084))

(assert (=> b!4935811 m!5956702))

(assert (=> b!4935572 d!1588871))

(declare-fun b!4935830 () Bool)

(declare-fun e!3083987 () Bool)

(declare-fun lt!2033464 () List!56959)

(declare-fun e!3083984 () Int)

(assert (=> b!4935830 (= e!3083987 (= (size!37644 lt!2033464) e!3083984))))

(declare-fun c!841413 () Bool)

(assert (=> b!4935830 (= c!841413 (<= testedPSize!70 0))))

(declare-fun b!4935831 () Bool)

(declare-fun e!3083983 () Int)

(assert (=> b!4935831 (= e!3083984 e!3083983)))

(declare-fun c!841411 () Bool)

(declare-fun call!344390 () Int)

(assert (=> b!4935831 (= c!841411 (>= testedPSize!70 call!344390))))

(declare-fun b!4935833 () Bool)

(declare-fun e!3083986 () List!56959)

(declare-fun e!3083985 () List!56959)

(assert (=> b!4935833 (= e!3083986 e!3083985)))

(declare-fun c!841414 () Bool)

(assert (=> b!4935833 (= c!841414 (<= testedPSize!70 0))))

(declare-fun b!4935834 () Bool)

(assert (=> b!4935834 (= e!3083984 call!344390)))

(declare-fun bm!344385 () Bool)

(assert (=> bm!344385 (= call!344390 (size!37644 lt!2033049))))

(declare-fun b!4935835 () Bool)

(assert (=> b!4935835 (= e!3083985 lt!2033049)))

(declare-fun b!4935836 () Bool)

(assert (=> b!4935836 (= e!3083983 0)))

(declare-fun b!4935832 () Bool)

(assert (=> b!4935832 (= e!3083986 Nil!56835)))

(declare-fun d!1588873 () Bool)

(assert (=> d!1588873 e!3083987))

(declare-fun res!2106489 () Bool)

(assert (=> d!1588873 (=> (not res!2106489) (not e!3083987))))

(declare-fun content!10103 (List!56959) (Set C!27090))

(assert (=> d!1588873 (= res!2106489 (set.subset (content!10103 lt!2033464) (content!10103 lt!2033049)))))

(assert (=> d!1588873 (= lt!2033464 e!3083986)))

(declare-fun c!841412 () Bool)

(assert (=> d!1588873 (= c!841412 (is-Nil!56835 lt!2033049))))

(assert (=> d!1588873 (= (drop!2261 lt!2033049 testedPSize!70) lt!2033464)))

(declare-fun b!4935837 () Bool)

(assert (=> b!4935837 (= e!3083985 (drop!2261 (t!367449 lt!2033049) (- testedPSize!70 1)))))

(declare-fun b!4935838 () Bool)

(assert (=> b!4935838 (= e!3083983 (- call!344390 testedPSize!70))))

(assert (= (and d!1588873 c!841412) b!4935832))

(assert (= (and d!1588873 (not c!841412)) b!4935833))

(assert (= (and b!4935833 c!841414) b!4935835))

(assert (= (and b!4935833 (not c!841414)) b!4935837))

(assert (= (and d!1588873 res!2106489) b!4935830))

(assert (= (and b!4935830 c!841413) b!4935834))

(assert (= (and b!4935830 (not c!841413)) b!4935831))

(assert (= (and b!4935831 c!841411) b!4935836))

(assert (= (and b!4935831 (not c!841411)) b!4935838))

(assert (= (or b!4935834 b!4935831 b!4935838) bm!344385))

(declare-fun m!5957086 () Bool)

(assert (=> b!4935830 m!5957086))

(assert (=> bm!344385 m!5956688))

(declare-fun m!5957088 () Bool)

(assert (=> d!1588873 m!5957088))

(declare-fun m!5957090 () Bool)

(assert (=> d!1588873 m!5957090))

(declare-fun m!5957092 () Bool)

(assert (=> b!4935837 m!5957092))

(assert (=> b!4935572 d!1588873))

(declare-fun d!1588875 () Bool)

(assert (=> d!1588875 (= (head!10567 testedSuffix!70) (h!63283 testedSuffix!70))))

(assert (=> b!4935572 d!1588875))

(declare-fun d!1588877 () Bool)

(declare-fun lambda!245825 () Int)

(declare-fun forall!13190 (List!56958 Int) Bool)

(assert (=> d!1588877 (= (inv!73848 setElem!27787) (forall!13190 (exprs!3572 setElem!27787) lambda!245825))))

(declare-fun bs!1180708 () Bool)

(assert (= bs!1180708 d!1588877))

(declare-fun m!5957094 () Bool)

(assert (=> bs!1180708 m!5957094))

(assert (=> setNonEmpty!27787 d!1588877))

(declare-fun d!1588879 () Bool)

(declare-fun list!18055 (Conc!14939) List!56959)

(assert (=> d!1588879 (= (list!18053 totalInput!685) (list!18055 (c!841319 totalInput!685)))))

(declare-fun bs!1180709 () Bool)

(assert (= bs!1180709 d!1588879))

(declare-fun m!5957096 () Bool)

(assert (=> bs!1180709 m!5957096))

(assert (=> start!518762 d!1588879))

(declare-fun b!4935848 () Bool)

(declare-fun e!3083993 () List!56959)

(assert (=> b!4935848 (= e!3083993 (Cons!56835 (h!63283 testedP!110) (++!12397 (t!367449 testedP!110) testedSuffix!70)))))

(declare-fun d!1588881 () Bool)

(declare-fun e!3083992 () Bool)

(assert (=> d!1588881 e!3083992))

(declare-fun res!2106495 () Bool)

(assert (=> d!1588881 (=> (not res!2106495) (not e!3083992))))

(declare-fun lt!2033467 () List!56959)

(assert (=> d!1588881 (= res!2106495 (= (content!10103 lt!2033467) (set.union (content!10103 testedP!110) (content!10103 testedSuffix!70))))))

(assert (=> d!1588881 (= lt!2033467 e!3083993)))

(declare-fun c!841417 () Bool)

(assert (=> d!1588881 (= c!841417 (is-Nil!56835 testedP!110))))

(assert (=> d!1588881 (= (++!12397 testedP!110 testedSuffix!70) lt!2033467)))

(declare-fun b!4935849 () Bool)

(declare-fun res!2106494 () Bool)

(assert (=> b!4935849 (=> (not res!2106494) (not e!3083992))))

(assert (=> b!4935849 (= res!2106494 (= (size!37644 lt!2033467) (+ (size!37644 testedP!110) (size!37644 testedSuffix!70))))))

(declare-fun b!4935850 () Bool)

(assert (=> b!4935850 (= e!3083992 (or (not (= testedSuffix!70 Nil!56835)) (= lt!2033467 testedP!110)))))

(declare-fun b!4935847 () Bool)

(assert (=> b!4935847 (= e!3083993 testedSuffix!70)))

(assert (= (and d!1588881 c!841417) b!4935847))

(assert (= (and d!1588881 (not c!841417)) b!4935848))

(assert (= (and d!1588881 res!2106495) b!4935849))

(assert (= (and b!4935849 res!2106494) b!4935850))

(declare-fun m!5957098 () Bool)

(assert (=> b!4935848 m!5957098))

(declare-fun m!5957100 () Bool)

(assert (=> d!1588881 m!5957100))

(declare-fun m!5957102 () Bool)

(assert (=> d!1588881 m!5957102))

(declare-fun m!5957104 () Bool)

(assert (=> d!1588881 m!5957104))

(declare-fun m!5957106 () Bool)

(assert (=> b!4935849 m!5957106))

(assert (=> b!4935849 m!5956720))

(declare-fun m!5957108 () Bool)

(assert (=> b!4935849 m!5957108))

(assert (=> start!518762 d!1588881))

(declare-fun d!1588883 () Bool)

(declare-fun isBalanced!4116 (Conc!14939) Bool)

(assert (=> d!1588883 (= (inv!73847 totalInput!685) (isBalanced!4116 (c!841319 totalInput!685)))))

(declare-fun bs!1180710 () Bool)

(assert (= bs!1180710 d!1588883))

(declare-fun m!5957110 () Bool)

(assert (=> bs!1180710 m!5957110))

(assert (=> start!518762 d!1588883))

(declare-fun d!1588885 () Bool)

(assert (=> d!1588885 (= (head!10567 lt!2033046) (h!63283 lt!2033046))))

(assert (=> b!4935571 d!1588885))

(declare-fun b!4935854 () Bool)

(declare-fun e!3083995 () Bool)

(assert (=> b!4935854 (= e!3083995 (>= (size!37644 lt!2033049) (size!37644 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835)))))))

(declare-fun b!4935851 () Bool)

(declare-fun e!3083994 () Bool)

(declare-fun e!3083996 () Bool)

(assert (=> b!4935851 (= e!3083994 e!3083996)))

(declare-fun res!2106497 () Bool)

(assert (=> b!4935851 (=> (not res!2106497) (not e!3083996))))

(assert (=> b!4935851 (= res!2106497 (not (is-Nil!56835 lt!2033049)))))

(declare-fun b!4935853 () Bool)

(assert (=> b!4935853 (= e!3083996 (isPrefix!5028 (tail!9706 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835))) (tail!9706 lt!2033049)))))

(declare-fun d!1588887 () Bool)

(assert (=> d!1588887 e!3083995))

(declare-fun res!2106498 () Bool)

(assert (=> d!1588887 (=> res!2106498 e!3083995)))

(declare-fun lt!2033468 () Bool)

(assert (=> d!1588887 (= res!2106498 (not lt!2033468))))

(assert (=> d!1588887 (= lt!2033468 e!3083994)))

(declare-fun res!2106499 () Bool)

(assert (=> d!1588887 (=> res!2106499 e!3083994)))

(assert (=> d!1588887 (= res!2106499 (is-Nil!56835 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835))))))

(assert (=> d!1588887 (= (isPrefix!5028 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835)) lt!2033049) lt!2033468)))

(declare-fun b!4935852 () Bool)

(declare-fun res!2106496 () Bool)

(assert (=> b!4935852 (=> (not res!2106496) (not e!3083996))))

(assert (=> b!4935852 (= res!2106496 (= (head!10567 (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835))) (head!10567 lt!2033049)))))

(assert (= (and d!1588887 (not res!2106499)) b!4935851))

(assert (= (and b!4935851 res!2106497) b!4935852))

(assert (= (and b!4935852 res!2106496) b!4935853))

(assert (= (and d!1588887 (not res!2106498)) b!4935854))

(assert (=> b!4935854 m!5956688))

(assert (=> b!4935854 m!5956740))

(declare-fun m!5957112 () Bool)

(assert (=> b!4935854 m!5957112))

(assert (=> b!4935853 m!5956740))

(declare-fun m!5957114 () Bool)

(assert (=> b!4935853 m!5957114))

(assert (=> b!4935853 m!5956856))

(assert (=> b!4935853 m!5957114))

(assert (=> b!4935853 m!5956856))

(declare-fun m!5957116 () Bool)

(assert (=> b!4935853 m!5957116))

(assert (=> b!4935852 m!5956740))

(declare-fun m!5957118 () Bool)

(assert (=> b!4935852 m!5957118))

(assert (=> b!4935852 m!5956860))

(assert (=> b!4935571 d!1588887))

(declare-fun d!1588889 () Bool)

(assert (=> d!1588889 (= (++!12397 (++!12397 testedP!110 (Cons!56835 lt!2033064 Nil!56835)) lt!2033052) lt!2033049)))

(declare-fun lt!2033471 () Unit!147521)

(declare-fun choose!36253 (List!56959 C!27090 List!56959 List!56959) Unit!147521)

(assert (=> d!1588889 (= lt!2033471 (choose!36253 testedP!110 lt!2033064 lt!2033052 lt!2033049))))

(assert (=> d!1588889 (= (++!12397 testedP!110 (Cons!56835 lt!2033064 lt!2033052)) lt!2033049)))

(assert (=> d!1588889 (= (lemmaMoveElementToOtherListKeepsConcatEq!1410 testedP!110 lt!2033064 lt!2033052 lt!2033049) lt!2033471)))

(declare-fun bs!1180711 () Bool)

(assert (= bs!1180711 d!1588889))

(assert (=> bs!1180711 m!5956744))

(assert (=> bs!1180711 m!5956744))

(declare-fun m!5957120 () Bool)

(assert (=> bs!1180711 m!5957120))

(declare-fun m!5957122 () Bool)

(assert (=> bs!1180711 m!5957122))

(declare-fun m!5957124 () Bool)

(assert (=> bs!1180711 m!5957124))

(assert (=> b!4935571 d!1588889))

(declare-fun b!4935856 () Bool)

(declare-fun e!3083998 () List!56959)

(assert (=> b!4935856 (= e!3083998 (Cons!56835 (h!63283 testedP!110) (++!12397 (t!367449 testedP!110) (Cons!56835 lt!2033064 Nil!56835))))))

(declare-fun d!1588891 () Bool)

(declare-fun e!3083997 () Bool)

(assert (=> d!1588891 e!3083997))

(declare-fun res!2106501 () Bool)

(assert (=> d!1588891 (=> (not res!2106501) (not e!3083997))))

(declare-fun lt!2033472 () List!56959)

(assert (=> d!1588891 (= res!2106501 (= (content!10103 lt!2033472) (set.union (content!10103 testedP!110) (content!10103 (Cons!56835 lt!2033064 Nil!56835)))))))

(assert (=> d!1588891 (= lt!2033472 e!3083998)))

(declare-fun c!841418 () Bool)

(assert (=> d!1588891 (= c!841418 (is-Nil!56835 testedP!110))))

(assert (=> d!1588891 (= (++!12397 testedP!110 (Cons!56835 lt!2033064 Nil!56835)) lt!2033472)))

(declare-fun b!4935857 () Bool)

(declare-fun res!2106500 () Bool)

(assert (=> b!4935857 (=> (not res!2106500) (not e!3083997))))

(assert (=> b!4935857 (= res!2106500 (= (size!37644 lt!2033472) (+ (size!37644 testedP!110) (size!37644 (Cons!56835 lt!2033064 Nil!56835)))))))

(declare-fun b!4935858 () Bool)

(assert (=> b!4935858 (= e!3083997 (or (not (= (Cons!56835 lt!2033064 Nil!56835) Nil!56835)) (= lt!2033472 testedP!110)))))

(declare-fun b!4935855 () Bool)

(assert (=> b!4935855 (= e!3083998 (Cons!56835 lt!2033064 Nil!56835))))

(assert (= (and d!1588891 c!841418) b!4935855))

(assert (= (and d!1588891 (not c!841418)) b!4935856))

(assert (= (and d!1588891 res!2106501) b!4935857))

(assert (= (and b!4935857 res!2106500) b!4935858))

(declare-fun m!5957126 () Bool)

(assert (=> b!4935856 m!5957126))

(declare-fun m!5957128 () Bool)

(assert (=> d!1588891 m!5957128))

(assert (=> d!1588891 m!5957102))

(declare-fun m!5957130 () Bool)

(assert (=> d!1588891 m!5957130))

(declare-fun m!5957132 () Bool)

(assert (=> b!4935857 m!5957132))

(assert (=> b!4935857 m!5956720))

(declare-fun m!5957134 () Bool)

(assert (=> b!4935857 m!5957134))

(assert (=> b!4935571 d!1588891))

(declare-fun d!1588893 () Bool)

(assert (=> d!1588893 (isPrefix!5028 (++!12397 testedP!110 (Cons!56835 (head!10567 (getSuffix!3012 lt!2033049 testedP!110)) Nil!56835)) lt!2033049)))

(declare-fun lt!2033475 () Unit!147521)

(declare-fun choose!36254 (List!56959 List!56959) Unit!147521)

(assert (=> d!1588893 (= lt!2033475 (choose!36254 testedP!110 lt!2033049))))

(assert (=> d!1588893 (isPrefix!5028 testedP!110 lt!2033049)))

(assert (=> d!1588893 (= (lemmaAddHeadSuffixToPrefixStillPrefix!798 testedP!110 lt!2033049) lt!2033475)))

(declare-fun bs!1180712 () Bool)

(assert (= bs!1180712 d!1588893))

(declare-fun m!5957136 () Bool)

(assert (=> bs!1180712 m!5957136))

(declare-fun m!5957138 () Bool)

(assert (=> bs!1180712 m!5957138))

(assert (=> bs!1180712 m!5956758))

(assert (=> bs!1180712 m!5956758))

(declare-fun m!5957140 () Bool)

(assert (=> bs!1180712 m!5957140))

(assert (=> bs!1180712 m!5956714))

(assert (=> bs!1180712 m!5957138))

(declare-fun m!5957142 () Bool)

(assert (=> bs!1180712 m!5957142))

(assert (=> b!4935571 d!1588893))

(declare-fun d!1588895 () Bool)

(assert (=> d!1588895 (= (tail!9706 testedSuffix!70) (t!367449 testedSuffix!70))))

(assert (=> b!4935571 d!1588895))

(declare-fun b!4935860 () Bool)

(declare-fun e!3084000 () List!56959)

(assert (=> b!4935860 (= e!3084000 (Cons!56835 (h!63283 testedP!110) (++!12397 (t!367449 testedP!110) (Cons!56835 (head!10567 lt!2033046) Nil!56835))))))

(declare-fun d!1588897 () Bool)

(declare-fun e!3083999 () Bool)

(assert (=> d!1588897 e!3083999))

(declare-fun res!2106503 () Bool)

(assert (=> d!1588897 (=> (not res!2106503) (not e!3083999))))

(declare-fun lt!2033476 () List!56959)

(assert (=> d!1588897 (= res!2106503 (= (content!10103 lt!2033476) (set.union (content!10103 testedP!110) (content!10103 (Cons!56835 (head!10567 lt!2033046) Nil!56835)))))))

(assert (=> d!1588897 (= lt!2033476 e!3084000)))

(declare-fun c!841419 () Bool)

(assert (=> d!1588897 (= c!841419 (is-Nil!56835 testedP!110))))

(assert (=> d!1588897 (= (++!12397 testedP!110 (Cons!56835 (head!10567 lt!2033046) Nil!56835)) lt!2033476)))

(declare-fun b!4935861 () Bool)

(declare-fun res!2106502 () Bool)

(assert (=> b!4935861 (=> (not res!2106502) (not e!3083999))))

(assert (=> b!4935861 (= res!2106502 (= (size!37644 lt!2033476) (+ (size!37644 testedP!110) (size!37644 (Cons!56835 (head!10567 lt!2033046) Nil!56835)))))))

(declare-fun b!4935862 () Bool)

(assert (=> b!4935862 (= e!3083999 (or (not (= (Cons!56835 (head!10567 lt!2033046) Nil!56835) Nil!56835)) (= lt!2033476 testedP!110)))))

(declare-fun b!4935859 () Bool)

(assert (=> b!4935859 (= e!3084000 (Cons!56835 (head!10567 lt!2033046) Nil!56835))))

(assert (= (and d!1588897 c!841419) b!4935859))

(assert (= (and d!1588897 (not c!841419)) b!4935860))

(assert (= (and d!1588897 res!2106503) b!4935861))

(assert (= (and b!4935861 res!2106502) b!4935862))

(declare-fun m!5957144 () Bool)

(assert (=> b!4935860 m!5957144))

(declare-fun m!5957146 () Bool)

(assert (=> d!1588897 m!5957146))

(assert (=> d!1588897 m!5957102))

(declare-fun m!5957148 () Bool)

(assert (=> d!1588897 m!5957148))

(declare-fun m!5957150 () Bool)

(assert (=> b!4935861 m!5957150))

(assert (=> b!4935861 m!5956720))

(declare-fun m!5957152 () Bool)

(assert (=> b!4935861 m!5957152))

(assert (=> b!4935571 d!1588897))

(declare-fun b!4935864 () Bool)

(declare-fun e!3084002 () List!56959)

(assert (=> b!4935864 (= e!3084002 (Cons!56835 (h!63283 lt!2033048) (++!12397 (t!367449 lt!2033048) lt!2033052)))))

(declare-fun d!1588899 () Bool)

(declare-fun e!3084001 () Bool)

(assert (=> d!1588899 e!3084001))

(declare-fun res!2106505 () Bool)

(assert (=> d!1588899 (=> (not res!2106505) (not e!3084001))))

(declare-fun lt!2033477 () List!56959)

(assert (=> d!1588899 (= res!2106505 (= (content!10103 lt!2033477) (set.union (content!10103 lt!2033048) (content!10103 lt!2033052))))))

(assert (=> d!1588899 (= lt!2033477 e!3084002)))

(declare-fun c!841420 () Bool)

(assert (=> d!1588899 (= c!841420 (is-Nil!56835 lt!2033048))))

(assert (=> d!1588899 (= (++!12397 lt!2033048 lt!2033052) lt!2033477)))

(declare-fun b!4935865 () Bool)

(declare-fun res!2106504 () Bool)

(assert (=> b!4935865 (=> (not res!2106504) (not e!3084001))))

(assert (=> b!4935865 (= res!2106504 (= (size!37644 lt!2033477) (+ (size!37644 lt!2033048) (size!37644 lt!2033052))))))

(declare-fun b!4935866 () Bool)

(assert (=> b!4935866 (= e!3084001 (or (not (= lt!2033052 Nil!56835)) (= lt!2033477 lt!2033048)))))

(declare-fun b!4935863 () Bool)

(assert (=> b!4935863 (= e!3084002 lt!2033052)))

(assert (= (and d!1588899 c!841420) b!4935863))

(assert (= (and d!1588899 (not c!841420)) b!4935864))

(assert (= (and d!1588899 res!2106505) b!4935865))

(assert (= (and b!4935865 res!2106504) b!4935866))

(declare-fun m!5957154 () Bool)

(assert (=> b!4935864 m!5957154))

(declare-fun m!5957156 () Bool)

(assert (=> d!1588899 m!5957156))

(declare-fun m!5957158 () Bool)

(assert (=> d!1588899 m!5957158))

(declare-fun m!5957160 () Bool)

(assert (=> d!1588899 m!5957160))

(declare-fun m!5957162 () Bool)

(assert (=> b!4935865 m!5957162))

(assert (=> b!4935865 m!5957034))

(declare-fun m!5957164 () Bool)

(assert (=> b!4935865 m!5957164))

(assert (=> b!4935571 d!1588899))

(declare-fun bs!1180713 () Bool)

(declare-fun d!1588901 () Bool)

(assert (= bs!1180713 (and d!1588901 d!1588831)))

(declare-fun lambda!245828 () Int)

(assert (=> bs!1180713 (not (= lambda!245828 lambda!245817))))

(declare-fun bs!1180714 () Bool)

(assert (= bs!1180714 (and d!1588901 b!4935721)))

(assert (=> bs!1180714 (not (= lambda!245828 lambda!245818))))

(declare-fun bs!1180715 () Bool)

(assert (= bs!1180715 (and d!1588901 b!4935722)))

(assert (=> bs!1180715 (not (= lambda!245828 lambda!245819))))

(declare-fun exists!1280 ((Set Context!6144) Int) Bool)

(assert (=> d!1588901 (= (nullableZipper!835 z!3568) (exists!1280 z!3568 lambda!245828))))

(declare-fun bs!1180716 () Bool)

(assert (= bs!1180716 d!1588901))

(declare-fun m!5957166 () Bool)

(assert (=> bs!1180716 m!5957166))

(assert (=> b!4935571 d!1588901))

(declare-fun b!4935870 () Bool)

(declare-fun e!3084004 () Bool)

(assert (=> b!4935870 (= e!3084004 (>= (size!37644 lt!2033049) (size!37644 testedP!110)))))

(declare-fun b!4935867 () Bool)

(declare-fun e!3084003 () Bool)

(declare-fun e!3084005 () Bool)

(assert (=> b!4935867 (= e!3084003 e!3084005)))

(declare-fun res!2106507 () Bool)

(assert (=> b!4935867 (=> (not res!2106507) (not e!3084005))))

(assert (=> b!4935867 (= res!2106507 (not (is-Nil!56835 lt!2033049)))))

(declare-fun b!4935869 () Bool)

(assert (=> b!4935869 (= e!3084005 (isPrefix!5028 (tail!9706 testedP!110) (tail!9706 lt!2033049)))))

(declare-fun d!1588903 () Bool)

(assert (=> d!1588903 e!3084004))

(declare-fun res!2106508 () Bool)

(assert (=> d!1588903 (=> res!2106508 e!3084004)))

(declare-fun lt!2033478 () Bool)

(assert (=> d!1588903 (= res!2106508 (not lt!2033478))))

(assert (=> d!1588903 (= lt!2033478 e!3084003)))

(declare-fun res!2106509 () Bool)

(assert (=> d!1588903 (=> res!2106509 e!3084003)))

(assert (=> d!1588903 (= res!2106509 (is-Nil!56835 testedP!110))))

(assert (=> d!1588903 (= (isPrefix!5028 testedP!110 lt!2033049) lt!2033478)))

(declare-fun b!4935868 () Bool)

(declare-fun res!2106506 () Bool)

(assert (=> b!4935868 (=> (not res!2106506) (not e!3084005))))

(assert (=> b!4935868 (= res!2106506 (= (head!10567 testedP!110) (head!10567 lt!2033049)))))

(assert (= (and d!1588903 (not res!2106509)) b!4935867))

(assert (= (and b!4935867 res!2106507) b!4935868))

(assert (= (and b!4935868 res!2106506) b!4935869))

(assert (= (and d!1588903 (not res!2106508)) b!4935870))

(assert (=> b!4935870 m!5956688))

(assert (=> b!4935870 m!5956720))

(declare-fun m!5957168 () Bool)

(assert (=> b!4935869 m!5957168))

(assert (=> b!4935869 m!5956856))

(assert (=> b!4935869 m!5957168))

(assert (=> b!4935869 m!5956856))

(declare-fun m!5957170 () Bool)

(assert (=> b!4935869 m!5957170))

(declare-fun m!5957172 () Bool)

(assert (=> b!4935868 m!5957172))

(assert (=> b!4935868 m!5956860))

(assert (=> b!4935570 d!1588903))

(declare-fun b!4935874 () Bool)

(declare-fun e!3084007 () Bool)

(assert (=> b!4935874 (= e!3084007 (>= (size!37644 lt!2033047) (size!37644 testedP!110)))))

(declare-fun b!4935871 () Bool)

(declare-fun e!3084006 () Bool)

(declare-fun e!3084008 () Bool)

(assert (=> b!4935871 (= e!3084006 e!3084008)))

(declare-fun res!2106511 () Bool)

(assert (=> b!4935871 (=> (not res!2106511) (not e!3084008))))

(assert (=> b!4935871 (= res!2106511 (not (is-Nil!56835 lt!2033047)))))

(declare-fun b!4935873 () Bool)

(assert (=> b!4935873 (= e!3084008 (isPrefix!5028 (tail!9706 testedP!110) (tail!9706 lt!2033047)))))

(declare-fun d!1588905 () Bool)

(assert (=> d!1588905 e!3084007))

(declare-fun res!2106512 () Bool)

(assert (=> d!1588905 (=> res!2106512 e!3084007)))

(declare-fun lt!2033479 () Bool)

(assert (=> d!1588905 (= res!2106512 (not lt!2033479))))

(assert (=> d!1588905 (= lt!2033479 e!3084006)))

(declare-fun res!2106513 () Bool)

(assert (=> d!1588905 (=> res!2106513 e!3084006)))

(assert (=> d!1588905 (= res!2106513 (is-Nil!56835 testedP!110))))

(assert (=> d!1588905 (= (isPrefix!5028 testedP!110 lt!2033047) lt!2033479)))

(declare-fun b!4935872 () Bool)

(declare-fun res!2106510 () Bool)

(assert (=> b!4935872 (=> (not res!2106510) (not e!3084008))))

(assert (=> b!4935872 (= res!2106510 (= (head!10567 testedP!110) (head!10567 lt!2033047)))))

(assert (= (and d!1588905 (not res!2106513)) b!4935871))

(assert (= (and b!4935871 res!2106511) b!4935872))

(assert (= (and b!4935872 res!2106510) b!4935873))

(assert (= (and d!1588905 (not res!2106512)) b!4935874))

(declare-fun m!5957174 () Bool)

(assert (=> b!4935874 m!5957174))

(assert (=> b!4935874 m!5956720))

(assert (=> b!4935873 m!5957168))

(declare-fun m!5957176 () Bool)

(assert (=> b!4935873 m!5957176))

(assert (=> b!4935873 m!5957168))

(assert (=> b!4935873 m!5957176))

(declare-fun m!5957178 () Bool)

(assert (=> b!4935873 m!5957178))

(assert (=> b!4935872 m!5957172))

(declare-fun m!5957180 () Bool)

(assert (=> b!4935872 m!5957180))

(assert (=> b!4935570 d!1588905))

(declare-fun d!1588907 () Bool)

(assert (=> d!1588907 (isPrefix!5028 testedP!110 (++!12397 testedP!110 testedSuffix!70))))

(declare-fun lt!2033482 () Unit!147521)

(declare-fun choose!36257 (List!56959 List!56959) Unit!147521)

(assert (=> d!1588907 (= lt!2033482 (choose!36257 testedP!110 testedSuffix!70))))

(assert (=> d!1588907 (= (lemmaConcatTwoListThenFirstIsPrefix!3252 testedP!110 testedSuffix!70) lt!2033482)))

(declare-fun bs!1180717 () Bool)

(assert (= bs!1180717 d!1588907))

(assert (=> bs!1180717 m!5956762))

(assert (=> bs!1180717 m!5956762))

(declare-fun m!5957182 () Bool)

(assert (=> bs!1180717 m!5957182))

(declare-fun m!5957184 () Bool)

(assert (=> bs!1180717 m!5957184))

(assert (=> b!4935570 d!1588907))

(declare-fun d!1588909 () Bool)

(declare-fun lt!2033483 () Int)

(assert (=> d!1588909 (>= lt!2033483 0)))

(declare-fun e!3084009 () Int)

(assert (=> d!1588909 (= lt!2033483 e!3084009)))

(declare-fun c!841423 () Bool)

(assert (=> d!1588909 (= c!841423 (is-Nil!56835 lt!2033049))))

(assert (=> d!1588909 (= (size!37644 lt!2033049) lt!2033483)))

(declare-fun b!4935875 () Bool)

(assert (=> b!4935875 (= e!3084009 0)))

(declare-fun b!4935876 () Bool)

(assert (=> b!4935876 (= e!3084009 (+ 1 (size!37644 (t!367449 lt!2033049))))))

(assert (= (and d!1588909 c!841423) b!4935875))

(assert (= (and d!1588909 (not c!841423)) b!4935876))

(declare-fun m!5957186 () Bool)

(assert (=> b!4935876 m!5957186))

(assert (=> b!4935569 d!1588909))

(declare-fun d!1588911 () Bool)

(assert (=> d!1588911 (<= (size!37644 testedP!110) (size!37644 lt!2033049))))

(declare-fun lt!2033486 () Unit!147521)

(declare-fun choose!36258 (List!56959 List!56959) Unit!147521)

(assert (=> d!1588911 (= lt!2033486 (choose!36258 testedP!110 lt!2033049))))

(assert (=> d!1588911 (isPrefix!5028 testedP!110 lt!2033049)))

(assert (=> d!1588911 (= (lemmaIsPrefixThenSmallerEqSize!716 testedP!110 lt!2033049) lt!2033486)))

(declare-fun bs!1180718 () Bool)

(assert (= bs!1180718 d!1588911))

(assert (=> bs!1180718 m!5956720))

(assert (=> bs!1180718 m!5956688))

(declare-fun m!5957188 () Bool)

(assert (=> bs!1180718 m!5957188))

(assert (=> bs!1180718 m!5956714))

(assert (=> b!4935569 d!1588911))

(declare-fun d!1588913 () Bool)

(declare-fun c!841426 () Bool)

(assert (=> d!1588913 (= c!841426 (is-Node!14939 (c!841319 totalInput!685)))))

(declare-fun e!3084014 () Bool)

(assert (=> d!1588913 (= (inv!73846 (c!841319 totalInput!685)) e!3084014)))

(declare-fun b!4935883 () Bool)

(declare-fun inv!73853 (Conc!14939) Bool)

(assert (=> b!4935883 (= e!3084014 (inv!73853 (c!841319 totalInput!685)))))

(declare-fun b!4935884 () Bool)

(declare-fun e!3084015 () Bool)

(assert (=> b!4935884 (= e!3084014 e!3084015)))

(declare-fun res!2106516 () Bool)

(assert (=> b!4935884 (= res!2106516 (not (is-Leaf!24842 (c!841319 totalInput!685))))))

(assert (=> b!4935884 (=> res!2106516 e!3084015)))

(declare-fun b!4935885 () Bool)

(declare-fun inv!73855 (Conc!14939) Bool)

(assert (=> b!4935885 (= e!3084015 (inv!73855 (c!841319 totalInput!685)))))

(assert (= (and d!1588913 c!841426) b!4935883))

(assert (= (and d!1588913 (not c!841426)) b!4935884))

(assert (= (and b!4935884 (not res!2106516)) b!4935885))

(declare-fun m!5957190 () Bool)

(assert (=> b!4935883 m!5957190))

(declare-fun m!5957192 () Bool)

(assert (=> b!4935885 m!5957192))

(assert (=> b!4935568 d!1588913))

(declare-fun b!4935887 () Bool)

(declare-fun e!3084017 () List!56959)

(assert (=> b!4935887 (= e!3084017 (Cons!56835 (h!63283 lt!2033063) (++!12397 (t!367449 lt!2033063) lt!2033059)))))

(declare-fun d!1588915 () Bool)

(declare-fun e!3084016 () Bool)

(assert (=> d!1588915 e!3084016))

(declare-fun res!2106518 () Bool)

(assert (=> d!1588915 (=> (not res!2106518) (not e!3084016))))

(declare-fun lt!2033487 () List!56959)

(assert (=> d!1588915 (= res!2106518 (= (content!10103 lt!2033487) (set.union (content!10103 lt!2033063) (content!10103 lt!2033059))))))

(assert (=> d!1588915 (= lt!2033487 e!3084017)))

(declare-fun c!841427 () Bool)

(assert (=> d!1588915 (= c!841427 (is-Nil!56835 lt!2033063))))

(assert (=> d!1588915 (= (++!12397 lt!2033063 lt!2033059) lt!2033487)))

(declare-fun b!4935888 () Bool)

(declare-fun res!2106517 () Bool)

(assert (=> b!4935888 (=> (not res!2106517) (not e!3084016))))

(assert (=> b!4935888 (= res!2106517 (= (size!37644 lt!2033487) (+ (size!37644 lt!2033063) (size!37644 lt!2033059))))))

(declare-fun b!4935889 () Bool)

(assert (=> b!4935889 (= e!3084016 (or (not (= lt!2033059 Nil!56835)) (= lt!2033487 lt!2033063)))))

(declare-fun b!4935886 () Bool)

(assert (=> b!4935886 (= e!3084017 lt!2033059)))

(assert (= (and d!1588915 c!841427) b!4935886))

(assert (= (and d!1588915 (not c!841427)) b!4935887))

(assert (= (and d!1588915 res!2106518) b!4935888))

(assert (= (and b!4935888 res!2106517) b!4935889))

(declare-fun m!5957194 () Bool)

(assert (=> b!4935887 m!5957194))

(declare-fun m!5957196 () Bool)

(assert (=> d!1588915 m!5957196))

(declare-fun m!5957198 () Bool)

(assert (=> d!1588915 m!5957198))

(declare-fun m!5957200 () Bool)

(assert (=> d!1588915 m!5957200))

(declare-fun m!5957202 () Bool)

(assert (=> b!4935888 m!5957202))

(declare-fun m!5957204 () Bool)

(assert (=> b!4935888 m!5957204))

(declare-fun m!5957206 () Bool)

(assert (=> b!4935888 m!5957206))

(assert (=> b!4935579 d!1588915))

(declare-fun d!1588917 () Bool)

(assert (=> d!1588917 (= (list!18053 (_2!33971 lt!2033057)) (list!18055 (c!841319 (_2!33971 lt!2033057))))))

(declare-fun bs!1180719 () Bool)

(assert (= bs!1180719 d!1588917))

(declare-fun m!5957208 () Bool)

(assert (=> bs!1180719 m!5957208))

(assert (=> b!4935579 d!1588917))

(declare-fun d!1588919 () Bool)

(assert (=> d!1588919 (= (list!18053 (_1!33971 lt!2033057)) (list!18055 (c!841319 (_1!33971 lt!2033057))))))

(declare-fun bs!1180720 () Bool)

(assert (= bs!1180720 d!1588919))

(declare-fun m!5957210 () Bool)

(assert (=> bs!1180720 m!5957210))

(assert (=> b!4935579 d!1588919))

(declare-fun d!1588921 () Bool)

(declare-fun e!3084020 () Bool)

(assert (=> d!1588921 e!3084020))

(declare-fun res!2106523 () Bool)

(assert (=> d!1588921 (=> (not res!2106523) (not e!3084020))))

(declare-fun lt!2033493 () tuple2!61336)

(assert (=> d!1588921 (= res!2106523 (isBalanced!4116 (c!841319 (_1!33971 lt!2033493))))))

(declare-datatypes ((tuple2!61344 0))(
  ( (tuple2!61345 (_1!33975 Conc!14939) (_2!33975 Conc!14939)) )
))
(declare-fun lt!2033492 () tuple2!61344)

(assert (=> d!1588921 (= lt!2033493 (tuple2!61337 (BalanceConc!29309 (_1!33975 lt!2033492)) (BalanceConc!29309 (_2!33975 lt!2033492))))))

(declare-fun splitAt!334 (Conc!14939 Int) tuple2!61344)

(assert (=> d!1588921 (= lt!2033492 (splitAt!334 (c!841319 totalInput!685) testedPSize!70))))

(assert (=> d!1588921 (isBalanced!4116 (c!841319 totalInput!685))))

(assert (=> d!1588921 (= (splitAt!332 totalInput!685 testedPSize!70) lt!2033493)))

(declare-fun b!4935894 () Bool)

(declare-fun res!2106524 () Bool)

(assert (=> b!4935894 (=> (not res!2106524) (not e!3084020))))

(assert (=> b!4935894 (= res!2106524 (isBalanced!4116 (c!841319 (_2!33971 lt!2033493))))))

(declare-fun b!4935895 () Bool)

(declare-fun splitAtIndex!122 (List!56959 Int) tuple2!61340)

(assert (=> b!4935895 (= e!3084020 (= (tuple2!61341 (list!18053 (_1!33971 lt!2033493)) (list!18053 (_2!33971 lt!2033493))) (splitAtIndex!122 (list!18053 totalInput!685) testedPSize!70)))))

(assert (= (and d!1588921 res!2106523) b!4935894))

(assert (= (and b!4935894 res!2106524) b!4935895))

(declare-fun m!5957212 () Bool)

(assert (=> d!1588921 m!5957212))

(declare-fun m!5957214 () Bool)

(assert (=> d!1588921 m!5957214))

(assert (=> d!1588921 m!5957110))

(declare-fun m!5957216 () Bool)

(assert (=> b!4935894 m!5957216))

(declare-fun m!5957218 () Bool)

(assert (=> b!4935895 m!5957218))

(declare-fun m!5957220 () Bool)

(assert (=> b!4935895 m!5957220))

(assert (=> b!4935895 m!5956760))

(assert (=> b!4935895 m!5956760))

(declare-fun m!5957222 () Bool)

(assert (=> b!4935895 m!5957222))

(assert (=> b!4935579 d!1588921))

(declare-fun d!1588923 () Bool)

(declare-fun lt!2033494 () Int)

(assert (=> d!1588923 (= lt!2033494 (size!37644 (list!18053 (_1!33971 lt!2033057))))))

(assert (=> d!1588923 (= lt!2033494 (size!37648 (c!841319 (_1!33971 lt!2033057))))))

(assert (=> d!1588923 (= (size!37645 (_1!33971 lt!2033057)) lt!2033494)))

(declare-fun bs!1180721 () Bool)

(assert (= bs!1180721 d!1588923))

(assert (=> bs!1180721 m!5956708))

(assert (=> bs!1180721 m!5956708))

(declare-fun m!5957224 () Bool)

(assert (=> bs!1180721 m!5957224))

(declare-fun m!5957226 () Bool)

(assert (=> bs!1180721 m!5957226))

(assert (=> b!4935578 d!1588923))

(declare-fun b!4935900 () Bool)

(declare-fun e!3084023 () Bool)

(declare-fun tp!1385358 () Bool)

(declare-fun tp!1385359 () Bool)

(assert (=> b!4935900 (= e!3084023 (and tp!1385358 tp!1385359))))

(assert (=> b!4935567 (= tp!1385334 e!3084023)))

(assert (= (and b!4935567 (is-Cons!56834 (exprs!3572 setElem!27787))) b!4935900))

(declare-fun b!4935905 () Bool)

(declare-fun e!3084026 () Bool)

(declare-fun tp!1385362 () Bool)

(assert (=> b!4935905 (= e!3084026 (and tp_is_empty!36037 tp!1385362))))

(assert (=> b!4935581 (= tp!1385336 e!3084026)))

(assert (= (and b!4935581 (is-Cons!56835 (t!367449 testedSuffix!70))) b!4935905))

(declare-fun condSetEmpty!27793 () Bool)

(assert (=> setNonEmpty!27787 (= condSetEmpty!27793 (= setRest!27787 (as set.empty (Set Context!6144))))))

(declare-fun setRes!27793 () Bool)

(assert (=> setNonEmpty!27787 (= tp!1385338 setRes!27793)))

(declare-fun setIsEmpty!27793 () Bool)

(assert (=> setIsEmpty!27793 setRes!27793))

(declare-fun e!3084029 () Bool)

(declare-fun setElem!27793 () Context!6144)

(declare-fun setNonEmpty!27793 () Bool)

(declare-fun tp!1385368 () Bool)

(assert (=> setNonEmpty!27793 (= setRes!27793 (and tp!1385368 (inv!73848 setElem!27793) e!3084029))))

(declare-fun setRest!27793 () (Set Context!6144))

(assert (=> setNonEmpty!27793 (= setRest!27787 (set.union (set.insert setElem!27793 (as set.empty (Set Context!6144))) setRest!27793))))

(declare-fun b!4935910 () Bool)

(declare-fun tp!1385367 () Bool)

(assert (=> b!4935910 (= e!3084029 tp!1385367)))

(assert (= (and setNonEmpty!27787 condSetEmpty!27793) setIsEmpty!27793))

(assert (= (and setNonEmpty!27787 (not condSetEmpty!27793)) setNonEmpty!27793))

(assert (= setNonEmpty!27793 b!4935910))

(declare-fun m!5957228 () Bool)

(assert (=> setNonEmpty!27793 m!5957228))

(declare-fun b!4935911 () Bool)

(declare-fun e!3084030 () Bool)

(declare-fun tp!1385369 () Bool)

(assert (=> b!4935911 (= e!3084030 (and tp_is_empty!36037 tp!1385369))))

(assert (=> b!4935580 (= tp!1385337 e!3084030)))

(assert (= (and b!4935580 (is-Cons!56835 (t!367449 testedP!110))) b!4935911))

(declare-fun tp!1385376 () Bool)

(declare-fun tp!1385378 () Bool)

(declare-fun e!3084035 () Bool)

(declare-fun b!4935920 () Bool)

(assert (=> b!4935920 (= e!3084035 (and (inv!73846 (left!41447 (c!841319 totalInput!685))) tp!1385378 (inv!73846 (right!41777 (c!841319 totalInput!685))) tp!1385376))))

(declare-fun b!4935922 () Bool)

(declare-fun e!3084036 () Bool)

(declare-fun tp!1385377 () Bool)

(assert (=> b!4935922 (= e!3084036 tp!1385377)))

(declare-fun b!4935921 () Bool)

(declare-fun inv!73856 (IArray!29939) Bool)

(assert (=> b!4935921 (= e!3084035 (and (inv!73856 (xs!18263 (c!841319 totalInput!685))) e!3084036))))

(assert (=> b!4935568 (= tp!1385335 (and (inv!73846 (c!841319 totalInput!685)) e!3084035))))

(assert (= (and b!4935568 (is-Node!14939 (c!841319 totalInput!685))) b!4935920))

(assert (= b!4935921 b!4935922))

(assert (= (and b!4935568 (is-Leaf!24842 (c!841319 totalInput!685))) b!4935921))

(declare-fun m!5957230 () Bool)

(assert (=> b!4935920 m!5957230))

(declare-fun m!5957232 () Bool)

(assert (=> b!4935920 m!5957232))

(declare-fun m!5957234 () Bool)

(assert (=> b!4935921 m!5957234))

(assert (=> b!4935568 m!5956694))

(push 1)

(assert (not d!1588915))

(assert (not b!4935895))

(assert (not b!4935665))

(assert (not d!1588879))

(assert (not b!4935856))

(assert (not d!1588855))

(assert (not bm!344377))

(assert (not b!4935805))

(assert (not b!4935804))

(assert (not d!1588825))

(assert (not b!4935922))

(assert (not b!4935868))

(assert (not b!4935887))

(assert (not b!4935857))

(assert (not bm!344378))

(assert (not bm!344380))

(assert (not d!1588831))

(assert (not b!4935885))

(assert (not d!1588857))

(assert (not d!1588877))

(assert (not b!4935568))

(assert (not bm!344321))

(assert (not b!4935722))

(assert (not d!1588819))

(assert (not d!1588821))

(assert (not d!1588917))

(assert (not b!4935870))

(assert (not d!1588921))

(assert (not b!4935872))

(assert (not bm!344385))

(assert (not bm!344381))

(assert (not b!4935883))

(assert (not b!4935921))

(assert (not bm!344376))

(assert (not d!1588899))

(assert (not b!4935837))

(assert (not b!4935905))

(assert (not b!4935873))

(assert (not bm!344375))

(assert (not bm!344374))

(assert (not b!4935869))

(assert (not b!4935910))

(assert (not d!1588869))

(assert (not b!4935849))

(assert (not b!4935830))

(assert (not b!4935874))

(assert (not b!4935653))

(assert (not b!4935803))

(assert (not d!1588919))

(assert (not bm!344373))

(assert (not b!4935911))

(assert (not b!4935920))

(assert (not b!4935727))

(assert (not b!4935655))

(assert (not d!1588901))

(assert (not d!1588891))

(assert (not d!1588889))

(assert (not b!4935865))

(assert (not bm!344379))

(assert (not d!1588873))

(assert (not d!1588923))

(assert (not b!4935654))

(assert (not d!1588893))

(assert (not d!1588871))

(assert (not d!1588911))

(assert (not d!1588881))

(assert (not b!4935787))

(assert (not d!1588867))

(assert (not b!4935853))

(assert (not b!4935854))

(assert (not b!4935864))

(assert (not b!4935861))

(assert (not setNonEmpty!27793))

(assert (not b!4935900))

(assert tp_is_empty!36037)

(assert (not b!4935860))

(assert (not d!1588865))

(assert (not bm!344382))

(assert (not d!1588907))

(assert (not d!1588853))

(assert (not b!4935876))

(assert (not d!1588883))

(assert (not d!1588897))

(assert (not bm!344322))

(assert (not b!4935811))

(assert (not b!4935808))

(assert (not d!1588861))

(assert (not b!4935721))

(assert (not b!4935888))

(assert (not b!4935848))

(assert (not b!4935894))

(assert (not b!4935852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

