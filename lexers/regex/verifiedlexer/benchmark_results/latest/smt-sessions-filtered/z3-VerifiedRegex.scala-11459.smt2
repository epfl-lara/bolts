; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!620894 () Bool)

(assert start!620894)

(declare-fun b!6231218 () Bool)

(assert (=> b!6231218 true))

(assert (=> b!6231218 true))

(declare-fun lambda!340714 () Int)

(declare-fun lambda!340713 () Int)

(assert (=> b!6231218 (not (= lambda!340714 lambda!340713))))

(assert (=> b!6231218 true))

(assert (=> b!6231218 true))

(declare-fun b!6231209 () Bool)

(assert (=> b!6231209 true))

(declare-fun b!6231195 () Bool)

(declare-fun e!3792440 () Bool)

(declare-fun e!3792429 () Bool)

(assert (=> b!6231195 (= e!3792440 (not e!3792429))))

(declare-fun res!2574555 () Bool)

(assert (=> b!6231195 (=> res!2574555 e!3792429)))

(declare-datatypes ((C!32600 0))(
  ( (C!32601 (val!26002 Int)) )
))
(declare-datatypes ((Regex!16165 0))(
  ( (ElementMatch!16165 (c!1126449 C!32600)) (Concat!25010 (regOne!32842 Regex!16165) (regTwo!32842 Regex!16165)) (EmptyExpr!16165) (Star!16165 (reg!16494 Regex!16165)) (EmptyLang!16165) (Union!16165 (regOne!32843 Regex!16165) (regTwo!32843 Regex!16165)) )
))
(declare-datatypes ((List!64794 0))(
  ( (Nil!64670) (Cons!64670 (h!71118 Regex!16165) (t!378334 List!64794)) )
))
(declare-datatypes ((Context!11098 0))(
  ( (Context!11099 (exprs!6049 List!64794)) )
))
(declare-datatypes ((List!64795 0))(
  ( (Nil!64671) (Cons!64671 (h!71119 Context!11098) (t!378335 List!64795)) )
))
(declare-fun zl!343 () List!64795)

(get-info :version)

(assert (=> b!6231195 (= res!2574555 (not ((_ is Cons!64671) zl!343)))))

(declare-fun lt!2346208 () Bool)

(declare-fun r!7292 () Regex!16165)

(declare-datatypes ((List!64796 0))(
  ( (Nil!64672) (Cons!64672 (h!71120 C!32600) (t!378336 List!64796)) )
))
(declare-fun s!2326 () List!64796)

(declare-fun matchRSpec!3266 (Regex!16165 List!64796) Bool)

(assert (=> b!6231195 (= lt!2346208 (matchRSpec!3266 r!7292 s!2326))))

(declare-fun matchR!8348 (Regex!16165 List!64796) Bool)

(assert (=> b!6231195 (= lt!2346208 (matchR!8348 r!7292 s!2326))))

(declare-datatypes ((Unit!157991 0))(
  ( (Unit!157992) )
))
(declare-fun lt!2346193 () Unit!157991)

(declare-fun mainMatchTheorem!3266 (Regex!16165 List!64796) Unit!157991)

(assert (=> b!6231195 (= lt!2346193 (mainMatchTheorem!3266 r!7292 s!2326))))

(declare-fun b!6231196 () Bool)

(declare-fun e!3792430 () Bool)

(declare-fun tp!1738181 () Bool)

(assert (=> b!6231196 (= e!3792430 tp!1738181)))

(declare-fun b!6231197 () Bool)

(declare-fun e!3792437 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2346197 () (InoxSet Context!11098))

(declare-fun matchZipper!2177 ((InoxSet Context!11098) List!64796) Bool)

(assert (=> b!6231197 (= e!3792437 (matchZipper!2177 lt!2346197 (t!378336 s!2326)))))

(declare-fun b!6231198 () Bool)

(declare-fun tp!1738187 () Bool)

(declare-fun tp!1738184 () Bool)

(assert (=> b!6231198 (= e!3792430 (and tp!1738187 tp!1738184))))

(declare-fun b!6231199 () Bool)

(declare-fun e!3792432 () Bool)

(declare-fun tp_is_empty!41583 () Bool)

