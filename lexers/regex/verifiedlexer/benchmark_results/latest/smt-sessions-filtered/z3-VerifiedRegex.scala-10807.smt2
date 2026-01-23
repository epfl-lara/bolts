; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554930 () Bool)

(assert start!554930)

(declare-fun b!5252168 () Bool)

(assert (=> b!5252168 true))

(assert (=> b!5252168 true))

(declare-fun lambda!264516 () Int)

(declare-fun lambda!264515 () Int)

(assert (=> b!5252168 (not (= lambda!264516 lambda!264515))))

(assert (=> b!5252168 true))

(assert (=> b!5252168 true))

(declare-fun b!5252166 () Bool)

(assert (=> b!5252166 true))

(declare-fun b!5252143 () Bool)

(declare-fun res!2228800 () Bool)

(declare-fun e!3267501 () Bool)

(assert (=> b!5252143 (=> res!2228800 e!3267501)))

(declare-datatypes ((C!29992 0))(
  ( (C!29993 (val!24698 Int)) )
))
(declare-datatypes ((Regex!14861 0))(
  ( (ElementMatch!14861 (c!908621 C!29992)) (Concat!23706 (regOne!30234 Regex!14861) (regTwo!30234 Regex!14861)) (EmptyExpr!14861) (Star!14861 (reg!15190 Regex!14861)) (EmptyLang!14861) (Union!14861 (regOne!30235 Regex!14861) (regTwo!30235 Regex!14861)) )
))
(declare-fun r!7292 () Regex!14861)

(declare-datatypes ((List!60882 0))(
  ( (Nil!60758) (Cons!60758 (h!67206 Regex!14861) (t!374065 List!60882)) )
))
(declare-datatypes ((Context!8490 0))(
  ( (Context!8491 (exprs!4745 List!60882)) )
))
(declare-datatypes ((List!60883 0))(
  ( (Nil!60759) (Cons!60759 (h!67207 Context!8490) (t!374066 List!60883)) )
))
(declare-fun zl!343 () List!60883)

(declare-fun generalisedUnion!790 (List!60882) Regex!14861)

(declare-fun unfocusZipperList!303 (List!60883) List!60882)

(assert (=> b!5252143 (= res!2228800 (not (= r!7292 (generalisedUnion!790 (unfocusZipperList!303 zl!343)))))))

(declare-fun b!5252144 () Bool)

(declare-fun e!3267516 () Bool)

(declare-fun e!3267518 () Bool)

(assert (=> b!5252144 (= e!3267516 e!3267518)))

(declare-fun res!2228821 () Bool)

(assert (=> b!5252144 (=> (not res!2228821) (not e!3267518))))

(declare-fun lt!2152222 () Regex!14861)

(assert (=> b!5252144 (= res!2228821 (= r!7292 lt!2152222))))

(declare-fun unfocusZipper!603 (List!60883) Regex!14861)

(assert (=> b!5252144 (= lt!2152222 (unfocusZipper!603 zl!343))))

(declare-fun b!5252145 () Bool)

(declare-fun e!3267510 () Bool)

(declare-fun e!3267508 () Bool)

(assert (=> b!5252145 (= e!3267510 e!3267508)))

(declare-fun res!2228799 () Bool)

(assert (=> b!5252145 (=> res!2228799 e!3267508)))

(declare-fun lt!2152230 () Int)

(declare-fun lt!2152233 () Int)

(assert (=> b!5252145 (= res!2228799 (>= lt!2152230 lt!2152233))))

(declare-fun zipperDepthTotal!42 (List!60883) Int)

(assert (=> b!5252145 (= lt!2152233 (zipperDepthTotal!42 zl!343))))

(declare-fun lt!2152209 () List!60883)

(assert (=> b!5252145 (= lt!2152230 (zipperDepthTotal!42 lt!2152209))))

(declare-fun lt!2152223 () Context!8490)

(assert (=> b!5252145 (= lt!2152209 (Cons!60759 lt!2152223 Nil!60759))))

(declare-fun b!5252146 () Bool)

(declare-fun res!2228818 () Bool)

(assert (=> b!5252146 (=> res!2228818 e!3267510)))

(assert (=> b!5252146 (= res!2228818 (or (not (= lt!2152222 r!7292)) (not (= (exprs!4745 (h!67207 zl!343)) (Cons!60758 (regOne!30234 r!7292) (t!374065 (exprs!4745 (h!67207 zl!343))))))))))

(declare-fun b!5252147 () Bool)

(declare-fun e!3267506 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2152205 () (InoxSet Context!8490))

(declare-datatypes ((List!60884 0))(
  ( (Nil!60760) (Cons!60760 (h!67208 C!29992) (t!374067 List!60884)) )
))
(declare-fun s!2326 () List!60884)

(declare-fun matchZipper!1105 ((InoxSet Context!8490) List!60884) Bool)

(assert (=> b!5252147 (= e!3267506 (matchZipper!1105 lt!2152205 (t!374067 s!2326)))))

(declare-fun b!5252148 () Bool)

(declare-fun e!3267513 () Bool)

(declare-fun e!3267515 () Bool)

(assert (=> b!5252148 (= e!3267513 e!3267515)))

(declare-fun res!2228805 () Bool)

(assert (=> b!5252148 (=> res!2228805 e!3267515)))

(declare-fun lt!2152235 () Bool)

(declare-fun lt!2152206 () Bool)

(declare-fun lt!2152197 () Bool)

