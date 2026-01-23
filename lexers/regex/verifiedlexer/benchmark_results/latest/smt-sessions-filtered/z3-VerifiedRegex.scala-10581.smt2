; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544200 () Bool)

(assert start!544200)

(declare-fun res!2189021 () Bool)

(declare-fun e!3205646 () Bool)

(assert (=> start!544200 (=> (not res!2189021) (not e!3205646))))

(declare-datatypes ((C!29172 0))(
  ( (C!29173 (val!24238 Int)) )
))
(declare-datatypes ((Regex!14453 0))(
  ( (ElementMatch!14453 (c!884983 C!29172)) (Concat!23298 (regOne!29418 Regex!14453) (regTwo!29418 Regex!14453)) (EmptyExpr!14453) (Star!14453 (reg!14782 Regex!14453)) (EmptyLang!14453) (Union!14453 (regOne!29419 Regex!14453) (regTwo!29419 Regex!14453)) )
))
(declare-fun expr!117 () Regex!14453)

(declare-fun validRegex!6308 (Regex!14453) Bool)

(assert (=> start!544200 (= res!2189021 (validRegex!6308 expr!117))))

(assert (=> start!544200 e!3205646))

(declare-fun e!3205647 () Bool)

(assert (=> start!544200 e!3205647))

(declare-datatypes ((List!59827 0))(
  ( (Nil!59703) (Cons!59703 (h!66151 Regex!14453) (t!372860 List!59827)) )
))
(declare-datatypes ((Context!7674 0))(
  ( (Context!7675 (exprs!4337 List!59827)) )
))
(declare-fun ctx!100 () Context!7674)

(declare-fun e!3205645 () Bool)

(declare-fun inv!79313 (Context!7674) Bool)

(assert (=> start!544200 (and (inv!79313 ctx!100) e!3205645)))

(declare-fun tp_is_empty!38055 () Bool)

(assert (=> start!544200 tp_is_empty!38055))

(declare-fun b!5139648 () Bool)

(declare-fun e!3205650 () Bool)

(assert (=> b!5139648 (= e!3205650 (not true))))

(declare-fun lt!2120338 () Context!7674)

(declare-fun a!1296 () C!29172)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1263 ((InoxSet Context!7674)) Bool)

(declare-fun derivationStepZipperDown!144 (Regex!14453 Context!7674 C!29172) (InoxSet Context!7674))

(assert (=> b!5139648 (lostCauseZipper!1263 (derivationStepZipperDown!144 (regOne!29418 expr!117) lt!2120338 a!1296))))

(declare-datatypes ((Unit!151093 0))(
  ( (Unit!151094) )
))
(declare-fun lt!2120337 () Unit!151093)

(declare-fun lemmaLostCauseFixPointDerivDown!36 (Regex!14453 Context!7674 C!29172) Unit!151093)

(assert (=> b!5139648 (= lt!2120337 (lemmaLostCauseFixPointDerivDown!36 (regOne!29418 expr!117) lt!2120338 a!1296))))

(declare-fun b!5139649 () Bool)

(declare-fun res!2189029 () Bool)

(assert (=> b!5139649 (=> (not res!2189029) (not e!3205646))))

(assert (=> b!5139649 (= res!2189029 (validRegex!6308 (regTwo!29418 expr!117)))))

(declare-fun b!5139650 () Bool)

(declare-fun res!2189023 () Bool)

(assert (=> b!5139650 (=> (not res!2189023) (not e!3205646))))

(get-info :version)

(assert (=> b!5139650 (= res!2189023 ((_ is Concat!23298) expr!117))))

(declare-fun b!5139651 () Bool)

(assert (=> b!5139651 (= e!3205647 tp_is_empty!38055)))

(declare-fun b!5139652 () Bool)

(declare-fun e!3205649 () Bool)

(declare-fun lostCause!1458 (Context!7674) Bool)

(assert (=> b!5139652 (= e!3205649 (lostCause!1458 lt!2120338))))

(declare-fun b!5139653 () Bool)

(assert (=> b!5139653 (= e!3205646 e!3205650)))

(declare-fun res!2189022 () Bool)

(assert (=> b!5139653 (=> (not res!2189022) (not e!3205650))))

(assert (=> b!5139653 (= res!2189022 (validRegex!6308 (regOne!29418 expr!117)))))

(declare-fun $colon$colon!1191 (List!59827 Regex!14453) List!59827)

(assert (=> b!5139653 (= lt!2120338 (Context!7675 ($colon$colon!1191 (exprs!4337 ctx!100) (regTwo!29418 expr!117))))))

(declare-fun b!5139654 () Bool)

(declare-fun tp!1433647 () Bool)

(assert (=> b!5139654 (= e!3205645 tp!1433647)))

(declare-fun b!5139655 () Bool)

(declare-fun tp!1433649 () Bool)

(declare-fun tp!1433648 () Bool)

(assert (=> b!5139655 (= e!3205647 (and tp!1433649 tp!1433648))))

(declare-fun b!5139656 () Bool)

(declare-fun tp!1433644 () Bool)

(declare-fun tp!1433645 () Bool)

(assert (=> b!5139656 (= e!3205647 (and tp!1433644 tp!1433645))))

