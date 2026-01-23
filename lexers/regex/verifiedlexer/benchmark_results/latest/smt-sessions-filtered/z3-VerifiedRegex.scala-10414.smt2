; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538644 () Bool)

(assert start!538644)

(declare-fun b!5108439 () Bool)

(declare-fun res!2174418 () Bool)

(declare-fun e!3186130 () Bool)

(assert (=> b!5108439 (=> res!2174418 e!3186130)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28504 0))(
  ( (C!28505 (val!23904 Int)) )
))
(declare-datatypes ((Regex!14119 0))(
  ( (ElementMatch!14119 (c!877519 C!28504)) (Concat!22964 (regOne!28750 Regex!14119) (regTwo!28750 Regex!14119)) (EmptyExpr!14119) (Star!14119 (reg!14448 Regex!14119)) (EmptyLang!14119) (Union!14119 (regOne!28751 Regex!14119) (regTwo!28751 Regex!14119)) )
))
(declare-datatypes ((List!59110 0))(
  ( (Nil!58986) (Cons!58986 (h!65434 Regex!14119) (t!372111 List!59110)) )
))
(declare-datatypes ((Context!7006 0))(
  ( (Context!7007 (exprs!4003 List!59110)) )
))
(declare-fun z!4463 () (InoxSet Context!7006))

(declare-fun lostCauseZipper!1005 ((InoxSet Context!7006)) Bool)

(assert (=> b!5108439 (= res!2174418 (lostCauseZipper!1005 z!4463))))

(declare-fun b!5108440 () Bool)

(assert (=> b!5108440 (= e!3186130 true)))

(declare-datatypes ((List!59111 0))(
  ( (Nil!58987) (Cons!58987 (h!65435 C!28504) (t!372112 List!59111)) )
))
(declare-fun input!5745 () List!59111)

(declare-fun lt!2103300 () Int)

(declare-fun testedP!265 () List!59111)

(declare-fun size!39425 (List!59111) Int)

(declare-datatypes ((tuple2!63596 0))(
  ( (tuple2!63597 (_1!35101 List!59111) (_2!35101 List!59111)) )
))
(declare-fun findLongestMatchInnerZipper!179 ((InoxSet Context!7006) List!59111 Int List!59111 List!59111 Int) tuple2!63596)

(declare-fun getSuffix!3198 (List!59111 List!59111) List!59111)

(assert (=> b!5108440 (>= (size!39425 (_1!35101 (findLongestMatchInnerZipper!179 z!4463 testedP!265 lt!2103300 (getSuffix!3198 input!5745 testedP!265) input!5745 (size!39425 input!5745)))) lt!2103300)))

(declare-datatypes ((Unit!150061 0))(
  ( (Unit!150062) )
))
(declare-fun lt!2103298 () Unit!150061)

(declare-fun baseZ!46 () (InoxSet Context!7006))

(declare-fun lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!4 ((InoxSet Context!7006) (InoxSet Context!7006) List!59111 List!59111) Unit!150061)

(assert (=> b!5108440 (= lt!2103298 (lemmaIfMatchZipperThenLongestMatchFromThereReturnsAtLeastThis!4 baseZ!46 z!4463 input!5745 testedP!265))))

(declare-fun knownP!20 () List!59111)

(assert (=> b!5108440 (= testedP!265 knownP!20)))

(declare-fun lt!2103301 () Unit!150061)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1332 (List!59111 List!59111 List!59111) Unit!150061)

(assert (=> b!5108440 (= lt!2103301 (lemmaIsPrefixSameLengthThenSameList!1332 testedP!265 knownP!20 input!5745))))

(declare-fun setIsEmpty!29549 () Bool)

(declare-fun setRes!29550 () Bool)

(assert (=> setIsEmpty!29549 setRes!29550))

(declare-fun b!5108441 () Bool)

(declare-fun e!3186131 () Bool)

(assert (=> b!5108441 (= e!3186131 (not e!3186130))))

(declare-fun res!2174417 () Bool)

(assert (=> b!5108441 (=> res!2174417 e!3186130)))

(declare-fun matchZipper!787 ((InoxSet Context!7006) List!59111) Bool)

(assert (=> b!5108441 (= res!2174417 (not (matchZipper!787 z!4463 (getSuffix!3198 knownP!20 testedP!265))))))

(declare-fun isPrefix!5524 (List!59111 List!59111) Bool)

(assert (=> b!5108441 (isPrefix!5524 testedP!265 knownP!20)))

