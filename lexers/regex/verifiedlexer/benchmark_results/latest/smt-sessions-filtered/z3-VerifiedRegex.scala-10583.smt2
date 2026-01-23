; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544208 () Bool)

(assert start!544208)

(declare-fun b!5139823 () Bool)

(declare-fun e!3205728 () Bool)

(declare-fun e!3205729 () Bool)

(assert (=> b!5139823 (= e!3205728 e!3205729)))

(declare-fun res!2189137 () Bool)

(assert (=> b!5139823 (=> (not res!2189137) (not e!3205729))))

(declare-datatypes ((C!29180 0))(
  ( (C!29181 (val!24242 Int)) )
))
(declare-datatypes ((Regex!14457 0))(
  ( (ElementMatch!14457 (c!884987 C!29180)) (Concat!23302 (regOne!29426 Regex!14457) (regTwo!29426 Regex!14457)) (EmptyExpr!14457) (Star!14457 (reg!14786 Regex!14457)) (EmptyLang!14457) (Union!14457 (regOne!29427 Regex!14457) (regTwo!29427 Regex!14457)) )
))
(declare-fun expr!117 () Regex!14457)

(declare-fun validRegex!6312 (Regex!14457) Bool)

(assert (=> b!5139823 (= res!2189137 (validRegex!6312 (reg!14786 expr!117)))))

(declare-datatypes ((List!59831 0))(
  ( (Nil!59707) (Cons!59707 (h!66155 Regex!14457) (t!372864 List!59831)) )
))
(declare-datatypes ((Context!7682 0))(
  ( (Context!7683 (exprs!4341 List!59831)) )
))
(declare-fun lt!2120356 () Context!7682)

(declare-fun ctx!100 () Context!7682)

(declare-fun $colon$colon!1195 (List!59831 Regex!14457) List!59831)

(assert (=> b!5139823 (= lt!2120356 (Context!7683 ($colon$colon!1195 (exprs!4341 ctx!100) expr!117)))))

(declare-fun b!5139824 () Bool)

(declare-fun res!2189140 () Bool)

(assert (=> b!5139824 (=> (not res!2189140) (not e!3205729))))

(declare-fun e!3205724 () Bool)

(assert (=> b!5139824 (= res!2189140 e!3205724)))

(declare-fun res!2189138 () Bool)

(assert (=> b!5139824 (=> res!2189138 e!3205724)))

(declare-fun lostCause!1466 (Regex!14457) Bool)

(assert (=> b!5139824 (= res!2189138 (lostCause!1466 (reg!14786 expr!117)))))

(declare-fun b!5139825 () Bool)

(declare-fun lostCause!1467 (Context!7682) Bool)

(assert (=> b!5139825 (= e!3205724 (lostCause!1467 lt!2120356))))

(declare-fun b!5139826 () Bool)

(declare-fun e!3205723 () Bool)

(declare-fun tp_is_empty!38063 () Bool)

(assert (=> b!5139826 (= e!3205723 tp_is_empty!38063)))

(declare-fun b!5139827 () Bool)

(declare-fun e!3205725 () Bool)

(assert (=> b!5139827 (= e!3205725 (lostCause!1467 ctx!100))))

(declare-fun b!5139829 () Bool)

(declare-fun tp!1433721 () Bool)

(assert (=> b!5139829 (= e!3205723 tp!1433721)))

(declare-fun b!5139830 () Bool)

(declare-fun res!2189135 () Bool)

(assert (=> b!5139830 (=> (not res!2189135) (not e!3205728))))

(declare-fun a!1296 () C!29180)

(get-info :version)

(assert (=> b!5139830 (= res!2189135 (and (or (not ((_ is ElementMatch!14457) expr!117)) (not (= (c!884987 expr!117) a!1296))) (not ((_ is Union!14457) expr!117))))))

(declare-fun b!5139831 () Bool)

(declare-fun tp!1433717 () Bool)

(declare-fun tp!1433716 () Bool)

(assert (=> b!5139831 (= e!3205723 (and tp!1433717 tp!1433716))))

(declare-fun b!5139832 () Bool)

(declare-fun res!2189142 () Bool)

(assert (=> b!5139832 (=> (not res!2189142) (not e!3205728))))

(assert (=> b!5139832 (= res!2189142 (and (not ((_ is Concat!23302) expr!117)) ((_ is Star!14457) expr!117)))))

(declare-fun b!5139833 () Bool)

(declare-fun tp!1433718 () Bool)

(declare-fun tp!1433720 () Bool)

(assert (=> b!5139833 (= e!3205723 (and tp!1433718 tp!1433720))))

(declare-fun res!2189143 () Bool)

(assert (=> start!544208 (=> (not res!2189143) (not e!3205728))))

(assert (=> start!544208 (= res!2189143 (validRegex!6312 expr!117))))

(assert (=> start!544208 e!3205728))

(assert (=> start!544208 e!3205723))

(declare-fun e!3205727 () Bool)

(declare-fun inv!79323 (Context!7682) Bool)

