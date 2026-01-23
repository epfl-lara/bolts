; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!575466 () Bool)

(assert start!575466)

(declare-fun b!5510758 () Bool)

(assert (=> b!5510758 true))

(assert (=> b!5510758 true))

(declare-fun lambda!295218 () Int)

(declare-fun lambda!295217 () Int)

(assert (=> b!5510758 (not (= lambda!295218 lambda!295217))))

(assert (=> b!5510758 true))

(assert (=> b!5510758 true))

(declare-fun b!5510766 () Bool)

(assert (=> b!5510766 true))

(declare-fun b!5510742 () Bool)

(declare-fun res!2348281 () Bool)

(declare-fun e!3408022 () Bool)

(assert (=> b!5510742 (=> res!2348281 e!3408022)))

(declare-datatypes ((C!31264 0))(
  ( (C!31265 (val!25334 Int)) )
))
(declare-datatypes ((Regex!15497 0))(
  ( (ElementMatch!15497 (c!963007 C!31264)) (Concat!24342 (regOne!31506 Regex!15497) (regTwo!31506 Regex!15497)) (EmptyExpr!15497) (Star!15497 (reg!15826 Regex!15497)) (EmptyLang!15497) (Union!15497 (regOne!31507 Regex!15497) (regTwo!31507 Regex!15497)) )
))
(declare-fun r!7292 () Regex!15497)

(declare-datatypes ((List!62790 0))(
  ( (Nil!62666) (Cons!62666 (h!69114 Regex!15497) (t!376035 List!62790)) )
))
(declare-datatypes ((Context!9762 0))(
  ( (Context!9763 (exprs!5381 List!62790)) )
))
(declare-datatypes ((List!62791 0))(
  ( (Nil!62667) (Cons!62667 (h!69115 Context!9762) (t!376036 List!62791)) )
))
(declare-fun zl!343 () List!62791)

(declare-fun generalisedConcat!1112 (List!62790) Regex!15497)

(assert (=> b!5510742 (= res!2348281 (not (= r!7292 (generalisedConcat!1112 (exprs!5381 (h!69115 zl!343))))))))

(declare-fun b!5510743 () Bool)

(declare-fun res!2348290 () Bool)

(assert (=> b!5510743 (=> res!2348290 e!3408022)))

(get-info :version)

(assert (=> b!5510743 (= res!2348290 (not ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343)))))))

(declare-fun b!5510744 () Bool)

(declare-fun e!3408028 () Bool)

(declare-fun e!3408023 () Bool)

(assert (=> b!5510744 (= e!3408028 e!3408023)))

(declare-fun res!2348284 () Bool)

(assert (=> b!5510744 (=> res!2348284 e!3408023)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2245167 () (InoxSet Context!9762))

(declare-fun lt!2245165 () (InoxSet Context!9762))

(assert (=> b!5510744 (= res!2348284 (not (= lt!2245167 lt!2245165)))))

(declare-fun lt!2245154 () (InoxSet Context!9762))

(declare-fun lt!2245166 () (InoxSet Context!9762))

(assert (=> b!5510744 (= lt!2245165 ((_ map or) lt!2245154 lt!2245166))))

(declare-fun b!5510745 () Bool)

(declare-fun res!2348292 () Bool)

(assert (=> b!5510745 (=> res!2348292 e!3408022)))

(declare-fun generalisedUnion!1360 (List!62790) Regex!15497)

(declare-fun unfocusZipperList!925 (List!62791) List!62790)

(assert (=> b!5510745 (= res!2348292 (not (= r!7292 (generalisedUnion!1360 (unfocusZipperList!925 zl!343)))))))

(declare-fun b!5510746 () Bool)

(declare-fun e!3408029 () Bool)

(declare-fun tp!1516267 () Bool)

(assert (=> b!5510746 (= e!3408029 tp!1516267)))

(declare-fun b!5510747 () Bool)

(declare-fun res!2348283 () Bool)

(declare-fun e!3408024 () Bool)

(assert (=> b!5510747 (=> (not res!2348283) (not e!3408024))))

(declare-fun z!1189 () (InoxSet Context!9762))

(declare-fun toList!9281 ((InoxSet Context!9762)) List!62791)

(assert (=> b!5510747 (= res!2348283 (= (toList!9281 z!1189) zl!343))))

(declare-fun b!5510748 () Bool)

(declare-fun e!3408026 () Bool)

(declare-datatypes ((List!62792 0))(
  ( (Nil!62668) (Cons!62668 (h!69116 C!31264) (t!376037 List!62792)) )
))
(declare-fun s!2326 () List!62792)

(declare-fun matchZipper!1655 ((InoxSet Context!9762) List!62792) Bool)

(assert (=> b!5510748 (= e!3408026 (matchZipper!1655 lt!2245166 (t!376037 s!2326)))))

(declare-fun b!5510749 () Bool)

(declare-fun res!2348288 () Bool)

(assert (=> b!5510749 (=> res!2348288 e!3408022)))

(declare-fun isEmpty!34445 (List!62791) Bool)

(assert (=> b!5510749 (= res!2348288 (not (isEmpty!34445 (t!376036 zl!343))))))

(declare-fun b!5510750 () Bool)

(declare-fun res!2348291 () Bool)

(declare-fun e!3408025 () Bool)

(assert (=> b!5510750 (=> res!2348291 e!3408025)))

(declare-fun isEmpty!34446 (List!62790) Bool)

(assert (=> b!5510750 (= res!2348291 (not (isEmpty!34446 (t!376035 (exprs!5381 (h!69115 zl!343))))))))

(declare-fun b!5510751 () Bool)

(declare-fun e!3408032 () Bool)

(declare-fun tp!1516259 () Bool)

(assert (=> b!5510751 (= e!3408032 tp!1516259)))

(declare-fun b!5510752 () Bool)

(declare-fun tp!1516266 () Bool)

(declare-fun tp!1516261 () Bool)

(assert (=> b!5510752 (= e!3408032 (and tp!1516266 tp!1516261))))

(declare-fun b!5510753 () Bool)

(declare-fun lt!2245146 () (InoxSet Context!9762))

(declare-fun lt!2245158 () (InoxSet Context!9762))

(declare-fun e!3408034 () Bool)

(assert (=> b!5510753 (= e!3408034 (= lt!2245158 ((_ map or) lt!2245154 lt!2245146)))))

(declare-fun b!5510754 () Bool)

(declare-fun e!3408021 () Bool)

(assert (=> b!5510754 (= e!3408021 e!3408028)))

(declare-fun res!2348293 () Bool)

(assert (=> b!5510754 (=> res!2348293 e!3408028)))

(declare-fun nullable!5531 (Regex!15497) Bool)

(assert (=> b!5510754 (= res!2348293 (not (nullable!5531 (regOne!31506 r!7292))))))

(declare-fun lt!2245148 () Context!9762)

(declare-fun derivationStepZipperDown!839 (Regex!15497 Context!9762 C!31264) (InoxSet Context!9762))

(assert (=> b!5510754 (= lt!2245166 (derivationStepZipperDown!839 (regTwo!31506 r!7292) lt!2245148 (h!69116 s!2326)))))

(declare-fun lt!2245147 () Context!9762)

(assert (=> b!5510754 (= lt!2245154 (derivationStepZipperDown!839 (regOne!31506 r!7292) lt!2245147 (h!69116 s!2326)))))

(declare-fun lambda!295219 () Int)

(declare-fun lt!2245169 () (InoxSet Context!9762))

(declare-fun flatMap!1110 ((InoxSet Context!9762) Int) (InoxSet Context!9762))

(declare-fun derivationStepZipperUp!765 (Context!9762 C!31264) (InoxSet Context!9762))

(assert (=> b!5510754 (= (flatMap!1110 lt!2245169 lambda!295219) (derivationStepZipperUp!765 lt!2245147 (h!69116 s!2326)))))

(declare-datatypes ((Unit!155454 0))(
  ( (Unit!155455) )
))
(declare-fun lt!2245144 () Unit!155454)

(declare-fun lemmaFlatMapOnSingletonSet!642 ((InoxSet Context!9762) Context!9762 Int) Unit!155454)

(assert (=> b!5510754 (= lt!2245144 (lemmaFlatMapOnSingletonSet!642 lt!2245169 lt!2245147 lambda!295219))))

(declare-fun lt!2245156 () (InoxSet Context!9762))

(declare-fun lt!2245157 () Context!9762)

(assert (=> b!5510754 (= (flatMap!1110 lt!2245156 lambda!295219) (derivationStepZipperUp!765 lt!2245157 (h!69116 s!2326)))))

(declare-fun lt!2245150 () Unit!155454)

(assert (=> b!5510754 (= lt!2245150 (lemmaFlatMapOnSingletonSet!642 lt!2245156 lt!2245157 lambda!295219))))

(assert (=> b!5510754 (= lt!2245146 (derivationStepZipperUp!765 lt!2245147 (h!69116 s!2326)))))

(assert (=> b!5510754 (= lt!2245158 (derivationStepZipperUp!765 lt!2245157 (h!69116 s!2326)))))

(assert (=> b!5510754 (= lt!2245169 (store ((as const (Array Context!9762 Bool)) false) lt!2245147 true))))

(declare-fun lt!2245153 () List!62790)

(assert (=> b!5510754 (= lt!2245147 (Context!9763 lt!2245153))))

(assert (=> b!5510754 (= lt!2245156 (store ((as const (Array Context!9762 Bool)) false) lt!2245157 true))))

(assert (=> b!5510754 (= lt!2245157 (Context!9763 (Cons!62666 (regOne!31506 r!7292) lt!2245153)))))

(assert (=> b!5510754 (= lt!2245153 (Cons!62666 (regTwo!31506 r!7292) Nil!62666))))

(declare-fun setNonEmpty!36597 () Bool)

(declare-fun e!3408027 () Bool)

(declare-fun setRes!36597 () Bool)

(declare-fun tp!1516263 () Bool)

(declare-fun setElem!36597 () Context!9762)

(declare-fun inv!81989 (Context!9762) Bool)

(assert (=> setNonEmpty!36597 (= setRes!36597 (and tp!1516263 (inv!81989 setElem!36597) e!3408027))))

(declare-fun setRest!36597 () (InoxSet Context!9762))

(assert (=> setNonEmpty!36597 (= z!1189 ((_ map or) (store ((as const (Array Context!9762 Bool)) false) setElem!36597 true) setRest!36597))))

(declare-fun b!5510755 () Bool)

(declare-fun tp!1516260 () Bool)

(declare-fun tp!1516264 () Bool)

(assert (=> b!5510755 (= e!3408032 (and tp!1516260 tp!1516264))))

(declare-fun b!5510756 () Bool)

(declare-fun e!3408031 () Bool)

(assert (=> b!5510756 (= e!3408025 e!3408031)))

(declare-fun res!2348286 () Bool)

(assert (=> b!5510756 (=> res!2348286 e!3408031)))

(declare-fun lt!2245160 () (InoxSet Context!9762))

(declare-fun lt!2245161 () (InoxSet Context!9762))

(assert (=> b!5510756 (= res!2348286 (not (= lt!2245160 lt!2245161)))))

(assert (=> b!5510756 (= lt!2245161 (derivationStepZipperDown!839 r!7292 lt!2245148 (h!69116 s!2326)))))

(assert (=> b!5510756 (= lt!2245148 (Context!9763 Nil!62666))))

(assert (=> b!5510756 (= lt!2245160 (derivationStepZipperUp!765 (Context!9763 (Cons!62666 r!7292 Nil!62666)) (h!69116 s!2326)))))

(declare-fun derivationStepZipper!1602 ((InoxSet Context!9762) C!31264) (InoxSet Context!9762))

(assert (=> b!5510756 (= lt!2245167 (derivationStepZipper!1602 z!1189 (h!69116 s!2326)))))

(declare-fun setIsEmpty!36597 () Bool)

(assert (=> setIsEmpty!36597 setRes!36597))

(declare-fun b!5510757 () Bool)

(assert (=> b!5510757 (= e!3408023 e!3408034)))

(declare-fun res!2348278 () Bool)

(assert (=> b!5510757 (=> res!2348278 e!3408034)))

(declare-fun lt!2245145 () Bool)

(assert (=> b!5510757 (= res!2348278 (not (= lt!2245145 (matchZipper!1655 lt!2245167 (t!376037 s!2326)))))))

(declare-fun lt!2245168 () Bool)

(assert (=> b!5510757 (= lt!2245168 lt!2245145)))

(assert (=> b!5510757 (= lt!2245145 e!3408026)))

(declare-fun res!2348285 () Bool)

(assert (=> b!5510757 (=> res!2348285 e!3408026)))

(declare-fun lt!2245164 () Bool)

(assert (=> b!5510757 (= res!2348285 lt!2245164)))

(assert (=> b!5510757 (= lt!2245168 (matchZipper!1655 lt!2245165 (t!376037 s!2326)))))

(assert (=> b!5510757 (= lt!2245164 (matchZipper!1655 lt!2245154 (t!376037 s!2326)))))

(declare-fun lt!2245159 () Unit!155454)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!544 ((InoxSet Context!9762) (InoxSet Context!9762) List!62792) Unit!155454)

(assert (=> b!5510757 (= lt!2245159 (lemmaZipperConcatMatchesSameAsBothZippers!544 lt!2245154 lt!2245166 (t!376037 s!2326)))))

(assert (=> b!5510758 (= e!3408022 e!3408025)))

(declare-fun res!2348287 () Bool)

(assert (=> b!5510758 (=> res!2348287 e!3408025)))

(declare-fun lt!2245163 () Bool)

(declare-fun lt!2245151 () Bool)

(assert (=> b!5510758 (= res!2348287 (or (not (= lt!2245163 lt!2245151)) ((_ is Nil!62668) s!2326)))))

(declare-fun Exists!2597 (Int) Bool)

(assert (=> b!5510758 (= (Exists!2597 lambda!295217) (Exists!2597 lambda!295218))))

(declare-fun lt!2245152 () Unit!155454)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1226 (Regex!15497 Regex!15497 List!62792) Unit!155454)

(assert (=> b!5510758 (= lt!2245152 (lemmaExistCutMatchRandMatchRSpecEquivalent!1226 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326))))

(assert (=> b!5510758 (= lt!2245151 (Exists!2597 lambda!295217))))

(declare-datatypes ((tuple2!65188 0))(
  ( (tuple2!65189 (_1!35897 List!62792) (_2!35897 List!62792)) )
))
(declare-datatypes ((Option!15506 0))(
  ( (None!15505) (Some!15505 (v!51540 tuple2!65188)) )
))
(declare-fun isDefined!12209 (Option!15506) Bool)

(declare-fun findConcatSeparation!1920 (Regex!15497 Regex!15497 List!62792 List!62792 List!62792) Option!15506)

(assert (=> b!5510758 (= lt!2245151 (isDefined!12209 (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) Nil!62668 s!2326 s!2326)))))

(declare-fun lt!2245162 () Unit!155454)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1684 (Regex!15497 Regex!15497 List!62792) Unit!155454)

(assert (=> b!5510758 (= lt!2245162 (lemmaFindConcatSeparationEquivalentToExists!1684 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326))))

(declare-fun b!5510759 () Bool)

(declare-fun e!3408033 () Bool)

(declare-fun tp!1516262 () Bool)

(assert (=> b!5510759 (= e!3408033 (and (inv!81989 (h!69115 zl!343)) e!3408029 tp!1516262))))

(declare-fun b!5510760 () Bool)

(declare-fun tp_is_empty!40247 () Bool)

(assert (=> b!5510760 (= e!3408032 tp_is_empty!40247)))

(declare-fun b!5510761 () Bool)

(declare-fun res!2348294 () Bool)

(assert (=> b!5510761 (=> (not res!2348294) (not e!3408024))))

(declare-fun unfocusZipper!1239 (List!62791) Regex!15497)

(assert (=> b!5510761 (= res!2348294 (= r!7292 (unfocusZipper!1239 zl!343)))))

(declare-fun b!5510762 () Bool)

(declare-fun res!2348289 () Bool)

(assert (=> b!5510762 (=> res!2348289 e!3408022)))

(assert (=> b!5510762 (= res!2348289 (or ((_ is EmptyExpr!15497) r!7292) ((_ is EmptyLang!15497) r!7292) ((_ is ElementMatch!15497) r!7292) ((_ is Union!15497) r!7292) (not ((_ is Concat!24342) r!7292))))))

(declare-fun b!5510763 () Bool)

(assert (=> b!5510763 (= e!3408024 (not e!3408022))))

