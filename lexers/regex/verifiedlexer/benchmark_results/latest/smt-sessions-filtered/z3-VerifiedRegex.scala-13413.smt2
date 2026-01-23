; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725870 () Bool)

(assert start!725870)

(declare-fun b!7502293 () Bool)

(declare-fun res!3009674 () Bool)

(declare-fun e!4472909 () Bool)

(assert (=> b!7502293 (=> res!3009674 e!4472909)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7502293 (= res!3009674 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502294 () Bool)

(declare-fun e!4472915 () Bool)

(declare-fun e!4472913 () Bool)

(assert (=> b!7502294 (= e!4472915 (not e!4472913))))

(declare-fun res!3009677 () Bool)

(assert (=> b!7502294 (=> res!3009677 e!4472913)))

(declare-datatypes ((C!39652 0))(
  ( (C!39653 (val!30224 Int)) )
))
(declare-datatypes ((List!72418 0))(
  ( (Nil!72294) (Cons!72294 (h!78742 C!39652) (t!386987 List!72418)) )
))
(declare-fun testedP!204 () List!72418)

(declare-fun totalInput!779 () List!72418)

(declare-fun isPrefix!5959 (List!72418 List!72418) Bool)

(assert (=> b!7502294 (= res!3009677 (not (isPrefix!5959 testedP!204 totalInput!779)))))

(declare-fun lt!2632430 () List!72418)

(assert (=> b!7502294 (isPrefix!5959 testedP!204 lt!2632430)))

(declare-datatypes ((Unit!166222 0))(
  ( (Unit!166223) )
))
(declare-fun lt!2632421 () Unit!166222)

(declare-fun testedSuffix!164 () List!72418)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3672 (List!72418 List!72418) Unit!166222)

(assert (=> b!7502294 (= lt!2632421 (lemmaConcatTwoListThenFirstIsPrefix!3672 testedP!204 testedSuffix!164))))

(declare-fun b!7502295 () Bool)

(declare-fun e!4472917 () Bool)

(assert (=> b!7502295 (= e!4472909 e!4472917)))

(declare-fun res!3009679 () Bool)

(assert (=> b!7502295 (=> res!3009679 e!4472917)))

(declare-fun lt!2632424 () Int)

(declare-fun lt!2632427 () Int)

(assert (=> b!7502295 (= res!3009679 (>= lt!2632424 lt!2632427))))

(declare-fun lt!2632423 () Unit!166222)

(declare-fun e!4472918 () Unit!166222)

(assert (=> b!7502295 (= lt!2632423 e!4472918)))

(declare-fun c!1384957 () Bool)

(assert (=> b!7502295 (= c!1384957 (= lt!2632424 lt!2632427))))

(assert (=> b!7502295 (<= lt!2632424 lt!2632427)))

(declare-fun lt!2632429 () Unit!166222)

(declare-fun lemmaIsPrefixThenSmallerEqSize!964 (List!72418 List!72418) Unit!166222)

(assert (=> b!7502295 (= lt!2632429 (lemmaIsPrefixThenSmallerEqSize!964 testedP!204 totalInput!779))))

(declare-fun b!7502296 () Bool)

(declare-fun e!4472910 () Bool)

(declare-fun tp_is_empty!49667 () Bool)

(declare-fun tp!2177820 () Bool)

(assert (=> b!7502296 (= e!4472910 (and tp_is_empty!49667 tp!2177820))))

(declare-fun b!7502297 () Bool)

(declare-fun e!4472916 () Bool)

(declare-fun tp!2177822 () Bool)

(assert (=> b!7502297 (= e!4472916 (and tp_is_empty!49667 tp!2177822))))

(declare-fun b!7502298 () Bool)

(declare-fun Unit!166224 () Unit!166222)

(assert (=> b!7502298 (= e!4472918 Unit!166224)))

(declare-fun lt!2632422 () Unit!166222)

(declare-fun lemmaIsPrefixRefl!3808 (List!72418 List!72418) Unit!166222)

(assert (=> b!7502298 (= lt!2632422 (lemmaIsPrefixRefl!3808 totalInput!779 totalInput!779))))

(assert (=> b!7502298 (isPrefix!5959 totalInput!779 totalInput!779)))

(declare-fun lt!2632428 () Unit!166222)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1462 (List!72418 List!72418 List!72418) Unit!166222)