(assert (=> b!5252148 (= res!2228805 (and (not (= lt!2152235 lt!2152197)) (not lt!2152206)))))

(declare-fun lt!2152238 () Regex!14861)

(declare-fun matchRSpec!1964 (Regex!14861 List!60884) Bool)

(assert (=> b!5252148 (= lt!2152206 (matchRSpec!1964 lt!2152238 s!2326))))

(declare-datatypes ((Unit!152902 0))(
  ( (Unit!152903) )
))
(declare-fun lt!2152198 () Unit!152902)

(declare-fun mainMatchTheorem!1964 (Regex!14861 List!60884) Unit!152902)

(assert (=> b!5252148 (= lt!2152198 (mainMatchTheorem!1964 lt!2152238 s!2326))))

(declare-fun lt!2152204 () Regex!14861)

(assert (=> b!5252148 (= lt!2152197 (matchRSpec!1964 lt!2152204 s!2326))))

(declare-fun lt!2152239 () Unit!152902)

(assert (=> b!5252148 (= lt!2152239 (mainMatchTheorem!1964 lt!2152204 s!2326))))

(declare-fun lt!2152226 () (InoxSet Context!8490))

(assert (=> b!5252148 (= lt!2152206 (matchZipper!1105 lt!2152226 s!2326))))

(declare-fun matchR!7046 (Regex!14861 List!60884) Bool)

(assert (=> b!5252148 (= lt!2152206 (matchR!7046 lt!2152238 s!2326))))

(declare-fun lt!2152241 () Unit!152902)

(declare-fun lt!2152228 () List!60883)

(declare-fun theoremZipperRegexEquiv!295 ((InoxSet Context!8490) List!60883 Regex!14861 List!60884) Unit!152902)

(assert (=> b!5252148 (= lt!2152241 (theoremZipperRegexEquiv!295 lt!2152226 lt!2152228 lt!2152238 s!2326))))

(declare-fun lt!2152219 () List!60882)

(declare-fun generalisedConcat!530 (List!60882) Regex!14861)

(assert (=> b!5252148 (= lt!2152238 (generalisedConcat!530 lt!2152219))))

(declare-fun lt!2152234 () Bool)

(assert (=> b!5252148 (= lt!2152197 lt!2152234)))

(assert (=> b!5252148 (= lt!2152197 (matchR!7046 lt!2152204 s!2326))))

(declare-fun lt!2152217 () (InoxSet Context!8490))

(declare-fun lt!2152210 () Unit!152902)

(assert (=> b!5252148 (= lt!2152210 (theoremZipperRegexEquiv!295 lt!2152217 lt!2152209 lt!2152204 s!2326))))

(declare-fun lt!2152216 () List!60882)

(assert (=> b!5252148 (= lt!2152204 (generalisedConcat!530 lt!2152216))))

(declare-fun e!3267522 () Bool)

(declare-fun tp!1469280 () Bool)

(declare-fun e!3267507 () Bool)

(declare-fun b!5252149 () Bool)

(declare-fun inv!80399 (Context!8490) Bool)

(assert (=> b!5252149 (= e!3267522 (and (inv!80399 (h!67207 zl!343)) e!3267507 tp!1469280))))

(declare-fun b!5252150 () Bool)

(declare-fun e!3267511 () Unit!152902)

(declare-fun Unit!152904 () Unit!152902)

(assert (=> b!5252150 (= e!3267511 Unit!152904)))

(declare-fun lt!2152242 () (InoxSet Context!8490))

(declare-fun lt!2152196 () (InoxSet Context!8490))

(declare-fun lt!2152231 () Unit!152902)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!98 ((InoxSet Context!8490) (InoxSet Context!8490) List!60884) Unit!152902)

(assert (=> b!5252150 (= lt!2152231 (lemmaZipperConcatMatchesSameAsBothZippers!98 lt!2152242 lt!2152196 (t!374067 s!2326)))))

(declare-fun res!2228816 () Bool)

(assert (=> b!5252150 (= res!2228816 (matchZipper!1105 lt!2152242 (t!374067 s!2326)))))

(declare-fun e!3267496 () Bool)

(assert (=> b!5252150 (=> res!2228816 e!3267496)))

(assert (=> b!5252150 (= (matchZipper!1105 ((_ map or) lt!2152242 lt!2152196) (t!374067 s!2326)) e!3267496)))

(declare-fun b!5252151 () Bool)

(declare-fun e!3267519 () Bool)

(assert (=> b!5252151 (= e!3267519 e!3267510)))

(declare-fun res!2228798 () Bool)

(assert (=> b!5252151 (=> res!2228798 e!3267510)))

(declare-fun e!3267497 () Bool)

(assert (=> b!5252151 (= res!2228798 (not (= lt!2152235 e!3267497)))))

(declare-fun res!2228810 () Bool)

(assert (=> b!5252151 (=> res!2228810 e!3267497)))

(assert (=> b!5252151 (= res!2228810 lt!2152234)))

(declare-fun z!1189 () (InoxSet Context!8490))

(assert (=> b!5252151 (= lt!2152235 (matchZipper!1105 z!1189 s!2326))))

(assert (=> b!5252151 (= lt!2152234 (matchZipper!1105 lt!2152217 s!2326))))

(declare-fun lt!2152224 () Unit!152902)

(declare-fun e!3267500 () Unit!152902)

(assert (=> b!5252151 (= lt!2152224 e!3267500)))

