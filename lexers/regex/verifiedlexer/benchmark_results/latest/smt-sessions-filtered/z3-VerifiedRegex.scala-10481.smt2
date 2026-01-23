; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541308 () Bool)

(assert start!541308)

(declare-fun e!3197220 () Bool)

(declare-datatypes ((C!28772 0))(
  ( (C!28773 (val!24038 Int)) )
))
(declare-datatypes ((Regex!14253 0))(
  ( (ElementMatch!14253 (c!881421 C!28772)) (Concat!23098 (regOne!29018 Regex!14253) (regTwo!29018 Regex!14253)) (EmptyExpr!14253) (Star!14253 (reg!14582 Regex!14253)) (EmptyLang!14253) (Union!14253 (regOne!29019 Regex!14253) (regTwo!29019 Regex!14253)) )
))
(declare-datatypes ((List!59441 0))(
  ( (Nil!59317) (Cons!59317 (h!65765 Regex!14253) (t!372468 List!59441)) )
))
(declare-datatypes ((Context!7274 0))(
  ( (Context!7275 (exprs!4137 List!59441)) )
))
(declare-fun setElem!30650 () Context!7274)

(declare-fun setRes!30649 () Bool)

(declare-fun setNonEmpty!30649 () Bool)

(declare-fun tp!1429997 () Bool)

(declare-fun inv!78813 (Context!7274) Bool)

(assert (=> setNonEmpty!30649 (= setRes!30649 (and tp!1429997 (inv!78813 setElem!30650) e!3197220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!61 () (InoxSet Context!7274))

(declare-fun setRest!30650 () (InoxSet Context!7274))

(assert (=> setNonEmpty!30649 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7274 Bool)) false) setElem!30650 true) setRest!30650))))

(declare-fun b!5126672 () Bool)

(declare-fun e!3197216 () Bool)

(declare-fun tp!1429995 () Bool)

(assert (=> b!5126672 (= e!3197216 tp!1429995)))

(declare-fun b!5126673 () Bool)

(declare-fun e!3197215 () Bool)

(declare-fun e!3197221 () Bool)

(assert (=> b!5126673 (= e!3197215 (not e!3197221))))

(declare-fun res!2182871 () Bool)

(assert (=> b!5126673 (=> res!2182871 e!3197221)))

(declare-fun z!4546 () (InoxSet Context!7274))

(declare-datatypes ((List!59442 0))(
  ( (Nil!59318) (Cons!59318 (h!65766 C!28772) (t!372469 List!59442)) )
))
(declare-fun matchZipper!921 ((InoxSet Context!7274) List!59442) Bool)

(assert (=> b!5126673 (= res!2182871 (not (matchZipper!921 z!4546 Nil!59318)))))

(declare-fun lt!2114253 () (InoxSet Context!7274))

(assert (=> b!5126673 (matchZipper!921 lt!2114253 Nil!59318)))

(declare-datatypes ((Unit!150503 0))(
  ( (Unit!150504) )
))
(declare-fun lt!2114251 () Unit!150503)

(declare-fun testedP!289 () List!59442)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!22 ((InoxSet Context!7274) List!59442) Unit!150503)

(assert (=> b!5126673 (= lt!2114251 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!22 baseZ!61 testedP!289))))

(declare-fun tp!1429994 () Bool)

(declare-fun setRes!30650 () Bool)

(declare-fun setElem!30649 () Context!7274)

(declare-fun setNonEmpty!30650 () Bool)

(assert (=> setNonEmpty!30650 (= setRes!30650 (and tp!1429994 (inv!78813 setElem!30649) e!3197216))))

(declare-fun setRest!30649 () (InoxSet Context!7274))

(assert (=> setNonEmpty!30650 (= z!4546 ((_ map or) (store ((as const (Array Context!7274 Bool)) false) setElem!30649 true) setRest!30649))))

(declare-fun b!5126674 () Bool)

(assert (=> b!5126674 (= e!3197221 true)))

(declare-fun lt!2114254 () List!59442)

(declare-fun lt!2114255 () List!59442)

(declare-fun ++!13058 (List!59442 List!59442) List!59442)

(assert (=> b!5126674 (= lt!2114254 (++!13058 testedP!289 lt!2114255))))

(declare-fun lt!2114252 () Int)

(declare-fun input!5798 () List!59442)

(declare-fun size!39555 (List!59442) Int)

(assert (=> b!5126674 (= lt!2114252 (size!39555 input!5798))))

(declare-fun getSuffix!3322 (List!59442 List!59442) List!59442)

(assert (=> b!5126674 (= lt!2114255 (getSuffix!3322 input!5798 testedP!289))))

(declare-fun lt!2114256 () Int)

(assert (=> b!5126674 (= lt!2114256 (size!39555 testedP!289))))

(declare-fun b!5126675 () Bool)

(declare-fun e!3197219 () Bool)

(declare-fun tp_is_empty!37779 () Bool)

(declare-fun tp!1429992 () Bool)

(assert (=> b!5126675 (= e!3197219 (and tp_is_empty!37779 tp!1429992))))

(declare-fun b!5126676 () Bool)

(declare-fun e!3197218 () Bool)

(declare-fun tp!1429996 () Bool)

(assert (=> b!5126676 (= e!3197218 (and tp_is_empty!37779 tp!1429996))))

(declare-fun res!2182873 () Bool)

(declare-fun e!3197217 () Bool)

