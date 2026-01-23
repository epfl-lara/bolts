; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726758 () Bool)

(assert start!726758)

(declare-fun b!7506820 () Bool)

(declare-fun e!4476125 () Bool)

(declare-fun tp_is_empty!49771 () Bool)

(declare-fun tp!2179053 () Bool)

(assert (=> b!7506820 (= e!4476125 (and tp_is_empty!49771 tp!2179053))))

(declare-fun b!7506821 () Bool)

(declare-fun e!4476118 () Bool)

(declare-fun e!4476113 () Bool)

(assert (=> b!7506821 (= e!4476118 e!4476113)))

(declare-fun res!3011751 () Bool)

(assert (=> b!7506821 (=> (not res!3011751) (not e!4476113))))

(declare-datatypes ((C!39756 0))(
  ( (C!39757 (val!30276 Int)) )
))
(declare-datatypes ((List!72531 0))(
  ( (Nil!72407) (Cons!72407 (h!78855 C!39756) (t!387100 List!72531)) )
))
(declare-datatypes ((tuple2!68764 0))(
  ( (tuple2!68765 (_1!37685 List!72531) (_2!37685 List!72531)) )
))
(declare-fun lt!2635546 () tuple2!68764)

(declare-fun totalInput!779 () List!72531)

(declare-fun ++!17344 (List!72531 List!72531) List!72531)

(assert (=> b!7506821 (= res!3011751 (= (++!17344 (_1!37685 lt!2635546) (_2!37685 lt!2635546)) totalInput!779))))

(declare-fun b!7506822 () Bool)

(declare-fun e!4476117 () Bool)

(declare-fun e!4476116 () Bool)

(assert (=> b!7506822 (= e!4476117 (not e!4476116))))

(declare-fun res!3011749 () Bool)

(assert (=> b!7506822 (=> res!3011749 e!4476116)))

(declare-fun testedP!204 () List!72531)

(declare-fun isPrefix!6009 (List!72531 List!72531) Bool)

(assert (=> b!7506822 (= res!3011749 (not (isPrefix!6009 testedP!204 totalInput!779)))))

(declare-fun lt!2635540 () List!72531)

(assert (=> b!7506822 (isPrefix!6009 testedP!204 lt!2635540)))

(declare-datatypes ((Unit!166414 0))(
  ( (Unit!166415) )
))
(declare-fun lt!2635533 () Unit!166414)

(declare-fun testedSuffix!164 () List!72531)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3722 (List!72531 List!72531) Unit!166414)

(assert (=> b!7506822 (= lt!2635533 (lemmaConcatTwoListThenFirstIsPrefix!3722 testedP!204 testedSuffix!164))))

(declare-fun b!7506823 () Bool)

(declare-fun lt!2635532 () Int)

(declare-fun size!42286 (List!72531) Int)

(assert (=> b!7506823 (= e!4476113 (>= (size!42286 (_1!37685 lt!2635546)) lt!2635532))))

(declare-fun b!7506824 () Bool)

(declare-fun e!4476126 () Bool)

(assert (=> b!7506824 (= e!4476116 e!4476126)))

(declare-fun res!3011746 () Bool)

(assert (=> b!7506824 (=> res!3011746 e!4476126)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19715 0))(
  ( (ElementMatch!19715 (c!1385902 C!39756)) (Concat!28560 (regOne!39942 Regex!19715) (regTwo!39942 Regex!19715)) (EmptyExpr!19715) (Star!19715 (reg!20044 Regex!19715)) (EmptyLang!19715) (Union!19715 (regOne!39943 Regex!19715) (regTwo!39943 Regex!19715)) )
))
(declare-datatypes ((List!72532 0))(
  ( (Nil!72408) (Cons!72408 (h!78856 Regex!19715) (t!387101 List!72532)) )
))
(declare-datatypes ((Context!16934 0))(
  ( (Context!16935 (exprs!8967 List!72532)) )
))
(declare-fun z!3716 () (InoxSet Context!16934))

(declare-fun lostCauseZipper!1403 ((InoxSet Context!16934)) Bool)

(assert (=> b!7506824 (= res!3011746 (lostCauseZipper!1403 z!3716))))

(declare-fun lt!2635539 () List!72531)

(assert (=> b!7506824 (and (= testedSuffix!164 lt!2635539) (= lt!2635539 testedSuffix!164))))

(declare-fun lt!2635534 () Unit!166414)

(declare-fun lemmaSamePrefixThenSameSuffix!2808 (List!72531 List!72531 List!72531 List!72531 List!72531) Unit!166414)

(assert (=> b!7506824 (= lt!2635534 (lemmaSamePrefixThenSameSuffix!2808 testedP!204 testedSuffix!164 testedP!204 lt!2635539 totalInput!779))))

(declare-fun getSuffix!3509 (List!72531 List!72531) List!72531)

(assert (=> b!7506824 (= lt!2635539 (getSuffix!3509 totalInput!779 testedP!204))))

(declare-fun b!7506825 () Bool)

(declare-fun e!4476120 () Bool)

(assert (=> b!7506825 (= e!4476120 e!4476117)))

(declare-fun res!3011753 () Bool)

(assert (=> b!7506825 (=> (not res!3011753) (not e!4476117))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2635537 () Int)

(assert (=> b!7506825 (= res!3011753 (= totalInputSize!226 lt!2635537))))

(assert (=> b!7506825 (= lt!2635537 (size!42286 totalInput!779))))

(declare-fun b!7506826 () Bool)

(declare-fun e!4476119 () Bool)

(assert (=> b!7506826 (= e!4476119 e!4476118)))

(declare-fun res!3011745 () Bool)

(assert (=> b!7506826 (=> res!3011745 e!4476118)))

(declare-fun isEmpty!41314 (List!72531) Bool)

(assert (=> b!7506826 (= res!3011745 (isEmpty!41314 (_1!37685 lt!2635546)))))

(declare-fun lt!2635545 () List!72531)

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2635544 () C!39756)

(declare-fun lt!2635535 () List!72531)

(declare-fun findLongestMatchInnerZipper!323 ((InoxSet Context!16934) List!72531 Int List!72531 List!72531 Int) tuple2!68764)

(declare-fun derivationStepZipper!3726 ((InoxSet Context!16934) C!39756) (InoxSet Context!16934))

(assert (=> b!7506826 (= lt!2635546 (findLongestMatchInnerZipper!323 (derivationStepZipper!3726 z!3716 lt!2635544) lt!2635545 (+ 1 testedPSize!164) lt!2635535 totalInput!779 totalInputSize!226))))

(declare-fun res!3011748 () Bool)

(declare-fun e!4476123 () Bool)

(assert (=> start!726758 (=> (not res!3011748) (not e!4476123))))

(assert (=> start!726758 (= res!3011748 (= lt!2635540 totalInput!779))))

(assert (=> start!726758 (= lt!2635540 (++!17344 testedP!204 testedSuffix!164))))

(assert (=> start!726758 e!4476123))

(declare-fun e!4476115 () Bool)

(assert (=> start!726758 e!4476115))

(assert (=> start!726758 true))

(assert (=> start!726758 e!4476125))

(declare-fun e!4476122 () Bool)

(assert (=> start!726758 e!4476122))

(declare-fun condSetEmpty!57044 () Bool)

(assert (=> start!726758 (= condSetEmpty!57044 (= z!3716 ((as const (Array Context!16934 Bool)) false)))))

(declare-fun setRes!57044 () Bool)

(assert (=> start!726758 setRes!57044))

(declare-fun b!7506827 () Bool)

(declare-fun e!4476121 () Bool)

(assert (=> b!7506827 (= e!4476121 e!4476119)))

(declare-fun res!3011754 () Bool)

(assert (=> b!7506827 (=> res!3011754 e!4476119)))

(declare-fun nullableZipper!3181 ((InoxSet Context!16934)) Bool)

(assert (=> b!7506827 (= res!3011754 (not (nullableZipper!3181 z!3716)))))

(assert (=> b!7506827 (= (++!17344 lt!2635545 lt!2635535) totalInput!779)))

(declare-fun lt!2635538 () Unit!166414)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3157 (List!72531 C!39756 List!72531 List!72531) Unit!166414)

(assert (=> b!7506827 (= lt!2635538 (lemmaMoveElementToOtherListKeepsConcatEq!3157 testedP!204 lt!2635544 lt!2635535 totalInput!779))))

(declare-fun tail!14999 (List!72531) List!72531)

(assert (=> b!7506827 (= lt!2635535 (tail!14999 testedSuffix!164))))

(declare-fun head!15432 (List!72531) C!39756)

(assert (=> b!7506827 (isPrefix!6009 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) totalInput!779)))

(declare-fun lt!2635542 () Unit!166414)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1126 (List!72531 List!72531) Unit!166414)

(assert (=> b!7506827 (= lt!2635542 (lemmaAddHeadSuffixToPrefixStillPrefix!1126 testedP!204 totalInput!779))))

(assert (=> b!7506827 (= lt!2635545 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)))))

(assert (=> b!7506827 (= lt!2635544 (head!15432 testedSuffix!164))))

(declare-fun b!7506828 () Bool)

(declare-fun res!3011747 () Bool)

(assert (=> b!7506828 (=> res!3011747 e!4476126)))