(declare-fun c!908619 () Bool)

(declare-fun nullable!5030 (Regex!14861) Bool)

(assert (=> b!5252151 (= c!908619 (nullable!5030 (regTwo!30235 (regOne!30234 r!7292))))))

(declare-fun lt!2152211 () Context!8490)

(declare-fun lambda!264517 () Int)

(declare-fun flatMap!588 ((InoxSet Context!8490) Int) (InoxSet Context!8490))

(declare-fun derivationStepZipperUp!233 (Context!8490 C!29992) (InoxSet Context!8490))

(assert (=> b!5252151 (= (flatMap!588 lt!2152226 lambda!264517) (derivationStepZipperUp!233 lt!2152211 (h!67208 s!2326)))))

(declare-fun lt!2152227 () Unit!152902)

(declare-fun lemmaFlatMapOnSingletonSet!120 ((InoxSet Context!8490) Context!8490 Int) Unit!152902)

(assert (=> b!5252151 (= lt!2152227 (lemmaFlatMapOnSingletonSet!120 lt!2152226 lt!2152211 lambda!264517))))

(declare-fun lt!2152244 () (InoxSet Context!8490))

(assert (=> b!5252151 (= lt!2152244 (derivationStepZipperUp!233 lt!2152211 (h!67208 s!2326)))))

(declare-fun lt!2152215 () Unit!152902)

(declare-fun e!3267514 () Unit!152902)

(assert (=> b!5252151 (= lt!2152215 e!3267514)))

(declare-fun c!908618 () Bool)

(assert (=> b!5252151 (= c!908618 (nullable!5030 (regOne!30235 (regOne!30234 r!7292))))))

(assert (=> b!5252151 (= (flatMap!588 lt!2152217 lambda!264517) (derivationStepZipperUp!233 lt!2152223 (h!67208 s!2326)))))

(declare-fun lt!2152201 () Unit!152902)

(assert (=> b!5252151 (= lt!2152201 (lemmaFlatMapOnSingletonSet!120 lt!2152217 lt!2152223 lambda!264517))))

(declare-fun lt!2152214 () (InoxSet Context!8490))

(assert (=> b!5252151 (= lt!2152214 (derivationStepZipperUp!233 lt!2152223 (h!67208 s!2326)))))

(assert (=> b!5252151 (= lt!2152226 (store ((as const (Array Context!8490 Bool)) false) lt!2152211 true))))

(assert (=> b!5252151 (= lt!2152211 (Context!8491 lt!2152219))))

(assert (=> b!5252151 (= lt!2152219 (Cons!60758 (regTwo!30235 (regOne!30234 r!7292)) (t!374065 (exprs!4745 (h!67207 zl!343)))))))

(assert (=> b!5252151 (= lt!2152217 (store ((as const (Array Context!8490 Bool)) false) lt!2152223 true))))

(assert (=> b!5252151 (= lt!2152223 (Context!8491 lt!2152216))))

(assert (=> b!5252151 (= lt!2152216 (Cons!60758 (regOne!30235 (regOne!30234 r!7292)) (t!374065 (exprs!4745 (h!67207 zl!343)))))))

(declare-fun b!5252152 () Bool)

(declare-fun e!3267502 () Bool)

(assert (=> b!5252152 (= e!3267502 (matchZipper!1105 lt!2152196 (t!374067 s!2326)))))

(declare-fun b!5252153 () Bool)

(declare-fun e!3267512 () Bool)

(declare-fun tp!1469288 () Bool)

(declare-fun tp!1469282 () Bool)

(assert (=> b!5252153 (= e!3267512 (and tp!1469288 tp!1469282))))

(declare-fun res!2228802 () Bool)

(assert (=> start!554930 (=> (not res!2228802) (not e!3267516))))

(declare-fun validRegex!6597 (Regex!14861) Bool)

(assert (=> start!554930 (= res!2228802 (validRegex!6597 r!7292))))

(assert (=> start!554930 e!3267516))

(assert (=> start!554930 e!3267512))

(declare-fun condSetEmpty!33539 () Bool)

(assert (=> start!554930 (= condSetEmpty!33539 (= z!1189 ((as const (Array Context!8490 Bool)) false)))))

(declare-fun setRes!33539 () Bool)

(assert (=> start!554930 setRes!33539))

(assert (=> start!554930 e!3267522))

(declare-fun e!3267503 () Bool)

(assert (=> start!554930 e!3267503))

(declare-fun b!5252154 () Bool)

(declare-fun Unit!152905 () Unit!152902)

(assert (=> b!5252154 (= e!3267514 Unit!152905)))

(declare-fun b!5252155 () Bool)

(declare-fun e!3267509 () Bool)

(assert (=> b!5252155 (= e!3267509 true)))

(declare-fun lt!2152207 () Regex!14861)

(assert (=> b!5252155 (= (matchR!7046 lt!2152207 s!2326) (matchR!7046 (Union!14861 (Concat!23706 (regOne!30235 (regOne!30234 r!7292)) (regTwo!30234 r!7292)) (Concat!23706 (regTwo!30235 (regOne!30234 r!7292)) (regTwo!30234 r!7292))) s!2326))))

(declare-fun lt!2152225 () Unit!152902)

(declare-fun lemmaConcatDistributesInUnion!6 (Regex!14861 Regex!14861 Regex!14861 List!60884) Unit!152902)

