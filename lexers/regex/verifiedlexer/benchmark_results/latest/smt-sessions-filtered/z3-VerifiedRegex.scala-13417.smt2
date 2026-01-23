; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726002 () Bool)

(assert start!726002)

(declare-fun b!7502943 () Bool)

(declare-datatypes ((Unit!166258 0))(
  ( (Unit!166259) )
))
(declare-fun e!4473400 () Unit!166258)

(declare-fun Unit!166260 () Unit!166258)

(assert (=> b!7502943 (= e!4473400 Unit!166260)))

(declare-fun lt!2633007 () Unit!166258)

(declare-datatypes ((C!39668 0))(
  ( (C!39669 (val!30232 Int)) )
))
(declare-datatypes ((List!72437 0))(
  ( (Nil!72313) (Cons!72313 (h!78761 C!39668) (t!387006 List!72437)) )
))
(declare-fun totalInput!779 () List!72437)

(declare-fun lemmaIsPrefixRefl!3816 (List!72437 List!72437) Unit!166258)

(assert (=> b!7502943 (= lt!2633007 (lemmaIsPrefixRefl!3816 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5967 (List!72437 List!72437) Bool)

(assert (=> b!7502943 (isPrefix!5967 totalInput!779 totalInput!779)))

(declare-fun lt!2633013 () Unit!166258)

(declare-fun testedP!204 () List!72437)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1470 (List!72437 List!72437 List!72437) Unit!166258)

(assert (=> b!7502943 (= lt!2633013 (lemmaIsPrefixSameLengthThenSameList!1470 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7502943 false))

(declare-fun b!7502944 () Bool)

(declare-fun e!4473404 () Bool)

(declare-fun tp_is_empty!49683 () Bool)

(declare-fun tp!2178008 () Bool)

(assert (=> b!7502944 (= e!4473404 (and tp_is_empty!49683 tp!2178008))))

(declare-fun b!7502945 () Bool)

(declare-fun e!4473398 () Bool)

(declare-fun tp!2178009 () Bool)

(assert (=> b!7502945 (= e!4473398 (and tp_is_empty!49683 tp!2178009))))

(declare-fun b!7502946 () Bool)

(declare-fun e!4473399 () Bool)

(assert (=> b!7502946 (= e!4473399 true)))

(declare-fun lt!2633014 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19681 0))(
  ( (ElementMatch!19681 (c!1385088 C!39668)) (Concat!28526 (regOne!39874 Regex!19681) (regTwo!39874 Regex!19681)) (EmptyExpr!19681) (Star!19681 (reg!20010 Regex!19681)) (EmptyLang!19681) (Union!19681 (regOne!39875 Regex!19681) (regTwo!39875 Regex!19681)) )
))
(declare-datatypes ((List!72438 0))(
  ( (Nil!72314) (Cons!72314 (h!78762 Regex!19681) (t!387007 List!72438)) )
))
(declare-datatypes ((Context!16866 0))(
  ( (Context!16867 (exprs!8933 List!72438)) )
))
(declare-fun z!3716 () (InoxSet Context!16866))

(declare-fun nullableZipper!3161 ((InoxSet Context!16866)) Bool)

(assert (=> b!7502946 (= lt!2633014 (nullableZipper!3161 z!3716))))

(declare-fun lt!2633016 () List!72437)

(declare-fun lt!2633009 () List!72437)

(declare-fun ++!17300 (List!72437 List!72437) List!72437)

(assert (=> b!7502946 (= (++!17300 lt!2633016 lt!2633009) totalInput!779)))

(declare-fun lt!2633015 () Unit!166258)

(declare-fun lt!2633010 () C!39668)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3141 (List!72437 C!39668 List!72437 List!72437) Unit!166258)

(assert (=> b!7502946 (= lt!2633015 (lemmaMoveElementToOtherListKeepsConcatEq!3141 testedP!204 lt!2633010 lt!2633009 totalInput!779))))

(declare-fun testedSuffix!164 () List!72437)

(declare-fun tail!14973 (List!72437) List!72437)

(assert (=> b!7502946 (= lt!2633009 (tail!14973 testedSuffix!164))))

(declare-fun lt!2633017 () List!72437)

(declare-fun head!15407 (List!72437) C!39668)

(assert (=> b!7502946 (isPrefix!5967 (++!17300 testedP!204 (Cons!72313 (head!15407 lt!2633017) Nil!72313)) totalInput!779)))

(declare-fun lt!2633018 () Unit!166258)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1108 (List!72437 List!72437) Unit!166258)

(assert (=> b!7502946 (= lt!2633018 (lemmaAddHeadSuffixToPrefixStillPrefix!1108 testedP!204 totalInput!779))))

(assert (=> b!7502946 (= lt!2633016 (++!17300 testedP!204 (Cons!72313 lt!2633010 Nil!72313)))))

(assert (=> b!7502946 (= lt!2633010 (head!15407 testedSuffix!164))))

(declare-fun b!7502947 () Bool)

(declare-fun res!3009993 () Bool)

(declare-fun e!4473395 () Bool)