(declare-fun tp!1738183 () Bool)

(assert (=> b!6231199 (= e!3792432 (and tp_is_empty!41583 tp!1738183))))

(declare-fun b!6231200 () Bool)

(declare-fun e!3792445 () Bool)

(declare-fun e!3792427 () Bool)

(assert (=> b!6231200 (= e!3792445 e!3792427)))

(declare-fun res!2574575 () Bool)

(assert (=> b!6231200 (=> res!2574575 e!3792427)))

(declare-fun lt!2346216 () (InoxSet Context!11098))

(declare-fun lt!2346218 () (InoxSet Context!11098))

(assert (=> b!6231200 (= res!2574575 (not (= lt!2346216 lt!2346218)))))

(declare-fun lt!2346198 () (InoxSet Context!11098))

(assert (=> b!6231200 (= lt!2346218 ((_ map or) lt!2346198 lt!2346197))))

(declare-fun lt!2346207 () Context!11098)

(declare-fun derivationStepZipperDown!1413 (Regex!16165 Context!11098 C!32600) (InoxSet Context!11098))

(assert (=> b!6231200 (= lt!2346197 (derivationStepZipperDown!1413 (regTwo!32842 (regOne!32842 r!7292)) lt!2346207 (h!71120 s!2326)))))

(declare-fun lt!2346200 () Context!11098)

(assert (=> b!6231200 (= lt!2346198 (derivationStepZipperDown!1413 (regOne!32842 (regOne!32842 r!7292)) lt!2346200 (h!71120 s!2326)))))

(declare-fun lt!2346210 () List!64794)

(assert (=> b!6231200 (= lt!2346200 (Context!11099 lt!2346210))))

(assert (=> b!6231200 (= lt!2346210 (Cons!64670 (regTwo!32842 (regOne!32842 r!7292)) (t!378334 (exprs!6049 (h!71119 zl!343)))))))

(declare-fun b!6231201 () Bool)

(assert (=> b!6231201 (= e!3792430 tp_is_empty!41583)))

(declare-fun b!6231202 () Bool)

(declare-fun tp!1738188 () Bool)

(declare-fun tp!1738182 () Bool)

(assert (=> b!6231202 (= e!3792430 (and tp!1738188 tp!1738182))))

(declare-fun b!6231203 () Bool)

(declare-fun e!3792442 () Bool)

(declare-fun inv!83659 (Context!11098) Bool)

(assert (=> b!6231203 (= e!3792442 (inv!83659 (h!71119 zl!343)))))

(declare-fun b!6231204 () Bool)

(declare-fun res!2574558 () Bool)

(assert (=> b!6231204 (=> res!2574558 e!3792429)))

(assert (=> b!6231204 (= res!2574558 (or ((_ is EmptyExpr!16165) r!7292) ((_ is EmptyLang!16165) r!7292) ((_ is ElementMatch!16165) r!7292) ((_ is Union!16165) r!7292) (not ((_ is Concat!25010) r!7292))))))

(declare-fun b!6231205 () Bool)

(declare-fun res!2574559 () Bool)

(assert (=> b!6231205 (=> res!2574559 e!3792429)))

(assert (=> b!6231205 (= res!2574559 (not ((_ is Cons!64670) (exprs!6049 (h!71119 zl!343)))))))

(declare-fun b!6231206 () Bool)

(declare-fun res!2574561 () Bool)

(assert (=> b!6231206 (=> (not res!2574561) (not e!3792440))))

(declare-fun z!1189 () (InoxSet Context!11098))

(declare-fun toList!9949 ((InoxSet Context!11098)) List!64795)

(assert (=> b!6231206 (= res!2574561 (= (toList!9949 z!1189) zl!343))))

(declare-fun b!6231207 () Bool)

(declare-fun e!3792434 () Bool)

(declare-fun lt!2346206 () (InoxSet Context!11098))

(declare-fun derivationStepZipper!2131 ((InoxSet Context!11098) C!32600) (InoxSet Context!11098))

(assert (=> b!6231207 (= e!3792434 (not (matchZipper!2177 (derivationStepZipper!2131 lt!2346206 (h!71120 s!2326)) (t!378336 s!2326))))))

(declare-fun b!6231208 () Bool)