(declare-fun lt!2103299 () Unit!150061)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!661 (List!59111 List!59111 List!59111) Unit!150061)

(assert (=> b!5108441 (= lt!2103299 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!661 knownP!20 testedP!265 input!5745))))

(declare-fun b!5108442 () Bool)

(declare-fun e!3186126 () Bool)

(declare-fun tp_is_empty!37511 () Bool)

(declare-fun tp!1425157 () Bool)

(assert (=> b!5108442 (= e!3186126 (and tp_is_empty!37511 tp!1425157))))

(declare-fun b!5108443 () Bool)

(declare-fun e!3186127 () Bool)

(assert (=> b!5108443 (= e!3186127 e!3186131)))

(declare-fun res!2174414 () Bool)

(assert (=> b!5108443 (=> (not res!2174414) (not e!3186131))))

(declare-fun lt!2103302 () Int)

(assert (=> b!5108443 (= res!2174414 (>= lt!2103302 lt!2103300))))

(assert (=> b!5108443 (= lt!2103300 (size!39425 testedP!265))))

(assert (=> b!5108443 (= lt!2103302 (size!39425 knownP!20))))

(declare-fun tp!1425156 () Bool)

(declare-fun setNonEmpty!29549 () Bool)

(declare-fun e!3186128 () Bool)

(declare-fun setElem!29549 () Context!7006)

(declare-fun inv!78478 (Context!7006) Bool)

(assert (=> setNonEmpty!29549 (= setRes!29550 (and tp!1425156 (inv!78478 setElem!29549) e!3186128))))

(declare-fun setRest!29549 () (InoxSet Context!7006))

(assert (=> setNonEmpty!29549 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7006 Bool)) false) setElem!29549 true) setRest!29549))))

(declare-fun res!2174415 () Bool)

(assert (=> start!538644 (=> (not res!2174415) (not e!3186127))))

(assert (=> start!538644 (= res!2174415 (isPrefix!5524 testedP!265 input!5745))))

(assert (=> start!538644 e!3186127))

(declare-fun e!3186124 () Bool)

(assert (=> start!538644 e!3186124))

(declare-fun condSetEmpty!29549 () Bool)

(assert (=> start!538644 (= condSetEmpty!29549 (= z!4463 ((as const (Array Context!7006 Bool)) false)))))

(declare-fun setRes!29549 () Bool)

(assert (=> start!538644 setRes!29549))

(assert (=> start!538644 e!3186126))

(declare-fun condSetEmpty!29550 () Bool)

(assert (=> start!538644 (= condSetEmpty!29550 (= baseZ!46 ((as const (Array Context!7006 Bool)) false)))))

(assert (=> start!538644 setRes!29550))

(declare-fun e!3186125 () Bool)

(assert (=> start!538644 e!3186125))

(declare-fun b!5108444 () Bool)

(declare-fun res!2174413 () Bool)

(assert (=> b!5108444 (=> (not res!2174413) (not e!3186127))))

(assert (=> b!5108444 (= res!2174413 (isPrefix!5524 knownP!20 input!5745))))

(declare-fun setIsEmpty!29550 () Bool)

(assert (=> setIsEmpty!29550 setRes!29549))

(declare-fun b!5108445 () Bool)

(declare-fun res!2174412 () Bool)

(assert (=> b!5108445 (=> (not res!2174412) (not e!3186131))))

(assert (=> b!5108445 (= res!2174412 (matchZipper!787 baseZ!46 knownP!20))))

(declare-fun b!5108446 () Bool)

(declare-fun res!2174416 () Bool)

(assert (=> b!5108446 (=> res!2174416 e!3186130)))

(assert (=> b!5108446 (= res!2174416 (not (= lt!2103300 lt!2103302)))))

(declare-fun b!5108447 () Bool)

(declare-fun e!3186129 () Bool)

(declare-fun tp!1425153 () Bool)

(assert (=> b!5108447 (= e!3186129 tp!1425153)))

(declare-fun setNonEmpty!29550 () Bool)

(declare-fun tp!1425152 () Bool)

(declare-fun setElem!29550 () Context!7006)

(assert (=> setNonEmpty!29550 (= setRes!29549 (and tp!1425152 (inv!78478 setElem!29550) e!3186129))))

(declare-fun setRest!29550 () (InoxSet Context!7006))

(assert (=> setNonEmpty!29550 (= z!4463 ((_ map or) (store ((as const (Array Context!7006 Bool)) false) setElem!29550 true) setRest!29550))))

(declare-fun b!5108448 () Bool)