(assert (=> b!7506828 (= res!3011747 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7506829 () Bool)

(assert (=> b!7506829 (= e!4476126 e!4476121)))

(declare-fun res!3011752 () Bool)

(assert (=> b!7506829 (=> res!3011752 e!4476121)))

(assert (=> b!7506829 (= res!3011752 (>= lt!2635532 lt!2635537))))

(declare-fun lt!2635543 () Unit!166414)

(declare-fun e!4476124 () Unit!166414)

(assert (=> b!7506829 (= lt!2635543 e!4476124)))

(declare-fun c!1385901 () Bool)

(assert (=> b!7506829 (= c!1385901 (= lt!2635532 lt!2635537))))

(assert (=> b!7506829 (<= lt!2635532 lt!2635537)))

(declare-fun lt!2635536 () Unit!166414)

(declare-fun lemmaIsPrefixThenSmallerEqSize!996 (List!72531 List!72531) Unit!166414)

(assert (=> b!7506829 (= lt!2635536 (lemmaIsPrefixThenSmallerEqSize!996 testedP!204 totalInput!779))))

(declare-fun b!7506830 () Bool)

(declare-fun Unit!166416 () Unit!166414)

(assert (=> b!7506830 (= e!4476124 Unit!166416)))

(declare-fun b!7506831 () Bool)

(declare-fun e!4476114 () Bool)

(declare-fun tp!2179052 () Bool)

(assert (=> b!7506831 (= e!4476114 tp!2179052)))

(declare-fun setIsEmpty!57044 () Bool)

(assert (=> setIsEmpty!57044 setRes!57044))

(declare-fun b!7506832 () Bool)

(assert (=> b!7506832 (= e!4476123 e!4476120)))

(declare-fun res!3011750 () Bool)

(assert (=> b!7506832 (=> (not res!3011750) (not e!4476120))))

(assert (=> b!7506832 (= res!3011750 (= testedPSize!164 lt!2635532))))

(assert (=> b!7506832 (= lt!2635532 (size!42286 testedP!204))))

(declare-fun b!7506833 () Bool)

(declare-fun tp!2179050 () Bool)

(assert (=> b!7506833 (= e!4476122 (and tp_is_empty!49771 tp!2179050))))

(declare-fun b!7506834 () Bool)

(declare-fun Unit!166417 () Unit!166414)

(assert (=> b!7506834 (= e!4476124 Unit!166417)))

(declare-fun lt!2635531 () Unit!166414)

(declare-fun lemmaIsPrefixRefl!3848 (List!72531 List!72531) Unit!166414)

(assert (=> b!7506834 (= lt!2635531 (lemmaIsPrefixRefl!3848 totalInput!779 totalInput!779))))

(assert (=> b!7506834 (isPrefix!6009 totalInput!779 totalInput!779)))

(declare-fun lt!2635541 () Unit!166414)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1498 (List!72531 List!72531 List!72531) Unit!166414)

(assert (=> b!7506834 (= lt!2635541 (lemmaIsPrefixSameLengthThenSameList!1498 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7506834 false))

(declare-fun setElem!57044 () Context!16934)

(declare-fun setNonEmpty!57044 () Bool)

(declare-fun tp!2179049 () Bool)

(declare-fun inv!92517 (Context!16934) Bool)

(assert (=> setNonEmpty!57044 (= setRes!57044 (and tp!2179049 (inv!92517 setElem!57044) e!4476114))))

(declare-fun setRest!57044 () (InoxSet Context!16934))

(assert (=> setNonEmpty!57044 (= z!3716 ((_ map or) (store ((as const (Array Context!16934 Bool)) false) setElem!57044 true) setRest!57044))))

(declare-fun b!7506835 () Bool)

(declare-fun tp!2179051 () Bool)

(assert (=> b!7506835 (= e!4476115 (and tp_is_empty!49771 tp!2179051))))

(assert (= (and start!726758 res!3011748) b!7506832))

(assert (= (and b!7506832 res!3011750) b!7506825))

(assert (= (and b!7506825 res!3011753) b!7506822))

(assert (= (and b!7506822 (not res!3011749)) b!7506824))

(assert (= (and b!7506824 (not res!3011746)) b!7506828))

(assert (= (and b!7506828 (not res!3011747)) b!7506829))

(assert (= (and b!7506829 c!1385901) b!7506834))

(assert (= (and b!7506829 (not c!1385901)) b!7506830))

(assert (= (and b!7506829 (not res!3011752)) b!7506827))

(assert (= (and b!7506827 (not res!3011754)) b!7506826))

(assert (= (and b!7506826 (not res!3011745)) b!7506821))

(assert (= (and b!7506821 res!3011751) b!7506823))

(get-info :version)

(assert (= (and start!726758 ((_ is Cons!72407) testedSuffix!164)) b!7506835))

(assert (= (and start!726758 ((_ is Cons!72407) totalInput!779)) b!7506820))

(assert (= (and start!726758 ((_ is Cons!72407) testedP!204)) b!7506833))

(assert (= (and start!726758 condSetEmpty!57044) setIsEmpty!57044))

(assert (= (and start!726758 (not condSetEmpty!57044)) setNonEmpty!57044))

(assert (= setNonEmpty!57044 b!7506831))

(declare-fun m!8089376 () Bool)

(assert (=> start!726758 m!8089376))

(declare-fun m!8089378 () Bool)

(assert (=> b!7506821 m!8089378))

(declare-fun m!8089380 () Bool)

(assert (=> b!7506829 m!8089380))

(declare-fun m!8089382 () Bool)

(assert (=> b!7506827 m!8089382))

(declare-fun m!8089384 () Bool)

(assert (=> b!7506827 m!8089384))

(declare-fun m!8089386 () Bool)

(assert (=> b!7506827 m!8089386))

(declare-fun m!8089388 () Bool)

(assert (=> b!7506827 m!8089388))

(declare-fun m!8089390 () Bool)

(assert (=> b!7506827 m!8089390))

(declare-fun m!8089392 () Bool)

(assert (=> b!7506827 m!8089392))

(declare-fun m!8089394 () Bool)

(assert (=> b!7506827 m!8089394))

(declare-fun m!8089396 () Bool)

(assert (=> b!7506827 m!8089396))

(assert (=> b!7506827 m!8089392))

(declare-fun m!8089398 () Bool)

(assert (=> b!7506827 m!8089398))

(declare-fun m!8089400 () Bool)

(assert (=> b!7506827 m!8089400))

(declare-fun m!8089402 () Bool)

(assert (=> b!7506834 m!8089402))

(declare-fun m!8089404 () Bool)

(assert (=> b!7506834 m!8089404))

(declare-fun m!8089406 () Bool)

(assert (=> b!7506834 m!8089406))

(declare-fun m!8089408 () Bool)

(assert (=> b!7506823 m!8089408))

(declare-fun m!8089410 () Bool)

(assert (=> b!7506824 m!8089410))

(declare-fun m!8089412 () Bool)

(assert (=> b!7506824 m!8089412))

(declare-fun m!8089414 () Bool)

(assert (=> b!7506824 m!8089414))

(declare-fun m!8089416 () Bool)

(assert (=> b!7506825 m!8089416))

(declare-fun m!8089418 () Bool)

(assert (=> setNonEmpty!57044 m!8089418))

(declare-fun m!8089420 () Bool)

(assert (=> b!7506826 m!8089420))

(declare-fun m!8089422 () Bool)

(assert (=> b!7506826 m!8089422))

(assert (=> b!7506826 m!8089422))

(declare-fun m!8089424 () Bool)

(assert (=> b!7506826 m!8089424))

(declare-fun m!8089426 () Bool)

(assert (=> b!7506832 m!8089426))

(declare-fun m!8089428 () Bool)

(assert (=> b!7506822 m!8089428))

(declare-fun m!8089430 () Bool)

(assert (=> b!7506822 m!8089430))

(declare-fun m!8089432 () Bool)

(assert (=> b!7506822 m!8089432))

(check-sat (not b!7506824) (not b!7506831) (not b!7506823) (not b!7506832) (not b!7506827) tp_is_empty!49771 (not b!7506822) (not setNonEmpty!57044) (not b!7506820) (not b!7506825) (not b!7506834) (not b!7506826) (not start!726758) (not b!7506833) (not b!7506835) (not b!7506829) (not b!7506821))
(check-sat)
(get-model)

(declare-fun d!2304438 () Bool)

(declare-fun lt!2635549 () Int)

(assert (=> d!2304438 (>= lt!2635549 0)))

(declare-fun e!4476129 () Int)

(assert (=> d!2304438 (= lt!2635549 e!4476129)))

(declare-fun c!1385905 () Bool)

(assert (=> d!2304438 (= c!1385905 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304438 (= (size!42286 testedP!204) lt!2635549)))

(declare-fun b!7506840 () Bool)

(assert (=> b!7506840 (= e!4476129 0)))

(declare-fun b!7506841 () Bool)

(assert (=> b!7506841 (= e!4476129 (+ 1 (size!42286 (t!387100 testedP!204))))))

(assert (= (and d!2304438 c!1385905) b!7506840))

(assert (= (and d!2304438 (not c!1385905)) b!7506841))

(declare-fun m!8089434 () Bool)

(assert (=> b!7506841 m!8089434))

(assert (=> b!7506832 d!2304438))

(declare-fun b!7506851 () Bool)

(declare-fun e!4476134 () List!72531)

(assert (=> b!7506851 (= e!4476134 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) testedSuffix!164)))))

(declare-fun b!7506850 () Bool)

(assert (=> b!7506850 (= e!4476134 testedSuffix!164)))

(declare-fun b!7506852 () Bool)

(declare-fun res!3011760 () Bool)

(declare-fun e!4476135 () Bool)

(assert (=> b!7506852 (=> (not res!3011760) (not e!4476135))))

(declare-fun lt!2635552 () List!72531)

(assert (=> b!7506852 (= res!3011760 (= (size!42286 lt!2635552) (+ (size!42286 testedP!204) (size!42286 testedSuffix!164))))))

(declare-fun b!7506853 () Bool)

(assert (=> b!7506853 (= e!4476135 (or (not (= testedSuffix!164 Nil!72407)) (= lt!2635552 testedP!204)))))

(declare-fun d!2304442 () Bool)

(assert (=> d!2304442 e!4476135))

(declare-fun res!3011759 () Bool)

(assert (=> d!2304442 (=> (not res!3011759) (not e!4476135))))

(declare-fun content!15308 (List!72531) (InoxSet C!39756))

(assert (=> d!2304442 (= res!3011759 (= (content!15308 lt!2635552) ((_ map or) (content!15308 testedP!204) (content!15308 testedSuffix!164))))))

(assert (=> d!2304442 (= lt!2635552 e!4476134)))

(declare-fun c!1385908 () Bool)

(assert (=> d!2304442 (= c!1385908 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304442 (= (++!17344 testedP!204 testedSuffix!164) lt!2635552)))

(assert (= (and d!2304442 c!1385908) b!7506850))

(assert (= (and d!2304442 (not c!1385908)) b!7506851))

(assert (= (and d!2304442 res!3011759) b!7506852))

(assert (= (and b!7506852 res!3011760) b!7506853))

(declare-fun m!8089436 () Bool)

(assert (=> b!7506851 m!8089436))

(declare-fun m!8089438 () Bool)

(assert (=> b!7506852 m!8089438))

(assert (=> b!7506852 m!8089426))

(declare-fun m!8089440 () Bool)

(assert (=> b!7506852 m!8089440))

(declare-fun m!8089442 () Bool)

(assert (=> d!2304442 m!8089442))

(declare-fun m!8089444 () Bool)

(assert (=> d!2304442 m!8089444))

(declare-fun m!8089446 () Bool)

(assert (=> d!2304442 m!8089446))

(assert (=> start!726758 d!2304442))

(declare-fun d!2304444 () Bool)

(declare-fun e!4476143 () Bool)

(assert (=> d!2304444 e!4476143))

(declare-fun res!3011772 () Bool)

(assert (=> d!2304444 (=> res!3011772 e!4476143)))

(declare-fun lt!2635555 () Bool)

(assert (=> d!2304444 (= res!3011772 (not lt!2635555))))

(declare-fun e!4476144 () Bool)

(assert (=> d!2304444 (= lt!2635555 e!4476144)))

(declare-fun res!3011769 () Bool)

(assert (=> d!2304444 (=> res!3011769 e!4476144)))

(assert (=> d!2304444 (= res!3011769 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304444 (= (isPrefix!6009 testedP!204 totalInput!779) lt!2635555)))

(declare-fun b!7506862 () Bool)

(declare-fun e!4476142 () Bool)

(assert (=> b!7506862 (= e!4476144 e!4476142)))

(declare-fun res!3011770 () Bool)

(assert (=> b!7506862 (=> (not res!3011770) (not e!4476142))))

(assert (=> b!7506862 (= res!3011770 (not ((_ is Nil!72407) totalInput!779)))))

(declare-fun b!7506863 () Bool)

(declare-fun res!3011771 () Bool)

(assert (=> b!7506863 (=> (not res!3011771) (not e!4476142))))

(assert (=> b!7506863 (= res!3011771 (= (head!15432 testedP!204) (head!15432 totalInput!779)))))

(declare-fun b!7506865 () Bool)

(assert (=> b!7506865 (= e!4476143 (>= (size!42286 totalInput!779) (size!42286 testedP!204)))))

(declare-fun b!7506864 () Bool)

(assert (=> b!7506864 (= e!4476142 (isPrefix!6009 (tail!14999 testedP!204) (tail!14999 totalInput!779)))))

(assert (= (and d!2304444 (not res!3011769)) b!7506862))

(assert (= (and b!7506862 res!3011770) b!7506863))

(assert (= (and b!7506863 res!3011771) b!7506864))

(assert (= (and d!2304444 (not res!3011772)) b!7506865))

(declare-fun m!8089448 () Bool)

(assert (=> b!7506863 m!8089448))

(declare-fun m!8089450 () Bool)

(assert (=> b!7506863 m!8089450))

(assert (=> b!7506865 m!8089416))

(assert (=> b!7506865 m!8089426))

(declare-fun m!8089452 () Bool)

(assert (=> b!7506864 m!8089452))

(declare-fun m!8089454 () Bool)

(assert (=> b!7506864 m!8089454))

(assert (=> b!7506864 m!8089452))

(assert (=> b!7506864 m!8089454))

(declare-fun m!8089456 () Bool)

(assert (=> b!7506864 m!8089456))

(assert (=> b!7506822 d!2304444))

(declare-fun d!2304446 () Bool)

(declare-fun e!4476146 () Bool)

(assert (=> d!2304446 e!4476146))

(declare-fun res!3011776 () Bool)

(assert (=> d!2304446 (=> res!3011776 e!4476146)))

(declare-fun lt!2635556 () Bool)

(assert (=> d!2304446 (= res!3011776 (not lt!2635556))))

(declare-fun e!4476147 () Bool)

(assert (=> d!2304446 (= lt!2635556 e!4476147)))

(declare-fun res!3011773 () Bool)

(assert (=> d!2304446 (=> res!3011773 e!4476147)))

(assert (=> d!2304446 (= res!3011773 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304446 (= (isPrefix!6009 testedP!204 lt!2635540) lt!2635556)))

(declare-fun b!7506866 () Bool)

(declare-fun e!4476145 () Bool)

(assert (=> b!7506866 (= e!4476147 e!4476145)))

(declare-fun res!3011774 () Bool)

(assert (=> b!7506866 (=> (not res!3011774) (not e!4476145))))

(assert (=> b!7506866 (= res!3011774 (not ((_ is Nil!72407) lt!2635540)))))

(declare-fun b!7506867 () Bool)

(declare-fun res!3011775 () Bool)

(assert (=> b!7506867 (=> (not res!3011775) (not e!4476145))))

(assert (=> b!7506867 (= res!3011775 (= (head!15432 testedP!204) (head!15432 lt!2635540)))))

(declare-fun b!7506869 () Bool)

(assert (=> b!7506869 (= e!4476146 (>= (size!42286 lt!2635540) (size!42286 testedP!204)))))

(declare-fun b!7506868 () Bool)

(assert (=> b!7506868 (= e!4476145 (isPrefix!6009 (tail!14999 testedP!204) (tail!14999 lt!2635540)))))

(assert (= (and d!2304446 (not res!3011773)) b!7506866))

(assert (= (and b!7506866 res!3011774) b!7506867))

(assert (= (and b!7506867 res!3011775) b!7506868))

(assert (= (and d!2304446 (not res!3011776)) b!7506869))

(assert (=> b!7506867 m!8089448))

(declare-fun m!8089458 () Bool)

(assert (=> b!7506867 m!8089458))

(declare-fun m!8089460 () Bool)

(assert (=> b!7506869 m!8089460))

(assert (=> b!7506869 m!8089426))

(assert (=> b!7506868 m!8089452))

(declare-fun m!8089462 () Bool)

(assert (=> b!7506868 m!8089462))

(assert (=> b!7506868 m!8089452))

(assert (=> b!7506868 m!8089462))

(declare-fun m!8089464 () Bool)

(assert (=> b!7506868 m!8089464))

(assert (=> b!7506822 d!2304446))

(declare-fun d!2304448 () Bool)

(assert (=> d!2304448 (isPrefix!6009 testedP!204 (++!17344 testedP!204 testedSuffix!164))))

(declare-fun lt!2635559 () Unit!166414)

(declare-fun choose!58141 (List!72531 List!72531) Unit!166414)

(assert (=> d!2304448 (= lt!2635559 (choose!58141 testedP!204 testedSuffix!164))))

(assert (=> d!2304448 (= (lemmaConcatTwoListThenFirstIsPrefix!3722 testedP!204 testedSuffix!164) lt!2635559)))

(declare-fun bs!1938264 () Bool)

(assert (= bs!1938264 d!2304448))

(assert (=> bs!1938264 m!8089376))

(assert (=> bs!1938264 m!8089376))

(declare-fun m!8089466 () Bool)

(assert (=> bs!1938264 m!8089466))

(declare-fun m!8089468 () Bool)

(assert (=> bs!1938264 m!8089468))

(assert (=> b!7506822 d!2304448))

(declare-fun d!2304450 () Bool)

(declare-fun lt!2635560 () Int)

(assert (=> d!2304450 (>= lt!2635560 0)))

(declare-fun e!4476148 () Int)

(assert (=> d!2304450 (= lt!2635560 e!4476148)))

(declare-fun c!1385909 () Bool)

(assert (=> d!2304450 (= c!1385909 ((_ is Nil!72407) (_1!37685 lt!2635546)))))

(assert (=> d!2304450 (= (size!42286 (_1!37685 lt!2635546)) lt!2635560)))

(declare-fun b!7506870 () Bool)

(assert (=> b!7506870 (= e!4476148 0)))

(declare-fun b!7506871 () Bool)

(assert (=> b!7506871 (= e!4476148 (+ 1 (size!42286 (t!387100 (_1!37685 lt!2635546)))))))

(assert (= (and d!2304450 c!1385909) b!7506870))

(assert (= (and d!2304450 (not c!1385909)) b!7506871))

(declare-fun m!8089470 () Bool)

(assert (=> b!7506871 m!8089470))

(assert (=> b!7506823 d!2304450))

(declare-fun d!2304452 () Bool)

(declare-fun lt!2635561 () Int)

(assert (=> d!2304452 (>= lt!2635561 0)))

(declare-fun e!4476149 () Int)

(assert (=> d!2304452 (= lt!2635561 e!4476149)))

(declare-fun c!1385910 () Bool)

(assert (=> d!2304452 (= c!1385910 ((_ is Nil!72407) totalInput!779))))

(assert (=> d!2304452 (= (size!42286 totalInput!779) lt!2635561)))

(declare-fun b!7506872 () Bool)

(assert (=> b!7506872 (= e!4476149 0)))

(declare-fun b!7506873 () Bool)

(assert (=> b!7506873 (= e!4476149 (+ 1 (size!42286 (t!387100 totalInput!779))))))

(assert (= (and d!2304452 c!1385910) b!7506872))

(assert (= (and d!2304452 (not c!1385910)) b!7506873))

(declare-fun m!8089472 () Bool)

(assert (=> b!7506873 m!8089472))

(assert (=> b!7506825 d!2304452))

(declare-fun d!2304454 () Bool)

(assert (=> d!2304454 (isPrefix!6009 totalInput!779 totalInput!779)))

(declare-fun lt!2635564 () Unit!166414)

(declare-fun choose!58142 (List!72531 List!72531) Unit!166414)

(assert (=> d!2304454 (= lt!2635564 (choose!58142 totalInput!779 totalInput!779))))

(assert (=> d!2304454 (= (lemmaIsPrefixRefl!3848 totalInput!779 totalInput!779) lt!2635564)))

(declare-fun bs!1938265 () Bool)

(assert (= bs!1938265 d!2304454))

(assert (=> bs!1938265 m!8089404))

(declare-fun m!8089474 () Bool)

(assert (=> bs!1938265 m!8089474))

(assert (=> b!7506834 d!2304454))

(declare-fun d!2304456 () Bool)

(declare-fun e!4476151 () Bool)

(assert (=> d!2304456 e!4476151))

(declare-fun res!3011780 () Bool)

(assert (=> d!2304456 (=> res!3011780 e!4476151)))

(declare-fun lt!2635565 () Bool)

(assert (=> d!2304456 (= res!3011780 (not lt!2635565))))

(declare-fun e!4476152 () Bool)

(assert (=> d!2304456 (= lt!2635565 e!4476152)))

(declare-fun res!3011777 () Bool)

(assert (=> d!2304456 (=> res!3011777 e!4476152)))

(assert (=> d!2304456 (= res!3011777 ((_ is Nil!72407) totalInput!779))))

(assert (=> d!2304456 (= (isPrefix!6009 totalInput!779 totalInput!779) lt!2635565)))

(declare-fun b!7506874 () Bool)

(declare-fun e!4476150 () Bool)

(assert (=> b!7506874 (= e!4476152 e!4476150)))

(declare-fun res!3011778 () Bool)

(assert (=> b!7506874 (=> (not res!3011778) (not e!4476150))))

(assert (=> b!7506874 (= res!3011778 (not ((_ is Nil!72407) totalInput!779)))))

(declare-fun b!7506875 () Bool)

(declare-fun res!3011779 () Bool)

(assert (=> b!7506875 (=> (not res!3011779) (not e!4476150))))

(assert (=> b!7506875 (= res!3011779 (= (head!15432 totalInput!779) (head!15432 totalInput!779)))))

(declare-fun b!7506877 () Bool)

(assert (=> b!7506877 (= e!4476151 (>= (size!42286 totalInput!779) (size!42286 totalInput!779)))))

(declare-fun b!7506876 () Bool)

(assert (=> b!7506876 (= e!4476150 (isPrefix!6009 (tail!14999 totalInput!779) (tail!14999 totalInput!779)))))

(assert (= (and d!2304456 (not res!3011777)) b!7506874))

(assert (= (and b!7506874 res!3011778) b!7506875))

(assert (= (and b!7506875 res!3011779) b!7506876))

(assert (= (and d!2304456 (not res!3011780)) b!7506877))

(assert (=> b!7506875 m!8089450))

(assert (=> b!7506875 m!8089450))

(assert (=> b!7506877 m!8089416))

(assert (=> b!7506877 m!8089416))

(assert (=> b!7506876 m!8089454))

(assert (=> b!7506876 m!8089454))

(assert (=> b!7506876 m!8089454))

(assert (=> b!7506876 m!8089454))

(declare-fun m!8089476 () Bool)

(assert (=> b!7506876 m!8089476))

(assert (=> b!7506834 d!2304456))

(declare-fun d!2304458 () Bool)

(assert (=> d!2304458 (= totalInput!779 testedP!204)))

(declare-fun lt!2635568 () Unit!166414)

(declare-fun choose!58144 (List!72531 List!72531 List!72531) Unit!166414)

(assert (=> d!2304458 (= lt!2635568 (choose!58144 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2304458 (isPrefix!6009 totalInput!779 totalInput!779)))

(assert (=> d!2304458 (= (lemmaIsPrefixSameLengthThenSameList!1498 totalInput!779 testedP!204 totalInput!779) lt!2635568)))

(declare-fun bs!1938266 () Bool)

(assert (= bs!1938266 d!2304458))

(declare-fun m!8089478 () Bool)

(assert (=> bs!1938266 m!8089478))

(assert (=> bs!1938266 m!8089404))

(assert (=> b!7506834 d!2304458))

(declare-fun bs!1938273 () Bool)

(declare-fun b!7506972 () Bool)

(declare-fun d!2304460 () Bool)

(assert (= bs!1938273 (and b!7506972 d!2304460)))

(declare-fun lambda!465481 () Int)

(declare-fun lambda!465480 () Int)

(assert (=> bs!1938273 (not (= lambda!465481 lambda!465480))))

(declare-fun bs!1938274 () Bool)

(declare-fun b!7506973 () Bool)

(assert (= bs!1938274 (and b!7506973 d!2304460)))

(declare-fun lambda!465482 () Int)

(assert (=> bs!1938274 (not (= lambda!465482 lambda!465480))))

(declare-fun bs!1938275 () Bool)

(assert (= bs!1938275 (and b!7506973 b!7506972)))

(assert (=> bs!1938275 (= lambda!465482 lambda!465481)))

(declare-fun e!4476210 () Unit!166414)

(declare-fun Unit!166423 () Unit!166414)

(assert (=> b!7506973 (= e!4476210 Unit!166423)))

(declare-datatypes ((List!72534 0))(
  ( (Nil!72410) (Cons!72410 (h!78858 Context!16934) (t!387103 List!72534)) )
))
(declare-fun lt!2635691 () List!72534)

(declare-fun call!688758 () List!72534)

(assert (=> b!7506973 (= lt!2635691 call!688758)))

(declare-fun lt!2635694 () Unit!166414)

(declare-fun lemmaForallThenNotExists!472 (List!72534 Int) Unit!166414)

(assert (=> b!7506973 (= lt!2635694 (lemmaForallThenNotExists!472 lt!2635691 lambda!465480))))

(declare-fun call!688757 () Bool)

(assert (=> b!7506973 (not call!688757)))

(declare-fun lt!2635692 () Unit!166414)

(assert (=> b!7506973 (= lt!2635692 lt!2635694)))

(declare-fun lt!2635690 () Bool)

(declare-datatypes ((Option!17230 0))(
  ( (None!17229) (Some!17229 (v!54358 List!72531)) )
))
(declare-fun isEmpty!41316 (Option!17230) Bool)

(declare-fun getLanguageWitness!1054 ((InoxSet Context!16934)) Option!17230)

(assert (=> d!2304460 (= lt!2635690 (isEmpty!41316 (getLanguageWitness!1054 z!3716)))))

(declare-fun forall!18295 ((InoxSet Context!16934) Int) Bool)

(assert (=> d!2304460 (= lt!2635690 (forall!18295 z!3716 lambda!465480))))

(declare-fun lt!2635695 () Unit!166414)

(assert (=> d!2304460 (= lt!2635695 e!4476210)))

(declare-fun c!1385953 () Bool)

(assert (=> d!2304460 (= c!1385953 (not (forall!18295 z!3716 lambda!465480)))))

(assert (=> d!2304460 (= (lostCauseZipper!1403 z!3716) lt!2635690)))

(declare-fun bm!688752 () Bool)

(declare-fun toList!11834 ((InoxSet Context!16934)) List!72534)

(assert (=> bm!688752 (= call!688758 (toList!11834 z!3716))))

(declare-fun Unit!166424 () Unit!166414)

(assert (=> b!7506972 (= e!4476210 Unit!166424)))

(declare-fun lt!2635696 () List!72534)

(assert (=> b!7506972 (= lt!2635696 call!688758)))

(declare-fun lt!2635689 () Unit!166414)

(declare-fun lemmaNotForallThenExists!505 (List!72534 Int) Unit!166414)

(assert (=> b!7506972 (= lt!2635689 (lemmaNotForallThenExists!505 lt!2635696 lambda!465480))))

(assert (=> b!7506972 call!688757))

(declare-fun lt!2635693 () Unit!166414)

(assert (=> b!7506972 (= lt!2635693 lt!2635689)))

(declare-fun bm!688753 () Bool)

(declare-fun exists!4867 (List!72534 Int) Bool)

(assert (=> bm!688753 (= call!688757 (exists!4867 (ite c!1385953 lt!2635696 lt!2635691) (ite c!1385953 lambda!465481 lambda!465482)))))

(assert (= (and d!2304460 c!1385953) b!7506972))

(assert (= (and d!2304460 (not c!1385953)) b!7506973))

(assert (= (or b!7506972 b!7506973) bm!688752))

(assert (= (or b!7506972 b!7506973) bm!688753))

(declare-fun m!8089606 () Bool)

(assert (=> bm!688753 m!8089606))

(declare-fun m!8089608 () Bool)

(assert (=> d!2304460 m!8089608))

(assert (=> d!2304460 m!8089608))

(declare-fun m!8089610 () Bool)

(assert (=> d!2304460 m!8089610))

(declare-fun m!8089612 () Bool)

(assert (=> d!2304460 m!8089612))

(assert (=> d!2304460 m!8089612))

(declare-fun m!8089614 () Bool)

(assert (=> b!7506973 m!8089614))

(declare-fun m!8089616 () Bool)

(assert (=> b!7506972 m!8089616))

(declare-fun m!8089618 () Bool)

(assert (=> bm!688752 m!8089618))

(assert (=> b!7506824 d!2304460))

(declare-fun d!2304498 () Bool)

(assert (=> d!2304498 (= testedSuffix!164 lt!2635539)))

(declare-fun lt!2635699 () Unit!166414)

(declare-fun choose!58145 (List!72531 List!72531 List!72531 List!72531 List!72531) Unit!166414)

(assert (=> d!2304498 (= lt!2635699 (choose!58145 testedP!204 testedSuffix!164 testedP!204 lt!2635539 totalInput!779))))

(assert (=> d!2304498 (isPrefix!6009 testedP!204 totalInput!779)))

(assert (=> d!2304498 (= (lemmaSamePrefixThenSameSuffix!2808 testedP!204 testedSuffix!164 testedP!204 lt!2635539 totalInput!779) lt!2635699)))

(declare-fun bs!1938277 () Bool)

(assert (= bs!1938277 d!2304498))

(declare-fun m!8089622 () Bool)

(assert (=> bs!1938277 m!8089622))

(assert (=> bs!1938277 m!8089428))

(assert (=> b!7506824 d!2304498))

(declare-fun d!2304502 () Bool)

(declare-fun lt!2635702 () List!72531)

(assert (=> d!2304502 (= (++!17344 testedP!204 lt!2635702) totalInput!779)))

(declare-fun e!4476213 () List!72531)

(assert (=> d!2304502 (= lt!2635702 e!4476213)))

(declare-fun c!1385956 () Bool)

(assert (=> d!2304502 (= c!1385956 ((_ is Cons!72407) testedP!204))))

(assert (=> d!2304502 (>= (size!42286 totalInput!779) (size!42286 testedP!204))))

(assert (=> d!2304502 (= (getSuffix!3509 totalInput!779 testedP!204) lt!2635702)))

(declare-fun b!7506978 () Bool)

(assert (=> b!7506978 (= e!4476213 (getSuffix!3509 (tail!14999 totalInput!779) (t!387100 testedP!204)))))

(declare-fun b!7506979 () Bool)

(assert (=> b!7506979 (= e!4476213 totalInput!779)))

(assert (= (and d!2304502 c!1385956) b!7506978))

(assert (= (and d!2304502 (not c!1385956)) b!7506979))

(declare-fun m!8089624 () Bool)

(assert (=> d!2304502 m!8089624))

(assert (=> d!2304502 m!8089416))

(assert (=> d!2304502 m!8089426))

(assert (=> b!7506978 m!8089454))

(assert (=> b!7506978 m!8089454))

(declare-fun m!8089626 () Bool)

(assert (=> b!7506978 m!8089626))

(assert (=> b!7506824 d!2304502))

(declare-fun d!2304504 () Bool)

(assert (=> d!2304504 (= (isEmpty!41314 (_1!37685 lt!2635546)) ((_ is Nil!72407) (_1!37685 lt!2635546)))))

(assert (=> b!7506826 d!2304504))

(declare-fun bm!688776 () Bool)

(declare-fun call!688781 () Unit!166414)

(assert (=> bm!688776 (= call!688781 (lemmaIsPrefixRefl!3848 totalInput!779 totalInput!779))))

(declare-fun b!7507053 () Bool)

(declare-fun e!4476265 () Unit!166414)

(declare-fun Unit!166425 () Unit!166414)

(assert (=> b!7507053 (= e!4476265 Unit!166425)))

(declare-fun lt!2635806 () Unit!166414)

(assert (=> b!7507053 (= lt!2635806 call!688781)))

(declare-fun call!688784 () Bool)

(assert (=> b!7507053 call!688784))

(declare-fun lt!2635811 () Unit!166414)

(assert (=> b!7507053 (= lt!2635811 lt!2635806)))

(declare-fun lt!2635803 () Unit!166414)

(declare-fun call!688788 () Unit!166414)

(assert (=> b!7507053 (= lt!2635803 call!688788)))

(assert (=> b!7507053 (= totalInput!779 lt!2635545)))

(declare-fun lt!2635795 () Unit!166414)

(assert (=> b!7507053 (= lt!2635795 lt!2635803)))

(assert (=> b!7507053 false))

(declare-fun b!7507054 () Bool)

(declare-fun e!4476261 () tuple2!68764)

(declare-fun lt!2635815 () tuple2!68764)

(assert (=> b!7507054 (= e!4476261 lt!2635815)))

(declare-fun b!7507055 () Bool)

(declare-fun c!1385988 () Bool)

(declare-fun call!688787 () Bool)

(assert (=> b!7507055 (= c!1385988 call!688787)))

(declare-fun lt!2635797 () Unit!166414)

(declare-fun lt!2635800 () Unit!166414)

(assert (=> b!7507055 (= lt!2635797 lt!2635800)))

(assert (=> b!7507055 (= totalInput!779 lt!2635545)))

(assert (=> b!7507055 (= lt!2635800 call!688788)))

(declare-fun lt!2635804 () Unit!166414)

(declare-fun lt!2635816 () Unit!166414)

(assert (=> b!7507055 (= lt!2635804 lt!2635816)))

(assert (=> b!7507055 call!688784))

(assert (=> b!7507055 (= lt!2635816 call!688781)))

(declare-fun e!4476263 () tuple2!68764)

(declare-fun e!4476266 () tuple2!68764)

(assert (=> b!7507055 (= e!4476263 e!4476266)))

(declare-fun b!7507057 () Bool)

(declare-fun e!4476268 () tuple2!68764)

(assert (=> b!7507057 (= e!4476268 e!4476263)))

(declare-fun c!1385990 () Bool)

(assert (=> b!7507057 (= c!1385990 (= (+ 1 testedPSize!164) totalInputSize!226))))

(declare-fun bm!688777 () Bool)

(assert (=> bm!688777 (= call!688787 (nullableZipper!3181 (derivationStepZipper!3726 z!3716 lt!2635544)))))

(declare-fun call!688786 () (InoxSet Context!16934))

(declare-fun bm!688778 () Bool)

(declare-fun call!688785 () C!39756)

(assert (=> bm!688778 (= call!688786 (derivationStepZipper!3726 (derivationStepZipper!3726 z!3716 lt!2635544) call!688785))))

(declare-fun b!7507058 () Bool)

(declare-fun e!4476267 () tuple2!68764)

(assert (=> b!7507058 (= e!4476267 e!4476261)))

(declare-fun call!688782 () tuple2!68764)

(assert (=> b!7507058 (= lt!2635815 call!688782)))

(declare-fun c!1385987 () Bool)

(assert (=> b!7507058 (= c!1385987 (isEmpty!41314 (_1!37685 lt!2635815)))))

(declare-fun bm!688779 () Bool)

(assert (=> bm!688779 (= call!688785 (head!15432 lt!2635535))))

(declare-fun b!7507059 () Bool)

(assert (=> b!7507059 (= e!4476267 call!688782)))

(declare-fun b!7507060 () Bool)

(assert (=> b!7507060 (= e!4476266 (tuple2!68765 Nil!72407 totalInput!779))))

(declare-fun b!7507061 () Bool)

(declare-fun c!1385985 () Bool)

(assert (=> b!7507061 (= c!1385985 call!688787)))

(declare-fun lt!2635817 () Unit!166414)

(declare-fun lt!2635809 () Unit!166414)

(assert (=> b!7507061 (= lt!2635817 lt!2635809)))

(declare-fun lt!2635802 () C!39756)

(declare-fun lt!2635812 () List!72531)

(assert (=> b!7507061 (= (++!17344 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407)) lt!2635812) totalInput!779)))

(assert (=> b!7507061 (= lt!2635809 (lemmaMoveElementToOtherListKeepsConcatEq!3157 lt!2635545 lt!2635802 lt!2635812 totalInput!779))))

(assert (=> b!7507061 (= lt!2635812 (tail!14999 lt!2635535))))

(assert (=> b!7507061 (= lt!2635802 (head!15432 lt!2635535))))

(declare-fun lt!2635799 () Unit!166414)

(declare-fun lt!2635796 () Unit!166414)

(assert (=> b!7507061 (= lt!2635799 lt!2635796)))

(assert (=> b!7507061 (isPrefix!6009 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)) totalInput!779)))

(assert (=> b!7507061 (= lt!2635796 (lemmaAddHeadSuffixToPrefixStillPrefix!1126 lt!2635545 totalInput!779))))

(declare-fun lt!2635820 () List!72531)

(assert (=> b!7507061 (= lt!2635820 (++!17344 lt!2635545 (Cons!72407 (head!15432 lt!2635535) Nil!72407)))))

(declare-fun lt!2635814 () Unit!166414)

(assert (=> b!7507061 (= lt!2635814 e!4476265)))

(declare-fun c!1385989 () Bool)

(assert (=> b!7507061 (= c!1385989 (= (size!42286 lt!2635545) (size!42286 totalInput!779)))))

(declare-fun lt!2635813 () Unit!166414)

(declare-fun lt!2635805 () Unit!166414)

(assert (=> b!7507061 (= lt!2635813 lt!2635805)))

(assert (=> b!7507061 (<= (size!42286 lt!2635545) (size!42286 totalInput!779))))

(assert (=> b!7507061 (= lt!2635805 (lemmaIsPrefixThenSmallerEqSize!996 lt!2635545 totalInput!779))))

(assert (=> b!7507061 (= e!4476263 e!4476267)))

(declare-fun call!688783 () List!72531)

(declare-fun bm!688780 () Bool)

(assert (=> bm!688780 (= call!688782 (findLongestMatchInnerZipper!323 call!688786 lt!2635820 (+ 1 testedPSize!164 1) call!688783 totalInput!779 totalInputSize!226))))

(declare-fun b!7507062 () Bool)

(assert (=> b!7507062 (= e!4476261 (tuple2!68765 lt!2635545 lt!2635535))))

(declare-fun b!7507056 () Bool)

(assert (=> b!7507056 (= e!4476268 (tuple2!68765 Nil!72407 totalInput!779))))

(declare-fun d!2304506 () Bool)

(declare-fun e!4476262 () Bool)

(assert (=> d!2304506 e!4476262))

(declare-fun res!3011830 () Bool)

(assert (=> d!2304506 (=> (not res!3011830) (not e!4476262))))

(declare-fun lt!2635801 () tuple2!68764)

(assert (=> d!2304506 (= res!3011830 (= (++!17344 (_1!37685 lt!2635801) (_2!37685 lt!2635801)) totalInput!779))))

(assert (=> d!2304506 (= lt!2635801 e!4476268)))

(declare-fun c!1385986 () Bool)

(assert (=> d!2304506 (= c!1385986 (lostCauseZipper!1403 (derivationStepZipper!3726 z!3716 lt!2635544)))))

(declare-fun lt!2635819 () Unit!166414)

(declare-fun Unit!166426 () Unit!166414)

(assert (=> d!2304506 (= lt!2635819 Unit!166426)))

(assert (=> d!2304506 (= (getSuffix!3509 totalInput!779 lt!2635545) lt!2635535)))

(declare-fun lt!2635808 () Unit!166414)

(declare-fun lt!2635810 () Unit!166414)

(assert (=> d!2304506 (= lt!2635808 lt!2635810)))

(declare-fun lt!2635818 () List!72531)

(assert (=> d!2304506 (= lt!2635535 lt!2635818)))

(assert (=> d!2304506 (= lt!2635810 (lemmaSamePrefixThenSameSuffix!2808 lt!2635545 lt!2635535 lt!2635545 lt!2635818 totalInput!779))))

(assert (=> d!2304506 (= lt!2635818 (getSuffix!3509 totalInput!779 lt!2635545))))

(declare-fun lt!2635798 () Unit!166414)

(declare-fun lt!2635807 () Unit!166414)

(assert (=> d!2304506 (= lt!2635798 lt!2635807)))

(assert (=> d!2304506 (isPrefix!6009 lt!2635545 (++!17344 lt!2635545 lt!2635535))))

(assert (=> d!2304506 (= lt!2635807 (lemmaConcatTwoListThenFirstIsPrefix!3722 lt!2635545 lt!2635535))))

(assert (=> d!2304506 (= (++!17344 lt!2635545 lt!2635535) totalInput!779)))

(assert (=> d!2304506 (= (findLongestMatchInnerZipper!323 (derivationStepZipper!3726 z!3716 lt!2635544) lt!2635545 (+ 1 testedPSize!164) lt!2635535 totalInput!779 totalInputSize!226) lt!2635801)))

(declare-fun b!7507063 () Bool)

(assert (=> b!7507063 (= e!4476266 (tuple2!68765 lt!2635545 Nil!72407))))

(declare-fun bm!688781 () Bool)

(assert (=> bm!688781 (= call!688784 (isPrefix!6009 totalInput!779 totalInput!779))))

(declare-fun bm!688782 () Bool)

(assert (=> bm!688782 (= call!688788 (lemmaIsPrefixSameLengthThenSameList!1498 totalInput!779 lt!2635545 totalInput!779))))

(declare-fun bm!688783 () Bool)

(assert (=> bm!688783 (= call!688783 (tail!14999 lt!2635535))))

(declare-fun b!7507064 () Bool)

(declare-fun Unit!166427 () Unit!166414)

(assert (=> b!7507064 (= e!4476265 Unit!166427)))

(declare-fun b!7507065 () Bool)

(declare-fun e!4476264 () Bool)

(assert (=> b!7507065 (= e!4476264 (>= (size!42286 (_1!37685 lt!2635801)) (size!42286 lt!2635545)))))

(declare-fun b!7507066 () Bool)

(assert (=> b!7507066 (= e!4476262 e!4476264)))

(declare-fun res!3011829 () Bool)

(assert (=> b!7507066 (=> res!3011829 e!4476264)))

(assert (=> b!7507066 (= res!3011829 (isEmpty!41314 (_1!37685 lt!2635801)))))

(assert (= (and d!2304506 c!1385986) b!7507056))

(assert (= (and d!2304506 (not c!1385986)) b!7507057))

(assert (= (and b!7507057 c!1385990) b!7507055))

(assert (= (and b!7507057 (not c!1385990)) b!7507061))

(assert (= (and b!7507055 c!1385988) b!7507063))

(assert (= (and b!7507055 (not c!1385988)) b!7507060))

(assert (= (and b!7507061 c!1385989) b!7507053))

(assert (= (and b!7507061 (not c!1385989)) b!7507064))

(assert (= (and b!7507061 c!1385985) b!7507058))

(assert (= (and b!7507061 (not c!1385985)) b!7507059))

(assert (= (and b!7507058 c!1385987) b!7507062))

(assert (= (and b!7507058 (not c!1385987)) b!7507054))

(assert (= (or b!7507058 b!7507059) bm!688779))

(assert (= (or b!7507058 b!7507059) bm!688783))

(assert (= (or b!7507058 b!7507059) bm!688778))

(assert (= (or b!7507058 b!7507059) bm!688780))

(assert (= (or b!7507055 b!7507053) bm!688781))

(assert (= (or b!7507055 b!7507053) bm!688782))

(assert (= (or b!7507055 b!7507061) bm!688777))

(assert (= (or b!7507055 b!7507053) bm!688776))

(assert (= (and d!2304506 res!3011830) b!7507066))

(assert (= (and b!7507066 (not res!3011829)) b!7507065))

(declare-fun m!8089692 () Bool)

(assert (=> b!7507065 m!8089692))

(declare-fun m!8089694 () Bool)

(assert (=> b!7507065 m!8089694))

(declare-fun m!8089696 () Bool)

(assert (=> bm!688779 m!8089696))

(declare-fun m!8089698 () Bool)

(assert (=> bm!688780 m!8089698))

(assert (=> bm!688778 m!8089422))

(declare-fun m!8089700 () Bool)

(assert (=> bm!688778 m!8089700))

(assert (=> b!7507061 m!8089694))

(declare-fun m!8089702 () Bool)

(assert (=> b!7507061 m!8089702))

(declare-fun m!8089704 () Bool)

(assert (=> b!7507061 m!8089704))

(declare-fun m!8089706 () Bool)

(assert (=> b!7507061 m!8089706))

(declare-fun m!8089708 () Bool)

(assert (=> b!7507061 m!8089708))

(declare-fun m!8089710 () Bool)

(assert (=> b!7507061 m!8089710))

(assert (=> b!7507061 m!8089702))

(declare-fun m!8089712 () Bool)

(assert (=> b!7507061 m!8089712))

(declare-fun m!8089714 () Bool)

(assert (=> b!7507061 m!8089714))

(declare-fun m!8089716 () Bool)

(assert (=> b!7507061 m!8089716))

(declare-fun m!8089718 () Bool)

(assert (=> b!7507061 m!8089718))

(declare-fun m!8089720 () Bool)

(assert (=> b!7507061 m!8089720))

(assert (=> b!7507061 m!8089706))

(assert (=> b!7507061 m!8089416))

(assert (=> b!7507061 m!8089696))

(declare-fun m!8089722 () Bool)

(assert (=> b!7507061 m!8089722))

(assert (=> b!7507061 m!8089716))

(declare-fun m!8089724 () Bool)

(assert (=> b!7507058 m!8089724))

(declare-fun m!8089726 () Bool)

(assert (=> b!7507066 m!8089726))

(assert (=> bm!688781 m!8089404))

(assert (=> bm!688777 m!8089422))

(declare-fun m!8089728 () Bool)

(assert (=> bm!688777 m!8089728))

(declare-fun m!8089730 () Bool)

(assert (=> d!2304506 m!8089730))

(assert (=> d!2304506 m!8089422))

(declare-fun m!8089732 () Bool)

(assert (=> d!2304506 m!8089732))

(assert (=> d!2304506 m!8089706))

(declare-fun m!8089734 () Bool)

(assert (=> d!2304506 m!8089734))

(declare-fun m!8089736 () Bool)

(assert (=> d!2304506 m!8089736))

(assert (=> d!2304506 m!8089382))

(declare-fun m!8089738 () Bool)

(assert (=> d!2304506 m!8089738))

(assert (=> d!2304506 m!8089382))

(declare-fun m!8089740 () Bool)

(assert (=> bm!688782 m!8089740))

(assert (=> bm!688776 m!8089402))

(assert (=> bm!688783 m!8089714))

(assert (=> b!7506826 d!2304506))

(declare-fun d!2304524 () Bool)

(assert (=> d!2304524 true))

(declare-fun lambda!465503 () Int)

(declare-fun flatMap!3261 ((InoxSet Context!16934) Int) (InoxSet Context!16934))

(assert (=> d!2304524 (= (derivationStepZipper!3726 z!3716 lt!2635544) (flatMap!3261 z!3716 lambda!465503))))

(declare-fun bs!1938287 () Bool)

(assert (= bs!1938287 d!2304524))

(declare-fun m!8089742 () Bool)

(assert (=> bs!1938287 m!8089742))

(assert (=> b!7506826 d!2304524))

(declare-fun d!2304526 () Bool)

(declare-fun lambda!465506 () Int)

(declare-fun forall!18296 (List!72532 Int) Bool)

(assert (=> d!2304526 (= (inv!92517 setElem!57044) (forall!18296 (exprs!8967 setElem!57044) lambda!465506))))

(declare-fun bs!1938288 () Bool)

(assert (= bs!1938288 d!2304526))

(declare-fun m!8089744 () Bool)

(assert (=> bs!1938288 m!8089744))

(assert (=> setNonEmpty!57044 d!2304526))

(declare-fun d!2304528 () Bool)

(assert (=> d!2304528 (= (++!17344 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)) lt!2635535) totalInput!779)))

(declare-fun lt!2635823 () Unit!166414)

(declare-fun choose!58148 (List!72531 C!39756 List!72531 List!72531) Unit!166414)

(assert (=> d!2304528 (= lt!2635823 (choose!58148 testedP!204 lt!2635544 lt!2635535 totalInput!779))))

(assert (=> d!2304528 (= (++!17344 testedP!204 (Cons!72407 lt!2635544 lt!2635535)) totalInput!779)))

(assert (=> d!2304528 (= (lemmaMoveElementToOtherListKeepsConcatEq!3157 testedP!204 lt!2635544 lt!2635535 totalInput!779) lt!2635823)))

(declare-fun bs!1938289 () Bool)

(assert (= bs!1938289 d!2304528))

(assert (=> bs!1938289 m!8089396))

(assert (=> bs!1938289 m!8089396))

(declare-fun m!8089746 () Bool)

(assert (=> bs!1938289 m!8089746))

(declare-fun m!8089748 () Bool)

(assert (=> bs!1938289 m!8089748))

(declare-fun m!8089750 () Bool)

(assert (=> bs!1938289 m!8089750))

(assert (=> b!7506827 d!2304528))

(declare-fun bs!1938290 () Bool)

(declare-fun d!2304530 () Bool)

(assert (= bs!1938290 (and d!2304530 d!2304460)))

(declare-fun lambda!465509 () Int)

(assert (=> bs!1938290 (not (= lambda!465509 lambda!465480))))

(declare-fun bs!1938291 () Bool)

(assert (= bs!1938291 (and d!2304530 b!7506972)))

(assert (=> bs!1938291 (not (= lambda!465509 lambda!465481))))

(declare-fun bs!1938292 () Bool)

(assert (= bs!1938292 (and d!2304530 b!7506973)))

(assert (=> bs!1938292 (not (= lambda!465509 lambda!465482))))

(declare-fun exists!4868 ((InoxSet Context!16934) Int) Bool)

(assert (=> d!2304530 (= (nullableZipper!3181 z!3716) (exists!4868 z!3716 lambda!465509))))

(declare-fun bs!1938293 () Bool)

(assert (= bs!1938293 d!2304530))

(declare-fun m!8089752 () Bool)

(assert (=> bs!1938293 m!8089752))

(assert (=> b!7506827 d!2304530))

(declare-fun d!2304532 () Bool)

(assert (=> d!2304532 (= (head!15432 testedSuffix!164) (h!78855 testedSuffix!164))))

(assert (=> b!7506827 d!2304532))

(declare-fun d!2304534 () Bool)

(declare-fun e!4476270 () Bool)

(assert (=> d!2304534 e!4476270))

(declare-fun res!3011834 () Bool)

(assert (=> d!2304534 (=> res!3011834 e!4476270)))

(declare-fun lt!2635824 () Bool)

(assert (=> d!2304534 (= res!3011834 (not lt!2635824))))

(declare-fun e!4476271 () Bool)

