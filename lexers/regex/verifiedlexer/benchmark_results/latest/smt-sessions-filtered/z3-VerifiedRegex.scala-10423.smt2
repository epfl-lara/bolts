; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538912 () Bool)

(assert start!538912)

(declare-fun b!5110276 () Bool)

(declare-fun res!2175151 () Bool)

(declare-fun e!3187262 () Bool)

(assert (=> b!5110276 (=> res!2175151 e!3187262)))

(declare-fun lt!2104511 () Int)

(declare-datatypes ((C!28540 0))(
  ( (C!28541 (val!23922 Int)) )
))
(declare-datatypes ((List!59154 0))(
  ( (Nil!59030) (Cons!59030 (h!65478 C!28540) (t!372155 List!59154)) )
))
(declare-fun input!5745 () List!59154)

(declare-fun size!39443 (List!59154) Int)

(assert (=> b!5110276 (= res!2175151 (>= lt!2104511 (size!39443 input!5745)))))

(declare-fun b!5110277 () Bool)

(declare-fun res!2175150 () Bool)

(assert (=> b!5110277 (=> res!2175150 e!3187262)))

(declare-fun lt!2104510 () Int)

(assert (=> b!5110277 (= res!2175150 (= lt!2104511 lt!2104510))))

(declare-fun b!5110279 () Bool)

(declare-fun res!2175154 () Bool)

(declare-fun e!3187267 () Bool)

(assert (=> b!5110279 (=> (not res!2175154) (not e!3187267))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14137 0))(
  ( (ElementMatch!14137 (c!877929 C!28540)) (Concat!22982 (regOne!28786 Regex!14137) (regTwo!28786 Regex!14137)) (EmptyExpr!14137) (Star!14137 (reg!14466 Regex!14137)) (EmptyLang!14137) (Union!14137 (regOne!28787 Regex!14137) (regTwo!28787 Regex!14137)) )
))
(declare-datatypes ((List!59155 0))(
  ( (Nil!59031) (Cons!59031 (h!65479 Regex!14137) (t!372156 List!59155)) )
))
(declare-datatypes ((Context!7042 0))(
  ( (Context!7043 (exprs!4021 List!59155)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7042))

(declare-fun knownP!20 () List!59154)

(declare-fun matchZipper!805 ((InoxSet Context!7042) List!59154) Bool)

(assert (=> b!5110279 (= res!2175154 (matchZipper!805 baseZ!46 knownP!20))))

(declare-fun b!5110280 () Bool)

(declare-fun e!3187264 () Bool)

(declare-fun tp_is_empty!37547 () Bool)

(declare-fun tp!1425773 () Bool)

(assert (=> b!5110280 (= e!3187264 (and tp_is_empty!37547 tp!1425773))))

(declare-fun b!5110281 () Bool)

(declare-fun e!3187269 () Bool)

(assert (=> b!5110281 (= e!3187269 e!3187267)))

(declare-fun res!2175153 () Bool)

(assert (=> b!5110281 (=> (not res!2175153) (not e!3187267))))

(assert (=> b!5110281 (= res!2175153 (>= lt!2104510 lt!2104511))))

(declare-fun testedP!265 () List!59154)

(assert (=> b!5110281 (= lt!2104511 (size!39443 testedP!265))))

(assert (=> b!5110281 (= lt!2104510 (size!39443 knownP!20))))

(declare-fun setIsEmpty!29693 () Bool)

(declare-fun setRes!29694 () Bool)

(assert (=> setIsEmpty!29693 setRes!29694))

(declare-fun b!5110282 () Bool)

(declare-fun res!2175149 () Bool)

(assert (=> b!5110282 (=> res!2175149 e!3187262)))

(declare-fun z!4463 () (InoxSet Context!7042))

(declare-fun lostCauseZipper!1023 ((InoxSet Context!7042)) Bool)

(assert (=> b!5110282 (= res!2175149 (lostCauseZipper!1023 z!4463))))

(declare-fun b!5110283 () Bool)

(declare-fun e!3187265 () Bool)

(declare-fun tp!1425772 () Bool)

(assert (=> b!5110283 (= e!3187265 tp!1425772)))

(declare-fun b!5110284 () Bool)

(assert (=> b!5110284 (= e!3187267 (not e!3187262))))

(declare-fun res!2175148 () Bool)

(assert (=> b!5110284 (=> res!2175148 e!3187262)))

(declare-fun getSuffix!3216 (List!59154 List!59154) List!59154)

(assert (=> b!5110284 (= res!2175148 (not (matchZipper!805 z!4463 (getSuffix!3216 knownP!20 testedP!265))))))

(declare-fun isPrefix!5542 (List!59154 List!59154) Bool)

(assert (=> b!5110284 (isPrefix!5542 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150131 0))(
  ( (Unit!150132) )
))
(declare-fun lt!2104509 () Unit!150131)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!679 (List!59154 List!59154 List!59154) Unit!150131)

(assert (=> b!5110284 (= lt!2104509 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!679 knownP!20 testedP!265 input!5745))))