(assert (=> b!7502947 (=> res!3009993 e!4473395)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7502947 (= res!3009993 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7502948 () Bool)

(declare-fun e!4473394 () Bool)

(declare-fun e!4473401 () Bool)

(assert (=> b!7502948 (= e!4473394 (not e!4473401))))

(declare-fun res!3009994 () Bool)

(assert (=> b!7502948 (=> res!3009994 e!4473401)))

(assert (=> b!7502948 (= res!3009994 (not (isPrefix!5967 testedP!204 totalInput!779)))))

(declare-fun lt!2633008 () List!72437)

(assert (=> b!7502948 (isPrefix!5967 testedP!204 lt!2633008)))

(declare-fun lt!2633006 () Unit!166258)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3680 (List!72437 List!72437) Unit!166258)

(assert (=> b!7502948 (= lt!2633006 (lemmaConcatTwoListThenFirstIsPrefix!3680 testedP!204 testedSuffix!164))))

(declare-fun setIsEmpty!56888 () Bool)

(declare-fun setRes!56888 () Bool)

(assert (=> setIsEmpty!56888 setRes!56888))

(declare-fun b!7502949 () Bool)

(assert (=> b!7502949 (= e!4473401 e!4473395)))

(declare-fun res!3009990 () Bool)

(assert (=> b!7502949 (=> res!3009990 e!4473395)))

(declare-fun lostCauseZipper!1369 ((InoxSet Context!16866)) Bool)

(assert (=> b!7502949 (= res!3009990 (lostCauseZipper!1369 z!3716))))

(assert (=> b!7502949 (and (= testedSuffix!164 lt!2633017) (= lt!2633017 testedSuffix!164))))

(declare-fun lt!2633005 () Unit!166258)

(declare-fun lemmaSamePrefixThenSameSuffix!2772 (List!72437 List!72437 List!72437 List!72437 List!72437) Unit!166258)

(assert (=> b!7502949 (= lt!2633005 (lemmaSamePrefixThenSameSuffix!2772 testedP!204 testedSuffix!164 testedP!204 lt!2633017 totalInput!779))))

(declare-fun getSuffix!3469 (List!72437 List!72437) List!72437)

(assert (=> b!7502949 (= lt!2633017 (getSuffix!3469 totalInput!779 testedP!204))))

(declare-fun setNonEmpty!56888 () Bool)

(declare-fun tp!2178011 () Bool)

(declare-fun setElem!56888 () Context!16866)

(declare-fun e!4473403 () Bool)

(declare-fun inv!92417 (Context!16866) Bool)

(assert (=> setNonEmpty!56888 (= setRes!56888 (and tp!2178011 (inv!92417 setElem!56888) e!4473403))))

(declare-fun setRest!56888 () (InoxSet Context!16866))

(assert (=> setNonEmpty!56888 (= z!3716 ((_ map or) (store ((as const (Array Context!16866 Bool)) false) setElem!56888 true) setRest!56888))))

(declare-fun b!7502950 () Bool)

(declare-fun tp!2178007 () Bool)

(assert (=> b!7502950 (= e!4473403 tp!2178007)))

(declare-fun b!7502951 () Bool)

(declare-fun Unit!166261 () Unit!166258)

(assert (=> b!7502951 (= e!4473400 Unit!166261)))

(declare-fun res!3009989 () Bool)

(declare-fun e!4473396 () Bool)

(assert (=> start!726002 (=> (not res!3009989) (not e!4473396))))

(assert (=> start!726002 (= res!3009989 (= lt!2633008 totalInput!779))))

(assert (=> start!726002 (= lt!2633008 (++!17300 testedP!204 testedSuffix!164))))

(assert (=> start!726002 e!4473396))

(assert (=> start!726002 e!4473398))

(assert (=> start!726002 true))

(declare-fun e!4473402 () Bool)

(assert (=> start!726002 e!4473402))

(assert (=> start!726002 e!4473404))

(declare-fun condSetEmpty!56888 () Bool)

(assert (=> start!726002 (= condSetEmpty!56888 (= z!3716 ((as const (Array Context!16866 Bool)) false)))))

(assert (=> start!726002 setRes!56888))

(declare-fun b!7502952 () Bool)

(assert (=> b!7502952 (= e!4473395 e!4473399)))

(declare-fun res!3009991 () Bool)

(assert (=> b!7502952 (=> res!3009991 e!4473399)))

(declare-fun lt!2633011 () Int)

(declare-fun lt!2633020 () Int)

(assert (=> b!7502952 (= res!3009991 (>= lt!2633011 lt!2633020))))

(declare-fun lt!2633012 () Unit!166258)

(assert (=> b!7502952 (= lt!2633012 e!4473400)))

(declare-fun c!1385087 () Bool)

(assert (=> b!7502952 (= c!1385087 (= lt!2633011 lt!2633020))))

(assert (=> b!7502952 (<= lt!2633011 lt!2633020)))

(declare-fun lt!2633019 () Unit!166258)

(declare-fun lemmaIsPrefixThenSmallerEqSize!972 (List!72437 List!72437) Unit!166258)

(assert (=> b!7502952 (= lt!2633019 (lemmaIsPrefixThenSmallerEqSize!972 testedP!204 totalInput!779))))

(declare-fun b!7502953 () Bool)

(declare-fun e!4473397 () Bool)

(assert (=> b!7502953 (= e!4473396 e!4473397)))

(declare-fun res!3009988 () Bool)

(assert (=> b!7502953 (=> (not res!3009988) (not e!4473397))))

(assert (=> b!7502953 (= res!3009988 (= testedPSize!164 lt!2633011))))

(declare-fun size!42242 (List!72437) Int)

(assert (=> b!7502953 (= lt!2633011 (size!42242 testedP!204))))

(declare-fun b!7502954 () Bool)

(declare-fun tp!2178010 () Bool)

(assert (=> b!7502954 (= e!4473402 (and tp_is_empty!49683 tp!2178010))))

(declare-fun b!7502955 () Bool)

(assert (=> b!7502955 (= e!4473397 e!4473394)))

(declare-fun res!3009992 () Bool)

(assert (=> b!7502955 (=> (not res!3009992) (not e!4473394))))

(assert (=> b!7502955 (= res!3009992 (= totalInputSize!226 lt!2633020))))

(assert (=> b!7502955 (= lt!2633020 (size!42242 totalInput!779))))

(assert (= (and start!726002 res!3009989) b!7502953))

(assert (= (and b!7502953 res!3009988) b!7502955))

(assert (= (and b!7502955 res!3009992) b!7502948))

(assert (= (and b!7502948 (not res!3009994)) b!7502949))

(assert (= (and b!7502949 (not res!3009990)) b!7502947))

(assert (= (and b!7502947 (not res!3009993)) b!7502952))

(assert (= (and b!7502952 c!1385087) b!7502943))

(assert (= (and b!7502952 (not c!1385087)) b!7502951))

(assert (= (and b!7502952 (not res!3009991)) b!7502946))

(get-info :version)

(assert (= (and start!726002 ((_ is Cons!72313) testedSuffix!164)) b!7502945))

(assert (= (and start!726002 ((_ is Cons!72313) totalInput!779)) b!7502954))

(assert (= (and start!726002 ((_ is Cons!72313) testedP!204)) b!7502944))

(assert (= (and start!726002 condSetEmpty!56888) setIsEmpty!56888))

(assert (= (and start!726002 (not condSetEmpty!56888)) setNonEmpty!56888))

(assert (= setNonEmpty!56888 b!7502950))

(declare-fun m!8084634 () Bool)

(assert (=> b!7502946 m!8084634))

(declare-fun m!8084636 () Bool)

(assert (=> b!7502946 m!8084636))

(declare-fun m!8084638 () Bool)

(assert (=> b!7502946 m!8084638))

(declare-fun m!8084640 () Bool)

(assert (=> b!7502946 m!8084640))

(declare-fun m!8084642 () Bool)

(assert (=> b!7502946 m!8084642))

(declare-fun m!8084644 () Bool)

(assert (=> b!7502946 m!8084644))

(declare-fun m!8084646 () Bool)

(assert (=> b!7502946 m!8084646))

(declare-fun m!8084648 () Bool)

(assert (=> b!7502946 m!8084648))

(declare-fun m!8084650 () Bool)

(assert (=> b!7502946 m!8084650))

(assert (=> b!7502946 m!8084640))

(declare-fun m!8084652 () Bool)

(assert (=> b!7502946 m!8084652))

(declare-fun m!8084654 () Bool)

(assert (=> b!7502949 m!8084654))

(declare-fun m!8084656 () Bool)

(assert (=> b!7502949 m!8084656))

(declare-fun m!8084658 () Bool)

(assert (=> b!7502949 m!8084658))

(declare-fun m!8084660 () Bool)

(assert (=> b!7502953 m!8084660))

(declare-fun m!8084662 () Bool)

(assert (=> b!7502952 m!8084662))

(declare-fun m!8084664 () Bool)

(assert (=> b!7502948 m!8084664))

(declare-fun m!8084666 () Bool)

(assert (=> b!7502948 m!8084666))

(declare-fun m!8084668 () Bool)

(assert (=> b!7502948 m!8084668))

(declare-fun m!8084670 () Bool)

(assert (=> b!7502943 m!8084670))

(declare-fun m!8084672 () Bool)

(assert (=> b!7502943 m!8084672))

(declare-fun m!8084674 () Bool)

(assert (=> b!7502943 m!8084674))

(declare-fun m!8084676 () Bool)

(assert (=> b!7502955 m!8084676))

(declare-fun m!8084678 () Bool)

(assert (=> start!726002 m!8084678))

(declare-fun m!8084680 () Bool)

(assert (=> setNonEmpty!56888 m!8084680))

(check-sat (not b!7502944) (not b!7502948) tp_is_empty!49683 (not start!726002) (not b!7502950) (not b!7502946) (not b!7502945) (not b!7502943) (not b!7502954) (not b!7502953) (not b!7502949) (not setNonEmpty!56888) (not b!7502955) (not b!7502952))
(check-sat)