(assert (=> d!2304534 (= lt!2635824 e!4476271)))

(declare-fun res!3011831 () Bool)

(assert (=> d!2304534 (=> res!3011831 e!4476271)))

(assert (=> d!2304534 (= res!3011831 ((_ is Nil!72407) (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(assert (=> d!2304534 (= (isPrefix!6009 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) totalInput!779) lt!2635824)))

(declare-fun b!7507069 () Bool)

(declare-fun e!4476269 () Bool)

(assert (=> b!7507069 (= e!4476271 e!4476269)))

(declare-fun res!3011832 () Bool)

(assert (=> b!7507069 (=> (not res!3011832) (not e!4476269))))

(assert (=> b!7507069 (= res!3011832 (not ((_ is Nil!72407) totalInput!779)))))

(declare-fun b!7507070 () Bool)

(declare-fun res!3011833 () Bool)

(assert (=> b!7507070 (=> (not res!3011833) (not e!4476269))))

(assert (=> b!7507070 (= res!3011833 (= (head!15432 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) (head!15432 totalInput!779)))))

(declare-fun b!7507072 () Bool)

(assert (=> b!7507072 (= e!4476270 (>= (size!42286 totalInput!779) (size!42286 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(declare-fun b!7507071 () Bool)

(assert (=> b!7507071 (= e!4476269 (isPrefix!6009 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) (tail!14999 totalInput!779)))))

(assert (= (and d!2304534 (not res!3011831)) b!7507069))

(assert (= (and b!7507069 res!3011832) b!7507070))

(assert (= (and b!7507070 res!3011833) b!7507071))

(assert (= (and d!2304534 (not res!3011834)) b!7507072))

(assert (=> b!7507070 m!8089392))

(declare-fun m!8089754 () Bool)

(assert (=> b!7507070 m!8089754))

(assert (=> b!7507070 m!8089450))

(assert (=> b!7507072 m!8089416))

(assert (=> b!7507072 m!8089392))

(declare-fun m!8089756 () Bool)

(assert (=> b!7507072 m!8089756))

(assert (=> b!7507071 m!8089392))

(declare-fun m!8089758 () Bool)

(assert (=> b!7507071 m!8089758))

(assert (=> b!7507071 m!8089454))

(assert (=> b!7507071 m!8089758))

(assert (=> b!7507071 m!8089454))

(declare-fun m!8089760 () Bool)

(assert (=> b!7507071 m!8089760))

(assert (=> b!7506827 d!2304534))

(declare-fun b!7507074 () Bool)

(declare-fun e!4476272 () List!72531)

(assert (=> b!7507074 (= e!4476272 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(declare-fun b!7507073 () Bool)

(assert (=> b!7507073 (= e!4476272 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))

(declare-fun b!7507075 () Bool)

(declare-fun res!3011836 () Bool)

(declare-fun e!4476273 () Bool)

(assert (=> b!7507075 (=> (not res!3011836) (not e!4476273))))

(declare-fun lt!2635825 () List!72531)

(assert (=> b!7507075 (= res!3011836 (= (size!42286 lt!2635825) (+ (size!42286 testedP!204) (size!42286 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(declare-fun b!7507076 () Bool)

(assert (=> b!7507076 (= e!4476273 (or (not (= (Cons!72407 (head!15432 lt!2635539) Nil!72407) Nil!72407)) (= lt!2635825 testedP!204)))))

(declare-fun d!2304536 () Bool)

(assert (=> d!2304536 e!4476273))

(declare-fun res!3011835 () Bool)

(assert (=> d!2304536 (=> (not res!3011835) (not e!4476273))))

(assert (=> d!2304536 (= res!3011835 (= (content!15308 lt!2635825) ((_ map or) (content!15308 testedP!204) (content!15308 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(assert (=> d!2304536 (= lt!2635825 e!4476272)))

(declare-fun c!1385995 () Bool)

(assert (=> d!2304536 (= c!1385995 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304536 (= (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) lt!2635825)))

(assert (= (and d!2304536 c!1385995) b!7507073))

(assert (= (and d!2304536 (not c!1385995)) b!7507074))

(assert (= (and d!2304536 res!3011835) b!7507075))

(assert (= (and b!7507075 res!3011836) b!7507076))

(declare-fun m!8089762 () Bool)

(assert (=> b!7507074 m!8089762))

(declare-fun m!8089764 () Bool)

(assert (=> b!7507075 m!8089764))

(assert (=> b!7507075 m!8089426))

(declare-fun m!8089766 () Bool)

(assert (=> b!7507075 m!8089766))

(declare-fun m!8089768 () Bool)

(assert (=> d!2304536 m!8089768))

(assert (=> d!2304536 m!8089444))

(declare-fun m!8089770 () Bool)

(assert (=> d!2304536 m!8089770))

(assert (=> b!7506827 d!2304536))

(declare-fun d!2304538 () Bool)

(assert (=> d!2304538 (isPrefix!6009 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)) totalInput!779)))

(declare-fun lt!2635828 () Unit!166414)

(declare-fun choose!58149 (List!72531 List!72531) Unit!166414)

(assert (=> d!2304538 (= lt!2635828 (choose!58149 testedP!204 totalInput!779))))

(assert (=> d!2304538 (isPrefix!6009 testedP!204 totalInput!779)))

(assert (=> d!2304538 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1126 testedP!204 totalInput!779) lt!2635828)))

(declare-fun bs!1938294 () Bool)

(assert (= bs!1938294 d!2304538))

(assert (=> bs!1938294 m!8089414))

(assert (=> bs!1938294 m!8089414))

(declare-fun m!8089772 () Bool)

(assert (=> bs!1938294 m!8089772))

(assert (=> bs!1938294 m!8089428))

(declare-fun m!8089774 () Bool)

(assert (=> bs!1938294 m!8089774))

(declare-fun m!8089776 () Bool)

(assert (=> bs!1938294 m!8089776))

(assert (=> bs!1938294 m!8089776))

(declare-fun m!8089778 () Bool)

(assert (=> bs!1938294 m!8089778))

(assert (=> b!7506827 d!2304538))

(declare-fun b!7507078 () Bool)

(declare-fun e!4476274 () List!72531)

(assert (=> b!7507078 (= e!4476274 (Cons!72407 (h!78855 lt!2635545) (++!17344 (t!387100 lt!2635545) lt!2635535)))))

(declare-fun b!7507077 () Bool)

(assert (=> b!7507077 (= e!4476274 lt!2635535)))

(declare-fun b!7507079 () Bool)

(declare-fun res!3011838 () Bool)

(declare-fun e!4476275 () Bool)

(assert (=> b!7507079 (=> (not res!3011838) (not e!4476275))))

(declare-fun lt!2635829 () List!72531)

(assert (=> b!7507079 (= res!3011838 (= (size!42286 lt!2635829) (+ (size!42286 lt!2635545) (size!42286 lt!2635535))))))

(declare-fun b!7507080 () Bool)

(assert (=> b!7507080 (= e!4476275 (or (not (= lt!2635535 Nil!72407)) (= lt!2635829 lt!2635545)))))

(declare-fun d!2304540 () Bool)

(assert (=> d!2304540 e!4476275))

(declare-fun res!3011837 () Bool)

(assert (=> d!2304540 (=> (not res!3011837) (not e!4476275))))

(assert (=> d!2304540 (= res!3011837 (= (content!15308 lt!2635829) ((_ map or) (content!15308 lt!2635545) (content!15308 lt!2635535))))))

(assert (=> d!2304540 (= lt!2635829 e!4476274)))

(declare-fun c!1385996 () Bool)

(assert (=> d!2304540 (= c!1385996 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304540 (= (++!17344 lt!2635545 lt!2635535) lt!2635829)))

(assert (= (and d!2304540 c!1385996) b!7507077))

(assert (= (and d!2304540 (not c!1385996)) b!7507078))

(assert (= (and d!2304540 res!3011837) b!7507079))

(assert (= (and b!7507079 res!3011838) b!7507080))

(declare-fun m!8089780 () Bool)

(assert (=> b!7507078 m!8089780))

(declare-fun m!8089782 () Bool)

(assert (=> b!7507079 m!8089782))

(assert (=> b!7507079 m!8089694))

(declare-fun m!8089784 () Bool)

(assert (=> b!7507079 m!8089784))

(declare-fun m!8089786 () Bool)

(assert (=> d!2304540 m!8089786))

(declare-fun m!8089788 () Bool)

(assert (=> d!2304540 m!8089788))

(declare-fun m!8089790 () Bool)

(assert (=> d!2304540 m!8089790))

(assert (=> b!7506827 d!2304540))

(declare-fun d!2304542 () Bool)

(assert (=> d!2304542 (= (tail!14999 testedSuffix!164) (t!387100 testedSuffix!164))))

(assert (=> b!7506827 d!2304542))

(declare-fun b!7507082 () Bool)

(declare-fun e!4476276 () List!72531)

(assert (=> b!7507082 (= e!4476276 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) (Cons!72407 lt!2635544 Nil!72407))))))

(declare-fun b!7507081 () Bool)

(assert (=> b!7507081 (= e!4476276 (Cons!72407 lt!2635544 Nil!72407))))

(declare-fun b!7507083 () Bool)

(declare-fun res!3011840 () Bool)

(declare-fun e!4476277 () Bool)

(assert (=> b!7507083 (=> (not res!3011840) (not e!4476277))))

(declare-fun lt!2635830 () List!72531)

(assert (=> b!7507083 (= res!3011840 (= (size!42286 lt!2635830) (+ (size!42286 testedP!204) (size!42286 (Cons!72407 lt!2635544 Nil!72407)))))))

(declare-fun b!7507084 () Bool)

(assert (=> b!7507084 (= e!4476277 (or (not (= (Cons!72407 lt!2635544 Nil!72407) Nil!72407)) (= lt!2635830 testedP!204)))))

(declare-fun d!2304544 () Bool)

(assert (=> d!2304544 e!4476277))

(declare-fun res!3011839 () Bool)

(assert (=> d!2304544 (=> (not res!3011839) (not e!4476277))))

(assert (=> d!2304544 (= res!3011839 (= (content!15308 lt!2635830) ((_ map or) (content!15308 testedP!204) (content!15308 (Cons!72407 lt!2635544 Nil!72407)))))))

(assert (=> d!2304544 (= lt!2635830 e!4476276)))

(declare-fun c!1385997 () Bool)

(assert (=> d!2304544 (= c!1385997 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304544 (= (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)) lt!2635830)))

(assert (= (and d!2304544 c!1385997) b!7507081))

(assert (= (and d!2304544 (not c!1385997)) b!7507082))

(assert (= (and d!2304544 res!3011839) b!7507083))

(assert (= (and b!7507083 res!3011840) b!7507084))

(declare-fun m!8089792 () Bool)

(assert (=> b!7507082 m!8089792))

(declare-fun m!8089794 () Bool)

(assert (=> b!7507083 m!8089794))

(assert (=> b!7507083 m!8089426))

(declare-fun m!8089796 () Bool)

(assert (=> b!7507083 m!8089796))

(declare-fun m!8089798 () Bool)

(assert (=> d!2304544 m!8089798))

(assert (=> d!2304544 m!8089444))

(declare-fun m!8089800 () Bool)

(assert (=> d!2304544 m!8089800))

(assert (=> b!7506827 d!2304544))

(declare-fun d!2304546 () Bool)

(assert (=> d!2304546 (= (head!15432 lt!2635539) (h!78855 lt!2635539))))

(assert (=> b!7506827 d!2304546))

(declare-fun d!2304548 () Bool)

(assert (=> d!2304548 (<= (size!42286 testedP!204) (size!42286 totalInput!779))))

(declare-fun lt!2635833 () Unit!166414)

(declare-fun choose!58150 (List!72531 List!72531) Unit!166414)

(assert (=> d!2304548 (= lt!2635833 (choose!58150 testedP!204 totalInput!779))))

(assert (=> d!2304548 (isPrefix!6009 testedP!204 totalInput!779)))

(assert (=> d!2304548 (= (lemmaIsPrefixThenSmallerEqSize!996 testedP!204 totalInput!779) lt!2635833)))

(declare-fun bs!1938295 () Bool)

(assert (= bs!1938295 d!2304548))

(assert (=> bs!1938295 m!8089426))

(assert (=> bs!1938295 m!8089416))

(declare-fun m!8089802 () Bool)

(assert (=> bs!1938295 m!8089802))

(assert (=> bs!1938295 m!8089428))

(assert (=> b!7506829 d!2304548))

(declare-fun b!7507086 () Bool)

(declare-fun e!4476278 () List!72531)

(assert (=> b!7507086 (= e!4476278 (Cons!72407 (h!78855 (_1!37685 lt!2635546)) (++!17344 (t!387100 (_1!37685 lt!2635546)) (_2!37685 lt!2635546))))))

(declare-fun b!7507085 () Bool)

(assert (=> b!7507085 (= e!4476278 (_2!37685 lt!2635546))))

(declare-fun b!7507087 () Bool)

(declare-fun res!3011842 () Bool)

(declare-fun e!4476279 () Bool)

(assert (=> b!7507087 (=> (not res!3011842) (not e!4476279))))

(declare-fun lt!2635834 () List!72531)

(assert (=> b!7507087 (= res!3011842 (= (size!42286 lt!2635834) (+ (size!42286 (_1!37685 lt!2635546)) (size!42286 (_2!37685 lt!2635546)))))))

(declare-fun b!7507088 () Bool)

(assert (=> b!7507088 (= e!4476279 (or (not (= (_2!37685 lt!2635546) Nil!72407)) (= lt!2635834 (_1!37685 lt!2635546))))))

(declare-fun d!2304550 () Bool)

(assert (=> d!2304550 e!4476279))

(declare-fun res!3011841 () Bool)

(assert (=> d!2304550 (=> (not res!3011841) (not e!4476279))))

(assert (=> d!2304550 (= res!3011841 (= (content!15308 lt!2635834) ((_ map or) (content!15308 (_1!37685 lt!2635546)) (content!15308 (_2!37685 lt!2635546)))))))

(assert (=> d!2304550 (= lt!2635834 e!4476278)))

(declare-fun c!1385998 () Bool)

(assert (=> d!2304550 (= c!1385998 ((_ is Nil!72407) (_1!37685 lt!2635546)))))

(assert (=> d!2304550 (= (++!17344 (_1!37685 lt!2635546) (_2!37685 lt!2635546)) lt!2635834)))

(assert (= (and d!2304550 c!1385998) b!7507085))

(assert (= (and d!2304550 (not c!1385998)) b!7507086))

(assert (= (and d!2304550 res!3011841) b!7507087))

(assert (= (and b!7507087 res!3011842) b!7507088))

(declare-fun m!8089804 () Bool)

(assert (=> b!7507086 m!8089804))

(declare-fun m!8089806 () Bool)

(assert (=> b!7507087 m!8089806))

(assert (=> b!7507087 m!8089408))

(declare-fun m!8089808 () Bool)

(assert (=> b!7507087 m!8089808))

(declare-fun m!8089810 () Bool)

(assert (=> d!2304550 m!8089810))

(declare-fun m!8089812 () Bool)

(assert (=> d!2304550 m!8089812))

(declare-fun m!8089814 () Bool)

(assert (=> d!2304550 m!8089814))

(assert (=> b!7506821 d!2304550))

(declare-fun b!7507093 () Bool)

(declare-fun e!4476282 () Bool)

(declare-fun tp!2179073 () Bool)

(assert (=> b!7507093 (= e!4476282 (and tp_is_empty!49771 tp!2179073))))

(assert (=> b!7506833 (= tp!2179050 e!4476282)))

(assert (= (and b!7506833 ((_ is Cons!72407) (t!387100 testedP!204))) b!7507093))

(declare-fun b!7507094 () Bool)

(declare-fun e!4476283 () Bool)

(declare-fun tp!2179074 () Bool)

(assert (=> b!7507094 (= e!4476283 (and tp_is_empty!49771 tp!2179074))))

(assert (=> b!7506835 (= tp!2179051 e!4476283)))

(assert (= (and b!7506835 ((_ is Cons!72407) (t!387100 testedSuffix!164))) b!7507094))

(declare-fun b!7507099 () Bool)

(declare-fun e!4476286 () Bool)

(declare-fun tp!2179079 () Bool)

(declare-fun tp!2179080 () Bool)

(assert (=> b!7507099 (= e!4476286 (and tp!2179079 tp!2179080))))

(assert (=> b!7506831 (= tp!2179052 e!4476286)))

(assert (= (and b!7506831 ((_ is Cons!72408) (exprs!8967 setElem!57044))) b!7507099))

(declare-fun b!7507100 () Bool)

(declare-fun e!4476287 () Bool)

(declare-fun tp!2179081 () Bool)

(assert (=> b!7507100 (= e!4476287 (and tp_is_empty!49771 tp!2179081))))

(assert (=> b!7506820 (= tp!2179053 e!4476287)))

(assert (= (and b!7506820 ((_ is Cons!72407) (t!387100 totalInput!779))) b!7507100))

(declare-fun condSetEmpty!57050 () Bool)

(assert (=> setNonEmpty!57044 (= condSetEmpty!57050 (= setRest!57044 ((as const (Array Context!16934 Bool)) false)))))

(declare-fun setRes!57050 () Bool)

(assert (=> setNonEmpty!57044 (= tp!2179049 setRes!57050)))

(declare-fun setIsEmpty!57050 () Bool)

(assert (=> setIsEmpty!57050 setRes!57050))

(declare-fun e!4476290 () Bool)

(declare-fun setElem!57050 () Context!16934)

(declare-fun setNonEmpty!57050 () Bool)

(declare-fun tp!2179086 () Bool)

(assert (=> setNonEmpty!57050 (= setRes!57050 (and tp!2179086 (inv!92517 setElem!57050) e!4476290))))

(declare-fun setRest!57050 () (InoxSet Context!16934))

(assert (=> setNonEmpty!57050 (= setRest!57044 ((_ map or) (store ((as const (Array Context!16934 Bool)) false) setElem!57050 true) setRest!57050))))

(declare-fun b!7507105 () Bool)

(declare-fun tp!2179087 () Bool)

(assert (=> b!7507105 (= e!4476290 tp!2179087)))

(assert (= (and setNonEmpty!57044 condSetEmpty!57050) setIsEmpty!57050))

(assert (= (and setNonEmpty!57044 (not condSetEmpty!57050)) setNonEmpty!57050))

(assert (= setNonEmpty!57050 b!7507105))

(declare-fun m!8089816 () Bool)

(assert (=> setNonEmpty!57050 m!8089816))

(check-sat (not b!7507061) (not b!7507099) (not b!7507094) (not b!7507093) (not bm!688776) (not b!7506973) (not b!7506875) (not bm!688783) (not bm!688778) (not b!7506869) (not d!2304550) (not d!2304506) (not b!7506863) (not b!7507078) (not b!7507100) (not b!7507070) (not d!2304460) (not b!7507065) (not d!2304538) (not b!7507105) (not b!7507071) (not b!7507058) (not bm!688782) (not b!7506868) (not b!7506841) (not bm!688753) (not b!7507075) (not b!7507072) (not b!7506876) (not d!2304528) (not b!7506873) (not b!7506978) (not d!2304548) (not b!7507066) (not b!7506877) (not b!7507082) (not bm!688777) (not b!7506867) (not bm!688780) (not bm!688781) (not b!7506851) tp_is_empty!49771 (not b!7506871) (not d!2304502) (not d!2304448) (not setNonEmpty!57050) (not b!7506972) (not d!2304544) (not b!7506852) (not b!7507083) (not b!7507086) (not d!2304540) (not bm!688779) (not d!2304442) (not d!2304458) (not d!2304526) (not b!7506865) (not d!2304498) (not b!7507074) (not bm!688752) (not d!2304536) (not d!2304524) (not d!2304530) (not d!2304454) (not b!7507087) (not b!7507079) (not b!7506864))
(check-sat)
(get-model)

(declare-fun d!2304638 () Bool)

(assert (=> d!2304638 (= (head!15432 lt!2635535) (h!78855 lt!2635535))))

(assert (=> bm!688779 d!2304638))

(declare-fun d!2304642 () Bool)

(declare-fun lt!2635863 () Int)

(assert (=> d!2304642 (>= lt!2635863 0)))

(declare-fun e!4476334 () Int)

(assert (=> d!2304642 (= lt!2635863 e!4476334)))

(declare-fun c!1386033 () Bool)

(assert (=> d!2304642 (= c!1386033 ((_ is Nil!72407) lt!2635552))))

(assert (=> d!2304642 (= (size!42286 lt!2635552) lt!2635863)))

(declare-fun b!7507186 () Bool)

(assert (=> b!7507186 (= e!4476334 0)))

(declare-fun b!7507187 () Bool)

(assert (=> b!7507187 (= e!4476334 (+ 1 (size!42286 (t!387100 lt!2635552))))))

(assert (= (and d!2304642 c!1386033) b!7507186))

(assert (= (and d!2304642 (not c!1386033)) b!7507187))

(declare-fun m!8089986 () Bool)

(assert (=> b!7507187 m!8089986))

(assert (=> b!7506852 d!2304642))

(assert (=> b!7506852 d!2304438))

(declare-fun d!2304648 () Bool)

(declare-fun lt!2635864 () Int)

(assert (=> d!2304648 (>= lt!2635864 0)))

(declare-fun e!4476337 () Int)

(assert (=> d!2304648 (= lt!2635864 e!4476337)))

(declare-fun c!1386036 () Bool)

(assert (=> d!2304648 (= c!1386036 ((_ is Nil!72407) testedSuffix!164))))

(assert (=> d!2304648 (= (size!42286 testedSuffix!164) lt!2635864)))

(declare-fun b!7507192 () Bool)

(assert (=> b!7507192 (= e!4476337 0)))

(declare-fun b!7507193 () Bool)

(assert (=> b!7507193 (= e!4476337 (+ 1 (size!42286 (t!387100 testedSuffix!164))))))

(assert (= (and d!2304648 c!1386036) b!7507192))

(assert (= (and d!2304648 (not c!1386036)) b!7507193))

(declare-fun m!8089992 () Bool)

(assert (=> b!7507193 m!8089992))

(assert (=> b!7506852 d!2304648))

(declare-fun d!2304652 () Bool)

(assert (=> d!2304652 (= totalInput!779 testedP!204)))

(assert (=> d!2304652 true))

(declare-fun _$60!1282 () Unit!166414)

(assert (=> d!2304652 (= (choose!58144 totalInput!779 testedP!204 totalInput!779) _$60!1282)))

(assert (=> d!2304458 d!2304652))

(assert (=> d!2304458 d!2304456))

(declare-fun d!2304658 () Bool)

(declare-fun choose!58151 ((InoxSet Context!16934) Int) (InoxSet Context!16934))

(assert (=> d!2304658 (= (flatMap!3261 z!3716 lambda!465503) (choose!58151 z!3716 lambda!465503))))

(declare-fun bs!1938309 () Bool)

(assert (= bs!1938309 d!2304658))

(declare-fun m!8090008 () Bool)

(assert (=> bs!1938309 m!8090008))

(assert (=> d!2304524 d!2304658))

(assert (=> d!2304538 d!2304444))

(declare-fun d!2304662 () Bool)

(declare-fun e!4476341 () Bool)

(assert (=> d!2304662 e!4476341))

(declare-fun res!3011872 () Bool)

(assert (=> d!2304662 (=> res!3011872 e!4476341)))

(declare-fun lt!2635867 () Bool)

(assert (=> d!2304662 (= res!3011872 (not lt!2635867))))

(declare-fun e!4476342 () Bool)

(assert (=> d!2304662 (= lt!2635867 e!4476342)))

(declare-fun res!3011869 () Bool)

(assert (=> d!2304662 (=> res!3011869 e!4476342)))

(assert (=> d!2304662 (= res!3011869 ((_ is Nil!72407) (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407))))))

(assert (=> d!2304662 (= (isPrefix!6009 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)) totalInput!779) lt!2635867)))

(declare-fun b!7507198 () Bool)

(declare-fun e!4476340 () Bool)

(assert (=> b!7507198 (= e!4476342 e!4476340)))

(declare-fun res!3011870 () Bool)

(assert (=> b!7507198 (=> (not res!3011870) (not e!4476340))))

(assert (=> b!7507198 (= res!3011870 (not ((_ is Nil!72407) totalInput!779)))))

(declare-fun b!7507199 () Bool)

(declare-fun res!3011871 () Bool)

(assert (=> b!7507199 (=> (not res!3011871) (not e!4476340))))

(assert (=> b!7507199 (= res!3011871 (= (head!15432 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407))) (head!15432 totalInput!779)))))

(declare-fun b!7507201 () Bool)

(assert (=> b!7507201 (= e!4476341 (>= (size!42286 totalInput!779) (size!42286 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)))))))

(declare-fun b!7507200 () Bool)

(assert (=> b!7507200 (= e!4476340 (isPrefix!6009 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407))) (tail!14999 totalInput!779)))))

(assert (= (and d!2304662 (not res!3011869)) b!7507198))

(assert (= (and b!7507198 res!3011870) b!7507199))

(assert (= (and b!7507199 res!3011871) b!7507200))

(assert (= (and d!2304662 (not res!3011872)) b!7507201))

(assert (=> b!7507199 m!8089776))

(declare-fun m!8090010 () Bool)

(assert (=> b!7507199 m!8090010))

(assert (=> b!7507199 m!8089450))

(assert (=> b!7507201 m!8089416))

(assert (=> b!7507201 m!8089776))

(declare-fun m!8090012 () Bool)

(assert (=> b!7507201 m!8090012))

(assert (=> b!7507200 m!8089776))

(declare-fun m!8090014 () Bool)

(assert (=> b!7507200 m!8090014))

(assert (=> b!7507200 m!8089454))

(assert (=> b!7507200 m!8090014))

(assert (=> b!7507200 m!8089454))

(declare-fun m!8090016 () Bool)

(assert (=> b!7507200 m!8090016))

(assert (=> d!2304538 d!2304662))

(assert (=> d!2304538 d!2304502))

(declare-fun d!2304664 () Bool)

(assert (=> d!2304664 (isPrefix!6009 (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)) totalInput!779)))

(assert (=> d!2304664 true))

(declare-fun _$65!1874 () Unit!166414)

(assert (=> d!2304664 (= (choose!58149 testedP!204 totalInput!779) _$65!1874)))

(declare-fun bs!1938311 () Bool)

(assert (= bs!1938311 d!2304664))

(assert (=> bs!1938311 m!8089414))

(assert (=> bs!1938311 m!8089414))

(assert (=> bs!1938311 m!8089772))

(assert (=> bs!1938311 m!8089776))

(assert (=> bs!1938311 m!8089776))

(assert (=> bs!1938311 m!8089778))

(assert (=> d!2304538 d!2304664))

(declare-fun b!7507203 () Bool)

(declare-fun e!4476345 () List!72531)

(assert (=> b!7507203 (= e!4476345 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407))))))

(declare-fun b!7507202 () Bool)

(assert (=> b!7507202 (= e!4476345 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407))))

(declare-fun b!7507204 () Bool)

(declare-fun res!3011874 () Bool)

(declare-fun e!4476346 () Bool)

(assert (=> b!7507204 (=> (not res!3011874) (not e!4476346))))

(declare-fun lt!2635873 () List!72531)

(assert (=> b!7507204 (= res!3011874 (= (size!42286 lt!2635873) (+ (size!42286 testedP!204) (size!42286 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)))))))

(declare-fun b!7507205 () Bool)

(assert (=> b!7507205 (= e!4476346 (or (not (= (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407) Nil!72407)) (= lt!2635873 testedP!204)))))

(declare-fun d!2304668 () Bool)

(assert (=> d!2304668 e!4476346))

(declare-fun res!3011873 () Bool)

(assert (=> d!2304668 (=> (not res!3011873) (not e!4476346))))

(assert (=> d!2304668 (= res!3011873 (= (content!15308 lt!2635873) ((_ map or) (content!15308 testedP!204) (content!15308 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)))))))

(assert (=> d!2304668 (= lt!2635873 e!4476345)))

(declare-fun c!1386038 () Bool)

(assert (=> d!2304668 (= c!1386038 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304668 (= (++!17344 testedP!204 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) Nil!72407)) lt!2635873)))

(assert (= (and d!2304668 c!1386038) b!7507202))

(assert (= (and d!2304668 (not c!1386038)) b!7507203))

(assert (= (and d!2304668 res!3011873) b!7507204))

(assert (= (and b!7507204 res!3011874) b!7507205))

(declare-fun m!8090022 () Bool)

(assert (=> b!7507203 m!8090022))

(declare-fun m!8090024 () Bool)

(assert (=> b!7507204 m!8090024))

(assert (=> b!7507204 m!8089426))

(declare-fun m!8090026 () Bool)

(assert (=> b!7507204 m!8090026))

(declare-fun m!8090028 () Bool)

(assert (=> d!2304668 m!8090028))

(assert (=> d!2304668 m!8089444))

(declare-fun m!8090030 () Bool)

(assert (=> d!2304668 m!8090030))

(assert (=> d!2304538 d!2304668))

(declare-fun d!2304670 () Bool)

(assert (=> d!2304670 (= (head!15432 (getSuffix!3509 totalInput!779 testedP!204)) (h!78855 (getSuffix!3509 totalInput!779 testedP!204)))))

(assert (=> d!2304538 d!2304670))

(declare-fun d!2304672 () Bool)

(declare-fun lt!2635877 () Bool)

(assert (=> d!2304672 (= lt!2635877 (exists!4867 (toList!11834 z!3716) lambda!465509))))

(declare-fun choose!58152 ((InoxSet Context!16934) Int) Bool)

(assert (=> d!2304672 (= lt!2635877 (choose!58152 z!3716 lambda!465509))))

(assert (=> d!2304672 (= (exists!4868 z!3716 lambda!465509) lt!2635877)))

(declare-fun bs!1938320 () Bool)

(assert (= bs!1938320 d!2304672))

(assert (=> bs!1938320 m!8089618))

(assert (=> bs!1938320 m!8089618))

(declare-fun m!8090040 () Bool)

(assert (=> bs!1938320 m!8090040))

(declare-fun m!8090042 () Bool)

(assert (=> bs!1938320 m!8090042))

(assert (=> d!2304530 d!2304672))

(declare-fun bm!688784 () Bool)

(declare-fun call!688789 () Unit!166414)

(assert (=> bm!688784 (= call!688789 (lemmaIsPrefixRefl!3848 totalInput!779 totalInput!779))))

(declare-fun b!7507208 () Bool)

(declare-fun e!4476351 () Unit!166414)

(declare-fun Unit!166428 () Unit!166414)

(assert (=> b!7507208 (= e!4476351 Unit!166428)))

(declare-fun lt!2635889 () Unit!166414)

(assert (=> b!7507208 (= lt!2635889 call!688789)))

(declare-fun call!688792 () Bool)

(assert (=> b!7507208 call!688792))

(declare-fun lt!2635894 () Unit!166414)

(assert (=> b!7507208 (= lt!2635894 lt!2635889)))

(declare-fun lt!2635886 () Unit!166414)

(declare-fun call!688796 () Unit!166414)

(assert (=> b!7507208 (= lt!2635886 call!688796)))

(assert (=> b!7507208 (= totalInput!779 lt!2635820)))

(declare-fun lt!2635878 () Unit!166414)

(assert (=> b!7507208 (= lt!2635878 lt!2635886)))

(assert (=> b!7507208 false))

(declare-fun b!7507209 () Bool)

(declare-fun e!4476347 () tuple2!68764)

(declare-fun lt!2635898 () tuple2!68764)

(assert (=> b!7507209 (= e!4476347 lt!2635898)))

(declare-fun b!7507210 () Bool)

(declare-fun c!1386042 () Bool)

(declare-fun call!688795 () Bool)

(assert (=> b!7507210 (= c!1386042 call!688795)))

(declare-fun lt!2635880 () Unit!166414)

(declare-fun lt!2635883 () Unit!166414)

(assert (=> b!7507210 (= lt!2635880 lt!2635883)))

(assert (=> b!7507210 (= totalInput!779 lt!2635820)))

(assert (=> b!7507210 (= lt!2635883 call!688796)))

(declare-fun lt!2635887 () Unit!166414)

(declare-fun lt!2635899 () Unit!166414)

(assert (=> b!7507210 (= lt!2635887 lt!2635899)))

(assert (=> b!7507210 call!688792))

(assert (=> b!7507210 (= lt!2635899 call!688789)))

(declare-fun e!4476349 () tuple2!68764)

(declare-fun e!4476352 () tuple2!68764)

(assert (=> b!7507210 (= e!4476349 e!4476352)))

(declare-fun b!7507212 () Bool)

(declare-fun e!4476354 () tuple2!68764)

(assert (=> b!7507212 (= e!4476354 e!4476349)))

(declare-fun c!1386044 () Bool)

(assert (=> b!7507212 (= c!1386044 (= (+ 1 testedPSize!164 1) totalInputSize!226))))

(declare-fun bm!688785 () Bool)

(assert (=> bm!688785 (= call!688795 (nullableZipper!3181 call!688786))))

(declare-fun bm!688786 () Bool)

(declare-fun call!688794 () (InoxSet Context!16934))

(declare-fun call!688793 () C!39756)

(assert (=> bm!688786 (= call!688794 (derivationStepZipper!3726 call!688786 call!688793))))

(declare-fun b!7507213 () Bool)

(declare-fun e!4476353 () tuple2!68764)

(assert (=> b!7507213 (= e!4476353 e!4476347)))

(declare-fun call!688790 () tuple2!68764)

(assert (=> b!7507213 (= lt!2635898 call!688790)))

(declare-fun c!1386041 () Bool)

(assert (=> b!7507213 (= c!1386041 (isEmpty!41314 (_1!37685 lt!2635898)))))

(declare-fun bm!688787 () Bool)

(assert (=> bm!688787 (= call!688793 (head!15432 call!688783))))

(declare-fun b!7507214 () Bool)

(assert (=> b!7507214 (= e!4476353 call!688790)))

(declare-fun b!7507215 () Bool)

(assert (=> b!7507215 (= e!4476352 (tuple2!68765 Nil!72407 totalInput!779))))

(declare-fun b!7507216 () Bool)

(declare-fun c!1386039 () Bool)

(assert (=> b!7507216 (= c!1386039 call!688795)))

(declare-fun lt!2635900 () Unit!166414)

(declare-fun lt!2635892 () Unit!166414)

(assert (=> b!7507216 (= lt!2635900 lt!2635892)))

(declare-fun lt!2635885 () C!39756)

(declare-fun lt!2635895 () List!72531)

(assert (=> b!7507216 (= (++!17344 (++!17344 lt!2635820 (Cons!72407 lt!2635885 Nil!72407)) lt!2635895) totalInput!779)))

(assert (=> b!7507216 (= lt!2635892 (lemmaMoveElementToOtherListKeepsConcatEq!3157 lt!2635820 lt!2635885 lt!2635895 totalInput!779))))

(assert (=> b!7507216 (= lt!2635895 (tail!14999 call!688783))))

(assert (=> b!7507216 (= lt!2635885 (head!15432 call!688783))))

(declare-fun lt!2635882 () Unit!166414)

(declare-fun lt!2635879 () Unit!166414)

(assert (=> b!7507216 (= lt!2635882 lt!2635879)))

(assert (=> b!7507216 (isPrefix!6009 (++!17344 lt!2635820 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635820)) Nil!72407)) totalInput!779)))

