; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!576006 () Bool)

(assert start!576006)

(declare-fun b!5516011 () Bool)

(assert (=> b!5516011 true))

(assert (=> b!5516011 true))

(declare-fun lambda!295646 () Int)

(declare-fun lambda!295645 () Int)

(assert (=> b!5516011 (not (= lambda!295646 lambda!295645))))

(assert (=> b!5516011 true))

(assert (=> b!5516011 true))

(declare-fun b!5516015 () Bool)

(assert (=> b!5516015 true))

(declare-fun b!5516005 () Bool)

(declare-fun res!2350174 () Bool)

(declare-fun e!3410917 () Bool)

(assert (=> b!5516005 (=> res!2350174 e!3410917)))

(declare-datatypes ((C!31280 0))(
  ( (C!31281 (val!25342 Int)) )
))
(declare-datatypes ((Regex!15505 0))(
  ( (ElementMatch!15505 (c!964257 C!31280)) (Concat!24350 (regOne!31522 Regex!15505) (regTwo!31522 Regex!15505)) (EmptyExpr!15505) (Star!15505 (reg!15834 Regex!15505)) (EmptyLang!15505) (Union!15505 (regOne!31523 Regex!15505) (regTwo!31523 Regex!15505)) )
))
(declare-fun r!7292 () Regex!15505)

(declare-datatypes ((List!62814 0))(
  ( (Nil!62690) (Cons!62690 (h!69138 Regex!15505) (t!376063 List!62814)) )
))
(declare-datatypes ((Context!9778 0))(
  ( (Context!9779 (exprs!5389 List!62814)) )
))
(declare-datatypes ((List!62815 0))(
  ( (Nil!62691) (Cons!62691 (h!69139 Context!9778) (t!376064 List!62815)) )
))
(declare-fun zl!343 () List!62815)

(declare-fun generalisedConcat!1120 (List!62814) Regex!15505)

(assert (=> b!5516005 (= res!2350174 (not (= r!7292 (generalisedConcat!1120 (exprs!5389 (h!69139 zl!343))))))))

(declare-fun b!5516006 () Bool)

(declare-fun e!3410925 () Bool)

(declare-fun tp!1517502 () Bool)

(assert (=> b!5516006 (= e!3410925 tp!1517502)))

(declare-fun b!5516007 () Bool)

(declare-fun res!2350186 () Bool)

(assert (=> b!5516007 (=> res!2350186 e!3410917)))

(declare-fun isEmpty!34473 (List!62815) Bool)

(assert (=> b!5516007 (= res!2350186 (not (isEmpty!34473 (t!376064 zl!343))))))

(declare-fun b!5516008 () Bool)

(declare-fun res!2350179 () Bool)

(assert (=> b!5516008 (=> res!2350179 e!3410917)))

(get-info :version)

(assert (=> b!5516008 (= res!2350179 (not ((_ is Cons!62690) (exprs!5389 (h!69139 zl!343)))))))

(declare-fun b!5516009 () Bool)

(declare-fun res!2350185 () Bool)

(declare-fun e!3410915 () Bool)

(assert (=> b!5516009 (=> res!2350185 e!3410915)))

(declare-fun isEmpty!34474 (List!62814) Bool)

(assert (=> b!5516009 (= res!2350185 (not (isEmpty!34474 (t!376063 (exprs!5389 (h!69139 zl!343))))))))

(declare-fun b!5516010 () Bool)

(declare-fun e!3410919 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2246153 () (InoxSet Context!9778))

(declare-datatypes ((List!62816 0))(
  ( (Nil!62692) (Cons!62692 (h!69140 C!31280) (t!376065 List!62816)) )
))
(declare-fun s!2326 () List!62816)

(declare-fun matchZipper!1663 ((InoxSet Context!9778) List!62816) Bool)

(assert (=> b!5516010 (= e!3410919 (matchZipper!1663 lt!2246153 (t!376065 s!2326)))))