(declare-fun b!5110285 () Bool)

(declare-fun e!3187266 () Bool)

(declare-fun tp!1425770 () Bool)

(assert (=> b!5110285 (= e!3187266 (and tp_is_empty!37547 tp!1425770))))

(declare-fun b!5110286 () Bool)

(declare-fun res!2175156 () Bool)

(assert (=> b!5110286 (=> res!2175156 e!3187262)))

(declare-fun derivationZipper!36 ((InoxSet Context!7042) List!59154) (InoxSet Context!7042))

(assert (=> b!5110286 (= res!2175156 (not (= (derivationZipper!36 baseZ!46 testedP!265) z!4463)))))

(declare-fun setNonEmpty!29693 () Bool)

(declare-fun e!3187263 () Bool)

(declare-fun setElem!29693 () Context!7042)

(declare-fun tp!1425768 () Bool)

(declare-fun inv!78523 (Context!7042) Bool)

(assert (=> setNonEmpty!29693 (= setRes!29694 (and tp!1425768 (inv!78523 setElem!29693) e!3187263))))

(declare-fun setRest!29694 () (InoxSet Context!7042))

(assert (=> setNonEmpty!29693 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7042 Bool)) false) setElem!29693 true) setRest!29694))))

(declare-fun b!5110287 () Bool)

(declare-fun res!2175155 () Bool)

(assert (=> b!5110287 (=> (not res!2175155) (not e!3187269))))

(assert (=> b!5110287 (= res!2175155 (isPrefix!5542 knownP!20 input!5745))))

(declare-fun setNonEmpty!29694 () Bool)

(declare-fun setElem!29694 () Context!7042)

(declare-fun tp!1425769 () Bool)

(declare-fun setRes!29693 () Bool)

(assert (=> setNonEmpty!29694 (= setRes!29693 (and tp!1425769 (inv!78523 setElem!29694) e!3187265))))

(declare-fun setRest!29693 () (InoxSet Context!7042))

(assert (=> setNonEmpty!29694 (= z!4463 ((_ map or) (store ((as const (Array Context!7042 Bool)) false) setElem!29694 true) setRest!29693))))

(declare-fun setIsEmpty!29694 () Bool)

(assert (=> setIsEmpty!29694 setRes!29693))

(declare-fun res!2175152 () Bool)

(assert (=> start!538912 (=> (not res!2175152) (not e!3187269))))

(assert (=> start!538912 (= res!2175152 (isPrefix!5542 testedP!265 input!5745))))

(assert (=> start!538912 e!3187269))

(assert (=> start!538912 e!3187266))

(declare-fun condSetEmpty!29694 () Bool)

(assert (=> start!538912 (= condSetEmpty!29694 (= z!4463 ((as const (Array Context!7042 Bool)) false)))))

(assert (=> start!538912 setRes!29693))

(declare-fun e!3187268 () Bool)

(assert (=> start!538912 e!3187268))

(declare-fun condSetEmpty!29693 () Bool)

(assert (=> start!538912 (= condSetEmpty!29693 (= baseZ!46 ((as const (Array Context!7042 Bool)) false)))))

(assert (=> start!538912 setRes!29694))

(assert (=> start!538912 e!3187264))

(declare-fun b!5110278 () Bool)

(declare-fun tp!1425771 () Bool)

(assert (=> b!5110278 (= e!3187263 tp!1425771)))