(declare-fun res!2348279 () Bool)

(assert (=> b!5510763 (=> res!2348279 e!3408022)))

(assert (=> b!5510763 (= res!2348279 (not ((_ is Cons!62667) zl!343)))))

(declare-fun matchRSpec!2600 (Regex!15497 List!62792) Bool)

(assert (=> b!5510763 (= lt!2245163 (matchRSpec!2600 r!7292 s!2326))))

(declare-fun matchR!7682 (Regex!15497 List!62792) Bool)

(assert (=> b!5510763 (= lt!2245163 (matchR!7682 r!7292 s!2326))))

(declare-fun lt!2245149 () Unit!155454)

(declare-fun mainMatchTheorem!2600 (Regex!15497 List!62792) Unit!155454)

(assert (=> b!5510763 (= lt!2245149 (mainMatchTheorem!2600 r!7292 s!2326))))

(declare-fun b!5510764 () Bool)

(declare-fun e!3408030 () Bool)

(declare-fun tp!1516265 () Bool)

(assert (=> b!5510764 (= e!3408030 (and tp_is_empty!40247 tp!1516265))))

(declare-fun res!2348280 () Bool)

(assert (=> start!575466 (=> (not res!2348280) (not e!3408024))))

(declare-fun validRegex!7233 (Regex!15497) Bool)

(assert (=> start!575466 (= res!2348280 (validRegex!7233 r!7292))))

(assert (=> start!575466 e!3408024))

(assert (=> start!575466 e!3408032))

(declare-fun condSetEmpty!36597 () Bool)

(assert (=> start!575466 (= condSetEmpty!36597 (= z!1189 ((as const (Array Context!9762 Bool)) false)))))

(assert (=> start!575466 setRes!36597))

(assert (=> start!575466 e!3408033))

(assert (=> start!575466 e!3408030))

(declare-fun b!5510765 () Bool)

(declare-fun tp!1516258 () Bool)

(assert (=> b!5510765 (= e!3408027 tp!1516258)))

(assert (=> b!5510766 (= e!3408031 e!3408021)))

(declare-fun res!2348282 () Bool)

(assert (=> b!5510766 (=> res!2348282 e!3408021)))

(assert (=> b!5510766 (= res!2348282 (not (= lt!2245167 lt!2245161)))))

(assert (=> b!5510766 (= (flatMap!1110 z!1189 lambda!295219) (derivationStepZipperUp!765 (h!69115 zl!343) (h!69116 s!2326)))))

(declare-fun lt!2245155 () Unit!155454)

(assert (=> b!5510766 (= lt!2245155 (lemmaFlatMapOnSingletonSet!642 z!1189 (h!69115 zl!343) lambda!295219))))

(assert (= (and start!575466 res!2348280) b!5510747))

(assert (= (and b!5510747 res!2348283) b!5510761))

(assert (= (and b!5510761 res!2348294) b!5510763))

(assert (= (and b!5510763 (not res!2348279)) b!5510749))

(assert (= (and b!5510749 (not res!2348288)) b!5510742))

(assert (= (and b!5510742 (not res!2348281)) b!5510743))

(assert (= (and b!5510743 (not res!2348290)) b!5510745))

(assert (= (and b!5510745 (not res!2348292)) b!5510762))

(assert (= (and b!5510762 (not res!2348289)) b!5510758))

(assert (= (and b!5510758 (not res!2348287)) b!5510750))

(assert (= (and b!5510750 (not res!2348291)) b!5510756))

(assert (= (and b!5510756 (not res!2348286)) b!5510766))

(assert (= (and b!5510766 (not res!2348282)) b!5510754))

(assert (= (and b!5510754 (not res!2348293)) b!5510744))

(assert (= (and b!5510744 (not res!2348284)) b!5510757))

(assert (= (and b!5510757 (not res!2348285)) b!5510748))

(assert (= (and b!5510757 (not res!2348278)) b!5510753))

(assert (= (and start!575466 ((_ is ElementMatch!15497) r!7292)) b!5510760))

(assert (= (and start!575466 ((_ is Concat!24342) r!7292)) b!5510752))

(assert (= (and start!575466 ((_ is Star!15497) r!7292)) b!5510751))

(assert (= (and start!575466 ((_ is Union!15497) r!7292)) b!5510755))

(assert (= (and start!575466 condSetEmpty!36597) setIsEmpty!36597))

(assert (= (and start!575466 (not condSetEmpty!36597)) setNonEmpty!36597))

(assert (= setNonEmpty!36597 b!5510765))

(assert (= b!5510759 b!5510746))

(assert (= (and start!575466 ((_ is Cons!62667) zl!343)) b!5510759))

(assert (= (and start!575466 ((_ is Cons!62668) s!2326)) b!5510764))

(declare-fun m!6515846 () Bool)

(assert (=> b!5510757 m!6515846))

(declare-fun m!6515848 () Bool)

(assert (=> b!5510757 m!6515848))

(declare-fun m!6515850 () Bool)

(assert (=> b!5510757 m!6515850))

(declare-fun m!6515852 () Bool)

(assert (=> b!5510757 m!6515852))

(declare-fun m!6515854 () Bool)

(assert (=> b!5510745 m!6515854))

(assert (=> b!5510745 m!6515854))

(declare-fun m!6515856 () Bool)

(assert (=> b!5510745 m!6515856))

(declare-fun m!6515858 () Bool)

(assert (=> b!5510748 m!6515858))

(declare-fun m!6515860 () Bool)

(assert (=> setNonEmpty!36597 m!6515860))

(declare-fun m!6515862 () Bool)

(assert (=> b!5510742 m!6515862))

(declare-fun m!6515864 () Bool)

(assert (=> b!5510766 m!6515864))

(declare-fun m!6515866 () Bool)

(assert (=> b!5510766 m!6515866))

(declare-fun m!6515868 () Bool)

(assert (=> b!5510766 m!6515868))

(declare-fun m!6515870 () Bool)

(assert (=> b!5510758 m!6515870))

(declare-fun m!6515872 () Bool)

(assert (=> b!5510758 m!6515872))

(declare-fun m!6515874 () Bool)

(assert (=> b!5510758 m!6515874))

(assert (=> b!5510758 m!6515870))

(assert (=> b!5510758 m!6515872))

(declare-fun m!6515876 () Bool)

(assert (=> b!5510758 m!6515876))

(declare-fun m!6515878 () Bool)

(assert (=> b!5510758 m!6515878))

(declare-fun m!6515880 () Bool)

(assert (=> b!5510758 m!6515880))

(declare-fun m!6515882 () Bool)

(assert (=> b!5510754 m!6515882))

(declare-fun m!6515884 () Bool)

(assert (=> b!5510754 m!6515884))

(declare-fun m!6515886 () Bool)

(assert (=> b!5510754 m!6515886))

(declare-fun m!6515888 () Bool)

(assert (=> b!5510754 m!6515888))

(declare-fun m!6515890 () Bool)

(assert (=> b!5510754 m!6515890))

(declare-fun m!6515892 () Bool)

(assert (=> b!5510754 m!6515892))

(declare-fun m!6515894 () Bool)

(assert (=> b!5510754 m!6515894))

(declare-fun m!6515896 () Bool)

(assert (=> b!5510754 m!6515896))

(declare-fun m!6515898 () Bool)

(assert (=> b!5510754 m!6515898))

(declare-fun m!6515900 () Bool)

(assert (=> b!5510754 m!6515900))

(declare-fun m!6515902 () Bool)

(assert (=> b!5510754 m!6515902))

(declare-fun m!6515904 () Bool)

(assert (=> b!5510763 m!6515904))

(declare-fun m!6515906 () Bool)

(assert (=> b!5510763 m!6515906))

(declare-fun m!6515908 () Bool)

(assert (=> b!5510763 m!6515908))

(declare-fun m!6515910 () Bool)

(assert (=> b!5510756 m!6515910))

(declare-fun m!6515912 () Bool)

(assert (=> b!5510756 m!6515912))

(declare-fun m!6515914 () Bool)

(assert (=> b!5510756 m!6515914))

(declare-fun m!6515916 () Bool)

(assert (=> b!5510747 m!6515916))

(declare-fun m!6515918 () Bool)

(assert (=> b!5510750 m!6515918))

(declare-fun m!6515920 () Bool)

(assert (=> b!5510761 m!6515920))

(declare-fun m!6515922 () Bool)

(assert (=> b!5510749 m!6515922))

(declare-fun m!6515924 () Bool)

(assert (=> b!5510759 m!6515924))

(declare-fun m!6515926 () Bool)

(assert (=> start!575466 m!6515926))

(check-sat (not b!5510750) (not b!5510749) (not b!5510754) (not b!5510764) (not b!5510752) (not b!5510755) (not b!5510746) (not b!5510759) (not b!5510757) tp_is_empty!40247 (not b!5510751) (not b!5510745) (not b!5510758) (not b!5510765) (not b!5510742) (not b!5510748) (not b!5510756) (not b!5510763) (not b!5510747) (not b!5510761) (not setNonEmpty!36597) (not b!5510766) (not start!575466))
(check-sat)
(get-model)

(declare-fun d!1746096 () Bool)

(assert (=> d!1746096 (= (isEmpty!34446 (t!376035 (exprs!5381 (h!69115 zl!343)))) ((_ is Nil!62666) (t!376035 (exprs!5381 (h!69115 zl!343)))))))

(assert (=> b!5510750 d!1746096))

(declare-fun d!1746098 () Bool)

(declare-fun lambda!295228 () Int)

(declare-fun forall!14675 (List!62790 Int) Bool)

(assert (=> d!1746098 (= (inv!81989 (h!69115 zl!343)) (forall!14675 (exprs!5381 (h!69115 zl!343)) lambda!295228))))

(declare-fun bs!1270439 () Bool)

(assert (= bs!1270439 d!1746098))

(declare-fun m!6515954 () Bool)

(assert (=> bs!1270439 m!6515954))

(assert (=> b!5510759 d!1746098))

(declare-fun d!1746106 () Bool)

(declare-fun choose!41878 (Int) Bool)

(assert (=> d!1746106 (= (Exists!2597 lambda!295217) (choose!41878 lambda!295217))))

(declare-fun bs!1270440 () Bool)

(assert (= bs!1270440 d!1746106))

(declare-fun m!6515956 () Bool)

(assert (=> bs!1270440 m!6515956))

(assert (=> b!5510758 d!1746106))

(declare-fun b!5510883 () Bool)

(declare-fun res!2348341 () Bool)

(declare-fun e!3408100 () Bool)

(assert (=> b!5510883 (=> (not res!2348341) (not e!3408100))))

(declare-fun lt!2245194 () Option!15506)

(declare-fun get!21565 (Option!15506) tuple2!65188)

(assert (=> b!5510883 (= res!2348341 (matchR!7682 (regOne!31506 r!7292) (_1!35897 (get!21565 lt!2245194))))))

(declare-fun d!1746108 () Bool)

(declare-fun e!3408099 () Bool)

(assert (=> d!1746108 e!3408099))

(declare-fun res!2348342 () Bool)

(assert (=> d!1746108 (=> res!2348342 e!3408099)))

(assert (=> d!1746108 (= res!2348342 e!3408100)))

(declare-fun res!2348344 () Bool)

(assert (=> d!1746108 (=> (not res!2348344) (not e!3408100))))

(assert (=> d!1746108 (= res!2348344 (isDefined!12209 lt!2245194))))

(declare-fun e!3408096 () Option!15506)

(assert (=> d!1746108 (= lt!2245194 e!3408096)))

(declare-fun c!963042 () Bool)

(declare-fun e!3408097 () Bool)

(assert (=> d!1746108 (= c!963042 e!3408097)))

(declare-fun res!2348345 () Bool)

(assert (=> d!1746108 (=> (not res!2348345) (not e!3408097))))

(assert (=> d!1746108 (= res!2348345 (matchR!7682 (regOne!31506 r!7292) Nil!62668))))

(assert (=> d!1746108 (validRegex!7233 (regOne!31506 r!7292))))

(assert (=> d!1746108 (= (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) Nil!62668 s!2326 s!2326) lt!2245194)))

(declare-fun b!5510884 () Bool)

(declare-fun ++!13749 (List!62792 List!62792) List!62792)

(assert (=> b!5510884 (= e!3408100 (= (++!13749 (_1!35897 (get!21565 lt!2245194)) (_2!35897 (get!21565 lt!2245194))) s!2326))))

(declare-fun b!5510885 () Bool)

(declare-fun lt!2245195 () Unit!155454)

(declare-fun lt!2245196 () Unit!155454)

(assert (=> b!5510885 (= lt!2245195 lt!2245196)))

(assert (=> b!5510885 (= (++!13749 (++!13749 Nil!62668 (Cons!62668 (h!69116 s!2326) Nil!62668)) (t!376037 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1918 (List!62792 C!31264 List!62792 List!62792) Unit!155454)

(assert (=> b!5510885 (= lt!2245196 (lemmaMoveElementToOtherListKeepsConcatEq!1918 Nil!62668 (h!69116 s!2326) (t!376037 s!2326) s!2326))))

(declare-fun e!3408098 () Option!15506)

(assert (=> b!5510885 (= e!3408098 (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) (++!13749 Nil!62668 (Cons!62668 (h!69116 s!2326) Nil!62668)) (t!376037 s!2326) s!2326))))

(declare-fun b!5510886 () Bool)

(assert (=> b!5510886 (= e!3408098 None!15505)))

(declare-fun b!5510887 () Bool)

(assert (=> b!5510887 (= e!3408096 e!3408098)))

(declare-fun c!963041 () Bool)

(assert (=> b!5510887 (= c!963041 ((_ is Nil!62668) s!2326))))

(declare-fun b!5510888 () Bool)

(assert (=> b!5510888 (= e!3408096 (Some!15505 (tuple2!65189 Nil!62668 s!2326)))))

(declare-fun b!5510889 () Bool)

(declare-fun res!2348343 () Bool)

(assert (=> b!5510889 (=> (not res!2348343) (not e!3408100))))

(assert (=> b!5510889 (= res!2348343 (matchR!7682 (regTwo!31506 r!7292) (_2!35897 (get!21565 lt!2245194))))))

(declare-fun b!5510890 () Bool)

(assert (=> b!5510890 (= e!3408099 (not (isDefined!12209 lt!2245194)))))

(declare-fun b!5510891 () Bool)

(assert (=> b!5510891 (= e!3408097 (matchR!7682 (regTwo!31506 r!7292) s!2326))))

(assert (= (and d!1746108 res!2348345) b!5510891))

(assert (= (and d!1746108 c!963042) b!5510888))

(assert (= (and d!1746108 (not c!963042)) b!5510887))

(assert (= (and b!5510887 c!963041) b!5510886))

(assert (= (and b!5510887 (not c!963041)) b!5510885))

(assert (= (and d!1746108 res!2348344) b!5510883))

(assert (= (and b!5510883 res!2348341) b!5510889))

(assert (= (and b!5510889 res!2348343) b!5510884))

(assert (= (and d!1746108 (not res!2348342)) b!5510890))

(declare-fun m!6515996 () Bool)

(assert (=> b!5510885 m!6515996))

(assert (=> b!5510885 m!6515996))

(declare-fun m!6515998 () Bool)

(assert (=> b!5510885 m!6515998))

(declare-fun m!6516000 () Bool)

(assert (=> b!5510885 m!6516000))

(assert (=> b!5510885 m!6515996))

(declare-fun m!6516002 () Bool)

(assert (=> b!5510885 m!6516002))

(declare-fun m!6516004 () Bool)

(assert (=> b!5510889 m!6516004))

(declare-fun m!6516006 () Bool)

(assert (=> b!5510889 m!6516006))

(assert (=> b!5510884 m!6516004))

(declare-fun m!6516008 () Bool)

(assert (=> b!5510884 m!6516008))

(declare-fun m!6516010 () Bool)

(assert (=> b!5510891 m!6516010))

(declare-fun m!6516012 () Bool)

(assert (=> b!5510890 m!6516012))

(assert (=> d!1746108 m!6516012))

(declare-fun m!6516014 () Bool)

(assert (=> d!1746108 m!6516014))

(declare-fun m!6516016 () Bool)

(assert (=> d!1746108 m!6516016))

(assert (=> b!5510883 m!6516004))

(declare-fun m!6516018 () Bool)

(assert (=> b!5510883 m!6516018))

(assert (=> b!5510758 d!1746108))

(declare-fun bs!1270459 () Bool)

(declare-fun d!1746120 () Bool)

(assert (= bs!1270459 (and d!1746120 b!5510758)))

(declare-fun lambda!295249 () Int)

(assert (=> bs!1270459 (= lambda!295249 lambda!295217)))

(assert (=> bs!1270459 (not (= lambda!295249 lambda!295218))))

(assert (=> d!1746120 true))

(assert (=> d!1746120 true))

(assert (=> d!1746120 true))

(declare-fun lambda!295250 () Int)

(assert (=> bs!1270459 (not (= lambda!295250 lambda!295217))))

(assert (=> bs!1270459 (= lambda!295250 lambda!295218)))

(declare-fun bs!1270463 () Bool)

(assert (= bs!1270463 d!1746120))

(assert (=> bs!1270463 (not (= lambda!295250 lambda!295249))))

(assert (=> d!1746120 true))

(assert (=> d!1746120 true))

(assert (=> d!1746120 true))

(assert (=> d!1746120 (= (Exists!2597 lambda!295249) (Exists!2597 lambda!295250))))

(declare-fun lt!2245211 () Unit!155454)

(declare-fun choose!41879 (Regex!15497 Regex!15497 List!62792) Unit!155454)

(assert (=> d!1746120 (= lt!2245211 (choose!41879 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326))))

(assert (=> d!1746120 (validRegex!7233 (regOne!31506 r!7292))))

(assert (=> d!1746120 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1226 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326) lt!2245211)))

(declare-fun m!6516116 () Bool)

(assert (=> bs!1270463 m!6516116))

(declare-fun m!6516118 () Bool)

(assert (=> bs!1270463 m!6516118))

(declare-fun m!6516120 () Bool)

(assert (=> bs!1270463 m!6516120))

(assert (=> bs!1270463 m!6516016))

(assert (=> b!5510758 d!1746120))

(declare-fun d!1746156 () Bool)

(declare-fun isEmpty!34449 (Option!15506) Bool)

(assert (=> d!1746156 (= (isDefined!12209 (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) Nil!62668 s!2326 s!2326)) (not (isEmpty!34449 (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) Nil!62668 s!2326 s!2326))))))