(assert (=> b!5516011 (= e!3410917 e!3410915)))

(declare-fun res!2350182 () Bool)

(assert (=> b!5516011 (=> res!2350182 e!3410915)))

(declare-fun lt!2246136 () Bool)

(declare-fun lt!2246146 () Bool)

(assert (=> b!5516011 (= res!2350182 (or (not (= lt!2246136 lt!2246146)) ((_ is Nil!62692) s!2326)))))

(declare-fun Exists!2605 (Int) Bool)

(assert (=> b!5516011 (= (Exists!2605 lambda!295645) (Exists!2605 lambda!295646))))

(declare-datatypes ((Unit!155470 0))(
  ( (Unit!155471) )
))
(declare-fun lt!2246133 () Unit!155470)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1234 (Regex!15505 Regex!15505 List!62816) Unit!155470)

(assert (=> b!5516011 (= lt!2246133 (lemmaExistCutMatchRandMatchRSpecEquivalent!1234 (regOne!31522 r!7292) (regTwo!31522 r!7292) s!2326))))

(assert (=> b!5516011 (= lt!2246146 (Exists!2605 lambda!295645))))

(declare-datatypes ((tuple2!65204 0))(
  ( (tuple2!65205 (_1!35905 List!62816) (_2!35905 List!62816)) )
))
(declare-datatypes ((Option!15514 0))(
  ( (None!15513) (Some!15513 (v!51548 tuple2!65204)) )
))
(declare-fun isDefined!12217 (Option!15514) Bool)

(declare-fun findConcatSeparation!1928 (Regex!15505 Regex!15505 List!62816 List!62816 List!62816) Option!15514)

(assert (=> b!5516011 (= lt!2246146 (isDefined!12217 (findConcatSeparation!1928 (regOne!31522 r!7292) (regTwo!31522 r!7292) Nil!62692 s!2326 s!2326)))))

(declare-fun lt!2246157 () Unit!155470)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1692 (Regex!15505 Regex!15505 List!62816) Unit!155470)

(assert (=> b!5516011 (= lt!2246157 (lemmaFindConcatSeparationEquivalentToExists!1692 (regOne!31522 r!7292) (regTwo!31522 r!7292) s!2326))))

(declare-fun e!3410914 () Bool)

(declare-fun b!5516012 () Bool)

(declare-fun e!3410920 () Bool)

(declare-fun tp!1517504 () Bool)

(declare-fun inv!82009 (Context!9778) Bool)

(assert (=> b!5516012 (= e!3410920 (and (inv!82009 (h!69139 zl!343)) e!3410914 tp!1517504))))

(declare-fun b!5516013 () Bool)

(declare-fun res!2350173 () Bool)

(declare-fun e!3410924 () Bool)

(assert (=> b!5516013 (=> (not res!2350173) (not e!3410924))))

(declare-fun unfocusZipper!1247 (List!62815) Regex!15505)

(assert (=> b!5516013 (= res!2350173 (= r!7292 (unfocusZipper!1247 zl!343)))))

(declare-fun b!5516014 () Bool)

(declare-fun res!2350178 () Bool)

(declare-fun e!3410922 () Bool)

(assert (=> b!5516014 (=> res!2350178 e!3410922)))

(declare-fun lt!2246145 () (InoxSet Context!9778))

(declare-fun lt!2246132 () (InoxSet Context!9778))

(declare-fun lt!2246150 () (InoxSet Context!9778))

(declare-fun lt!2246143 () (InoxSet Context!9778))

(declare-fun lt!2246156 () (InoxSet Context!9778))

(assert (=> b!5516014 (= res!2350178 (or (not (= lt!2246150 ((_ map or) lt!2246145 lt!2246143))) (not (= lt!2246150 lt!2246156)) (not (= lt!2246150 lt!2246132))))))

(declare-fun b!5516016 () Bool)

(declare-fun e!3410921 () Bool)

(declare-fun e!3410918 () Bool)

(assert (=> b!5516016 (= e!3410921 e!3410918)))