(assert (=> start!541308 (=> (not res!2182873) (not e!3197217))))

(declare-fun isPrefix!5658 (List!59442 List!59442) Bool)

(assert (=> start!541308 (= res!2182873 (isPrefix!5658 testedP!289 input!5798))))

(assert (=> start!541308 e!3197217))

(assert (=> start!541308 e!3197218))

(assert (=> start!541308 e!3197219))

(declare-fun condSetEmpty!30650 () Bool)

(assert (=> start!541308 (= condSetEmpty!30650 (= baseZ!61 ((as const (Array Context!7274 Bool)) false)))))

(assert (=> start!541308 setRes!30649))

(declare-fun condSetEmpty!30649 () Bool)

(assert (=> start!541308 (= condSetEmpty!30649 (= z!4546 ((as const (Array Context!7274 Bool)) false)))))

(assert (=> start!541308 setRes!30650))

(declare-fun b!5126677 () Bool)

(declare-fun res!2182872 () Bool)

(assert (=> b!5126677 (=> res!2182872 e!3197221)))

(declare-fun lostCauseZipper!1135 ((InoxSet Context!7274)) Bool)

(assert (=> b!5126677 (= res!2182872 (lostCauseZipper!1135 z!4546))))

(declare-fun b!5126678 () Bool)

(assert (=> b!5126678 (= e!3197217 e!3197215)))

(declare-fun res!2182874 () Bool)

(assert (=> b!5126678 (=> (not res!2182874) (not e!3197215))))

(assert (=> b!5126678 (= res!2182874 (= lt!2114253 z!4546))))

(declare-fun derivationZipper!150 ((InoxSet Context!7274) List!59442) (InoxSet Context!7274))

(assert (=> b!5126678 (= lt!2114253 (derivationZipper!150 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30649 () Bool)

(assert (=> setIsEmpty!30649 setRes!30650))

(declare-fun b!5126679 () Bool)

(declare-fun tp!1429993 () Bool)

(assert (=> b!5126679 (= e!3197220 tp!1429993)))

(declare-fun b!5126680 () Bool)

(declare-fun res!2182870 () Bool)

(assert (=> b!5126680 (=> (not res!2182870) (not e!3197217))))

(assert (=> b!5126680 (= res!2182870 (matchZipper!921 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30650 () Bool)

(assert (=> setIsEmpty!30650 setRes!30649))

(declare-fun b!5126681 () Bool)

(declare-fun res!2182869 () Bool)

(assert (=> b!5126681 (=> res!2182869 e!3197221)))

(declare-fun nullableZipper!1050 ((InoxSet Context!7274)) Bool)

(assert (=> b!5126681 (= res!2182869 (not (nullableZipper!1050 z!4546)))))

(assert (= (and start!541308 res!2182873) b!5126680))

(assert (= (and b!5126680 res!2182870) b!5126678))

(assert (= (and b!5126678 res!2182874) b!5126673))

(assert (= (and b!5126673 (not res!2182871)) b!5126681))

(assert (= (and b!5126681 (not res!2182869)) b!5126677))

(assert (= (and b!5126677 (not res!2182872)) b!5126674))

(get-info :version)

(assert (= (and start!541308 ((_ is Cons!59318) testedP!289)) b!5126676))

(assert (= (and start!541308 ((_ is Cons!59318) input!5798)) b!5126675))

(assert (= (and start!541308 condSetEmpty!30650) setIsEmpty!30650))

(assert (= (and start!541308 (not condSetEmpty!30650)) setNonEmpty!30649))

(assert (= setNonEmpty!30649 b!5126679))

(assert (= (and start!541308 condSetEmpty!30649) setIsEmpty!30649))

(assert (= (and start!541308 (not condSetEmpty!30649)) setNonEmpty!30650))

(assert (= setNonEmpty!30650 b!5126672))

(declare-fun m!6190646 () Bool)

(assert (=> b!5126677 m!6190646))

(declare-fun m!6190648 () Bool)

(assert (=> b!5126674 m!6190648))

(declare-fun m!6190650 () Bool)

(assert (=> b!5126674 m!6190650))

(declare-fun m!6190652 () Bool)

(assert (=> b!5126674 m!6190652))

(declare-fun m!6190654 () Bool)

(assert (=> b!5126674 m!6190654))

(declare-fun m!6190656 () Bool)

(assert (=> setNonEmpty!30650 m!6190656))

(declare-fun m!6190658 () Bool)

(assert (=> b!5126673 m!6190658))

(declare-fun m!6190660 () Bool)

(assert (=> b!5126673 m!6190660))

(declare-fun m!6190662 () Bool)

(assert (=> b!5126673 m!6190662))

(declare-fun m!6190664 () Bool)

(assert (=> setNonEmpty!30649 m!6190664))

(declare-fun m!6190666 () Bool)

(assert (=> b!5126681 m!6190666))

(declare-fun m!6190668 () Bool)

(assert (=> start!541308 m!6190668))

(declare-fun m!6190670 () Bool)

(assert (=> b!5126678 m!6190670))

(declare-fun m!6190672 () Bool)

(assert (=> b!5126680 m!6190672))

(check-sat (not setNonEmpty!30650) (not b!5126677) tp_is_empty!37779 (not b!5126673) (not b!5126674) (not b!5126672) (not b!5126681) (not b!5126680) (not start!541308) (not setNonEmpty!30649) (not b!5126678) (not b!5126679) (not b!5126676) (not b!5126675))
(check-sat)
