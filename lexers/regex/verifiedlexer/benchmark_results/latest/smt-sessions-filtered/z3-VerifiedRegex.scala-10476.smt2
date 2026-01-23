; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541216 () Bool)

(assert start!541216)

(declare-fun b!5126097 () Bool)

(declare-fun e!3196833 () Bool)

(declare-fun tp_is_empty!37759 () Bool)

(declare-fun tp!1429735 () Bool)

(assert (=> b!5126097 (= e!3196833 (and tp_is_empty!37759 tp!1429735))))

(declare-fun b!5126098 () Bool)

(declare-fun e!3196831 () Bool)

(assert (=> b!5126098 (= e!3196831 true)))

(declare-fun lt!2113987 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28752 0))(
  ( (C!28753 (val!24028 Int)) )
))
(declare-datatypes ((Regex!14243 0))(
  ( (ElementMatch!14243 (c!881299 C!28752)) (Concat!23088 (regOne!28998 Regex!14243) (regTwo!28998 Regex!14243)) (EmptyExpr!14243) (Star!14243 (reg!14572 Regex!14243)) (EmptyLang!14243) (Union!14243 (regOne!28999 Regex!14243) (regTwo!28999 Regex!14243)) )
))
(declare-datatypes ((List!59417 0))(
  ( (Nil!59293) (Cons!59293 (h!65741 Regex!14243) (t!372444 List!59417)) )
))
(declare-datatypes ((Context!7254 0))(
  ( (Context!7255 (exprs!4127 List!59417)) )
))
(declare-fun z!4546 () (InoxSet Context!7254))

(declare-fun lostCauseZipper!1125 ((InoxSet Context!7254)) Bool)

(assert (=> b!5126098 (= lt!2113987 (lostCauseZipper!1125 z!4546))))

(declare-fun b!5126099 () Bool)

(declare-fun e!3196828 () Bool)

(declare-fun e!3196827 () Bool)

(assert (=> b!5126099 (= e!3196828 e!3196827)))

(declare-fun res!2182634 () Bool)

(assert (=> b!5126099 (=> (not res!2182634) (not e!3196827))))

(declare-fun lt!2113986 () (InoxSet Context!7254))

(assert (=> b!5126099 (= res!2182634 (= lt!2113986 z!4546))))

(declare-fun baseZ!61 () (InoxSet Context!7254))

(declare-datatypes ((List!59418 0))(
  ( (Nil!59294) (Cons!59294 (h!65742 C!28752) (t!372445 List!59418)) )
))
(declare-fun testedP!289 () List!59418)

(declare-fun derivationZipper!140 ((InoxSet Context!7254) List!59418) (InoxSet Context!7254))

(assert (=> b!5126099 (= lt!2113986 (derivationZipper!140 baseZ!61 testedP!289))))

(declare-fun b!5126100 () Bool)

(declare-fun res!2182632 () Bool)

(assert (=> b!5126100 (=> (not res!2182632) (not e!3196828))))

(declare-fun matchZipper!911 ((InoxSet Context!7254) List!59418) Bool)

(assert (=> b!5126100 (= res!2182632 (matchZipper!911 baseZ!61 testedP!289))))

(declare-fun b!5126101 () Bool)

(declare-fun res!2182630 () Bool)

(assert (=> b!5126101 (=> res!2182630 e!3196831)))

(declare-fun nullableZipper!1040 ((InoxSet Context!7254)) Bool)

(assert (=> b!5126101 (= res!2182630 (not (nullableZipper!1040 z!4546)))))

(declare-fun setIsEmpty!30573 () Bool)

(declare-fun setRes!30574 () Bool)

(assert (=> setIsEmpty!30573 setRes!30574))

(declare-fun b!5126102 () Bool)

(declare-fun e!3196832 () Bool)

(declare-fun tp!1429732 () Bool)

(assert (=> b!5126102 (= e!3196832 tp!1429732)))

(declare-fun b!5126103 () Bool)

(assert (=> b!5126103 (= e!3196827 (not e!3196831))))

(declare-fun res!2182633 () Bool)

(assert (=> b!5126103 (=> res!2182633 e!3196831)))

(assert (=> b!5126103 (= res!2182633 (not (matchZipper!911 z!4546 Nil!59294)))))

(assert (=> b!5126103 (matchZipper!911 lt!2113986 Nil!59294)))

(declare-datatypes ((Unit!150475 0))(
  ( (Unit!150476) )
))
(declare-fun lt!2113988 () Unit!150475)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!12 ((InoxSet Context!7254) List!59418) Unit!150475)

(assert (=> b!5126103 (= lt!2113988 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!12 baseZ!61 testedP!289))))

(declare-fun setIsEmpty!30574 () Bool)

(declare-fun setRes!30573 () Bool)

(assert (=> setIsEmpty!30574 setRes!30573))