(declare-fun b!5110288 () Bool)

(declare-fun tp!1425767 () Bool)

(assert (=> b!5110288 (= e!3187268 (and tp_is_empty!37547 tp!1425767))))

(declare-fun b!5110289 () Bool)

(assert (=> b!5110289 (= e!3187262 true)))

(declare-fun lt!2104512 () List!59154)

(declare-fun ++!12962 (List!59154 List!59154) List!59154)

(declare-fun head!10865 (List!59154) C!28540)

(assert (=> b!5110289 (= lt!2104512 (++!12962 testedP!265 (Cons!59030 (head!10865 (getSuffix!3216 input!5745 testedP!265)) Nil!59030)))))

(assert (= (and start!538912 res!2175152) b!5110287))

(assert (= (and b!5110287 res!2175155) b!5110281))

(assert (= (and b!5110281 res!2175153) b!5110279))

(assert (= (and b!5110279 res!2175154) b!5110284))

(assert (= (and b!5110284 (not res!2175148)) b!5110286))

(assert (= (and b!5110286 (not res!2175156)) b!5110282))

(assert (= (and b!5110282 (not res!2175149)) b!5110277))

(assert (= (and b!5110277 (not res!2175150)) b!5110276))

(assert (= (and b!5110276 (not res!2175151)) b!5110289))

(get-info :version)

(assert (= (and start!538912 ((_ is Cons!59030) input!5745)) b!5110285))

(assert (= (and start!538912 condSetEmpty!29694) setIsEmpty!29694))

(assert (= (and start!538912 (not condSetEmpty!29694)) setNonEmpty!29694))

(assert (= setNonEmpty!29694 b!5110283))

(assert (= (and start!538912 ((_ is Cons!59030) testedP!265)) b!5110288))

(assert (= (and start!538912 condSetEmpty!29693) setIsEmpty!29693))

(assert (= (and start!538912 (not condSetEmpty!29693)) setNonEmpty!29693))

(assert (= setNonEmpty!29693 b!5110278))

(assert (= (and start!538912 ((_ is Cons!59030) knownP!20)) b!5110280))

(declare-fun m!6167524 () Bool)

(assert (=> b!5110284 m!6167524))

(assert (=> b!5110284 m!6167524))

(declare-fun m!6167526 () Bool)

(assert (=> b!5110284 m!6167526))

(declare-fun m!6167528 () Bool)

(assert (=> b!5110284 m!6167528))

(declare-fun m!6167530 () Bool)

(assert (=> b!5110284 m!6167530))

(declare-fun m!6167532 () Bool)

(assert (=> setNonEmpty!29694 m!6167532))

(declare-fun m!6167534 () Bool)

(assert (=> b!5110287 m!6167534))

(declare-fun m!6167536 () Bool)

(assert (=> b!5110286 m!6167536))

(declare-fun m!6167538 () Bool)

(assert (=> b!5110279 m!6167538))

(declare-fun m!6167540 () Bool)

(assert (=> start!538912 m!6167540))

(declare-fun m!6167542 () Bool)

(assert (=> setNonEmpty!29693 m!6167542))

(declare-fun m!6167544 () Bool)

(assert (=> b!5110282 m!6167544))

(declare-fun m!6167546 () Bool)

(assert (=> b!5110289 m!6167546))

(assert (=> b!5110289 m!6167546))

(declare-fun m!6167548 () Bool)

(assert (=> b!5110289 m!6167548))

(declare-fun m!6167550 () Bool)

(assert (=> b!5110289 m!6167550))

(declare-fun m!6167552 () Bool)

(assert (=> b!5110276 m!6167552))

(declare-fun m!6167554 () Bool)

(assert (=> b!5110281 m!6167554))

(declare-fun m!6167556 () Bool)

(assert (=> b!5110281 m!6167556))

(check-sat (not b!5110287) (not setNonEmpty!29693) (not b!5110278) (not b!5110288) (not b!5110276) (not b!5110284) (not start!538912) (not b!5110279) (not b!5110285) tp_is_empty!37547 (not b!5110280) (not b!5110282) (not b!5110283) (not b!5110281) (not setNonEmpty!29694) (not b!5110286) (not b!5110289))
(check-sat)