(assert (=> b!7507216 (= lt!2635879 (lemmaAddHeadSuffixToPrefixStillPrefix!1126 lt!2635820 totalInput!779))))

(declare-fun lt!2635903 () List!72531)

(assert (=> b!7507216 (= lt!2635903 (++!17344 lt!2635820 (Cons!72407 (head!15432 call!688783) Nil!72407)))))

(declare-fun lt!2635897 () Unit!166414)

(assert (=> b!7507216 (= lt!2635897 e!4476351)))

(declare-fun c!1386043 () Bool)

(assert (=> b!7507216 (= c!1386043 (= (size!42286 lt!2635820) (size!42286 totalInput!779)))))

(declare-fun lt!2635896 () Unit!166414)

(declare-fun lt!2635888 () Unit!166414)

(assert (=> b!7507216 (= lt!2635896 lt!2635888)))

(assert (=> b!7507216 (<= (size!42286 lt!2635820) (size!42286 totalInput!779))))

(assert (=> b!7507216 (= lt!2635888 (lemmaIsPrefixThenSmallerEqSize!996 lt!2635820 totalInput!779))))

(assert (=> b!7507216 (= e!4476349 e!4476353)))

(declare-fun bm!688788 () Bool)

(declare-fun call!688791 () List!72531)

(assert (=> bm!688788 (= call!688790 (findLongestMatchInnerZipper!323 call!688794 lt!2635903 (+ 1 testedPSize!164 1 1) call!688791 totalInput!779 totalInputSize!226))))

(declare-fun b!7507217 () Bool)

(assert (=> b!7507217 (= e!4476347 (tuple2!68765 lt!2635820 call!688783))))

(declare-fun b!7507211 () Bool)

(assert (=> b!7507211 (= e!4476354 (tuple2!68765 Nil!72407 totalInput!779))))

(declare-fun d!2304678 () Bool)

(declare-fun e!4476348 () Bool)

(assert (=> d!2304678 e!4476348))

(declare-fun res!3011876 () Bool)

(assert (=> d!2304678 (=> (not res!3011876) (not e!4476348))))

(declare-fun lt!2635884 () tuple2!68764)

(assert (=> d!2304678 (= res!3011876 (= (++!17344 (_1!37685 lt!2635884) (_2!37685 lt!2635884)) totalInput!779))))

(assert (=> d!2304678 (= lt!2635884 e!4476354)))

(declare-fun c!1386040 () Bool)

(assert (=> d!2304678 (= c!1386040 (lostCauseZipper!1403 call!688786))))

(declare-fun lt!2635902 () Unit!166414)

(declare-fun Unit!166429 () Unit!166414)

(assert (=> d!2304678 (= lt!2635902 Unit!166429)))

(assert (=> d!2304678 (= (getSuffix!3509 totalInput!779 lt!2635820) call!688783)))

(declare-fun lt!2635891 () Unit!166414)

(declare-fun lt!2635893 () Unit!166414)

(assert (=> d!2304678 (= lt!2635891 lt!2635893)))

(declare-fun lt!2635901 () List!72531)

(assert (=> d!2304678 (= call!688783 lt!2635901)))

(assert (=> d!2304678 (= lt!2635893 (lemmaSamePrefixThenSameSuffix!2808 lt!2635820 call!688783 lt!2635820 lt!2635901 totalInput!779))))

(assert (=> d!2304678 (= lt!2635901 (getSuffix!3509 totalInput!779 lt!2635820))))

(declare-fun lt!2635881 () Unit!166414)

(declare-fun lt!2635890 () Unit!166414)

(assert (=> d!2304678 (= lt!2635881 lt!2635890)))

(assert (=> d!2304678 (isPrefix!6009 lt!2635820 (++!17344 lt!2635820 call!688783))))

(assert (=> d!2304678 (= lt!2635890 (lemmaConcatTwoListThenFirstIsPrefix!3722 lt!2635820 call!688783))))

(assert (=> d!2304678 (= (++!17344 lt!2635820 call!688783) totalInput!779)))

(assert (=> d!2304678 (= (findLongestMatchInnerZipper!323 call!688786 lt!2635820 (+ 1 testedPSize!164 1) call!688783 totalInput!779 totalInputSize!226) lt!2635884)))

(declare-fun b!7507218 () Bool)

(assert (=> b!7507218 (= e!4476352 (tuple2!68765 lt!2635820 Nil!72407))))

(declare-fun bm!688789 () Bool)

(assert (=> bm!688789 (= call!688792 (isPrefix!6009 totalInput!779 totalInput!779))))

(declare-fun bm!688790 () Bool)

(assert (=> bm!688790 (= call!688796 (lemmaIsPrefixSameLengthThenSameList!1498 totalInput!779 lt!2635820 totalInput!779))))

(declare-fun bm!688791 () Bool)

(assert (=> bm!688791 (= call!688791 (tail!14999 call!688783))))

(declare-fun b!7507219 () Bool)

(declare-fun Unit!166430 () Unit!166414)

(assert (=> b!7507219 (= e!4476351 Unit!166430)))

(declare-fun b!7507220 () Bool)

(declare-fun e!4476350 () Bool)

(assert (=> b!7507220 (= e!4476350 (>= (size!42286 (_1!37685 lt!2635884)) (size!42286 lt!2635820)))))

(declare-fun b!7507221 () Bool)

(assert (=> b!7507221 (= e!4476348 e!4476350)))

(declare-fun res!3011875 () Bool)

(assert (=> b!7507221 (=> res!3011875 e!4476350)))

(assert (=> b!7507221 (= res!3011875 (isEmpty!41314 (_1!37685 lt!2635884)))))

(assert (= (and d!2304678 c!1386040) b!7507211))

(assert (= (and d!2304678 (not c!1386040)) b!7507212))

(assert (= (and b!7507212 c!1386044) b!7507210))

(assert (= (and b!7507212 (not c!1386044)) b!7507216))

(assert (= (and b!7507210 c!1386042) b!7507218))

(assert (= (and b!7507210 (not c!1386042)) b!7507215))

(assert (= (and b!7507216 c!1386043) b!7507208))

(assert (= (and b!7507216 (not c!1386043)) b!7507219))

(assert (= (and b!7507216 c!1386039) b!7507213))

(assert (= (and b!7507216 (not c!1386039)) b!7507214))

(assert (= (and b!7507213 c!1386041) b!7507217))

(assert (= (and b!7507213 (not c!1386041)) b!7507209))

(assert (= (or b!7507213 b!7507214) bm!688787))

(assert (= (or b!7507213 b!7507214) bm!688791))

(assert (= (or b!7507213 b!7507214) bm!688786))

(assert (= (or b!7507213 b!7507214) bm!688788))

(assert (= (or b!7507210 b!7507208) bm!688789))

(assert (= (or b!7507210 b!7507208) bm!688790))

(assert (= (or b!7507210 b!7507216) bm!688785))

(assert (= (or b!7507210 b!7507208) bm!688784))

(assert (= (and d!2304678 res!3011876) b!7507221))

(assert (= (and b!7507221 (not res!3011875)) b!7507220))

(declare-fun m!8090050 () Bool)

(assert (=> b!7507220 m!8090050))

(declare-fun m!8090054 () Bool)

(assert (=> b!7507220 m!8090054))

(declare-fun m!8090056 () Bool)

(assert (=> bm!688787 m!8090056))

(declare-fun m!8090060 () Bool)

(assert (=> bm!688788 m!8090060))

(declare-fun m!8090062 () Bool)

(assert (=> bm!688786 m!8090062))

(assert (=> b!7507216 m!8090054))

(declare-fun m!8090064 () Bool)

(assert (=> b!7507216 m!8090064))

(declare-fun m!8090066 () Bool)

(assert (=> b!7507216 m!8090066))

(declare-fun m!8090068 () Bool)

(assert (=> b!7507216 m!8090068))

(declare-fun m!8090070 () Bool)

(assert (=> b!7507216 m!8090070))

(declare-fun m!8090072 () Bool)

(assert (=> b!7507216 m!8090072))

(assert (=> b!7507216 m!8090064))

(declare-fun m!8090074 () Bool)

(assert (=> b!7507216 m!8090074))

(declare-fun m!8090076 () Bool)

(assert (=> b!7507216 m!8090076))

(declare-fun m!8090078 () Bool)

(assert (=> b!7507216 m!8090078))

(declare-fun m!8090080 () Bool)

(assert (=> b!7507216 m!8090080))

(declare-fun m!8090082 () Bool)

(assert (=> b!7507216 m!8090082))

(assert (=> b!7507216 m!8090068))

(assert (=> b!7507216 m!8089416))

(assert (=> b!7507216 m!8090056))

(declare-fun m!8090084 () Bool)

(assert (=> b!7507216 m!8090084))

(assert (=> b!7507216 m!8090078))

(declare-fun m!8090086 () Bool)

(assert (=> b!7507213 m!8090086))

(declare-fun m!8090088 () Bool)

(assert (=> b!7507221 m!8090088))

(assert (=> bm!688789 m!8089404))

(declare-fun m!8090090 () Bool)

(assert (=> bm!688785 m!8090090))

(declare-fun m!8090092 () Bool)

(assert (=> d!2304678 m!8090092))

(declare-fun m!8090094 () Bool)

(assert (=> d!2304678 m!8090094))

(assert (=> d!2304678 m!8090068))

(declare-fun m!8090096 () Bool)

(assert (=> d!2304678 m!8090096))

(declare-fun m!8090098 () Bool)

(assert (=> d!2304678 m!8090098))

(declare-fun m!8090100 () Bool)

(assert (=> d!2304678 m!8090100))

(declare-fun m!8090102 () Bool)

(assert (=> d!2304678 m!8090102))

(assert (=> d!2304678 m!8090100))

(declare-fun m!8090104 () Bool)

(assert (=> bm!688790 m!8090104))

(assert (=> bm!688784 m!8089402))

(assert (=> bm!688791 m!8090076))

(assert (=> bm!688780 d!2304678))

(declare-fun bs!1938330 () Bool)

(declare-fun d!2304684 () Bool)

(assert (= bs!1938330 (and d!2304684 d!2304460)))

(declare-fun lambda!465527 () Int)

(assert (=> bs!1938330 (not (= lambda!465527 lambda!465480))))

(declare-fun bs!1938332 () Bool)

(assert (= bs!1938332 (and d!2304684 b!7506972)))

(assert (=> bs!1938332 (not (= lambda!465527 lambda!465481))))

(declare-fun bs!1938334 () Bool)

(assert (= bs!1938334 (and d!2304684 b!7506973)))

(assert (=> bs!1938334 (not (= lambda!465527 lambda!465482))))

(declare-fun bs!1938337 () Bool)

(assert (= bs!1938337 (and d!2304684 d!2304530)))

(assert (=> bs!1938337 (not (= lambda!465527 lambda!465509))))

(assert (=> d!2304684 true))

(declare-fun order!29651 () Int)

(declare-fun dynLambda!29780 (Int Int) Int)

(assert (=> d!2304684 (< (dynLambda!29780 order!29651 lambda!465480) (dynLambda!29780 order!29651 lambda!465527))))

(assert (=> d!2304684 (exists!4867 lt!2635696 lambda!465527)))

(declare-fun lt!2635913 () Unit!166414)

(declare-fun choose!58153 (List!72534 Int) Unit!166414)

(assert (=> d!2304684 (= lt!2635913 (choose!58153 lt!2635696 lambda!465480))))

(declare-fun forall!18297 (List!72534 Int) Bool)

(assert (=> d!2304684 (not (forall!18297 lt!2635696 lambda!465480))))

(assert (=> d!2304684 (= (lemmaNotForallThenExists!505 lt!2635696 lambda!465480) lt!2635913)))

(declare-fun bs!1938341 () Bool)

(assert (= bs!1938341 d!2304684))

(declare-fun m!8090142 () Bool)

(assert (=> bs!1938341 m!8090142))

(declare-fun m!8090146 () Bool)

(assert (=> bs!1938341 m!8090146))

(declare-fun m!8090148 () Bool)

(assert (=> bs!1938341 m!8090148))

(assert (=> b!7506972 d!2304684))

(declare-fun d!2304706 () Bool)

(assert (=> d!2304706 (= totalInput!779 lt!2635545)))

(declare-fun lt!2635914 () Unit!166414)

(assert (=> d!2304706 (= lt!2635914 (choose!58144 totalInput!779 lt!2635545 totalInput!779))))

(assert (=> d!2304706 (isPrefix!6009 totalInput!779 totalInput!779)))

(assert (=> d!2304706 (= (lemmaIsPrefixSameLengthThenSameList!1498 totalInput!779 lt!2635545 totalInput!779) lt!2635914)))

(declare-fun bs!1938342 () Bool)

(assert (= bs!1938342 d!2304706))

(declare-fun m!8090154 () Bool)

(assert (=> bs!1938342 m!8090154))

(assert (=> bs!1938342 m!8089404))

(assert (=> bm!688782 d!2304706))

(declare-fun d!2304710 () Bool)

(declare-fun e!4476384 () Bool)

(assert (=> d!2304710 e!4476384))

(declare-fun res!3011903 () Bool)

(assert (=> d!2304710 (=> (not res!3011903) (not e!4476384))))

(declare-fun lt!2635921 () List!72534)

(declare-fun noDuplicate!3144 (List!72534) Bool)

(assert (=> d!2304710 (= res!3011903 (noDuplicate!3144 lt!2635921))))

(declare-fun choose!58154 ((InoxSet Context!16934)) List!72534)

(assert (=> d!2304710 (= lt!2635921 (choose!58154 z!3716))))

(assert (=> d!2304710 (= (toList!11834 z!3716) lt!2635921)))

(declare-fun b!7507268 () Bool)

(declare-fun content!15309 (List!72534) (InoxSet Context!16934))

(assert (=> b!7507268 (= e!4476384 (= (content!15309 lt!2635921) z!3716))))

(assert (= (and d!2304710 res!3011903) b!7507268))

(declare-fun m!8090172 () Bool)

(assert (=> d!2304710 m!8090172))

(declare-fun m!8090174 () Bool)

(assert (=> d!2304710 m!8090174))

(declare-fun m!8090176 () Bool)

(assert (=> b!7507268 m!8090176))

(assert (=> bm!688752 d!2304710))

(declare-fun d!2304726 () Bool)

(declare-fun lt!2635923 () Int)

(assert (=> d!2304726 (>= lt!2635923 0)))

(declare-fun e!4476388 () Int)

(assert (=> d!2304726 (= lt!2635923 e!4476388)))

(declare-fun c!1386054 () Bool)

(assert (=> d!2304726 (= c!1386054 ((_ is Nil!72407) lt!2635834))))

(assert (=> d!2304726 (= (size!42286 lt!2635834) lt!2635923)))

(declare-fun b!7507273 () Bool)

(assert (=> b!7507273 (= e!4476388 0)))

(declare-fun b!7507274 () Bool)

(assert (=> b!7507274 (= e!4476388 (+ 1 (size!42286 (t!387100 lt!2635834))))))

(assert (= (and d!2304726 c!1386054) b!7507273))

(assert (= (and d!2304726 (not c!1386054)) b!7507274))

(declare-fun m!8090178 () Bool)

(assert (=> b!7507274 m!8090178))

(assert (=> b!7507087 d!2304726))

(assert (=> b!7507087 d!2304450))

(declare-fun d!2304728 () Bool)

(declare-fun lt!2635924 () Int)

(assert (=> d!2304728 (>= lt!2635924 0)))

(declare-fun e!4476389 () Int)

(assert (=> d!2304728 (= lt!2635924 e!4476389)))

(declare-fun c!1386055 () Bool)

(assert (=> d!2304728 (= c!1386055 ((_ is Nil!72407) (_2!37685 lt!2635546)))))

(assert (=> d!2304728 (= (size!42286 (_2!37685 lt!2635546)) lt!2635924)))

(declare-fun b!7507275 () Bool)

(assert (=> b!7507275 (= e!4476389 0)))

(declare-fun b!7507276 () Bool)

(assert (=> b!7507276 (= e!4476389 (+ 1 (size!42286 (t!387100 (_2!37685 lt!2635546)))))))

(assert (= (and d!2304728 c!1386055) b!7507275))

(assert (= (and d!2304728 (not c!1386055)) b!7507276))

(declare-fun m!8090192 () Bool)

(assert (=> b!7507276 m!8090192))

(assert (=> b!7507087 d!2304728))

(declare-fun d!2304732 () Bool)

(declare-fun lt!2635925 () Int)

(assert (=> d!2304732 (>= lt!2635925 0)))

(declare-fun e!4476390 () Int)

(assert (=> d!2304732 (= lt!2635925 e!4476390)))

(declare-fun c!1386056 () Bool)

(assert (=> d!2304732 (= c!1386056 ((_ is Nil!72407) lt!2635829))))

(assert (=> d!2304732 (= (size!42286 lt!2635829) lt!2635925)))

(declare-fun b!7507277 () Bool)

(assert (=> b!7507277 (= e!4476390 0)))

(declare-fun b!7507278 () Bool)

(assert (=> b!7507278 (= e!4476390 (+ 1 (size!42286 (t!387100 lt!2635829))))))

(assert (= (and d!2304732 c!1386056) b!7507277))

(assert (= (and d!2304732 (not c!1386056)) b!7507278))

(declare-fun m!8090194 () Bool)

(assert (=> b!7507278 m!8090194))

(assert (=> b!7507079 d!2304732))

(declare-fun d!2304734 () Bool)

(declare-fun lt!2635927 () Int)

(assert (=> d!2304734 (>= lt!2635927 0)))

(declare-fun e!4476391 () Int)

(assert (=> d!2304734 (= lt!2635927 e!4476391)))

(declare-fun c!1386057 () Bool)

(assert (=> d!2304734 (= c!1386057 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304734 (= (size!42286 lt!2635545) lt!2635927)))

(declare-fun b!7507279 () Bool)

(assert (=> b!7507279 (= e!4476391 0)))

(declare-fun b!7507280 () Bool)

(assert (=> b!7507280 (= e!4476391 (+ 1 (size!42286 (t!387100 lt!2635545))))))

(assert (= (and d!2304734 c!1386057) b!7507279))

(assert (= (and d!2304734 (not c!1386057)) b!7507280))

(declare-fun m!8090198 () Bool)

(assert (=> b!7507280 m!8090198))

(assert (=> b!7507079 d!2304734))

(declare-fun d!2304738 () Bool)

(declare-fun lt!2635929 () Int)

(assert (=> d!2304738 (>= lt!2635929 0)))

(declare-fun e!4476392 () Int)

(assert (=> d!2304738 (= lt!2635929 e!4476392)))

(declare-fun c!1386058 () Bool)

(assert (=> d!2304738 (= c!1386058 ((_ is Nil!72407) lt!2635535))))

(assert (=> d!2304738 (= (size!42286 lt!2635535) lt!2635929)))

(declare-fun b!7507281 () Bool)

(assert (=> b!7507281 (= e!4476392 0)))

(declare-fun b!7507282 () Bool)

(assert (=> b!7507282 (= e!4476392 (+ 1 (size!42286 (t!387100 lt!2635535))))))

(assert (= (and d!2304738 c!1386058) b!7507281))

(assert (= (and d!2304738 (not c!1386058)) b!7507282))

(declare-fun m!8090202 () Bool)

(assert (=> b!7507282 m!8090202))

(assert (=> b!7507079 d!2304738))

(declare-fun d!2304742 () Bool)

(declare-fun c!1386062 () Bool)

(assert (=> d!2304742 (= c!1386062 ((_ is Nil!72407) lt!2635552))))

(declare-fun e!4476396 () (InoxSet C!39756))

(assert (=> d!2304742 (= (content!15308 lt!2635552) e!4476396)))

(declare-fun b!7507289 () Bool)

(assert (=> b!7507289 (= e!4476396 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507290 () Bool)

(assert (=> b!7507290 (= e!4476396 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635552) true) (content!15308 (t!387100 lt!2635552))))))

(assert (= (and d!2304742 c!1386062) b!7507289))

(assert (= (and d!2304742 (not c!1386062)) b!7507290))

(declare-fun m!8090204 () Bool)

(assert (=> b!7507290 m!8090204))

(declare-fun m!8090206 () Bool)

(assert (=> b!7507290 m!8090206))

(assert (=> d!2304442 d!2304742))

(declare-fun d!2304744 () Bool)

(declare-fun c!1386063 () Bool)

(assert (=> d!2304744 (= c!1386063 ((_ is Nil!72407) testedP!204))))

(declare-fun e!4476397 () (InoxSet C!39756))

(assert (=> d!2304744 (= (content!15308 testedP!204) e!4476397)))

(declare-fun b!7507291 () Bool)

(assert (=> b!7507291 (= e!4476397 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507292 () Bool)

(assert (=> b!7507292 (= e!4476397 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 testedP!204) true) (content!15308 (t!387100 testedP!204))))))

(assert (= (and d!2304744 c!1386063) b!7507291))

(assert (= (and d!2304744 (not c!1386063)) b!7507292))

(declare-fun m!8090208 () Bool)

(assert (=> b!7507292 m!8090208))

(declare-fun m!8090210 () Bool)

(assert (=> b!7507292 m!8090210))

(assert (=> d!2304442 d!2304744))

(declare-fun d!2304746 () Bool)

(declare-fun c!1386064 () Bool)

(assert (=> d!2304746 (= c!1386064 ((_ is Nil!72407) testedSuffix!164))))

(declare-fun e!4476398 () (InoxSet C!39756))

(assert (=> d!2304746 (= (content!15308 testedSuffix!164) e!4476398)))

(declare-fun b!7507293 () Bool)

(assert (=> b!7507293 (= e!4476398 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507294 () Bool)

(assert (=> b!7507294 (= e!4476398 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 testedSuffix!164) true) (content!15308 (t!387100 testedSuffix!164))))))

(assert (= (and d!2304746 c!1386064) b!7507293))

(assert (= (and d!2304746 (not c!1386064)) b!7507294))

(declare-fun m!8090212 () Bool)

(assert (=> b!7507294 m!8090212))

(declare-fun m!8090214 () Bool)

(assert (=> b!7507294 m!8090214))

(assert (=> d!2304442 d!2304746))

(declare-fun d!2304748 () Bool)

(declare-fun lt!2635938 () Int)

(assert (=> d!2304748 (>= lt!2635938 0)))

(declare-fun e!4476399 () Int)

(assert (=> d!2304748 (= lt!2635938 e!4476399)))

(declare-fun c!1386065 () Bool)

(assert (=> d!2304748 (= c!1386065 ((_ is Nil!72407) (_1!37685 lt!2635801)))))

(assert (=> d!2304748 (= (size!42286 (_1!37685 lt!2635801)) lt!2635938)))

(declare-fun b!7507295 () Bool)

(assert (=> b!7507295 (= e!4476399 0)))

(declare-fun b!7507296 () Bool)

(assert (=> b!7507296 (= e!4476399 (+ 1 (size!42286 (t!387100 (_1!37685 lt!2635801)))))))

(assert (= (and d!2304748 c!1386065) b!7507295))

(assert (= (and d!2304748 (not c!1386065)) b!7507296))

(declare-fun m!8090216 () Bool)

(assert (=> b!7507296 m!8090216))

(assert (=> b!7507065 d!2304748))

(assert (=> b!7507065 d!2304734))

(declare-fun b!7507298 () Bool)

(declare-fun e!4476400 () List!72531)

