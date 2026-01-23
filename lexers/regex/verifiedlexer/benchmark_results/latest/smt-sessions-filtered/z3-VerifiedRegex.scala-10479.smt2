; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541260 () Bool)

(assert start!541260)

(declare-fun b!5126396 () Bool)

(declare-fun e!3197038 () Bool)

(declare-fun e!3197039 () Bool)

(assert (=> b!5126396 (= e!3197038 (not e!3197039))))

(declare-fun res!2182763 () Bool)

(assert (=> b!5126396 (=> res!2182763 e!3197039)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28764 0))(
  ( (C!28765 (val!24034 Int)) )
))
(declare-datatypes ((Regex!14249 0))(
  ( (ElementMatch!14249 (c!881355 C!28764)) (Concat!23094 (regOne!29010 Regex!14249) (regTwo!29010 Regex!14249)) (EmptyExpr!14249) (Star!14249 (reg!14578 Regex!14249)) (EmptyLang!14249) (Union!14249 (regOne!29011 Regex!14249) (regTwo!29011 Regex!14249)) )
))
(declare-datatypes ((List!59431 0))(
  ( (Nil!59307) (Cons!59307 (h!65755 Regex!14249) (t!372458 List!59431)) )
))
(declare-datatypes ((Context!7266 0))(
  ( (Context!7267 (exprs!4133 List!59431)) )
))
(declare-fun z!4546 () (InoxSet Context!7266))

(declare-datatypes ((List!59432 0))(
  ( (Nil!59308) (Cons!59308 (h!65756 C!28764) (t!372459 List!59432)) )
))
(declare-fun matchZipper!917 ((InoxSet Context!7266) List!59432) Bool)

(assert (=> b!5126396 (= res!2182763 (not (matchZipper!917 z!4546 Nil!59308)))))

(declare-fun lt!2114107 () (InoxSet Context!7266))

(assert (=> b!5126396 (matchZipper!917 lt!2114107 Nil!59308)))

(declare-datatypes ((Unit!150491 0))(
  ( (Unit!150492) )
))
(declare-fun lt!2114110 () Unit!150491)

(declare-fun baseZ!61 () (InoxSet Context!7266))

(declare-fun testedP!289 () List!59432)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!18 ((InoxSet Context!7266) List!59432) Unit!150491)

(assert (=> b!5126396 (= lt!2114110 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!18 baseZ!61 testedP!289))))

(declare-fun b!5126397 () Bool)

(declare-fun e!3197033 () Bool)

(declare-fun tp_is_empty!37771 () Bool)

(declare-fun tp!1429880 () Bool)

(assert (=> b!5126397 (= e!3197033 (and tp_is_empty!37771 tp!1429880))))

(declare-fun setElem!30618 () Context!7266)

(declare-fun setRes!30617 () Bool)

(declare-fun tp!1429885 () Bool)

(declare-fun setNonEmpty!30617 () Bool)

(declare-fun e!3197037 () Bool)

(declare-fun inv!78803 (Context!7266) Bool)

(assert (=> setNonEmpty!30617 (= setRes!30617 (and tp!1429885 (inv!78803 setElem!30618) e!3197037))))

(declare-fun setRest!30618 () (InoxSet Context!7266))

(assert (=> setNonEmpty!30617 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7266 Bool)) false) setElem!30618 true) setRest!30618))))

(declare-fun b!5126398 () Bool)

(assert (=> b!5126398 (= e!3197039 true)))

(declare-fun lt!2114109 () Int)

(declare-fun input!5798 () List!59432)

(declare-fun size!39551 (List!59432) Int)

(assert (=> b!5126398 (= lt!2114109 (size!39551 input!5798))))

(declare-fun lt!2114108 () Int)

(assert (=> b!5126398 (= lt!2114108 (size!39551 testedP!289))))

(declare-fun b!5126399 () Bool)

(declare-fun res!2182764 () Bool)

(assert (=> b!5126399 (=> res!2182764 e!3197039)))

(declare-fun nullableZipper!1046 ((InoxSet Context!7266)) Bool)

(assert (=> b!5126399 (= res!2182764 (not (nullableZipper!1046 z!4546)))))

(declare-fun b!5126400 () Bool)

(declare-fun res!2182765 () Bool)

(assert (=> b!5126400 (=> res!2182765 e!3197039)))

(declare-fun lostCauseZipper!1131 ((InoxSet Context!7266)) Bool)

(assert (=> b!5126400 (= res!2182765 (lostCauseZipper!1131 z!4546))))

(declare-fun b!5126401 () Bool)

(declare-fun res!2182766 () Bool)

(declare-fun e!3197036 () Bool)

(assert (=> b!5126401 (=> (not res!2182766) (not e!3197036))))

(assert (=> b!5126401 (= res!2182766 (matchZipper!917 baseZ!61 testedP!289))))

(declare-fun b!5126402 () Bool)

(declare-fun e!3197035 () Bool)

(declare-fun tp!1429883 () Bool)

(assert (=> b!5126402 (= e!3197035 (and tp_is_empty!37771 tp!1429883))))

(declare-fun res!2182761 () Bool)

