; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540484 () Bool)

(assert start!540484)

(declare-fun setIsEmpty!30339 () Bool)

(declare-fun setRes!30339 () Bool)

(assert (=> setIsEmpty!30339 setRes!30339))

(declare-fun b!5120541 () Bool)

(declare-fun e!3193520 () Bool)

(declare-fun tp!1428463 () Bool)

(assert (=> b!5120541 (= e!3193520 tp!1428463)))

(declare-fun b!5120542 () Bool)

(declare-fun e!3193521 () Bool)

(declare-fun e!3193519 () Bool)

(assert (=> b!5120542 (= e!3193521 (not e!3193519))))

(declare-fun res!2180254 () Bool)

(assert (=> b!5120542 (=> res!2180254 e!3193519)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28696 0))(
  ( (C!28697 (val!24000 Int)) )
))
(declare-datatypes ((Regex!14215 0))(
  ( (ElementMatch!14215 (c!879993 C!28696)) (Concat!23060 (regOne!28942 Regex!14215) (regTwo!28942 Regex!14215)) (EmptyExpr!14215) (Star!14215 (reg!14544 Regex!14215)) (EmptyLang!14215) (Union!14215 (regOne!28943 Regex!14215) (regTwo!28943 Regex!14215)) )
))
(declare-datatypes ((List!59351 0))(
  ( (Nil!59227) (Cons!59227 (h!65675 Regex!14215) (t!372370 List!59351)) )
))
(declare-datatypes ((Context!7198 0))(
  ( (Context!7199 (exprs!4099 List!59351)) )
))
(declare-fun z!4463 () (InoxSet Context!7198))

(declare-datatypes ((List!59352 0))(
  ( (Nil!59228) (Cons!59228 (h!65676 C!28696) (t!372371 List!59352)) )
))
(declare-fun testedP!265 () List!59352)

(declare-fun knownP!20 () List!59352)

(declare-fun matchZipper!883 ((InoxSet Context!7198) List!59352) Bool)

(declare-fun getSuffix!3292 (List!59352 List!59352) List!59352)

(assert (=> b!5120542 (= res!2180254 (not (matchZipper!883 z!4463 (getSuffix!3292 knownP!20 testedP!265))))))

(declare-fun isPrefix!5620 (List!59352 List!59352) Bool)

(assert (=> b!5120542 (isPrefix!5620 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59352)

(declare-datatypes ((Unit!150365 0))(
  ( (Unit!150366) )
))
(declare-fun lt!2111012 () Unit!150365)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!755 (List!59352 List!59352 List!59352) Unit!150365)

(assert (=> b!5120542 (= lt!2111012 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!755 knownP!20 testedP!265 input!5745))))

(declare-fun res!2180256 () Bool)

(declare-fun e!3193518 () Bool)

(assert (=> start!540484 (=> (not res!2180256) (not e!3193518))))

(assert (=> start!540484 (= res!2180256 (isPrefix!5620 testedP!265 input!5745))))

(assert (=> start!540484 e!3193518))

(declare-fun e!3193522 () Bool)

(assert (=> start!540484 e!3193522))

(declare-fun condSetEmpty!30340 () Bool)

(assert (=> start!540484 (= condSetEmpty!30340 (= z!4463 ((as const (Array Context!7198 Bool)) false)))))

(assert (=> start!540484 setRes!30339))

(declare-fun e!3193524 () Bool)

(assert (=> start!540484 e!3193524))

(declare-fun condSetEmpty!30339 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7198))

(assert (=> start!540484 (= condSetEmpty!30339 (= baseZ!46 ((as const (Array Context!7198 Bool)) false)))))

(declare-fun setRes!30340 () Bool)

(assert (=> start!540484 setRes!30340))

(declare-fun e!3193525 () Bool)

(assert (=> start!540484 e!3193525))

(declare-fun b!5120543 () Bool)

(declare-fun res!2180258 () Bool)

(assert (=> b!5120543 (=> (not res!2180258) (not e!3193521))))

(assert (=> b!5120543 (= res!2180258 (matchZipper!883 baseZ!46 knownP!20))))

(declare-fun b!5120544 () Bool)

(assert (=> b!5120544 (= e!3193518 e!3193521)))

(declare-fun res!2180255 () Bool)

(assert (=> b!5120544 (=> (not res!2180255) (not e!3193521))))

(declare-fun lt!2111013 () Int)

(declare-fun lt!2111014 () Int)

(assert (=> b!5120544 (= res!2180255 (>= lt!2111013 lt!2111014))))

(declare-fun size!39521 (List!59352) Int)

(assert (=> b!5120544 (= lt!2111014 (size!39521 testedP!265))))

(assert (=> b!5120544 (= lt!2111013 (size!39521 knownP!20))))

(declare-fun b!5120545 () Bool)

(declare-fun e!3193523 () Bool)

(declare-fun tp!1428461 () Bool)

(assert (=> b!5120545 (= e!3193523 tp!1428461)))

(declare-fun b!5120546 () Bool)

(declare-fun tp_is_empty!37703 () Bool)

(declare-fun tp!1428458 () Bool)

(assert (=> b!5120546 (= e!3193524 (and tp_is_empty!37703 tp!1428458))))