(assert (=> b!7507298 (= e!4476400 (Cons!72407 (h!78855 (t!387100 testedP!204)) (++!17344 (t!387100 (t!387100 testedP!204)) (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(declare-fun b!7507297 () Bool)

(assert (=> b!7507297 (= e!4476400 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))

(declare-fun b!7507299 () Bool)

(declare-fun res!3011909 () Bool)

(declare-fun e!4476401 () Bool)

(assert (=> b!7507299 (=> (not res!3011909) (not e!4476401))))

(declare-fun lt!2635939 () List!72531)

(assert (=> b!7507299 (= res!3011909 (= (size!42286 lt!2635939) (+ (size!42286 (t!387100 testedP!204)) (size!42286 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(declare-fun b!7507300 () Bool)

(assert (=> b!7507300 (= e!4476401 (or (not (= (Cons!72407 (head!15432 lt!2635539) Nil!72407) Nil!72407)) (= lt!2635939 (t!387100 testedP!204))))))

(declare-fun d!2304750 () Bool)

(assert (=> d!2304750 e!4476401))

(declare-fun res!3011908 () Bool)

(assert (=> d!2304750 (=> (not res!3011908) (not e!4476401))))

(assert (=> d!2304750 (= res!3011908 (= (content!15308 lt!2635939) ((_ map or) (content!15308 (t!387100 testedP!204)) (content!15308 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(assert (=> d!2304750 (= lt!2635939 e!4476400)))

(declare-fun c!1386066 () Bool)

(assert (=> d!2304750 (= c!1386066 ((_ is Nil!72407) (t!387100 testedP!204)))))

(assert (=> d!2304750 (= (++!17344 (t!387100 testedP!204) (Cons!72407 (head!15432 lt!2635539) Nil!72407)) lt!2635939)))

(assert (= (and d!2304750 c!1386066) b!7507297))

(assert (= (and d!2304750 (not c!1386066)) b!7507298))

(assert (= (and d!2304750 res!3011908) b!7507299))

(assert (= (and b!7507299 res!3011909) b!7507300))

(declare-fun m!8090218 () Bool)

(assert (=> b!7507298 m!8090218))

(declare-fun m!8090220 () Bool)

(assert (=> b!7507299 m!8090220))

(assert (=> b!7507299 m!8089434))

(assert (=> b!7507299 m!8089766))

(declare-fun m!8090222 () Bool)

(assert (=> d!2304750 m!8090222))

(assert (=> d!2304750 m!8090210))

(assert (=> d!2304750 m!8089770))

(assert (=> b!7507074 d!2304750))

(declare-fun bs!1938372 () Bool)

(declare-fun d!2304752 () Bool)

(assert (= bs!1938372 (and d!2304752 d!2304526)))

(declare-fun lambda!465532 () Int)

(assert (=> bs!1938372 (= lambda!465532 lambda!465506)))

(assert (=> d!2304752 (= (inv!92517 setElem!57050) (forall!18296 (exprs!8967 setElem!57050) lambda!465532))))

(declare-fun bs!1938373 () Bool)

(assert (= bs!1938373 d!2304752))

(declare-fun m!8090228 () Bool)

(assert (=> bs!1938373 m!8090228))

(assert (=> setNonEmpty!57050 d!2304752))

(declare-fun d!2304754 () Bool)

(assert (=> d!2304754 (= (head!15432 testedP!204) (h!78855 testedP!204))))

(assert (=> b!7506863 d!2304754))

(declare-fun d!2304756 () Bool)

(assert (=> d!2304756 (= (head!15432 totalInput!779) (h!78855 totalInput!779))))

(assert (=> b!7506863 d!2304756))

(declare-fun d!2304758 () Bool)

(assert (=> d!2304758 (= (isEmpty!41316 (getLanguageWitness!1054 z!3716)) (not ((_ is Some!17229) (getLanguageWitness!1054 z!3716))))))

(assert (=> d!2304460 d!2304758))

(declare-fun bs!1938376 () Bool)

(declare-fun d!2304762 () Bool)

(assert (= bs!1938376 (and d!2304762 b!7506973)))

(declare-fun lambda!465539 () Int)

(assert (=> bs!1938376 (= lambda!465539 lambda!465482)))

(declare-fun bs!1938377 () Bool)

(assert (= bs!1938377 (and d!2304762 d!2304530)))

(assert (=> bs!1938377 (not (= lambda!465539 lambda!465509))))

(declare-fun bs!1938378 () Bool)

(assert (= bs!1938378 (and d!2304762 d!2304460)))

(assert (=> bs!1938378 (not (= lambda!465539 lambda!465480))))

(declare-fun bs!1938379 () Bool)

(assert (= bs!1938379 (and d!2304762 b!7506972)))

(assert (=> bs!1938379 (= lambda!465539 lambda!465481)))

(declare-fun bs!1938380 () Bool)

(assert (= bs!1938380 (and d!2304762 d!2304684)))

(assert (=> bs!1938380 (not (= lambda!465539 lambda!465527))))

(declare-fun lt!2635972 () Option!17230)

(declare-fun isDefined!13905 (Option!17230) Bool)

(assert (=> d!2304762 (= (isDefined!13905 lt!2635972) (exists!4868 z!3716 lambda!465539))))

(declare-fun e!4476417 () Option!17230)

(assert (=> d!2304762 (= lt!2635972 e!4476417)))

(declare-fun c!1386085 () Bool)

(assert (=> d!2304762 (= c!1386085 (exists!4868 z!3716 lambda!465539))))

(assert (=> d!2304762 (= (getLanguageWitness!1054 z!3716) lt!2635972)))

(declare-fun b!7507329 () Bool)

(declare-fun getLanguageWitness!1056 (Context!16934) Option!17230)

(declare-fun getWitness!2478 ((InoxSet Context!16934) Int) Context!16934)

(assert (=> b!7507329 (= e!4476417 (getLanguageWitness!1056 (getWitness!2478 z!3716 lambda!465539)))))

(declare-fun b!7507330 () Bool)

(assert (=> b!7507330 (= e!4476417 None!17229)))

(assert (= (and d!2304762 c!1386085) b!7507329))

(assert (= (and d!2304762 (not c!1386085)) b!7507330))

(declare-fun m!8090320 () Bool)

(assert (=> d!2304762 m!8090320))

(declare-fun m!8090322 () Bool)

(assert (=> d!2304762 m!8090322))

(assert (=> d!2304762 m!8090322))

(declare-fun m!8090324 () Bool)

(assert (=> b!7507329 m!8090324))

(assert (=> b!7507329 m!8090324))

(declare-fun m!8090326 () Bool)

(assert (=> b!7507329 m!8090326))

(assert (=> d!2304460 d!2304762))

(declare-fun d!2304782 () Bool)

(declare-fun lt!2635976 () Bool)

(assert (=> d!2304782 (= lt!2635976 (forall!18297 (toList!11834 z!3716) lambda!465480))))

(declare-fun choose!58157 ((InoxSet Context!16934) Int) Bool)

(assert (=> d!2304782 (= lt!2635976 (choose!58157 z!3716 lambda!465480))))

(assert (=> d!2304782 (= (forall!18295 z!3716 lambda!465480) lt!2635976)))

(declare-fun bs!1938381 () Bool)

(assert (= bs!1938381 d!2304782))

(assert (=> bs!1938381 m!8089618))

(assert (=> bs!1938381 m!8089618))

(declare-fun m!8090332 () Bool)

(assert (=> bs!1938381 m!8090332))

(declare-fun m!8090334 () Bool)

(assert (=> bs!1938381 m!8090334))

(assert (=> d!2304460 d!2304782))

(assert (=> b!7506865 d!2304452))

(assert (=> b!7506865 d!2304438))

(declare-fun d!2304786 () Bool)

(declare-fun e!4476429 () Bool)

(assert (=> d!2304786 e!4476429))

(declare-fun res!3011925 () Bool)

(assert (=> d!2304786 (=> res!3011925 e!4476429)))

(declare-fun lt!2635977 () Bool)

(assert (=> d!2304786 (= res!3011925 (not lt!2635977))))

(declare-fun e!4476430 () Bool)

(assert (=> d!2304786 (= lt!2635977 e!4476430)))

(declare-fun res!3011922 () Bool)

(assert (=> d!2304786 (=> res!3011922 e!4476430)))

(assert (=> d!2304786 (= res!3011922 ((_ is Nil!72407) (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(assert (=> d!2304786 (= (isPrefix!6009 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) (tail!14999 totalInput!779)) lt!2635977)))

(declare-fun b!7507345 () Bool)

(declare-fun e!4476428 () Bool)

(assert (=> b!7507345 (= e!4476430 e!4476428)))

(declare-fun res!3011923 () Bool)

(assert (=> b!7507345 (=> (not res!3011923) (not e!4476428))))

(assert (=> b!7507345 (= res!3011923 (not ((_ is Nil!72407) (tail!14999 totalInput!779))))))

(declare-fun b!7507346 () Bool)

(declare-fun res!3011924 () Bool)

(assert (=> b!7507346 (=> (not res!3011924) (not e!4476428))))

(assert (=> b!7507346 (= res!3011924 (= (head!15432 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))) (head!15432 (tail!14999 totalInput!779))))))

(declare-fun b!7507348 () Bool)

(assert (=> b!7507348 (= e!4476429 (>= (size!42286 (tail!14999 totalInput!779)) (size!42286 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))))

(declare-fun b!7507347 () Bool)

(assert (=> b!7507347 (= e!4476428 (isPrefix!6009 (tail!14999 (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))) (tail!14999 (tail!14999 totalInput!779))))))

(assert (= (and d!2304786 (not res!3011922)) b!7507345))

(assert (= (and b!7507345 res!3011923) b!7507346))

(assert (= (and b!7507346 res!3011924) b!7507347))

(assert (= (and d!2304786 (not res!3011925)) b!7507348))

(assert (=> b!7507346 m!8089758))

(declare-fun m!8090346 () Bool)

(assert (=> b!7507346 m!8090346))

(assert (=> b!7507346 m!8089454))

(declare-fun m!8090348 () Bool)

(assert (=> b!7507346 m!8090348))

(assert (=> b!7507348 m!8089454))

(declare-fun m!8090350 () Bool)

(assert (=> b!7507348 m!8090350))

(assert (=> b!7507348 m!8089758))

(declare-fun m!8090352 () Bool)

(assert (=> b!7507348 m!8090352))

(assert (=> b!7507347 m!8089758))

(declare-fun m!8090354 () Bool)

(assert (=> b!7507347 m!8090354))

(assert (=> b!7507347 m!8089454))

(declare-fun m!8090356 () Bool)

(assert (=> b!7507347 m!8090356))

(assert (=> b!7507347 m!8090354))

(assert (=> b!7507347 m!8090356))

(declare-fun m!8090358 () Bool)

(assert (=> b!7507347 m!8090358))

(assert (=> b!7507071 d!2304786))

(declare-fun d!2304790 () Bool)

(assert (=> d!2304790 (= (tail!14999 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) (t!387100 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(assert (=> b!7507071 d!2304790))

(declare-fun d!2304792 () Bool)

(assert (=> d!2304792 (= (tail!14999 totalInput!779) (t!387100 totalInput!779))))

(assert (=> b!7507071 d!2304792))

(declare-fun d!2304794 () Bool)

(declare-fun e!4476432 () Bool)

(assert (=> d!2304794 e!4476432))

(declare-fun res!3011929 () Bool)

(assert (=> d!2304794 (=> res!3011929 e!4476432)))

(declare-fun lt!2635978 () Bool)

(assert (=> d!2304794 (= res!3011929 (not lt!2635978))))

(declare-fun e!4476433 () Bool)

(assert (=> d!2304794 (= lt!2635978 e!4476433)))

(declare-fun res!3011926 () Bool)

(assert (=> d!2304794 (=> res!3011926 e!4476433)))

(assert (=> d!2304794 (= res!3011926 ((_ is Nil!72407) (tail!14999 testedP!204)))))

(assert (=> d!2304794 (= (isPrefix!6009 (tail!14999 testedP!204) (tail!14999 lt!2635540)) lt!2635978)))

(declare-fun b!7507349 () Bool)

(declare-fun e!4476431 () Bool)

(assert (=> b!7507349 (= e!4476433 e!4476431)))

(declare-fun res!3011927 () Bool)

(assert (=> b!7507349 (=> (not res!3011927) (not e!4476431))))

(assert (=> b!7507349 (= res!3011927 (not ((_ is Nil!72407) (tail!14999 lt!2635540))))))

(declare-fun b!7507350 () Bool)

(declare-fun res!3011928 () Bool)

(assert (=> b!7507350 (=> (not res!3011928) (not e!4476431))))

(assert (=> b!7507350 (= res!3011928 (= (head!15432 (tail!14999 testedP!204)) (head!15432 (tail!14999 lt!2635540))))))

(declare-fun b!7507352 () Bool)

(assert (=> b!7507352 (= e!4476432 (>= (size!42286 (tail!14999 lt!2635540)) (size!42286 (tail!14999 testedP!204))))))

(declare-fun b!7507351 () Bool)

(assert (=> b!7507351 (= e!4476431 (isPrefix!6009 (tail!14999 (tail!14999 testedP!204)) (tail!14999 (tail!14999 lt!2635540))))))

(assert (= (and d!2304794 (not res!3011926)) b!7507349))

(assert (= (and b!7507349 res!3011927) b!7507350))

(assert (= (and b!7507350 res!3011928) b!7507351))

(assert (= (and d!2304794 (not res!3011929)) b!7507352))

(assert (=> b!7507350 m!8089452))

(declare-fun m!8090360 () Bool)

(assert (=> b!7507350 m!8090360))

(assert (=> b!7507350 m!8089462))

(declare-fun m!8090362 () Bool)

(assert (=> b!7507350 m!8090362))

(assert (=> b!7507352 m!8089462))

(declare-fun m!8090364 () Bool)

(assert (=> b!7507352 m!8090364))

(assert (=> b!7507352 m!8089452))

(declare-fun m!8090366 () Bool)

(assert (=> b!7507352 m!8090366))

(assert (=> b!7507351 m!8089452))

(declare-fun m!8090368 () Bool)

(assert (=> b!7507351 m!8090368))

(assert (=> b!7507351 m!8089462))

(declare-fun m!8090370 () Bool)

(assert (=> b!7507351 m!8090370))

(assert (=> b!7507351 m!8090368))

(assert (=> b!7507351 m!8090370))

(declare-fun m!8090372 () Bool)

(assert (=> b!7507351 m!8090372))

(assert (=> b!7506868 d!2304794))

(declare-fun d!2304796 () Bool)

(assert (=> d!2304796 (= (tail!14999 testedP!204) (t!387100 testedP!204))))

(assert (=> b!7506868 d!2304796))

(declare-fun d!2304798 () Bool)

(assert (=> d!2304798 (= (tail!14999 lt!2635540) (t!387100 lt!2635540))))

(assert (=> b!7506868 d!2304798))

(declare-fun d!2304800 () Bool)

(assert (=> d!2304800 (= testedSuffix!164 lt!2635539)))

(assert (=> d!2304800 true))

(declare-fun _$63!1361 () Unit!166414)

(assert (=> d!2304800 (= (choose!58145 testedP!204 testedSuffix!164 testedP!204 lt!2635539 totalInput!779) _$63!1361)))

(assert (=> d!2304498 d!2304800))

(assert (=> d!2304498 d!2304444))

(assert (=> b!7506875 d!2304756))

(declare-fun b!7507358 () Bool)

(declare-fun e!4476436 () List!72531)

(assert (=> b!7507358 (= e!4476436 (Cons!72407 (h!78855 (t!387100 testedP!204)) (++!17344 (t!387100 (t!387100 testedP!204)) (Cons!72407 lt!2635544 Nil!72407))))))

(declare-fun b!7507357 () Bool)

(assert (=> b!7507357 (= e!4476436 (Cons!72407 lt!2635544 Nil!72407))))

(declare-fun b!7507359 () Bool)

(declare-fun res!3011933 () Bool)

(declare-fun e!4476437 () Bool)

(assert (=> b!7507359 (=> (not res!3011933) (not e!4476437))))

(declare-fun lt!2635980 () List!72531)

(assert (=> b!7507359 (= res!3011933 (= (size!42286 lt!2635980) (+ (size!42286 (t!387100 testedP!204)) (size!42286 (Cons!72407 lt!2635544 Nil!72407)))))))

(declare-fun b!7507360 () Bool)

(assert (=> b!7507360 (= e!4476437 (or (not (= (Cons!72407 lt!2635544 Nil!72407) Nil!72407)) (= lt!2635980 (t!387100 testedP!204))))))

(declare-fun d!2304804 () Bool)

(assert (=> d!2304804 e!4476437))

(declare-fun res!3011932 () Bool)

(assert (=> d!2304804 (=> (not res!3011932) (not e!4476437))))

(assert (=> d!2304804 (= res!3011932 (= (content!15308 lt!2635980) ((_ map or) (content!15308 (t!387100 testedP!204)) (content!15308 (Cons!72407 lt!2635544 Nil!72407)))))))

(assert (=> d!2304804 (= lt!2635980 e!4476436)))

(declare-fun c!1386090 () Bool)

(assert (=> d!2304804 (= c!1386090 ((_ is Nil!72407) (t!387100 testedP!204)))))

(assert (=> d!2304804 (= (++!17344 (t!387100 testedP!204) (Cons!72407 lt!2635544 Nil!72407)) lt!2635980)))

(assert (= (and d!2304804 c!1386090) b!7507357))

(assert (= (and d!2304804 (not c!1386090)) b!7507358))

(assert (= (and d!2304804 res!3011932) b!7507359))

(assert (= (and b!7507359 res!3011933) b!7507360))

(declare-fun m!8090384 () Bool)

(assert (=> b!7507358 m!8090384))

(declare-fun m!8090386 () Bool)

(assert (=> b!7507359 m!8090386))

(assert (=> b!7507359 m!8089434))

(assert (=> b!7507359 m!8089796))

(declare-fun m!8090388 () Bool)

(assert (=> d!2304804 m!8090388))

(assert (=> d!2304804 m!8090210))

(assert (=> d!2304804 m!8089800))

(assert (=> b!7507082 d!2304804))

(assert (=> b!7506877 d!2304452))

(declare-fun b!7507362 () Bool)

(declare-fun e!4476438 () List!72531)

(assert (=> b!7507362 (= e!4476438 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) lt!2635702)))))

(declare-fun b!7507361 () Bool)

(assert (=> b!7507361 (= e!4476438 lt!2635702)))

(declare-fun b!7507363 () Bool)

(declare-fun res!3011935 () Bool)

(declare-fun e!4476439 () Bool)

(assert (=> b!7507363 (=> (not res!3011935) (not e!4476439))))

(declare-fun lt!2635981 () List!72531)

(assert (=> b!7507363 (= res!3011935 (= (size!42286 lt!2635981) (+ (size!42286 testedP!204) (size!42286 lt!2635702))))))

(declare-fun b!7507364 () Bool)

(assert (=> b!7507364 (= e!4476439 (or (not (= lt!2635702 Nil!72407)) (= lt!2635981 testedP!204)))))

(declare-fun d!2304808 () Bool)

(assert (=> d!2304808 e!4476439))

(declare-fun res!3011934 () Bool)

(assert (=> d!2304808 (=> (not res!3011934) (not e!4476439))))

(assert (=> d!2304808 (= res!3011934 (= (content!15308 lt!2635981) ((_ map or) (content!15308 testedP!204) (content!15308 lt!2635702))))))

(assert (=> d!2304808 (= lt!2635981 e!4476438)))

(declare-fun c!1386091 () Bool)

(assert (=> d!2304808 (= c!1386091 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304808 (= (++!17344 testedP!204 lt!2635702) lt!2635981)))

(assert (= (and d!2304808 c!1386091) b!7507361))

(assert (= (and d!2304808 (not c!1386091)) b!7507362))

(assert (= (and d!2304808 res!3011934) b!7507363))

(assert (= (and b!7507363 res!3011935) b!7507364))

(declare-fun m!8090390 () Bool)

(assert (=> b!7507362 m!8090390))

(declare-fun m!8090392 () Bool)

(assert (=> b!7507363 m!8090392))

(assert (=> b!7507363 m!8089426))

(declare-fun m!8090394 () Bool)

(assert (=> b!7507363 m!8090394))

(declare-fun m!8090396 () Bool)

(assert (=> d!2304808 m!8090396))

(assert (=> d!2304808 m!8089444))

(declare-fun m!8090398 () Bool)

(assert (=> d!2304808 m!8090398))

(assert (=> d!2304502 d!2304808))

(assert (=> d!2304502 d!2304452))

(assert (=> d!2304502 d!2304438))

(declare-fun bs!1938383 () Bool)

(declare-fun d!2304810 () Bool)

(assert (= bs!1938383 (and d!2304810 d!2304524)))

(declare-fun lambda!465540 () Int)

(assert (=> bs!1938383 (= (= call!688785 lt!2635544) (= lambda!465540 lambda!465503))))

(assert (=> d!2304810 true))

(assert (=> d!2304810 (= (derivationStepZipper!3726 (derivationStepZipper!3726 z!3716 lt!2635544) call!688785) (flatMap!3261 (derivationStepZipper!3726 z!3716 lt!2635544) lambda!465540))))

(declare-fun bs!1938384 () Bool)

(assert (= bs!1938384 d!2304810))

(assert (=> bs!1938384 m!8089422))

(declare-fun m!8090400 () Bool)

(assert (=> bs!1938384 m!8090400))

(assert (=> bm!688778 d!2304810))

(declare-fun b!7507366 () Bool)

(declare-fun e!4476440 () List!72531)

(assert (=> b!7507366 (= e!4476440 (Cons!72407 (h!78855 (t!387100 testedP!204)) (++!17344 (t!387100 (t!387100 testedP!204)) testedSuffix!164)))))

(declare-fun b!7507365 () Bool)

(assert (=> b!7507365 (= e!4476440 testedSuffix!164)))

(declare-fun b!7507367 () Bool)

(declare-fun res!3011937 () Bool)

(declare-fun e!4476441 () Bool)

(assert (=> b!7507367 (=> (not res!3011937) (not e!4476441))))

(declare-fun lt!2635982 () List!72531)

(assert (=> b!7507367 (= res!3011937 (= (size!42286 lt!2635982) (+ (size!42286 (t!387100 testedP!204)) (size!42286 testedSuffix!164))))))

(declare-fun b!7507368 () Bool)

(assert (=> b!7507368 (= e!4476441 (or (not (= testedSuffix!164 Nil!72407)) (= lt!2635982 (t!387100 testedP!204))))))

(declare-fun d!2304812 () Bool)

(assert (=> d!2304812 e!4476441))

(declare-fun res!3011936 () Bool)

(assert (=> d!2304812 (=> (not res!3011936) (not e!4476441))))

(assert (=> d!2304812 (= res!3011936 (= (content!15308 lt!2635982) ((_ map or) (content!15308 (t!387100 testedP!204)) (content!15308 testedSuffix!164))))))

(assert (=> d!2304812 (= lt!2635982 e!4476440)))

(declare-fun c!1386092 () Bool)

(assert (=> d!2304812 (= c!1386092 ((_ is Nil!72407) (t!387100 testedP!204)))))

(assert (=> d!2304812 (= (++!17344 (t!387100 testedP!204) testedSuffix!164) lt!2635982)))

(assert (= (and d!2304812 c!1386092) b!7507365))

(assert (= (and d!2304812 (not c!1386092)) b!7507366))

(assert (= (and d!2304812 res!3011936) b!7507367))

(assert (= (and b!7507367 res!3011937) b!7507368))

(declare-fun m!8090402 () Bool)

(assert (=> b!7507366 m!8090402))

(declare-fun m!8090404 () Bool)

(assert (=> b!7507367 m!8090404))

(assert (=> b!7507367 m!8089434))

(assert (=> b!7507367 m!8089440))

(declare-fun m!8090406 () Bool)

(assert (=> d!2304812 m!8090406))

(assert (=> d!2304812 m!8090210))

(assert (=> d!2304812 m!8089446))

(assert (=> b!7506851 d!2304812))

(declare-fun d!2304814 () Bool)

(declare-fun c!1386093 () Bool)

(assert (=> d!2304814 (= c!1386093 ((_ is Nil!72407) lt!2635829))))

(declare-fun e!4476444 () (InoxSet C!39756))

(assert (=> d!2304814 (= (content!15308 lt!2635829) e!4476444)))

(declare-fun b!7507369 () Bool)

(assert (=> b!7507369 (= e!4476444 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507370 () Bool)

(assert (=> b!7507370 (= e!4476444 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635829) true) (content!15308 (t!387100 lt!2635829))))))

(assert (= (and d!2304814 c!1386093) b!7507369))

(assert (= (and d!2304814 (not c!1386093)) b!7507370))

(declare-fun m!8090408 () Bool)

(assert (=> b!7507370 m!8090408))

(declare-fun m!8090410 () Bool)

(assert (=> b!7507370 m!8090410))

(assert (=> d!2304540 d!2304814))

(declare-fun d!2304816 () Bool)

(declare-fun c!1386094 () Bool)

(assert (=> d!2304816 (= c!1386094 ((_ is Nil!72407) lt!2635545))))

(declare-fun e!4476445 () (InoxSet C!39756))

(assert (=> d!2304816 (= (content!15308 lt!2635545) e!4476445)))

(declare-fun b!7507371 () Bool)

(assert (=> b!7507371 (= e!4476445 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507372 () Bool)

(assert (=> b!7507372 (= e!4476445 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635545) true) (content!15308 (t!387100 lt!2635545))))))

(assert (= (and d!2304816 c!1386094) b!7507371))

(assert (= (and d!2304816 (not c!1386094)) b!7507372))

(declare-fun m!8090412 () Bool)

(assert (=> b!7507372 m!8090412))

(declare-fun m!8090414 () Bool)

(assert (=> b!7507372 m!8090414))

(assert (=> d!2304540 d!2304816))

(declare-fun d!2304818 () Bool)

(declare-fun c!1386095 () Bool)

(assert (=> d!2304818 (= c!1386095 ((_ is Nil!72407) lt!2635535))))

(declare-fun e!4476446 () (InoxSet C!39756))

(assert (=> d!2304818 (= (content!15308 lt!2635535) e!4476446)))

(declare-fun b!7507373 () Bool)

(assert (=> b!7507373 (= e!4476446 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507374 () Bool)

(assert (=> b!7507374 (= e!4476446 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635535) true) (content!15308 (t!387100 lt!2635535))))))

(assert (= (and d!2304818 c!1386095) b!7507373))

(assert (= (and d!2304818 (not c!1386095)) b!7507374))

(declare-fun m!8090416 () Bool)

(assert (=> b!7507374 m!8090416))

(declare-fun m!8090418 () Bool)

(assert (=> b!7507374 m!8090418))

(assert (=> d!2304540 d!2304818))

(declare-fun d!2304820 () Bool)

(declare-fun c!1386096 () Bool)

(assert (=> d!2304820 (= c!1386096 ((_ is Nil!72407) lt!2635834))))

(declare-fun e!4476447 () (InoxSet C!39756))

(assert (=> d!2304820 (= (content!15308 lt!2635834) e!4476447)))

(declare-fun b!7507375 () Bool)

(assert (=> b!7507375 (= e!4476447 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507376 () Bool)

(assert (=> b!7507376 (= e!4476447 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635834) true) (content!15308 (t!387100 lt!2635834))))))

(assert (= (and d!2304820 c!1386096) b!7507375))

(assert (= (and d!2304820 (not c!1386096)) b!7507376))

(declare-fun m!8090420 () Bool)

(assert (=> b!7507376 m!8090420))

(declare-fun m!8090422 () Bool)

(assert (=> b!7507376 m!8090422))

(assert (=> d!2304550 d!2304820))

(declare-fun d!2304822 () Bool)

(declare-fun c!1386097 () Bool)

(assert (=> d!2304822 (= c!1386097 ((_ is Nil!72407) (_1!37685 lt!2635546)))))

(declare-fun e!4476448 () (InoxSet C!39756))

(assert (=> d!2304822 (= (content!15308 (_1!37685 lt!2635546)) e!4476448)))

(declare-fun b!7507377 () Bool)

(assert (=> b!7507377 (= e!4476448 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507378 () Bool)

(assert (=> b!7507378 (= e!4476448 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 (_1!37685 lt!2635546)) true) (content!15308 (t!387100 (_1!37685 lt!2635546)))))))

(assert (= (and d!2304822 c!1386097) b!7507377))

(assert (= (and d!2304822 (not c!1386097)) b!7507378))

(declare-fun m!8090424 () Bool)

(assert (=> b!7507378 m!8090424))

(declare-fun m!8090426 () Bool)

(assert (=> b!7507378 m!8090426))

(assert (=> d!2304550 d!2304822))

(declare-fun d!2304824 () Bool)

(declare-fun c!1386098 () Bool)

(assert (=> d!2304824 (= c!1386098 ((_ is Nil!72407) (_2!37685 lt!2635546)))))

(declare-fun e!4476449 () (InoxSet C!39756))

(assert (=> d!2304824 (= (content!15308 (_2!37685 lt!2635546)) e!4476449)))

(declare-fun b!7507379 () Bool)

(assert (=> b!7507379 (= e!4476449 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507380 () Bool)

(assert (=> b!7507380 (= e!4476449 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 (_2!37685 lt!2635546)) true) (content!15308 (t!387100 (_2!37685 lt!2635546)))))))

(assert (= (and d!2304824 c!1386098) b!7507379))

(assert (= (and d!2304824 (not c!1386098)) b!7507380))

(declare-fun m!8090428 () Bool)

(assert (=> b!7507380 m!8090428))

(declare-fun m!8090430 () Bool)

(assert (=> b!7507380 m!8090430))

(assert (=> d!2304550 d!2304824))

(declare-fun b!7507382 () Bool)

(declare-fun e!4476450 () List!72531)

(assert (=> b!7507382 (= e!4476450 (Cons!72407 (h!78855 lt!2635545) (++!17344 (t!387100 lt!2635545) (Cons!72407 (head!15432 lt!2635535) Nil!72407))))))

(declare-fun b!7507381 () Bool)

(assert (=> b!7507381 (= e!4476450 (Cons!72407 (head!15432 lt!2635535) Nil!72407))))

(declare-fun b!7507383 () Bool)

(declare-fun res!3011939 () Bool)

(declare-fun e!4476451 () Bool)

(assert (=> b!7507383 (=> (not res!3011939) (not e!4476451))))

(declare-fun lt!2635986 () List!72531)

(assert (=> b!7507383 (= res!3011939 (= (size!42286 lt!2635986) (+ (size!42286 lt!2635545) (size!42286 (Cons!72407 (head!15432 lt!2635535) Nil!72407)))))))

(declare-fun b!7507384 () Bool)

(assert (=> b!7507384 (= e!4476451 (or (not (= (Cons!72407 (head!15432 lt!2635535) Nil!72407) Nil!72407)) (= lt!2635986 lt!2635545)))))

(declare-fun d!2304826 () Bool)

(assert (=> d!2304826 e!4476451))

(declare-fun res!3011938 () Bool)

(assert (=> d!2304826 (=> (not res!3011938) (not e!4476451))))

(assert (=> d!2304826 (= res!3011938 (= (content!15308 lt!2635986) ((_ map or) (content!15308 lt!2635545) (content!15308 (Cons!72407 (head!15432 lt!2635535) Nil!72407)))))))

(assert (=> d!2304826 (= lt!2635986 e!4476450)))

(declare-fun c!1386099 () Bool)

(assert (=> d!2304826 (= c!1386099 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304826 (= (++!17344 lt!2635545 (Cons!72407 (head!15432 lt!2635535) Nil!72407)) lt!2635986)))

(assert (= (and d!2304826 c!1386099) b!7507381))

(assert (= (and d!2304826 (not c!1386099)) b!7507382))

(assert (= (and d!2304826 res!3011938) b!7507383))

(assert (= (and b!7507383 res!3011939) b!7507384))

(declare-fun m!8090432 () Bool)

(assert (=> b!7507382 m!8090432))

(declare-fun m!8090434 () Bool)

(assert (=> b!7507383 m!8090434))

(assert (=> b!7507383 m!8089694))

(declare-fun m!8090436 () Bool)

(assert (=> b!7507383 m!8090436))

(declare-fun m!8090438 () Bool)

(assert (=> d!2304826 m!8090438))

(assert (=> d!2304826 m!8089788))

(declare-fun m!8090440 () Bool)

(assert (=> d!2304826 m!8090440))

(assert (=> b!7507061 d!2304826))

(declare-fun b!7507386 () Bool)

(declare-fun e!4476452 () List!72531)

(assert (=> b!7507386 (= e!4476452 (Cons!72407 (h!78855 lt!2635545) (++!17344 (t!387100 lt!2635545) (Cons!72407 lt!2635802 Nil!72407))))))

(declare-fun b!7507385 () Bool)

(assert (=> b!7507385 (= e!4476452 (Cons!72407 lt!2635802 Nil!72407))))

(declare-fun b!7507387 () Bool)

(declare-fun res!3011941 () Bool)

(declare-fun e!4476453 () Bool)

(assert (=> b!7507387 (=> (not res!3011941) (not e!4476453))))

(declare-fun lt!2635987 () List!72531)

(assert (=> b!7507387 (= res!3011941 (= (size!42286 lt!2635987) (+ (size!42286 lt!2635545) (size!42286 (Cons!72407 lt!2635802 Nil!72407)))))))

(declare-fun b!7507388 () Bool)

(assert (=> b!7507388 (= e!4476453 (or (not (= (Cons!72407 lt!2635802 Nil!72407) Nil!72407)) (= lt!2635987 lt!2635545)))))

(declare-fun d!2304828 () Bool)

(assert (=> d!2304828 e!4476453))

(declare-fun res!3011940 () Bool)

(assert (=> d!2304828 (=> (not res!3011940) (not e!4476453))))

(assert (=> d!2304828 (= res!3011940 (= (content!15308 lt!2635987) ((_ map or) (content!15308 lt!2635545) (content!15308 (Cons!72407 lt!2635802 Nil!72407)))))))

(assert (=> d!2304828 (= lt!2635987 e!4476452)))

(declare-fun c!1386100 () Bool)

(assert (=> d!2304828 (= c!1386100 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304828 (= (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407)) lt!2635987)))

(assert (= (and d!2304828 c!1386100) b!7507385))

(assert (= (and d!2304828 (not c!1386100)) b!7507386))

(assert (= (and d!2304828 res!3011940) b!7507387))

(assert (= (and b!7507387 res!3011941) b!7507388))

(declare-fun m!8090442 () Bool)

(assert (=> b!7507386 m!8090442))

(declare-fun m!8090446 () Bool)

(assert (=> b!7507387 m!8090446))

(assert (=> b!7507387 m!8089694))

(declare-fun m!8090448 () Bool)

(assert (=> b!7507387 m!8090448))

(declare-fun m!8090452 () Bool)

(assert (=> d!2304828 m!8090452))

(assert (=> d!2304828 m!8089788))

(declare-fun m!8090454 () Bool)

(assert (=> d!2304828 m!8090454))

(assert (=> b!7507061 d!2304828))

(declare-fun d!2304830 () Bool)

(assert (=> d!2304830 (= (tail!14999 lt!2635535) (t!387100 lt!2635535))))

(assert (=> b!7507061 d!2304830))

(declare-fun d!2304834 () Bool)

(assert (=> d!2304834 (<= (size!42286 lt!2635545) (size!42286 totalInput!779))))

(declare-fun lt!2635989 () Unit!166414)

(assert (=> d!2304834 (= lt!2635989 (choose!58150 lt!2635545 totalInput!779))))

(assert (=> d!2304834 (isPrefix!6009 lt!2635545 totalInput!779)))

(assert (=> d!2304834 (= (lemmaIsPrefixThenSmallerEqSize!996 lt!2635545 totalInput!779) lt!2635989)))

(declare-fun bs!1938397 () Bool)

(assert (= bs!1938397 d!2304834))

(assert (=> bs!1938397 m!8089694))

(assert (=> bs!1938397 m!8089416))

(declare-fun m!8090458 () Bool)

(assert (=> bs!1938397 m!8090458))

(declare-fun m!8090460 () Bool)

(assert (=> bs!1938397 m!8090460))

(assert (=> b!7507061 d!2304834))

(declare-fun d!2304836 () Bool)

(assert (=> d!2304836 (isPrefix!6009 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)) totalInput!779)))

(declare-fun lt!2635990 () Unit!166414)

(assert (=> d!2304836 (= lt!2635990 (choose!58149 lt!2635545 totalInput!779))))

(assert (=> d!2304836 (isPrefix!6009 lt!2635545 totalInput!779)))

(assert (=> d!2304836 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1126 lt!2635545 totalInput!779) lt!2635990)))

(declare-fun bs!1938398 () Bool)

(assert (= bs!1938398 d!2304836))

(assert (=> bs!1938398 m!8089706))

(assert (=> bs!1938398 m!8089706))

(assert (=> bs!1938398 m!8089708))

(assert (=> bs!1938398 m!8090460))

(declare-fun m!8090464 () Bool)

(assert (=> bs!1938398 m!8090464))

(assert (=> bs!1938398 m!8089716))

(assert (=> bs!1938398 m!8089716))

(assert (=> bs!1938398 m!8089718))

(assert (=> b!7507061 d!2304836))

(declare-fun b!7507392 () Bool)

(declare-fun e!4476455 () List!72531)

(assert (=> b!7507392 (= e!4476455 (Cons!72407 (h!78855 lt!2635545) (++!17344 (t!387100 lt!2635545) (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407))))))

(declare-fun b!7507391 () Bool)

(assert (=> b!7507391 (= e!4476455 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407))))

(declare-fun b!7507393 () Bool)

(declare-fun res!3011943 () Bool)

(declare-fun e!4476456 () Bool)

(assert (=> b!7507393 (=> (not res!3011943) (not e!4476456))))

(declare-fun lt!2635991 () List!72531)

(assert (=> b!7507393 (= res!3011943 (= (size!42286 lt!2635991) (+ (size!42286 lt!2635545) (size!42286 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)))))))

(declare-fun b!7507394 () Bool)

(assert (=> b!7507394 (= e!4476456 (or (not (= (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407) Nil!72407)) (= lt!2635991 lt!2635545)))))

(declare-fun d!2304842 () Bool)

(assert (=> d!2304842 e!4476456))

(declare-fun res!3011942 () Bool)

(assert (=> d!2304842 (=> (not res!3011942) (not e!4476456))))

(assert (=> d!2304842 (= res!3011942 (= (content!15308 lt!2635991) ((_ map or) (content!15308 lt!2635545) (content!15308 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)))))))

(assert (=> d!2304842 (= lt!2635991 e!4476455)))

(declare-fun c!1386102 () Bool)

(assert (=> d!2304842 (= c!1386102 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304842 (= (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)) lt!2635991)))

(assert (= (and d!2304842 c!1386102) b!7507391))

(assert (= (and d!2304842 (not c!1386102)) b!7507392))

(assert (= (and d!2304842 res!3011942) b!7507393))

(assert (= (and b!7507393 res!3011943) b!7507394))

(declare-fun m!8090466 () Bool)

(assert (=> b!7507392 m!8090466))

(declare-fun m!8090468 () Bool)

(assert (=> b!7507393 m!8090468))

(assert (=> b!7507393 m!8089694))

(declare-fun m!8090470 () Bool)

(assert (=> b!7507393 m!8090470))

(declare-fun m!8090472 () Bool)

(assert (=> d!2304842 m!8090472))

(assert (=> d!2304842 m!8089788))

(declare-fun m!8090474 () Bool)

(assert (=> d!2304842 m!8090474))

(assert (=> b!7507061 d!2304842))

(declare-fun d!2304844 () Bool)

(assert (=> d!2304844 (= (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) (h!78855 (getSuffix!3509 totalInput!779 lt!2635545)))))

(assert (=> b!7507061 d!2304844))

(declare-fun d!2304846 () Bool)

(assert (=> d!2304846 (= (++!17344 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407)) lt!2635812) totalInput!779)))

(declare-fun lt!2635992 () Unit!166414)

(assert (=> d!2304846 (= lt!2635992 (choose!58148 lt!2635545 lt!2635802 lt!2635812 totalInput!779))))

(assert (=> d!2304846 (= (++!17344 lt!2635545 (Cons!72407 lt!2635802 lt!2635812)) totalInput!779)))

(assert (=> d!2304846 (= (lemmaMoveElementToOtherListKeepsConcatEq!3157 lt!2635545 lt!2635802 lt!2635812 totalInput!779) lt!2635992)))

(declare-fun bs!1938399 () Bool)

(assert (= bs!1938399 d!2304846))

(assert (=> bs!1938399 m!8089702))

(assert (=> bs!1938399 m!8089702))

(assert (=> bs!1938399 m!8089704))

(declare-fun m!8090476 () Bool)

(assert (=> bs!1938399 m!8090476))

(declare-fun m!8090478 () Bool)

(assert (=> bs!1938399 m!8090478))

(assert (=> b!7507061 d!2304846))

(declare-fun e!4476459 () List!72531)

(declare-fun b!7507398 () Bool)

(assert (=> b!7507398 (= e!4476459 (Cons!72407 (h!78855 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407))) (++!17344 (t!387100 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407))) lt!2635812)))))

(declare-fun b!7507397 () Bool)

(assert (=> b!7507397 (= e!4476459 lt!2635812)))

(declare-fun b!7507399 () Bool)

(declare-fun res!3011947 () Bool)

(declare-fun e!4476460 () Bool)

(assert (=> b!7507399 (=> (not res!3011947) (not e!4476460))))

(declare-fun lt!2635995 () List!72531)

(assert (=> b!7507399 (= res!3011947 (= (size!42286 lt!2635995) (+ (size!42286 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407))) (size!42286 lt!2635812))))))

(declare-fun b!7507400 () Bool)

(assert (=> b!7507400 (= e!4476460 (or (not (= lt!2635812 Nil!72407)) (= lt!2635995 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407)))))))

(declare-fun d!2304848 () Bool)

(assert (=> d!2304848 e!4476460))

(declare-fun res!3011946 () Bool)

(assert (=> d!2304848 (=> (not res!3011946) (not e!4476460))))

(assert (=> d!2304848 (= res!3011946 (= (content!15308 lt!2635995) ((_ map or) (content!15308 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407))) (content!15308 lt!2635812))))))