(declare-fun res!2574554 () Bool)

(assert (=> b!6231208 (=> (not res!2574554) (not e!3792440))))

(declare-fun unfocusZipper!1907 (List!64795) Regex!16165)

(assert (=> b!6231208 (= res!2574554 (= r!7292 (unfocusZipper!1907 zl!343)))))

(declare-fun e!3792431 () Bool)

(assert (=> b!6231209 (= e!3792431 e!3792445)))

(declare-fun res!2574560 () Bool)

(assert (=> b!6231209 (=> res!2574560 e!3792445)))

(assert (=> b!6231209 (= res!2574560 (or (and ((_ is ElementMatch!16165) (regOne!32842 r!7292)) (= (c!1126449 (regOne!32842 r!7292)) (h!71120 s!2326))) ((_ is Union!16165) (regOne!32842 r!7292)) (not ((_ is Concat!25010) (regOne!32842 r!7292)))))))

(declare-fun lt!2346213 () Unit!157991)

(declare-fun e!3792444 () Unit!157991)

(assert (=> b!6231209 (= lt!2346213 e!3792444)))

(declare-fun c!1126448 () Bool)

(declare-fun nullable!6158 (Regex!16165) Bool)

(assert (=> b!6231209 (= c!1126448 (nullable!6158 (h!71118 (exprs!6049 (h!71119 zl!343)))))))

(declare-fun lambda!340715 () Int)

(declare-fun flatMap!1670 ((InoxSet Context!11098) Int) (InoxSet Context!11098))

(declare-fun derivationStepZipperUp!1339 (Context!11098 C!32600) (InoxSet Context!11098))

(assert (=> b!6231209 (= (flatMap!1670 z!1189 lambda!340715) (derivationStepZipperUp!1339 (h!71119 zl!343) (h!71120 s!2326)))))

(declare-fun lt!2346199 () Unit!157991)

(declare-fun lemmaFlatMapOnSingletonSet!1196 ((InoxSet Context!11098) Context!11098 Int) Unit!157991)

(assert (=> b!6231209 (= lt!2346199 (lemmaFlatMapOnSingletonSet!1196 z!1189 (h!71119 zl!343) lambda!340715))))

(declare-fun lt!2346215 () (InoxSet Context!11098))

(assert (=> b!6231209 (= lt!2346215 (derivationStepZipperUp!1339 lt!2346207 (h!71120 s!2326)))))

(assert (=> b!6231209 (= lt!2346216 (derivationStepZipperDown!1413 (h!71118 (exprs!6049 (h!71119 zl!343))) lt!2346207 (h!71120 s!2326)))))

(assert (=> b!6231209 (= lt!2346207 (Context!11099 (t!378334 (exprs!6049 (h!71119 zl!343)))))))

(declare-fun lt!2346211 () (InoxSet Context!11098))

(assert (=> b!6231209 (= lt!2346211 (derivationStepZipperUp!1339 (Context!11099 (Cons!64670 (h!71118 (exprs!6049 (h!71119 zl!343))) (t!378334 (exprs!6049 (h!71119 zl!343))))) (h!71120 s!2326)))))

(declare-fun b!6231210 () Bool)

(declare-fun e!3792441 () Bool)

(assert (=> b!6231210 (= e!3792427 e!3792441)))

(declare-fun res!2574563 () Bool)

(assert (=> b!6231210 (=> res!2574563 e!3792441)))

(declare-fun e!3792435 () Bool)

(assert (=> b!6231210 (= res!2574563 e!3792435)))

(declare-fun res!2574565 () Bool)

(assert (=> b!6231210 (=> (not res!2574565) (not e!3792435))))

(declare-fun lt!2346201 () Bool)

(declare-fun lt!2346204 () Bool)

(assert (=> b!6231210 (= res!2574565 (not (= lt!2346201 lt!2346204)))))

(assert (=> b!6231210 (= lt!2346201 (matchZipper!2177 lt!2346216 (t!378336 s!2326)))))

(assert (=> b!6231210 (= (matchZipper!2177 lt!2346218 (t!378336 s!2326)) e!3792437)))

(declare-fun res!2574576 () Bool)

(assert (=> b!6231210 (=> res!2574576 e!3792437)))