(assert (=> start!544208 (and (inv!79323 ctx!100) e!3205727)))

(assert (=> start!544208 tp_is_empty!38063))

(declare-fun b!5139828 () Bool)

(declare-fun res!2189139 () Bool)

(assert (=> b!5139828 (=> (not res!2189139) (not e!3205728))))

(declare-fun e!3205726 () Bool)

(assert (=> b!5139828 (= res!2189139 e!3205726)))

(declare-fun res!2189144 () Bool)

(assert (=> b!5139828 (=> res!2189144 e!3205726)))

(assert (=> b!5139828 (= res!2189144 (not ((_ is Concat!23302) expr!117)))))

(declare-fun b!5139834 () Bool)

(declare-fun nullable!4816 (Regex!14457) Bool)

(assert (=> b!5139834 (= e!3205726 (not (nullable!4816 (regOne!29426 expr!117))))))

(declare-fun b!5139835 () Bool)

(declare-fun res!2189141 () Bool)

(assert (=> b!5139835 (=> (not res!2189141) (not e!3205728))))

(assert (=> b!5139835 (= res!2189141 e!3205725)))

(declare-fun res!2189136 () Bool)

(assert (=> b!5139835 (=> res!2189136 e!3205725)))

(assert (=> b!5139835 (= res!2189136 (lostCause!1466 expr!117))))

(declare-fun b!5139836 () Bool)

(declare-fun tp!1433719 () Bool)

(assert (=> b!5139836 (= e!3205727 tp!1433719)))

(declare-fun b!5139837 () Bool)

(assert (=> b!5139837 (= e!3205729 (not true))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1265 ((InoxSet Context!7682)) Bool)

(declare-fun derivationStepZipperDown!146 (Regex!14457 Context!7682 C!29180) (InoxSet Context!7682))

(assert (=> b!5139837 (lostCauseZipper!1265 (derivationStepZipperDown!146 (reg!14786 expr!117) lt!2120356 a!1296))))

(declare-datatypes ((Unit!151097 0))(
  ( (Unit!151098) )
))
(declare-fun lt!2120355 () Unit!151097)

(declare-fun lemmaLostCauseFixPointDerivDown!38 (Regex!14457 Context!7682 C!29180) Unit!151097)

(assert (=> b!5139837 (= lt!2120355 (lemmaLostCauseFixPointDerivDown!38 (reg!14786 expr!117) lt!2120356 a!1296))))

(assert (= (and start!544208 res!2189143) b!5139835))

(assert (= (and b!5139835 (not res!2189136)) b!5139827))

(assert (= (and b!5139835 res!2189141) b!5139830))

(assert (= (and b!5139830 res!2189135) b!5139828))

(assert (= (and b!5139828 (not res!2189144)) b!5139834))

(assert (= (and b!5139828 res!2189139) b!5139832))

(assert (= (and b!5139832 res!2189142) b!5139823))

(assert (= (and b!5139823 res!2189137) b!5139824))

(assert (= (and b!5139824 (not res!2189138)) b!5139825))

(assert (= (and b!5139824 res!2189140) b!5139837))

(assert (= (and start!544208 ((_ is ElementMatch!14457) expr!117)) b!5139826))

(assert (= (and start!544208 ((_ is Concat!23302) expr!117)) b!5139833))

(assert (= (and start!544208 ((_ is Star!14457) expr!117)) b!5139829))

(assert (= (and start!544208 ((_ is Union!14457) expr!117)) b!5139831))

(assert (= start!544208 b!5139836))

(declare-fun m!6204196 () Bool)

(assert (=> b!5139827 m!6204196))

(declare-fun m!6204198 () Bool)

(assert (=> b!5139823 m!6204198))

(declare-fun m!6204200 () Bool)

(assert (=> b!5139823 m!6204200))

(declare-fun m!6204202 () Bool)

(assert (=> start!544208 m!6204202))

(declare-fun m!6204204 () Bool)

(assert (=> start!544208 m!6204204))

(declare-fun m!6204206 () Bool)

(assert (=> b!5139834 m!6204206))

(declare-fun m!6204208 () Bool)

(assert (=> b!5139824 m!6204208))

(declare-fun m!6204210 () Bool)

(assert (=> b!5139837 m!6204210))

(assert (=> b!5139837 m!6204210))

(declare-fun m!6204212 () Bool)

(assert (=> b!5139837 m!6204212))

(declare-fun m!6204214 () Bool)

(assert (=> b!5139837 m!6204214))

(declare-fun m!6204216 () Bool)

(assert (=> b!5139825 m!6204216))

(declare-fun m!6204218 () Bool)

(assert (=> b!5139835 m!6204218))

(check-sat (not b!5139829) (not b!5139824) tp_is_empty!38063 (not start!544208) (not b!5139833) (not b!5139827) (not b!5139835) (not b!5139825) (not b!5139837) (not b!5139823) (not b!5139836) (not b!5139834) (not b!5139831))
(check-sat)