(assert (=> d!2304848 (= lt!2635995 e!4476459)))

(declare-fun c!1386103 () Bool)

(assert (=> d!2304848 (= c!1386103 ((_ is Nil!72407) (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407))))))

(assert (=> d!2304848 (= (++!17344 (++!17344 lt!2635545 (Cons!72407 lt!2635802 Nil!72407)) lt!2635812) lt!2635995)))

(assert (= (and d!2304848 c!1386103) b!7507397))

(assert (= (and d!2304848 (not c!1386103)) b!7507398))

(assert (= (and d!2304848 res!3011946) b!7507399))

(assert (= (and b!7507399 res!3011947) b!7507400))

(declare-fun m!8090480 () Bool)

(assert (=> b!7507398 m!8090480))

(declare-fun m!8090482 () Bool)

(assert (=> b!7507399 m!8090482))

(assert (=> b!7507399 m!8089702))

(declare-fun m!8090484 () Bool)

(assert (=> b!7507399 m!8090484))

(declare-fun m!8090486 () Bool)

(assert (=> b!7507399 m!8090486))

(declare-fun m!8090488 () Bool)

(assert (=> d!2304848 m!8090488))

(assert (=> d!2304848 m!8089702))

(declare-fun m!8090490 () Bool)

(assert (=> d!2304848 m!8090490))

(declare-fun m!8090492 () Bool)

(assert (=> d!2304848 m!8090492))

(assert (=> b!7507061 d!2304848))

(assert (=> b!7507061 d!2304452))

(declare-fun d!2304850 () Bool)

(declare-fun lt!2635997 () List!72531)

(assert (=> d!2304850 (= (++!17344 lt!2635545 lt!2635997) totalInput!779)))

(declare-fun e!4476462 () List!72531)

(assert (=> d!2304850 (= lt!2635997 e!4476462)))

(declare-fun c!1386104 () Bool)

(assert (=> d!2304850 (= c!1386104 ((_ is Cons!72407) lt!2635545))))

(assert (=> d!2304850 (>= (size!42286 totalInput!779) (size!42286 lt!2635545))))

(assert (=> d!2304850 (= (getSuffix!3509 totalInput!779 lt!2635545) lt!2635997)))

(declare-fun b!7507402 () Bool)

(assert (=> b!7507402 (= e!4476462 (getSuffix!3509 (tail!14999 totalInput!779) (t!387100 lt!2635545)))))

(declare-fun b!7507403 () Bool)

(assert (=> b!7507403 (= e!4476462 totalInput!779)))

(assert (= (and d!2304850 c!1386104) b!7507402))

(assert (= (and d!2304850 (not c!1386104)) b!7507403))

(declare-fun m!8090500 () Bool)

(assert (=> d!2304850 m!8090500))

(assert (=> d!2304850 m!8089416))

(assert (=> d!2304850 m!8089694))

(assert (=> b!7507402 m!8089454))

(assert (=> b!7507402 m!8089454))

(declare-fun m!8090502 () Bool)

(assert (=> b!7507402 m!8090502))

(assert (=> b!7507061 d!2304850))

(declare-fun d!2304854 () Bool)

(declare-fun e!4476465 () Bool)

(assert (=> d!2304854 e!4476465))

(declare-fun res!3011952 () Bool)

(assert (=> d!2304854 (=> res!3011952 e!4476465)))

(declare-fun lt!2635999 () Bool)

(assert (=> d!2304854 (= res!3011952 (not lt!2635999))))

(declare-fun e!4476466 () Bool)

(assert (=> d!2304854 (= lt!2635999 e!4476466)))

(declare-fun res!3011949 () Bool)

(assert (=> d!2304854 (=> res!3011949 e!4476466)))

(assert (=> d!2304854 (= res!3011949 ((_ is Nil!72407) (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407))))))

(assert (=> d!2304854 (= (isPrefix!6009 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)) totalInput!779) lt!2635999)))

(declare-fun b!7507406 () Bool)

(declare-fun e!4476464 () Bool)

(assert (=> b!7507406 (= e!4476466 e!4476464)))

(declare-fun res!3011950 () Bool)

(assert (=> b!7507406 (=> (not res!3011950) (not e!4476464))))

(assert (=> b!7507406 (= res!3011950 (not ((_ is Nil!72407) totalInput!779)))))

(declare-fun b!7507407 () Bool)

(declare-fun res!3011951 () Bool)

(assert (=> b!7507407 (=> (not res!3011951) (not e!4476464))))

(assert (=> b!7507407 (= res!3011951 (= (head!15432 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407))) (head!15432 totalInput!779)))))

(declare-fun b!7507409 () Bool)

(assert (=> b!7507409 (= e!4476465 (>= (size!42286 totalInput!779) (size!42286 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407)))))))

(declare-fun b!7507408 () Bool)

(assert (=> b!7507408 (= e!4476464 (isPrefix!6009 (tail!14999 (++!17344 lt!2635545 (Cons!72407 (head!15432 (getSuffix!3509 totalInput!779 lt!2635545)) Nil!72407))) (tail!14999 totalInput!779)))))

(assert (= (and d!2304854 (not res!3011949)) b!7507406))

(assert (= (and b!7507406 res!3011950) b!7507407))

(assert (= (and b!7507407 res!3011951) b!7507408))

(assert (= (and d!2304854 (not res!3011952)) b!7507409))

(assert (=> b!7507407 m!8089716))

(declare-fun m!8090506 () Bool)

(assert (=> b!7507407 m!8090506))

(assert (=> b!7507407 m!8089450))

(assert (=> b!7507409 m!8089416))

(assert (=> b!7507409 m!8089716))

(declare-fun m!8090508 () Bool)

(assert (=> b!7507409 m!8090508))

(assert (=> b!7507408 m!8089716))

(declare-fun m!8090510 () Bool)

(assert (=> b!7507408 m!8090510))

(assert (=> b!7507408 m!8089454))

(assert (=> b!7507408 m!8090510))

(assert (=> b!7507408 m!8089454))

(declare-fun m!8090512 () Bool)

(assert (=> b!7507408 m!8090512))

(assert (=> b!7507061 d!2304854))

(assert (=> b!7507061 d!2304638))

(assert (=> b!7507061 d!2304734))

(declare-fun d!2304858 () Bool)

(declare-fun lt!2636000 () Int)

(assert (=> d!2304858 (>= lt!2636000 0)))

(declare-fun e!4476467 () Int)

(assert (=> d!2304858 (= lt!2636000 e!4476467)))

(declare-fun c!1386106 () Bool)

(assert (=> d!2304858 (= c!1386106 ((_ is Nil!72407) (t!387100 (_1!37685 lt!2635546))))))

(assert (=> d!2304858 (= (size!42286 (t!387100 (_1!37685 lt!2635546))) lt!2636000)))

(declare-fun b!7507410 () Bool)

(assert (=> b!7507410 (= e!4476467 0)))

(declare-fun b!7507411 () Bool)

(assert (=> b!7507411 (= e!4476467 (+ 1 (size!42286 (t!387100 (t!387100 (_1!37685 lt!2635546))))))))

(assert (= (and d!2304858 c!1386106) b!7507410))

(assert (= (and d!2304858 (not c!1386106)) b!7507411))

(declare-fun m!8090514 () Bool)

(assert (=> b!7507411 m!8090514))

(assert (=> b!7506871 d!2304858))

(declare-fun d!2304862 () Bool)

(declare-fun c!1386108 () Bool)

(assert (=> d!2304862 (= c!1386108 ((_ is Nil!72407) lt!2635825))))

(declare-fun e!4476469 () (InoxSet C!39756))

(assert (=> d!2304862 (= (content!15308 lt!2635825) e!4476469)))

(declare-fun b!7507414 () Bool)

(assert (=> b!7507414 (= e!4476469 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507415 () Bool)

(assert (=> b!7507415 (= e!4476469 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635825) true) (content!15308 (t!387100 lt!2635825))))))

(assert (= (and d!2304862 c!1386108) b!7507414))

(assert (= (and d!2304862 (not c!1386108)) b!7507415))

(declare-fun m!8090518 () Bool)

(assert (=> b!7507415 m!8090518))

(declare-fun m!8090520 () Bool)

(assert (=> b!7507415 m!8090520))

(assert (=> d!2304536 d!2304862))

(assert (=> d!2304536 d!2304744))

(declare-fun d!2304864 () Bool)

(declare-fun c!1386109 () Bool)

(assert (=> d!2304864 (= c!1386109 ((_ is Nil!72407) (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))

(declare-fun e!4476470 () (InoxSet C!39756))

(assert (=> d!2304864 (= (content!15308 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) e!4476470)))

(declare-fun b!7507416 () Bool)

(assert (=> b!7507416 (= e!4476470 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507417 () Bool)

(assert (=> b!7507417 (= e!4476470 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) true) (content!15308 (t!387100 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(assert (= (and d!2304864 c!1386109) b!7507416))

(assert (= (and d!2304864 (not c!1386109)) b!7507417))

(declare-fun m!8090522 () Bool)

(assert (=> b!7507417 m!8090522))

(declare-fun m!8090524 () Bool)

(assert (=> b!7507417 m!8090524))

(assert (=> d!2304536 d!2304864))

(declare-fun b!7507421 () Bool)

(declare-fun e!4476472 () List!72531)

(assert (=> b!7507421 (= e!4476472 (Cons!72407 (h!78855 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407))) (++!17344 (t!387100 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407))) lt!2635535)))))

(declare-fun b!7507420 () Bool)

(assert (=> b!7507420 (= e!4476472 lt!2635535)))

(declare-fun b!7507423 () Bool)

(declare-fun res!3011954 () Bool)

(declare-fun e!4476473 () Bool)

(assert (=> b!7507423 (=> (not res!3011954) (not e!4476473))))

(declare-fun lt!2636002 () List!72531)

(assert (=> b!7507423 (= res!3011954 (= (size!42286 lt!2636002) (+ (size!42286 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407))) (size!42286 lt!2635535))))))

(declare-fun b!7507424 () Bool)

(assert (=> b!7507424 (= e!4476473 (or (not (= lt!2635535 Nil!72407)) (= lt!2636002 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)))))))

(declare-fun d!2304866 () Bool)

(assert (=> d!2304866 e!4476473))

(declare-fun res!3011953 () Bool)

(assert (=> d!2304866 (=> (not res!3011953) (not e!4476473))))

(assert (=> d!2304866 (= res!3011953 (= (content!15308 lt!2636002) ((_ map or) (content!15308 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407))) (content!15308 lt!2635535))))))

(assert (=> d!2304866 (= lt!2636002 e!4476472)))

(declare-fun c!1386110 () Bool)

(assert (=> d!2304866 (= c!1386110 ((_ is Nil!72407) (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407))))))

(assert (=> d!2304866 (= (++!17344 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)) lt!2635535) lt!2636002)))

(assert (= (and d!2304866 c!1386110) b!7507420))

(assert (= (and d!2304866 (not c!1386110)) b!7507421))

(assert (= (and d!2304866 res!3011953) b!7507423))

(assert (= (and b!7507423 res!3011954) b!7507424))

(declare-fun m!8090526 () Bool)

(assert (=> b!7507421 m!8090526))

(declare-fun m!8090528 () Bool)

(assert (=> b!7507423 m!8090528))

(assert (=> b!7507423 m!8089396))

(declare-fun m!8090530 () Bool)

(assert (=> b!7507423 m!8090530))

(assert (=> b!7507423 m!8089784))

(declare-fun m!8090532 () Bool)

(assert (=> d!2304866 m!8090532))

(assert (=> d!2304866 m!8089396))

(declare-fun m!8090534 () Bool)

(assert (=> d!2304866 m!8090534))

(assert (=> d!2304866 m!8089790))

(assert (=> d!2304528 d!2304866))

(assert (=> d!2304528 d!2304544))

(declare-fun d!2304868 () Bool)

(assert (=> d!2304868 (= (++!17344 (++!17344 testedP!204 (Cons!72407 lt!2635544 Nil!72407)) lt!2635535) totalInput!779)))

(assert (=> d!2304868 true))

(declare-fun _$68!1393 () Unit!166414)

(assert (=> d!2304868 (= (choose!58148 testedP!204 lt!2635544 lt!2635535 totalInput!779) _$68!1393)))

(declare-fun bs!1938400 () Bool)

(assert (= bs!1938400 d!2304868))

(assert (=> bs!1938400 m!8089396))

(assert (=> bs!1938400 m!8089396))

(assert (=> bs!1938400 m!8089746))

(assert (=> d!2304528 d!2304868))

(declare-fun e!4476482 () List!72531)

(declare-fun b!7507443 () Bool)

(assert (=> b!7507443 (= e!4476482 (Cons!72407 (h!78855 testedP!204) (++!17344 (t!387100 testedP!204) (Cons!72407 lt!2635544 lt!2635535))))))

(declare-fun b!7507442 () Bool)

(assert (=> b!7507442 (= e!4476482 (Cons!72407 lt!2635544 lt!2635535))))

(declare-fun b!7507444 () Bool)

(declare-fun res!3011956 () Bool)

(declare-fun e!4476483 () Bool)

(assert (=> b!7507444 (=> (not res!3011956) (not e!4476483))))

(declare-fun lt!2636003 () List!72531)

(assert (=> b!7507444 (= res!3011956 (= (size!42286 lt!2636003) (+ (size!42286 testedP!204) (size!42286 (Cons!72407 lt!2635544 lt!2635535)))))))

(declare-fun b!7507445 () Bool)

(assert (=> b!7507445 (= e!4476483 (or (not (= (Cons!72407 lt!2635544 lt!2635535) Nil!72407)) (= lt!2636003 testedP!204)))))

(declare-fun d!2304872 () Bool)

(assert (=> d!2304872 e!4476483))

(declare-fun res!3011955 () Bool)

(assert (=> d!2304872 (=> (not res!3011955) (not e!4476483))))

(assert (=> d!2304872 (= res!3011955 (= (content!15308 lt!2636003) ((_ map or) (content!15308 testedP!204) (content!15308 (Cons!72407 lt!2635544 lt!2635535)))))))

(assert (=> d!2304872 (= lt!2636003 e!4476482)))

(declare-fun c!1386111 () Bool)

(assert (=> d!2304872 (= c!1386111 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304872 (= (++!17344 testedP!204 (Cons!72407 lt!2635544 lt!2635535)) lt!2636003)))

(assert (= (and d!2304872 c!1386111) b!7507442))

(assert (= (and d!2304872 (not c!1386111)) b!7507443))

(assert (= (and d!2304872 res!3011955) b!7507444))

(assert (= (and b!7507444 res!3011956) b!7507445))

(declare-fun m!8090540 () Bool)

(assert (=> b!7507443 m!8090540))

(declare-fun m!8090542 () Bool)

(assert (=> b!7507444 m!8090542))

(assert (=> b!7507444 m!8089426))

(declare-fun m!8090544 () Bool)

(assert (=> b!7507444 m!8090544))

(declare-fun m!8090546 () Bool)

(assert (=> d!2304872 m!8090546))

(assert (=> d!2304872 m!8089444))

(declare-fun m!8090548 () Bool)

(assert (=> d!2304872 m!8090548))

(assert (=> d!2304528 d!2304872))

(declare-fun d!2304874 () Bool)

(declare-fun e!4476485 () Bool)

(assert (=> d!2304874 e!4476485))

(declare-fun res!3011960 () Bool)

(assert (=> d!2304874 (=> res!3011960 e!4476485)))

(declare-fun lt!2636004 () Bool)

(assert (=> d!2304874 (= res!3011960 (not lt!2636004))))

(declare-fun e!4476486 () Bool)

(assert (=> d!2304874 (= lt!2636004 e!4476486)))

(declare-fun res!3011957 () Bool)

(assert (=> d!2304874 (=> res!3011957 e!4476486)))

(assert (=> d!2304874 (= res!3011957 ((_ is Nil!72407) testedP!204))))

(assert (=> d!2304874 (= (isPrefix!6009 testedP!204 (++!17344 testedP!204 testedSuffix!164)) lt!2636004)))

(declare-fun b!7507446 () Bool)

(declare-fun e!4476484 () Bool)

(assert (=> b!7507446 (= e!4476486 e!4476484)))

(declare-fun res!3011958 () Bool)

(assert (=> b!7507446 (=> (not res!3011958) (not e!4476484))))

(assert (=> b!7507446 (= res!3011958 (not ((_ is Nil!72407) (++!17344 testedP!204 testedSuffix!164))))))

(declare-fun b!7507447 () Bool)

(declare-fun res!3011959 () Bool)

(assert (=> b!7507447 (=> (not res!3011959) (not e!4476484))))

(assert (=> b!7507447 (= res!3011959 (= (head!15432 testedP!204) (head!15432 (++!17344 testedP!204 testedSuffix!164))))))

(declare-fun b!7507449 () Bool)

(assert (=> b!7507449 (= e!4476485 (>= (size!42286 (++!17344 testedP!204 testedSuffix!164)) (size!42286 testedP!204)))))

(declare-fun b!7507448 () Bool)

(assert (=> b!7507448 (= e!4476484 (isPrefix!6009 (tail!14999 testedP!204) (tail!14999 (++!17344 testedP!204 testedSuffix!164))))))

(assert (= (and d!2304874 (not res!3011957)) b!7507446))

(assert (= (and b!7507446 res!3011958) b!7507447))

(assert (= (and b!7507447 res!3011959) b!7507448))

(assert (= (and d!2304874 (not res!3011960)) b!7507449))

(assert (=> b!7507447 m!8089448))

(assert (=> b!7507447 m!8089376))

(declare-fun m!8090550 () Bool)

(assert (=> b!7507447 m!8090550))

(assert (=> b!7507449 m!8089376))

(declare-fun m!8090552 () Bool)

(assert (=> b!7507449 m!8090552))

(assert (=> b!7507449 m!8089426))

(assert (=> b!7507448 m!8089452))

(assert (=> b!7507448 m!8089376))

(declare-fun m!8090554 () Bool)

(assert (=> b!7507448 m!8090554))

(assert (=> b!7507448 m!8089452))

(assert (=> b!7507448 m!8090554))

(declare-fun m!8090556 () Bool)

(assert (=> b!7507448 m!8090556))

(assert (=> d!2304448 d!2304874))

(assert (=> d!2304448 d!2304442))

(declare-fun d!2304876 () Bool)

(assert (=> d!2304876 (isPrefix!6009 testedP!204 (++!17344 testedP!204 testedSuffix!164))))

(assert (=> d!2304876 true))

(declare-fun _$46!2085 () Unit!166414)

(assert (=> d!2304876 (= (choose!58141 testedP!204 testedSuffix!164) _$46!2085)))

(declare-fun bs!1938402 () Bool)

(assert (= bs!1938402 d!2304876))

(assert (=> bs!1938402 m!8089376))

(assert (=> bs!1938402 m!8089376))

(assert (=> bs!1938402 m!8089466))

(assert (=> d!2304448 d!2304876))

(declare-fun d!2304878 () Bool)

(declare-fun lt!2636005 () Int)

(assert (=> d!2304878 (>= lt!2636005 0)))

(declare-fun e!4476487 () Int)

(assert (=> d!2304878 (= lt!2636005 e!4476487)))

(declare-fun c!1386112 () Bool)

(assert (=> d!2304878 (= c!1386112 ((_ is Nil!72407) (t!387100 testedP!204)))))

(assert (=> d!2304878 (= (size!42286 (t!387100 testedP!204)) lt!2636005)))

(declare-fun b!7507450 () Bool)

(assert (=> b!7507450 (= e!4476487 0)))

(declare-fun b!7507451 () Bool)

(assert (=> b!7507451 (= e!4476487 (+ 1 (size!42286 (t!387100 (t!387100 testedP!204)))))))

(assert (= (and d!2304878 c!1386112) b!7507450))

(assert (= (and d!2304878 (not c!1386112)) b!7507451))

(declare-fun m!8090558 () Bool)

(assert (=> b!7507451 m!8090558))

(assert (=> b!7506841 d!2304878))

(assert (=> bm!688781 d!2304456))

(declare-fun bs!1938403 () Bool)

(declare-fun d!2304880 () Bool)

(assert (= bs!1938403 (and d!2304880 b!7506973)))

(declare-fun lambda!465546 () Int)

(assert (=> bs!1938403 (not (= lambda!465546 lambda!465482))))

(declare-fun bs!1938404 () Bool)

(assert (= bs!1938404 (and d!2304880 d!2304530)))

(assert (=> bs!1938404 (not (= lambda!465546 lambda!465509))))

(declare-fun bs!1938405 () Bool)

(assert (= bs!1938405 (and d!2304880 d!2304762)))

(assert (=> bs!1938405 (not (= lambda!465546 lambda!465539))))

(declare-fun bs!1938406 () Bool)

(assert (= bs!1938406 (and d!2304880 d!2304460)))

(assert (=> bs!1938406 (not (= lambda!465546 lambda!465480))))

(declare-fun bs!1938407 () Bool)

(assert (= bs!1938407 (and d!2304880 b!7506972)))

(assert (=> bs!1938407 (not (= lambda!465546 lambda!465481))))

(declare-fun bs!1938408 () Bool)

(assert (= bs!1938408 (and d!2304880 d!2304684)))

(assert (=> bs!1938408 (= lambda!465546 lambda!465527)))

(assert (=> d!2304880 true))

(assert (=> d!2304880 (< (dynLambda!29780 order!29651 lambda!465480) (dynLambda!29780 order!29651 lambda!465546))))

(assert (=> d!2304880 (not (exists!4867 lt!2635691 lambda!465546))))

(declare-fun lt!2636008 () Unit!166414)

(declare-fun choose!58160 (List!72534 Int) Unit!166414)

(assert (=> d!2304880 (= lt!2636008 (choose!58160 lt!2635691 lambda!465480))))

(assert (=> d!2304880 (forall!18297 lt!2635691 lambda!465480)))

(assert (=> d!2304880 (= (lemmaForallThenNotExists!472 lt!2635691 lambda!465480) lt!2636008)))

(declare-fun bs!1938409 () Bool)

(assert (= bs!1938409 d!2304880))

(declare-fun m!8090560 () Bool)

(assert (=> bs!1938409 m!8090560))

(declare-fun m!8090562 () Bool)

(assert (=> bs!1938409 m!8090562))

(declare-fun m!8090564 () Bool)

(assert (=> bs!1938409 m!8090564))

(assert (=> b!7506973 d!2304880))

(declare-fun d!2304882 () Bool)

(declare-fun c!1386113 () Bool)

(assert (=> d!2304882 (= c!1386113 ((_ is Nil!72407) lt!2635830))))

(declare-fun e!4476490 () (InoxSet C!39756))

(assert (=> d!2304882 (= (content!15308 lt!2635830) e!4476490)))

(declare-fun b!7507452 () Bool)

(assert (=> b!7507452 (= e!4476490 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507453 () Bool)

(assert (=> b!7507453 (= e!4476490 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 lt!2635830) true) (content!15308 (t!387100 lt!2635830))))))