(declare-fun res!2350180 () Bool)

(assert (=> b!5516016 (=> res!2350180 e!3410918)))

(assert (=> b!5516016 (= res!2350180 (not (= lt!2246132 lt!2246156)))))

(assert (=> b!5516016 (= lt!2246156 ((_ map or) lt!2246145 lt!2246153))))

(declare-fun b!5516017 () Bool)

(assert (=> b!5516017 (= e!3410918 e!3410922)))

(declare-fun res!2350181 () Bool)

(assert (=> b!5516017 (=> res!2350181 e!3410922)))

(declare-fun lt!2246147 () Bool)

(assert (=> b!5516017 (= res!2350181 (not (= lt!2246147 (matchZipper!1663 lt!2246132 (t!376065 s!2326)))))))

(declare-fun lt!2246135 () Bool)

(assert (=> b!5516017 (= lt!2246135 lt!2246147)))

(assert (=> b!5516017 (= lt!2246147 e!3410919)))

(declare-fun res!2350183 () Bool)

(assert (=> b!5516017 (=> res!2350183 e!3410919)))

(declare-fun lt!2246151 () Bool)

(assert (=> b!5516017 (= res!2350183 lt!2246151)))

(assert (=> b!5516017 (= lt!2246135 (matchZipper!1663 lt!2246156 (t!376065 s!2326)))))

(assert (=> b!5516017 (= lt!2246151 (matchZipper!1663 lt!2246145 (t!376065 s!2326)))))

(declare-fun lt!2246141 () Unit!155470)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!552 ((InoxSet Context!9778) (InoxSet Context!9778) List!62816) Unit!155470)

(assert (=> b!5516017 (= lt!2246141 (lemmaZipperConcatMatchesSameAsBothZippers!552 lt!2246145 lt!2246153 (t!376065 s!2326)))))

(declare-fun b!5516018 () Bool)

(declare-fun tp!1517511 () Bool)

(assert (=> b!5516018 (= e!3410914 tp!1517511)))

(declare-fun b!5516019 () Bool)

(declare-fun e!3410916 () Bool)

(declare-fun tp_is_empty!40263 () Bool)

(declare-fun tp!1517507 () Bool)

(assert (=> b!5516019 (= e!3410916 (and tp_is_empty!40263 tp!1517507))))

(declare-fun setIsEmpty!36663 () Bool)

(declare-fun setRes!36663 () Bool)

(assert (=> setIsEmpty!36663 setRes!36663))

(declare-fun b!5516020 () Bool)

(declare-fun e!3410923 () Bool)

(declare-fun tp!1517508 () Bool)

(assert (=> b!5516020 (= e!3410923 tp!1517508)))

(declare-fun setElem!36663 () Context!9778)

(declare-fun setNonEmpty!36663 () Bool)

(declare-fun tp!1517510 () Bool)

(assert (=> setNonEmpty!36663 (= setRes!36663 (and tp!1517510 (inv!82009 setElem!36663) e!3410923))))

(declare-fun z!1189 () (InoxSet Context!9778))

(declare-fun setRest!36663 () (InoxSet Context!9778))

(assert (=> setNonEmpty!36663 (= z!1189 ((_ map or) (store ((as const (Array Context!9778 Bool)) false) setElem!36663 true) setRest!36663))))

(declare-fun b!5516021 () Bool)

(declare-fun res!2350190 () Bool)

(assert (=> b!5516021 (=> res!2350190 e!3410917)))

(declare-fun generalisedUnion!1368 (List!62814) Regex!15505)

(declare-fun unfocusZipperList!933 (List!62815) List!62814)

(assert (=> b!5516021 (= res!2350190 (not (= r!7292 (generalisedUnion!1368 (unfocusZipperList!933 zl!343)))))))

(declare-fun b!5516022 () Bool)

(declare-fun tp!1517506 () Bool)

(declare-fun tp!1517503 () Bool)