(declare-fun bs!1270465 () Bool)

(assert (= bs!1270465 d!1746156))

(assert (=> bs!1270465 m!6515872))

(declare-fun m!6516122 () Bool)

(assert (=> bs!1270465 m!6516122))

(assert (=> b!5510758 d!1746156))

(declare-fun d!1746158 () Bool)

(assert (=> d!1746158 (= (Exists!2597 lambda!295218) (choose!41878 lambda!295218))))

(declare-fun bs!1270466 () Bool)

(assert (= bs!1270466 d!1746158))

(declare-fun m!6516124 () Bool)

(assert (=> bs!1270466 m!6516124))

(assert (=> b!5510758 d!1746158))

(declare-fun bs!1270467 () Bool)

(declare-fun d!1746160 () Bool)

(assert (= bs!1270467 (and d!1746160 b!5510758)))

(declare-fun lambda!295255 () Int)

(assert (=> bs!1270467 (= lambda!295255 lambda!295217)))

(assert (=> bs!1270467 (not (= lambda!295255 lambda!295218))))

(declare-fun bs!1270472 () Bool)

(assert (= bs!1270472 (and d!1746160 d!1746120)))

(assert (=> bs!1270472 (= lambda!295255 lambda!295249)))

(assert (=> bs!1270472 (not (= lambda!295255 lambda!295250))))

(assert (=> d!1746160 true))

(assert (=> d!1746160 true))

(assert (=> d!1746160 true))

(assert (=> d!1746160 (= (isDefined!12209 (findConcatSeparation!1920 (regOne!31506 r!7292) (regTwo!31506 r!7292) Nil!62668 s!2326 s!2326)) (Exists!2597 lambda!295255))))

(declare-fun lt!2245221 () Unit!155454)

(declare-fun choose!41880 (Regex!15497 Regex!15497 List!62792) Unit!155454)

(assert (=> d!1746160 (= lt!2245221 (choose!41880 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326))))

(assert (=> d!1746160 (validRegex!7233 (regOne!31506 r!7292))))

(assert (=> d!1746160 (= (lemmaFindConcatSeparationEquivalentToExists!1684 (regOne!31506 r!7292) (regTwo!31506 r!7292) s!2326) lt!2245221)))

(declare-fun bs!1270473 () Bool)

(assert (= bs!1270473 d!1746160))

(assert (=> bs!1270473 m!6515872))

(assert (=> bs!1270473 m!6515874))

(assert (=> bs!1270473 m!6515872))

(assert (=> bs!1270473 m!6516016))

(declare-fun m!6516172 () Bool)

(assert (=> bs!1270473 m!6516172))

(declare-fun m!6516174 () Bool)

(assert (=> bs!1270473 m!6516174))

(assert (=> b!5510758 d!1746160))

(declare-fun d!1746176 () Bool)

(assert (=> d!1746176 (= (isEmpty!34445 (t!376036 zl!343)) ((_ is Nil!62667) (t!376036 zl!343)))))

(assert (=> b!5510749 d!1746176))

(declare-fun b!5511099 () Bool)

(declare-fun e!3408230 () Bool)

(declare-fun call!407485 () Bool)

(assert (=> b!5511099 (= e!3408230 call!407485)))

(declare-fun b!5511100 () Bool)

(declare-fun res!2348420 () Bool)

(declare-fun e!3408232 () Bool)

(assert (=> b!5511100 (=> (not res!2348420) (not e!3408232))))

(declare-fun call!407483 () Bool)

(assert (=> b!5511100 (= res!2348420 call!407483)))

(declare-fun e!3408233 () Bool)

(assert (=> b!5511100 (= e!3408233 e!3408232)))

(declare-fun b!5511101 () Bool)

(declare-fun e!3408234 () Bool)

(declare-fun e!3408229 () Bool)

(assert (=> b!5511101 (= e!3408234 e!3408229)))

(declare-fun res!2348421 () Bool)

(assert (=> b!5511101 (=> (not res!2348421) (not e!3408229))))

(assert (=> b!5511101 (= res!2348421 call!407483)))

(declare-fun b!5511102 () Bool)

(declare-fun e!3408231 () Bool)

(assert (=> b!5511102 (= e!3408231 e!3408233)))

(declare-fun c!963110 () Bool)

(assert (=> b!5511102 (= c!963110 ((_ is Union!15497) r!7292))))

(declare-fun b!5511103 () Bool)

(assert (=> b!5511103 (= e!3408231 e!3408230)))

(declare-fun res!2348419 () Bool)

(assert (=> b!5511103 (= res!2348419 (not (nullable!5531 (reg!15826 r!7292))))))

(assert (=> b!5511103 (=> (not res!2348419) (not e!3408230))))

(declare-fun bm!407478 () Bool)

(declare-fun call!407484 () Bool)

(assert (=> bm!407478 (= call!407484 call!407485)))

(declare-fun b!5511104 () Bool)

(declare-fun res!2348423 () Bool)

(assert (=> b!5511104 (=> res!2348423 e!3408234)))

(assert (=> b!5511104 (= res!2348423 (not ((_ is Concat!24342) r!7292)))))

(assert (=> b!5511104 (= e!3408233 e!3408234)))

(declare-fun b!5511105 () Bool)

(assert (=> b!5511105 (= e!3408229 call!407484)))

(declare-fun d!1746178 () Bool)

(declare-fun res!2348422 () Bool)

(declare-fun e!3408235 () Bool)

(assert (=> d!1746178 (=> res!2348422 e!3408235)))

(assert (=> d!1746178 (= res!2348422 ((_ is ElementMatch!15497) r!7292))))

(assert (=> d!1746178 (= (validRegex!7233 r!7292) e!3408235)))

(declare-fun b!5511106 () Bool)

(assert (=> b!5511106 (= e!3408235 e!3408231)))

(declare-fun c!963111 () Bool)

(assert (=> b!5511106 (= c!963111 ((_ is Star!15497) r!7292))))

(declare-fun b!5511107 () Bool)

(assert (=> b!5511107 (= e!3408232 call!407484)))

(declare-fun bm!407479 () Bool)

(assert (=> bm!407479 (= call!407485 (validRegex!7233 (ite c!963111 (reg!15826 r!7292) (ite c!963110 (regTwo!31507 r!7292) (regTwo!31506 r!7292)))))))

(declare-fun bm!407480 () Bool)

(assert (=> bm!407480 (= call!407483 (validRegex!7233 (ite c!963110 (regOne!31507 r!7292) (regOne!31506 r!7292))))))

(assert (= (and d!1746178 (not res!2348422)) b!5511106))

(assert (= (and b!5511106 c!963111) b!5511103))

(assert (= (and b!5511106 (not c!963111)) b!5511102))

(assert (= (and b!5511103 res!2348419) b!5511099))

(assert (= (and b!5511102 c!963110) b!5511100))

(assert (= (and b!5511102 (not c!963110)) b!5511104))

(assert (= (and b!5511100 res!2348420) b!5511107))

(assert (= (and b!5511104 (not res!2348423)) b!5511101))

(assert (= (and b!5511101 res!2348421) b!5511105))

(assert (= (or b!5511107 b!5511105) bm!407478))

(assert (= (or b!5511100 b!5511101) bm!407480))

(assert (= (or b!5511099 bm!407478) bm!407479))

(declare-fun m!6516176 () Bool)

(assert (=> b!5511103 m!6516176))

(declare-fun m!6516178 () Bool)

(assert (=> bm!407479 m!6516178))

(declare-fun m!6516180 () Bool)

(assert (=> bm!407480 m!6516180))

(assert (=> start!575466 d!1746178))

(declare-fun d!1746180 () Bool)

(declare-fun c!963118 () Bool)

(declare-fun isEmpty!34450 (List!62792) Bool)

(assert (=> d!1746180 (= c!963118 (isEmpty!34450 (t!376037 s!2326)))))

(declare-fun e!3408245 () Bool)

(assert (=> d!1746180 (= (matchZipper!1655 lt!2245166 (t!376037 s!2326)) e!3408245)))

(declare-fun b!5511123 () Bool)

(declare-fun nullableZipper!1527 ((InoxSet Context!9762)) Bool)

(assert (=> b!5511123 (= e!3408245 (nullableZipper!1527 lt!2245166))))

(declare-fun b!5511124 () Bool)

(declare-fun head!11805 (List!62792) C!31264)

(declare-fun tail!10900 (List!62792) List!62792)

(assert (=> b!5511124 (= e!3408245 (matchZipper!1655 (derivationStepZipper!1602 lt!2245166 (head!11805 (t!376037 s!2326))) (tail!10900 (t!376037 s!2326))))))

(assert (= (and d!1746180 c!963118) b!5511123))

(assert (= (and d!1746180 (not c!963118)) b!5511124))

(declare-fun m!6516190 () Bool)

(assert (=> d!1746180 m!6516190))

(declare-fun m!6516192 () Bool)

(assert (=> b!5511123 m!6516192))

(declare-fun m!6516194 () Bool)

(assert (=> b!5511124 m!6516194))

(assert (=> b!5511124 m!6516194))

(declare-fun m!6516196 () Bool)

(assert (=> b!5511124 m!6516196))

(declare-fun m!6516198 () Bool)

(assert (=> b!5511124 m!6516198))

(assert (=> b!5511124 m!6516196))

(assert (=> b!5511124 m!6516198))

(declare-fun m!6516200 () Bool)

(assert (=> b!5511124 m!6516200))

(assert (=> b!5510748 d!1746180))

(declare-fun d!1746184 () Bool)

(declare-fun c!963119 () Bool)

(assert (=> d!1746184 (= c!963119 (isEmpty!34450 (t!376037 s!2326)))))

(declare-fun e!3408246 () Bool)

(assert (=> d!1746184 (= (matchZipper!1655 lt!2245167 (t!376037 s!2326)) e!3408246)))

(declare-fun b!5511128 () Bool)

(assert (=> b!5511128 (= e!3408246 (nullableZipper!1527 lt!2245167))))

(declare-fun b!5511130 () Bool)

(assert (=> b!5511130 (= e!3408246 (matchZipper!1655 (derivationStepZipper!1602 lt!2245167 (head!11805 (t!376037 s!2326))) (tail!10900 (t!376037 s!2326))))))

(assert (= (and d!1746184 c!963119) b!5511128))

(assert (= (and d!1746184 (not c!963119)) b!5511130))

(assert (=> d!1746184 m!6516190))

(declare-fun m!6516202 () Bool)

(assert (=> b!5511128 m!6516202))

(assert (=> b!5511130 m!6516194))

(assert (=> b!5511130 m!6516194))

(declare-fun m!6516204 () Bool)

(assert (=> b!5511130 m!6516204))

(assert (=> b!5511130 m!6516198))

(assert (=> b!5511130 m!6516204))

(assert (=> b!5511130 m!6516198))

(declare-fun m!6516206 () Bool)

(assert (=> b!5511130 m!6516206))

(assert (=> b!5510757 d!1746184))

(declare-fun d!1746186 () Bool)

(declare-fun c!963126 () Bool)

(assert (=> d!1746186 (= c!963126 (isEmpty!34450 (t!376037 s!2326)))))

(declare-fun e!3408257 () Bool)

(assert (=> d!1746186 (= (matchZipper!1655 lt!2245165 (t!376037 s!2326)) e!3408257)))

(declare-fun b!5511145 () Bool)

(assert (=> b!5511145 (= e!3408257 (nullableZipper!1527 lt!2245165))))

(declare-fun b!5511146 () Bool)

(assert (=> b!5511146 (= e!3408257 (matchZipper!1655 (derivationStepZipper!1602 lt!2245165 (head!11805 (t!376037 s!2326))) (tail!10900 (t!376037 s!2326))))))

(assert (= (and d!1746186 c!963126) b!5511145))

(assert (= (and d!1746186 (not c!963126)) b!5511146))

(assert (=> d!1746186 m!6516190))

(declare-fun m!6516208 () Bool)

(assert (=> b!5511145 m!6516208))

(assert (=> b!5511146 m!6516194))

(assert (=> b!5511146 m!6516194))

(declare-fun m!6516210 () Bool)

(assert (=> b!5511146 m!6516210))

(assert (=> b!5511146 m!6516198))

(assert (=> b!5511146 m!6516210))

(assert (=> b!5511146 m!6516198))

(declare-fun m!6516212 () Bool)

(assert (=> b!5511146 m!6516212))

(assert (=> b!5510757 d!1746186))

(declare-fun d!1746188 () Bool)

(declare-fun c!963127 () Bool)

(assert (=> d!1746188 (= c!963127 (isEmpty!34450 (t!376037 s!2326)))))

(declare-fun e!3408262 () Bool)

(assert (=> d!1746188 (= (matchZipper!1655 lt!2245154 (t!376037 s!2326)) e!3408262)))

(declare-fun b!5511157 () Bool)

(assert (=> b!5511157 (= e!3408262 (nullableZipper!1527 lt!2245154))))

(declare-fun b!5511158 () Bool)

(assert (=> b!5511158 (= e!3408262 (matchZipper!1655 (derivationStepZipper!1602 lt!2245154 (head!11805 (t!376037 s!2326))) (tail!10900 (t!376037 s!2326))))))

(assert (= (and d!1746188 c!963127) b!5511157))

(assert (= (and d!1746188 (not c!963127)) b!5511158))

(assert (=> d!1746188 m!6516190))

(declare-fun m!6516214 () Bool)

(assert (=> b!5511157 m!6516214))

(assert (=> b!5511158 m!6516194))

(assert (=> b!5511158 m!6516194))

(declare-fun m!6516216 () Bool)

(assert (=> b!5511158 m!6516216))

(assert (=> b!5511158 m!6516198))

(assert (=> b!5511158 m!6516216))

(assert (=> b!5511158 m!6516198))

(declare-fun m!6516218 () Bool)

(assert (=> b!5511158 m!6516218))

(assert (=> b!5510757 d!1746188))

(declare-fun e!3408272 () Bool)

(declare-fun d!1746190 () Bool)

(assert (=> d!1746190 (= (matchZipper!1655 ((_ map or) lt!2245154 lt!2245166) (t!376037 s!2326)) e!3408272)))

(declare-fun res!2348453 () Bool)

(assert (=> d!1746190 (=> res!2348453 e!3408272)))

(assert (=> d!1746190 (= res!2348453 (matchZipper!1655 lt!2245154 (t!376037 s!2326)))))

(declare-fun lt!2245230 () Unit!155454)

(declare-fun choose!41882 ((InoxSet Context!9762) (InoxSet Context!9762) List!62792) Unit!155454)