(assert (=> b!6231210 (= res!2574576 lt!2346204)))

(assert (=> b!6231210 (= lt!2346204 (matchZipper!2177 lt!2346198 (t!378336 s!2326)))))

(declare-fun lt!2346202 () Unit!157991)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!996 ((InoxSet Context!11098) (InoxSet Context!11098) List!64796) Unit!157991)

(assert (=> b!6231210 (= lt!2346202 (lemmaZipperConcatMatchesSameAsBothZippers!996 lt!2346198 lt!2346197 (t!378336 s!2326)))))

(declare-fun b!6231211 () Bool)

(declare-fun res!2574570 () Bool)

(assert (=> b!6231211 (=> res!2574570 e!3792429)))

(declare-fun generalisedUnion!2009 (List!64794) Regex!16165)

(declare-fun unfocusZipperList!1586 (List!64795) List!64794)

(assert (=> b!6231211 (= res!2574570 (not (= r!7292 (generalisedUnion!2009 (unfocusZipperList!1586 zl!343)))))))

(declare-fun b!6231212 () Bool)

(declare-fun res!2574571 () Bool)

(assert (=> b!6231212 (=> res!2574571 e!3792429)))

(declare-fun isEmpty!36686 (List!64795) Bool)

(assert (=> b!6231212 (= res!2574571 (not (isEmpty!36686 (t!378335 zl!343))))))

(declare-fun b!6231213 () Bool)

(declare-fun Unit!157993 () Unit!157991)

(assert (=> b!6231213 (= e!3792444 Unit!157993)))

(declare-fun b!6231214 () Bool)

(declare-fun e!3792443 () Bool)

(declare-fun lt!2346195 () (InoxSet Context!11098))

(assert (=> b!6231214 (= e!3792443 (matchZipper!2177 lt!2346195 (t!378336 s!2326)))))

(declare-fun b!6231215 () Bool)

(declare-fun e!3792428 () Bool)

(assert (=> b!6231215 (= e!3792428 (matchZipper!2177 lt!2346215 (t!378336 s!2326)))))

(declare-fun b!6231216 () Bool)

(declare-fun res!2574564 () Bool)

(assert (=> b!6231216 (=> res!2574564 e!3792429)))

(declare-fun generalisedConcat!1762 (List!64794) Regex!16165)

(assert (=> b!6231216 (= res!2574564 (not (= r!7292 (generalisedConcat!1762 (exprs!6049 (h!71119 zl!343))))))))

(declare-fun b!6231217 () Bool)

(assert (=> b!6231217 (= e!3792435 (not (matchZipper!2177 lt!2346197 (t!378336 s!2326))))))

(assert (=> b!6231218 (= e!3792429 e!3792431)))

(declare-fun res!2574566 () Bool)

(assert (=> b!6231218 (=> res!2574566 e!3792431)))

(declare-fun lt!2346209 () Bool)

(assert (=> b!6231218 (= res!2574566 (or (not (= lt!2346208 lt!2346209)) ((_ is Nil!64672) s!2326)))))

(declare-fun Exists!3235 (Int) Bool)

(assert (=> b!6231218 (= (Exists!3235 lambda!340713) (Exists!3235 lambda!340714))))

(declare-fun lt!2346203 () Unit!157991)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1772 (Regex!16165 Regex!16165 List!64796) Unit!157991)

(assert (=> b!6231218 (= lt!2346203 (lemmaExistCutMatchRandMatchRSpecEquivalent!1772 (regOne!32842 r!7292) (regTwo!32842 r!7292) s!2326))))

(assert (=> b!6231218 (= lt!2346209 (Exists!3235 lambda!340713))))

(declare-datatypes ((tuple2!66288 0))(
  ( (tuple2!66289 (_1!36447 List!64796) (_2!36447 List!64796)) )
))
(declare-datatypes ((Option!16056 0))(
  ( (None!16055) (Some!16055 (v!52202 tuple2!66288)) )
))
(declare-fun isDefined!12759 (Option!16056) Bool)

(declare-fun findConcatSeparation!2470 (Regex!16165 Regex!16165 List!64796 List!64796 List!64796) Option!16056)