(assert (=> b!5252155 (= lt!2152225 (lemmaConcatDistributesInUnion!6 (regOne!30235 (regOne!30234 r!7292)) (regTwo!30235 (regOne!30234 r!7292)) (regTwo!30234 r!7292) s!2326))))

(declare-fun b!5252156 () Bool)

(declare-fun e!3267521 () Bool)

(declare-fun tp!1469284 () Bool)

(assert (=> b!5252156 (= e!3267521 tp!1469284)))

(declare-fun b!5252157 () Bool)

(declare-fun tp_is_empty!38975 () Bool)

(assert (=> b!5252157 (= e!3267512 tp_is_empty!38975)))

(declare-fun b!5252158 () Bool)

(declare-fun e!3267498 () Bool)

(assert (=> b!5252158 (= e!3267498 e!3267519)))

(declare-fun res!2228808 () Bool)

(assert (=> b!5252158 (=> res!2228808 e!3267519)))

(declare-fun e!3267499 () Bool)

(assert (=> b!5252158 (= res!2228808 e!3267499)))

(declare-fun res!2228811 () Bool)

(assert (=> b!5252158 (=> (not res!2228811) (not e!3267499))))

(declare-fun lt!2152221 () Bool)

(assert (=> b!5252158 (= res!2228811 (not (= (matchZipper!1105 lt!2152242 (t!374067 s!2326)) lt!2152221)))))

(declare-fun lt!2152232 () (InoxSet Context!8490))

(assert (=> b!5252158 (= (matchZipper!1105 lt!2152232 (t!374067 s!2326)) e!3267506)))

(declare-fun res!2228822 () Bool)

(assert (=> b!5252158 (=> res!2228822 e!3267506)))

(assert (=> b!5252158 (= res!2228822 lt!2152221)))

(declare-fun lt!2152212 () (InoxSet Context!8490))

(assert (=> b!5252158 (= lt!2152221 (matchZipper!1105 lt!2152212 (t!374067 s!2326)))))

(declare-fun lt!2152218 () Unit!152902)

(assert (=> b!5252158 (= lt!2152218 (lemmaZipperConcatMatchesSameAsBothZippers!98 lt!2152212 lt!2152205 (t!374067 s!2326)))))

(declare-fun b!5252159 () Bool)

(assert (=> b!5252159 (= e!3267496 (matchZipper!1105 lt!2152196 (t!374067 s!2326)))))

(declare-fun b!5252160 () Bool)

(declare-fun tp!1469287 () Bool)

(assert (=> b!5252160 (= e!3267507 tp!1469287)))

(declare-fun b!5252161 () Bool)

(declare-fun res!2228820 () Bool)

(assert (=> b!5252161 (=> res!2228820 e!3267501)))

(get-info :version)

(assert (=> b!5252161 (= res!2228820 (not ((_ is Cons!60758) (exprs!4745 (h!67207 zl!343)))))))

(declare-fun b!5252162 () Bool)

(declare-fun e!3267520 () Bool)

(assert (=> b!5252162 (= e!3267520 e!3267498)))

(declare-fun res!2228803 () Bool)

(assert (=> b!5252162 (=> res!2228803 e!3267498)))

(assert (=> b!5252162 (= res!2228803 (not (= lt!2152242 lt!2152232)))))

(assert (=> b!5252162 (= lt!2152232 ((_ map or) lt!2152212 lt!2152205))))

(declare-fun lt!2152202 () Context!8490)

(declare-fun derivationStepZipperDown!309 (Regex!14861 Context!8490 C!29992) (InoxSet Context!8490))

(assert (=> b!5252162 (= lt!2152205 (derivationStepZipperDown!309 (regTwo!30235 (regOne!30234 r!7292)) lt!2152202 (h!67208 s!2326)))))

(assert (=> b!5252162 (= lt!2152212 (derivationStepZipperDown!309 (regOne!30235 (regOne!30234 r!7292)) lt!2152202 (h!67208 s!2326)))))

(declare-fun setIsEmpty!33539 () Bool)

(assert (=> setIsEmpty!33539 setRes!33539))

(declare-fun b!5252163 () Bool)

(assert (=> b!5252163 (= e!3267518 (not e!3267501))))

(declare-fun res!2228804 () Bool)

(assert (=> b!5252163 (=> res!2228804 e!3267501)))

(assert (=> b!5252163 (= res!2228804 (not ((_ is Cons!60759) zl!343)))))

(declare-fun lt!2152236 () Bool)

(assert (=> b!5252163 (= lt!2152236 (matchRSpec!1964 r!7292 s!2326))))

(assert (=> b!5252163 (= lt!2152236 (matchR!7046 r!7292 s!2326))))

(declare-fun lt!2152229 () Unit!152902)

(assert (=> b!5252163 (= lt!2152229 (mainMatchTheorem!1964 r!7292 s!2326))))

(declare-fun b!5252164 () Bool)

(declare-fun Unit!152906 () Unit!152902)

(assert (=> b!5252164 (= e!3267511 Unit!152906)))

(declare-fun setNonEmpty!33539 () Bool)

(declare-fun tp!1469285 () Bool)

(declare-fun setElem!33539 () Context!8490)

(assert (=> setNonEmpty!33539 (= setRes!33539 (and tp!1469285 (inv!80399 setElem!33539) e!3267521))))

(declare-fun setRest!33539 () (InoxSet Context!8490))

(assert (=> setNonEmpty!33539 (= z!1189 ((_ map or) (store ((as const (Array Context!8490 Bool)) false) setElem!33539 true) setRest!33539))))