(assert (=> d!1746190 (= lt!2245230 (choose!41882 lt!2245154 lt!2245166 (t!376037 s!2326)))))

(assert (=> d!1746190 (= (lemmaZipperConcatMatchesSameAsBothZippers!544 lt!2245154 lt!2245166 (t!376037 s!2326)) lt!2245230)))

(declare-fun b!5511175 () Bool)

(assert (=> b!5511175 (= e!3408272 (matchZipper!1655 lt!2245166 (t!376037 s!2326)))))

(assert (= (and d!1746190 (not res!2348453)) b!5511175))

(declare-fun m!6516232 () Bool)

(assert (=> d!1746190 m!6516232))

(assert (=> d!1746190 m!6515850))

(declare-fun m!6516236 () Bool)

(assert (=> d!1746190 m!6516236))

(assert (=> b!5511175 m!6515858))

(assert (=> b!5510757 d!1746190))

(declare-fun bs!1270485 () Bool)

(declare-fun d!1746196 () Bool)

(assert (= bs!1270485 (and d!1746196 d!1746098)))

(declare-fun lambda!295265 () Int)

(assert (=> bs!1270485 (= lambda!295265 lambda!295228)))

(declare-fun b!5511250 () Bool)

(declare-fun e!3408313 () Regex!15497)

(declare-fun e!3408312 () Regex!15497)

(assert (=> b!5511250 (= e!3408313 e!3408312)))

(declare-fun c!963142 () Bool)

(assert (=> b!5511250 (= c!963142 ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343))))))

(declare-fun b!5511251 () Bool)

(declare-fun e!3408311 () Bool)

(assert (=> b!5511251 (= e!3408311 (isEmpty!34446 (t!376035 (exprs!5381 (h!69115 zl!343)))))))

(declare-fun b!5511253 () Bool)

(declare-fun e!3408309 () Bool)

(declare-fun lt!2245234 () Regex!15497)

(declare-fun isEmptyExpr!1072 (Regex!15497) Bool)

(assert (=> b!5511253 (= e!3408309 (isEmptyExpr!1072 lt!2245234))))

(declare-fun b!5511254 () Bool)

(declare-fun e!3408310 () Bool)

(assert (=> b!5511254 (= e!3408310 e!3408309)))

(declare-fun c!963141 () Bool)

(assert (=> b!5511254 (= c!963141 (isEmpty!34446 (exprs!5381 (h!69115 zl!343))))))

(declare-fun b!5511255 () Bool)

(declare-fun e!3408308 () Bool)

(declare-fun head!11806 (List!62790) Regex!15497)

(assert (=> b!5511255 (= e!3408308 (= lt!2245234 (head!11806 (exprs!5381 (h!69115 zl!343)))))))

(declare-fun b!5511256 () Bool)

(assert (=> b!5511256 (= e!3408313 (h!69114 (exprs!5381 (h!69115 zl!343))))))

(declare-fun b!5511257 () Bool)

(assert (=> b!5511257 (= e!3408312 EmptyExpr!15497)))

(assert (=> d!1746196 e!3408310))

(declare-fun res!2348459 () Bool)

(assert (=> d!1746196 (=> (not res!2348459) (not e!3408310))))

(assert (=> d!1746196 (= res!2348459 (validRegex!7233 lt!2245234))))

(assert (=> d!1746196 (= lt!2245234 e!3408313)))

(declare-fun c!963139 () Bool)

(assert (=> d!1746196 (= c!963139 e!3408311)))

(declare-fun res!2348458 () Bool)

(assert (=> d!1746196 (=> (not res!2348458) (not e!3408311))))

(assert (=> d!1746196 (= res!2348458 ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343))))))

(assert (=> d!1746196 (forall!14675 (exprs!5381 (h!69115 zl!343)) lambda!295265)))

(assert (=> d!1746196 (= (generalisedConcat!1112 (exprs!5381 (h!69115 zl!343))) lt!2245234)))

(declare-fun b!5511252 () Bool)

(assert (=> b!5511252 (= e!3408309 e!3408308)))

(declare-fun c!963140 () Bool)

(declare-fun tail!10901 (List!62790) List!62790)

(assert (=> b!5511252 (= c!963140 (isEmpty!34446 (tail!10901 (exprs!5381 (h!69115 zl!343)))))))

(declare-fun b!5511258 () Bool)

(declare-fun isConcat!595 (Regex!15497) Bool)

(assert (=> b!5511258 (= e!3408308 (isConcat!595 lt!2245234))))

(declare-fun b!5511259 () Bool)

(assert (=> b!5511259 (= e!3408312 (Concat!24342 (h!69114 (exprs!5381 (h!69115 zl!343))) (generalisedConcat!1112 (t!376035 (exprs!5381 (h!69115 zl!343))))))))

(assert (= (and d!1746196 res!2348458) b!5511251))

(assert (= (and d!1746196 c!963139) b!5511256))

(assert (= (and d!1746196 (not c!963139)) b!5511250))

(assert (= (and b!5511250 c!963142) b!5511259))

(assert (= (and b!5511250 (not c!963142)) b!5511257))

(assert (= (and d!1746196 res!2348459) b!5511254))

(assert (= (and b!5511254 c!963141) b!5511253))

(assert (= (and b!5511254 (not c!963141)) b!5511252))

(assert (= (and b!5511252 c!963140) b!5511255))

(assert (= (and b!5511252 (not c!963140)) b!5511258))

(declare-fun m!6516242 () Bool)

(assert (=> b!5511259 m!6516242))

(assert (=> b!5511251 m!6515918))

(declare-fun m!6516244 () Bool)

(assert (=> b!5511253 m!6516244))

(declare-fun m!6516246 () Bool)

(assert (=> b!5511254 m!6516246))

(declare-fun m!6516248 () Bool)

(assert (=> d!1746196 m!6516248))

(declare-fun m!6516250 () Bool)

(assert (=> d!1746196 m!6516250))

(declare-fun m!6516252 () Bool)

(assert (=> b!5511252 m!6516252))

(assert (=> b!5511252 m!6516252))

(declare-fun m!6516254 () Bool)

(assert (=> b!5511252 m!6516254))

(declare-fun m!6516256 () Bool)

(assert (=> b!5511255 m!6516256))

(declare-fun m!6516258 () Bool)

(assert (=> b!5511258 m!6516258))

(assert (=> b!5510742 d!1746196))

(declare-fun d!1746204 () Bool)

(declare-fun lt!2245237 () Regex!15497)

(assert (=> d!1746204 (validRegex!7233 lt!2245237)))

(assert (=> d!1746204 (= lt!2245237 (generalisedUnion!1360 (unfocusZipperList!925 zl!343)))))

(assert (=> d!1746204 (= (unfocusZipper!1239 zl!343) lt!2245237)))

(declare-fun bs!1270486 () Bool)

(assert (= bs!1270486 d!1746204))

(declare-fun m!6516260 () Bool)

(assert (=> bs!1270486 m!6516260))

(assert (=> bs!1270486 m!6515854))

(assert (=> bs!1270486 m!6515854))

(assert (=> bs!1270486 m!6515856))

(assert (=> b!5510761 d!1746204))

(declare-fun bs!1270487 () Bool)

(declare-fun d!1746206 () Bool)

(assert (= bs!1270487 (and d!1746206 d!1746098)))

(declare-fun lambda!295268 () Int)

(assert (=> bs!1270487 (= lambda!295268 lambda!295228)))

(declare-fun bs!1270488 () Bool)

(assert (= bs!1270488 (and d!1746206 d!1746196)))

(assert (=> bs!1270488 (= lambda!295268 lambda!295265)))

(declare-fun b!5511280 () Bool)

(declare-fun e!3408329 () Regex!15497)

(assert (=> b!5511280 (= e!3408329 (Union!15497 (h!69114 (unfocusZipperList!925 zl!343)) (generalisedUnion!1360 (t!376035 (unfocusZipperList!925 zl!343)))))))

(declare-fun b!5511281 () Bool)

(declare-fun e!3408328 () Bool)

(declare-fun lt!2245240 () Regex!15497)

(declare-fun isEmptyLang!1084 (Regex!15497) Bool)

(assert (=> b!5511281 (= e!3408328 (isEmptyLang!1084 lt!2245240))))

(declare-fun b!5511282 () Bool)

(declare-fun e!3408327 () Bool)

(assert (=> b!5511282 (= e!3408327 e!3408328)))

(declare-fun c!963151 () Bool)

(assert (=> b!5511282 (= c!963151 (isEmpty!34446 (unfocusZipperList!925 zl!343)))))

(declare-fun b!5511283 () Bool)

(declare-fun e!3408326 () Regex!15497)

(assert (=> b!5511283 (= e!3408326 e!3408329)))

(declare-fun c!963153 () Bool)

(assert (=> b!5511283 (= c!963153 ((_ is Cons!62666) (unfocusZipperList!925 zl!343)))))

(declare-fun b!5511284 () Bool)

(assert (=> b!5511284 (= e!3408326 (h!69114 (unfocusZipperList!925 zl!343)))))

(declare-fun b!5511285 () Bool)

(declare-fun e!3408330 () Bool)

(declare-fun isUnion!514 (Regex!15497) Bool)

(assert (=> b!5511285 (= e!3408330 (isUnion!514 lt!2245240))))

(declare-fun b!5511286 () Bool)

(assert (=> b!5511286 (= e!3408328 e!3408330)))

(declare-fun c!963152 () Bool)

(assert (=> b!5511286 (= c!963152 (isEmpty!34446 (tail!10901 (unfocusZipperList!925 zl!343))))))

(declare-fun b!5511287 () Bool)

(assert (=> b!5511287 (= e!3408330 (= lt!2245240 (head!11806 (unfocusZipperList!925 zl!343))))))

(assert (=> d!1746206 e!3408327))

(declare-fun res!2348465 () Bool)

(assert (=> d!1746206 (=> (not res!2348465) (not e!3408327))))

(assert (=> d!1746206 (= res!2348465 (validRegex!7233 lt!2245240))))

(assert (=> d!1746206 (= lt!2245240 e!3408326)))

(declare-fun c!963154 () Bool)

(declare-fun e!3408331 () Bool)

(assert (=> d!1746206 (= c!963154 e!3408331)))

(declare-fun res!2348464 () Bool)

(assert (=> d!1746206 (=> (not res!2348464) (not e!3408331))))

(assert (=> d!1746206 (= res!2348464 ((_ is Cons!62666) (unfocusZipperList!925 zl!343)))))

(assert (=> d!1746206 (forall!14675 (unfocusZipperList!925 zl!343) lambda!295268)))

(assert (=> d!1746206 (= (generalisedUnion!1360 (unfocusZipperList!925 zl!343)) lt!2245240)))

(declare-fun b!5511288 () Bool)

(assert (=> b!5511288 (= e!3408331 (isEmpty!34446 (t!376035 (unfocusZipperList!925 zl!343))))))

(declare-fun b!5511289 () Bool)

(assert (=> b!5511289 (= e!3408329 EmptyLang!15497)))

(assert (= (and d!1746206 res!2348464) b!5511288))

(assert (= (and d!1746206 c!963154) b!5511284))

(assert (= (and d!1746206 (not c!963154)) b!5511283))

(assert (= (and b!5511283 c!963153) b!5511280))

(assert (= (and b!5511283 (not c!963153)) b!5511289))

(assert (= (and d!1746206 res!2348465) b!5511282))

(assert (= (and b!5511282 c!963151) b!5511281))

(assert (= (and b!5511282 (not c!963151)) b!5511286))

(assert (= (and b!5511286 c!963152) b!5511287))

(assert (= (and b!5511286 (not c!963152)) b!5511285))

(assert (=> b!5511286 m!6515854))

(declare-fun m!6516262 () Bool)

(assert (=> b!5511286 m!6516262))

(assert (=> b!5511286 m!6516262))

(declare-fun m!6516264 () Bool)

(assert (=> b!5511286 m!6516264))

(declare-fun m!6516266 () Bool)

(assert (=> b!5511281 m!6516266))

(assert (=> b!5511282 m!6515854))

(declare-fun m!6516268 () Bool)

(assert (=> b!5511282 m!6516268))

(assert (=> b!5511287 m!6515854))

(declare-fun m!6516270 () Bool)

(assert (=> b!5511287 m!6516270))

(declare-fun m!6516272 () Bool)

(assert (=> b!5511280 m!6516272))

(declare-fun m!6516274 () Bool)

(assert (=> d!1746206 m!6516274))

(assert (=> d!1746206 m!6515854))

(declare-fun m!6516276 () Bool)

(assert (=> d!1746206 m!6516276))

(declare-fun m!6516278 () Bool)

(assert (=> b!5511285 m!6516278))

(declare-fun m!6516280 () Bool)

(assert (=> b!5511288 m!6516280))

(assert (=> b!5510745 d!1746206))

(declare-fun bs!1270489 () Bool)

(declare-fun d!1746208 () Bool)

(assert (= bs!1270489 (and d!1746208 d!1746098)))

(declare-fun lambda!295271 () Int)

(assert (=> bs!1270489 (= lambda!295271 lambda!295228)))

(declare-fun bs!1270490 () Bool)

(assert (= bs!1270490 (and d!1746208 d!1746196)))

(assert (=> bs!1270490 (= lambda!295271 lambda!295265)))

(declare-fun bs!1270491 () Bool)

(assert (= bs!1270491 (and d!1746208 d!1746206)))

(assert (=> bs!1270491 (= lambda!295271 lambda!295268)))

(declare-fun lt!2245243 () List!62790)

(assert (=> d!1746208 (forall!14675 lt!2245243 lambda!295271)))

(declare-fun e!3408334 () List!62790)

(assert (=> d!1746208 (= lt!2245243 e!3408334)))

(declare-fun c!963157 () Bool)

(assert (=> d!1746208 (= c!963157 ((_ is Cons!62667) zl!343))))

(assert (=> d!1746208 (= (unfocusZipperList!925 zl!343) lt!2245243)))

(declare-fun b!5511294 () Bool)

(assert (=> b!5511294 (= e!3408334 (Cons!62666 (generalisedConcat!1112 (exprs!5381 (h!69115 zl!343))) (unfocusZipperList!925 (t!376036 zl!343))))))

(declare-fun b!5511295 () Bool)

(assert (=> b!5511295 (= e!3408334 Nil!62666)))

(assert (= (and d!1746208 c!963157) b!5511294))

(assert (= (and d!1746208 (not c!963157)) b!5511295))

(declare-fun m!6516282 () Bool)

(assert (=> d!1746208 m!6516282))

(assert (=> b!5511294 m!6515862))

(declare-fun m!6516284 () Bool)

(assert (=> b!5511294 m!6516284))

(assert (=> b!5510745 d!1746208))

(declare-fun bs!1270492 () Bool)

(declare-fun d!1746210 () Bool)

(assert (= bs!1270492 (and d!1746210 d!1746098)))

(declare-fun lambda!295272 () Int)

(assert (=> bs!1270492 (= lambda!295272 lambda!295228)))

(declare-fun bs!1270493 () Bool)

(assert (= bs!1270493 (and d!1746210 d!1746196)))

(assert (=> bs!1270493 (= lambda!295272 lambda!295265)))

(declare-fun bs!1270494 () Bool)

(assert (= bs!1270494 (and d!1746210 d!1746206)))

(assert (=> bs!1270494 (= lambda!295272 lambda!295268)))

(declare-fun bs!1270495 () Bool)

(assert (= bs!1270495 (and d!1746210 d!1746208)))

(assert (=> bs!1270495 (= lambda!295272 lambda!295271)))

(assert (=> d!1746210 (= (inv!81989 setElem!36597) (forall!14675 (exprs!5381 setElem!36597) lambda!295272))))

(declare-fun bs!1270496 () Bool)

(assert (= bs!1270496 d!1746210))

(declare-fun m!6516286 () Bool)

(assert (=> bs!1270496 m!6516286))

(assert (=> setNonEmpty!36597 d!1746210))

(declare-fun d!1746212 () Bool)

(declare-fun dynLambda!24484 (Int Context!9762) (InoxSet Context!9762))

(assert (=> d!1746212 (= (flatMap!1110 lt!2245156 lambda!295219) (dynLambda!24484 lambda!295219 lt!2245157))))

(declare-fun lt!2245246 () Unit!155454)

(declare-fun choose!41883 ((InoxSet Context!9762) Context!9762 Int) Unit!155454)

(assert (=> d!1746212 (= lt!2245246 (choose!41883 lt!2245156 lt!2245157 lambda!295219))))