(assert (=> b!6231218 (= lt!2346209 (isDefined!12759 (findConcatSeparation!2470 (regOne!32842 r!7292) (regTwo!32842 r!7292) Nil!64672 s!2326 s!2326)))))

(declare-fun lt!2346219 () Unit!157991)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2234 (Regex!16165 Regex!16165 List!64796) Unit!157991)

(assert (=> b!6231218 (= lt!2346219 (lemmaFindConcatSeparationEquivalentToExists!2234 (regOne!32842 r!7292) (regTwo!32842 r!7292) s!2326))))

(declare-fun b!6231219 () Bool)

(declare-fun e!3792439 () Bool)

(assert (=> b!6231219 (= e!3792441 e!3792439)))

(declare-fun res!2574572 () Bool)

(assert (=> b!6231219 (=> res!2574572 e!3792439)))

(declare-fun lt!2346194 () (InoxSet Context!11098))

(declare-fun lt!2346196 () (InoxSet Context!11098))

(assert (=> b!6231219 (= res!2574572 (not (= lt!2346194 lt!2346196)))))

(assert (=> b!6231219 (= lt!2346196 ((_ map or) lt!2346198 lt!2346195))))

(assert (=> b!6231219 (= lt!2346195 (derivationStepZipperUp!1339 lt!2346200 (h!71120 s!2326)))))

(declare-fun lt!2346217 () Context!11098)

(declare-fun lt!2346220 () (InoxSet Context!11098))

(assert (=> b!6231219 (= (flatMap!1670 lt!2346220 lambda!340715) (derivationStepZipperUp!1339 lt!2346217 (h!71120 s!2326)))))

(declare-fun lt!2346214 () Unit!157991)

(assert (=> b!6231219 (= lt!2346214 (lemmaFlatMapOnSingletonSet!1196 lt!2346220 lt!2346217 lambda!340715))))

(declare-fun lt!2346212 () (InoxSet Context!11098))

(assert (=> b!6231219 (= lt!2346212 (derivationStepZipperUp!1339 lt!2346217 (h!71120 s!2326)))))

(assert (=> b!6231219 (= lt!2346194 (derivationStepZipper!2131 lt!2346220 (h!71120 s!2326)))))

(assert (=> b!6231219 (= lt!2346206 (store ((as const (Array Context!11098 Bool)) false) lt!2346200 true))))

(assert (=> b!6231219 (= lt!2346220 (store ((as const (Array Context!11098 Bool)) false) lt!2346217 true))))

(assert (=> b!6231219 (= lt!2346217 (Context!11099 (Cons!64670 (regOne!32842 (regOne!32842 r!7292)) lt!2346210)))))

(declare-fun b!6231220 () Bool)

(declare-fun e!3792436 () Bool)

(declare-fun tp!1738186 () Bool)

(assert (=> b!6231220 (= e!3792436 tp!1738186)))

(declare-fun b!6231221 () Bool)

(declare-fun res!2574568 () Bool)

(assert (=> b!6231221 (=> res!2574568 e!3792445)))

(assert (=> b!6231221 (= res!2574568 (not (nullable!6158 (regOne!32842 (regOne!32842 r!7292)))))))

(declare-fun tp!1738185 () Bool)

(declare-fun e!3792438 () Bool)

(declare-fun setRes!42356 () Bool)

(declare-fun setNonEmpty!42356 () Bool)

(declare-fun setElem!42356 () Context!11098)

(assert (=> setNonEmpty!42356 (= setRes!42356 (and tp!1738185 (inv!83659 setElem!42356) e!3792438))))

(declare-fun setRest!42356 () (InoxSet Context!11098))

(assert (=> setNonEmpty!42356 (= z!1189 ((_ map or) (store ((as const (Array Context!11098 Bool)) false) setElem!42356 true) setRest!42356))))

(declare-fun b!6231222 () Bool)

(declare-fun tp!1738190 () Bool)

(assert (=> b!6231222 (= e!3792438 tp!1738190)))

(declare-fun b!6231223 () Bool)

(declare-fun res!2574573 () Bool)

(assert (=> b!6231223 (=> res!2574573 e!3792442)))