(assert (=> b!5516022 (= e!3410925 (and tp!1517506 tp!1517503))))

(declare-fun b!5516023 () Bool)

(assert (=> b!5516023 (= e!3410924 (not e!3410917))))

(declare-fun res!2350176 () Bool)

(assert (=> b!5516023 (=> res!2350176 e!3410917)))

(assert (=> b!5516023 (= res!2350176 (not ((_ is Cons!62691) zl!343)))))

(declare-fun matchRSpec!2608 (Regex!15505 List!62816) Bool)

(assert (=> b!5516023 (= lt!2246136 (matchRSpec!2608 r!7292 s!2326))))

(declare-fun matchR!7690 (Regex!15505 List!62816) Bool)

(assert (=> b!5516023 (= lt!2246136 (matchR!7690 r!7292 s!2326))))

(declare-fun lt!2246149 () Unit!155470)

(declare-fun mainMatchTheorem!2608 (Regex!15505 List!62816) Unit!155470)

(assert (=> b!5516023 (= lt!2246149 (mainMatchTheorem!2608 r!7292 s!2326))))

(declare-fun b!5516024 () Bool)

(assert (=> b!5516024 (= e!3410925 tp_is_empty!40263)))

(declare-fun res!2350177 () Bool)

(assert (=> start!576006 (=> (not res!2350177) (not e!3410924))))

(declare-fun validRegex!7241 (Regex!15505) Bool)

(assert (=> start!576006 (= res!2350177 (validRegex!7241 r!7292))))

(assert (=> start!576006 e!3410924))

(assert (=> start!576006 e!3410925))

(declare-fun condSetEmpty!36663 () Bool)

(assert (=> start!576006 (= condSetEmpty!36663 (= z!1189 ((as const (Array Context!9778 Bool)) false)))))

(assert (=> start!576006 setRes!36663))

(assert (=> start!576006 e!3410920))

(assert (=> start!576006 e!3410916))

(declare-fun e!3410913 () Bool)

(declare-fun e!3410926 () Bool)

(assert (=> b!5516015 (= e!3410913 e!3410926)))

(declare-fun res!2350189 () Bool)

(assert (=> b!5516015 (=> res!2350189 e!3410926)))

(declare-fun lt!2246130 () (InoxSet Context!9778))

(assert (=> b!5516015 (= res!2350189 (not (= lt!2246132 lt!2246130)))))

(declare-fun lambda!295647 () Int)

(declare-fun flatMap!1118 ((InoxSet Context!9778) Int) (InoxSet Context!9778))

(declare-fun derivationStepZipperUp!773 (Context!9778 C!31280) (InoxSet Context!9778))

(assert (=> b!5516015 (= (flatMap!1118 z!1189 lambda!295647) (derivationStepZipperUp!773 (h!69139 zl!343) (h!69140 s!2326)))))

(declare-fun lt!2246131 () Unit!155470)

(declare-fun lemmaFlatMapOnSingletonSet!650 ((InoxSet Context!9778) Context!9778 Int) Unit!155470)

(assert (=> b!5516015 (= lt!2246131 (lemmaFlatMapOnSingletonSet!650 z!1189 (h!69139 zl!343) lambda!295647))))

(declare-fun b!5516025 () Bool)

(assert (=> b!5516025 (= e!3410922 true)))

(declare-fun lt!2246142 () Bool)

(declare-fun lt!2246148 () (InoxSet Context!9778))

(declare-fun derivationStepZipper!1610 ((InoxSet Context!9778) C!31280) (InoxSet Context!9778))

(assert (=> b!5516025 (= lt!2246142 (matchZipper!1663 (derivationStepZipper!1610 lt!2246148 (h!69140 s!2326)) (t!376065 s!2326)))))

(declare-fun lt!2246140 () Bool)

(assert (=> b!5516025 (= lt!2246140 (matchZipper!1663 lt!2246148 s!2326))))

(declare-fun b!5516026 () Bool)

(declare-fun res!2350175 () Bool)