(assert (=> d!1746212 (= lt!2245156 (store ((as const (Array Context!9762 Bool)) false) lt!2245157 true))))

(assert (=> d!1746212 (= (lemmaFlatMapOnSingletonSet!642 lt!2245156 lt!2245157 lambda!295219) lt!2245246)))

(declare-fun b_lambda!208951 () Bool)

(assert (=> (not b_lambda!208951) (not d!1746212)))

(declare-fun bs!1270497 () Bool)

(assert (= bs!1270497 d!1746212))

(assert (=> bs!1270497 m!6515892))

(declare-fun m!6516288 () Bool)

(assert (=> bs!1270497 m!6516288))

(declare-fun m!6516290 () Bool)

(assert (=> bs!1270497 m!6516290))

(assert (=> bs!1270497 m!6515898))

(assert (=> b!5510754 d!1746212))

(declare-fun b!5511306 () Bool)

(declare-fun e!3408343 () Bool)

(assert (=> b!5511306 (= e!3408343 (nullable!5531 (h!69114 (exprs!5381 lt!2245147))))))

(declare-fun b!5511307 () Bool)

(declare-fun e!3408341 () (InoxSet Context!9762))

(declare-fun call!407493 () (InoxSet Context!9762))

(assert (=> b!5511307 (= e!3408341 ((_ map or) call!407493 (derivationStepZipperUp!765 (Context!9763 (t!376035 (exprs!5381 lt!2245147))) (h!69116 s!2326))))))

(declare-fun b!5511308 () Bool)

(declare-fun e!3408342 () (InoxSet Context!9762))

(assert (=> b!5511308 (= e!3408341 e!3408342)))

(declare-fun c!963162 () Bool)

(assert (=> b!5511308 (= c!963162 ((_ is Cons!62666) (exprs!5381 lt!2245147)))))

(declare-fun d!1746214 () Bool)

(declare-fun c!963163 () Bool)

(assert (=> d!1746214 (= c!963163 e!3408343)))

(declare-fun res!2348468 () Bool)

(assert (=> d!1746214 (=> (not res!2348468) (not e!3408343))))

(assert (=> d!1746214 (= res!2348468 ((_ is Cons!62666) (exprs!5381 lt!2245147)))))

(assert (=> d!1746214 (= (derivationStepZipperUp!765 lt!2245147 (h!69116 s!2326)) e!3408341)))

(declare-fun bm!407488 () Bool)

(assert (=> bm!407488 (= call!407493 (derivationStepZipperDown!839 (h!69114 (exprs!5381 lt!2245147)) (Context!9763 (t!376035 (exprs!5381 lt!2245147))) (h!69116 s!2326)))))

(declare-fun b!5511309 () Bool)

(assert (=> b!5511309 (= e!3408342 ((as const (Array Context!9762 Bool)) false))))

(declare-fun b!5511310 () Bool)

(assert (=> b!5511310 (= e!3408342 call!407493)))

(assert (= (and d!1746214 res!2348468) b!5511306))

(assert (= (and d!1746214 c!963163) b!5511307))

(assert (= (and d!1746214 (not c!963163)) b!5511308))

(assert (= (and b!5511308 c!963162) b!5511310))

(assert (= (and b!5511308 (not c!963162)) b!5511309))

(assert (= (or b!5511307 b!5511310) bm!407488))

(declare-fun m!6516292 () Bool)

(assert (=> b!5511306 m!6516292))

(declare-fun m!6516294 () Bool)

(assert (=> b!5511307 m!6516294))

(declare-fun m!6516296 () Bool)

(assert (=> bm!407488 m!6516296))

(assert (=> b!5510754 d!1746214))

(declare-fun d!1746216 () Bool)

(declare-fun nullableFct!1659 (Regex!15497) Bool)

(assert (=> d!1746216 (= (nullable!5531 (regOne!31506 r!7292)) (nullableFct!1659 (regOne!31506 r!7292)))))

(declare-fun bs!1270498 () Bool)

(assert (= bs!1270498 d!1746216))

(declare-fun m!6516298 () Bool)

(assert (=> bs!1270498 m!6516298))

(assert (=> b!5510754 d!1746216))

(declare-fun d!1746218 () Bool)

(assert (=> d!1746218 (= (flatMap!1110 lt!2245169 lambda!295219) (dynLambda!24484 lambda!295219 lt!2245147))))

(declare-fun lt!2245247 () Unit!155454)

(assert (=> d!1746218 (= lt!2245247 (choose!41883 lt!2245169 lt!2245147 lambda!295219))))

(assert (=> d!1746218 (= lt!2245169 (store ((as const (Array Context!9762 Bool)) false) lt!2245147 true))))

(assert (=> d!1746218 (= (lemmaFlatMapOnSingletonSet!642 lt!2245169 lt!2245147 lambda!295219) lt!2245247)))

(declare-fun b_lambda!208953 () Bool)

(assert (=> (not b_lambda!208953) (not d!1746218)))

(declare-fun bs!1270499 () Bool)

(assert (= bs!1270499 d!1746218))

(assert (=> bs!1270499 m!6515890))

(declare-fun m!6516300 () Bool)

(assert (=> bs!1270499 m!6516300))

(declare-fun m!6516302 () Bool)

(assert (=> bs!1270499 m!6516302))

(assert (=> bs!1270499 m!6515888))

(assert (=> b!5510754 d!1746218))

(declare-fun b!5511333 () Bool)

(declare-fun e!3408358 () Bool)

(assert (=> b!5511333 (= e!3408358 (nullable!5531 (regOne!31506 (regTwo!31506 r!7292))))))

(declare-fun b!5511334 () Bool)

(declare-fun e!3408357 () (InoxSet Context!9762))

(declare-fun call!407508 () (InoxSet Context!9762))

(declare-fun call!407507 () (InoxSet Context!9762))

(assert (=> b!5511334 (= e!3408357 ((_ map or) call!407508 call!407507))))

(declare-fun bm!407501 () Bool)

(declare-fun call!407511 () (InoxSet Context!9762))

(assert (=> bm!407501 (= call!407511 call!407508)))

(declare-fun bm!407502 () Bool)

(declare-fun call!407510 () List!62790)

(declare-fun call!407506 () List!62790)

(assert (=> bm!407502 (= call!407510 call!407506)))

(declare-fun b!5511335 () Bool)

(declare-fun e!3408359 () (InoxSet Context!9762))

(declare-fun call!407509 () (InoxSet Context!9762))

(assert (=> b!5511335 (= e!3408359 call!407509)))

(declare-fun b!5511336 () Bool)

(declare-fun e!3408360 () (InoxSet Context!9762))

(assert (=> b!5511336 (= e!3408360 e!3408359)))

(declare-fun c!963174 () Bool)

(assert (=> b!5511336 (= c!963174 ((_ is Concat!24342) (regTwo!31506 r!7292)))))

(declare-fun bm!407503 () Bool)

(assert (=> bm!407503 (= call!407509 call!407511)))

(declare-fun d!1746220 () Bool)

(declare-fun c!963178 () Bool)

(assert (=> d!1746220 (= c!963178 (and ((_ is ElementMatch!15497) (regTwo!31506 r!7292)) (= (c!963007 (regTwo!31506 r!7292)) (h!69116 s!2326))))))

(declare-fun e!3408361 () (InoxSet Context!9762))

(assert (=> d!1746220 (= (derivationStepZipperDown!839 (regTwo!31506 r!7292) lt!2245148 (h!69116 s!2326)) e!3408361)))

(declare-fun bm!407504 () Bool)

(declare-fun c!963175 () Bool)

(declare-fun $colon$colon!1580 (List!62790 Regex!15497) List!62790)

(assert (=> bm!407504 (= call!407506 ($colon$colon!1580 (exprs!5381 lt!2245148) (ite (or c!963175 c!963174) (regTwo!31506 (regTwo!31506 r!7292)) (regTwo!31506 r!7292))))))

(declare-fun b!5511337 () Bool)

(assert (=> b!5511337 (= e!3408360 ((_ map or) call!407507 call!407511))))

(declare-fun b!5511338 () Bool)

(assert (=> b!5511338 (= e!3408361 e!3408357)))

(declare-fun c!963176 () Bool)

(assert (=> b!5511338 (= c!963176 ((_ is Union!15497) (regTwo!31506 r!7292)))))

(declare-fun bm!407505 () Bool)

(assert (=> bm!407505 (= call!407507 (derivationStepZipperDown!839 (ite c!963176 (regTwo!31507 (regTwo!31506 r!7292)) (regOne!31506 (regTwo!31506 r!7292))) (ite c!963176 lt!2245148 (Context!9763 call!407506)) (h!69116 s!2326)))))

(declare-fun b!5511339 () Bool)

(declare-fun e!3408356 () (InoxSet Context!9762))

(assert (=> b!5511339 (= e!3408356 call!407509)))

(declare-fun b!5511340 () Bool)

(assert (=> b!5511340 (= e!3408361 (store ((as const (Array Context!9762 Bool)) false) lt!2245148 true))))

(declare-fun b!5511341 () Bool)

(assert (=> b!5511341 (= e!3408356 ((as const (Array Context!9762 Bool)) false))))

(declare-fun bm!407506 () Bool)

(assert (=> bm!407506 (= call!407508 (derivationStepZipperDown!839 (ite c!963176 (regOne!31507 (regTwo!31506 r!7292)) (ite c!963175 (regTwo!31506 (regTwo!31506 r!7292)) (ite c!963174 (regOne!31506 (regTwo!31506 r!7292)) (reg!15826 (regTwo!31506 r!7292))))) (ite (or c!963176 c!963175) lt!2245148 (Context!9763 call!407510)) (h!69116 s!2326)))))

(declare-fun b!5511342 () Bool)

(assert (=> b!5511342 (= c!963175 e!3408358)))

(declare-fun res!2348471 () Bool)

(assert (=> b!5511342 (=> (not res!2348471) (not e!3408358))))

(assert (=> b!5511342 (= res!2348471 ((_ is Concat!24342) (regTwo!31506 r!7292)))))

(assert (=> b!5511342 (= e!3408357 e!3408360)))

(declare-fun b!5511343 () Bool)

(declare-fun c!963177 () Bool)

(assert (=> b!5511343 (= c!963177 ((_ is Star!15497) (regTwo!31506 r!7292)))))

(assert (=> b!5511343 (= e!3408359 e!3408356)))

(assert (= (and d!1746220 c!963178) b!5511340))

(assert (= (and d!1746220 (not c!963178)) b!5511338))

(assert (= (and b!5511338 c!963176) b!5511334))

(assert (= (and b!5511338 (not c!963176)) b!5511342))

(assert (= (and b!5511342 res!2348471) b!5511333))

(assert (= (and b!5511342 c!963175) b!5511337))

(assert (= (and b!5511342 (not c!963175)) b!5511336))

(assert (= (and b!5511336 c!963174) b!5511335))

(assert (= (and b!5511336 (not c!963174)) b!5511343))

(assert (= (and b!5511343 c!963177) b!5511339))

(assert (= (and b!5511343 (not c!963177)) b!5511341))

(assert (= (or b!5511335 b!5511339) bm!407502))

(assert (= (or b!5511335 b!5511339) bm!407503))

(assert (= (or b!5511337 bm!407502) bm!407504))

(assert (= (or b!5511337 bm!407503) bm!407501))

(assert (= (or b!5511334 b!5511337) bm!407505))

(assert (= (or b!5511334 bm!407501) bm!407506))

(declare-fun m!6516304 () Bool)

(assert (=> bm!407504 m!6516304))

(declare-fun m!6516306 () Bool)

(assert (=> b!5511333 m!6516306))

(declare-fun m!6516308 () Bool)

(assert (=> bm!407506 m!6516308))

(declare-fun m!6516310 () Bool)

(assert (=> bm!407505 m!6516310))

(declare-fun m!6516312 () Bool)

(assert (=> b!5511340 m!6516312))

(assert (=> b!5510754 d!1746220))

(declare-fun d!1746222 () Bool)

(declare-fun choose!41885 ((InoxSet Context!9762) Int) (InoxSet Context!9762))

(assert (=> d!1746222 (= (flatMap!1110 lt!2245156 lambda!295219) (choose!41885 lt!2245156 lambda!295219))))

(declare-fun bs!1270500 () Bool)

(assert (= bs!1270500 d!1746222))

(declare-fun m!6516314 () Bool)

(assert (=> bs!1270500 m!6516314))

(assert (=> b!5510754 d!1746222))

(declare-fun b!5511344 () Bool)

(declare-fun e!3408364 () Bool)

(assert (=> b!5511344 (= e!3408364 (nullable!5531 (regOne!31506 (regOne!31506 r!7292))))))

(declare-fun b!5511345 () Bool)

(declare-fun e!3408363 () (InoxSet Context!9762))

(declare-fun call!407514 () (InoxSet Context!9762))

(declare-fun call!407513 () (InoxSet Context!9762))

(assert (=> b!5511345 (= e!3408363 ((_ map or) call!407514 call!407513))))

(declare-fun bm!407507 () Bool)

(declare-fun call!407517 () (InoxSet Context!9762))

(assert (=> bm!407507 (= call!407517 call!407514)))

(declare-fun bm!407508 () Bool)

(declare-fun call!407516 () List!62790)

(declare-fun call!407512 () List!62790)

(assert (=> bm!407508 (= call!407516 call!407512)))

(declare-fun b!5511346 () Bool)

(declare-fun e!3408365 () (InoxSet Context!9762))

(declare-fun call!407515 () (InoxSet Context!9762))

(assert (=> b!5511346 (= e!3408365 call!407515)))

(declare-fun b!5511347 () Bool)

(declare-fun e!3408366 () (InoxSet Context!9762))

(assert (=> b!5511347 (= e!3408366 e!3408365)))

(declare-fun c!963179 () Bool)

(assert (=> b!5511347 (= c!963179 ((_ is Concat!24342) (regOne!31506 r!7292)))))

(declare-fun bm!407509 () Bool)

(assert (=> bm!407509 (= call!407515 call!407517)))

(declare-fun d!1746224 () Bool)

(declare-fun c!963183 () Bool)

(assert (=> d!1746224 (= c!963183 (and ((_ is ElementMatch!15497) (regOne!31506 r!7292)) (= (c!963007 (regOne!31506 r!7292)) (h!69116 s!2326))))))

(declare-fun e!3408367 () (InoxSet Context!9762))

(assert (=> d!1746224 (= (derivationStepZipperDown!839 (regOne!31506 r!7292) lt!2245147 (h!69116 s!2326)) e!3408367)))

(declare-fun bm!407510 () Bool)

(declare-fun c!963180 () Bool)

(assert (=> bm!407510 (= call!407512 ($colon$colon!1580 (exprs!5381 lt!2245147) (ite (or c!963180 c!963179) (regTwo!31506 (regOne!31506 r!7292)) (regOne!31506 r!7292))))))

(declare-fun b!5511348 () Bool)

(assert (=> b!5511348 (= e!3408366 ((_ map or) call!407513 call!407517))))

(declare-fun b!5511349 () Bool)

(assert (=> b!5511349 (= e!3408367 e!3408363)))

(declare-fun c!963181 () Bool)

(assert (=> b!5511349 (= c!963181 ((_ is Union!15497) (regOne!31506 r!7292)))))

(declare-fun bm!407511 () Bool)

(assert (=> bm!407511 (= call!407513 (derivationStepZipperDown!839 (ite c!963181 (regTwo!31507 (regOne!31506 r!7292)) (regOne!31506 (regOne!31506 r!7292))) (ite c!963181 lt!2245147 (Context!9763 call!407512)) (h!69116 s!2326)))))

(declare-fun b!5511350 () Bool)

(declare-fun e!3408362 () (InoxSet Context!9762))

(assert (=> b!5511350 (= e!3408362 call!407515)))

(declare-fun b!5511351 () Bool)

(assert (=> b!5511351 (= e!3408367 (store ((as const (Array Context!9762 Bool)) false) lt!2245147 true))))

(declare-fun b!5511352 () Bool)

(assert (=> b!5511352 (= e!3408362 ((as const (Array Context!9762 Bool)) false))))

(declare-fun bm!407512 () Bool)

(assert (=> bm!407512 (= call!407514 (derivationStepZipperDown!839 (ite c!963181 (regOne!31507 (regOne!31506 r!7292)) (ite c!963180 (regTwo!31506 (regOne!31506 r!7292)) (ite c!963179 (regOne!31506 (regOne!31506 r!7292)) (reg!15826 (regOne!31506 r!7292))))) (ite (or c!963181 c!963180) lt!2245147 (Context!9763 call!407516)) (h!69116 s!2326)))))

