; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541220 () Bool)

(assert start!541220)

(declare-fun b!5126156 () Bool)

(declare-fun e!3196874 () Bool)

(declare-fun tp!1429771 () Bool)

(assert (=> b!5126156 (= e!3196874 tp!1429771)))

(declare-fun res!2182670 () Bool)

(declare-fun e!3196869 () Bool)

(assert (=> start!541220 (=> (not res!2182670) (not e!3196869))))

(declare-datatypes ((C!28756 0))(
  ( (C!28757 (val!24030 Int)) )
))
(declare-datatypes ((List!59421 0))(
  ( (Nil!59297) (Cons!59297 (h!65745 C!28756) (t!372448 List!59421)) )
))
(declare-fun testedP!289 () List!59421)

(declare-fun input!5798 () List!59421)

(declare-fun isPrefix!5650 (List!59421 List!59421) Bool)

(assert (=> start!541220 (= res!2182670 (isPrefix!5650 testedP!289 input!5798))))

(assert (=> start!541220 e!3196869))

(declare-fun e!3196873 () Bool)

(assert (=> start!541220 e!3196873))

(declare-fun e!3196871 () Bool)

(assert (=> start!541220 e!3196871))

(declare-fun condSetEmpty!30586 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14245 0))(
  ( (ElementMatch!14245 (c!881301 C!28756)) (Concat!23090 (regOne!29002 Regex!14245) (regTwo!29002 Regex!14245)) (EmptyExpr!14245) (Star!14245 (reg!14574 Regex!14245)) (EmptyLang!14245) (Union!14245 (regOne!29003 Regex!14245) (regTwo!29003 Regex!14245)) )
))
(declare-datatypes ((List!59422 0))(
  ( (Nil!59298) (Cons!59298 (h!65746 Regex!14245) (t!372449 List!59422)) )
))
(declare-datatypes ((Context!7258 0))(
  ( (Context!7259 (exprs!4129 List!59422)) )
))
(declare-fun baseZ!61 () (InoxSet Context!7258))

(assert (=> start!541220 (= condSetEmpty!30586 (= baseZ!61 ((as const (Array Context!7258 Bool)) false)))))

(declare-fun setRes!30585 () Bool)

(assert (=> start!541220 setRes!30585))

(declare-fun condSetEmpty!30585 () Bool)

(declare-fun z!4546 () (InoxSet Context!7258))

(assert (=> start!541220 (= condSetEmpty!30585 (= z!4546 ((as const (Array Context!7258 Bool)) false)))))

(declare-fun setRes!30586 () Bool)

(assert (=> start!541220 setRes!30586))

(declare-fun b!5126157 () Bool)

(declare-fun tp_is_empty!37763 () Bool)

(declare-fun tp!1429768 () Bool)

(assert (=> b!5126157 (= e!3196871 (and tp_is_empty!37763 tp!1429768))))

(declare-fun b!5126158 () Bool)

(declare-fun tp!1429769 () Bool)

(assert (=> b!5126158 (= e!3196873 (and tp_is_empty!37763 tp!1429769))))

(declare-fun e!3196872 () Bool)

(declare-fun tp!1429772 () Bool)

(declare-fun setElem!30586 () Context!7258)

(declare-fun setNonEmpty!30585 () Bool)

(declare-fun inv!78793 (Context!7258) Bool)

(assert (=> setNonEmpty!30585 (= setRes!30585 (and tp!1429772 (inv!78793 setElem!30586) e!3196872))))

(declare-fun setRest!30586 () (InoxSet Context!7258))

(assert (=> setNonEmpty!30585 (= baseZ!61 ((_ map or) (store ((as const (Array Context!7258 Bool)) false) setElem!30586 true) setRest!30586))))

(declare-fun b!5126159 () Bool)

(declare-fun e!3196875 () Bool)

(assert (=> b!5126159 (= e!3196869 e!3196875)))

(declare-fun res!2182666 () Bool)

(assert (=> b!5126159 (=> (not res!2182666) (not e!3196875))))

(declare-fun lt!2114004 () (InoxSet Context!7258))

(assert (=> b!5126159 (= res!2182666 (= lt!2114004 z!4546))))

(declare-fun derivationZipper!142 ((InoxSet Context!7258) List!59421) (InoxSet Context!7258))

(assert (=> b!5126159 (= lt!2114004 (derivationZipper!142 baseZ!61 testedP!289))))

(declare-fun b!5126160 () Bool)

(declare-fun tp!1429770 () Bool)

(assert (=> b!5126160 (= e!3196872 tp!1429770)))

(declare-fun setIsEmpty!30585 () Bool)

(assert (=> setIsEmpty!30585 setRes!30585))

(declare-fun b!5126161 () Bool)

(declare-fun res!2182669 () Bool)

(declare-fun e!3196870 () Bool)

(assert (=> b!5126161 (=> res!2182669 e!3196870)))

(declare-fun nullableZipper!1042 ((InoxSet Context!7258)) Bool)

(assert (=> b!5126161 (= res!2182669 (not (nullableZipper!1042 z!4546)))))

(declare-fun tp!1429773 () Bool)