(assert (=> b!5516026 (=> res!2350175 e!3410917)))

(assert (=> b!5516026 (= res!2350175 (or ((_ is EmptyExpr!15505) r!7292) ((_ is EmptyLang!15505) r!7292) ((_ is ElementMatch!15505) r!7292) ((_ is Union!15505) r!7292) (not ((_ is Concat!24350) r!7292))))))

(declare-fun b!5516027 () Bool)

(assert (=> b!5516027 (= e!3410926 e!3410921)))

(declare-fun res!2350184 () Bool)

(assert (=> b!5516027 (=> res!2350184 e!3410921)))

(declare-fun nullable!5539 (Regex!15505) Bool)

(assert (=> b!5516027 (= res!2350184 (not (nullable!5539 (regOne!31522 r!7292))))))

(declare-fun lt!2246139 () Context!9778)

(declare-fun derivationStepZipperDown!847 (Regex!15505 Context!9778 C!31280) (InoxSet Context!9778))

(assert (=> b!5516027 (= lt!2246153 (derivationStepZipperDown!847 (regTwo!31522 r!7292) lt!2246139 (h!69140 s!2326)))))

(declare-fun lt!2246138 () Context!9778)

(assert (=> b!5516027 (= lt!2246145 (derivationStepZipperDown!847 (regOne!31522 r!7292) lt!2246138 (h!69140 s!2326)))))

(declare-fun lt!2246137 () (InoxSet Context!9778))

(assert (=> b!5516027 (= (flatMap!1118 lt!2246137 lambda!295647) (derivationStepZipperUp!773 lt!2246138 (h!69140 s!2326)))))

(declare-fun lt!2246152 () Unit!155470)

(assert (=> b!5516027 (= lt!2246152 (lemmaFlatMapOnSingletonSet!650 lt!2246137 lt!2246138 lambda!295647))))

(declare-fun lt!2246134 () Context!9778)

(assert (=> b!5516027 (= (flatMap!1118 lt!2246148 lambda!295647) (derivationStepZipperUp!773 lt!2246134 (h!69140 s!2326)))))

(declare-fun lt!2246154 () Unit!155470)

(assert (=> b!5516027 (= lt!2246154 (lemmaFlatMapOnSingletonSet!650 lt!2246148 lt!2246134 lambda!295647))))

(assert (=> b!5516027 (= lt!2246143 (derivationStepZipperUp!773 lt!2246138 (h!69140 s!2326)))))

(assert (=> b!5516027 (= lt!2246150 (derivationStepZipperUp!773 lt!2246134 (h!69140 s!2326)))))

(assert (=> b!5516027 (= lt!2246137 (store ((as const (Array Context!9778 Bool)) false) lt!2246138 true))))

(declare-fun lt!2246155 () List!62814)

(assert (=> b!5516027 (= lt!2246138 (Context!9779 lt!2246155))))

(assert (=> b!5516027 (= lt!2246148 (store ((as const (Array Context!9778 Bool)) false) lt!2246134 true))))

(assert (=> b!5516027 (= lt!2246134 (Context!9779 (Cons!62690 (regOne!31522 r!7292) lt!2246155)))))

(assert (=> b!5516027 (= lt!2246155 (Cons!62690 (regTwo!31522 r!7292) Nil!62690))))

(declare-fun b!5516028 () Bool)

(declare-fun res!2350187 () Bool)

(assert (=> b!5516028 (=> (not res!2350187) (not e!3410924))))

(declare-fun toList!9289 ((InoxSet Context!9778)) List!62815)

(assert (=> b!5516028 (= res!2350187 (= (toList!9289 z!1189) zl!343))))

(declare-fun b!5516029 () Bool)

(declare-fun tp!1517505 () Bool)

(declare-fun tp!1517509 () Bool)

(assert (=> b!5516029 (= e!3410925 (and tp!1517505 tp!1517509))))

(declare-fun b!5516030 () Bool)