(declare-fun b!5511353 () Bool)

(assert (=> b!5511353 (= c!963180 e!3408364)))

(declare-fun res!2348472 () Bool)

(assert (=> b!5511353 (=> (not res!2348472) (not e!3408364))))

(assert (=> b!5511353 (= res!2348472 ((_ is Concat!24342) (regOne!31506 r!7292)))))

(assert (=> b!5511353 (= e!3408363 e!3408366)))

(declare-fun b!5511354 () Bool)

(declare-fun c!963182 () Bool)

(assert (=> b!5511354 (= c!963182 ((_ is Star!15497) (regOne!31506 r!7292)))))

(assert (=> b!5511354 (= e!3408365 e!3408362)))

(assert (= (and d!1746224 c!963183) b!5511351))

(assert (= (and d!1746224 (not c!963183)) b!5511349))

(assert (= (and b!5511349 c!963181) b!5511345))

(assert (= (and b!5511349 (not c!963181)) b!5511353))

(assert (= (and b!5511353 res!2348472) b!5511344))

(assert (= (and b!5511353 c!963180) b!5511348))

(assert (= (and b!5511353 (not c!963180)) b!5511347))

(assert (= (and b!5511347 c!963179) b!5511346))

(assert (= (and b!5511347 (not c!963179)) b!5511354))

(assert (= (and b!5511354 c!963182) b!5511350))

(assert (= (and b!5511354 (not c!963182)) b!5511352))

(assert (= (or b!5511346 b!5511350) bm!407508))

(assert (= (or b!5511346 b!5511350) bm!407509))

(assert (= (or b!5511348 bm!407508) bm!407510))

(assert (= (or b!5511348 bm!407509) bm!407507))

(assert (= (or b!5511345 b!5511348) bm!407511))

(assert (= (or b!5511345 bm!407507) bm!407512))

(declare-fun m!6516316 () Bool)

(assert (=> bm!407510 m!6516316))

(declare-fun m!6516318 () Bool)

(assert (=> b!5511344 m!6516318))

(declare-fun m!6516320 () Bool)

(assert (=> bm!407512 m!6516320))

(declare-fun m!6516322 () Bool)

(assert (=> bm!407511 m!6516322))

(assert (=> b!5511351 m!6515888))

(assert (=> b!5510754 d!1746224))

(declare-fun b!5511355 () Bool)

(declare-fun e!3408370 () Bool)

(assert (=> b!5511355 (= e!3408370 (nullable!5531 (h!69114 (exprs!5381 lt!2245157))))))

(declare-fun call!407518 () (InoxSet Context!9762))

(declare-fun e!3408368 () (InoxSet Context!9762))

(declare-fun b!5511356 () Bool)

(assert (=> b!5511356 (= e!3408368 ((_ map or) call!407518 (derivationStepZipperUp!765 (Context!9763 (t!376035 (exprs!5381 lt!2245157))) (h!69116 s!2326))))))

(declare-fun b!5511357 () Bool)

(declare-fun e!3408369 () (InoxSet Context!9762))

(assert (=> b!5511357 (= e!3408368 e!3408369)))

(declare-fun c!963184 () Bool)

(assert (=> b!5511357 (= c!963184 ((_ is Cons!62666) (exprs!5381 lt!2245157)))))

(declare-fun d!1746226 () Bool)

(declare-fun c!963185 () Bool)

(assert (=> d!1746226 (= c!963185 e!3408370)))

(declare-fun res!2348473 () Bool)

(assert (=> d!1746226 (=> (not res!2348473) (not e!3408370))))

(assert (=> d!1746226 (= res!2348473 ((_ is Cons!62666) (exprs!5381 lt!2245157)))))

(assert (=> d!1746226 (= (derivationStepZipperUp!765 lt!2245157 (h!69116 s!2326)) e!3408368)))

(declare-fun bm!407513 () Bool)

(assert (=> bm!407513 (= call!407518 (derivationStepZipperDown!839 (h!69114 (exprs!5381 lt!2245157)) (Context!9763 (t!376035 (exprs!5381 lt!2245157))) (h!69116 s!2326)))))

(declare-fun b!5511358 () Bool)

(assert (=> b!5511358 (= e!3408369 ((as const (Array Context!9762 Bool)) false))))

(declare-fun b!5511359 () Bool)

(assert (=> b!5511359 (= e!3408369 call!407518)))

(assert (= (and d!1746226 res!2348473) b!5511355))

(assert (= (and d!1746226 c!963185) b!5511356))

(assert (= (and d!1746226 (not c!963185)) b!5511357))

(assert (= (and b!5511357 c!963184) b!5511359))

(assert (= (and b!5511357 (not c!963184)) b!5511358))

(assert (= (or b!5511356 b!5511359) bm!407513))

(declare-fun m!6516324 () Bool)

(assert (=> b!5511355 m!6516324))

(declare-fun m!6516326 () Bool)

(assert (=> b!5511356 m!6516326))

(declare-fun m!6516328 () Bool)

(assert (=> bm!407513 m!6516328))

(assert (=> b!5510754 d!1746226))

(declare-fun d!1746228 () Bool)

(assert (=> d!1746228 (= (flatMap!1110 lt!2245169 lambda!295219) (choose!41885 lt!2245169 lambda!295219))))

(declare-fun bs!1270501 () Bool)

(assert (= bs!1270501 d!1746228))

(declare-fun m!6516330 () Bool)

(assert (=> bs!1270501 m!6516330))

(assert (=> b!5510754 d!1746228))

(declare-fun bs!1270502 () Bool)

(declare-fun b!5511392 () Bool)

(assert (= bs!1270502 (and b!5511392 d!1746160)))

(declare-fun lambda!295277 () Int)

(assert (=> bs!1270502 (not (= lambda!295277 lambda!295255))))

(declare-fun bs!1270503 () Bool)

(assert (= bs!1270503 (and b!5511392 b!5510758)))

(assert (=> bs!1270503 (not (= lambda!295277 lambda!295218))))

(declare-fun bs!1270504 () Bool)

(assert (= bs!1270504 (and b!5511392 d!1746120)))

(assert (=> bs!1270504 (not (= lambda!295277 lambda!295249))))

(assert (=> bs!1270503 (not (= lambda!295277 lambda!295217))))

(assert (=> bs!1270504 (not (= lambda!295277 lambda!295250))))

(assert (=> b!5511392 true))

(assert (=> b!5511392 true))

(declare-fun bs!1270505 () Bool)

(declare-fun b!5511401 () Bool)

(assert (= bs!1270505 (and b!5511401 d!1746160)))

(declare-fun lambda!295278 () Int)

(assert (=> bs!1270505 (not (= lambda!295278 lambda!295255))))

(declare-fun bs!1270506 () Bool)

(assert (= bs!1270506 (and b!5511401 b!5511392)))

(assert (=> bs!1270506 (not (= lambda!295278 lambda!295277))))

(declare-fun bs!1270507 () Bool)

(assert (= bs!1270507 (and b!5511401 b!5510758)))

(assert (=> bs!1270507 (= lambda!295278 lambda!295218)))

(declare-fun bs!1270508 () Bool)

(assert (= bs!1270508 (and b!5511401 d!1746120)))

(assert (=> bs!1270508 (not (= lambda!295278 lambda!295249))))

(assert (=> bs!1270507 (not (= lambda!295278 lambda!295217))))

(assert (=> bs!1270508 (= lambda!295278 lambda!295250)))

(assert (=> b!5511401 true))

(assert (=> b!5511401 true))

(declare-fun e!3408393 () Bool)

(declare-fun call!407523 () Bool)

(assert (=> b!5511392 (= e!3408393 call!407523)))

(declare-fun b!5511393 () Bool)

(declare-fun e!3408391 () Bool)

(assert (=> b!5511393 (= e!3408391 (= s!2326 (Cons!62668 (c!963007 r!7292) Nil!62668)))))

(declare-fun b!5511394 () Bool)

(declare-fun c!963195 () Bool)

(assert (=> b!5511394 (= c!963195 ((_ is Union!15497) r!7292))))

(declare-fun e!3408394 () Bool)

(assert (=> b!5511394 (= e!3408391 e!3408394)))

(declare-fun b!5511395 () Bool)

(declare-fun e!3408395 () Bool)

(assert (=> b!5511395 (= e!3408394 e!3408395)))

(declare-fun c!963196 () Bool)

(assert (=> b!5511395 (= c!963196 ((_ is Star!15497) r!7292))))

(declare-fun b!5511396 () Bool)

(declare-fun e!3408390 () Bool)

(declare-fun e!3408389 () Bool)

(assert (=> b!5511396 (= e!3408390 e!3408389)))

(declare-fun res!2348491 () Bool)

(assert (=> b!5511396 (= res!2348491 (not ((_ is EmptyLang!15497) r!7292)))))

(assert (=> b!5511396 (=> (not res!2348491) (not e!3408389))))

(declare-fun bm!407519 () Bool)

(assert (=> bm!407519 (= call!407523 (Exists!2597 (ite c!963196 lambda!295277 lambda!295278)))))

(declare-fun b!5511397 () Bool)

(declare-fun res!2348490 () Bool)

(assert (=> b!5511397 (=> res!2348490 e!3408393)))

(declare-fun call!407524 () Bool)

(assert (=> b!5511397 (= res!2348490 call!407524)))

(assert (=> b!5511397 (= e!3408395 e!3408393)))

(declare-fun b!5511398 () Bool)

(assert (=> b!5511398 (= e!3408390 call!407524)))

(declare-fun b!5511399 () Bool)

(declare-fun c!963194 () Bool)

(assert (=> b!5511399 (= c!963194 ((_ is ElementMatch!15497) r!7292))))

(assert (=> b!5511399 (= e!3408389 e!3408391)))

(declare-fun b!5511400 () Bool)

(declare-fun e!3408392 () Bool)

(assert (=> b!5511400 (= e!3408392 (matchRSpec!2600 (regTwo!31507 r!7292) s!2326))))

(declare-fun d!1746230 () Bool)

(declare-fun c!963197 () Bool)

(assert (=> d!1746230 (= c!963197 ((_ is EmptyExpr!15497) r!7292))))

(assert (=> d!1746230 (= (matchRSpec!2600 r!7292 s!2326) e!3408390)))

(declare-fun bm!407518 () Bool)

(assert (=> bm!407518 (= call!407524 (isEmpty!34450 s!2326))))

(assert (=> b!5511401 (= e!3408395 call!407523)))

(declare-fun b!5511402 () Bool)

(assert (=> b!5511402 (= e!3408394 e!3408392)))

(declare-fun res!2348492 () Bool)

(assert (=> b!5511402 (= res!2348492 (matchRSpec!2600 (regOne!31507 r!7292) s!2326))))

(assert (=> b!5511402 (=> res!2348492 e!3408392)))

(assert (= (and d!1746230 c!963197) b!5511398))

(assert (= (and d!1746230 (not c!963197)) b!5511396))

(assert (= (and b!5511396 res!2348491) b!5511399))

(assert (= (and b!5511399 c!963194) b!5511393))

(assert (= (and b!5511399 (not c!963194)) b!5511394))

(assert (= (and b!5511394 c!963195) b!5511402))

(assert (= (and b!5511394 (not c!963195)) b!5511395))

(assert (= (and b!5511402 (not res!2348492)) b!5511400))

(assert (= (and b!5511395 c!963196) b!5511397))

(assert (= (and b!5511395 (not c!963196)) b!5511401))

(assert (= (and b!5511397 (not res!2348490)) b!5511392))

(assert (= (or b!5511392 b!5511401) bm!407519))

(assert (= (or b!5511398 b!5511397) bm!407518))

(declare-fun m!6516332 () Bool)

(assert (=> bm!407519 m!6516332))

(declare-fun m!6516334 () Bool)

(assert (=> b!5511400 m!6516334))

(declare-fun m!6516336 () Bool)

(assert (=> bm!407518 m!6516336))

(declare-fun m!6516338 () Bool)

(assert (=> b!5511402 m!6516338))

(assert (=> b!5510763 d!1746230))

(declare-fun b!5511431 () Bool)

(declare-fun e!3408416 () Bool)

(declare-fun e!3408410 () Bool)

(assert (=> b!5511431 (= e!3408416 e!3408410)))

(declare-fun res!2348516 () Bool)

(assert (=> b!5511431 (=> res!2348516 e!3408410)))

(declare-fun call!407527 () Bool)

(assert (=> b!5511431 (= res!2348516 call!407527)))

(declare-fun b!5511432 () Bool)

(declare-fun e!3408411 () Bool)

(assert (=> b!5511432 (= e!3408411 (nullable!5531 r!7292))))

(declare-fun b!5511433 () Bool)

(declare-fun derivativeStep!4366 (Regex!15497 C!31264) Regex!15497)

(assert (=> b!5511433 (= e!3408411 (matchR!7682 (derivativeStep!4366 r!7292 (head!11805 s!2326)) (tail!10900 s!2326)))))

(declare-fun b!5511434 () Bool)

(declare-fun res!2348509 () Bool)

(declare-fun e!3408412 () Bool)

(assert (=> b!5511434 (=> res!2348509 e!3408412)))

(assert (=> b!5511434 (= res!2348509 (not ((_ is ElementMatch!15497) r!7292)))))

(declare-fun e!3408413 () Bool)

(assert (=> b!5511434 (= e!3408413 e!3408412)))

(declare-fun d!1746232 () Bool)

(declare-fun e!3408414 () Bool)

(assert (=> d!1746232 e!3408414))

(declare-fun c!963204 () Bool)

(assert (=> d!1746232 (= c!963204 ((_ is EmptyExpr!15497) r!7292))))

(declare-fun lt!2245250 () Bool)

(assert (=> d!1746232 (= lt!2245250 e!3408411)))

(declare-fun c!963205 () Bool)

(assert (=> d!1746232 (= c!963205 (isEmpty!34450 s!2326))))

(assert (=> d!1746232 (validRegex!7233 r!7292)))

(assert (=> d!1746232 (= (matchR!7682 r!7292 s!2326) lt!2245250)))

(declare-fun bm!407522 () Bool)

(assert (=> bm!407522 (= call!407527 (isEmpty!34450 s!2326))))

(declare-fun b!5511435 () Bool)

(declare-fun res!2348511 () Bool)

(assert (=> b!5511435 (=> res!2348511 e!3408410)))

(assert (=> b!5511435 (= res!2348511 (not (isEmpty!34450 (tail!10900 s!2326))))))

(declare-fun b!5511436 () Bool)

(assert (=> b!5511436 (= e!3408414 (= lt!2245250 call!407527))))

(declare-fun b!5511437 () Bool)

(declare-fun res!2348515 () Bool)

(assert (=> b!5511437 (=> res!2348515 e!3408412)))

(declare-fun e!3408415 () Bool)

(assert (=> b!5511437 (= res!2348515 e!3408415)))

(declare-fun res!2348513 () Bool)

(assert (=> b!5511437 (=> (not res!2348513) (not e!3408415))))

(assert (=> b!5511437 (= res!2348513 lt!2245250)))

(declare-fun b!5511438 () Bool)

(assert (=> b!5511438 (= e!3408413 (not lt!2245250))))

(declare-fun b!5511439 () Bool)

(assert (=> b!5511439 (= e!3408414 e!3408413)))

(declare-fun c!963206 () Bool)

(assert (=> b!5511439 (= c!963206 ((_ is EmptyLang!15497) r!7292))))

(declare-fun b!5511440 () Bool)

(assert (=> b!5511440 (= e!3408415 (= (head!11805 s!2326) (c!963007 r!7292)))))

(declare-fun b!5511441 () Bool)

(assert (=> b!5511441 (= e!3408410 (not (= (head!11805 s!2326) (c!963007 r!7292))))))

(declare-fun b!5511442 () Bool)

(declare-fun res!2348510 () Bool)

(assert (=> b!5511442 (=> (not res!2348510) (not e!3408415))))

(assert (=> b!5511442 (= res!2348510 (not call!407527))))

(declare-fun b!5511443 () Bool)

(declare-fun res!2348514 () Bool)

(assert (=> b!5511443 (=> (not res!2348514) (not e!3408415))))

(assert (=> b!5511443 (= res!2348514 (isEmpty!34450 (tail!10900 s!2326)))))

(declare-fun b!5511444 () Bool)

(assert (=> b!5511444 (= e!3408412 e!3408416)))

(declare-fun res!2348512 () Bool)

(assert (=> b!5511444 (=> (not res!2348512) (not e!3408416))))

