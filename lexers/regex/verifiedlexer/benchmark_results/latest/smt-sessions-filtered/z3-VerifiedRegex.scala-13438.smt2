; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726754 () Bool)

(assert start!726754)

(declare-fun b!7506726 () Bool)

(declare-fun e!4476042 () Bool)

(declare-fun e!4476040 () Bool)

(assert (=> b!7506726 (= e!4476042 (not e!4476040))))

(declare-fun res!3011690 () Bool)

(assert (=> b!7506726 (=> res!3011690 e!4476040)))

(declare-datatypes ((C!39752 0))(
  ( (C!39753 (val!30274 Int)) )
))
(declare-datatypes ((List!72527 0))(
  ( (Nil!72403) (Cons!72403 (h!78851 C!39752) (t!387096 List!72527)) )
))
(declare-fun testedP!204 () List!72527)

(declare-fun totalInput!779 () List!72527)

(declare-fun isPrefix!6007 (List!72527 List!72527) Bool)

(assert (=> b!7506726 (= res!3011690 (not (isPrefix!6007 testedP!204 totalInput!779)))))

(declare-fun lt!2635449 () List!72527)

(assert (=> b!7506726 (isPrefix!6007 testedP!204 lt!2635449)))

(declare-datatypes ((Unit!166406 0))(
  ( (Unit!166407) )
))
(declare-fun lt!2635435 () Unit!166406)

(declare-fun testedSuffix!164 () List!72527)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3720 (List!72527 List!72527) Unit!166406)

(assert (=> b!7506726 (= lt!2635435 (lemmaConcatTwoListThenFirstIsPrefix!3720 testedP!204 testedSuffix!164))))

(declare-fun setIsEmpty!57038 () Bool)

(declare-fun setRes!57038 () Bool)

(assert (=> setIsEmpty!57038 setRes!57038))

(declare-fun b!7506727 () Bool)

(declare-fun e!4476038 () Bool)

(declare-fun e!4476033 () Bool)

(assert (=> b!7506727 (= e!4476038 e!4476033)))

(declare-fun res!3011692 () Bool)

(assert (=> b!7506727 (=> res!3011692 e!4476033)))

(declare-fun lt!2635443 () Int)

(declare-fun lt!2635444 () Int)

(assert (=> b!7506727 (= res!3011692 (>= lt!2635443 lt!2635444))))

(declare-fun lt!2635439 () Unit!166406)

(declare-fun e!4476031 () Unit!166406)

(assert (=> b!7506727 (= lt!2635439 e!4476031)))

(declare-fun c!1385893 () Bool)

(assert (=> b!7506727 (= c!1385893 (= lt!2635443 lt!2635444))))

(assert (=> b!7506727 (<= lt!2635443 lt!2635444)))

(declare-fun lt!2635450 () Unit!166406)

(declare-fun lemmaIsPrefixThenSmallerEqSize!994 (List!72527 List!72527) Unit!166406)

(assert (=> b!7506727 (= lt!2635450 (lemmaIsPrefixThenSmallerEqSize!994 testedP!204 totalInput!779))))

(declare-fun b!7506728 () Bool)

(assert (=> b!7506728 (= e!4476040 e!4476038)))

(declare-fun res!3011694 () Bool)

(assert (=> b!7506728 (=> res!3011694 e!4476038)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19713 0))(
  ( (ElementMatch!19713 (c!1385894 C!39752)) (Concat!28558 (regOne!39938 Regex!19713) (regTwo!39938 Regex!19713)) (EmptyExpr!19713) (Star!19713 (reg!20042 Regex!19713)) (EmptyLang!19713) (Union!19713 (regOne!39939 Regex!19713) (regTwo!39939 Regex!19713)) )
))
(declare-datatypes ((List!72528 0))(
  ( (Nil!72404) (Cons!72404 (h!78852 Regex!19713) (t!387097 List!72528)) )
))
(declare-datatypes ((Context!16930 0))(
  ( (Context!16931 (exprs!8965 List!72528)) )
))
(declare-fun z!3716 () (InoxSet Context!16930))

(declare-fun lostCauseZipper!1401 ((InoxSet Context!16930)) Bool)