(declare-fun setNonEmpty!30586 () Bool)

(declare-fun setElem!30585 () Context!7258)

(assert (=> setNonEmpty!30586 (= setRes!30586 (and tp!1429773 (inv!78793 setElem!30585) e!3196874))))

(declare-fun setRest!30585 () (InoxSet Context!7258))

(assert (=> setNonEmpty!30586 (= z!4546 ((_ map or) (store ((as const (Array Context!7258 Bool)) false) setElem!30585 true) setRest!30585))))

(declare-fun b!5126162 () Bool)

(declare-fun res!2182668 () Bool)

(assert (=> b!5126162 (=> (not res!2182668) (not e!3196869))))

(declare-fun matchZipper!913 ((InoxSet Context!7258) List!59421) Bool)

(assert (=> b!5126162 (= res!2182668 (matchZipper!913 baseZ!61 testedP!289))))

(declare-fun b!5126163 () Bool)

(assert (=> b!5126163 (= e!3196875 (not e!3196870))))

(declare-fun res!2182667 () Bool)

(assert (=> b!5126163 (=> res!2182667 e!3196870)))

(assert (=> b!5126163 (= res!2182667 (not (matchZipper!913 z!4546 Nil!59297)))))

(assert (=> b!5126163 (matchZipper!913 lt!2114004 Nil!59297)))

(declare-datatypes ((Unit!150479 0))(
  ( (Unit!150480) )
))
(declare-fun lt!2114006 () Unit!150479)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!14 ((InoxSet Context!7258) List!59421) Unit!150479)

(assert (=> b!5126163 (= lt!2114006 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!14 baseZ!61 testedP!289))))

(declare-fun b!5126164 () Bool)

(assert (=> b!5126164 (= e!3196870 true)))

(assert (=> b!5126164 false))

(declare-fun lt!2114005 () Unit!150479)

(declare-fun lemmaLostCauseCannotMatch!53 ((InoxSet Context!7258) List!59421) Unit!150479)

(assert (=> b!5126164 (= lt!2114005 (lemmaLostCauseCannotMatch!53 z!4546 Nil!59297))))

(declare-fun setIsEmpty!30586 () Bool)

(assert (=> setIsEmpty!30586 setRes!30586))

(declare-fun b!5126165 () Bool)

(declare-fun res!2182665 () Bool)

(assert (=> b!5126165 (=> res!2182665 e!3196870)))

(declare-fun lostCauseZipper!1127 ((InoxSet Context!7258)) Bool)

(assert (=> b!5126165 (= res!2182665 (not (lostCauseZipper!1127 z!4546)))))

(assert (= (and start!541220 res!2182670) b!5126162))

(assert (= (and b!5126162 res!2182668) b!5126159))

(assert (= (and b!5126159 res!2182666) b!5126163))

(assert (= (and b!5126163 (not res!2182667)) b!5126161))

(assert (= (and b!5126161 (not res!2182669)) b!5126165))

(assert (= (and b!5126165 (not res!2182665)) b!5126164))

(get-info :version)

(assert (= (and start!541220 ((_ is Cons!59297) testedP!289)) b!5126158))

(assert (= (and start!541220 ((_ is Cons!59297) input!5798)) b!5126157))

(assert (= (and start!541220 condSetEmpty!30586) setIsEmpty!30585))

(assert (= (and start!541220 (not condSetEmpty!30586)) setNonEmpty!30585))

(assert (= setNonEmpty!30585 b!5126160))

(assert (= (and start!541220 condSetEmpty!30585) setIsEmpty!30586))

(assert (= (and start!541220 (not condSetEmpty!30585)) setNonEmpty!30586))

(assert (= setNonEmpty!30586 b!5126156))

(declare-fun m!6190132 () Bool)

(assert (=> b!5126159 m!6190132))

(declare-fun m!6190134 () Bool)

(assert (=> setNonEmpty!30586 m!6190134))

(declare-fun m!6190136 () Bool)

(assert (=> b!5126165 m!6190136))

(declare-fun m!6190138 () Bool)

(assert (=> b!5126162 m!6190138))

(declare-fun m!6190140 () Bool)

(assert (=> start!541220 m!6190140))

(declare-fun m!6190142 () Bool)

(assert (=> b!5126163 m!6190142))

(declare-fun m!6190144 () Bool)

(assert (=> b!5126163 m!6190144))

(declare-fun m!6190146 () Bool)

(assert (=> b!5126163 m!6190146))

(declare-fun m!6190148 () Bool)

(assert (=> setNonEmpty!30585 m!6190148))

(declare-fun m!6190150 () Bool)

(assert (=> b!5126161 m!6190150))

(declare-fun m!6190152 () Bool)

(assert (=> b!5126164 m!6190152))

(check-sat (not b!5126163) tp_is_empty!37763 (not b!5126161) (not b!5126160) (not b!5126165) (not setNonEmpty!30585) (not b!5126162) (not start!541220) (not b!5126156) (not b!5126159) (not b!5126158) (not b!5126157) (not setNonEmpty!30586) (not b!5126164))
(check-sat)