(assert (=> b!5511444 (= res!2348512 (not lt!2245250))))

(assert (= (and d!1746232 c!963205) b!5511432))

(assert (= (and d!1746232 (not c!963205)) b!5511433))

(assert (= (and d!1746232 c!963204) b!5511436))

(assert (= (and d!1746232 (not c!963204)) b!5511439))

(assert (= (and b!5511439 c!963206) b!5511438))

(assert (= (and b!5511439 (not c!963206)) b!5511434))

(assert (= (and b!5511434 (not res!2348509)) b!5511437))

(assert (= (and b!5511437 res!2348513) b!5511442))

(assert (= (and b!5511442 res!2348510) b!5511443))

(assert (= (and b!5511443 res!2348514) b!5511440))

(assert (= (and b!5511437 (not res!2348515)) b!5511444))

(assert (= (and b!5511444 res!2348512) b!5511431))

(assert (= (and b!5511431 (not res!2348516)) b!5511435))

(assert (= (and b!5511435 (not res!2348511)) b!5511441))

(assert (= (or b!5511436 b!5511431 b!5511442) bm!407522))

(declare-fun m!6516340 () Bool)

(assert (=> b!5511432 m!6516340))

(assert (=> d!1746232 m!6516336))

(assert (=> d!1746232 m!6515926))

(declare-fun m!6516342 () Bool)

(assert (=> b!5511433 m!6516342))

(assert (=> b!5511433 m!6516342))

(declare-fun m!6516344 () Bool)

(assert (=> b!5511433 m!6516344))

(declare-fun m!6516346 () Bool)

(assert (=> b!5511433 m!6516346))

(assert (=> b!5511433 m!6516344))

(assert (=> b!5511433 m!6516346))

(declare-fun m!6516348 () Bool)

(assert (=> b!5511433 m!6516348))

(assert (=> bm!407522 m!6516336))

(assert (=> b!5511435 m!6516346))

(assert (=> b!5511435 m!6516346))

(declare-fun m!6516350 () Bool)

(assert (=> b!5511435 m!6516350))

(assert (=> b!5511441 m!6516342))

(assert (=> b!5511440 m!6516342))

(assert (=> b!5511443 m!6516346))

(assert (=> b!5511443 m!6516346))

(assert (=> b!5511443 m!6516350))

(assert (=> b!5510763 d!1746232))

(declare-fun d!1746234 () Bool)

(assert (=> d!1746234 (= (matchR!7682 r!7292 s!2326) (matchRSpec!2600 r!7292 s!2326))))

(declare-fun lt!2245253 () Unit!155454)

(declare-fun choose!41886 (Regex!15497 List!62792) Unit!155454)

(assert (=> d!1746234 (= lt!2245253 (choose!41886 r!7292 s!2326))))

(assert (=> d!1746234 (validRegex!7233 r!7292)))

(assert (=> d!1746234 (= (mainMatchTheorem!2600 r!7292 s!2326) lt!2245253)))

(declare-fun bs!1270509 () Bool)

(assert (= bs!1270509 d!1746234))

(assert (=> bs!1270509 m!6515906))

(assert (=> bs!1270509 m!6515904))

(declare-fun m!6516352 () Bool)

(assert (=> bs!1270509 m!6516352))

(assert (=> bs!1270509 m!6515926))

(assert (=> b!5510763 d!1746234))

(declare-fun d!1746236 () Bool)

(assert (=> d!1746236 (= (flatMap!1110 z!1189 lambda!295219) (choose!41885 z!1189 lambda!295219))))

(declare-fun bs!1270510 () Bool)

(assert (= bs!1270510 d!1746236))

(declare-fun m!6516354 () Bool)

(assert (=> bs!1270510 m!6516354))

(assert (=> b!5510766 d!1746236))

(declare-fun b!5511445 () Bool)

(declare-fun e!3408419 () Bool)

(assert (=> b!5511445 (= e!3408419 (nullable!5531 (h!69114 (exprs!5381 (h!69115 zl!343)))))))

(declare-fun call!407528 () (InoxSet Context!9762))

(declare-fun b!5511446 () Bool)

(declare-fun e!3408417 () (InoxSet Context!9762))

(assert (=> b!5511446 (= e!3408417 ((_ map or) call!407528 (derivationStepZipperUp!765 (Context!9763 (t!376035 (exprs!5381 (h!69115 zl!343)))) (h!69116 s!2326))))))

(declare-fun b!5511447 () Bool)

(declare-fun e!3408418 () (InoxSet Context!9762))

(assert (=> b!5511447 (= e!3408417 e!3408418)))

(declare-fun c!963207 () Bool)

(assert (=> b!5511447 (= c!963207 ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343))))))

(declare-fun d!1746238 () Bool)

(declare-fun c!963208 () Bool)

(assert (=> d!1746238 (= c!963208 e!3408419)))

(declare-fun res!2348517 () Bool)

(assert (=> d!1746238 (=> (not res!2348517) (not e!3408419))))

(assert (=> d!1746238 (= res!2348517 ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343))))))

(assert (=> d!1746238 (= (derivationStepZipperUp!765 (h!69115 zl!343) (h!69116 s!2326)) e!3408417)))

(declare-fun bm!407523 () Bool)

(assert (=> bm!407523 (= call!407528 (derivationStepZipperDown!839 (h!69114 (exprs!5381 (h!69115 zl!343))) (Context!9763 (t!376035 (exprs!5381 (h!69115 zl!343)))) (h!69116 s!2326)))))

(declare-fun b!5511448 () Bool)

(assert (=> b!5511448 (= e!3408418 ((as const (Array Context!9762 Bool)) false))))

(declare-fun b!5511449 () Bool)

(assert (=> b!5511449 (= e!3408418 call!407528)))

(assert (= (and d!1746238 res!2348517) b!5511445))

(assert (= (and d!1746238 c!963208) b!5511446))

(assert (= (and d!1746238 (not c!963208)) b!5511447))

(assert (= (and b!5511447 c!963207) b!5511449))

(assert (= (and b!5511447 (not c!963207)) b!5511448))

(assert (= (or b!5511446 b!5511449) bm!407523))

(declare-fun m!6516356 () Bool)

(assert (=> b!5511445 m!6516356))

(declare-fun m!6516358 () Bool)

(assert (=> b!5511446 m!6516358))

(declare-fun m!6516360 () Bool)

(assert (=> bm!407523 m!6516360))

(assert (=> b!5510766 d!1746238))

(declare-fun d!1746240 () Bool)

(assert (=> d!1746240 (= (flatMap!1110 z!1189 lambda!295219) (dynLambda!24484 lambda!295219 (h!69115 zl!343)))))

(declare-fun lt!2245254 () Unit!155454)

(assert (=> d!1746240 (= lt!2245254 (choose!41883 z!1189 (h!69115 zl!343) lambda!295219))))

(assert (=> d!1746240 (= z!1189 (store ((as const (Array Context!9762 Bool)) false) (h!69115 zl!343) true))))

(assert (=> d!1746240 (= (lemmaFlatMapOnSingletonSet!642 z!1189 (h!69115 zl!343) lambda!295219) lt!2245254)))

(declare-fun b_lambda!208955 () Bool)

(assert (=> (not b_lambda!208955) (not d!1746240)))

(declare-fun bs!1270511 () Bool)

(assert (= bs!1270511 d!1746240))

(assert (=> bs!1270511 m!6515864))

(declare-fun m!6516362 () Bool)

(assert (=> bs!1270511 m!6516362))

(declare-fun m!6516364 () Bool)

(assert (=> bs!1270511 m!6516364))

(declare-fun m!6516366 () Bool)

(assert (=> bs!1270511 m!6516366))

(assert (=> b!5510766 d!1746240))

(declare-fun d!1746242 () Bool)

(declare-fun e!3408422 () Bool)

(assert (=> d!1746242 e!3408422))

(declare-fun res!2348520 () Bool)

(assert (=> d!1746242 (=> (not res!2348520) (not e!3408422))))

(declare-fun lt!2245257 () List!62791)

(declare-fun noDuplicate!1494 (List!62791) Bool)

(assert (=> d!1746242 (= res!2348520 (noDuplicate!1494 lt!2245257))))

(declare-fun choose!41887 ((InoxSet Context!9762)) List!62791)

(assert (=> d!1746242 (= lt!2245257 (choose!41887 z!1189))))

(assert (=> d!1746242 (= (toList!9281 z!1189) lt!2245257)))

(declare-fun b!5511452 () Bool)

(declare-fun content!11259 (List!62791) (InoxSet Context!9762))

(assert (=> b!5511452 (= e!3408422 (= (content!11259 lt!2245257) z!1189))))

(assert (= (and d!1746242 res!2348520) b!5511452))

(declare-fun m!6516368 () Bool)

(assert (=> d!1746242 m!6516368))

(declare-fun m!6516370 () Bool)

(assert (=> d!1746242 m!6516370))

(declare-fun m!6516372 () Bool)

(assert (=> b!5511452 m!6516372))

(assert (=> b!5510747 d!1746242))

(declare-fun b!5511453 () Bool)

(declare-fun e!3408425 () Bool)

(assert (=> b!5511453 (= e!3408425 (nullable!5531 (regOne!31506 r!7292)))))

(declare-fun b!5511454 () Bool)

(declare-fun e!3408424 () (InoxSet Context!9762))

(declare-fun call!407531 () (InoxSet Context!9762))

(declare-fun call!407530 () (InoxSet Context!9762))

(assert (=> b!5511454 (= e!3408424 ((_ map or) call!407531 call!407530))))

(declare-fun bm!407524 () Bool)

(declare-fun call!407534 () (InoxSet Context!9762))

(assert (=> bm!407524 (= call!407534 call!407531)))

(declare-fun bm!407525 () Bool)

(declare-fun call!407533 () List!62790)

(declare-fun call!407529 () List!62790)

(assert (=> bm!407525 (= call!407533 call!407529)))

(declare-fun b!5511455 () Bool)

(declare-fun e!3408426 () (InoxSet Context!9762))

(declare-fun call!407532 () (InoxSet Context!9762))

(assert (=> b!5511455 (= e!3408426 call!407532)))

(declare-fun b!5511456 () Bool)

(declare-fun e!3408427 () (InoxSet Context!9762))

(assert (=> b!5511456 (= e!3408427 e!3408426)))

(declare-fun c!963209 () Bool)

(assert (=> b!5511456 (= c!963209 ((_ is Concat!24342) r!7292))))

(declare-fun bm!407526 () Bool)

(assert (=> bm!407526 (= call!407532 call!407534)))

(declare-fun d!1746244 () Bool)

(declare-fun c!963213 () Bool)

(assert (=> d!1746244 (= c!963213 (and ((_ is ElementMatch!15497) r!7292) (= (c!963007 r!7292) (h!69116 s!2326))))))

(declare-fun e!3408428 () (InoxSet Context!9762))

(assert (=> d!1746244 (= (derivationStepZipperDown!839 r!7292 lt!2245148 (h!69116 s!2326)) e!3408428)))

(declare-fun bm!407527 () Bool)

(declare-fun c!963210 () Bool)

(assert (=> bm!407527 (= call!407529 ($colon$colon!1580 (exprs!5381 lt!2245148) (ite (or c!963210 c!963209) (regTwo!31506 r!7292) r!7292)))))

(declare-fun b!5511457 () Bool)

(assert (=> b!5511457 (= e!3408427 ((_ map or) call!407530 call!407534))))

(declare-fun b!5511458 () Bool)

(assert (=> b!5511458 (= e!3408428 e!3408424)))

(declare-fun c!963211 () Bool)

(assert (=> b!5511458 (= c!963211 ((_ is Union!15497) r!7292))))

(declare-fun bm!407528 () Bool)

(assert (=> bm!407528 (= call!407530 (derivationStepZipperDown!839 (ite c!963211 (regTwo!31507 r!7292) (regOne!31506 r!7292)) (ite c!963211 lt!2245148 (Context!9763 call!407529)) (h!69116 s!2326)))))

(declare-fun b!5511459 () Bool)

(declare-fun e!3408423 () (InoxSet Context!9762))

(assert (=> b!5511459 (= e!3408423 call!407532)))

(declare-fun b!5511460 () Bool)

(assert (=> b!5511460 (= e!3408428 (store ((as const (Array Context!9762 Bool)) false) lt!2245148 true))))

(declare-fun b!5511461 () Bool)

(assert (=> b!5511461 (= e!3408423 ((as const (Array Context!9762 Bool)) false))))

(declare-fun bm!407529 () Bool)

(assert (=> bm!407529 (= call!407531 (derivationStepZipperDown!839 (ite c!963211 (regOne!31507 r!7292) (ite c!963210 (regTwo!31506 r!7292) (ite c!963209 (regOne!31506 r!7292) (reg!15826 r!7292)))) (ite (or c!963211 c!963210) lt!2245148 (Context!9763 call!407533)) (h!69116 s!2326)))))

(declare-fun b!5511462 () Bool)

(assert (=> b!5511462 (= c!963210 e!3408425)))

(declare-fun res!2348521 () Bool)

(assert (=> b!5511462 (=> (not res!2348521) (not e!3408425))))

(assert (=> b!5511462 (= res!2348521 ((_ is Concat!24342) r!7292))))

(assert (=> b!5511462 (= e!3408424 e!3408427)))

(declare-fun b!5511463 () Bool)

(declare-fun c!963212 () Bool)

(assert (=> b!5511463 (= c!963212 ((_ is Star!15497) r!7292))))

(assert (=> b!5511463 (= e!3408426 e!3408423)))

(assert (= (and d!1746244 c!963213) b!5511460))

(assert (= (and d!1746244 (not c!963213)) b!5511458))

(assert (= (and b!5511458 c!963211) b!5511454))

(assert (= (and b!5511458 (not c!963211)) b!5511462))

(assert (= (and b!5511462 res!2348521) b!5511453))

(assert (= (and b!5511462 c!963210) b!5511457))

(assert (= (and b!5511462 (not c!963210)) b!5511456))

(assert (= (and b!5511456 c!963209) b!5511455))

(assert (= (and b!5511456 (not c!963209)) b!5511463))

(assert (= (and b!5511463 c!963212) b!5511459))

(assert (= (and b!5511463 (not c!963212)) b!5511461))

(assert (= (or b!5511455 b!5511459) bm!407525))

(assert (= (or b!5511455 b!5511459) bm!407526))

(assert (= (or b!5511457 bm!407525) bm!407527))

(assert (= (or b!5511457 bm!407526) bm!407524))

(assert (= (or b!5511454 b!5511457) bm!407528))

(assert (= (or b!5511454 bm!407524) bm!407529))

(declare-fun m!6516374 () Bool)

(assert (=> bm!407527 m!6516374))

(assert (=> b!5511453 m!6515902))

(declare-fun m!6516376 () Bool)

(assert (=> bm!407529 m!6516376))

(declare-fun m!6516378 () Bool)

(assert (=> bm!407528 m!6516378))

(assert (=> b!5511460 m!6516312))

(assert (=> b!5510756 d!1746244))

(declare-fun b!5511464 () Bool)

(declare-fun e!3408431 () Bool)

(assert (=> b!5511464 (= e!3408431 (nullable!5531 (h!69114 (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666))))))))

(declare-fun call!407535 () (InoxSet Context!9762))

(declare-fun b!5511465 () Bool)

(declare-fun e!3408429 () (InoxSet Context!9762))

(assert (=> b!5511465 (= e!3408429 ((_ map or) call!407535 (derivationStepZipperUp!765 (Context!9763 (t!376035 (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666))))) (h!69116 s!2326))))))

(declare-fun b!5511466 () Bool)

(declare-fun e!3408430 () (InoxSet Context!9762))

(assert (=> b!5511466 (= e!3408429 e!3408430)))

(declare-fun c!963214 () Bool)

(assert (=> b!5511466 (= c!963214 ((_ is Cons!62666) (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666)))))))

(declare-fun d!1746246 () Bool)

(declare-fun c!963215 () Bool)

(assert (=> d!1746246 (= c!963215 e!3408431)))

(declare-fun res!2348522 () Bool)

(assert (=> d!1746246 (=> (not res!2348522) (not e!3408431))))

(assert (=> d!1746246 (= res!2348522 ((_ is Cons!62666) (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666)))))))

(assert (=> d!1746246 (= (derivationStepZipperUp!765 (Context!9763 (Cons!62666 r!7292 Nil!62666)) (h!69116 s!2326)) e!3408429)))

(declare-fun bm!407530 () Bool)