(declare-fun res!2174411 () Bool)

(assert (=> b!5108448 (=> res!2174411 e!3186130)))

(declare-fun derivationZipper!18 ((InoxSet Context!7006) List!59111) (InoxSet Context!7006))

(assert (=> b!5108448 (= res!2174411 (not (= (derivationZipper!18 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5108449 () Bool)

(declare-fun tp!1425154 () Bool)

(assert (=> b!5108449 (= e!3186128 tp!1425154)))

(declare-fun b!5108450 () Bool)

(declare-fun tp!1425151 () Bool)

(assert (=> b!5108450 (= e!3186125 (and tp_is_empty!37511 tp!1425151))))

(declare-fun b!5108451 () Bool)

(declare-fun tp!1425155 () Bool)

(assert (=> b!5108451 (= e!3186124 (and tp_is_empty!37511 tp!1425155))))

(assert (= (and start!538644 res!2174415) b!5108444))

(assert (= (and b!5108444 res!2174413) b!5108443))

(assert (= (and b!5108443 res!2174414) b!5108445))

(assert (= (and b!5108445 res!2174412) b!5108441))

(assert (= (and b!5108441 (not res!2174417)) b!5108448))

(assert (= (and b!5108448 (not res!2174411)) b!5108439))

(assert (= (and b!5108439 (not res!2174418)) b!5108446))

(assert (= (and b!5108446 (not res!2174416)) b!5108440))

(get-info :version)

(assert (= (and start!538644 ((_ is Cons!58987) input!5745)) b!5108451))

(assert (= (and start!538644 condSetEmpty!29549) setIsEmpty!29550))

(assert (= (and start!538644 (not condSetEmpty!29549)) setNonEmpty!29550))

(assert (= setNonEmpty!29550 b!5108447))

(assert (= (and start!538644 ((_ is Cons!58987) testedP!265)) b!5108442))

(assert (= (and start!538644 condSetEmpty!29550) setIsEmpty!29549))

(assert (= (and start!538644 (not condSetEmpty!29550)) setNonEmpty!29549))

(assert (= setNonEmpty!29549 b!5108449))

(assert (= (and start!538644 ((_ is Cons!58987) knownP!20)) b!5108450))

(declare-fun m!6165564 () Bool)

(assert (=> b!5108445 m!6165564))

(declare-fun m!6165566 () Bool)

(assert (=> setNonEmpty!29549 m!6165566))

(declare-fun m!6165568 () Bool)

(assert (=> b!5108440 m!6165568))

(declare-fun m!6165570 () Bool)

(assert (=> b!5108440 m!6165570))

(declare-fun m!6165572 () Bool)

(assert (=> b!5108440 m!6165572))

(declare-fun m!6165574 () Bool)

(assert (=> b!5108440 m!6165574))

(assert (=> b!5108440 m!6165568))

(assert (=> b!5108440 m!6165570))

(declare-fun m!6165576 () Bool)

(assert (=> b!5108440 m!6165576))

(declare-fun m!6165578 () Bool)

(assert (=> b!5108440 m!6165578))

(declare-fun m!6165580 () Bool)

(assert (=> setNonEmpty!29550 m!6165580))

(declare-fun m!6165582 () Bool)

(assert (=> b!5108448 m!6165582))

(declare-fun m!6165584 () Bool)

(assert (=> b!5108444 m!6165584))

(declare-fun m!6165586 () Bool)

(assert (=> b!5108443 m!6165586))

(declare-fun m!6165588 () Bool)

(assert (=> b!5108443 m!6165588))

(declare-fun m!6165590 () Bool)

(assert (=> b!5108441 m!6165590))

(assert (=> b!5108441 m!6165590))

(declare-fun m!6165592 () Bool)

(assert (=> b!5108441 m!6165592))

(declare-fun m!6165594 () Bool)

(assert (=> b!5108441 m!6165594))

(declare-fun m!6165596 () Bool)

(assert (=> b!5108441 m!6165596))

(declare-fun m!6165598 () Bool)

(assert (=> b!5108439 m!6165598))

(declare-fun m!6165600 () Bool)

(assert (=> start!538644 m!6165600))

(check-sat (not b!5108443) (not b!5108440) tp_is_empty!37511 (not b!5108450) (not b!5108448) (not b!5108447) (not b!5108449) (not b!5108439) (not setNonEmpty!29549) (not b!5108451) (not b!5108442) (not start!538644) (not b!5108444) (not setNonEmpty!29550) (not b!5108441) (not b!5108445))
(check-sat)