(declare-fun b!5252165 () Bool)

(declare-fun res!2228814 () Bool)

(assert (=> b!5252165 (=> res!2228814 e!3267501)))

(assert (=> b!5252165 (= res!2228814 (not (= r!7292 (generalisedConcat!530 (exprs!4745 (h!67207 zl!343))))))))

(declare-fun e!3267517 () Bool)

(assert (=> b!5252166 (= e!3267517 e!3267520)))

(declare-fun res!2228813 () Bool)

(assert (=> b!5252166 (=> res!2228813 e!3267520)))

(assert (=> b!5252166 (= res!2228813 (or (and ((_ is ElementMatch!14861) (regOne!30234 r!7292)) (= (c!908621 (regOne!30234 r!7292)) (h!67208 s!2326))) (not ((_ is Union!14861) (regOne!30234 r!7292)))))))

(declare-fun lt!2152203 () Unit!152902)

(assert (=> b!5252166 (= lt!2152203 e!3267511)))

(declare-fun c!908620 () Bool)

(assert (=> b!5252166 (= c!908620 (nullable!5030 (h!67206 (exprs!4745 (h!67207 zl!343)))))))

(assert (=> b!5252166 (= (flatMap!588 z!1189 lambda!264517) (derivationStepZipperUp!233 (h!67207 zl!343) (h!67208 s!2326)))))

(declare-fun lt!2152237 () Unit!152902)

(assert (=> b!5252166 (= lt!2152237 (lemmaFlatMapOnSingletonSet!120 z!1189 (h!67207 zl!343) lambda!264517))))

(assert (=> b!5252166 (= lt!2152196 (derivationStepZipperUp!233 lt!2152202 (h!67208 s!2326)))))

(assert (=> b!5252166 (= lt!2152242 (derivationStepZipperDown!309 (h!67206 (exprs!4745 (h!67207 zl!343))) lt!2152202 (h!67208 s!2326)))))

(assert (=> b!5252166 (= lt!2152202 (Context!8491 (t!374065 (exprs!4745 (h!67207 zl!343)))))))

(declare-fun lt!2152200 () (InoxSet Context!8490))

(assert (=> b!5252166 (= lt!2152200 (derivationStepZipperUp!233 (Context!8491 (Cons!60758 (h!67206 (exprs!4745 (h!67207 zl!343))) (t!374065 (exprs!4745 (h!67207 zl!343))))) (h!67208 s!2326)))))

(declare-fun b!5252167 () Bool)

(declare-fun e!3267505 () Bool)

(assert (=> b!5252167 (= e!3267505 e!3267509)))

(declare-fun res!2228806 () Bool)

(assert (=> b!5252167 (=> res!2228806 e!3267509)))

(declare-fun lt!2152208 () Regex!14861)

(assert (=> b!5252167 (= res!2228806 (or (not (= lt!2152204 (Concat!23706 (regOne!30235 (regOne!30234 r!7292)) lt!2152208))) (not (= lt!2152238 (Concat!23706 (regTwo!30235 (regOne!30234 r!7292)) lt!2152208))) (not (= (regTwo!30234 r!7292) lt!2152208))))))

(assert (=> b!5252167 (= lt!2152208 (generalisedConcat!530 (t!374065 (exprs!4745 (h!67207 zl!343)))))))

(assert (=> b!5252168 (= e!3267501 e!3267517)))

(declare-fun res!2228812 () Bool)

(assert (=> b!5252168 (=> res!2228812 e!3267517)))

(declare-fun lt!2152243 () Bool)

(assert (=> b!5252168 (= res!2228812 (or (not (= lt!2152236 lt!2152243)) ((_ is Nil!60760) s!2326)))))

(declare-fun Exists!2042 (Int) Bool)

(assert (=> b!5252168 (= (Exists!2042 lambda!264515) (Exists!2042 lambda!264516))))

(declare-fun lt!2152240 () Unit!152902)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!696 (Regex!14861 Regex!14861 List!60884) Unit!152902)

(assert (=> b!5252168 (= lt!2152240 (lemmaExistCutMatchRandMatchRSpecEquivalent!696 (regOne!30234 r!7292) (regTwo!30234 r!7292) s!2326))))

(assert (=> b!5252168 (= lt!2152243 (Exists!2042 lambda!264515))))

(declare-datatypes ((tuple2!64120 0))(
  ( (tuple2!64121 (_1!35363 List!60884) (_2!35363 List!60884)) )
))
(declare-datatypes ((Option!14972 0))(
  ( (None!14971) (Some!14971 (v!51000 tuple2!64120)) )
))
(declare-fun isDefined!11675 (Option!14972) Bool)

(declare-fun findConcatSeparation!1386 (Regex!14861 Regex!14861 List!60884 List!60884 List!60884) Option!14972)

(assert (=> b!5252168 (= lt!2152243 (isDefined!11675 (findConcatSeparation!1386 (regOne!30234 r!7292) (regTwo!30234 r!7292) Nil!60760 s!2326 s!2326)))))

(declare-fun lt!2152199 () Unit!152902)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1150 (Regex!14861 Regex!14861 List!60884) Unit!152902)

(assert (=> b!5252168 (= lt!2152199 (lemmaFindConcatSeparationEquivalentToExists!1150 (regOne!30234 r!7292) (regTwo!30234 r!7292) s!2326))))

(declare-fun b!5252169 () Bool)

(declare-fun res!2228817 () Bool)