(assert (=> b!7502298 (= lt!2632428 (lemmaIsPrefixSameLengthThenSameList!1462 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502298 false))

(declare-fun setIsEmpty!56852 () Bool)

(declare-fun setRes!56852 () Bool)

(assert (=> setIsEmpty!56852 setRes!56852))

(declare-fun b!7502299 () Bool)

(assert (=> b!7502299 (= e!4472917 true)))

(declare-fun lt!2632426 () List!72418)

(declare-fun ++!17292 (List!72418 List!72418) List!72418)

(declare-fun head!15399 (List!72418) C!39652)

(assert (=> b!7502299 (= lt!2632426 (++!17292 testedP!204 (Cons!72294 (head!15399 testedSuffix!164) Nil!72294)))))

(declare-fun b!7502300 () Bool)

(assert (=> b!7502300 (= e!4472913 e!4472909)))

(declare-fun res!3009680 () Bool)

(assert (=> b!7502300 (=> res!3009680 e!4472909)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19673 0))(
  ( (ElementMatch!19673 (c!1384958 C!39652)) (Concat!28518 (regOne!39858 Regex!19673) (regTwo!39858 Regex!19673)) (EmptyExpr!19673) (Star!19673 (reg!20002 Regex!19673)) (EmptyLang!19673) (Union!19673 (regOne!39859 Regex!19673) (regTwo!39859 Regex!19673)) )
))
(declare-datatypes ((List!72419 0))(
  ( (Nil!72295) (Cons!72295 (h!78743 Regex!19673) (t!386988 List!72419)) )
))
(declare-datatypes ((Context!16850 0))(
  ( (Context!16851 (exprs!8925 List!72419)) )
))
(declare-fun z!3716 () (InoxSet Context!16850))

(declare-fun lostCauseZipper!1361 ((InoxSet Context!16850)) Bool)

(assert (=> b!7502300 (= res!3009680 (lostCauseZipper!1361 z!3716))))

(declare-fun lt!2632425 () List!72418)

(assert (=> b!7502300 (and (= testedSuffix!164 lt!2632425) (= lt!2632425 testedSuffix!164))))

(declare-fun lt!2632420 () Unit!166222)

(declare-fun lemmaSamePrefixThenSameSuffix!2764 (List!72418 List!72418 List!72418 List!72418 List!72418) Unit!166222)

(assert (=> b!7502300 (= lt!2632420 (lemmaSamePrefixThenSameSuffix!2764 testedP!204 testedSuffix!164 testedP!204 lt!2632425 totalInput!779))))

(declare-fun getSuffix!3461 (List!72418 List!72418) List!72418)

(assert (=> b!7502300 (= lt!2632425 (getSuffix!3461 totalInput!779 testedP!204))))

(declare-fun res!3009676 () Bool)

(declare-fun e!4472912 () Bool)

(assert (=> start!725870 (=> (not res!3009676) (not e!4472912))))

(assert (=> start!725870 (= res!3009676 (= lt!2632430 totalInput!779))))

(assert (=> start!725870 (= lt!2632430 (++!17292 testedP!204 testedSuffix!164))))

(assert (=> start!725870 e!4472912))

(assert (=> start!725870 e!4472910))

(assert (=> start!725870 true))

(assert (=> start!725870 e!4472916))

(declare-fun e!4472911 () Bool)

(assert (=> start!725870 e!4472911))

(declare-fun condSetEmpty!56852 () Bool)

(assert (=> start!725870 (= condSetEmpty!56852 (= z!3716 ((as const (Array Context!16850 Bool)) false)))))

(assert (=> start!725870 setRes!56852))

(declare-fun b!7502301 () Bool)

(declare-fun e!4472914 () Bool)

(assert (=> b!7502301 (= e!4472914 e!4472915)))

(declare-fun res!3009678 () Bool)

(assert (=> b!7502301 (=> (not res!3009678) (not e!4472915))))

(assert (=> b!7502301 (= res!3009678 (= totalInputSize!226 lt!2632427))))

(declare-fun size!42234 (List!72418) Int)

(assert (=> b!7502301 (= lt!2632427 (size!42234 totalInput!779))))

(declare-fun b!7502302 () Bool)

(assert (=> b!7502302 (= e!4472912 e!4472914)))

(declare-fun res!3009675 () Bool)

(assert (=> b!7502302 (=> (not res!3009675) (not e!4472914))))

(assert (=> b!7502302 (= res!3009675 (= testedPSize!164 lt!2632424))))

(assert (=> b!7502302 (= lt!2632424 (size!42234 testedP!204))))

(declare-fun b!7502303 () Bool)

(declare-fun Unit!166225 () Unit!166222)

(assert (=> b!7502303 (= e!4472918 Unit!166225)))

(declare-fun b!7502304 () Bool)

(declare-fun e!4472908 () Bool)

(declare-fun tp!2177819 () Bool)

(assert (=> b!7502304 (= e!4472908 tp!2177819)))

(declare-fun b!7502305 () Bool)

(declare-fun tp!2177821 () Bool)

(assert (=> b!7502305 (= e!4472911 (and tp_is_empty!49667 tp!2177821))))

(declare-fun setElem!56852 () Context!16850)

(declare-fun tp!2177823 () Bool)

(declare-fun setNonEmpty!56852 () Bool)

(declare-fun inv!92397 (Context!16850) Bool)

(assert (=> setNonEmpty!56852 (= setRes!56852 (and tp!2177823 (inv!92397 setElem!56852) e!4472908))))

(declare-fun setRest!56852 () (InoxSet Context!16850))

(assert (=> setNonEmpty!56852 (= z!3716 ((_ map or) (store ((as const (Array Context!16850 Bool)) false) setElem!56852 true) setRest!56852))))

(assert (= (and start!725870 res!3009676) b!7502302))

(assert (= (and b!7502302 res!3009675) b!7502301))

(assert (= (and b!7502301 res!3009678) b!7502294))

(assert (= (and b!7502294 (not res!3009677)) b!7502300))

(assert (= (and b!7502300 (not res!3009680)) b!7502293))

(assert (= (and b!7502293 (not res!3009674)) b!7502295))

(assert (= (and b!7502295 c!1384957) b!7502298))

(assert (= (and b!7502295 (not c!1384957)) b!7502303))

(assert (= (and b!7502295 (not res!3009679)) b!7502299))

(get-info :version)

(assert (= (and start!725870 ((_ is Cons!72294) testedSuffix!164)) b!7502296))

(assert (= (and start!725870 ((_ is Cons!72294) totalInput!779)) b!7502297))

(assert (= (and start!725870 ((_ is Cons!72294) testedP!204)) b!7502305))

(assert (= (and start!725870 condSetEmpty!56852) setIsEmpty!56852))

(assert (= (and start!725870 (not condSetEmpty!56852)) setNonEmpty!56852))

(assert (= setNonEmpty!56852 b!7502304))

(declare-fun m!8083822 () Bool)

(assert (=> b!7502302 m!8083822))

(declare-fun m!8083824 () Bool)

(assert (=> setNonEmpty!56852 m!8083824))

(declare-fun m!8083826 () Bool)

(assert (=> start!725870 m!8083826))

(declare-fun m!8083828 () Bool)

(assert (=> b!7502295 m!8083828))

(declare-fun m!8083830 () Bool)

(assert (=> b!7502298 m!8083830))

(declare-fun m!8083832 () Bool)

(assert (=> b!7502298 m!8083832))

(declare-fun m!8083834 () Bool)

(assert (=> b!7502298 m!8083834))

(declare-fun m!8083836 () Bool)

(assert (=> b!7502299 m!8083836))

(declare-fun m!8083838 () Bool)

(assert (=> b!7502299 m!8083838))

(declare-fun m!8083840 () Bool)

(assert (=> b!7502294 m!8083840))

(declare-fun m!8083842 () Bool)

(assert (=> b!7502294 m!8083842))

(declare-fun m!8083844 () Bool)

(assert (=> b!7502294 m!8083844))

(declare-fun m!8083846 () Bool)

(assert (=> b!7502300 m!8083846))

(declare-fun m!8083848 () Bool)

(assert (=> b!7502300 m!8083848))

(declare-fun m!8083850 () Bool)

(assert (=> b!7502300 m!8083850))

(declare-fun m!8083852 () Bool)

(assert (=> b!7502301 m!8083852))

(check-sat (not b!7502295) tp_is_empty!49667 (not b!7502294) (not b!7502305) (not b!7502299) (not b!7502304) (not b!7502300) (not b!7502296) (not b!7502298) (not b!7502297) (not setNonEmpty!56852) (not start!725870) (not b!7502301) (not b!7502302))
(check-sat)