(declare-fun b!5139657 () Bool)

(declare-fun tp!1433646 () Bool)

(assert (=> b!5139657 (= e!3205647 tp!1433646)))

(declare-fun b!5139658 () Bool)

(declare-fun res!2189026 () Bool)

(assert (=> b!5139658 (=> (not res!2189026) (not e!3205650))))

(assert (=> b!5139658 (= res!2189026 e!3205649)))

(declare-fun res!2189024 () Bool)

(assert (=> b!5139658 (=> res!2189024 e!3205649)))

(declare-fun lostCause!1459 (Regex!14453) Bool)

(assert (=> b!5139658 (= res!2189024 (lostCause!1459 (regOne!29418 expr!117)))))

(declare-fun b!5139659 () Bool)

(declare-fun e!3205651 () Bool)

(assert (=> b!5139659 (= e!3205651 (lostCause!1458 ctx!100))))

(declare-fun b!5139660 () Bool)

(declare-fun res!2189030 () Bool)

(assert (=> b!5139660 (=> (not res!2189030) (not e!3205646))))

(assert (=> b!5139660 (= res!2189030 (and (or (not ((_ is ElementMatch!14453) expr!117)) (not (= (c!884983 expr!117) a!1296))) (not ((_ is Union!14453) expr!117))))))

(declare-fun b!5139661 () Bool)

(declare-fun e!3205648 () Bool)

(declare-fun nullable!4812 (Regex!14453) Bool)

(assert (=> b!5139661 (= e!3205648 (not (nullable!4812 (regOne!29418 expr!117))))))

(declare-fun b!5139662 () Bool)

(declare-fun res!2189020 () Bool)

(assert (=> b!5139662 (=> (not res!2189020) (not e!3205646))))

(assert (=> b!5139662 (= res!2189020 e!3205648)))

(declare-fun res!2189027 () Bool)

(assert (=> b!5139662 (=> res!2189027 e!3205648)))

(assert (=> b!5139662 (= res!2189027 (not ((_ is Concat!23298) expr!117)))))

(declare-fun b!5139663 () Bool)

(declare-fun res!2189025 () Bool)

(assert (=> b!5139663 (=> (not res!2189025) (not e!3205646))))

(assert (=> b!5139663 (= res!2189025 e!3205651)))

(declare-fun res!2189028 () Bool)

(assert (=> b!5139663 (=> res!2189028 e!3205651)))

(assert (=> b!5139663 (= res!2189028 (lostCause!1459 expr!117))))

(assert (= (and start!544200 res!2189021) b!5139663))

(assert (= (and b!5139663 (not res!2189028)) b!5139659))

(assert (= (and b!5139663 res!2189025) b!5139660))

(assert (= (and b!5139660 res!2189030) b!5139662))

(assert (= (and b!5139662 (not res!2189027)) b!5139661))

(assert (= (and b!5139662 res!2189020) b!5139650))

(assert (= (and b!5139650 res!2189023) b!5139649))

(assert (= (and b!5139649 res!2189029) b!5139653))

(assert (= (and b!5139653 res!2189022) b!5139658))

(assert (= (and b!5139658 (not res!2189024)) b!5139652))

(assert (= (and b!5139658 res!2189026) b!5139648))

(assert (= (and start!544200 ((_ is ElementMatch!14453) expr!117)) b!5139651))

(assert (= (and start!544200 ((_ is Concat!23298) expr!117)) b!5139655))

(assert (= (and start!544200 ((_ is Star!14453) expr!117)) b!5139657))

(assert (= (and start!544200 ((_ is Union!14453) expr!117)) b!5139656))

(assert (= start!544200 b!5139654))

(declare-fun m!6204110 () Bool)

(assert (=> b!5139653 m!6204110))

(declare-fun m!6204112 () Bool)

(assert (=> b!5139653 m!6204112))

(declare-fun m!6204114 () Bool)

(assert (=> b!5139663 m!6204114))

(declare-fun m!6204116 () Bool)

(assert (=> b!5139652 m!6204116))

(declare-fun m!6204118 () Bool)

(assert (=> b!5139661 m!6204118))

(declare-fun m!6204120 () Bool)

(assert (=> b!5139649 m!6204120))

(declare-fun m!6204122 () Bool)

(assert (=> b!5139658 m!6204122))

(declare-fun m!6204124 () Bool)

(assert (=> start!544200 m!6204124))

(declare-fun m!6204126 () Bool)

(assert (=> start!544200 m!6204126))

(declare-fun m!6204128 () Bool)

(assert (=> b!5139648 m!6204128))

(assert (=> b!5139648 m!6204128))

(declare-fun m!6204130 () Bool)

(assert (=> b!5139648 m!6204130))

(declare-fun m!6204132 () Bool)

(assert (=> b!5139648 m!6204132))

(declare-fun m!6204134 () Bool)

(assert (=> b!5139659 m!6204134))

(check-sat (not b!5139663) tp_is_empty!38055 (not b!5139648) (not b!5139653) (not b!5139661) (not b!5139655) (not start!544200) (not b!5139657) (not b!5139659) (not b!5139656) (not b!5139649) (not b!5139658) (not b!5139652) (not b!5139654))
(check-sat)