(assert (=> b!5252169 (=> res!2228817 e!3267501)))

(assert (=> b!5252169 (= res!2228817 (or ((_ is EmptyExpr!14861) r!7292) ((_ is EmptyLang!14861) r!7292) ((_ is ElementMatch!14861) r!7292) ((_ is Union!14861) r!7292) (not ((_ is Concat!23706) r!7292))))))

(declare-fun b!5252170 () Bool)

(assert (=> b!5252170 (= e!3267499 (not (matchZipper!1105 lt!2152205 (t!374067 s!2326))))))

(declare-fun b!5252171 () Bool)

(declare-fun Unit!152907 () Unit!152902)

(assert (=> b!5252171 (= e!3267500 Unit!152907)))

(declare-fun b!5252172 () Bool)

(declare-fun Unit!152908 () Unit!152902)

(assert (=> b!5252172 (= e!3267500 Unit!152908)))

(declare-fun lt!2152213 () Unit!152902)

(assert (=> b!5252172 (= lt!2152213 (lemmaZipperConcatMatchesSameAsBothZippers!98 lt!2152205 lt!2152196 (t!374067 s!2326)))))

(declare-fun res!2228801 () Bool)

(assert (=> b!5252172 (= res!2228801 (matchZipper!1105 lt!2152205 (t!374067 s!2326)))))

(declare-fun e!3267504 () Bool)

(assert (=> b!5252172 (=> res!2228801 e!3267504)))

(assert (=> b!5252172 (= (matchZipper!1105 ((_ map or) lt!2152205 lt!2152196) (t!374067 s!2326)) e!3267504)))

(declare-fun b!5252173 () Bool)

(assert (=> b!5252173 (= e!3267515 e!3267505)))

(declare-fun res!2228823 () Bool)

(assert (=> b!5252173 (=> res!2228823 e!3267505)))

(assert (=> b!5252173 (= res!2228823 (not (= r!7292 lt!2152207)))))

(assert (=> b!5252173 (= lt!2152207 (Concat!23706 (Union!14861 (regOne!30235 (regOne!30234 r!7292)) (regTwo!30235 (regOne!30234 r!7292))) (regTwo!30234 r!7292)))))

(declare-fun b!5252174 () Bool)

(declare-fun res!2228807 () Bool)

(assert (=> b!5252174 (=> res!2228807 e!3267517)))

(declare-fun isEmpty!32699 (List!60882) Bool)

(assert (=> b!5252174 (= res!2228807 (isEmpty!32699 (t!374065 (exprs!4745 (h!67207 zl!343)))))))

(declare-fun b!5252175 () Bool)

(declare-fun res!2228819 () Bool)

(assert (=> b!5252175 (=> res!2228819 e!3267501)))

(declare-fun isEmpty!32700 (List!60883) Bool)

(assert (=> b!5252175 (= res!2228819 (not (isEmpty!32700 (t!374066 zl!343))))))

(declare-fun b!5252176 () Bool)

(declare-fun tp!1469286 () Bool)

(assert (=> b!5252176 (= e!3267503 (and tp_is_empty!38975 tp!1469286))))

(declare-fun b!5252177 () Bool)

(declare-fun tp!1469283 () Bool)

(assert (=> b!5252177 (= e!3267512 tp!1469283)))

(declare-fun b!5252178 () Bool)

(assert (=> b!5252178 (= e!3267508 e!3267513)))

(declare-fun res!2228815 () Bool)

(assert (=> b!5252178 (=> res!2228815 e!3267513)))

(assert (=> b!5252178 (= res!2228815 (>= (zipperDepthTotal!42 lt!2152228) lt!2152233))))

(assert (=> b!5252178 (= lt!2152228 (Cons!60759 lt!2152211 Nil!60759))))

(declare-fun b!5252179 () Bool)

(declare-fun tp!1469289 () Bool)

(declare-fun tp!1469281 () Bool)

(assert (=> b!5252179 (= e!3267512 (and tp!1469289 tp!1469281))))

(declare-fun b!5252180 () Bool)

(declare-fun res!2228797 () Bool)

(assert (=> b!5252180 (=> (not res!2228797) (not e!3267516))))

(declare-fun toList!8645 ((InoxSet Context!8490)) List!60883)

(assert (=> b!5252180 (= res!2228797 (= (toList!8645 z!1189) zl!343))))

(declare-fun b!5252181 () Bool)

(declare-fun Unit!152909 () Unit!152902)

(assert (=> b!5252181 (= e!3267514 Unit!152909)))

(declare-fun lt!2152220 () Unit!152902)

(assert (=> b!5252181 (= lt!2152220 (lemmaZipperConcatMatchesSameAsBothZippers!98 lt!2152212 lt!2152196 (t!374067 s!2326)))))

(declare-fun res!2228809 () Bool)

(assert (=> b!5252181 (= res!2228809 lt!2152221)))

(assert (=> b!5252181 (=> res!2228809 e!3267502)))

(assert (=> b!5252181 (= (matchZipper!1105 ((_ map or) lt!2152212 lt!2152196) (t!374067 s!2326)) e!3267502)))

(declare-fun b!5252182 () Bool)

(assert (=> b!5252182 (= e!3267497 (matchZipper!1105 lt!2152226 s!2326))))

(declare-fun b!5252183 () Bool)

(assert (=> b!5252183 (= e!3267504 (matchZipper!1105 lt!2152196 (t!374067 s!2326)))))