(declare-fun setNonEmpty!30574 () Bool)

(declare-fun setElem!30574 () Context!7254)

(declare-fun tp!1429736 () Bool)

(declare-fun inv!78788 (Context!7254) Bool)

(assert (=> setNonEmpty!30574 (= setRes!30573 (and tp!1429736 (inv!78788 setElem!30574) e!3196832))))

(declare-fun setRest!30574 () (InoxSet Context!7254))

(assert (=> setNonEmpty!30574 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7254 Bool)) false) setElem!30574 true) setRest!30574))))

(declare-fun res!2182631 () Bool)

(assert (=> start!541216 (=> (not res!2182631) (not e!3196828))))

(declare-fun input!5798 () List!59418)

(declare-fun isPrefix!5648 (List!59418 List!59418) Bool)

(assert (=> start!541216 (= res!2182631 (isPrefix!5648 testedP!289 input!5798))))

(assert (=> start!541216 e!3196828))

(declare-fun e!3196830 () Bool)

(assert (=> start!541216 e!3196830))

(assert (=> start!541216 e!3196833))

(declare-fun condSetEmpty!30573 () Bool)

(assert (=> start!541216 (= condSetEmpty!30573 (= baseZ!61 ((as const (Array Context!7254 Bool)) false)))))

(assert (=> start!541216 setRes!30573))

(declare-fun condSetEmpty!30574 () Bool)

(assert (=> start!541216 (= condSetEmpty!30574 (= z!4546 ((as const (Array Context!7254 Bool)) false)))))

(assert (=> start!541216 setRes!30574))

(declare-fun tp!1429737 () Bool)

(declare-fun setElem!30573 () Context!7254)

(declare-fun setNonEmpty!30573 () Bool)

(declare-fun e!3196829 () Bool)

(assert (=> setNonEmpty!30573 (= setRes!30574 (and tp!1429737 (inv!78788 setElem!30573) e!3196829))))

(declare-fun setRest!30573 () (InoxSet Context!7254))

(assert (=> setNonEmpty!30573 (= z!4546 ((_ map or) (store ((as const (Array Context!7254 Bool)) false) setElem!30573 true) setRest!30573))))

(declare-fun b!5126104 () Bool)

(declare-fun tp!1429734 () Bool)

(assert (=> b!5126104 (= e!3196830 (and tp_is_empty!37759 tp!1429734))))

(declare-fun b!5126105 () Bool)

(declare-fun tp!1429733 () Bool)

(assert (=> b!5126105 (= e!3196829 tp!1429733)))

(assert (= (and start!541216 res!2182631) b!5126100))

(assert (= (and b!5126100 res!2182632) b!5126099))

(assert (= (and b!5126099 res!2182634) b!5126103))

(assert (= (and b!5126103 (not res!2182633)) b!5126101))

(assert (= (and b!5126101 (not res!2182630)) b!5126098))

(get-info :version)

(assert (= (and start!541216 ((_ is Cons!59294) testedP!289)) b!5126104))

(assert (= (and start!541216 ((_ is Cons!59294) input!5798)) b!5126097))

(assert (= (and start!541216 condSetEmpty!30573) setIsEmpty!30574))

(assert (= (and start!541216 (not condSetEmpty!30573)) setNonEmpty!30574))

(assert (= setNonEmpty!30574 b!5126102))

(assert (= (and start!541216 condSetEmpty!30574) setIsEmpty!30573))

(assert (= (and start!541216 (not condSetEmpty!30574)) setNonEmpty!30573))

(assert (= setNonEmpty!30573 b!5126105))

(declare-fun m!6190090 () Bool)

(assert (=> setNonEmpty!30573 m!6190090))

(declare-fun m!6190092 () Bool)

(assert (=> b!5126101 m!6190092))

(declare-fun m!6190094 () Bool)

(assert (=> b!5126100 m!6190094))

(declare-fun m!6190096 () Bool)

(assert (=> setNonEmpty!30574 m!6190096))

(declare-fun m!6190098 () Bool)

(assert (=> b!5126103 m!6190098))

(declare-fun m!6190100 () Bool)

(assert (=> b!5126103 m!6190100))

(declare-fun m!6190102 () Bool)

(assert (=> b!5126103 m!6190102))

(declare-fun m!6190104 () Bool)

(assert (=> b!5126099 m!6190104))

(declare-fun m!6190106 () Bool)

(assert (=> b!5126098 m!6190106))

(declare-fun m!6190108 () Bool)

(assert (=> start!541216 m!6190108))

(check-sat (not b!5126098) (not start!541216) (not b!5126097) (not b!5126104) (not b!5126099) (not b!5126105) (not setNonEmpty!30574) (not setNonEmpty!30573) (not b!5126101) (not b!5126103) tp_is_empty!37759 (not b!5126102) (not b!5126100))
(check-sat)