(declare-fun b!5120547 () Bool)

(declare-fun tp!1428459 () Bool)

(assert (=> b!5120547 (= e!3193525 (and tp_is_empty!37703 tp!1428459))))

(declare-fun b!5120548 () Bool)

(declare-fun tp!1428457 () Bool)

(assert (=> b!5120548 (= e!3193522 (and tp_is_empty!37703 tp!1428457))))

(declare-fun setIsEmpty!30340 () Bool)

(assert (=> setIsEmpty!30340 setRes!30340))

(declare-fun b!5120549 () Bool)

(declare-fun res!2180257 () Bool)

(assert (=> b!5120549 (=> res!2180257 e!3193519)))

(declare-fun derivationZipper!112 ((InoxSet Context!7198) List!59352) (InoxSet Context!7198))

(assert (=> b!5120549 (= res!2180257 (not (= (derivationZipper!112 baseZ!46 testedP!265) z!4463)))))

(declare-fun tp!1428462 () Bool)

(declare-fun setElem!30339 () Context!7198)

(declare-fun setNonEmpty!30339 () Bool)

(declare-fun inv!78718 (Context!7198) Bool)

(assert (=> setNonEmpty!30339 (= setRes!30339 (and tp!1428462 (inv!78718 setElem!30339) e!3193520))))

(declare-fun setRest!30339 () (InoxSet Context!7198))

(assert (=> setNonEmpty!30339 (= z!4463 ((_ map or) (store ((as const (Array Context!7198 Bool)) false) setElem!30339 true) setRest!30339))))

(declare-fun setElem!30340 () Context!7198)

(declare-fun setNonEmpty!30340 () Bool)

(declare-fun tp!1428460 () Bool)

(assert (=> setNonEmpty!30340 (= setRes!30340 (and tp!1428460 (inv!78718 setElem!30340) e!3193523))))

(declare-fun setRest!30340 () (InoxSet Context!7198))

(assert (=> setNonEmpty!30340 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7198 Bool)) false) setElem!30340 true) setRest!30340))))

(declare-fun b!5120550 () Bool)

(assert (=> b!5120550 (= e!3193519 (>= (- lt!2111013 lt!2111014) 0))))

(declare-fun b!5120551 () Bool)

(declare-fun res!2180253 () Bool)

(assert (=> b!5120551 (=> (not res!2180253) (not e!3193518))))

(assert (=> b!5120551 (= res!2180253 (isPrefix!5620 knownP!20 input!5745))))

(assert (= (and start!540484 res!2180256) b!5120551))

(assert (= (and b!5120551 res!2180253) b!5120544))

(assert (= (and b!5120544 res!2180255) b!5120543))

(assert (= (and b!5120543 res!2180258) b!5120542))

(assert (= (and b!5120542 (not res!2180254)) b!5120549))

(assert (= (and b!5120549 (not res!2180257)) b!5120550))

(get-info :version)

(assert (= (and start!540484 ((_ is Cons!59228) input!5745)) b!5120548))

(assert (= (and start!540484 condSetEmpty!30340) setIsEmpty!30339))

(assert (= (and start!540484 (not condSetEmpty!30340)) setNonEmpty!30339))

(assert (= setNonEmpty!30339 b!5120541))

(assert (= (and start!540484 ((_ is Cons!59228) testedP!265)) b!5120546))

(assert (= (and start!540484 condSetEmpty!30339) setIsEmpty!30340))

(assert (= (and start!540484 (not condSetEmpty!30339)) setNonEmpty!30340))

(assert (= setNonEmpty!30340 b!5120545))

(assert (= (and start!540484 ((_ is Cons!59228) knownP!20)) b!5120547))

(declare-fun m!6181594 () Bool)

(assert (=> b!5120549 m!6181594))

(declare-fun m!6181596 () Bool)

(assert (=> b!5120542 m!6181596))

(assert (=> b!5120542 m!6181596))

(declare-fun m!6181598 () Bool)

(assert (=> b!5120542 m!6181598))

(declare-fun m!6181600 () Bool)

(assert (=> b!5120542 m!6181600))

(declare-fun m!6181602 () Bool)

(assert (=> b!5120542 m!6181602))

(declare-fun m!6181604 () Bool)

(assert (=> setNonEmpty!30339 m!6181604))

(declare-fun m!6181606 () Bool)

(assert (=> b!5120543 m!6181606))

(declare-fun m!6181608 () Bool)

(assert (=> setNonEmpty!30340 m!6181608))

(declare-fun m!6181610 () Bool)

(assert (=> b!5120544 m!6181610))

(declare-fun m!6181612 () Bool)

(assert (=> b!5120544 m!6181612))

(declare-fun m!6181614 () Bool)

(assert (=> start!540484 m!6181614))

(declare-fun m!6181616 () Bool)

(assert (=> b!5120551 m!6181616))

(check-sat (not setNonEmpty!30340) (not b!5120541) (not b!5120545) (not b!5120547) (not b!5120551) (not start!540484) (not b!5120546) (not b!5120542) (not b!5120549) (not b!5120548) tp_is_empty!37703 (not b!5120543) (not setNonEmpty!30339) (not b!5120544))
(check-sat)