(assert (=> b!7506728 (= res!3011694 (lostCauseZipper!1401 z!3716))))

(declare-fun lt!2635441 () List!72527)

(assert (=> b!7506728 (and (= testedSuffix!164 lt!2635441) (= lt!2635441 testedSuffix!164))))

(declare-fun lt!2635437 () Unit!166406)

(declare-fun lemmaSamePrefixThenSameSuffix!2806 (List!72527 List!72527 List!72527 List!72527 List!72527) Unit!166406)

(assert (=> b!7506728 (= lt!2635437 (lemmaSamePrefixThenSameSuffix!2806 testedP!204 testedSuffix!164 testedP!204 lt!2635441 totalInput!779))))

(declare-fun getSuffix!3507 (List!72527 List!72527) List!72527)

(assert (=> b!7506728 (= lt!2635441 (getSuffix!3507 totalInput!779 testedP!204))))

(declare-fun b!7506729 () Bool)

(declare-fun e!4476041 () Bool)

(declare-fun tp_is_empty!49767 () Bool)

(declare-fun tp!2179022 () Bool)

(assert (=> b!7506729 (= e!4476041 (and tp_is_empty!49767 tp!2179022))))

(declare-fun b!7506730 () Bool)

(declare-fun e!4476036 () Bool)

(declare-fun tp!2179023 () Bool)

(assert (=> b!7506730 (= e!4476036 (and tp_is_empty!49767 tp!2179023))))

(declare-fun res!3011688 () Bool)

(declare-fun e!4476037 () Bool)

(assert (=> start!726754 (=> (not res!3011688) (not e!4476037))))

(assert (=> start!726754 (= res!3011688 (= lt!2635449 totalInput!779))))

(declare-fun ++!17342 (List!72527 List!72527) List!72527)

(assert (=> start!726754 (= lt!2635449 (++!17342 testedP!204 testedSuffix!164))))

(assert (=> start!726754 e!4476037))

(assert (=> start!726754 e!4476041))

(assert (=> start!726754 true))

(assert (=> start!726754 e!4476036))

(declare-fun e!4476034 () Bool)

(assert (=> start!726754 e!4476034))

(declare-fun condSetEmpty!57038 () Bool)

(assert (=> start!726754 (= condSetEmpty!57038 (= z!3716 ((as const (Array Context!16930 Bool)) false)))))

(assert (=> start!726754 setRes!57038))

(declare-fun b!7506731 () Bool)

(declare-fun e!4476032 () Bool)

(assert (=> b!7506731 (= e!4476033 e!4476032)))

(declare-fun res!3011687 () Bool)

(assert (=> b!7506731 (=> res!3011687 e!4476032)))

(declare-fun nullableZipper!3179 ((InoxSet Context!16930)) Bool)

(assert (=> b!7506731 (= res!3011687 (not (nullableZipper!3179 z!3716)))))

(declare-fun lt!2635438 () List!72527)

(declare-fun lt!2635448 () List!72527)

(assert (=> b!7506731 (= (++!17342 lt!2635438 lt!2635448) totalInput!779)))

(declare-fun lt!2635440 () C!39752)

(declare-fun lt!2635442 () Unit!166406)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3155 (List!72527 C!39752 List!72527 List!72527) Unit!166406)

(assert (=> b!7506731 (= lt!2635442 (lemmaMoveElementToOtherListKeepsConcatEq!3155 testedP!204 lt!2635440 lt!2635448 totalInput!779))))

(declare-fun tail!14997 (List!72527) List!72527)

(assert (=> b!7506731 (= lt!2635448 (tail!14997 testedSuffix!164))))

(declare-fun head!15430 (List!72527) C!39752)

(assert (=> b!7506731 (isPrefix!6007 (++!17342 testedP!204 (Cons!72403 (head!15430 lt!2635441) Nil!72403)) totalInput!779)))

(declare-fun lt!2635446 () Unit!166406)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1124 (List!72527 List!72527) Unit!166406)

(assert (=> b!7506731 (= lt!2635446 (lemmaAddHeadSuffixToPrefixStillPrefix!1124 testedP!204 totalInput!779))))

(assert (=> b!7506731 (= lt!2635438 (++!17342 testedP!204 (Cons!72403 lt!2635440 Nil!72403)))))