(assert (=> bm!407530 (= call!407535 (derivationStepZipperDown!839 (h!69114 (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666)))) (Context!9763 (t!376035 (exprs!5381 (Context!9763 (Cons!62666 r!7292 Nil!62666))))) (h!69116 s!2326)))))

(declare-fun b!5511467 () Bool)

(assert (=> b!5511467 (= e!3408430 ((as const (Array Context!9762 Bool)) false))))

(declare-fun b!5511468 () Bool)

(assert (=> b!5511468 (= e!3408430 call!407535)))

(assert (= (and d!1746246 res!2348522) b!5511464))

(assert (= (and d!1746246 c!963215) b!5511465))

(assert (= (and d!1746246 (not c!963215)) b!5511466))

(assert (= (and b!5511466 c!963214) b!5511468))

(assert (= (and b!5511466 (not c!963214)) b!5511467))

(assert (= (or b!5511465 b!5511468) bm!407530))

(declare-fun m!6516380 () Bool)

(assert (=> b!5511464 m!6516380))

(declare-fun m!6516382 () Bool)

(assert (=> b!5511465 m!6516382))

(declare-fun m!6516384 () Bool)

(assert (=> bm!407530 m!6516384))

(assert (=> b!5510756 d!1746246))

(declare-fun bs!1270512 () Bool)

(declare-fun d!1746248 () Bool)

(assert (= bs!1270512 (and d!1746248 b!5510766)))

(declare-fun lambda!295281 () Int)

(assert (=> bs!1270512 (= lambda!295281 lambda!295219)))

(assert (=> d!1746248 true))

(assert (=> d!1746248 (= (derivationStepZipper!1602 z!1189 (h!69116 s!2326)) (flatMap!1110 z!1189 lambda!295281))))

(declare-fun bs!1270513 () Bool)

(assert (= bs!1270513 d!1746248))

(declare-fun m!6516386 () Bool)

(assert (=> bs!1270513 m!6516386))

(assert (=> b!5510756 d!1746248))

(declare-fun b!5511475 () Bool)

(declare-fun e!3408434 () Bool)

(declare-fun tp!1516328 () Bool)

(assert (=> b!5511475 (= e!3408434 (and tp_is_empty!40247 tp!1516328))))

(assert (=> b!5510764 (= tp!1516265 e!3408434)))

(assert (= (and b!5510764 ((_ is Cons!62668) (t!376037 s!2326))) b!5511475))

(declare-fun b!5511483 () Bool)

(declare-fun e!3408440 () Bool)

(declare-fun tp!1516333 () Bool)

(assert (=> b!5511483 (= e!3408440 tp!1516333)))

(declare-fun b!5511482 () Bool)

(declare-fun e!3408439 () Bool)

(declare-fun tp!1516334 () Bool)

(assert (=> b!5511482 (= e!3408439 (and (inv!81989 (h!69115 (t!376036 zl!343))) e!3408440 tp!1516334))))

(assert (=> b!5510759 (= tp!1516262 e!3408439)))

(assert (= b!5511482 b!5511483))

(assert (= (and b!5510759 ((_ is Cons!62667) (t!376036 zl!343))) b!5511482))

(declare-fun m!6516388 () Bool)

(assert (=> b!5511482 m!6516388))

(declare-fun condSetEmpty!36603 () Bool)

(assert (=> setNonEmpty!36597 (= condSetEmpty!36603 (= setRest!36597 ((as const (Array Context!9762 Bool)) false)))))

(declare-fun setRes!36603 () Bool)

(assert (=> setNonEmpty!36597 (= tp!1516263 setRes!36603)))

(declare-fun setIsEmpty!36603 () Bool)

(assert (=> setIsEmpty!36603 setRes!36603))

(declare-fun e!3408443 () Bool)

(declare-fun tp!1516339 () Bool)

(declare-fun setElem!36603 () Context!9762)

(declare-fun setNonEmpty!36603 () Bool)

(assert (=> setNonEmpty!36603 (= setRes!36603 (and tp!1516339 (inv!81989 setElem!36603) e!3408443))))

(declare-fun setRest!36603 () (InoxSet Context!9762))

(assert (=> setNonEmpty!36603 (= setRest!36597 ((_ map or) (store ((as const (Array Context!9762 Bool)) false) setElem!36603 true) setRest!36603))))

(declare-fun b!5511488 () Bool)

(declare-fun tp!1516340 () Bool)

(assert (=> b!5511488 (= e!3408443 tp!1516340)))

(assert (= (and setNonEmpty!36597 condSetEmpty!36603) setIsEmpty!36603))

(assert (= (and setNonEmpty!36597 (not condSetEmpty!36603)) setNonEmpty!36603))

(assert (= setNonEmpty!36603 b!5511488))

(declare-fun m!6516390 () Bool)

(assert (=> setNonEmpty!36603 m!6516390))

(declare-fun e!3408446 () Bool)

(assert (=> b!5510752 (= tp!1516266 e!3408446)))

(declare-fun b!5511499 () Bool)

(assert (=> b!5511499 (= e!3408446 tp_is_empty!40247)))

(declare-fun b!5511502 () Bool)

(declare-fun tp!1516355 () Bool)

(declare-fun tp!1516351 () Bool)

(assert (=> b!5511502 (= e!3408446 (and tp!1516355 tp!1516351))))

(declare-fun b!5511501 () Bool)

(declare-fun tp!1516353 () Bool)

(assert (=> b!5511501 (= e!3408446 tp!1516353)))

(declare-fun b!5511500 () Bool)

(declare-fun tp!1516354 () Bool)

(declare-fun tp!1516352 () Bool)

(assert (=> b!5511500 (= e!3408446 (and tp!1516354 tp!1516352))))

(assert (= (and b!5510752 ((_ is ElementMatch!15497) (regOne!31506 r!7292))) b!5511499))

(assert (= (and b!5510752 ((_ is Concat!24342) (regOne!31506 r!7292))) b!5511500))

(assert (= (and b!5510752 ((_ is Star!15497) (regOne!31506 r!7292))) b!5511501))

(assert (= (and b!5510752 ((_ is Union!15497) (regOne!31506 r!7292))) b!5511502))

(declare-fun e!3408447 () Bool)

(assert (=> b!5510752 (= tp!1516261 e!3408447)))

(declare-fun b!5511503 () Bool)

(assert (=> b!5511503 (= e!3408447 tp_is_empty!40247)))

(declare-fun b!5511506 () Bool)

(declare-fun tp!1516360 () Bool)

(declare-fun tp!1516356 () Bool)

(assert (=> b!5511506 (= e!3408447 (and tp!1516360 tp!1516356))))

(declare-fun b!5511505 () Bool)

(declare-fun tp!1516358 () Bool)

(assert (=> b!5511505 (= e!3408447 tp!1516358)))

(declare-fun b!5511504 () Bool)

(declare-fun tp!1516359 () Bool)

(declare-fun tp!1516357 () Bool)

(assert (=> b!5511504 (= e!3408447 (and tp!1516359 tp!1516357))))

(assert (= (and b!5510752 ((_ is ElementMatch!15497) (regTwo!31506 r!7292))) b!5511503))

(assert (= (and b!5510752 ((_ is Concat!24342) (regTwo!31506 r!7292))) b!5511504))

(assert (= (and b!5510752 ((_ is Star!15497) (regTwo!31506 r!7292))) b!5511505))

(assert (= (and b!5510752 ((_ is Union!15497) (regTwo!31506 r!7292))) b!5511506))

(declare-fun b!5511511 () Bool)

(declare-fun e!3408450 () Bool)

(declare-fun tp!1516365 () Bool)

(declare-fun tp!1516366 () Bool)

(assert (=> b!5511511 (= e!3408450 (and tp!1516365 tp!1516366))))

(assert (=> b!5510746 (= tp!1516267 e!3408450)))

(assert (= (and b!5510746 ((_ is Cons!62666) (exprs!5381 (h!69115 zl!343)))) b!5511511))

(declare-fun e!3408451 () Bool)

(assert (=> b!5510755 (= tp!1516260 e!3408451)))

(declare-fun b!5511512 () Bool)

(assert (=> b!5511512 (= e!3408451 tp_is_empty!40247)))

(declare-fun b!5511515 () Bool)

(declare-fun tp!1516371 () Bool)

(declare-fun tp!1516367 () Bool)

(assert (=> b!5511515 (= e!3408451 (and tp!1516371 tp!1516367))))

(declare-fun b!5511514 () Bool)

(declare-fun tp!1516369 () Bool)

(assert (=> b!5511514 (= e!3408451 tp!1516369)))

(declare-fun b!5511513 () Bool)

(declare-fun tp!1516370 () Bool)

(declare-fun tp!1516368 () Bool)

(assert (=> b!5511513 (= e!3408451 (and tp!1516370 tp!1516368))))

(assert (= (and b!5510755 ((_ is ElementMatch!15497) (regOne!31507 r!7292))) b!5511512))

(assert (= (and b!5510755 ((_ is Concat!24342) (regOne!31507 r!7292))) b!5511513))

(assert (= (and b!5510755 ((_ is Star!15497) (regOne!31507 r!7292))) b!5511514))

(assert (= (and b!5510755 ((_ is Union!15497) (regOne!31507 r!7292))) b!5511515))

(declare-fun e!3408452 () Bool)

(assert (=> b!5510755 (= tp!1516264 e!3408452)))

(declare-fun b!5511516 () Bool)

(assert (=> b!5511516 (= e!3408452 tp_is_empty!40247)))

(declare-fun b!5511519 () Bool)

(declare-fun tp!1516376 () Bool)

(declare-fun tp!1516372 () Bool)

(assert (=> b!5511519 (= e!3408452 (and tp!1516376 tp!1516372))))

(declare-fun b!5511518 () Bool)

(declare-fun tp!1516374 () Bool)

(assert (=> b!5511518 (= e!3408452 tp!1516374)))

(declare-fun b!5511517 () Bool)

(declare-fun tp!1516375 () Bool)

(declare-fun tp!1516373 () Bool)

(assert (=> b!5511517 (= e!3408452 (and tp!1516375 tp!1516373))))

(assert (= (and b!5510755 ((_ is ElementMatch!15497) (regTwo!31507 r!7292))) b!5511516))

(assert (= (and b!5510755 ((_ is Concat!24342) (regTwo!31507 r!7292))) b!5511517))

(assert (= (and b!5510755 ((_ is Star!15497) (regTwo!31507 r!7292))) b!5511518))

(assert (= (and b!5510755 ((_ is Union!15497) (regTwo!31507 r!7292))) b!5511519))

(declare-fun b!5511520 () Bool)

(declare-fun e!3408453 () Bool)

(declare-fun tp!1516377 () Bool)

(declare-fun tp!1516378 () Bool)

(assert (=> b!5511520 (= e!3408453 (and tp!1516377 tp!1516378))))

(assert (=> b!5510765 (= tp!1516258 e!3408453)))

(assert (= (and b!5510765 ((_ is Cons!62666) (exprs!5381 setElem!36597))) b!5511520))

(declare-fun e!3408454 () Bool)

(assert (=> b!5510751 (= tp!1516259 e!3408454)))

(declare-fun b!5511521 () Bool)

(assert (=> b!5511521 (= e!3408454 tp_is_empty!40247)))

(declare-fun b!5511524 () Bool)

(declare-fun tp!1516383 () Bool)

(declare-fun tp!1516379 () Bool)

(assert (=> b!5511524 (= e!3408454 (and tp!1516383 tp!1516379))))

(declare-fun b!5511523 () Bool)

(declare-fun tp!1516381 () Bool)

(assert (=> b!5511523 (= e!3408454 tp!1516381)))

(declare-fun b!5511522 () Bool)

(declare-fun tp!1516382 () Bool)

(declare-fun tp!1516380 () Bool)

(assert (=> b!5511522 (= e!3408454 (and tp!1516382 tp!1516380))))

(assert (= (and b!5510751 ((_ is ElementMatch!15497) (reg!15826 r!7292))) b!5511521))

(assert (= (and b!5510751 ((_ is Concat!24342) (reg!15826 r!7292))) b!5511522))

(assert (= (and b!5510751 ((_ is Star!15497) (reg!15826 r!7292))) b!5511523))

(assert (= (and b!5510751 ((_ is Union!15497) (reg!15826 r!7292))) b!5511524))

(declare-fun b_lambda!208957 () Bool)

(assert (= b_lambda!208953 (or b!5510766 b_lambda!208957)))

(declare-fun bs!1270514 () Bool)

(declare-fun d!1746250 () Bool)

(assert (= bs!1270514 (and d!1746250 b!5510766)))

(assert (=> bs!1270514 (= (dynLambda!24484 lambda!295219 lt!2245147) (derivationStepZipperUp!765 lt!2245147 (h!69116 s!2326)))))

(assert (=> bs!1270514 m!6515900))

(assert (=> d!1746218 d!1746250))

(declare-fun b_lambda!208959 () Bool)

(assert (= b_lambda!208951 (or b!5510766 b_lambda!208959)))

(declare-fun bs!1270515 () Bool)

(declare-fun d!1746252 () Bool)

(assert (= bs!1270515 (and d!1746252 b!5510766)))

(assert (=> bs!1270515 (= (dynLambda!24484 lambda!295219 lt!2245157) (derivationStepZipperUp!765 lt!2245157 (h!69116 s!2326)))))

(assert (=> bs!1270515 m!6515882))

(assert (=> d!1746212 d!1746252))

(declare-fun b_lambda!208961 () Bool)

(assert (= b_lambda!208955 (or b!5510766 b_lambda!208961)))

(declare-fun bs!1270516 () Bool)

(declare-fun d!1746254 () Bool)

(assert (= bs!1270516 (and d!1746254 b!5510766)))

(assert (=> bs!1270516 (= (dynLambda!24484 lambda!295219 (h!69115 zl!343)) (derivationStepZipperUp!765 (h!69115 zl!343) (h!69116 s!2326)))))

(assert (=> bs!1270516 m!6515866))

(assert (=> d!1746240 d!1746254))

(check-sat (not b!5511482) (not b!5510884) (not bm!407480) (not b!5511158) (not bm!407518) (not d!1746212) (not b!5511123) (not b_lambda!208957) (not b!5511145) (not d!1746158) (not b!5511259) (not b!5511253) (not b!5510885) (not b!5511333) (not b!5511502) (not b!5511520) (not b!5510891) (not b!5511433) (not bm!407488) (not bm!407504) (not bm!407529) (not bm!407510) (not b!5511524) (not b!5510890) (not d!1746232) (not b!5511443) (not bs!1270515) (not bm!407512) (not b!5511475) (not b!5511483) (not b!5511465) (not b!5511254) (not b!5511400) (not b!5511130) (not b_lambda!208959) (not b!5511506) (not d!1746218) (not bm!407522) (not d!1746120) (not b!5511175) (not b!5511251) (not b!5511514) (not b!5510883) (not b!5511445) (not d!1746236) (not d!1746190) (not bm!407528) (not bm!407513) (not b!5511464) (not b!5511523) (not b!5511307) (not b!5511281) (not d!1746210) (not d!1746228) (not b!5511488) (not b!5511282) (not b!5511453) (not d!1746188) (not b!5511157) (not b!5511146) (not bm!407511) (not b!5511515) (not d!1746234) (not b!5511432) (not b!5511402) (not d!1746160) (not bm!407505) (not b!5511128) (not b!5511255) (not d!1746248) (not d!1746180) (not bm!407506) (not d!1746208) (not d!1746204) (not b!5511280) (not b!5511513) (not d!1746156) (not bm!407519) (not b!5511522) (not b!5511441) (not bs!1270514) (not d!1746206) (not b!5511518) (not d!1746186) (not d!1746106) (not b!5511504) (not b!5511103) (not d!1746242) (not b!5511355) (not b!5511519) (not d!1746108) (not b!5511285) (not b!5511452) (not bm!407530) (not bm!407523) (not b!5511511) (not b!5511505) (not b!5511517) (not b!5511501) (not b!5511288) (not d!1746240) (not b!5511435) (not b!5511446) (not b!5511287) (not d!1746222) (not b!5511306) (not b!5511286) (not d!1746196) (not b!5511124) (not b!5511258) (not b!5511440) (not d!1746098) (not bs!1270516) tp_is_empty!40247 (not b_lambda!208961) (not b!5511500) (not d!1746184) (not b!5511356) (not b!5511344) (not b!5511252) (not bm!407479) (not bm!407527) (not setNonEmpty!36603) (not d!1746216) (not b!5510889) (not b!5511294))
(check-sat)