(assert (=> start!541260 (=> (not res!2182761) (not e!3197036))))

(declare-fun isPrefix!5654 (List!59432 List!59432) Bool)

(assert (=> start!541260 (= res!2182761 (isPrefix!5654 testedP!289 input!5798))))

(assert (=> start!541260 e!3197036))

(assert (=> start!541260 e!3197035))

(assert (=> start!541260 e!3197033))

(declare-fun condSetEmpty!30617 () Bool)

(assert (=> start!541260 (= condSetEmpty!30617 (= baseZ!61 ((as const (Array Context!7266 Bool)) false)))))

(assert (=> start!541260 setRes!30617))

(declare-fun condSetEmpty!30618 () Bool)

(assert (=> start!541260 (= condSetEmpty!30618 (= z!4546 ((as const (Array Context!7266 Bool)) false)))))

(declare-fun setRes!30618 () Bool)

(assert (=> start!541260 setRes!30618))

(declare-fun b!5126403 () Bool)

(declare-fun tp!1429884 () Bool)

(assert (=> b!5126403 (= e!3197037 tp!1429884)))

(declare-fun setIsEmpty!30617 () Bool)

(assert (=> setIsEmpty!30617 setRes!30617))

(declare-fun b!5126404 () Bool)

(declare-fun e!3197034 () Bool)

(declare-fun tp!1429881 () Bool)

(assert (=> b!5126404 (= e!3197034 tp!1429881)))

(declare-fun setNonEmpty!30618 () Bool)

(declare-fun tp!1429882 () Bool)

(declare-fun setElem!30617 () Context!7266)

(assert (=> setNonEmpty!30618 (= setRes!30618 (and tp!1429882 (inv!78803 setElem!30617) e!3197034))))

(declare-fun setRest!30617 () (InoxSet Context!7266))

(assert (=> setNonEmpty!30618 (= z!4546 ((_ map or) (store ((as const (Array Context!7266 Bool)) false) setElem!30617 true) setRest!30617))))

(declare-fun b!5126405 () Bool)

(assert (=> b!5126405 (= e!3197036 e!3197038)))

(declare-fun res!2182762 () Bool)

(assert (=> b!5126405 (=> (not res!2182762) (not e!3197038))))

(assert (=> b!5126405 (= res!2182762 (= lt!2114107 z!4546))))

(declare-fun derivationZipper!146 ((InoxSet Context!7266) List!59432) (InoxSet Context!7266))

(assert (=> b!5126405 (= lt!2114107 (derivationZipper!146 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30618 () Bool)

(assert (=> setIsEmpty!30618 setRes!30618))

(assert (= (and start!541260 res!2182761) b!5126401))

(assert (= (and b!5126401 res!2182766) b!5126405))

(assert (= (and b!5126405 res!2182762) b!5126396))

(assert (= (and b!5126396 (not res!2182763)) b!5126399))

(assert (= (and b!5126399 (not res!2182764)) b!5126400))

(assert (= (and b!5126400 (not res!2182765)) b!5126398))

(get-info :version)

(assert (= (and start!541260 ((_ is Cons!59308) testedP!289)) b!5126402))

(assert (= (and start!541260 ((_ is Cons!59308) input!5798)) b!5126397))

(assert (= (and start!541260 condSetEmpty!30617) setIsEmpty!30617))

(assert (= (and start!541260 (not condSetEmpty!30617)) setNonEmpty!30617))

(assert (= setNonEmpty!30617 b!5126403))

(assert (= (and start!541260 condSetEmpty!30618) setIsEmpty!30618))

(assert (= (and start!541260 (not condSetEmpty!30618)) setNonEmpty!30618))

(assert (= setNonEmpty!30618 b!5126404))

(declare-fun m!6190366 () Bool)

(assert (=> setNonEmpty!30618 m!6190366))

(declare-fun m!6190368 () Bool)

(assert (=> start!541260 m!6190368))

(declare-fun m!6190370 () Bool)

(assert (=> b!5126398 m!6190370))

(declare-fun m!6190372 () Bool)

(assert (=> b!5126398 m!6190372))

(declare-fun m!6190374 () Bool)

(assert (=> setNonEmpty!30617 m!6190374))

(declare-fun m!6190376 () Bool)

(assert (=> b!5126400 m!6190376))

(declare-fun m!6190378 () Bool)

(assert (=> b!5126396 m!6190378))

(declare-fun m!6190380 () Bool)

(assert (=> b!5126396 m!6190380))

(declare-fun m!6190382 () Bool)

(assert (=> b!5126396 m!6190382))

(declare-fun m!6190384 () Bool)

(assert (=> b!5126405 m!6190384))

(declare-fun m!6190386 () Bool)

(assert (=> b!5126401 m!6190386))

(declare-fun m!6190388 () Bool)

(assert (=> b!5126399 m!6190388))

(check-sat (not b!5126396) (not b!5126402) (not b!5126404) (not setNonEmpty!30618) (not b!5126399) (not b!5126405) (not start!541260) tp_is_empty!37771 (not b!5126400) (not b!5126398) (not setNonEmpty!30617) (not b!5126403) (not b!5126397) (not b!5126401))
(check-sat)
