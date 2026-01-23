; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574582 () Bool)

(assert start!574582)

(declare-fun b!5501156 () Bool)

(assert (=> b!5501156 true))

(declare-fun b!5501135 () Bool)

(declare-fun res!2344970 () Bool)

(declare-fun e!3402813 () Bool)

(assert (=> b!5501135 (=> res!2344970 e!3402813)))

(declare-datatypes ((C!31228 0))(
  ( (C!31229 (val!25316 Int)) )
))
(declare-datatypes ((Regex!15479 0))(
  ( (ElementMatch!15479 (c!960803 C!31228)) (Concat!24324 (regOne!31470 Regex!15479) (regTwo!31470 Regex!15479)) (EmptyExpr!15479) (Star!15479 (reg!15808 Regex!15479)) (EmptyLang!15479) (Union!15479 (regOne!31471 Regex!15479) (regTwo!31471 Regex!15479)) )
))
(declare-fun r!7292 () Regex!15479)

(declare-datatypes ((List!62736 0))(
  ( (Nil!62612) (Cons!62612 (h!69060 Regex!15479) (t!375973 List!62736)) )
))
(declare-datatypes ((Context!9726 0))(
  ( (Context!9727 (exprs!5363 List!62736)) )
))
(declare-datatypes ((List!62737 0))(
  ( (Nil!62613) (Cons!62613 (h!69061 Context!9726) (t!375974 List!62737)) )
))
(declare-fun zl!343 () List!62737)

(declare-fun generalisedUnion!1342 (List!62736) Regex!15479)

(declare-fun unfocusZipperList!907 (List!62737) List!62736)

(assert (=> b!5501135 (= res!2344970 (not (= r!7292 (generalisedUnion!1342 (unfocusZipperList!907 zl!343)))))))

(declare-fun b!5501136 () Bool)

(declare-fun res!2344980 () Bool)

(declare-fun e!3402815 () Bool)

(assert (=> b!5501136 (=> (not res!2344980) (not e!3402815))))

(declare-fun unfocusZipper!1221 (List!62737) Regex!15479)

(assert (=> b!5501136 (= res!2344980 (= r!7292 (unfocusZipper!1221 zl!343)))))

(declare-fun b!5501137 () Bool)

(declare-fun e!3402811 () Bool)

(declare-fun e!3402805 () Bool)

(assert (=> b!5501137 (= e!3402811 e!3402805)))

(declare-fun res!2344975 () Bool)

(assert (=> b!5501137 (=> res!2344975 e!3402805)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2243675 () (InoxSet Context!9726))

(declare-fun lt!2243658 () (InoxSet Context!9726))

(assert (=> b!5501137 (= res!2344975 (not (= lt!2243675 lt!2243658)))))

(declare-datatypes ((List!62738 0))(
  ( (Nil!62614) (Cons!62614 (h!69062 C!31228) (t!375975 List!62738)) )
))
(declare-fun s!2326 () List!62738)

(declare-fun lt!2243674 () Context!9726)

(declare-fun derivationStepZipperDown!825 (Regex!15479 Context!9726 C!31228) (InoxSet Context!9726))

(assert (=> b!5501137 (= lt!2243658 (derivationStepZipperDown!825 r!7292 lt!2243674 (h!69062 s!2326)))))

(assert (=> b!5501137 (= lt!2243674 (Context!9727 Nil!62612))))

(declare-fun derivationStepZipperUp!751 (Context!9726 C!31228) (InoxSet Context!9726))

(assert (=> b!5501137 (= lt!2243675 (derivationStepZipperUp!751 (Context!9727 (Cons!62612 r!7292 Nil!62612)) (h!69062 s!2326)))))

(declare-fun b!5501138 () Bool)

(declare-fun e!3402812 () Bool)

(declare-fun tp_is_empty!40211 () Bool)

(assert (=> b!5501138 (= e!3402812 tp_is_empty!40211)))

(declare-fun b!5501139 () Bool)

(declare-fun res!2344979 () Bool)

(assert (=> b!5501139 (=> res!2344979 e!3402813)))

(get-info :version)

(assert (=> b!5501139 (= res!2344979 (not ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343)))))))

(declare-fun e!3402806 () Bool)

(declare-fun setRes!36469 () Bool)

(declare-fun setNonEmpty!36469 () Bool)

(declare-fun setElem!36469 () Context!9726)

(declare-fun tp!1513730 () Bool)

(declare-fun inv!81944 (Context!9726) Bool)

(assert (=> setNonEmpty!36469 (= setRes!36469 (and tp!1513730 (inv!81944 setElem!36469) e!3402806))))

(declare-fun z!1189 () (InoxSet Context!9726))

(declare-fun setRest!36469 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36469 (= z!1189 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36469 true) setRest!36469))))

(declare-fun b!5501140 () Bool)

(declare-fun e!3402814 () Bool)

(declare-fun lt!2243683 () (InoxSet Context!9726))

(declare-fun matchZipper!1647 ((InoxSet Context!9726) List!62738) Bool)

(assert (=> b!5501140 (= e!3402814 (matchZipper!1647 lt!2243683 (t!375975 s!2326)))))

(declare-fun b!5501141 () Bool)

(declare-fun res!2344969 () Bool)

(assert (=> b!5501141 (=> res!2344969 e!3402813)))

(declare-fun isEmpty!34395 (List!62737) Bool)

(assert (=> b!5501141 (= res!2344969 (not (isEmpty!34395 (t!375974 zl!343))))))

(declare-fun setIsEmpty!36469 () Bool)

(assert (=> setIsEmpty!36469 setRes!36469))

(declare-fun b!5501142 () Bool)

(declare-fun tp!1513731 () Bool)

(assert (=> b!5501142 (= e!3402812 tp!1513731)))

(declare-fun res!2344982 () Bool)

(assert (=> start!574582 (=> (not res!2344982) (not e!3402815))))

(declare-fun validRegex!7215 (Regex!15479) Bool)

(assert (=> start!574582 (= res!2344982 (validRegex!7215 r!7292))))

(assert (=> start!574582 e!3402815))

(assert (=> start!574582 e!3402812))

(declare-fun condSetEmpty!36469 () Bool)

(assert (=> start!574582 (= condSetEmpty!36469 (= z!1189 ((as const (Array Context!9726 Bool)) false)))))

(assert (=> start!574582 setRes!36469))

(declare-fun e!3402809 () Bool)

(assert (=> start!574582 e!3402809))

(declare-fun e!3402807 () Bool)

(assert (=> start!574582 e!3402807))

(declare-fun b!5501143 () Bool)

(declare-fun tp!1513737 () Bool)

(assert (=> b!5501143 (= e!3402806 tp!1513737)))

(declare-fun b!5501144 () Bool)

(declare-fun res!2344977 () Bool)

(assert (=> b!5501144 (=> (not res!2344977) (not e!3402815))))

(declare-fun toList!9263 ((InoxSet Context!9726)) List!62737)

(assert (=> b!5501144 (= res!2344977 (= (toList!9263 z!1189) zl!343))))

(declare-fun b!5501145 () Bool)

(declare-fun lt!2243673 () (InoxSet Context!9726))

(declare-fun lt!2243670 () Bool)

(declare-fun e!3402810 () Bool)

(assert (=> b!5501145 (= e!3402810 (= (matchZipper!1647 lt!2243673 s!2326) lt!2243670))))

(declare-fun lt!2243664 () Context!9726)

(declare-fun lambda!294515 () Int)

(declare-fun lt!2243679 () (InoxSet Context!9726))

(declare-fun flatMap!1098 ((InoxSet Context!9726) Int) (InoxSet Context!9726))

(assert (=> b!5501145 (= (flatMap!1098 lt!2243679 lambda!294515) (derivationStepZipperUp!751 lt!2243664 (h!69062 s!2326)))))

(declare-datatypes ((Unit!155418 0))(
  ( (Unit!155419) )
))
(declare-fun lt!2243676 () Unit!155418)

(declare-fun lemmaFlatMapOnSingletonSet!630 ((InoxSet Context!9726) Context!9726 Int) Unit!155418)

(assert (=> b!5501145 (= lt!2243676 (lemmaFlatMapOnSingletonSet!630 lt!2243679 lt!2243664 lambda!294515))))

(declare-fun lt!2243677 () Context!9726)

(assert (=> b!5501145 (= (flatMap!1098 lt!2243673 lambda!294515) (derivationStepZipperUp!751 lt!2243677 (h!69062 s!2326)))))

(declare-fun lt!2243678 () Unit!155418)

(assert (=> b!5501145 (= lt!2243678 (lemmaFlatMapOnSingletonSet!630 lt!2243673 lt!2243677 lambda!294515))))

(declare-fun lt!2243667 () (InoxSet Context!9726))

(assert (=> b!5501145 (= lt!2243667 (derivationStepZipperUp!751 lt!2243664 (h!69062 s!2326)))))

(declare-fun lt!2243659 () (InoxSet Context!9726))

(assert (=> b!5501145 (= lt!2243659 (derivationStepZipperUp!751 lt!2243677 (h!69062 s!2326)))))

(assert (=> b!5501145 (= lt!2243679 (store ((as const (Array Context!9726 Bool)) false) lt!2243664 true))))

(assert (=> b!5501145 (= lt!2243664 (Context!9727 (Cons!62612 (regTwo!31471 r!7292) Nil!62612)))))

(assert (=> b!5501145 (= lt!2243673 (store ((as const (Array Context!9726 Bool)) false) lt!2243677 true))))

(assert (=> b!5501145 (= lt!2243677 (Context!9727 (Cons!62612 (regOne!31471 r!7292) Nil!62612)))))

(declare-fun b!5501146 () Bool)

(declare-fun e!3402818 () Bool)

(declare-fun e!3402816 () Bool)

(assert (=> b!5501146 (= e!3402818 e!3402816)))

(declare-fun res!2344976 () Bool)

(assert (=> b!5501146 (=> res!2344976 e!3402816)))

(declare-fun lt!2243660 () Bool)

(declare-fun lt!2243682 () Bool)

(assert (=> b!5501146 (= res!2344976 (not (= lt!2243660 lt!2243682)))))

(assert (=> b!5501146 (= lt!2243682 (matchZipper!1647 z!1189 s!2326))))

(declare-fun lt!2243671 () (InoxSet Context!9726))

(assert (=> b!5501146 (= lt!2243660 (matchZipper!1647 lt!2243671 (t!375975 s!2326)))))

(declare-fun b!5501147 () Bool)

(declare-fun res!2344971 () Bool)

(assert (=> b!5501147 (=> res!2344971 e!3402813)))

(declare-fun generalisedConcat!1094 (List!62736) Regex!15479)

(assert (=> b!5501147 (= res!2344971 (not (= r!7292 (generalisedConcat!1094 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5501148 () Bool)

(assert (=> b!5501148 (= e!3402816 e!3402810)))

(declare-fun res!2344972 () Bool)

(assert (=> b!5501148 (=> res!2344972 e!3402810)))

(declare-fun lt!2243663 () Bool)

(assert (=> b!5501148 (= res!2344972 (or (not (= lt!2243663 lt!2243660)) (not (= lt!2243663 lt!2243682))))))

(assert (=> b!5501148 (= lt!2243660 lt!2243663)))

(assert (=> b!5501148 (= lt!2243663 e!3402814)))

(declare-fun res!2344967 () Bool)

(assert (=> b!5501148 (=> res!2344967 e!3402814)))

(assert (=> b!5501148 (= res!2344967 lt!2243670)))

(declare-fun lt!2243661 () (InoxSet Context!9726))

(assert (=> b!5501148 (= lt!2243670 (matchZipper!1647 lt!2243661 (t!375975 s!2326)))))

(declare-fun lt!2243662 () Unit!155418)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!536 ((InoxSet Context!9726) (InoxSet Context!9726) List!62738) Unit!155418)

(assert (=> b!5501148 (= lt!2243662 (lemmaZipperConcatMatchesSameAsBothZippers!536 lt!2243661 lt!2243683 (t!375975 s!2326)))))

(declare-fun tp!1513739 () Bool)

(declare-fun e!3402817 () Bool)

(declare-fun b!5501149 () Bool)

(assert (=> b!5501149 (= e!3402809 (and (inv!81944 (h!69061 zl!343)) e!3402817 tp!1513739))))

(declare-fun b!5501150 () Bool)

(declare-fun tp!1513732 () Bool)

(assert (=> b!5501150 (= e!3402807 (and tp_is_empty!40211 tp!1513732))))

(declare-fun b!5501151 () Bool)

(declare-fun tp!1513736 () Bool)

(declare-fun tp!1513738 () Bool)

(assert (=> b!5501151 (= e!3402812 (and tp!1513736 tp!1513738))))

(declare-fun b!5501152 () Bool)

(assert (=> b!5501152 (= e!3402813 e!3402811)))

(declare-fun res!2344978 () Bool)

(assert (=> b!5501152 (=> res!2344978 e!3402811)))

(declare-fun lt!2243672 () Bool)

(declare-fun lt!2243665 () Bool)

(declare-fun lt!2243668 () Bool)

(assert (=> b!5501152 (= res!2344978 (or (not (= lt!2243665 (or lt!2243668 lt!2243672))) ((_ is Nil!62614) s!2326)))))

(declare-fun matchRSpec!2582 (Regex!15479 List!62738) Bool)

(assert (=> b!5501152 (= lt!2243672 (matchRSpec!2582 (regTwo!31471 r!7292) s!2326))))

(declare-fun matchR!7664 (Regex!15479 List!62738) Bool)

(assert (=> b!5501152 (= lt!2243672 (matchR!7664 (regTwo!31471 r!7292) s!2326))))

(declare-fun lt!2243681 () Unit!155418)

(declare-fun mainMatchTheorem!2582 (Regex!15479 List!62738) Unit!155418)

(assert (=> b!5501152 (= lt!2243681 (mainMatchTheorem!2582 (regTwo!31471 r!7292) s!2326))))

(assert (=> b!5501152 (= lt!2243668 (matchRSpec!2582 (regOne!31471 r!7292) s!2326))))

(assert (=> b!5501152 (= lt!2243668 (matchR!7664 (regOne!31471 r!7292) s!2326))))

(declare-fun lt!2243666 () Unit!155418)

(assert (=> b!5501152 (= lt!2243666 (mainMatchTheorem!2582 (regOne!31471 r!7292) s!2326))))

(declare-fun b!5501153 () Bool)

(assert (=> b!5501153 (= e!3402815 (not e!3402813))))

(declare-fun res!2344981 () Bool)

(assert (=> b!5501153 (=> res!2344981 e!3402813)))

(assert (=> b!5501153 (= res!2344981 (not ((_ is Cons!62613) zl!343)))))

(assert (=> b!5501153 (= lt!2243665 (matchRSpec!2582 r!7292 s!2326))))

(assert (=> b!5501153 (= lt!2243665 (matchR!7664 r!7292 s!2326))))

(declare-fun lt!2243669 () Unit!155418)

(assert (=> b!5501153 (= lt!2243669 (mainMatchTheorem!2582 r!7292 s!2326))))

(declare-fun b!5501154 () Bool)

(declare-fun tp!1513733 () Bool)

(declare-fun tp!1513735 () Bool)

(assert (=> b!5501154 (= e!3402812 (and tp!1513733 tp!1513735))))

(declare-fun b!5501155 () Bool)

(declare-fun tp!1513734 () Bool)

(assert (=> b!5501155 (= e!3402817 tp!1513734)))

(declare-fun e!3402808 () Bool)

(assert (=> b!5501156 (= e!3402808 e!3402818)))

(declare-fun res!2344974 () Bool)

(assert (=> b!5501156 (=> res!2344974 e!3402818)))

(declare-fun derivationStepZipper!1590 ((InoxSet Context!9726) C!31228) (InoxSet Context!9726))

(assert (=> b!5501156 (= res!2344974 (not (= (derivationStepZipper!1590 z!1189 (h!69062 s!2326)) lt!2243671)))))

(assert (=> b!5501156 (= (flatMap!1098 z!1189 lambda!294515) (derivationStepZipperUp!751 (h!69061 zl!343) (h!69062 s!2326)))))

(declare-fun lt!2243680 () Unit!155418)

(assert (=> b!5501156 (= lt!2243680 (lemmaFlatMapOnSingletonSet!630 z!1189 (h!69061 zl!343) lambda!294515))))

(declare-fun b!5501157 () Bool)

(declare-fun res!2344973 () Bool)

(assert (=> b!5501157 (=> res!2344973 e!3402813)))

(assert (=> b!5501157 (= res!2344973 (or ((_ is EmptyExpr!15479) r!7292) ((_ is EmptyLang!15479) r!7292) ((_ is ElementMatch!15479) r!7292) (not ((_ is Union!15479) r!7292))))))

(declare-fun b!5501158 () Bool)

(assert (=> b!5501158 (= e!3402805 e!3402808)))

(declare-fun res!2344968 () Bool)

(assert (=> b!5501158 (=> res!2344968 e!3402808)))

(assert (=> b!5501158 (= res!2344968 (not (= lt!2243658 lt!2243671)))))

(assert (=> b!5501158 (= lt!2243671 ((_ map or) lt!2243661 lt!2243683))))

(assert (=> b!5501158 (= lt!2243683 (derivationStepZipperDown!825 (regTwo!31471 r!7292) lt!2243674 (h!69062 s!2326)))))

(assert (=> b!5501158 (= lt!2243661 (derivationStepZipperDown!825 (regOne!31471 r!7292) lt!2243674 (h!69062 s!2326)))))

(assert (= (and start!574582 res!2344982) b!5501144))

(assert (= (and b!5501144 res!2344977) b!5501136))

(assert (= (and b!5501136 res!2344980) b!5501153))

(assert (= (and b!5501153 (not res!2344981)) b!5501141))

(assert (= (and b!5501141 (not res!2344969)) b!5501147))

(assert (= (and b!5501147 (not res!2344971)) b!5501139))

(assert (= (and b!5501139 (not res!2344979)) b!5501135))

(assert (= (and b!5501135 (not res!2344970)) b!5501157))

(assert (= (and b!5501157 (not res!2344973)) b!5501152))

(assert (= (and b!5501152 (not res!2344978)) b!5501137))

(assert (= (and b!5501137 (not res!2344975)) b!5501158))

(assert (= (and b!5501158 (not res!2344968)) b!5501156))

(assert (= (and b!5501156 (not res!2344974)) b!5501146))

(assert (= (and b!5501146 (not res!2344976)) b!5501148))

(assert (= (and b!5501148 (not res!2344967)) b!5501140))

(assert (= (and b!5501148 (not res!2344972)) b!5501145))

(assert (= (and start!574582 ((_ is ElementMatch!15479) r!7292)) b!5501138))

(assert (= (and start!574582 ((_ is Concat!24324) r!7292)) b!5501151))

(assert (= (and start!574582 ((_ is Star!15479) r!7292)) b!5501142))

(assert (= (and start!574582 ((_ is Union!15479) r!7292)) b!5501154))

(assert (= (and start!574582 condSetEmpty!36469) setIsEmpty!36469))

(assert (= (and start!574582 (not condSetEmpty!36469)) setNonEmpty!36469))

(assert (= setNonEmpty!36469 b!5501143))

(assert (= b!5501149 b!5501155))

(assert (= (and start!574582 ((_ is Cons!62613) zl!343)) b!5501149))

(assert (= (and start!574582 ((_ is Cons!62614) s!2326)) b!5501150))

(declare-fun m!6509256 () Bool)

(assert (=> setNonEmpty!36469 m!6509256))

(declare-fun m!6509258 () Bool)

(assert (=> b!5501145 m!6509258))

(declare-fun m!6509260 () Bool)

(assert (=> b!5501145 m!6509260))

(declare-fun m!6509262 () Bool)

(assert (=> b!5501145 m!6509262))

(declare-fun m!6509264 () Bool)

(assert (=> b!5501145 m!6509264))

(declare-fun m!6509266 () Bool)

(assert (=> b!5501145 m!6509266))

(declare-fun m!6509268 () Bool)

(assert (=> b!5501145 m!6509268))

(declare-fun m!6509270 () Bool)

(assert (=> b!5501145 m!6509270))

(declare-fun m!6509272 () Bool)

(assert (=> b!5501145 m!6509272))

(declare-fun m!6509274 () Bool)

(assert (=> b!5501145 m!6509274))

(declare-fun m!6509276 () Bool)

(assert (=> b!5501136 m!6509276))

(declare-fun m!6509278 () Bool)

(assert (=> b!5501144 m!6509278))

(declare-fun m!6509280 () Bool)

(assert (=> b!5501148 m!6509280))

(declare-fun m!6509282 () Bool)

(assert (=> b!5501148 m!6509282))

(declare-fun m!6509284 () Bool)

(assert (=> b!5501141 m!6509284))

(declare-fun m!6509286 () Bool)

(assert (=> start!574582 m!6509286))

(declare-fun m!6509288 () Bool)

(assert (=> b!5501153 m!6509288))

(declare-fun m!6509290 () Bool)

(assert (=> b!5501153 m!6509290))

(declare-fun m!6509292 () Bool)

(assert (=> b!5501153 m!6509292))

(declare-fun m!6509294 () Bool)

(assert (=> b!5501149 m!6509294))

(declare-fun m!6509296 () Bool)

(assert (=> b!5501146 m!6509296))

(declare-fun m!6509298 () Bool)

(assert (=> b!5501146 m!6509298))

(declare-fun m!6509300 () Bool)

(assert (=> b!5501140 m!6509300))

(declare-fun m!6509302 () Bool)

(assert (=> b!5501156 m!6509302))

(declare-fun m!6509304 () Bool)

(assert (=> b!5501156 m!6509304))

(declare-fun m!6509306 () Bool)

(assert (=> b!5501156 m!6509306))

(declare-fun m!6509308 () Bool)

(assert (=> b!5501156 m!6509308))

(declare-fun m!6509310 () Bool)

(assert (=> b!5501147 m!6509310))

(declare-fun m!6509312 () Bool)

(assert (=> b!5501135 m!6509312))

(assert (=> b!5501135 m!6509312))

(declare-fun m!6509314 () Bool)

(assert (=> b!5501135 m!6509314))

(declare-fun m!6509316 () Bool)

(assert (=> b!5501152 m!6509316))

(declare-fun m!6509318 () Bool)

(assert (=> b!5501152 m!6509318))

(declare-fun m!6509320 () Bool)

(assert (=> b!5501152 m!6509320))

(declare-fun m!6509322 () Bool)

(assert (=> b!5501152 m!6509322))

(declare-fun m!6509324 () Bool)

(assert (=> b!5501152 m!6509324))

(declare-fun m!6509326 () Bool)

(assert (=> b!5501152 m!6509326))

(declare-fun m!6509328 () Bool)

(assert (=> b!5501158 m!6509328))

(declare-fun m!6509330 () Bool)

(assert (=> b!5501158 m!6509330))

(declare-fun m!6509332 () Bool)

(assert (=> b!5501137 m!6509332))

(declare-fun m!6509334 () Bool)

(assert (=> b!5501137 m!6509334))

(check-sat (not b!5501153) (not b!5501140) (not b!5501145) (not b!5501144) (not b!5501147) (not b!5501136) (not b!5501143) (not b!5501150) (not start!574582) (not b!5501154) (not b!5501151) (not b!5501141) (not b!5501149) (not b!5501152) (not b!5501142) (not b!5501156) (not b!5501146) (not b!5501148) (not setNonEmpty!36469) (not b!5501158) (not b!5501135) (not b!5501137) (not b!5501155) tp_is_empty!40211)
(check-sat)
(get-model)

(declare-fun b!5501345 () Bool)

(declare-fun e!3402925 () Bool)

(declare-fun lt!2243704 () Regex!15479)

(declare-fun head!11783 (List!62736) Regex!15479)

(assert (=> b!5501345 (= e!3402925 (= lt!2243704 (head!11783 (unfocusZipperList!907 zl!343))))))

(declare-fun b!5501346 () Bool)

(declare-fun e!3402923 () Regex!15479)

(declare-fun e!3402924 () Regex!15479)

(assert (=> b!5501346 (= e!3402923 e!3402924)))

(declare-fun c!960865 () Bool)

(assert (=> b!5501346 (= c!960865 ((_ is Cons!62612) (unfocusZipperList!907 zl!343)))))

(declare-fun d!1743731 () Bool)

(declare-fun e!3402927 () Bool)

(assert (=> d!1743731 e!3402927))

(declare-fun res!2345045 () Bool)

(assert (=> d!1743731 (=> (not res!2345045) (not e!3402927))))

(assert (=> d!1743731 (= res!2345045 (validRegex!7215 lt!2243704))))

(assert (=> d!1743731 (= lt!2243704 e!3402923)))

(declare-fun c!960864 () Bool)

(declare-fun e!3402926 () Bool)

(assert (=> d!1743731 (= c!960864 e!3402926)))

(declare-fun res!2345046 () Bool)

(assert (=> d!1743731 (=> (not res!2345046) (not e!3402926))))

(assert (=> d!1743731 (= res!2345046 ((_ is Cons!62612) (unfocusZipperList!907 zl!343)))))

(declare-fun lambda!294533 () Int)

(declare-fun forall!14664 (List!62736 Int) Bool)

(assert (=> d!1743731 (forall!14664 (unfocusZipperList!907 zl!343) lambda!294533)))

(assert (=> d!1743731 (= (generalisedUnion!1342 (unfocusZipperList!907 zl!343)) lt!2243704)))

(declare-fun b!5501347 () Bool)

(declare-fun e!3402922 () Bool)

(assert (=> b!5501347 (= e!3402922 e!3402925)))

(declare-fun c!960863 () Bool)

(declare-fun isEmpty!34398 (List!62736) Bool)

(declare-fun tail!10878 (List!62736) List!62736)

(assert (=> b!5501347 (= c!960863 (isEmpty!34398 (tail!10878 (unfocusZipperList!907 zl!343))))))

(declare-fun b!5501348 () Bool)

(declare-fun isEmptyLang!1073 (Regex!15479) Bool)

(assert (=> b!5501348 (= e!3402922 (isEmptyLang!1073 lt!2243704))))

(declare-fun b!5501349 () Bool)

(assert (=> b!5501349 (= e!3402927 e!3402922)))

(declare-fun c!960866 () Bool)

(assert (=> b!5501349 (= c!960866 (isEmpty!34398 (unfocusZipperList!907 zl!343)))))

(declare-fun b!5501350 () Bool)

(assert (=> b!5501350 (= e!3402924 EmptyLang!15479)))

(declare-fun b!5501351 () Bool)

(declare-fun isUnion!503 (Regex!15479) Bool)

(assert (=> b!5501351 (= e!3402925 (isUnion!503 lt!2243704))))

(declare-fun b!5501352 () Bool)

(assert (=> b!5501352 (= e!3402924 (Union!15479 (h!69060 (unfocusZipperList!907 zl!343)) (generalisedUnion!1342 (t!375973 (unfocusZipperList!907 zl!343)))))))

(declare-fun b!5501353 () Bool)

(assert (=> b!5501353 (= e!3402923 (h!69060 (unfocusZipperList!907 zl!343)))))

(declare-fun b!5501354 () Bool)

(assert (=> b!5501354 (= e!3402926 (isEmpty!34398 (t!375973 (unfocusZipperList!907 zl!343))))))

(assert (= (and d!1743731 res!2345046) b!5501354))

(assert (= (and d!1743731 c!960864) b!5501353))

(assert (= (and d!1743731 (not c!960864)) b!5501346))

(assert (= (and b!5501346 c!960865) b!5501352))

(assert (= (and b!5501346 (not c!960865)) b!5501350))

(assert (= (and d!1743731 res!2345045) b!5501349))

(assert (= (and b!5501349 c!960866) b!5501348))

(assert (= (and b!5501349 (not c!960866)) b!5501347))

(assert (= (and b!5501347 c!960863) b!5501345))

(assert (= (and b!5501347 (not c!960863)) b!5501351))

(declare-fun m!6509414 () Bool)

(assert (=> b!5501352 m!6509414))

(declare-fun m!6509416 () Bool)

(assert (=> b!5501354 m!6509416))

(declare-fun m!6509418 () Bool)

(assert (=> b!5501348 m!6509418))

(declare-fun m!6509420 () Bool)

(assert (=> b!5501351 m!6509420))

(declare-fun m!6509422 () Bool)

(assert (=> d!1743731 m!6509422))

(assert (=> d!1743731 m!6509312))

(declare-fun m!6509424 () Bool)

(assert (=> d!1743731 m!6509424))

(assert (=> b!5501347 m!6509312))

(declare-fun m!6509426 () Bool)

(assert (=> b!5501347 m!6509426))

(assert (=> b!5501347 m!6509426))

(declare-fun m!6509428 () Bool)

(assert (=> b!5501347 m!6509428))

(assert (=> b!5501345 m!6509312))

(declare-fun m!6509430 () Bool)

(assert (=> b!5501345 m!6509430))

(assert (=> b!5501349 m!6509312))

(declare-fun m!6509432 () Bool)

(assert (=> b!5501349 m!6509432))

(assert (=> b!5501135 d!1743731))

(declare-fun bs!1268845 () Bool)

(declare-fun d!1743739 () Bool)

(assert (= bs!1268845 (and d!1743739 d!1743731)))

(declare-fun lambda!294540 () Int)

(assert (=> bs!1268845 (= lambda!294540 lambda!294533)))

(declare-fun lt!2243714 () List!62736)

(assert (=> d!1743739 (forall!14664 lt!2243714 lambda!294540)))

(declare-fun e!3402958 () List!62736)

(assert (=> d!1743739 (= lt!2243714 e!3402958)))

(declare-fun c!960883 () Bool)

(assert (=> d!1743739 (= c!960883 ((_ is Cons!62613) zl!343))))

(assert (=> d!1743739 (= (unfocusZipperList!907 zl!343) lt!2243714)))

(declare-fun b!5501409 () Bool)

(assert (=> b!5501409 (= e!3402958 (Cons!62612 (generalisedConcat!1094 (exprs!5363 (h!69061 zl!343))) (unfocusZipperList!907 (t!375974 zl!343))))))

(declare-fun b!5501410 () Bool)

(assert (=> b!5501410 (= e!3402958 Nil!62612)))

(assert (= (and d!1743739 c!960883) b!5501409))

(assert (= (and d!1743739 (not c!960883)) b!5501410))

(declare-fun m!6509468 () Bool)

(assert (=> d!1743739 m!6509468))

(assert (=> b!5501409 m!6509310))

(declare-fun m!6509470 () Bool)

(assert (=> b!5501409 m!6509470))

(assert (=> b!5501135 d!1743739))

(declare-fun d!1743755 () Bool)

(declare-fun e!3402973 () Bool)

(assert (=> d!1743755 e!3402973))

(declare-fun res!2345073 () Bool)

(assert (=> d!1743755 (=> (not res!2345073) (not e!3402973))))

(declare-fun lt!2243717 () List!62737)

(declare-fun noDuplicate!1481 (List!62737) Bool)

(assert (=> d!1743755 (= res!2345073 (noDuplicate!1481 lt!2243717))))

(declare-fun choose!41802 ((InoxSet Context!9726)) List!62737)

(assert (=> d!1743755 (= lt!2243717 (choose!41802 z!1189))))

(assert (=> d!1743755 (= (toList!9263 z!1189) lt!2243717)))

(declare-fun b!5501435 () Bool)

(declare-fun content!11242 (List!62737) (InoxSet Context!9726))

(assert (=> b!5501435 (= e!3402973 (= (content!11242 lt!2243717) z!1189))))

(assert (= (and d!1743755 res!2345073) b!5501435))

(declare-fun m!6509472 () Bool)

(assert (=> d!1743755 m!6509472))

(declare-fun m!6509474 () Bool)

(assert (=> d!1743755 m!6509474))

(declare-fun m!6509476 () Bool)

(assert (=> b!5501435 m!6509476))

(assert (=> b!5501144 d!1743755))

(declare-fun d!1743757 () Bool)

(declare-fun lt!2243720 () Regex!15479)

(assert (=> d!1743757 (validRegex!7215 lt!2243720)))

(assert (=> d!1743757 (= lt!2243720 (generalisedUnion!1342 (unfocusZipperList!907 zl!343)))))

(assert (=> d!1743757 (= (unfocusZipper!1221 zl!343) lt!2243720)))

(declare-fun bs!1268846 () Bool)

(assert (= bs!1268846 d!1743757))

(declare-fun m!6509478 () Bool)

(assert (=> bs!1268846 m!6509478))

(assert (=> bs!1268846 m!6509312))

(assert (=> bs!1268846 m!6509312))

(assert (=> bs!1268846 m!6509314))

(assert (=> b!5501136 d!1743757))

(declare-fun d!1743759 () Bool)

(declare-fun choose!41803 ((InoxSet Context!9726) Int) (InoxSet Context!9726))

(assert (=> d!1743759 (= (flatMap!1098 lt!2243673 lambda!294515) (choose!41803 lt!2243673 lambda!294515))))

(declare-fun bs!1268847 () Bool)

(assert (= bs!1268847 d!1743759))

(declare-fun m!6509490 () Bool)

(assert (=> bs!1268847 m!6509490))

(assert (=> b!5501145 d!1743759))

(declare-fun b!5501485 () Bool)

(declare-fun e!3403003 () (InoxSet Context!9726))

(declare-fun call!406132 () (InoxSet Context!9726))

(assert (=> b!5501485 (= e!3403003 call!406132)))

(declare-fun b!5501486 () Bool)

(declare-fun e!3403001 () (InoxSet Context!9726))

(assert (=> b!5501486 (= e!3403001 ((_ map or) call!406132 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (h!69062 s!2326))))))

(declare-fun bm!406127 () Bool)

(assert (=> bm!406127 (= call!406132 (derivationStepZipperDown!825 (h!69060 (exprs!5363 lt!2243677)) (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (h!69062 s!2326)))))

(declare-fun b!5501487 () Bool)

(assert (=> b!5501487 (= e!3403001 e!3403003)))

(declare-fun c!960917 () Bool)

(assert (=> b!5501487 (= c!960917 ((_ is Cons!62612) (exprs!5363 lt!2243677)))))

(declare-fun d!1743763 () Bool)

(declare-fun c!960916 () Bool)

(declare-fun e!3403002 () Bool)

(assert (=> d!1743763 (= c!960916 e!3403002)))

(declare-fun res!2345081 () Bool)

(assert (=> d!1743763 (=> (not res!2345081) (not e!3403002))))

(assert (=> d!1743763 (= res!2345081 ((_ is Cons!62612) (exprs!5363 lt!2243677)))))

(assert (=> d!1743763 (= (derivationStepZipperUp!751 lt!2243677 (h!69062 s!2326)) e!3403001)))

(declare-fun b!5501488 () Bool)

(assert (=> b!5501488 (= e!3403003 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5501489 () Bool)

(declare-fun nullable!5516 (Regex!15479) Bool)

(assert (=> b!5501489 (= e!3403002 (nullable!5516 (h!69060 (exprs!5363 lt!2243677))))))

(assert (= (and d!1743763 res!2345081) b!5501489))

(assert (= (and d!1743763 c!960916) b!5501486))

(assert (= (and d!1743763 (not c!960916)) b!5501487))

(assert (= (and b!5501487 c!960917) b!5501485))

(assert (= (and b!5501487 (not c!960917)) b!5501488))

(assert (= (or b!5501486 b!5501485) bm!406127))

(declare-fun m!6509512 () Bool)

(assert (=> b!5501486 m!6509512))

(declare-fun m!6509514 () Bool)

(assert (=> bm!406127 m!6509514))

(declare-fun m!6509516 () Bool)

(assert (=> b!5501489 m!6509516))

(assert (=> b!5501145 d!1743763))

(declare-fun d!1743775 () Bool)

(declare-fun dynLambda!24467 (Int Context!9726) (InoxSet Context!9726))

(assert (=> d!1743775 (= (flatMap!1098 lt!2243679 lambda!294515) (dynLambda!24467 lambda!294515 lt!2243664))))

(declare-fun lt!2243726 () Unit!155418)

(declare-fun choose!41804 ((InoxSet Context!9726) Context!9726 Int) Unit!155418)

(assert (=> d!1743775 (= lt!2243726 (choose!41804 lt!2243679 lt!2243664 lambda!294515))))

(assert (=> d!1743775 (= lt!2243679 (store ((as const (Array Context!9726 Bool)) false) lt!2243664 true))))

(assert (=> d!1743775 (= (lemmaFlatMapOnSingletonSet!630 lt!2243679 lt!2243664 lambda!294515) lt!2243726)))

(declare-fun b_lambda!208629 () Bool)

(assert (=> (not b_lambda!208629) (not d!1743775)))

(declare-fun bs!1268856 () Bool)

(assert (= bs!1268856 d!1743775))

(assert (=> bs!1268856 m!6509262))

(declare-fun m!6509524 () Bool)

(assert (=> bs!1268856 m!6509524))

(declare-fun m!6509526 () Bool)

(assert (=> bs!1268856 m!6509526))

(assert (=> bs!1268856 m!6509274))

(assert (=> b!5501145 d!1743775))

(declare-fun b!5501508 () Bool)

(declare-fun e!3403020 () (InoxSet Context!9726))

(declare-fun call!406139 () (InoxSet Context!9726))

(assert (=> b!5501508 (= e!3403020 call!406139)))

(declare-fun e!3403018 () (InoxSet Context!9726))

(declare-fun b!5501509 () Bool)

(assert (=> b!5501509 (= e!3403018 ((_ map or) call!406139 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (h!69062 s!2326))))))

(declare-fun bm!406134 () Bool)

(assert (=> bm!406134 (= call!406139 (derivationStepZipperDown!825 (h!69060 (exprs!5363 lt!2243664)) (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (h!69062 s!2326)))))

(declare-fun b!5501510 () Bool)

(assert (=> b!5501510 (= e!3403018 e!3403020)))

(declare-fun c!960923 () Bool)

(assert (=> b!5501510 (= c!960923 ((_ is Cons!62612) (exprs!5363 lt!2243664)))))

(declare-fun d!1743781 () Bool)

(declare-fun c!960922 () Bool)

(declare-fun e!3403019 () Bool)

(assert (=> d!1743781 (= c!960922 e!3403019)))

(declare-fun res!2345092 () Bool)

(assert (=> d!1743781 (=> (not res!2345092) (not e!3403019))))

(assert (=> d!1743781 (= res!2345092 ((_ is Cons!62612) (exprs!5363 lt!2243664)))))

(assert (=> d!1743781 (= (derivationStepZipperUp!751 lt!2243664 (h!69062 s!2326)) e!3403018)))

(declare-fun b!5501511 () Bool)

(assert (=> b!5501511 (= e!3403020 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5501512 () Bool)

(assert (=> b!5501512 (= e!3403019 (nullable!5516 (h!69060 (exprs!5363 lt!2243664))))))

(assert (= (and d!1743781 res!2345092) b!5501512))

(assert (= (and d!1743781 c!960922) b!5501509))

(assert (= (and d!1743781 (not c!960922)) b!5501510))

(assert (= (and b!5501510 c!960923) b!5501508))

(assert (= (and b!5501510 (not c!960923)) b!5501511))

(assert (= (or b!5501509 b!5501508) bm!406134))

(declare-fun m!6509528 () Bool)

(assert (=> b!5501509 m!6509528))

(declare-fun m!6509530 () Bool)

(assert (=> bm!406134 m!6509530))

(declare-fun m!6509532 () Bool)

(assert (=> b!5501512 m!6509532))

(assert (=> b!5501145 d!1743781))

(declare-fun d!1743783 () Bool)

(assert (=> d!1743783 (= (flatMap!1098 lt!2243679 lambda!294515) (choose!41803 lt!2243679 lambda!294515))))

(declare-fun bs!1268857 () Bool)

(assert (= bs!1268857 d!1743783))

(declare-fun m!6509540 () Bool)

(assert (=> bs!1268857 m!6509540))

(assert (=> b!5501145 d!1743783))

(declare-fun d!1743787 () Bool)

(declare-fun c!960943 () Bool)

(declare-fun isEmpty!34399 (List!62738) Bool)

(assert (=> d!1743787 (= c!960943 (isEmpty!34399 s!2326))))

(declare-fun e!3403054 () Bool)

(assert (=> d!1743787 (= (matchZipper!1647 lt!2243673 s!2326) e!3403054)))

(declare-fun b!5501571 () Bool)

(declare-fun nullableZipper!1521 ((InoxSet Context!9726)) Bool)

(assert (=> b!5501571 (= e!3403054 (nullableZipper!1521 lt!2243673))))

(declare-fun b!5501574 () Bool)

(declare-fun head!11784 (List!62738) C!31228)

(declare-fun tail!10879 (List!62738) List!62738)

(assert (=> b!5501574 (= e!3403054 (matchZipper!1647 (derivationStepZipper!1590 lt!2243673 (head!11784 s!2326)) (tail!10879 s!2326)))))

(assert (= (and d!1743787 c!960943) b!5501571))

(assert (= (and d!1743787 (not c!960943)) b!5501574))

(declare-fun m!6509612 () Bool)

(assert (=> d!1743787 m!6509612))

(declare-fun m!6509614 () Bool)

(assert (=> b!5501571 m!6509614))

(declare-fun m!6509616 () Bool)

(assert (=> b!5501574 m!6509616))

(assert (=> b!5501574 m!6509616))

(declare-fun m!6509618 () Bool)

(assert (=> b!5501574 m!6509618))

(declare-fun m!6509620 () Bool)

(assert (=> b!5501574 m!6509620))

(assert (=> b!5501574 m!6509618))

(assert (=> b!5501574 m!6509620))

(declare-fun m!6509622 () Bool)

(assert (=> b!5501574 m!6509622))

(assert (=> b!5501145 d!1743787))

(declare-fun d!1743815 () Bool)

(assert (=> d!1743815 (= (flatMap!1098 lt!2243673 lambda!294515) (dynLambda!24467 lambda!294515 lt!2243677))))

(declare-fun lt!2243732 () Unit!155418)

(assert (=> d!1743815 (= lt!2243732 (choose!41804 lt!2243673 lt!2243677 lambda!294515))))

(assert (=> d!1743815 (= lt!2243673 (store ((as const (Array Context!9726 Bool)) false) lt!2243677 true))))

(assert (=> d!1743815 (= (lemmaFlatMapOnSingletonSet!630 lt!2243673 lt!2243677 lambda!294515) lt!2243732)))

(declare-fun b_lambda!208635 () Bool)

(assert (=> (not b_lambda!208635) (not d!1743815)))

(declare-fun bs!1268867 () Bool)

(assert (= bs!1268867 d!1743815))

(assert (=> bs!1268867 m!6509258))

(declare-fun m!6509624 () Bool)

(assert (=> bs!1268867 m!6509624))

(declare-fun m!6509626 () Bool)

(assert (=> bs!1268867 m!6509626))

(assert (=> bs!1268867 m!6509266))

(assert (=> b!5501145 d!1743815))

(declare-fun bs!1268871 () Bool)

(declare-fun d!1743817 () Bool)

(assert (= bs!1268871 (and d!1743817 b!5501156)))

(declare-fun lambda!294550 () Int)

(assert (=> bs!1268871 (= lambda!294550 lambda!294515)))

(assert (=> d!1743817 true))

(assert (=> d!1743817 (= (derivationStepZipper!1590 z!1189 (h!69062 s!2326)) (flatMap!1098 z!1189 lambda!294550))))

(declare-fun bs!1268872 () Bool)

(assert (= bs!1268872 d!1743817))

(declare-fun m!6509632 () Bool)

(assert (=> bs!1268872 m!6509632))

(assert (=> b!5501156 d!1743817))

(declare-fun d!1743825 () Bool)

(assert (=> d!1743825 (= (flatMap!1098 z!1189 lambda!294515) (choose!41803 z!1189 lambda!294515))))

(declare-fun bs!1268873 () Bool)

(assert (= bs!1268873 d!1743825))

(declare-fun m!6509634 () Bool)

(assert (=> bs!1268873 m!6509634))

(assert (=> b!5501156 d!1743825))

(declare-fun b!5501621 () Bool)

(declare-fun e!3403078 () (InoxSet Context!9726))

(declare-fun call!406152 () (InoxSet Context!9726))

(assert (=> b!5501621 (= e!3403078 call!406152)))

(declare-fun b!5501622 () Bool)

(declare-fun e!3403076 () (InoxSet Context!9726))

(assert (=> b!5501622 (= e!3403076 ((_ map or) call!406152 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (h!69062 s!2326))))))

(declare-fun bm!406147 () Bool)

(assert (=> bm!406147 (= call!406152 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (h!69061 zl!343))) (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (h!69062 s!2326)))))

(declare-fun b!5501623 () Bool)

(assert (=> b!5501623 (= e!3403076 e!3403078)))

(declare-fun c!960947 () Bool)

(assert (=> b!5501623 (= c!960947 ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343))))))

(declare-fun d!1743827 () Bool)

(declare-fun c!960946 () Bool)

(declare-fun e!3403077 () Bool)

(assert (=> d!1743827 (= c!960946 e!3403077)))

(declare-fun res!2345105 () Bool)

(assert (=> d!1743827 (=> (not res!2345105) (not e!3403077))))

(assert (=> d!1743827 (= res!2345105 ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343))))))

(assert (=> d!1743827 (= (derivationStepZipperUp!751 (h!69061 zl!343) (h!69062 s!2326)) e!3403076)))

(declare-fun b!5501624 () Bool)

(assert (=> b!5501624 (= e!3403078 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5501625 () Bool)

(assert (=> b!5501625 (= e!3403077 (nullable!5516 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(assert (= (and d!1743827 res!2345105) b!5501625))

(assert (= (and d!1743827 c!960946) b!5501622))

(assert (= (and d!1743827 (not c!960946)) b!5501623))

(assert (= (and b!5501623 c!960947) b!5501621))

(assert (= (and b!5501623 (not c!960947)) b!5501624))

(assert (= (or b!5501622 b!5501621) bm!406147))

(declare-fun m!6509636 () Bool)

(assert (=> b!5501622 m!6509636))

(declare-fun m!6509638 () Bool)

(assert (=> bm!406147 m!6509638))

(declare-fun m!6509640 () Bool)

(assert (=> b!5501625 m!6509640))

(assert (=> b!5501156 d!1743827))

(declare-fun d!1743829 () Bool)

(assert (=> d!1743829 (= (flatMap!1098 z!1189 lambda!294515) (dynLambda!24467 lambda!294515 (h!69061 zl!343)))))

(declare-fun lt!2243733 () Unit!155418)

(assert (=> d!1743829 (= lt!2243733 (choose!41804 z!1189 (h!69061 zl!343) lambda!294515))))

(assert (=> d!1743829 (= z!1189 (store ((as const (Array Context!9726 Bool)) false) (h!69061 zl!343) true))))

(assert (=> d!1743829 (= (lemmaFlatMapOnSingletonSet!630 z!1189 (h!69061 zl!343) lambda!294515) lt!2243733)))

(declare-fun b_lambda!208643 () Bool)

(assert (=> (not b_lambda!208643) (not d!1743829)))

(declare-fun bs!1268874 () Bool)

(assert (= bs!1268874 d!1743829))

(assert (=> bs!1268874 m!6509304))

(declare-fun m!6509642 () Bool)

(assert (=> bs!1268874 m!6509642))

(declare-fun m!6509644 () Bool)

(assert (=> bs!1268874 m!6509644))

(declare-fun m!6509646 () Bool)

(assert (=> bs!1268874 m!6509646))

(assert (=> b!5501156 d!1743829))

(declare-fun d!1743831 () Bool)

(declare-fun c!960961 () Bool)

(assert (=> d!1743831 (= c!960961 (and ((_ is ElementMatch!15479) r!7292) (= (c!960803 r!7292) (h!69062 s!2326))))))

(declare-fun e!3403091 () (InoxSet Context!9726))

(assert (=> d!1743831 (= (derivationStepZipperDown!825 r!7292 lt!2243674 (h!69062 s!2326)) e!3403091)))

(declare-fun bm!406160 () Bool)

(declare-fun call!406169 () (InoxSet Context!9726))

(declare-fun call!406168 () (InoxSet Context!9726))

(assert (=> bm!406160 (= call!406169 call!406168)))

(declare-fun bm!406161 () Bool)

(declare-fun call!406166 () (InoxSet Context!9726))

(declare-fun call!406167 () List!62736)

(declare-fun c!960962 () Bool)

(assert (=> bm!406161 (= call!406166 (derivationStepZipperDown!825 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)) (ite c!960962 lt!2243674 (Context!9727 call!406167)) (h!69062 s!2326)))))

(declare-fun bm!406162 () Bool)

(declare-fun call!406170 () (InoxSet Context!9726))

(assert (=> bm!406162 (= call!406168 call!406170)))

(declare-fun bm!406163 () Bool)

(declare-fun call!406165 () List!62736)

(assert (=> bm!406163 (= call!406165 call!406167)))

(declare-fun b!5501648 () Bool)

(declare-fun c!960958 () Bool)

(assert (=> b!5501648 (= c!960958 ((_ is Star!15479) r!7292))))

(declare-fun e!3403093 () (InoxSet Context!9726))

(declare-fun e!3403095 () (InoxSet Context!9726))

(assert (=> b!5501648 (= e!3403093 e!3403095)))

(declare-fun b!5501649 () Bool)

(assert (=> b!5501649 (= e!3403095 call!406169)))

(declare-fun b!5501650 () Bool)

(declare-fun c!960960 () Bool)

(declare-fun e!3403092 () Bool)

(assert (=> b!5501650 (= c!960960 e!3403092)))

(declare-fun res!2345108 () Bool)

(assert (=> b!5501650 (=> (not res!2345108) (not e!3403092))))

(assert (=> b!5501650 (= res!2345108 ((_ is Concat!24324) r!7292))))

(declare-fun e!3403094 () (InoxSet Context!9726))

(declare-fun e!3403096 () (InoxSet Context!9726))

(assert (=> b!5501650 (= e!3403094 e!3403096)))

(declare-fun b!5501651 () Bool)

(assert (=> b!5501651 (= e!3403091 e!3403094)))

(assert (=> b!5501651 (= c!960962 ((_ is Union!15479) r!7292))))

(declare-fun c!960959 () Bool)

(declare-fun bm!406164 () Bool)

(declare-fun $colon$colon!1570 (List!62736 Regex!15479) List!62736)

(assert (=> bm!406164 (= call!406167 ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960960 c!960959) (regTwo!31470 r!7292) r!7292)))))

(declare-fun b!5501652 () Bool)

(assert (=> b!5501652 (= e!3403091 (store ((as const (Array Context!9726 Bool)) false) lt!2243674 true))))

(declare-fun b!5501653 () Bool)

(assert (=> b!5501653 (= e!3403092 (nullable!5516 (regOne!31470 r!7292)))))

(declare-fun b!5501654 () Bool)

(assert (=> b!5501654 (= e!3403093 call!406169)))

(declare-fun b!5501655 () Bool)

(assert (=> b!5501655 (= e!3403096 e!3403093)))

(assert (=> b!5501655 (= c!960959 ((_ is Concat!24324) r!7292))))

(declare-fun bm!406165 () Bool)

(assert (=> bm!406165 (= call!406170 (derivationStepZipperDown!825 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))) (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165)) (h!69062 s!2326)))))

(declare-fun b!5501656 () Bool)

(assert (=> b!5501656 (= e!3403096 ((_ map or) call!406166 call!406168))))

(declare-fun b!5501657 () Bool)

(assert (=> b!5501657 (= e!3403094 ((_ map or) call!406170 call!406166))))

(declare-fun b!5501658 () Bool)

(assert (=> b!5501658 (= e!3403095 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1743831 c!960961) b!5501652))

(assert (= (and d!1743831 (not c!960961)) b!5501651))

(assert (= (and b!5501651 c!960962) b!5501657))

(assert (= (and b!5501651 (not c!960962)) b!5501650))

(assert (= (and b!5501650 res!2345108) b!5501653))

(assert (= (and b!5501650 c!960960) b!5501656))

(assert (= (and b!5501650 (not c!960960)) b!5501655))

(assert (= (and b!5501655 c!960959) b!5501654))

(assert (= (and b!5501655 (not c!960959)) b!5501648))

(assert (= (and b!5501648 c!960958) b!5501649))

(assert (= (and b!5501648 (not c!960958)) b!5501658))

(assert (= (or b!5501654 b!5501649) bm!406163))

(assert (= (or b!5501654 b!5501649) bm!406160))

(assert (= (or b!5501656 bm!406163) bm!406164))

(assert (= (or b!5501656 bm!406160) bm!406162))

(assert (= (or b!5501657 b!5501656) bm!406161))

(assert (= (or b!5501657 bm!406162) bm!406165))

(declare-fun m!6509648 () Bool)

(assert (=> bm!406161 m!6509648))

(declare-fun m!6509650 () Bool)

(assert (=> bm!406165 m!6509650))

(declare-fun m!6509652 () Bool)

(assert (=> b!5501652 m!6509652))

(declare-fun m!6509654 () Bool)

(assert (=> b!5501653 m!6509654))

(declare-fun m!6509656 () Bool)

(assert (=> bm!406164 m!6509656))

(assert (=> b!5501137 d!1743831))

(declare-fun b!5501659 () Bool)

(declare-fun e!3403099 () (InoxSet Context!9726))

(declare-fun call!406171 () (InoxSet Context!9726))

(assert (=> b!5501659 (= e!3403099 call!406171)))

(declare-fun e!3403097 () (InoxSet Context!9726))

(declare-fun b!5501660 () Bool)

(assert (=> b!5501660 (= e!3403097 ((_ map or) call!406171 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69062 s!2326))))))

(declare-fun bm!406166 () Bool)

(assert (=> bm!406166 (= call!406171 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69062 s!2326)))))

(declare-fun b!5501661 () Bool)

(assert (=> b!5501661 (= e!3403097 e!3403099)))

(declare-fun c!960964 () Bool)

(assert (=> b!5501661 (= c!960964 ((_ is Cons!62612) (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))

(declare-fun d!1743833 () Bool)

(declare-fun c!960963 () Bool)

(declare-fun e!3403098 () Bool)

(assert (=> d!1743833 (= c!960963 e!3403098)))

(declare-fun res!2345109 () Bool)

(assert (=> d!1743833 (=> (not res!2345109) (not e!3403098))))

(assert (=> d!1743833 (= res!2345109 ((_ is Cons!62612) (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))

(assert (=> d!1743833 (= (derivationStepZipperUp!751 (Context!9727 (Cons!62612 r!7292 Nil!62612)) (h!69062 s!2326)) e!3403097)))

(declare-fun b!5501662 () Bool)

(assert (=> b!5501662 (= e!3403099 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5501663 () Bool)

(assert (=> b!5501663 (= e!3403098 (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(assert (= (and d!1743833 res!2345109) b!5501663))

(assert (= (and d!1743833 c!960963) b!5501660))

(assert (= (and d!1743833 (not c!960963)) b!5501661))

(assert (= (and b!5501661 c!960964) b!5501659))

(assert (= (and b!5501661 (not c!960964)) b!5501662))

(assert (= (or b!5501660 b!5501659) bm!406166))

(declare-fun m!6509658 () Bool)

(assert (=> b!5501660 m!6509658))

(declare-fun m!6509660 () Bool)

(assert (=> bm!406166 m!6509660))

(declare-fun m!6509662 () Bool)

(assert (=> b!5501663 m!6509662))

(assert (=> b!5501137 d!1743833))

(declare-fun d!1743835 () Bool)

(declare-fun c!960965 () Bool)

(assert (=> d!1743835 (= c!960965 (isEmpty!34399 s!2326))))

(declare-fun e!3403100 () Bool)

(assert (=> d!1743835 (= (matchZipper!1647 z!1189 s!2326) e!3403100)))

(declare-fun b!5501664 () Bool)

(assert (=> b!5501664 (= e!3403100 (nullableZipper!1521 z!1189))))

(declare-fun b!5501665 () Bool)

(assert (=> b!5501665 (= e!3403100 (matchZipper!1647 (derivationStepZipper!1590 z!1189 (head!11784 s!2326)) (tail!10879 s!2326)))))

(assert (= (and d!1743835 c!960965) b!5501664))

(assert (= (and d!1743835 (not c!960965)) b!5501665))

(assert (=> d!1743835 m!6509612))

(declare-fun m!6509664 () Bool)

(assert (=> b!5501664 m!6509664))

(assert (=> b!5501665 m!6509616))

(assert (=> b!5501665 m!6509616))

(declare-fun m!6509666 () Bool)

(assert (=> b!5501665 m!6509666))

(assert (=> b!5501665 m!6509620))

(assert (=> b!5501665 m!6509666))

(assert (=> b!5501665 m!6509620))

(declare-fun m!6509668 () Bool)

(assert (=> b!5501665 m!6509668))

(assert (=> b!5501146 d!1743835))

(declare-fun d!1743837 () Bool)

(declare-fun c!960966 () Bool)

(assert (=> d!1743837 (= c!960966 (isEmpty!34399 (t!375975 s!2326)))))

(declare-fun e!3403101 () Bool)

(assert (=> d!1743837 (= (matchZipper!1647 lt!2243671 (t!375975 s!2326)) e!3403101)))

(declare-fun b!5501666 () Bool)

(assert (=> b!5501666 (= e!3403101 (nullableZipper!1521 lt!2243671))))

(declare-fun b!5501667 () Bool)

(assert (=> b!5501667 (= e!3403101 (matchZipper!1647 (derivationStepZipper!1590 lt!2243671 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))))))

(assert (= (and d!1743837 c!960966) b!5501666))

(assert (= (and d!1743837 (not c!960966)) b!5501667))

(declare-fun m!6509670 () Bool)

(assert (=> d!1743837 m!6509670))

(declare-fun m!6509672 () Bool)

(assert (=> b!5501666 m!6509672))

(declare-fun m!6509674 () Bool)

(assert (=> b!5501667 m!6509674))

(assert (=> b!5501667 m!6509674))

(declare-fun m!6509676 () Bool)

(assert (=> b!5501667 m!6509676))

(declare-fun m!6509678 () Bool)

(assert (=> b!5501667 m!6509678))

(assert (=> b!5501667 m!6509676))

(assert (=> b!5501667 m!6509678))

(declare-fun m!6509680 () Bool)

(assert (=> b!5501667 m!6509680))

(assert (=> b!5501146 d!1743837))

(declare-fun b!5501686 () Bool)

(declare-fun e!3403116 () Bool)

(declare-fun e!3403118 () Bool)

(assert (=> b!5501686 (= e!3403116 e!3403118)))

(declare-fun res!2345124 () Bool)

(assert (=> b!5501686 (= res!2345124 (not (nullable!5516 (reg!15808 r!7292))))))

(assert (=> b!5501686 (=> (not res!2345124) (not e!3403118))))

(declare-fun b!5501687 () Bool)

(declare-fun e!3403119 () Bool)

(declare-fun e!3403117 () Bool)

(assert (=> b!5501687 (= e!3403119 e!3403117)))

(declare-fun res!2345121 () Bool)

(assert (=> b!5501687 (=> (not res!2345121) (not e!3403117))))

(declare-fun call!406178 () Bool)

(assert (=> b!5501687 (= res!2345121 call!406178)))

(declare-fun b!5501688 () Bool)

(declare-fun e!3403121 () Bool)

(assert (=> b!5501688 (= e!3403121 e!3403116)))

(declare-fun c!960972 () Bool)

(assert (=> b!5501688 (= c!960972 ((_ is Star!15479) r!7292))))

(declare-fun b!5501689 () Bool)

(declare-fun call!406180 () Bool)

(assert (=> b!5501689 (= e!3403118 call!406180)))

(declare-fun b!5501690 () Bool)

(declare-fun res!2345123 () Bool)

(assert (=> b!5501690 (=> res!2345123 e!3403119)))

(assert (=> b!5501690 (= res!2345123 (not ((_ is Concat!24324) r!7292)))))

(declare-fun e!3403120 () Bool)

(assert (=> b!5501690 (= e!3403120 e!3403119)))

(declare-fun bm!406173 () Bool)

(declare-fun call!406179 () Bool)

(declare-fun c!960971 () Bool)

(assert (=> bm!406173 (= call!406179 (validRegex!7215 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))

(declare-fun bm!406174 () Bool)

(assert (=> bm!406174 (= call!406180 (validRegex!7215 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))

(declare-fun bm!406175 () Bool)

(assert (=> bm!406175 (= call!406178 call!406180)))

(declare-fun d!1743839 () Bool)

(declare-fun res!2345122 () Bool)

(assert (=> d!1743839 (=> res!2345122 e!3403121)))

(assert (=> d!1743839 (= res!2345122 ((_ is ElementMatch!15479) r!7292))))

(assert (=> d!1743839 (= (validRegex!7215 r!7292) e!3403121)))

(declare-fun b!5501691 () Bool)

(assert (=> b!5501691 (= e!3403117 call!406179)))

(declare-fun b!5501692 () Bool)

(assert (=> b!5501692 (= e!3403116 e!3403120)))

(assert (=> b!5501692 (= c!960971 ((_ is Union!15479) r!7292))))

(declare-fun b!5501693 () Bool)

(declare-fun e!3403122 () Bool)

(assert (=> b!5501693 (= e!3403122 call!406179)))

(declare-fun b!5501694 () Bool)

(declare-fun res!2345120 () Bool)

(assert (=> b!5501694 (=> (not res!2345120) (not e!3403122))))

(assert (=> b!5501694 (= res!2345120 call!406178)))

(assert (=> b!5501694 (= e!3403120 e!3403122)))

(assert (= (and d!1743839 (not res!2345122)) b!5501688))

(assert (= (and b!5501688 c!960972) b!5501686))

(assert (= (and b!5501688 (not c!960972)) b!5501692))

(assert (= (and b!5501686 res!2345124) b!5501689))

(assert (= (and b!5501692 c!960971) b!5501694))

(assert (= (and b!5501692 (not c!960971)) b!5501690))

(assert (= (and b!5501694 res!2345120) b!5501693))

(assert (= (and b!5501690 (not res!2345123)) b!5501687))

(assert (= (and b!5501687 res!2345121) b!5501691))

(assert (= (or b!5501693 b!5501691) bm!406173))

(assert (= (or b!5501694 b!5501687) bm!406175))

(assert (= (or b!5501689 bm!406175) bm!406174))

(declare-fun m!6509682 () Bool)

(assert (=> b!5501686 m!6509682))

(declare-fun m!6509684 () Bool)

(assert (=> bm!406173 m!6509684))

(declare-fun m!6509686 () Bool)

(assert (=> bm!406174 m!6509686))

(assert (=> start!574582 d!1743839))

(declare-fun bs!1268875 () Bool)

(declare-fun d!1743841 () Bool)

(assert (= bs!1268875 (and d!1743841 d!1743731)))

(declare-fun lambda!294553 () Int)

(assert (=> bs!1268875 (= lambda!294553 lambda!294533)))

(declare-fun bs!1268876 () Bool)

(assert (= bs!1268876 (and d!1743841 d!1743739)))

(assert (=> bs!1268876 (= lambda!294553 lambda!294540)))

(declare-fun b!5501715 () Bool)

(declare-fun e!3403137 () Regex!15479)

(assert (=> b!5501715 (= e!3403137 (h!69060 (exprs!5363 (h!69061 zl!343))))))

(declare-fun e!3403140 () Bool)

(assert (=> d!1743841 e!3403140))

(declare-fun res!2345129 () Bool)

(assert (=> d!1743841 (=> (not res!2345129) (not e!3403140))))

(declare-fun lt!2243736 () Regex!15479)

(assert (=> d!1743841 (= res!2345129 (validRegex!7215 lt!2243736))))

(assert (=> d!1743841 (= lt!2243736 e!3403137)))

(declare-fun c!960981 () Bool)

(declare-fun e!3403135 () Bool)

(assert (=> d!1743841 (= c!960981 e!3403135)))

(declare-fun res!2345130 () Bool)

(assert (=> d!1743841 (=> (not res!2345130) (not e!3403135))))

(assert (=> d!1743841 (= res!2345130 ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343))))))

(assert (=> d!1743841 (forall!14664 (exprs!5363 (h!69061 zl!343)) lambda!294553)))

(assert (=> d!1743841 (= (generalisedConcat!1094 (exprs!5363 (h!69061 zl!343))) lt!2243736)))

(declare-fun b!5501716 () Bool)

(declare-fun e!3403139 () Bool)

(declare-fun isEmptyExpr!1062 (Regex!15479) Bool)

(assert (=> b!5501716 (= e!3403139 (isEmptyExpr!1062 lt!2243736))))

(declare-fun b!5501717 () Bool)

(assert (=> b!5501717 (= e!3403140 e!3403139)))

(declare-fun c!960982 () Bool)

(assert (=> b!5501717 (= c!960982 (isEmpty!34398 (exprs!5363 (h!69061 zl!343))))))

(declare-fun b!5501718 () Bool)

(declare-fun e!3403136 () Regex!15479)

(assert (=> b!5501718 (= e!3403136 (Concat!24324 (h!69060 (exprs!5363 (h!69061 zl!343))) (generalisedConcat!1094 (t!375973 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5501719 () Bool)

(declare-fun e!3403138 () Bool)

(declare-fun isConcat!585 (Regex!15479) Bool)

(assert (=> b!5501719 (= e!3403138 (isConcat!585 lt!2243736))))

(declare-fun b!5501720 () Bool)

(assert (=> b!5501720 (= e!3403138 (= lt!2243736 (head!11783 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5501721 () Bool)

(assert (=> b!5501721 (= e!3403135 (isEmpty!34398 (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5501722 () Bool)

(assert (=> b!5501722 (= e!3403137 e!3403136)))

(declare-fun c!960983 () Bool)

(assert (=> b!5501722 (= c!960983 ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343))))))

(declare-fun b!5501723 () Bool)

(assert (=> b!5501723 (= e!3403139 e!3403138)))

(declare-fun c!960984 () Bool)

(assert (=> b!5501723 (= c!960984 (isEmpty!34398 (tail!10878 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5501724 () Bool)

(assert (=> b!5501724 (= e!3403136 EmptyExpr!15479)))

(assert (= (and d!1743841 res!2345130) b!5501721))

(assert (= (and d!1743841 c!960981) b!5501715))

(assert (= (and d!1743841 (not c!960981)) b!5501722))

(assert (= (and b!5501722 c!960983) b!5501718))

(assert (= (and b!5501722 (not c!960983)) b!5501724))

(assert (= (and d!1743841 res!2345129) b!5501717))

(assert (= (and b!5501717 c!960982) b!5501716))

(assert (= (and b!5501717 (not c!960982)) b!5501723))

(assert (= (and b!5501723 c!960984) b!5501720))

(assert (= (and b!5501723 (not c!960984)) b!5501719))

(declare-fun m!6509688 () Bool)

(assert (=> b!5501719 m!6509688))

(declare-fun m!6509690 () Bool)

(assert (=> b!5501723 m!6509690))

(assert (=> b!5501723 m!6509690))

(declare-fun m!6509692 () Bool)

(assert (=> b!5501723 m!6509692))

(declare-fun m!6509694 () Bool)

(assert (=> b!5501716 m!6509694))

(declare-fun m!6509696 () Bool)

(assert (=> b!5501718 m!6509696))

(declare-fun m!6509698 () Bool)

(assert (=> b!5501721 m!6509698))

(declare-fun m!6509700 () Bool)

(assert (=> b!5501717 m!6509700))

(declare-fun m!6509702 () Bool)

(assert (=> d!1743841 m!6509702))

(declare-fun m!6509704 () Bool)

(assert (=> d!1743841 m!6509704))

(declare-fun m!6509706 () Bool)

(assert (=> b!5501720 m!6509706))

(assert (=> b!5501147 d!1743841))

(declare-fun d!1743843 () Bool)

(declare-fun c!960988 () Bool)

(assert (=> d!1743843 (= c!960988 (and ((_ is ElementMatch!15479) (regTwo!31471 r!7292)) (= (c!960803 (regTwo!31471 r!7292)) (h!69062 s!2326))))))

(declare-fun e!3403141 () (InoxSet Context!9726))

(assert (=> d!1743843 (= (derivationStepZipperDown!825 (regTwo!31471 r!7292) lt!2243674 (h!69062 s!2326)) e!3403141)))

(declare-fun bm!406176 () Bool)

(declare-fun call!406185 () (InoxSet Context!9726))

(declare-fun call!406184 () (InoxSet Context!9726))

(assert (=> bm!406176 (= call!406185 call!406184)))

(declare-fun bm!406177 () Bool)

(declare-fun c!960989 () Bool)

(declare-fun call!406183 () List!62736)

(declare-fun call!406182 () (InoxSet Context!9726))

(assert (=> bm!406177 (= call!406182 (derivationStepZipperDown!825 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))) (ite c!960989 lt!2243674 (Context!9727 call!406183)) (h!69062 s!2326)))))

(declare-fun bm!406178 () Bool)

(declare-fun call!406186 () (InoxSet Context!9726))

(assert (=> bm!406178 (= call!406184 call!406186)))

(declare-fun bm!406179 () Bool)

(declare-fun call!406181 () List!62736)

(assert (=> bm!406179 (= call!406181 call!406183)))

(declare-fun b!5501725 () Bool)

(declare-fun c!960985 () Bool)

(assert (=> b!5501725 (= c!960985 ((_ is Star!15479) (regTwo!31471 r!7292)))))

(declare-fun e!3403143 () (InoxSet Context!9726))

(declare-fun e!3403145 () (InoxSet Context!9726))

(assert (=> b!5501725 (= e!3403143 e!3403145)))

(declare-fun b!5501726 () Bool)

(assert (=> b!5501726 (= e!3403145 call!406185)))

(declare-fun b!5501727 () Bool)

(declare-fun c!960987 () Bool)

(declare-fun e!3403142 () Bool)

(assert (=> b!5501727 (= c!960987 e!3403142)))

(declare-fun res!2345131 () Bool)

(assert (=> b!5501727 (=> (not res!2345131) (not e!3403142))))

(assert (=> b!5501727 (= res!2345131 ((_ is Concat!24324) (regTwo!31471 r!7292)))))

(declare-fun e!3403144 () (InoxSet Context!9726))

(declare-fun e!3403146 () (InoxSet Context!9726))

(assert (=> b!5501727 (= e!3403144 e!3403146)))

(declare-fun b!5501728 () Bool)

(assert (=> b!5501728 (= e!3403141 e!3403144)))

(assert (=> b!5501728 (= c!960989 ((_ is Union!15479) (regTwo!31471 r!7292)))))

(declare-fun bm!406180 () Bool)

(declare-fun c!960986 () Bool)

(assert (=> bm!406180 (= call!406183 ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960987 c!960986) (regTwo!31470 (regTwo!31471 r!7292)) (regTwo!31471 r!7292))))))

(declare-fun b!5501729 () Bool)

(assert (=> b!5501729 (= e!3403141 (store ((as const (Array Context!9726 Bool)) false) lt!2243674 true))))

(declare-fun b!5501730 () Bool)

(assert (=> b!5501730 (= e!3403142 (nullable!5516 (regOne!31470 (regTwo!31471 r!7292))))))

(declare-fun b!5501731 () Bool)

(assert (=> b!5501731 (= e!3403143 call!406185)))

(declare-fun b!5501732 () Bool)

(assert (=> b!5501732 (= e!3403146 e!3403143)))

(assert (=> b!5501732 (= c!960986 ((_ is Concat!24324) (regTwo!31471 r!7292)))))

(declare-fun bm!406181 () Bool)

(assert (=> bm!406181 (= call!406186 (derivationStepZipperDown!825 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))) (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181)) (h!69062 s!2326)))))

(declare-fun b!5501733 () Bool)

(assert (=> b!5501733 (= e!3403146 ((_ map or) call!406182 call!406184))))

(declare-fun b!5501734 () Bool)

(assert (=> b!5501734 (= e!3403144 ((_ map or) call!406186 call!406182))))

(declare-fun b!5501735 () Bool)

(assert (=> b!5501735 (= e!3403145 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1743843 c!960988) b!5501729))

(assert (= (and d!1743843 (not c!960988)) b!5501728))

(assert (= (and b!5501728 c!960989) b!5501734))

(assert (= (and b!5501728 (not c!960989)) b!5501727))

(assert (= (and b!5501727 res!2345131) b!5501730))

(assert (= (and b!5501727 c!960987) b!5501733))

(assert (= (and b!5501727 (not c!960987)) b!5501732))

(assert (= (and b!5501732 c!960986) b!5501731))

(assert (= (and b!5501732 (not c!960986)) b!5501725))

(assert (= (and b!5501725 c!960985) b!5501726))

(assert (= (and b!5501725 (not c!960985)) b!5501735))

(assert (= (or b!5501731 b!5501726) bm!406179))

(assert (= (or b!5501731 b!5501726) bm!406176))

(assert (= (or b!5501733 bm!406179) bm!406180))

(assert (= (or b!5501733 bm!406176) bm!406178))

(assert (= (or b!5501734 b!5501733) bm!406177))

(assert (= (or b!5501734 bm!406178) bm!406181))

(declare-fun m!6509708 () Bool)

(assert (=> bm!406177 m!6509708))

(declare-fun m!6509710 () Bool)

(assert (=> bm!406181 m!6509710))

(assert (=> b!5501729 m!6509652))

(declare-fun m!6509712 () Bool)

(assert (=> b!5501730 m!6509712))

(declare-fun m!6509714 () Bool)

(assert (=> bm!406180 m!6509714))

(assert (=> b!5501158 d!1743843))

(declare-fun d!1743845 () Bool)

(declare-fun c!960993 () Bool)

(assert (=> d!1743845 (= c!960993 (and ((_ is ElementMatch!15479) (regOne!31471 r!7292)) (= (c!960803 (regOne!31471 r!7292)) (h!69062 s!2326))))))

(declare-fun e!3403147 () (InoxSet Context!9726))

(assert (=> d!1743845 (= (derivationStepZipperDown!825 (regOne!31471 r!7292) lt!2243674 (h!69062 s!2326)) e!3403147)))

(declare-fun bm!406182 () Bool)

(declare-fun call!406191 () (InoxSet Context!9726))

(declare-fun call!406190 () (InoxSet Context!9726))

(assert (=> bm!406182 (= call!406191 call!406190)))

(declare-fun c!960994 () Bool)

(declare-fun bm!406183 () Bool)

(declare-fun call!406189 () List!62736)

(declare-fun call!406188 () (InoxSet Context!9726))

(assert (=> bm!406183 (= call!406188 (derivationStepZipperDown!825 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))) (ite c!960994 lt!2243674 (Context!9727 call!406189)) (h!69062 s!2326)))))

(declare-fun bm!406184 () Bool)

(declare-fun call!406192 () (InoxSet Context!9726))

(assert (=> bm!406184 (= call!406190 call!406192)))

(declare-fun bm!406185 () Bool)

(declare-fun call!406187 () List!62736)

(assert (=> bm!406185 (= call!406187 call!406189)))

(declare-fun b!5501736 () Bool)

(declare-fun c!960990 () Bool)

(assert (=> b!5501736 (= c!960990 ((_ is Star!15479) (regOne!31471 r!7292)))))

(declare-fun e!3403149 () (InoxSet Context!9726))

(declare-fun e!3403151 () (InoxSet Context!9726))

(assert (=> b!5501736 (= e!3403149 e!3403151)))

(declare-fun b!5501737 () Bool)

(assert (=> b!5501737 (= e!3403151 call!406191)))

(declare-fun b!5501738 () Bool)

(declare-fun c!960992 () Bool)

(declare-fun e!3403148 () Bool)

(assert (=> b!5501738 (= c!960992 e!3403148)))

(declare-fun res!2345132 () Bool)

(assert (=> b!5501738 (=> (not res!2345132) (not e!3403148))))

(assert (=> b!5501738 (= res!2345132 ((_ is Concat!24324) (regOne!31471 r!7292)))))

(declare-fun e!3403150 () (InoxSet Context!9726))

(declare-fun e!3403152 () (InoxSet Context!9726))

(assert (=> b!5501738 (= e!3403150 e!3403152)))

(declare-fun b!5501739 () Bool)

(assert (=> b!5501739 (= e!3403147 e!3403150)))

(assert (=> b!5501739 (= c!960994 ((_ is Union!15479) (regOne!31471 r!7292)))))

(declare-fun bm!406186 () Bool)

(declare-fun c!960991 () Bool)

(assert (=> bm!406186 (= call!406189 ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960992 c!960991) (regTwo!31470 (regOne!31471 r!7292)) (regOne!31471 r!7292))))))

(declare-fun b!5501740 () Bool)

(assert (=> b!5501740 (= e!3403147 (store ((as const (Array Context!9726 Bool)) false) lt!2243674 true))))

(declare-fun b!5501741 () Bool)

(assert (=> b!5501741 (= e!3403148 (nullable!5516 (regOne!31470 (regOne!31471 r!7292))))))

(declare-fun b!5501742 () Bool)

(assert (=> b!5501742 (= e!3403149 call!406191)))

(declare-fun b!5501743 () Bool)

(assert (=> b!5501743 (= e!3403152 e!3403149)))

(assert (=> b!5501743 (= c!960991 ((_ is Concat!24324) (regOne!31471 r!7292)))))

(declare-fun bm!406187 () Bool)

(assert (=> bm!406187 (= call!406192 (derivationStepZipperDown!825 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))) (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187)) (h!69062 s!2326)))))

(declare-fun b!5501744 () Bool)

(assert (=> b!5501744 (= e!3403152 ((_ map or) call!406188 call!406190))))

(declare-fun b!5501745 () Bool)

(assert (=> b!5501745 (= e!3403150 ((_ map or) call!406192 call!406188))))

(declare-fun b!5501746 () Bool)

(assert (=> b!5501746 (= e!3403151 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1743845 c!960993) b!5501740))

(assert (= (and d!1743845 (not c!960993)) b!5501739))

(assert (= (and b!5501739 c!960994) b!5501745))

(assert (= (and b!5501739 (not c!960994)) b!5501738))

(assert (= (and b!5501738 res!2345132) b!5501741))

(assert (= (and b!5501738 c!960992) b!5501744))

(assert (= (and b!5501738 (not c!960992)) b!5501743))

(assert (= (and b!5501743 c!960991) b!5501742))

(assert (= (and b!5501743 (not c!960991)) b!5501736))

(assert (= (and b!5501736 c!960990) b!5501737))

(assert (= (and b!5501736 (not c!960990)) b!5501746))

(assert (= (or b!5501742 b!5501737) bm!406185))

(assert (= (or b!5501742 b!5501737) bm!406182))

(assert (= (or b!5501744 bm!406185) bm!406186))

(assert (= (or b!5501744 bm!406182) bm!406184))

(assert (= (or b!5501745 b!5501744) bm!406183))

(assert (= (or b!5501745 bm!406184) bm!406187))

(declare-fun m!6509716 () Bool)

(assert (=> bm!406183 m!6509716))

(declare-fun m!6509718 () Bool)

(assert (=> bm!406187 m!6509718))

(assert (=> b!5501740 m!6509652))

(declare-fun m!6509720 () Bool)

(assert (=> b!5501741 m!6509720))

(declare-fun m!6509722 () Bool)

(assert (=> bm!406186 m!6509722))

(assert (=> b!5501158 d!1743845))

(declare-fun d!1743847 () Bool)

(declare-fun c!960995 () Bool)

(assert (=> d!1743847 (= c!960995 (isEmpty!34399 (t!375975 s!2326)))))

(declare-fun e!3403153 () Bool)

(assert (=> d!1743847 (= (matchZipper!1647 lt!2243661 (t!375975 s!2326)) e!3403153)))

(declare-fun b!5501747 () Bool)

(assert (=> b!5501747 (= e!3403153 (nullableZipper!1521 lt!2243661))))

(declare-fun b!5501748 () Bool)

(assert (=> b!5501748 (= e!3403153 (matchZipper!1647 (derivationStepZipper!1590 lt!2243661 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))))))

(assert (= (and d!1743847 c!960995) b!5501747))

(assert (= (and d!1743847 (not c!960995)) b!5501748))

(assert (=> d!1743847 m!6509670))

(declare-fun m!6509724 () Bool)

(assert (=> b!5501747 m!6509724))

(assert (=> b!5501748 m!6509674))

(assert (=> b!5501748 m!6509674))

(declare-fun m!6509726 () Bool)

(assert (=> b!5501748 m!6509726))

(assert (=> b!5501748 m!6509678))

(assert (=> b!5501748 m!6509726))

(assert (=> b!5501748 m!6509678))

(declare-fun m!6509728 () Bool)

(assert (=> b!5501748 m!6509728))

(assert (=> b!5501148 d!1743847))

(declare-fun e!3403156 () Bool)

(declare-fun d!1743849 () Bool)

(assert (=> d!1743849 (= (matchZipper!1647 ((_ map or) lt!2243661 lt!2243683) (t!375975 s!2326)) e!3403156)))

(declare-fun res!2345135 () Bool)

(assert (=> d!1743849 (=> res!2345135 e!3403156)))

(assert (=> d!1743849 (= res!2345135 (matchZipper!1647 lt!2243661 (t!375975 s!2326)))))

(declare-fun lt!2243739 () Unit!155418)

(declare-fun choose!41808 ((InoxSet Context!9726) (InoxSet Context!9726) List!62738) Unit!155418)

(assert (=> d!1743849 (= lt!2243739 (choose!41808 lt!2243661 lt!2243683 (t!375975 s!2326)))))

(assert (=> d!1743849 (= (lemmaZipperConcatMatchesSameAsBothZippers!536 lt!2243661 lt!2243683 (t!375975 s!2326)) lt!2243739)))

(declare-fun b!5501751 () Bool)

(assert (=> b!5501751 (= e!3403156 (matchZipper!1647 lt!2243683 (t!375975 s!2326)))))

(assert (= (and d!1743849 (not res!2345135)) b!5501751))

(declare-fun m!6509730 () Bool)

(assert (=> d!1743849 m!6509730))

(assert (=> d!1743849 m!6509280))

(declare-fun m!6509732 () Bool)

(assert (=> d!1743849 m!6509732))

(assert (=> b!5501751 m!6509300))

(assert (=> b!5501148 d!1743849))

(declare-fun bs!1268877 () Bool)

(declare-fun d!1743851 () Bool)

(assert (= bs!1268877 (and d!1743851 d!1743731)))

(declare-fun lambda!294556 () Int)

(assert (=> bs!1268877 (= lambda!294556 lambda!294533)))

(declare-fun bs!1268878 () Bool)

(assert (= bs!1268878 (and d!1743851 d!1743739)))

(assert (=> bs!1268878 (= lambda!294556 lambda!294540)))

(declare-fun bs!1268879 () Bool)

(assert (= bs!1268879 (and d!1743851 d!1743841)))

(assert (=> bs!1268879 (= lambda!294556 lambda!294553)))

(assert (=> d!1743851 (= (inv!81944 setElem!36469) (forall!14664 (exprs!5363 setElem!36469) lambda!294556))))

(declare-fun bs!1268880 () Bool)

(assert (= bs!1268880 d!1743851))

(declare-fun m!6509734 () Bool)

(assert (=> bs!1268880 m!6509734))

(assert (=> setNonEmpty!36469 d!1743851))

(declare-fun bs!1268881 () Bool)

(declare-fun d!1743853 () Bool)

(assert (= bs!1268881 (and d!1743853 d!1743731)))

(declare-fun lambda!294557 () Int)

(assert (=> bs!1268881 (= lambda!294557 lambda!294533)))

(declare-fun bs!1268882 () Bool)

(assert (= bs!1268882 (and d!1743853 d!1743739)))

(assert (=> bs!1268882 (= lambda!294557 lambda!294540)))

(declare-fun bs!1268883 () Bool)

(assert (= bs!1268883 (and d!1743853 d!1743841)))

(assert (=> bs!1268883 (= lambda!294557 lambda!294553)))

(declare-fun bs!1268884 () Bool)

(assert (= bs!1268884 (and d!1743853 d!1743851)))

(assert (=> bs!1268884 (= lambda!294557 lambda!294556)))

(assert (=> d!1743853 (= (inv!81944 (h!69061 zl!343)) (forall!14664 (exprs!5363 (h!69061 zl!343)) lambda!294557))))

(declare-fun bs!1268885 () Bool)

(assert (= bs!1268885 d!1743853))

(declare-fun m!6509736 () Bool)

(assert (=> bs!1268885 m!6509736))

(assert (=> b!5501149 d!1743853))

(declare-fun d!1743855 () Bool)

(declare-fun c!960996 () Bool)

(assert (=> d!1743855 (= c!960996 (isEmpty!34399 (t!375975 s!2326)))))

(declare-fun e!3403157 () Bool)

(assert (=> d!1743855 (= (matchZipper!1647 lt!2243683 (t!375975 s!2326)) e!3403157)))

(declare-fun b!5501752 () Bool)

(assert (=> b!5501752 (= e!3403157 (nullableZipper!1521 lt!2243683))))

(declare-fun b!5501753 () Bool)

(assert (=> b!5501753 (= e!3403157 (matchZipper!1647 (derivationStepZipper!1590 lt!2243683 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))))))

(assert (= (and d!1743855 c!960996) b!5501752))

(assert (= (and d!1743855 (not c!960996)) b!5501753))

(assert (=> d!1743855 m!6509670))

(declare-fun m!6509738 () Bool)

(assert (=> b!5501752 m!6509738))

(assert (=> b!5501753 m!6509674))

(assert (=> b!5501753 m!6509674))

(declare-fun m!6509740 () Bool)

(assert (=> b!5501753 m!6509740))

(assert (=> b!5501753 m!6509678))

(assert (=> b!5501753 m!6509740))

(assert (=> b!5501753 m!6509678))

(declare-fun m!6509742 () Bool)

(assert (=> b!5501753 m!6509742))

(assert (=> b!5501140 d!1743855))

(declare-fun d!1743857 () Bool)

(assert (=> d!1743857 (= (isEmpty!34395 (t!375974 zl!343)) ((_ is Nil!62613) (t!375974 zl!343)))))

(assert (=> b!5501141 d!1743857))

(declare-fun b!5501786 () Bool)

(assert (=> b!5501786 true))

(assert (=> b!5501786 true))

(declare-fun bs!1268886 () Bool)

(declare-fun b!5501792 () Bool)

(assert (= bs!1268886 (and b!5501792 b!5501786)))

(declare-fun lambda!294563 () Int)

(declare-fun lambda!294562 () Int)

(assert (=> bs!1268886 (not (= lambda!294563 lambda!294562))))

(assert (=> b!5501792 true))

(assert (=> b!5501792 true))

(declare-fun e!3403181 () Bool)

(declare-fun call!406197 () Bool)

(assert (=> b!5501786 (= e!3403181 call!406197)))

(declare-fun b!5501787 () Bool)

(declare-fun c!961008 () Bool)

(assert (=> b!5501787 (= c!961008 ((_ is Union!15479) (regTwo!31471 r!7292)))))

(declare-fun e!3403176 () Bool)

(declare-fun e!3403179 () Bool)

(assert (=> b!5501787 (= e!3403176 e!3403179)))

(declare-fun b!5501788 () Bool)

(declare-fun c!961007 () Bool)

(assert (=> b!5501788 (= c!961007 ((_ is ElementMatch!15479) (regTwo!31471 r!7292)))))

(declare-fun e!3403180 () Bool)

(assert (=> b!5501788 (= e!3403180 e!3403176)))

(declare-fun b!5501789 () Bool)

(declare-fun e!3403177 () Bool)

(assert (=> b!5501789 (= e!3403179 e!3403177)))

(declare-fun res!2345153 () Bool)

(assert (=> b!5501789 (= res!2345153 (matchRSpec!2582 (regOne!31471 (regTwo!31471 r!7292)) s!2326))))

(assert (=> b!5501789 (=> res!2345153 e!3403177)))

(declare-fun b!5501790 () Bool)

(declare-fun e!3403178 () Bool)

(assert (=> b!5501790 (= e!3403178 e!3403180)))

(declare-fun res!2345154 () Bool)

(assert (=> b!5501790 (= res!2345154 (not ((_ is EmptyLang!15479) (regTwo!31471 r!7292))))))

(assert (=> b!5501790 (=> (not res!2345154) (not e!3403180))))

(declare-fun b!5501791 () Bool)

(assert (=> b!5501791 (= e!3403177 (matchRSpec!2582 (regTwo!31471 (regTwo!31471 r!7292)) s!2326))))

(declare-fun c!961006 () Bool)

(declare-fun bm!406192 () Bool)

(declare-fun Exists!2581 (Int) Bool)

(assert (=> bm!406192 (= call!406197 (Exists!2581 (ite c!961006 lambda!294562 lambda!294563)))))

(declare-fun bm!406193 () Bool)

(declare-fun call!406198 () Bool)

(assert (=> bm!406193 (= call!406198 (isEmpty!34399 s!2326))))

(declare-fun e!3403182 () Bool)

(assert (=> b!5501792 (= e!3403182 call!406197)))

(declare-fun b!5501793 () Bool)

(assert (=> b!5501793 (= e!3403179 e!3403182)))

(assert (=> b!5501793 (= c!961006 ((_ is Star!15479) (regTwo!31471 r!7292)))))

(declare-fun d!1743859 () Bool)

(declare-fun c!961005 () Bool)

(assert (=> d!1743859 (= c!961005 ((_ is EmptyExpr!15479) (regTwo!31471 r!7292)))))

(assert (=> d!1743859 (= (matchRSpec!2582 (regTwo!31471 r!7292) s!2326) e!3403178)))

(declare-fun b!5501794 () Bool)

(assert (=> b!5501794 (= e!3403178 call!406198)))

(declare-fun b!5501795 () Bool)

(declare-fun res!2345152 () Bool)

(assert (=> b!5501795 (=> res!2345152 e!3403181)))

(assert (=> b!5501795 (= res!2345152 call!406198)))

(assert (=> b!5501795 (= e!3403182 e!3403181)))

(declare-fun b!5501796 () Bool)

(assert (=> b!5501796 (= e!3403176 (= s!2326 (Cons!62614 (c!960803 (regTwo!31471 r!7292)) Nil!62614)))))

(assert (= (and d!1743859 c!961005) b!5501794))

(assert (= (and d!1743859 (not c!961005)) b!5501790))

(assert (= (and b!5501790 res!2345154) b!5501788))

(assert (= (and b!5501788 c!961007) b!5501796))

(assert (= (and b!5501788 (not c!961007)) b!5501787))

(assert (= (and b!5501787 c!961008) b!5501789))

(assert (= (and b!5501787 (not c!961008)) b!5501793))

(assert (= (and b!5501789 (not res!2345153)) b!5501791))

(assert (= (and b!5501793 c!961006) b!5501795))

(assert (= (and b!5501793 (not c!961006)) b!5501792))

(assert (= (and b!5501795 (not res!2345152)) b!5501786))

(assert (= (or b!5501786 b!5501792) bm!406192))

(assert (= (or b!5501794 b!5501795) bm!406193))

(declare-fun m!6509744 () Bool)

(assert (=> b!5501789 m!6509744))

(declare-fun m!6509746 () Bool)

(assert (=> b!5501791 m!6509746))

(declare-fun m!6509748 () Bool)

(assert (=> bm!406192 m!6509748))

(assert (=> bm!406193 m!6509612))

(assert (=> b!5501152 d!1743859))

(declare-fun d!1743861 () Bool)

(assert (=> d!1743861 (= (matchR!7664 (regOne!31471 r!7292) s!2326) (matchRSpec!2582 (regOne!31471 r!7292) s!2326))))

(declare-fun lt!2243742 () Unit!155418)

(declare-fun choose!41809 (Regex!15479 List!62738) Unit!155418)

(assert (=> d!1743861 (= lt!2243742 (choose!41809 (regOne!31471 r!7292) s!2326))))

(assert (=> d!1743861 (validRegex!7215 (regOne!31471 r!7292))))

(assert (=> d!1743861 (= (mainMatchTheorem!2582 (regOne!31471 r!7292) s!2326) lt!2243742)))

(declare-fun bs!1268887 () Bool)

(assert (= bs!1268887 d!1743861))

(assert (=> bs!1268887 m!6509326))

(assert (=> bs!1268887 m!6509322))

(declare-fun m!6509750 () Bool)

(assert (=> bs!1268887 m!6509750))

(declare-fun m!6509752 () Bool)

(assert (=> bs!1268887 m!6509752))

(assert (=> b!5501152 d!1743861))

(declare-fun b!5501829 () Bool)

(declare-fun e!3403203 () Bool)

(declare-fun e!3403200 () Bool)

(assert (=> b!5501829 (= e!3403203 e!3403200)))

(declare-fun res!2345178 () Bool)

(assert (=> b!5501829 (=> (not res!2345178) (not e!3403200))))

(declare-fun lt!2243745 () Bool)

(assert (=> b!5501829 (= res!2345178 (not lt!2243745))))

(declare-fun b!5501830 () Bool)

(declare-fun res!2345175 () Bool)

(declare-fun e!3403197 () Bool)

(assert (=> b!5501830 (=> res!2345175 e!3403197)))

(assert (=> b!5501830 (= res!2345175 (not (isEmpty!34399 (tail!10879 s!2326))))))

(declare-fun b!5501831 () Bool)

(assert (=> b!5501831 (= e!3403197 (not (= (head!11784 s!2326) (c!960803 (regTwo!31471 r!7292)))))))

(declare-fun b!5501832 () Bool)

(declare-fun e!3403202 () Bool)

(assert (=> b!5501832 (= e!3403202 (nullable!5516 (regTwo!31471 r!7292)))))

(declare-fun b!5501833 () Bool)

(declare-fun res!2345171 () Bool)

(declare-fun e!3403198 () Bool)

(assert (=> b!5501833 (=> (not res!2345171) (not e!3403198))))

(declare-fun call!406201 () Bool)

(assert (=> b!5501833 (= res!2345171 (not call!406201))))

(declare-fun b!5501834 () Bool)

(declare-fun e!3403199 () Bool)

(assert (=> b!5501834 (= e!3403199 (not lt!2243745))))

(declare-fun b!5501836 () Bool)

(declare-fun e!3403201 () Bool)

(assert (=> b!5501836 (= e!3403201 e!3403199)))

(declare-fun c!961015 () Bool)

(assert (=> b!5501836 (= c!961015 ((_ is EmptyLang!15479) (regTwo!31471 r!7292)))))

(declare-fun b!5501837 () Bool)

(declare-fun res!2345174 () Bool)

(assert (=> b!5501837 (=> res!2345174 e!3403203)))

(assert (=> b!5501837 (= res!2345174 (not ((_ is ElementMatch!15479) (regTwo!31471 r!7292))))))

(assert (=> b!5501837 (= e!3403199 e!3403203)))

(declare-fun b!5501838 () Bool)

(declare-fun derivativeStep!4355 (Regex!15479 C!31228) Regex!15479)

(assert (=> b!5501838 (= e!3403202 (matchR!7664 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)) (tail!10879 s!2326)))))

(declare-fun b!5501839 () Bool)

(assert (=> b!5501839 (= e!3403200 e!3403197)))

(declare-fun res!2345173 () Bool)

(assert (=> b!5501839 (=> res!2345173 e!3403197)))

(assert (=> b!5501839 (= res!2345173 call!406201)))

(declare-fun b!5501840 () Bool)

(declare-fun res!2345176 () Bool)

(assert (=> b!5501840 (=> res!2345176 e!3403203)))

(assert (=> b!5501840 (= res!2345176 e!3403198)))

(declare-fun res!2345172 () Bool)

(assert (=> b!5501840 (=> (not res!2345172) (not e!3403198))))

(assert (=> b!5501840 (= res!2345172 lt!2243745)))

(declare-fun bm!406196 () Bool)

(assert (=> bm!406196 (= call!406201 (isEmpty!34399 s!2326))))

(declare-fun b!5501835 () Bool)

(declare-fun res!2345177 () Bool)

(assert (=> b!5501835 (=> (not res!2345177) (not e!3403198))))

(assert (=> b!5501835 (= res!2345177 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun d!1743863 () Bool)

(assert (=> d!1743863 e!3403201))

(declare-fun c!961016 () Bool)

(assert (=> d!1743863 (= c!961016 ((_ is EmptyExpr!15479) (regTwo!31471 r!7292)))))

(assert (=> d!1743863 (= lt!2243745 e!3403202)))

(declare-fun c!961017 () Bool)

(assert (=> d!1743863 (= c!961017 (isEmpty!34399 s!2326))))

(assert (=> d!1743863 (validRegex!7215 (regTwo!31471 r!7292))))

(assert (=> d!1743863 (= (matchR!7664 (regTwo!31471 r!7292) s!2326) lt!2243745)))

(declare-fun b!5501841 () Bool)

(assert (=> b!5501841 (= e!3403198 (= (head!11784 s!2326) (c!960803 (regTwo!31471 r!7292))))))

(declare-fun b!5501842 () Bool)

(assert (=> b!5501842 (= e!3403201 (= lt!2243745 call!406201))))

(assert (= (and d!1743863 c!961017) b!5501832))

(assert (= (and d!1743863 (not c!961017)) b!5501838))

(assert (= (and d!1743863 c!961016) b!5501842))

(assert (= (and d!1743863 (not c!961016)) b!5501836))

(assert (= (and b!5501836 c!961015) b!5501834))

(assert (= (and b!5501836 (not c!961015)) b!5501837))

(assert (= (and b!5501837 (not res!2345174)) b!5501840))

(assert (= (and b!5501840 res!2345172) b!5501833))

(assert (= (and b!5501833 res!2345171) b!5501835))

(assert (= (and b!5501835 res!2345177) b!5501841))

(assert (= (and b!5501840 (not res!2345176)) b!5501829))

(assert (= (and b!5501829 res!2345178) b!5501839))

(assert (= (and b!5501839 (not res!2345173)) b!5501830))

(assert (= (and b!5501830 (not res!2345175)) b!5501831))

(assert (= (or b!5501842 b!5501839 b!5501833) bm!406196))

(declare-fun m!6509754 () Bool)

(assert (=> b!5501832 m!6509754))

(assert (=> bm!406196 m!6509612))

(assert (=> b!5501830 m!6509620))

(assert (=> b!5501830 m!6509620))

(declare-fun m!6509756 () Bool)

(assert (=> b!5501830 m!6509756))

(assert (=> b!5501838 m!6509616))

(assert (=> b!5501838 m!6509616))

(declare-fun m!6509758 () Bool)

(assert (=> b!5501838 m!6509758))

(assert (=> b!5501838 m!6509620))

(assert (=> b!5501838 m!6509758))

(assert (=> b!5501838 m!6509620))

(declare-fun m!6509760 () Bool)

(assert (=> b!5501838 m!6509760))

(assert (=> b!5501831 m!6509616))

(assert (=> b!5501835 m!6509620))

(assert (=> b!5501835 m!6509620))

(assert (=> b!5501835 m!6509756))

(assert (=> d!1743863 m!6509612))

(declare-fun m!6509762 () Bool)

(assert (=> d!1743863 m!6509762))

(assert (=> b!5501841 m!6509616))

(assert (=> b!5501152 d!1743863))

(declare-fun d!1743865 () Bool)

(assert (=> d!1743865 (= (matchR!7664 (regTwo!31471 r!7292) s!2326) (matchRSpec!2582 (regTwo!31471 r!7292) s!2326))))

(declare-fun lt!2243746 () Unit!155418)

(assert (=> d!1743865 (= lt!2243746 (choose!41809 (regTwo!31471 r!7292) s!2326))))

(assert (=> d!1743865 (validRegex!7215 (regTwo!31471 r!7292))))

(assert (=> d!1743865 (= (mainMatchTheorem!2582 (regTwo!31471 r!7292) s!2326) lt!2243746)))

(declare-fun bs!1268888 () Bool)

(assert (= bs!1268888 d!1743865))

(assert (=> bs!1268888 m!6509320))

(assert (=> bs!1268888 m!6509316))

(declare-fun m!6509764 () Bool)

(assert (=> bs!1268888 m!6509764))

(assert (=> bs!1268888 m!6509762))

(assert (=> b!5501152 d!1743865))

(declare-fun bs!1268889 () Bool)

(declare-fun b!5501843 () Bool)

(assert (= bs!1268889 (and b!5501843 b!5501786)))

(declare-fun lambda!294564 () Int)

(assert (=> bs!1268889 (= (and (= (reg!15808 (regOne!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))) (= (regOne!31471 r!7292) (regTwo!31471 r!7292))) (= lambda!294564 lambda!294562))))

(declare-fun bs!1268890 () Bool)

(assert (= bs!1268890 (and b!5501843 b!5501792)))

(assert (=> bs!1268890 (not (= lambda!294564 lambda!294563))))

(assert (=> b!5501843 true))

(assert (=> b!5501843 true))

(declare-fun bs!1268891 () Bool)

(declare-fun b!5501849 () Bool)

(assert (= bs!1268891 (and b!5501849 b!5501786)))

(declare-fun lambda!294565 () Int)

(assert (=> bs!1268891 (not (= lambda!294565 lambda!294562))))

(declare-fun bs!1268892 () Bool)

(assert (= bs!1268892 (and b!5501849 b!5501792)))

(assert (=> bs!1268892 (= (and (= (regOne!31470 (regOne!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 (regOne!31471 r!7292)) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294565 lambda!294563))))

(declare-fun bs!1268893 () Bool)

(assert (= bs!1268893 (and b!5501849 b!5501843)))

(assert (=> bs!1268893 (not (= lambda!294565 lambda!294564))))

(assert (=> b!5501849 true))

(assert (=> b!5501849 true))

(declare-fun e!3403209 () Bool)

(declare-fun call!406202 () Bool)

(assert (=> b!5501843 (= e!3403209 call!406202)))

(declare-fun b!5501844 () Bool)

(declare-fun c!961021 () Bool)

(assert (=> b!5501844 (= c!961021 ((_ is Union!15479) (regOne!31471 r!7292)))))

(declare-fun e!3403204 () Bool)

(declare-fun e!3403207 () Bool)

(assert (=> b!5501844 (= e!3403204 e!3403207)))

(declare-fun b!5501845 () Bool)

(declare-fun c!961020 () Bool)

(assert (=> b!5501845 (= c!961020 ((_ is ElementMatch!15479) (regOne!31471 r!7292)))))

(declare-fun e!3403208 () Bool)

(assert (=> b!5501845 (= e!3403208 e!3403204)))

(declare-fun b!5501846 () Bool)

(declare-fun e!3403205 () Bool)

(assert (=> b!5501846 (= e!3403207 e!3403205)))

(declare-fun res!2345180 () Bool)

(assert (=> b!5501846 (= res!2345180 (matchRSpec!2582 (regOne!31471 (regOne!31471 r!7292)) s!2326))))

(assert (=> b!5501846 (=> res!2345180 e!3403205)))

(declare-fun b!5501847 () Bool)

(declare-fun e!3403206 () Bool)

(assert (=> b!5501847 (= e!3403206 e!3403208)))

(declare-fun res!2345181 () Bool)

(assert (=> b!5501847 (= res!2345181 (not ((_ is EmptyLang!15479) (regOne!31471 r!7292))))))

(assert (=> b!5501847 (=> (not res!2345181) (not e!3403208))))

(declare-fun b!5501848 () Bool)

(assert (=> b!5501848 (= e!3403205 (matchRSpec!2582 (regTwo!31471 (regOne!31471 r!7292)) s!2326))))

(declare-fun c!961019 () Bool)

(declare-fun bm!406197 () Bool)

(assert (=> bm!406197 (= call!406202 (Exists!2581 (ite c!961019 lambda!294564 lambda!294565)))))

(declare-fun bm!406198 () Bool)

(declare-fun call!406203 () Bool)

(assert (=> bm!406198 (= call!406203 (isEmpty!34399 s!2326))))

(declare-fun e!3403210 () Bool)

(assert (=> b!5501849 (= e!3403210 call!406202)))

(declare-fun b!5501850 () Bool)

(assert (=> b!5501850 (= e!3403207 e!3403210)))

(assert (=> b!5501850 (= c!961019 ((_ is Star!15479) (regOne!31471 r!7292)))))

(declare-fun d!1743867 () Bool)

(declare-fun c!961018 () Bool)

(assert (=> d!1743867 (= c!961018 ((_ is EmptyExpr!15479) (regOne!31471 r!7292)))))

(assert (=> d!1743867 (= (matchRSpec!2582 (regOne!31471 r!7292) s!2326) e!3403206)))

(declare-fun b!5501851 () Bool)

(assert (=> b!5501851 (= e!3403206 call!406203)))

(declare-fun b!5501852 () Bool)

(declare-fun res!2345179 () Bool)

(assert (=> b!5501852 (=> res!2345179 e!3403209)))

(assert (=> b!5501852 (= res!2345179 call!406203)))

(assert (=> b!5501852 (= e!3403210 e!3403209)))

(declare-fun b!5501853 () Bool)

(assert (=> b!5501853 (= e!3403204 (= s!2326 (Cons!62614 (c!960803 (regOne!31471 r!7292)) Nil!62614)))))

(assert (= (and d!1743867 c!961018) b!5501851))

(assert (= (and d!1743867 (not c!961018)) b!5501847))

(assert (= (and b!5501847 res!2345181) b!5501845))

(assert (= (and b!5501845 c!961020) b!5501853))

(assert (= (and b!5501845 (not c!961020)) b!5501844))

(assert (= (and b!5501844 c!961021) b!5501846))

(assert (= (and b!5501844 (not c!961021)) b!5501850))

(assert (= (and b!5501846 (not res!2345180)) b!5501848))

(assert (= (and b!5501850 c!961019) b!5501852))

(assert (= (and b!5501850 (not c!961019)) b!5501849))

(assert (= (and b!5501852 (not res!2345179)) b!5501843))

(assert (= (or b!5501843 b!5501849) bm!406197))

(assert (= (or b!5501851 b!5501852) bm!406198))

(declare-fun m!6509766 () Bool)

(assert (=> b!5501846 m!6509766))

(declare-fun m!6509768 () Bool)

(assert (=> b!5501848 m!6509768))

(declare-fun m!6509770 () Bool)

(assert (=> bm!406197 m!6509770))

(assert (=> bm!406198 m!6509612))

(assert (=> b!5501152 d!1743867))

(declare-fun b!5501854 () Bool)

(declare-fun e!3403217 () Bool)

(declare-fun e!3403214 () Bool)

(assert (=> b!5501854 (= e!3403217 e!3403214)))

(declare-fun res!2345189 () Bool)

(assert (=> b!5501854 (=> (not res!2345189) (not e!3403214))))

(declare-fun lt!2243747 () Bool)

(assert (=> b!5501854 (= res!2345189 (not lt!2243747))))

(declare-fun b!5501855 () Bool)

(declare-fun res!2345186 () Bool)

(declare-fun e!3403211 () Bool)

(assert (=> b!5501855 (=> res!2345186 e!3403211)))

(assert (=> b!5501855 (= res!2345186 (not (isEmpty!34399 (tail!10879 s!2326))))))

(declare-fun b!5501856 () Bool)

(assert (=> b!5501856 (= e!3403211 (not (= (head!11784 s!2326) (c!960803 (regOne!31471 r!7292)))))))

(declare-fun b!5501857 () Bool)

(declare-fun e!3403216 () Bool)

(assert (=> b!5501857 (= e!3403216 (nullable!5516 (regOne!31471 r!7292)))))

(declare-fun b!5501858 () Bool)

(declare-fun res!2345182 () Bool)

(declare-fun e!3403212 () Bool)

(assert (=> b!5501858 (=> (not res!2345182) (not e!3403212))))

(declare-fun call!406204 () Bool)

(assert (=> b!5501858 (= res!2345182 (not call!406204))))

(declare-fun b!5501859 () Bool)

(declare-fun e!3403213 () Bool)

(assert (=> b!5501859 (= e!3403213 (not lt!2243747))))

(declare-fun b!5501861 () Bool)

(declare-fun e!3403215 () Bool)

(assert (=> b!5501861 (= e!3403215 e!3403213)))

(declare-fun c!961022 () Bool)

(assert (=> b!5501861 (= c!961022 ((_ is EmptyLang!15479) (regOne!31471 r!7292)))))

(declare-fun b!5501862 () Bool)

(declare-fun res!2345185 () Bool)

(assert (=> b!5501862 (=> res!2345185 e!3403217)))

(assert (=> b!5501862 (= res!2345185 (not ((_ is ElementMatch!15479) (regOne!31471 r!7292))))))

(assert (=> b!5501862 (= e!3403213 e!3403217)))

(declare-fun b!5501863 () Bool)

(assert (=> b!5501863 (= e!3403216 (matchR!7664 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)) (tail!10879 s!2326)))))

(declare-fun b!5501864 () Bool)

(assert (=> b!5501864 (= e!3403214 e!3403211)))

(declare-fun res!2345184 () Bool)

(assert (=> b!5501864 (=> res!2345184 e!3403211)))

(assert (=> b!5501864 (= res!2345184 call!406204)))

(declare-fun b!5501865 () Bool)

(declare-fun res!2345187 () Bool)

(assert (=> b!5501865 (=> res!2345187 e!3403217)))

(assert (=> b!5501865 (= res!2345187 e!3403212)))

(declare-fun res!2345183 () Bool)

(assert (=> b!5501865 (=> (not res!2345183) (not e!3403212))))

(assert (=> b!5501865 (= res!2345183 lt!2243747)))

(declare-fun bm!406199 () Bool)

(assert (=> bm!406199 (= call!406204 (isEmpty!34399 s!2326))))

(declare-fun b!5501860 () Bool)

(declare-fun res!2345188 () Bool)

(assert (=> b!5501860 (=> (not res!2345188) (not e!3403212))))

(assert (=> b!5501860 (= res!2345188 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun d!1743869 () Bool)

(assert (=> d!1743869 e!3403215))

(declare-fun c!961023 () Bool)

(assert (=> d!1743869 (= c!961023 ((_ is EmptyExpr!15479) (regOne!31471 r!7292)))))

(assert (=> d!1743869 (= lt!2243747 e!3403216)))

(declare-fun c!961024 () Bool)

(assert (=> d!1743869 (= c!961024 (isEmpty!34399 s!2326))))

(assert (=> d!1743869 (validRegex!7215 (regOne!31471 r!7292))))

(assert (=> d!1743869 (= (matchR!7664 (regOne!31471 r!7292) s!2326) lt!2243747)))

(declare-fun b!5501866 () Bool)

(assert (=> b!5501866 (= e!3403212 (= (head!11784 s!2326) (c!960803 (regOne!31471 r!7292))))))

(declare-fun b!5501867 () Bool)

(assert (=> b!5501867 (= e!3403215 (= lt!2243747 call!406204))))

(assert (= (and d!1743869 c!961024) b!5501857))

(assert (= (and d!1743869 (not c!961024)) b!5501863))

(assert (= (and d!1743869 c!961023) b!5501867))

(assert (= (and d!1743869 (not c!961023)) b!5501861))

(assert (= (and b!5501861 c!961022) b!5501859))

(assert (= (and b!5501861 (not c!961022)) b!5501862))

(assert (= (and b!5501862 (not res!2345185)) b!5501865))

(assert (= (and b!5501865 res!2345183) b!5501858))

(assert (= (and b!5501858 res!2345182) b!5501860))

(assert (= (and b!5501860 res!2345188) b!5501866))

(assert (= (and b!5501865 (not res!2345187)) b!5501854))

(assert (= (and b!5501854 res!2345189) b!5501864))

(assert (= (and b!5501864 (not res!2345184)) b!5501855))

(assert (= (and b!5501855 (not res!2345186)) b!5501856))

(assert (= (or b!5501867 b!5501864 b!5501858) bm!406199))

(declare-fun m!6509772 () Bool)

(assert (=> b!5501857 m!6509772))

(assert (=> bm!406199 m!6509612))

(assert (=> b!5501855 m!6509620))

(assert (=> b!5501855 m!6509620))

(assert (=> b!5501855 m!6509756))

(assert (=> b!5501863 m!6509616))

(assert (=> b!5501863 m!6509616))

(declare-fun m!6509774 () Bool)

(assert (=> b!5501863 m!6509774))

(assert (=> b!5501863 m!6509620))

(assert (=> b!5501863 m!6509774))

(assert (=> b!5501863 m!6509620))

(declare-fun m!6509776 () Bool)

(assert (=> b!5501863 m!6509776))

(assert (=> b!5501856 m!6509616))

(assert (=> b!5501860 m!6509620))

(assert (=> b!5501860 m!6509620))

(assert (=> b!5501860 m!6509756))

(assert (=> d!1743869 m!6509612))

(assert (=> d!1743869 m!6509752))

(assert (=> b!5501866 m!6509616))

(assert (=> b!5501152 d!1743869))

(declare-fun bs!1268894 () Bool)

(declare-fun b!5501868 () Bool)

(assert (= bs!1268894 (and b!5501868 b!5501786)))

(declare-fun lambda!294566 () Int)

(assert (=> bs!1268894 (= (and (= (reg!15808 r!7292) (reg!15808 (regTwo!31471 r!7292))) (= r!7292 (regTwo!31471 r!7292))) (= lambda!294566 lambda!294562))))

(declare-fun bs!1268895 () Bool)

(assert (= bs!1268895 (and b!5501868 b!5501792)))

(assert (=> bs!1268895 (not (= lambda!294566 lambda!294563))))

(declare-fun bs!1268896 () Bool)

(assert (= bs!1268896 (and b!5501868 b!5501843)))

(assert (=> bs!1268896 (= (and (= (reg!15808 r!7292) (reg!15808 (regOne!31471 r!7292))) (= r!7292 (regOne!31471 r!7292))) (= lambda!294566 lambda!294564))))

(declare-fun bs!1268897 () Bool)

(assert (= bs!1268897 (and b!5501868 b!5501849)))

(assert (=> bs!1268897 (not (= lambda!294566 lambda!294565))))

(assert (=> b!5501868 true))

(assert (=> b!5501868 true))

(declare-fun bs!1268898 () Bool)

(declare-fun b!5501874 () Bool)

(assert (= bs!1268898 (and b!5501874 b!5501792)))

(declare-fun lambda!294567 () Int)

(assert (=> bs!1268898 (= (and (= (regOne!31470 r!7292) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 r!7292) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294567 lambda!294563))))

(declare-fun bs!1268899 () Bool)

(assert (= bs!1268899 (and b!5501874 b!5501786)))

(assert (=> bs!1268899 (not (= lambda!294567 lambda!294562))))

(declare-fun bs!1268900 () Bool)

(assert (= bs!1268900 (and b!5501874 b!5501849)))

(assert (=> bs!1268900 (= (and (= (regOne!31470 r!7292) (regOne!31470 (regOne!31471 r!7292))) (= (regTwo!31470 r!7292) (regTwo!31470 (regOne!31471 r!7292)))) (= lambda!294567 lambda!294565))))

(declare-fun bs!1268901 () Bool)

(assert (= bs!1268901 (and b!5501874 b!5501868)))

(assert (=> bs!1268901 (not (= lambda!294567 lambda!294566))))

(declare-fun bs!1268902 () Bool)

(assert (= bs!1268902 (and b!5501874 b!5501843)))

(assert (=> bs!1268902 (not (= lambda!294567 lambda!294564))))

(assert (=> b!5501874 true))

(assert (=> b!5501874 true))

(declare-fun e!3403223 () Bool)

(declare-fun call!406205 () Bool)

(assert (=> b!5501868 (= e!3403223 call!406205)))

(declare-fun b!5501869 () Bool)

(declare-fun c!961028 () Bool)

(assert (=> b!5501869 (= c!961028 ((_ is Union!15479) r!7292))))

(declare-fun e!3403218 () Bool)

(declare-fun e!3403221 () Bool)

(assert (=> b!5501869 (= e!3403218 e!3403221)))

(declare-fun b!5501870 () Bool)

(declare-fun c!961027 () Bool)

(assert (=> b!5501870 (= c!961027 ((_ is ElementMatch!15479) r!7292))))

(declare-fun e!3403222 () Bool)

(assert (=> b!5501870 (= e!3403222 e!3403218)))

(declare-fun b!5501871 () Bool)

(declare-fun e!3403219 () Bool)

(assert (=> b!5501871 (= e!3403221 e!3403219)))

(declare-fun res!2345191 () Bool)

(assert (=> b!5501871 (= res!2345191 (matchRSpec!2582 (regOne!31471 r!7292) s!2326))))

(assert (=> b!5501871 (=> res!2345191 e!3403219)))

(declare-fun b!5501872 () Bool)

(declare-fun e!3403220 () Bool)

(assert (=> b!5501872 (= e!3403220 e!3403222)))

(declare-fun res!2345192 () Bool)

(assert (=> b!5501872 (= res!2345192 (not ((_ is EmptyLang!15479) r!7292)))))

(assert (=> b!5501872 (=> (not res!2345192) (not e!3403222))))

(declare-fun b!5501873 () Bool)

(assert (=> b!5501873 (= e!3403219 (matchRSpec!2582 (regTwo!31471 r!7292) s!2326))))

(declare-fun c!961026 () Bool)

(declare-fun bm!406200 () Bool)

(assert (=> bm!406200 (= call!406205 (Exists!2581 (ite c!961026 lambda!294566 lambda!294567)))))

(declare-fun bm!406201 () Bool)

(declare-fun call!406206 () Bool)

(assert (=> bm!406201 (= call!406206 (isEmpty!34399 s!2326))))

(declare-fun e!3403224 () Bool)

(assert (=> b!5501874 (= e!3403224 call!406205)))

(declare-fun b!5501875 () Bool)

(assert (=> b!5501875 (= e!3403221 e!3403224)))

(assert (=> b!5501875 (= c!961026 ((_ is Star!15479) r!7292))))

(declare-fun d!1743871 () Bool)

(declare-fun c!961025 () Bool)

(assert (=> d!1743871 (= c!961025 ((_ is EmptyExpr!15479) r!7292))))

(assert (=> d!1743871 (= (matchRSpec!2582 r!7292 s!2326) e!3403220)))

(declare-fun b!5501876 () Bool)

(assert (=> b!5501876 (= e!3403220 call!406206)))

(declare-fun b!5501877 () Bool)

(declare-fun res!2345190 () Bool)

(assert (=> b!5501877 (=> res!2345190 e!3403223)))

(assert (=> b!5501877 (= res!2345190 call!406206)))

(assert (=> b!5501877 (= e!3403224 e!3403223)))

(declare-fun b!5501878 () Bool)

(assert (=> b!5501878 (= e!3403218 (= s!2326 (Cons!62614 (c!960803 r!7292) Nil!62614)))))

(assert (= (and d!1743871 c!961025) b!5501876))

(assert (= (and d!1743871 (not c!961025)) b!5501872))

(assert (= (and b!5501872 res!2345192) b!5501870))

(assert (= (and b!5501870 c!961027) b!5501878))

(assert (= (and b!5501870 (not c!961027)) b!5501869))

(assert (= (and b!5501869 c!961028) b!5501871))

(assert (= (and b!5501869 (not c!961028)) b!5501875))

(assert (= (and b!5501871 (not res!2345191)) b!5501873))

(assert (= (and b!5501875 c!961026) b!5501877))

(assert (= (and b!5501875 (not c!961026)) b!5501874))

(assert (= (and b!5501877 (not res!2345190)) b!5501868))

(assert (= (or b!5501868 b!5501874) bm!406200))

(assert (= (or b!5501876 b!5501877) bm!406201))

(assert (=> b!5501871 m!6509322))

(assert (=> b!5501873 m!6509316))

(declare-fun m!6509778 () Bool)

(assert (=> bm!406200 m!6509778))

(assert (=> bm!406201 m!6509612))

(assert (=> b!5501153 d!1743871))

(declare-fun b!5501879 () Bool)

(declare-fun e!3403231 () Bool)

(declare-fun e!3403228 () Bool)

(assert (=> b!5501879 (= e!3403231 e!3403228)))

(declare-fun res!2345200 () Bool)

(assert (=> b!5501879 (=> (not res!2345200) (not e!3403228))))

(declare-fun lt!2243748 () Bool)

(assert (=> b!5501879 (= res!2345200 (not lt!2243748))))

(declare-fun b!5501880 () Bool)

(declare-fun res!2345197 () Bool)

(declare-fun e!3403225 () Bool)

(assert (=> b!5501880 (=> res!2345197 e!3403225)))

(assert (=> b!5501880 (= res!2345197 (not (isEmpty!34399 (tail!10879 s!2326))))))

(declare-fun b!5501881 () Bool)

(assert (=> b!5501881 (= e!3403225 (not (= (head!11784 s!2326) (c!960803 r!7292))))))

(declare-fun b!5501882 () Bool)

(declare-fun e!3403230 () Bool)

(assert (=> b!5501882 (= e!3403230 (nullable!5516 r!7292))))

(declare-fun b!5501883 () Bool)

(declare-fun res!2345193 () Bool)

(declare-fun e!3403226 () Bool)

(assert (=> b!5501883 (=> (not res!2345193) (not e!3403226))))

(declare-fun call!406207 () Bool)

(assert (=> b!5501883 (= res!2345193 (not call!406207))))

(declare-fun b!5501884 () Bool)

(declare-fun e!3403227 () Bool)

(assert (=> b!5501884 (= e!3403227 (not lt!2243748))))

(declare-fun b!5501886 () Bool)

(declare-fun e!3403229 () Bool)

(assert (=> b!5501886 (= e!3403229 e!3403227)))

(declare-fun c!961029 () Bool)

(assert (=> b!5501886 (= c!961029 ((_ is EmptyLang!15479) r!7292))))

(declare-fun b!5501887 () Bool)

(declare-fun res!2345196 () Bool)

(assert (=> b!5501887 (=> res!2345196 e!3403231)))

(assert (=> b!5501887 (= res!2345196 (not ((_ is ElementMatch!15479) r!7292)))))

(assert (=> b!5501887 (= e!3403227 e!3403231)))

(declare-fun b!5501888 () Bool)

(assert (=> b!5501888 (= e!3403230 (matchR!7664 (derivativeStep!4355 r!7292 (head!11784 s!2326)) (tail!10879 s!2326)))))

(declare-fun b!5501889 () Bool)

(assert (=> b!5501889 (= e!3403228 e!3403225)))

(declare-fun res!2345195 () Bool)

(assert (=> b!5501889 (=> res!2345195 e!3403225)))

(assert (=> b!5501889 (= res!2345195 call!406207)))

(declare-fun b!5501890 () Bool)

(declare-fun res!2345198 () Bool)

(assert (=> b!5501890 (=> res!2345198 e!3403231)))

(assert (=> b!5501890 (= res!2345198 e!3403226)))

(declare-fun res!2345194 () Bool)

(assert (=> b!5501890 (=> (not res!2345194) (not e!3403226))))

(assert (=> b!5501890 (= res!2345194 lt!2243748)))

(declare-fun bm!406202 () Bool)

(assert (=> bm!406202 (= call!406207 (isEmpty!34399 s!2326))))

(declare-fun b!5501885 () Bool)

(declare-fun res!2345199 () Bool)

(assert (=> b!5501885 (=> (not res!2345199) (not e!3403226))))

(assert (=> b!5501885 (= res!2345199 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun d!1743873 () Bool)

(assert (=> d!1743873 e!3403229))

(declare-fun c!961030 () Bool)

(assert (=> d!1743873 (= c!961030 ((_ is EmptyExpr!15479) r!7292))))

(assert (=> d!1743873 (= lt!2243748 e!3403230)))

(declare-fun c!961031 () Bool)

(assert (=> d!1743873 (= c!961031 (isEmpty!34399 s!2326))))

(assert (=> d!1743873 (validRegex!7215 r!7292)))

(assert (=> d!1743873 (= (matchR!7664 r!7292 s!2326) lt!2243748)))

(declare-fun b!5501891 () Bool)

(assert (=> b!5501891 (= e!3403226 (= (head!11784 s!2326) (c!960803 r!7292)))))

(declare-fun b!5501892 () Bool)

(assert (=> b!5501892 (= e!3403229 (= lt!2243748 call!406207))))

(assert (= (and d!1743873 c!961031) b!5501882))

(assert (= (and d!1743873 (not c!961031)) b!5501888))

(assert (= (and d!1743873 c!961030) b!5501892))

(assert (= (and d!1743873 (not c!961030)) b!5501886))

(assert (= (and b!5501886 c!961029) b!5501884))

(assert (= (and b!5501886 (not c!961029)) b!5501887))

(assert (= (and b!5501887 (not res!2345196)) b!5501890))

(assert (= (and b!5501890 res!2345194) b!5501883))

(assert (= (and b!5501883 res!2345193) b!5501885))

(assert (= (and b!5501885 res!2345199) b!5501891))

(assert (= (and b!5501890 (not res!2345198)) b!5501879))

(assert (= (and b!5501879 res!2345200) b!5501889))

(assert (= (and b!5501889 (not res!2345195)) b!5501880))

(assert (= (and b!5501880 (not res!2345197)) b!5501881))

(assert (= (or b!5501892 b!5501889 b!5501883) bm!406202))

(declare-fun m!6509780 () Bool)

(assert (=> b!5501882 m!6509780))

(assert (=> bm!406202 m!6509612))

(assert (=> b!5501880 m!6509620))

(assert (=> b!5501880 m!6509620))

(assert (=> b!5501880 m!6509756))

(assert (=> b!5501888 m!6509616))

(assert (=> b!5501888 m!6509616))

(declare-fun m!6509782 () Bool)

(assert (=> b!5501888 m!6509782))

(assert (=> b!5501888 m!6509620))

(assert (=> b!5501888 m!6509782))

(assert (=> b!5501888 m!6509620))

(declare-fun m!6509784 () Bool)

(assert (=> b!5501888 m!6509784))

(assert (=> b!5501881 m!6509616))

(assert (=> b!5501885 m!6509620))

(assert (=> b!5501885 m!6509620))

(assert (=> b!5501885 m!6509756))

(assert (=> d!1743873 m!6509612))

(assert (=> d!1743873 m!6509286))

(assert (=> b!5501891 m!6509616))

(assert (=> b!5501153 d!1743873))

(declare-fun d!1743875 () Bool)

(assert (=> d!1743875 (= (matchR!7664 r!7292 s!2326) (matchRSpec!2582 r!7292 s!2326))))

(declare-fun lt!2243749 () Unit!155418)

(assert (=> d!1743875 (= lt!2243749 (choose!41809 r!7292 s!2326))))

(assert (=> d!1743875 (validRegex!7215 r!7292)))

(assert (=> d!1743875 (= (mainMatchTheorem!2582 r!7292 s!2326) lt!2243749)))

(declare-fun bs!1268903 () Bool)

(assert (= bs!1268903 d!1743875))

(assert (=> bs!1268903 m!6509290))

(assert (=> bs!1268903 m!6509288))

(declare-fun m!6509786 () Bool)

(assert (=> bs!1268903 m!6509786))

(assert (=> bs!1268903 m!6509286))

(assert (=> b!5501153 d!1743875))

(declare-fun b!5501897 () Bool)

(declare-fun e!3403234 () Bool)

(declare-fun tp!1513802 () Bool)

(declare-fun tp!1513803 () Bool)

(assert (=> b!5501897 (= e!3403234 (and tp!1513802 tp!1513803))))

(assert (=> b!5501143 (= tp!1513737 e!3403234)))

(assert (= (and b!5501143 ((_ is Cons!62612) (exprs!5363 setElem!36469))) b!5501897))

(declare-fun e!3403237 () Bool)

(assert (=> b!5501154 (= tp!1513733 e!3403237)))

(declare-fun b!5501911 () Bool)

(declare-fun tp!1513816 () Bool)

(declare-fun tp!1513817 () Bool)

(assert (=> b!5501911 (= e!3403237 (and tp!1513816 tp!1513817))))

(declare-fun b!5501908 () Bool)

(assert (=> b!5501908 (= e!3403237 tp_is_empty!40211)))

(declare-fun b!5501910 () Bool)

(declare-fun tp!1513815 () Bool)

(assert (=> b!5501910 (= e!3403237 tp!1513815)))

(declare-fun b!5501909 () Bool)

(declare-fun tp!1513814 () Bool)

(declare-fun tp!1513818 () Bool)

(assert (=> b!5501909 (= e!3403237 (and tp!1513814 tp!1513818))))

(assert (= (and b!5501154 ((_ is ElementMatch!15479) (regOne!31471 r!7292))) b!5501908))

(assert (= (and b!5501154 ((_ is Concat!24324) (regOne!31471 r!7292))) b!5501909))

(assert (= (and b!5501154 ((_ is Star!15479) (regOne!31471 r!7292))) b!5501910))

(assert (= (and b!5501154 ((_ is Union!15479) (regOne!31471 r!7292))) b!5501911))

(declare-fun e!3403238 () Bool)

(assert (=> b!5501154 (= tp!1513735 e!3403238)))

(declare-fun b!5501915 () Bool)

(declare-fun tp!1513821 () Bool)

(declare-fun tp!1513822 () Bool)

(assert (=> b!5501915 (= e!3403238 (and tp!1513821 tp!1513822))))

(declare-fun b!5501912 () Bool)

(assert (=> b!5501912 (= e!3403238 tp_is_empty!40211)))

(declare-fun b!5501914 () Bool)

(declare-fun tp!1513820 () Bool)

(assert (=> b!5501914 (= e!3403238 tp!1513820)))

(declare-fun b!5501913 () Bool)

(declare-fun tp!1513819 () Bool)

(declare-fun tp!1513823 () Bool)

(assert (=> b!5501913 (= e!3403238 (and tp!1513819 tp!1513823))))

(assert (= (and b!5501154 ((_ is ElementMatch!15479) (regTwo!31471 r!7292))) b!5501912))

(assert (= (and b!5501154 ((_ is Concat!24324) (regTwo!31471 r!7292))) b!5501913))

(assert (= (and b!5501154 ((_ is Star!15479) (regTwo!31471 r!7292))) b!5501914))

(assert (= (and b!5501154 ((_ is Union!15479) (regTwo!31471 r!7292))) b!5501915))

(declare-fun condSetEmpty!36475 () Bool)

(assert (=> setNonEmpty!36469 (= condSetEmpty!36475 (= setRest!36469 ((as const (Array Context!9726 Bool)) false)))))

(declare-fun setRes!36475 () Bool)

(assert (=> setNonEmpty!36469 (= tp!1513730 setRes!36475)))

(declare-fun setIsEmpty!36475 () Bool)

(assert (=> setIsEmpty!36475 setRes!36475))

(declare-fun e!3403241 () Bool)

(declare-fun setElem!36475 () Context!9726)

(declare-fun setNonEmpty!36475 () Bool)

(declare-fun tp!1513828 () Bool)

(assert (=> setNonEmpty!36475 (= setRes!36475 (and tp!1513828 (inv!81944 setElem!36475) e!3403241))))

(declare-fun setRest!36475 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36475 (= setRest!36469 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36475 true) setRest!36475))))

(declare-fun b!5501920 () Bool)

(declare-fun tp!1513829 () Bool)

(assert (=> b!5501920 (= e!3403241 tp!1513829)))

(assert (= (and setNonEmpty!36469 condSetEmpty!36475) setIsEmpty!36475))

(assert (= (and setNonEmpty!36469 (not condSetEmpty!36475)) setNonEmpty!36475))

(assert (= setNonEmpty!36475 b!5501920))

(declare-fun m!6509788 () Bool)

(assert (=> setNonEmpty!36475 m!6509788))

(declare-fun b!5501928 () Bool)

(declare-fun e!3403247 () Bool)

(declare-fun tp!1513834 () Bool)

(assert (=> b!5501928 (= e!3403247 tp!1513834)))

(declare-fun tp!1513835 () Bool)

(declare-fun e!3403246 () Bool)

(declare-fun b!5501927 () Bool)

(assert (=> b!5501927 (= e!3403246 (and (inv!81944 (h!69061 (t!375974 zl!343))) e!3403247 tp!1513835))))

(assert (=> b!5501149 (= tp!1513739 e!3403246)))

(assert (= b!5501927 b!5501928))

(assert (= (and b!5501149 ((_ is Cons!62613) (t!375974 zl!343))) b!5501927))

(declare-fun m!6509790 () Bool)

(assert (=> b!5501927 m!6509790))

(declare-fun b!5501929 () Bool)

(declare-fun e!3403248 () Bool)

(declare-fun tp!1513836 () Bool)

(declare-fun tp!1513837 () Bool)

(assert (=> b!5501929 (= e!3403248 (and tp!1513836 tp!1513837))))

(assert (=> b!5501155 (= tp!1513734 e!3403248)))

(assert (= (and b!5501155 ((_ is Cons!62612) (exprs!5363 (h!69061 zl!343)))) b!5501929))

(declare-fun b!5501934 () Bool)

(declare-fun e!3403251 () Bool)

(declare-fun tp!1513840 () Bool)

(assert (=> b!5501934 (= e!3403251 (and tp_is_empty!40211 tp!1513840))))

(assert (=> b!5501150 (= tp!1513732 e!3403251)))

(assert (= (and b!5501150 ((_ is Cons!62614) (t!375975 s!2326))) b!5501934))

(declare-fun e!3403252 () Bool)

(assert (=> b!5501151 (= tp!1513736 e!3403252)))

(declare-fun b!5501938 () Bool)

(declare-fun tp!1513843 () Bool)

(declare-fun tp!1513844 () Bool)

(assert (=> b!5501938 (= e!3403252 (and tp!1513843 tp!1513844))))

(declare-fun b!5501935 () Bool)

(assert (=> b!5501935 (= e!3403252 tp_is_empty!40211)))

(declare-fun b!5501937 () Bool)

(declare-fun tp!1513842 () Bool)

(assert (=> b!5501937 (= e!3403252 tp!1513842)))

(declare-fun b!5501936 () Bool)

(declare-fun tp!1513841 () Bool)

(declare-fun tp!1513845 () Bool)

(assert (=> b!5501936 (= e!3403252 (and tp!1513841 tp!1513845))))

(assert (= (and b!5501151 ((_ is ElementMatch!15479) (regOne!31470 r!7292))) b!5501935))

(assert (= (and b!5501151 ((_ is Concat!24324) (regOne!31470 r!7292))) b!5501936))

(assert (= (and b!5501151 ((_ is Star!15479) (regOne!31470 r!7292))) b!5501937))

(assert (= (and b!5501151 ((_ is Union!15479) (regOne!31470 r!7292))) b!5501938))

(declare-fun e!3403253 () Bool)

(assert (=> b!5501151 (= tp!1513738 e!3403253)))

(declare-fun b!5501942 () Bool)

(declare-fun tp!1513848 () Bool)

(declare-fun tp!1513849 () Bool)

(assert (=> b!5501942 (= e!3403253 (and tp!1513848 tp!1513849))))

(declare-fun b!5501939 () Bool)

(assert (=> b!5501939 (= e!3403253 tp_is_empty!40211)))

(declare-fun b!5501941 () Bool)

(declare-fun tp!1513847 () Bool)

(assert (=> b!5501941 (= e!3403253 tp!1513847)))

(declare-fun b!5501940 () Bool)

(declare-fun tp!1513846 () Bool)

(declare-fun tp!1513850 () Bool)

(assert (=> b!5501940 (= e!3403253 (and tp!1513846 tp!1513850))))

(assert (= (and b!5501151 ((_ is ElementMatch!15479) (regTwo!31470 r!7292))) b!5501939))

(assert (= (and b!5501151 ((_ is Concat!24324) (regTwo!31470 r!7292))) b!5501940))

(assert (= (and b!5501151 ((_ is Star!15479) (regTwo!31470 r!7292))) b!5501941))

(assert (= (and b!5501151 ((_ is Union!15479) (regTwo!31470 r!7292))) b!5501942))

(declare-fun e!3403254 () Bool)

(assert (=> b!5501142 (= tp!1513731 e!3403254)))

(declare-fun b!5501946 () Bool)

(declare-fun tp!1513853 () Bool)

(declare-fun tp!1513854 () Bool)

(assert (=> b!5501946 (= e!3403254 (and tp!1513853 tp!1513854))))

(declare-fun b!5501943 () Bool)

(assert (=> b!5501943 (= e!3403254 tp_is_empty!40211)))

(declare-fun b!5501945 () Bool)

(declare-fun tp!1513852 () Bool)

(assert (=> b!5501945 (= e!3403254 tp!1513852)))

(declare-fun b!5501944 () Bool)

(declare-fun tp!1513851 () Bool)

(declare-fun tp!1513855 () Bool)

(assert (=> b!5501944 (= e!3403254 (and tp!1513851 tp!1513855))))

(assert (= (and b!5501142 ((_ is ElementMatch!15479) (reg!15808 r!7292))) b!5501943))

(assert (= (and b!5501142 ((_ is Concat!24324) (reg!15808 r!7292))) b!5501944))

(assert (= (and b!5501142 ((_ is Star!15479) (reg!15808 r!7292))) b!5501945))

(assert (= (and b!5501142 ((_ is Union!15479) (reg!15808 r!7292))) b!5501946))

(declare-fun b_lambda!208645 () Bool)

(assert (= b_lambda!208629 (or b!5501156 b_lambda!208645)))

(declare-fun bs!1268904 () Bool)

(declare-fun d!1743877 () Bool)

(assert (= bs!1268904 (and d!1743877 b!5501156)))

(assert (=> bs!1268904 (= (dynLambda!24467 lambda!294515 lt!2243664) (derivationStepZipperUp!751 lt!2243664 (h!69062 s!2326)))))

(assert (=> bs!1268904 m!6509268))

(assert (=> d!1743775 d!1743877))

(declare-fun b_lambda!208647 () Bool)

(assert (= b_lambda!208643 (or b!5501156 b_lambda!208647)))

(declare-fun bs!1268905 () Bool)

(declare-fun d!1743879 () Bool)

(assert (= bs!1268905 (and d!1743879 b!5501156)))

(assert (=> bs!1268905 (= (dynLambda!24467 lambda!294515 (h!69061 zl!343)) (derivationStepZipperUp!751 (h!69061 zl!343) (h!69062 s!2326)))))

(assert (=> bs!1268905 m!6509306))

(assert (=> d!1743829 d!1743879))

(declare-fun b_lambda!208649 () Bool)

(assert (= b_lambda!208635 (or b!5501156 b_lambda!208649)))

(declare-fun bs!1268906 () Bool)

(declare-fun d!1743881 () Bool)

(assert (= bs!1268906 (and d!1743881 b!5501156)))

(assert (=> bs!1268906 (= (dynLambda!24467 lambda!294515 lt!2243677) (derivationStepZipperUp!751 lt!2243677 (h!69062 s!2326)))))

(assert (=> bs!1268906 m!6509270))

(assert (=> d!1743815 d!1743881))

(check-sat (not b!5501720) (not d!1743861) (not d!1743755) (not b!5501873) (not bm!406177) (not d!1743865) (not b!5501664) (not b!5501352) (not b!5501938) (not d!1743825) (not b!5501354) (not b!5501941) (not b!5501835) (not b!5501718) (not bm!406200) (not b!5501721) (not b!5501914) (not b!5501741) (not bm!406174) (not b!5501897) (not b!5501512) (not b!5501846) (not b!5501857) (not b!5501653) (not d!1743759) (not d!1743863) (not b!5501942) (not b!5501719) (not bm!406173) (not b!5501486) (not d!1743829) (not d!1743851) (not b!5501881) (not b!5501888) (not b!5501891) (not d!1743775) (not b!5501927) (not bs!1268905) (not d!1743731) (not bm!406181) (not b!5501944) (not bm!406193) (not b!5501841) (not bm!406183) (not b!5501753) (not bm!406164) (not b!5501349) (not b!5501913) (not d!1743855) (not b!5501574) (not b!5501915) (not b!5501489) (not b!5501345) (not bm!406202) (not d!1743849) (not d!1743817) (not b!5501347) (not b!5501928) (not b!5501909) (not bm!406180) (not b!5501348) (not b!5501791) (not bm!406199) (not b!5501789) (not b!5501667) (not b!5501911) (not bm!406127) (not b!5501866) (not b!5501717) (not b!5501934) (not b!5501855) (not bm!406161) (not b!5501848) (not d!1743783) (not d!1743835) (not b!5501665) (not d!1743869) (not b!5501509) (not b!5501937) (not b!5501860) (not b!5501920) (not d!1743739) (not b!5501871) (not b!5501882) (not setNonEmpty!36475) (not b!5501351) (not bm!406147) (not b!5501946) (not b!5501748) (not b!5501831) (not b!5501752) (not b!5501686) (not b!5501910) (not b!5501730) (not b!5501723) (not b!5501571) (not bs!1268906) (not bs!1268904) (not b!5501625) (not b!5501747) (not bm!406166) (not bm!406165) (not b!5501832) (not b_lambda!208645) (not bm!406192) (not b!5501838) (not b!5501945) (not d!1743875) (not b!5501830) (not b!5501663) (not b!5501929) (not b!5501716) (not b_lambda!208647) (not b_lambda!208649) (not bm!406196) (not b!5501622) (not b!5501936) (not b!5501409) (not d!1743873) (not d!1743847) (not bm!406201) (not b!5501666) (not bm!406186) (not d!1743815) (not b!5501856) (not d!1743757) (not d!1743841) (not b!5501885) (not b!5501751) (not bm!406134) (not b!5501435) (not d!1743853) (not d!1743787) (not b!5501880) (not bm!406198) (not d!1743837) (not b!5501940) tp_is_empty!40211 (not b!5501863) (not bm!406187) (not b!5501660) (not bm!406197))
(check-sat)
(get-model)

(declare-fun d!1744111 () Bool)

(declare-fun lambda!294595 () Int)

(declare-fun exists!2130 ((InoxSet Context!9726) Int) Bool)

(assert (=> d!1744111 (= (nullableZipper!1521 lt!2243673) (exists!2130 lt!2243673 lambda!294595))))

(declare-fun bs!1269086 () Bool)

(assert (= bs!1269086 d!1744111))

(declare-fun m!6510220 () Bool)

(assert (=> bs!1269086 m!6510220))

(assert (=> b!5501571 d!1744111))

(declare-fun d!1744113 () Bool)

(declare-fun c!961179 () Bool)

(assert (=> d!1744113 (= c!961179 (and ((_ is ElementMatch!15479) (h!69060 (exprs!5363 lt!2243677))) (= (c!960803 (h!69060 (exprs!5363 lt!2243677))) (h!69062 s!2326))))))

(declare-fun e!3403544 () (InoxSet Context!9726))

(assert (=> d!1744113 (= (derivationStepZipperDown!825 (h!69060 (exprs!5363 lt!2243677)) (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (h!69062 s!2326)) e!3403544)))

(declare-fun bm!406319 () Bool)

(declare-fun call!406328 () (InoxSet Context!9726))

(declare-fun call!406327 () (InoxSet Context!9726))

(assert (=> bm!406319 (= call!406328 call!406327)))

(declare-fun c!961180 () Bool)

(declare-fun call!406325 () (InoxSet Context!9726))

(declare-fun call!406326 () List!62736)

(declare-fun bm!406320 () Bool)

(assert (=> bm!406320 (= call!406325 (derivationStepZipperDown!825 (ite c!961180 (regTwo!31471 (h!69060 (exprs!5363 lt!2243677))) (regOne!31470 (h!69060 (exprs!5363 lt!2243677)))) (ite c!961180 (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (Context!9727 call!406326)) (h!69062 s!2326)))))

(declare-fun bm!406321 () Bool)

(declare-fun call!406329 () (InoxSet Context!9726))

(assert (=> bm!406321 (= call!406327 call!406329)))

(declare-fun bm!406322 () Bool)

(declare-fun call!406324 () List!62736)

(assert (=> bm!406322 (= call!406324 call!406326)))

(declare-fun b!5502469 () Bool)

(declare-fun c!961176 () Bool)

(assert (=> b!5502469 (= c!961176 ((_ is Star!15479) (h!69060 (exprs!5363 lt!2243677))))))

(declare-fun e!3403546 () (InoxSet Context!9726))

(declare-fun e!3403548 () (InoxSet Context!9726))

(assert (=> b!5502469 (= e!3403546 e!3403548)))

(declare-fun b!5502470 () Bool)

(assert (=> b!5502470 (= e!3403548 call!406328)))

(declare-fun b!5502471 () Bool)

(declare-fun c!961178 () Bool)

(declare-fun e!3403545 () Bool)

(assert (=> b!5502471 (= c!961178 e!3403545)))

(declare-fun res!2345324 () Bool)

(assert (=> b!5502471 (=> (not res!2345324) (not e!3403545))))

(assert (=> b!5502471 (= res!2345324 ((_ is Concat!24324) (h!69060 (exprs!5363 lt!2243677))))))

(declare-fun e!3403547 () (InoxSet Context!9726))

(declare-fun e!3403549 () (InoxSet Context!9726))

(assert (=> b!5502471 (= e!3403547 e!3403549)))

(declare-fun b!5502472 () Bool)

(assert (=> b!5502472 (= e!3403544 e!3403547)))

(assert (=> b!5502472 (= c!961180 ((_ is Union!15479) (h!69060 (exprs!5363 lt!2243677))))))

(declare-fun c!961177 () Bool)

(declare-fun bm!406323 () Bool)

(assert (=> bm!406323 (= call!406326 ($colon$colon!1570 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677)))) (ite (or c!961178 c!961177) (regTwo!31470 (h!69060 (exprs!5363 lt!2243677))) (h!69060 (exprs!5363 lt!2243677)))))))

(declare-fun b!5502473 () Bool)

(assert (=> b!5502473 (= e!3403544 (store ((as const (Array Context!9726 Bool)) false) (Context!9727 (t!375973 (exprs!5363 lt!2243677))) true))))

(declare-fun b!5502474 () Bool)

(assert (=> b!5502474 (= e!3403545 (nullable!5516 (regOne!31470 (h!69060 (exprs!5363 lt!2243677)))))))

(declare-fun b!5502475 () Bool)

(assert (=> b!5502475 (= e!3403546 call!406328)))

(declare-fun b!5502476 () Bool)

(assert (=> b!5502476 (= e!3403549 e!3403546)))

(assert (=> b!5502476 (= c!961177 ((_ is Concat!24324) (h!69060 (exprs!5363 lt!2243677))))))

(declare-fun bm!406324 () Bool)

(assert (=> bm!406324 (= call!406329 (derivationStepZipperDown!825 (ite c!961180 (regOne!31471 (h!69060 (exprs!5363 lt!2243677))) (ite c!961178 (regTwo!31470 (h!69060 (exprs!5363 lt!2243677))) (ite c!961177 (regOne!31470 (h!69060 (exprs!5363 lt!2243677))) (reg!15808 (h!69060 (exprs!5363 lt!2243677)))))) (ite (or c!961180 c!961178) (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (Context!9727 call!406324)) (h!69062 s!2326)))))

(declare-fun b!5502477 () Bool)

(assert (=> b!5502477 (= e!3403549 ((_ map or) call!406325 call!406327))))

(declare-fun b!5502478 () Bool)

(assert (=> b!5502478 (= e!3403547 ((_ map or) call!406329 call!406325))))

(declare-fun b!5502479 () Bool)

(assert (=> b!5502479 (= e!3403548 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744113 c!961179) b!5502473))

(assert (= (and d!1744113 (not c!961179)) b!5502472))

(assert (= (and b!5502472 c!961180) b!5502478))

(assert (= (and b!5502472 (not c!961180)) b!5502471))

(assert (= (and b!5502471 res!2345324) b!5502474))

(assert (= (and b!5502471 c!961178) b!5502477))

(assert (= (and b!5502471 (not c!961178)) b!5502476))

(assert (= (and b!5502476 c!961177) b!5502475))

(assert (= (and b!5502476 (not c!961177)) b!5502469))

(assert (= (and b!5502469 c!961176) b!5502470))

(assert (= (and b!5502469 (not c!961176)) b!5502479))

(assert (= (or b!5502475 b!5502470) bm!406322))

(assert (= (or b!5502475 b!5502470) bm!406319))

(assert (= (or b!5502477 bm!406322) bm!406323))

(assert (= (or b!5502477 bm!406319) bm!406321))

(assert (= (or b!5502478 b!5502477) bm!406320))

(assert (= (or b!5502478 bm!406321) bm!406324))

(declare-fun m!6510222 () Bool)

(assert (=> bm!406320 m!6510222))

(declare-fun m!6510224 () Bool)

(assert (=> bm!406324 m!6510224))

(declare-fun m!6510226 () Bool)

(assert (=> b!5502473 m!6510226))

(declare-fun m!6510228 () Bool)

(assert (=> b!5502474 m!6510228))

(declare-fun m!6510230 () Bool)

(assert (=> bm!406323 m!6510230))

(assert (=> bm!406127 d!1744113))

(declare-fun d!1744115 () Bool)

(declare-fun nullableFct!1651 (Regex!15479) Bool)

(assert (=> d!1744115 (= (nullable!5516 (h!69060 (exprs!5363 lt!2243664))) (nullableFct!1651 (h!69060 (exprs!5363 lt!2243664))))))

(declare-fun bs!1269087 () Bool)

(assert (= bs!1269087 d!1744115))

(declare-fun m!6510232 () Bool)

(assert (=> bs!1269087 m!6510232))

(assert (=> b!5501512 d!1744115))

(assert (=> b!5501409 d!1743841))

(declare-fun bs!1269088 () Bool)

(declare-fun d!1744117 () Bool)

(assert (= bs!1269088 (and d!1744117 d!1743731)))

(declare-fun lambda!294596 () Int)

(assert (=> bs!1269088 (= lambda!294596 lambda!294533)))

(declare-fun bs!1269089 () Bool)

(assert (= bs!1269089 (and d!1744117 d!1743739)))

(assert (=> bs!1269089 (= lambda!294596 lambda!294540)))

(declare-fun bs!1269090 () Bool)

(assert (= bs!1269090 (and d!1744117 d!1743851)))

(assert (=> bs!1269090 (= lambda!294596 lambda!294556)))

(declare-fun bs!1269091 () Bool)

(assert (= bs!1269091 (and d!1744117 d!1743853)))

(assert (=> bs!1269091 (= lambda!294596 lambda!294557)))

(declare-fun bs!1269092 () Bool)

(assert (= bs!1269092 (and d!1744117 d!1743841)))

(assert (=> bs!1269092 (= lambda!294596 lambda!294553)))

(declare-fun lt!2243761 () List!62736)

(assert (=> d!1744117 (forall!14664 lt!2243761 lambda!294596)))

(declare-fun e!3403550 () List!62736)

(assert (=> d!1744117 (= lt!2243761 e!3403550)))

(declare-fun c!961181 () Bool)

(assert (=> d!1744117 (= c!961181 ((_ is Cons!62613) (t!375974 zl!343)))))

(assert (=> d!1744117 (= (unfocusZipperList!907 (t!375974 zl!343)) lt!2243761)))

(declare-fun b!5502480 () Bool)

(assert (=> b!5502480 (= e!3403550 (Cons!62612 (generalisedConcat!1094 (exprs!5363 (h!69061 (t!375974 zl!343)))) (unfocusZipperList!907 (t!375974 (t!375974 zl!343)))))))

(declare-fun b!5502481 () Bool)

(assert (=> b!5502481 (= e!3403550 Nil!62612)))

(assert (= (and d!1744117 c!961181) b!5502480))

(assert (= (and d!1744117 (not c!961181)) b!5502481))

(declare-fun m!6510234 () Bool)

(assert (=> d!1744117 m!6510234))

(declare-fun m!6510236 () Bool)

(assert (=> b!5502480 m!6510236))

(declare-fun m!6510238 () Bool)

(assert (=> b!5502480 m!6510238))

(assert (=> b!5501409 d!1744117))

(declare-fun d!1744119 () Bool)

(assert (=> d!1744119 (= (head!11784 s!2326) (h!69062 s!2326))))

(assert (=> b!5501891 d!1744119))

(declare-fun d!1744121 () Bool)

(assert (=> d!1744121 (= (isEmpty!34399 s!2326) ((_ is Nil!62614) s!2326))))

(assert (=> d!1743873 d!1744121))

(assert (=> d!1743873 d!1743839))

(declare-fun d!1744123 () Bool)

(assert (=> d!1744123 (= (isUnion!503 lt!2243704) ((_ is Union!15479) lt!2243704))))

(assert (=> b!5501351 d!1744123))

(declare-fun d!1744125 () Bool)

(declare-fun choose!41811 (Int) Bool)

(assert (=> d!1744125 (= (Exists!2581 (ite c!961026 lambda!294566 lambda!294567)) (choose!41811 (ite c!961026 lambda!294566 lambda!294567)))))

(declare-fun bs!1269093 () Bool)

(assert (= bs!1269093 d!1744125))

(declare-fun m!6510240 () Bool)

(assert (=> bs!1269093 m!6510240))

(assert (=> bm!406200 d!1744125))

(assert (=> bm!406196 d!1744121))

(declare-fun d!1744127 () Bool)

(assert (=> d!1744127 (= ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960960 c!960959) (regTwo!31470 r!7292) r!7292)) (Cons!62612 (ite (or c!960960 c!960959) (regTwo!31470 r!7292) r!7292) (exprs!5363 lt!2243674)))))

(assert (=> bm!406164 d!1744127))

(declare-fun bs!1269094 () Bool)

(declare-fun b!5502482 () Bool)

(assert (= bs!1269094 (and b!5502482 b!5501792)))

(declare-fun lambda!294597 () Int)

(assert (=> bs!1269094 (not (= lambda!294597 lambda!294563))))

(declare-fun bs!1269095 () Bool)

(assert (= bs!1269095 (and b!5502482 b!5501849)))

(assert (=> bs!1269095 (not (= lambda!294597 lambda!294565))))

(declare-fun bs!1269096 () Bool)

(assert (= bs!1269096 (and b!5502482 b!5501868)))

(assert (=> bs!1269096 (= (and (= (reg!15808 (regTwo!31471 (regOne!31471 r!7292))) (reg!15808 r!7292)) (= (regTwo!31471 (regOne!31471 r!7292)) r!7292)) (= lambda!294597 lambda!294566))))

(declare-fun bs!1269097 () Bool)

(assert (= bs!1269097 (and b!5502482 b!5501843)))

(assert (=> bs!1269097 (= (and (= (reg!15808 (regTwo!31471 (regOne!31471 r!7292))) (reg!15808 (regOne!31471 r!7292))) (= (regTwo!31471 (regOne!31471 r!7292)) (regOne!31471 r!7292))) (= lambda!294597 lambda!294564))))

(declare-fun bs!1269098 () Bool)

(assert (= bs!1269098 (and b!5502482 b!5501874)))

(assert (=> bs!1269098 (not (= lambda!294597 lambda!294567))))

(declare-fun bs!1269099 () Bool)

(assert (= bs!1269099 (and b!5502482 b!5501786)))

(assert (=> bs!1269099 (= (and (= (reg!15808 (regTwo!31471 (regOne!31471 r!7292))) (reg!15808 (regTwo!31471 r!7292))) (= (regTwo!31471 (regOne!31471 r!7292)) (regTwo!31471 r!7292))) (= lambda!294597 lambda!294562))))

(assert (=> b!5502482 true))

(assert (=> b!5502482 true))

(declare-fun bs!1269100 () Bool)

(declare-fun b!5502488 () Bool)

(assert (= bs!1269100 (and b!5502488 b!5501792)))

(declare-fun lambda!294598 () Int)

(assert (=> bs!1269100 (= (and (= (regOne!31470 (regTwo!31471 (regOne!31471 r!7292))) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294598 lambda!294563))))

(declare-fun bs!1269101 () Bool)

(assert (= bs!1269101 (and b!5502488 b!5501849)))

(assert (=> bs!1269101 (= (and (= (regOne!31470 (regTwo!31471 (regOne!31471 r!7292))) (regOne!31470 (regOne!31471 r!7292))) (= (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))) (regTwo!31470 (regOne!31471 r!7292)))) (= lambda!294598 lambda!294565))))

(declare-fun bs!1269102 () Bool)

(assert (= bs!1269102 (and b!5502488 b!5502482)))

(assert (=> bs!1269102 (not (= lambda!294598 lambda!294597))))

(declare-fun bs!1269103 () Bool)

(assert (= bs!1269103 (and b!5502488 b!5501868)))

(assert (=> bs!1269103 (not (= lambda!294598 lambda!294566))))

(declare-fun bs!1269104 () Bool)

(assert (= bs!1269104 (and b!5502488 b!5501843)))

(assert (=> bs!1269104 (not (= lambda!294598 lambda!294564))))

(declare-fun bs!1269105 () Bool)

(assert (= bs!1269105 (and b!5502488 b!5501874)))

(assert (=> bs!1269105 (= (and (= (regOne!31470 (regTwo!31471 (regOne!31471 r!7292))) (regOne!31470 r!7292)) (= (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))) (regTwo!31470 r!7292))) (= lambda!294598 lambda!294567))))

(declare-fun bs!1269106 () Bool)

(assert (= bs!1269106 (and b!5502488 b!5501786)))

(assert (=> bs!1269106 (not (= lambda!294598 lambda!294562))))

(assert (=> b!5502488 true))

(assert (=> b!5502488 true))

(declare-fun e!3403556 () Bool)

(declare-fun call!406330 () Bool)

(assert (=> b!5502482 (= e!3403556 call!406330)))

(declare-fun b!5502483 () Bool)

(declare-fun c!961185 () Bool)

(assert (=> b!5502483 (= c!961185 ((_ is Union!15479) (regTwo!31471 (regOne!31471 r!7292))))))

(declare-fun e!3403551 () Bool)

(declare-fun e!3403554 () Bool)

(assert (=> b!5502483 (= e!3403551 e!3403554)))

(declare-fun b!5502484 () Bool)

(declare-fun c!961184 () Bool)

(assert (=> b!5502484 (= c!961184 ((_ is ElementMatch!15479) (regTwo!31471 (regOne!31471 r!7292))))))

(declare-fun e!3403555 () Bool)

(assert (=> b!5502484 (= e!3403555 e!3403551)))

(declare-fun b!5502485 () Bool)

(declare-fun e!3403552 () Bool)

(assert (=> b!5502485 (= e!3403554 e!3403552)))

(declare-fun res!2345326 () Bool)

(assert (=> b!5502485 (= res!2345326 (matchRSpec!2582 (regOne!31471 (regTwo!31471 (regOne!31471 r!7292))) s!2326))))

(assert (=> b!5502485 (=> res!2345326 e!3403552)))

(declare-fun b!5502486 () Bool)

(declare-fun e!3403553 () Bool)

(assert (=> b!5502486 (= e!3403553 e!3403555)))

(declare-fun res!2345327 () Bool)

(assert (=> b!5502486 (= res!2345327 (not ((_ is EmptyLang!15479) (regTwo!31471 (regOne!31471 r!7292)))))))

(assert (=> b!5502486 (=> (not res!2345327) (not e!3403555))))

(declare-fun b!5502487 () Bool)

(assert (=> b!5502487 (= e!3403552 (matchRSpec!2582 (regTwo!31471 (regTwo!31471 (regOne!31471 r!7292))) s!2326))))

(declare-fun c!961183 () Bool)

(declare-fun bm!406325 () Bool)

(assert (=> bm!406325 (= call!406330 (Exists!2581 (ite c!961183 lambda!294597 lambda!294598)))))

(declare-fun bm!406326 () Bool)

(declare-fun call!406331 () Bool)

(assert (=> bm!406326 (= call!406331 (isEmpty!34399 s!2326))))

(declare-fun e!3403557 () Bool)

(assert (=> b!5502488 (= e!3403557 call!406330)))

(declare-fun b!5502489 () Bool)

(assert (=> b!5502489 (= e!3403554 e!3403557)))

(assert (=> b!5502489 (= c!961183 ((_ is Star!15479) (regTwo!31471 (regOne!31471 r!7292))))))

(declare-fun d!1744129 () Bool)

(declare-fun c!961182 () Bool)

(assert (=> d!1744129 (= c!961182 ((_ is EmptyExpr!15479) (regTwo!31471 (regOne!31471 r!7292))))))

(assert (=> d!1744129 (= (matchRSpec!2582 (regTwo!31471 (regOne!31471 r!7292)) s!2326) e!3403553)))

(declare-fun b!5502490 () Bool)

(assert (=> b!5502490 (= e!3403553 call!406331)))

(declare-fun b!5502491 () Bool)

(declare-fun res!2345325 () Bool)

(assert (=> b!5502491 (=> res!2345325 e!3403556)))

(assert (=> b!5502491 (= res!2345325 call!406331)))

(assert (=> b!5502491 (= e!3403557 e!3403556)))

(declare-fun b!5502492 () Bool)

(assert (=> b!5502492 (= e!3403551 (= s!2326 (Cons!62614 (c!960803 (regTwo!31471 (regOne!31471 r!7292))) Nil!62614)))))

(assert (= (and d!1744129 c!961182) b!5502490))

(assert (= (and d!1744129 (not c!961182)) b!5502486))

(assert (= (and b!5502486 res!2345327) b!5502484))

(assert (= (and b!5502484 c!961184) b!5502492))

(assert (= (and b!5502484 (not c!961184)) b!5502483))

(assert (= (and b!5502483 c!961185) b!5502485))

(assert (= (and b!5502483 (not c!961185)) b!5502489))

(assert (= (and b!5502485 (not res!2345326)) b!5502487))

(assert (= (and b!5502489 c!961183) b!5502491))

(assert (= (and b!5502489 (not c!961183)) b!5502488))

(assert (= (and b!5502491 (not res!2345325)) b!5502482))

(assert (= (or b!5502482 b!5502488) bm!406325))

(assert (= (or b!5502490 b!5502491) bm!406326))

(declare-fun m!6510242 () Bool)

(assert (=> b!5502485 m!6510242))

(declare-fun m!6510244 () Bool)

(assert (=> b!5502487 m!6510244))

(declare-fun m!6510246 () Bool)

(assert (=> bm!406325 m!6510246))

(assert (=> bm!406326 m!6509612))

(assert (=> b!5501848 d!1744129))

(declare-fun bs!1269107 () Bool)

(declare-fun b!5502493 () Bool)

(assert (= bs!1269107 (and b!5502493 b!5501792)))

(declare-fun lambda!294599 () Int)

(assert (=> bs!1269107 (not (= lambda!294599 lambda!294563))))

(declare-fun bs!1269108 () Bool)

(assert (= bs!1269108 (and b!5502493 b!5502488)))

(assert (=> bs!1269108 (not (= lambda!294599 lambda!294598))))

(declare-fun bs!1269109 () Bool)

(assert (= bs!1269109 (and b!5502493 b!5501849)))

(assert (=> bs!1269109 (not (= lambda!294599 lambda!294565))))

(declare-fun bs!1269110 () Bool)

(assert (= bs!1269110 (and b!5502493 b!5502482)))

(assert (=> bs!1269110 (= (and (= (reg!15808 (regTwo!31471 (regTwo!31471 r!7292))) (reg!15808 (regTwo!31471 (regOne!31471 r!7292)))) (= (regTwo!31471 (regTwo!31471 r!7292)) (regTwo!31471 (regOne!31471 r!7292)))) (= lambda!294599 lambda!294597))))

(declare-fun bs!1269111 () Bool)

(assert (= bs!1269111 (and b!5502493 b!5501868)))

(assert (=> bs!1269111 (= (and (= (reg!15808 (regTwo!31471 (regTwo!31471 r!7292))) (reg!15808 r!7292)) (= (regTwo!31471 (regTwo!31471 r!7292)) r!7292)) (= lambda!294599 lambda!294566))))

(declare-fun bs!1269112 () Bool)

(assert (= bs!1269112 (and b!5502493 b!5501843)))

(assert (=> bs!1269112 (= (and (= (reg!15808 (regTwo!31471 (regTwo!31471 r!7292))) (reg!15808 (regOne!31471 r!7292))) (= (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31471 r!7292))) (= lambda!294599 lambda!294564))))

(declare-fun bs!1269113 () Bool)

(assert (= bs!1269113 (and b!5502493 b!5501874)))

(assert (=> bs!1269113 (not (= lambda!294599 lambda!294567))))

(declare-fun bs!1269114 () Bool)

(assert (= bs!1269114 (and b!5502493 b!5501786)))

(assert (=> bs!1269114 (= (and (= (reg!15808 (regTwo!31471 (regTwo!31471 r!7292))) (reg!15808 (regTwo!31471 r!7292))) (= (regTwo!31471 (regTwo!31471 r!7292)) (regTwo!31471 r!7292))) (= lambda!294599 lambda!294562))))

(assert (=> b!5502493 true))

(assert (=> b!5502493 true))

(declare-fun bs!1269115 () Bool)

(declare-fun b!5502499 () Bool)

(assert (= bs!1269115 (and b!5502499 b!5501792)))

(declare-fun lambda!294600 () Int)

(assert (=> bs!1269115 (= (and (= (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294600 lambda!294563))))

(declare-fun bs!1269116 () Bool)

(assert (= bs!1269116 (and b!5502499 b!5502488)))

(assert (=> bs!1269116 (= (and (= (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regOne!31470 (regTwo!31471 (regOne!31471 r!7292)))) (= (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))))) (= lambda!294600 lambda!294598))))

(declare-fun bs!1269117 () Bool)

(assert (= bs!1269117 (and b!5502499 b!5501849)))

(assert (=> bs!1269117 (= (and (= (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regOne!31470 (regOne!31471 r!7292))) (= (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regOne!31471 r!7292)))) (= lambda!294600 lambda!294565))))

(declare-fun bs!1269118 () Bool)

(assert (= bs!1269118 (and b!5502499 b!5502482)))

(assert (=> bs!1269118 (not (= lambda!294600 lambda!294597))))

(declare-fun bs!1269119 () Bool)

(assert (= bs!1269119 (and b!5502499 b!5501868)))

(assert (=> bs!1269119 (not (= lambda!294600 lambda!294566))))

(declare-fun bs!1269120 () Bool)

(assert (= bs!1269120 (and b!5502499 b!5501874)))

(assert (=> bs!1269120 (= (and (= (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regOne!31470 r!7292)) (= (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))) (regTwo!31470 r!7292))) (= lambda!294600 lambda!294567))))

(declare-fun bs!1269121 () Bool)

(assert (= bs!1269121 (and b!5502499 b!5501786)))

(assert (=> bs!1269121 (not (= lambda!294600 lambda!294562))))

(declare-fun bs!1269122 () Bool)

(assert (= bs!1269122 (and b!5502499 b!5502493)))

(assert (=> bs!1269122 (not (= lambda!294600 lambda!294599))))

(declare-fun bs!1269123 () Bool)

(assert (= bs!1269123 (and b!5502499 b!5501843)))

(assert (=> bs!1269123 (not (= lambda!294600 lambda!294564))))

(assert (=> b!5502499 true))

(assert (=> b!5502499 true))

(declare-fun e!3403563 () Bool)

(declare-fun call!406332 () Bool)

(assert (=> b!5502493 (= e!3403563 call!406332)))

(declare-fun b!5502494 () Bool)

(declare-fun c!961189 () Bool)

(assert (=> b!5502494 (= c!961189 ((_ is Union!15479) (regTwo!31471 (regTwo!31471 r!7292))))))

(declare-fun e!3403558 () Bool)

(declare-fun e!3403561 () Bool)

(assert (=> b!5502494 (= e!3403558 e!3403561)))

(declare-fun b!5502495 () Bool)

(declare-fun c!961188 () Bool)

(assert (=> b!5502495 (= c!961188 ((_ is ElementMatch!15479) (regTwo!31471 (regTwo!31471 r!7292))))))

(declare-fun e!3403562 () Bool)

(assert (=> b!5502495 (= e!3403562 e!3403558)))

(declare-fun b!5502496 () Bool)

(declare-fun e!3403559 () Bool)

(assert (=> b!5502496 (= e!3403561 e!3403559)))

(declare-fun res!2345329 () Bool)

(assert (=> b!5502496 (= res!2345329 (matchRSpec!2582 (regOne!31471 (regTwo!31471 (regTwo!31471 r!7292))) s!2326))))

(assert (=> b!5502496 (=> res!2345329 e!3403559)))

(declare-fun b!5502497 () Bool)

(declare-fun e!3403560 () Bool)

(assert (=> b!5502497 (= e!3403560 e!3403562)))

(declare-fun res!2345330 () Bool)

(assert (=> b!5502497 (= res!2345330 (not ((_ is EmptyLang!15479) (regTwo!31471 (regTwo!31471 r!7292)))))))

(assert (=> b!5502497 (=> (not res!2345330) (not e!3403562))))

(declare-fun b!5502498 () Bool)

(assert (=> b!5502498 (= e!3403559 (matchRSpec!2582 (regTwo!31471 (regTwo!31471 (regTwo!31471 r!7292))) s!2326))))

(declare-fun bm!406327 () Bool)

(declare-fun c!961187 () Bool)

(assert (=> bm!406327 (= call!406332 (Exists!2581 (ite c!961187 lambda!294599 lambda!294600)))))

(declare-fun bm!406328 () Bool)

(declare-fun call!406333 () Bool)

(assert (=> bm!406328 (= call!406333 (isEmpty!34399 s!2326))))

(declare-fun e!3403564 () Bool)

(assert (=> b!5502499 (= e!3403564 call!406332)))

(declare-fun b!5502500 () Bool)

(assert (=> b!5502500 (= e!3403561 e!3403564)))

(assert (=> b!5502500 (= c!961187 ((_ is Star!15479) (regTwo!31471 (regTwo!31471 r!7292))))))

(declare-fun d!1744131 () Bool)

(declare-fun c!961186 () Bool)

(assert (=> d!1744131 (= c!961186 ((_ is EmptyExpr!15479) (regTwo!31471 (regTwo!31471 r!7292))))))

(assert (=> d!1744131 (= (matchRSpec!2582 (regTwo!31471 (regTwo!31471 r!7292)) s!2326) e!3403560)))

(declare-fun b!5502501 () Bool)

(assert (=> b!5502501 (= e!3403560 call!406333)))

(declare-fun b!5502502 () Bool)

(declare-fun res!2345328 () Bool)

(assert (=> b!5502502 (=> res!2345328 e!3403563)))

(assert (=> b!5502502 (= res!2345328 call!406333)))

(assert (=> b!5502502 (= e!3403564 e!3403563)))

(declare-fun b!5502503 () Bool)

(assert (=> b!5502503 (= e!3403558 (= s!2326 (Cons!62614 (c!960803 (regTwo!31471 (regTwo!31471 r!7292))) Nil!62614)))))

(assert (= (and d!1744131 c!961186) b!5502501))

(assert (= (and d!1744131 (not c!961186)) b!5502497))

(assert (= (and b!5502497 res!2345330) b!5502495))

(assert (= (and b!5502495 c!961188) b!5502503))

(assert (= (and b!5502495 (not c!961188)) b!5502494))

(assert (= (and b!5502494 c!961189) b!5502496))

(assert (= (and b!5502494 (not c!961189)) b!5502500))

(assert (= (and b!5502496 (not res!2345329)) b!5502498))

(assert (= (and b!5502500 c!961187) b!5502502))

(assert (= (and b!5502500 (not c!961187)) b!5502499))

(assert (= (and b!5502502 (not res!2345328)) b!5502493))

(assert (= (or b!5502493 b!5502499) bm!406327))

(assert (= (or b!5502501 b!5502502) bm!406328))

(declare-fun m!6510248 () Bool)

(assert (=> b!5502496 m!6510248))

(declare-fun m!6510250 () Bool)

(assert (=> b!5502498 m!6510250))

(declare-fun m!6510252 () Bool)

(assert (=> bm!406327 m!6510252))

(assert (=> bm!406328 m!6509612))

(assert (=> b!5501791 d!1744131))

(declare-fun d!1744133 () Bool)

(assert (=> d!1744133 (= (isEmpty!34398 (tail!10878 (unfocusZipperList!907 zl!343))) ((_ is Nil!62612) (tail!10878 (unfocusZipperList!907 zl!343))))))

(assert (=> b!5501347 d!1744133))

(declare-fun d!1744135 () Bool)

(assert (=> d!1744135 (= (tail!10878 (unfocusZipperList!907 zl!343)) (t!375973 (unfocusZipperList!907 zl!343)))))

(assert (=> b!5501347 d!1744135))

(declare-fun b!5502504 () Bool)

(declare-fun e!3403567 () (InoxSet Context!9726))

(declare-fun call!406334 () (InoxSet Context!9726))

(assert (=> b!5502504 (= e!3403567 call!406334)))

(declare-fun e!3403565 () (InoxSet Context!9726))

(declare-fun b!5502505 () Bool)

(assert (=> b!5502505 (= e!3403565 ((_ map or) call!406334 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))) (h!69062 s!2326))))))

(declare-fun bm!406329 () Bool)

(assert (=> bm!406329 (= call!406334 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))) (h!69062 s!2326)))))

(declare-fun b!5502506 () Bool)

(assert (=> b!5502506 (= e!3403565 e!3403567)))

(declare-fun c!961191 () Bool)

(assert (=> b!5502506 (= c!961191 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))))

(declare-fun d!1744137 () Bool)

(declare-fun c!961190 () Bool)

(declare-fun e!3403566 () Bool)

(assert (=> d!1744137 (= c!961190 e!3403566)))

(declare-fun res!2345331 () Bool)

(assert (=> d!1744137 (=> (not res!2345331) (not e!3403566))))

(assert (=> d!1744137 (= res!2345331 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))))

(assert (=> d!1744137 (= (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69062 s!2326)) e!3403565)))

(declare-fun b!5502507 () Bool)

(assert (=> b!5502507 (= e!3403567 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5502508 () Bool)

(assert (=> b!5502508 (= e!3403566 (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))))))

(assert (= (and d!1744137 res!2345331) b!5502508))

(assert (= (and d!1744137 c!961190) b!5502505))

(assert (= (and d!1744137 (not c!961190)) b!5502506))

(assert (= (and b!5502506 c!961191) b!5502504))

(assert (= (and b!5502506 (not c!961191)) b!5502507))

(assert (= (or b!5502505 b!5502504) bm!406329))

(declare-fun m!6510254 () Bool)

(assert (=> b!5502505 m!6510254))

(declare-fun m!6510256 () Bool)

(assert (=> bm!406329 m!6510256))

(declare-fun m!6510258 () Bool)

(assert (=> b!5502508 m!6510258))

(assert (=> b!5501660 d!1744137))

(assert (=> bs!1268906 d!1743763))

(assert (=> d!1743787 d!1744121))

(declare-fun d!1744139 () Bool)

(assert (=> d!1744139 (= (isEmpty!34399 (t!375975 s!2326)) ((_ is Nil!62614) (t!375975 s!2326)))))

(assert (=> d!1743855 d!1744139))

(declare-fun d!1744141 () Bool)

(assert (=> d!1744141 (= (nullable!5516 (reg!15808 r!7292)) (nullableFct!1651 (reg!15808 r!7292)))))

(declare-fun bs!1269124 () Bool)

(assert (= bs!1269124 d!1744141))

(declare-fun m!6510260 () Bool)

(assert (=> bs!1269124 m!6510260))

(assert (=> b!5501686 d!1744141))

(declare-fun bs!1269125 () Bool)

(declare-fun d!1744143 () Bool)

(assert (= bs!1269125 (and d!1744143 d!1743731)))

(declare-fun lambda!294601 () Int)

(assert (=> bs!1269125 (= lambda!294601 lambda!294533)))

(declare-fun bs!1269126 () Bool)

(assert (= bs!1269126 (and d!1744143 d!1744117)))

(assert (=> bs!1269126 (= lambda!294601 lambda!294596)))

(declare-fun bs!1269127 () Bool)

(assert (= bs!1269127 (and d!1744143 d!1743739)))

(assert (=> bs!1269127 (= lambda!294601 lambda!294540)))

(declare-fun bs!1269128 () Bool)

(assert (= bs!1269128 (and d!1744143 d!1743851)))

(assert (=> bs!1269128 (= lambda!294601 lambda!294556)))

(declare-fun bs!1269129 () Bool)

(assert (= bs!1269129 (and d!1744143 d!1743853)))

(assert (=> bs!1269129 (= lambda!294601 lambda!294557)))

(declare-fun bs!1269130 () Bool)

(assert (= bs!1269130 (and d!1744143 d!1743841)))

(assert (=> bs!1269130 (= lambda!294601 lambda!294553)))

(assert (=> d!1744143 (= (inv!81944 (h!69061 (t!375974 zl!343))) (forall!14664 (exprs!5363 (h!69061 (t!375974 zl!343))) lambda!294601))))

(declare-fun bs!1269131 () Bool)

(assert (= bs!1269131 d!1744143))

(declare-fun m!6510262 () Bool)

(assert (=> bs!1269131 m!6510262))

(assert (=> b!5501927 d!1744143))

(declare-fun d!1744145 () Bool)

(assert (=> d!1744145 (= (nullable!5516 (regOne!31471 r!7292)) (nullableFct!1651 (regOne!31471 r!7292)))))

(declare-fun bs!1269132 () Bool)

(assert (= bs!1269132 d!1744145))

(declare-fun m!6510264 () Bool)

(assert (=> bs!1269132 m!6510264))

(assert (=> b!5501857 d!1744145))

(declare-fun d!1744147 () Bool)

(assert (=> d!1744147 (= (nullable!5516 (regTwo!31471 r!7292)) (nullableFct!1651 (regTwo!31471 r!7292)))))

(declare-fun bs!1269133 () Bool)

(assert (= bs!1269133 d!1744147))

(declare-fun m!6510266 () Bool)

(assert (=> bs!1269133 m!6510266))

(assert (=> b!5501832 d!1744147))

(declare-fun d!1744149 () Bool)

(assert (=> d!1744149 (= (isEmpty!34398 (exprs!5363 (h!69061 zl!343))) ((_ is Nil!62612) (exprs!5363 (h!69061 zl!343))))))

(assert (=> b!5501717 d!1744149))

(declare-fun d!1744151 () Bool)

(assert (=> d!1744151 (= (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (nullableFct!1651 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(declare-fun bs!1269134 () Bool)

(assert (= bs!1269134 d!1744151))

(declare-fun m!6510268 () Bool)

(assert (=> bs!1269134 m!6510268))

(assert (=> b!5501663 d!1744151))

(declare-fun d!1744153 () Bool)

(assert (=> d!1744153 true))

(declare-fun setRes!36484 () Bool)

(assert (=> d!1744153 setRes!36484))

(declare-fun condSetEmpty!36484 () Bool)

(declare-fun res!2345334 () (InoxSet Context!9726))

(assert (=> d!1744153 (= condSetEmpty!36484 (= res!2345334 ((as const (Array Context!9726 Bool)) false)))))

(assert (=> d!1744153 (= (choose!41803 lt!2243679 lambda!294515) res!2345334)))

(declare-fun setIsEmpty!36484 () Bool)

(assert (=> setIsEmpty!36484 setRes!36484))

(declare-fun tp!1514025 () Bool)

(declare-fun setNonEmpty!36484 () Bool)

(declare-fun setElem!36484 () Context!9726)

(declare-fun e!3403570 () Bool)

(assert (=> setNonEmpty!36484 (= setRes!36484 (and tp!1514025 (inv!81944 setElem!36484) e!3403570))))

(declare-fun setRest!36484 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36484 (= res!2345334 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36484 true) setRest!36484))))

(declare-fun b!5502511 () Bool)

(declare-fun tp!1514024 () Bool)

(assert (=> b!5502511 (= e!3403570 tp!1514024)))

(assert (= (and d!1744153 condSetEmpty!36484) setIsEmpty!36484))

(assert (= (and d!1744153 (not condSetEmpty!36484)) setNonEmpty!36484))

(assert (= setNonEmpty!36484 b!5502511))

(declare-fun m!6510270 () Bool)

(assert (=> setNonEmpty!36484 m!6510270))

(assert (=> d!1743783 d!1744153))

(declare-fun d!1744155 () Bool)

(declare-fun c!961192 () Bool)

(assert (=> d!1744155 (= c!961192 (isEmpty!34399 (tail!10879 (t!375975 s!2326))))))

(declare-fun e!3403571 () Bool)

(assert (=> d!1744155 (= (matchZipper!1647 (derivationStepZipper!1590 lt!2243683 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))) e!3403571)))

(declare-fun b!5502512 () Bool)

(assert (=> b!5502512 (= e!3403571 (nullableZipper!1521 (derivationStepZipper!1590 lt!2243683 (head!11784 (t!375975 s!2326)))))))

(declare-fun b!5502513 () Bool)

(assert (=> b!5502513 (= e!3403571 (matchZipper!1647 (derivationStepZipper!1590 (derivationStepZipper!1590 lt!2243683 (head!11784 (t!375975 s!2326))) (head!11784 (tail!10879 (t!375975 s!2326)))) (tail!10879 (tail!10879 (t!375975 s!2326)))))))

(assert (= (and d!1744155 c!961192) b!5502512))

(assert (= (and d!1744155 (not c!961192)) b!5502513))

(assert (=> d!1744155 m!6509678))

(declare-fun m!6510272 () Bool)

(assert (=> d!1744155 m!6510272))

(assert (=> b!5502512 m!6509740))

(declare-fun m!6510274 () Bool)

(assert (=> b!5502512 m!6510274))

(assert (=> b!5502513 m!6509678))

(declare-fun m!6510276 () Bool)

(assert (=> b!5502513 m!6510276))

(assert (=> b!5502513 m!6509740))

(assert (=> b!5502513 m!6510276))

(declare-fun m!6510278 () Bool)

(assert (=> b!5502513 m!6510278))

(assert (=> b!5502513 m!6509678))

(declare-fun m!6510280 () Bool)

(assert (=> b!5502513 m!6510280))

(assert (=> b!5502513 m!6510278))

(assert (=> b!5502513 m!6510280))

(declare-fun m!6510282 () Bool)

(assert (=> b!5502513 m!6510282))

(assert (=> b!5501753 d!1744155))

(declare-fun bs!1269135 () Bool)

(declare-fun d!1744157 () Bool)

(assert (= bs!1269135 (and d!1744157 b!5501156)))

(declare-fun lambda!294602 () Int)

(assert (=> bs!1269135 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294602 lambda!294515))))

(declare-fun bs!1269136 () Bool)

(assert (= bs!1269136 (and d!1744157 d!1743817)))

(assert (=> bs!1269136 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294602 lambda!294550))))

(assert (=> d!1744157 true))

(assert (=> d!1744157 (= (derivationStepZipper!1590 lt!2243683 (head!11784 (t!375975 s!2326))) (flatMap!1098 lt!2243683 lambda!294602))))

(declare-fun bs!1269137 () Bool)

(assert (= bs!1269137 d!1744157))

(declare-fun m!6510284 () Bool)

(assert (=> bs!1269137 m!6510284))

(assert (=> b!5501753 d!1744157))

(declare-fun d!1744159 () Bool)

(assert (=> d!1744159 (= (head!11784 (t!375975 s!2326)) (h!69062 (t!375975 s!2326)))))

(assert (=> b!5501753 d!1744159))

(declare-fun d!1744161 () Bool)

(assert (=> d!1744161 (= (tail!10879 (t!375975 s!2326)) (t!375975 (t!375975 s!2326)))))

(assert (=> b!5501753 d!1744161))

(declare-fun b!5502514 () Bool)

(declare-fun e!3403578 () Bool)

(declare-fun e!3403575 () Bool)

(assert (=> b!5502514 (= e!3403578 e!3403575)))

(declare-fun res!2345342 () Bool)

(assert (=> b!5502514 (=> (not res!2345342) (not e!3403575))))

(declare-fun lt!2243762 () Bool)

(assert (=> b!5502514 (= res!2345342 (not lt!2243762))))

(declare-fun b!5502515 () Bool)

(declare-fun res!2345339 () Bool)

(declare-fun e!3403572 () Bool)

(assert (=> b!5502515 (=> res!2345339 e!3403572)))

(assert (=> b!5502515 (= res!2345339 (not (isEmpty!34399 (tail!10879 (tail!10879 s!2326)))))))

(declare-fun b!5502516 () Bool)

(assert (=> b!5502516 (= e!3403572 (not (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326))))))))

(declare-fun b!5502517 () Bool)

(declare-fun e!3403577 () Bool)

(assert (=> b!5502517 (= e!3403577 (nullable!5516 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326))))))

(declare-fun b!5502518 () Bool)

(declare-fun res!2345335 () Bool)

(declare-fun e!3403573 () Bool)

(assert (=> b!5502518 (=> (not res!2345335) (not e!3403573))))

(declare-fun call!406335 () Bool)

(assert (=> b!5502518 (= res!2345335 (not call!406335))))

(declare-fun b!5502519 () Bool)

(declare-fun e!3403574 () Bool)

(assert (=> b!5502519 (= e!3403574 (not lt!2243762))))

(declare-fun b!5502521 () Bool)

(declare-fun e!3403576 () Bool)

(assert (=> b!5502521 (= e!3403576 e!3403574)))

(declare-fun c!961193 () Bool)

(assert (=> b!5502521 (= c!961193 ((_ is EmptyLang!15479) (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326))))))

(declare-fun b!5502522 () Bool)

(declare-fun res!2345338 () Bool)

(assert (=> b!5502522 (=> res!2345338 e!3403578)))

(assert (=> b!5502522 (= res!2345338 (not ((_ is ElementMatch!15479) (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)))))))

(assert (=> b!5502522 (= e!3403574 e!3403578)))

(declare-fun b!5502523 () Bool)

(assert (=> b!5502523 (= e!3403577 (matchR!7664 (derivativeStep!4355 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)) (head!11784 (tail!10879 s!2326))) (tail!10879 (tail!10879 s!2326))))))

(declare-fun b!5502524 () Bool)

(assert (=> b!5502524 (= e!3403575 e!3403572)))

(declare-fun res!2345337 () Bool)

(assert (=> b!5502524 (=> res!2345337 e!3403572)))

(assert (=> b!5502524 (= res!2345337 call!406335)))

(declare-fun b!5502525 () Bool)

(declare-fun res!2345340 () Bool)

(assert (=> b!5502525 (=> res!2345340 e!3403578)))

(assert (=> b!5502525 (= res!2345340 e!3403573)))

(declare-fun res!2345336 () Bool)

(assert (=> b!5502525 (=> (not res!2345336) (not e!3403573))))

(assert (=> b!5502525 (= res!2345336 lt!2243762)))

(declare-fun bm!406330 () Bool)

(assert (=> bm!406330 (= call!406335 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun b!5502520 () Bool)

(declare-fun res!2345341 () Bool)

(assert (=> b!5502520 (=> (not res!2345341) (not e!3403573))))

(assert (=> b!5502520 (= res!2345341 (isEmpty!34399 (tail!10879 (tail!10879 s!2326))))))

(declare-fun d!1744163 () Bool)

(assert (=> d!1744163 e!3403576))

(declare-fun c!961194 () Bool)

(assert (=> d!1744163 (= c!961194 ((_ is EmptyExpr!15479) (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326))))))

(assert (=> d!1744163 (= lt!2243762 e!3403577)))

(declare-fun c!961195 () Bool)

(assert (=> d!1744163 (= c!961195 (isEmpty!34399 (tail!10879 s!2326)))))

(assert (=> d!1744163 (validRegex!7215 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)))))

(assert (=> d!1744163 (= (matchR!7664 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)) (tail!10879 s!2326)) lt!2243762)))

(declare-fun b!5502526 () Bool)

(assert (=> b!5502526 (= e!3403573 (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)))))))

(declare-fun b!5502527 () Bool)

(assert (=> b!5502527 (= e!3403576 (= lt!2243762 call!406335))))

(assert (= (and d!1744163 c!961195) b!5502517))

(assert (= (and d!1744163 (not c!961195)) b!5502523))

(assert (= (and d!1744163 c!961194) b!5502527))

(assert (= (and d!1744163 (not c!961194)) b!5502521))

(assert (= (and b!5502521 c!961193) b!5502519))

(assert (= (and b!5502521 (not c!961193)) b!5502522))

(assert (= (and b!5502522 (not res!2345338)) b!5502525))

(assert (= (and b!5502525 res!2345336) b!5502518))

(assert (= (and b!5502518 res!2345335) b!5502520))

(assert (= (and b!5502520 res!2345341) b!5502526))

(assert (= (and b!5502525 (not res!2345340)) b!5502514))

(assert (= (and b!5502514 res!2345342) b!5502524))

(assert (= (and b!5502524 (not res!2345337)) b!5502515))

(assert (= (and b!5502515 (not res!2345339)) b!5502516))

(assert (= (or b!5502527 b!5502524 b!5502518) bm!406330))

(assert (=> b!5502517 m!6509758))

(declare-fun m!6510286 () Bool)

(assert (=> b!5502517 m!6510286))

(assert (=> bm!406330 m!6509620))

(assert (=> bm!406330 m!6509756))

(assert (=> b!5502515 m!6509620))

(declare-fun m!6510288 () Bool)

(assert (=> b!5502515 m!6510288))

(assert (=> b!5502515 m!6510288))

(declare-fun m!6510290 () Bool)

(assert (=> b!5502515 m!6510290))

(assert (=> b!5502523 m!6509620))

(declare-fun m!6510292 () Bool)

(assert (=> b!5502523 m!6510292))

(assert (=> b!5502523 m!6509758))

(assert (=> b!5502523 m!6510292))

(declare-fun m!6510294 () Bool)

(assert (=> b!5502523 m!6510294))

(assert (=> b!5502523 m!6509620))

(assert (=> b!5502523 m!6510288))

(assert (=> b!5502523 m!6510294))

(assert (=> b!5502523 m!6510288))

(declare-fun m!6510296 () Bool)

(assert (=> b!5502523 m!6510296))

(assert (=> b!5502516 m!6509620))

(assert (=> b!5502516 m!6510292))

(assert (=> b!5502520 m!6509620))

(assert (=> b!5502520 m!6510288))

(assert (=> b!5502520 m!6510288))

(assert (=> b!5502520 m!6510290))

(assert (=> d!1744163 m!6509620))

(assert (=> d!1744163 m!6509756))

(assert (=> d!1744163 m!6509758))

(declare-fun m!6510298 () Bool)

(assert (=> d!1744163 m!6510298))

(assert (=> b!5502526 m!6509620))

(assert (=> b!5502526 m!6510292))

(assert (=> b!5501838 d!1744163))

(declare-fun b!5502548 () Bool)

(declare-fun e!3403590 () Regex!15479)

(declare-fun e!3403592 () Regex!15479)

(assert (=> b!5502548 (= e!3403590 e!3403592)))

(declare-fun c!961207 () Bool)

(assert (=> b!5502548 (= c!961207 ((_ is Star!15479) (regTwo!31471 r!7292)))))

(declare-fun d!1744165 () Bool)

(declare-fun lt!2243765 () Regex!15479)

(assert (=> d!1744165 (validRegex!7215 lt!2243765)))

(declare-fun e!3403591 () Regex!15479)

(assert (=> d!1744165 (= lt!2243765 e!3403591)))

(declare-fun c!961206 () Bool)

(assert (=> d!1744165 (= c!961206 (or ((_ is EmptyExpr!15479) (regTwo!31471 r!7292)) ((_ is EmptyLang!15479) (regTwo!31471 r!7292))))))

(assert (=> d!1744165 (validRegex!7215 (regTwo!31471 r!7292))))

(assert (=> d!1744165 (= (derivativeStep!4355 (regTwo!31471 r!7292) (head!11784 s!2326)) lt!2243765)))

(declare-fun bm!406339 () Bool)

(declare-fun call!406345 () Regex!15479)

(declare-fun c!961210 () Bool)

(assert (=> bm!406339 (= call!406345 (derivativeStep!4355 (ite c!961210 (regOne!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))) (head!11784 s!2326)))))

(declare-fun b!5502549 () Bool)

(declare-fun call!406344 () Regex!15479)

(assert (=> b!5502549 (= e!3403592 (Concat!24324 call!406344 (regTwo!31471 r!7292)))))

(declare-fun b!5502550 () Bool)

(declare-fun e!3403589 () Regex!15479)

(assert (=> b!5502550 (= e!3403591 e!3403589)))

(declare-fun c!961209 () Bool)

(assert (=> b!5502550 (= c!961209 ((_ is ElementMatch!15479) (regTwo!31471 r!7292)))))

(declare-fun b!5502551 () Bool)

(assert (=> b!5502551 (= c!961210 ((_ is Union!15479) (regTwo!31471 r!7292)))))

(assert (=> b!5502551 (= e!3403589 e!3403590)))

(declare-fun call!406346 () Regex!15479)

(declare-fun bm!406340 () Bool)

(declare-fun c!961208 () Bool)

(assert (=> bm!406340 (= call!406346 (derivativeStep!4355 (ite c!961210 (regTwo!31471 (regTwo!31471 r!7292)) (ite c!961207 (reg!15808 (regTwo!31471 r!7292)) (ite c!961208 (regTwo!31470 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))) (head!11784 s!2326)))))

(declare-fun call!406347 () Regex!15479)

(declare-fun e!3403593 () Regex!15479)

(declare-fun b!5502552 () Bool)

(assert (=> b!5502552 (= e!3403593 (Union!15479 (Concat!24324 call!406345 (regTwo!31470 (regTwo!31471 r!7292))) call!406347))))

(declare-fun b!5502553 () Bool)

(assert (=> b!5502553 (= e!3403593 (Union!15479 (Concat!24324 call!406347 (regTwo!31470 (regTwo!31471 r!7292))) EmptyLang!15479))))

(declare-fun b!5502554 () Bool)

(assert (=> b!5502554 (= e!3403591 EmptyLang!15479)))

(declare-fun b!5502555 () Bool)

(assert (=> b!5502555 (= e!3403589 (ite (= (head!11784 s!2326) (c!960803 (regTwo!31471 r!7292))) EmptyExpr!15479 EmptyLang!15479))))

(declare-fun b!5502556 () Bool)

(assert (=> b!5502556 (= c!961208 (nullable!5516 (regOne!31470 (regTwo!31471 r!7292))))))

(assert (=> b!5502556 (= e!3403592 e!3403593)))

(declare-fun bm!406341 () Bool)

(assert (=> bm!406341 (= call!406347 call!406344)))

(declare-fun b!5502557 () Bool)

(assert (=> b!5502557 (= e!3403590 (Union!15479 call!406345 call!406346))))

(declare-fun bm!406342 () Bool)

(assert (=> bm!406342 (= call!406344 call!406346)))

(assert (= (and d!1744165 c!961206) b!5502554))

(assert (= (and d!1744165 (not c!961206)) b!5502550))

(assert (= (and b!5502550 c!961209) b!5502555))

(assert (= (and b!5502550 (not c!961209)) b!5502551))

(assert (= (and b!5502551 c!961210) b!5502557))

(assert (= (and b!5502551 (not c!961210)) b!5502548))

(assert (= (and b!5502548 c!961207) b!5502549))

(assert (= (and b!5502548 (not c!961207)) b!5502556))

(assert (= (and b!5502556 c!961208) b!5502552))

(assert (= (and b!5502556 (not c!961208)) b!5502553))

(assert (= (or b!5502552 b!5502553) bm!406341))

(assert (= (or b!5502549 bm!406341) bm!406342))

(assert (= (or b!5502557 bm!406342) bm!406340))

(assert (= (or b!5502557 b!5502552) bm!406339))

(declare-fun m!6510300 () Bool)

(assert (=> d!1744165 m!6510300))

(assert (=> d!1744165 m!6509762))

(assert (=> bm!406339 m!6509616))

(declare-fun m!6510302 () Bool)

(assert (=> bm!406339 m!6510302))

(assert (=> bm!406340 m!6509616))

(declare-fun m!6510304 () Bool)

(assert (=> bm!406340 m!6510304))

(assert (=> b!5502556 m!6509712))

(assert (=> b!5501838 d!1744165))

(assert (=> b!5501838 d!1744119))

(declare-fun d!1744167 () Bool)

(assert (=> d!1744167 (= (tail!10879 s!2326) (t!375975 s!2326))))

(assert (=> b!5501838 d!1744167))

(declare-fun d!1744169 () Bool)

(assert (=> d!1744169 (= (isEmpty!34398 (tail!10878 (exprs!5363 (h!69061 zl!343)))) ((_ is Nil!62612) (tail!10878 (exprs!5363 (h!69061 zl!343)))))))

(assert (=> b!5501723 d!1744169))

(declare-fun d!1744171 () Bool)

(assert (=> d!1744171 (= (tail!10878 (exprs!5363 (h!69061 zl!343))) (t!375973 (exprs!5363 (h!69061 zl!343))))))

(assert (=> b!5501723 d!1744171))

(declare-fun c!961214 () Bool)

(declare-fun d!1744173 () Bool)

(assert (=> d!1744173 (= c!961214 (and ((_ is ElementMatch!15479) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (= (c!960803 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (h!69062 s!2326))))))

(declare-fun e!3403594 () (InoxSet Context!9726))

(assert (=> d!1744173 (= (derivationStepZipperDown!825 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))) (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187)) (h!69062 s!2326)) e!3403594)))

(declare-fun bm!406343 () Bool)

(declare-fun call!406352 () (InoxSet Context!9726))

(declare-fun call!406351 () (InoxSet Context!9726))

(assert (=> bm!406343 (= call!406352 call!406351)))

(declare-fun bm!406344 () Bool)

(declare-fun c!961215 () Bool)

(declare-fun call!406350 () List!62736)

(declare-fun call!406349 () (InoxSet Context!9726))

(assert (=> bm!406344 (= call!406349 (derivationStepZipperDown!825 (ite c!961215 (regTwo!31471 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (regOne!31470 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))))) (ite c!961215 (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187)) (Context!9727 call!406350)) (h!69062 s!2326)))))

(declare-fun bm!406345 () Bool)

(declare-fun call!406353 () (InoxSet Context!9726))

(assert (=> bm!406345 (= call!406351 call!406353)))

(declare-fun bm!406346 () Bool)

(declare-fun call!406348 () List!62736)

(assert (=> bm!406346 (= call!406348 call!406350)))

(declare-fun b!5502558 () Bool)

(declare-fun c!961211 () Bool)

(assert (=> b!5502558 (= c!961211 ((_ is Star!15479) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))))))

(declare-fun e!3403596 () (InoxSet Context!9726))

(declare-fun e!3403598 () (InoxSet Context!9726))

(assert (=> b!5502558 (= e!3403596 e!3403598)))

(declare-fun b!5502559 () Bool)

(assert (=> b!5502559 (= e!3403598 call!406352)))

(declare-fun b!5502560 () Bool)

(declare-fun c!961213 () Bool)

(declare-fun e!3403595 () Bool)

(assert (=> b!5502560 (= c!961213 e!3403595)))

(declare-fun res!2345343 () Bool)

(assert (=> b!5502560 (=> (not res!2345343) (not e!3403595))))

(assert (=> b!5502560 (= res!2345343 ((_ is Concat!24324) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))))))

(declare-fun e!3403597 () (InoxSet Context!9726))

(declare-fun e!3403599 () (InoxSet Context!9726))

(assert (=> b!5502560 (= e!3403597 e!3403599)))

(declare-fun b!5502561 () Bool)

(assert (=> b!5502561 (= e!3403594 e!3403597)))

(assert (=> b!5502561 (= c!961215 ((_ is Union!15479) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))))))

(declare-fun c!961212 () Bool)

(declare-fun bm!406347 () Bool)

(assert (=> bm!406347 (= call!406350 ($colon$colon!1570 (exprs!5363 (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187))) (ite (or c!961213 c!961212) (regTwo!31470 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))))))))

(declare-fun b!5502562 () Bool)

(assert (=> b!5502562 (= e!3403594 (store ((as const (Array Context!9726 Bool)) false) (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187)) true))))

(declare-fun b!5502563 () Bool)

(assert (=> b!5502563 (= e!3403595 (nullable!5516 (regOne!31470 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))))))))

(declare-fun b!5502564 () Bool)

(assert (=> b!5502564 (= e!3403596 call!406352)))

(declare-fun b!5502565 () Bool)

(assert (=> b!5502565 (= e!3403599 e!3403596)))

(assert (=> b!5502565 (= c!961212 ((_ is Concat!24324) (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))))))

(declare-fun bm!406348 () Bool)

(assert (=> bm!406348 (= call!406353 (derivationStepZipperDown!825 (ite c!961215 (regOne!31471 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (ite c!961213 (regTwo!31470 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (ite c!961212 (regOne!31470 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292)))))) (reg!15808 (ite c!960994 (regOne!31471 (regOne!31471 r!7292)) (ite c!960992 (regTwo!31470 (regOne!31471 r!7292)) (ite c!960991 (regOne!31470 (regOne!31471 r!7292)) (reg!15808 (regOne!31471 r!7292))))))))) (ite (or c!961215 c!961213) (ite (or c!960994 c!960992) lt!2243674 (Context!9727 call!406187)) (Context!9727 call!406348)) (h!69062 s!2326)))))

(declare-fun b!5502566 () Bool)

(assert (=> b!5502566 (= e!3403599 ((_ map or) call!406349 call!406351))))

(declare-fun b!5502567 () Bool)

(assert (=> b!5502567 (= e!3403597 ((_ map or) call!406353 call!406349))))

(declare-fun b!5502568 () Bool)

(assert (=> b!5502568 (= e!3403598 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744173 c!961214) b!5502562))

(assert (= (and d!1744173 (not c!961214)) b!5502561))

(assert (= (and b!5502561 c!961215) b!5502567))

(assert (= (and b!5502561 (not c!961215)) b!5502560))

(assert (= (and b!5502560 res!2345343) b!5502563))

(assert (= (and b!5502560 c!961213) b!5502566))

(assert (= (and b!5502560 (not c!961213)) b!5502565))

(assert (= (and b!5502565 c!961212) b!5502564))

(assert (= (and b!5502565 (not c!961212)) b!5502558))

(assert (= (and b!5502558 c!961211) b!5502559))

(assert (= (and b!5502558 (not c!961211)) b!5502568))

(assert (= (or b!5502564 b!5502559) bm!406346))

(assert (= (or b!5502564 b!5502559) bm!406343))

(assert (= (or b!5502566 bm!406346) bm!406347))

(assert (= (or b!5502566 bm!406343) bm!406345))

(assert (= (or b!5502567 b!5502566) bm!406344))

(assert (= (or b!5502567 bm!406345) bm!406348))

(declare-fun m!6510306 () Bool)

(assert (=> bm!406344 m!6510306))

(declare-fun m!6510308 () Bool)

(assert (=> bm!406348 m!6510308))

(declare-fun m!6510310 () Bool)

(assert (=> b!5502562 m!6510310))

(declare-fun m!6510312 () Bool)

(assert (=> b!5502563 m!6510312))

(declare-fun m!6510314 () Bool)

(assert (=> bm!406347 m!6510314))

(assert (=> bm!406187 d!1744173))

(assert (=> b!5501751 d!1743855))

(declare-fun d!1744175 () Bool)

(declare-fun res!2345348 () Bool)

(declare-fun e!3403604 () Bool)

(assert (=> d!1744175 (=> res!2345348 e!3403604)))

(assert (=> d!1744175 (= res!2345348 ((_ is Nil!62612) lt!2243714))))

(assert (=> d!1744175 (= (forall!14664 lt!2243714 lambda!294540) e!3403604)))

(declare-fun b!5502573 () Bool)

(declare-fun e!3403605 () Bool)

(assert (=> b!5502573 (= e!3403604 e!3403605)))

(declare-fun res!2345349 () Bool)

(assert (=> b!5502573 (=> (not res!2345349) (not e!3403605))))

(declare-fun dynLambda!24470 (Int Regex!15479) Bool)

(assert (=> b!5502573 (= res!2345349 (dynLambda!24470 lambda!294540 (h!69060 lt!2243714)))))

(declare-fun b!5502574 () Bool)

(assert (=> b!5502574 (= e!3403605 (forall!14664 (t!375973 lt!2243714) lambda!294540))))

(assert (= (and d!1744175 (not res!2345348)) b!5502573))

(assert (= (and b!5502573 res!2345349) b!5502574))

(declare-fun b_lambda!208683 () Bool)

(assert (=> (not b_lambda!208683) (not b!5502573)))

(declare-fun m!6510316 () Bool)

(assert (=> b!5502573 m!6510316))

(declare-fun m!6510318 () Bool)

(assert (=> b!5502574 m!6510318))

(assert (=> d!1743739 d!1744175))

(assert (=> d!1743775 d!1743783))

(declare-fun d!1744177 () Bool)

(assert (=> d!1744177 (= (flatMap!1098 lt!2243679 lambda!294515) (dynLambda!24467 lambda!294515 lt!2243664))))

(assert (=> d!1744177 true))

(declare-fun _$13!2012 () Unit!155418)

(assert (=> d!1744177 (= (choose!41804 lt!2243679 lt!2243664 lambda!294515) _$13!2012)))

(declare-fun b_lambda!208685 () Bool)

(assert (=> (not b_lambda!208685) (not d!1744177)))

(declare-fun bs!1269138 () Bool)

(assert (= bs!1269138 d!1744177))

(assert (=> bs!1269138 m!6509262))

(assert (=> bs!1269138 m!6509524))

(assert (=> d!1743775 d!1744177))

(declare-fun c!961219 () Bool)

(declare-fun d!1744179 () Bool)

(assert (=> d!1744179 (= c!961219 (and ((_ is ElementMatch!15479) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (= (c!960803 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (h!69062 s!2326))))))

(declare-fun e!3403606 () (InoxSet Context!9726))

(assert (=> d!1744179 (= (derivationStepZipperDown!825 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)) (ite c!960962 lt!2243674 (Context!9727 call!406167)) (h!69062 s!2326)) e!3403606)))

(declare-fun bm!406349 () Bool)

(declare-fun call!406358 () (InoxSet Context!9726))

(declare-fun call!406357 () (InoxSet Context!9726))

(assert (=> bm!406349 (= call!406358 call!406357)))

(declare-fun call!406355 () (InoxSet Context!9726))

(declare-fun call!406356 () List!62736)

(declare-fun bm!406350 () Bool)

(declare-fun c!961220 () Bool)

(assert (=> bm!406350 (= call!406355 (derivationStepZipperDown!825 (ite c!961220 (regTwo!31471 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (regOne!31470 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)))) (ite c!961220 (ite c!960962 lt!2243674 (Context!9727 call!406167)) (Context!9727 call!406356)) (h!69062 s!2326)))))

(declare-fun bm!406351 () Bool)

(declare-fun call!406359 () (InoxSet Context!9726))

(assert (=> bm!406351 (= call!406357 call!406359)))

(declare-fun bm!406352 () Bool)

(declare-fun call!406354 () List!62736)

(assert (=> bm!406352 (= call!406354 call!406356)))

(declare-fun b!5502575 () Bool)

(declare-fun c!961216 () Bool)

(assert (=> b!5502575 (= c!961216 ((_ is Star!15479) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))))))

(declare-fun e!3403608 () (InoxSet Context!9726))

(declare-fun e!3403610 () (InoxSet Context!9726))

(assert (=> b!5502575 (= e!3403608 e!3403610)))

(declare-fun b!5502576 () Bool)

(assert (=> b!5502576 (= e!3403610 call!406358)))

(declare-fun b!5502577 () Bool)

(declare-fun c!961218 () Bool)

(declare-fun e!3403607 () Bool)

(assert (=> b!5502577 (= c!961218 e!3403607)))

(declare-fun res!2345350 () Bool)

(assert (=> b!5502577 (=> (not res!2345350) (not e!3403607))))

(assert (=> b!5502577 (= res!2345350 ((_ is Concat!24324) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))))))

(declare-fun e!3403609 () (InoxSet Context!9726))

(declare-fun e!3403611 () (InoxSet Context!9726))

(assert (=> b!5502577 (= e!3403609 e!3403611)))

(declare-fun b!5502578 () Bool)

(assert (=> b!5502578 (= e!3403606 e!3403609)))

(assert (=> b!5502578 (= c!961220 ((_ is Union!15479) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))))))

(declare-fun bm!406353 () Bool)

(declare-fun c!961217 () Bool)

(assert (=> bm!406353 (= call!406356 ($colon$colon!1570 (exprs!5363 (ite c!960962 lt!2243674 (Context!9727 call!406167))) (ite (or c!961218 c!961217) (regTwo!31470 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)))))))

(declare-fun b!5502579 () Bool)

(assert (=> b!5502579 (= e!3403606 (store ((as const (Array Context!9726 Bool)) false) (ite c!960962 lt!2243674 (Context!9727 call!406167)) true))))

(declare-fun b!5502580 () Bool)

(assert (=> b!5502580 (= e!3403607 (nullable!5516 (regOne!31470 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)))))))

(declare-fun b!5502581 () Bool)

(assert (=> b!5502581 (= e!3403608 call!406358)))

(declare-fun b!5502582 () Bool)

(assert (=> b!5502582 (= e!3403611 e!3403608)))

(assert (=> b!5502582 (= c!961217 ((_ is Concat!24324) (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))))))

(declare-fun bm!406354 () Bool)

(assert (=> bm!406354 (= call!406359 (derivationStepZipperDown!825 (ite c!961220 (regOne!31471 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (ite c!961218 (regTwo!31470 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (ite c!961217 (regOne!31470 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292))) (reg!15808 (ite c!960962 (regTwo!31471 r!7292) (regOne!31470 r!7292)))))) (ite (or c!961220 c!961218) (ite c!960962 lt!2243674 (Context!9727 call!406167)) (Context!9727 call!406354)) (h!69062 s!2326)))))

(declare-fun b!5502583 () Bool)

(assert (=> b!5502583 (= e!3403611 ((_ map or) call!406355 call!406357))))

(declare-fun b!5502584 () Bool)

(assert (=> b!5502584 (= e!3403609 ((_ map or) call!406359 call!406355))))

(declare-fun b!5502585 () Bool)

(assert (=> b!5502585 (= e!3403610 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744179 c!961219) b!5502579))

(assert (= (and d!1744179 (not c!961219)) b!5502578))

(assert (= (and b!5502578 c!961220) b!5502584))

(assert (= (and b!5502578 (not c!961220)) b!5502577))

(assert (= (and b!5502577 res!2345350) b!5502580))

(assert (= (and b!5502577 c!961218) b!5502583))

(assert (= (and b!5502577 (not c!961218)) b!5502582))

(assert (= (and b!5502582 c!961217) b!5502581))

(assert (= (and b!5502582 (not c!961217)) b!5502575))

(assert (= (and b!5502575 c!961216) b!5502576))

(assert (= (and b!5502575 (not c!961216)) b!5502585))

(assert (= (or b!5502581 b!5502576) bm!406352))

(assert (= (or b!5502581 b!5502576) bm!406349))

(assert (= (or b!5502583 bm!406352) bm!406353))

(assert (= (or b!5502583 bm!406349) bm!406351))

(assert (= (or b!5502584 b!5502583) bm!406350))

(assert (= (or b!5502584 bm!406351) bm!406354))

(declare-fun m!6510320 () Bool)

(assert (=> bm!406350 m!6510320))

(declare-fun m!6510322 () Bool)

(assert (=> bm!406354 m!6510322))

(declare-fun m!6510324 () Bool)

(assert (=> b!5502579 m!6510324))

(declare-fun m!6510326 () Bool)

(assert (=> b!5502580 m!6510326))

(declare-fun m!6510328 () Bool)

(assert (=> bm!406353 m!6510328))

(assert (=> bm!406161 d!1744179))

(declare-fun d!1744181 () Bool)

(assert (=> d!1744181 (= (isConcat!585 lt!2243736) ((_ is Concat!24324) lt!2243736))))

(assert (=> b!5501719 d!1744181))

(assert (=> d!1743865 d!1743863))

(assert (=> d!1743865 d!1743859))

(declare-fun d!1744183 () Bool)

(assert (=> d!1744183 (= (matchR!7664 (regTwo!31471 r!7292) s!2326) (matchRSpec!2582 (regTwo!31471 r!7292) s!2326))))

(assert (=> d!1744183 true))

(declare-fun _$88!3742 () Unit!155418)

(assert (=> d!1744183 (= (choose!41809 (regTwo!31471 r!7292) s!2326) _$88!3742)))

(declare-fun bs!1269139 () Bool)

(assert (= bs!1269139 d!1744183))

(assert (=> bs!1269139 m!6509320))

(assert (=> bs!1269139 m!6509316))

(assert (=> d!1743865 d!1744183))

(declare-fun b!5502586 () Bool)

(declare-fun e!3403612 () Bool)

(declare-fun e!3403614 () Bool)

(assert (=> b!5502586 (= e!3403612 e!3403614)))

(declare-fun res!2345355 () Bool)

(assert (=> b!5502586 (= res!2345355 (not (nullable!5516 (reg!15808 (regTwo!31471 r!7292)))))))

(assert (=> b!5502586 (=> (not res!2345355) (not e!3403614))))

(declare-fun b!5502587 () Bool)

(declare-fun e!3403615 () Bool)

(declare-fun e!3403613 () Bool)

(assert (=> b!5502587 (= e!3403615 e!3403613)))

(declare-fun res!2345352 () Bool)

(assert (=> b!5502587 (=> (not res!2345352) (not e!3403613))))

(declare-fun call!406360 () Bool)

(assert (=> b!5502587 (= res!2345352 call!406360)))

(declare-fun b!5502588 () Bool)

(declare-fun e!3403617 () Bool)

(assert (=> b!5502588 (= e!3403617 e!3403612)))

(declare-fun c!961222 () Bool)

(assert (=> b!5502588 (= c!961222 ((_ is Star!15479) (regTwo!31471 r!7292)))))

(declare-fun b!5502589 () Bool)

(declare-fun call!406362 () Bool)

(assert (=> b!5502589 (= e!3403614 call!406362)))

(declare-fun b!5502590 () Bool)

(declare-fun res!2345354 () Bool)

(assert (=> b!5502590 (=> res!2345354 e!3403615)))

(assert (=> b!5502590 (= res!2345354 (not ((_ is Concat!24324) (regTwo!31471 r!7292))))))

(declare-fun e!3403616 () Bool)

(assert (=> b!5502590 (= e!3403616 e!3403615)))

(declare-fun bm!406355 () Bool)

(declare-fun call!406361 () Bool)

(declare-fun c!961221 () Bool)

(assert (=> bm!406355 (= call!406361 (validRegex!7215 (ite c!961221 (regTwo!31471 (regTwo!31471 r!7292)) (regTwo!31470 (regTwo!31471 r!7292)))))))

(declare-fun bm!406356 () Bool)

(assert (=> bm!406356 (= call!406362 (validRegex!7215 (ite c!961222 (reg!15808 (regTwo!31471 r!7292)) (ite c!961221 (regOne!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))))))

(declare-fun bm!406357 () Bool)

(assert (=> bm!406357 (= call!406360 call!406362)))

(declare-fun d!1744185 () Bool)

(declare-fun res!2345353 () Bool)

(assert (=> d!1744185 (=> res!2345353 e!3403617)))

(assert (=> d!1744185 (= res!2345353 ((_ is ElementMatch!15479) (regTwo!31471 r!7292)))))

(assert (=> d!1744185 (= (validRegex!7215 (regTwo!31471 r!7292)) e!3403617)))

(declare-fun b!5502591 () Bool)

(assert (=> b!5502591 (= e!3403613 call!406361)))

(declare-fun b!5502592 () Bool)

(assert (=> b!5502592 (= e!3403612 e!3403616)))

(assert (=> b!5502592 (= c!961221 ((_ is Union!15479) (regTwo!31471 r!7292)))))

(declare-fun b!5502593 () Bool)

(declare-fun e!3403618 () Bool)

(assert (=> b!5502593 (= e!3403618 call!406361)))

(declare-fun b!5502594 () Bool)

(declare-fun res!2345351 () Bool)

(assert (=> b!5502594 (=> (not res!2345351) (not e!3403618))))

(assert (=> b!5502594 (= res!2345351 call!406360)))

(assert (=> b!5502594 (= e!3403616 e!3403618)))

(assert (= (and d!1744185 (not res!2345353)) b!5502588))

(assert (= (and b!5502588 c!961222) b!5502586))

(assert (= (and b!5502588 (not c!961222)) b!5502592))

(assert (= (and b!5502586 res!2345355) b!5502589))

(assert (= (and b!5502592 c!961221) b!5502594))

(assert (= (and b!5502592 (not c!961221)) b!5502590))

(assert (= (and b!5502594 res!2345351) b!5502593))

(assert (= (and b!5502590 (not res!2345354)) b!5502587))

(assert (= (and b!5502587 res!2345352) b!5502591))

(assert (= (or b!5502593 b!5502591) bm!406355))

(assert (= (or b!5502594 b!5502587) bm!406357))

(assert (= (or b!5502589 bm!406357) bm!406356))

(declare-fun m!6510330 () Bool)

(assert (=> b!5502586 m!6510330))

(declare-fun m!6510332 () Bool)

(assert (=> bm!406355 m!6510332))

(declare-fun m!6510334 () Bool)

(assert (=> bm!406356 m!6510334))

(assert (=> d!1743865 d!1744185))

(declare-fun d!1744187 () Bool)

(assert (=> d!1744187 (= (isEmpty!34399 (tail!10879 s!2326)) ((_ is Nil!62614) (tail!10879 s!2326)))))

(assert (=> b!5501880 d!1744187))

(assert (=> b!5501880 d!1744167))

(assert (=> d!1743875 d!1743873))

(assert (=> d!1743875 d!1743871))

(declare-fun d!1744189 () Bool)

(assert (=> d!1744189 (= (matchR!7664 r!7292 s!2326) (matchRSpec!2582 r!7292 s!2326))))

(assert (=> d!1744189 true))

(declare-fun _$88!3743 () Unit!155418)

(assert (=> d!1744189 (= (choose!41809 r!7292 s!2326) _$88!3743)))

(declare-fun bs!1269140 () Bool)

(assert (= bs!1269140 d!1744189))

(assert (=> bs!1269140 m!6509290))

(assert (=> bs!1269140 m!6509288))

(assert (=> d!1743875 d!1744189))

(assert (=> d!1743875 d!1743839))

(declare-fun d!1744191 () Bool)

(assert (=> d!1744191 (= (Exists!2581 (ite c!961019 lambda!294564 lambda!294565)) (choose!41811 (ite c!961019 lambda!294564 lambda!294565)))))

(declare-fun bs!1269141 () Bool)

(assert (= bs!1269141 d!1744191))

(declare-fun m!6510336 () Bool)

(assert (=> bs!1269141 m!6510336))

(assert (=> bm!406197 d!1744191))

(assert (=> d!1743869 d!1744121))

(declare-fun b!5502595 () Bool)

(declare-fun e!3403619 () Bool)

(declare-fun e!3403621 () Bool)

(assert (=> b!5502595 (= e!3403619 e!3403621)))

(declare-fun res!2345360 () Bool)

(assert (=> b!5502595 (= res!2345360 (not (nullable!5516 (reg!15808 (regOne!31471 r!7292)))))))

(assert (=> b!5502595 (=> (not res!2345360) (not e!3403621))))

(declare-fun b!5502596 () Bool)

(declare-fun e!3403622 () Bool)

(declare-fun e!3403620 () Bool)

(assert (=> b!5502596 (= e!3403622 e!3403620)))

(declare-fun res!2345357 () Bool)

(assert (=> b!5502596 (=> (not res!2345357) (not e!3403620))))

(declare-fun call!406363 () Bool)

(assert (=> b!5502596 (= res!2345357 call!406363)))

(declare-fun b!5502597 () Bool)

(declare-fun e!3403624 () Bool)

(assert (=> b!5502597 (= e!3403624 e!3403619)))

(declare-fun c!961224 () Bool)

(assert (=> b!5502597 (= c!961224 ((_ is Star!15479) (regOne!31471 r!7292)))))

(declare-fun b!5502598 () Bool)

(declare-fun call!406365 () Bool)

(assert (=> b!5502598 (= e!3403621 call!406365)))

(declare-fun b!5502599 () Bool)

(declare-fun res!2345359 () Bool)

(assert (=> b!5502599 (=> res!2345359 e!3403622)))

(assert (=> b!5502599 (= res!2345359 (not ((_ is Concat!24324) (regOne!31471 r!7292))))))

(declare-fun e!3403623 () Bool)

(assert (=> b!5502599 (= e!3403623 e!3403622)))

(declare-fun bm!406358 () Bool)

(declare-fun call!406364 () Bool)

(declare-fun c!961223 () Bool)

(assert (=> bm!406358 (= call!406364 (validRegex!7215 (ite c!961223 (regTwo!31471 (regOne!31471 r!7292)) (regTwo!31470 (regOne!31471 r!7292)))))))

(declare-fun bm!406359 () Bool)

(assert (=> bm!406359 (= call!406365 (validRegex!7215 (ite c!961224 (reg!15808 (regOne!31471 r!7292)) (ite c!961223 (regOne!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))))))

(declare-fun bm!406360 () Bool)

(assert (=> bm!406360 (= call!406363 call!406365)))

(declare-fun d!1744193 () Bool)

(declare-fun res!2345358 () Bool)

(assert (=> d!1744193 (=> res!2345358 e!3403624)))

(assert (=> d!1744193 (= res!2345358 ((_ is ElementMatch!15479) (regOne!31471 r!7292)))))

(assert (=> d!1744193 (= (validRegex!7215 (regOne!31471 r!7292)) e!3403624)))

(declare-fun b!5502600 () Bool)

(assert (=> b!5502600 (= e!3403620 call!406364)))

(declare-fun b!5502601 () Bool)

(assert (=> b!5502601 (= e!3403619 e!3403623)))

(assert (=> b!5502601 (= c!961223 ((_ is Union!15479) (regOne!31471 r!7292)))))

(declare-fun b!5502602 () Bool)

(declare-fun e!3403625 () Bool)

(assert (=> b!5502602 (= e!3403625 call!406364)))

(declare-fun b!5502603 () Bool)

(declare-fun res!2345356 () Bool)

(assert (=> b!5502603 (=> (not res!2345356) (not e!3403625))))

(assert (=> b!5502603 (= res!2345356 call!406363)))

(assert (=> b!5502603 (= e!3403623 e!3403625)))

(assert (= (and d!1744193 (not res!2345358)) b!5502597))

(assert (= (and b!5502597 c!961224) b!5502595))

(assert (= (and b!5502597 (not c!961224)) b!5502601))

(assert (= (and b!5502595 res!2345360) b!5502598))

(assert (= (and b!5502601 c!961223) b!5502603))

(assert (= (and b!5502601 (not c!961223)) b!5502599))

(assert (= (and b!5502603 res!2345356) b!5502602))

(assert (= (and b!5502599 (not res!2345359)) b!5502596))

(assert (= (and b!5502596 res!2345357) b!5502600))

(assert (= (or b!5502602 b!5502600) bm!406358))

(assert (= (or b!5502603 b!5502596) bm!406360))

(assert (= (or b!5502598 bm!406360) bm!406359))

(declare-fun m!6510338 () Bool)

(assert (=> b!5502595 m!6510338))

(declare-fun m!6510340 () Bool)

(assert (=> bm!406358 m!6510340))

(declare-fun m!6510342 () Bool)

(assert (=> bm!406359 m!6510342))

(assert (=> d!1743869 d!1744193))

(assert (=> b!5501841 d!1744119))

(declare-fun d!1744195 () Bool)

(assert (=> d!1744195 (= (Exists!2581 (ite c!961006 lambda!294562 lambda!294563)) (choose!41811 (ite c!961006 lambda!294562 lambda!294563)))))

(declare-fun bs!1269142 () Bool)

(assert (= bs!1269142 d!1744195))

(declare-fun m!6510344 () Bool)

(assert (=> bs!1269142 m!6510344))

(assert (=> bm!406192 d!1744195))

(assert (=> b!5501871 d!1743867))

(declare-fun d!1744197 () Bool)

(assert (=> d!1744197 (= (isEmptyLang!1073 lt!2243704) ((_ is EmptyLang!15479) lt!2243704))))

(assert (=> b!5501348 d!1744197))

(declare-fun d!1744199 () Bool)

(declare-fun c!961225 () Bool)

(assert (=> d!1744199 (= c!961225 (isEmpty!34399 (t!375975 s!2326)))))

(declare-fun e!3403626 () Bool)

(assert (=> d!1744199 (= (matchZipper!1647 ((_ map or) lt!2243661 lt!2243683) (t!375975 s!2326)) e!3403626)))

(declare-fun b!5502604 () Bool)

(assert (=> b!5502604 (= e!3403626 (nullableZipper!1521 ((_ map or) lt!2243661 lt!2243683)))))

(declare-fun b!5502605 () Bool)

(assert (=> b!5502605 (= e!3403626 (matchZipper!1647 (derivationStepZipper!1590 ((_ map or) lt!2243661 lt!2243683) (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))))))

(assert (= (and d!1744199 c!961225) b!5502604))

(assert (= (and d!1744199 (not c!961225)) b!5502605))

(assert (=> d!1744199 m!6509670))

(declare-fun m!6510346 () Bool)

(assert (=> b!5502604 m!6510346))

(assert (=> b!5502605 m!6509674))

(assert (=> b!5502605 m!6509674))

(declare-fun m!6510348 () Bool)

(assert (=> b!5502605 m!6510348))

(assert (=> b!5502605 m!6509678))

(assert (=> b!5502605 m!6510348))

(assert (=> b!5502605 m!6509678))

(declare-fun m!6510350 () Bool)

(assert (=> b!5502605 m!6510350))

(assert (=> d!1743849 d!1744199))

(assert (=> d!1743849 d!1743847))

(declare-fun e!3403629 () Bool)

(declare-fun d!1744201 () Bool)

(assert (=> d!1744201 (= (matchZipper!1647 ((_ map or) lt!2243661 lt!2243683) (t!375975 s!2326)) e!3403629)))

(declare-fun res!2345363 () Bool)

(assert (=> d!1744201 (=> res!2345363 e!3403629)))

(assert (=> d!1744201 (= res!2345363 (matchZipper!1647 lt!2243661 (t!375975 s!2326)))))

(assert (=> d!1744201 true))

(declare-fun _$48!1060 () Unit!155418)

(assert (=> d!1744201 (= (choose!41808 lt!2243661 lt!2243683 (t!375975 s!2326)) _$48!1060)))

(declare-fun b!5502608 () Bool)

(assert (=> b!5502608 (= e!3403629 (matchZipper!1647 lt!2243683 (t!375975 s!2326)))))

(assert (= (and d!1744201 (not res!2345363)) b!5502608))

(assert (=> d!1744201 m!6509730))

(assert (=> d!1744201 m!6509280))

(assert (=> b!5502608 m!6509300))

(assert (=> d!1743849 d!1744201))

(assert (=> d!1743861 d!1743869))

(assert (=> d!1743861 d!1743867))

(declare-fun d!1744203 () Bool)

(assert (=> d!1744203 (= (matchR!7664 (regOne!31471 r!7292) s!2326) (matchRSpec!2582 (regOne!31471 r!7292) s!2326))))

(assert (=> d!1744203 true))

(declare-fun _$88!3744 () Unit!155418)

(assert (=> d!1744203 (= (choose!41809 (regOne!31471 r!7292) s!2326) _$88!3744)))

(declare-fun bs!1269143 () Bool)

(assert (= bs!1269143 d!1744203))

(assert (=> bs!1269143 m!6509326))

(assert (=> bs!1269143 m!6509322))

(assert (=> d!1743861 d!1744203))

(assert (=> d!1743861 d!1744193))

(declare-fun d!1744205 () Bool)

(assert (=> d!1744205 (= ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960987 c!960986) (regTwo!31470 (regTwo!31471 r!7292)) (regTwo!31471 r!7292))) (Cons!62612 (ite (or c!960987 c!960986) (regTwo!31470 (regTwo!31471 r!7292)) (regTwo!31471 r!7292)) (exprs!5363 lt!2243674)))))

(assert (=> bm!406180 d!1744205))

(declare-fun d!1744207 () Bool)

(declare-fun c!961229 () Bool)

(assert (=> d!1744207 (= c!961229 (and ((_ is ElementMatch!15479) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (= (c!960803 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (h!69062 s!2326))))))

(declare-fun e!3403630 () (InoxSet Context!9726))

(assert (=> d!1744207 (= (derivationStepZipperDown!825 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))) (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165)) (h!69062 s!2326)) e!3403630)))

(declare-fun bm!406361 () Bool)

(declare-fun call!406370 () (InoxSet Context!9726))

(declare-fun call!406369 () (InoxSet Context!9726))

(assert (=> bm!406361 (= call!406370 call!406369)))

(declare-fun call!406367 () (InoxSet Context!9726))

(declare-fun c!961230 () Bool)

(declare-fun bm!406362 () Bool)

(declare-fun call!406368 () List!62736)

(assert (=> bm!406362 (= call!406367 (derivationStepZipperDown!825 (ite c!961230 (regTwo!31471 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (regOne!31470 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))))) (ite c!961230 (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165)) (Context!9727 call!406368)) (h!69062 s!2326)))))

(declare-fun bm!406363 () Bool)

(declare-fun call!406371 () (InoxSet Context!9726))

(assert (=> bm!406363 (= call!406369 call!406371)))

(declare-fun bm!406364 () Bool)

(declare-fun call!406366 () List!62736)

(assert (=> bm!406364 (= call!406366 call!406368)))

(declare-fun c!961226 () Bool)

(declare-fun b!5502609 () Bool)

(assert (=> b!5502609 (= c!961226 ((_ is Star!15479) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))))))

(declare-fun e!3403632 () (InoxSet Context!9726))

(declare-fun e!3403634 () (InoxSet Context!9726))

(assert (=> b!5502609 (= e!3403632 e!3403634)))

(declare-fun b!5502610 () Bool)

(assert (=> b!5502610 (= e!3403634 call!406370)))

(declare-fun b!5502611 () Bool)

(declare-fun c!961228 () Bool)

(declare-fun e!3403631 () Bool)

(assert (=> b!5502611 (= c!961228 e!3403631)))

(declare-fun res!2345364 () Bool)

(assert (=> b!5502611 (=> (not res!2345364) (not e!3403631))))

(assert (=> b!5502611 (= res!2345364 ((_ is Concat!24324) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))))))

(declare-fun e!3403633 () (InoxSet Context!9726))

(declare-fun e!3403635 () (InoxSet Context!9726))

(assert (=> b!5502611 (= e!3403633 e!3403635)))

(declare-fun b!5502612 () Bool)

(assert (=> b!5502612 (= e!3403630 e!3403633)))

(assert (=> b!5502612 (= c!961230 ((_ is Union!15479) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))))))

(declare-fun bm!406365 () Bool)

(declare-fun c!961227 () Bool)

(assert (=> bm!406365 (= call!406368 ($colon$colon!1570 (exprs!5363 (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165))) (ite (or c!961228 c!961227) (regTwo!31470 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))))))))

(declare-fun b!5502613 () Bool)

(assert (=> b!5502613 (= e!3403630 (store ((as const (Array Context!9726 Bool)) false) (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165)) true))))

(declare-fun b!5502614 () Bool)

(assert (=> b!5502614 (= e!3403631 (nullable!5516 (regOne!31470 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))))))))

(declare-fun b!5502615 () Bool)

(assert (=> b!5502615 (= e!3403632 call!406370)))

(declare-fun b!5502616 () Bool)

(assert (=> b!5502616 (= e!3403635 e!3403632)))

(assert (=> b!5502616 (= c!961227 ((_ is Concat!24324) (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))))))

(declare-fun bm!406366 () Bool)

(assert (=> bm!406366 (= call!406371 (derivationStepZipperDown!825 (ite c!961230 (regOne!31471 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (ite c!961228 (regTwo!31470 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (ite c!961227 (regOne!31470 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292))))) (reg!15808 (ite c!960962 (regOne!31471 r!7292) (ite c!960960 (regTwo!31470 r!7292) (ite c!960959 (regOne!31470 r!7292) (reg!15808 r!7292)))))))) (ite (or c!961230 c!961228) (ite (or c!960962 c!960960) lt!2243674 (Context!9727 call!406165)) (Context!9727 call!406366)) (h!69062 s!2326)))))

(declare-fun b!5502617 () Bool)

(assert (=> b!5502617 (= e!3403635 ((_ map or) call!406367 call!406369))))

(declare-fun b!5502618 () Bool)

(assert (=> b!5502618 (= e!3403633 ((_ map or) call!406371 call!406367))))

(declare-fun b!5502619 () Bool)

(assert (=> b!5502619 (= e!3403634 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744207 c!961229) b!5502613))

(assert (= (and d!1744207 (not c!961229)) b!5502612))

(assert (= (and b!5502612 c!961230) b!5502618))

(assert (= (and b!5502612 (not c!961230)) b!5502611))

(assert (= (and b!5502611 res!2345364) b!5502614))

(assert (= (and b!5502611 c!961228) b!5502617))

(assert (= (and b!5502611 (not c!961228)) b!5502616))

(assert (= (and b!5502616 c!961227) b!5502615))

(assert (= (and b!5502616 (not c!961227)) b!5502609))

(assert (= (and b!5502609 c!961226) b!5502610))

(assert (= (and b!5502609 (not c!961226)) b!5502619))

(assert (= (or b!5502615 b!5502610) bm!406364))

(assert (= (or b!5502615 b!5502610) bm!406361))

(assert (= (or b!5502617 bm!406364) bm!406365))

(assert (= (or b!5502617 bm!406361) bm!406363))

(assert (= (or b!5502618 b!5502617) bm!406362))

(assert (= (or b!5502618 bm!406363) bm!406366))

(declare-fun m!6510352 () Bool)

(assert (=> bm!406362 m!6510352))

(declare-fun m!6510354 () Bool)

(assert (=> bm!406366 m!6510354))

(declare-fun m!6510356 () Bool)

(assert (=> b!5502613 m!6510356))

(declare-fun m!6510358 () Bool)

(assert (=> b!5502614 m!6510358))

(declare-fun m!6510360 () Bool)

(assert (=> bm!406365 m!6510360))

(assert (=> bm!406165 d!1744207))

(assert (=> bs!1268905 d!1743827))

(assert (=> bm!406201 d!1744121))

(declare-fun d!1744209 () Bool)

(assert (=> d!1744209 true))

(declare-fun setRes!36485 () Bool)

(assert (=> d!1744209 setRes!36485))

(declare-fun condSetEmpty!36485 () Bool)

(declare-fun res!2345365 () (InoxSet Context!9726))

(assert (=> d!1744209 (= condSetEmpty!36485 (= res!2345365 ((as const (Array Context!9726 Bool)) false)))))

(assert (=> d!1744209 (= (choose!41803 z!1189 lambda!294515) res!2345365)))

(declare-fun setIsEmpty!36485 () Bool)

(assert (=> setIsEmpty!36485 setRes!36485))

(declare-fun setElem!36485 () Context!9726)

(declare-fun e!3403636 () Bool)

(declare-fun tp!1514027 () Bool)

(declare-fun setNonEmpty!36485 () Bool)

(assert (=> setNonEmpty!36485 (= setRes!36485 (and tp!1514027 (inv!81944 setElem!36485) e!3403636))))

(declare-fun setRest!36485 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36485 (= res!2345365 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36485 true) setRest!36485))))

(declare-fun b!5502620 () Bool)

(declare-fun tp!1514026 () Bool)

(assert (=> b!5502620 (= e!3403636 tp!1514026)))

(assert (= (and d!1744209 condSetEmpty!36485) setIsEmpty!36485))

(assert (= (and d!1744209 (not condSetEmpty!36485)) setNonEmpty!36485))

(assert (= setNonEmpty!36485 b!5502620))

(declare-fun m!6510362 () Bool)

(assert (=> setNonEmpty!36485 m!6510362))

(assert (=> d!1743825 d!1744209))

(declare-fun bs!1269144 () Bool)

(declare-fun d!1744211 () Bool)

(assert (= bs!1269144 (and d!1744211 d!1743731)))

(declare-fun lambda!294603 () Int)

(assert (=> bs!1269144 (= lambda!294603 lambda!294533)))

(declare-fun bs!1269145 () Bool)

(assert (= bs!1269145 (and d!1744211 d!1744117)))

(assert (=> bs!1269145 (= lambda!294603 lambda!294596)))

(declare-fun bs!1269146 () Bool)

(assert (= bs!1269146 (and d!1744211 d!1744143)))

(assert (=> bs!1269146 (= lambda!294603 lambda!294601)))

(declare-fun bs!1269147 () Bool)

(assert (= bs!1269147 (and d!1744211 d!1743739)))

(assert (=> bs!1269147 (= lambda!294603 lambda!294540)))

(declare-fun bs!1269148 () Bool)

(assert (= bs!1269148 (and d!1744211 d!1743851)))

(assert (=> bs!1269148 (= lambda!294603 lambda!294556)))

(declare-fun bs!1269149 () Bool)

(assert (= bs!1269149 (and d!1744211 d!1743853)))

(assert (=> bs!1269149 (= lambda!294603 lambda!294557)))

(declare-fun bs!1269150 () Bool)

(assert (= bs!1269150 (and d!1744211 d!1743841)))

(assert (=> bs!1269150 (= lambda!294603 lambda!294553)))

(declare-fun b!5502621 () Bool)

(declare-fun e!3403640 () Bool)

(declare-fun lt!2243766 () Regex!15479)

(assert (=> b!5502621 (= e!3403640 (= lt!2243766 (head!11783 (t!375973 (unfocusZipperList!907 zl!343)))))))

(declare-fun b!5502622 () Bool)

(declare-fun e!3403638 () Regex!15479)

(declare-fun e!3403639 () Regex!15479)

(assert (=> b!5502622 (= e!3403638 e!3403639)))

(declare-fun c!961233 () Bool)

(assert (=> b!5502622 (= c!961233 ((_ is Cons!62612) (t!375973 (unfocusZipperList!907 zl!343))))))

(declare-fun e!3403642 () Bool)

(assert (=> d!1744211 e!3403642))

(declare-fun res!2345366 () Bool)

(assert (=> d!1744211 (=> (not res!2345366) (not e!3403642))))

(assert (=> d!1744211 (= res!2345366 (validRegex!7215 lt!2243766))))

(assert (=> d!1744211 (= lt!2243766 e!3403638)))

(declare-fun c!961232 () Bool)

(declare-fun e!3403641 () Bool)

(assert (=> d!1744211 (= c!961232 e!3403641)))

(declare-fun res!2345367 () Bool)

(assert (=> d!1744211 (=> (not res!2345367) (not e!3403641))))

(assert (=> d!1744211 (= res!2345367 ((_ is Cons!62612) (t!375973 (unfocusZipperList!907 zl!343))))))

(assert (=> d!1744211 (forall!14664 (t!375973 (unfocusZipperList!907 zl!343)) lambda!294603)))

(assert (=> d!1744211 (= (generalisedUnion!1342 (t!375973 (unfocusZipperList!907 zl!343))) lt!2243766)))

(declare-fun b!5502623 () Bool)

(declare-fun e!3403637 () Bool)

(assert (=> b!5502623 (= e!3403637 e!3403640)))

(declare-fun c!961231 () Bool)

(assert (=> b!5502623 (= c!961231 (isEmpty!34398 (tail!10878 (t!375973 (unfocusZipperList!907 zl!343)))))))

(declare-fun b!5502624 () Bool)

(assert (=> b!5502624 (= e!3403637 (isEmptyLang!1073 lt!2243766))))

(declare-fun b!5502625 () Bool)

(assert (=> b!5502625 (= e!3403642 e!3403637)))

(declare-fun c!961234 () Bool)

(assert (=> b!5502625 (= c!961234 (isEmpty!34398 (t!375973 (unfocusZipperList!907 zl!343))))))

(declare-fun b!5502626 () Bool)

(assert (=> b!5502626 (= e!3403639 EmptyLang!15479)))

(declare-fun b!5502627 () Bool)

(assert (=> b!5502627 (= e!3403640 (isUnion!503 lt!2243766))))

(declare-fun b!5502628 () Bool)

(assert (=> b!5502628 (= e!3403639 (Union!15479 (h!69060 (t!375973 (unfocusZipperList!907 zl!343))) (generalisedUnion!1342 (t!375973 (t!375973 (unfocusZipperList!907 zl!343))))))))

(declare-fun b!5502629 () Bool)

(assert (=> b!5502629 (= e!3403638 (h!69060 (t!375973 (unfocusZipperList!907 zl!343))))))

(declare-fun b!5502630 () Bool)

(assert (=> b!5502630 (= e!3403641 (isEmpty!34398 (t!375973 (t!375973 (unfocusZipperList!907 zl!343)))))))

(assert (= (and d!1744211 res!2345367) b!5502630))

(assert (= (and d!1744211 c!961232) b!5502629))

(assert (= (and d!1744211 (not c!961232)) b!5502622))

(assert (= (and b!5502622 c!961233) b!5502628))

(assert (= (and b!5502622 (not c!961233)) b!5502626))

(assert (= (and d!1744211 res!2345366) b!5502625))

(assert (= (and b!5502625 c!961234) b!5502624))

(assert (= (and b!5502625 (not c!961234)) b!5502623))

(assert (= (and b!5502623 c!961231) b!5502621))

(assert (= (and b!5502623 (not c!961231)) b!5502627))

(declare-fun m!6510364 () Bool)

(assert (=> b!5502628 m!6510364))

(declare-fun m!6510366 () Bool)

(assert (=> b!5502630 m!6510366))

(declare-fun m!6510368 () Bool)

(assert (=> b!5502624 m!6510368))

(declare-fun m!6510370 () Bool)

(assert (=> b!5502627 m!6510370))

(declare-fun m!6510372 () Bool)

(assert (=> d!1744211 m!6510372))

(declare-fun m!6510374 () Bool)

(assert (=> d!1744211 m!6510374))

(declare-fun m!6510376 () Bool)

(assert (=> b!5502623 m!6510376))

(assert (=> b!5502623 m!6510376))

(declare-fun m!6510378 () Bool)

(assert (=> b!5502623 m!6510378))

(declare-fun m!6510380 () Bool)

(assert (=> b!5502621 m!6510380))

(assert (=> b!5502625 m!6509416))

(assert (=> b!5501352 d!1744211))

(declare-fun bs!1269151 () Bool)

(declare-fun d!1744213 () Bool)

(assert (= bs!1269151 (and d!1744213 d!1743731)))

(declare-fun lambda!294604 () Int)

(assert (=> bs!1269151 (= lambda!294604 lambda!294533)))

(declare-fun bs!1269152 () Bool)

(assert (= bs!1269152 (and d!1744213 d!1744117)))

(assert (=> bs!1269152 (= lambda!294604 lambda!294596)))

(declare-fun bs!1269153 () Bool)

(assert (= bs!1269153 (and d!1744213 d!1744143)))

(assert (=> bs!1269153 (= lambda!294604 lambda!294601)))

(declare-fun bs!1269154 () Bool)

(assert (= bs!1269154 (and d!1744213 d!1743851)))

(assert (=> bs!1269154 (= lambda!294604 lambda!294556)))

(declare-fun bs!1269155 () Bool)

(assert (= bs!1269155 (and d!1744213 d!1743853)))

(assert (=> bs!1269155 (= lambda!294604 lambda!294557)))

(declare-fun bs!1269156 () Bool)

(assert (= bs!1269156 (and d!1744213 d!1743841)))

(assert (=> bs!1269156 (= lambda!294604 lambda!294553)))

(declare-fun bs!1269157 () Bool)

(assert (= bs!1269157 (and d!1744213 d!1743739)))

(assert (=> bs!1269157 (= lambda!294604 lambda!294540)))

(declare-fun bs!1269158 () Bool)

(assert (= bs!1269158 (and d!1744213 d!1744211)))

(assert (=> bs!1269158 (= lambda!294604 lambda!294603)))

(declare-fun b!5502631 () Bool)

(declare-fun e!3403645 () Regex!15479)

(assert (=> b!5502631 (= e!3403645 (h!69060 (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun e!3403648 () Bool)

(assert (=> d!1744213 e!3403648))

(declare-fun res!2345368 () Bool)

(assert (=> d!1744213 (=> (not res!2345368) (not e!3403648))))

(declare-fun lt!2243767 () Regex!15479)

(assert (=> d!1744213 (= res!2345368 (validRegex!7215 lt!2243767))))

(assert (=> d!1744213 (= lt!2243767 e!3403645)))

(declare-fun c!961235 () Bool)

(declare-fun e!3403643 () Bool)

(assert (=> d!1744213 (= c!961235 e!3403643)))

(declare-fun res!2345369 () Bool)

(assert (=> d!1744213 (=> (not res!2345369) (not e!3403643))))

(assert (=> d!1744213 (= res!2345369 ((_ is Cons!62612) (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(assert (=> d!1744213 (forall!14664 (t!375973 (exprs!5363 (h!69061 zl!343))) lambda!294604)))

(assert (=> d!1744213 (= (generalisedConcat!1094 (t!375973 (exprs!5363 (h!69061 zl!343)))) lt!2243767)))

(declare-fun b!5502632 () Bool)

(declare-fun e!3403647 () Bool)

(assert (=> b!5502632 (= e!3403647 (isEmptyExpr!1062 lt!2243767))))

(declare-fun b!5502633 () Bool)

(assert (=> b!5502633 (= e!3403648 e!3403647)))

(declare-fun c!961236 () Bool)

(assert (=> b!5502633 (= c!961236 (isEmpty!34398 (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5502634 () Bool)

(declare-fun e!3403644 () Regex!15479)

(assert (=> b!5502634 (= e!3403644 (Concat!24324 (h!69060 (t!375973 (exprs!5363 (h!69061 zl!343)))) (generalisedConcat!1094 (t!375973 (t!375973 (exprs!5363 (h!69061 zl!343)))))))))

(declare-fun b!5502635 () Bool)

(declare-fun e!3403646 () Bool)

(assert (=> b!5502635 (= e!3403646 (isConcat!585 lt!2243767))))

(declare-fun b!5502636 () Bool)

(assert (=> b!5502636 (= e!3403646 (= lt!2243767 (head!11783 (t!375973 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5502637 () Bool)

(assert (=> b!5502637 (= e!3403643 (isEmpty!34398 (t!375973 (t!375973 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5502638 () Bool)

(assert (=> b!5502638 (= e!3403645 e!3403644)))

(declare-fun c!961237 () Bool)

(assert (=> b!5502638 (= c!961237 ((_ is Cons!62612) (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5502639 () Bool)

(assert (=> b!5502639 (= e!3403647 e!3403646)))

(declare-fun c!961238 () Bool)

(assert (=> b!5502639 (= c!961238 (isEmpty!34398 (tail!10878 (t!375973 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5502640 () Bool)

(assert (=> b!5502640 (= e!3403644 EmptyExpr!15479)))

(assert (= (and d!1744213 res!2345369) b!5502637))

(assert (= (and d!1744213 c!961235) b!5502631))

(assert (= (and d!1744213 (not c!961235)) b!5502638))

(assert (= (and b!5502638 c!961237) b!5502634))

(assert (= (and b!5502638 (not c!961237)) b!5502640))

(assert (= (and d!1744213 res!2345368) b!5502633))

(assert (= (and b!5502633 c!961236) b!5502632))

(assert (= (and b!5502633 (not c!961236)) b!5502639))

(assert (= (and b!5502639 c!961238) b!5502636))

(assert (= (and b!5502639 (not c!961238)) b!5502635))

(declare-fun m!6510382 () Bool)

(assert (=> b!5502635 m!6510382))

(declare-fun m!6510384 () Bool)

(assert (=> b!5502639 m!6510384))

(assert (=> b!5502639 m!6510384))

(declare-fun m!6510386 () Bool)

(assert (=> b!5502639 m!6510386))

(declare-fun m!6510388 () Bool)

(assert (=> b!5502632 m!6510388))

(declare-fun m!6510390 () Bool)

(assert (=> b!5502634 m!6510390))

(declare-fun m!6510392 () Bool)

(assert (=> b!5502637 m!6510392))

(assert (=> b!5502633 m!6509698))

(declare-fun m!6510394 () Bool)

(assert (=> d!1744213 m!6510394))

(declare-fun m!6510396 () Bool)

(assert (=> d!1744213 m!6510396))

(declare-fun m!6510398 () Bool)

(assert (=> b!5502636 m!6510398))

(assert (=> b!5501718 d!1744213))

(declare-fun b!5502641 () Bool)

(declare-fun e!3403651 () (InoxSet Context!9726))

(declare-fun call!406372 () (InoxSet Context!9726))

(assert (=> b!5502641 (= e!3403651 call!406372)))

(declare-fun e!3403649 () (InoxSet Context!9726))

(declare-fun b!5502642 () Bool)

(assert (=> b!5502642 (= e!3403649 ((_ map or) call!406372 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664)))))) (h!69062 s!2326))))))

(declare-fun bm!406367 () Bool)

(assert (=> bm!406367 (= call!406372 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664))))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664)))))) (h!69062 s!2326)))))

(declare-fun b!5502643 () Bool)

(assert (=> b!5502643 (= e!3403649 e!3403651)))

(declare-fun c!961240 () Bool)

(assert (=> b!5502643 (= c!961240 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664))))))))

(declare-fun d!1744215 () Bool)

(declare-fun c!961239 () Bool)

(declare-fun e!3403650 () Bool)

(assert (=> d!1744215 (= c!961239 e!3403650)))

(declare-fun res!2345370 () Bool)

(assert (=> d!1744215 (=> (not res!2345370) (not e!3403650))))

(assert (=> d!1744215 (= res!2345370 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664))))))))

(assert (=> d!1744215 (= (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (h!69062 s!2326)) e!3403649)))

(declare-fun b!5502644 () Bool)

(assert (=> b!5502644 (= e!3403651 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5502645 () Bool)

(assert (=> b!5502645 (= e!3403650 (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664)))))))))

(assert (= (and d!1744215 res!2345370) b!5502645))

(assert (= (and d!1744215 c!961239) b!5502642))

(assert (= (and d!1744215 (not c!961239)) b!5502643))

(assert (= (and b!5502643 c!961240) b!5502641))

(assert (= (and b!5502643 (not c!961240)) b!5502644))

(assert (= (or b!5502642 b!5502641) bm!406367))

(declare-fun m!6510400 () Bool)

(assert (=> b!5502642 m!6510400))

(declare-fun m!6510402 () Bool)

(assert (=> bm!406367 m!6510402))

(declare-fun m!6510404 () Bool)

(assert (=> b!5502645 m!6510404))

(assert (=> b!5501509 d!1744215))

(declare-fun bs!1269159 () Bool)

(declare-fun d!1744217 () Bool)

(assert (= bs!1269159 (and d!1744217 d!1744111)))

(declare-fun lambda!294605 () Int)

(assert (=> bs!1269159 (= lambda!294605 lambda!294595)))

(assert (=> d!1744217 (= (nullableZipper!1521 lt!2243661) (exists!2130 lt!2243661 lambda!294605))))

(declare-fun bs!1269160 () Bool)

(assert (= bs!1269160 d!1744217))

(declare-fun m!6510406 () Bool)

(assert (=> bs!1269160 m!6510406))

(assert (=> b!5501747 d!1744217))

(assert (=> bm!406199 d!1744121))

(declare-fun d!1744219 () Bool)

(assert (=> d!1744219 (= ($colon$colon!1570 (exprs!5363 lt!2243674) (ite (or c!960992 c!960991) (regTwo!31470 (regOne!31471 r!7292)) (regOne!31471 r!7292))) (Cons!62612 (ite (or c!960992 c!960991) (regTwo!31470 (regOne!31471 r!7292)) (regOne!31471 r!7292)) (exprs!5363 lt!2243674)))))

(assert (=> bm!406186 d!1744219))

(declare-fun d!1744221 () Bool)

(declare-fun res!2345375 () Bool)

(declare-fun e!3403656 () Bool)

(assert (=> d!1744221 (=> res!2345375 e!3403656)))

(assert (=> d!1744221 (= res!2345375 ((_ is Nil!62613) lt!2243717))))

(assert (=> d!1744221 (= (noDuplicate!1481 lt!2243717) e!3403656)))

(declare-fun b!5502650 () Bool)

(declare-fun e!3403657 () Bool)

(assert (=> b!5502650 (= e!3403656 e!3403657)))

(declare-fun res!2345376 () Bool)

(assert (=> b!5502650 (=> (not res!2345376) (not e!3403657))))

(declare-fun contains!19772 (List!62737 Context!9726) Bool)

(assert (=> b!5502650 (= res!2345376 (not (contains!19772 (t!375974 lt!2243717) (h!69061 lt!2243717))))))

(declare-fun b!5502651 () Bool)

(assert (=> b!5502651 (= e!3403657 (noDuplicate!1481 (t!375974 lt!2243717)))))

(assert (= (and d!1744221 (not res!2345375)) b!5502650))

(assert (= (and b!5502650 res!2345376) b!5502651))

(declare-fun m!6510408 () Bool)

(assert (=> b!5502650 m!6510408))

(declare-fun m!6510410 () Bool)

(assert (=> b!5502651 m!6510410))

(assert (=> d!1743755 d!1744221))

(declare-fun d!1744223 () Bool)

(declare-fun e!3403664 () Bool)

(assert (=> d!1744223 e!3403664))

(declare-fun res!2345382 () Bool)

(assert (=> d!1744223 (=> (not res!2345382) (not e!3403664))))

(declare-fun res!2345381 () List!62737)

(assert (=> d!1744223 (= res!2345382 (noDuplicate!1481 res!2345381))))

(declare-fun e!3403666 () Bool)

(assert (=> d!1744223 e!3403666))

(assert (=> d!1744223 (= (choose!41802 z!1189) res!2345381)))

(declare-fun b!5502659 () Bool)

(declare-fun e!3403665 () Bool)

(declare-fun tp!1514033 () Bool)

(assert (=> b!5502659 (= e!3403665 tp!1514033)))

(declare-fun tp!1514032 () Bool)

(declare-fun b!5502658 () Bool)

(assert (=> b!5502658 (= e!3403666 (and (inv!81944 (h!69061 res!2345381)) e!3403665 tp!1514032))))

(declare-fun b!5502660 () Bool)

(assert (=> b!5502660 (= e!3403664 (= (content!11242 res!2345381) z!1189))))

(assert (= b!5502658 b!5502659))

(assert (= (and d!1744223 ((_ is Cons!62613) res!2345381)) b!5502658))

(assert (= (and d!1744223 res!2345382) b!5502660))

(declare-fun m!6510412 () Bool)

(assert (=> d!1744223 m!6510412))

(declare-fun m!6510414 () Bool)

(assert (=> b!5502658 m!6510414))

(declare-fun m!6510416 () Bool)

(assert (=> b!5502660 m!6510416))

(assert (=> d!1743755 d!1744223))

(declare-fun b!5502661 () Bool)

(declare-fun e!3403667 () Bool)

(declare-fun e!3403669 () Bool)

(assert (=> b!5502661 (= e!3403667 e!3403669)))

(declare-fun res!2345387 () Bool)

(assert (=> b!5502661 (= res!2345387 (not (nullable!5516 (reg!15808 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))))

(assert (=> b!5502661 (=> (not res!2345387) (not e!3403669))))

(declare-fun b!5502662 () Bool)

(declare-fun e!3403670 () Bool)

(declare-fun e!3403668 () Bool)

(assert (=> b!5502662 (= e!3403670 e!3403668)))

(declare-fun res!2345384 () Bool)

(assert (=> b!5502662 (=> (not res!2345384) (not e!3403668))))

(declare-fun call!406373 () Bool)

(assert (=> b!5502662 (= res!2345384 call!406373)))

(declare-fun b!5502663 () Bool)

(declare-fun e!3403672 () Bool)

(assert (=> b!5502663 (= e!3403672 e!3403667)))

(declare-fun c!961242 () Bool)

(assert (=> b!5502663 (= c!961242 ((_ is Star!15479) (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))

(declare-fun b!5502664 () Bool)

(declare-fun call!406375 () Bool)

(assert (=> b!5502664 (= e!3403669 call!406375)))

(declare-fun b!5502665 () Bool)

(declare-fun res!2345386 () Bool)

(assert (=> b!5502665 (=> res!2345386 e!3403670)))

(assert (=> b!5502665 (= res!2345386 (not ((_ is Concat!24324) (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292)))))))

(declare-fun e!3403671 () Bool)

(assert (=> b!5502665 (= e!3403671 e!3403670)))

(declare-fun call!406374 () Bool)

(declare-fun bm!406368 () Bool)

(declare-fun c!961241 () Bool)

(assert (=> bm!406368 (= call!406374 (validRegex!7215 (ite c!961241 (regTwo!31471 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))) (regTwo!31470 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))))

(declare-fun bm!406369 () Bool)

(assert (=> bm!406369 (= call!406375 (validRegex!7215 (ite c!961242 (reg!15808 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))) (ite c!961241 (regOne!31471 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))) (regOne!31470 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292)))))))))

(declare-fun bm!406370 () Bool)

(assert (=> bm!406370 (= call!406373 call!406375)))

(declare-fun d!1744225 () Bool)

(declare-fun res!2345385 () Bool)

(assert (=> d!1744225 (=> res!2345385 e!3403672)))

(assert (=> d!1744225 (= res!2345385 ((_ is ElementMatch!15479) (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))

(assert (=> d!1744225 (= (validRegex!7215 (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))) e!3403672)))

(declare-fun b!5502666 () Bool)

(assert (=> b!5502666 (= e!3403668 call!406374)))

(declare-fun b!5502667 () Bool)

(assert (=> b!5502667 (= e!3403667 e!3403671)))

(assert (=> b!5502667 (= c!961241 ((_ is Union!15479) (ite c!960971 (regTwo!31471 r!7292) (regTwo!31470 r!7292))))))

(declare-fun b!5502668 () Bool)

(declare-fun e!3403673 () Bool)

(assert (=> b!5502668 (= e!3403673 call!406374)))

(declare-fun b!5502669 () Bool)

(declare-fun res!2345383 () Bool)

(assert (=> b!5502669 (=> (not res!2345383) (not e!3403673))))

(assert (=> b!5502669 (= res!2345383 call!406373)))

(assert (=> b!5502669 (= e!3403671 e!3403673)))

(assert (= (and d!1744225 (not res!2345385)) b!5502663))

(assert (= (and b!5502663 c!961242) b!5502661))

(assert (= (and b!5502663 (not c!961242)) b!5502667))

(assert (= (and b!5502661 res!2345387) b!5502664))

(assert (= (and b!5502667 c!961241) b!5502669))

(assert (= (and b!5502667 (not c!961241)) b!5502665))

(assert (= (and b!5502669 res!2345383) b!5502668))

(assert (= (and b!5502665 (not res!2345386)) b!5502662))

(assert (= (and b!5502662 res!2345384) b!5502666))

(assert (= (or b!5502668 b!5502666) bm!406368))

(assert (= (or b!5502669 b!5502662) bm!406370))

(assert (= (or b!5502664 bm!406370) bm!406369))

(declare-fun m!6510418 () Bool)

(assert (=> b!5502661 m!6510418))

(declare-fun m!6510420 () Bool)

(assert (=> bm!406368 m!6510420))

(declare-fun m!6510422 () Bool)

(assert (=> bm!406369 m!6510422))

(assert (=> bm!406173 d!1744225))

(declare-fun b!5502670 () Bool)

(declare-fun e!3403680 () Bool)

(declare-fun e!3403677 () Bool)

(assert (=> b!5502670 (= e!3403680 e!3403677)))

(declare-fun res!2345395 () Bool)

(assert (=> b!5502670 (=> (not res!2345395) (not e!3403677))))

(declare-fun lt!2243768 () Bool)

(assert (=> b!5502670 (= res!2345395 (not lt!2243768))))

(declare-fun b!5502671 () Bool)

(declare-fun res!2345392 () Bool)

(declare-fun e!3403674 () Bool)

(assert (=> b!5502671 (=> res!2345392 e!3403674)))

(assert (=> b!5502671 (= res!2345392 (not (isEmpty!34399 (tail!10879 (tail!10879 s!2326)))))))

(declare-fun b!5502672 () Bool)

(assert (=> b!5502672 (= e!3403674 (not (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 r!7292 (head!11784 s!2326))))))))

(declare-fun b!5502673 () Bool)

(declare-fun e!3403679 () Bool)

(assert (=> b!5502673 (= e!3403679 (nullable!5516 (derivativeStep!4355 r!7292 (head!11784 s!2326))))))

(declare-fun b!5502674 () Bool)

(declare-fun res!2345388 () Bool)

(declare-fun e!3403675 () Bool)

(assert (=> b!5502674 (=> (not res!2345388) (not e!3403675))))

(declare-fun call!406376 () Bool)

(assert (=> b!5502674 (= res!2345388 (not call!406376))))

(declare-fun b!5502675 () Bool)

(declare-fun e!3403676 () Bool)

(assert (=> b!5502675 (= e!3403676 (not lt!2243768))))

(declare-fun b!5502677 () Bool)

(declare-fun e!3403678 () Bool)

(assert (=> b!5502677 (= e!3403678 e!3403676)))

(declare-fun c!961243 () Bool)

(assert (=> b!5502677 (= c!961243 ((_ is EmptyLang!15479) (derivativeStep!4355 r!7292 (head!11784 s!2326))))))

(declare-fun b!5502678 () Bool)

(declare-fun res!2345391 () Bool)

(assert (=> b!5502678 (=> res!2345391 e!3403680)))

(assert (=> b!5502678 (= res!2345391 (not ((_ is ElementMatch!15479) (derivativeStep!4355 r!7292 (head!11784 s!2326)))))))

(assert (=> b!5502678 (= e!3403676 e!3403680)))

(declare-fun b!5502679 () Bool)

(assert (=> b!5502679 (= e!3403679 (matchR!7664 (derivativeStep!4355 (derivativeStep!4355 r!7292 (head!11784 s!2326)) (head!11784 (tail!10879 s!2326))) (tail!10879 (tail!10879 s!2326))))))

(declare-fun b!5502680 () Bool)

(assert (=> b!5502680 (= e!3403677 e!3403674)))

(declare-fun res!2345390 () Bool)

(assert (=> b!5502680 (=> res!2345390 e!3403674)))

(assert (=> b!5502680 (= res!2345390 call!406376)))

(declare-fun b!5502681 () Bool)

(declare-fun res!2345393 () Bool)

(assert (=> b!5502681 (=> res!2345393 e!3403680)))

(assert (=> b!5502681 (= res!2345393 e!3403675)))

(declare-fun res!2345389 () Bool)

(assert (=> b!5502681 (=> (not res!2345389) (not e!3403675))))

(assert (=> b!5502681 (= res!2345389 lt!2243768)))

(declare-fun bm!406371 () Bool)

(assert (=> bm!406371 (= call!406376 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun b!5502676 () Bool)

(declare-fun res!2345394 () Bool)

(assert (=> b!5502676 (=> (not res!2345394) (not e!3403675))))

(assert (=> b!5502676 (= res!2345394 (isEmpty!34399 (tail!10879 (tail!10879 s!2326))))))

(declare-fun d!1744227 () Bool)

(assert (=> d!1744227 e!3403678))

(declare-fun c!961244 () Bool)

(assert (=> d!1744227 (= c!961244 ((_ is EmptyExpr!15479) (derivativeStep!4355 r!7292 (head!11784 s!2326))))))

(assert (=> d!1744227 (= lt!2243768 e!3403679)))

(declare-fun c!961245 () Bool)

(assert (=> d!1744227 (= c!961245 (isEmpty!34399 (tail!10879 s!2326)))))

(assert (=> d!1744227 (validRegex!7215 (derivativeStep!4355 r!7292 (head!11784 s!2326)))))

(assert (=> d!1744227 (= (matchR!7664 (derivativeStep!4355 r!7292 (head!11784 s!2326)) (tail!10879 s!2326)) lt!2243768)))

(declare-fun b!5502682 () Bool)

(assert (=> b!5502682 (= e!3403675 (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 r!7292 (head!11784 s!2326)))))))

(declare-fun b!5502683 () Bool)

(assert (=> b!5502683 (= e!3403678 (= lt!2243768 call!406376))))

(assert (= (and d!1744227 c!961245) b!5502673))

(assert (= (and d!1744227 (not c!961245)) b!5502679))

(assert (= (and d!1744227 c!961244) b!5502683))

(assert (= (and d!1744227 (not c!961244)) b!5502677))

(assert (= (and b!5502677 c!961243) b!5502675))

(assert (= (and b!5502677 (not c!961243)) b!5502678))

(assert (= (and b!5502678 (not res!2345391)) b!5502681))

(assert (= (and b!5502681 res!2345389) b!5502674))

(assert (= (and b!5502674 res!2345388) b!5502676))

(assert (= (and b!5502676 res!2345394) b!5502682))

(assert (= (and b!5502681 (not res!2345393)) b!5502670))

(assert (= (and b!5502670 res!2345395) b!5502680))

(assert (= (and b!5502680 (not res!2345390)) b!5502671))

(assert (= (and b!5502671 (not res!2345392)) b!5502672))

(assert (= (or b!5502683 b!5502680 b!5502674) bm!406371))

(assert (=> b!5502673 m!6509782))

(declare-fun m!6510424 () Bool)

(assert (=> b!5502673 m!6510424))

(assert (=> bm!406371 m!6509620))

(assert (=> bm!406371 m!6509756))

(assert (=> b!5502671 m!6509620))

(assert (=> b!5502671 m!6510288))

(assert (=> b!5502671 m!6510288))

(assert (=> b!5502671 m!6510290))

(assert (=> b!5502679 m!6509620))

(assert (=> b!5502679 m!6510292))

(assert (=> b!5502679 m!6509782))

(assert (=> b!5502679 m!6510292))

(declare-fun m!6510426 () Bool)

(assert (=> b!5502679 m!6510426))

(assert (=> b!5502679 m!6509620))

(assert (=> b!5502679 m!6510288))

(assert (=> b!5502679 m!6510426))

(assert (=> b!5502679 m!6510288))

(declare-fun m!6510428 () Bool)

(assert (=> b!5502679 m!6510428))

(assert (=> b!5502672 m!6509620))

(assert (=> b!5502672 m!6510292))

(assert (=> b!5502676 m!6509620))

(assert (=> b!5502676 m!6510288))

(assert (=> b!5502676 m!6510288))

(assert (=> b!5502676 m!6510290))

(assert (=> d!1744227 m!6509620))

(assert (=> d!1744227 m!6509756))

(assert (=> d!1744227 m!6509782))

(declare-fun m!6510430 () Bool)

(assert (=> d!1744227 m!6510430))

(assert (=> b!5502682 m!6509620))

(assert (=> b!5502682 m!6510292))

(assert (=> b!5501888 d!1744227))

(declare-fun b!5502684 () Bool)

(declare-fun e!3403682 () Regex!15479)

(declare-fun e!3403684 () Regex!15479)

(assert (=> b!5502684 (= e!3403682 e!3403684)))

(declare-fun c!961247 () Bool)

(assert (=> b!5502684 (= c!961247 ((_ is Star!15479) r!7292))))

(declare-fun d!1744229 () Bool)

(declare-fun lt!2243769 () Regex!15479)

(assert (=> d!1744229 (validRegex!7215 lt!2243769)))

(declare-fun e!3403683 () Regex!15479)

(assert (=> d!1744229 (= lt!2243769 e!3403683)))

(declare-fun c!961246 () Bool)

(assert (=> d!1744229 (= c!961246 (or ((_ is EmptyExpr!15479) r!7292) ((_ is EmptyLang!15479) r!7292)))))

(assert (=> d!1744229 (validRegex!7215 r!7292)))

(assert (=> d!1744229 (= (derivativeStep!4355 r!7292 (head!11784 s!2326)) lt!2243769)))

(declare-fun call!406378 () Regex!15479)

(declare-fun c!961250 () Bool)

(declare-fun bm!406372 () Bool)

(assert (=> bm!406372 (= call!406378 (derivativeStep!4355 (ite c!961250 (regOne!31471 r!7292) (regOne!31470 r!7292)) (head!11784 s!2326)))))

(declare-fun b!5502685 () Bool)

(declare-fun call!406377 () Regex!15479)

(assert (=> b!5502685 (= e!3403684 (Concat!24324 call!406377 r!7292))))

(declare-fun b!5502686 () Bool)

(declare-fun e!3403681 () Regex!15479)

(assert (=> b!5502686 (= e!3403683 e!3403681)))

(declare-fun c!961249 () Bool)

(assert (=> b!5502686 (= c!961249 ((_ is ElementMatch!15479) r!7292))))

(declare-fun b!5502687 () Bool)

(assert (=> b!5502687 (= c!961250 ((_ is Union!15479) r!7292))))

(assert (=> b!5502687 (= e!3403681 e!3403682)))

(declare-fun call!406379 () Regex!15479)

(declare-fun c!961248 () Bool)

(declare-fun bm!406373 () Bool)

(assert (=> bm!406373 (= call!406379 (derivativeStep!4355 (ite c!961250 (regTwo!31471 r!7292) (ite c!961247 (reg!15808 r!7292) (ite c!961248 (regTwo!31470 r!7292) (regOne!31470 r!7292)))) (head!11784 s!2326)))))

(declare-fun call!406380 () Regex!15479)

(declare-fun e!3403685 () Regex!15479)

(declare-fun b!5502688 () Bool)

(assert (=> b!5502688 (= e!3403685 (Union!15479 (Concat!24324 call!406378 (regTwo!31470 r!7292)) call!406380))))

(declare-fun b!5502689 () Bool)

(assert (=> b!5502689 (= e!3403685 (Union!15479 (Concat!24324 call!406380 (regTwo!31470 r!7292)) EmptyLang!15479))))

(declare-fun b!5502690 () Bool)

(assert (=> b!5502690 (= e!3403683 EmptyLang!15479)))

(declare-fun b!5502691 () Bool)

(assert (=> b!5502691 (= e!3403681 (ite (= (head!11784 s!2326) (c!960803 r!7292)) EmptyExpr!15479 EmptyLang!15479))))

(declare-fun b!5502692 () Bool)

(assert (=> b!5502692 (= c!961248 (nullable!5516 (regOne!31470 r!7292)))))

(assert (=> b!5502692 (= e!3403684 e!3403685)))

(declare-fun bm!406374 () Bool)

(assert (=> bm!406374 (= call!406380 call!406377)))

(declare-fun b!5502693 () Bool)

(assert (=> b!5502693 (= e!3403682 (Union!15479 call!406378 call!406379))))

(declare-fun bm!406375 () Bool)

(assert (=> bm!406375 (= call!406377 call!406379)))

(assert (= (and d!1744229 c!961246) b!5502690))

(assert (= (and d!1744229 (not c!961246)) b!5502686))

(assert (= (and b!5502686 c!961249) b!5502691))

(assert (= (and b!5502686 (not c!961249)) b!5502687))

(assert (= (and b!5502687 c!961250) b!5502693))

(assert (= (and b!5502687 (not c!961250)) b!5502684))

(assert (= (and b!5502684 c!961247) b!5502685))

(assert (= (and b!5502684 (not c!961247)) b!5502692))

(assert (= (and b!5502692 c!961248) b!5502688))

(assert (= (and b!5502692 (not c!961248)) b!5502689))

(assert (= (or b!5502688 b!5502689) bm!406374))

(assert (= (or b!5502685 bm!406374) bm!406375))

(assert (= (or b!5502693 bm!406375) bm!406373))

(assert (= (or b!5502693 b!5502688) bm!406372))

(declare-fun m!6510432 () Bool)

(assert (=> d!1744229 m!6510432))

(assert (=> d!1744229 m!6509286))

(assert (=> bm!406372 m!6509616))

(declare-fun m!6510434 () Bool)

(assert (=> bm!406372 m!6510434))

(assert (=> bm!406373 m!6509616))

(declare-fun m!6510436 () Bool)

(assert (=> bm!406373 m!6510436))

(assert (=> b!5502692 m!6509654))

(assert (=> b!5501888 d!1744229))

(assert (=> b!5501888 d!1744119))

(assert (=> b!5501888 d!1744167))

(declare-fun d!1744231 () Bool)

(declare-fun c!961254 () Bool)

(assert (=> d!1744231 (= c!961254 (and ((_ is ElementMatch!15479) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (= (c!960803 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69062 s!2326))))))

(declare-fun e!3403686 () (InoxSet Context!9726))

(assert (=> d!1744231 (= (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69062 s!2326)) e!3403686)))

(declare-fun bm!406376 () Bool)

(declare-fun call!406385 () (InoxSet Context!9726))

(declare-fun call!406384 () (InoxSet Context!9726))

(assert (=> bm!406376 (= call!406385 call!406384)))

(declare-fun bm!406377 () Bool)

(declare-fun c!961255 () Bool)

(declare-fun call!406383 () List!62736)

(declare-fun call!406382 () (InoxSet Context!9726))

(assert (=> bm!406377 (= call!406382 (derivationStepZipperDown!825 (ite c!961255 (regTwo!31471 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (regOne!31470 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))) (ite c!961255 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (Context!9727 call!406383)) (h!69062 s!2326)))))

(declare-fun bm!406378 () Bool)

(declare-fun call!406386 () (InoxSet Context!9726))

(assert (=> bm!406378 (= call!406384 call!406386)))

(declare-fun bm!406379 () Bool)

(declare-fun call!406381 () List!62736)

(assert (=> bm!406379 (= call!406381 call!406383)))

(declare-fun b!5502694 () Bool)

(declare-fun c!961251 () Bool)

(assert (=> b!5502694 (= c!961251 ((_ is Star!15479) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(declare-fun e!3403688 () (InoxSet Context!9726))

(declare-fun e!3403690 () (InoxSet Context!9726))

(assert (=> b!5502694 (= e!3403688 e!3403690)))

(declare-fun b!5502695 () Bool)

(assert (=> b!5502695 (= e!3403690 call!406385)))

(declare-fun b!5502696 () Bool)

(declare-fun c!961253 () Bool)

(declare-fun e!3403687 () Bool)

(assert (=> b!5502696 (= c!961253 e!3403687)))

(declare-fun res!2345396 () Bool)

(assert (=> b!5502696 (=> (not res!2345396) (not e!3403687))))

(assert (=> b!5502696 (= res!2345396 ((_ is Concat!24324) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(declare-fun e!3403689 () (InoxSet Context!9726))

(declare-fun e!3403691 () (InoxSet Context!9726))

(assert (=> b!5502696 (= e!3403689 e!3403691)))

(declare-fun b!5502697 () Bool)

(assert (=> b!5502697 (= e!3403686 e!3403689)))

(assert (=> b!5502697 (= c!961255 ((_ is Union!15479) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(declare-fun bm!406380 () Bool)

(declare-fun c!961252 () Bool)

(assert (=> bm!406380 (= call!406383 ($colon$colon!1570 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))) (ite (or c!961253 c!961252) (regTwo!31470 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))))

(declare-fun b!5502698 () Bool)

(assert (=> b!5502698 (= e!3403686 (store ((as const (Array Context!9726 Bool)) false) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) true))))

(declare-fun b!5502699 () Bool)

(assert (=> b!5502699 (= e!3403687 (nullable!5516 (regOne!31470 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))))

(declare-fun b!5502700 () Bool)

(assert (=> b!5502700 (= e!3403688 call!406385)))

(declare-fun b!5502701 () Bool)

(assert (=> b!5502701 (= e!3403691 e!3403688)))

(assert (=> b!5502701 (= c!961252 ((_ is Concat!24324) (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))))))

(declare-fun bm!406381 () Bool)

(assert (=> bm!406381 (= call!406386 (derivationStepZipperDown!825 (ite c!961255 (regOne!31471 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (ite c!961253 (regTwo!31470 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (ite c!961252 (regOne!31470 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (reg!15808 (h!69060 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612)))))))) (ite (or c!961255 c!961253) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (Cons!62612 r!7292 Nil!62612))))) (Context!9727 call!406381)) (h!69062 s!2326)))))

(declare-fun b!5502702 () Bool)

(assert (=> b!5502702 (= e!3403691 ((_ map or) call!406382 call!406384))))

(declare-fun b!5502703 () Bool)

(assert (=> b!5502703 (= e!3403689 ((_ map or) call!406386 call!406382))))

(declare-fun b!5502704 () Bool)

(assert (=> b!5502704 (= e!3403690 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744231 c!961254) b!5502698))

(assert (= (and d!1744231 (not c!961254)) b!5502697))

(assert (= (and b!5502697 c!961255) b!5502703))

(assert (= (and b!5502697 (not c!961255)) b!5502696))

(assert (= (and b!5502696 res!2345396) b!5502699))

(assert (= (and b!5502696 c!961253) b!5502702))

(assert (= (and b!5502696 (not c!961253)) b!5502701))

(assert (= (and b!5502701 c!961252) b!5502700))

(assert (= (and b!5502701 (not c!961252)) b!5502694))

(assert (= (and b!5502694 c!961251) b!5502695))

(assert (= (and b!5502694 (not c!961251)) b!5502704))

(assert (= (or b!5502700 b!5502695) bm!406379))

(assert (= (or b!5502700 b!5502695) bm!406376))

(assert (= (or b!5502702 bm!406379) bm!406380))

(assert (= (or b!5502702 bm!406376) bm!406378))

(assert (= (or b!5502703 b!5502702) bm!406377))

(assert (= (or b!5502703 bm!406378) bm!406381))

(declare-fun m!6510438 () Bool)

(assert (=> bm!406377 m!6510438))

(declare-fun m!6510440 () Bool)

(assert (=> bm!406381 m!6510440))

(declare-fun m!6510442 () Bool)

(assert (=> b!5502698 m!6510442))

(declare-fun m!6510444 () Bool)

(assert (=> b!5502699 m!6510444))

(declare-fun m!6510446 () Bool)

(assert (=> bm!406380 m!6510446))

(assert (=> bm!406166 d!1744231))

(declare-fun bs!1269161 () Bool)

(declare-fun b!5502705 () Bool)

(assert (= bs!1269161 (and b!5502705 b!5501792)))

(declare-fun lambda!294606 () Int)

(assert (=> bs!1269161 (not (= lambda!294606 lambda!294563))))

(declare-fun bs!1269162 () Bool)

(assert (= bs!1269162 (and b!5502705 b!5502488)))

(assert (=> bs!1269162 (not (= lambda!294606 lambda!294598))))

(declare-fun bs!1269163 () Bool)

(assert (= bs!1269163 (and b!5502705 b!5501849)))

(assert (=> bs!1269163 (not (= lambda!294606 lambda!294565))))

(declare-fun bs!1269164 () Bool)

(assert (= bs!1269164 (and b!5502705 b!5501868)))

(assert (=> bs!1269164 (= (and (= (reg!15808 (regOne!31471 (regTwo!31471 r!7292))) (reg!15808 r!7292)) (= (regOne!31471 (regTwo!31471 r!7292)) r!7292)) (= lambda!294606 lambda!294566))))

(declare-fun bs!1269165 () Bool)

(assert (= bs!1269165 (and b!5502705 b!5501874)))

(assert (=> bs!1269165 (not (= lambda!294606 lambda!294567))))

(declare-fun bs!1269166 () Bool)

(assert (= bs!1269166 (and b!5502705 b!5501786)))

(assert (=> bs!1269166 (= (and (= (reg!15808 (regOne!31471 (regTwo!31471 r!7292))) (reg!15808 (regTwo!31471 r!7292))) (= (regOne!31471 (regTwo!31471 r!7292)) (regTwo!31471 r!7292))) (= lambda!294606 lambda!294562))))

(declare-fun bs!1269167 () Bool)

(assert (= bs!1269167 (and b!5502705 b!5502499)))

(assert (=> bs!1269167 (not (= lambda!294606 lambda!294600))))

(declare-fun bs!1269168 () Bool)

(assert (= bs!1269168 (and b!5502705 b!5502482)))

(assert (=> bs!1269168 (= (and (= (reg!15808 (regOne!31471 (regTwo!31471 r!7292))) (reg!15808 (regTwo!31471 (regOne!31471 r!7292)))) (= (regOne!31471 (regTwo!31471 r!7292)) (regTwo!31471 (regOne!31471 r!7292)))) (= lambda!294606 lambda!294597))))

(declare-fun bs!1269169 () Bool)

(assert (= bs!1269169 (and b!5502705 b!5502493)))

(assert (=> bs!1269169 (= (and (= (reg!15808 (regOne!31471 (regTwo!31471 r!7292))) (reg!15808 (regTwo!31471 (regTwo!31471 r!7292)))) (= (regOne!31471 (regTwo!31471 r!7292)) (regTwo!31471 (regTwo!31471 r!7292)))) (= lambda!294606 lambda!294599))))

(declare-fun bs!1269170 () Bool)

(assert (= bs!1269170 (and b!5502705 b!5501843)))

(assert (=> bs!1269170 (= (and (= (reg!15808 (regOne!31471 (regTwo!31471 r!7292))) (reg!15808 (regOne!31471 r!7292))) (= (regOne!31471 (regTwo!31471 r!7292)) (regOne!31471 r!7292))) (= lambda!294606 lambda!294564))))

(assert (=> b!5502705 true))

(assert (=> b!5502705 true))

(declare-fun bs!1269171 () Bool)

(declare-fun b!5502711 () Bool)

(assert (= bs!1269171 (and b!5502711 b!5501792)))

(declare-fun lambda!294607 () Int)

(assert (=> bs!1269171 (= (and (= (regOne!31470 (regOne!31471 (regTwo!31471 r!7292))) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294607 lambda!294563))))

(declare-fun bs!1269172 () Bool)

(assert (= bs!1269172 (and b!5502711 b!5502488)))

(assert (=> bs!1269172 (= (and (= (regOne!31470 (regOne!31471 (regTwo!31471 r!7292))) (regOne!31470 (regTwo!31471 (regOne!31471 r!7292)))) (= (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))))) (= lambda!294607 lambda!294598))))

(declare-fun bs!1269173 () Bool)

(assert (= bs!1269173 (and b!5502711 b!5501849)))

(assert (=> bs!1269173 (= (and (= (regOne!31470 (regOne!31471 (regTwo!31471 r!7292))) (regOne!31470 (regOne!31471 r!7292))) (= (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regOne!31471 r!7292)))) (= lambda!294607 lambda!294565))))

(declare-fun bs!1269174 () Bool)

(assert (= bs!1269174 (and b!5502711 b!5501874)))

(assert (=> bs!1269174 (= (and (= (regOne!31470 (regOne!31471 (regTwo!31471 r!7292))) (regOne!31470 r!7292)) (= (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))) (regTwo!31470 r!7292))) (= lambda!294607 lambda!294567))))

(declare-fun bs!1269175 () Bool)

(assert (= bs!1269175 (and b!5502711 b!5501786)))

(assert (=> bs!1269175 (not (= lambda!294607 lambda!294562))))

(declare-fun bs!1269176 () Bool)

(assert (= bs!1269176 (and b!5502711 b!5502499)))

(assert (=> bs!1269176 (= (and (= (regOne!31470 (regOne!31471 (regTwo!31471 r!7292))) (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292)))) (= (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))) (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))))) (= lambda!294607 lambda!294600))))

(declare-fun bs!1269177 () Bool)

(assert (= bs!1269177 (and b!5502711 b!5502482)))

(assert (=> bs!1269177 (not (= lambda!294607 lambda!294597))))

(declare-fun bs!1269178 () Bool)

(assert (= bs!1269178 (and b!5502711 b!5502705)))

(assert (=> bs!1269178 (not (= lambda!294607 lambda!294606))))

(declare-fun bs!1269179 () Bool)

(assert (= bs!1269179 (and b!5502711 b!5501868)))

(assert (=> bs!1269179 (not (= lambda!294607 lambda!294566))))

(declare-fun bs!1269180 () Bool)

(assert (= bs!1269180 (and b!5502711 b!5502493)))

(assert (=> bs!1269180 (not (= lambda!294607 lambda!294599))))

(declare-fun bs!1269181 () Bool)

(assert (= bs!1269181 (and b!5502711 b!5501843)))

(assert (=> bs!1269181 (not (= lambda!294607 lambda!294564))))

(assert (=> b!5502711 true))

(assert (=> b!5502711 true))

(declare-fun e!3403697 () Bool)

(declare-fun call!406387 () Bool)

(assert (=> b!5502705 (= e!3403697 call!406387)))

(declare-fun b!5502706 () Bool)

(declare-fun c!961259 () Bool)

(assert (=> b!5502706 (= c!961259 ((_ is Union!15479) (regOne!31471 (regTwo!31471 r!7292))))))

(declare-fun e!3403692 () Bool)

(declare-fun e!3403695 () Bool)

(assert (=> b!5502706 (= e!3403692 e!3403695)))

(declare-fun b!5502707 () Bool)

(declare-fun c!961258 () Bool)

(assert (=> b!5502707 (= c!961258 ((_ is ElementMatch!15479) (regOne!31471 (regTwo!31471 r!7292))))))

(declare-fun e!3403696 () Bool)

(assert (=> b!5502707 (= e!3403696 e!3403692)))

(declare-fun b!5502708 () Bool)

(declare-fun e!3403693 () Bool)

(assert (=> b!5502708 (= e!3403695 e!3403693)))

(declare-fun res!2345398 () Bool)

(assert (=> b!5502708 (= res!2345398 (matchRSpec!2582 (regOne!31471 (regOne!31471 (regTwo!31471 r!7292))) s!2326))))

(assert (=> b!5502708 (=> res!2345398 e!3403693)))

(declare-fun b!5502709 () Bool)

(declare-fun e!3403694 () Bool)

(assert (=> b!5502709 (= e!3403694 e!3403696)))

(declare-fun res!2345399 () Bool)

(assert (=> b!5502709 (= res!2345399 (not ((_ is EmptyLang!15479) (regOne!31471 (regTwo!31471 r!7292)))))))

(assert (=> b!5502709 (=> (not res!2345399) (not e!3403696))))

(declare-fun b!5502710 () Bool)

(assert (=> b!5502710 (= e!3403693 (matchRSpec!2582 (regTwo!31471 (regOne!31471 (regTwo!31471 r!7292))) s!2326))))

(declare-fun c!961257 () Bool)

(declare-fun bm!406382 () Bool)

(assert (=> bm!406382 (= call!406387 (Exists!2581 (ite c!961257 lambda!294606 lambda!294607)))))

(declare-fun bm!406383 () Bool)

(declare-fun call!406388 () Bool)

(assert (=> bm!406383 (= call!406388 (isEmpty!34399 s!2326))))

(declare-fun e!3403698 () Bool)

(assert (=> b!5502711 (= e!3403698 call!406387)))

(declare-fun b!5502712 () Bool)

(assert (=> b!5502712 (= e!3403695 e!3403698)))

(assert (=> b!5502712 (= c!961257 ((_ is Star!15479) (regOne!31471 (regTwo!31471 r!7292))))))

(declare-fun d!1744233 () Bool)

(declare-fun c!961256 () Bool)

(assert (=> d!1744233 (= c!961256 ((_ is EmptyExpr!15479) (regOne!31471 (regTwo!31471 r!7292))))))

(assert (=> d!1744233 (= (matchRSpec!2582 (regOne!31471 (regTwo!31471 r!7292)) s!2326) e!3403694)))

(declare-fun b!5502713 () Bool)

(assert (=> b!5502713 (= e!3403694 call!406388)))

(declare-fun b!5502714 () Bool)

(declare-fun res!2345397 () Bool)

(assert (=> b!5502714 (=> res!2345397 e!3403697)))

(assert (=> b!5502714 (= res!2345397 call!406388)))

(assert (=> b!5502714 (= e!3403698 e!3403697)))

(declare-fun b!5502715 () Bool)

(assert (=> b!5502715 (= e!3403692 (= s!2326 (Cons!62614 (c!960803 (regOne!31471 (regTwo!31471 r!7292))) Nil!62614)))))

(assert (= (and d!1744233 c!961256) b!5502713))

(assert (= (and d!1744233 (not c!961256)) b!5502709))

(assert (= (and b!5502709 res!2345399) b!5502707))

(assert (= (and b!5502707 c!961258) b!5502715))

(assert (= (and b!5502707 (not c!961258)) b!5502706))

(assert (= (and b!5502706 c!961259) b!5502708))

(assert (= (and b!5502706 (not c!961259)) b!5502712))

(assert (= (and b!5502708 (not res!2345398)) b!5502710))

(assert (= (and b!5502712 c!961257) b!5502714))

(assert (= (and b!5502712 (not c!961257)) b!5502711))

(assert (= (and b!5502714 (not res!2345397)) b!5502705))

(assert (= (or b!5502705 b!5502711) bm!406382))

(assert (= (or b!5502713 b!5502714) bm!406383))

(declare-fun m!6510448 () Bool)

(assert (=> b!5502708 m!6510448))

(declare-fun m!6510450 () Bool)

(assert (=> b!5502710 m!6510450))

(declare-fun m!6510452 () Bool)

(assert (=> bm!406382 m!6510452))

(assert (=> bm!406383 m!6509612))

(assert (=> b!5501789 d!1744233))

(declare-fun d!1744235 () Bool)

(assert (=> d!1744235 (= (head!11783 (unfocusZipperList!907 zl!343)) (h!69060 (unfocusZipperList!907 zl!343)))))

(assert (=> b!5501345 d!1744235))

(declare-fun b!5502716 () Bool)

(declare-fun e!3403701 () (InoxSet Context!9726))

(declare-fun call!406389 () (InoxSet Context!9726))

(assert (=> b!5502716 (= e!3403701 call!406389)))

(declare-fun e!3403699 () (InoxSet Context!9726))

(declare-fun b!5502717 () Bool)

(assert (=> b!5502717 (= e!3403699 ((_ map or) call!406389 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343))))))) (h!69062 s!2326))))))

(declare-fun bm!406384 () Bool)

(assert (=> bm!406384 (= call!406389 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343))))))) (h!69062 s!2326)))))

(declare-fun b!5502718 () Bool)

(assert (=> b!5502718 (= e!3403699 e!3403701)))

(declare-fun c!961261 () Bool)

(assert (=> b!5502718 (= c!961261 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))))))))

(declare-fun d!1744237 () Bool)

(declare-fun c!961260 () Bool)

(declare-fun e!3403700 () Bool)

(assert (=> d!1744237 (= c!961260 e!3403700)))

(declare-fun res!2345400 () Bool)

(assert (=> d!1744237 (=> (not res!2345400) (not e!3403700))))

(assert (=> d!1744237 (= res!2345400 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))))))))

(assert (=> d!1744237 (= (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (h!69062 s!2326)) e!3403699)))

(declare-fun b!5502719 () Bool)

(assert (=> b!5502719 (= e!3403701 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5502720 () Bool)

(assert (=> b!5502720 (= e!3403700 (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343))))))))))

(assert (= (and d!1744237 res!2345400) b!5502720))

(assert (= (and d!1744237 c!961260) b!5502717))

(assert (= (and d!1744237 (not c!961260)) b!5502718))

(assert (= (and b!5502718 c!961261) b!5502716))

(assert (= (and b!5502718 (not c!961261)) b!5502719))

(assert (= (or b!5502717 b!5502716) bm!406384))

(declare-fun m!6510454 () Bool)

(assert (=> b!5502717 m!6510454))

(declare-fun m!6510456 () Bool)

(assert (=> bm!406384 m!6510456))

(declare-fun m!6510458 () Bool)

(assert (=> b!5502720 m!6510458))

(assert (=> b!5501622 d!1744237))

(declare-fun d!1744239 () Bool)

(declare-fun res!2345401 () Bool)

(declare-fun e!3403702 () Bool)

(assert (=> d!1744239 (=> res!2345401 e!3403702)))

(assert (=> d!1744239 (= res!2345401 ((_ is Nil!62612) (exprs!5363 (h!69061 zl!343))))))

(assert (=> d!1744239 (= (forall!14664 (exprs!5363 (h!69061 zl!343)) lambda!294557) e!3403702)))

(declare-fun b!5502721 () Bool)

(declare-fun e!3403703 () Bool)

(assert (=> b!5502721 (= e!3403702 e!3403703)))

(declare-fun res!2345402 () Bool)

(assert (=> b!5502721 (=> (not res!2345402) (not e!3403703))))

(assert (=> b!5502721 (= res!2345402 (dynLambda!24470 lambda!294557 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5502722 () Bool)

(assert (=> b!5502722 (= e!3403703 (forall!14664 (t!375973 (exprs!5363 (h!69061 zl!343))) lambda!294557))))

(assert (= (and d!1744239 (not res!2345401)) b!5502721))

(assert (= (and b!5502721 res!2345402) b!5502722))

(declare-fun b_lambda!208687 () Bool)

(assert (=> (not b_lambda!208687) (not b!5502721)))

(declare-fun m!6510460 () Bool)

(assert (=> b!5502721 m!6510460))

(declare-fun m!6510462 () Bool)

(assert (=> b!5502722 m!6510462))

(assert (=> d!1743853 d!1744239))

(declare-fun b!5502723 () Bool)

(declare-fun e!3403704 () Bool)

(declare-fun e!3403706 () Bool)

(assert (=> b!5502723 (= e!3403704 e!3403706)))

(declare-fun res!2345407 () Bool)

(assert (=> b!5502723 (= res!2345407 (not (nullable!5516 (reg!15808 lt!2243720))))))

(assert (=> b!5502723 (=> (not res!2345407) (not e!3403706))))

(declare-fun b!5502724 () Bool)

(declare-fun e!3403707 () Bool)

(declare-fun e!3403705 () Bool)

(assert (=> b!5502724 (= e!3403707 e!3403705)))

(declare-fun res!2345404 () Bool)

(assert (=> b!5502724 (=> (not res!2345404) (not e!3403705))))

(declare-fun call!406390 () Bool)

(assert (=> b!5502724 (= res!2345404 call!406390)))

(declare-fun b!5502725 () Bool)

(declare-fun e!3403709 () Bool)

(assert (=> b!5502725 (= e!3403709 e!3403704)))

(declare-fun c!961263 () Bool)

(assert (=> b!5502725 (= c!961263 ((_ is Star!15479) lt!2243720))))

(declare-fun b!5502726 () Bool)

(declare-fun call!406392 () Bool)

(assert (=> b!5502726 (= e!3403706 call!406392)))

(declare-fun b!5502727 () Bool)

(declare-fun res!2345406 () Bool)

(assert (=> b!5502727 (=> res!2345406 e!3403707)))

(assert (=> b!5502727 (= res!2345406 (not ((_ is Concat!24324) lt!2243720)))))

(declare-fun e!3403708 () Bool)

(assert (=> b!5502727 (= e!3403708 e!3403707)))

(declare-fun bm!406385 () Bool)

(declare-fun call!406391 () Bool)

(declare-fun c!961262 () Bool)

(assert (=> bm!406385 (= call!406391 (validRegex!7215 (ite c!961262 (regTwo!31471 lt!2243720) (regTwo!31470 lt!2243720))))))

(declare-fun bm!406386 () Bool)

(assert (=> bm!406386 (= call!406392 (validRegex!7215 (ite c!961263 (reg!15808 lt!2243720) (ite c!961262 (regOne!31471 lt!2243720) (regOne!31470 lt!2243720)))))))

(declare-fun bm!406387 () Bool)

(assert (=> bm!406387 (= call!406390 call!406392)))

(declare-fun d!1744241 () Bool)

(declare-fun res!2345405 () Bool)

(assert (=> d!1744241 (=> res!2345405 e!3403709)))

(assert (=> d!1744241 (= res!2345405 ((_ is ElementMatch!15479) lt!2243720))))

(assert (=> d!1744241 (= (validRegex!7215 lt!2243720) e!3403709)))

(declare-fun b!5502728 () Bool)

(assert (=> b!5502728 (= e!3403705 call!406391)))

(declare-fun b!5502729 () Bool)

(assert (=> b!5502729 (= e!3403704 e!3403708)))

(assert (=> b!5502729 (= c!961262 ((_ is Union!15479) lt!2243720))))

(declare-fun b!5502730 () Bool)

(declare-fun e!3403710 () Bool)

(assert (=> b!5502730 (= e!3403710 call!406391)))

(declare-fun b!5502731 () Bool)

(declare-fun res!2345403 () Bool)

(assert (=> b!5502731 (=> (not res!2345403) (not e!3403710))))

(assert (=> b!5502731 (= res!2345403 call!406390)))

(assert (=> b!5502731 (= e!3403708 e!3403710)))

(assert (= (and d!1744241 (not res!2345405)) b!5502725))

(assert (= (and b!5502725 c!961263) b!5502723))

(assert (= (and b!5502725 (not c!961263)) b!5502729))

(assert (= (and b!5502723 res!2345407) b!5502726))

(assert (= (and b!5502729 c!961262) b!5502731))

(assert (= (and b!5502729 (not c!961262)) b!5502727))

(assert (= (and b!5502731 res!2345403) b!5502730))

(assert (= (and b!5502727 (not res!2345406)) b!5502724))

(assert (= (and b!5502724 res!2345404) b!5502728))

(assert (= (or b!5502730 b!5502728) bm!406385))

(assert (= (or b!5502731 b!5502724) bm!406387))

(assert (= (or b!5502726 bm!406387) bm!406386))

(declare-fun m!6510464 () Bool)

(assert (=> b!5502723 m!6510464))

(declare-fun m!6510466 () Bool)

(assert (=> bm!406385 m!6510466))

(declare-fun m!6510468 () Bool)

(assert (=> bm!406386 m!6510468))

(assert (=> d!1743757 d!1744241))

(assert (=> d!1743757 d!1743731))

(assert (=> d!1743757 d!1743739))

(declare-fun d!1744243 () Bool)

(assert (=> d!1744243 (= (head!11783 (exprs!5363 (h!69061 zl!343))) (h!69060 (exprs!5363 (h!69061 zl!343))))))

(assert (=> b!5501720 d!1744243))

(assert (=> b!5501835 d!1744187))

(assert (=> b!5501835 d!1744167))

(declare-fun d!1744245 () Bool)

(declare-fun c!961264 () Bool)

(assert (=> d!1744245 (= c!961264 (isEmpty!34399 (tail!10879 (t!375975 s!2326))))))

(declare-fun e!3403711 () Bool)

(assert (=> d!1744245 (= (matchZipper!1647 (derivationStepZipper!1590 lt!2243671 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))) e!3403711)))

(declare-fun b!5502732 () Bool)

(assert (=> b!5502732 (= e!3403711 (nullableZipper!1521 (derivationStepZipper!1590 lt!2243671 (head!11784 (t!375975 s!2326)))))))

(declare-fun b!5502733 () Bool)

(assert (=> b!5502733 (= e!3403711 (matchZipper!1647 (derivationStepZipper!1590 (derivationStepZipper!1590 lt!2243671 (head!11784 (t!375975 s!2326))) (head!11784 (tail!10879 (t!375975 s!2326)))) (tail!10879 (tail!10879 (t!375975 s!2326)))))))

(assert (= (and d!1744245 c!961264) b!5502732))

(assert (= (and d!1744245 (not c!961264)) b!5502733))

(assert (=> d!1744245 m!6509678))

(assert (=> d!1744245 m!6510272))

(assert (=> b!5502732 m!6509676))

(declare-fun m!6510470 () Bool)

(assert (=> b!5502732 m!6510470))

(assert (=> b!5502733 m!6509678))

(assert (=> b!5502733 m!6510276))

(assert (=> b!5502733 m!6509676))

(assert (=> b!5502733 m!6510276))

(declare-fun m!6510472 () Bool)

(assert (=> b!5502733 m!6510472))

(assert (=> b!5502733 m!6509678))

(assert (=> b!5502733 m!6510280))

(assert (=> b!5502733 m!6510472))

(assert (=> b!5502733 m!6510280))

(declare-fun m!6510474 () Bool)

(assert (=> b!5502733 m!6510474))

(assert (=> b!5501667 d!1744245))

(declare-fun bs!1269182 () Bool)

(declare-fun d!1744247 () Bool)

(assert (= bs!1269182 (and d!1744247 b!5501156)))

(declare-fun lambda!294608 () Int)

(assert (=> bs!1269182 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294608 lambda!294515))))

(declare-fun bs!1269183 () Bool)

(assert (= bs!1269183 (and d!1744247 d!1743817)))

(assert (=> bs!1269183 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294608 lambda!294550))))

(declare-fun bs!1269184 () Bool)

(assert (= bs!1269184 (and d!1744247 d!1744157)))

(assert (=> bs!1269184 (= lambda!294608 lambda!294602)))

(assert (=> d!1744247 true))

(assert (=> d!1744247 (= (derivationStepZipper!1590 lt!2243671 (head!11784 (t!375975 s!2326))) (flatMap!1098 lt!2243671 lambda!294608))))

(declare-fun bs!1269185 () Bool)

(assert (= bs!1269185 d!1744247))

(declare-fun m!6510476 () Bool)

(assert (=> bs!1269185 m!6510476))

(assert (=> b!5501667 d!1744247))

(assert (=> b!5501667 d!1744159))

(assert (=> b!5501667 d!1744161))

(declare-fun d!1744249 () Bool)

(assert (=> d!1744249 (= (flatMap!1098 z!1189 lambda!294550) (choose!41803 z!1189 lambda!294550))))

(declare-fun bs!1269186 () Bool)

(assert (= bs!1269186 d!1744249))

(declare-fun m!6510478 () Bool)

(assert (=> bs!1269186 m!6510478))

(assert (=> d!1743817 d!1744249))

(assert (=> bm!406198 d!1744121))

(declare-fun d!1744251 () Bool)

(assert (=> d!1744251 (= (nullable!5516 (regOne!31470 r!7292)) (nullableFct!1651 (regOne!31470 r!7292)))))

(declare-fun bs!1269187 () Bool)

(assert (= bs!1269187 d!1744251))

(declare-fun m!6510480 () Bool)

(assert (=> bs!1269187 m!6510480))

(assert (=> b!5501653 d!1744251))

(declare-fun bs!1269188 () Bool)

(declare-fun d!1744253 () Bool)

(assert (= bs!1269188 (and d!1744253 d!1744111)))

(declare-fun lambda!294609 () Int)

(assert (=> bs!1269188 (= lambda!294609 lambda!294595)))

(declare-fun bs!1269189 () Bool)

(assert (= bs!1269189 (and d!1744253 d!1744217)))

(assert (=> bs!1269189 (= lambda!294609 lambda!294605)))

(assert (=> d!1744253 (= (nullableZipper!1521 z!1189) (exists!2130 z!1189 lambda!294609))))

(declare-fun bs!1269190 () Bool)

(assert (= bs!1269190 d!1744253))

(declare-fun m!6510482 () Bool)

(assert (=> bs!1269190 m!6510482))

(assert (=> b!5501664 d!1744253))

(declare-fun c!961268 () Bool)

(declare-fun d!1744255 () Bool)

(assert (=> d!1744255 (= c!961268 (and ((_ is ElementMatch!15479) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (= (c!960803 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (h!69062 s!2326))))))

(declare-fun e!3403712 () (InoxSet Context!9726))

(assert (=> d!1744255 (= (derivationStepZipperDown!825 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))) (ite c!960989 lt!2243674 (Context!9727 call!406183)) (h!69062 s!2326)) e!3403712)))

(declare-fun bm!406388 () Bool)

(declare-fun call!406397 () (InoxSet Context!9726))

(declare-fun call!406396 () (InoxSet Context!9726))

(assert (=> bm!406388 (= call!406397 call!406396)))

(declare-fun bm!406389 () Bool)

(declare-fun call!406395 () List!62736)

(declare-fun c!961269 () Bool)

(declare-fun call!406394 () (InoxSet Context!9726))

(assert (=> bm!406389 (= call!406394 (derivationStepZipperDown!825 (ite c!961269 (regTwo!31471 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (regOne!31470 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))) (ite c!961269 (ite c!960989 lt!2243674 (Context!9727 call!406183)) (Context!9727 call!406395)) (h!69062 s!2326)))))

(declare-fun bm!406390 () Bool)

(declare-fun call!406398 () (InoxSet Context!9726))

(assert (=> bm!406390 (= call!406396 call!406398)))

(declare-fun bm!406391 () Bool)

(declare-fun call!406393 () List!62736)

(assert (=> bm!406391 (= call!406393 call!406395)))

(declare-fun b!5502734 () Bool)

(declare-fun c!961265 () Bool)

(assert (=> b!5502734 (= c!961265 ((_ is Star!15479) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))))))

(declare-fun e!3403714 () (InoxSet Context!9726))

(declare-fun e!3403716 () (InoxSet Context!9726))

(assert (=> b!5502734 (= e!3403714 e!3403716)))

(declare-fun b!5502735 () Bool)

(assert (=> b!5502735 (= e!3403716 call!406397)))

(declare-fun b!5502736 () Bool)

(declare-fun c!961267 () Bool)

(declare-fun e!3403713 () Bool)

(assert (=> b!5502736 (= c!961267 e!3403713)))

(declare-fun res!2345408 () Bool)

(assert (=> b!5502736 (=> (not res!2345408) (not e!3403713))))

(assert (=> b!5502736 (= res!2345408 ((_ is Concat!24324) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))))))

(declare-fun e!3403715 () (InoxSet Context!9726))

(declare-fun e!3403717 () (InoxSet Context!9726))

(assert (=> b!5502736 (= e!3403715 e!3403717)))

(declare-fun b!5502737 () Bool)

(assert (=> b!5502737 (= e!3403712 e!3403715)))

(assert (=> b!5502737 (= c!961269 ((_ is Union!15479) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))))))

(declare-fun bm!406392 () Bool)

(declare-fun c!961266 () Bool)

(assert (=> bm!406392 (= call!406395 ($colon$colon!1570 (exprs!5363 (ite c!960989 lt!2243674 (Context!9727 call!406183))) (ite (or c!961267 c!961266) (regTwo!31470 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))))))

(declare-fun b!5502738 () Bool)

(assert (=> b!5502738 (= e!3403712 (store ((as const (Array Context!9726 Bool)) false) (ite c!960989 lt!2243674 (Context!9727 call!406183)) true))))

(declare-fun b!5502739 () Bool)

(assert (=> b!5502739 (= e!3403713 (nullable!5516 (regOne!31470 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))))))

(declare-fun b!5502740 () Bool)

(assert (=> b!5502740 (= e!3403714 call!406397)))

(declare-fun b!5502741 () Bool)

(assert (=> b!5502741 (= e!3403717 e!3403714)))

(assert (=> b!5502741 (= c!961266 ((_ is Concat!24324) (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))))))

(declare-fun bm!406393 () Bool)

(assert (=> bm!406393 (= call!406398 (derivationStepZipperDown!825 (ite c!961269 (regOne!31471 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (ite c!961267 (regTwo!31470 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (ite c!961266 (regOne!31470 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292)))) (reg!15808 (ite c!960989 (regTwo!31471 (regTwo!31471 r!7292)) (regOne!31470 (regTwo!31471 r!7292))))))) (ite (or c!961269 c!961267) (ite c!960989 lt!2243674 (Context!9727 call!406183)) (Context!9727 call!406393)) (h!69062 s!2326)))))

(declare-fun b!5502742 () Bool)

(assert (=> b!5502742 (= e!3403717 ((_ map or) call!406394 call!406396))))

(declare-fun b!5502743 () Bool)

(assert (=> b!5502743 (= e!3403715 ((_ map or) call!406398 call!406394))))

(declare-fun b!5502744 () Bool)

(assert (=> b!5502744 (= e!3403716 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744255 c!961268) b!5502738))

(assert (= (and d!1744255 (not c!961268)) b!5502737))

(assert (= (and b!5502737 c!961269) b!5502743))

(assert (= (and b!5502737 (not c!961269)) b!5502736))

(assert (= (and b!5502736 res!2345408) b!5502739))

(assert (= (and b!5502736 c!961267) b!5502742))

(assert (= (and b!5502736 (not c!961267)) b!5502741))

(assert (= (and b!5502741 c!961266) b!5502740))

(assert (= (and b!5502741 (not c!961266)) b!5502734))

(assert (= (and b!5502734 c!961265) b!5502735))

(assert (= (and b!5502734 (not c!961265)) b!5502744))

(assert (= (or b!5502740 b!5502735) bm!406391))

(assert (= (or b!5502740 b!5502735) bm!406388))

(assert (= (or b!5502742 bm!406391) bm!406392))

(assert (= (or b!5502742 bm!406388) bm!406390))

(assert (= (or b!5502743 b!5502742) bm!406389))

(assert (= (or b!5502743 bm!406390) bm!406393))

(declare-fun m!6510484 () Bool)

(assert (=> bm!406389 m!6510484))

(declare-fun m!6510486 () Bool)

(assert (=> bm!406393 m!6510486))

(declare-fun m!6510488 () Bool)

(assert (=> b!5502738 m!6510488))

(declare-fun m!6510490 () Bool)

(assert (=> b!5502739 m!6510490))

(declare-fun m!6510492 () Bool)

(assert (=> bm!406392 m!6510492))

(assert (=> bm!406177 d!1744255))

(assert (=> bs!1268904 d!1743781))

(assert (=> bm!406193 d!1744121))

(assert (=> b!5501855 d!1744187))

(assert (=> b!5501855 d!1744167))

(declare-fun d!1744257 () Bool)

(assert (=> d!1744257 (= (isEmpty!34398 (unfocusZipperList!907 zl!343)) ((_ is Nil!62612) (unfocusZipperList!907 zl!343)))))

(assert (=> b!5501349 d!1744257))

(declare-fun d!1744259 () Bool)

(assert (=> d!1744259 (= (nullable!5516 (h!69060 (exprs!5363 (h!69061 zl!343)))) (nullableFct!1651 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun bs!1269191 () Bool)

(assert (= bs!1269191 d!1744259))

(declare-fun m!6510494 () Bool)

(assert (=> bs!1269191 m!6510494))

(assert (=> b!5501625 d!1744259))

(assert (=> d!1743863 d!1744121))

(assert (=> d!1743863 d!1744185))

(declare-fun bs!1269192 () Bool)

(declare-fun b!5502745 () Bool)

(assert (= bs!1269192 (and b!5502745 b!5501792)))

(declare-fun lambda!294610 () Int)

(assert (=> bs!1269192 (not (= lambda!294610 lambda!294563))))

(declare-fun bs!1269193 () Bool)

(assert (= bs!1269193 (and b!5502745 b!5502488)))

(assert (=> bs!1269193 (not (= lambda!294610 lambda!294598))))

(declare-fun bs!1269194 () Bool)

(assert (= bs!1269194 (and b!5502745 b!5501849)))

(assert (=> bs!1269194 (not (= lambda!294610 lambda!294565))))

(declare-fun bs!1269195 () Bool)

(assert (= bs!1269195 (and b!5502745 b!5502711)))

(assert (=> bs!1269195 (not (= lambda!294610 lambda!294607))))

(declare-fun bs!1269196 () Bool)

(assert (= bs!1269196 (and b!5502745 b!5501874)))

(assert (=> bs!1269196 (not (= lambda!294610 lambda!294567))))

(declare-fun bs!1269197 () Bool)

(assert (= bs!1269197 (and b!5502745 b!5501786)))

(assert (=> bs!1269197 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 (regTwo!31471 r!7292))) (= (regOne!31471 (regOne!31471 r!7292)) (regTwo!31471 r!7292))) (= lambda!294610 lambda!294562))))

(declare-fun bs!1269198 () Bool)

(assert (= bs!1269198 (and b!5502745 b!5502499)))

(assert (=> bs!1269198 (not (= lambda!294610 lambda!294600))))

(declare-fun bs!1269199 () Bool)

(assert (= bs!1269199 (and b!5502745 b!5502482)))

(assert (=> bs!1269199 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 (regTwo!31471 (regOne!31471 r!7292)))) (= (regOne!31471 (regOne!31471 r!7292)) (regTwo!31471 (regOne!31471 r!7292)))) (= lambda!294610 lambda!294597))))

(declare-fun bs!1269200 () Bool)

(assert (= bs!1269200 (and b!5502745 b!5502705)))

(assert (=> bs!1269200 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 (regOne!31471 (regTwo!31471 r!7292)))) (= (regOne!31471 (regOne!31471 r!7292)) (regOne!31471 (regTwo!31471 r!7292)))) (= lambda!294610 lambda!294606))))

(declare-fun bs!1269201 () Bool)

(assert (= bs!1269201 (and b!5502745 b!5501868)))

(assert (=> bs!1269201 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 r!7292)) (= (regOne!31471 (regOne!31471 r!7292)) r!7292)) (= lambda!294610 lambda!294566))))

(declare-fun bs!1269202 () Bool)

(assert (= bs!1269202 (and b!5502745 b!5502493)))

(assert (=> bs!1269202 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 (regTwo!31471 (regTwo!31471 r!7292)))) (= (regOne!31471 (regOne!31471 r!7292)) (regTwo!31471 (regTwo!31471 r!7292)))) (= lambda!294610 lambda!294599))))

(declare-fun bs!1269203 () Bool)

(assert (= bs!1269203 (and b!5502745 b!5501843)))

(assert (=> bs!1269203 (= (and (= (reg!15808 (regOne!31471 (regOne!31471 r!7292))) (reg!15808 (regOne!31471 r!7292))) (= (regOne!31471 (regOne!31471 r!7292)) (regOne!31471 r!7292))) (= lambda!294610 lambda!294564))))

(assert (=> b!5502745 true))

(assert (=> b!5502745 true))

(declare-fun bs!1269204 () Bool)

(declare-fun b!5502751 () Bool)

(assert (= bs!1269204 (and b!5502751 b!5501792)))

(declare-fun lambda!294611 () Int)

(assert (=> bs!1269204 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 (regTwo!31471 r!7292))) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 (regTwo!31471 r!7292)))) (= lambda!294611 lambda!294563))))

(declare-fun bs!1269205 () Bool)

(assert (= bs!1269205 (and b!5502751 b!5502745)))

(assert (=> bs!1269205 (not (= lambda!294611 lambda!294610))))

(declare-fun bs!1269206 () Bool)

(assert (= bs!1269206 (and b!5502751 b!5502488)))

(assert (=> bs!1269206 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 (regTwo!31471 (regOne!31471 r!7292)))) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 (regTwo!31471 (regOne!31471 r!7292))))) (= lambda!294611 lambda!294598))))

(declare-fun bs!1269207 () Bool)

(assert (= bs!1269207 (and b!5502751 b!5501849)))

(assert (=> bs!1269207 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 (regOne!31471 r!7292))) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 (regOne!31471 r!7292)))) (= lambda!294611 lambda!294565))))

(declare-fun bs!1269208 () Bool)

(assert (= bs!1269208 (and b!5502751 b!5502711)))

(assert (=> bs!1269208 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 (regOne!31471 (regTwo!31471 r!7292)))) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 (regOne!31471 (regTwo!31471 r!7292))))) (= lambda!294611 lambda!294607))))

(declare-fun bs!1269209 () Bool)

(assert (= bs!1269209 (and b!5502751 b!5501874)))

(assert (=> bs!1269209 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 r!7292)) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 r!7292))) (= lambda!294611 lambda!294567))))

(declare-fun bs!1269210 () Bool)

(assert (= bs!1269210 (and b!5502751 b!5501786)))

(assert (=> bs!1269210 (not (= lambda!294611 lambda!294562))))

(declare-fun bs!1269211 () Bool)

(assert (= bs!1269211 (and b!5502751 b!5502499)))

(assert (=> bs!1269211 (= (and (= (regOne!31470 (regOne!31471 (regOne!31471 r!7292))) (regOne!31470 (regTwo!31471 (regTwo!31471 r!7292)))) (= (regTwo!31470 (regOne!31471 (regOne!31471 r!7292))) (regTwo!31470 (regTwo!31471 (regTwo!31471 r!7292))))) (= lambda!294611 lambda!294600))))

(declare-fun bs!1269212 () Bool)

(assert (= bs!1269212 (and b!5502751 b!5502482)))

(assert (=> bs!1269212 (not (= lambda!294611 lambda!294597))))

(declare-fun bs!1269213 () Bool)

(assert (= bs!1269213 (and b!5502751 b!5502705)))

(assert (=> bs!1269213 (not (= lambda!294611 lambda!294606))))

(declare-fun bs!1269214 () Bool)

(assert (= bs!1269214 (and b!5502751 b!5501868)))

(assert (=> bs!1269214 (not (= lambda!294611 lambda!294566))))

(declare-fun bs!1269215 () Bool)

(assert (= bs!1269215 (and b!5502751 b!5502493)))

(assert (=> bs!1269215 (not (= lambda!294611 lambda!294599))))

(declare-fun bs!1269216 () Bool)

(assert (= bs!1269216 (and b!5502751 b!5501843)))

(assert (=> bs!1269216 (not (= lambda!294611 lambda!294564))))

(assert (=> b!5502751 true))

(assert (=> b!5502751 true))

(declare-fun e!3403723 () Bool)

(declare-fun call!406399 () Bool)

(assert (=> b!5502745 (= e!3403723 call!406399)))

(declare-fun b!5502746 () Bool)

(declare-fun c!961273 () Bool)

(assert (=> b!5502746 (= c!961273 ((_ is Union!15479) (regOne!31471 (regOne!31471 r!7292))))))

(declare-fun e!3403718 () Bool)

(declare-fun e!3403721 () Bool)

(assert (=> b!5502746 (= e!3403718 e!3403721)))

(declare-fun b!5502747 () Bool)

(declare-fun c!961272 () Bool)

(assert (=> b!5502747 (= c!961272 ((_ is ElementMatch!15479) (regOne!31471 (regOne!31471 r!7292))))))

(declare-fun e!3403722 () Bool)

(assert (=> b!5502747 (= e!3403722 e!3403718)))

(declare-fun b!5502748 () Bool)

(declare-fun e!3403719 () Bool)

(assert (=> b!5502748 (= e!3403721 e!3403719)))

(declare-fun res!2345410 () Bool)

(assert (=> b!5502748 (= res!2345410 (matchRSpec!2582 (regOne!31471 (regOne!31471 (regOne!31471 r!7292))) s!2326))))

(assert (=> b!5502748 (=> res!2345410 e!3403719)))

(declare-fun b!5502749 () Bool)

(declare-fun e!3403720 () Bool)

(assert (=> b!5502749 (= e!3403720 e!3403722)))

(declare-fun res!2345411 () Bool)

(assert (=> b!5502749 (= res!2345411 (not ((_ is EmptyLang!15479) (regOne!31471 (regOne!31471 r!7292)))))))

(assert (=> b!5502749 (=> (not res!2345411) (not e!3403722))))

(declare-fun b!5502750 () Bool)

(assert (=> b!5502750 (= e!3403719 (matchRSpec!2582 (regTwo!31471 (regOne!31471 (regOne!31471 r!7292))) s!2326))))

(declare-fun bm!406394 () Bool)

(declare-fun c!961271 () Bool)

(assert (=> bm!406394 (= call!406399 (Exists!2581 (ite c!961271 lambda!294610 lambda!294611)))))

(declare-fun bm!406395 () Bool)

(declare-fun call!406400 () Bool)

(assert (=> bm!406395 (= call!406400 (isEmpty!34399 s!2326))))

(declare-fun e!3403724 () Bool)

(assert (=> b!5502751 (= e!3403724 call!406399)))

(declare-fun b!5502752 () Bool)

(assert (=> b!5502752 (= e!3403721 e!3403724)))

(assert (=> b!5502752 (= c!961271 ((_ is Star!15479) (regOne!31471 (regOne!31471 r!7292))))))

(declare-fun d!1744261 () Bool)

(declare-fun c!961270 () Bool)

(assert (=> d!1744261 (= c!961270 ((_ is EmptyExpr!15479) (regOne!31471 (regOne!31471 r!7292))))))

(assert (=> d!1744261 (= (matchRSpec!2582 (regOne!31471 (regOne!31471 r!7292)) s!2326) e!3403720)))

(declare-fun b!5502753 () Bool)

(assert (=> b!5502753 (= e!3403720 call!406400)))

(declare-fun b!5502754 () Bool)

(declare-fun res!2345409 () Bool)

(assert (=> b!5502754 (=> res!2345409 e!3403723)))

(assert (=> b!5502754 (= res!2345409 call!406400)))

(assert (=> b!5502754 (= e!3403724 e!3403723)))

(declare-fun b!5502755 () Bool)

(assert (=> b!5502755 (= e!3403718 (= s!2326 (Cons!62614 (c!960803 (regOne!31471 (regOne!31471 r!7292))) Nil!62614)))))

(assert (= (and d!1744261 c!961270) b!5502753))

(assert (= (and d!1744261 (not c!961270)) b!5502749))

(assert (= (and b!5502749 res!2345411) b!5502747))

(assert (= (and b!5502747 c!961272) b!5502755))

(assert (= (and b!5502747 (not c!961272)) b!5502746))

(assert (= (and b!5502746 c!961273) b!5502748))

(assert (= (and b!5502746 (not c!961273)) b!5502752))

(assert (= (and b!5502748 (not res!2345410)) b!5502750))

(assert (= (and b!5502752 c!961271) b!5502754))

(assert (= (and b!5502752 (not c!961271)) b!5502751))

(assert (= (and b!5502754 (not res!2345409)) b!5502745))

(assert (= (or b!5502745 b!5502751) bm!406394))

(assert (= (or b!5502753 b!5502754) bm!406395))

(declare-fun m!6510496 () Bool)

(assert (=> b!5502748 m!6510496))

(declare-fun m!6510498 () Bool)

(assert (=> b!5502750 m!6510498))

(declare-fun m!6510500 () Bool)

(assert (=> bm!406394 m!6510500))

(assert (=> bm!406395 m!6509612))

(assert (=> b!5501846 d!1744261))

(assert (=> d!1743829 d!1743825))

(declare-fun d!1744263 () Bool)

(assert (=> d!1744263 (= (flatMap!1098 z!1189 lambda!294515) (dynLambda!24467 lambda!294515 (h!69061 zl!343)))))

(assert (=> d!1744263 true))

(declare-fun _$13!2013 () Unit!155418)

(assert (=> d!1744263 (= (choose!41804 z!1189 (h!69061 zl!343) lambda!294515) _$13!2013)))

(declare-fun b_lambda!208689 () Bool)

(assert (=> (not b_lambda!208689) (not d!1744263)))

(declare-fun bs!1269217 () Bool)

(assert (= bs!1269217 d!1744263))

(assert (=> bs!1269217 m!6509304))

(assert (=> bs!1269217 m!6509642))

(assert (=> d!1743829 d!1744263))

(assert (=> d!1743847 d!1744139))

(assert (=> d!1743815 d!1743759))

(declare-fun d!1744265 () Bool)

(assert (=> d!1744265 (= (flatMap!1098 lt!2243673 lambda!294515) (dynLambda!24467 lambda!294515 lt!2243677))))

(assert (=> d!1744265 true))

(declare-fun _$13!2014 () Unit!155418)

(assert (=> d!1744265 (= (choose!41804 lt!2243673 lt!2243677 lambda!294515) _$13!2014)))

(declare-fun b_lambda!208691 () Bool)

(assert (=> (not b_lambda!208691) (not d!1744265)))

(declare-fun bs!1269218 () Bool)

(assert (= bs!1269218 d!1744265))

(assert (=> bs!1269218 m!6509258))

(assert (=> bs!1269218 m!6509624))

(assert (=> d!1743815 d!1744265))

(assert (=> b!5501885 d!1744187))

(assert (=> b!5501885 d!1744167))

(declare-fun d!1744267 () Bool)

(assert (=> d!1744267 true))

(declare-fun setRes!36486 () Bool)

(assert (=> d!1744267 setRes!36486))

(declare-fun condSetEmpty!36486 () Bool)

(declare-fun res!2345412 () (InoxSet Context!9726))

(assert (=> d!1744267 (= condSetEmpty!36486 (= res!2345412 ((as const (Array Context!9726 Bool)) false)))))

(assert (=> d!1744267 (= (choose!41803 lt!2243673 lambda!294515) res!2345412)))

(declare-fun setIsEmpty!36486 () Bool)

(assert (=> setIsEmpty!36486 setRes!36486))

(declare-fun e!3403725 () Bool)

(declare-fun setNonEmpty!36486 () Bool)

(declare-fun setElem!36486 () Context!9726)

(declare-fun tp!1514035 () Bool)

(assert (=> setNonEmpty!36486 (= setRes!36486 (and tp!1514035 (inv!81944 setElem!36486) e!3403725))))

(declare-fun setRest!36486 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36486 (= res!2345412 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36486 true) setRest!36486))))

(declare-fun b!5502756 () Bool)

(declare-fun tp!1514034 () Bool)

(assert (=> b!5502756 (= e!3403725 tp!1514034)))

(assert (= (and d!1744267 condSetEmpty!36486) setIsEmpty!36486))

(assert (= (and d!1744267 (not condSetEmpty!36486)) setNonEmpty!36486))

(assert (= setNonEmpty!36486 b!5502756))

(declare-fun m!6510502 () Bool)

(assert (=> setNonEmpty!36486 m!6510502))

(assert (=> d!1743759 d!1744267))

(declare-fun d!1744269 () Bool)

(declare-fun c!961277 () Bool)

(assert (=> d!1744269 (= c!961277 (and ((_ is ElementMatch!15479) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (= (c!960803 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (h!69062 s!2326))))))

(declare-fun e!3403726 () (InoxSet Context!9726))

(assert (=> d!1744269 (= (derivationStepZipperDown!825 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))) (ite c!960994 lt!2243674 (Context!9727 call!406189)) (h!69062 s!2326)) e!3403726)))

(declare-fun bm!406396 () Bool)

(declare-fun call!406405 () (InoxSet Context!9726))

(declare-fun call!406404 () (InoxSet Context!9726))

(assert (=> bm!406396 (= call!406405 call!406404)))

(declare-fun call!406402 () (InoxSet Context!9726))

(declare-fun call!406403 () List!62736)

(declare-fun c!961278 () Bool)

(declare-fun bm!406397 () Bool)

(assert (=> bm!406397 (= call!406402 (derivationStepZipperDown!825 (ite c!961278 (regTwo!31471 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (regOne!31470 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))) (ite c!961278 (ite c!960994 lt!2243674 (Context!9727 call!406189)) (Context!9727 call!406403)) (h!69062 s!2326)))))

(declare-fun bm!406398 () Bool)

(declare-fun call!406406 () (InoxSet Context!9726))

(assert (=> bm!406398 (= call!406404 call!406406)))

(declare-fun bm!406399 () Bool)

(declare-fun call!406401 () List!62736)

(assert (=> bm!406399 (= call!406401 call!406403)))

(declare-fun b!5502757 () Bool)

(declare-fun c!961274 () Bool)

(assert (=> b!5502757 (= c!961274 ((_ is Star!15479) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))))))

(declare-fun e!3403728 () (InoxSet Context!9726))

(declare-fun e!3403730 () (InoxSet Context!9726))

(assert (=> b!5502757 (= e!3403728 e!3403730)))

(declare-fun b!5502758 () Bool)

(assert (=> b!5502758 (= e!3403730 call!406405)))

(declare-fun b!5502759 () Bool)

(declare-fun c!961276 () Bool)

(declare-fun e!3403727 () Bool)

(assert (=> b!5502759 (= c!961276 e!3403727)))

(declare-fun res!2345413 () Bool)

(assert (=> b!5502759 (=> (not res!2345413) (not e!3403727))))

(assert (=> b!5502759 (= res!2345413 ((_ is Concat!24324) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))))))

(declare-fun e!3403729 () (InoxSet Context!9726))

(declare-fun e!3403731 () (InoxSet Context!9726))

(assert (=> b!5502759 (= e!3403729 e!3403731)))

(declare-fun b!5502760 () Bool)

(assert (=> b!5502760 (= e!3403726 e!3403729)))

(assert (=> b!5502760 (= c!961278 ((_ is Union!15479) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))))))

(declare-fun c!961275 () Bool)

(declare-fun bm!406400 () Bool)

(assert (=> bm!406400 (= call!406403 ($colon$colon!1570 (exprs!5363 (ite c!960994 lt!2243674 (Context!9727 call!406189))) (ite (or c!961276 c!961275) (regTwo!31470 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))))))

(declare-fun b!5502761 () Bool)

(assert (=> b!5502761 (= e!3403726 (store ((as const (Array Context!9726 Bool)) false) (ite c!960994 lt!2243674 (Context!9727 call!406189)) true))))

(declare-fun b!5502762 () Bool)

(assert (=> b!5502762 (= e!3403727 (nullable!5516 (regOne!31470 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))))))

(declare-fun b!5502763 () Bool)

(assert (=> b!5502763 (= e!3403728 call!406405)))

(declare-fun b!5502764 () Bool)

(assert (=> b!5502764 (= e!3403731 e!3403728)))

(assert (=> b!5502764 (= c!961275 ((_ is Concat!24324) (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))))))

(declare-fun bm!406401 () Bool)

(assert (=> bm!406401 (= call!406406 (derivationStepZipperDown!825 (ite c!961278 (regOne!31471 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (ite c!961276 (regTwo!31470 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (ite c!961275 (regOne!31470 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292)))) (reg!15808 (ite c!960994 (regTwo!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))))) (ite (or c!961278 c!961276) (ite c!960994 lt!2243674 (Context!9727 call!406189)) (Context!9727 call!406401)) (h!69062 s!2326)))))

(declare-fun b!5502765 () Bool)

(assert (=> b!5502765 (= e!3403731 ((_ map or) call!406402 call!406404))))

(declare-fun b!5502766 () Bool)

(assert (=> b!5502766 (= e!3403729 ((_ map or) call!406406 call!406402))))

(declare-fun b!5502767 () Bool)

(assert (=> b!5502767 (= e!3403730 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744269 c!961277) b!5502761))

(assert (= (and d!1744269 (not c!961277)) b!5502760))

(assert (= (and b!5502760 c!961278) b!5502766))

(assert (= (and b!5502760 (not c!961278)) b!5502759))

(assert (= (and b!5502759 res!2345413) b!5502762))

(assert (= (and b!5502759 c!961276) b!5502765))

(assert (= (and b!5502759 (not c!961276)) b!5502764))

(assert (= (and b!5502764 c!961275) b!5502763))

(assert (= (and b!5502764 (not c!961275)) b!5502757))

(assert (= (and b!5502757 c!961274) b!5502758))

(assert (= (and b!5502757 (not c!961274)) b!5502767))

(assert (= (or b!5502763 b!5502758) bm!406399))

(assert (= (or b!5502763 b!5502758) bm!406396))

(assert (= (or b!5502765 bm!406399) bm!406400))

(assert (= (or b!5502765 bm!406396) bm!406398))

(assert (= (or b!5502766 b!5502765) bm!406397))

(assert (= (or b!5502766 bm!406398) bm!406401))

(declare-fun m!6510504 () Bool)

(assert (=> bm!406397 m!6510504))

(declare-fun m!6510506 () Bool)

(assert (=> bm!406401 m!6510506))

(declare-fun m!6510508 () Bool)

(assert (=> b!5502761 m!6510508))

(declare-fun m!6510510 () Bool)

(assert (=> b!5502762 m!6510510))

(declare-fun m!6510512 () Bool)

(assert (=> bm!406400 m!6510512))

(assert (=> bm!406183 d!1744269))

(declare-fun b!5502768 () Bool)

(declare-fun e!3403732 () Bool)

(declare-fun e!3403734 () Bool)

(assert (=> b!5502768 (= e!3403732 e!3403734)))

(declare-fun res!2345418 () Bool)

(assert (=> b!5502768 (= res!2345418 (not (nullable!5516 (reg!15808 lt!2243736))))))

(assert (=> b!5502768 (=> (not res!2345418) (not e!3403734))))

(declare-fun b!5502769 () Bool)

(declare-fun e!3403735 () Bool)

(declare-fun e!3403733 () Bool)

(assert (=> b!5502769 (= e!3403735 e!3403733)))

(declare-fun res!2345415 () Bool)

(assert (=> b!5502769 (=> (not res!2345415) (not e!3403733))))

(declare-fun call!406407 () Bool)

(assert (=> b!5502769 (= res!2345415 call!406407)))

(declare-fun b!5502770 () Bool)

(declare-fun e!3403737 () Bool)

(assert (=> b!5502770 (= e!3403737 e!3403732)))

(declare-fun c!961280 () Bool)

(assert (=> b!5502770 (= c!961280 ((_ is Star!15479) lt!2243736))))

(declare-fun b!5502771 () Bool)

(declare-fun call!406409 () Bool)

(assert (=> b!5502771 (= e!3403734 call!406409)))

(declare-fun b!5502772 () Bool)

(declare-fun res!2345417 () Bool)

(assert (=> b!5502772 (=> res!2345417 e!3403735)))

(assert (=> b!5502772 (= res!2345417 (not ((_ is Concat!24324) lt!2243736)))))

(declare-fun e!3403736 () Bool)

(assert (=> b!5502772 (= e!3403736 e!3403735)))

(declare-fun bm!406402 () Bool)

(declare-fun call!406408 () Bool)

(declare-fun c!961279 () Bool)

(assert (=> bm!406402 (= call!406408 (validRegex!7215 (ite c!961279 (regTwo!31471 lt!2243736) (regTwo!31470 lt!2243736))))))

(declare-fun bm!406403 () Bool)

(assert (=> bm!406403 (= call!406409 (validRegex!7215 (ite c!961280 (reg!15808 lt!2243736) (ite c!961279 (regOne!31471 lt!2243736) (regOne!31470 lt!2243736)))))))

(declare-fun bm!406404 () Bool)

(assert (=> bm!406404 (= call!406407 call!406409)))

(declare-fun d!1744271 () Bool)

(declare-fun res!2345416 () Bool)

(assert (=> d!1744271 (=> res!2345416 e!3403737)))

(assert (=> d!1744271 (= res!2345416 ((_ is ElementMatch!15479) lt!2243736))))

(assert (=> d!1744271 (= (validRegex!7215 lt!2243736) e!3403737)))

(declare-fun b!5502773 () Bool)

(assert (=> b!5502773 (= e!3403733 call!406408)))

(declare-fun b!5502774 () Bool)

(assert (=> b!5502774 (= e!3403732 e!3403736)))

(assert (=> b!5502774 (= c!961279 ((_ is Union!15479) lt!2243736))))

(declare-fun b!5502775 () Bool)

(declare-fun e!3403738 () Bool)

(assert (=> b!5502775 (= e!3403738 call!406408)))

(declare-fun b!5502776 () Bool)

(declare-fun res!2345414 () Bool)

(assert (=> b!5502776 (=> (not res!2345414) (not e!3403738))))

(assert (=> b!5502776 (= res!2345414 call!406407)))

(assert (=> b!5502776 (= e!3403736 e!3403738)))

(assert (= (and d!1744271 (not res!2345416)) b!5502770))

(assert (= (and b!5502770 c!961280) b!5502768))

(assert (= (and b!5502770 (not c!961280)) b!5502774))

(assert (= (and b!5502768 res!2345418) b!5502771))

(assert (= (and b!5502774 c!961279) b!5502776))

(assert (= (and b!5502774 (not c!961279)) b!5502772))

(assert (= (and b!5502776 res!2345414) b!5502775))

(assert (= (and b!5502772 (not res!2345417)) b!5502769))

(assert (= (and b!5502769 res!2345415) b!5502773))

(assert (= (or b!5502775 b!5502773) bm!406402))

(assert (= (or b!5502776 b!5502769) bm!406404))

(assert (= (or b!5502771 bm!406404) bm!406403))

(declare-fun m!6510514 () Bool)

(assert (=> b!5502768 m!6510514))

(declare-fun m!6510516 () Bool)

(assert (=> bm!406402 m!6510516))

(declare-fun m!6510518 () Bool)

(assert (=> bm!406403 m!6510518))

(assert (=> d!1743841 d!1744271))

(declare-fun d!1744273 () Bool)

(declare-fun res!2345419 () Bool)

(declare-fun e!3403739 () Bool)

(assert (=> d!1744273 (=> res!2345419 e!3403739)))

(assert (=> d!1744273 (= res!2345419 ((_ is Nil!62612) (exprs!5363 (h!69061 zl!343))))))

(assert (=> d!1744273 (= (forall!14664 (exprs!5363 (h!69061 zl!343)) lambda!294553) e!3403739)))

(declare-fun b!5502777 () Bool)

(declare-fun e!3403740 () Bool)

(assert (=> b!5502777 (= e!3403739 e!3403740)))

(declare-fun res!2345420 () Bool)

(assert (=> b!5502777 (=> (not res!2345420) (not e!3403740))))

(assert (=> b!5502777 (= res!2345420 (dynLambda!24470 lambda!294553 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun b!5502778 () Bool)

(assert (=> b!5502778 (= e!3403740 (forall!14664 (t!375973 (exprs!5363 (h!69061 zl!343))) lambda!294553))))

(assert (= (and d!1744273 (not res!2345419)) b!5502777))

(assert (= (and b!5502777 res!2345420) b!5502778))

(declare-fun b_lambda!208693 () Bool)

(assert (=> (not b_lambda!208693) (not b!5502777)))

(declare-fun m!6510520 () Bool)

(assert (=> b!5502777 m!6510520))

(declare-fun m!6510522 () Bool)

(assert (=> b!5502778 m!6510522))

(assert (=> d!1743841 d!1744273))

(assert (=> b!5501881 d!1744119))

(declare-fun d!1744275 () Bool)

(declare-fun c!961284 () Bool)

(assert (=> d!1744275 (= c!961284 (and ((_ is ElementMatch!15479) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (= (c!960803 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (h!69062 s!2326))))))

(declare-fun e!3403741 () (InoxSet Context!9726))

(assert (=> d!1744275 (= (derivationStepZipperDown!825 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))) (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181)) (h!69062 s!2326)) e!3403741)))

(declare-fun bm!406405 () Bool)

(declare-fun call!406414 () (InoxSet Context!9726))

(declare-fun call!406413 () (InoxSet Context!9726))

(assert (=> bm!406405 (= call!406414 call!406413)))

(declare-fun call!406411 () (InoxSet Context!9726))

(declare-fun call!406412 () List!62736)

(declare-fun bm!406406 () Bool)

(declare-fun c!961285 () Bool)

(assert (=> bm!406406 (= call!406411 (derivationStepZipperDown!825 (ite c!961285 (regTwo!31471 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (regOne!31470 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))))) (ite c!961285 (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181)) (Context!9727 call!406412)) (h!69062 s!2326)))))

(declare-fun bm!406407 () Bool)

(declare-fun call!406415 () (InoxSet Context!9726))

(assert (=> bm!406407 (= call!406413 call!406415)))

(declare-fun bm!406408 () Bool)

(declare-fun call!406410 () List!62736)

(assert (=> bm!406408 (= call!406410 call!406412)))

(declare-fun b!5502779 () Bool)

(declare-fun c!961281 () Bool)

(assert (=> b!5502779 (= c!961281 ((_ is Star!15479) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))))))

(declare-fun e!3403743 () (InoxSet Context!9726))

(declare-fun e!3403745 () (InoxSet Context!9726))

(assert (=> b!5502779 (= e!3403743 e!3403745)))

(declare-fun b!5502780 () Bool)

(assert (=> b!5502780 (= e!3403745 call!406414)))

(declare-fun b!5502781 () Bool)

(declare-fun c!961283 () Bool)

(declare-fun e!3403742 () Bool)

(assert (=> b!5502781 (= c!961283 e!3403742)))

(declare-fun res!2345421 () Bool)

(assert (=> b!5502781 (=> (not res!2345421) (not e!3403742))))

(assert (=> b!5502781 (= res!2345421 ((_ is Concat!24324) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))))))

(declare-fun e!3403744 () (InoxSet Context!9726))

(declare-fun e!3403746 () (InoxSet Context!9726))

(assert (=> b!5502781 (= e!3403744 e!3403746)))

(declare-fun b!5502782 () Bool)

(assert (=> b!5502782 (= e!3403741 e!3403744)))

(assert (=> b!5502782 (= c!961285 ((_ is Union!15479) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))))))

(declare-fun c!961282 () Bool)

(declare-fun bm!406409 () Bool)

(assert (=> bm!406409 (= call!406412 ($colon$colon!1570 (exprs!5363 (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181))) (ite (or c!961283 c!961282) (regTwo!31470 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))))))))

(declare-fun b!5502783 () Bool)

(assert (=> b!5502783 (= e!3403741 (store ((as const (Array Context!9726 Bool)) false) (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181)) true))))

(declare-fun b!5502784 () Bool)

(assert (=> b!5502784 (= e!3403742 (nullable!5516 (regOne!31470 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))))))))

(declare-fun b!5502785 () Bool)

(assert (=> b!5502785 (= e!3403743 call!406414)))

(declare-fun b!5502786 () Bool)

(assert (=> b!5502786 (= e!3403746 e!3403743)))

(assert (=> b!5502786 (= c!961282 ((_ is Concat!24324) (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))))))

(declare-fun bm!406410 () Bool)

(assert (=> bm!406410 (= call!406415 (derivationStepZipperDown!825 (ite c!961285 (regOne!31471 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (ite c!961283 (regTwo!31470 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (ite c!961282 (regOne!31470 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292)))))) (reg!15808 (ite c!960989 (regOne!31471 (regTwo!31471 r!7292)) (ite c!960987 (regTwo!31470 (regTwo!31471 r!7292)) (ite c!960986 (regOne!31470 (regTwo!31471 r!7292)) (reg!15808 (regTwo!31471 r!7292))))))))) (ite (or c!961285 c!961283) (ite (or c!960989 c!960987) lt!2243674 (Context!9727 call!406181)) (Context!9727 call!406410)) (h!69062 s!2326)))))

(declare-fun b!5502787 () Bool)

(assert (=> b!5502787 (= e!3403746 ((_ map or) call!406411 call!406413))))

(declare-fun b!5502788 () Bool)

(assert (=> b!5502788 (= e!3403744 ((_ map or) call!406415 call!406411))))

(declare-fun b!5502789 () Bool)

(assert (=> b!5502789 (= e!3403745 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744275 c!961284) b!5502783))

(assert (= (and d!1744275 (not c!961284)) b!5502782))

(assert (= (and b!5502782 c!961285) b!5502788))

(assert (= (and b!5502782 (not c!961285)) b!5502781))

(assert (= (and b!5502781 res!2345421) b!5502784))

(assert (= (and b!5502781 c!961283) b!5502787))

(assert (= (and b!5502781 (not c!961283)) b!5502786))

(assert (= (and b!5502786 c!961282) b!5502785))

(assert (= (and b!5502786 (not c!961282)) b!5502779))

(assert (= (and b!5502779 c!961281) b!5502780))

(assert (= (and b!5502779 (not c!961281)) b!5502789))

(assert (= (or b!5502785 b!5502780) bm!406408))

(assert (= (or b!5502785 b!5502780) bm!406405))

(assert (= (or b!5502787 bm!406408) bm!406409))

(assert (= (or b!5502787 bm!406405) bm!406407))

(assert (= (or b!5502788 b!5502787) bm!406406))

(assert (= (or b!5502788 bm!406407) bm!406410))

(declare-fun m!6510524 () Bool)

(assert (=> bm!406406 m!6510524))

(declare-fun m!6510526 () Bool)

(assert (=> bm!406410 m!6510526))

(declare-fun m!6510528 () Bool)

(assert (=> b!5502783 m!6510528))

(declare-fun m!6510530 () Bool)

(assert (=> b!5502784 m!6510530))

(declare-fun m!6510532 () Bool)

(assert (=> bm!406409 m!6510532))

(assert (=> bm!406181 d!1744275))

(declare-fun bs!1269219 () Bool)

(declare-fun d!1744277 () Bool)

(assert (= bs!1269219 (and d!1744277 d!1744111)))

(declare-fun lambda!294612 () Int)

(assert (=> bs!1269219 (= lambda!294612 lambda!294595)))

(declare-fun bs!1269220 () Bool)

(assert (= bs!1269220 (and d!1744277 d!1744217)))

(assert (=> bs!1269220 (= lambda!294612 lambda!294605)))

(declare-fun bs!1269221 () Bool)

(assert (= bs!1269221 (and d!1744277 d!1744253)))

(assert (=> bs!1269221 (= lambda!294612 lambda!294609)))

(assert (=> d!1744277 (= (nullableZipper!1521 lt!2243671) (exists!2130 lt!2243671 lambda!294612))))

(declare-fun bs!1269222 () Bool)

(assert (= bs!1269222 d!1744277))

(declare-fun m!6510534 () Bool)

(assert (=> bs!1269222 m!6510534))

(assert (=> b!5501666 d!1744277))

(declare-fun d!1744279 () Bool)

(declare-fun c!961289 () Bool)

(assert (=> d!1744279 (= c!961289 (and ((_ is ElementMatch!15479) (h!69060 (exprs!5363 lt!2243664))) (= (c!960803 (h!69060 (exprs!5363 lt!2243664))) (h!69062 s!2326))))))

(declare-fun e!3403747 () (InoxSet Context!9726))

(assert (=> d!1744279 (= (derivationStepZipperDown!825 (h!69060 (exprs!5363 lt!2243664)) (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (h!69062 s!2326)) e!3403747)))

(declare-fun bm!406411 () Bool)

(declare-fun call!406420 () (InoxSet Context!9726))

(declare-fun call!406419 () (InoxSet Context!9726))

(assert (=> bm!406411 (= call!406420 call!406419)))

(declare-fun bm!406412 () Bool)

(declare-fun call!406418 () List!62736)

(declare-fun c!961290 () Bool)

(declare-fun call!406417 () (InoxSet Context!9726))

(assert (=> bm!406412 (= call!406417 (derivationStepZipperDown!825 (ite c!961290 (regTwo!31471 (h!69060 (exprs!5363 lt!2243664))) (regOne!31470 (h!69060 (exprs!5363 lt!2243664)))) (ite c!961290 (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (Context!9727 call!406418)) (h!69062 s!2326)))))

(declare-fun bm!406413 () Bool)

(declare-fun call!406421 () (InoxSet Context!9726))

(assert (=> bm!406413 (= call!406419 call!406421)))

(declare-fun bm!406414 () Bool)

(declare-fun call!406416 () List!62736)

(assert (=> bm!406414 (= call!406416 call!406418)))

(declare-fun b!5502790 () Bool)

(declare-fun c!961286 () Bool)

(assert (=> b!5502790 (= c!961286 ((_ is Star!15479) (h!69060 (exprs!5363 lt!2243664))))))

(declare-fun e!3403749 () (InoxSet Context!9726))

(declare-fun e!3403751 () (InoxSet Context!9726))

(assert (=> b!5502790 (= e!3403749 e!3403751)))

(declare-fun b!5502791 () Bool)

(assert (=> b!5502791 (= e!3403751 call!406420)))

(declare-fun b!5502792 () Bool)

(declare-fun c!961288 () Bool)

(declare-fun e!3403748 () Bool)

(assert (=> b!5502792 (= c!961288 e!3403748)))

(declare-fun res!2345422 () Bool)

(assert (=> b!5502792 (=> (not res!2345422) (not e!3403748))))

(assert (=> b!5502792 (= res!2345422 ((_ is Concat!24324) (h!69060 (exprs!5363 lt!2243664))))))

(declare-fun e!3403750 () (InoxSet Context!9726))

(declare-fun e!3403752 () (InoxSet Context!9726))

(assert (=> b!5502792 (= e!3403750 e!3403752)))

(declare-fun b!5502793 () Bool)

(assert (=> b!5502793 (= e!3403747 e!3403750)))

(assert (=> b!5502793 (= c!961290 ((_ is Union!15479) (h!69060 (exprs!5363 lt!2243664))))))

(declare-fun bm!406415 () Bool)

(declare-fun c!961287 () Bool)

(assert (=> bm!406415 (= call!406418 ($colon$colon!1570 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243664)))) (ite (or c!961288 c!961287) (regTwo!31470 (h!69060 (exprs!5363 lt!2243664))) (h!69060 (exprs!5363 lt!2243664)))))))

(declare-fun b!5502794 () Bool)

(assert (=> b!5502794 (= e!3403747 (store ((as const (Array Context!9726 Bool)) false) (Context!9727 (t!375973 (exprs!5363 lt!2243664))) true))))

(declare-fun b!5502795 () Bool)

(assert (=> b!5502795 (= e!3403748 (nullable!5516 (regOne!31470 (h!69060 (exprs!5363 lt!2243664)))))))

(declare-fun b!5502796 () Bool)

(assert (=> b!5502796 (= e!3403749 call!406420)))

(declare-fun b!5502797 () Bool)

(assert (=> b!5502797 (= e!3403752 e!3403749)))

(assert (=> b!5502797 (= c!961287 ((_ is Concat!24324) (h!69060 (exprs!5363 lt!2243664))))))

(declare-fun bm!406416 () Bool)

(assert (=> bm!406416 (= call!406421 (derivationStepZipperDown!825 (ite c!961290 (regOne!31471 (h!69060 (exprs!5363 lt!2243664))) (ite c!961288 (regTwo!31470 (h!69060 (exprs!5363 lt!2243664))) (ite c!961287 (regOne!31470 (h!69060 (exprs!5363 lt!2243664))) (reg!15808 (h!69060 (exprs!5363 lt!2243664)))))) (ite (or c!961290 c!961288) (Context!9727 (t!375973 (exprs!5363 lt!2243664))) (Context!9727 call!406416)) (h!69062 s!2326)))))

(declare-fun b!5502798 () Bool)

(assert (=> b!5502798 (= e!3403752 ((_ map or) call!406417 call!406419))))

(declare-fun b!5502799 () Bool)

(assert (=> b!5502799 (= e!3403750 ((_ map or) call!406421 call!406417))))

(declare-fun b!5502800 () Bool)

(assert (=> b!5502800 (= e!3403751 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744279 c!961289) b!5502794))

(assert (= (and d!1744279 (not c!961289)) b!5502793))

(assert (= (and b!5502793 c!961290) b!5502799))

(assert (= (and b!5502793 (not c!961290)) b!5502792))

(assert (= (and b!5502792 res!2345422) b!5502795))

(assert (= (and b!5502792 c!961288) b!5502798))

(assert (= (and b!5502792 (not c!961288)) b!5502797))

(assert (= (and b!5502797 c!961287) b!5502796))

(assert (= (and b!5502797 (not c!961287)) b!5502790))

(assert (= (and b!5502790 c!961286) b!5502791))

(assert (= (and b!5502790 (not c!961286)) b!5502800))

(assert (= (or b!5502796 b!5502791) bm!406414))

(assert (= (or b!5502796 b!5502791) bm!406411))

(assert (= (or b!5502798 bm!406414) bm!406415))

(assert (= (or b!5502798 bm!406411) bm!406413))

(assert (= (or b!5502799 b!5502798) bm!406412))

(assert (= (or b!5502799 bm!406413) bm!406416))

(declare-fun m!6510536 () Bool)

(assert (=> bm!406412 m!6510536))

(declare-fun m!6510538 () Bool)

(assert (=> bm!406416 m!6510538))

(declare-fun m!6510540 () Bool)

(assert (=> b!5502794 m!6510540))

(declare-fun m!6510542 () Bool)

(assert (=> b!5502795 m!6510542))

(declare-fun m!6510544 () Bool)

(assert (=> bm!406415 m!6510544))

(assert (=> bm!406134 d!1744279))

(assert (=> b!5501866 d!1744119))

(declare-fun d!1744281 () Bool)

(declare-fun c!961291 () Bool)

(assert (=> d!1744281 (= c!961291 (isEmpty!34399 (tail!10879 (t!375975 s!2326))))))

(declare-fun e!3403753 () Bool)

(assert (=> d!1744281 (= (matchZipper!1647 (derivationStepZipper!1590 lt!2243661 (head!11784 (t!375975 s!2326))) (tail!10879 (t!375975 s!2326))) e!3403753)))

(declare-fun b!5502801 () Bool)

(assert (=> b!5502801 (= e!3403753 (nullableZipper!1521 (derivationStepZipper!1590 lt!2243661 (head!11784 (t!375975 s!2326)))))))

(declare-fun b!5502802 () Bool)

(assert (=> b!5502802 (= e!3403753 (matchZipper!1647 (derivationStepZipper!1590 (derivationStepZipper!1590 lt!2243661 (head!11784 (t!375975 s!2326))) (head!11784 (tail!10879 (t!375975 s!2326)))) (tail!10879 (tail!10879 (t!375975 s!2326)))))))

(assert (= (and d!1744281 c!961291) b!5502801))

(assert (= (and d!1744281 (not c!961291)) b!5502802))

(assert (=> d!1744281 m!6509678))

(assert (=> d!1744281 m!6510272))

(assert (=> b!5502801 m!6509726))

(declare-fun m!6510546 () Bool)

(assert (=> b!5502801 m!6510546))

(assert (=> b!5502802 m!6509678))

(assert (=> b!5502802 m!6510276))

(assert (=> b!5502802 m!6509726))

(assert (=> b!5502802 m!6510276))

(declare-fun m!6510548 () Bool)

(assert (=> b!5502802 m!6510548))

(assert (=> b!5502802 m!6509678))

(assert (=> b!5502802 m!6510280))

(assert (=> b!5502802 m!6510548))

(assert (=> b!5502802 m!6510280))

(declare-fun m!6510550 () Bool)

(assert (=> b!5502802 m!6510550))

(assert (=> b!5501748 d!1744281))

(declare-fun bs!1269223 () Bool)

(declare-fun d!1744283 () Bool)

(assert (= bs!1269223 (and d!1744283 b!5501156)))

(declare-fun lambda!294613 () Int)

(assert (=> bs!1269223 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294613 lambda!294515))))

(declare-fun bs!1269224 () Bool)

(assert (= bs!1269224 (and d!1744283 d!1743817)))

(assert (=> bs!1269224 (= (= (head!11784 (t!375975 s!2326)) (h!69062 s!2326)) (= lambda!294613 lambda!294550))))

(declare-fun bs!1269225 () Bool)

(assert (= bs!1269225 (and d!1744283 d!1744157)))

(assert (=> bs!1269225 (= lambda!294613 lambda!294602)))

(declare-fun bs!1269226 () Bool)

(assert (= bs!1269226 (and d!1744283 d!1744247)))

(assert (=> bs!1269226 (= lambda!294613 lambda!294608)))

(assert (=> d!1744283 true))

(assert (=> d!1744283 (= (derivationStepZipper!1590 lt!2243661 (head!11784 (t!375975 s!2326))) (flatMap!1098 lt!2243661 lambda!294613))))

(declare-fun bs!1269227 () Bool)

(assert (= bs!1269227 d!1744283))

(declare-fun m!6510552 () Bool)

(assert (=> bs!1269227 m!6510552))

(assert (=> b!5501748 d!1744283))

(assert (=> b!5501748 d!1744159))

(assert (=> b!5501748 d!1744161))

(declare-fun b!5502803 () Bool)

(declare-fun e!3403754 () Bool)

(declare-fun e!3403756 () Bool)

(assert (=> b!5502803 (= e!3403754 e!3403756)))

(declare-fun res!2345427 () Bool)

(assert (=> b!5502803 (= res!2345427 (not (nullable!5516 (reg!15808 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))))

(assert (=> b!5502803 (=> (not res!2345427) (not e!3403756))))

(declare-fun b!5502804 () Bool)

(declare-fun e!3403757 () Bool)

(declare-fun e!3403755 () Bool)

(assert (=> b!5502804 (= e!3403757 e!3403755)))

(declare-fun res!2345424 () Bool)

(assert (=> b!5502804 (=> (not res!2345424) (not e!3403755))))

(declare-fun call!406422 () Bool)

(assert (=> b!5502804 (= res!2345424 call!406422)))

(declare-fun b!5502805 () Bool)

(declare-fun e!3403759 () Bool)

(assert (=> b!5502805 (= e!3403759 e!3403754)))

(declare-fun c!961293 () Bool)

(assert (=> b!5502805 (= c!961293 ((_ is Star!15479) (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))

(declare-fun b!5502806 () Bool)

(declare-fun call!406424 () Bool)

(assert (=> b!5502806 (= e!3403756 call!406424)))

(declare-fun b!5502807 () Bool)

(declare-fun res!2345426 () Bool)

(assert (=> b!5502807 (=> res!2345426 e!3403757)))

(assert (=> b!5502807 (= res!2345426 (not ((_ is Concat!24324) (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292))))))))

(declare-fun e!3403758 () Bool)

(assert (=> b!5502807 (= e!3403758 e!3403757)))

(declare-fun c!961292 () Bool)

(declare-fun bm!406417 () Bool)

(declare-fun call!406423 () Bool)

(assert (=> bm!406417 (= call!406423 (validRegex!7215 (ite c!961292 (regTwo!31471 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))) (regTwo!31470 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))))

(declare-fun bm!406418 () Bool)

(assert (=> bm!406418 (= call!406424 (validRegex!7215 (ite c!961293 (reg!15808 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))) (ite c!961292 (regOne!31471 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))) (regOne!31470 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292))))))))))

(declare-fun bm!406419 () Bool)

(assert (=> bm!406419 (= call!406422 call!406424)))

(declare-fun d!1744285 () Bool)

(declare-fun res!2345425 () Bool)

(assert (=> d!1744285 (=> res!2345425 e!3403759)))

(assert (=> d!1744285 (= res!2345425 ((_ is ElementMatch!15479) (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))

(assert (=> d!1744285 (= (validRegex!7215 (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))) e!3403759)))

(declare-fun b!5502808 () Bool)

(assert (=> b!5502808 (= e!3403755 call!406423)))

(declare-fun b!5502809 () Bool)

(assert (=> b!5502809 (= e!3403754 e!3403758)))

(assert (=> b!5502809 (= c!961292 ((_ is Union!15479) (ite c!960972 (reg!15808 r!7292) (ite c!960971 (regOne!31471 r!7292) (regOne!31470 r!7292)))))))

(declare-fun b!5502810 () Bool)

(declare-fun e!3403760 () Bool)

(assert (=> b!5502810 (= e!3403760 call!406423)))

(declare-fun b!5502811 () Bool)

(declare-fun res!2345423 () Bool)

(assert (=> b!5502811 (=> (not res!2345423) (not e!3403760))))

(assert (=> b!5502811 (= res!2345423 call!406422)))

(assert (=> b!5502811 (= e!3403758 e!3403760)))

(assert (= (and d!1744285 (not res!2345425)) b!5502805))

(assert (= (and b!5502805 c!961293) b!5502803))

(assert (= (and b!5502805 (not c!961293)) b!5502809))

(assert (= (and b!5502803 res!2345427) b!5502806))

(assert (= (and b!5502809 c!961292) b!5502811))

(assert (= (and b!5502809 (not c!961292)) b!5502807))

(assert (= (and b!5502811 res!2345423) b!5502810))

(assert (= (and b!5502807 (not res!2345426)) b!5502804))

(assert (= (and b!5502804 res!2345424) b!5502808))

(assert (= (or b!5502810 b!5502808) bm!406417))

(assert (= (or b!5502811 b!5502804) bm!406419))

(assert (= (or b!5502806 bm!406419) bm!406418))

(declare-fun m!6510554 () Bool)

(assert (=> b!5502803 m!6510554))

(declare-fun m!6510556 () Bool)

(assert (=> bm!406417 m!6510556))

(declare-fun m!6510558 () Bool)

(assert (=> bm!406418 m!6510558))

(assert (=> bm!406174 d!1744285))

(assert (=> b!5501830 d!1744187))

(assert (=> b!5501830 d!1744167))

(declare-fun b!5502812 () Bool)

(declare-fun e!3403767 () Bool)

(declare-fun e!3403764 () Bool)

(assert (=> b!5502812 (= e!3403767 e!3403764)))

(declare-fun res!2345435 () Bool)

(assert (=> b!5502812 (=> (not res!2345435) (not e!3403764))))

(declare-fun lt!2243770 () Bool)

(assert (=> b!5502812 (= res!2345435 (not lt!2243770))))

(declare-fun b!5502813 () Bool)

(declare-fun res!2345432 () Bool)

(declare-fun e!3403761 () Bool)

(assert (=> b!5502813 (=> res!2345432 e!3403761)))

(assert (=> b!5502813 (= res!2345432 (not (isEmpty!34399 (tail!10879 (tail!10879 s!2326)))))))

(declare-fun b!5502814 () Bool)

(assert (=> b!5502814 (= e!3403761 (not (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326))))))))

(declare-fun b!5502815 () Bool)

(declare-fun e!3403766 () Bool)

(assert (=> b!5502815 (= e!3403766 (nullable!5516 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326))))))

(declare-fun b!5502816 () Bool)

(declare-fun res!2345428 () Bool)

(declare-fun e!3403762 () Bool)

(assert (=> b!5502816 (=> (not res!2345428) (not e!3403762))))

(declare-fun call!406425 () Bool)

(assert (=> b!5502816 (= res!2345428 (not call!406425))))

(declare-fun b!5502817 () Bool)

(declare-fun e!3403763 () Bool)

(assert (=> b!5502817 (= e!3403763 (not lt!2243770))))

(declare-fun b!5502819 () Bool)

(declare-fun e!3403765 () Bool)

(assert (=> b!5502819 (= e!3403765 e!3403763)))

(declare-fun c!961294 () Bool)

(assert (=> b!5502819 (= c!961294 ((_ is EmptyLang!15479) (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326))))))

(declare-fun b!5502820 () Bool)

(declare-fun res!2345431 () Bool)

(assert (=> b!5502820 (=> res!2345431 e!3403767)))

(assert (=> b!5502820 (= res!2345431 (not ((_ is ElementMatch!15479) (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)))))))

(assert (=> b!5502820 (= e!3403763 e!3403767)))

(declare-fun b!5502821 () Bool)

(assert (=> b!5502821 (= e!3403766 (matchR!7664 (derivativeStep!4355 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)) (head!11784 (tail!10879 s!2326))) (tail!10879 (tail!10879 s!2326))))))

(declare-fun b!5502822 () Bool)

(assert (=> b!5502822 (= e!3403764 e!3403761)))

(declare-fun res!2345430 () Bool)

(assert (=> b!5502822 (=> res!2345430 e!3403761)))

(assert (=> b!5502822 (= res!2345430 call!406425)))

(declare-fun b!5502823 () Bool)

(declare-fun res!2345433 () Bool)

(assert (=> b!5502823 (=> res!2345433 e!3403767)))

(assert (=> b!5502823 (= res!2345433 e!3403762)))

(declare-fun res!2345429 () Bool)

(assert (=> b!5502823 (=> (not res!2345429) (not e!3403762))))

(assert (=> b!5502823 (= res!2345429 lt!2243770)))

(declare-fun bm!406420 () Bool)

(assert (=> bm!406420 (= call!406425 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun b!5502818 () Bool)

(declare-fun res!2345434 () Bool)

(assert (=> b!5502818 (=> (not res!2345434) (not e!3403762))))

(assert (=> b!5502818 (= res!2345434 (isEmpty!34399 (tail!10879 (tail!10879 s!2326))))))

(declare-fun d!1744287 () Bool)

(assert (=> d!1744287 e!3403765))

(declare-fun c!961295 () Bool)

(assert (=> d!1744287 (= c!961295 ((_ is EmptyExpr!15479) (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326))))))

(assert (=> d!1744287 (= lt!2243770 e!3403766)))

(declare-fun c!961296 () Bool)

(assert (=> d!1744287 (= c!961296 (isEmpty!34399 (tail!10879 s!2326)))))

(assert (=> d!1744287 (validRegex!7215 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)))))

(assert (=> d!1744287 (= (matchR!7664 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)) (tail!10879 s!2326)) lt!2243770)))

(declare-fun b!5502824 () Bool)

(assert (=> b!5502824 (= e!3403762 (= (head!11784 (tail!10879 s!2326)) (c!960803 (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)))))))

(declare-fun b!5502825 () Bool)

(assert (=> b!5502825 (= e!3403765 (= lt!2243770 call!406425))))

(assert (= (and d!1744287 c!961296) b!5502815))

(assert (= (and d!1744287 (not c!961296)) b!5502821))

(assert (= (and d!1744287 c!961295) b!5502825))

(assert (= (and d!1744287 (not c!961295)) b!5502819))

(assert (= (and b!5502819 c!961294) b!5502817))

(assert (= (and b!5502819 (not c!961294)) b!5502820))

(assert (= (and b!5502820 (not res!2345431)) b!5502823))

(assert (= (and b!5502823 res!2345429) b!5502816))

(assert (= (and b!5502816 res!2345428) b!5502818))

(assert (= (and b!5502818 res!2345434) b!5502824))

(assert (= (and b!5502823 (not res!2345433)) b!5502812))

(assert (= (and b!5502812 res!2345435) b!5502822))

(assert (= (and b!5502822 (not res!2345430)) b!5502813))

(assert (= (and b!5502813 (not res!2345432)) b!5502814))

(assert (= (or b!5502825 b!5502822 b!5502816) bm!406420))

(assert (=> b!5502815 m!6509774))

(declare-fun m!6510560 () Bool)

(assert (=> b!5502815 m!6510560))

(assert (=> bm!406420 m!6509620))

(assert (=> bm!406420 m!6509756))

(assert (=> b!5502813 m!6509620))

(assert (=> b!5502813 m!6510288))

(assert (=> b!5502813 m!6510288))

(assert (=> b!5502813 m!6510290))

(assert (=> b!5502821 m!6509620))

(assert (=> b!5502821 m!6510292))

(assert (=> b!5502821 m!6509774))

(assert (=> b!5502821 m!6510292))

(declare-fun m!6510562 () Bool)

(assert (=> b!5502821 m!6510562))

(assert (=> b!5502821 m!6509620))

(assert (=> b!5502821 m!6510288))

(assert (=> b!5502821 m!6510562))

(assert (=> b!5502821 m!6510288))

(declare-fun m!6510564 () Bool)

(assert (=> b!5502821 m!6510564))

(assert (=> b!5502814 m!6509620))

(assert (=> b!5502814 m!6510292))

(assert (=> b!5502818 m!6509620))

(assert (=> b!5502818 m!6510288))

(assert (=> b!5502818 m!6510288))

(assert (=> b!5502818 m!6510290))

(assert (=> d!1744287 m!6509620))

(assert (=> d!1744287 m!6509756))

(assert (=> d!1744287 m!6509774))

(declare-fun m!6510566 () Bool)

(assert (=> d!1744287 m!6510566))

(assert (=> b!5502824 m!6509620))

(assert (=> b!5502824 m!6510292))

(assert (=> b!5501863 d!1744287))

(declare-fun b!5502826 () Bool)

(declare-fun e!3403769 () Regex!15479)

(declare-fun e!3403771 () Regex!15479)

(assert (=> b!5502826 (= e!3403769 e!3403771)))

(declare-fun c!961298 () Bool)

(assert (=> b!5502826 (= c!961298 ((_ is Star!15479) (regOne!31471 r!7292)))))

(declare-fun d!1744289 () Bool)

(declare-fun lt!2243771 () Regex!15479)

(assert (=> d!1744289 (validRegex!7215 lt!2243771)))

(declare-fun e!3403770 () Regex!15479)

(assert (=> d!1744289 (= lt!2243771 e!3403770)))

(declare-fun c!961297 () Bool)

(assert (=> d!1744289 (= c!961297 (or ((_ is EmptyExpr!15479) (regOne!31471 r!7292)) ((_ is EmptyLang!15479) (regOne!31471 r!7292))))))

(assert (=> d!1744289 (validRegex!7215 (regOne!31471 r!7292))))

(assert (=> d!1744289 (= (derivativeStep!4355 (regOne!31471 r!7292) (head!11784 s!2326)) lt!2243771)))

(declare-fun bm!406421 () Bool)

(declare-fun c!961301 () Bool)

(declare-fun call!406427 () Regex!15479)

(assert (=> bm!406421 (= call!406427 (derivativeStep!4355 (ite c!961301 (regOne!31471 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))) (head!11784 s!2326)))))

(declare-fun b!5502827 () Bool)

(declare-fun call!406426 () Regex!15479)

(assert (=> b!5502827 (= e!3403771 (Concat!24324 call!406426 (regOne!31471 r!7292)))))

(declare-fun b!5502828 () Bool)

(declare-fun e!3403768 () Regex!15479)

(assert (=> b!5502828 (= e!3403770 e!3403768)))

(declare-fun c!961300 () Bool)

(assert (=> b!5502828 (= c!961300 ((_ is ElementMatch!15479) (regOne!31471 r!7292)))))

(declare-fun b!5502829 () Bool)

(assert (=> b!5502829 (= c!961301 ((_ is Union!15479) (regOne!31471 r!7292)))))

(assert (=> b!5502829 (= e!3403768 e!3403769)))

(declare-fun bm!406422 () Bool)

(declare-fun call!406428 () Regex!15479)

(declare-fun c!961299 () Bool)

(assert (=> bm!406422 (= call!406428 (derivativeStep!4355 (ite c!961301 (regTwo!31471 (regOne!31471 r!7292)) (ite c!961298 (reg!15808 (regOne!31471 r!7292)) (ite c!961299 (regTwo!31470 (regOne!31471 r!7292)) (regOne!31470 (regOne!31471 r!7292))))) (head!11784 s!2326)))))

(declare-fun call!406429 () Regex!15479)

(declare-fun b!5502830 () Bool)

(declare-fun e!3403772 () Regex!15479)

(assert (=> b!5502830 (= e!3403772 (Union!15479 (Concat!24324 call!406427 (regTwo!31470 (regOne!31471 r!7292))) call!406429))))

(declare-fun b!5502831 () Bool)

(assert (=> b!5502831 (= e!3403772 (Union!15479 (Concat!24324 call!406429 (regTwo!31470 (regOne!31471 r!7292))) EmptyLang!15479))))

(declare-fun b!5502832 () Bool)

(assert (=> b!5502832 (= e!3403770 EmptyLang!15479)))

(declare-fun b!5502833 () Bool)

(assert (=> b!5502833 (= e!3403768 (ite (= (head!11784 s!2326) (c!960803 (regOne!31471 r!7292))) EmptyExpr!15479 EmptyLang!15479))))

(declare-fun b!5502834 () Bool)

(assert (=> b!5502834 (= c!961299 (nullable!5516 (regOne!31470 (regOne!31471 r!7292))))))

(assert (=> b!5502834 (= e!3403771 e!3403772)))

(declare-fun bm!406423 () Bool)

(assert (=> bm!406423 (= call!406429 call!406426)))

(declare-fun b!5502835 () Bool)

(assert (=> b!5502835 (= e!3403769 (Union!15479 call!406427 call!406428))))

(declare-fun bm!406424 () Bool)

(assert (=> bm!406424 (= call!406426 call!406428)))

(assert (= (and d!1744289 c!961297) b!5502832))

(assert (= (and d!1744289 (not c!961297)) b!5502828))

(assert (= (and b!5502828 c!961300) b!5502833))

(assert (= (and b!5502828 (not c!961300)) b!5502829))

(assert (= (and b!5502829 c!961301) b!5502835))

(assert (= (and b!5502829 (not c!961301)) b!5502826))

(assert (= (and b!5502826 c!961298) b!5502827))

(assert (= (and b!5502826 (not c!961298)) b!5502834))

(assert (= (and b!5502834 c!961299) b!5502830))

(assert (= (and b!5502834 (not c!961299)) b!5502831))

(assert (= (or b!5502830 b!5502831) bm!406423))

(assert (= (or b!5502827 bm!406423) bm!406424))

(assert (= (or b!5502835 bm!406424) bm!406422))

(assert (= (or b!5502835 b!5502830) bm!406421))

(declare-fun m!6510568 () Bool)

(assert (=> d!1744289 m!6510568))

(assert (=> d!1744289 m!6509752))

(assert (=> bm!406421 m!6509616))

(declare-fun m!6510570 () Bool)

(assert (=> bm!406421 m!6510570))

(assert (=> bm!406422 m!6509616))

(declare-fun m!6510572 () Bool)

(assert (=> bm!406422 m!6510572))

(assert (=> b!5502834 m!6509720))

(assert (=> b!5501863 d!1744289))

(assert (=> b!5501863 d!1744119))

(assert (=> b!5501863 d!1744167))

(declare-fun d!1744291 () Bool)

(declare-fun c!961305 () Bool)

(assert (=> d!1744291 (= c!961305 (and ((_ is ElementMatch!15479) (h!69060 (exprs!5363 (h!69061 zl!343)))) (= (c!960803 (h!69060 (exprs!5363 (h!69061 zl!343)))) (h!69062 s!2326))))))

(declare-fun e!3403773 () (InoxSet Context!9726))

(assert (=> d!1744291 (= (derivationStepZipperDown!825 (h!69060 (exprs!5363 (h!69061 zl!343))) (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (h!69062 s!2326)) e!3403773)))

(declare-fun bm!406425 () Bool)

(declare-fun call!406434 () (InoxSet Context!9726))

(declare-fun call!406433 () (InoxSet Context!9726))

(assert (=> bm!406425 (= call!406434 call!406433)))

(declare-fun call!406431 () (InoxSet Context!9726))

(declare-fun call!406432 () List!62736)

(declare-fun bm!406426 () Bool)

(declare-fun c!961306 () Bool)

(assert (=> bm!406426 (= call!406431 (derivationStepZipperDown!825 (ite c!961306 (regTwo!31471 (h!69060 (exprs!5363 (h!69061 zl!343)))) (regOne!31470 (h!69060 (exprs!5363 (h!69061 zl!343))))) (ite c!961306 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (Context!9727 call!406432)) (h!69062 s!2326)))))

(declare-fun bm!406427 () Bool)

(declare-fun call!406435 () (InoxSet Context!9726))

(assert (=> bm!406427 (= call!406433 call!406435)))

(declare-fun bm!406428 () Bool)

(declare-fun call!406430 () List!62736)

(assert (=> bm!406428 (= call!406430 call!406432)))

(declare-fun b!5502836 () Bool)

(declare-fun c!961302 () Bool)

(assert (=> b!5502836 (= c!961302 ((_ is Star!15479) (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun e!3403775 () (InoxSet Context!9726))

(declare-fun e!3403777 () (InoxSet Context!9726))

(assert (=> b!5502836 (= e!3403775 e!3403777)))

(declare-fun b!5502837 () Bool)

(assert (=> b!5502837 (= e!3403777 call!406434)))

(declare-fun b!5502838 () Bool)

(declare-fun c!961304 () Bool)

(declare-fun e!3403774 () Bool)

(assert (=> b!5502838 (= c!961304 e!3403774)))

(declare-fun res!2345436 () Bool)

(assert (=> b!5502838 (=> (not res!2345436) (not e!3403774))))

(assert (=> b!5502838 (= res!2345436 ((_ is Concat!24324) (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun e!3403776 () (InoxSet Context!9726))

(declare-fun e!3403778 () (InoxSet Context!9726))

(assert (=> b!5502838 (= e!3403776 e!3403778)))

(declare-fun b!5502839 () Bool)

(assert (=> b!5502839 (= e!3403773 e!3403776)))

(assert (=> b!5502839 (= c!961306 ((_ is Union!15479) (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun c!961303 () Bool)

(declare-fun bm!406429 () Bool)

(assert (=> bm!406429 (= call!406432 ($colon$colon!1570 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343))))) (ite (or c!961304 c!961303) (regTwo!31470 (h!69060 (exprs!5363 (h!69061 zl!343)))) (h!69060 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5502840 () Bool)

(assert (=> b!5502840 (= e!3403773 (store ((as const (Array Context!9726 Bool)) false) (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) true))))

(declare-fun b!5502841 () Bool)

(assert (=> b!5502841 (= e!3403774 (nullable!5516 (regOne!31470 (h!69060 (exprs!5363 (h!69061 zl!343))))))))

(declare-fun b!5502842 () Bool)

(assert (=> b!5502842 (= e!3403775 call!406434)))

(declare-fun b!5502843 () Bool)

(assert (=> b!5502843 (= e!3403778 e!3403775)))

(assert (=> b!5502843 (= c!961303 ((_ is Concat!24324) (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun bm!406430 () Bool)

(assert (=> bm!406430 (= call!406435 (derivationStepZipperDown!825 (ite c!961306 (regOne!31471 (h!69060 (exprs!5363 (h!69061 zl!343)))) (ite c!961304 (regTwo!31470 (h!69060 (exprs!5363 (h!69061 zl!343)))) (ite c!961303 (regOne!31470 (h!69060 (exprs!5363 (h!69061 zl!343)))) (reg!15808 (h!69060 (exprs!5363 (h!69061 zl!343))))))) (ite (or c!961306 c!961304) (Context!9727 (t!375973 (exprs!5363 (h!69061 zl!343)))) (Context!9727 call!406430)) (h!69062 s!2326)))))

(declare-fun b!5502844 () Bool)

(assert (=> b!5502844 (= e!3403778 ((_ map or) call!406431 call!406433))))

(declare-fun b!5502845 () Bool)

(assert (=> b!5502845 (= e!3403776 ((_ map or) call!406435 call!406431))))

(declare-fun b!5502846 () Bool)

(assert (=> b!5502846 (= e!3403777 ((as const (Array Context!9726 Bool)) false))))

(assert (= (and d!1744291 c!961305) b!5502840))

(assert (= (and d!1744291 (not c!961305)) b!5502839))

(assert (= (and b!5502839 c!961306) b!5502845))

(assert (= (and b!5502839 (not c!961306)) b!5502838))

(assert (= (and b!5502838 res!2345436) b!5502841))

(assert (= (and b!5502838 c!961304) b!5502844))

(assert (= (and b!5502838 (not c!961304)) b!5502843))

(assert (= (and b!5502843 c!961303) b!5502842))

(assert (= (and b!5502843 (not c!961303)) b!5502836))

(assert (= (and b!5502836 c!961302) b!5502837))

(assert (= (and b!5502836 (not c!961302)) b!5502846))

(assert (= (or b!5502842 b!5502837) bm!406428))

(assert (= (or b!5502842 b!5502837) bm!406425))

(assert (= (or b!5502844 bm!406428) bm!406429))

(assert (= (or b!5502844 bm!406425) bm!406427))

(assert (= (or b!5502845 b!5502844) bm!406426))

(assert (= (or b!5502845 bm!406427) bm!406430))

(declare-fun m!6510574 () Bool)

(assert (=> bm!406426 m!6510574))

(declare-fun m!6510576 () Bool)

(assert (=> bm!406430 m!6510576))

(declare-fun m!6510578 () Bool)

(assert (=> b!5502840 m!6510578))

(declare-fun m!6510580 () Bool)

(assert (=> b!5502841 m!6510580))

(declare-fun m!6510582 () Bool)

(assert (=> bm!406429 m!6510582))

(assert (=> bm!406147 d!1744291))

(declare-fun b!5502847 () Bool)

(declare-fun e!3403781 () (InoxSet Context!9726))

(declare-fun call!406436 () (InoxSet Context!9726))

(assert (=> b!5502847 (= e!3403781 call!406436)))

(declare-fun e!3403779 () (InoxSet Context!9726))

(declare-fun b!5502848 () Bool)

(assert (=> b!5502848 (= e!3403779 ((_ map or) call!406436 (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677)))))) (h!69062 s!2326))))))

(declare-fun bm!406431 () Bool)

(assert (=> bm!406431 (= call!406436 (derivationStepZipperDown!825 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677))))) (Context!9727 (t!375973 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677)))))) (h!69062 s!2326)))))

(declare-fun b!5502849 () Bool)

(assert (=> b!5502849 (= e!3403779 e!3403781)))

(declare-fun c!961308 () Bool)

(assert (=> b!5502849 (= c!961308 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677))))))))

(declare-fun d!1744293 () Bool)

(declare-fun c!961307 () Bool)

(declare-fun e!3403780 () Bool)

(assert (=> d!1744293 (= c!961307 e!3403780)))

(declare-fun res!2345437 () Bool)

(assert (=> d!1744293 (=> (not res!2345437) (not e!3403780))))

(assert (=> d!1744293 (= res!2345437 ((_ is Cons!62612) (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677))))))))

(assert (=> d!1744293 (= (derivationStepZipperUp!751 (Context!9727 (t!375973 (exprs!5363 lt!2243677))) (h!69062 s!2326)) e!3403779)))

(declare-fun b!5502850 () Bool)

(assert (=> b!5502850 (= e!3403781 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5502851 () Bool)

(assert (=> b!5502851 (= e!3403780 (nullable!5516 (h!69060 (exprs!5363 (Context!9727 (t!375973 (exprs!5363 lt!2243677)))))))))

(assert (= (and d!1744293 res!2345437) b!5502851))

(assert (= (and d!1744293 c!961307) b!5502848))

(assert (= (and d!1744293 (not c!961307)) b!5502849))

(assert (= (and b!5502849 c!961308) b!5502847))

(assert (= (and b!5502849 (not c!961308)) b!5502850))

(assert (= (or b!5502848 b!5502847) bm!406431))

(declare-fun m!6510584 () Bool)

(assert (=> b!5502848 m!6510584))

(declare-fun m!6510586 () Bool)

(assert (=> bm!406431 m!6510586))

(declare-fun m!6510588 () Bool)

(assert (=> b!5502851 m!6510588))

(assert (=> b!5501486 d!1744293))

(declare-fun d!1744295 () Bool)

(assert (=> d!1744295 (= (isEmpty!34398 (t!375973 (exprs!5363 (h!69061 zl!343)))) ((_ is Nil!62612) (t!375973 (exprs!5363 (h!69061 zl!343)))))))

(assert (=> b!5501721 d!1744295))

(assert (=> bm!406202 d!1744121))

(assert (=> b!5501856 d!1744119))

(declare-fun b!5502852 () Bool)

(declare-fun e!3403782 () Bool)

(declare-fun e!3403784 () Bool)

(assert (=> b!5502852 (= e!3403782 e!3403784)))

(declare-fun res!2345442 () Bool)

(assert (=> b!5502852 (= res!2345442 (not (nullable!5516 (reg!15808 lt!2243704))))))

(assert (=> b!5502852 (=> (not res!2345442) (not e!3403784))))

(declare-fun b!5502853 () Bool)

(declare-fun e!3403785 () Bool)

(declare-fun e!3403783 () Bool)

(assert (=> b!5502853 (= e!3403785 e!3403783)))

(declare-fun res!2345439 () Bool)

(assert (=> b!5502853 (=> (not res!2345439) (not e!3403783))))

(declare-fun call!406437 () Bool)

(assert (=> b!5502853 (= res!2345439 call!406437)))

(declare-fun b!5502854 () Bool)

(declare-fun e!3403787 () Bool)

(assert (=> b!5502854 (= e!3403787 e!3403782)))

(declare-fun c!961310 () Bool)

(assert (=> b!5502854 (= c!961310 ((_ is Star!15479) lt!2243704))))

(declare-fun b!5502855 () Bool)

(declare-fun call!406439 () Bool)

(assert (=> b!5502855 (= e!3403784 call!406439)))

(declare-fun b!5502856 () Bool)

(declare-fun res!2345441 () Bool)

(assert (=> b!5502856 (=> res!2345441 e!3403785)))

(assert (=> b!5502856 (= res!2345441 (not ((_ is Concat!24324) lt!2243704)))))

(declare-fun e!3403786 () Bool)

(assert (=> b!5502856 (= e!3403786 e!3403785)))

(declare-fun bm!406432 () Bool)

(declare-fun call!406438 () Bool)

(declare-fun c!961309 () Bool)

(assert (=> bm!406432 (= call!406438 (validRegex!7215 (ite c!961309 (regTwo!31471 lt!2243704) (regTwo!31470 lt!2243704))))))

(declare-fun bm!406433 () Bool)

(assert (=> bm!406433 (= call!406439 (validRegex!7215 (ite c!961310 (reg!15808 lt!2243704) (ite c!961309 (regOne!31471 lt!2243704) (regOne!31470 lt!2243704)))))))

(declare-fun bm!406434 () Bool)

(assert (=> bm!406434 (= call!406437 call!406439)))

(declare-fun d!1744297 () Bool)

(declare-fun res!2345440 () Bool)

(assert (=> d!1744297 (=> res!2345440 e!3403787)))

(assert (=> d!1744297 (= res!2345440 ((_ is ElementMatch!15479) lt!2243704))))

(assert (=> d!1744297 (= (validRegex!7215 lt!2243704) e!3403787)))

(declare-fun b!5502857 () Bool)

(assert (=> b!5502857 (= e!3403783 call!406438)))

(declare-fun b!5502858 () Bool)

(assert (=> b!5502858 (= e!3403782 e!3403786)))

(assert (=> b!5502858 (= c!961309 ((_ is Union!15479) lt!2243704))))

(declare-fun b!5502859 () Bool)

(declare-fun e!3403788 () Bool)

(assert (=> b!5502859 (= e!3403788 call!406438)))

(declare-fun b!5502860 () Bool)

(declare-fun res!2345438 () Bool)

(assert (=> b!5502860 (=> (not res!2345438) (not e!3403788))))

(assert (=> b!5502860 (= res!2345438 call!406437)))

(assert (=> b!5502860 (= e!3403786 e!3403788)))

(assert (= (and d!1744297 (not res!2345440)) b!5502854))

(assert (= (and b!5502854 c!961310) b!5502852))

(assert (= (and b!5502854 (not c!961310)) b!5502858))

(assert (= (and b!5502852 res!2345442) b!5502855))

(assert (= (and b!5502858 c!961309) b!5502860))

(assert (= (and b!5502858 (not c!961309)) b!5502856))

(assert (= (and b!5502860 res!2345438) b!5502859))

(assert (= (and b!5502856 (not res!2345441)) b!5502853))

(assert (= (and b!5502853 res!2345439) b!5502857))

(assert (= (or b!5502859 b!5502857) bm!406432))

(assert (= (or b!5502860 b!5502853) bm!406434))

(assert (= (or b!5502855 bm!406434) bm!406433))

(declare-fun m!6510590 () Bool)

(assert (=> b!5502852 m!6510590))

(declare-fun m!6510592 () Bool)

(assert (=> bm!406432 m!6510592))

(declare-fun m!6510594 () Bool)

(assert (=> bm!406433 m!6510594))

(assert (=> d!1743731 d!1744297))

(declare-fun d!1744299 () Bool)

(declare-fun res!2345443 () Bool)

(declare-fun e!3403789 () Bool)

(assert (=> d!1744299 (=> res!2345443 e!3403789)))

(assert (=> d!1744299 (= res!2345443 ((_ is Nil!62612) (unfocusZipperList!907 zl!343)))))

(assert (=> d!1744299 (= (forall!14664 (unfocusZipperList!907 zl!343) lambda!294533) e!3403789)))

(declare-fun b!5502861 () Bool)

(declare-fun e!3403790 () Bool)

(assert (=> b!5502861 (= e!3403789 e!3403790)))

(declare-fun res!2345444 () Bool)

(assert (=> b!5502861 (=> (not res!2345444) (not e!3403790))))

(assert (=> b!5502861 (= res!2345444 (dynLambda!24470 lambda!294533 (h!69060 (unfocusZipperList!907 zl!343))))))

(declare-fun b!5502862 () Bool)

(assert (=> b!5502862 (= e!3403790 (forall!14664 (t!375973 (unfocusZipperList!907 zl!343)) lambda!294533))))

(assert (= (and d!1744299 (not res!2345443)) b!5502861))

(assert (= (and b!5502861 res!2345444) b!5502862))

(declare-fun b_lambda!208695 () Bool)

(assert (=> (not b_lambda!208695) (not b!5502861)))

(declare-fun m!6510596 () Bool)

(assert (=> b!5502861 m!6510596))

(declare-fun m!6510598 () Bool)

(assert (=> b!5502862 m!6510598))

(assert (=> d!1743731 d!1744299))

(declare-fun d!1744301 () Bool)

(declare-fun c!961311 () Bool)

(assert (=> d!1744301 (= c!961311 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun e!3403791 () Bool)

(assert (=> d!1744301 (= (matchZipper!1647 (derivationStepZipper!1590 z!1189 (head!11784 s!2326)) (tail!10879 s!2326)) e!3403791)))

(declare-fun b!5502863 () Bool)

(assert (=> b!5502863 (= e!3403791 (nullableZipper!1521 (derivationStepZipper!1590 z!1189 (head!11784 s!2326))))))

(declare-fun b!5502864 () Bool)

(assert (=> b!5502864 (= e!3403791 (matchZipper!1647 (derivationStepZipper!1590 (derivationStepZipper!1590 z!1189 (head!11784 s!2326)) (head!11784 (tail!10879 s!2326))) (tail!10879 (tail!10879 s!2326))))))

(assert (= (and d!1744301 c!961311) b!5502863))

(assert (= (and d!1744301 (not c!961311)) b!5502864))

(assert (=> d!1744301 m!6509620))

(assert (=> d!1744301 m!6509756))

(assert (=> b!5502863 m!6509666))

(declare-fun m!6510600 () Bool)

(assert (=> b!5502863 m!6510600))

(assert (=> b!5502864 m!6509620))

(assert (=> b!5502864 m!6510292))

(assert (=> b!5502864 m!6509666))

(assert (=> b!5502864 m!6510292))

(declare-fun m!6510602 () Bool)

(assert (=> b!5502864 m!6510602))

(assert (=> b!5502864 m!6509620))

(assert (=> b!5502864 m!6510288))

(assert (=> b!5502864 m!6510602))

(assert (=> b!5502864 m!6510288))

(declare-fun m!6510604 () Bool)

(assert (=> b!5502864 m!6510604))

(assert (=> b!5501665 d!1744301))

(declare-fun bs!1269228 () Bool)

(declare-fun d!1744303 () Bool)

(assert (= bs!1269228 (and d!1744303 d!1744157)))

(declare-fun lambda!294614 () Int)

(assert (=> bs!1269228 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294614 lambda!294602))))

(declare-fun bs!1269229 () Bool)

(assert (= bs!1269229 (and d!1744303 d!1743817)))

(assert (=> bs!1269229 (= (= (head!11784 s!2326) (h!69062 s!2326)) (= lambda!294614 lambda!294550))))

(declare-fun bs!1269230 () Bool)

(assert (= bs!1269230 (and d!1744303 d!1744247)))

(assert (=> bs!1269230 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294614 lambda!294608))))

(declare-fun bs!1269231 () Bool)

(assert (= bs!1269231 (and d!1744303 b!5501156)))

(assert (=> bs!1269231 (= (= (head!11784 s!2326) (h!69062 s!2326)) (= lambda!294614 lambda!294515))))

(declare-fun bs!1269232 () Bool)

(assert (= bs!1269232 (and d!1744303 d!1744283)))

(assert (=> bs!1269232 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294614 lambda!294613))))

(assert (=> d!1744303 true))

(assert (=> d!1744303 (= (derivationStepZipper!1590 z!1189 (head!11784 s!2326)) (flatMap!1098 z!1189 lambda!294614))))

(declare-fun bs!1269233 () Bool)

(assert (= bs!1269233 d!1744303))

(declare-fun m!6510606 () Bool)

(assert (=> bs!1269233 m!6510606))

(assert (=> b!5501665 d!1744303))

(assert (=> b!5501665 d!1744119))

(assert (=> b!5501665 d!1744167))

(declare-fun d!1744305 () Bool)

(declare-fun c!961312 () Bool)

(assert (=> d!1744305 (= c!961312 (isEmpty!34399 (tail!10879 s!2326)))))

(declare-fun e!3403792 () Bool)

(assert (=> d!1744305 (= (matchZipper!1647 (derivationStepZipper!1590 lt!2243673 (head!11784 s!2326)) (tail!10879 s!2326)) e!3403792)))

(declare-fun b!5502865 () Bool)

(assert (=> b!5502865 (= e!3403792 (nullableZipper!1521 (derivationStepZipper!1590 lt!2243673 (head!11784 s!2326))))))

(declare-fun b!5502866 () Bool)

(assert (=> b!5502866 (= e!3403792 (matchZipper!1647 (derivationStepZipper!1590 (derivationStepZipper!1590 lt!2243673 (head!11784 s!2326)) (head!11784 (tail!10879 s!2326))) (tail!10879 (tail!10879 s!2326))))))

(assert (= (and d!1744305 c!961312) b!5502865))

(assert (= (and d!1744305 (not c!961312)) b!5502866))

(assert (=> d!1744305 m!6509620))

(assert (=> d!1744305 m!6509756))

(assert (=> b!5502865 m!6509618))

(declare-fun m!6510608 () Bool)

(assert (=> b!5502865 m!6510608))

(assert (=> b!5502866 m!6509620))

(assert (=> b!5502866 m!6510292))

(assert (=> b!5502866 m!6509618))

(assert (=> b!5502866 m!6510292))

(declare-fun m!6510610 () Bool)

(assert (=> b!5502866 m!6510610))

(assert (=> b!5502866 m!6509620))

(assert (=> b!5502866 m!6510288))

(assert (=> b!5502866 m!6510610))

(assert (=> b!5502866 m!6510288))

(declare-fun m!6510612 () Bool)

(assert (=> b!5502866 m!6510612))

(assert (=> b!5501574 d!1744305))

(declare-fun bs!1269234 () Bool)

(declare-fun d!1744307 () Bool)

(assert (= bs!1269234 (and d!1744307 d!1744157)))

(declare-fun lambda!294615 () Int)

(assert (=> bs!1269234 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294615 lambda!294602))))

(declare-fun bs!1269235 () Bool)

(assert (= bs!1269235 (and d!1744307 d!1744303)))

(assert (=> bs!1269235 (= lambda!294615 lambda!294614)))

(declare-fun bs!1269236 () Bool)

(assert (= bs!1269236 (and d!1744307 d!1743817)))

(assert (=> bs!1269236 (= (= (head!11784 s!2326) (h!69062 s!2326)) (= lambda!294615 lambda!294550))))

(declare-fun bs!1269237 () Bool)

(assert (= bs!1269237 (and d!1744307 d!1744247)))

(assert (=> bs!1269237 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294615 lambda!294608))))

(declare-fun bs!1269238 () Bool)

(assert (= bs!1269238 (and d!1744307 b!5501156)))

(assert (=> bs!1269238 (= (= (head!11784 s!2326) (h!69062 s!2326)) (= lambda!294615 lambda!294515))))

(declare-fun bs!1269239 () Bool)

(assert (= bs!1269239 (and d!1744307 d!1744283)))

(assert (=> bs!1269239 (= (= (head!11784 s!2326) (head!11784 (t!375975 s!2326))) (= lambda!294615 lambda!294613))))

(assert (=> d!1744307 true))

(assert (=> d!1744307 (= (derivationStepZipper!1590 lt!2243673 (head!11784 s!2326)) (flatMap!1098 lt!2243673 lambda!294615))))

(declare-fun bs!1269240 () Bool)

(assert (= bs!1269240 d!1744307))

(declare-fun m!6510614 () Bool)

(assert (=> bs!1269240 m!6510614))

(assert (=> b!5501574 d!1744307))

(assert (=> b!5501574 d!1744119))

(assert (=> b!5501574 d!1744167))

(declare-fun d!1744309 () Bool)

(declare-fun res!2345445 () Bool)

(declare-fun e!3403793 () Bool)

(assert (=> d!1744309 (=> res!2345445 e!3403793)))

(assert (=> d!1744309 (= res!2345445 ((_ is Nil!62612) (exprs!5363 setElem!36469)))))

(assert (=> d!1744309 (= (forall!14664 (exprs!5363 setElem!36469) lambda!294556) e!3403793)))

(declare-fun b!5502867 () Bool)

(declare-fun e!3403794 () Bool)

(assert (=> b!5502867 (= e!3403793 e!3403794)))

(declare-fun res!2345446 () Bool)

(assert (=> b!5502867 (=> (not res!2345446) (not e!3403794))))

(assert (=> b!5502867 (= res!2345446 (dynLambda!24470 lambda!294556 (h!69060 (exprs!5363 setElem!36469))))))

(declare-fun b!5502868 () Bool)

(assert (=> b!5502868 (= e!3403794 (forall!14664 (t!375973 (exprs!5363 setElem!36469)) lambda!294556))))

(assert (= (and d!1744309 (not res!2345445)) b!5502867))

(assert (= (and b!5502867 res!2345446) b!5502868))

(declare-fun b_lambda!208697 () Bool)

(assert (=> (not b_lambda!208697) (not b!5502867)))

(declare-fun m!6510616 () Bool)

(assert (=> b!5502867 m!6510616))

(declare-fun m!6510618 () Bool)

(assert (=> b!5502868 m!6510618))

(assert (=> d!1743851 d!1744309))

(assert (=> b!5501873 d!1743859))

(declare-fun d!1744311 () Bool)

(assert (=> d!1744311 (= (nullable!5516 (h!69060 (exprs!5363 lt!2243677))) (nullableFct!1651 (h!69060 (exprs!5363 lt!2243677))))))

(declare-fun bs!1269241 () Bool)

(assert (= bs!1269241 d!1744311))

(declare-fun m!6510620 () Bool)

(assert (=> bs!1269241 m!6510620))

(assert (=> b!5501489 d!1744311))

(declare-fun bs!1269242 () Bool)

(declare-fun d!1744313 () Bool)

(assert (= bs!1269242 (and d!1744313 d!1744213)))

(declare-fun lambda!294616 () Int)

(assert (=> bs!1269242 (= lambda!294616 lambda!294604)))

(declare-fun bs!1269243 () Bool)

(assert (= bs!1269243 (and d!1744313 d!1743731)))

(assert (=> bs!1269243 (= lambda!294616 lambda!294533)))

(declare-fun bs!1269244 () Bool)

(assert (= bs!1269244 (and d!1744313 d!1744117)))

(assert (=> bs!1269244 (= lambda!294616 lambda!294596)))

(declare-fun bs!1269245 () Bool)

(assert (= bs!1269245 (and d!1744313 d!1744143)))

(assert (=> bs!1269245 (= lambda!294616 lambda!294601)))

(declare-fun bs!1269246 () Bool)

(assert (= bs!1269246 (and d!1744313 d!1743851)))

(assert (=> bs!1269246 (= lambda!294616 lambda!294556)))

(declare-fun bs!1269247 () Bool)

(assert (= bs!1269247 (and d!1744313 d!1743853)))

(assert (=> bs!1269247 (= lambda!294616 lambda!294557)))

(declare-fun bs!1269248 () Bool)

(assert (= bs!1269248 (and d!1744313 d!1743841)))

(assert (=> bs!1269248 (= lambda!294616 lambda!294553)))

(declare-fun bs!1269249 () Bool)

(assert (= bs!1269249 (and d!1744313 d!1743739)))

(assert (=> bs!1269249 (= lambda!294616 lambda!294540)))

(declare-fun bs!1269250 () Bool)

(assert (= bs!1269250 (and d!1744313 d!1744211)))

(assert (=> bs!1269250 (= lambda!294616 lambda!294603)))

(assert (=> d!1744313 (= (inv!81944 setElem!36475) (forall!14664 (exprs!5363 setElem!36475) lambda!294616))))

(declare-fun bs!1269251 () Bool)

(assert (= bs!1269251 d!1744313))

(declare-fun m!6510622 () Bool)

(assert (=> bs!1269251 m!6510622))

(assert (=> setNonEmpty!36475 d!1744313))

(assert (=> d!1743835 d!1744121))

(declare-fun bs!1269252 () Bool)

(declare-fun d!1744315 () Bool)

(assert (= bs!1269252 (and d!1744315 d!1744111)))

(declare-fun lambda!294617 () Int)

(assert (=> bs!1269252 (= lambda!294617 lambda!294595)))

(declare-fun bs!1269253 () Bool)

(assert (= bs!1269253 (and d!1744315 d!1744217)))

(assert (=> bs!1269253 (= lambda!294617 lambda!294605)))

(declare-fun bs!1269254 () Bool)

(assert (= bs!1269254 (and d!1744315 d!1744253)))

(assert (=> bs!1269254 (= lambda!294617 lambda!294609)))

(declare-fun bs!1269255 () Bool)

(assert (= bs!1269255 (and d!1744315 d!1744277)))

(assert (=> bs!1269255 (= lambda!294617 lambda!294612)))

(assert (=> d!1744315 (= (nullableZipper!1521 lt!2243683) (exists!2130 lt!2243683 lambda!294617))))

(declare-fun bs!1269256 () Bool)

(assert (= bs!1269256 d!1744315))

(declare-fun m!6510624 () Bool)

(assert (=> bs!1269256 m!6510624))

(assert (=> b!5501752 d!1744315))

(assert (=> b!5501860 d!1744187))

(assert (=> b!5501860 d!1744167))

(declare-fun d!1744317 () Bool)

(assert (=> d!1744317 (= (nullable!5516 r!7292) (nullableFct!1651 r!7292))))

(declare-fun bs!1269257 () Bool)

(assert (= bs!1269257 d!1744317))

(declare-fun m!6510626 () Bool)

(assert (=> bs!1269257 m!6510626))

(assert (=> b!5501882 d!1744317))

(declare-fun d!1744319 () Bool)

(assert (=> d!1744319 (= (isEmpty!34398 (t!375973 (unfocusZipperList!907 zl!343))) ((_ is Nil!62612) (t!375973 (unfocusZipperList!907 zl!343))))))

(assert (=> b!5501354 d!1744319))

(declare-fun d!1744321 () Bool)

(declare-fun c!961315 () Bool)

(assert (=> d!1744321 (= c!961315 ((_ is Nil!62613) lt!2243717))))

(declare-fun e!3403797 () (InoxSet Context!9726))

(assert (=> d!1744321 (= (content!11242 lt!2243717) e!3403797)))

(declare-fun b!5502873 () Bool)

(assert (=> b!5502873 (= e!3403797 ((as const (Array Context!9726 Bool)) false))))

(declare-fun b!5502874 () Bool)

(assert (=> b!5502874 (= e!3403797 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) (h!69061 lt!2243717) true) (content!11242 (t!375974 lt!2243717))))))

(assert (= (and d!1744321 c!961315) b!5502873))

(assert (= (and d!1744321 (not c!961315)) b!5502874))

(declare-fun m!6510628 () Bool)

(assert (=> b!5502874 m!6510628))

(declare-fun m!6510630 () Bool)

(assert (=> b!5502874 m!6510630))

(assert (=> b!5501435 d!1744321))

(declare-fun d!1744323 () Bool)

(assert (=> d!1744323 (= (nullable!5516 (regOne!31470 (regOne!31471 r!7292))) (nullableFct!1651 (regOne!31470 (regOne!31471 r!7292))))))

(declare-fun bs!1269258 () Bool)

(assert (= bs!1269258 d!1744323))

(declare-fun m!6510632 () Bool)

(assert (=> bs!1269258 m!6510632))

(assert (=> b!5501741 d!1744323))

(declare-fun d!1744325 () Bool)

(assert (=> d!1744325 (= (isEmptyExpr!1062 lt!2243736) ((_ is EmptyExpr!15479) lt!2243736))))

(assert (=> b!5501716 d!1744325))

(assert (=> b!5501831 d!1744119))

(declare-fun d!1744327 () Bool)

(assert (=> d!1744327 (= (nullable!5516 (regOne!31470 (regTwo!31471 r!7292))) (nullableFct!1651 (regOne!31470 (regTwo!31471 r!7292))))))

(declare-fun bs!1269259 () Bool)

(assert (= bs!1269259 d!1744327))

(declare-fun m!6510634 () Bool)

(assert (=> bs!1269259 m!6510634))

(assert (=> b!5501730 d!1744327))

(assert (=> d!1743837 d!1744139))

(declare-fun e!3403798 () Bool)

(assert (=> b!5501911 (= tp!1513816 e!3403798)))

(declare-fun b!5502878 () Bool)

(declare-fun tp!1514038 () Bool)

(declare-fun tp!1514039 () Bool)

(assert (=> b!5502878 (= e!3403798 (and tp!1514038 tp!1514039))))

(declare-fun b!5502875 () Bool)

(assert (=> b!5502875 (= e!3403798 tp_is_empty!40211)))

(declare-fun b!5502877 () Bool)

(declare-fun tp!1514037 () Bool)

(assert (=> b!5502877 (= e!3403798 tp!1514037)))

(declare-fun b!5502876 () Bool)

(declare-fun tp!1514036 () Bool)

(declare-fun tp!1514040 () Bool)

(assert (=> b!5502876 (= e!3403798 (and tp!1514036 tp!1514040))))

(assert (= (and b!5501911 ((_ is ElementMatch!15479) (regOne!31471 (regOne!31471 r!7292)))) b!5502875))

(assert (= (and b!5501911 ((_ is Concat!24324) (regOne!31471 (regOne!31471 r!7292)))) b!5502876))

(assert (= (and b!5501911 ((_ is Star!15479) (regOne!31471 (regOne!31471 r!7292)))) b!5502877))

(assert (= (and b!5501911 ((_ is Union!15479) (regOne!31471 (regOne!31471 r!7292)))) b!5502878))

(declare-fun e!3403799 () Bool)

(assert (=> b!5501911 (= tp!1513817 e!3403799)))

(declare-fun b!5502882 () Bool)

(declare-fun tp!1514043 () Bool)

(declare-fun tp!1514044 () Bool)

(assert (=> b!5502882 (= e!3403799 (and tp!1514043 tp!1514044))))

(declare-fun b!5502879 () Bool)

(assert (=> b!5502879 (= e!3403799 tp_is_empty!40211)))

(declare-fun b!5502881 () Bool)

(declare-fun tp!1514042 () Bool)

(assert (=> b!5502881 (= e!3403799 tp!1514042)))

(declare-fun b!5502880 () Bool)

(declare-fun tp!1514041 () Bool)

(declare-fun tp!1514045 () Bool)

(assert (=> b!5502880 (= e!3403799 (and tp!1514041 tp!1514045))))

(assert (= (and b!5501911 ((_ is ElementMatch!15479) (regTwo!31471 (regOne!31471 r!7292)))) b!5502879))

(assert (= (and b!5501911 ((_ is Concat!24324) (regTwo!31471 (regOne!31471 r!7292)))) b!5502880))

(assert (= (and b!5501911 ((_ is Star!15479) (regTwo!31471 (regOne!31471 r!7292)))) b!5502881))

(assert (= (and b!5501911 ((_ is Union!15479) (regTwo!31471 (regOne!31471 r!7292)))) b!5502882))

(declare-fun e!3403800 () Bool)

(assert (=> b!5501910 (= tp!1513815 e!3403800)))

(declare-fun b!5502886 () Bool)

(declare-fun tp!1514048 () Bool)

(declare-fun tp!1514049 () Bool)

(assert (=> b!5502886 (= e!3403800 (and tp!1514048 tp!1514049))))

(declare-fun b!5502883 () Bool)

(assert (=> b!5502883 (= e!3403800 tp_is_empty!40211)))

(declare-fun b!5502885 () Bool)

(declare-fun tp!1514047 () Bool)

(assert (=> b!5502885 (= e!3403800 tp!1514047)))

(declare-fun b!5502884 () Bool)

(declare-fun tp!1514046 () Bool)

(declare-fun tp!1514050 () Bool)

(assert (=> b!5502884 (= e!3403800 (and tp!1514046 tp!1514050))))

(assert (= (and b!5501910 ((_ is ElementMatch!15479) (reg!15808 (regOne!31471 r!7292)))) b!5502883))

(assert (= (and b!5501910 ((_ is Concat!24324) (reg!15808 (regOne!31471 r!7292)))) b!5502884))

(assert (= (and b!5501910 ((_ is Star!15479) (reg!15808 (regOne!31471 r!7292)))) b!5502885))

(assert (= (and b!5501910 ((_ is Union!15479) (reg!15808 (regOne!31471 r!7292)))) b!5502886))

(declare-fun e!3403801 () Bool)

(assert (=> b!5501909 (= tp!1513814 e!3403801)))

(declare-fun b!5502890 () Bool)

(declare-fun tp!1514053 () Bool)

(declare-fun tp!1514054 () Bool)

(assert (=> b!5502890 (= e!3403801 (and tp!1514053 tp!1514054))))

(declare-fun b!5502887 () Bool)

(assert (=> b!5502887 (= e!3403801 tp_is_empty!40211)))

(declare-fun b!5502889 () Bool)

(declare-fun tp!1514052 () Bool)

(assert (=> b!5502889 (= e!3403801 tp!1514052)))

(declare-fun b!5502888 () Bool)

(declare-fun tp!1514051 () Bool)

(declare-fun tp!1514055 () Bool)

(assert (=> b!5502888 (= e!3403801 (and tp!1514051 tp!1514055))))

(assert (= (and b!5501909 ((_ is ElementMatch!15479) (regOne!31470 (regOne!31471 r!7292)))) b!5502887))

(assert (= (and b!5501909 ((_ is Concat!24324) (regOne!31470 (regOne!31471 r!7292)))) b!5502888))

(assert (= (and b!5501909 ((_ is Star!15479) (regOne!31470 (regOne!31471 r!7292)))) b!5502889))

(assert (= (and b!5501909 ((_ is Union!15479) (regOne!31470 (regOne!31471 r!7292)))) b!5502890))

(declare-fun e!3403802 () Bool)

(assert (=> b!5501909 (= tp!1513818 e!3403802)))

(declare-fun b!5502894 () Bool)

(declare-fun tp!1514058 () Bool)

(declare-fun tp!1514059 () Bool)

(assert (=> b!5502894 (= e!3403802 (and tp!1514058 tp!1514059))))

(declare-fun b!5502891 () Bool)

(assert (=> b!5502891 (= e!3403802 tp_is_empty!40211)))

(declare-fun b!5502893 () Bool)

(declare-fun tp!1514057 () Bool)

(assert (=> b!5502893 (= e!3403802 tp!1514057)))

(declare-fun b!5502892 () Bool)

(declare-fun tp!1514056 () Bool)

(declare-fun tp!1514060 () Bool)

(assert (=> b!5502892 (= e!3403802 (and tp!1514056 tp!1514060))))

(assert (= (and b!5501909 ((_ is ElementMatch!15479) (regTwo!31470 (regOne!31471 r!7292)))) b!5502891))

(assert (= (and b!5501909 ((_ is Concat!24324) (regTwo!31470 (regOne!31471 r!7292)))) b!5502892))

(assert (= (and b!5501909 ((_ is Star!15479) (regTwo!31470 (regOne!31471 r!7292)))) b!5502893))

(assert (= (and b!5501909 ((_ is Union!15479) (regTwo!31470 (regOne!31471 r!7292)))) b!5502894))

(declare-fun e!3403803 () Bool)

(assert (=> b!5501938 (= tp!1513843 e!3403803)))

(declare-fun b!5502898 () Bool)

(declare-fun tp!1514063 () Bool)

(declare-fun tp!1514064 () Bool)

(assert (=> b!5502898 (= e!3403803 (and tp!1514063 tp!1514064))))

(declare-fun b!5502895 () Bool)

(assert (=> b!5502895 (= e!3403803 tp_is_empty!40211)))

(declare-fun b!5502897 () Bool)

(declare-fun tp!1514062 () Bool)

(assert (=> b!5502897 (= e!3403803 tp!1514062)))

(declare-fun b!5502896 () Bool)

(declare-fun tp!1514061 () Bool)

(declare-fun tp!1514065 () Bool)

(assert (=> b!5502896 (= e!3403803 (and tp!1514061 tp!1514065))))

(assert (= (and b!5501938 ((_ is ElementMatch!15479) (regOne!31471 (regOne!31470 r!7292)))) b!5502895))

(assert (= (and b!5501938 ((_ is Concat!24324) (regOne!31471 (regOne!31470 r!7292)))) b!5502896))

(assert (= (and b!5501938 ((_ is Star!15479) (regOne!31471 (regOne!31470 r!7292)))) b!5502897))

(assert (= (and b!5501938 ((_ is Union!15479) (regOne!31471 (regOne!31470 r!7292)))) b!5502898))

(declare-fun e!3403804 () Bool)

(assert (=> b!5501938 (= tp!1513844 e!3403804)))

(declare-fun b!5502902 () Bool)

(declare-fun tp!1514068 () Bool)

(declare-fun tp!1514069 () Bool)

(assert (=> b!5502902 (= e!3403804 (and tp!1514068 tp!1514069))))

(declare-fun b!5502899 () Bool)

(assert (=> b!5502899 (= e!3403804 tp_is_empty!40211)))

(declare-fun b!5502901 () Bool)

(declare-fun tp!1514067 () Bool)

(assert (=> b!5502901 (= e!3403804 tp!1514067)))

(declare-fun b!5502900 () Bool)

(declare-fun tp!1514066 () Bool)

(declare-fun tp!1514070 () Bool)

(assert (=> b!5502900 (= e!3403804 (and tp!1514066 tp!1514070))))

(assert (= (and b!5501938 ((_ is ElementMatch!15479) (regTwo!31471 (regOne!31470 r!7292)))) b!5502899))

(assert (= (and b!5501938 ((_ is Concat!24324) (regTwo!31471 (regOne!31470 r!7292)))) b!5502900))

(assert (= (and b!5501938 ((_ is Star!15479) (regTwo!31471 (regOne!31470 r!7292)))) b!5502901))

(assert (= (and b!5501938 ((_ is Union!15479) (regTwo!31471 (regOne!31470 r!7292)))) b!5502902))

(declare-fun e!3403805 () Bool)

(assert (=> b!5501941 (= tp!1513847 e!3403805)))

(declare-fun b!5502906 () Bool)

(declare-fun tp!1514073 () Bool)

(declare-fun tp!1514074 () Bool)

(assert (=> b!5502906 (= e!3403805 (and tp!1514073 tp!1514074))))

(declare-fun b!5502903 () Bool)

(assert (=> b!5502903 (= e!3403805 tp_is_empty!40211)))

(declare-fun b!5502905 () Bool)

(declare-fun tp!1514072 () Bool)

(assert (=> b!5502905 (= e!3403805 tp!1514072)))

(declare-fun b!5502904 () Bool)

(declare-fun tp!1514071 () Bool)

(declare-fun tp!1514075 () Bool)

(assert (=> b!5502904 (= e!3403805 (and tp!1514071 tp!1514075))))

(assert (= (and b!5501941 ((_ is ElementMatch!15479) (reg!15808 (regTwo!31470 r!7292)))) b!5502903))

(assert (= (and b!5501941 ((_ is Concat!24324) (reg!15808 (regTwo!31470 r!7292)))) b!5502904))

(assert (= (and b!5501941 ((_ is Star!15479) (reg!15808 (regTwo!31470 r!7292)))) b!5502905))

(assert (= (and b!5501941 ((_ is Union!15479) (reg!15808 (regTwo!31470 r!7292)))) b!5502906))

(declare-fun e!3403806 () Bool)

(assert (=> b!5501942 (= tp!1513848 e!3403806)))

(declare-fun b!5502910 () Bool)

(declare-fun tp!1514078 () Bool)

(declare-fun tp!1514079 () Bool)

(assert (=> b!5502910 (= e!3403806 (and tp!1514078 tp!1514079))))

(declare-fun b!5502907 () Bool)

(assert (=> b!5502907 (= e!3403806 tp_is_empty!40211)))

(declare-fun b!5502909 () Bool)

(declare-fun tp!1514077 () Bool)

(assert (=> b!5502909 (= e!3403806 tp!1514077)))

(declare-fun b!5502908 () Bool)

(declare-fun tp!1514076 () Bool)

(declare-fun tp!1514080 () Bool)

(assert (=> b!5502908 (= e!3403806 (and tp!1514076 tp!1514080))))

(assert (= (and b!5501942 ((_ is ElementMatch!15479) (regOne!31471 (regTwo!31470 r!7292)))) b!5502907))

(assert (= (and b!5501942 ((_ is Concat!24324) (regOne!31471 (regTwo!31470 r!7292)))) b!5502908))

(assert (= (and b!5501942 ((_ is Star!15479) (regOne!31471 (regTwo!31470 r!7292)))) b!5502909))

(assert (= (and b!5501942 ((_ is Union!15479) (regOne!31471 (regTwo!31470 r!7292)))) b!5502910))

(declare-fun e!3403807 () Bool)

(assert (=> b!5501942 (= tp!1513849 e!3403807)))

(declare-fun b!5502914 () Bool)

(declare-fun tp!1514083 () Bool)

(declare-fun tp!1514084 () Bool)

(assert (=> b!5502914 (= e!3403807 (and tp!1514083 tp!1514084))))

(declare-fun b!5502911 () Bool)

(assert (=> b!5502911 (= e!3403807 tp_is_empty!40211)))

(declare-fun b!5502913 () Bool)

(declare-fun tp!1514082 () Bool)

(assert (=> b!5502913 (= e!3403807 tp!1514082)))

(declare-fun b!5502912 () Bool)

(declare-fun tp!1514081 () Bool)

(declare-fun tp!1514085 () Bool)

(assert (=> b!5502912 (= e!3403807 (and tp!1514081 tp!1514085))))

(assert (= (and b!5501942 ((_ is ElementMatch!15479) (regTwo!31471 (regTwo!31470 r!7292)))) b!5502911))

(assert (= (and b!5501942 ((_ is Concat!24324) (regTwo!31471 (regTwo!31470 r!7292)))) b!5502912))

(assert (= (and b!5501942 ((_ is Star!15479) (regTwo!31471 (regTwo!31470 r!7292)))) b!5502913))

(assert (= (and b!5501942 ((_ is Union!15479) (regTwo!31471 (regTwo!31470 r!7292)))) b!5502914))

(declare-fun e!3403808 () Bool)

(assert (=> b!5501940 (= tp!1513846 e!3403808)))

(declare-fun b!5502918 () Bool)

(declare-fun tp!1514088 () Bool)

(declare-fun tp!1514089 () Bool)

(assert (=> b!5502918 (= e!3403808 (and tp!1514088 tp!1514089))))

(declare-fun b!5502915 () Bool)

(assert (=> b!5502915 (= e!3403808 tp_is_empty!40211)))

(declare-fun b!5502917 () Bool)

(declare-fun tp!1514087 () Bool)

(assert (=> b!5502917 (= e!3403808 tp!1514087)))

(declare-fun b!5502916 () Bool)

(declare-fun tp!1514086 () Bool)

(declare-fun tp!1514090 () Bool)

(assert (=> b!5502916 (= e!3403808 (and tp!1514086 tp!1514090))))

(assert (= (and b!5501940 ((_ is ElementMatch!15479) (regOne!31470 (regTwo!31470 r!7292)))) b!5502915))

(assert (= (and b!5501940 ((_ is Concat!24324) (regOne!31470 (regTwo!31470 r!7292)))) b!5502916))

(assert (= (and b!5501940 ((_ is Star!15479) (regOne!31470 (regTwo!31470 r!7292)))) b!5502917))

(assert (= (and b!5501940 ((_ is Union!15479) (regOne!31470 (regTwo!31470 r!7292)))) b!5502918))

(declare-fun e!3403809 () Bool)

(assert (=> b!5501940 (= tp!1513850 e!3403809)))

(declare-fun b!5502922 () Bool)

(declare-fun tp!1514093 () Bool)

(declare-fun tp!1514094 () Bool)

(assert (=> b!5502922 (= e!3403809 (and tp!1514093 tp!1514094))))

(declare-fun b!5502919 () Bool)

(assert (=> b!5502919 (= e!3403809 tp_is_empty!40211)))

(declare-fun b!5502921 () Bool)

(declare-fun tp!1514092 () Bool)

(assert (=> b!5502921 (= e!3403809 tp!1514092)))

(declare-fun b!5502920 () Bool)

(declare-fun tp!1514091 () Bool)

(declare-fun tp!1514095 () Bool)

(assert (=> b!5502920 (= e!3403809 (and tp!1514091 tp!1514095))))

(assert (= (and b!5501940 ((_ is ElementMatch!15479) (regTwo!31470 (regTwo!31470 r!7292)))) b!5502919))

(assert (= (and b!5501940 ((_ is Concat!24324) (regTwo!31470 (regTwo!31470 r!7292)))) b!5502920))

(assert (= (and b!5501940 ((_ is Star!15479) (regTwo!31470 (regTwo!31470 r!7292)))) b!5502921))

(assert (= (and b!5501940 ((_ is Union!15479) (regTwo!31470 (regTwo!31470 r!7292)))) b!5502922))

(declare-fun b!5502923 () Bool)

(declare-fun e!3403810 () Bool)

(declare-fun tp!1514096 () Bool)

(declare-fun tp!1514097 () Bool)

(assert (=> b!5502923 (= e!3403810 (and tp!1514096 tp!1514097))))

(assert (=> b!5501920 (= tp!1513829 e!3403810)))

(assert (= (and b!5501920 ((_ is Cons!62612) (exprs!5363 setElem!36475))) b!5502923))

(declare-fun condSetEmpty!36487 () Bool)

(assert (=> setNonEmpty!36475 (= condSetEmpty!36487 (= setRest!36475 ((as const (Array Context!9726 Bool)) false)))))

(declare-fun setRes!36487 () Bool)

(assert (=> setNonEmpty!36475 (= tp!1513828 setRes!36487)))

(declare-fun setIsEmpty!36487 () Bool)

(assert (=> setIsEmpty!36487 setRes!36487))

(declare-fun setNonEmpty!36487 () Bool)

(declare-fun setElem!36487 () Context!9726)

(declare-fun tp!1514098 () Bool)

(declare-fun e!3403811 () Bool)

(assert (=> setNonEmpty!36487 (= setRes!36487 (and tp!1514098 (inv!81944 setElem!36487) e!3403811))))

(declare-fun setRest!36487 () (InoxSet Context!9726))

(assert (=> setNonEmpty!36487 (= setRest!36475 ((_ map or) (store ((as const (Array Context!9726 Bool)) false) setElem!36487 true) setRest!36487))))

(declare-fun b!5502924 () Bool)

(declare-fun tp!1514099 () Bool)

(assert (=> b!5502924 (= e!3403811 tp!1514099)))

(assert (= (and setNonEmpty!36475 condSetEmpty!36487) setIsEmpty!36487))

(assert (= (and setNonEmpty!36475 (not condSetEmpty!36487)) setNonEmpty!36487))

(assert (= setNonEmpty!36487 b!5502924))

(declare-fun m!6510636 () Bool)

(assert (=> setNonEmpty!36487 m!6510636))

(declare-fun e!3403812 () Bool)

(assert (=> b!5501915 (= tp!1513821 e!3403812)))

(declare-fun b!5502928 () Bool)

(declare-fun tp!1514102 () Bool)

(declare-fun tp!1514103 () Bool)

(assert (=> b!5502928 (= e!3403812 (and tp!1514102 tp!1514103))))

(declare-fun b!5502925 () Bool)

(assert (=> b!5502925 (= e!3403812 tp_is_empty!40211)))

(declare-fun b!5502927 () Bool)

(declare-fun tp!1514101 () Bool)

(assert (=> b!5502927 (= e!3403812 tp!1514101)))

(declare-fun b!5502926 () Bool)

(declare-fun tp!1514100 () Bool)

(declare-fun tp!1514104 () Bool)

(assert (=> b!5502926 (= e!3403812 (and tp!1514100 tp!1514104))))

(assert (= (and b!5501915 ((_ is ElementMatch!15479) (regOne!31471 (regTwo!31471 r!7292)))) b!5502925))

(assert (= (and b!5501915 ((_ is Concat!24324) (regOne!31471 (regTwo!31471 r!7292)))) b!5502926))

(assert (= (and b!5501915 ((_ is Star!15479) (regOne!31471 (regTwo!31471 r!7292)))) b!5502927))

(assert (= (and b!5501915 ((_ is Union!15479) (regOne!31471 (regTwo!31471 r!7292)))) b!5502928))

(declare-fun e!3403813 () Bool)

(assert (=> b!5501915 (= tp!1513822 e!3403813)))

(declare-fun b!5502932 () Bool)

(declare-fun tp!1514107 () Bool)

(declare-fun tp!1514108 () Bool)

(assert (=> b!5502932 (= e!3403813 (and tp!1514107 tp!1514108))))

(declare-fun b!5502929 () Bool)

(assert (=> b!5502929 (= e!3403813 tp_is_empty!40211)))

(declare-fun b!5502931 () Bool)

(declare-fun tp!1514106 () Bool)

(assert (=> b!5502931 (= e!3403813 tp!1514106)))

(declare-fun b!5502930 () Bool)

(declare-fun tp!1514105 () Bool)

(declare-fun tp!1514109 () Bool)

(assert (=> b!5502930 (= e!3403813 (and tp!1514105 tp!1514109))))

(assert (= (and b!5501915 ((_ is ElementMatch!15479) (regTwo!31471 (regTwo!31471 r!7292)))) b!5502929))

(assert (= (and b!5501915 ((_ is Concat!24324) (regTwo!31471 (regTwo!31471 r!7292)))) b!5502930))

(assert (= (and b!5501915 ((_ is Star!15479) (regTwo!31471 (regTwo!31471 r!7292)))) b!5502931))

(assert (= (and b!5501915 ((_ is Union!15479) (regTwo!31471 (regTwo!31471 r!7292)))) b!5502932))

(declare-fun b!5502933 () Bool)

(declare-fun e!3403814 () Bool)

(declare-fun tp!1514110 () Bool)

(declare-fun tp!1514111 () Bool)

(assert (=> b!5502933 (= e!3403814 (and tp!1514110 tp!1514111))))

(assert (=> b!5501928 (= tp!1513834 e!3403814)))

(assert (= (and b!5501928 ((_ is Cons!62612) (exprs!5363 (h!69061 (t!375974 zl!343))))) b!5502933))

(declare-fun e!3403815 () Bool)

(assert (=> b!5501913 (= tp!1513819 e!3403815)))

(declare-fun b!5502937 () Bool)

(declare-fun tp!1514114 () Bool)

(declare-fun tp!1514115 () Bool)

(assert (=> b!5502937 (= e!3403815 (and tp!1514114 tp!1514115))))

(declare-fun b!5502934 () Bool)

(assert (=> b!5502934 (= e!3403815 tp_is_empty!40211)))

(declare-fun b!5502936 () Bool)

(declare-fun tp!1514113 () Bool)

(assert (=> b!5502936 (= e!3403815 tp!1514113)))

(declare-fun b!5502935 () Bool)

(declare-fun tp!1514112 () Bool)

(declare-fun tp!1514116 () Bool)

(assert (=> b!5502935 (= e!3403815 (and tp!1514112 tp!1514116))))

(assert (= (and b!5501913 ((_ is ElementMatch!15479) (regOne!31470 (regTwo!31471 r!7292)))) b!5502934))

(assert (= (and b!5501913 ((_ is Concat!24324) (regOne!31470 (regTwo!31471 r!7292)))) b!5502935))

(assert (= (and b!5501913 ((_ is Star!15479) (regOne!31470 (regTwo!31471 r!7292)))) b!5502936))

(assert (= (and b!5501913 ((_ is Union!15479) (regOne!31470 (regTwo!31471 r!7292)))) b!5502937))

(declare-fun e!3403816 () Bool)

(assert (=> b!5501913 (= tp!1513823 e!3403816)))

(declare-fun b!5502941 () Bool)

(declare-fun tp!1514119 () Bool)

(declare-fun tp!1514120 () Bool)

(assert (=> b!5502941 (= e!3403816 (and tp!1514119 tp!1514120))))

(declare-fun b!5502938 () Bool)

(assert (=> b!5502938 (= e!3403816 tp_is_empty!40211)))

(declare-fun b!5502940 () Bool)

(declare-fun tp!1514118 () Bool)

(assert (=> b!5502940 (= e!3403816 tp!1514118)))

(declare-fun b!5502939 () Bool)

(declare-fun tp!1514117 () Bool)

(declare-fun tp!1514121 () Bool)

(assert (=> b!5502939 (= e!3403816 (and tp!1514117 tp!1514121))))

(assert (= (and b!5501913 ((_ is ElementMatch!15479) (regTwo!31470 (regTwo!31471 r!7292)))) b!5502938))

(assert (= (and b!5501913 ((_ is Concat!24324) (regTwo!31470 (regTwo!31471 r!7292)))) b!5502939))

(assert (= (and b!5501913 ((_ is Star!15479) (regTwo!31470 (regTwo!31471 r!7292)))) b!5502940))

(assert (= (and b!5501913 ((_ is Union!15479) (regTwo!31470 (regTwo!31471 r!7292)))) b!5502941))

(declare-fun e!3403817 () Bool)

(assert (=> b!5501914 (= tp!1513820 e!3403817)))

(declare-fun b!5502945 () Bool)

(declare-fun tp!1514124 () Bool)

(declare-fun tp!1514125 () Bool)

(assert (=> b!5502945 (= e!3403817 (and tp!1514124 tp!1514125))))

(declare-fun b!5502942 () Bool)

(assert (=> b!5502942 (= e!3403817 tp_is_empty!40211)))

(declare-fun b!5502944 () Bool)

(declare-fun tp!1514123 () Bool)

(assert (=> b!5502944 (= e!3403817 tp!1514123)))

(declare-fun b!5502943 () Bool)

(declare-fun tp!1514122 () Bool)

(declare-fun tp!1514126 () Bool)

(assert (=> b!5502943 (= e!3403817 (and tp!1514122 tp!1514126))))

(assert (= (and b!5501914 ((_ is ElementMatch!15479) (reg!15808 (regTwo!31471 r!7292)))) b!5502942))

(assert (= (and b!5501914 ((_ is Concat!24324) (reg!15808 (regTwo!31471 r!7292)))) b!5502943))

(assert (= (and b!5501914 ((_ is Star!15479) (reg!15808 (regTwo!31471 r!7292)))) b!5502944))

(assert (= (and b!5501914 ((_ is Union!15479) (reg!15808 (regTwo!31471 r!7292)))) b!5502945))

(declare-fun b!5502947 () Bool)

(declare-fun e!3403819 () Bool)

(declare-fun tp!1514127 () Bool)

(assert (=> b!5502947 (= e!3403819 tp!1514127)))

(declare-fun tp!1514128 () Bool)

(declare-fun b!5502946 () Bool)

(declare-fun e!3403818 () Bool)

(assert (=> b!5502946 (= e!3403818 (and (inv!81944 (h!69061 (t!375974 (t!375974 zl!343)))) e!3403819 tp!1514128))))

(assert (=> b!5501927 (= tp!1513835 e!3403818)))

(assert (= b!5502946 b!5502947))

(assert (= (and b!5501927 ((_ is Cons!62613) (t!375974 (t!375974 zl!343)))) b!5502946))

(declare-fun m!6510638 () Bool)

(assert (=> b!5502946 m!6510638))

(declare-fun e!3403820 () Bool)

(assert (=> b!5501897 (= tp!1513802 e!3403820)))

(declare-fun b!5502951 () Bool)

(declare-fun tp!1514131 () Bool)

(declare-fun tp!1514132 () Bool)

(assert (=> b!5502951 (= e!3403820 (and tp!1514131 tp!1514132))))

(declare-fun b!5502948 () Bool)

(assert (=> b!5502948 (= e!3403820 tp_is_empty!40211)))

(declare-fun b!5502950 () Bool)

(declare-fun tp!1514130 () Bool)

(assert (=> b!5502950 (= e!3403820 tp!1514130)))

(declare-fun b!5502949 () Bool)

(declare-fun tp!1514129 () Bool)

(declare-fun tp!1514133 () Bool)

(assert (=> b!5502949 (= e!3403820 (and tp!1514129 tp!1514133))))

(assert (= (and b!5501897 ((_ is ElementMatch!15479) (h!69060 (exprs!5363 setElem!36469)))) b!5502948))

(assert (= (and b!5501897 ((_ is Concat!24324) (h!69060 (exprs!5363 setElem!36469)))) b!5502949))

(assert (= (and b!5501897 ((_ is Star!15479) (h!69060 (exprs!5363 setElem!36469)))) b!5502950))

(assert (= (and b!5501897 ((_ is Union!15479) (h!69060 (exprs!5363 setElem!36469)))) b!5502951))

(declare-fun b!5502952 () Bool)

(declare-fun e!3403821 () Bool)

(declare-fun tp!1514134 () Bool)

(declare-fun tp!1514135 () Bool)

(assert (=> b!5502952 (= e!3403821 (and tp!1514134 tp!1514135))))

(assert (=> b!5501897 (= tp!1513803 e!3403821)))

(assert (= (and b!5501897 ((_ is Cons!62612) (t!375973 (exprs!5363 setElem!36469)))) b!5502952))

(declare-fun b!5502953 () Bool)

(declare-fun e!3403822 () Bool)

(declare-fun tp!1514136 () Bool)

(assert (=> b!5502953 (= e!3403822 (and tp_is_empty!40211 tp!1514136))))

(assert (=> b!5501934 (= tp!1513840 e!3403822)))

(assert (= (and b!5501934 ((_ is Cons!62614) (t!375975 (t!375975 s!2326)))) b!5502953))

(declare-fun e!3403823 () Bool)

(assert (=> b!5501946 (= tp!1513853 e!3403823)))

(declare-fun b!5502957 () Bool)

(declare-fun tp!1514139 () Bool)

(declare-fun tp!1514140 () Bool)

(assert (=> b!5502957 (= e!3403823 (and tp!1514139 tp!1514140))))

(declare-fun b!5502954 () Bool)

(assert (=> b!5502954 (= e!3403823 tp_is_empty!40211)))

(declare-fun b!5502956 () Bool)

(declare-fun tp!1514138 () Bool)

(assert (=> b!5502956 (= e!3403823 tp!1514138)))

(declare-fun b!5502955 () Bool)

(declare-fun tp!1514137 () Bool)

(declare-fun tp!1514141 () Bool)

(assert (=> b!5502955 (= e!3403823 (and tp!1514137 tp!1514141))))

(assert (= (and b!5501946 ((_ is ElementMatch!15479) (regOne!31471 (reg!15808 r!7292)))) b!5502954))

(assert (= (and b!5501946 ((_ is Concat!24324) (regOne!31471 (reg!15808 r!7292)))) b!5502955))

(assert (= (and b!5501946 ((_ is Star!15479) (regOne!31471 (reg!15808 r!7292)))) b!5502956))

(assert (= (and b!5501946 ((_ is Union!15479) (regOne!31471 (reg!15808 r!7292)))) b!5502957))

(declare-fun e!3403824 () Bool)

(assert (=> b!5501946 (= tp!1513854 e!3403824)))

(declare-fun b!5502961 () Bool)

(declare-fun tp!1514144 () Bool)

(declare-fun tp!1514145 () Bool)

(assert (=> b!5502961 (= e!3403824 (and tp!1514144 tp!1514145))))

(declare-fun b!5502958 () Bool)

(assert (=> b!5502958 (= e!3403824 tp_is_empty!40211)))

(declare-fun b!5502960 () Bool)

(declare-fun tp!1514143 () Bool)

(assert (=> b!5502960 (= e!3403824 tp!1514143)))

(declare-fun b!5502959 () Bool)

(declare-fun tp!1514142 () Bool)

(declare-fun tp!1514146 () Bool)

(assert (=> b!5502959 (= e!3403824 (and tp!1514142 tp!1514146))))

(assert (= (and b!5501946 ((_ is ElementMatch!15479) (regTwo!31471 (reg!15808 r!7292)))) b!5502958))

(assert (= (and b!5501946 ((_ is Concat!24324) (regTwo!31471 (reg!15808 r!7292)))) b!5502959))

(assert (= (and b!5501946 ((_ is Star!15479) (regTwo!31471 (reg!15808 r!7292)))) b!5502960))

(assert (= (and b!5501946 ((_ is Union!15479) (regTwo!31471 (reg!15808 r!7292)))) b!5502961))

(declare-fun e!3403825 () Bool)

(assert (=> b!5501937 (= tp!1513842 e!3403825)))

(declare-fun b!5502965 () Bool)

(declare-fun tp!1514149 () Bool)

(declare-fun tp!1514150 () Bool)

(assert (=> b!5502965 (= e!3403825 (and tp!1514149 tp!1514150))))

(declare-fun b!5502962 () Bool)

(assert (=> b!5502962 (= e!3403825 tp_is_empty!40211)))

(declare-fun b!5502964 () Bool)

(declare-fun tp!1514148 () Bool)

(assert (=> b!5502964 (= e!3403825 tp!1514148)))

(declare-fun b!5502963 () Bool)

(declare-fun tp!1514147 () Bool)

(declare-fun tp!1514151 () Bool)

(assert (=> b!5502963 (= e!3403825 (and tp!1514147 tp!1514151))))

(assert (= (and b!5501937 ((_ is ElementMatch!15479) (reg!15808 (regOne!31470 r!7292)))) b!5502962))

(assert (= (and b!5501937 ((_ is Concat!24324) (reg!15808 (regOne!31470 r!7292)))) b!5502963))

(assert (= (and b!5501937 ((_ is Star!15479) (reg!15808 (regOne!31470 r!7292)))) b!5502964))

(assert (= (and b!5501937 ((_ is Union!15479) (reg!15808 (regOne!31470 r!7292)))) b!5502965))

(declare-fun e!3403826 () Bool)

(assert (=> b!5501936 (= tp!1513841 e!3403826)))

(declare-fun b!5502969 () Bool)

(declare-fun tp!1514154 () Bool)

(declare-fun tp!1514155 () Bool)

(assert (=> b!5502969 (= e!3403826 (and tp!1514154 tp!1514155))))

(declare-fun b!5502966 () Bool)

(assert (=> b!5502966 (= e!3403826 tp_is_empty!40211)))

(declare-fun b!5502968 () Bool)

(declare-fun tp!1514153 () Bool)

(assert (=> b!5502968 (= e!3403826 tp!1514153)))

(declare-fun b!5502967 () Bool)

(declare-fun tp!1514152 () Bool)

(declare-fun tp!1514156 () Bool)

(assert (=> b!5502967 (= e!3403826 (and tp!1514152 tp!1514156))))

(assert (= (and b!5501936 ((_ is ElementMatch!15479) (regOne!31470 (regOne!31470 r!7292)))) b!5502966))

(assert (= (and b!5501936 ((_ is Concat!24324) (regOne!31470 (regOne!31470 r!7292)))) b!5502967))

(assert (= (and b!5501936 ((_ is Star!15479) (regOne!31470 (regOne!31470 r!7292)))) b!5502968))

(assert (= (and b!5501936 ((_ is Union!15479) (regOne!31470 (regOne!31470 r!7292)))) b!5502969))

(declare-fun e!3403827 () Bool)

(assert (=> b!5501936 (= tp!1513845 e!3403827)))

(declare-fun b!5502973 () Bool)

(declare-fun tp!1514159 () Bool)

(declare-fun tp!1514160 () Bool)

(assert (=> b!5502973 (= e!3403827 (and tp!1514159 tp!1514160))))

(declare-fun b!5502970 () Bool)

(assert (=> b!5502970 (= e!3403827 tp_is_empty!40211)))

(declare-fun b!5502972 () Bool)

(declare-fun tp!1514158 () Bool)

(assert (=> b!5502972 (= e!3403827 tp!1514158)))

(declare-fun b!5502971 () Bool)

(declare-fun tp!1514157 () Bool)

(declare-fun tp!1514161 () Bool)

(assert (=> b!5502971 (= e!3403827 (and tp!1514157 tp!1514161))))

(assert (= (and b!5501936 ((_ is ElementMatch!15479) (regTwo!31470 (regOne!31470 r!7292)))) b!5502970))

(assert (= (and b!5501936 ((_ is Concat!24324) (regTwo!31470 (regOne!31470 r!7292)))) b!5502971))

(assert (= (and b!5501936 ((_ is Star!15479) (regTwo!31470 (regOne!31470 r!7292)))) b!5502972))

(assert (= (and b!5501936 ((_ is Union!15479) (regTwo!31470 (regOne!31470 r!7292)))) b!5502973))

(declare-fun e!3403828 () Bool)

(assert (=> b!5501945 (= tp!1513852 e!3403828)))

(declare-fun b!5502977 () Bool)

(declare-fun tp!1514164 () Bool)

(declare-fun tp!1514165 () Bool)

(assert (=> b!5502977 (= e!3403828 (and tp!1514164 tp!1514165))))

(declare-fun b!5502974 () Bool)

(assert (=> b!5502974 (= e!3403828 tp_is_empty!40211)))

(declare-fun b!5502976 () Bool)

(declare-fun tp!1514163 () Bool)

(assert (=> b!5502976 (= e!3403828 tp!1514163)))

(declare-fun b!5502975 () Bool)

(declare-fun tp!1514162 () Bool)

(declare-fun tp!1514166 () Bool)

(assert (=> b!5502975 (= e!3403828 (and tp!1514162 tp!1514166))))

(assert (= (and b!5501945 ((_ is ElementMatch!15479) (reg!15808 (reg!15808 r!7292)))) b!5502974))

(assert (= (and b!5501945 ((_ is Concat!24324) (reg!15808 (reg!15808 r!7292)))) b!5502975))

(assert (= (and b!5501945 ((_ is Star!15479) (reg!15808 (reg!15808 r!7292)))) b!5502976))

(assert (= (and b!5501945 ((_ is Union!15479) (reg!15808 (reg!15808 r!7292)))) b!5502977))

(declare-fun e!3403829 () Bool)

(assert (=> b!5501944 (= tp!1513851 e!3403829)))

(declare-fun b!5502981 () Bool)

(declare-fun tp!1514169 () Bool)

(declare-fun tp!1514170 () Bool)

(assert (=> b!5502981 (= e!3403829 (and tp!1514169 tp!1514170))))

(declare-fun b!5502978 () Bool)

(assert (=> b!5502978 (= e!3403829 tp_is_empty!40211)))

(declare-fun b!5502980 () Bool)

(declare-fun tp!1514168 () Bool)

(assert (=> b!5502980 (= e!3403829 tp!1514168)))

(declare-fun b!5502979 () Bool)

(declare-fun tp!1514167 () Bool)

(declare-fun tp!1514171 () Bool)

(assert (=> b!5502979 (= e!3403829 (and tp!1514167 tp!1514171))))

(assert (= (and b!5501944 ((_ is ElementMatch!15479) (regOne!31470 (reg!15808 r!7292)))) b!5502978))

(assert (= (and b!5501944 ((_ is Concat!24324) (regOne!31470 (reg!15808 r!7292)))) b!5502979))

(assert (= (and b!5501944 ((_ is Star!15479) (regOne!31470 (reg!15808 r!7292)))) b!5502980))

(assert (= (and b!5501944 ((_ is Union!15479) (regOne!31470 (reg!15808 r!7292)))) b!5502981))

(declare-fun e!3403830 () Bool)

(assert (=> b!5501944 (= tp!1513855 e!3403830)))

(declare-fun b!5502985 () Bool)

(declare-fun tp!1514174 () Bool)

(declare-fun tp!1514175 () Bool)

(assert (=> b!5502985 (= e!3403830 (and tp!1514174 tp!1514175))))

(declare-fun b!5502982 () Bool)

(assert (=> b!5502982 (= e!3403830 tp_is_empty!40211)))

(declare-fun b!5502984 () Bool)

(declare-fun tp!1514173 () Bool)

(assert (=> b!5502984 (= e!3403830 tp!1514173)))

(declare-fun b!5502983 () Bool)

(declare-fun tp!1514172 () Bool)

(declare-fun tp!1514176 () Bool)

(assert (=> b!5502983 (= e!3403830 (and tp!1514172 tp!1514176))))

(assert (= (and b!5501944 ((_ is ElementMatch!15479) (regTwo!31470 (reg!15808 r!7292)))) b!5502982))

(assert (= (and b!5501944 ((_ is Concat!24324) (regTwo!31470 (reg!15808 r!7292)))) b!5502983))

(assert (= (and b!5501944 ((_ is Star!15479) (regTwo!31470 (reg!15808 r!7292)))) b!5502984))

(assert (= (and b!5501944 ((_ is Union!15479) (regTwo!31470 (reg!15808 r!7292)))) b!5502985))

(declare-fun e!3403831 () Bool)

(assert (=> b!5501929 (= tp!1513836 e!3403831)))

(declare-fun b!5502989 () Bool)

(declare-fun tp!1514179 () Bool)

(declare-fun tp!1514180 () Bool)

(assert (=> b!5502989 (= e!3403831 (and tp!1514179 tp!1514180))))

(declare-fun b!5502986 () Bool)

(assert (=> b!5502986 (= e!3403831 tp_is_empty!40211)))

(declare-fun b!5502988 () Bool)

(declare-fun tp!1514178 () Bool)

(assert (=> b!5502988 (= e!3403831 tp!1514178)))

(declare-fun b!5502987 () Bool)

(declare-fun tp!1514177 () Bool)

(declare-fun tp!1514181 () Bool)

(assert (=> b!5502987 (= e!3403831 (and tp!1514177 tp!1514181))))

(assert (= (and b!5501929 ((_ is ElementMatch!15479) (h!69060 (exprs!5363 (h!69061 zl!343))))) b!5502986))

(assert (= (and b!5501929 ((_ is Concat!24324) (h!69060 (exprs!5363 (h!69061 zl!343))))) b!5502987))

(assert (= (and b!5501929 ((_ is Star!15479) (h!69060 (exprs!5363 (h!69061 zl!343))))) b!5502988))

(assert (= (and b!5501929 ((_ is Union!15479) (h!69060 (exprs!5363 (h!69061 zl!343))))) b!5502989))

(declare-fun b!5502990 () Bool)

(declare-fun e!3403832 () Bool)

(declare-fun tp!1514182 () Bool)

(declare-fun tp!1514183 () Bool)

(assert (=> b!5502990 (= e!3403832 (and tp!1514182 tp!1514183))))

(assert (=> b!5501929 (= tp!1513837 e!3403832)))

(assert (= (and b!5501929 ((_ is Cons!62612) (t!375973 (exprs!5363 (h!69061 zl!343))))) b!5502990))

(declare-fun b_lambda!208699 () Bool)

(assert (= b_lambda!208691 (or b!5501156 b_lambda!208699)))

(assert (=> d!1744265 d!1743881))

(declare-fun b_lambda!208701 () Bool)

(assert (= b_lambda!208683 (or d!1743739 b_lambda!208701)))

(declare-fun bs!1269260 () Bool)

(declare-fun d!1744329 () Bool)

(assert (= bs!1269260 (and d!1744329 d!1743739)))

(assert (=> bs!1269260 (= (dynLambda!24470 lambda!294540 (h!69060 lt!2243714)) (validRegex!7215 (h!69060 lt!2243714)))))

(declare-fun m!6510640 () Bool)

(assert (=> bs!1269260 m!6510640))

(assert (=> b!5502573 d!1744329))

(declare-fun b_lambda!208703 () Bool)

(assert (= b_lambda!208695 (or d!1743731 b_lambda!208703)))

(declare-fun bs!1269261 () Bool)

(declare-fun d!1744331 () Bool)

(assert (= bs!1269261 (and d!1744331 d!1743731)))

(assert (=> bs!1269261 (= (dynLambda!24470 lambda!294533 (h!69060 (unfocusZipperList!907 zl!343))) (validRegex!7215 (h!69060 (unfocusZipperList!907 zl!343))))))

(declare-fun m!6510642 () Bool)

(assert (=> bs!1269261 m!6510642))

(assert (=> b!5502861 d!1744331))

(declare-fun b_lambda!208705 () Bool)

(assert (= b_lambda!208693 (or d!1743841 b_lambda!208705)))

(declare-fun bs!1269262 () Bool)

(declare-fun d!1744333 () Bool)

(assert (= bs!1269262 (and d!1744333 d!1743841)))

(assert (=> bs!1269262 (= (dynLambda!24470 lambda!294553 (h!69060 (exprs!5363 (h!69061 zl!343)))) (validRegex!7215 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(declare-fun m!6510644 () Bool)

(assert (=> bs!1269262 m!6510644))

(assert (=> b!5502777 d!1744333))

(declare-fun b_lambda!208707 () Bool)

(assert (= b_lambda!208687 (or d!1743853 b_lambda!208707)))

(declare-fun bs!1269263 () Bool)

(declare-fun d!1744335 () Bool)

(assert (= bs!1269263 (and d!1744335 d!1743853)))

(assert (=> bs!1269263 (= (dynLambda!24470 lambda!294557 (h!69060 (exprs!5363 (h!69061 zl!343)))) (validRegex!7215 (h!69060 (exprs!5363 (h!69061 zl!343)))))))

(assert (=> bs!1269263 m!6510644))

(assert (=> b!5502721 d!1744335))

(declare-fun b_lambda!208709 () Bool)

(assert (= b_lambda!208685 (or b!5501156 b_lambda!208709)))

(assert (=> d!1744177 d!1743877))

(declare-fun b_lambda!208711 () Bool)

(assert (= b_lambda!208697 (or d!1743851 b_lambda!208711)))

(declare-fun bs!1269264 () Bool)

(declare-fun d!1744337 () Bool)

(assert (= bs!1269264 (and d!1744337 d!1743851)))

(assert (=> bs!1269264 (= (dynLambda!24470 lambda!294556 (h!69060 (exprs!5363 setElem!36469))) (validRegex!7215 (h!69060 (exprs!5363 setElem!36469))))))

(declare-fun m!6510646 () Bool)

(assert (=> bs!1269264 m!6510646))

(assert (=> b!5502867 d!1744337))

(declare-fun b_lambda!208713 () Bool)

(assert (= b_lambda!208689 (or b!5501156 b_lambda!208713)))

(assert (=> d!1744263 d!1743879))

(check-sat (not bm!406415) (not b!5502586) (not b!5502645) (not b!5502628) (not b!5502620) (not b!5502633) (not d!1744311) (not b!5502937) (not b!5502474) (not bm!406403) (not d!1744143) (not b!5502943) (not bm!406394) (not bs!1269261) (not d!1744229) (not d!1744249) (not b!5502556) (not b_lambda!208701) (not b!5502580) (not b!5502604) (not d!1744163) (not b!5502906) (not b!5502605) (not bm!406432) (not b!5502505) (not b!5502784) (not d!1744195) (not d!1744155) (not bm!406369) (not b!5502723) (not b!5502682) (not d!1744203) (not b!5502989) (not b!5502868) (not b!5502722) (not b!5502926) (not bm!406326) (not b!5502914) (not b!5502892) (not d!1744323) (not b!5502485) (not b!5502508) (not d!1744145) (not setNonEmpty!36485) (not b!5502944) (not bs!1269263) (not b!5502935) (not bm!406381) (not b!5502885) (not b!5502834) (not b!5502950) (not b!5502676) (not b!5502900) (not b!5502888) (not d!1744259) (not b!5502878) (not d!1744301) (not b!5502634) (not b!5502720) (not d!1744247) (not b!5502717) (not b!5502841) (not bm!406371) (not b!5502659) (not bm!406339) (not d!1744245) (not b!5502972) (not b!5502768) (not b!5502821) (not d!1744281) (not bm!406386) (not d!1744287) (not b!5502913) (not b!5502921) (not b!5502912) (not d!1744211) (not b!5502924) (not b!5502886) (not d!1744263) (not bm!406395) (not b!5502756) (not d!1744251) (not b!5502637) (not b!5502795) (not b!5502889) (not b!5502496) (not bm!406400) (not d!1744117) (not b!5502692) (not b!5502920) (not bm!406325) (not b!5502621) (not b!5502671) (not b_lambda!208709) (not b_lambda!208707) (not b!5502946) (not d!1744177) (not b!5502877) (not b!5502917) (not b!5502932) (not bm!406393) (not b!5502930) (not b!5502511) (not b!5502651) (not b!5502732) (not b!5502909) (not b!5502916) (not b!5502976) (not d!1744307) (not b!5502959) (not b!5502945) (not setNonEmpty!36486) (not b!5502977) (not bm!406382) (not b!5502595) (not b!5502898) (not bm!406431) (not b!5502625) (not b!5502480) (not bm!406365) (not bm!406366) (not bm!406320) (not bm!406359) (not d!1744277) (not b!5502778) (not bm!406348) (not bs!1269260) (not b!5502630) (not b!5502890) (not bm!406402) (not d!1744305) (not bm!406327) (not b!5502884) (not b!5502818) (not b!5502908) (not bs!1269264) (not bm!406372) (not d!1744223) (not b!5502876) (not d!1744315) (not b!5502865) (not d!1744227) (not b!5502563) (not bm!406368) (not b!5502905) (not bm!406416) (not bm!406380) (not b!5502699) (not b!5502864) (not d!1744111) (not b!5502923) (not bm!406373) (not b!5502513) (not b!5502940) (not b_lambda!208699) (not d!1744201) (not b!5502614) (not b!5502975) (not bs!1269262) (not b!5502750) (not bm!406383) (not b!5502708) (not bm!406377) (not bm!406385) (not b!5502851) (not bm!406389) (not d!1744283) (not d!1744327) (not bm!406367) (not bm!406362) (not b!5502636) (not bm!406406) (not b_lambda!208711) (not b!5502956) (not b!5502498) (not b!5502661) (not d!1744141) (not b!5502957) (not bm!406412) (not b!5502627) (not b!5502512) (not b!5502679) (not b!5502910) (not b!5502988) (not bm!406330) (not d!1744115) (not b!5502672) (not b!5502990) (not b!5502960) (not b!5502762) (not b!5502922) (not bm!406401) (not b!5502880) (not b!5502951) (not b!5502748) (not bm!406422) (not d!1744289) (not b!5502894) (not b!5502987) (not bm!406392) (not b!5502815) (not d!1744189) (not d!1744303) (not b!5502968) (not b!5502526) (not bm!406409) (not b!5502980) (not bm!406354) (not bm!406418) (not d!1744213) (not b!5502733) (not b!5502984) (not b!5502739) (not setNonEmpty!36487) (not b!5502881) (not bm!406324) (not b_lambda!208713) (not b!5502983) (not b!5502961) (not setNonEmpty!36484) (not b!5502658) (not bm!406355) (not b!5502902) (not b!5502523) (not bm!406384) (not bm!406417) (not bm!406421) (not bm!406358) (not b!5502866) (not bm!406426) (not b!5502955) (not b!5502814) (not d!1744313) (not d!1744253) (not b!5502928) (not b!5502936) (not b!5502931) (not bm!406353) (not bm!406410) (not b!5502874) (not b!5502710) (not d!1744165) (not bm!406433) (not b!5502813) (not bm!406420) (not b!5502947) (not bm!406356) (not bm!406328) (not bm!406347) (not b!5502933) (not b!5502803) (not b!5502967) (not d!1744151) (not b!5502515) (not b!5502941) (not b!5502673) (not b!5502516) (not b!5502660) (not b!5502882) (not b!5502801) (not b!5502949) (not b!5502852) (not d!1744191) (not b!5502964) (not d!1744317) (not d!1744183) (not b!5502802) (not b!5502863) (not b!5502971) (not b_lambda!208645) (not b!5502635) (not b!5502904) (not b!5502624) (not d!1744125) (not b!5502952) (not b_lambda!208647) (not b!5502824) (not b_lambda!208703) (not b_lambda!208649) (not b!5502642) (not b!5502985) (not bm!406340) (not b!5502897) (not d!1744199) (not b!5502487) (not b!5502623) (not b!5502520) (not b!5502632) (not b!5502973) (not b!5502650) (not bm!406323) (not b!5502927) (not b!5502965) (not b!5502969) (not bm!406429) (not bm!406397) (not bm!406329) (not d!1744265) (not b!5502963) (not b!5502848) (not b!5502953) (not b!5502862) (not d!1744217) (not b!5502608) (not b!5502918) (not b!5502896) (not b!5502939) (not b!5502979) tp_is_empty!40211 (not b!5502901) (not b!5502981) (not b!5502517) (not bm!406344) (not b!5502574) (not b!5502893) (not b!5502639) (not b_lambda!208705) (not bm!406350) (not d!1744147) (not bm!406430) (not d!1744157))
(check-sat)