(assert (= (and d!2304882 c!1386113) b!7507452))

(assert (= (and d!2304882 (not c!1386113)) b!7507453))

(declare-fun m!8090566 () Bool)

(assert (=> b!7507453 m!8090566))

(declare-fun m!8090568 () Bool)

(assert (=> b!7507453 m!8090568))

(assert (=> d!2304544 d!2304882))

(assert (=> d!2304544 d!2304744))

(declare-fun d!2304884 () Bool)

(declare-fun c!1386114 () Bool)

(assert (=> d!2304884 (= c!1386114 ((_ is Nil!72407) (Cons!72407 lt!2635544 Nil!72407)))))

(declare-fun e!4476491 () (InoxSet C!39756))

(assert (=> d!2304884 (= (content!15308 (Cons!72407 lt!2635544 Nil!72407)) e!4476491)))

(declare-fun b!7507454 () Bool)

(assert (=> b!7507454 (= e!4476491 ((as const (Array C!39756 Bool)) false))))

(declare-fun b!7507455 () Bool)

(assert (=> b!7507455 (= e!4476491 ((_ map or) (store ((as const (Array C!39756 Bool)) false) (h!78855 (Cons!72407 lt!2635544 Nil!72407)) true) (content!15308 (t!387100 (Cons!72407 lt!2635544 Nil!72407)))))))

(assert (= (and d!2304884 c!1386114) b!7507454))

(assert (= (and d!2304884 (not c!1386114)) b!7507455))

(declare-fun m!8090570 () Bool)

(assert (=> b!7507455 m!8090570))

(declare-fun m!8090572 () Bool)

(assert (=> b!7507455 m!8090572))

(assert (=> d!2304544 d!2304884))

(declare-fun b!7507457 () Bool)

(declare-fun e!4476492 () List!72531)

(assert (=> b!7507457 (= e!4476492 (Cons!72407 (h!78855 (t!387100 lt!2635545)) (++!17344 (t!387100 (t!387100 lt!2635545)) lt!2635535)))))

(declare-fun b!7507456 () Bool)

(assert (=> b!7507456 (= e!4476492 lt!2635535)))

(declare-fun b!7507458 () Bool)

(declare-fun res!3011962 () Bool)

(declare-fun e!4476493 () Bool)

(assert (=> b!7507458 (=> (not res!3011962) (not e!4476493))))

(declare-fun lt!2636009 () List!72531)

(assert (=> b!7507458 (= res!3011962 (= (size!42286 lt!2636009) (+ (size!42286 (t!387100 lt!2635545)) (size!42286 lt!2635535))))))

(declare-fun b!7507459 () Bool)

(assert (=> b!7507459 (= e!4476493 (or (not (= lt!2635535 Nil!72407)) (= lt!2636009 (t!387100 lt!2635545))))))

(declare-fun d!2304886 () Bool)

(assert (=> d!2304886 e!4476493))

(declare-fun res!3011961 () Bool)

(assert (=> d!2304886 (=> (not res!3011961) (not e!4476493))))

(assert (=> d!2304886 (= res!3011961 (= (content!15308 lt!2636009) ((_ map or) (content!15308 (t!387100 lt!2635545)) (content!15308 lt!2635535))))))

(assert (=> d!2304886 (= lt!2636009 e!4476492)))

(declare-fun c!1386115 () Bool)

(assert (=> d!2304886 (= c!1386115 ((_ is Nil!72407) (t!387100 lt!2635545)))))

(assert (=> d!2304886 (= (++!17344 (t!387100 lt!2635545) lt!2635535) lt!2636009)))

(assert (= (and d!2304886 c!1386115) b!7507456))

(assert (= (and d!2304886 (not c!1386115)) b!7507457))

(assert (= (and d!2304886 res!3011961) b!7507458))

(assert (= (and b!7507458 res!3011962) b!7507459))

(declare-fun m!8090574 () Bool)

(assert (=> b!7507457 m!8090574))

(declare-fun m!8090576 () Bool)

(assert (=> b!7507458 m!8090576))

(assert (=> b!7507458 m!8090198))

(assert (=> b!7507458 m!8089784))

(declare-fun m!8090578 () Bool)

(assert (=> d!2304886 m!8090578))

(assert (=> d!2304886 m!8090414))

(assert (=> d!2304886 m!8089790))

(assert (=> b!7507078 d!2304886))

(declare-fun bs!1938410 () Bool)

(declare-fun d!2304888 () Bool)

(assert (= bs!1938410 (and d!2304888 b!7506973)))

(declare-fun lambda!465547 () Int)

(assert (=> bs!1938410 (not (= lambda!465547 lambda!465482))))

(declare-fun bs!1938411 () Bool)

(assert (= bs!1938411 (and d!2304888 d!2304530)))

(assert (=> bs!1938411 (not (= lambda!465547 lambda!465509))))

(declare-fun bs!1938412 () Bool)

(assert (= bs!1938412 (and d!2304888 d!2304762)))

(assert (=> bs!1938412 (not (= lambda!465547 lambda!465539))))

(declare-fun bs!1938413 () Bool)

(assert (= bs!1938413 (and d!2304888 d!2304460)))

(assert (=> bs!1938413 (= lambda!465547 lambda!465480)))

(declare-fun bs!1938414 () Bool)

(assert (= bs!1938414 (and d!2304888 b!7506972)))

(assert (=> bs!1938414 (not (= lambda!465547 lambda!465481))))

(declare-fun bs!1938415 () Bool)

(assert (= bs!1938415 (and d!2304888 d!2304684)))

(assert (=> bs!1938415 (not (= lambda!465547 lambda!465527))))

(declare-fun bs!1938416 () Bool)

(assert (= bs!1938416 (and d!2304888 d!2304880)))

(assert (=> bs!1938416 (not (= lambda!465547 lambda!465546))))

(declare-fun bs!1938417 () Bool)

(declare-fun b!7507460 () Bool)

(assert (= bs!1938417 (and b!7507460 b!7506973)))

(declare-fun lambda!465548 () Int)

(assert (=> bs!1938417 (= lambda!465548 lambda!465482)))

(declare-fun bs!1938418 () Bool)

(assert (= bs!1938418 (and b!7507460 d!2304530)))

(assert (=> bs!1938418 (not (= lambda!465548 lambda!465509))))

(declare-fun bs!1938419 () Bool)

(assert (= bs!1938419 (and b!7507460 d!2304762)))

(assert (=> bs!1938419 (= lambda!465548 lambda!465539)))

(declare-fun bs!1938420 () Bool)

(assert (= bs!1938420 (and b!7507460 d!2304460)))

(assert (=> bs!1938420 (not (= lambda!465548 lambda!465480))))

(declare-fun bs!1938421 () Bool)

(assert (= bs!1938421 (and b!7507460 b!7506972)))

(assert (=> bs!1938421 (= lambda!465548 lambda!465481)))

(declare-fun bs!1938422 () Bool)

(assert (= bs!1938422 (and b!7507460 d!2304888)))

(assert (=> bs!1938422 (not (= lambda!465548 lambda!465547))))

(declare-fun bs!1938423 () Bool)

(assert (= bs!1938423 (and b!7507460 d!2304684)))

(assert (=> bs!1938423 (not (= lambda!465548 lambda!465527))))

(declare-fun bs!1938424 () Bool)

(assert (= bs!1938424 (and b!7507460 d!2304880)))

(assert (=> bs!1938424 (not (= lambda!465548 lambda!465546))))

(declare-fun bs!1938425 () Bool)

(declare-fun b!7507461 () Bool)

(assert (= bs!1938425 (and b!7507461 b!7506973)))

(declare-fun lambda!465549 () Int)

(assert (=> bs!1938425 (= lambda!465549 lambda!465482)))

(declare-fun bs!1938426 () Bool)

(assert (= bs!1938426 (and b!7507461 d!2304530)))

(assert (=> bs!1938426 (not (= lambda!465549 lambda!465509))))

(declare-fun bs!1938427 () Bool)

(assert (= bs!1938427 (and b!7507461 d!2304762)))

(assert (=> bs!1938427 (= lambda!465549 lambda!465539)))

(declare-fun bs!1938428 () Bool)

(assert (= bs!1938428 (and b!7507461 b!7507460)))

(assert (=> bs!1938428 (= lambda!465549 lambda!465548)))

(declare-fun bs!1938429 () Bool)

(assert (= bs!1938429 (and b!7507461 d!2304460)))

(assert (=> bs!1938429 (not (= lambda!465549 lambda!465480))))

(declare-fun bs!1938430 () Bool)

(assert (= bs!1938430 (and b!7507461 b!7506972)))

(assert (=> bs!1938430 (= lambda!465549 lambda!465481)))

(declare-fun bs!1938431 () Bool)

(assert (= bs!1938431 (and b!7507461 d!2304888)))

(assert (=> bs!1938431 (not (= lambda!465549 lambda!465547))))

(declare-fun bs!1938432 () Bool)

(assert (= bs!1938432 (and b!7507461 d!2304684)))

(assert (=> bs!1938432 (not (= lambda!465549 lambda!465527))))

(declare-fun bs!1938433 () Bool)

(assert (= bs!1938433 (and b!7507461 d!2304880)))

(assert (=> bs!1938433 (not (= lambda!465549 lambda!465546))))

(declare-fun e!4476494 () Unit!166414)

(declare-fun Unit!166433 () Unit!166414)

(assert (=> b!7507461 (= e!4476494 Unit!166433)))

(declare-fun lt!2636012 () List!72534)

(declare-fun call!688808 () List!72534)

(assert (=> b!7507461 (= lt!2636012 call!688808)))

(declare-fun lt!2636015 () Unit!166414)

(assert (=> b!7507461 (= lt!2636015 (lemmaForallThenNotExists!472 lt!2636012 lambda!465547))))

(declare-fun call!688807 () Bool)

(assert (=> b!7507461 (not call!688807)))

(declare-fun lt!2636013 () Unit!166414)

(assert (=> b!7507461 (= lt!2636013 lt!2636015)))

(declare-fun lt!2636011 () Bool)

(assert (=> d!2304888 (= lt!2636011 (isEmpty!41316 (getLanguageWitness!1054 (derivationStepZipper!3726 z!3716 lt!2635544))))))

(assert (=> d!2304888 (= lt!2636011 (forall!18295 (derivationStepZipper!3726 z!3716 lt!2635544) lambda!465547))))

(declare-fun lt!2636016 () Unit!166414)

(assert (=> d!2304888 (= lt!2636016 e!4476494)))

(declare-fun c!1386116 () Bool)

(assert (=> d!2304888 (= c!1386116 (not (forall!18295 (derivationStepZipper!3726 z!3716 lt!2635544) lambda!465547)))))

(assert (=> d!2304888 (= (lostCauseZipper!1403 (derivationStepZipper!3726 z!3716 lt!2635544)) lt!2636011)))

(declare-fun bm!688802 () Bool)

(assert (=> bm!688802 (= call!688808 (toList!11834 (derivationStepZipper!3726 z!3716 lt!2635544)))))

(declare-fun Unit!166434 () Unit!166414)

(assert (=> b!7507460 (= e!4476494 Unit!166434)))

(declare-fun lt!2636017 () List!72534)

(assert (=> b!7507460 (= lt!2636017 call!688808)))

(declare-fun lt!2636010 () Unit!166414)

(assert (=> b!7507460 (= lt!2636010 (lemmaNotForallThenExists!505 lt!2636017 lambda!465547))))

(assert (=> b!7507460 call!688807))

(declare-fun lt!2636014 () Unit!166414)

(assert (=> b!7507460 (= lt!2636014 lt!2636010)))

(declare-fun bm!688803 () Bool)

(assert (=> bm!688803 (= call!688807 (exists!4867 (ite c!1386116 lt!2636017 lt!2636012) (ite c!1386116 lambda!465548 lambda!465549)))))

(assert (= (and d!2304888 c!1386116) b!7507460))

(assert (= (and d!2304888 (not c!1386116)) b!7507461))

(assert (= (or b!7507460 b!7507461) bm!688802))

(assert (= (or b!7507460 b!7507461) bm!688803))

(declare-fun m!8090580 () Bool)

(assert (=> bm!688803 m!8090580))

(assert (=> d!2304888 m!8089422))

(declare-fun m!8090582 () Bool)

(assert (=> d!2304888 m!8090582))

(assert (=> d!2304888 m!8090582))

(declare-fun m!8090584 () Bool)

(assert (=> d!2304888 m!8090584))

(assert (=> d!2304888 m!8089422))

(declare-fun m!8090586 () Bool)

(assert (=> d!2304888 m!8090586))

(assert (=> d!2304888 m!8089422))

(assert (=> d!2304888 m!8090586))

(declare-fun m!8090588 () Bool)

(assert (=> b!7507461 m!8090588))

(declare-fun m!8090590 () Bool)

(assert (=> b!7507460 m!8090590))

(assert (=> bm!688802 m!8089422))

(declare-fun m!8090592 () Bool)

(assert (=> bm!688802 m!8090592))

(assert (=> d!2304506 d!2304888))

(declare-fun b!7507463 () Bool)

(declare-fun e!4476495 () List!72531)

(assert (=> b!7507463 (= e!4476495 (Cons!72407 (h!78855 (_1!37685 lt!2635801)) (++!17344 (t!387100 (_1!37685 lt!2635801)) (_2!37685 lt!2635801))))))

(declare-fun b!7507462 () Bool)

(assert (=> b!7507462 (= e!4476495 (_2!37685 lt!2635801))))

(declare-fun b!7507464 () Bool)

(declare-fun res!3011964 () Bool)

(declare-fun e!4476496 () Bool)

(assert (=> b!7507464 (=> (not res!3011964) (not e!4476496))))

(declare-fun lt!2636018 () List!72531)

(assert (=> b!7507464 (= res!3011964 (= (size!42286 lt!2636018) (+ (size!42286 (_1!37685 lt!2635801)) (size!42286 (_2!37685 lt!2635801)))))))

(declare-fun b!7507465 () Bool)

(assert (=> b!7507465 (= e!4476496 (or (not (= (_2!37685 lt!2635801) Nil!72407)) (= lt!2636018 (_1!37685 lt!2635801))))))

(declare-fun d!2304890 () Bool)

(assert (=> d!2304890 e!4476496))

(declare-fun res!3011963 () Bool)

(assert (=> d!2304890 (=> (not res!3011963) (not e!4476496))))

(assert (=> d!2304890 (= res!3011963 (= (content!15308 lt!2636018) ((_ map or) (content!15308 (_1!37685 lt!2635801)) (content!15308 (_2!37685 lt!2635801)))))))

(assert (=> d!2304890 (= lt!2636018 e!4476495)))

(declare-fun c!1386117 () Bool)

(assert (=> d!2304890 (= c!1386117 ((_ is Nil!72407) (_1!37685 lt!2635801)))))

(assert (=> d!2304890 (= (++!17344 (_1!37685 lt!2635801) (_2!37685 lt!2635801)) lt!2636018)))

(assert (= (and d!2304890 c!1386117) b!7507462))

(assert (= (and d!2304890 (not c!1386117)) b!7507463))

(assert (= (and d!2304890 res!3011963) b!7507464))

(assert (= (and b!7507464 res!3011964) b!7507465))

(declare-fun m!8090594 () Bool)

(assert (=> b!7507463 m!8090594))

(declare-fun m!8090596 () Bool)

(assert (=> b!7507464 m!8090596))

(assert (=> b!7507464 m!8089692))

(declare-fun m!8090598 () Bool)

(assert (=> b!7507464 m!8090598))

(declare-fun m!8090600 () Bool)

(assert (=> d!2304890 m!8090600))

(declare-fun m!8090602 () Bool)

(assert (=> d!2304890 m!8090602))

(declare-fun m!8090604 () Bool)

(assert (=> d!2304890 m!8090604))

(assert (=> d!2304506 d!2304890))

(assert (=> d!2304506 d!2304850))

(declare-fun d!2304892 () Bool)

(assert (=> d!2304892 (= lt!2635535 lt!2635818)))

(declare-fun lt!2636019 () Unit!166414)

(assert (=> d!2304892 (= lt!2636019 (choose!58145 lt!2635545 lt!2635535 lt!2635545 lt!2635818 totalInput!779))))

(assert (=> d!2304892 (isPrefix!6009 lt!2635545 totalInput!779)))

(assert (=> d!2304892 (= (lemmaSamePrefixThenSameSuffix!2808 lt!2635545 lt!2635535 lt!2635545 lt!2635818 totalInput!779) lt!2636019)))

(declare-fun bs!1938434 () Bool)

(assert (= bs!1938434 d!2304892))

(declare-fun m!8090606 () Bool)

(assert (=> bs!1938434 m!8090606))

(assert (=> bs!1938434 m!8090460))

(assert (=> d!2304506 d!2304892))

(assert (=> d!2304506 d!2304540))

(declare-fun d!2304894 () Bool)

(declare-fun e!4476498 () Bool)

(assert (=> d!2304894 e!4476498))

(declare-fun res!3011968 () Bool)

(assert (=> d!2304894 (=> res!3011968 e!4476498)))

(declare-fun lt!2636020 () Bool)

(assert (=> d!2304894 (= res!3011968 (not lt!2636020))))

(declare-fun e!4476499 () Bool)

(assert (=> d!2304894 (= lt!2636020 e!4476499)))

(declare-fun res!3011965 () Bool)

(assert (=> d!2304894 (=> res!3011965 e!4476499)))

(assert (=> d!2304894 (= res!3011965 ((_ is Nil!72407) lt!2635545))))

(assert (=> d!2304894 (= (isPrefix!6009 lt!2635545 (++!17344 lt!2635545 lt!2635535)) lt!2636020)))

(declare-fun b!7507466 () Bool)

(declare-fun e!4476497 () Bool)

(assert (=> b!7507466 (= e!4476499 e!4476497)))

(declare-fun res!3011966 () Bool)

(assert (=> b!7507466 (=> (not res!3011966) (not e!4476497))))

(assert (=> b!7507466 (= res!3011966 (not ((_ is Nil!72407) (++!17344 lt!2635545 lt!2635535))))))

(declare-fun b!7507467 () Bool)

(declare-fun res!3011967 () Bool)

(assert (=> b!7507467 (=> (not res!3011967) (not e!4476497))))

(assert (=> b!7507467 (= res!3011967 (= (head!15432 lt!2635545) (head!15432 (++!17344 lt!2635545 lt!2635535))))))

(declare-fun b!7507469 () Bool)

(assert (=> b!7507469 (= e!4476498 (>= (size!42286 (++!17344 lt!2635545 lt!2635535)) (size!42286 lt!2635545)))))

(declare-fun b!7507468 () Bool)

(assert (=> b!7507468 (= e!4476497 (isPrefix!6009 (tail!14999 lt!2635545) (tail!14999 (++!17344 lt!2635545 lt!2635535))))))

(assert (= (and d!2304894 (not res!3011965)) b!7507466))

(assert (= (and b!7507466 res!3011966) b!7507467))

(assert (= (and b!7507467 res!3011967) b!7507468))

(assert (= (and d!2304894 (not res!3011968)) b!7507469))

(declare-fun m!8090608 () Bool)

(assert (=> b!7507467 m!8090608))

(assert (=> b!7507467 m!8089382))

(declare-fun m!8090610 () Bool)

(assert (=> b!7507467 m!8090610))

(assert (=> b!7507469 m!8089382))

(declare-fun m!8090612 () Bool)

(assert (=> b!7507469 m!8090612))

(assert (=> b!7507469 m!8089694))

(declare-fun m!8090614 () Bool)

(assert (=> b!7507468 m!8090614))

(assert (=> b!7507468 m!8089382))

(declare-fun m!8090616 () Bool)

(assert (=> b!7507468 m!8090616))

(assert (=> b!7507468 m!8090614))

(assert (=> b!7507468 m!8090616))

(declare-fun m!8090618 () Bool)

(assert (=> b!7507468 m!8090618))

(assert (=> d!2304506 d!2304894))

(declare-fun d!2304896 () Bool)

(assert (=> d!2304896 (isPrefix!6009 lt!2635545 (++!17344 lt!2635545 lt!2635535))))

(declare-fun lt!2636021 () Unit!166414)

(assert (=> d!2304896 (= lt!2636021 (choose!58141 lt!2635545 lt!2635535))))

(assert (=> d!2304896 (= (lemmaConcatTwoListThenFirstIsPrefix!3722 lt!2635545 lt!2635535) lt!2636021)))

(declare-fun bs!1938435 () Bool)

(assert (= bs!1938435 d!2304896))

(assert (=> bs!1938435 m!8089382))

(assert (=> bs!1938435 m!8089382))

(assert (=> bs!1938435 m!8089738))

(declare-fun m!8090620 () Bool)

(assert (=> bs!1938435 m!8090620))

(assert (=> d!2304506 d!2304896))

(declare-fun d!2304898 () Bool)

(declare-fun res!3011973 () Bool)

(declare-fun e!4476504 () Bool)

(assert (=> d!2304898 (=> res!3011973 e!4476504)))

(assert (=> d!2304898 (= res!3011973 ((_ is Nil!72408) (exprs!8967 setElem!57044)))))

(assert (=> d!2304898 (= (forall!18296 (exprs!8967 setElem!57044) lambda!465506) e!4476504)))

(declare-fun b!7507474 () Bool)

(declare-fun e!4476505 () Bool)

(assert (=> b!7507474 (= e!4476504 e!4476505)))

(declare-fun res!3011974 () Bool)

(assert (=> b!7507474 (=> (not res!3011974) (not e!4476505))))

(declare-fun dynLambda!29782 (Int Regex!19715) Bool)

(assert (=> b!7507474 (= res!3011974 (dynLambda!29782 lambda!465506 (h!78856 (exprs!8967 setElem!57044))))))

(declare-fun b!7507475 () Bool)

(assert (=> b!7507475 (= e!4476505 (forall!18296 (t!387101 (exprs!8967 setElem!57044)) lambda!465506))))

(assert (= (and d!2304898 (not res!3011973)) b!7507474))

(assert (= (and b!7507474 res!3011974) b!7507475))

(declare-fun b_lambda!287871 () Bool)

(assert (=> (not b_lambda!287871) (not b!7507474)))

(declare-fun m!8090622 () Bool)

(assert (=> b!7507474 m!8090622))

(declare-fun m!8090624 () Bool)

(assert (=> b!7507475 m!8090624))

(assert (=> d!2304526 d!2304898))

(declare-fun b!7507477 () Bool)

(declare-fun e!4476506 () List!72531)

(assert (=> b!7507477 (= e!4476506 (Cons!72407 (h!78855 (t!387100 (_1!37685 lt!2635546))) (++!17344 (t!387100 (t!387100 (_1!37685 lt!2635546))) (_2!37685 lt!2635546))))))

(declare-fun b!7507476 () Bool)

(assert (=> b!7507476 (= e!4476506 (_2!37685 lt!2635546))))

(declare-fun b!7507478 () Bool)

(declare-fun res!3011976 () Bool)

(declare-fun e!4476507 () Bool)

(assert (=> b!7507478 (=> (not res!3011976) (not e!4476507))))

(declare-fun lt!2636022 () List!72531)

(assert (=> b!7507478 (= res!3011976 (= (size!42286 lt!2636022) (+ (size!42286 (t!387100 (_1!37685 lt!2635546))) (size!42286 (_2!37685 lt!2635546)))))))

(declare-fun b!7507479 () Bool)

(assert (=> b!7507479 (= e!4476507 (or (not (= (_2!37685 lt!2635546) Nil!72407)) (= lt!2636022 (t!387100 (_1!37685 lt!2635546)))))))

(declare-fun d!2304900 () Bool)

(assert (=> d!2304900 e!4476507))

(declare-fun res!3011975 () Bool)

(assert (=> d!2304900 (=> (not res!3011975) (not e!4476507))))

(assert (=> d!2304900 (= res!3011975 (= (content!15308 lt!2636022) ((_ map or) (content!15308 (t!387100 (_1!37685 lt!2635546))) (content!15308 (_2!37685 lt!2635546)))))))

(assert (=> d!2304900 (= lt!2636022 e!4476506)))

(declare-fun c!1386118 () Bool)

(assert (=> d!2304900 (= c!1386118 ((_ is Nil!72407) (t!387100 (_1!37685 lt!2635546))))))

(assert (=> d!2304900 (= (++!17344 (t!387100 (_1!37685 lt!2635546)) (_2!37685 lt!2635546)) lt!2636022)))

(assert (= (and d!2304900 c!1386118) b!7507476))

(assert (= (and d!2304900 (not c!1386118)) b!7507477))

(assert (= (and d!2304900 res!3011975) b!7507478))

(assert (= (and b!7507478 res!3011976) b!7507479))

(declare-fun m!8090626 () Bool)

(assert (=> b!7507477 m!8090626))

(declare-fun m!8090628 () Bool)

(assert (=> b!7507478 m!8090628))

(assert (=> b!7507478 m!8089470))

(assert (=> b!7507478 m!8089808))

(declare-fun m!8090630 () Bool)

(assert (=> d!2304900 m!8090630))

(assert (=> d!2304900 m!8090426))

(assert (=> d!2304900 m!8089814))

(assert (=> b!7507086 d!2304900))

(assert (=> bm!688783 d!2304830))

(declare-fun bs!1938436 () Bool)

(declare-fun d!2304902 () Bool)

(assert (= bs!1938436 (and d!2304902 b!7506973)))

(declare-fun lambda!465552 () Int)

(assert (=> bs!1938436 (not (= lambda!465552 lambda!465482))))

(declare-fun bs!1938437 () Bool)

(assert (= bs!1938437 (and d!2304902 d!2304762)))

(assert (=> bs!1938437 (not (= lambda!465552 lambda!465539))))

(declare-fun bs!1938438 () Bool)

(assert (= bs!1938438 (and d!2304902 b!7507460)))

(assert (=> bs!1938438 (not (= lambda!465552 lambda!465548))))

(declare-fun bs!1938439 () Bool)

(assert (= bs!1938439 (and d!2304902 d!2304460)))

(assert (=> bs!1938439 (not (= lambda!465552 lambda!465480))))

(declare-fun bs!1938440 () Bool)

(assert (= bs!1938440 (and d!2304902 b!7506972)))

(assert (=> bs!1938440 (not (= lambda!465552 lambda!465481))))

(declare-fun bs!1938441 () Bool)

(assert (= bs!1938441 (and d!2304902 d!2304888)))

(assert (=> bs!1938441 (not (= lambda!465552 lambda!465547))))

(declare-fun bs!1938442 () Bool)

(assert (= bs!1938442 (and d!2304902 d!2304684)))

(assert (=> bs!1938442 (= (= (ite c!1385953 lambda!465481 lambda!465482) lambda!465480) (= lambda!465552 lambda!465527))))

(declare-fun bs!1938443 () Bool)

(assert (= bs!1938443 (and d!2304902 d!2304880)))

(assert (=> bs!1938443 (= (= (ite c!1385953 lambda!465481 lambda!465482) lambda!465480) (= lambda!465552 lambda!465546))))

(declare-fun bs!1938444 () Bool)

(assert (= bs!1938444 (and d!2304902 b!7507461)))

(assert (=> bs!1938444 (not (= lambda!465552 lambda!465549))))

(declare-fun bs!1938445 () Bool)

(assert (= bs!1938445 (and d!2304902 d!2304530)))

(assert (=> bs!1938445 (not (= lambda!465552 lambda!465509))))

(assert (=> d!2304902 true))

(assert (=> d!2304902 (< (dynLambda!29780 order!29651 (ite c!1385953 lambda!465481 lambda!465482)) (dynLambda!29780 order!29651 lambda!465552))))