(assert (=> b!6231223 (= res!2574573 (not (= (exprs!6049 (h!71119 zl!343)) (Cons!64670 (Concat!25010 (regOne!32842 (regOne!32842 r!7292)) (regTwo!32842 (regOne!32842 r!7292))) (t!378334 (exprs!6049 (h!71119 zl!343)))))))))

(declare-fun b!6231224 () Bool)

(assert (=> b!6231224 (= e!3792439 e!3792442)))

(declare-fun res!2574562 () Bool)

(assert (=> b!6231224 (=> res!2574562 e!3792442)))

(assert (=> b!6231224 (= res!2574562 e!3792434)))

(declare-fun res!2574569 () Bool)

(assert (=> b!6231224 (=> (not res!2574569) (not e!3792434))))

(assert (=> b!6231224 (= res!2574569 (not (= lt!2346201 (matchZipper!2177 lt!2346194 (t!378336 s!2326)))))))

(assert (=> b!6231224 (= (matchZipper!2177 lt!2346196 (t!378336 s!2326)) e!3792443)))

(declare-fun res!2574557 () Bool)

(assert (=> b!6231224 (=> res!2574557 e!3792443)))

(assert (=> b!6231224 (= res!2574557 lt!2346204)))

(declare-fun lt!2346221 () Unit!157991)

(assert (=> b!6231224 (= lt!2346221 (lemmaZipperConcatMatchesSameAsBothZippers!996 lt!2346198 lt!2346195 (t!378336 s!2326)))))

(assert (=> b!6231224 (= (flatMap!1670 lt!2346206 lambda!340715) (derivationStepZipperUp!1339 lt!2346200 (h!71120 s!2326)))))

(declare-fun lt!2346205 () Unit!157991)

(assert (=> b!6231224 (= lt!2346205 (lemmaFlatMapOnSingletonSet!1196 lt!2346206 lt!2346200 lambda!340715))))

(declare-fun tp!1738189 () Bool)

(declare-fun e!3792433 () Bool)

(declare-fun b!6231225 () Bool)

(assert (=> b!6231225 (= e!3792433 (and (inv!83659 (h!71119 zl!343)) e!3792436 tp!1738189))))

(declare-fun b!6231226 () Bool)

(declare-fun res!2574567 () Bool)

(assert (=> b!6231226 (=> res!2574567 e!3792431)))

(declare-fun isEmpty!36687 (List!64794) Bool)

(assert (=> b!6231226 (= res!2574567 (isEmpty!36687 (t!378334 (exprs!6049 (h!71119 zl!343)))))))

(declare-fun res!2574556 () Bool)

(assert (=> start!620894 (=> (not res!2574556) (not e!3792440))))

(declare-fun validRegex!7901 (Regex!16165) Bool)

(assert (=> start!620894 (= res!2574556 (validRegex!7901 r!7292))))

(assert (=> start!620894 e!3792440))

(assert (=> start!620894 e!3792430))

(declare-fun condSetEmpty!42356 () Bool)

(assert (=> start!620894 (= condSetEmpty!42356 (= z!1189 ((as const (Array Context!11098 Bool)) false)))))

(assert (=> start!620894 setRes!42356))

(assert (=> start!620894 e!3792433))

(assert (=> start!620894 e!3792432))

(declare-fun b!6231227 () Bool)

(declare-fun Unit!157994 () Unit!157991)

(assert (=> b!6231227 (= e!3792444 Unit!157994)))

(declare-fun lt!2346222 () Unit!157991)

(assert (=> b!6231227 (= lt!2346222 (lemmaZipperConcatMatchesSameAsBothZippers!996 lt!2346216 lt!2346215 (t!378336 s!2326)))))

(declare-fun res!2574574 () Bool)

(assert (=> b!6231227 (= res!2574574 (matchZipper!2177 lt!2346216 (t!378336 s!2326)))))

(assert (=> b!6231227 (=> res!2574574 e!3792428)))

(assert (=> b!6231227 (= (matchZipper!2177 ((_ map or) lt!2346216 lt!2346215) (t!378336 s!2326)) e!3792428)))

(declare-fun setIsEmpty!42356 () Bool)

(assert (=> setIsEmpty!42356 setRes!42356))

(assert (= (and start!620894 res!2574556) b!6231206))

(assert (= (and b!6231206 res!2574561) b!6231208))