(assert (=> b!7506731 (= lt!2635440 (head!15430 testedSuffix!164))))

(declare-fun b!7506732 () Bool)

(declare-fun Unit!166408 () Unit!166406)

(assert (=> b!7506732 (= e!4476031 Unit!166408)))

(declare-fun lt!2635436 () Unit!166406)

(declare-fun lemmaIsPrefixRefl!3846 (List!72527 List!72527) Unit!166406)

(assert (=> b!7506732 (= lt!2635436 (lemmaIsPrefixRefl!3846 totalInput!779 totalInput!779))))

(assert (=> b!7506732 (isPrefix!6007 totalInput!779 totalInput!779)))

(declare-fun lt!2635445 () Unit!166406)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1496 (List!72527 List!72527 List!72527) Unit!166406)

(assert (=> b!7506732 (= lt!2635445 (lemmaIsPrefixSameLengthThenSameList!1496 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7506732 false))

(declare-fun b!7506733 () Bool)

(declare-fun Unit!166409 () Unit!166406)

(assert (=> b!7506733 (= e!4476031 Unit!166409)))

(declare-fun setNonEmpty!57038 () Bool)

(declare-fun tp!2179019 () Bool)

(declare-fun e!4476035 () Bool)

(declare-fun setElem!57038 () Context!16930)

(declare-fun inv!92512 (Context!16930) Bool)

(assert (=> setNonEmpty!57038 (= setRes!57038 (and tp!2179019 (inv!92512 setElem!57038) e!4476035))))

(declare-fun setRest!57038 () (InoxSet Context!16930))

(assert (=> setNonEmpty!57038 (= z!3716 ((_ map or) (store ((as const (Array Context!16930 Bool)) false) setElem!57038 true) setRest!57038))))

(declare-fun b!7506734 () Bool)

(assert (=> b!7506734 (= e!4476032 true)))

(declare-fun totalInputSize!226 () Int)

(declare-fun testedPSize!164 () Int)

(declare-datatypes ((tuple2!68760 0))(
  ( (tuple2!68761 (_1!37683 List!72527) (_2!37683 List!72527)) )
))
(declare-fun lt!2635447 () tuple2!68760)

(declare-fun findLongestMatchInnerZipper!321 ((InoxSet Context!16930) List!72527 Int List!72527 List!72527 Int) tuple2!68760)

(declare-fun derivationStepZipper!3724 ((InoxSet Context!16930) C!39752) (InoxSet Context!16930))

(assert (=> b!7506734 (= lt!2635447 (findLongestMatchInnerZipper!321 (derivationStepZipper!3724 z!3716 lt!2635440) lt!2635438 (+ 1 testedPSize!164) lt!2635448 totalInput!779 totalInputSize!226))))

(declare-fun b!7506735 () Bool)

(declare-fun e!4476039 () Bool)

(assert (=> b!7506735 (= e!4476039 e!4476042)))

(declare-fun res!3011693 () Bool)

(assert (=> b!7506735 (=> (not res!3011693) (not e!4476042))))

(assert (=> b!7506735 (= res!3011693 (= totalInputSize!226 lt!2635444))))

(declare-fun size!42284 (List!72527) Int)

(assert (=> b!7506735 (= lt!2635444 (size!42284 totalInput!779))))

(declare-fun b!7506736 () Bool)

(declare-fun tp!2179021 () Bool)

(assert (=> b!7506736 (= e!4476034 (and tp_is_empty!49767 tp!2179021))))

(declare-fun b!7506737 () Bool)

(assert (=> b!7506737 (= e!4476037 e!4476039)))

(declare-fun res!3011691 () Bool)

(assert (=> b!7506737 (=> (not res!3011691) (not e!4476039))))

(assert (=> b!7506737 (= res!3011691 (= testedPSize!164 lt!2635443))))

(assert (=> b!7506737 (= lt!2635443 (size!42284 testedP!204))))

(declare-fun b!7506738 () Bool)

(declare-fun res!3011689 () Bool)

(assert (=> b!7506738 (=> res!3011689 e!4476038)))

(assert (=> b!7506738 (= res!3011689 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7506739 () Bool)

(declare-fun tp!2179020 () Bool)

(assert (=> b!7506739 (= e!4476035 tp!2179020)))

(assert (= (and start!726754 res!3011688) b!7506737))

(assert (= (and b!7506737 res!3011691) b!7506735))

(assert (= (and b!7506735 res!3011693) b!7506726))

(assert (= (and b!7506726 (not res!3011690)) b!7506728))

(assert (= (and b!7506728 (not res!3011694)) b!7506738))

(assert (= (and b!7506738 (not res!3011689)) b!7506727))

(assert (= (and b!7506727 c!1385893) b!7506732))

(assert (= (and b!7506727 (not c!1385893)) b!7506733))

(assert (= (and b!7506727 (not res!3011692)) b!7506731))

(assert (= (and b!7506731 (not res!3011687)) b!7506734))

(get-info :version)

(assert (= (and start!726754 ((_ is Cons!72403) testedSuffix!164)) b!7506729))

(assert (= (and start!726754 ((_ is Cons!72403) totalInput!779)) b!7506730))

(assert (= (and start!726754 ((_ is Cons!72403) testedP!204)) b!7506736))

(assert (= (and start!726754 condSetEmpty!57038) setIsEmpty!57038))

(assert (= (and start!726754 (not condSetEmpty!57038)) setNonEmpty!57038))

(assert (= setNonEmpty!57038 b!7506739))

(declare-fun m!8089266 () Bool)

(assert (=> b!7506728 m!8089266))

(declare-fun m!8089268 () Bool)

(assert (=> b!7506728 m!8089268))

(declare-fun m!8089270 () Bool)

(assert (=> b!7506728 m!8089270))

(declare-fun m!8089272 () Bool)

(assert (=> b!7506735 m!8089272))

(declare-fun m!8089274 () Bool)

(assert (=> start!726754 m!8089274))

(declare-fun m!8089276 () Bool)

(assert (=> setNonEmpty!57038 m!8089276))

(declare-fun m!8089278 () Bool)

(assert (=> b!7506726 m!8089278))

(declare-fun m!8089280 () Bool)

(assert (=> b!7506726 m!8089280))

(declare-fun m!8089282 () Bool)

(assert (=> b!7506726 m!8089282))

(declare-fun m!8089284 () Bool)

(assert (=> b!7506727 m!8089284))

(declare-fun m!8089286 () Bool)

(assert (=> b!7506737 m!8089286))

(declare-fun m!8089288 () Bool)

(assert (=> b!7506732 m!8089288))

(declare-fun m!8089290 () Bool)

(assert (=> b!7506732 m!8089290))

(declare-fun m!8089292 () Bool)

(assert (=> b!7506732 m!8089292))

(declare-fun m!8089294 () Bool)

(assert (=> b!7506731 m!8089294))

(declare-fun m!8089296 () Bool)

(assert (=> b!7506731 m!8089296))

(declare-fun m!8089298 () Bool)

(assert (=> b!7506731 m!8089298))

(declare-fun m!8089300 () Bool)

(assert (=> b!7506731 m!8089300))

(declare-fun m!8089302 () Bool)

(assert (=> b!7506731 m!8089302))

(declare-fun m!8089304 () Bool)

(assert (=> b!7506731 m!8089304))

(assert (=> b!7506731 m!8089294))

(declare-fun m!8089306 () Bool)

(assert (=> b!7506731 m!8089306))

(declare-fun m!8089308 () Bool)

(assert (=> b!7506731 m!8089308))

(declare-fun m!8089310 () Bool)

(assert (=> b!7506731 m!8089310))

(declare-fun m!8089312 () Bool)

(assert (=> b!7506731 m!8089312))

(declare-fun m!8089314 () Bool)

(assert (=> b!7506734 m!8089314))

(assert (=> b!7506734 m!8089314))

(declare-fun m!8089316 () Bool)

(assert (=> b!7506734 m!8089316))

(check-sat (not b!7506739) (not b!7506726) (not b!7506732) (not b!7506728) (not setNonEmpty!57038) (not b!7506736) (not b!7506737) (not b!7506729) tp_is_empty!49767 (not b!7506735) (not b!7506727) (not start!726754) (not b!7506731) (not b!7506730) (not b!7506734))
(check-sat)