(assert (=> b!5516030 (= e!3410915 e!3410913)))

(declare-fun res!2350188 () Bool)

(assert (=> b!5516030 (=> res!2350188 e!3410913)))

(declare-fun lt!2246144 () (InoxSet Context!9778))

(assert (=> b!5516030 (= res!2350188 (not (= lt!2246144 lt!2246130)))))

(assert (=> b!5516030 (= lt!2246130 (derivationStepZipperDown!847 r!7292 lt!2246139 (h!69140 s!2326)))))

(assert (=> b!5516030 (= lt!2246139 (Context!9779 Nil!62690))))

(assert (=> b!5516030 (= lt!2246144 (derivationStepZipperUp!773 (Context!9779 (Cons!62690 r!7292 Nil!62690)) (h!69140 s!2326)))))

(assert (=> b!5516030 (= lt!2246132 (derivationStepZipper!1610 z!1189 (h!69140 s!2326)))))

(assert (= (and start!576006 res!2350177) b!5516028))

(assert (= (and b!5516028 res!2350187) b!5516013))

(assert (= (and b!5516013 res!2350173) b!5516023))

(assert (= (and b!5516023 (not res!2350176)) b!5516007))

(assert (= (and b!5516007 (not res!2350186)) b!5516005))

(assert (= (and b!5516005 (not res!2350174)) b!5516008))

(assert (= (and b!5516008 (not res!2350179)) b!5516021))

(assert (= (and b!5516021 (not res!2350190)) b!5516026))

(assert (= (and b!5516026 (not res!2350175)) b!5516011))

(assert (= (and b!5516011 (not res!2350182)) b!5516009))

(assert (= (and b!5516009 (not res!2350185)) b!5516030))

(assert (= (and b!5516030 (not res!2350188)) b!5516015))

(assert (= (and b!5516015 (not res!2350189)) b!5516027))

(assert (= (and b!5516027 (not res!2350184)) b!5516016))

(assert (= (and b!5516016 (not res!2350180)) b!5516017))

(assert (= (and b!5516017 (not res!2350183)) b!5516010))

(assert (= (and b!5516017 (not res!2350181)) b!5516014))

(assert (= (and b!5516014 (not res!2350178)) b!5516025))

(assert (= (and start!576006 ((_ is ElementMatch!15505) r!7292)) b!5516024))

(assert (= (and start!576006 ((_ is Concat!24350) r!7292)) b!5516029))

(assert (= (and start!576006 ((_ is Star!15505) r!7292)) b!5516006))

(assert (= (and start!576006 ((_ is Union!15505) r!7292)) b!5516022))

(assert (= (and start!576006 condSetEmpty!36663) setIsEmpty!36663))

(assert (= (and start!576006 (not condSetEmpty!36663)) setNonEmpty!36663))

(assert (= setNonEmpty!36663 b!5516020))

(assert (= b!5516012 b!5516018))

(assert (= (and start!576006 ((_ is Cons!62691) zl!343)) b!5516012))

(assert (= (and start!576006 ((_ is Cons!62692) s!2326)) b!5516019))

(declare-fun m!6519952 () Bool)

(assert (=> b!5516027 m!6519952))

(declare-fun m!6519954 () Bool)

(assert (=> b!5516027 m!6519954))

(declare-fun m!6519956 () Bool)

(assert (=> b!5516027 m!6519956))

(declare-fun m!6519958 () Bool)

(assert (=> b!5516027 m!6519958))

(declare-fun m!6519960 () Bool)

(assert (=> b!5516027 m!6519960))

(declare-fun m!6519962 () Bool)

(assert (=> b!5516027 m!6519962))

(declare-fun m!6519964 () Bool)

(assert (=> b!5516027 m!6519964))

(declare-fun m!6519966 () Bool)

(assert (=> b!5516027 m!6519966))

(declare-fun m!6519968 () Bool)

(assert (=> b!5516027 m!6519968))

(declare-fun m!6519970 () Bool)