(assert (= (and b!6231208 res!2574554) b!6231195))

(assert (= (and b!6231195 (not res!2574555)) b!6231212))

(assert (= (and b!6231212 (not res!2574571)) b!6231216))

(assert (= (and b!6231216 (not res!2574564)) b!6231205))

(assert (= (and b!6231205 (not res!2574559)) b!6231211))

(assert (= (and b!6231211 (not res!2574570)) b!6231204))

(assert (= (and b!6231204 (not res!2574558)) b!6231218))

(assert (= (and b!6231218 (not res!2574566)) b!6231226))

(assert (= (and b!6231226 (not res!2574567)) b!6231209))

(assert (= (and b!6231209 c!1126448) b!6231227))

(assert (= (and b!6231209 (not c!1126448)) b!6231213))

(assert (= (and b!6231227 (not res!2574574)) b!6231215))

(assert (= (and b!6231209 (not res!2574560)) b!6231221))

(assert (= (and b!6231221 (not res!2574568)) b!6231200))

(assert (= (and b!6231200 (not res!2574575)) b!6231210))

(assert (= (and b!6231210 (not res!2574576)) b!6231197))

(assert (= (and b!6231210 res!2574565) b!6231217))

(assert (= (and b!6231210 (not res!2574563)) b!6231219))

(assert (= (and b!6231219 (not res!2574572)) b!6231224))

(assert (= (and b!6231224 (not res!2574557)) b!6231214))

(assert (= (and b!6231224 res!2574569) b!6231207))

(assert (= (and b!6231224 (not res!2574562)) b!6231223))

(assert (= (and b!6231223 (not res!2574573)) b!6231203))

(assert (= (and start!620894 ((_ is ElementMatch!16165) r!7292)) b!6231201))

(assert (= (and start!620894 ((_ is Concat!25010) r!7292)) b!6231202))

(assert (= (and start!620894 ((_ is Star!16165) r!7292)) b!6231196))

(assert (= (and start!620894 ((_ is Union!16165) r!7292)) b!6231198))

(assert (= (and start!620894 condSetEmpty!42356) setIsEmpty!42356))

(assert (= (and start!620894 (not condSetEmpty!42356)) setNonEmpty!42356))

(assert (= setNonEmpty!42356 b!6231222))

(assert (= b!6231225 b!6231220))

(assert (= (and start!620894 ((_ is Cons!64671) zl!343)) b!6231225))

(assert (= (and start!620894 ((_ is Cons!64672) s!2326)) b!6231199))

(declare-fun m!7057272 () Bool)

(assert (=> b!6231224 m!7057272))

(declare-fun m!7057274 () Bool)

(assert (=> b!6231224 m!7057274))

(declare-fun m!7057276 () Bool)

(assert (=> b!6231224 m!7057276))

(declare-fun m!7057278 () Bool)

(assert (=> b!6231224 m!7057278))

(declare-fun m!7057280 () Bool)

(assert (=> b!6231224 m!7057280))

(declare-fun m!7057282 () Bool)

(assert (=> b!6231224 m!7057282))

(declare-fun m!7057284 () Bool)

(assert (=> b!6231219 m!7057284))

(declare-fun m!7057286 () Bool)

(assert (=> b!6231219 m!7057286))

(assert (=> b!6231219 m!7057274))

(declare-fun m!7057288 () Bool)

(assert (=> b!6231219 m!7057288))

(declare-fun m!7057290 () Bool)

(assert (=> b!6231219 m!7057290))

(declare-fun m!7057292 () Bool)

(assert (=> b!6231219 m!7057292))

(declare-fun m!7057294 () Bool)

(assert (=> b!6231219 m!7057294))

(declare-fun m!7057296 () Bool)

(assert (=> b!6231200 m!7057296))

(declare-fun m!7057298 () Bool)

(assert (=> b!6231200 m!7057298))

(declare-fun m!7057300 () Bool)

(assert (=> b!6231217 m!7057300))

(declare-fun m!7057302 () Bool)

(assert (=> b!6231206 m!7057302))

(declare-fun m!7057304 () Bool)

(assert (=> b!6231215 m!7057304))

(declare-fun m!7057306 () Bool)

