; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726350 () Bool)

(assert start!726350)

(declare-fun b!7504460 () Bool)

(declare-datatypes ((Unit!166310 0))(
  ( (Unit!166311) )
))
(declare-fun e!4474437 () Unit!166310)

(declare-fun Unit!166312 () Unit!166310)

(assert (=> b!7504460 (= e!4474437 Unit!166312)))

(declare-fun lt!2634051 () Unit!166310)

(declare-datatypes ((C!39688 0))(
  ( (C!39689 (val!30242 Int)) )
))
(declare-datatypes ((List!72463 0))(
  ( (Nil!72339) (Cons!72339 (h!78787 C!39688) (t!387032 List!72463)) )
))
(declare-fun totalInput!779 () List!72463)

(declare-fun lemmaIsPrefixRefl!3826 (List!72463 List!72463) Unit!166310)

(assert (=> b!7504460 (= lt!2634051 (lemmaIsPrefixRefl!3826 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5977 (List!72463 List!72463) Bool)

(assert (=> b!7504460 (isPrefix!5977 totalInput!779 totalInput!779)))

(declare-fun lt!2634040 () Unit!166310)

(declare-fun testedP!204 () List!72463)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1480 (List!72463 List!72463 List!72463) Unit!166310)

(assert (=> b!7504460 (= lt!2634040 (lemmaIsPrefixSameLengthThenSameList!1480 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7504460 false))

(declare-fun b!7504461 () Bool)

(declare-fun e!4474428 () Bool)

(declare-fun e!4474436 () Bool)

(assert (=> b!7504461 (= e!4474428 (not e!4474436))))

(declare-fun res!3010646 () Bool)

(assert (=> b!7504461 (=> res!3010646 e!4474436)))

(assert (=> b!7504461 (= res!3010646 (not (isPrefix!5977 testedP!204 totalInput!779)))))

(declare-fun lt!2634048 () List!72463)

(assert (=> b!7504461 (isPrefix!5977 testedP!204 lt!2634048)))

(declare-fun lt!2634050 () Unit!166310)

(declare-fun testedSuffix!164 () List!72463)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3690 (List!72463 List!72463) Unit!166310)

(assert (=> b!7504461 (= lt!2634050 (lemmaConcatTwoListThenFirstIsPrefix!3690 testedP!204 testedSuffix!164))))

(declare-fun b!7504462 () Bool)

(declare-fun e!4474435 () Bool)

(assert (=> b!7504462 (= e!4474435 e!4474428)))

(declare-fun res!3010639 () Bool)

(assert (=> b!7504462 (=> (not res!3010639) (not e!4474428))))

(declare-fun totalInputSize!226 () Int)

(declare-fun lt!2634052 () Int)

(assert (=> b!7504462 (= res!3010639 (= totalInputSize!226 lt!2634052))))

(declare-fun size!42252 (List!72463) Int)

(assert (=> b!7504462 (= lt!2634052 (size!42252 totalInput!779))))

(declare-fun setRes!56940 () Bool)

(declare-fun setNonEmpty!56940 () Bool)

(declare-fun e!4474431 () Bool)

(declare-fun tp!2178358 () Bool)

(declare-datatypes ((Regex!19691 0))(
  ( (ElementMatch!19691 (c!1385460 C!39688)) (Concat!28536 (regOne!39894 Regex!19691) (regTwo!39894 Regex!19691)) (EmptyExpr!19691) (Star!19691 (reg!20020 Regex!19691)) (EmptyLang!19691) (Union!19691 (regOne!39895 Regex!19691) (regTwo!39895 Regex!19691)) )
))
(declare-datatypes ((List!72464 0))(
  ( (Nil!72340) (Cons!72340 (h!78788 Regex!19691) (t!387033 List!72464)) )
))
(declare-datatypes ((Context!16886 0))(
  ( (Context!16887 (exprs!8943 List!72464)) )
))
(declare-fun setElem!56940 () Context!16886)

(declare-fun inv!92442 (Context!16886) Bool)

(assert (=> setNonEmpty!56940 (= setRes!56940 (and tp!2178358 (inv!92442 setElem!56940) e!4474431))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3716 () (InoxSet Context!16886))

(declare-fun setRest!56940 () (InoxSet Context!16886))

(assert (=> setNonEmpty!56940 (= z!3716 ((_ map or) (store ((as const (Array Context!16886 Bool)) false) setElem!56940 true) setRest!56940))))

(declare-fun b!7504463 () Bool)

(declare-fun e!4474427 () Bool)

(assert (=> b!7504463 (= e!4474427 true)))

(declare-fun lt!2634042 () Int)

(declare-fun lt!2634041 () List!72463)

(assert (=> b!7504463 (= lt!2634042 (size!42252 lt!2634041))))

(declare-fun b!7504464 () Bool)

(declare-fun e!4474434 () Bool)

(declare-fun tp_is_empty!49703 () Bool)

(declare-fun tp!2178356 () Bool)

(assert (=> b!7504464 (= e!4474434 (and tp_is_empty!49703 tp!2178356))))

(declare-fun b!7504465 () Bool)

(declare-fun e!4474438 () Bool)

(declare-fun tp!2178355 () Bool)

(assert (=> b!7504465 (= e!4474438 (and tp_is_empty!49703 tp!2178355))))

(declare-fun res!3010643 () Bool)

(declare-fun e!4474432 () Bool)

(assert (=> start!726350 (=> (not res!3010643) (not e!4474432))))

(assert (=> start!726350 (= res!3010643 (= lt!2634048 totalInput!779))))

(declare-fun ++!17310 (List!72463 List!72463) List!72463)

(assert (=> start!726350 (= lt!2634048 (++!17310 testedP!204 testedSuffix!164))))

(assert (=> start!726350 e!4474432))

(assert (=> start!726350 e!4474434))

(assert (=> start!726350 true))

(declare-fun e!4474433 () Bool)

(assert (=> start!726350 e!4474433))

(assert (=> start!726350 e!4474438))

(declare-fun condSetEmpty!56940 () Bool)

(assert (=> start!726350 (= condSetEmpty!56940 (= z!3716 ((as const (Array Context!16886 Bool)) false)))))

(assert (=> start!726350 setRes!56940))

(declare-fun b!7504466 () Bool)

(declare-fun e!4474429 () Bool)

(assert (=> b!7504466 (= e!4474436 e!4474429)))

(declare-fun res!3010644 () Bool)

(assert (=> b!7504466 (=> res!3010644 e!4474429)))

(declare-fun lostCauseZipper!1379 ((InoxSet Context!16886)) Bool)

(assert (=> b!7504466 (= res!3010644 (lostCauseZipper!1379 z!3716))))

(declare-fun lt!2634044 () List!72463)

(assert (=> b!7504466 (and (= testedSuffix!164 lt!2634044) (= lt!2634044 testedSuffix!164))))

(declare-fun lt!2634053 () Unit!166310)

(declare-fun lemmaSamePrefixThenSameSuffix!2782 (List!72463 List!72463 List!72463 List!72463 List!72463) Unit!166310)

(assert (=> b!7504466 (= lt!2634053 (lemmaSamePrefixThenSameSuffix!2782 testedP!204 testedSuffix!164 testedP!204 lt!2634044 totalInput!779))))

(declare-fun getSuffix!3479 (List!72463 List!72463) List!72463)

(assert (=> b!7504466 (= lt!2634044 (getSuffix!3479 totalInput!779 testedP!204))))

(declare-fun b!7504467 () Bool)

(declare-fun e!4474430 () Bool)

(assert (=> b!7504467 (= e!4474430 e!4474427)))

(declare-fun res!3010641 () Bool)

(assert (=> b!7504467 (=> res!3010641 e!4474427)))

(declare-fun nullableZipper!3171 ((InoxSet Context!16886)) Bool)

(assert (=> b!7504467 (= res!3010641 (nullableZipper!3171 z!3716))))

(declare-fun lt!2634043 () List!72463)

(assert (=> b!7504467 (= (++!17310 lt!2634041 lt!2634043) totalInput!779)))

(declare-fun lt!2634054 () C!39688)

(declare-fun lt!2634039 () Unit!166310)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3151 (List!72463 C!39688 List!72463 List!72463) Unit!166310)

(assert (=> b!7504467 (= lt!2634039 (lemmaMoveElementToOtherListKeepsConcatEq!3151 testedP!204 lt!2634054 lt!2634043 totalInput!779))))

(declare-fun tail!14983 (List!72463) List!72463)

(assert (=> b!7504467 (= lt!2634043 (tail!14983 testedSuffix!164))))

(declare-fun head!15417 (List!72463) C!39688)

(assert (=> b!7504467 (isPrefix!5977 (++!17310 testedP!204 (Cons!72339 (head!15417 lt!2634044) Nil!72339)) totalInput!779)))

(declare-fun lt!2634047 () Unit!166310)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1118 (List!72463 List!72463) Unit!166310)

(assert (=> b!7504467 (= lt!2634047 (lemmaAddHeadSuffixToPrefixStillPrefix!1118 testedP!204 totalInput!779))))

(assert (=> b!7504467 (= lt!2634041 (++!17310 testedP!204 (Cons!72339 lt!2634054 Nil!72339)))))

(assert (=> b!7504467 (= lt!2634054 (head!15417 testedSuffix!164))))

(declare-fun b!7504468 () Bool)

(declare-fun tp!2178359 () Bool)

(assert (=> b!7504468 (= e!4474433 (and tp_is_empty!49703 tp!2178359))))

(declare-fun b!7504469 () Bool)

(declare-fun res!3010645 () Bool)

(assert (=> b!7504469 (=> res!3010645 e!4474429)))

(declare-fun testedPSize!164 () Int)

(assert (=> b!7504469 (= res!3010645 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7504470 () Bool)

(assert (=> b!7504470 (= e!4474432 e!4474435)))

(declare-fun res!3010642 () Bool)

(assert (=> b!7504470 (=> (not res!3010642) (not e!4474435))))

(declare-fun lt!2634045 () Int)

(assert (=> b!7504470 (= res!3010642 (= testedPSize!164 lt!2634045))))

(assert (=> b!7504470 (= lt!2634045 (size!42252 testedP!204))))

(declare-fun b!7504471 () Bool)

(declare-fun tp!2178357 () Bool)

(assert (=> b!7504471 (= e!4474431 tp!2178357)))

(declare-fun b!7504472 () Bool)

(assert (=> b!7504472 (= e!4474429 e!4474430)))

(declare-fun res!3010640 () Bool)

(assert (=> b!7504472 (=> res!3010640 e!4474430)))

(assert (=> b!7504472 (= res!3010640 (>= lt!2634045 lt!2634052))))

(declare-fun lt!2634046 () Unit!166310)

(assert (=> b!7504472 (= lt!2634046 e!4474437)))

(declare-fun c!1385459 () Bool)

(assert (=> b!7504472 (= c!1385459 (= lt!2634045 lt!2634052))))

(assert (=> b!7504472 (<= lt!2634045 lt!2634052)))

(declare-fun lt!2634049 () Unit!166310)

(declare-fun lemmaIsPrefixThenSmallerEqSize!982 (List!72463 List!72463) Unit!166310)

(assert (=> b!7504472 (= lt!2634049 (lemmaIsPrefixThenSmallerEqSize!982 testedP!204 totalInput!779))))

(declare-fun setIsEmpty!56940 () Bool)

(assert (=> setIsEmpty!56940 setRes!56940))

(declare-fun b!7504473 () Bool)

(declare-fun Unit!166313 () Unit!166310)

(assert (=> b!7504473 (= e!4474437 Unit!166313)))

(assert (= (and start!726350 res!3010643) b!7504470))

(assert (= (and b!7504470 res!3010642) b!7504462))

(assert (= (and b!7504462 res!3010639) b!7504461))

(assert (= (and b!7504461 (not res!3010646)) b!7504466))

(assert (= (and b!7504466 (not res!3010644)) b!7504469))

(assert (= (and b!7504469 (not res!3010645)) b!7504472))

(assert (= (and b!7504472 c!1385459) b!7504460))

(assert (= (and b!7504472 (not c!1385459)) b!7504473))

(assert (= (and b!7504472 (not res!3010640)) b!7504467))

(assert (= (and b!7504467 (not res!3010641)) b!7504463))

(get-info :version)

(assert (= (and start!726350 ((_ is Cons!72339) testedSuffix!164)) b!7504464))

(assert (= (and start!726350 ((_ is Cons!72339) totalInput!779)) b!7504468))

(assert (= (and start!726350 ((_ is Cons!72339) testedP!204)) b!7504465))

(assert (= (and start!726350 condSetEmpty!56940) setIsEmpty!56940))

(assert (= (and start!726350 (not condSetEmpty!56940)) setNonEmpty!56940))

(assert (= setNonEmpty!56940 b!7504471))

(declare-fun m!8086808 () Bool)

(assert (=> b!7504470 m!8086808))

(declare-fun m!8086810 () Bool)

(assert (=> b!7504461 m!8086810))

(declare-fun m!8086812 () Bool)

(assert (=> b!7504461 m!8086812))

(declare-fun m!8086814 () Bool)

(assert (=> b!7504461 m!8086814))

(declare-fun m!8086816 () Bool)

(assert (=> b!7504462 m!8086816))

(declare-fun m!8086818 () Bool)

(assert (=> b!7504460 m!8086818))

(declare-fun m!8086820 () Bool)

(assert (=> b!7504460 m!8086820))

(declare-fun m!8086822 () Bool)

(assert (=> b!7504460 m!8086822))

(declare-fun m!8086824 () Bool)

(assert (=> b!7504467 m!8086824))

(declare-fun m!8086826 () Bool)

(assert (=> b!7504467 m!8086826))

(declare-fun m!8086828 () Bool)

(assert (=> b!7504467 m!8086828))

(declare-fun m!8086830 () Bool)

(assert (=> b!7504467 m!8086830))

(declare-fun m!8086832 () Bool)

(assert (=> b!7504467 m!8086832))

(declare-fun m!8086834 () Bool)

(assert (=> b!7504467 m!8086834))

(declare-fun m!8086836 () Bool)

(assert (=> b!7504467 m!8086836))

(declare-fun m!8086838 () Bool)

(assert (=> b!7504467 m!8086838))

(assert (=> b!7504467 m!8086824))

(declare-fun m!8086840 () Bool)

(assert (=> b!7504467 m!8086840))

(declare-fun m!8086842 () Bool)

(assert (=> b!7504467 m!8086842))

(declare-fun m!8086844 () Bool)

(assert (=> b!7504466 m!8086844))

(declare-fun m!8086846 () Bool)

(assert (=> b!7504466 m!8086846))

(declare-fun m!8086848 () Bool)

(assert (=> b!7504466 m!8086848))

(declare-fun m!8086850 () Bool)

(assert (=> b!7504472 m!8086850))

(declare-fun m!8086852 () Bool)

(assert (=> setNonEmpty!56940 m!8086852))

(declare-fun m!8086854 () Bool)

(assert (=> start!726350 m!8086854))

(declare-fun m!8086856 () Bool)

(assert (=> b!7504463 m!8086856))

(check-sat (not b!7504467) (not b!7504462) (not b!7504463) (not start!726350) (not b!7504461) (not setNonEmpty!56940) tp_is_empty!49703 (not b!7504470) (not b!7504472) (not b!7504464) (not b!7504465) (not b!7504471) (not b!7504468) (not b!7504460) (not b!7504466))
(check-sat)