(assert (= (and start!554930 res!2228802) b!5252180))

(assert (= (and b!5252180 res!2228797) b!5252144))

(assert (= (and b!5252144 res!2228821) b!5252163))

(assert (= (and b!5252163 (not res!2228804)) b!5252175))

(assert (= (and b!5252175 (not res!2228819)) b!5252165))

(assert (= (and b!5252165 (not res!2228814)) b!5252161))

(assert (= (and b!5252161 (not res!2228820)) b!5252143))

(assert (= (and b!5252143 (not res!2228800)) b!5252169))

(assert (= (and b!5252169 (not res!2228817)) b!5252168))

(assert (= (and b!5252168 (not res!2228812)) b!5252174))

(assert (= (and b!5252174 (not res!2228807)) b!5252166))

(assert (= (and b!5252166 c!908620) b!5252150))

(assert (= (and b!5252166 (not c!908620)) b!5252164))

(assert (= (and b!5252150 (not res!2228816)) b!5252159))

(assert (= (and b!5252166 (not res!2228813)) b!5252162))

(assert (= (and b!5252162 (not res!2228803)) b!5252158))

(assert (= (and b!5252158 (not res!2228822)) b!5252147))

(assert (= (and b!5252158 res!2228811) b!5252170))

(assert (= (and b!5252158 (not res!2228808)) b!5252151))

(assert (= (and b!5252151 c!908618) b!5252181))

(assert (= (and b!5252151 (not c!908618)) b!5252154))

(assert (= (and b!5252181 (not res!2228809)) b!5252152))

(assert (= (and b!5252151 c!908619) b!5252172))

(assert (= (and b!5252151 (not c!908619)) b!5252171))

(assert (= (and b!5252172 (not res!2228801)) b!5252183))

(assert (= (and b!5252151 (not res!2228810)) b!5252182))

(assert (= (and b!5252151 (not res!2228798)) b!5252146))

(assert (= (and b!5252146 (not res!2228818)) b!5252145))

(assert (= (and b!5252145 (not res!2228799)) b!5252178))

(assert (= (and b!5252178 (not res!2228815)) b!5252148))

(assert (= (and b!5252148 (not res!2228805)) b!5252173))

(assert (= (and b!5252173 (not res!2228823)) b!5252167))

(assert (= (and b!5252167 (not res!2228806)) b!5252155))

(assert (= (and start!554930 ((_ is ElementMatch!14861) r!7292)) b!5252157))

(assert (= (and start!554930 ((_ is Concat!23706) r!7292)) b!5252179))

(assert (= (and start!554930 ((_ is Star!14861) r!7292)) b!5252177))

(assert (= (and start!554930 ((_ is Union!14861) r!7292)) b!5252153))

(assert (= (and start!554930 condSetEmpty!33539) setIsEmpty!33539))

(assert (= (and start!554930 (not condSetEmpty!33539)) setNonEmpty!33539))

(assert (= setNonEmpty!33539 b!5252156))

(assert (= b!5252149 b!5252160))

(assert (= (and start!554930 ((_ is Cons!60759) zl!343)) b!5252149))

(assert (= (and start!554930 ((_ is Cons!60760) s!2326)) b!5252176))

(declare-fun m!6295136 () Bool)

(assert (=> start!554930 m!6295136))

(declare-fun m!6295138 () Bool)

(assert (=> b!5252145 m!6295138))

(declare-fun m!6295140 () Bool)

(assert (=> b!5252145 m!6295140))

(declare-fun m!6295142 () Bool)

(assert (=> b!5252172 m!6295142))

(declare-fun m!6295144 () Bool)

(assert (=> b!5252172 m!6295144))

(declare-fun m!6295146 () Bool)

(assert (=> b!5252172 m!6295146))

(declare-fun m!6295148 () Bool)

(assert (=> b!5252149 m!6295148))

(declare-fun m!6295150 () Bool)

(assert (=> b!5252182 m!6295150))

(declare-fun m!6295152 () Bool)

(assert (=> b!5252183 m!6295152))

(declare-fun m!6295154 () Bool)

(assert (=> b!5252167 m!6295154))

(declare-fun m!6295156 () Bool)

(assert (=> b!5252181 m!6295156))

(declare-fun m!6295158 () Bool)

(assert (=> b!5252181 m!6295158))

(declare-fun m!6295160 () Bool)

(assert (=> b!5252150 m!6295160))

(declare-fun m!6295162 () Bool)

(assert (=> b!5252150 m!6295162))

(declare-fun m!6295164 () Bool)

(assert (=> b!5252150 m!6295164))

(declare-fun m!6295166 () Bool)

(assert (=> b!5252180 m!6295166))

(declare-fun m!6295168 () Bool)

(assert (=> b!5252155 m!6295168))

(declare-fun m!6295170 () Bool)

(assert (=> b!5252155 m!6295170))

(declare-fun m!6295172 () Bool)

(assert (=> b!5252155 m!6295172))

(assert (=> b!5252170 m!6295144))

(declare-fun m!6295174 () Bool)

(assert (=> b!5252165 m!6295174))

(declare-fun m!6295176 () Bool)

(assert (=> b!5252162 m!6295176))

(declare-fun m!6295178 () Bool)

(assert (=> b!5252162 m!6295178))

(declare-fun m!6295180 () Bool)

(assert (=> b!5252178 m!6295180))

(declare-fun m!6295182 () Bool)

(assert (=> b!5252148 m!6295182))