(assert (=> setNonEmpty!42356 m!7057306))

(assert (=> b!6231197 m!7057300))

(declare-fun m!7057308 () Bool)

(assert (=> b!6231218 m!7057308))

(declare-fun m!7057310 () Bool)

(assert (=> b!6231218 m!7057310))

(declare-fun m!7057312 () Bool)

(assert (=> b!6231218 m!7057312))

(assert (=> b!6231218 m!7057312))

(declare-fun m!7057314 () Bool)

(assert (=> b!6231218 m!7057314))

(declare-fun m!7057316 () Bool)

(assert (=> b!6231218 m!7057316))

(assert (=> b!6231218 m!7057308))

(declare-fun m!7057318 () Bool)

(assert (=> b!6231218 m!7057318))

(declare-fun m!7057320 () Bool)

(assert (=> b!6231209 m!7057320))

(declare-fun m!7057322 () Bool)

(assert (=> b!6231209 m!7057322))

(declare-fun m!7057324 () Bool)

(assert (=> b!6231209 m!7057324))

(declare-fun m!7057326 () Bool)

(assert (=> b!6231209 m!7057326))

(declare-fun m!7057328 () Bool)

(assert (=> b!6231209 m!7057328))

(declare-fun m!7057330 () Bool)

(assert (=> b!6231209 m!7057330))

(declare-fun m!7057332 () Bool)

(assert (=> b!6231209 m!7057332))

(declare-fun m!7057334 () Bool)

(assert (=> start!620894 m!7057334))

(declare-fun m!7057336 () Bool)

(assert (=> b!6231227 m!7057336))

(declare-fun m!7057338 () Bool)

(assert (=> b!6231227 m!7057338))

(declare-fun m!7057340 () Bool)

(assert (=> b!6231227 m!7057340))

(declare-fun m!7057342 () Bool)

(assert (=> b!6231212 m!7057342))

(declare-fun m!7057344 () Bool)

(assert (=> b!6231226 m!7057344))

(assert (=> b!6231210 m!7057338))

(declare-fun m!7057346 () Bool)

(assert (=> b!6231210 m!7057346))

(declare-fun m!7057348 () Bool)

(assert (=> b!6231210 m!7057348))

(declare-fun m!7057350 () Bool)

(assert (=> b!6231210 m!7057350))

(declare-fun m!7057352 () Bool)

(assert (=> b!6231208 m!7057352))

(declare-fun m!7057354 () Bool)

(assert (=> b!6231195 m!7057354))

(declare-fun m!7057356 () Bool)

(assert (=> b!6231195 m!7057356))

(declare-fun m!7057358 () Bool)

(assert (=> b!6231195 m!7057358))

(declare-fun m!7057360 () Bool)

(assert (=> b!6231225 m!7057360))

(declare-fun m!7057362 () Bool)

(assert (=> b!6231221 m!7057362))

(declare-fun m!7057364 () Bool)

(assert (=> b!6231207 m!7057364))

(assert (=> b!6231207 m!7057364))

(declare-fun m!7057366 () Bool)

(assert (=> b!6231207 m!7057366))

(declare-fun m!7057368 () Bool)

(assert (=> b!6231211 m!7057368))

(assert (=> b!6231211 m!7057368))

(declare-fun m!7057370 () Bool)

(assert (=> b!6231211 m!7057370))

(declare-fun m!7057372 () Bool)

(assert (=> b!6231216 m!7057372))

(assert (=> b!6231203 m!7057360))

(declare-fun m!7057374 () Bool)

(assert (=> b!6231214 m!7057374))

(check-sat (not b!6231207) (not b!6231196) (not b!6231200) tp_is_empty!41583 (not b!6231224) (not b!6231206) (not b!6231220) (not b!6231211) (not b!6231222) (not b!6231198) (not b!6231209) (not b!6231218) (not b!6231195) (not b!6231215) (not b!6231216) (not b!6231219) (not b!6231214) (not b!6231217) (not b!6231210) (not b!6231199) (not b!6231197) (not b!6231226) (not b!6231225) (not b!6231221) (not b!6231227) (not b!6231202) (not start!620894) (not b!6231212) (not b!6231208) (not setNonEmpty!42356) (not b!6231203))
(check-sat)