(assert (=> d!2304902 (= (exists!4867 (ite c!1385953 lt!2635696 lt!2635691) (ite c!1385953 lambda!465481 lambda!465482)) (not (forall!18297 (ite c!1385953 lt!2635696 lt!2635691) lambda!465552)))))

(declare-fun bs!1938446 () Bool)

(assert (= bs!1938446 d!2304902))

(declare-fun m!8090632 () Bool)

(assert (=> bs!1938446 m!8090632))

(assert (=> bm!688753 d!2304902))

(assert (=> d!2304548 d!2304438))

(assert (=> d!2304548 d!2304452))

(declare-fun d!2304904 () Bool)

(assert (=> d!2304904 (<= (size!42286 testedP!204) (size!42286 totalInput!779))))

(assert (=> d!2304904 true))

(declare-fun _$64!877 () Unit!166414)

(assert (=> d!2304904 (= (choose!58150 testedP!204 totalInput!779) _$64!877)))

(declare-fun bs!1938447 () Bool)

(assert (= bs!1938447 d!2304904))

(assert (=> bs!1938447 m!8089426))

(assert (=> bs!1938447 m!8089416))

(assert (=> d!2304548 d!2304904))

(assert (=> d!2304548 d!2304444))

(declare-fun d!2304906 () Bool)

(declare-fun e!4476509 () Bool)

(assert (=> d!2304906 e!4476509))

(declare-fun res!3011980 () Bool)

(assert (=> d!2304906 (=> res!3011980 e!4476509)))

(declare-fun lt!2636023 () Bool)

(assert (=> d!2304906 (= res!3011980 (not lt!2636023))))

(declare-fun e!4476510 () Bool)

(assert (=> d!2304906 (= lt!2636023 e!4476510)))

(declare-fun res!3011977 () Bool)

(assert (=> d!2304906 (=> res!3011977 e!4476510)))

(assert (=> d!2304906 (= res!3011977 ((_ is Nil!72407) (tail!14999 testedP!204)))))

(assert (=> d!2304906 (= (isPrefix!6009 (tail!14999 testedP!204) (tail!14999 totalInput!779)) lt!2636023)))

(declare-fun b!7507480 () Bool)

(declare-fun e!4476508 () Bool)

(assert (=> b!7507480 (= e!4476510 e!4476508)))

(declare-fun res!3011978 () Bool)

(assert (=> b!7507480 (=> (not res!3011978) (not e!4476508))))

(assert (=> b!7507480 (= res!3011978 (not ((_ is Nil!72407) (tail!14999 totalInput!779))))))

(declare-fun b!7507481 () Bool)

(declare-fun res!3011979 () Bool)

(assert (=> b!7507481 (=> (not res!3011979) (not e!4476508))))

(assert (=> b!7507481 (= res!3011979 (= (head!15432 (tail!14999 testedP!204)) (head!15432 (tail!14999 totalInput!779))))))

(declare-fun b!7507483 () Bool)

(assert (=> b!7507483 (= e!4476509 (>= (size!42286 (tail!14999 totalInput!779)) (size!42286 (tail!14999 testedP!204))))))

(declare-fun b!7507482 () Bool)

(assert (=> b!7507482 (= e!4476508 (isPrefix!6009 (tail!14999 (tail!14999 testedP!204)) (tail!14999 (tail!14999 totalInput!779))))))

(assert (= (and d!2304906 (not res!3011977)) b!7507480))

(assert (= (and b!7507480 res!3011978) b!7507481))

(assert (= (and b!7507481 res!3011979) b!7507482))

(assert (= (and d!2304906 (not res!3011980)) b!7507483))

(assert (=> b!7507481 m!8089452))

(assert (=> b!7507481 m!8090360))

(assert (=> b!7507481 m!8089454))

(assert (=> b!7507481 m!8090348))

(assert (=> b!7507483 m!8089454))

(assert (=> b!7507483 m!8090350))

(assert (=> b!7507483 m!8089452))

(assert (=> b!7507483 m!8090366))

(assert (=> b!7507482 m!8089452))

(assert (=> b!7507482 m!8090368))

(assert (=> b!7507482 m!8089454))

(assert (=> b!7507482 m!8090356))

(assert (=> b!7507482 m!8090368))

(assert (=> b!7507482 m!8090356))

(declare-fun m!8090634 () Bool)

(assert (=> b!7507482 m!8090634))

(assert (=> b!7506864 d!2304906))

(assert (=> b!7506864 d!2304796))

(assert (=> b!7506864 d!2304792))

(declare-fun d!2304908 () Bool)

(assert (=> d!2304908 (= (isEmpty!41314 (_1!37685 lt!2635801)) ((_ is Nil!72407) (_1!37685 lt!2635801)))))

(assert (=> b!7507066 d!2304908))

(assert (=> bm!688776 d!2304454))

(declare-fun d!2304910 () Bool)

(declare-fun lt!2636024 () Int)

(assert (=> d!2304910 (>= lt!2636024 0)))

(declare-fun e!4476511 () Int)

(assert (=> d!2304910 (= lt!2636024 e!4476511)))

(declare-fun c!1386119 () Bool)

(assert (=> d!2304910 (= c!1386119 ((_ is Nil!72407) lt!2635825))))

(assert (=> d!2304910 (= (size!42286 lt!2635825) lt!2636024)))

(declare-fun b!7507484 () Bool)

(assert (=> b!7507484 (= e!4476511 0)))

(declare-fun b!7507485 () Bool)

(assert (=> b!7507485 (= e!4476511 (+ 1 (size!42286 (t!387100 lt!2635825))))))

(assert (= (and d!2304910 c!1386119) b!7507484))

(assert (= (and d!2304910 (not c!1386119)) b!7507485))

(declare-fun m!8090636 () Bool)

(assert (=> b!7507485 m!8090636))

(assert (=> b!7507075 d!2304910))

(assert (=> b!7507075 d!2304438))

(declare-fun d!2304912 () Bool)

(declare-fun lt!2636025 () Int)

(assert (=> d!2304912 (>= lt!2636025 0)))

(declare-fun e!4476512 () Int)

(assert (=> d!2304912 (= lt!2636025 e!4476512)))

(declare-fun c!1386120 () Bool)

(assert (=> d!2304912 (= c!1386120 ((_ is Nil!72407) (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))

(assert (=> d!2304912 (= (size!42286 (Cons!72407 (head!15432 lt!2635539) Nil!72407)) lt!2636025)))

(declare-fun b!7507486 () Bool)

(assert (=> b!7507486 (= e!4476512 0)))

(declare-fun b!7507487 () Bool)

(assert (=> b!7507487 (= e!4476512 (+ 1 (size!42286 (t!387100 (Cons!72407 (head!15432 lt!2635539) Nil!72407)))))))

(assert (= (and d!2304912 c!1386120) b!7507486))

(assert (= (and d!2304912 (not c!1386120)) b!7507487))

(declare-fun m!8090638 () Bool)

(assert (=> b!7507487 m!8090638))

(assert (=> b!7507075 d!2304912))

(declare-fun d!2304914 () Bool)

(declare-fun lt!2636026 () Int)

(assert (=> d!2304914 (>= lt!2636026 0)))

(declare-fun e!4476513 () Int)

(assert (=> d!2304914 (= lt!2636026 e!4476513)))

(declare-fun c!1386121 () Bool)

(assert (=> d!2304914 (= c!1386121 ((_ is Nil!72407) (t!387100 totalInput!779)))))

(assert (=> d!2304914 (= (size!42286 (t!387100 totalInput!779)) lt!2636026)))

(declare-fun b!7507488 () Bool)

(assert (=> b!7507488 (= e!4476513 0)))

(declare-fun b!7507489 () Bool)

(assert (=> b!7507489 (= e!4476513 (+ 1 (size!42286 (t!387100 (t!387100 totalInput!779)))))))

(assert (= (and d!2304914 c!1386121) b!7507488))

(assert (= (and d!2304914 (not c!1386121)) b!7507489))

(declare-fun m!8090640 () Bool)

(assert (=> b!7507489 m!8090640))

(assert (=> b!7506873 d!2304914))

(declare-fun d!2304916 () Bool)

(assert (=> d!2304916 (= (head!15432 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) (h!78855 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(assert (=> b!7507070 d!2304916))

(assert (=> b!7507070 d!2304756))

(assert (=> b!7507072 d!2304452))

(declare-fun d!2304918 () Bool)

(declare-fun lt!2636027 () Int)

(assert (=> d!2304918 (>= lt!2636027 0)))

(declare-fun e!4476514 () Int)

(assert (=> d!2304918 (= lt!2636027 e!4476514)))

(declare-fun c!1386122 () Bool)

(assert (=> d!2304918 (= c!1386122 ((_ is Nil!72407) (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))

(assert (=> d!2304918 (= (size!42286 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))) lt!2636027)))

(declare-fun b!7507490 () Bool)

(assert (=> b!7507490 (= e!4476514 0)))

(declare-fun b!7507491 () Bool)

(assert (=> b!7507491 (= e!4476514 (+ 1 (size!42286 (t!387100 (++!17344 testedP!204 (Cons!72407 (head!15432 lt!2635539) Nil!72407))))))))

(assert (= (and d!2304918 c!1386122) b!7507490))

(assert (= (and d!2304918 (not c!1386122)) b!7507491))

(declare-fun m!8090642 () Bool)

(assert (=> b!7507491 m!8090642))

(assert (=> b!7507072 d!2304918))

(assert (=> b!7506867 d!2304754))

(declare-fun d!2304920 () Bool)

(assert (=> d!2304920 (= (head!15432 lt!2635540) (h!78855 lt!2635540))))

(assert (=> b!7506867 d!2304920))

(declare-fun d!2304922 () Bool)

(declare-fun lt!2636028 () Int)

(assert (=> d!2304922 (>= lt!2636028 0)))

(declare-fun e!4476515 () Int)

(assert (=> d!2304922 (= lt!2636028 e!4476515)))

(declare-fun c!1386123 () Bool)

(assert (=> d!2304922 (= c!1386123 ((_ is Nil!72407) lt!2635540))))

(assert (=> d!2304922 (= (size!42286 lt!2635540) lt!2636028)))

(declare-fun b!7507492 () Bool)

(assert (=> b!7507492 (= e!4476515 0)))

(declare-fun b!7507493 () Bool)

(assert (=> b!7507493 (= e!4476515 (+ 1 (size!42286 (t!387100 lt!2635540))))))

(assert (= (and d!2304922 c!1386123) b!7507492))

(assert (= (and d!2304922 (not c!1386123)) b!7507493))

(declare-fun m!8090644 () Bool)

(assert (=> b!7507493 m!8090644))

(assert (=> b!7506869 d!2304922))

(assert (=> b!7506869 d!2304438))

(declare-fun d!2304924 () Bool)

(declare-fun lt!2636029 () Int)

(assert (=> d!2304924 (>= lt!2636029 0)))

(declare-fun e!4476516 () Int)

(assert (=> d!2304924 (= lt!2636029 e!4476516)))

(declare-fun c!1386124 () Bool)

(assert (=> d!2304924 (= c!1386124 ((_ is Nil!72407) lt!2635830))))

(assert (=> d!2304924 (= (size!42286 lt!2635830) lt!2636029)))

(declare-fun b!7507494 () Bool)

(assert (=> b!7507494 (= e!4476516 0)))

(declare-fun b!7507495 () Bool)

(assert (=> b!7507495 (= e!4476516 (+ 1 (size!42286 (t!387100 lt!2635830))))))

(assert (= (and d!2304924 c!1386124) b!7507494))

(assert (= (and d!2304924 (not c!1386124)) b!7507495))

(declare-fun m!8090646 () Bool)

(assert (=> b!7507495 m!8090646))

(assert (=> b!7507083 d!2304924))

(assert (=> b!7507083 d!2304438))

(declare-fun d!2304926 () Bool)

(declare-fun lt!2636030 () Int)

(assert (=> d!2304926 (>= lt!2636030 0)))

(declare-fun e!4476517 () Int)

(assert (=> d!2304926 (= lt!2636030 e!4476517)))

(declare-fun c!1386125 () Bool)

(assert (=> d!2304926 (= c!1386125 ((_ is Nil!72407) (Cons!72407 lt!2635544 Nil!72407)))))

(assert (=> d!2304926 (= (size!42286 (Cons!72407 lt!2635544 Nil!72407)) lt!2636030)))

(declare-fun b!7507496 () Bool)

(assert (=> b!7507496 (= e!4476517 0)))

(declare-fun b!7507497 () Bool)

(assert (=> b!7507497 (= e!4476517 (+ 1 (size!42286 (t!387100 (Cons!72407 lt!2635544 Nil!72407)))))))

(assert (= (and d!2304926 c!1386125) b!7507496))

(assert (= (and d!2304926 (not c!1386125)) b!7507497))

(declare-fun m!8090648 () Bool)

(assert (=> b!7507497 m!8090648))

(assert (=> b!7507083 d!2304926))

(assert (=> d!2304454 d!2304456))

(declare-fun d!2304928 () Bool)

(assert (=> d!2304928 (isPrefix!6009 totalInput!779 totalInput!779)))

(assert (=> d!2304928 true))

(declare-fun _$45!2401 () Unit!166414)

(assert (=> d!2304928 (= (choose!58142 totalInput!779 totalInput!779) _$45!2401)))

(declare-fun bs!1938448 () Bool)

(assert (= bs!1938448 d!2304928))

(assert (=> bs!1938448 m!8089404))

(assert (=> d!2304454 d!2304928))

(declare-fun d!2304930 () Bool)

(declare-fun e!4476519 () Bool)

(assert (=> d!2304930 e!4476519))

(declare-fun res!3011984 () Bool)

(assert (=> d!2304930 (=> res!3011984 e!4476519)))

(declare-fun lt!2636031 () Bool)

(assert (=> d!2304930 (= res!3011984 (not lt!2636031))))

(declare-fun e!4476520 () Bool)

(assert (=> d!2304930 (= lt!2636031 e!4476520)))

(declare-fun res!3011981 () Bool)

(assert (=> d!2304930 (=> res!3011981 e!4476520)))

(assert (=> d!2304930 (= res!3011981 ((_ is Nil!72407) (tail!14999 totalInput!779)))))

(assert (=> d!2304930 (= (isPrefix!6009 (tail!14999 totalInput!779) (tail!14999 totalInput!779)) lt!2636031)))

(declare-fun b!7507498 () Bool)

(declare-fun e!4476518 () Bool)

(assert (=> b!7507498 (= e!4476520 e!4476518)))

(declare-fun res!3011982 () Bool)

(assert (=> b!7507498 (=> (not res!3011982) (not e!4476518))))

(assert (=> b!7507498 (= res!3011982 (not ((_ is Nil!72407) (tail!14999 totalInput!779))))))

(declare-fun b!7507499 () Bool)

(declare-fun res!3011983 () Bool)

(assert (=> b!7507499 (=> (not res!3011983) (not e!4476518))))

(assert (=> b!7507499 (= res!3011983 (= (head!15432 (tail!14999 totalInput!779)) (head!15432 (tail!14999 totalInput!779))))))

(declare-fun b!7507501 () Bool)

(assert (=> b!7507501 (= e!4476519 (>= (size!42286 (tail!14999 totalInput!779)) (size!42286 (tail!14999 totalInput!779))))))

(declare-fun b!7507500 () Bool)

(assert (=> b!7507500 (= e!4476518 (isPrefix!6009 (tail!14999 (tail!14999 totalInput!779)) (tail!14999 (tail!14999 totalInput!779))))))

(assert (= (and d!2304930 (not res!3011981)) b!7507498))

(assert (= (and b!7507498 res!3011982) b!7507499))

(assert (= (and b!7507499 res!3011983) b!7507500))

(assert (= (and d!2304930 (not res!3011984)) b!7507501))

(assert (=> b!7507499 m!8089454))

(assert (=> b!7507499 m!8090348))

(assert (=> b!7507499 m!8089454))

(assert (=> b!7507499 m!8090348))

(assert (=> b!7507501 m!8089454))

(assert (=> b!7507501 m!8090350))

(assert (=> b!7507501 m!8089454))

(assert (=> b!7507501 m!8090350))

(assert (=> b!7507500 m!8089454))

(assert (=> b!7507500 m!8090356))

(assert (=> b!7507500 m!8089454))

(assert (=> b!7507500 m!8090356))

(assert (=> b!7507500 m!8090356))

(assert (=> b!7507500 m!8090356))

(declare-fun m!8090650 () Bool)

(assert (=> b!7507500 m!8090650))

(assert (=> b!7506876 d!2304930))

(assert (=> b!7506876 d!2304792))

(declare-fun d!2304932 () Bool)

(declare-fun lt!2636032 () List!72531)

(assert (=> d!2304932 (= (++!17344 (t!387100 testedP!204) lt!2636032) (tail!14999 totalInput!779))))

(declare-fun e!4476521 () List!72531)

(assert (=> d!2304932 (= lt!2636032 e!4476521)))

(declare-fun c!1386126 () Bool)

(assert (=> d!2304932 (= c!1386126 ((_ is Cons!72407) (t!387100 testedP!204)))))

(assert (=> d!2304932 (>= (size!42286 (tail!14999 totalInput!779)) (size!42286 (t!387100 testedP!204)))))

(assert (=> d!2304932 (= (getSuffix!3509 (tail!14999 totalInput!779) (t!387100 testedP!204)) lt!2636032)))

(declare-fun b!7507502 () Bool)

(assert (=> b!7507502 (= e!4476521 (getSuffix!3509 (tail!14999 (tail!14999 totalInput!779)) (t!387100 (t!387100 testedP!204))))))

(declare-fun b!7507503 () Bool)

(assert (=> b!7507503 (= e!4476521 (tail!14999 totalInput!779))))

(assert (= (and d!2304932 c!1386126) b!7507502))

(assert (= (and d!2304932 (not c!1386126)) b!7507503))

(declare-fun m!8090652 () Bool)

(assert (=> d!2304932 m!8090652))

(assert (=> d!2304932 m!8089454))

(assert (=> d!2304932 m!8090350))

(assert (=> d!2304932 m!8089434))

(assert (=> b!7507502 m!8089454))

(assert (=> b!7507502 m!8090356))

(assert (=> b!7507502 m!8090356))

(declare-fun m!8090654 () Bool)

(assert (=> b!7507502 m!8090654))

(assert (=> b!7506978 d!2304932))

(assert (=> b!7506978 d!2304792))

(declare-fun bs!1938449 () Bool)

(declare-fun d!2304934 () Bool)

(assert (= bs!1938449 (and d!2304934 b!7506973)))

(declare-fun lambda!465553 () Int)

(assert (=> bs!1938449 (not (= lambda!465553 lambda!465482))))

(declare-fun bs!1938450 () Bool)

(assert (= bs!1938450 (and d!2304934 d!2304762)))

(assert (=> bs!1938450 (not (= lambda!465553 lambda!465539))))

(declare-fun bs!1938451 () Bool)

(assert (= bs!1938451 (and d!2304934 b!7507460)))

(assert (=> bs!1938451 (not (= lambda!465553 lambda!465548))))

(declare-fun bs!1938452 () Bool)

(assert (= bs!1938452 (and d!2304934 d!2304902)))

(assert (=> bs!1938452 (not (= lambda!465553 lambda!465552))))

(declare-fun bs!1938453 () Bool)

(assert (= bs!1938453 (and d!2304934 d!2304460)))

(assert (=> bs!1938453 (not (= lambda!465553 lambda!465480))))

(declare-fun bs!1938454 () Bool)

(assert (= bs!1938454 (and d!2304934 b!7506972)))

(assert (=> bs!1938454 (not (= lambda!465553 lambda!465481))))

(declare-fun bs!1938455 () Bool)

(assert (= bs!1938455 (and d!2304934 d!2304888)))

(assert (=> bs!1938455 (not (= lambda!465553 lambda!465547))))

(declare-fun bs!1938456 () Bool)

(assert (= bs!1938456 (and d!2304934 d!2304684)))

(assert (=> bs!1938456 (not (= lambda!465553 lambda!465527))))

(declare-fun bs!1938457 () Bool)

(assert (= bs!1938457 (and d!2304934 d!2304880)))

(assert (=> bs!1938457 (not (= lambda!465553 lambda!465546))))

(declare-fun bs!1938458 () Bool)

(assert (= bs!1938458 (and d!2304934 b!7507461)))

(assert (=> bs!1938458 (not (= lambda!465553 lambda!465549))))

(declare-fun bs!1938459 () Bool)

(assert (= bs!1938459 (and d!2304934 d!2304530)))

(assert (=> bs!1938459 (= lambda!465553 lambda!465509)))

(assert (=> d!2304934 (= (nullableZipper!3181 (derivationStepZipper!3726 z!3716 lt!2635544)) (exists!4868 (derivationStepZipper!3726 z!3716 lt!2635544) lambda!465553))))

(declare-fun bs!1938460 () Bool)

(assert (= bs!1938460 d!2304934))

(assert (=> bs!1938460 m!8089422))

(declare-fun m!8090656 () Bool)

(assert (=> bs!1938460 m!8090656))

(assert (=> bm!688777 d!2304934))

(declare-fun d!2304936 () Bool)

(assert (=> d!2304936 (= (isEmpty!41314 (_1!37685 lt!2635815)) ((_ is Nil!72407) (_1!37685 lt!2635815)))))

(assert (=> b!7507058 d!2304936))

(declare-fun b!7507514 () Bool)

(declare-fun e!4476524 () Bool)

(assert (=> b!7507514 (= e!4476524 tp_is_empty!49771)))

(declare-fun b!7507517 () Bool)

(declare-fun tp!2179124 () Bool)

(declare-fun tp!2179122 () Bool)

(assert (=> b!7507517 (= e!4476524 (and tp!2179124 tp!2179122))))

(declare-fun b!7507515 () Bool)

(declare-fun tp!2179125 () Bool)

(declare-fun tp!2179123 () Bool)

(assert (=> b!7507515 (= e!4476524 (and tp!2179125 tp!2179123))))

(declare-fun b!7507516 () Bool)

(declare-fun tp!2179126 () Bool)

(assert (=> b!7507516 (= e!4476524 tp!2179126)))

(assert (=> b!7507099 (= tp!2179079 e!4476524)))

(assert (= (and b!7507099 ((_ is ElementMatch!19715) (h!78856 (exprs!8967 setElem!57044)))) b!7507514))

(assert (= (and b!7507099 ((_ is Concat!28560) (h!78856 (exprs!8967 setElem!57044)))) b!7507515))

(assert (= (and b!7507099 ((_ is Star!19715) (h!78856 (exprs!8967 setElem!57044)))) b!7507516))

(assert (= (and b!7507099 ((_ is Union!19715) (h!78856 (exprs!8967 setElem!57044)))) b!7507517))

(declare-fun b!7507518 () Bool)

(declare-fun e!4476525 () Bool)

(declare-fun tp!2179127 () Bool)

(declare-fun tp!2179128 () Bool)

(assert (=> b!7507518 (= e!4476525 (and tp!2179127 tp!2179128))))

(assert (=> b!7507099 (= tp!2179080 e!4476525)))

(assert (= (and b!7507099 ((_ is Cons!72408) (t!387101 (exprs!8967 setElem!57044)))) b!7507518))

(declare-fun b!7507519 () Bool)

(declare-fun e!4476526 () Bool)

(declare-fun tp!2179129 () Bool)

(assert (=> b!7507519 (= e!4476526 (and tp_is_empty!49771 tp!2179129))))

(assert (=> b!7507093 (= tp!2179073 e!4476526)))

(assert (= (and b!7507093 ((_ is Cons!72407) (t!387100 (t!387100 testedP!204)))) b!7507519))

(declare-fun b!7507520 () Bool)

(declare-fun e!4476527 () Bool)

(declare-fun tp!2179130 () Bool)

(declare-fun tp!2179131 () Bool)

(assert (=> b!7507520 (= e!4476527 (and tp!2179130 tp!2179131))))

(assert (=> b!7507105 (= tp!2179087 e!4476527)))

(assert (= (and b!7507105 ((_ is Cons!72408) (exprs!8967 setElem!57050))) b!7507520))

(declare-fun condSetEmpty!57052 () Bool)

(assert (=> setNonEmpty!57050 (= condSetEmpty!57052 (= setRest!57050 ((as const (Array Context!16934 Bool)) false)))))

(declare-fun setRes!57052 () Bool)

(assert (=> setNonEmpty!57050 (= tp!2179086 setRes!57052)))

(declare-fun setIsEmpty!57052 () Bool)

(assert (=> setIsEmpty!57052 setRes!57052))

(declare-fun setElem!57052 () Context!16934)

(declare-fun e!4476528 () Bool)

(declare-fun setNonEmpty!57052 () Bool)

(declare-fun tp!2179132 () Bool)

(assert (=> setNonEmpty!57052 (= setRes!57052 (and tp!2179132 (inv!92517 setElem!57052) e!4476528))))

(declare-fun setRest!57052 () (InoxSet Context!16934))

(assert (=> setNonEmpty!57052 (= setRest!57050 ((_ map or) (store ((as const (Array Context!16934 Bool)) false) setElem!57052 true) setRest!57052))))

(declare-fun b!7507521 () Bool)

(declare-fun tp!2179133 () Bool)

(assert (=> b!7507521 (= e!4476528 tp!2179133)))

(assert (= (and setNonEmpty!57050 condSetEmpty!57052) setIsEmpty!57052))

(assert (= (and setNonEmpty!57050 (not condSetEmpty!57052)) setNonEmpty!57052))

(assert (= setNonEmpty!57052 b!7507521))

(declare-fun m!8090658 () Bool)

(assert (=> setNonEmpty!57052 m!8090658))

(declare-fun b!7507522 () Bool)

(declare-fun e!4476529 () Bool)

(declare-fun tp!2179134 () Bool)

(assert (=> b!7507522 (= e!4476529 (and tp_is_empty!49771 tp!2179134))))

(assert (=> b!7507100 (= tp!2179081 e!4476529)))

(assert (= (and b!7507100 ((_ is Cons!72407) (t!387100 (t!387100 totalInput!779)))) b!7507522))

(declare-fun b!7507523 () Bool)

(declare-fun e!4476530 () Bool)

(declare-fun tp!2179135 () Bool)

(assert (=> b!7507523 (= e!4476530 (and tp_is_empty!49771 tp!2179135))))

(assert (=> b!7507094 (= tp!2179074 e!4476530)))

(assert (= (and b!7507094 ((_ is Cons!72407) (t!387100 (t!387100 testedSuffix!164)))) b!7507523))

(declare-fun b_lambda!287873 () Bool)

(assert (= b_lambda!287871 (or d!2304526 b_lambda!287873)))

(declare-fun bs!1938461 () Bool)

(declare-fun d!2304938 () Bool)

(assert (= bs!1938461 (and d!2304938 d!2304526)))

(declare-fun validRegex!10179 (Regex!19715) Bool)

(assert (=> bs!1938461 (= (dynLambda!29782 lambda!465506 (h!78856 (exprs!8967 setElem!57044))) (validRegex!10179 (h!78856 (exprs!8967 setElem!57044))))))

(declare-fun m!8090660 () Bool)

(assert (=> bs!1938461 m!8090660))

(assert (=> b!7507474 d!2304938))

(check-sat (not bm!688784) (not d!2304826) (not b!7507501) (not b!7507518) (not b!7507402) (not b!7507362) (not bm!688802) (not d!2304808) (not d!2304928) (not b!7507458) (not bm!688789) (not d!2304896) (not bm!688791) (not b!7507367) (not d!2304846) (not b!7507393) (not d!2304902) (not b!7507478) (not bm!688787) (not b!7507521) (not b!7507203) (not d!2304668) (not b!7507449) (not d!2304810) (not b!7507515) (not b!7507380) (not b!7507366) (not bm!688803) (not b!7507483) (not b!7507268) (not b!7507463) (not d!2304934) (not d!2304842) (not d!2304872) (not d!2304672) (not b!7507453) (not b!7507220) (not b!7507469) (not b!7507457) (not b!7507443) (not b!7507352) (not d!2304828) (not b!7507204) (not b_lambda!287873) (not b!7507417) (not b!7507491) (not b!7507294) (not b!7507193) (not b!7507497) (not b!7507516) (not d!2304850) (not b!7507455) (not b!7507489) (not d!2304762) (not b!7507523) (not b!7507216) (not d!2304900) (not b!7507358) (not b!7507290) (not b!7507200) (not b!7507468) (not d!2304880) (not b!7507376) (not b!7507421) (not b!7507495) (not d!2304750) (not b!7507477) (not bm!688790) (not d!2304904) (not d!2304868) (not b!7507386) (not d!2304812) (not b!7507502) (not b!7507460) (not b!7507383) (not b!7507392) (not d!2304684) (not d!2304890) (not b!7507500) (not b!7507299) (not b!7507499) (not d!2304892) (not b!7507274) (not d!2304886) (not b!7507387) (not b!7507481) (not b!7507346) (not b!7507199) (not b!7507519) (not b!7507378) (not b!7507348) (not d!2304834) tp_is_empty!49771 (not d!2304932) (not b!7507464) (not b!7507467) (not d!2304664) (not b!7507493) (not b!7507444) (not d!2304678) (not d!2304876) (not b!7507411) (not b!7507487) (not d!2304658) (not b!7507329) (not b!7507475) (not b!7507370) (not b!7507372) (not b!7507451) (not b!7507482) (not d!2304804) (not b!7507522) (not b!7507278) (not b!7507201) (not b!7507347) (not b!7507461) (not b!7507409) (not b!7507423) (not d!2304866) (not b!7507415) (not b!7507298) (not b!7507363) (not d!2304782) (not b!7507374) (not d!2304752) (not b!7507296) (not bs!1938461) (not b!7507221) (not b!7507517) (not b!7507485) (not d!2304706) (not bm!688786) (not d!2304888) (not b!7507282) (not bm!688788) (not setNonEmpty!57052) (not b!7507213) (not b!7507292) (not b!7507359) (not b!7507187) (not b!7507350) (not d!2304710) (not b!7507276) (not b!7507520) (not b!7507447) (not b!7507382) (not b!7507280) (not b!7507351) (not b!7507407) (not b!7507408) (not bm!688785) (not b!7507398) (not b!7507448) (not d!2304836) (not b!7507399) (not d!2304848))
(check-sat)