(declare-fun m!6295184 () Bool)

(assert (=> b!5252148 m!6295184))

(declare-fun m!6295186 () Bool)

(assert (=> b!5252148 m!6295186))

(declare-fun m!6295188 () Bool)

(assert (=> b!5252148 m!6295188))

(declare-fun m!6295190 () Bool)

(assert (=> b!5252148 m!6295190))

(declare-fun m!6295192 () Bool)

(assert (=> b!5252148 m!6295192))

(declare-fun m!6295194 () Bool)

(assert (=> b!5252148 m!6295194))

(declare-fun m!6295196 () Bool)

(assert (=> b!5252148 m!6295196))

(declare-fun m!6295198 () Bool)

(assert (=> b!5252148 m!6295198))

(assert (=> b!5252148 m!6295150))

(declare-fun m!6295200 () Bool)

(assert (=> b!5252148 m!6295200))

(assert (=> b!5252147 m!6295144))

(declare-fun m!6295202 () Bool)

(assert (=> setNonEmpty!33539 m!6295202))

(declare-fun m!6295204 () Bool)

(assert (=> b!5252166 m!6295204))

(declare-fun m!6295206 () Bool)

(assert (=> b!5252166 m!6295206))

(declare-fun m!6295208 () Bool)

(assert (=> b!5252166 m!6295208))

(declare-fun m!6295210 () Bool)

(assert (=> b!5252166 m!6295210))

(declare-fun m!6295212 () Bool)

(assert (=> b!5252166 m!6295212))

(declare-fun m!6295214 () Bool)

(assert (=> b!5252166 m!6295214))

(declare-fun m!6295216 () Bool)

(assert (=> b!5252166 m!6295216))

(assert (=> b!5252152 m!6295152))

(declare-fun m!6295218 () Bool)

(assert (=> b!5252163 m!6295218))

(declare-fun m!6295220 () Bool)

(assert (=> b!5252163 m!6295220))

(declare-fun m!6295222 () Bool)

(assert (=> b!5252163 m!6295222))

(declare-fun m!6295224 () Bool)

(assert (=> b!5252174 m!6295224))

(assert (=> b!5252159 m!6295152))

(declare-fun m!6295226 () Bool)

(assert (=> b!5252144 m!6295226))

(declare-fun m!6295228 () Bool)

(assert (=> b!5252168 m!6295228))

(declare-fun m!6295230 () Bool)

(assert (=> b!5252168 m!6295230))

(declare-fun m!6295232 () Bool)

(assert (=> b!5252168 m!6295232))

(declare-fun m!6295234 () Bool)

(assert (=> b!5252168 m!6295234))

(declare-fun m!6295236 () Bool)

(assert (=> b!5252168 m!6295236))

(assert (=> b!5252168 m!6295232))

(assert (=> b!5252168 m!6295228))

(declare-fun m!6295238 () Bool)

(assert (=> b!5252168 m!6295238))

(declare-fun m!6295240 () Bool)

(assert (=> b!5252151 m!6295240))

(declare-fun m!6295242 () Bool)

(assert (=> b!5252151 m!6295242))

(declare-fun m!6295244 () Bool)

(assert (=> b!5252151 m!6295244))

(declare-fun m!6295246 () Bool)

(assert (=> b!5252151 m!6295246))

(declare-fun m!6295248 () Bool)

(assert (=> b!5252151 m!6295248))

(declare-fun m!6295250 () Bool)

(assert (=> b!5252151 m!6295250))

(declare-fun m!6295252 () Bool)

(assert (=> b!5252151 m!6295252))

(declare-fun m!6295254 () Bool)

(assert (=> b!5252151 m!6295254))

(declare-fun m!6295256 () Bool)

(assert (=> b!5252151 m!6295256))

(declare-fun m!6295258 () Bool)

(assert (=> b!5252151 m!6295258))

(declare-fun m!6295260 () Bool)

(assert (=> b!5252151 m!6295260))

(declare-fun m!6295262 () Bool)

(assert (=> b!5252151 m!6295262))

(assert (=> b!5252158 m!6295162))

(declare-fun m!6295264 () Bool)

(assert (=> b!5252158 m!6295264))

(declare-fun m!6295266 () Bool)

(assert (=> b!5252158 m!6295266))

(declare-fun m!6295268 () Bool)

(assert (=> b!5252158 m!6295268))

(declare-fun m!6295270 () Bool)

(assert (=> b!5252143 m!6295270))

(assert (=> b!5252143 m!6295270))

(declare-fun m!6295272 () Bool)

(assert (=> b!5252143 m!6295272))

(declare-fun m!6295274 () Bool)

(assert (=> b!5252175 m!6295274))

(check-sat (not b!5252170) (not b!5252167) (not b!5252156) (not b!5252177) (not b!5252145) (not start!554930) (not b!5252152) (not b!5252172) (not b!5252163) (not b!5252176) (not b!5252182) (not b!5252150) (not b!5252168) (not b!5252147) (not b!5252144) (not b!5252148) (not b!5252183) (not b!5252149) (not b!5252165) (not b!5252178) (not b!5252159) (not b!5252143) (not b!5252181) (not b!5252153) (not b!5252162) (not b!5252174) (not b!5252151) (not b!5252175) (not b!5252179) (not b!5252166) (not b!5252155) (not setNonEmpty!33539) (not b!5252158) tp_is_empty!38975 (not b!5252160) (not b!5252180))
(check-sat)