(assert (=> b!5516027 m!6519970))

(declare-fun m!6519972 () Bool)

(assert (=> b!5516027 m!6519972))

(declare-fun m!6519974 () Bool)

(assert (=> b!5516009 m!6519974))

(declare-fun m!6519976 () Bool)

(assert (=> b!5516007 m!6519976))

(declare-fun m!6519978 () Bool)

(assert (=> b!5516023 m!6519978))

(declare-fun m!6519980 () Bool)

(assert (=> b!5516023 m!6519980))

(declare-fun m!6519982 () Bool)

(assert (=> b!5516023 m!6519982))

(declare-fun m!6519984 () Bool)

(assert (=> b!5516013 m!6519984))

(declare-fun m!6519986 () Bool)

(assert (=> b!5516021 m!6519986))

(assert (=> b!5516021 m!6519986))

(declare-fun m!6519988 () Bool)

(assert (=> b!5516021 m!6519988))

(declare-fun m!6519990 () Bool)

(assert (=> b!5516012 m!6519990))

(declare-fun m!6519992 () Bool)

(assert (=> start!576006 m!6519992))

(declare-fun m!6519994 () Bool)

(assert (=> setNonEmpty!36663 m!6519994))

(declare-fun m!6519996 () Bool)

(assert (=> b!5516010 m!6519996))

(declare-fun m!6519998 () Bool)

(assert (=> b!5516011 m!6519998))

(declare-fun m!6520000 () Bool)

(assert (=> b!5516011 m!6520000))

(declare-fun m!6520002 () Bool)

(assert (=> b!5516011 m!6520002))

(declare-fun m!6520004 () Bool)

(assert (=> b!5516011 m!6520004))

(assert (=> b!5516011 m!6520002))

(declare-fun m!6520006 () Bool)

(assert (=> b!5516011 m!6520006))

(declare-fun m!6520008 () Bool)

(assert (=> b!5516011 m!6520008))

(assert (=> b!5516011 m!6519998))

(declare-fun m!6520010 () Bool)

(assert (=> b!5516028 m!6520010))

(declare-fun m!6520012 () Bool)

(assert (=> b!5516005 m!6520012))

(declare-fun m!6520014 () Bool)

(assert (=> b!5516017 m!6520014))

(declare-fun m!6520016 () Bool)

(assert (=> b!5516017 m!6520016))

(declare-fun m!6520018 () Bool)

(assert (=> b!5516017 m!6520018))

(declare-fun m!6520020 () Bool)

(assert (=> b!5516017 m!6520020))

(declare-fun m!6520022 () Bool)

(assert (=> b!5516015 m!6520022))

(declare-fun m!6520024 () Bool)

(assert (=> b!5516015 m!6520024))

(declare-fun m!6520026 () Bool)

(assert (=> b!5516015 m!6520026))

(declare-fun m!6520028 () Bool)

(assert (=> b!5516030 m!6520028))

(declare-fun m!6520030 () Bool)

(assert (=> b!5516030 m!6520030))

(declare-fun m!6520032 () Bool)

(assert (=> b!5516030 m!6520032))

(declare-fun m!6520034 () Bool)

(assert (=> b!5516025 m!6520034))

(assert (=> b!5516025 m!6520034))

(declare-fun m!6520036 () Bool)

(assert (=> b!5516025 m!6520036))

(declare-fun m!6520038 () Bool)

(assert (=> b!5516025 m!6520038))

(check-sat (not start!576006) (not b!5516029) (not b!5516020) (not b!5516023) (not b!5516010) (not b!5516022) (not b!5516028) (not b!5516017) (not b!5516006) (not b!5516015) (not setNonEmpty!36663) (not b!5516013) (not b!5516009) (not b!5516021) (not b!5516012) (not b!5516025) tp_is_empty!40263 (not b!5516005) (not b!5516018) (not b!5516007) (not b!5516030) (not b!5516019) (not b!5516011) (not b!5516027))
(check-sat)
