; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!638942 () Bool)

(assert start!638942)

(declare-fun b!6503182 () Bool)

(assert (=> b!6503182 true))

(assert (=> b!6503182 true))

(declare-fun lambda!360519 () Int)

(declare-fun lambda!360518 () Int)

(assert (=> b!6503182 (not (= lambda!360519 lambda!360518))))

(assert (=> b!6503182 true))

(assert (=> b!6503182 true))

(declare-fun b!6503160 () Bool)

(assert (=> b!6503160 true))

(declare-fun b!6503167 () Bool)

(assert (=> b!6503167 true))

(declare-fun b!6503156 () Bool)

(declare-fun res!2670716 () Bool)

(declare-fun e!3940490 () Bool)

(assert (=> b!6503156 (=> res!2670716 e!3940490)))

(declare-fun e!3940475 () Bool)

(assert (=> b!6503156 (= res!2670716 e!3940475)))

(declare-fun res!2670733 () Bool)

(assert (=> b!6503156 (=> (not res!2670733) (not e!3940475))))

(declare-datatypes ((C!33036 0))(
  ( (C!33037 (val!26220 Int)) )
))
(declare-datatypes ((Regex!16383 0))(
  ( (ElementMatch!16383 (c!1192455 C!33036)) (Concat!25228 (regOne!33278 Regex!16383) (regTwo!33278 Regex!16383)) (EmptyExpr!16383) (Star!16383 (reg!16712 Regex!16383)) (EmptyLang!16383) (Union!16383 (regOne!33279 Regex!16383) (regTwo!33279 Regex!16383)) )
))
(declare-fun r!7292 () Regex!16383)

(get-info :version)

(assert (=> b!6503156 (= res!2670733 ((_ is Concat!25228) (regOne!33278 r!7292)))))

(declare-fun b!6503157 () Bool)

(declare-fun e!3940476 () Bool)

(declare-fun tp!1798811 () Bool)

(assert (=> b!6503157 (= e!3940476 tp!1798811)))

(declare-fun b!6503158 () Bool)

(declare-fun res!2670742 () Bool)

(declare-fun e!3940482 () Bool)

(assert (=> b!6503158 (=> res!2670742 e!3940482)))

(declare-fun lt!2392400 () Bool)

(declare-fun lt!2392386 () Bool)

(assert (=> b!6503158 (= res!2670742 (or (not lt!2392400) (not lt!2392386)))))

(declare-fun b!6503159 () Bool)

(declare-fun e!3940477 () Bool)

(assert (=> b!6503159 (= e!3940477 e!3940482)))

(declare-fun res!2670737 () Bool)

(assert (=> b!6503159 (=> res!2670737 e!3940482)))

(declare-fun e!3940472 () Bool)

(assert (=> b!6503159 (= res!2670737 e!3940472)))

(declare-fun res!2670725 () Bool)

(assert (=> b!6503159 (=> (not res!2670725) (not e!3940472))))

(assert (=> b!6503159 (= res!2670725 (not lt!2392400))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65448 0))(
  ( (Nil!65324) (Cons!65324 (h!71772 Regex!16383) (t!379082 List!65448)) )
))
(declare-datatypes ((Context!11534 0))(
  ( (Context!11535 (exprs!6267 List!65448)) )
))
(declare-fun lt!2392389 () (InoxSet Context!11534))

(declare-datatypes ((List!65449 0))(
  ( (Nil!65325) (Cons!65325 (h!71773 C!33036) (t!379083 List!65449)) )
))
(declare-fun s!2326 () List!65449)

(declare-fun matchZipper!2395 ((InoxSet Context!11534) List!65449) Bool)

(assert (=> b!6503159 (= lt!2392400 (matchZipper!2395 lt!2392389 (t!379083 s!2326)))))

(declare-fun e!3940481 () Bool)

(assert (=> b!6503160 (= e!3940481 e!3940490)))

(declare-fun res!2670717 () Bool)

(assert (=> b!6503160 (=> res!2670717 e!3940490)))

(assert (=> b!6503160 (= res!2670717 (or (and ((_ is ElementMatch!16383) (regOne!33278 r!7292)) (= (c!1192455 (regOne!33278 r!7292)) (h!71773 s!2326))) ((_ is Union!16383) (regOne!33278 r!7292))))))

(declare-datatypes ((Unit!158867 0))(
  ( (Unit!158868) )
))
(declare-fun lt!2392381 () Unit!158867)

(declare-fun e!3940486 () Unit!158867)

(assert (=> b!6503160 (= lt!2392381 e!3940486)))

(declare-fun c!1192454 () Bool)

(declare-fun lt!2392385 () Bool)

(assert (=> b!6503160 (= c!1192454 lt!2392385)))

(declare-datatypes ((List!65450 0))(
  ( (Nil!65326) (Cons!65326 (h!71774 Context!11534) (t!379084 List!65450)) )
))
(declare-fun zl!343 () List!65450)

(declare-fun nullable!6376 (Regex!16383) Bool)

(assert (=> b!6503160 (= lt!2392385 (nullable!6376 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11534))

(declare-fun lambda!360520 () Int)

(declare-fun flatMap!1888 ((InoxSet Context!11534) Int) (InoxSet Context!11534))

(declare-fun derivationStepZipperUp!1557 (Context!11534 C!33036) (InoxSet Context!11534))

(assert (=> b!6503160 (= (flatMap!1888 z!1189 lambda!360520) (derivationStepZipperUp!1557 (h!71774 zl!343) (h!71773 s!2326)))))

(declare-fun lt!2392379 () Unit!158867)

(declare-fun lemmaFlatMapOnSingletonSet!1414 ((InoxSet Context!11534) Context!11534 Int) Unit!158867)

(assert (=> b!6503160 (= lt!2392379 (lemmaFlatMapOnSingletonSet!1414 z!1189 (h!71774 zl!343) lambda!360520))))

(declare-fun lt!2392382 () (InoxSet Context!11534))

(declare-fun lt!2392397 () Context!11534)

(assert (=> b!6503160 (= lt!2392382 (derivationStepZipperUp!1557 lt!2392397 (h!71773 s!2326)))))

(declare-fun derivationStepZipperDown!1631 (Regex!16383 Context!11534 C!33036) (InoxSet Context!11534))

(assert (=> b!6503160 (= lt!2392389 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (h!71774 zl!343))) lt!2392397 (h!71773 s!2326)))))

(assert (=> b!6503160 (= lt!2392397 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun lt!2392371 () (InoxSet Context!11534))

(assert (=> b!6503160 (= lt!2392371 (derivationStepZipperUp!1557 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))) (h!71773 s!2326)))))

(declare-fun b!6503161 () Bool)

(declare-fun Unit!158869 () Unit!158867)

(assert (=> b!6503161 (= e!3940486 Unit!158869)))

(declare-fun b!6503162 () Bool)

(declare-fun res!2670734 () Bool)

(declare-fun e!3940489 () Bool)

(assert (=> b!6503162 (=> res!2670734 e!3940489)))

(declare-fun generalisedConcat!1980 (List!65448) Regex!16383)

(assert (=> b!6503162 (= res!2670734 (not (= r!7292 (generalisedConcat!1980 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6503163 () Bool)

(declare-fun e!3940469 () Bool)

(declare-fun tp!1798810 () Bool)

(declare-fun tp!1798814 () Bool)

(assert (=> b!6503163 (= e!3940469 (and tp!1798810 tp!1798814))))

(declare-fun b!6503164 () Bool)

(declare-fun tp!1798813 () Bool)

(declare-fun tp!1798815 () Bool)

(assert (=> b!6503164 (= e!3940469 (and tp!1798813 tp!1798815))))

(declare-fun setRes!44339 () Bool)

(declare-fun tp!1798809 () Bool)

(declare-fun setNonEmpty!44339 () Bool)

(declare-fun setElem!44339 () Context!11534)

(declare-fun inv!84204 (Context!11534) Bool)

(assert (=> setNonEmpty!44339 (= setRes!44339 (and tp!1798809 (inv!84204 setElem!44339) e!3940476))))

(declare-fun setRest!44339 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44339 (= z!1189 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44339 true) setRest!44339))))

(declare-fun b!6503165 () Bool)

(declare-fun e!3940485 () Bool)

(declare-fun e!3940480 () Bool)

(assert (=> b!6503165 (= e!3940485 e!3940480)))

(declare-fun res!2670715 () Bool)

(assert (=> b!6503165 (=> res!2670715 e!3940480)))

(declare-fun lt!2392396 () (InoxSet Context!11534))

(assert (=> b!6503165 (= res!2670715 (not (= lt!2392386 (matchZipper!2395 lt!2392396 (t!379083 s!2326)))))))

(declare-fun lt!2392366 () (InoxSet Context!11534))

(assert (=> b!6503165 (= lt!2392386 (matchZipper!2395 lt!2392366 s!2326))))

(declare-fun b!6503166 () Bool)

(declare-fun res!2670735 () Bool)

(assert (=> b!6503166 (=> res!2670735 e!3940477)))

(assert (=> b!6503166 (= res!2670735 (not lt!2392385))))

(declare-fun setIsEmpty!44339 () Bool)

(assert (=> setIsEmpty!44339 setRes!44339))

(declare-fun lt!2392390 () Context!11534)

(assert (=> b!6503167 (= e!3940482 (inv!84204 lt!2392390))))

(declare-fun lambda!360521 () Int)

(declare-fun lt!2392369 () (InoxSet Context!11534))

(declare-fun lt!2392391 () List!65448)

(declare-fun map!14883 ((InoxSet Context!11534) Int) (InoxSet Context!11534))

(declare-fun ++!14469 (List!65448 List!65448) List!65448)

(assert (=> b!6503167 (= (map!14883 lt!2392369 lambda!360521) (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391)) true))))

(declare-fun lt!2392377 () Unit!158867)

(declare-fun lambda!360522 () Int)

(declare-fun lemmaConcatPreservesForall!356 (List!65448 List!65448 Int) Unit!158867)

(assert (=> b!6503167 (= lt!2392377 (lemmaConcatPreservesForall!356 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391 lambda!360522))))

(declare-fun lt!2392398 () Unit!158867)

(declare-fun lt!2392373 () Context!11534)

(declare-fun lemmaMapOnSingletonSet!166 ((InoxSet Context!11534) Context!11534 Int) Unit!158867)

(assert (=> b!6503167 (= lt!2392398 (lemmaMapOnSingletonSet!166 lt!2392369 lt!2392373 lambda!360521))))

(declare-fun b!6503168 () Bool)

(declare-fun tp_is_empty!42019 () Bool)

(assert (=> b!6503168 (= e!3940469 tp_is_empty!42019)))

(declare-fun b!6503169 () Bool)

(declare-fun res!2670718 () Bool)

(assert (=> b!6503169 (=> res!2670718 e!3940489)))

(declare-fun isEmpty!37529 (List!65450) Bool)

(assert (=> b!6503169 (= res!2670718 (not (isEmpty!37529 (t!379084 zl!343))))))

(declare-fun b!6503170 () Bool)

(declare-fun e!3940473 () Bool)

(assert (=> b!6503170 (= e!3940473 (matchZipper!2395 lt!2392382 (t!379083 s!2326)))))

(declare-fun b!6503171 () Bool)

(declare-fun e!3940471 () Bool)

(declare-fun e!3940479 () Bool)

(assert (=> b!6503171 (= e!3940471 e!3940479)))

(declare-fun res!2670744 () Bool)

(assert (=> b!6503171 (=> res!2670744 e!3940479)))

(declare-fun unfocusZipper!2125 (List!65450) Regex!16383)

(assert (=> b!6503171 (= res!2670744 (not (= (unfocusZipper!2125 (Cons!65326 lt!2392373 Nil!65326)) (reg!16712 (regOne!33278 r!7292)))))))

(declare-fun lt!2392388 () Context!11534)

(declare-fun lt!2392395 () (InoxSet Context!11534))

(assert (=> b!6503171 (= (flatMap!1888 lt!2392395 lambda!360520) (derivationStepZipperUp!1557 lt!2392388 (h!71773 s!2326)))))

(declare-fun lt!2392401 () Unit!158867)

(assert (=> b!6503171 (= lt!2392401 (lemmaFlatMapOnSingletonSet!1414 lt!2392395 lt!2392388 lambda!360520))))

(assert (=> b!6503171 (= (flatMap!1888 lt!2392369 lambda!360520) (derivationStepZipperUp!1557 lt!2392373 (h!71773 s!2326)))))

(declare-fun lt!2392384 () Unit!158867)

(assert (=> b!6503171 (= lt!2392384 (lemmaFlatMapOnSingletonSet!1414 lt!2392369 lt!2392373 lambda!360520))))

(declare-fun lt!2392374 () (InoxSet Context!11534))

(assert (=> b!6503171 (= lt!2392374 (derivationStepZipperUp!1557 lt!2392388 (h!71773 s!2326)))))

(declare-fun lt!2392402 () (InoxSet Context!11534))

(assert (=> b!6503171 (= lt!2392402 (derivationStepZipperUp!1557 lt!2392373 (h!71773 s!2326)))))

(assert (=> b!6503171 (= lt!2392395 (store ((as const (Array Context!11534 Bool)) false) lt!2392388 true))))

(assert (=> b!6503171 (= lt!2392369 (store ((as const (Array Context!11534 Bool)) false) lt!2392373 true))))

(assert (=> b!6503171 (= lt!2392373 (Context!11535 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))

(declare-fun b!6503172 () Bool)

(declare-fun e!3940483 () Bool)

(assert (=> b!6503172 (= e!3940483 e!3940485)))

(declare-fun res!2670730 () Bool)

(assert (=> b!6503172 (=> res!2670730 e!3940485)))

(declare-fun lt!2392399 () (InoxSet Context!11534))

(assert (=> b!6503172 (= res!2670730 (not (= lt!2392396 lt!2392399)))))

(assert (=> b!6503172 (= (flatMap!1888 lt!2392366 lambda!360520) (derivationStepZipperUp!1557 lt!2392390 (h!71773 s!2326)))))

(declare-fun lt!2392394 () Unit!158867)

(assert (=> b!6503172 (= lt!2392394 (lemmaFlatMapOnSingletonSet!1414 lt!2392366 lt!2392390 lambda!360520))))

(declare-fun lt!2392367 () (InoxSet Context!11534))

(assert (=> b!6503172 (= lt!2392367 (derivationStepZipperUp!1557 lt!2392390 (h!71773 s!2326)))))

(declare-fun derivationStepZipper!2349 ((InoxSet Context!11534) C!33036) (InoxSet Context!11534))

(assert (=> b!6503172 (= lt!2392396 (derivationStepZipper!2349 lt!2392366 (h!71773 s!2326)))))

(assert (=> b!6503172 (= lt!2392366 (store ((as const (Array Context!11534 Bool)) false) lt!2392390 true))))

(assert (=> b!6503172 (= lt!2392390 (Context!11535 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) lt!2392391)))))

(declare-fun b!6503173 () Bool)

(declare-fun res!2670727 () Bool)

(assert (=> b!6503173 (=> res!2670727 e!3940489)))

(declare-fun generalisedUnion!2227 (List!65448) Regex!16383)

(declare-fun unfocusZipperList!1804 (List!65450) List!65448)

(assert (=> b!6503173 (= res!2670727 (not (= r!7292 (generalisedUnion!2227 (unfocusZipperList!1804 zl!343)))))))

(declare-fun b!6503174 () Bool)

(declare-fun tp!1798817 () Bool)

(assert (=> b!6503174 (= e!3940469 tp!1798817)))

(declare-fun b!6503175 () Bool)

(declare-fun res!2670740 () Bool)

(assert (=> b!6503175 (=> res!2670740 e!3940481)))

(declare-fun isEmpty!37530 (List!65448) Bool)

(assert (=> b!6503175 (= res!2670740 (isEmpty!37530 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503176 () Bool)

(declare-fun e!3940488 () Bool)

(assert (=> b!6503176 (= e!3940480 e!3940488)))

(declare-fun res!2670722 () Bool)

(assert (=> b!6503176 (=> res!2670722 e!3940488)))

(declare-fun lt!2392387 () Regex!16383)

(assert (=> b!6503176 (= res!2670722 (not (= r!7292 lt!2392387)))))

(declare-fun lt!2392378 () Regex!16383)

(assert (=> b!6503176 (= lt!2392387 (Concat!25228 lt!2392378 (regTwo!33278 r!7292)))))

(declare-fun b!6503177 () Bool)

(assert (=> b!6503177 (= e!3940475 (nullable!6376 (regOne!33278 (regOne!33278 r!7292))))))

(declare-fun b!6503178 () Bool)

(assert (=> b!6503178 (= e!3940490 e!3940483)))

(declare-fun res!2670724 () Bool)

(assert (=> b!6503178 (=> res!2670724 e!3940483)))

(assert (=> b!6503178 (= res!2670724 (not (= lt!2392389 lt!2392399)))))

(assert (=> b!6503178 (= lt!2392399 (derivationStepZipperDown!1631 (reg!16712 (regOne!33278 r!7292)) lt!2392388 (h!71773 s!2326)))))

(assert (=> b!6503178 (= lt!2392388 (Context!11535 lt!2392391))))

(assert (=> b!6503178 (= lt!2392391 (Cons!65324 lt!2392378 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> b!6503178 (= lt!2392378 (Star!16383 (reg!16712 (regOne!33278 r!7292))))))

(declare-fun b!6503179 () Bool)

(declare-fun res!2670743 () Bool)

(assert (=> b!6503179 (=> res!2670743 e!3940489)))

(assert (=> b!6503179 (= res!2670743 (or ((_ is EmptyExpr!16383) r!7292) ((_ is EmptyLang!16383) r!7292) ((_ is ElementMatch!16383) r!7292) ((_ is Union!16383) r!7292) (not ((_ is Concat!25228) r!7292))))))

(declare-fun b!6503180 () Bool)

(declare-fun res!2670731 () Bool)

(assert (=> b!6503180 (=> res!2670731 e!3940477)))

(assert (=> b!6503180 (= res!2670731 (not (matchZipper!2395 z!1189 s!2326)))))

(declare-fun b!6503181 () Bool)

(declare-fun e!3940474 () Bool)

(declare-fun tp!1798812 () Bool)

(assert (=> b!6503181 (= e!3940474 (and tp_is_empty!42019 tp!1798812))))

(assert (=> b!6503182 (= e!3940489 e!3940481)))

(declare-fun res!2670720 () Bool)

(assert (=> b!6503182 (=> res!2670720 e!3940481)))

(declare-fun lt!2392370 () Bool)

(declare-fun lt!2392393 () Bool)

(assert (=> b!6503182 (= res!2670720 (or (not (= lt!2392370 lt!2392393)) ((_ is Nil!65325) s!2326)))))

(declare-fun Exists!3453 (Int) Bool)

(assert (=> b!6503182 (= (Exists!3453 lambda!360518) (Exists!3453 lambda!360519))))

(declare-fun lt!2392380 () Unit!158867)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1990 (Regex!16383 Regex!16383 List!65449) Unit!158867)

(assert (=> b!6503182 (= lt!2392380 (lemmaExistCutMatchRandMatchRSpecEquivalent!1990 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326))))

(assert (=> b!6503182 (= lt!2392393 (Exists!3453 lambda!360518))))

(declare-datatypes ((tuple2!66724 0))(
  ( (tuple2!66725 (_1!36665 List!65449) (_2!36665 List!65449)) )
))
(declare-datatypes ((Option!16274 0))(
  ( (None!16273) (Some!16273 (v!52452 tuple2!66724)) )
))
(declare-fun isDefined!12977 (Option!16274) Bool)

(declare-fun findConcatSeparation!2688 (Regex!16383 Regex!16383 List!65449 List!65449 List!65449) Option!16274)

(assert (=> b!6503182 (= lt!2392393 (isDefined!12977 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326)))))

(declare-fun lt!2392383 () Unit!158867)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2452 (Regex!16383 Regex!16383 List!65449) Unit!158867)

(assert (=> b!6503182 (= lt!2392383 (lemmaFindConcatSeparationEquivalentToExists!2452 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326))))

(declare-fun b!6503183 () Bool)

(declare-fun res!2670719 () Bool)

(declare-fun e!3940484 () Bool)

(assert (=> b!6503183 (=> (not res!2670719) (not e!3940484))))

(declare-fun toList!10167 ((InoxSet Context!11534)) List!65450)

(assert (=> b!6503183 (= res!2670719 (= (toList!10167 z!1189) zl!343))))

(declare-fun b!6503184 () Bool)

(declare-fun e!3940487 () Bool)

(assert (=> b!6503184 (= e!3940487 (not e!3940489))))

(declare-fun res!2670739 () Bool)

(assert (=> b!6503184 (=> res!2670739 e!3940489)))

(assert (=> b!6503184 (= res!2670739 (not ((_ is Cons!65326) zl!343)))))

(declare-fun matchRSpec!3484 (Regex!16383 List!65449) Bool)

(assert (=> b!6503184 (= lt!2392370 (matchRSpec!3484 r!7292 s!2326))))

(declare-fun matchR!8566 (Regex!16383 List!65449) Bool)

(assert (=> b!6503184 (= lt!2392370 (matchR!8566 r!7292 s!2326))))

(declare-fun lt!2392392 () Unit!158867)

(declare-fun mainMatchTheorem!3484 (Regex!16383 List!65449) Unit!158867)

(assert (=> b!6503184 (= lt!2392392 (mainMatchTheorem!3484 r!7292 s!2326))))

(declare-fun b!6503185 () Bool)

(declare-fun res!2670723 () Bool)

(assert (=> b!6503185 (=> res!2670723 e!3940490)))

(assert (=> b!6503185 (= res!2670723 (or ((_ is Concat!25228) (regOne!33278 r!7292)) (not ((_ is Star!16383) (regOne!33278 r!7292)))))))

(declare-fun b!6503186 () Bool)

(declare-fun e!3940470 () Bool)

(declare-fun tp!1798818 () Bool)

(assert (=> b!6503186 (= e!3940470 tp!1798818)))

(declare-fun tp!1798816 () Bool)

(declare-fun b!6503187 () Bool)

(declare-fun e!3940478 () Bool)

(assert (=> b!6503187 (= e!3940478 (and (inv!84204 (h!71774 zl!343)) e!3940470 tp!1798816))))

(declare-fun b!6503188 () Bool)

(assert (=> b!6503188 (= e!3940479 e!3940477)))

(declare-fun res!2670728 () Bool)

(assert (=> b!6503188 (=> res!2670728 e!3940477)))

(assert (=> b!6503188 (= res!2670728 lt!2392370)))

(declare-fun lt!2392375 () Regex!16383)

(assert (=> b!6503188 (= (matchR!8566 lt!2392375 s!2326) (matchRSpec!3484 lt!2392375 s!2326))))

(declare-fun lt!2392368 () Unit!158867)

(assert (=> b!6503188 (= lt!2392368 (mainMatchTheorem!3484 lt!2392375 s!2326))))

(declare-fun res!2670726 () Bool)

(assert (=> start!638942 (=> (not res!2670726) (not e!3940484))))

(declare-fun validRegex!8119 (Regex!16383) Bool)

(assert (=> start!638942 (= res!2670726 (validRegex!8119 r!7292))))

(assert (=> start!638942 e!3940484))

(assert (=> start!638942 e!3940469))

(declare-fun condSetEmpty!44339 () Bool)

(assert (=> start!638942 (= condSetEmpty!44339 (= z!1189 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> start!638942 setRes!44339))

(assert (=> start!638942 e!3940478))

(assert (=> start!638942 e!3940474))

(declare-fun b!6503189 () Bool)

(declare-fun Unit!158870 () Unit!158867)

(assert (=> b!6503189 (= e!3940486 Unit!158870)))

(declare-fun lt!2392372 () Unit!158867)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1214 ((InoxSet Context!11534) (InoxSet Context!11534) List!65449) Unit!158867)

(assert (=> b!6503189 (= lt!2392372 (lemmaZipperConcatMatchesSameAsBothZippers!1214 lt!2392389 lt!2392382 (t!379083 s!2326)))))

(declare-fun res!2670729 () Bool)

(assert (=> b!6503189 (= res!2670729 (matchZipper!2395 lt!2392389 (t!379083 s!2326)))))

(assert (=> b!6503189 (=> res!2670729 e!3940473)))

(assert (=> b!6503189 (= (matchZipper!2395 ((_ map or) lt!2392389 lt!2392382) (t!379083 s!2326)) e!3940473)))

(declare-fun b!6503190 () Bool)

(assert (=> b!6503190 (= e!3940488 e!3940471)))

(declare-fun res!2670738 () Bool)

(assert (=> b!6503190 (=> res!2670738 e!3940471)))

(assert (=> b!6503190 (= res!2670738 (not (= (unfocusZipper!2125 (Cons!65326 lt!2392390 Nil!65326)) lt!2392375)))))

(assert (=> b!6503190 (= lt!2392375 (Concat!25228 (reg!16712 (regOne!33278 r!7292)) lt!2392387))))

(declare-fun b!6503191 () Bool)

(assert (=> b!6503191 (= e!3940484 e!3940487)))

(declare-fun res!2670736 () Bool)

(assert (=> b!6503191 (=> (not res!2670736) (not e!3940487))))

(declare-fun lt!2392376 () Regex!16383)

(assert (=> b!6503191 (= res!2670736 (= r!7292 lt!2392376))))

(assert (=> b!6503191 (= lt!2392376 (unfocusZipper!2125 zl!343))))

(declare-fun b!6503192 () Bool)

(declare-fun res!2670741 () Bool)

(assert (=> b!6503192 (=> res!2670741 e!3940489)))

(assert (=> b!6503192 (= res!2670741 (not ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503193 () Bool)

(declare-fun res!2670721 () Bool)

(assert (=> b!6503193 (=> res!2670721 e!3940479)))

(assert (=> b!6503193 (= res!2670721 (not (= (unfocusZipper!2125 (Cons!65326 lt!2392388 Nil!65326)) lt!2392387)))))

(declare-fun b!6503194 () Bool)

(assert (=> b!6503194 (= e!3940472 (not (matchZipper!2395 lt!2392382 (t!379083 s!2326))))))

(declare-fun b!6503195 () Bool)

(declare-fun res!2670732 () Bool)

(assert (=> b!6503195 (=> res!2670732 e!3940480)))

(assert (=> b!6503195 (= res!2670732 (not (= lt!2392376 r!7292)))))

(assert (= (and start!638942 res!2670726) b!6503183))

(assert (= (and b!6503183 res!2670719) b!6503191))

(assert (= (and b!6503191 res!2670736) b!6503184))

(assert (= (and b!6503184 (not res!2670739)) b!6503169))

(assert (= (and b!6503169 (not res!2670718)) b!6503162))

(assert (= (and b!6503162 (not res!2670734)) b!6503192))

(assert (= (and b!6503192 (not res!2670741)) b!6503173))

(assert (= (and b!6503173 (not res!2670727)) b!6503179))

(assert (= (and b!6503179 (not res!2670743)) b!6503182))

(assert (= (and b!6503182 (not res!2670720)) b!6503175))

(assert (= (and b!6503175 (not res!2670740)) b!6503160))

(assert (= (and b!6503160 c!1192454) b!6503189))

(assert (= (and b!6503160 (not c!1192454)) b!6503161))

(assert (= (and b!6503189 (not res!2670729)) b!6503170))

(assert (= (and b!6503160 (not res!2670717)) b!6503156))

(assert (= (and b!6503156 res!2670733) b!6503177))

(assert (= (and b!6503156 (not res!2670716)) b!6503185))

(assert (= (and b!6503185 (not res!2670723)) b!6503178))

(assert (= (and b!6503178 (not res!2670724)) b!6503172))

(assert (= (and b!6503172 (not res!2670730)) b!6503165))

(assert (= (and b!6503165 (not res!2670715)) b!6503195))

(assert (= (and b!6503195 (not res!2670732)) b!6503176))

(assert (= (and b!6503176 (not res!2670722)) b!6503190))

(assert (= (and b!6503190 (not res!2670738)) b!6503171))

(assert (= (and b!6503171 (not res!2670744)) b!6503193))

(assert (= (and b!6503193 (not res!2670721)) b!6503188))

(assert (= (and b!6503188 (not res!2670728)) b!6503180))

(assert (= (and b!6503180 (not res!2670731)) b!6503166))

(assert (= (and b!6503166 (not res!2670735)) b!6503159))

(assert (= (and b!6503159 res!2670725) b!6503194))

(assert (= (and b!6503159 (not res!2670737)) b!6503158))

(assert (= (and b!6503158 (not res!2670742)) b!6503167))

(assert (= (and start!638942 ((_ is ElementMatch!16383) r!7292)) b!6503168))

(assert (= (and start!638942 ((_ is Concat!25228) r!7292)) b!6503164))

(assert (= (and start!638942 ((_ is Star!16383) r!7292)) b!6503174))

(assert (= (and start!638942 ((_ is Union!16383) r!7292)) b!6503163))

(assert (= (and start!638942 condSetEmpty!44339) setIsEmpty!44339))

(assert (= (and start!638942 (not condSetEmpty!44339)) setNonEmpty!44339))

(assert (= setNonEmpty!44339 b!6503157))

(assert (= b!6503187 b!6503186))

(assert (= (and start!638942 ((_ is Cons!65326) zl!343)) b!6503187))

(assert (= (and start!638942 ((_ is Cons!65325) s!2326)) b!6503181))

(declare-fun m!7290420 () Bool)

(assert (=> start!638942 m!7290420))

(declare-fun m!7290422 () Bool)

(assert (=> b!6503182 m!7290422))

(declare-fun m!7290424 () Bool)

(assert (=> b!6503182 m!7290424))

(declare-fun m!7290426 () Bool)

(assert (=> b!6503182 m!7290426))

(assert (=> b!6503182 m!7290426))

(declare-fun m!7290428 () Bool)

(assert (=> b!6503182 m!7290428))

(assert (=> b!6503182 m!7290422))

(declare-fun m!7290430 () Bool)

(assert (=> b!6503182 m!7290430))

(declare-fun m!7290432 () Bool)

(assert (=> b!6503182 m!7290432))

(declare-fun m!7290434 () Bool)

(assert (=> b!6503177 m!7290434))

(declare-fun m!7290436 () Bool)

(assert (=> b!6503170 m!7290436))

(declare-fun m!7290438 () Bool)

(assert (=> b!6503180 m!7290438))

(declare-fun m!7290440 () Bool)

(assert (=> b!6503160 m!7290440))

(declare-fun m!7290442 () Bool)

(assert (=> b!6503160 m!7290442))

(declare-fun m!7290444 () Bool)

(assert (=> b!6503160 m!7290444))

(declare-fun m!7290446 () Bool)

(assert (=> b!6503160 m!7290446))

(declare-fun m!7290448 () Bool)

(assert (=> b!6503160 m!7290448))

(declare-fun m!7290450 () Bool)

(assert (=> b!6503160 m!7290450))

(declare-fun m!7290452 () Bool)

(assert (=> b!6503160 m!7290452))

(declare-fun m!7290454 () Bool)

(assert (=> b!6503183 m!7290454))

(declare-fun m!7290456 () Bool)

(assert (=> b!6503190 m!7290456))

(declare-fun m!7290458 () Bool)

(assert (=> b!6503193 m!7290458))

(declare-fun m!7290460 () Bool)

(assert (=> setNonEmpty!44339 m!7290460))

(declare-fun m!7290462 () Bool)

(assert (=> b!6503162 m!7290462))

(declare-fun m!7290464 () Bool)

(assert (=> b!6503169 m!7290464))

(declare-fun m!7290466 () Bool)

(assert (=> b!6503172 m!7290466))

(declare-fun m!7290468 () Bool)

(assert (=> b!6503172 m!7290468))

(declare-fun m!7290470 () Bool)

(assert (=> b!6503172 m!7290470))

(declare-fun m!7290472 () Bool)

(assert (=> b!6503172 m!7290472))

(declare-fun m!7290474 () Bool)

(assert (=> b!6503172 m!7290474))

(declare-fun m!7290476 () Bool)

(assert (=> b!6503178 m!7290476))

(declare-fun m!7290478 () Bool)

(assert (=> b!6503171 m!7290478))

(declare-fun m!7290480 () Bool)

(assert (=> b!6503171 m!7290480))

(declare-fun m!7290482 () Bool)

(assert (=> b!6503171 m!7290482))

(declare-fun m!7290484 () Bool)

(assert (=> b!6503171 m!7290484))

(declare-fun m!7290486 () Bool)

(assert (=> b!6503171 m!7290486))

(declare-fun m!7290488 () Bool)

(assert (=> b!6503171 m!7290488))

(declare-fun m!7290490 () Bool)

(assert (=> b!6503171 m!7290490))

(declare-fun m!7290492 () Bool)

(assert (=> b!6503171 m!7290492))

(declare-fun m!7290494 () Bool)

(assert (=> b!6503171 m!7290494))

(declare-fun m!7290496 () Bool)

(assert (=> b!6503189 m!7290496))

(declare-fun m!7290498 () Bool)

(assert (=> b!6503189 m!7290498))

(declare-fun m!7290500 () Bool)

(assert (=> b!6503189 m!7290500))

(declare-fun m!7290502 () Bool)

(assert (=> b!6503191 m!7290502))

(declare-fun m!7290504 () Bool)

(assert (=> b!6503173 m!7290504))

(assert (=> b!6503173 m!7290504))

(declare-fun m!7290506 () Bool)

(assert (=> b!6503173 m!7290506))

(declare-fun m!7290508 () Bool)

(assert (=> b!6503165 m!7290508))

(declare-fun m!7290510 () Bool)

(assert (=> b!6503165 m!7290510))

(declare-fun m!7290512 () Bool)

(assert (=> b!6503175 m!7290512))

(assert (=> b!6503194 m!7290436))

(declare-fun m!7290514 () Bool)

(assert (=> b!6503188 m!7290514))

(declare-fun m!7290516 () Bool)

(assert (=> b!6503188 m!7290516))

(declare-fun m!7290518 () Bool)

(assert (=> b!6503188 m!7290518))

(declare-fun m!7290520 () Bool)

(assert (=> b!6503187 m!7290520))

(declare-fun m!7290522 () Bool)

(assert (=> b!6503167 m!7290522))

(declare-fun m!7290524 () Bool)

(assert (=> b!6503167 m!7290524))

(declare-fun m!7290526 () Bool)

(assert (=> b!6503167 m!7290526))

(declare-fun m!7290528 () Bool)

(assert (=> b!6503167 m!7290528))

(declare-fun m!7290530 () Bool)

(assert (=> b!6503167 m!7290530))

(declare-fun m!7290532 () Bool)

(assert (=> b!6503167 m!7290532))

(assert (=> b!6503159 m!7290498))

(declare-fun m!7290534 () Bool)

(assert (=> b!6503184 m!7290534))

(declare-fun m!7290536 () Bool)

(assert (=> b!6503184 m!7290536))

(declare-fun m!7290538 () Bool)

(assert (=> b!6503184 m!7290538))

(check-sat (not b!6503184) (not b!6503169) (not b!6503183) (not b!6503172) (not b!6503174) (not b!6503167) (not b!6503170) (not b!6503181) (not b!6503182) (not b!6503177) (not b!6503194) (not b!6503171) (not b!6503175) (not setNonEmpty!44339) (not b!6503189) (not b!6503165) tp_is_empty!42019 (not b!6503180) (not start!638942) (not b!6503159) (not b!6503187) (not b!6503193) (not b!6503157) (not b!6503160) (not b!6503164) (not b!6503163) (not b!6503186) (not b!6503188) (not b!6503190) (not b!6503162) (not b!6503191) (not b!6503173) (not b!6503178))
(check-sat)
(get-model)

(declare-fun d!2040439 () Bool)

(assert (=> d!2040439 (= (isEmpty!37530 (t!379082 (exprs!6267 (h!71774 zl!343)))) ((_ is Nil!65324) (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> b!6503175 d!2040439))

(declare-fun bs!1651720 () Bool)

(declare-fun d!2040441 () Bool)

(assert (= bs!1651720 (and d!2040441 b!6503167)))

(declare-fun lambda!360559 () Int)

(assert (=> bs!1651720 (= lambda!360559 lambda!360522)))

(declare-fun b!6503640 () Bool)

(declare-fun e!3940737 () Regex!16383)

(assert (=> b!6503640 (= e!3940737 (Union!16383 (h!71772 (unfocusZipperList!1804 zl!343)) (generalisedUnion!2227 (t!379082 (unfocusZipperList!1804 zl!343)))))))

(declare-fun b!6503641 () Bool)

(declare-fun e!3940740 () Bool)

(declare-fun e!3940735 () Bool)

(assert (=> b!6503641 (= e!3940740 e!3940735)))

(declare-fun c!1192582 () Bool)

(declare-fun tail!12322 (List!65448) List!65448)

(assert (=> b!6503641 (= c!1192582 (isEmpty!37530 (tail!12322 (unfocusZipperList!1804 zl!343))))))

(declare-fun e!3940736 () Bool)

(assert (=> d!2040441 e!3940736))

(declare-fun res!2670883 () Bool)

(assert (=> d!2040441 (=> (not res!2670883) (not e!3940736))))

(declare-fun lt!2392465 () Regex!16383)

(assert (=> d!2040441 (= res!2670883 (validRegex!8119 lt!2392465))))

(declare-fun e!3940738 () Regex!16383)

(assert (=> d!2040441 (= lt!2392465 e!3940738)))

(declare-fun c!1192581 () Bool)

(declare-fun e!3940739 () Bool)

(assert (=> d!2040441 (= c!1192581 e!3940739)))

(declare-fun res!2670884 () Bool)

(assert (=> d!2040441 (=> (not res!2670884) (not e!3940739))))

(assert (=> d!2040441 (= res!2670884 ((_ is Cons!65324) (unfocusZipperList!1804 zl!343)))))

(declare-fun forall!15564 (List!65448 Int) Bool)

(assert (=> d!2040441 (forall!15564 (unfocusZipperList!1804 zl!343) lambda!360559)))

(assert (=> d!2040441 (= (generalisedUnion!2227 (unfocusZipperList!1804 zl!343)) lt!2392465)))

(declare-fun b!6503642 () Bool)

(assert (=> b!6503642 (= e!3940739 (isEmpty!37530 (t!379082 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6503643 () Bool)

(assert (=> b!6503643 (= e!3940738 e!3940737)))

(declare-fun c!1192583 () Bool)

(assert (=> b!6503643 (= c!1192583 ((_ is Cons!65324) (unfocusZipperList!1804 zl!343)))))

(declare-fun b!6503644 () Bool)

(declare-fun isUnion!1211 (Regex!16383) Bool)

(assert (=> b!6503644 (= e!3940735 (isUnion!1211 lt!2392465))))

(declare-fun b!6503645 () Bool)

(assert (=> b!6503645 (= e!3940738 (h!71772 (unfocusZipperList!1804 zl!343)))))

(declare-fun b!6503646 () Bool)

(assert (=> b!6503646 (= e!3940736 e!3940740)))

(declare-fun c!1192580 () Bool)

(assert (=> b!6503646 (= c!1192580 (isEmpty!37530 (unfocusZipperList!1804 zl!343)))))

(declare-fun b!6503647 () Bool)

(declare-fun head!13237 (List!65448) Regex!16383)

(assert (=> b!6503647 (= e!3940735 (= lt!2392465 (head!13237 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6503648 () Bool)

(assert (=> b!6503648 (= e!3940737 EmptyLang!16383)))

(declare-fun b!6503649 () Bool)

(declare-fun isEmptyLang!1781 (Regex!16383) Bool)

(assert (=> b!6503649 (= e!3940740 (isEmptyLang!1781 lt!2392465))))

(assert (= (and d!2040441 res!2670884) b!6503642))

(assert (= (and d!2040441 c!1192581) b!6503645))

(assert (= (and d!2040441 (not c!1192581)) b!6503643))

(assert (= (and b!6503643 c!1192583) b!6503640))

(assert (= (and b!6503643 (not c!1192583)) b!6503648))

(assert (= (and d!2040441 res!2670883) b!6503646))

(assert (= (and b!6503646 c!1192580) b!6503649))

(assert (= (and b!6503646 (not c!1192580)) b!6503641))

(assert (= (and b!6503641 c!1192582) b!6503647))

(assert (= (and b!6503641 (not c!1192582)) b!6503644))

(assert (=> b!6503641 m!7290504))

(declare-fun m!7290862 () Bool)

(assert (=> b!6503641 m!7290862))

(assert (=> b!6503641 m!7290862))

(declare-fun m!7290864 () Bool)

(assert (=> b!6503641 m!7290864))

(declare-fun m!7290866 () Bool)

(assert (=> b!6503649 m!7290866))

(declare-fun m!7290868 () Bool)

(assert (=> d!2040441 m!7290868))

(assert (=> d!2040441 m!7290504))

(declare-fun m!7290870 () Bool)

(assert (=> d!2040441 m!7290870))

(declare-fun m!7290872 () Bool)

(assert (=> b!6503644 m!7290872))

(assert (=> b!6503646 m!7290504))

(declare-fun m!7290874 () Bool)

(assert (=> b!6503646 m!7290874))

(declare-fun m!7290876 () Bool)

(assert (=> b!6503642 m!7290876))

(assert (=> b!6503647 m!7290504))

(declare-fun m!7290878 () Bool)

(assert (=> b!6503647 m!7290878))

(declare-fun m!7290880 () Bool)

(assert (=> b!6503640 m!7290880))

(assert (=> b!6503173 d!2040441))

(declare-fun bs!1651721 () Bool)

(declare-fun d!2040443 () Bool)

(assert (= bs!1651721 (and d!2040443 b!6503167)))

(declare-fun lambda!360562 () Int)

(assert (=> bs!1651721 (= lambda!360562 lambda!360522)))

(declare-fun bs!1651722 () Bool)

(assert (= bs!1651722 (and d!2040443 d!2040441)))

(assert (=> bs!1651722 (= lambda!360562 lambda!360559)))

(declare-fun lt!2392468 () List!65448)

(assert (=> d!2040443 (forall!15564 lt!2392468 lambda!360562)))

(declare-fun e!3940743 () List!65448)

(assert (=> d!2040443 (= lt!2392468 e!3940743)))

(declare-fun c!1192586 () Bool)

(assert (=> d!2040443 (= c!1192586 ((_ is Cons!65326) zl!343))))

(assert (=> d!2040443 (= (unfocusZipperList!1804 zl!343) lt!2392468)))

(declare-fun b!6503654 () Bool)

(assert (=> b!6503654 (= e!3940743 (Cons!65324 (generalisedConcat!1980 (exprs!6267 (h!71774 zl!343))) (unfocusZipperList!1804 (t!379084 zl!343))))))

(declare-fun b!6503655 () Bool)

(assert (=> b!6503655 (= e!3940743 Nil!65324)))

(assert (= (and d!2040443 c!1192586) b!6503654))

(assert (= (and d!2040443 (not c!1192586)) b!6503655))

(declare-fun m!7290882 () Bool)

(assert (=> d!2040443 m!7290882))

(assert (=> b!6503654 m!7290462))

(declare-fun m!7290884 () Bool)

(assert (=> b!6503654 m!7290884))

(assert (=> b!6503173 d!2040443))

(declare-fun d!2040445 () Bool)

(declare-fun lt!2392471 () Regex!16383)

(assert (=> d!2040445 (validRegex!8119 lt!2392471)))

(assert (=> d!2040445 (= lt!2392471 (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))

(assert (=> d!2040445 (= (unfocusZipper!2125 (Cons!65326 lt!2392388 Nil!65326)) lt!2392471)))

(declare-fun bs!1651723 () Bool)

(assert (= bs!1651723 d!2040445))

(declare-fun m!7290886 () Bool)

(assert (=> bs!1651723 m!7290886))

(declare-fun m!7290888 () Bool)

(assert (=> bs!1651723 m!7290888))

(assert (=> bs!1651723 m!7290888))

(declare-fun m!7290890 () Bool)

(assert (=> bs!1651723 m!7290890))

(assert (=> b!6503193 d!2040445))

(declare-fun d!2040447 () Bool)

(declare-fun choose!48299 ((InoxSet Context!11534) Int) (InoxSet Context!11534))

(assert (=> d!2040447 (= (flatMap!1888 lt!2392366 lambda!360520) (choose!48299 lt!2392366 lambda!360520))))

(declare-fun bs!1651724 () Bool)

(assert (= bs!1651724 d!2040447))

(declare-fun m!7290892 () Bool)

(assert (=> bs!1651724 m!7290892))

(assert (=> b!6503172 d!2040447))

(declare-fun b!6503666 () Bool)

(declare-fun e!3940752 () (InoxSet Context!11534))

(declare-fun call!563563 () (InoxSet Context!11534))

(assert (=> b!6503666 (= e!3940752 call!563563)))

(declare-fun b!6503667 () Bool)

(declare-fun e!3940750 () (InoxSet Context!11534))

(assert (=> b!6503667 (= e!3940750 e!3940752)))

(declare-fun c!1192591 () Bool)

(assert (=> b!6503667 (= c!1192591 ((_ is Cons!65324) (exprs!6267 lt!2392390)))))

(declare-fun b!6503668 () Bool)

(assert (=> b!6503668 (= e!3940752 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503669 () Bool)

(assert (=> b!6503669 (= e!3940750 ((_ map or) call!563563 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (h!71773 s!2326))))))

(declare-fun b!6503670 () Bool)

(declare-fun e!3940751 () Bool)

(assert (=> b!6503670 (= e!3940751 (nullable!6376 (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun bm!563558 () Bool)

(assert (=> bm!563558 (= call!563563 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392390)) (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (h!71773 s!2326)))))

(declare-fun d!2040449 () Bool)

(declare-fun c!1192592 () Bool)

(assert (=> d!2040449 (= c!1192592 e!3940751)))

(declare-fun res!2670887 () Bool)

(assert (=> d!2040449 (=> (not res!2670887) (not e!3940751))))

(assert (=> d!2040449 (= res!2670887 ((_ is Cons!65324) (exprs!6267 lt!2392390)))))

(assert (=> d!2040449 (= (derivationStepZipperUp!1557 lt!2392390 (h!71773 s!2326)) e!3940750)))

(assert (= (and d!2040449 res!2670887) b!6503670))

(assert (= (and d!2040449 c!1192592) b!6503669))

(assert (= (and d!2040449 (not c!1192592)) b!6503667))

(assert (= (and b!6503667 c!1192591) b!6503666))

(assert (= (and b!6503667 (not c!1192591)) b!6503668))

(assert (= (or b!6503669 b!6503666) bm!563558))

(declare-fun m!7290894 () Bool)

(assert (=> b!6503669 m!7290894))

(declare-fun m!7290896 () Bool)

(assert (=> b!6503670 m!7290896))

(declare-fun m!7290898 () Bool)

(assert (=> bm!563558 m!7290898))

(assert (=> b!6503172 d!2040449))

(declare-fun d!2040451 () Bool)

(declare-fun dynLambda!25950 (Int Context!11534) (InoxSet Context!11534))

(assert (=> d!2040451 (= (flatMap!1888 lt!2392366 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392390))))

(declare-fun lt!2392474 () Unit!158867)

(declare-fun choose!48302 ((InoxSet Context!11534) Context!11534 Int) Unit!158867)

(assert (=> d!2040451 (= lt!2392474 (choose!48302 lt!2392366 lt!2392390 lambda!360520))))

(assert (=> d!2040451 (= lt!2392366 (store ((as const (Array Context!11534 Bool)) false) lt!2392390 true))))

(assert (=> d!2040451 (= (lemmaFlatMapOnSingletonSet!1414 lt!2392366 lt!2392390 lambda!360520) lt!2392474)))

(declare-fun b_lambda!246197 () Bool)

(assert (=> (not b_lambda!246197) (not d!2040451)))

(declare-fun bs!1651725 () Bool)

(assert (= bs!1651725 d!2040451))

(assert (=> bs!1651725 m!7290470))

(declare-fun m!7290900 () Bool)

(assert (=> bs!1651725 m!7290900))

(declare-fun m!7290902 () Bool)

(assert (=> bs!1651725 m!7290902))

(assert (=> bs!1651725 m!7290472))

(assert (=> b!6503172 d!2040451))

(declare-fun bs!1651726 () Bool)

(declare-fun d!2040453 () Bool)

(assert (= bs!1651726 (and d!2040453 b!6503160)))

(declare-fun lambda!360565 () Int)

(assert (=> bs!1651726 (= lambda!360565 lambda!360520)))

(assert (=> d!2040453 true))

(assert (=> d!2040453 (= (derivationStepZipper!2349 lt!2392366 (h!71773 s!2326)) (flatMap!1888 lt!2392366 lambda!360565))))

(declare-fun bs!1651727 () Bool)

(assert (= bs!1651727 d!2040453))

(declare-fun m!7290904 () Bool)

(assert (=> bs!1651727 m!7290904))

(assert (=> b!6503172 d!2040453))

(declare-fun d!2040455 () Bool)

(declare-fun c!1192597 () Bool)

(declare-fun isEmpty!37533 (List!65449) Bool)

(assert (=> d!2040455 (= c!1192597 (isEmpty!37533 (t!379083 s!2326)))))

(declare-fun e!3940755 () Bool)

(assert (=> d!2040455 (= (matchZipper!2395 lt!2392382 (t!379083 s!2326)) e!3940755)))

(declare-fun b!6503677 () Bool)

(declare-fun nullableZipper!2138 ((InoxSet Context!11534)) Bool)

(assert (=> b!6503677 (= e!3940755 (nullableZipper!2138 lt!2392382))))

(declare-fun b!6503678 () Bool)

(declare-fun head!13238 (List!65449) C!33036)

(declare-fun tail!12323 (List!65449) List!65449)

(assert (=> b!6503678 (= e!3940755 (matchZipper!2395 (derivationStepZipper!2349 lt!2392382 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))))))

(assert (= (and d!2040455 c!1192597) b!6503677))

(assert (= (and d!2040455 (not c!1192597)) b!6503678))

(declare-fun m!7290906 () Bool)

(assert (=> d!2040455 m!7290906))

(declare-fun m!7290908 () Bool)

(assert (=> b!6503677 m!7290908))

(declare-fun m!7290910 () Bool)

(assert (=> b!6503678 m!7290910))

(assert (=> b!6503678 m!7290910))

(declare-fun m!7290912 () Bool)

(assert (=> b!6503678 m!7290912))

(declare-fun m!7290914 () Bool)

(assert (=> b!6503678 m!7290914))

(assert (=> b!6503678 m!7290912))

(assert (=> b!6503678 m!7290914))

(declare-fun m!7290916 () Bool)

(assert (=> b!6503678 m!7290916))

(assert (=> b!6503194 d!2040455))

(declare-fun d!2040457 () Bool)

(assert (=> d!2040457 (= (flatMap!1888 lt!2392395 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392388))))

(declare-fun lt!2392475 () Unit!158867)

(assert (=> d!2040457 (= lt!2392475 (choose!48302 lt!2392395 lt!2392388 lambda!360520))))

(assert (=> d!2040457 (= lt!2392395 (store ((as const (Array Context!11534 Bool)) false) lt!2392388 true))))

(assert (=> d!2040457 (= (lemmaFlatMapOnSingletonSet!1414 lt!2392395 lt!2392388 lambda!360520) lt!2392475)))

(declare-fun b_lambda!246199 () Bool)

(assert (=> (not b_lambda!246199) (not d!2040457)))

(declare-fun bs!1651728 () Bool)

(assert (= bs!1651728 d!2040457))

(assert (=> bs!1651728 m!7290480))

(declare-fun m!7290918 () Bool)

(assert (=> bs!1651728 m!7290918))

(declare-fun m!7290920 () Bool)

(assert (=> bs!1651728 m!7290920))

(assert (=> bs!1651728 m!7290482))

(assert (=> b!6503171 d!2040457))

(declare-fun d!2040459 () Bool)

(assert (=> d!2040459 (= (flatMap!1888 lt!2392395 lambda!360520) (choose!48299 lt!2392395 lambda!360520))))

(declare-fun bs!1651729 () Bool)

(assert (= bs!1651729 d!2040459))

(declare-fun m!7290922 () Bool)

(assert (=> bs!1651729 m!7290922))

(assert (=> b!6503171 d!2040459))

(declare-fun b!6503679 () Bool)

(declare-fun e!3940758 () (InoxSet Context!11534))

(declare-fun call!563564 () (InoxSet Context!11534))

(assert (=> b!6503679 (= e!3940758 call!563564)))

(declare-fun b!6503680 () Bool)

(declare-fun e!3940756 () (InoxSet Context!11534))

(assert (=> b!6503680 (= e!3940756 e!3940758)))

(declare-fun c!1192598 () Bool)

(assert (=> b!6503680 (= c!1192598 ((_ is Cons!65324) (exprs!6267 lt!2392373)))))

(declare-fun b!6503681 () Bool)

(assert (=> b!6503681 (= e!3940758 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503682 () Bool)

(assert (=> b!6503682 (= e!3940756 ((_ map or) call!563564 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (h!71773 s!2326))))))

(declare-fun b!6503683 () Bool)

(declare-fun e!3940757 () Bool)

(assert (=> b!6503683 (= e!3940757 (nullable!6376 (h!71772 (exprs!6267 lt!2392373))))))

(declare-fun bm!563559 () Bool)

(assert (=> bm!563559 (= call!563564 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392373)) (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (h!71773 s!2326)))))

(declare-fun d!2040461 () Bool)

(declare-fun c!1192599 () Bool)

(assert (=> d!2040461 (= c!1192599 e!3940757)))

(declare-fun res!2670888 () Bool)

(assert (=> d!2040461 (=> (not res!2670888) (not e!3940757))))

(assert (=> d!2040461 (= res!2670888 ((_ is Cons!65324) (exprs!6267 lt!2392373)))))

(assert (=> d!2040461 (= (derivationStepZipperUp!1557 lt!2392373 (h!71773 s!2326)) e!3940756)))

(assert (= (and d!2040461 res!2670888) b!6503683))

(assert (= (and d!2040461 c!1192599) b!6503682))

(assert (= (and d!2040461 (not c!1192599)) b!6503680))

(assert (= (and b!6503680 c!1192598) b!6503679))

(assert (= (and b!6503680 (not c!1192598)) b!6503681))

(assert (= (or b!6503682 b!6503679) bm!563559))

(declare-fun m!7290924 () Bool)

(assert (=> b!6503682 m!7290924))

(declare-fun m!7290926 () Bool)

(assert (=> b!6503683 m!7290926))

(declare-fun m!7290928 () Bool)

(assert (=> bm!563559 m!7290928))

(assert (=> b!6503171 d!2040461))

(declare-fun b!6503684 () Bool)

(declare-fun e!3940761 () (InoxSet Context!11534))

(declare-fun call!563565 () (InoxSet Context!11534))

(assert (=> b!6503684 (= e!3940761 call!563565)))

(declare-fun b!6503685 () Bool)

(declare-fun e!3940759 () (InoxSet Context!11534))

(assert (=> b!6503685 (= e!3940759 e!3940761)))

(declare-fun c!1192600 () Bool)

(assert (=> b!6503685 (= c!1192600 ((_ is Cons!65324) (exprs!6267 lt!2392388)))))

(declare-fun b!6503686 () Bool)

(assert (=> b!6503686 (= e!3940761 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503687 () Bool)

(assert (=> b!6503687 (= e!3940759 ((_ map or) call!563565 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (h!71773 s!2326))))))

(declare-fun b!6503688 () Bool)

(declare-fun e!3940760 () Bool)

(assert (=> b!6503688 (= e!3940760 (nullable!6376 (h!71772 (exprs!6267 lt!2392388))))))

(declare-fun bm!563560 () Bool)

(assert (=> bm!563560 (= call!563565 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392388)) (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (h!71773 s!2326)))))

(declare-fun d!2040463 () Bool)

(declare-fun c!1192601 () Bool)

(assert (=> d!2040463 (= c!1192601 e!3940760)))

(declare-fun res!2670889 () Bool)

(assert (=> d!2040463 (=> (not res!2670889) (not e!3940760))))

(assert (=> d!2040463 (= res!2670889 ((_ is Cons!65324) (exprs!6267 lt!2392388)))))

(assert (=> d!2040463 (= (derivationStepZipperUp!1557 lt!2392388 (h!71773 s!2326)) e!3940759)))

(assert (= (and d!2040463 res!2670889) b!6503688))

(assert (= (and d!2040463 c!1192601) b!6503687))

(assert (= (and d!2040463 (not c!1192601)) b!6503685))

(assert (= (and b!6503685 c!1192600) b!6503684))

(assert (= (and b!6503685 (not c!1192600)) b!6503686))

(assert (= (or b!6503687 b!6503684) bm!563560))

(declare-fun m!7290930 () Bool)

(assert (=> b!6503687 m!7290930))

(declare-fun m!7290932 () Bool)

(assert (=> b!6503688 m!7290932))

(declare-fun m!7290934 () Bool)

(assert (=> bm!563560 m!7290934))

(assert (=> b!6503171 d!2040463))

(declare-fun d!2040465 () Bool)

(assert (=> d!2040465 (= (flatMap!1888 lt!2392369 lambda!360520) (choose!48299 lt!2392369 lambda!360520))))

(declare-fun bs!1651730 () Bool)

(assert (= bs!1651730 d!2040465))

(declare-fun m!7290936 () Bool)

(assert (=> bs!1651730 m!7290936))

(assert (=> b!6503171 d!2040465))

(declare-fun d!2040467 () Bool)

(assert (=> d!2040467 (= (flatMap!1888 lt!2392369 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392373))))

(declare-fun lt!2392476 () Unit!158867)

(assert (=> d!2040467 (= lt!2392476 (choose!48302 lt!2392369 lt!2392373 lambda!360520))))

(assert (=> d!2040467 (= lt!2392369 (store ((as const (Array Context!11534 Bool)) false) lt!2392373 true))))

(assert (=> d!2040467 (= (lemmaFlatMapOnSingletonSet!1414 lt!2392369 lt!2392373 lambda!360520) lt!2392476)))

(declare-fun b_lambda!246201 () Bool)

(assert (=> (not b_lambda!246201) (not d!2040467)))

(declare-fun bs!1651731 () Bool)

(assert (= bs!1651731 d!2040467))

(assert (=> bs!1651731 m!7290494))

(declare-fun m!7290938 () Bool)

(assert (=> bs!1651731 m!7290938))

(declare-fun m!7290940 () Bool)

(assert (=> bs!1651731 m!7290940))

(assert (=> bs!1651731 m!7290478))

(assert (=> b!6503171 d!2040467))

(declare-fun d!2040469 () Bool)

(declare-fun lt!2392477 () Regex!16383)

(assert (=> d!2040469 (validRegex!8119 lt!2392477)))

(assert (=> d!2040469 (= lt!2392477 (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))

(assert (=> d!2040469 (= (unfocusZipper!2125 (Cons!65326 lt!2392373 Nil!65326)) lt!2392477)))

(declare-fun bs!1651732 () Bool)

(assert (= bs!1651732 d!2040469))

(declare-fun m!7290942 () Bool)

(assert (=> bs!1651732 m!7290942))

(declare-fun m!7290944 () Bool)

(assert (=> bs!1651732 m!7290944))

(assert (=> bs!1651732 m!7290944))

(declare-fun m!7290946 () Bool)

(assert (=> bs!1651732 m!7290946))

(assert (=> b!6503171 d!2040469))

(declare-fun d!2040471 () Bool)

(declare-fun c!1192602 () Bool)

(assert (=> d!2040471 (= c!1192602 (isEmpty!37533 s!2326))))

(declare-fun e!3940762 () Bool)

(assert (=> d!2040471 (= (matchZipper!2395 z!1189 s!2326) e!3940762)))

(declare-fun b!6503689 () Bool)

(assert (=> b!6503689 (= e!3940762 (nullableZipper!2138 z!1189))))

(declare-fun b!6503690 () Bool)

(assert (=> b!6503690 (= e!3940762 (matchZipper!2395 (derivationStepZipper!2349 z!1189 (head!13238 s!2326)) (tail!12323 s!2326)))))

(assert (= (and d!2040471 c!1192602) b!6503689))

(assert (= (and d!2040471 (not c!1192602)) b!6503690))

(declare-fun m!7290948 () Bool)

(assert (=> d!2040471 m!7290948))

(declare-fun m!7290950 () Bool)

(assert (=> b!6503689 m!7290950))

(declare-fun m!7290952 () Bool)

(assert (=> b!6503690 m!7290952))

(assert (=> b!6503690 m!7290952))

(declare-fun m!7290954 () Bool)

(assert (=> b!6503690 m!7290954))

(declare-fun m!7290956 () Bool)

(assert (=> b!6503690 m!7290956))

(assert (=> b!6503690 m!7290954))

(assert (=> b!6503690 m!7290956))

(declare-fun m!7290958 () Bool)

(assert (=> b!6503690 m!7290958))

(assert (=> b!6503180 d!2040471))

(declare-fun d!2040473 () Bool)

(declare-fun c!1192603 () Bool)

(assert (=> d!2040473 (= c!1192603 (isEmpty!37533 (t!379083 s!2326)))))

(declare-fun e!3940763 () Bool)

(assert (=> d!2040473 (= (matchZipper!2395 lt!2392389 (t!379083 s!2326)) e!3940763)))

(declare-fun b!6503691 () Bool)

(assert (=> b!6503691 (= e!3940763 (nullableZipper!2138 lt!2392389))))

(declare-fun b!6503692 () Bool)

(assert (=> b!6503692 (= e!3940763 (matchZipper!2395 (derivationStepZipper!2349 lt!2392389 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))))))

(assert (= (and d!2040473 c!1192603) b!6503691))

(assert (= (and d!2040473 (not c!1192603)) b!6503692))

(assert (=> d!2040473 m!7290906))

(declare-fun m!7290960 () Bool)

(assert (=> b!6503691 m!7290960))

(assert (=> b!6503692 m!7290910))

(assert (=> b!6503692 m!7290910))

(declare-fun m!7290962 () Bool)

(assert (=> b!6503692 m!7290962))

(assert (=> b!6503692 m!7290914))

(assert (=> b!6503692 m!7290962))

(assert (=> b!6503692 m!7290914))

(declare-fun m!7290964 () Bool)

(assert (=> b!6503692 m!7290964))

(assert (=> b!6503159 d!2040473))

(declare-fun d!2040475 () Bool)

(assert (=> d!2040475 (= (flatMap!1888 z!1189 lambda!360520) (choose!48299 z!1189 lambda!360520))))

(declare-fun bs!1651733 () Bool)

(assert (= bs!1651733 d!2040475))

(declare-fun m!7290966 () Bool)

(assert (=> bs!1651733 m!7290966))

(assert (=> b!6503160 d!2040475))

(declare-fun d!2040477 () Bool)

(declare-fun nullableFct!2312 (Regex!16383) Bool)

(assert (=> d!2040477 (= (nullable!6376 (h!71772 (exprs!6267 (h!71774 zl!343)))) (nullableFct!2312 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun bs!1651734 () Bool)

(assert (= bs!1651734 d!2040477))

(declare-fun m!7290968 () Bool)

(assert (=> bs!1651734 m!7290968))

(assert (=> b!6503160 d!2040477))

(declare-fun b!6503693 () Bool)

(declare-fun e!3940766 () (InoxSet Context!11534))

(declare-fun call!563566 () (InoxSet Context!11534))

(assert (=> b!6503693 (= e!3940766 call!563566)))

(declare-fun b!6503694 () Bool)

(declare-fun e!3940764 () (InoxSet Context!11534))

(assert (=> b!6503694 (= e!3940764 e!3940766)))

(declare-fun c!1192604 () Bool)

(assert (=> b!6503694 (= c!1192604 ((_ is Cons!65324) (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))

(declare-fun b!6503695 () Bool)

(assert (=> b!6503695 (= e!3940766 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503696 () Bool)

(assert (=> b!6503696 (= e!3940764 ((_ map or) call!563566 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326))))))

(declare-fun b!6503697 () Bool)

(declare-fun e!3940765 () Bool)

(assert (=> b!6503697 (= e!3940765 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun bm!563561 () Bool)

(assert (=> bm!563561 (= call!563566 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326)))))

(declare-fun d!2040479 () Bool)

(declare-fun c!1192605 () Bool)

(assert (=> d!2040479 (= c!1192605 e!3940765)))

(declare-fun res!2670890 () Bool)

(assert (=> d!2040479 (=> (not res!2670890) (not e!3940765))))

(assert (=> d!2040479 (= res!2670890 ((_ is Cons!65324) (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))

(assert (=> d!2040479 (= (derivationStepZipperUp!1557 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))) (h!71773 s!2326)) e!3940764)))

(assert (= (and d!2040479 res!2670890) b!6503697))

(assert (= (and d!2040479 c!1192605) b!6503696))

(assert (= (and d!2040479 (not c!1192605)) b!6503694))

(assert (= (and b!6503694 c!1192604) b!6503693))

(assert (= (and b!6503694 (not c!1192604)) b!6503695))

(assert (= (or b!6503696 b!6503693) bm!563561))

(declare-fun m!7290970 () Bool)

(assert (=> b!6503696 m!7290970))

(declare-fun m!7290972 () Bool)

(assert (=> b!6503697 m!7290972))

(declare-fun m!7290974 () Bool)

(assert (=> bm!563561 m!7290974))

(assert (=> b!6503160 d!2040479))

(declare-fun bm!563574 () Bool)

(declare-fun call!563579 () List!65448)

(declare-fun call!563583 () List!65448)

(assert (=> bm!563574 (= call!563579 call!563583)))

(declare-fun b!6503720 () Bool)

(declare-fun e!3940784 () (InoxSet Context!11534))

(assert (=> b!6503720 (= e!3940784 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503721 () Bool)

(declare-fun e!3940780 () (InoxSet Context!11534))

(declare-fun e!3940781 () (InoxSet Context!11534))

(assert (=> b!6503721 (= e!3940780 e!3940781)))

(declare-fun c!1192619 () Bool)

(assert (=> b!6503721 (= c!1192619 ((_ is Union!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503722 () Bool)

(declare-fun c!1192618 () Bool)

(declare-fun e!3940783 () Bool)

(assert (=> b!6503722 (= c!1192618 e!3940783)))

(declare-fun res!2670893 () Bool)

(assert (=> b!6503722 (=> (not res!2670893) (not e!3940783))))

(assert (=> b!6503722 (= res!2670893 ((_ is Concat!25228) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun e!3940779 () (InoxSet Context!11534))

(assert (=> b!6503722 (= e!3940781 e!3940779)))

(declare-fun b!6503723 () Bool)

(declare-fun e!3940782 () (InoxSet Context!11534))

(assert (=> b!6503723 (= e!3940779 e!3940782)))

(declare-fun c!1192617 () Bool)

(assert (=> b!6503723 (= c!1192617 ((_ is Concat!25228) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503724 () Bool)

(declare-fun call!563581 () (InoxSet Context!11534))

(assert (=> b!6503724 (= e!3940782 call!563581)))

(declare-fun d!2040481 () Bool)

(declare-fun c!1192620 () Bool)

(assert (=> d!2040481 (= c!1192620 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))) (= (c!1192455 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326))))))

(assert (=> d!2040481 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (h!71774 zl!343))) lt!2392397 (h!71773 s!2326)) e!3940780)))

(declare-fun b!6503725 () Bool)

(declare-fun call!563582 () (InoxSet Context!11534))

(declare-fun call!563580 () (InoxSet Context!11534))

(assert (=> b!6503725 (= e!3940781 ((_ map or) call!563582 call!563580))))

(declare-fun b!6503726 () Bool)

(assert (=> b!6503726 (= e!3940784 call!563581)))

(declare-fun bm!563575 () Bool)

(assert (=> bm!563575 (= call!563580 (derivationStepZipperDown!1631 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))) (ite c!1192619 lt!2392397 (Context!11535 call!563583)) (h!71773 s!2326)))))

(declare-fun bm!563576 () Bool)

(declare-fun call!563584 () (InoxSet Context!11534))

(assert (=> bm!563576 (= call!563581 call!563584)))

(declare-fun bm!563577 () Bool)

(assert (=> bm!563577 (= call!563584 call!563582)))

(declare-fun bm!563578 () Bool)

(declare-fun $colon$colon!2234 (List!65448 Regex!16383) List!65448)

(assert (=> bm!563578 (= call!563583 ($colon$colon!2234 (exprs!6267 lt!2392397) (ite (or c!1192618 c!1192617) (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71772 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6503727 () Bool)

(assert (=> b!6503727 (= e!3940783 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun bm!563579 () Bool)

(assert (=> bm!563579 (= call!563582 (derivationStepZipperDown!1631 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))) (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579)) (h!71773 s!2326)))))

(declare-fun b!6503728 () Bool)

(assert (=> b!6503728 (= e!3940779 ((_ map or) call!563580 call!563584))))

(declare-fun b!6503729 () Bool)

(assert (=> b!6503729 (= e!3940780 (store ((as const (Array Context!11534 Bool)) false) lt!2392397 true))))

(declare-fun b!6503730 () Bool)

(declare-fun c!1192616 () Bool)

(assert (=> b!6503730 (= c!1192616 ((_ is Star!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> b!6503730 (= e!3940782 e!3940784)))

(assert (= (and d!2040481 c!1192620) b!6503729))

(assert (= (and d!2040481 (not c!1192620)) b!6503721))

(assert (= (and b!6503721 c!1192619) b!6503725))

(assert (= (and b!6503721 (not c!1192619)) b!6503722))

(assert (= (and b!6503722 res!2670893) b!6503727))

(assert (= (and b!6503722 c!1192618) b!6503728))

(assert (= (and b!6503722 (not c!1192618)) b!6503723))

(assert (= (and b!6503723 c!1192617) b!6503724))

(assert (= (and b!6503723 (not c!1192617)) b!6503730))

(assert (= (and b!6503730 c!1192616) b!6503726))

(assert (= (and b!6503730 (not c!1192616)) b!6503720))

(assert (= (or b!6503724 b!6503726) bm!563574))

(assert (= (or b!6503724 b!6503726) bm!563576))

(assert (= (or b!6503728 bm!563574) bm!563578))

(assert (= (or b!6503728 bm!563576) bm!563577))

(assert (= (or b!6503725 b!6503728) bm!563575))

(assert (= (or b!6503725 bm!563577) bm!563579))

(declare-fun m!7290976 () Bool)

(assert (=> bm!563579 m!7290976))

(declare-fun m!7290978 () Bool)

(assert (=> bm!563578 m!7290978))

(declare-fun m!7290980 () Bool)

(assert (=> b!6503727 m!7290980))

(declare-fun m!7290982 () Bool)

(assert (=> b!6503729 m!7290982))

(declare-fun m!7290984 () Bool)

(assert (=> bm!563575 m!7290984))

(assert (=> b!6503160 d!2040481))

(declare-fun d!2040483 () Bool)

(assert (=> d!2040483 (= (flatMap!1888 z!1189 lambda!360520) (dynLambda!25950 lambda!360520 (h!71774 zl!343)))))

(declare-fun lt!2392478 () Unit!158867)

(assert (=> d!2040483 (= lt!2392478 (choose!48302 z!1189 (h!71774 zl!343) lambda!360520))))

(assert (=> d!2040483 (= z!1189 (store ((as const (Array Context!11534 Bool)) false) (h!71774 zl!343) true))))

(assert (=> d!2040483 (= (lemmaFlatMapOnSingletonSet!1414 z!1189 (h!71774 zl!343) lambda!360520) lt!2392478)))

(declare-fun b_lambda!246203 () Bool)

(assert (=> (not b_lambda!246203) (not d!2040483)))

(declare-fun bs!1651735 () Bool)

(assert (= bs!1651735 d!2040483))

(assert (=> bs!1651735 m!7290442))

(declare-fun m!7290986 () Bool)

(assert (=> bs!1651735 m!7290986))

(declare-fun m!7290988 () Bool)

(assert (=> bs!1651735 m!7290988))

(declare-fun m!7290990 () Bool)

(assert (=> bs!1651735 m!7290990))

(assert (=> b!6503160 d!2040483))

(declare-fun b!6503731 () Bool)

(declare-fun e!3940787 () (InoxSet Context!11534))

(declare-fun call!563585 () (InoxSet Context!11534))

(assert (=> b!6503731 (= e!3940787 call!563585)))

(declare-fun b!6503732 () Bool)

(declare-fun e!3940785 () (InoxSet Context!11534))

(assert (=> b!6503732 (= e!3940785 e!3940787)))

(declare-fun c!1192621 () Bool)

(assert (=> b!6503732 (= c!1192621 ((_ is Cons!65324) (exprs!6267 lt!2392397)))))

(declare-fun b!6503733 () Bool)

(assert (=> b!6503733 (= e!3940787 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503734 () Bool)

(assert (=> b!6503734 (= e!3940785 ((_ map or) call!563585 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (h!71773 s!2326))))))

(declare-fun b!6503735 () Bool)

(declare-fun e!3940786 () Bool)

(assert (=> b!6503735 (= e!3940786 (nullable!6376 (h!71772 (exprs!6267 lt!2392397))))))

(declare-fun bm!563580 () Bool)

(assert (=> bm!563580 (= call!563585 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392397)) (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (h!71773 s!2326)))))

(declare-fun d!2040485 () Bool)

(declare-fun c!1192622 () Bool)

(assert (=> d!2040485 (= c!1192622 e!3940786)))

(declare-fun res!2670894 () Bool)

(assert (=> d!2040485 (=> (not res!2670894) (not e!3940786))))

(assert (=> d!2040485 (= res!2670894 ((_ is Cons!65324) (exprs!6267 lt!2392397)))))

(assert (=> d!2040485 (= (derivationStepZipperUp!1557 lt!2392397 (h!71773 s!2326)) e!3940785)))

(assert (= (and d!2040485 res!2670894) b!6503735))

(assert (= (and d!2040485 c!1192622) b!6503734))

(assert (= (and d!2040485 (not c!1192622)) b!6503732))

(assert (= (and b!6503732 c!1192621) b!6503731))

(assert (= (and b!6503732 (not c!1192621)) b!6503733))

(assert (= (or b!6503734 b!6503731) bm!563580))

(declare-fun m!7290992 () Bool)

(assert (=> b!6503734 m!7290992))

(declare-fun m!7290994 () Bool)

(assert (=> b!6503735 m!7290994))

(declare-fun m!7290996 () Bool)

(assert (=> bm!563580 m!7290996))

(assert (=> b!6503160 d!2040485))

(declare-fun b!6503736 () Bool)

(declare-fun e!3940790 () (InoxSet Context!11534))

(declare-fun call!563586 () (InoxSet Context!11534))

(assert (=> b!6503736 (= e!3940790 call!563586)))

(declare-fun b!6503737 () Bool)

(declare-fun e!3940788 () (InoxSet Context!11534))

(assert (=> b!6503737 (= e!3940788 e!3940790)))

(declare-fun c!1192623 () Bool)

(assert (=> b!6503737 (= c!1192623 ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343))))))

(declare-fun b!6503738 () Bool)

(assert (=> b!6503738 (= e!3940790 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503739 () Bool)

(assert (=> b!6503739 (= e!3940788 ((_ map or) call!563586 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326))))))

(declare-fun b!6503740 () Bool)

(declare-fun e!3940789 () Bool)

(assert (=> b!6503740 (= e!3940789 (nullable!6376 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun bm!563581 () Bool)

(assert (=> bm!563581 (= call!563586 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (h!71774 zl!343))) (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326)))))

(declare-fun d!2040487 () Bool)

(declare-fun c!1192624 () Bool)

(assert (=> d!2040487 (= c!1192624 e!3940789)))

(declare-fun res!2670895 () Bool)

(assert (=> d!2040487 (=> (not res!2670895) (not e!3940789))))

(assert (=> d!2040487 (= res!2670895 ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343))))))

(assert (=> d!2040487 (= (derivationStepZipperUp!1557 (h!71774 zl!343) (h!71773 s!2326)) e!3940788)))

(assert (= (and d!2040487 res!2670895) b!6503740))

(assert (= (and d!2040487 c!1192624) b!6503739))

(assert (= (and d!2040487 (not c!1192624)) b!6503737))

(assert (= (and b!6503737 c!1192623) b!6503736))

(assert (= (and b!6503737 (not c!1192623)) b!6503738))

(assert (= (or b!6503739 b!6503736) bm!563581))

(declare-fun m!7290998 () Bool)

(assert (=> b!6503739 m!7290998))

(assert (=> b!6503740 m!7290446))

(declare-fun m!7291000 () Bool)

(assert (=> bm!563581 m!7291000))

(assert (=> b!6503160 d!2040487))

(declare-fun d!2040489 () Bool)

(assert (=> d!2040489 (= (nullable!6376 (regOne!33278 (regOne!33278 r!7292))) (nullableFct!2312 (regOne!33278 (regOne!33278 r!7292))))))

(declare-fun bs!1651736 () Bool)

(assert (= bs!1651736 d!2040489))

(declare-fun m!7291002 () Bool)

(assert (=> bs!1651736 m!7291002))

(assert (=> b!6503177 d!2040489))

(declare-fun bm!563582 () Bool)

(declare-fun call!563587 () List!65448)

(declare-fun call!563591 () List!65448)

(assert (=> bm!563582 (= call!563587 call!563591)))

(declare-fun b!6503741 () Bool)

(declare-fun e!3940796 () (InoxSet Context!11534))

(assert (=> b!6503741 (= e!3940796 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6503742 () Bool)

(declare-fun e!3940792 () (InoxSet Context!11534))

(declare-fun e!3940793 () (InoxSet Context!11534))

(assert (=> b!6503742 (= e!3940792 e!3940793)))

(declare-fun c!1192628 () Bool)

(assert (=> b!6503742 (= c!1192628 ((_ is Union!16383) (reg!16712 (regOne!33278 r!7292))))))

(declare-fun b!6503743 () Bool)

(declare-fun c!1192627 () Bool)

(declare-fun e!3940795 () Bool)

(assert (=> b!6503743 (= c!1192627 e!3940795)))

(declare-fun res!2670896 () Bool)

(assert (=> b!6503743 (=> (not res!2670896) (not e!3940795))))

(assert (=> b!6503743 (= res!2670896 ((_ is Concat!25228) (reg!16712 (regOne!33278 r!7292))))))

(declare-fun e!3940791 () (InoxSet Context!11534))

(assert (=> b!6503743 (= e!3940793 e!3940791)))

(declare-fun b!6503744 () Bool)

(declare-fun e!3940794 () (InoxSet Context!11534))

(assert (=> b!6503744 (= e!3940791 e!3940794)))

(declare-fun c!1192626 () Bool)

(assert (=> b!6503744 (= c!1192626 ((_ is Concat!25228) (reg!16712 (regOne!33278 r!7292))))))

(declare-fun b!6503745 () Bool)

(declare-fun call!563589 () (InoxSet Context!11534))

(assert (=> b!6503745 (= e!3940794 call!563589)))

(declare-fun d!2040491 () Bool)

(declare-fun c!1192629 () Bool)

(assert (=> d!2040491 (= c!1192629 (and ((_ is ElementMatch!16383) (reg!16712 (regOne!33278 r!7292))) (= (c!1192455 (reg!16712 (regOne!33278 r!7292))) (h!71773 s!2326))))))

(assert (=> d!2040491 (= (derivationStepZipperDown!1631 (reg!16712 (regOne!33278 r!7292)) lt!2392388 (h!71773 s!2326)) e!3940792)))

(declare-fun b!6503746 () Bool)

(declare-fun call!563590 () (InoxSet Context!11534))

(declare-fun call!563588 () (InoxSet Context!11534))

(assert (=> b!6503746 (= e!3940793 ((_ map or) call!563590 call!563588))))

(declare-fun b!6503747 () Bool)

(assert (=> b!6503747 (= e!3940796 call!563589)))

(declare-fun bm!563583 () Bool)

(assert (=> bm!563583 (= call!563588 (derivationStepZipperDown!1631 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))) (ite c!1192628 lt!2392388 (Context!11535 call!563591)) (h!71773 s!2326)))))

(declare-fun bm!563584 () Bool)

(declare-fun call!563592 () (InoxSet Context!11534))

(assert (=> bm!563584 (= call!563589 call!563592)))

(declare-fun bm!563585 () Bool)

(assert (=> bm!563585 (= call!563592 call!563590)))

(declare-fun bm!563586 () Bool)

(assert (=> bm!563586 (= call!563591 ($colon$colon!2234 (exprs!6267 lt!2392388) (ite (or c!1192627 c!1192626) (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (regOne!33278 r!7292)))))))

(declare-fun b!6503748 () Bool)

(assert (=> b!6503748 (= e!3940795 (nullable!6376 (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))))

(declare-fun bm!563587 () Bool)

(assert (=> bm!563587 (= call!563590 (derivationStepZipperDown!1631 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))) (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587)) (h!71773 s!2326)))))

(declare-fun b!6503749 () Bool)

(assert (=> b!6503749 (= e!3940791 ((_ map or) call!563588 call!563592))))

(declare-fun b!6503750 () Bool)

(assert (=> b!6503750 (= e!3940792 (store ((as const (Array Context!11534 Bool)) false) lt!2392388 true))))

(declare-fun b!6503751 () Bool)

(declare-fun c!1192625 () Bool)

(assert (=> b!6503751 (= c!1192625 ((_ is Star!16383) (reg!16712 (regOne!33278 r!7292))))))

(assert (=> b!6503751 (= e!3940794 e!3940796)))

(assert (= (and d!2040491 c!1192629) b!6503750))

(assert (= (and d!2040491 (not c!1192629)) b!6503742))

(assert (= (and b!6503742 c!1192628) b!6503746))

(assert (= (and b!6503742 (not c!1192628)) b!6503743))

(assert (= (and b!6503743 res!2670896) b!6503748))

(assert (= (and b!6503743 c!1192627) b!6503749))

(assert (= (and b!6503743 (not c!1192627)) b!6503744))

(assert (= (and b!6503744 c!1192626) b!6503745))

(assert (= (and b!6503744 (not c!1192626)) b!6503751))

(assert (= (and b!6503751 c!1192625) b!6503747))

(assert (= (and b!6503751 (not c!1192625)) b!6503741))

(assert (= (or b!6503745 b!6503747) bm!563582))

(assert (= (or b!6503745 b!6503747) bm!563584))

(assert (= (or b!6503749 bm!563582) bm!563586))

(assert (= (or b!6503749 bm!563584) bm!563585))

(assert (= (or b!6503746 b!6503749) bm!563583))

(assert (= (or b!6503746 bm!563585) bm!563587))

(declare-fun m!7291004 () Bool)

(assert (=> bm!563587 m!7291004))

(declare-fun m!7291006 () Bool)

(assert (=> bm!563586 m!7291006))

(declare-fun m!7291008 () Bool)

(assert (=> b!6503748 m!7291008))

(assert (=> b!6503750 m!7290482))

(declare-fun m!7291010 () Bool)

(assert (=> bm!563583 m!7291010))

(assert (=> b!6503178 d!2040491))

(declare-fun d!2040493 () Bool)

(declare-fun c!1192630 () Bool)

(assert (=> d!2040493 (= c!1192630 (isEmpty!37533 (t!379083 s!2326)))))

(declare-fun e!3940797 () Bool)

(assert (=> d!2040493 (= (matchZipper!2395 lt!2392396 (t!379083 s!2326)) e!3940797)))

(declare-fun b!6503752 () Bool)

(assert (=> b!6503752 (= e!3940797 (nullableZipper!2138 lt!2392396))))

(declare-fun b!6503753 () Bool)

(assert (=> b!6503753 (= e!3940797 (matchZipper!2395 (derivationStepZipper!2349 lt!2392396 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))))))

(assert (= (and d!2040493 c!1192630) b!6503752))

(assert (= (and d!2040493 (not c!1192630)) b!6503753))

(assert (=> d!2040493 m!7290906))

(declare-fun m!7291012 () Bool)

(assert (=> b!6503752 m!7291012))

(assert (=> b!6503753 m!7290910))

(assert (=> b!6503753 m!7290910))

(declare-fun m!7291014 () Bool)

(assert (=> b!6503753 m!7291014))

(assert (=> b!6503753 m!7290914))

(assert (=> b!6503753 m!7291014))

(assert (=> b!6503753 m!7290914))

(declare-fun m!7291016 () Bool)

(assert (=> b!6503753 m!7291016))

(assert (=> b!6503165 d!2040493))

(declare-fun d!2040495 () Bool)

(declare-fun c!1192631 () Bool)

(assert (=> d!2040495 (= c!1192631 (isEmpty!37533 s!2326))))

(declare-fun e!3940798 () Bool)

(assert (=> d!2040495 (= (matchZipper!2395 lt!2392366 s!2326) e!3940798)))

(declare-fun b!6503754 () Bool)

(assert (=> b!6503754 (= e!3940798 (nullableZipper!2138 lt!2392366))))

(declare-fun b!6503755 () Bool)

(assert (=> b!6503755 (= e!3940798 (matchZipper!2395 (derivationStepZipper!2349 lt!2392366 (head!13238 s!2326)) (tail!12323 s!2326)))))

(assert (= (and d!2040495 c!1192631) b!6503754))

(assert (= (and d!2040495 (not c!1192631)) b!6503755))

(assert (=> d!2040495 m!7290948))

(declare-fun m!7291018 () Bool)

(assert (=> b!6503754 m!7291018))

(assert (=> b!6503755 m!7290952))

(assert (=> b!6503755 m!7290952))

(declare-fun m!7291020 () Bool)

(assert (=> b!6503755 m!7291020))

(assert (=> b!6503755 m!7290956))

(assert (=> b!6503755 m!7291020))

(assert (=> b!6503755 m!7290956))

(declare-fun m!7291022 () Bool)

(assert (=> b!6503755 m!7291022))

(assert (=> b!6503165 d!2040495))

(declare-fun bs!1651737 () Bool)

(declare-fun b!6503796 () Bool)

(assert (= bs!1651737 (and b!6503796 b!6503182)))

(declare-fun lambda!360570 () Int)

(assert (=> bs!1651737 (not (= lambda!360570 lambda!360518))))

(assert (=> bs!1651737 (not (= lambda!360570 lambda!360519))))

(assert (=> b!6503796 true))

(assert (=> b!6503796 true))

(declare-fun bs!1651738 () Bool)

(declare-fun b!6503793 () Bool)

(assert (= bs!1651738 (and b!6503793 b!6503182)))

(declare-fun lambda!360571 () Int)

(assert (=> bs!1651738 (not (= lambda!360571 lambda!360518))))

(assert (=> bs!1651738 (= lambda!360571 lambda!360519)))

(declare-fun bs!1651739 () Bool)

(assert (= bs!1651739 (and b!6503793 b!6503796)))

(assert (=> bs!1651739 (not (= lambda!360571 lambda!360570))))

(assert (=> b!6503793 true))

(assert (=> b!6503793 true))

(declare-fun b!6503788 () Bool)

(declare-fun c!1192642 () Bool)

(assert (=> b!6503788 (= c!1192642 ((_ is ElementMatch!16383) r!7292))))

(declare-fun e!3940819 () Bool)

(declare-fun e!3940822 () Bool)

(assert (=> b!6503788 (= e!3940819 e!3940822)))

(declare-fun b!6503789 () Bool)

(declare-fun c!1192643 () Bool)

(assert (=> b!6503789 (= c!1192643 ((_ is Union!16383) r!7292))))

(declare-fun e!3940823 () Bool)

(assert (=> b!6503789 (= e!3940822 e!3940823)))

(declare-fun b!6503790 () Bool)

(declare-fun e!3940821 () Bool)

(assert (=> b!6503790 (= e!3940821 (matchRSpec!3484 (regTwo!33279 r!7292) s!2326))))

(declare-fun b!6503791 () Bool)

(assert (=> b!6503791 (= e!3940822 (= s!2326 (Cons!65325 (c!1192455 r!7292) Nil!65325)))))

(declare-fun d!2040497 () Bool)

(declare-fun c!1192641 () Bool)

(assert (=> d!2040497 (= c!1192641 ((_ is EmptyExpr!16383) r!7292))))

(declare-fun e!3940818 () Bool)

(assert (=> d!2040497 (= (matchRSpec!3484 r!7292 s!2326) e!3940818)))

(declare-fun call!563597 () Bool)

(declare-fun bm!563592 () Bool)

(declare-fun c!1192640 () Bool)

(assert (=> bm!563592 (= call!563597 (Exists!3453 (ite c!1192640 lambda!360570 lambda!360571)))))

(declare-fun b!6503792 () Bool)

(assert (=> b!6503792 (= e!3940823 e!3940821)))

(declare-fun res!2670913 () Bool)

(assert (=> b!6503792 (= res!2670913 (matchRSpec!3484 (regOne!33279 r!7292) s!2326))))

(assert (=> b!6503792 (=> res!2670913 e!3940821)))

(declare-fun e!3940820 () Bool)

(assert (=> b!6503793 (= e!3940820 call!563597)))

(declare-fun b!6503794 () Bool)

(declare-fun res!2670914 () Bool)

(declare-fun e!3940817 () Bool)

(assert (=> b!6503794 (=> res!2670914 e!3940817)))

(declare-fun call!563598 () Bool)

(assert (=> b!6503794 (= res!2670914 call!563598)))

(assert (=> b!6503794 (= e!3940820 e!3940817)))

(declare-fun b!6503795 () Bool)

(assert (=> b!6503795 (= e!3940818 e!3940819)))

(declare-fun res!2670915 () Bool)

(assert (=> b!6503795 (= res!2670915 (not ((_ is EmptyLang!16383) r!7292)))))

(assert (=> b!6503795 (=> (not res!2670915) (not e!3940819))))

(assert (=> b!6503796 (= e!3940817 call!563597)))

(declare-fun bm!563593 () Bool)

(assert (=> bm!563593 (= call!563598 (isEmpty!37533 s!2326))))

(declare-fun b!6503797 () Bool)

(assert (=> b!6503797 (= e!3940823 e!3940820)))

(assert (=> b!6503797 (= c!1192640 ((_ is Star!16383) r!7292))))

(declare-fun b!6503798 () Bool)

(assert (=> b!6503798 (= e!3940818 call!563598)))

(assert (= (and d!2040497 c!1192641) b!6503798))

(assert (= (and d!2040497 (not c!1192641)) b!6503795))

(assert (= (and b!6503795 res!2670915) b!6503788))

(assert (= (and b!6503788 c!1192642) b!6503791))

(assert (= (and b!6503788 (not c!1192642)) b!6503789))

(assert (= (and b!6503789 c!1192643) b!6503792))

(assert (= (and b!6503789 (not c!1192643)) b!6503797))

(assert (= (and b!6503792 (not res!2670913)) b!6503790))

(assert (= (and b!6503797 c!1192640) b!6503794))

(assert (= (and b!6503797 (not c!1192640)) b!6503793))

(assert (= (and b!6503794 (not res!2670914)) b!6503796))

(assert (= (or b!6503796 b!6503793) bm!563592))

(assert (= (or b!6503798 b!6503794) bm!563593))

(declare-fun m!7291024 () Bool)

(assert (=> b!6503790 m!7291024))

(declare-fun m!7291026 () Bool)

(assert (=> bm!563592 m!7291026))

(declare-fun m!7291028 () Bool)

(assert (=> b!6503792 m!7291028))

(assert (=> bm!563593 m!7290948))

(assert (=> b!6503184 d!2040497))

(declare-fun b!6503827 () Bool)

(declare-fun e!3940840 () Bool)

(assert (=> b!6503827 (= e!3940840 (not (= (head!13238 s!2326) (c!1192455 r!7292))))))

(declare-fun b!6503828 () Bool)

(declare-fun e!3940843 () Bool)

(declare-fun lt!2392481 () Bool)

(assert (=> b!6503828 (= e!3940843 (not lt!2392481))))

(declare-fun b!6503829 () Bool)

(declare-fun e!3940844 () Bool)

(declare-fun call!563601 () Bool)

(assert (=> b!6503829 (= e!3940844 (= lt!2392481 call!563601))))

(declare-fun b!6503830 () Bool)

(declare-fun e!3940842 () Bool)

(assert (=> b!6503830 (= e!3940842 (nullable!6376 r!7292))))

(declare-fun b!6503831 () Bool)

(declare-fun derivativeStep!5077 (Regex!16383 C!33036) Regex!16383)

(assert (=> b!6503831 (= e!3940842 (matchR!8566 (derivativeStep!5077 r!7292 (head!13238 s!2326)) (tail!12323 s!2326)))))

(declare-fun b!6503833 () Bool)

(declare-fun res!2670935 () Bool)

(declare-fun e!3940839 () Bool)

(assert (=> b!6503833 (=> res!2670935 e!3940839)))

(declare-fun e!3940841 () Bool)

(assert (=> b!6503833 (= res!2670935 e!3940841)))

(declare-fun res!2670936 () Bool)

(assert (=> b!6503833 (=> (not res!2670936) (not e!3940841))))

(assert (=> b!6503833 (= res!2670936 lt!2392481)))

(declare-fun b!6503834 () Bool)

(declare-fun e!3940838 () Bool)

(assert (=> b!6503834 (= e!3940838 e!3940840)))

(declare-fun res!2670934 () Bool)

(assert (=> b!6503834 (=> res!2670934 e!3940840)))

(assert (=> b!6503834 (= res!2670934 call!563601)))

(declare-fun b!6503835 () Bool)

(declare-fun res!2670939 () Bool)

(assert (=> b!6503835 (=> (not res!2670939) (not e!3940841))))

(assert (=> b!6503835 (= res!2670939 (not call!563601))))

(declare-fun bm!563596 () Bool)

(assert (=> bm!563596 (= call!563601 (isEmpty!37533 s!2326))))

(declare-fun b!6503836 () Bool)

(declare-fun res!2670938 () Bool)

(assert (=> b!6503836 (=> res!2670938 e!3940840)))

(assert (=> b!6503836 (= res!2670938 (not (isEmpty!37533 (tail!12323 s!2326))))))

(declare-fun b!6503837 () Bool)

(assert (=> b!6503837 (= e!3940839 e!3940838)))

(declare-fun res!2670933 () Bool)

(assert (=> b!6503837 (=> (not res!2670933) (not e!3940838))))

(assert (=> b!6503837 (= res!2670933 (not lt!2392481))))

(declare-fun b!6503838 () Bool)

(declare-fun res!2670932 () Bool)

(assert (=> b!6503838 (=> res!2670932 e!3940839)))

(assert (=> b!6503838 (= res!2670932 (not ((_ is ElementMatch!16383) r!7292)))))

(assert (=> b!6503838 (= e!3940843 e!3940839)))

(declare-fun b!6503839 () Bool)

(assert (=> b!6503839 (= e!3940844 e!3940843)))

(declare-fun c!1192652 () Bool)

(assert (=> b!6503839 (= c!1192652 ((_ is EmptyLang!16383) r!7292))))

(declare-fun b!6503840 () Bool)

(declare-fun res!2670937 () Bool)

(assert (=> b!6503840 (=> (not res!2670937) (not e!3940841))))

(assert (=> b!6503840 (= res!2670937 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun b!6503832 () Bool)

(assert (=> b!6503832 (= e!3940841 (= (head!13238 s!2326) (c!1192455 r!7292)))))

(declare-fun d!2040499 () Bool)

(assert (=> d!2040499 e!3940844))

(declare-fun c!1192651 () Bool)

(assert (=> d!2040499 (= c!1192651 ((_ is EmptyExpr!16383) r!7292))))

(assert (=> d!2040499 (= lt!2392481 e!3940842)))

(declare-fun c!1192650 () Bool)

(assert (=> d!2040499 (= c!1192650 (isEmpty!37533 s!2326))))

(assert (=> d!2040499 (validRegex!8119 r!7292)))

(assert (=> d!2040499 (= (matchR!8566 r!7292 s!2326) lt!2392481)))

(assert (= (and d!2040499 c!1192650) b!6503830))

(assert (= (and d!2040499 (not c!1192650)) b!6503831))

(assert (= (and d!2040499 c!1192651) b!6503829))

(assert (= (and d!2040499 (not c!1192651)) b!6503839))

(assert (= (and b!6503839 c!1192652) b!6503828))

(assert (= (and b!6503839 (not c!1192652)) b!6503838))

(assert (= (and b!6503838 (not res!2670932)) b!6503833))

(assert (= (and b!6503833 res!2670936) b!6503835))

(assert (= (and b!6503835 res!2670939) b!6503840))

(assert (= (and b!6503840 res!2670937) b!6503832))

(assert (= (and b!6503833 (not res!2670935)) b!6503837))

(assert (= (and b!6503837 res!2670933) b!6503834))

(assert (= (and b!6503834 (not res!2670934)) b!6503836))

(assert (= (and b!6503836 (not res!2670938)) b!6503827))

(assert (= (or b!6503829 b!6503834 b!6503835) bm!563596))

(assert (=> d!2040499 m!7290948))

(assert (=> d!2040499 m!7290420))

(assert (=> b!6503831 m!7290952))

(assert (=> b!6503831 m!7290952))

(declare-fun m!7291030 () Bool)

(assert (=> b!6503831 m!7291030))

(assert (=> b!6503831 m!7290956))

(assert (=> b!6503831 m!7291030))

(assert (=> b!6503831 m!7290956))

(declare-fun m!7291032 () Bool)

(assert (=> b!6503831 m!7291032))

(declare-fun m!7291034 () Bool)

(assert (=> b!6503830 m!7291034))

(assert (=> b!6503840 m!7290956))

(assert (=> b!6503840 m!7290956))

(declare-fun m!7291036 () Bool)

(assert (=> b!6503840 m!7291036))

(assert (=> b!6503836 m!7290956))

(assert (=> b!6503836 m!7290956))

(assert (=> b!6503836 m!7291036))

(assert (=> b!6503827 m!7290952))

(assert (=> b!6503832 m!7290952))

(assert (=> bm!563596 m!7290948))

(assert (=> b!6503184 d!2040499))

(declare-fun d!2040501 () Bool)

(assert (=> d!2040501 (= (matchR!8566 r!7292 s!2326) (matchRSpec!3484 r!7292 s!2326))))

(declare-fun lt!2392484 () Unit!158867)

(declare-fun choose!48305 (Regex!16383 List!65449) Unit!158867)

(assert (=> d!2040501 (= lt!2392484 (choose!48305 r!7292 s!2326))))

(assert (=> d!2040501 (validRegex!8119 r!7292)))

(assert (=> d!2040501 (= (mainMatchTheorem!3484 r!7292 s!2326) lt!2392484)))

(declare-fun bs!1651740 () Bool)

(assert (= bs!1651740 d!2040501))

(assert (=> bs!1651740 m!7290536))

(assert (=> bs!1651740 m!7290534))

(declare-fun m!7291038 () Bool)

(assert (=> bs!1651740 m!7291038))

(assert (=> bs!1651740 m!7290420))

(assert (=> b!6503184 d!2040501))

(declare-fun bs!1651741 () Bool)

(declare-fun d!2040503 () Bool)

(assert (= bs!1651741 (and d!2040503 b!6503167)))

(declare-fun lambda!360574 () Int)

(assert (=> bs!1651741 (= lambda!360574 lambda!360522)))

(declare-fun bs!1651742 () Bool)

(assert (= bs!1651742 (and d!2040503 d!2040441)))

(assert (=> bs!1651742 (= lambda!360574 lambda!360559)))

(declare-fun bs!1651743 () Bool)

(assert (= bs!1651743 (and d!2040503 d!2040443)))

(assert (=> bs!1651743 (= lambda!360574 lambda!360562)))

(assert (=> d!2040503 (= (inv!84204 setElem!44339) (forall!15564 (exprs!6267 setElem!44339) lambda!360574))))

(declare-fun bs!1651744 () Bool)

(assert (= bs!1651744 d!2040503))

(declare-fun m!7291040 () Bool)

(assert (=> bs!1651744 m!7291040))

(assert (=> setNonEmpty!44339 d!2040503))

(declare-fun b!6503859 () Bool)

(declare-fun e!3940859 () Bool)

(declare-fun e!3940865 () Bool)

(assert (=> b!6503859 (= e!3940859 e!3940865)))

(declare-fun res!2670950 () Bool)

(assert (=> b!6503859 (=> (not res!2670950) (not e!3940865))))

(declare-fun call!563609 () Bool)

(assert (=> b!6503859 (= res!2670950 call!563609)))

(declare-fun call!563608 () Bool)

(declare-fun bm!563603 () Bool)

(declare-fun c!1192657 () Bool)

(declare-fun c!1192658 () Bool)

(assert (=> bm!563603 (= call!563608 (validRegex!8119 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))

(declare-fun b!6503860 () Bool)

(declare-fun e!3940864 () Bool)

(declare-fun call!563610 () Bool)

(assert (=> b!6503860 (= e!3940864 call!563610)))

(declare-fun b!6503861 () Bool)

(declare-fun res!2670951 () Bool)

(assert (=> b!6503861 (=> res!2670951 e!3940859)))

(assert (=> b!6503861 (= res!2670951 (not ((_ is Concat!25228) r!7292)))))

(declare-fun e!3940860 () Bool)

(assert (=> b!6503861 (= e!3940860 e!3940859)))

(declare-fun d!2040505 () Bool)

(declare-fun res!2670954 () Bool)

(declare-fun e!3940862 () Bool)

(assert (=> d!2040505 (=> res!2670954 e!3940862)))

(assert (=> d!2040505 (= res!2670954 ((_ is ElementMatch!16383) r!7292))))

(assert (=> d!2040505 (= (validRegex!8119 r!7292) e!3940862)))

(declare-fun bm!563604 () Bool)

(assert (=> bm!563604 (= call!563609 call!563608)))

(declare-fun b!6503862 () Bool)

(declare-fun e!3940861 () Bool)

(declare-fun e!3940863 () Bool)

(assert (=> b!6503862 (= e!3940861 e!3940863)))

(declare-fun res!2670953 () Bool)

(assert (=> b!6503862 (= res!2670953 (not (nullable!6376 (reg!16712 r!7292))))))

(assert (=> b!6503862 (=> (not res!2670953) (not e!3940863))))

(declare-fun b!6503863 () Bool)

(assert (=> b!6503863 (= e!3940861 e!3940860)))

(assert (=> b!6503863 (= c!1192657 ((_ is Union!16383) r!7292))))

(declare-fun b!6503864 () Bool)

(assert (=> b!6503864 (= e!3940863 call!563608)))

(declare-fun b!6503865 () Bool)

(assert (=> b!6503865 (= e!3940862 e!3940861)))

(assert (=> b!6503865 (= c!1192658 ((_ is Star!16383) r!7292))))

(declare-fun bm!563605 () Bool)

(assert (=> bm!563605 (= call!563610 (validRegex!8119 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))

(declare-fun b!6503866 () Bool)

(assert (=> b!6503866 (= e!3940865 call!563610)))

(declare-fun b!6503867 () Bool)

(declare-fun res!2670952 () Bool)

(assert (=> b!6503867 (=> (not res!2670952) (not e!3940864))))

(assert (=> b!6503867 (= res!2670952 call!563609)))

(assert (=> b!6503867 (= e!3940860 e!3940864)))

(assert (= (and d!2040505 (not res!2670954)) b!6503865))

(assert (= (and b!6503865 c!1192658) b!6503862))

(assert (= (and b!6503865 (not c!1192658)) b!6503863))

(assert (= (and b!6503862 res!2670953) b!6503864))

(assert (= (and b!6503863 c!1192657) b!6503867))

(assert (= (and b!6503863 (not c!1192657)) b!6503861))

(assert (= (and b!6503867 res!2670952) b!6503860))

(assert (= (and b!6503861 (not res!2670951)) b!6503859))

(assert (= (and b!6503859 res!2670950) b!6503866))

(assert (= (or b!6503860 b!6503866) bm!563605))

(assert (= (or b!6503867 b!6503859) bm!563604))

(assert (= (or b!6503864 bm!563604) bm!563603))

(declare-fun m!7291042 () Bool)

(assert (=> bm!563603 m!7291042))

(declare-fun m!7291044 () Bool)

(assert (=> b!6503862 m!7291044))

(declare-fun m!7291046 () Bool)

(assert (=> bm!563605 m!7291046))

(assert (=> start!638942 d!2040505))

(declare-fun d!2040507 () Bool)

(declare-fun e!3940868 () Bool)

(assert (=> d!2040507 e!3940868))

(declare-fun res!2670957 () Bool)

(assert (=> d!2040507 (=> (not res!2670957) (not e!3940868))))

(declare-fun lt!2392487 () List!65450)

(declare-fun noDuplicate!2200 (List!65450) Bool)

(assert (=> d!2040507 (= res!2670957 (noDuplicate!2200 lt!2392487))))

(declare-fun choose!48306 ((InoxSet Context!11534)) List!65450)

(assert (=> d!2040507 (= lt!2392487 (choose!48306 z!1189))))

(assert (=> d!2040507 (= (toList!10167 z!1189) lt!2392487)))

(declare-fun b!6503870 () Bool)

(declare-fun content!12466 (List!65450) (InoxSet Context!11534))

(assert (=> b!6503870 (= e!3940868 (= (content!12466 lt!2392487) z!1189))))

(assert (= (and d!2040507 res!2670957) b!6503870))

(declare-fun m!7291048 () Bool)

(assert (=> d!2040507 m!7291048))

(declare-fun m!7291050 () Bool)

(assert (=> d!2040507 m!7291050))

(declare-fun m!7291052 () Bool)

(assert (=> b!6503870 m!7291052))

(assert (=> b!6503183 d!2040507))

(declare-fun bs!1651745 () Bool)

(declare-fun d!2040509 () Bool)

(assert (= bs!1651745 (and d!2040509 b!6503167)))

(declare-fun lambda!360577 () Int)

(assert (=> bs!1651745 (= lambda!360577 lambda!360522)))

(declare-fun bs!1651746 () Bool)

(assert (= bs!1651746 (and d!2040509 d!2040441)))

(assert (=> bs!1651746 (= lambda!360577 lambda!360559)))

(declare-fun bs!1651747 () Bool)

(assert (= bs!1651747 (and d!2040509 d!2040443)))

(assert (=> bs!1651747 (= lambda!360577 lambda!360562)))

(declare-fun bs!1651748 () Bool)

(assert (= bs!1651748 (and d!2040509 d!2040503)))

(assert (=> bs!1651748 (= lambda!360577 lambda!360574)))

(declare-fun e!3940884 () Bool)

(assert (=> d!2040509 e!3940884))

(declare-fun res!2670963 () Bool)

(assert (=> d!2040509 (=> (not res!2670963) (not e!3940884))))

(declare-fun lt!2392490 () Regex!16383)

(assert (=> d!2040509 (= res!2670963 (validRegex!8119 lt!2392490))))

(declare-fun e!3940883 () Regex!16383)

(assert (=> d!2040509 (= lt!2392490 e!3940883)))

(declare-fun c!1192667 () Bool)

(declare-fun e!3940886 () Bool)

(assert (=> d!2040509 (= c!1192667 e!3940886)))

(declare-fun res!2670962 () Bool)

(assert (=> d!2040509 (=> (not res!2670962) (not e!3940886))))

(assert (=> d!2040509 (= res!2670962 ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343))))))

(assert (=> d!2040509 (forall!15564 (exprs!6267 (h!71774 zl!343)) lambda!360577)))

(assert (=> d!2040509 (= (generalisedConcat!1980 (exprs!6267 (h!71774 zl!343))) lt!2392490)))

(declare-fun b!6503891 () Bool)

(declare-fun e!3940882 () Bool)

(declare-fun e!3940881 () Bool)

(assert (=> b!6503891 (= e!3940882 e!3940881)))

(declare-fun c!1192668 () Bool)

(assert (=> b!6503891 (= c!1192668 (isEmpty!37530 (tail!12322 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503892 () Bool)

(assert (=> b!6503892 (= e!3940884 e!3940882)))

(declare-fun c!1192670 () Bool)

(assert (=> b!6503892 (= c!1192670 (isEmpty!37530 (exprs!6267 (h!71774 zl!343))))))

(declare-fun b!6503893 () Bool)

(declare-fun e!3940885 () Regex!16383)

(assert (=> b!6503893 (= e!3940885 EmptyExpr!16383)))

(declare-fun b!6503894 () Bool)

(assert (=> b!6503894 (= e!3940885 (Concat!25228 (h!71772 (exprs!6267 (h!71774 zl!343))) (generalisedConcat!1980 (t!379082 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6503895 () Bool)

(declare-fun isConcat!1295 (Regex!16383) Bool)

(assert (=> b!6503895 (= e!3940881 (isConcat!1295 lt!2392490))))

(declare-fun b!6503896 () Bool)

(assert (=> b!6503896 (= e!3940881 (= lt!2392490 (head!13237 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503897 () Bool)

(declare-fun isEmptyExpr!1772 (Regex!16383) Bool)

(assert (=> b!6503897 (= e!3940882 (isEmptyExpr!1772 lt!2392490))))

(declare-fun b!6503898 () Bool)

(assert (=> b!6503898 (= e!3940883 e!3940885)))

(declare-fun c!1192669 () Bool)

(assert (=> b!6503898 (= c!1192669 ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343))))))

(declare-fun b!6503899 () Bool)

(assert (=> b!6503899 (= e!3940886 (isEmpty!37530 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6503900 () Bool)

(assert (=> b!6503900 (= e!3940883 (h!71772 (exprs!6267 (h!71774 zl!343))))))

(assert (= (and d!2040509 res!2670962) b!6503899))

(assert (= (and d!2040509 c!1192667) b!6503900))

(assert (= (and d!2040509 (not c!1192667)) b!6503898))

(assert (= (and b!6503898 c!1192669) b!6503894))

(assert (= (and b!6503898 (not c!1192669)) b!6503893))

(assert (= (and d!2040509 res!2670963) b!6503892))

(assert (= (and b!6503892 c!1192670) b!6503897))

(assert (= (and b!6503892 (not c!1192670)) b!6503891))

(assert (= (and b!6503891 c!1192668) b!6503896))

(assert (= (and b!6503891 (not c!1192668)) b!6503895))

(declare-fun m!7291054 () Bool)

(assert (=> b!6503896 m!7291054))

(declare-fun m!7291056 () Bool)

(assert (=> b!6503894 m!7291056))

(declare-fun m!7291058 () Bool)

(assert (=> d!2040509 m!7291058))

(declare-fun m!7291060 () Bool)

(assert (=> d!2040509 m!7291060))

(declare-fun m!7291062 () Bool)

(assert (=> b!6503891 m!7291062))

(assert (=> b!6503891 m!7291062))

(declare-fun m!7291064 () Bool)

(assert (=> b!6503891 m!7291064))

(declare-fun m!7291066 () Bool)

(assert (=> b!6503892 m!7291066))

(declare-fun m!7291068 () Bool)

(assert (=> b!6503895 m!7291068))

(assert (=> b!6503899 m!7290512))

(declare-fun m!7291070 () Bool)

(assert (=> b!6503897 m!7291070))

(assert (=> b!6503162 d!2040509))

(declare-fun b!6503919 () Bool)

(declare-fun e!3940899 () Option!16274)

(assert (=> b!6503919 (= e!3940899 (Some!16273 (tuple2!66725 Nil!65325 s!2326)))))

(declare-fun b!6503920 () Bool)

(declare-fun e!3940898 () Option!16274)

(assert (=> b!6503920 (= e!3940899 e!3940898)))

(declare-fun c!1192676 () Bool)

(assert (=> b!6503920 (= c!1192676 ((_ is Nil!65325) s!2326))))

(declare-fun b!6503921 () Bool)

(declare-fun e!3940897 () Bool)

(assert (=> b!6503921 (= e!3940897 (matchR!8566 (regTwo!33278 r!7292) s!2326))))

(declare-fun d!2040511 () Bool)

(declare-fun e!3940901 () Bool)

(assert (=> d!2040511 e!3940901))

(declare-fun res!2670974 () Bool)

(assert (=> d!2040511 (=> res!2670974 e!3940901)))

(declare-fun e!3940900 () Bool)

(assert (=> d!2040511 (= res!2670974 e!3940900)))

(declare-fun res!2670977 () Bool)

(assert (=> d!2040511 (=> (not res!2670977) (not e!3940900))))

(declare-fun lt!2392498 () Option!16274)

(assert (=> d!2040511 (= res!2670977 (isDefined!12977 lt!2392498))))

(assert (=> d!2040511 (= lt!2392498 e!3940899)))

(declare-fun c!1192675 () Bool)

(assert (=> d!2040511 (= c!1192675 e!3940897)))

(declare-fun res!2670975 () Bool)

(assert (=> d!2040511 (=> (not res!2670975) (not e!3940897))))

(assert (=> d!2040511 (= res!2670975 (matchR!8566 (regOne!33278 r!7292) Nil!65325))))

(assert (=> d!2040511 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2040511 (= (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326) lt!2392498)))

(declare-fun b!6503922 () Bool)

(declare-fun lt!2392497 () Unit!158867)

(declare-fun lt!2392499 () Unit!158867)

(assert (=> b!6503922 (= lt!2392497 lt!2392499)))

(declare-fun ++!14471 (List!65449 List!65449) List!65449)

(assert (=> b!6503922 (= (++!14471 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2536 (List!65449 C!33036 List!65449 List!65449) Unit!158867)

(assert (=> b!6503922 (= lt!2392499 (lemmaMoveElementToOtherListKeepsConcatEq!2536 Nil!65325 (h!71773 s!2326) (t!379083 s!2326) s!2326))))

(assert (=> b!6503922 (= e!3940898 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326) s!2326))))

(declare-fun b!6503923 () Bool)

(assert (=> b!6503923 (= e!3940901 (not (isDefined!12977 lt!2392498)))))

(declare-fun b!6503924 () Bool)

(declare-fun res!2670976 () Bool)

(assert (=> b!6503924 (=> (not res!2670976) (not e!3940900))))

(declare-fun get!22658 (Option!16274) tuple2!66724)

(assert (=> b!6503924 (= res!2670976 (matchR!8566 (regTwo!33278 r!7292) (_2!36665 (get!22658 lt!2392498))))))

(declare-fun b!6503925 () Bool)

(assert (=> b!6503925 (= e!3940898 None!16273)))

(declare-fun b!6503926 () Bool)

(assert (=> b!6503926 (= e!3940900 (= (++!14471 (_1!36665 (get!22658 lt!2392498)) (_2!36665 (get!22658 lt!2392498))) s!2326))))

(declare-fun b!6503927 () Bool)

(declare-fun res!2670978 () Bool)

(assert (=> b!6503927 (=> (not res!2670978) (not e!3940900))))

(assert (=> b!6503927 (= res!2670978 (matchR!8566 (regOne!33278 r!7292) (_1!36665 (get!22658 lt!2392498))))))

(assert (= (and d!2040511 res!2670975) b!6503921))

(assert (= (and d!2040511 c!1192675) b!6503919))

(assert (= (and d!2040511 (not c!1192675)) b!6503920))

(assert (= (and b!6503920 c!1192676) b!6503925))

(assert (= (and b!6503920 (not c!1192676)) b!6503922))

(assert (= (and d!2040511 res!2670977) b!6503927))

(assert (= (and b!6503927 res!2670978) b!6503924))

(assert (= (and b!6503924 res!2670976) b!6503926))

(assert (= (and d!2040511 (not res!2670974)) b!6503923))

(declare-fun m!7291072 () Bool)

(assert (=> d!2040511 m!7291072))

(declare-fun m!7291074 () Bool)

(assert (=> d!2040511 m!7291074))

(declare-fun m!7291076 () Bool)

(assert (=> d!2040511 m!7291076))

(declare-fun m!7291078 () Bool)

(assert (=> b!6503924 m!7291078))

(declare-fun m!7291080 () Bool)

(assert (=> b!6503924 m!7291080))

(assert (=> b!6503926 m!7291078))

(declare-fun m!7291082 () Bool)

(assert (=> b!6503926 m!7291082))

(assert (=> b!6503923 m!7291072))

(declare-fun m!7291084 () Bool)

(assert (=> b!6503921 m!7291084))

(assert (=> b!6503927 m!7291078))

(declare-fun m!7291086 () Bool)

(assert (=> b!6503927 m!7291086))

(declare-fun m!7291088 () Bool)

(assert (=> b!6503922 m!7291088))

(assert (=> b!6503922 m!7291088))

(declare-fun m!7291090 () Bool)

(assert (=> b!6503922 m!7291090))

(declare-fun m!7291092 () Bool)

(assert (=> b!6503922 m!7291092))

(assert (=> b!6503922 m!7291088))

(declare-fun m!7291094 () Bool)

(assert (=> b!6503922 m!7291094))

(assert (=> b!6503182 d!2040511))

(declare-fun d!2040513 () Bool)

(declare-fun choose!48307 (Int) Bool)

(assert (=> d!2040513 (= (Exists!3453 lambda!360518) (choose!48307 lambda!360518))))

(declare-fun bs!1651749 () Bool)

(assert (= bs!1651749 d!2040513))

(declare-fun m!7291096 () Bool)

(assert (=> bs!1651749 m!7291096))

(assert (=> b!6503182 d!2040513))

(declare-fun d!2040515 () Bool)

(assert (=> d!2040515 (= (Exists!3453 lambda!360519) (choose!48307 lambda!360519))))

(declare-fun bs!1651750 () Bool)

(assert (= bs!1651750 d!2040515))

(declare-fun m!7291098 () Bool)

(assert (=> bs!1651750 m!7291098))

(assert (=> b!6503182 d!2040515))

(declare-fun bs!1651751 () Bool)

(declare-fun d!2040517 () Bool)

(assert (= bs!1651751 (and d!2040517 b!6503182)))

(declare-fun lambda!360580 () Int)

(assert (=> bs!1651751 (= lambda!360580 lambda!360518)))

(assert (=> bs!1651751 (not (= lambda!360580 lambda!360519))))

(declare-fun bs!1651752 () Bool)

(assert (= bs!1651752 (and d!2040517 b!6503796)))

(assert (=> bs!1651752 (not (= lambda!360580 lambda!360570))))

(declare-fun bs!1651753 () Bool)

(assert (= bs!1651753 (and d!2040517 b!6503793)))

(assert (=> bs!1651753 (not (= lambda!360580 lambda!360571))))

(assert (=> d!2040517 true))

(assert (=> d!2040517 true))

(assert (=> d!2040517 true))

(assert (=> d!2040517 (= (isDefined!12977 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326)) (Exists!3453 lambda!360580))))

(declare-fun lt!2392502 () Unit!158867)

(declare-fun choose!48308 (Regex!16383 Regex!16383 List!65449) Unit!158867)

(assert (=> d!2040517 (= lt!2392502 (choose!48308 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326))))

(assert (=> d!2040517 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2040517 (= (lemmaFindConcatSeparationEquivalentToExists!2452 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326) lt!2392502)))

(declare-fun bs!1651754 () Bool)

(assert (= bs!1651754 d!2040517))

(assert (=> bs!1651754 m!7291076))

(declare-fun m!7291100 () Bool)

(assert (=> bs!1651754 m!7291100))

(assert (=> bs!1651754 m!7290422))

(assert (=> bs!1651754 m!7290424))

(assert (=> bs!1651754 m!7290422))

(declare-fun m!7291102 () Bool)

(assert (=> bs!1651754 m!7291102))

(assert (=> b!6503182 d!2040517))

(declare-fun bs!1651755 () Bool)

(declare-fun d!2040519 () Bool)

(assert (= bs!1651755 (and d!2040519 b!6503796)))

(declare-fun lambda!360585 () Int)

(assert (=> bs!1651755 (not (= lambda!360585 lambda!360570))))

(declare-fun bs!1651756 () Bool)

(assert (= bs!1651756 (and d!2040519 b!6503182)))

(assert (=> bs!1651756 (not (= lambda!360585 lambda!360519))))

(assert (=> bs!1651756 (= lambda!360585 lambda!360518)))

(declare-fun bs!1651757 () Bool)

(assert (= bs!1651757 (and d!2040519 d!2040517)))

(assert (=> bs!1651757 (= lambda!360585 lambda!360580)))

(declare-fun bs!1651758 () Bool)

(assert (= bs!1651758 (and d!2040519 b!6503793)))

(assert (=> bs!1651758 (not (= lambda!360585 lambda!360571))))

(assert (=> d!2040519 true))

(assert (=> d!2040519 true))

(assert (=> d!2040519 true))

(declare-fun lambda!360586 () Int)

(assert (=> bs!1651755 (not (= lambda!360586 lambda!360570))))

(declare-fun bs!1651759 () Bool)

(assert (= bs!1651759 d!2040519))

(assert (=> bs!1651759 (not (= lambda!360586 lambda!360585))))

(assert (=> bs!1651756 (= lambda!360586 lambda!360519)))

(assert (=> bs!1651756 (not (= lambda!360586 lambda!360518))))

(assert (=> bs!1651757 (not (= lambda!360586 lambda!360580))))

(assert (=> bs!1651758 (= lambda!360586 lambda!360571)))

(assert (=> d!2040519 true))

(assert (=> d!2040519 true))

(assert (=> d!2040519 true))

(assert (=> d!2040519 (= (Exists!3453 lambda!360585) (Exists!3453 lambda!360586))))

(declare-fun lt!2392505 () Unit!158867)

(declare-fun choose!48309 (Regex!16383 Regex!16383 List!65449) Unit!158867)

(assert (=> d!2040519 (= lt!2392505 (choose!48309 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326))))

(assert (=> d!2040519 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2040519 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1990 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326) lt!2392505)))

(declare-fun m!7291104 () Bool)

(assert (=> bs!1651759 m!7291104))

(declare-fun m!7291106 () Bool)

(assert (=> bs!1651759 m!7291106))

(declare-fun m!7291108 () Bool)

(assert (=> bs!1651759 m!7291108))

(assert (=> bs!1651759 m!7291076))

(assert (=> b!6503182 d!2040519))

(declare-fun d!2040521 () Bool)

(declare-fun isEmpty!37534 (Option!16274) Bool)

(assert (=> d!2040521 (= (isDefined!12977 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326)) (not (isEmpty!37534 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326))))))

(declare-fun bs!1651760 () Bool)

(assert (= bs!1651760 d!2040521))

(assert (=> bs!1651760 m!7290422))

(declare-fun m!7291110 () Bool)

(assert (=> bs!1651760 m!7291110))

(assert (=> b!6503182 d!2040521))

(declare-fun d!2040523 () Bool)

(assert (=> d!2040523 (= (isEmpty!37529 (t!379084 zl!343)) ((_ is Nil!65326) (t!379084 zl!343)))))

(assert (=> b!6503169 d!2040523))

(declare-fun d!2040525 () Bool)

(declare-fun lt!2392506 () Regex!16383)

(assert (=> d!2040525 (validRegex!8119 lt!2392506)))

(assert (=> d!2040525 (= lt!2392506 (generalisedUnion!2227 (unfocusZipperList!1804 zl!343)))))

(assert (=> d!2040525 (= (unfocusZipper!2125 zl!343) lt!2392506)))

(declare-fun bs!1651761 () Bool)

(assert (= bs!1651761 d!2040525))

(declare-fun m!7291112 () Bool)

(assert (=> bs!1651761 m!7291112))

(assert (=> bs!1651761 m!7290504))

(assert (=> bs!1651761 m!7290504))

(assert (=> bs!1651761 m!7290506))

(assert (=> b!6503191 d!2040525))

(assert (=> b!6503170 d!2040455))

(declare-fun d!2040527 () Bool)

(declare-fun e!3940910 () Bool)

(assert (=> d!2040527 (= (matchZipper!2395 ((_ map or) lt!2392389 lt!2392382) (t!379083 s!2326)) e!3940910)))

(declare-fun res!2670993 () Bool)

(assert (=> d!2040527 (=> res!2670993 e!3940910)))

(assert (=> d!2040527 (= res!2670993 (matchZipper!2395 lt!2392389 (t!379083 s!2326)))))

(declare-fun lt!2392509 () Unit!158867)

(declare-fun choose!48310 ((InoxSet Context!11534) (InoxSet Context!11534) List!65449) Unit!158867)

(assert (=> d!2040527 (= lt!2392509 (choose!48310 lt!2392389 lt!2392382 (t!379083 s!2326)))))

(assert (=> d!2040527 (= (lemmaZipperConcatMatchesSameAsBothZippers!1214 lt!2392389 lt!2392382 (t!379083 s!2326)) lt!2392509)))

(declare-fun b!6503942 () Bool)

(assert (=> b!6503942 (= e!3940910 (matchZipper!2395 lt!2392382 (t!379083 s!2326)))))

(assert (= (and d!2040527 (not res!2670993)) b!6503942))

(assert (=> d!2040527 m!7290500))

(assert (=> d!2040527 m!7290498))

(declare-fun m!7291114 () Bool)

(assert (=> d!2040527 m!7291114))

(assert (=> b!6503942 m!7290436))

(assert (=> b!6503189 d!2040527))

(assert (=> b!6503189 d!2040473))

(declare-fun d!2040529 () Bool)

(declare-fun c!1192677 () Bool)

(assert (=> d!2040529 (= c!1192677 (isEmpty!37533 (t!379083 s!2326)))))

(declare-fun e!3940911 () Bool)

(assert (=> d!2040529 (= (matchZipper!2395 ((_ map or) lt!2392389 lt!2392382) (t!379083 s!2326)) e!3940911)))

(declare-fun b!6503943 () Bool)

(assert (=> b!6503943 (= e!3940911 (nullableZipper!2138 ((_ map or) lt!2392389 lt!2392382)))))

(declare-fun b!6503944 () Bool)

(assert (=> b!6503944 (= e!3940911 (matchZipper!2395 (derivationStepZipper!2349 ((_ map or) lt!2392389 lt!2392382) (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))))))

(assert (= (and d!2040529 c!1192677) b!6503943))

(assert (= (and d!2040529 (not c!1192677)) b!6503944))

(assert (=> d!2040529 m!7290906))

(declare-fun m!7291116 () Bool)

(assert (=> b!6503943 m!7291116))

(assert (=> b!6503944 m!7290910))

(assert (=> b!6503944 m!7290910))

(declare-fun m!7291118 () Bool)

(assert (=> b!6503944 m!7291118))

(assert (=> b!6503944 m!7290914))

(assert (=> b!6503944 m!7291118))

(assert (=> b!6503944 m!7290914))

(declare-fun m!7291120 () Bool)

(assert (=> b!6503944 m!7291120))

(assert (=> b!6503189 d!2040529))

(declare-fun d!2040531 () Bool)

(declare-fun lt!2392510 () Regex!16383)

(assert (=> d!2040531 (validRegex!8119 lt!2392510)))

(assert (=> d!2040531 (= lt!2392510 (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))

(assert (=> d!2040531 (= (unfocusZipper!2125 (Cons!65326 lt!2392390 Nil!65326)) lt!2392510)))

(declare-fun bs!1651762 () Bool)

(assert (= bs!1651762 d!2040531))

(declare-fun m!7291122 () Bool)

(assert (=> bs!1651762 m!7291122))

(declare-fun m!7291124 () Bool)

(assert (=> bs!1651762 m!7291124))

(assert (=> bs!1651762 m!7291124))

(declare-fun m!7291126 () Bool)

(assert (=> bs!1651762 m!7291126))

(assert (=> b!6503190 d!2040531))

(declare-fun b!6503945 () Bool)

(declare-fun e!3940914 () Bool)

(assert (=> b!6503945 (= e!3940914 (not (= (head!13238 s!2326) (c!1192455 lt!2392375))))))

(declare-fun b!6503946 () Bool)

(declare-fun e!3940917 () Bool)

(declare-fun lt!2392511 () Bool)

(assert (=> b!6503946 (= e!3940917 (not lt!2392511))))

(declare-fun b!6503947 () Bool)

(declare-fun e!3940918 () Bool)

(declare-fun call!563611 () Bool)

(assert (=> b!6503947 (= e!3940918 (= lt!2392511 call!563611))))

(declare-fun b!6503948 () Bool)

(declare-fun e!3940916 () Bool)

(assert (=> b!6503948 (= e!3940916 (nullable!6376 lt!2392375))))

(declare-fun b!6503949 () Bool)

(assert (=> b!6503949 (= e!3940916 (matchR!8566 (derivativeStep!5077 lt!2392375 (head!13238 s!2326)) (tail!12323 s!2326)))))

(declare-fun b!6503951 () Bool)

(declare-fun res!2670997 () Bool)

(declare-fun e!3940913 () Bool)

(assert (=> b!6503951 (=> res!2670997 e!3940913)))

(declare-fun e!3940915 () Bool)

(assert (=> b!6503951 (= res!2670997 e!3940915)))

(declare-fun res!2670998 () Bool)

(assert (=> b!6503951 (=> (not res!2670998) (not e!3940915))))

(assert (=> b!6503951 (= res!2670998 lt!2392511)))

(declare-fun b!6503952 () Bool)

(declare-fun e!3940912 () Bool)

(assert (=> b!6503952 (= e!3940912 e!3940914)))

(declare-fun res!2670996 () Bool)

(assert (=> b!6503952 (=> res!2670996 e!3940914)))

(assert (=> b!6503952 (= res!2670996 call!563611)))

(declare-fun b!6503953 () Bool)

(declare-fun res!2671001 () Bool)

(assert (=> b!6503953 (=> (not res!2671001) (not e!3940915))))

(assert (=> b!6503953 (= res!2671001 (not call!563611))))

(declare-fun bm!563606 () Bool)

(assert (=> bm!563606 (= call!563611 (isEmpty!37533 s!2326))))

(declare-fun b!6503954 () Bool)

(declare-fun res!2671000 () Bool)

(assert (=> b!6503954 (=> res!2671000 e!3940914)))

(assert (=> b!6503954 (= res!2671000 (not (isEmpty!37533 (tail!12323 s!2326))))))

(declare-fun b!6503955 () Bool)

(assert (=> b!6503955 (= e!3940913 e!3940912)))

(declare-fun res!2670995 () Bool)

(assert (=> b!6503955 (=> (not res!2670995) (not e!3940912))))

(assert (=> b!6503955 (= res!2670995 (not lt!2392511))))

(declare-fun b!6503956 () Bool)

(declare-fun res!2670994 () Bool)

(assert (=> b!6503956 (=> res!2670994 e!3940913)))

(assert (=> b!6503956 (= res!2670994 (not ((_ is ElementMatch!16383) lt!2392375)))))

(assert (=> b!6503956 (= e!3940917 e!3940913)))

(declare-fun b!6503957 () Bool)

(assert (=> b!6503957 (= e!3940918 e!3940917)))

(declare-fun c!1192680 () Bool)

(assert (=> b!6503957 (= c!1192680 ((_ is EmptyLang!16383) lt!2392375))))

(declare-fun b!6503958 () Bool)

(declare-fun res!2670999 () Bool)

(assert (=> b!6503958 (=> (not res!2670999) (not e!3940915))))

(assert (=> b!6503958 (= res!2670999 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun b!6503950 () Bool)

(assert (=> b!6503950 (= e!3940915 (= (head!13238 s!2326) (c!1192455 lt!2392375)))))

(declare-fun d!2040533 () Bool)

(assert (=> d!2040533 e!3940918))

(declare-fun c!1192679 () Bool)

(assert (=> d!2040533 (= c!1192679 ((_ is EmptyExpr!16383) lt!2392375))))

(assert (=> d!2040533 (= lt!2392511 e!3940916)))

(declare-fun c!1192678 () Bool)

(assert (=> d!2040533 (= c!1192678 (isEmpty!37533 s!2326))))

(assert (=> d!2040533 (validRegex!8119 lt!2392375)))

(assert (=> d!2040533 (= (matchR!8566 lt!2392375 s!2326) lt!2392511)))

(assert (= (and d!2040533 c!1192678) b!6503948))

(assert (= (and d!2040533 (not c!1192678)) b!6503949))

(assert (= (and d!2040533 c!1192679) b!6503947))

(assert (= (and d!2040533 (not c!1192679)) b!6503957))

(assert (= (and b!6503957 c!1192680) b!6503946))

(assert (= (and b!6503957 (not c!1192680)) b!6503956))

(assert (= (and b!6503956 (not res!2670994)) b!6503951))

(assert (= (and b!6503951 res!2670998) b!6503953))

(assert (= (and b!6503953 res!2671001) b!6503958))

(assert (= (and b!6503958 res!2670999) b!6503950))

(assert (= (and b!6503951 (not res!2670997)) b!6503955))

(assert (= (and b!6503955 res!2670995) b!6503952))

(assert (= (and b!6503952 (not res!2670996)) b!6503954))

(assert (= (and b!6503954 (not res!2671000)) b!6503945))

(assert (= (or b!6503947 b!6503952 b!6503953) bm!563606))

(assert (=> d!2040533 m!7290948))

(declare-fun m!7291128 () Bool)

(assert (=> d!2040533 m!7291128))

(assert (=> b!6503949 m!7290952))

(assert (=> b!6503949 m!7290952))

(declare-fun m!7291130 () Bool)

(assert (=> b!6503949 m!7291130))

(assert (=> b!6503949 m!7290956))

(assert (=> b!6503949 m!7291130))

(assert (=> b!6503949 m!7290956))

(declare-fun m!7291132 () Bool)

(assert (=> b!6503949 m!7291132))

(declare-fun m!7291134 () Bool)

(assert (=> b!6503948 m!7291134))

(assert (=> b!6503958 m!7290956))

(assert (=> b!6503958 m!7290956))

(assert (=> b!6503958 m!7291036))

(assert (=> b!6503954 m!7290956))

(assert (=> b!6503954 m!7290956))

(assert (=> b!6503954 m!7291036))

(assert (=> b!6503945 m!7290952))

(assert (=> b!6503950 m!7290952))

(assert (=> bm!563606 m!7290948))

(assert (=> b!6503188 d!2040533))

(declare-fun bs!1651763 () Bool)

(declare-fun b!6503967 () Bool)

(assert (= bs!1651763 (and b!6503967 b!6503796)))

(declare-fun lambda!360587 () Int)

(assert (=> bs!1651763 (= (and (= (reg!16712 lt!2392375) (reg!16712 r!7292)) (= lt!2392375 r!7292)) (= lambda!360587 lambda!360570))))

(declare-fun bs!1651764 () Bool)

(assert (= bs!1651764 (and b!6503967 d!2040519)))

(assert (=> bs!1651764 (not (= lambda!360587 lambda!360586))))

(assert (=> bs!1651764 (not (= lambda!360587 lambda!360585))))

(declare-fun bs!1651765 () Bool)

(assert (= bs!1651765 (and b!6503967 b!6503182)))

(assert (=> bs!1651765 (not (= lambda!360587 lambda!360519))))

(assert (=> bs!1651765 (not (= lambda!360587 lambda!360518))))

(declare-fun bs!1651766 () Bool)

(assert (= bs!1651766 (and b!6503967 d!2040517)))

(assert (=> bs!1651766 (not (= lambda!360587 lambda!360580))))

(declare-fun bs!1651767 () Bool)

(assert (= bs!1651767 (and b!6503967 b!6503793)))

(assert (=> bs!1651767 (not (= lambda!360587 lambda!360571))))

(assert (=> b!6503967 true))

(assert (=> b!6503967 true))

(declare-fun bs!1651768 () Bool)

(declare-fun b!6503964 () Bool)

(assert (= bs!1651768 (and b!6503964 b!6503796)))

(declare-fun lambda!360588 () Int)

(assert (=> bs!1651768 (not (= lambda!360588 lambda!360570))))

(declare-fun bs!1651769 () Bool)

(assert (= bs!1651769 (and b!6503964 d!2040519)))

(assert (=> bs!1651769 (= (and (= (regOne!33278 lt!2392375) (regOne!33278 r!7292)) (= (regTwo!33278 lt!2392375) (regTwo!33278 r!7292))) (= lambda!360588 lambda!360586))))

(assert (=> bs!1651769 (not (= lambda!360588 lambda!360585))))

(declare-fun bs!1651770 () Bool)

(assert (= bs!1651770 (and b!6503964 b!6503182)))

(assert (=> bs!1651770 (= (and (= (regOne!33278 lt!2392375) (regOne!33278 r!7292)) (= (regTwo!33278 lt!2392375) (regTwo!33278 r!7292))) (= lambda!360588 lambda!360519))))

(assert (=> bs!1651770 (not (= lambda!360588 lambda!360518))))

(declare-fun bs!1651771 () Bool)

(assert (= bs!1651771 (and b!6503964 d!2040517)))

(assert (=> bs!1651771 (not (= lambda!360588 lambda!360580))))

(declare-fun bs!1651772 () Bool)

(assert (= bs!1651772 (and b!6503964 b!6503793)))

(assert (=> bs!1651772 (= (and (= (regOne!33278 lt!2392375) (regOne!33278 r!7292)) (= (regTwo!33278 lt!2392375) (regTwo!33278 r!7292))) (= lambda!360588 lambda!360571))))

(declare-fun bs!1651773 () Bool)

(assert (= bs!1651773 (and b!6503964 b!6503967)))

(assert (=> bs!1651773 (not (= lambda!360588 lambda!360587))))

(assert (=> b!6503964 true))

(assert (=> b!6503964 true))

(declare-fun b!6503959 () Bool)

(declare-fun c!1192683 () Bool)

(assert (=> b!6503959 (= c!1192683 ((_ is ElementMatch!16383) lt!2392375))))

(declare-fun e!3940921 () Bool)

(declare-fun e!3940924 () Bool)

(assert (=> b!6503959 (= e!3940921 e!3940924)))

(declare-fun b!6503960 () Bool)

(declare-fun c!1192684 () Bool)

(assert (=> b!6503960 (= c!1192684 ((_ is Union!16383) lt!2392375))))

(declare-fun e!3940925 () Bool)

(assert (=> b!6503960 (= e!3940924 e!3940925)))

(declare-fun b!6503961 () Bool)

(declare-fun e!3940923 () Bool)

(assert (=> b!6503961 (= e!3940923 (matchRSpec!3484 (regTwo!33279 lt!2392375) s!2326))))

(declare-fun b!6503962 () Bool)

(assert (=> b!6503962 (= e!3940924 (= s!2326 (Cons!65325 (c!1192455 lt!2392375) Nil!65325)))))

(declare-fun d!2040535 () Bool)

(declare-fun c!1192682 () Bool)

(assert (=> d!2040535 (= c!1192682 ((_ is EmptyExpr!16383) lt!2392375))))

(declare-fun e!3940920 () Bool)

(assert (=> d!2040535 (= (matchRSpec!3484 lt!2392375 s!2326) e!3940920)))

(declare-fun call!563612 () Bool)

(declare-fun bm!563607 () Bool)

(declare-fun c!1192681 () Bool)

(assert (=> bm!563607 (= call!563612 (Exists!3453 (ite c!1192681 lambda!360587 lambda!360588)))))

(declare-fun b!6503963 () Bool)

(assert (=> b!6503963 (= e!3940925 e!3940923)))

(declare-fun res!2671002 () Bool)

(assert (=> b!6503963 (= res!2671002 (matchRSpec!3484 (regOne!33279 lt!2392375) s!2326))))

(assert (=> b!6503963 (=> res!2671002 e!3940923)))

(declare-fun e!3940922 () Bool)

(assert (=> b!6503964 (= e!3940922 call!563612)))

(declare-fun b!6503965 () Bool)

(declare-fun res!2671003 () Bool)

(declare-fun e!3940919 () Bool)

(assert (=> b!6503965 (=> res!2671003 e!3940919)))

(declare-fun call!563613 () Bool)

(assert (=> b!6503965 (= res!2671003 call!563613)))

(assert (=> b!6503965 (= e!3940922 e!3940919)))

(declare-fun b!6503966 () Bool)

(assert (=> b!6503966 (= e!3940920 e!3940921)))

(declare-fun res!2671004 () Bool)

(assert (=> b!6503966 (= res!2671004 (not ((_ is EmptyLang!16383) lt!2392375)))))

(assert (=> b!6503966 (=> (not res!2671004) (not e!3940921))))

(assert (=> b!6503967 (= e!3940919 call!563612)))

(declare-fun bm!563608 () Bool)

(assert (=> bm!563608 (= call!563613 (isEmpty!37533 s!2326))))

(declare-fun b!6503968 () Bool)

(assert (=> b!6503968 (= e!3940925 e!3940922)))

(assert (=> b!6503968 (= c!1192681 ((_ is Star!16383) lt!2392375))))

(declare-fun b!6503969 () Bool)

(assert (=> b!6503969 (= e!3940920 call!563613)))

(assert (= (and d!2040535 c!1192682) b!6503969))

(assert (= (and d!2040535 (not c!1192682)) b!6503966))

(assert (= (and b!6503966 res!2671004) b!6503959))

(assert (= (and b!6503959 c!1192683) b!6503962))

(assert (= (and b!6503959 (not c!1192683)) b!6503960))

(assert (= (and b!6503960 c!1192684) b!6503963))

(assert (= (and b!6503960 (not c!1192684)) b!6503968))

(assert (= (and b!6503963 (not res!2671002)) b!6503961))

(assert (= (and b!6503968 c!1192681) b!6503965))

(assert (= (and b!6503968 (not c!1192681)) b!6503964))

(assert (= (and b!6503965 (not res!2671003)) b!6503967))

(assert (= (or b!6503967 b!6503964) bm!563607))

(assert (= (or b!6503969 b!6503965) bm!563608))

(declare-fun m!7291136 () Bool)

(assert (=> b!6503961 m!7291136))

(declare-fun m!7291138 () Bool)

(assert (=> bm!563607 m!7291138))

(declare-fun m!7291140 () Bool)

(assert (=> b!6503963 m!7291140))

(assert (=> bm!563608 m!7290948))

(assert (=> b!6503188 d!2040535))

(declare-fun d!2040537 () Bool)

(assert (=> d!2040537 (= (matchR!8566 lt!2392375 s!2326) (matchRSpec!3484 lt!2392375 s!2326))))

(declare-fun lt!2392512 () Unit!158867)

(assert (=> d!2040537 (= lt!2392512 (choose!48305 lt!2392375 s!2326))))

(assert (=> d!2040537 (validRegex!8119 lt!2392375)))

(assert (=> d!2040537 (= (mainMatchTheorem!3484 lt!2392375 s!2326) lt!2392512)))

(declare-fun bs!1651774 () Bool)

(assert (= bs!1651774 d!2040537))

(assert (=> bs!1651774 m!7290514))

(assert (=> bs!1651774 m!7290516))

(declare-fun m!7291142 () Bool)

(assert (=> bs!1651774 m!7291142))

(assert (=> bs!1651774 m!7291128))

(assert (=> b!6503188 d!2040537))

(declare-fun b!6503978 () Bool)

(declare-fun e!3940931 () List!65448)

(assert (=> b!6503978 (= e!3940931 lt!2392391)))

(declare-fun d!2040539 () Bool)

(declare-fun e!3940930 () Bool)

(assert (=> d!2040539 e!3940930))

(declare-fun res!2671010 () Bool)

(assert (=> d!2040539 (=> (not res!2671010) (not e!3940930))))

(declare-fun lt!2392515 () List!65448)

(declare-fun content!12467 (List!65448) (InoxSet Regex!16383))

(assert (=> d!2040539 (= res!2671010 (= (content!12467 lt!2392515) ((_ map or) (content!12467 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) (content!12467 lt!2392391))))))

(assert (=> d!2040539 (= lt!2392515 e!3940931)))

(declare-fun c!1192687 () Bool)

(assert (=> d!2040539 (= c!1192687 ((_ is Nil!65324) (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))

(assert (=> d!2040539 (= (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391) lt!2392515)))

(declare-fun b!6503980 () Bool)

(declare-fun res!2671009 () Bool)

(assert (=> b!6503980 (=> (not res!2671009) (not e!3940930))))

(declare-fun size!40440 (List!65448) Int)

(assert (=> b!6503980 (= res!2671009 (= (size!40440 lt!2392515) (+ (size!40440 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) (size!40440 lt!2392391))))))

(declare-fun b!6503979 () Bool)

(assert (=> b!6503979 (= e!3940931 (Cons!65324 (h!71772 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) (++!14469 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) lt!2392391)))))

(declare-fun b!6503981 () Bool)

(assert (=> b!6503981 (= e!3940930 (or (not (= lt!2392391 Nil!65324)) (= lt!2392515 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))))))

(assert (= (and d!2040539 c!1192687) b!6503978))

(assert (= (and d!2040539 (not c!1192687)) b!6503979))

(assert (= (and d!2040539 res!2671010) b!6503980))

(assert (= (and b!6503980 res!2671009) b!6503981))

(declare-fun m!7291144 () Bool)

(assert (=> d!2040539 m!7291144))

(declare-fun m!7291146 () Bool)

(assert (=> d!2040539 m!7291146))

(declare-fun m!7291148 () Bool)

(assert (=> d!2040539 m!7291148))

(declare-fun m!7291150 () Bool)

(assert (=> b!6503980 m!7291150))

(declare-fun m!7291152 () Bool)

(assert (=> b!6503980 m!7291152))

(declare-fun m!7291154 () Bool)

(assert (=> b!6503980 m!7291154))

(declare-fun m!7291156 () Bool)

(assert (=> b!6503979 m!7291156))

(assert (=> b!6503167 d!2040539))

(declare-fun bs!1651775 () Bool)

(declare-fun d!2040541 () Bool)

(assert (= bs!1651775 (and d!2040541 d!2040443)))

(declare-fun lambda!360589 () Int)

(assert (=> bs!1651775 (= lambda!360589 lambda!360562)))

(declare-fun bs!1651776 () Bool)

(assert (= bs!1651776 (and d!2040541 d!2040441)))

(assert (=> bs!1651776 (= lambda!360589 lambda!360559)))

(declare-fun bs!1651777 () Bool)

(assert (= bs!1651777 (and d!2040541 d!2040509)))

(assert (=> bs!1651777 (= lambda!360589 lambda!360577)))

(declare-fun bs!1651778 () Bool)

(assert (= bs!1651778 (and d!2040541 d!2040503)))

(assert (=> bs!1651778 (= lambda!360589 lambda!360574)))

(declare-fun bs!1651779 () Bool)

(assert (= bs!1651779 (and d!2040541 b!6503167)))

(assert (=> bs!1651779 (= lambda!360589 lambda!360522)))

(assert (=> d!2040541 (= (inv!84204 lt!2392390) (forall!15564 (exprs!6267 lt!2392390) lambda!360589))))

(declare-fun bs!1651780 () Bool)

(assert (= bs!1651780 d!2040541))

(declare-fun m!7291158 () Bool)

(assert (=> bs!1651780 m!7291158))

(assert (=> b!6503167 d!2040541))

(declare-fun d!2040543 () Bool)

(declare-fun dynLambda!25952 (Int Context!11534) Context!11534)

(assert (=> d!2040543 (= (map!14883 lt!2392369 lambda!360521) (store ((as const (Array Context!11534 Bool)) false) (dynLambda!25952 lambda!360521 lt!2392373) true))))

(declare-fun lt!2392518 () Unit!158867)

(declare-fun choose!48311 ((InoxSet Context!11534) Context!11534 Int) Unit!158867)

(assert (=> d!2040543 (= lt!2392518 (choose!48311 lt!2392369 lt!2392373 lambda!360521))))

(assert (=> d!2040543 (= lt!2392369 (store ((as const (Array Context!11534 Bool)) false) lt!2392373 true))))

(assert (=> d!2040543 (= (lemmaMapOnSingletonSet!166 lt!2392369 lt!2392373 lambda!360521) lt!2392518)))

(declare-fun b_lambda!246205 () Bool)

(assert (=> (not b_lambda!246205) (not d!2040543)))

(declare-fun bs!1651781 () Bool)

(assert (= bs!1651781 d!2040543))

(declare-fun m!7291160 () Bool)

(assert (=> bs!1651781 m!7291160))

(assert (=> bs!1651781 m!7290478))

(assert (=> bs!1651781 m!7290522))

(declare-fun m!7291162 () Bool)

(assert (=> bs!1651781 m!7291162))

(assert (=> bs!1651781 m!7291160))

(declare-fun m!7291164 () Bool)

(assert (=> bs!1651781 m!7291164))

(assert (=> b!6503167 d!2040543))

(declare-fun d!2040545 () Bool)

(assert (=> d!2040545 (forall!15564 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391) lambda!360522)))

(declare-fun lt!2392521 () Unit!158867)

(declare-fun choose!48312 (List!65448 List!65448 Int) Unit!158867)

(assert (=> d!2040545 (= lt!2392521 (choose!48312 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391 lambda!360522))))

(assert (=> d!2040545 (forall!15564 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lambda!360522)))

(assert (=> d!2040545 (= (lemmaConcatPreservesForall!356 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391 lambda!360522) lt!2392521)))

(declare-fun bs!1651782 () Bool)

(assert (= bs!1651782 d!2040545))

(assert (=> bs!1651782 m!7290526))

(assert (=> bs!1651782 m!7290526))

(declare-fun m!7291166 () Bool)

(assert (=> bs!1651782 m!7291166))

(declare-fun m!7291168 () Bool)

(assert (=> bs!1651782 m!7291168))

(declare-fun m!7291170 () Bool)

(assert (=> bs!1651782 m!7291170))

(assert (=> b!6503167 d!2040545))

(declare-fun d!2040547 () Bool)

(declare-fun choose!48313 ((InoxSet Context!11534) Int) (InoxSet Context!11534))

(assert (=> d!2040547 (= (map!14883 lt!2392369 lambda!360521) (choose!48313 lt!2392369 lambda!360521))))

(declare-fun bs!1651783 () Bool)

(assert (= bs!1651783 d!2040547))

(declare-fun m!7291172 () Bool)

(assert (=> bs!1651783 m!7291172))

(assert (=> b!6503167 d!2040547))

(declare-fun bs!1651784 () Bool)

(declare-fun d!2040549 () Bool)

(assert (= bs!1651784 (and d!2040549 d!2040541)))

(declare-fun lambda!360590 () Int)

(assert (=> bs!1651784 (= lambda!360590 lambda!360589)))

(declare-fun bs!1651785 () Bool)

(assert (= bs!1651785 (and d!2040549 d!2040443)))

(assert (=> bs!1651785 (= lambda!360590 lambda!360562)))

(declare-fun bs!1651786 () Bool)

(assert (= bs!1651786 (and d!2040549 d!2040441)))

(assert (=> bs!1651786 (= lambda!360590 lambda!360559)))

(declare-fun bs!1651787 () Bool)

(assert (= bs!1651787 (and d!2040549 d!2040509)))

(assert (=> bs!1651787 (= lambda!360590 lambda!360577)))

(declare-fun bs!1651788 () Bool)

(assert (= bs!1651788 (and d!2040549 d!2040503)))

(assert (=> bs!1651788 (= lambda!360590 lambda!360574)))

(declare-fun bs!1651789 () Bool)

(assert (= bs!1651789 (and d!2040549 b!6503167)))

(assert (=> bs!1651789 (= lambda!360590 lambda!360522)))

(assert (=> d!2040549 (= (inv!84204 (h!71774 zl!343)) (forall!15564 (exprs!6267 (h!71774 zl!343)) lambda!360590))))

(declare-fun bs!1651790 () Bool)

(assert (= bs!1651790 d!2040549))

(declare-fun m!7291174 () Bool)

(assert (=> bs!1651790 m!7291174))

(assert (=> b!6503187 d!2040549))

(declare-fun b!6503986 () Bool)

(declare-fun e!3940934 () Bool)

(declare-fun tp!1798881 () Bool)

(declare-fun tp!1798882 () Bool)

(assert (=> b!6503986 (= e!3940934 (and tp!1798881 tp!1798882))))

(assert (=> b!6503186 (= tp!1798818 e!3940934)))

(assert (= (and b!6503186 ((_ is Cons!65324) (exprs!6267 (h!71774 zl!343)))) b!6503986))

(declare-fun condSetEmpty!44345 () Bool)

(assert (=> setNonEmpty!44339 (= condSetEmpty!44345 (= setRest!44339 ((as const (Array Context!11534 Bool)) false)))))

(declare-fun setRes!44345 () Bool)

(assert (=> setNonEmpty!44339 (= tp!1798809 setRes!44345)))

(declare-fun setIsEmpty!44345 () Bool)

(assert (=> setIsEmpty!44345 setRes!44345))

(declare-fun tp!1798887 () Bool)

(declare-fun setElem!44345 () Context!11534)

(declare-fun setNonEmpty!44345 () Bool)

(declare-fun e!3940937 () Bool)

(assert (=> setNonEmpty!44345 (= setRes!44345 (and tp!1798887 (inv!84204 setElem!44345) e!3940937))))

(declare-fun setRest!44345 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44345 (= setRest!44339 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44345 true) setRest!44345))))

(declare-fun b!6503991 () Bool)

(declare-fun tp!1798888 () Bool)

(assert (=> b!6503991 (= e!3940937 tp!1798888)))

(assert (= (and setNonEmpty!44339 condSetEmpty!44345) setIsEmpty!44345))

(assert (= (and setNonEmpty!44339 (not condSetEmpty!44345)) setNonEmpty!44345))

(assert (= setNonEmpty!44345 b!6503991))

(declare-fun m!7291176 () Bool)

(assert (=> setNonEmpty!44345 m!7291176))

(declare-fun b!6504002 () Bool)

(declare-fun e!3940940 () Bool)

(assert (=> b!6504002 (= e!3940940 tp_is_empty!42019)))

(declare-fun b!6504005 () Bool)

(declare-fun tp!1798900 () Bool)

(declare-fun tp!1798903 () Bool)

(assert (=> b!6504005 (= e!3940940 (and tp!1798900 tp!1798903))))

(declare-fun b!6504004 () Bool)

(declare-fun tp!1798902 () Bool)

(assert (=> b!6504004 (= e!3940940 tp!1798902)))

(declare-fun b!6504003 () Bool)

(declare-fun tp!1798899 () Bool)

(declare-fun tp!1798901 () Bool)

(assert (=> b!6504003 (= e!3940940 (and tp!1798899 tp!1798901))))

(assert (=> b!6503174 (= tp!1798817 e!3940940)))

(assert (= (and b!6503174 ((_ is ElementMatch!16383) (reg!16712 r!7292))) b!6504002))

(assert (= (and b!6503174 ((_ is Concat!25228) (reg!16712 r!7292))) b!6504003))

(assert (= (and b!6503174 ((_ is Star!16383) (reg!16712 r!7292))) b!6504004))

(assert (= (and b!6503174 ((_ is Union!16383) (reg!16712 r!7292))) b!6504005))

(declare-fun b!6504006 () Bool)

(declare-fun e!3940941 () Bool)

(assert (=> b!6504006 (= e!3940941 tp_is_empty!42019)))

(declare-fun b!6504009 () Bool)

(declare-fun tp!1798905 () Bool)

(declare-fun tp!1798908 () Bool)

(assert (=> b!6504009 (= e!3940941 (and tp!1798905 tp!1798908))))

(declare-fun b!6504008 () Bool)

(declare-fun tp!1798907 () Bool)

(assert (=> b!6504008 (= e!3940941 tp!1798907)))

(declare-fun b!6504007 () Bool)

(declare-fun tp!1798904 () Bool)

(declare-fun tp!1798906 () Bool)

(assert (=> b!6504007 (= e!3940941 (and tp!1798904 tp!1798906))))

(assert (=> b!6503163 (= tp!1798810 e!3940941)))

(assert (= (and b!6503163 ((_ is ElementMatch!16383) (regOne!33279 r!7292))) b!6504006))

(assert (= (and b!6503163 ((_ is Concat!25228) (regOne!33279 r!7292))) b!6504007))

(assert (= (and b!6503163 ((_ is Star!16383) (regOne!33279 r!7292))) b!6504008))

(assert (= (and b!6503163 ((_ is Union!16383) (regOne!33279 r!7292))) b!6504009))

(declare-fun b!6504010 () Bool)

(declare-fun e!3940942 () Bool)

(assert (=> b!6504010 (= e!3940942 tp_is_empty!42019)))

(declare-fun b!6504013 () Bool)

(declare-fun tp!1798910 () Bool)

(declare-fun tp!1798913 () Bool)

(assert (=> b!6504013 (= e!3940942 (and tp!1798910 tp!1798913))))

(declare-fun b!6504012 () Bool)

(declare-fun tp!1798912 () Bool)

(assert (=> b!6504012 (= e!3940942 tp!1798912)))

(declare-fun b!6504011 () Bool)

(declare-fun tp!1798909 () Bool)

(declare-fun tp!1798911 () Bool)

(assert (=> b!6504011 (= e!3940942 (and tp!1798909 tp!1798911))))

(assert (=> b!6503163 (= tp!1798814 e!3940942)))

(assert (= (and b!6503163 ((_ is ElementMatch!16383) (regTwo!33279 r!7292))) b!6504010))

(assert (= (and b!6503163 ((_ is Concat!25228) (regTwo!33279 r!7292))) b!6504011))

(assert (= (and b!6503163 ((_ is Star!16383) (regTwo!33279 r!7292))) b!6504012))

(assert (= (and b!6503163 ((_ is Union!16383) (regTwo!33279 r!7292))) b!6504013))

(declare-fun b!6504014 () Bool)

(declare-fun e!3940943 () Bool)

(assert (=> b!6504014 (= e!3940943 tp_is_empty!42019)))

(declare-fun b!6504017 () Bool)

(declare-fun tp!1798915 () Bool)

(declare-fun tp!1798918 () Bool)

(assert (=> b!6504017 (= e!3940943 (and tp!1798915 tp!1798918))))

(declare-fun b!6504016 () Bool)

(declare-fun tp!1798917 () Bool)

(assert (=> b!6504016 (= e!3940943 tp!1798917)))

(declare-fun b!6504015 () Bool)

(declare-fun tp!1798914 () Bool)

(declare-fun tp!1798916 () Bool)

(assert (=> b!6504015 (= e!3940943 (and tp!1798914 tp!1798916))))

(assert (=> b!6503164 (= tp!1798813 e!3940943)))

(assert (= (and b!6503164 ((_ is ElementMatch!16383) (regOne!33278 r!7292))) b!6504014))

(assert (= (and b!6503164 ((_ is Concat!25228) (regOne!33278 r!7292))) b!6504015))

(assert (= (and b!6503164 ((_ is Star!16383) (regOne!33278 r!7292))) b!6504016))

(assert (= (and b!6503164 ((_ is Union!16383) (regOne!33278 r!7292))) b!6504017))

(declare-fun b!6504018 () Bool)

(declare-fun e!3940944 () Bool)

(assert (=> b!6504018 (= e!3940944 tp_is_empty!42019)))

(declare-fun b!6504021 () Bool)

(declare-fun tp!1798920 () Bool)

(declare-fun tp!1798923 () Bool)

(assert (=> b!6504021 (= e!3940944 (and tp!1798920 tp!1798923))))

(declare-fun b!6504020 () Bool)

(declare-fun tp!1798922 () Bool)

(assert (=> b!6504020 (= e!3940944 tp!1798922)))

(declare-fun b!6504019 () Bool)

(declare-fun tp!1798919 () Bool)

(declare-fun tp!1798921 () Bool)

(assert (=> b!6504019 (= e!3940944 (and tp!1798919 tp!1798921))))

(assert (=> b!6503164 (= tp!1798815 e!3940944)))

(assert (= (and b!6503164 ((_ is ElementMatch!16383) (regTwo!33278 r!7292))) b!6504018))

(assert (= (and b!6503164 ((_ is Concat!25228) (regTwo!33278 r!7292))) b!6504019))

(assert (= (and b!6503164 ((_ is Star!16383) (regTwo!33278 r!7292))) b!6504020))

(assert (= (and b!6503164 ((_ is Union!16383) (regTwo!33278 r!7292))) b!6504021))

(declare-fun b!6504026 () Bool)

(declare-fun e!3940947 () Bool)

(declare-fun tp!1798926 () Bool)

(assert (=> b!6504026 (= e!3940947 (and tp_is_empty!42019 tp!1798926))))

(assert (=> b!6503181 (= tp!1798812 e!3940947)))

(assert (= (and b!6503181 ((_ is Cons!65325) (t!379083 s!2326))) b!6504026))

(declare-fun b!6504034 () Bool)

(declare-fun e!3940953 () Bool)

(declare-fun tp!1798931 () Bool)

(assert (=> b!6504034 (= e!3940953 tp!1798931)))

(declare-fun e!3940952 () Bool)

(declare-fun tp!1798932 () Bool)

(declare-fun b!6504033 () Bool)

(assert (=> b!6504033 (= e!3940952 (and (inv!84204 (h!71774 (t!379084 zl!343))) e!3940953 tp!1798932))))

(assert (=> b!6503187 (= tp!1798816 e!3940952)))

(assert (= b!6504033 b!6504034))

(assert (= (and b!6503187 ((_ is Cons!65326) (t!379084 zl!343))) b!6504033))

(declare-fun m!7291178 () Bool)

(assert (=> b!6504033 m!7291178))

(declare-fun b!6504035 () Bool)

(declare-fun e!3940954 () Bool)

(declare-fun tp!1798933 () Bool)

(declare-fun tp!1798934 () Bool)

(assert (=> b!6504035 (= e!3940954 (and tp!1798933 tp!1798934))))

(assert (=> b!6503157 (= tp!1798811 e!3940954)))

(assert (= (and b!6503157 ((_ is Cons!65324) (exprs!6267 setElem!44339))) b!6504035))

(declare-fun b_lambda!246207 () Bool)

(assert (= b_lambda!246203 (or b!6503160 b_lambda!246207)))

(declare-fun bs!1651791 () Bool)

(declare-fun d!2040551 () Bool)

(assert (= bs!1651791 (and d!2040551 b!6503160)))

(assert (=> bs!1651791 (= (dynLambda!25950 lambda!360520 (h!71774 zl!343)) (derivationStepZipperUp!1557 (h!71774 zl!343) (h!71773 s!2326)))))

(assert (=> bs!1651791 m!7290444))

(assert (=> d!2040483 d!2040551))

(declare-fun b_lambda!246209 () Bool)

(assert (= b_lambda!246199 (or b!6503160 b_lambda!246209)))

(declare-fun bs!1651792 () Bool)

(declare-fun d!2040553 () Bool)

(assert (= bs!1651792 (and d!2040553 b!6503160)))

(assert (=> bs!1651792 (= (dynLambda!25950 lambda!360520 lt!2392388) (derivationStepZipperUp!1557 lt!2392388 (h!71773 s!2326)))))

(assert (=> bs!1651792 m!7290486))

(assert (=> d!2040457 d!2040553))

(declare-fun b_lambda!246211 () Bool)

(assert (= b_lambda!246197 (or b!6503160 b_lambda!246211)))

(declare-fun bs!1651793 () Bool)

(declare-fun d!2040555 () Bool)

(assert (= bs!1651793 (and d!2040555 b!6503160)))

(assert (=> bs!1651793 (= (dynLambda!25950 lambda!360520 lt!2392390) (derivationStepZipperUp!1557 lt!2392390 (h!71773 s!2326)))))

(assert (=> bs!1651793 m!7290466))

(assert (=> d!2040451 d!2040555))

(declare-fun b_lambda!246213 () Bool)

(assert (= b_lambda!246205 (or b!6503167 b_lambda!246213)))

(declare-fun bs!1651794 () Bool)

(declare-fun d!2040557 () Bool)

(assert (= bs!1651794 (and d!2040557 b!6503167)))

(declare-fun lt!2392522 () Unit!158867)

(assert (=> bs!1651794 (= lt!2392522 (lemmaConcatPreservesForall!356 (exprs!6267 lt!2392373) lt!2392391 lambda!360522))))

(assert (=> bs!1651794 (= (dynLambda!25952 lambda!360521 lt!2392373) (Context!11535 (++!14469 (exprs!6267 lt!2392373) lt!2392391)))))

(declare-fun m!7291180 () Bool)

(assert (=> bs!1651794 m!7291180))

(declare-fun m!7291182 () Bool)

(assert (=> bs!1651794 m!7291182))

(assert (=> d!2040543 d!2040557))

(declare-fun b_lambda!246215 () Bool)

(assert (= b_lambda!246201 (or b!6503160 b_lambda!246215)))

(declare-fun bs!1651795 () Bool)

(declare-fun d!2040559 () Bool)

(assert (= bs!1651795 (and d!2040559 b!6503160)))

(assert (=> bs!1651795 (= (dynLambda!25950 lambda!360520 lt!2392373) (derivationStepZipperUp!1557 lt!2392373 (h!71773 s!2326)))))

(assert (=> bs!1651795 m!7290488))

(assert (=> d!2040467 d!2040559))

(check-sat (not bm!563583) (not d!2040493) (not b!6503979) (not d!2040503) (not b!6503697) (not d!2040547) (not setNonEmpty!44345) (not b!6503831) (not bm!563592) (not b!6503945) (not bm!563558) (not bm!563607) (not d!2040519) (not d!2040537) (not d!2040507) (not b!6504009) (not b_lambda!246213) (not b!6503734) (not bm!563560) (not b!6503689) (not b!6503870) (not bm!563608) (not b!6503670) (not b!6503891) (not b!6503897) (not d!2040525) (not b!6504011) (not b!6503654) (not b!6503682) (not bm!563605) (not bm!563578) (not d!2040443) (not d!2040533) (not d!2040495) (not b!6503683) (not b!6503827) (not b_lambda!246207) (not b!6504035) (not b!6503677) (not b!6503830) (not d!2040501) (not b_lambda!246215) (not bs!1651793) (not bs!1651794) (not bm!563606) (not b!6503963) (not b!6503924) (not d!2040459) (not b!6503640) (not b!6503753) (not d!2040539) (not b!6504021) (not b!6503840) (not b!6503991) (not b!6503958) (not b!6503790) (not d!2040545) (not b_lambda!246209) (not b!6504016) (not b!6503687) (not b!6504012) (not b!6503948) (not d!2040447) (not b!6503954) (not bm!563581) (not d!2040445) (not b!6503895) tp_is_empty!42019 (not b!6503949) (not b!6503792) (not d!2040451) (not b!6503739) (not b!6503832) (not d!2040477) (not d!2040453) (not b!6504005) (not b!6504020) (not b!6503642) (not bm!563579) (not d!2040549) (not b!6504019) (not b!6503691) (not b_lambda!246211) (not d!2040509) (not b!6503678) (not b!6503752) (not bs!1651791) (not d!2040527) (not b!6503921) (not b!6504004) (not b!6503649) (not bs!1651795) (not b!6503836) (not d!2040531) (not b!6503892) (not b!6503922) (not d!2040517) (not b!6503644) (not b!6503754) (not bm!563575) (not bm!563603) (not b!6504017) (not bm!563586) (not b!6503646) (not d!2040455) (not bm!563596) (not b!6504013) (not b!6503923) (not b!6503696) (not d!2040543) (not b!6503647) (not b!6503943) (not d!2040441) (not bm!563559) (not b!6503942) (not d!2040483) (not d!2040511) (not d!2040489) (not bs!1651792) (not d!2040457) (not d!2040475) (not d!2040469) (not b!6503690) (not d!2040473) (not bm!563561) (not b!6503961) (not b!6503669) (not b!6503950) (not b!6504034) (not d!2040515) (not b!6503692) (not b!6503641) (not b!6503894) (not b!6504008) (not b!6503688) (not d!2040471) (not b!6503927) (not b!6503735) (not b!6504033) (not b!6503926) (not bm!563580) (not b!6504026) (not b!6504003) (not d!2040521) (not d!2040541) (not d!2040499) (not b!6503727) (not b!6503899) (not b!6503755) (not b!6503740) (not b!6503944) (not bm!563587) (not b!6503896) (not d!2040529) (not b!6504015) (not bm!563593) (not b!6503862) (not d!2040513) (not b!6504007) (not b!6503748) (not d!2040465) (not d!2040467) (not b!6503986) (not b!6503980))
(check-sat)
(get-model)

(declare-fun d!2040787 () Bool)

(declare-fun c!1192823 () Bool)

(assert (=> d!2040787 (= c!1192823 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun e!3941222 () Bool)

(assert (=> d!2040787 (= (matchZipper!2395 (derivationStepZipper!2349 z!1189 (head!13238 s!2326)) (tail!12323 s!2326)) e!3941222)))

(declare-fun b!6504463 () Bool)

(assert (=> b!6504463 (= e!3941222 (nullableZipper!2138 (derivationStepZipper!2349 z!1189 (head!13238 s!2326))))))

(declare-fun b!6504464 () Bool)

(assert (=> b!6504464 (= e!3941222 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 z!1189 (head!13238 s!2326)) (head!13238 (tail!12323 s!2326))) (tail!12323 (tail!12323 s!2326))))))

(assert (= (and d!2040787 c!1192823) b!6504463))

(assert (= (and d!2040787 (not c!1192823)) b!6504464))

(assert (=> d!2040787 m!7290956))

(assert (=> d!2040787 m!7291036))

(assert (=> b!6504463 m!7290954))

(declare-fun m!7291666 () Bool)

(assert (=> b!6504463 m!7291666))

(assert (=> b!6504464 m!7290956))

(declare-fun m!7291668 () Bool)

(assert (=> b!6504464 m!7291668))

(assert (=> b!6504464 m!7290954))

(assert (=> b!6504464 m!7291668))

(declare-fun m!7291670 () Bool)

(assert (=> b!6504464 m!7291670))

(assert (=> b!6504464 m!7290956))

(declare-fun m!7291672 () Bool)

(assert (=> b!6504464 m!7291672))

(assert (=> b!6504464 m!7291670))

(assert (=> b!6504464 m!7291672))

(declare-fun m!7291674 () Bool)

(assert (=> b!6504464 m!7291674))

(assert (=> b!6503690 d!2040787))

(declare-fun bs!1651966 () Bool)

(declare-fun d!2040789 () Bool)

(assert (= bs!1651966 (and d!2040789 b!6503160)))

(declare-fun lambda!360616 () Int)

(assert (=> bs!1651966 (= (= (head!13238 s!2326) (h!71773 s!2326)) (= lambda!360616 lambda!360520))))

(declare-fun bs!1651967 () Bool)

(assert (= bs!1651967 (and d!2040789 d!2040453)))

(assert (=> bs!1651967 (= (= (head!13238 s!2326) (h!71773 s!2326)) (= lambda!360616 lambda!360565))))

(assert (=> d!2040789 true))

(assert (=> d!2040789 (= (derivationStepZipper!2349 z!1189 (head!13238 s!2326)) (flatMap!1888 z!1189 lambda!360616))))

(declare-fun bs!1651968 () Bool)

(assert (= bs!1651968 d!2040789))

(declare-fun m!7291678 () Bool)

(assert (=> bs!1651968 m!7291678))

(assert (=> b!6503690 d!2040789))

(declare-fun d!2040793 () Bool)

(assert (=> d!2040793 (= (head!13238 s!2326) (h!71773 s!2326))))

(assert (=> b!6503690 d!2040793))

(declare-fun d!2040797 () Bool)

(assert (=> d!2040797 (= (tail!12323 s!2326) (t!379083 s!2326))))

(assert (=> b!6503690 d!2040797))

(declare-fun b!6504522 () Bool)

(declare-fun e!3941269 () Bool)

(declare-fun e!3941270 () Bool)

(assert (=> b!6504522 (= e!3941269 e!3941270)))

(declare-fun c!1192839 () Bool)

(assert (=> b!6504522 (= c!1192839 ((_ is Union!16383) (regOne!33278 (regOne!33278 r!7292))))))

(declare-fun b!6504523 () Bool)

(declare-fun e!3941268 () Bool)

(assert (=> b!6504523 (= e!3941268 e!3941269)))

(declare-fun res!2671204 () Bool)

(assert (=> b!6504523 (=> res!2671204 e!3941269)))

(assert (=> b!6504523 (= res!2671204 ((_ is Star!16383) (regOne!33278 (regOne!33278 r!7292))))))

(declare-fun b!6504524 () Bool)

(declare-fun e!3941266 () Bool)

(assert (=> b!6504524 (= e!3941270 e!3941266)))

(declare-fun res!2671202 () Bool)

(declare-fun call!563716 () Bool)

(assert (=> b!6504524 (= res!2671202 call!563716)))

(assert (=> b!6504524 (=> res!2671202 e!3941266)))

(declare-fun d!2040799 () Bool)

(declare-fun res!2671203 () Bool)

(declare-fun e!3941265 () Bool)

(assert (=> d!2040799 (=> res!2671203 e!3941265)))

(assert (=> d!2040799 (= res!2671203 ((_ is EmptyExpr!16383) (regOne!33278 (regOne!33278 r!7292))))))

(assert (=> d!2040799 (= (nullableFct!2312 (regOne!33278 (regOne!33278 r!7292))) e!3941265)))

(declare-fun b!6504525 () Bool)

(assert (=> b!6504525 (= e!3941265 e!3941268)))

(declare-fun res!2671201 () Bool)

(assert (=> b!6504525 (=> (not res!2671201) (not e!3941268))))

(assert (=> b!6504525 (= res!2671201 (and (not ((_ is EmptyLang!16383) (regOne!33278 (regOne!33278 r!7292)))) (not ((_ is ElementMatch!16383) (regOne!33278 (regOne!33278 r!7292))))))))

(declare-fun b!6504526 () Bool)

(declare-fun e!3941267 () Bool)

(assert (=> b!6504526 (= e!3941270 e!3941267)))

(declare-fun res!2671200 () Bool)

(assert (=> b!6504526 (= res!2671200 call!563716)))

(assert (=> b!6504526 (=> (not res!2671200) (not e!3941267))))

(declare-fun bm!563711 () Bool)

(assert (=> bm!563711 (= call!563716 (nullable!6376 (ite c!1192839 (regOne!33279 (regOne!33278 (regOne!33278 r!7292))) (regOne!33278 (regOne!33278 (regOne!33278 r!7292))))))))

(declare-fun bm!563712 () Bool)

(declare-fun call!563717 () Bool)

(assert (=> bm!563712 (= call!563717 (nullable!6376 (ite c!1192839 (regTwo!33279 (regOne!33278 (regOne!33278 r!7292))) (regTwo!33278 (regOne!33278 (regOne!33278 r!7292))))))))

(declare-fun b!6504527 () Bool)

(assert (=> b!6504527 (= e!3941267 call!563717)))

(declare-fun b!6504528 () Bool)

(assert (=> b!6504528 (= e!3941266 call!563717)))

(assert (= (and d!2040799 (not res!2671203)) b!6504525))

(assert (= (and b!6504525 res!2671201) b!6504523))

(assert (= (and b!6504523 (not res!2671204)) b!6504522))

(assert (= (and b!6504522 c!1192839) b!6504524))

(assert (= (and b!6504522 (not c!1192839)) b!6504526))

(assert (= (and b!6504524 (not res!2671202)) b!6504528))

(assert (= (and b!6504526 res!2671200) b!6504527))

(assert (= (or b!6504528 b!6504527) bm!563712))

(assert (= (or b!6504524 b!6504526) bm!563711))

(declare-fun m!7291738 () Bool)

(assert (=> bm!563711 m!7291738))

(declare-fun m!7291740 () Bool)

(assert (=> bm!563712 m!7291740))

(assert (=> d!2040489 d!2040799))

(declare-fun d!2040809 () Bool)

(assert (=> d!2040809 (= (head!13237 (unfocusZipperList!1804 zl!343)) (h!71772 (unfocusZipperList!1804 zl!343)))))

(assert (=> b!6503647 d!2040809))

(declare-fun bm!563713 () Bool)

(declare-fun call!563718 () List!65448)

(declare-fun call!563722 () List!65448)

(assert (=> bm!563713 (= call!563718 call!563722)))

(declare-fun b!6504531 () Bool)

(declare-fun e!3941277 () (InoxSet Context!11534))

(assert (=> b!6504531 (= e!3941277 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504532 () Bool)

(declare-fun e!3941273 () (InoxSet Context!11534))

(declare-fun e!3941274 () (InoxSet Context!11534))

(assert (=> b!6504532 (= e!3941273 e!3941274)))

(declare-fun c!1192844 () Bool)

(assert (=> b!6504532 (= c!1192844 ((_ is Union!16383) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun b!6504533 () Bool)

(declare-fun c!1192843 () Bool)

(declare-fun e!3941276 () Bool)

(assert (=> b!6504533 (= c!1192843 e!3941276)))

(declare-fun res!2671205 () Bool)

(assert (=> b!6504533 (=> (not res!2671205) (not e!3941276))))

(assert (=> b!6504533 (= res!2671205 ((_ is Concat!25228) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun e!3941272 () (InoxSet Context!11534))

(assert (=> b!6504533 (= e!3941274 e!3941272)))

(declare-fun b!6504534 () Bool)

(declare-fun e!3941275 () (InoxSet Context!11534))

(assert (=> b!6504534 (= e!3941272 e!3941275)))

(declare-fun c!1192842 () Bool)

(assert (=> b!6504534 (= c!1192842 ((_ is Concat!25228) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun b!6504535 () Bool)

(declare-fun call!563720 () (InoxSet Context!11534))

(assert (=> b!6504535 (= e!3941275 call!563720)))

(declare-fun c!1192845 () Bool)

(declare-fun d!2040811 () Bool)

(assert (=> d!2040811 (= c!1192845 (and ((_ is ElementMatch!16383) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (= (c!1192455 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326))))))

(assert (=> d!2040811 (= (derivationStepZipperDown!1631 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))) (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579)) (h!71773 s!2326)) e!3941273)))

(declare-fun b!6504536 () Bool)

(declare-fun call!563721 () (InoxSet Context!11534))

(declare-fun call!563719 () (InoxSet Context!11534))

(assert (=> b!6504536 (= e!3941274 ((_ map or) call!563721 call!563719))))

(declare-fun b!6504537 () Bool)

(assert (=> b!6504537 (= e!3941277 call!563720)))

(declare-fun bm!563714 () Bool)

(assert (=> bm!563714 (= call!563719 (derivationStepZipperDown!1631 (ite c!1192844 (regTwo!33279 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (regOne!33278 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))))) (ite c!1192844 (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579)) (Context!11535 call!563722)) (h!71773 s!2326)))))

(declare-fun bm!563715 () Bool)

(declare-fun call!563723 () (InoxSet Context!11534))

(assert (=> bm!563715 (= call!563720 call!563723)))

(declare-fun bm!563716 () Bool)

(assert (=> bm!563716 (= call!563723 call!563721)))

(declare-fun bm!563717 () Bool)

(assert (=> bm!563717 (= call!563722 ($colon$colon!2234 (exprs!6267 (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579))) (ite (or c!1192843 c!1192842) (regTwo!33278 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))))))))

(declare-fun b!6504538 () Bool)

(assert (=> b!6504538 (= e!3941276 (nullable!6376 (regOne!33278 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))))))))

(declare-fun bm!563718 () Bool)

(assert (=> bm!563718 (= call!563721 (derivationStepZipperDown!1631 (ite c!1192844 (regOne!33279 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (ite c!1192843 (regTwo!33278 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (ite c!1192842 (regOne!33278 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))) (reg!16712 (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))))))) (ite (or c!1192844 c!1192843) (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579)) (Context!11535 call!563718)) (h!71773 s!2326)))))

(declare-fun b!6504539 () Bool)

(assert (=> b!6504539 (= e!3941272 ((_ map or) call!563719 call!563723))))

(declare-fun b!6504540 () Bool)

(assert (=> b!6504540 (= e!3941273 (store ((as const (Array Context!11534 Bool)) false) (ite (or c!1192619 c!1192618) lt!2392397 (Context!11535 call!563579)) true))))

(declare-fun c!1192841 () Bool)

(declare-fun b!6504541 () Bool)

(assert (=> b!6504541 (= c!1192841 ((_ is Star!16383) (ite c!1192619 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192618 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1192617 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))))

(assert (=> b!6504541 (= e!3941275 e!3941277)))

(assert (= (and d!2040811 c!1192845) b!6504540))

(assert (= (and d!2040811 (not c!1192845)) b!6504532))

(assert (= (and b!6504532 c!1192844) b!6504536))

(assert (= (and b!6504532 (not c!1192844)) b!6504533))

(assert (= (and b!6504533 res!2671205) b!6504538))

(assert (= (and b!6504533 c!1192843) b!6504539))

(assert (= (and b!6504533 (not c!1192843)) b!6504534))

(assert (= (and b!6504534 c!1192842) b!6504535))

(assert (= (and b!6504534 (not c!1192842)) b!6504541))

(assert (= (and b!6504541 c!1192841) b!6504537))

(assert (= (and b!6504541 (not c!1192841)) b!6504531))

(assert (= (or b!6504535 b!6504537) bm!563713))

(assert (= (or b!6504535 b!6504537) bm!563715))

(assert (= (or b!6504539 bm!563713) bm!563717))

(assert (= (or b!6504539 bm!563715) bm!563716))

(assert (= (or b!6504536 b!6504539) bm!563714))

(assert (= (or b!6504536 bm!563716) bm!563718))

(declare-fun m!7291756 () Bool)

(assert (=> bm!563718 m!7291756))

(declare-fun m!7291758 () Bool)

(assert (=> bm!563717 m!7291758))

(declare-fun m!7291760 () Bool)

(assert (=> b!6504538 m!7291760))

(declare-fun m!7291762 () Bool)

(assert (=> b!6504540 m!7291762))

(declare-fun m!7291764 () Bool)

(assert (=> bm!563714 m!7291764))

(assert (=> bm!563579 d!2040811))

(declare-fun d!2040819 () Bool)

(assert (=> d!2040819 (= (isEmpty!37533 (tail!12323 s!2326)) ((_ is Nil!65325) (tail!12323 s!2326)))))

(assert (=> b!6503954 d!2040819))

(assert (=> b!6503954 d!2040797))

(declare-fun bs!1652035 () Bool)

(declare-fun b!6504574 () Bool)

(assert (= bs!1652035 (and b!6504574 b!6503964)))

(declare-fun lambda!360622 () Int)

(assert (=> bs!1652035 (not (= lambda!360622 lambda!360588))))

(declare-fun bs!1652036 () Bool)

(assert (= bs!1652036 (and b!6504574 b!6503796)))

(assert (=> bs!1652036 (= (and (= (reg!16712 (regOne!33279 r!7292)) (reg!16712 r!7292)) (= (regOne!33279 r!7292) r!7292)) (= lambda!360622 lambda!360570))))

(declare-fun bs!1652037 () Bool)

(assert (= bs!1652037 (and b!6504574 d!2040519)))

(assert (=> bs!1652037 (not (= lambda!360622 lambda!360586))))

(assert (=> bs!1652037 (not (= lambda!360622 lambda!360585))))

(declare-fun bs!1652038 () Bool)

(assert (= bs!1652038 (and b!6504574 b!6503182)))

(assert (=> bs!1652038 (not (= lambda!360622 lambda!360519))))

(assert (=> bs!1652038 (not (= lambda!360622 lambda!360518))))

(declare-fun bs!1652039 () Bool)

(assert (= bs!1652039 (and b!6504574 d!2040517)))

(assert (=> bs!1652039 (not (= lambda!360622 lambda!360580))))

(declare-fun bs!1652040 () Bool)

(assert (= bs!1652040 (and b!6504574 b!6503793)))

(assert (=> bs!1652040 (not (= lambda!360622 lambda!360571))))

(declare-fun bs!1652043 () Bool)

(assert (= bs!1652043 (and b!6504574 b!6503967)))

(assert (=> bs!1652043 (= (and (= (reg!16712 (regOne!33279 r!7292)) (reg!16712 lt!2392375)) (= (regOne!33279 r!7292) lt!2392375)) (= lambda!360622 lambda!360587))))

(assert (=> b!6504574 true))

(assert (=> b!6504574 true))

(declare-fun bs!1652057 () Bool)

(declare-fun b!6504571 () Bool)

(assert (= bs!1652057 (and b!6504571 b!6503964)))

(declare-fun lambda!360624 () Int)

(assert (=> bs!1652057 (= (and (= (regOne!33278 (regOne!33279 r!7292)) (regOne!33278 lt!2392375)) (= (regTwo!33278 (regOne!33279 r!7292)) (regTwo!33278 lt!2392375))) (= lambda!360624 lambda!360588))))

(declare-fun bs!1652059 () Bool)

(assert (= bs!1652059 (and b!6504571 b!6503796)))

(assert (=> bs!1652059 (not (= lambda!360624 lambda!360570))))

(declare-fun bs!1652060 () Bool)

(assert (= bs!1652060 (and b!6504571 d!2040519)))

(assert (=> bs!1652060 (= (and (= (regOne!33278 (regOne!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360624 lambda!360586))))

(assert (=> bs!1652060 (not (= lambda!360624 lambda!360585))))

(declare-fun bs!1652061 () Bool)

(assert (= bs!1652061 (and b!6504571 b!6504574)))

(assert (=> bs!1652061 (not (= lambda!360624 lambda!360622))))

(declare-fun bs!1652062 () Bool)

(assert (= bs!1652062 (and b!6504571 b!6503182)))

(assert (=> bs!1652062 (= (and (= (regOne!33278 (regOne!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360624 lambda!360519))))

(assert (=> bs!1652062 (not (= lambda!360624 lambda!360518))))

(declare-fun bs!1652063 () Bool)

(assert (= bs!1652063 (and b!6504571 d!2040517)))

(assert (=> bs!1652063 (not (= lambda!360624 lambda!360580))))

(declare-fun bs!1652064 () Bool)

(assert (= bs!1652064 (and b!6504571 b!6503793)))

(assert (=> bs!1652064 (= (and (= (regOne!33278 (regOne!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360624 lambda!360571))))

(declare-fun bs!1652065 () Bool)

(assert (= bs!1652065 (and b!6504571 b!6503967)))

(assert (=> bs!1652065 (not (= lambda!360624 lambda!360587))))

(assert (=> b!6504571 true))

(assert (=> b!6504571 true))

(declare-fun b!6504566 () Bool)

(declare-fun c!1192856 () Bool)

(assert (=> b!6504566 (= c!1192856 ((_ is ElementMatch!16383) (regOne!33279 r!7292)))))

(declare-fun e!3941296 () Bool)

(declare-fun e!3941299 () Bool)

(assert (=> b!6504566 (= e!3941296 e!3941299)))

(declare-fun b!6504567 () Bool)

(declare-fun c!1192857 () Bool)

(assert (=> b!6504567 (= c!1192857 ((_ is Union!16383) (regOne!33279 r!7292)))))

(declare-fun e!3941300 () Bool)

(assert (=> b!6504567 (= e!3941299 e!3941300)))

(declare-fun b!6504568 () Bool)

(declare-fun e!3941298 () Bool)

(assert (=> b!6504568 (= e!3941298 (matchRSpec!3484 (regTwo!33279 (regOne!33279 r!7292)) s!2326))))

(declare-fun b!6504569 () Bool)

(assert (=> b!6504569 (= e!3941299 (= s!2326 (Cons!65325 (c!1192455 (regOne!33279 r!7292)) Nil!65325)))))

(declare-fun d!2040823 () Bool)

(declare-fun c!1192855 () Bool)

(assert (=> d!2040823 (= c!1192855 ((_ is EmptyExpr!16383) (regOne!33279 r!7292)))))

(declare-fun e!3941295 () Bool)

(assert (=> d!2040823 (= (matchRSpec!3484 (regOne!33279 r!7292) s!2326) e!3941295)))

(declare-fun c!1192854 () Bool)

(declare-fun bm!563723 () Bool)

(declare-fun call!563728 () Bool)

(assert (=> bm!563723 (= call!563728 (Exists!3453 (ite c!1192854 lambda!360622 lambda!360624)))))

(declare-fun b!6504570 () Bool)

(assert (=> b!6504570 (= e!3941300 e!3941298)))

(declare-fun res!2671214 () Bool)

(assert (=> b!6504570 (= res!2671214 (matchRSpec!3484 (regOne!33279 (regOne!33279 r!7292)) s!2326))))

(assert (=> b!6504570 (=> res!2671214 e!3941298)))

(declare-fun e!3941297 () Bool)

(assert (=> b!6504571 (= e!3941297 call!563728)))

(declare-fun b!6504572 () Bool)

(declare-fun res!2671215 () Bool)

(declare-fun e!3941294 () Bool)

(assert (=> b!6504572 (=> res!2671215 e!3941294)))

(declare-fun call!563729 () Bool)

(assert (=> b!6504572 (= res!2671215 call!563729)))

(assert (=> b!6504572 (= e!3941297 e!3941294)))

(declare-fun b!6504573 () Bool)

(assert (=> b!6504573 (= e!3941295 e!3941296)))

(declare-fun res!2671216 () Bool)

(assert (=> b!6504573 (= res!2671216 (not ((_ is EmptyLang!16383) (regOne!33279 r!7292))))))

(assert (=> b!6504573 (=> (not res!2671216) (not e!3941296))))

(assert (=> b!6504574 (= e!3941294 call!563728)))

(declare-fun bm!563724 () Bool)

(assert (=> bm!563724 (= call!563729 (isEmpty!37533 s!2326))))

(declare-fun b!6504575 () Bool)

(assert (=> b!6504575 (= e!3941300 e!3941297)))

(assert (=> b!6504575 (= c!1192854 ((_ is Star!16383) (regOne!33279 r!7292)))))

(declare-fun b!6504576 () Bool)

(assert (=> b!6504576 (= e!3941295 call!563729)))

(assert (= (and d!2040823 c!1192855) b!6504576))

(assert (= (and d!2040823 (not c!1192855)) b!6504573))

(assert (= (and b!6504573 res!2671216) b!6504566))

(assert (= (and b!6504566 c!1192856) b!6504569))

(assert (= (and b!6504566 (not c!1192856)) b!6504567))

(assert (= (and b!6504567 c!1192857) b!6504570))

(assert (= (and b!6504567 (not c!1192857)) b!6504575))

(assert (= (and b!6504570 (not res!2671214)) b!6504568))

(assert (= (and b!6504575 c!1192854) b!6504572))

(assert (= (and b!6504575 (not c!1192854)) b!6504571))

(assert (= (and b!6504572 (not res!2671215)) b!6504574))

(assert (= (or b!6504574 b!6504571) bm!563723))

(assert (= (or b!6504576 b!6504572) bm!563724))

(declare-fun m!7291798 () Bool)

(assert (=> b!6504568 m!7291798))

(declare-fun m!7291802 () Bool)

(assert (=> bm!563723 m!7291802))

(declare-fun m!7291804 () Bool)

(assert (=> b!6504570 m!7291804))

(assert (=> bm!563724 m!7290948))

(assert (=> b!6503792 d!2040823))

(declare-fun d!2040829 () Bool)

(declare-fun lambda!360627 () Int)

(declare-fun exists!2624 ((InoxSet Context!11534) Int) Bool)

(assert (=> d!2040829 (= (nullableZipper!2138 lt!2392382) (exists!2624 lt!2392382 lambda!360627))))

(declare-fun bs!1652067 () Bool)

(assert (= bs!1652067 d!2040829))

(declare-fun m!7291814 () Bool)

(assert (=> bs!1652067 m!7291814))

(assert (=> b!6503677 d!2040829))

(declare-fun b!6504604 () Bool)

(declare-fun e!3941317 () (InoxSet Context!11534))

(declare-fun call!563737 () (InoxSet Context!11534))

(assert (=> b!6504604 (= e!3941317 call!563737)))

(declare-fun b!6504605 () Bool)

(declare-fun e!3941315 () (InoxSet Context!11534))

(assert (=> b!6504605 (= e!3941315 e!3941317)))

(declare-fun c!1192869 () Bool)

(assert (=> b!6504605 (= c!1192869 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388))))))))

(declare-fun b!6504606 () Bool)

(assert (=> b!6504606 (= e!3941317 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504607 () Bool)

(assert (=> b!6504607 (= e!3941315 ((_ map or) call!563737 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388)))))) (h!71773 s!2326))))))

(declare-fun b!6504608 () Bool)

(declare-fun e!3941316 () Bool)

(assert (=> b!6504608 (= e!3941316 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388)))))))))

(declare-fun bm!563732 () Bool)

(assert (=> bm!563732 (= call!563737 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388)))))) (h!71773 s!2326)))))

(declare-fun d!2040837 () Bool)

(declare-fun c!1192870 () Bool)

(assert (=> d!2040837 (= c!1192870 e!3941316)))

(declare-fun res!2671226 () Bool)

(assert (=> d!2040837 (=> (not res!2671226) (not e!3941316))))

(assert (=> d!2040837 (= res!2671226 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388))))))))

(assert (=> d!2040837 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (h!71773 s!2326)) e!3941315)))

(assert (= (and d!2040837 res!2671226) b!6504608))

(assert (= (and d!2040837 c!1192870) b!6504607))

(assert (= (and d!2040837 (not c!1192870)) b!6504605))

(assert (= (and b!6504605 c!1192869) b!6504604))

(assert (= (and b!6504605 (not c!1192869)) b!6504606))

(assert (= (or b!6504607 b!6504604) bm!563732))

(declare-fun m!7291824 () Bool)

(assert (=> b!6504607 m!7291824))

(declare-fun m!7291826 () Bool)

(assert (=> b!6504608 m!7291826))

(declare-fun m!7291828 () Bool)

(assert (=> bm!563732 m!7291828))

(assert (=> b!6503687 d!2040837))

(declare-fun b!6504619 () Bool)

(declare-fun e!3941325 () (InoxSet Context!11534))

(declare-fun call!563742 () (InoxSet Context!11534))

(assert (=> b!6504619 (= e!3941325 call!563742)))

(declare-fun b!6504620 () Bool)

(declare-fun e!3941323 () (InoxSet Context!11534))

(assert (=> b!6504620 (= e!3941323 e!3941325)))

(declare-fun c!1192876 () Bool)

(assert (=> b!6504620 (= c!1192876 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373))))))))

(declare-fun b!6504621 () Bool)

(assert (=> b!6504621 (= e!3941325 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504622 () Bool)

(assert (=> b!6504622 (= e!3941323 ((_ map or) call!563742 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373)))))) (h!71773 s!2326))))))

(declare-fun b!6504623 () Bool)

(declare-fun e!3941324 () Bool)

(assert (=> b!6504623 (= e!3941324 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373)))))))))

(declare-fun bm!563737 () Bool)

(assert (=> bm!563737 (= call!563742 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373)))))) (h!71773 s!2326)))))

(declare-fun d!2040841 () Bool)

(declare-fun c!1192877 () Bool)

(assert (=> d!2040841 (= c!1192877 e!3941324)))

(declare-fun res!2671227 () Bool)

(assert (=> d!2040841 (=> (not res!2671227) (not e!3941324))))

(assert (=> d!2040841 (= res!2671227 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373))))))))

(assert (=> d!2040841 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (h!71773 s!2326)) e!3941323)))

(assert (= (and d!2040841 res!2671227) b!6504623))

(assert (= (and d!2040841 c!1192877) b!6504622))

(assert (= (and d!2040841 (not c!1192877)) b!6504620))

(assert (= (and b!6504620 c!1192876) b!6504619))

(assert (= (and b!6504620 (not c!1192876)) b!6504621))

(assert (= (or b!6504622 b!6504619) bm!563737))

(declare-fun m!7291834 () Bool)

(assert (=> b!6504622 m!7291834))

(declare-fun m!7291836 () Bool)

(assert (=> b!6504623 m!7291836))

(declare-fun m!7291840 () Bool)

(assert (=> bm!563737 m!7291840))

(assert (=> b!6503682 d!2040841))

(declare-fun b!6504624 () Bool)

(declare-fun e!3941328 () (InoxSet Context!11534))

(declare-fun call!563743 () (InoxSet Context!11534))

(assert (=> b!6504624 (= e!3941328 call!563743)))

(declare-fun b!6504625 () Bool)

(declare-fun e!3941326 () (InoxSet Context!11534))

(assert (=> b!6504625 (= e!3941326 e!3941328)))

(declare-fun c!1192878 () Bool)

(assert (=> b!6504625 (= c!1192878 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390))))))))

(declare-fun b!6504626 () Bool)

(assert (=> b!6504626 (= e!3941328 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504627 () Bool)

(assert (=> b!6504627 (= e!3941326 ((_ map or) call!563743 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390)))))) (h!71773 s!2326))))))

(declare-fun b!6504628 () Bool)

(declare-fun e!3941327 () Bool)

(assert (=> b!6504628 (= e!3941327 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390)))))))))

(declare-fun bm!563738 () Bool)

(assert (=> bm!563738 (= call!563743 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390)))))) (h!71773 s!2326)))))

(declare-fun d!2040843 () Bool)

(declare-fun c!1192879 () Bool)

(assert (=> d!2040843 (= c!1192879 e!3941327)))

(declare-fun res!2671228 () Bool)

(assert (=> d!2040843 (=> (not res!2671228) (not e!3941327))))

(assert (=> d!2040843 (= res!2671228 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390))))))))

(assert (=> d!2040843 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (h!71773 s!2326)) e!3941326)))

(assert (= (and d!2040843 res!2671228) b!6504628))

(assert (= (and d!2040843 c!1192879) b!6504627))

(assert (= (and d!2040843 (not c!1192879)) b!6504625))

(assert (= (and b!6504625 c!1192878) b!6504624))

(assert (= (and b!6504625 (not c!1192878)) b!6504626))

(assert (= (or b!6504627 b!6504624) bm!563738))

(declare-fun m!7291844 () Bool)

(assert (=> b!6504627 m!7291844))

(declare-fun m!7291846 () Bool)

(assert (=> b!6504628 m!7291846))

(declare-fun m!7291848 () Bool)

(assert (=> bm!563738 m!7291848))

(assert (=> b!6503669 d!2040843))

(assert (=> b!6503958 d!2040819))

(assert (=> b!6503958 d!2040797))

(declare-fun b!6504643 () Bool)

(declare-fun e!3941338 () Bool)

(assert (=> b!6504643 (= e!3941338 (not (= (head!13238 s!2326) (c!1192455 (regTwo!33278 r!7292)))))))

(declare-fun b!6504644 () Bool)

(declare-fun e!3941341 () Bool)

(declare-fun lt!2392560 () Bool)

(assert (=> b!6504644 (= e!3941341 (not lt!2392560))))

(declare-fun b!6504645 () Bool)

(declare-fun e!3941342 () Bool)

(declare-fun call!563745 () Bool)

(assert (=> b!6504645 (= e!3941342 (= lt!2392560 call!563745))))

(declare-fun b!6504646 () Bool)

(declare-fun e!3941340 () Bool)

(assert (=> b!6504646 (= e!3941340 (nullable!6376 (regTwo!33278 r!7292)))))

(declare-fun b!6504647 () Bool)

(assert (=> b!6504647 (= e!3941340 (matchR!8566 (derivativeStep!5077 (regTwo!33278 r!7292) (head!13238 s!2326)) (tail!12323 s!2326)))))

(declare-fun b!6504649 () Bool)

(declare-fun res!2671240 () Bool)

(declare-fun e!3941337 () Bool)

(assert (=> b!6504649 (=> res!2671240 e!3941337)))

(declare-fun e!3941339 () Bool)

(assert (=> b!6504649 (= res!2671240 e!3941339)))

(declare-fun res!2671241 () Bool)

(assert (=> b!6504649 (=> (not res!2671241) (not e!3941339))))

(assert (=> b!6504649 (= res!2671241 lt!2392560)))

(declare-fun b!6504650 () Bool)

(declare-fun e!3941336 () Bool)

(assert (=> b!6504650 (= e!3941336 e!3941338)))

(declare-fun res!2671239 () Bool)

(assert (=> b!6504650 (=> res!2671239 e!3941338)))

(assert (=> b!6504650 (= res!2671239 call!563745)))

(declare-fun b!6504651 () Bool)

(declare-fun res!2671244 () Bool)

(assert (=> b!6504651 (=> (not res!2671244) (not e!3941339))))

(assert (=> b!6504651 (= res!2671244 (not call!563745))))

(declare-fun bm!563740 () Bool)

(assert (=> bm!563740 (= call!563745 (isEmpty!37533 s!2326))))

(declare-fun b!6504652 () Bool)

(declare-fun res!2671243 () Bool)

(assert (=> b!6504652 (=> res!2671243 e!3941338)))

(assert (=> b!6504652 (= res!2671243 (not (isEmpty!37533 (tail!12323 s!2326))))))

(declare-fun b!6504653 () Bool)

(assert (=> b!6504653 (= e!3941337 e!3941336)))

(declare-fun res!2671238 () Bool)

(assert (=> b!6504653 (=> (not res!2671238) (not e!3941336))))

(assert (=> b!6504653 (= res!2671238 (not lt!2392560))))

(declare-fun b!6504654 () Bool)

(declare-fun res!2671237 () Bool)

(assert (=> b!6504654 (=> res!2671237 e!3941337)))

(assert (=> b!6504654 (= res!2671237 (not ((_ is ElementMatch!16383) (regTwo!33278 r!7292))))))

(assert (=> b!6504654 (= e!3941341 e!3941337)))

(declare-fun b!6504655 () Bool)

(assert (=> b!6504655 (= e!3941342 e!3941341)))

(declare-fun c!1192885 () Bool)

(assert (=> b!6504655 (= c!1192885 ((_ is EmptyLang!16383) (regTwo!33278 r!7292)))))

(declare-fun b!6504656 () Bool)

(declare-fun res!2671242 () Bool)

(assert (=> b!6504656 (=> (not res!2671242) (not e!3941339))))

(assert (=> b!6504656 (= res!2671242 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun b!6504648 () Bool)

(assert (=> b!6504648 (= e!3941339 (= (head!13238 s!2326) (c!1192455 (regTwo!33278 r!7292))))))

(declare-fun d!2040849 () Bool)

(assert (=> d!2040849 e!3941342))

(declare-fun c!1192884 () Bool)

(assert (=> d!2040849 (= c!1192884 ((_ is EmptyExpr!16383) (regTwo!33278 r!7292)))))

(assert (=> d!2040849 (= lt!2392560 e!3941340)))

(declare-fun c!1192883 () Bool)

(assert (=> d!2040849 (= c!1192883 (isEmpty!37533 s!2326))))

(assert (=> d!2040849 (validRegex!8119 (regTwo!33278 r!7292))))

(assert (=> d!2040849 (= (matchR!8566 (regTwo!33278 r!7292) s!2326) lt!2392560)))

(assert (= (and d!2040849 c!1192883) b!6504646))

(assert (= (and d!2040849 (not c!1192883)) b!6504647))

(assert (= (and d!2040849 c!1192884) b!6504645))

(assert (= (and d!2040849 (not c!1192884)) b!6504655))

(assert (= (and b!6504655 c!1192885) b!6504644))

(assert (= (and b!6504655 (not c!1192885)) b!6504654))

(assert (= (and b!6504654 (not res!2671237)) b!6504649))

(assert (= (and b!6504649 res!2671241) b!6504651))

(assert (= (and b!6504651 res!2671244) b!6504656))

(assert (= (and b!6504656 res!2671242) b!6504648))

(assert (= (and b!6504649 (not res!2671240)) b!6504653))

(assert (= (and b!6504653 res!2671238) b!6504650))

(assert (= (and b!6504650 (not res!2671239)) b!6504652))

(assert (= (and b!6504652 (not res!2671243)) b!6504643))

(assert (= (or b!6504645 b!6504650 b!6504651) bm!563740))

(assert (=> d!2040849 m!7290948))

(declare-fun m!7291862 () Bool)

(assert (=> d!2040849 m!7291862))

(assert (=> b!6504647 m!7290952))

(assert (=> b!6504647 m!7290952))

(declare-fun m!7291864 () Bool)

(assert (=> b!6504647 m!7291864))

(assert (=> b!6504647 m!7290956))

(assert (=> b!6504647 m!7291864))

(assert (=> b!6504647 m!7290956))

(declare-fun m!7291866 () Bool)

(assert (=> b!6504647 m!7291866))

(declare-fun m!7291868 () Bool)

(assert (=> b!6504646 m!7291868))

(assert (=> b!6504656 m!7290956))

(assert (=> b!6504656 m!7290956))

(assert (=> b!6504656 m!7291036))

(assert (=> b!6504652 m!7290956))

(assert (=> b!6504652 m!7290956))

(assert (=> b!6504652 m!7291036))

(assert (=> b!6504643 m!7290952))

(assert (=> b!6504648 m!7290952))

(assert (=> bm!563740 m!7290948))

(assert (=> b!6503921 d!2040849))

(declare-fun bs!1652070 () Bool)

(declare-fun d!2040853 () Bool)

(assert (= bs!1652070 (and d!2040853 d!2040541)))

(declare-fun lambda!360628 () Int)

(assert (=> bs!1652070 (= lambda!360628 lambda!360589)))

(declare-fun bs!1652071 () Bool)

(assert (= bs!1652071 (and d!2040853 d!2040443)))

(assert (=> bs!1652071 (= lambda!360628 lambda!360562)))

(declare-fun bs!1652072 () Bool)

(assert (= bs!1652072 (and d!2040853 d!2040441)))

(assert (=> bs!1652072 (= lambda!360628 lambda!360559)))

(declare-fun bs!1652073 () Bool)

(assert (= bs!1652073 (and d!2040853 d!2040509)))

(assert (=> bs!1652073 (= lambda!360628 lambda!360577)))

(declare-fun bs!1652074 () Bool)

(assert (= bs!1652074 (and d!2040853 d!2040503)))

(assert (=> bs!1652074 (= lambda!360628 lambda!360574)))

(declare-fun bs!1652075 () Bool)

(assert (= bs!1652075 (and d!2040853 b!6503167)))

(assert (=> bs!1652075 (= lambda!360628 lambda!360522)))

(declare-fun bs!1652076 () Bool)

(assert (= bs!1652076 (and d!2040853 d!2040549)))

(assert (=> bs!1652076 (= lambda!360628 lambda!360590)))

(assert (=> d!2040853 (= (inv!84204 setElem!44345) (forall!15564 (exprs!6267 setElem!44345) lambda!360628))))

(declare-fun bs!1652077 () Bool)

(assert (= bs!1652077 d!2040853))

(declare-fun m!7291870 () Bool)

(assert (=> bs!1652077 m!7291870))

(assert (=> setNonEmpty!44345 d!2040853))

(declare-fun b!6504668 () Bool)

(declare-fun e!3941350 () Bool)

(declare-fun e!3941356 () Bool)

(assert (=> b!6504668 (= e!3941350 e!3941356)))

(declare-fun res!2671248 () Bool)

(assert (=> b!6504668 (=> (not res!2671248) (not e!3941356))))

(declare-fun call!563749 () Bool)

(assert (=> b!6504668 (= res!2671248 call!563749)))

(declare-fun bm!563743 () Bool)

(declare-fun c!1192891 () Bool)

(declare-fun c!1192890 () Bool)

(declare-fun call!563748 () Bool)

(assert (=> bm!563743 (= call!563748 (validRegex!8119 (ite c!1192891 (reg!16712 lt!2392506) (ite c!1192890 (regOne!33279 lt!2392506) (regOne!33278 lt!2392506)))))))

(declare-fun b!6504669 () Bool)

(declare-fun e!3941355 () Bool)

(declare-fun call!563750 () Bool)

(assert (=> b!6504669 (= e!3941355 call!563750)))

(declare-fun b!6504670 () Bool)

(declare-fun res!2671249 () Bool)

(assert (=> b!6504670 (=> res!2671249 e!3941350)))

(assert (=> b!6504670 (= res!2671249 (not ((_ is Concat!25228) lt!2392506)))))

(declare-fun e!3941351 () Bool)

(assert (=> b!6504670 (= e!3941351 e!3941350)))

(declare-fun d!2040857 () Bool)

(declare-fun res!2671252 () Bool)

(declare-fun e!3941353 () Bool)

(assert (=> d!2040857 (=> res!2671252 e!3941353)))

(assert (=> d!2040857 (= res!2671252 ((_ is ElementMatch!16383) lt!2392506))))

(assert (=> d!2040857 (= (validRegex!8119 lt!2392506) e!3941353)))

(declare-fun bm!563744 () Bool)

(assert (=> bm!563744 (= call!563749 call!563748)))

(declare-fun b!6504671 () Bool)

(declare-fun e!3941352 () Bool)

(declare-fun e!3941354 () Bool)

(assert (=> b!6504671 (= e!3941352 e!3941354)))

(declare-fun res!2671251 () Bool)

(assert (=> b!6504671 (= res!2671251 (not (nullable!6376 (reg!16712 lt!2392506))))))

(assert (=> b!6504671 (=> (not res!2671251) (not e!3941354))))

(declare-fun b!6504672 () Bool)

(assert (=> b!6504672 (= e!3941352 e!3941351)))

(assert (=> b!6504672 (= c!1192890 ((_ is Union!16383) lt!2392506))))

(declare-fun b!6504673 () Bool)

(assert (=> b!6504673 (= e!3941354 call!563748)))

(declare-fun b!6504674 () Bool)

(assert (=> b!6504674 (= e!3941353 e!3941352)))

(assert (=> b!6504674 (= c!1192891 ((_ is Star!16383) lt!2392506))))

(declare-fun bm!563745 () Bool)

(assert (=> bm!563745 (= call!563750 (validRegex!8119 (ite c!1192890 (regTwo!33279 lt!2392506) (regTwo!33278 lt!2392506))))))

(declare-fun b!6504675 () Bool)

(assert (=> b!6504675 (= e!3941356 call!563750)))

(declare-fun b!6504676 () Bool)

(declare-fun res!2671250 () Bool)

(assert (=> b!6504676 (=> (not res!2671250) (not e!3941355))))

(assert (=> b!6504676 (= res!2671250 call!563749)))

(assert (=> b!6504676 (= e!3941351 e!3941355)))

(assert (= (and d!2040857 (not res!2671252)) b!6504674))

(assert (= (and b!6504674 c!1192891) b!6504671))

(assert (= (and b!6504674 (not c!1192891)) b!6504672))

(assert (= (and b!6504671 res!2671251) b!6504673))

(assert (= (and b!6504672 c!1192890) b!6504676))

(assert (= (and b!6504672 (not c!1192890)) b!6504670))

(assert (= (and b!6504676 res!2671250) b!6504669))

(assert (= (and b!6504670 (not res!2671249)) b!6504668))

(assert (= (and b!6504668 res!2671248) b!6504675))

(assert (= (or b!6504669 b!6504675) bm!563745))

(assert (= (or b!6504676 b!6504668) bm!563744))

(assert (= (or b!6504673 bm!563744) bm!563743))

(declare-fun m!7291872 () Bool)

(assert (=> bm!563743 m!7291872))

(declare-fun m!7291874 () Bool)

(assert (=> b!6504671 m!7291874))

(declare-fun m!7291876 () Bool)

(assert (=> bm!563745 m!7291876))

(assert (=> d!2040525 d!2040857))

(assert (=> d!2040525 d!2040441))

(assert (=> d!2040525 d!2040443))

(declare-fun bs!1652087 () Bool)

(declare-fun d!2040859 () Bool)

(assert (= bs!1652087 (and d!2040859 d!2040541)))

(declare-fun lambda!360630 () Int)

(assert (=> bs!1652087 (= lambda!360630 lambda!360589)))

(declare-fun bs!1652089 () Bool)

(assert (= bs!1652089 (and d!2040859 d!2040443)))

(assert (=> bs!1652089 (= lambda!360630 lambda!360562)))

(declare-fun bs!1652090 () Bool)

(assert (= bs!1652090 (and d!2040859 d!2040441)))

(assert (=> bs!1652090 (= lambda!360630 lambda!360559)))

(declare-fun bs!1652092 () Bool)

(assert (= bs!1652092 (and d!2040859 d!2040509)))

(assert (=> bs!1652092 (= lambda!360630 lambda!360577)))

(declare-fun bs!1652093 () Bool)

(assert (= bs!1652093 (and d!2040859 d!2040503)))

(assert (=> bs!1652093 (= lambda!360630 lambda!360574)))

(declare-fun bs!1652095 () Bool)

(assert (= bs!1652095 (and d!2040859 d!2040853)))

(assert (=> bs!1652095 (= lambda!360630 lambda!360628)))

(declare-fun bs!1652096 () Bool)

(assert (= bs!1652096 (and d!2040859 b!6503167)))

(assert (=> bs!1652096 (= lambda!360630 lambda!360522)))

(declare-fun bs!1652098 () Bool)

(assert (= bs!1652098 (and d!2040859 d!2040549)))

(assert (=> bs!1652098 (= lambda!360630 lambda!360590)))

(declare-fun e!3941360 () Bool)

(assert (=> d!2040859 e!3941360))

(declare-fun res!2671254 () Bool)

(assert (=> d!2040859 (=> (not res!2671254) (not e!3941360))))

(declare-fun lt!2392561 () Regex!16383)

(assert (=> d!2040859 (= res!2671254 (validRegex!8119 lt!2392561))))

(declare-fun e!3941359 () Regex!16383)

(assert (=> d!2040859 (= lt!2392561 e!3941359)))

(declare-fun c!1192892 () Bool)

(declare-fun e!3941362 () Bool)

(assert (=> d!2040859 (= c!1192892 e!3941362)))

(declare-fun res!2671253 () Bool)

(assert (=> d!2040859 (=> (not res!2671253) (not e!3941362))))

(assert (=> d!2040859 (= res!2671253 ((_ is Cons!65324) (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> d!2040859 (forall!15564 (t!379082 (exprs!6267 (h!71774 zl!343))) lambda!360630)))

(assert (=> d!2040859 (= (generalisedConcat!1980 (t!379082 (exprs!6267 (h!71774 zl!343)))) lt!2392561)))

(declare-fun b!6504677 () Bool)

(declare-fun e!3941358 () Bool)

(declare-fun e!3941357 () Bool)

(assert (=> b!6504677 (= e!3941358 e!3941357)))

(declare-fun c!1192893 () Bool)

(assert (=> b!6504677 (= c!1192893 (isEmpty!37530 (tail!12322 (t!379082 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6504678 () Bool)

(assert (=> b!6504678 (= e!3941360 e!3941358)))

(declare-fun c!1192895 () Bool)

(assert (=> b!6504678 (= c!1192895 (isEmpty!37530 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6504679 () Bool)

(declare-fun e!3941361 () Regex!16383)

(assert (=> b!6504679 (= e!3941361 EmptyExpr!16383)))

(declare-fun b!6504680 () Bool)

(assert (=> b!6504680 (= e!3941361 (Concat!25228 (h!71772 (t!379082 (exprs!6267 (h!71774 zl!343)))) (generalisedConcat!1980 (t!379082 (t!379082 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6504681 () Bool)

(assert (=> b!6504681 (= e!3941357 (isConcat!1295 lt!2392561))))

(declare-fun b!6504682 () Bool)

(assert (=> b!6504682 (= e!3941357 (= lt!2392561 (head!13237 (t!379082 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6504683 () Bool)

(assert (=> b!6504683 (= e!3941358 (isEmptyExpr!1772 lt!2392561))))

(declare-fun b!6504684 () Bool)

(assert (=> b!6504684 (= e!3941359 e!3941361)))

(declare-fun c!1192894 () Bool)

(assert (=> b!6504684 (= c!1192894 ((_ is Cons!65324) (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6504685 () Bool)

(assert (=> b!6504685 (= e!3941362 (isEmpty!37530 (t!379082 (t!379082 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6504686 () Bool)

(assert (=> b!6504686 (= e!3941359 (h!71772 (t!379082 (exprs!6267 (h!71774 zl!343)))))))

(assert (= (and d!2040859 res!2671253) b!6504685))

(assert (= (and d!2040859 c!1192892) b!6504686))

(assert (= (and d!2040859 (not c!1192892)) b!6504684))

(assert (= (and b!6504684 c!1192894) b!6504680))

(assert (= (and b!6504684 (not c!1192894)) b!6504679))

(assert (= (and d!2040859 res!2671254) b!6504678))

(assert (= (and b!6504678 c!1192895) b!6504683))

(assert (= (and b!6504678 (not c!1192895)) b!6504677))

(assert (= (and b!6504677 c!1192893) b!6504682))

(assert (= (and b!6504677 (not c!1192893)) b!6504681))

(declare-fun m!7291878 () Bool)

(assert (=> b!6504682 m!7291878))

(declare-fun m!7291880 () Bool)

(assert (=> b!6504680 m!7291880))

(declare-fun m!7291882 () Bool)

(assert (=> d!2040859 m!7291882))

(declare-fun m!7291884 () Bool)

(assert (=> d!2040859 m!7291884))

(declare-fun m!7291886 () Bool)

(assert (=> b!6504677 m!7291886))

(assert (=> b!6504677 m!7291886))

(declare-fun m!7291888 () Bool)

(assert (=> b!6504677 m!7291888))

(assert (=> b!6504678 m!7290512))

(declare-fun m!7291890 () Bool)

(assert (=> b!6504681 m!7291890))

(declare-fun m!7291892 () Bool)

(assert (=> b!6504685 m!7291892))

(declare-fun m!7291894 () Bool)

(assert (=> b!6504683 m!7291894))

(assert (=> b!6503894 d!2040859))

(declare-fun d!2040861 () Bool)

(declare-fun res!2671259 () Bool)

(declare-fun e!3941367 () Bool)

(assert (=> d!2040861 (=> res!2671259 e!3941367)))

(assert (=> d!2040861 (= res!2671259 ((_ is Nil!65324) (exprs!6267 (h!71774 zl!343))))))

(assert (=> d!2040861 (= (forall!15564 (exprs!6267 (h!71774 zl!343)) lambda!360590) e!3941367)))

(declare-fun b!6504691 () Bool)

(declare-fun e!3941368 () Bool)

(assert (=> b!6504691 (= e!3941367 e!3941368)))

(declare-fun res!2671260 () Bool)

(assert (=> b!6504691 (=> (not res!2671260) (not e!3941368))))

(declare-fun dynLambda!25954 (Int Regex!16383) Bool)

(assert (=> b!6504691 (= res!2671260 (dynLambda!25954 lambda!360590 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6504692 () Bool)

(assert (=> b!6504692 (= e!3941368 (forall!15564 (t!379082 (exprs!6267 (h!71774 zl!343))) lambda!360590))))

(assert (= (and d!2040861 (not res!2671259)) b!6504691))

(assert (= (and b!6504691 res!2671260) b!6504692))

(declare-fun b_lambda!246237 () Bool)

(assert (=> (not b_lambda!246237) (not b!6504691)))

(declare-fun m!7291896 () Bool)

(assert (=> b!6504691 m!7291896))

(declare-fun m!7291898 () Bool)

(assert (=> b!6504692 m!7291898))

(assert (=> d!2040549 d!2040861))

(declare-fun bs!1652115 () Bool)

(declare-fun b!6504701 () Bool)

(assert (= bs!1652115 (and b!6504701 b!6503964)))

(declare-fun lambda!360632 () Int)

(assert (=> bs!1652115 (not (= lambda!360632 lambda!360588))))

(declare-fun bs!1652116 () Bool)

(assert (= bs!1652116 (and b!6504701 b!6503796)))

(assert (=> bs!1652116 (= (and (= (reg!16712 (regTwo!33279 lt!2392375)) (reg!16712 r!7292)) (= (regTwo!33279 lt!2392375) r!7292)) (= lambda!360632 lambda!360570))))

(declare-fun bs!1652118 () Bool)

(assert (= bs!1652118 (and b!6504701 d!2040519)))

(assert (=> bs!1652118 (not (= lambda!360632 lambda!360586))))

(assert (=> bs!1652118 (not (= lambda!360632 lambda!360585))))

(declare-fun bs!1652122 () Bool)

(assert (= bs!1652122 (and b!6504701 b!6504574)))

(assert (=> bs!1652122 (= (and (= (reg!16712 (regTwo!33279 lt!2392375)) (reg!16712 (regOne!33279 r!7292))) (= (regTwo!33279 lt!2392375) (regOne!33279 r!7292))) (= lambda!360632 lambda!360622))))

(declare-fun bs!1652123 () Bool)

(assert (= bs!1652123 (and b!6504701 b!6503182)))

(assert (=> bs!1652123 (not (= lambda!360632 lambda!360519))))

(assert (=> bs!1652123 (not (= lambda!360632 lambda!360518))))

(declare-fun bs!1652125 () Bool)

(assert (= bs!1652125 (and b!6504701 d!2040517)))

(assert (=> bs!1652125 (not (= lambda!360632 lambda!360580))))

(declare-fun bs!1652126 () Bool)

(assert (= bs!1652126 (and b!6504701 b!6503793)))

(assert (=> bs!1652126 (not (= lambda!360632 lambda!360571))))

(declare-fun bs!1652127 () Bool)

(assert (= bs!1652127 (and b!6504701 b!6504571)))

(assert (=> bs!1652127 (not (= lambda!360632 lambda!360624))))

(declare-fun bs!1652128 () Bool)

(assert (= bs!1652128 (and b!6504701 b!6503967)))

(assert (=> bs!1652128 (= (and (= (reg!16712 (regTwo!33279 lt!2392375)) (reg!16712 lt!2392375)) (= (regTwo!33279 lt!2392375) lt!2392375)) (= lambda!360632 lambda!360587))))

(assert (=> b!6504701 true))

(assert (=> b!6504701 true))

(declare-fun bs!1652135 () Bool)

(declare-fun b!6504698 () Bool)

(assert (= bs!1652135 (and b!6504698 b!6503964)))

(declare-fun lambda!360635 () Int)

(assert (=> bs!1652135 (= (and (= (regOne!33278 (regTwo!33279 lt!2392375)) (regOne!33278 lt!2392375)) (= (regTwo!33278 (regTwo!33279 lt!2392375)) (regTwo!33278 lt!2392375))) (= lambda!360635 lambda!360588))))

(declare-fun bs!1652136 () Bool)

(assert (= bs!1652136 (and b!6504698 b!6503796)))

(assert (=> bs!1652136 (not (= lambda!360635 lambda!360570))))

(declare-fun bs!1652137 () Bool)

(assert (= bs!1652137 (and b!6504698 d!2040519)))

(assert (=> bs!1652137 (= (and (= (regOne!33278 (regTwo!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360635 lambda!360586))))

(assert (=> bs!1652137 (not (= lambda!360635 lambda!360585))))

(declare-fun bs!1652138 () Bool)

(assert (= bs!1652138 (and b!6504698 b!6504574)))

(assert (=> bs!1652138 (not (= lambda!360635 lambda!360622))))

(declare-fun bs!1652139 () Bool)

(assert (= bs!1652139 (and b!6504698 b!6503182)))

(assert (=> bs!1652139 (= (and (= (regOne!33278 (regTwo!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360635 lambda!360519))))

(assert (=> bs!1652139 (not (= lambda!360635 lambda!360518))))

(declare-fun bs!1652140 () Bool)

(assert (= bs!1652140 (and b!6504698 d!2040517)))

(assert (=> bs!1652140 (not (= lambda!360635 lambda!360580))))

(declare-fun bs!1652141 () Bool)

(assert (= bs!1652141 (and b!6504698 b!6503793)))

(assert (=> bs!1652141 (= (and (= (regOne!33278 (regTwo!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360635 lambda!360571))))

(declare-fun bs!1652142 () Bool)

(assert (= bs!1652142 (and b!6504698 b!6504701)))

(assert (=> bs!1652142 (not (= lambda!360635 lambda!360632))))

(declare-fun bs!1652143 () Bool)

(assert (= bs!1652143 (and b!6504698 b!6504571)))

(assert (=> bs!1652143 (= (and (= (regOne!33278 (regTwo!33279 lt!2392375)) (regOne!33278 (regOne!33279 r!7292))) (= (regTwo!33278 (regTwo!33279 lt!2392375)) (regTwo!33278 (regOne!33279 r!7292)))) (= lambda!360635 lambda!360624))))

(declare-fun bs!1652144 () Bool)

(assert (= bs!1652144 (and b!6504698 b!6503967)))

(assert (=> bs!1652144 (not (= lambda!360635 lambda!360587))))

(assert (=> b!6504698 true))

(assert (=> b!6504698 true))

(declare-fun b!6504693 () Bool)

(declare-fun c!1192898 () Bool)

(assert (=> b!6504693 (= c!1192898 ((_ is ElementMatch!16383) (regTwo!33279 lt!2392375)))))

(declare-fun e!3941371 () Bool)

(declare-fun e!3941374 () Bool)

(assert (=> b!6504693 (= e!3941371 e!3941374)))

(declare-fun b!6504694 () Bool)

(declare-fun c!1192899 () Bool)

(assert (=> b!6504694 (= c!1192899 ((_ is Union!16383) (regTwo!33279 lt!2392375)))))

(declare-fun e!3941375 () Bool)

(assert (=> b!6504694 (= e!3941374 e!3941375)))

(declare-fun b!6504695 () Bool)

(declare-fun e!3941373 () Bool)

(assert (=> b!6504695 (= e!3941373 (matchRSpec!3484 (regTwo!33279 (regTwo!33279 lt!2392375)) s!2326))))

(declare-fun b!6504696 () Bool)

(assert (=> b!6504696 (= e!3941374 (= s!2326 (Cons!65325 (c!1192455 (regTwo!33279 lt!2392375)) Nil!65325)))))

(declare-fun d!2040863 () Bool)

(declare-fun c!1192897 () Bool)

(assert (=> d!2040863 (= c!1192897 ((_ is EmptyExpr!16383) (regTwo!33279 lt!2392375)))))

(declare-fun e!3941370 () Bool)

(assert (=> d!2040863 (= (matchRSpec!3484 (regTwo!33279 lt!2392375) s!2326) e!3941370)))

(declare-fun call!563751 () Bool)

(declare-fun c!1192896 () Bool)

(declare-fun bm!563746 () Bool)

(assert (=> bm!563746 (= call!563751 (Exists!3453 (ite c!1192896 lambda!360632 lambda!360635)))))

(declare-fun b!6504697 () Bool)

(assert (=> b!6504697 (= e!3941375 e!3941373)))

(declare-fun res!2671261 () Bool)

(assert (=> b!6504697 (= res!2671261 (matchRSpec!3484 (regOne!33279 (regTwo!33279 lt!2392375)) s!2326))))

(assert (=> b!6504697 (=> res!2671261 e!3941373)))

(declare-fun e!3941372 () Bool)

(assert (=> b!6504698 (= e!3941372 call!563751)))

(declare-fun b!6504699 () Bool)

(declare-fun res!2671262 () Bool)

(declare-fun e!3941369 () Bool)

(assert (=> b!6504699 (=> res!2671262 e!3941369)))

(declare-fun call!563752 () Bool)

(assert (=> b!6504699 (= res!2671262 call!563752)))

(assert (=> b!6504699 (= e!3941372 e!3941369)))

(declare-fun b!6504700 () Bool)

(assert (=> b!6504700 (= e!3941370 e!3941371)))

(declare-fun res!2671263 () Bool)

(assert (=> b!6504700 (= res!2671263 (not ((_ is EmptyLang!16383) (regTwo!33279 lt!2392375))))))

(assert (=> b!6504700 (=> (not res!2671263) (not e!3941371))))

(assert (=> b!6504701 (= e!3941369 call!563751)))

(declare-fun bm!563747 () Bool)

(assert (=> bm!563747 (= call!563752 (isEmpty!37533 s!2326))))

(declare-fun b!6504702 () Bool)

(assert (=> b!6504702 (= e!3941375 e!3941372)))

(assert (=> b!6504702 (= c!1192896 ((_ is Star!16383) (regTwo!33279 lt!2392375)))))

(declare-fun b!6504703 () Bool)

(assert (=> b!6504703 (= e!3941370 call!563752)))

(assert (= (and d!2040863 c!1192897) b!6504703))

(assert (= (and d!2040863 (not c!1192897)) b!6504700))

(assert (= (and b!6504700 res!2671263) b!6504693))

(assert (= (and b!6504693 c!1192898) b!6504696))

(assert (= (and b!6504693 (not c!1192898)) b!6504694))

(assert (= (and b!6504694 c!1192899) b!6504697))

(assert (= (and b!6504694 (not c!1192899)) b!6504702))

(assert (= (and b!6504697 (not res!2671261)) b!6504695))

(assert (= (and b!6504702 c!1192896) b!6504699))

(assert (= (and b!6504702 (not c!1192896)) b!6504698))

(assert (= (and b!6504699 (not res!2671262)) b!6504701))

(assert (= (or b!6504701 b!6504698) bm!563746))

(assert (= (or b!6504703 b!6504699) bm!563747))

(declare-fun m!7291922 () Bool)

(assert (=> b!6504695 m!7291922))

(declare-fun m!7291924 () Bool)

(assert (=> bm!563746 m!7291924))

(declare-fun m!7291926 () Bool)

(assert (=> b!6504697 m!7291926))

(assert (=> bm!563747 m!7290948))

(assert (=> b!6503961 d!2040863))

(declare-fun d!2040881 () Bool)

(declare-fun c!1192903 () Bool)

(assert (=> d!2040881 (= c!1192903 (isEmpty!37533 (tail!12323 (t!379083 s!2326))))))

(declare-fun e!3941388 () Bool)

(assert (=> d!2040881 (= (matchZipper!2395 (derivationStepZipper!2349 lt!2392396 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))) e!3941388)))

(declare-fun b!6504719 () Bool)

(assert (=> b!6504719 (= e!3941388 (nullableZipper!2138 (derivationStepZipper!2349 lt!2392396 (head!13238 (t!379083 s!2326)))))))

(declare-fun b!6504720 () Bool)

(assert (=> b!6504720 (= e!3941388 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 lt!2392396 (head!13238 (t!379083 s!2326))) (head!13238 (tail!12323 (t!379083 s!2326)))) (tail!12323 (tail!12323 (t!379083 s!2326)))))))

(assert (= (and d!2040881 c!1192903) b!6504719))

(assert (= (and d!2040881 (not c!1192903)) b!6504720))

(assert (=> d!2040881 m!7290914))

(declare-fun m!7291932 () Bool)

(assert (=> d!2040881 m!7291932))

(assert (=> b!6504719 m!7291014))

(declare-fun m!7291934 () Bool)

(assert (=> b!6504719 m!7291934))

(assert (=> b!6504720 m!7290914))

(declare-fun m!7291936 () Bool)

(assert (=> b!6504720 m!7291936))

(assert (=> b!6504720 m!7291014))

(assert (=> b!6504720 m!7291936))

(declare-fun m!7291938 () Bool)

(assert (=> b!6504720 m!7291938))

(assert (=> b!6504720 m!7290914))

(declare-fun m!7291940 () Bool)

(assert (=> b!6504720 m!7291940))

(assert (=> b!6504720 m!7291938))

(assert (=> b!6504720 m!7291940))

(declare-fun m!7291942 () Bool)

(assert (=> b!6504720 m!7291942))

(assert (=> b!6503753 d!2040881))

(declare-fun bs!1652145 () Bool)

(declare-fun d!2040885 () Bool)

(assert (= bs!1652145 (and d!2040885 b!6503160)))

(declare-fun lambda!360636 () Int)

(assert (=> bs!1652145 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360636 lambda!360520))))

(declare-fun bs!1652146 () Bool)

(assert (= bs!1652146 (and d!2040885 d!2040453)))

(assert (=> bs!1652146 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360636 lambda!360565))))

(declare-fun bs!1652147 () Bool)

(assert (= bs!1652147 (and d!2040885 d!2040789)))

(assert (=> bs!1652147 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360636 lambda!360616))))

(assert (=> d!2040885 true))

(assert (=> d!2040885 (= (derivationStepZipper!2349 lt!2392396 (head!13238 (t!379083 s!2326))) (flatMap!1888 lt!2392396 lambda!360636))))

(declare-fun bs!1652148 () Bool)

(assert (= bs!1652148 d!2040885))

(declare-fun m!7291950 () Bool)

(assert (=> bs!1652148 m!7291950))

(assert (=> b!6503753 d!2040885))

(declare-fun d!2040887 () Bool)

(assert (=> d!2040887 (= (head!13238 (t!379083 s!2326)) (h!71773 (t!379083 s!2326)))))

(assert (=> b!6503753 d!2040887))

(declare-fun d!2040889 () Bool)

(assert (=> d!2040889 (= (tail!12323 (t!379083 s!2326)) (t!379083 (t!379083 s!2326)))))

(assert (=> b!6503753 d!2040889))

(declare-fun d!2040891 () Bool)

(assert (=> d!2040891 (= (isEmpty!37534 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326)) (not ((_ is Some!16273) (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326))))))

(assert (=> d!2040521 d!2040891))

(declare-fun bm!563757 () Bool)

(declare-fun call!563762 () List!65448)

(declare-fun call!563766 () List!65448)

(assert (=> bm!563757 (= call!563762 call!563766)))

(declare-fun b!6504734 () Bool)

(declare-fun e!3941401 () (InoxSet Context!11534))

(assert (=> b!6504734 (= e!3941401 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504735 () Bool)

(declare-fun e!3941397 () (InoxSet Context!11534))

(declare-fun e!3941398 () (InoxSet Context!11534))

(assert (=> b!6504735 (= e!3941397 e!3941398)))

(declare-fun c!1192913 () Bool)

(assert (=> b!6504735 (= c!1192913 ((_ is Union!16383) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun b!6504736 () Bool)

(declare-fun c!1192912 () Bool)

(declare-fun e!3941400 () Bool)

(assert (=> b!6504736 (= c!1192912 e!3941400)))

(declare-fun res!2671274 () Bool)

(assert (=> b!6504736 (=> (not res!2671274) (not e!3941400))))

(assert (=> b!6504736 (= res!2671274 ((_ is Concat!25228) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun e!3941396 () (InoxSet Context!11534))

(assert (=> b!6504736 (= e!3941398 e!3941396)))

(declare-fun b!6504737 () Bool)

(declare-fun e!3941399 () (InoxSet Context!11534))

(assert (=> b!6504737 (= e!3941396 e!3941399)))

(declare-fun c!1192911 () Bool)

(assert (=> b!6504737 (= c!1192911 ((_ is Concat!25228) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun b!6504738 () Bool)

(declare-fun call!563764 () (InoxSet Context!11534))

(assert (=> b!6504738 (= e!3941399 call!563764)))

(declare-fun d!2040897 () Bool)

(declare-fun c!1192914 () Bool)

(assert (=> d!2040897 (= c!1192914 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (= (c!1192455 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326))))))

(assert (=> d!2040897 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326)) e!3941397)))

(declare-fun b!6504739 () Bool)

(declare-fun call!563765 () (InoxSet Context!11534))

(declare-fun call!563763 () (InoxSet Context!11534))

(assert (=> b!6504739 (= e!3941398 ((_ map or) call!563765 call!563763))))

(declare-fun b!6504740 () Bool)

(assert (=> b!6504740 (= e!3941401 call!563764)))

(declare-fun bm!563758 () Bool)

(assert (=> bm!563758 (= call!563763 (derivationStepZipperDown!1631 (ite c!1192913 (regTwo!33279 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (regOne!33278 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))) (ite c!1192913 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (Context!11535 call!563766)) (h!71773 s!2326)))))

(declare-fun bm!563759 () Bool)

(declare-fun call!563767 () (InoxSet Context!11534))

(assert (=> bm!563759 (= call!563764 call!563767)))

(declare-fun bm!563760 () Bool)

(assert (=> bm!563760 (= call!563767 call!563765)))

(declare-fun bm!563761 () Bool)

(assert (=> bm!563761 (= call!563766 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))) (ite (or c!1192912 c!1192911) (regTwo!33278 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))))

(declare-fun b!6504741 () Bool)

(assert (=> b!6504741 (= e!3941400 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))))

(declare-fun bm!563762 () Bool)

(assert (=> bm!563762 (= call!563765 (derivationStepZipperDown!1631 (ite c!1192913 (regOne!33279 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (ite c!1192912 (regTwo!33278 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (ite c!1192911 (regOne!33278 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (reg!16712 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))) (ite (or c!1192913 c!1192912) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (Context!11535 call!563762)) (h!71773 s!2326)))))

(declare-fun b!6504742 () Bool)

(assert (=> b!6504742 (= e!3941396 ((_ map or) call!563763 call!563767))))

(declare-fun b!6504743 () Bool)

(assert (=> b!6504743 (= e!3941397 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) true))))

(declare-fun b!6504744 () Bool)

(declare-fun c!1192910 () Bool)

(assert (=> b!6504744 (= c!1192910 ((_ is Star!16383) (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(assert (=> b!6504744 (= e!3941399 e!3941401)))

(assert (= (and d!2040897 c!1192914) b!6504743))

(assert (= (and d!2040897 (not c!1192914)) b!6504735))

(assert (= (and b!6504735 c!1192913) b!6504739))

(assert (= (and b!6504735 (not c!1192913)) b!6504736))

(assert (= (and b!6504736 res!2671274) b!6504741))

(assert (= (and b!6504736 c!1192912) b!6504742))

(assert (= (and b!6504736 (not c!1192912)) b!6504737))

(assert (= (and b!6504737 c!1192911) b!6504738))

(assert (= (and b!6504737 (not c!1192911)) b!6504744))

(assert (= (and b!6504744 c!1192910) b!6504740))

(assert (= (and b!6504744 (not c!1192910)) b!6504734))

(assert (= (or b!6504738 b!6504740) bm!563757))

(assert (= (or b!6504738 b!6504740) bm!563759))

(assert (= (or b!6504742 bm!563757) bm!563761))

(assert (= (or b!6504742 bm!563759) bm!563760))

(assert (= (or b!6504739 b!6504742) bm!563758))

(assert (= (or b!6504739 bm!563760) bm!563762))

(declare-fun m!7291964 () Bool)

(assert (=> bm!563762 m!7291964))

(declare-fun m!7291966 () Bool)

(assert (=> bm!563761 m!7291966))

(declare-fun m!7291968 () Bool)

(assert (=> b!6504741 m!7291968))

(declare-fun m!7291970 () Bool)

(assert (=> b!6504743 m!7291970))

(declare-fun m!7291972 () Bool)

(assert (=> bm!563758 m!7291972))

(assert (=> bm!563561 d!2040897))

(declare-fun d!2040901 () Bool)

(assert (=> d!2040901 (= (isEmpty!37533 (t!379083 s!2326)) ((_ is Nil!65325) (t!379083 s!2326)))))

(assert (=> d!2040493 d!2040901))

(declare-fun d!2040903 () Bool)

(assert (=> d!2040903 true))

(declare-fun setRes!44357 () Bool)

(assert (=> d!2040903 setRes!44357))

(declare-fun condSetEmpty!44357 () Bool)

(declare-fun res!2671279 () (InoxSet Context!11534))

(assert (=> d!2040903 (= condSetEmpty!44357 (= res!2671279 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> d!2040903 (= (choose!48299 lt!2392395 lambda!360520) res!2671279)))

(declare-fun setIsEmpty!44357 () Bool)

(assert (=> setIsEmpty!44357 setRes!44357))

(declare-fun setElem!44357 () Context!11534)

(declare-fun e!3941406 () Bool)

(declare-fun setNonEmpty!44357 () Bool)

(declare-fun tp!1798964 () Bool)

(assert (=> setNonEmpty!44357 (= setRes!44357 (and tp!1798964 (inv!84204 setElem!44357) e!3941406))))

(declare-fun setRest!44357 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44357 (= res!2671279 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44357 true) setRest!44357))))

(declare-fun b!6504749 () Bool)

(declare-fun tp!1798963 () Bool)

(assert (=> b!6504749 (= e!3941406 tp!1798963)))

(assert (= (and d!2040903 condSetEmpty!44357) setIsEmpty!44357))

(assert (= (and d!2040903 (not condSetEmpty!44357)) setNonEmpty!44357))

(assert (= setNonEmpty!44357 b!6504749))

(declare-fun m!7291982 () Bool)

(assert (=> setNonEmpty!44357 m!7291982))

(assert (=> d!2040459 d!2040903))

(declare-fun bm!563763 () Bool)

(declare-fun call!563768 () List!65448)

(declare-fun call!563772 () List!65448)

(assert (=> bm!563763 (= call!563768 call!563772)))

(declare-fun b!6504750 () Bool)

(declare-fun e!3941412 () (InoxSet Context!11534))

(assert (=> b!6504750 (= e!3941412 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504751 () Bool)

(declare-fun e!3941408 () (InoxSet Context!11534))

(declare-fun e!3941409 () (InoxSet Context!11534))

(assert (=> b!6504751 (= e!3941408 e!3941409)))

(declare-fun c!1192918 () Bool)

(assert (=> b!6504751 (= c!1192918 ((_ is Union!16383) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))))))

(declare-fun b!6504752 () Bool)

(declare-fun c!1192917 () Bool)

(declare-fun e!3941411 () Bool)

(assert (=> b!6504752 (= c!1192917 e!3941411)))

(declare-fun res!2671280 () Bool)

(assert (=> b!6504752 (=> (not res!2671280) (not e!3941411))))

(assert (=> b!6504752 (= res!2671280 ((_ is Concat!25228) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))))))

(declare-fun e!3941407 () (InoxSet Context!11534))

(assert (=> b!6504752 (= e!3941409 e!3941407)))

(declare-fun b!6504753 () Bool)

(declare-fun e!3941410 () (InoxSet Context!11534))

(assert (=> b!6504753 (= e!3941407 e!3941410)))

(declare-fun c!1192916 () Bool)

(assert (=> b!6504753 (= c!1192916 ((_ is Concat!25228) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))))))

(declare-fun b!6504754 () Bool)

(declare-fun call!563770 () (InoxSet Context!11534))

(assert (=> b!6504754 (= e!3941410 call!563770)))

(declare-fun d!2040913 () Bool)

(declare-fun c!1192919 () Bool)

(assert (=> d!2040913 (= c!1192919 (and ((_ is ElementMatch!16383) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (= (c!1192455 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (h!71773 s!2326))))))

(assert (=> d!2040913 (= (derivationStepZipperDown!1631 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))) (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587)) (h!71773 s!2326)) e!3941408)))

(declare-fun b!6504755 () Bool)

(declare-fun call!563771 () (InoxSet Context!11534))

(declare-fun call!563769 () (InoxSet Context!11534))

(assert (=> b!6504755 (= e!3941409 ((_ map or) call!563771 call!563769))))

(declare-fun b!6504756 () Bool)

(assert (=> b!6504756 (= e!3941412 call!563770)))

(declare-fun bm!563764 () Bool)

(assert (=> bm!563764 (= call!563769 (derivationStepZipperDown!1631 (ite c!1192918 (regTwo!33279 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (regOne!33278 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))))) (ite c!1192918 (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587)) (Context!11535 call!563772)) (h!71773 s!2326)))))

(declare-fun bm!563765 () Bool)

(declare-fun call!563773 () (InoxSet Context!11534))

(assert (=> bm!563765 (= call!563770 call!563773)))

(declare-fun bm!563766 () Bool)

(assert (=> bm!563766 (= call!563773 call!563771)))

(declare-fun bm!563767 () Bool)

(assert (=> bm!563767 (= call!563772 ($colon$colon!2234 (exprs!6267 (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587))) (ite (or c!1192917 c!1192916) (regTwo!33278 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))))))))

(declare-fun b!6504757 () Bool)

(assert (=> b!6504757 (= e!3941411 (nullable!6376 (regOne!33278 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))))))))

(declare-fun bm!563768 () Bool)

(assert (=> bm!563768 (= call!563771 (derivationStepZipperDown!1631 (ite c!1192918 (regOne!33279 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (ite c!1192917 (regTwo!33278 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (ite c!1192916 (regOne!33278 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))) (reg!16712 (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292)))))))))) (ite (or c!1192918 c!1192917) (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587)) (Context!11535 call!563768)) (h!71773 s!2326)))))

(declare-fun b!6504758 () Bool)

(assert (=> b!6504758 (= e!3941407 ((_ map or) call!563769 call!563773))))

(declare-fun b!6504759 () Bool)

(assert (=> b!6504759 (= e!3941408 (store ((as const (Array Context!11534 Bool)) false) (ite (or c!1192628 c!1192627) lt!2392388 (Context!11535 call!563587)) true))))

(declare-fun b!6504760 () Bool)

(declare-fun c!1192915 () Bool)

(assert (=> b!6504760 (= c!1192915 ((_ is Star!16383) (ite c!1192628 (regOne!33279 (reg!16712 (regOne!33278 r!7292))) (ite c!1192627 (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (ite c!1192626 (regOne!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (reg!16712 (regOne!33278 r!7292))))))))))

(assert (=> b!6504760 (= e!3941410 e!3941412)))

(assert (= (and d!2040913 c!1192919) b!6504759))

(assert (= (and d!2040913 (not c!1192919)) b!6504751))

(assert (= (and b!6504751 c!1192918) b!6504755))

(assert (= (and b!6504751 (not c!1192918)) b!6504752))

(assert (= (and b!6504752 res!2671280) b!6504757))

(assert (= (and b!6504752 c!1192917) b!6504758))

(assert (= (and b!6504752 (not c!1192917)) b!6504753))

(assert (= (and b!6504753 c!1192916) b!6504754))

(assert (= (and b!6504753 (not c!1192916)) b!6504760))

(assert (= (and b!6504760 c!1192915) b!6504756))

(assert (= (and b!6504760 (not c!1192915)) b!6504750))

(assert (= (or b!6504754 b!6504756) bm!563763))

(assert (= (or b!6504754 b!6504756) bm!563765))

(assert (= (or b!6504758 bm!563763) bm!563767))

(assert (= (or b!6504758 bm!563765) bm!563766))

(assert (= (or b!6504755 b!6504758) bm!563764))

(assert (= (or b!6504755 bm!563766) bm!563768))

(declare-fun m!7291984 () Bool)

(assert (=> bm!563768 m!7291984))

(declare-fun m!7291986 () Bool)

(assert (=> bm!563767 m!7291986))

(declare-fun m!7291988 () Bool)

(assert (=> b!6504757 m!7291988))

(declare-fun m!7291990 () Bool)

(assert (=> b!6504759 m!7291990))

(declare-fun m!7291992 () Bool)

(assert (=> bm!563764 m!7291992))

(assert (=> bm!563587 d!2040913))

(declare-fun d!2040915 () Bool)

(assert (=> d!2040915 true))

(declare-fun setRes!44360 () Bool)

(assert (=> d!2040915 setRes!44360))

(declare-fun condSetEmpty!44360 () Bool)

(declare-fun res!2671287 () (InoxSet Context!11534))

(assert (=> d!2040915 (= condSetEmpty!44360 (= res!2671287 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> d!2040915 (= (choose!48313 lt!2392369 lambda!360521) res!2671287)))

(declare-fun setIsEmpty!44360 () Bool)

(assert (=> setIsEmpty!44360 setRes!44360))

(declare-fun e!3941417 () Bool)

(declare-fun tp!1798970 () Bool)

(declare-fun setElem!44360 () Context!11534)

(declare-fun setNonEmpty!44360 () Bool)

(assert (=> setNonEmpty!44360 (= setRes!44360 (and tp!1798970 (inv!84204 setElem!44360) e!3941417))))

(declare-fun setRest!44360 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44360 (= res!2671287 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44360 true) setRest!44360))))

(declare-fun b!6504767 () Bool)

(declare-fun tp!1798969 () Bool)

(assert (=> b!6504767 (= e!3941417 tp!1798969)))

(assert (= (and d!2040915 condSetEmpty!44360) setIsEmpty!44360))

(assert (= (and d!2040915 (not condSetEmpty!44360)) setNonEmpty!44360))

(assert (= setNonEmpty!44360 b!6504767))

(declare-fun m!7291994 () Bool)

(assert (=> setNonEmpty!44360 m!7291994))

(assert (=> d!2040547 d!2040915))

(declare-fun d!2040917 () Bool)

(assert (=> d!2040917 (= (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))) (nullableFct!2312 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun bs!1652169 () Bool)

(assert (= bs!1652169 d!2040917))

(declare-fun m!7291996 () Bool)

(assert (=> bs!1652169 m!7291996))

(assert (=> b!6503727 d!2040917))

(declare-fun d!2040919 () Bool)

(assert (=> d!2040919 (= (isEmpty!37530 (t!379082 (unfocusZipperList!1804 zl!343))) ((_ is Nil!65324) (t!379082 (unfocusZipperList!1804 zl!343))))))

(assert (=> b!6503642 d!2040919))

(declare-fun d!2040921 () Bool)

(declare-fun res!2671296 () Bool)

(declare-fun e!3941424 () Bool)

(assert (=> d!2040921 (=> res!2671296 e!3941424)))

(assert (=> d!2040921 (= res!2671296 ((_ is Nil!65326) lt!2392487))))

(assert (=> d!2040921 (= (noDuplicate!2200 lt!2392487) e!3941424)))

(declare-fun b!6504776 () Bool)

(declare-fun e!3941425 () Bool)

(assert (=> b!6504776 (= e!3941424 e!3941425)))

(declare-fun res!2671297 () Bool)

(assert (=> b!6504776 (=> (not res!2671297) (not e!3941425))))

(declare-fun contains!20198 (List!65450 Context!11534) Bool)

(assert (=> b!6504776 (= res!2671297 (not (contains!20198 (t!379084 lt!2392487) (h!71774 lt!2392487))))))

(declare-fun b!6504777 () Bool)

(assert (=> b!6504777 (= e!3941425 (noDuplicate!2200 (t!379084 lt!2392487)))))

(assert (= (and d!2040921 (not res!2671296)) b!6504776))

(assert (= (and b!6504776 res!2671297) b!6504777))

(declare-fun m!7291998 () Bool)

(assert (=> b!6504776 m!7291998))

(declare-fun m!7292000 () Bool)

(assert (=> b!6504777 m!7292000))

(assert (=> d!2040507 d!2040921))

(declare-fun d!2040923 () Bool)

(declare-fun e!3941433 () Bool)

(assert (=> d!2040923 e!3941433))

(declare-fun res!2671303 () Bool)

(assert (=> d!2040923 (=> (not res!2671303) (not e!3941433))))

(declare-fun res!2671302 () List!65450)

(assert (=> d!2040923 (= res!2671303 (noDuplicate!2200 res!2671302))))

(declare-fun e!3941432 () Bool)

(assert (=> d!2040923 e!3941432))

(assert (=> d!2040923 (= (choose!48306 z!1189) res!2671302)))

(declare-fun b!6504785 () Bool)

(declare-fun e!3941434 () Bool)

(declare-fun tp!1798975 () Bool)

(assert (=> b!6504785 (= e!3941434 tp!1798975)))

(declare-fun tp!1798976 () Bool)

(declare-fun b!6504784 () Bool)

(assert (=> b!6504784 (= e!3941432 (and (inv!84204 (h!71774 res!2671302)) e!3941434 tp!1798976))))

(declare-fun b!6504786 () Bool)

(assert (=> b!6504786 (= e!3941433 (= (content!12466 res!2671302) z!1189))))

(assert (= b!6504784 b!6504785))

(assert (= (and d!2040923 ((_ is Cons!65326) res!2671302)) b!6504784))

(assert (= (and d!2040923 res!2671303) b!6504786))

(declare-fun m!7292002 () Bool)

(assert (=> d!2040923 m!7292002))

(declare-fun m!7292004 () Bool)

(assert (=> b!6504784 m!7292004))

(declare-fun m!7292006 () Bool)

(assert (=> b!6504786 m!7292006))

(assert (=> d!2040507 d!2040923))

(declare-fun bs!1652186 () Bool)

(declare-fun d!2040925 () Bool)

(assert (= bs!1652186 (and d!2040925 d!2040541)))

(declare-fun lambda!360643 () Int)

(assert (=> bs!1652186 (= lambda!360643 lambda!360589)))

(declare-fun bs!1652187 () Bool)

(assert (= bs!1652187 (and d!2040925 d!2040859)))

(assert (=> bs!1652187 (= lambda!360643 lambda!360630)))

(declare-fun bs!1652188 () Bool)

(assert (= bs!1652188 (and d!2040925 d!2040443)))

(assert (=> bs!1652188 (= lambda!360643 lambda!360562)))

(declare-fun bs!1652189 () Bool)

(assert (= bs!1652189 (and d!2040925 d!2040441)))

(assert (=> bs!1652189 (= lambda!360643 lambda!360559)))

(declare-fun bs!1652190 () Bool)

(assert (= bs!1652190 (and d!2040925 d!2040509)))

(assert (=> bs!1652190 (= lambda!360643 lambda!360577)))

(declare-fun bs!1652191 () Bool)

(assert (= bs!1652191 (and d!2040925 d!2040503)))

(assert (=> bs!1652191 (= lambda!360643 lambda!360574)))

(declare-fun bs!1652192 () Bool)

(assert (= bs!1652192 (and d!2040925 d!2040853)))

(assert (=> bs!1652192 (= lambda!360643 lambda!360628)))

(declare-fun bs!1652193 () Bool)

(assert (= bs!1652193 (and d!2040925 b!6503167)))

(assert (=> bs!1652193 (= lambda!360643 lambda!360522)))

(declare-fun bs!1652194 () Bool)

(assert (= bs!1652194 (and d!2040925 d!2040549)))

(assert (=> bs!1652194 (= lambda!360643 lambda!360590)))

(assert (=> d!2040925 (= (inv!84204 (h!71774 (t!379084 zl!343))) (forall!15564 (exprs!6267 (h!71774 (t!379084 zl!343))) lambda!360643))))

(declare-fun bs!1652195 () Bool)

(assert (= bs!1652195 d!2040925))

(declare-fun m!7292008 () Bool)

(assert (=> bs!1652195 m!7292008))

(assert (=> b!6504033 d!2040925))

(declare-fun bm!563769 () Bool)

(declare-fun call!563774 () List!65448)

(declare-fun call!563778 () List!65448)

(assert (=> bm!563769 (= call!563774 call!563778)))

(declare-fun b!6504787 () Bool)

(declare-fun e!3941440 () (InoxSet Context!11534))

(assert (=> b!6504787 (= e!3941440 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504788 () Bool)

(declare-fun e!3941436 () (InoxSet Context!11534))

(declare-fun e!3941437 () (InoxSet Context!11534))

(assert (=> b!6504788 (= e!3941436 e!3941437)))

(declare-fun c!1192923 () Bool)

(assert (=> b!6504788 (= c!1192923 ((_ is Union!16383) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6504789 () Bool)

(declare-fun c!1192922 () Bool)

(declare-fun e!3941439 () Bool)

(assert (=> b!6504789 (= c!1192922 e!3941439)))

(declare-fun res!2671304 () Bool)

(assert (=> b!6504789 (=> (not res!2671304) (not e!3941439))))

(assert (=> b!6504789 (= res!2671304 ((_ is Concat!25228) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun e!3941435 () (InoxSet Context!11534))

(assert (=> b!6504789 (= e!3941437 e!3941435)))

(declare-fun b!6504790 () Bool)

(declare-fun e!3941438 () (InoxSet Context!11534))

(assert (=> b!6504790 (= e!3941435 e!3941438)))

(declare-fun c!1192921 () Bool)

(assert (=> b!6504790 (= c!1192921 ((_ is Concat!25228) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6504791 () Bool)

(declare-fun call!563776 () (InoxSet Context!11534))

(assert (=> b!6504791 (= e!3941438 call!563776)))

(declare-fun d!2040927 () Bool)

(declare-fun c!1192924 () Bool)

(assert (=> d!2040927 (= c!1192924 (and ((_ is ElementMatch!16383) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (= (c!1192455 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (h!71773 s!2326))))))

(assert (=> d!2040927 (= (derivationStepZipperDown!1631 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))) (ite c!1192619 lt!2392397 (Context!11535 call!563583)) (h!71773 s!2326)) e!3941436)))

(declare-fun b!6504792 () Bool)

(declare-fun call!563777 () (InoxSet Context!11534))

(declare-fun call!563775 () (InoxSet Context!11534))

(assert (=> b!6504792 (= e!3941437 ((_ map or) call!563777 call!563775))))

(declare-fun b!6504793 () Bool)

(assert (=> b!6504793 (= e!3941440 call!563776)))

(declare-fun bm!563770 () Bool)

(assert (=> bm!563770 (= call!563775 (derivationStepZipperDown!1631 (ite c!1192923 (regTwo!33279 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (regOne!33278 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))) (ite c!1192923 (ite c!1192619 lt!2392397 (Context!11535 call!563583)) (Context!11535 call!563778)) (h!71773 s!2326)))))

(declare-fun bm!563771 () Bool)

(declare-fun call!563779 () (InoxSet Context!11534))

(assert (=> bm!563771 (= call!563776 call!563779)))

(declare-fun bm!563772 () Bool)

(assert (=> bm!563772 (= call!563779 call!563777)))

(declare-fun bm!563773 () Bool)

(assert (=> bm!563773 (= call!563778 ($colon$colon!2234 (exprs!6267 (ite c!1192619 lt!2392397 (Context!11535 call!563583))) (ite (or c!1192922 c!1192921) (regTwo!33278 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))))

(declare-fun b!6504794 () Bool)

(assert (=> b!6504794 (= e!3941439 (nullable!6376 (regOne!33278 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))))

(declare-fun bm!563774 () Bool)

(assert (=> bm!563774 (= call!563777 (derivationStepZipperDown!1631 (ite c!1192923 (regOne!33279 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (ite c!1192922 (regTwo!33278 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (ite c!1192921 (regOne!33278 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))) (reg!16712 (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))) (ite (or c!1192923 c!1192922) (ite c!1192619 lt!2392397 (Context!11535 call!563583)) (Context!11535 call!563774)) (h!71773 s!2326)))))

(declare-fun b!6504795 () Bool)

(assert (=> b!6504795 (= e!3941435 ((_ map or) call!563775 call!563779))))

(declare-fun b!6504796 () Bool)

(assert (=> b!6504796 (= e!3941436 (store ((as const (Array Context!11534 Bool)) false) (ite c!1192619 lt!2392397 (Context!11535 call!563583)) true))))

(declare-fun b!6504797 () Bool)

(declare-fun c!1192920 () Bool)

(assert (=> b!6504797 (= c!1192920 ((_ is Star!16383) (ite c!1192619 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(assert (=> b!6504797 (= e!3941438 e!3941440)))

(assert (= (and d!2040927 c!1192924) b!6504796))

(assert (= (and d!2040927 (not c!1192924)) b!6504788))

(assert (= (and b!6504788 c!1192923) b!6504792))

(assert (= (and b!6504788 (not c!1192923)) b!6504789))

(assert (= (and b!6504789 res!2671304) b!6504794))

(assert (= (and b!6504789 c!1192922) b!6504795))

(assert (= (and b!6504789 (not c!1192922)) b!6504790))

(assert (= (and b!6504790 c!1192921) b!6504791))

(assert (= (and b!6504790 (not c!1192921)) b!6504797))

(assert (= (and b!6504797 c!1192920) b!6504793))

(assert (= (and b!6504797 (not c!1192920)) b!6504787))

(assert (= (or b!6504791 b!6504793) bm!563769))

(assert (= (or b!6504791 b!6504793) bm!563771))

(assert (= (or b!6504795 bm!563769) bm!563773))

(assert (= (or b!6504795 bm!563771) bm!563772))

(assert (= (or b!6504792 b!6504795) bm!563770))

(assert (= (or b!6504792 bm!563772) bm!563774))

(declare-fun m!7292010 () Bool)

(assert (=> bm!563774 m!7292010))

(declare-fun m!7292012 () Bool)

(assert (=> bm!563773 m!7292012))

(declare-fun m!7292014 () Bool)

(assert (=> b!6504794 m!7292014))

(declare-fun m!7292016 () Bool)

(assert (=> b!6504796 m!7292016))

(declare-fun m!7292018 () Bool)

(assert (=> bm!563770 m!7292018))

(assert (=> bm!563575 d!2040927))

(assert (=> b!6503950 d!2040793))

(declare-fun d!2040929 () Bool)

(assert (=> d!2040929 (forall!15564 (++!14469 (exprs!6267 lt!2392373) lt!2392391) lambda!360522)))

(declare-fun lt!2392563 () Unit!158867)

(assert (=> d!2040929 (= lt!2392563 (choose!48312 (exprs!6267 lt!2392373) lt!2392391 lambda!360522))))

(assert (=> d!2040929 (forall!15564 (exprs!6267 lt!2392373) lambda!360522)))

(assert (=> d!2040929 (= (lemmaConcatPreservesForall!356 (exprs!6267 lt!2392373) lt!2392391 lambda!360522) lt!2392563)))

(declare-fun bs!1652197 () Bool)

(assert (= bs!1652197 d!2040929))

(assert (=> bs!1652197 m!7291182))

(assert (=> bs!1652197 m!7291182))

(declare-fun m!7292020 () Bool)

(assert (=> bs!1652197 m!7292020))

(declare-fun m!7292022 () Bool)

(assert (=> bs!1652197 m!7292022))

(declare-fun m!7292024 () Bool)

(assert (=> bs!1652197 m!7292024))

(assert (=> bs!1651794 d!2040929))

(declare-fun b!6504798 () Bool)

(declare-fun e!3941442 () List!65448)

(assert (=> b!6504798 (= e!3941442 lt!2392391)))

(declare-fun d!2040931 () Bool)

(declare-fun e!3941441 () Bool)

(assert (=> d!2040931 e!3941441))

(declare-fun res!2671306 () Bool)

(assert (=> d!2040931 (=> (not res!2671306) (not e!3941441))))

(declare-fun lt!2392564 () List!65448)

(assert (=> d!2040931 (= res!2671306 (= (content!12467 lt!2392564) ((_ map or) (content!12467 (exprs!6267 lt!2392373)) (content!12467 lt!2392391))))))

(assert (=> d!2040931 (= lt!2392564 e!3941442)))

(declare-fun c!1192925 () Bool)

(assert (=> d!2040931 (= c!1192925 ((_ is Nil!65324) (exprs!6267 lt!2392373)))))

(assert (=> d!2040931 (= (++!14469 (exprs!6267 lt!2392373) lt!2392391) lt!2392564)))

(declare-fun b!6504800 () Bool)

(declare-fun res!2671305 () Bool)

(assert (=> b!6504800 (=> (not res!2671305) (not e!3941441))))

(assert (=> b!6504800 (= res!2671305 (= (size!40440 lt!2392564) (+ (size!40440 (exprs!6267 lt!2392373)) (size!40440 lt!2392391))))))

(declare-fun b!6504799 () Bool)

(assert (=> b!6504799 (= e!3941442 (Cons!65324 (h!71772 (exprs!6267 lt!2392373)) (++!14469 (t!379082 (exprs!6267 lt!2392373)) lt!2392391)))))

(declare-fun b!6504801 () Bool)

(assert (=> b!6504801 (= e!3941441 (or (not (= lt!2392391 Nil!65324)) (= lt!2392564 (exprs!6267 lt!2392373))))))

(assert (= (and d!2040931 c!1192925) b!6504798))

(assert (= (and d!2040931 (not c!1192925)) b!6504799))

(assert (= (and d!2040931 res!2671306) b!6504800))

(assert (= (and b!6504800 res!2671305) b!6504801))

(declare-fun m!7292030 () Bool)

(assert (=> d!2040931 m!7292030))

(declare-fun m!7292032 () Bool)

(assert (=> d!2040931 m!7292032))

(assert (=> d!2040931 m!7291148))

(declare-fun m!7292034 () Bool)

(assert (=> b!6504800 m!7292034))

(declare-fun m!7292036 () Bool)

(assert (=> b!6504800 m!7292036))

(assert (=> b!6504800 m!7291154))

(declare-fun m!7292038 () Bool)

(assert (=> b!6504799 m!7292038))

(assert (=> bs!1651794 d!2040931))

(declare-fun d!2040935 () Bool)

(assert (=> d!2040935 (= (isEmpty!37530 (unfocusZipperList!1804 zl!343)) ((_ is Nil!65324) (unfocusZipperList!1804 zl!343)))))

(assert (=> b!6503646 d!2040935))

(declare-fun bm!563781 () Bool)

(declare-fun call!563786 () List!65448)

(declare-fun call!563790 () List!65448)

(assert (=> bm!563781 (= call!563786 call!563790)))

(declare-fun b!6504813 () Bool)

(declare-fun e!3941454 () (InoxSet Context!11534))

(assert (=> b!6504813 (= e!3941454 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504814 () Bool)

(declare-fun e!3941450 () (InoxSet Context!11534))

(declare-fun e!3941451 () (InoxSet Context!11534))

(assert (=> b!6504814 (= e!3941450 e!3941451)))

(declare-fun c!1192934 () Bool)

(assert (=> b!6504814 (= c!1192934 ((_ is Union!16383) (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun b!6504815 () Bool)

(declare-fun c!1192933 () Bool)

(declare-fun e!3941453 () Bool)

(assert (=> b!6504815 (= c!1192933 e!3941453)))

(declare-fun res!2671308 () Bool)

(assert (=> b!6504815 (=> (not res!2671308) (not e!3941453))))

(assert (=> b!6504815 (= res!2671308 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun e!3941449 () (InoxSet Context!11534))

(assert (=> b!6504815 (= e!3941451 e!3941449)))

(declare-fun b!6504816 () Bool)

(declare-fun e!3941452 () (InoxSet Context!11534))

(assert (=> b!6504816 (= e!3941449 e!3941452)))

(declare-fun c!1192932 () Bool)

(assert (=> b!6504816 (= c!1192932 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun b!6504817 () Bool)

(declare-fun call!563788 () (InoxSet Context!11534))

(assert (=> b!6504817 (= e!3941452 call!563788)))

(declare-fun d!2040937 () Bool)

(declare-fun c!1192935 () Bool)

(assert (=> d!2040937 (= c!1192935 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 lt!2392390))) (= (c!1192455 (h!71772 (exprs!6267 lt!2392390))) (h!71773 s!2326))))))

(assert (=> d!2040937 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392390)) (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (h!71773 s!2326)) e!3941450)))

(declare-fun b!6504818 () Bool)

(declare-fun call!563789 () (InoxSet Context!11534))

(declare-fun call!563787 () (InoxSet Context!11534))

(assert (=> b!6504818 (= e!3941451 ((_ map or) call!563789 call!563787))))

(declare-fun b!6504819 () Bool)

(assert (=> b!6504819 (= e!3941454 call!563788)))

(declare-fun bm!563782 () Bool)

(assert (=> bm!563782 (= call!563787 (derivationStepZipperDown!1631 (ite c!1192934 (regTwo!33279 (h!71772 (exprs!6267 lt!2392390))) (regOne!33278 (h!71772 (exprs!6267 lt!2392390)))) (ite c!1192934 (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (Context!11535 call!563790)) (h!71773 s!2326)))))

(declare-fun bm!563783 () Bool)

(declare-fun call!563791 () (InoxSet Context!11534))

(assert (=> bm!563783 (= call!563788 call!563791)))

(declare-fun bm!563784 () Bool)

(assert (=> bm!563784 (= call!563791 call!563789)))

(declare-fun bm!563785 () Bool)

(assert (=> bm!563785 (= call!563790 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392390)))) (ite (or c!1192933 c!1192932) (regTwo!33278 (h!71772 (exprs!6267 lt!2392390))) (h!71772 (exprs!6267 lt!2392390)))))))

(declare-fun b!6504820 () Bool)

(assert (=> b!6504820 (= e!3941453 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 lt!2392390)))))))

(declare-fun bm!563786 () Bool)

(assert (=> bm!563786 (= call!563789 (derivationStepZipperDown!1631 (ite c!1192934 (regOne!33279 (h!71772 (exprs!6267 lt!2392390))) (ite c!1192933 (regTwo!33278 (h!71772 (exprs!6267 lt!2392390))) (ite c!1192932 (regOne!33278 (h!71772 (exprs!6267 lt!2392390))) (reg!16712 (h!71772 (exprs!6267 lt!2392390)))))) (ite (or c!1192934 c!1192933) (Context!11535 (t!379082 (exprs!6267 lt!2392390))) (Context!11535 call!563786)) (h!71773 s!2326)))))

(declare-fun b!6504821 () Bool)

(assert (=> b!6504821 (= e!3941449 ((_ map or) call!563787 call!563791))))

(declare-fun b!6504822 () Bool)

(assert (=> b!6504822 (= e!3941450 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 lt!2392390))) true))))

(declare-fun b!6504823 () Bool)

(declare-fun c!1192931 () Bool)

(assert (=> b!6504823 (= c!1192931 ((_ is Star!16383) (h!71772 (exprs!6267 lt!2392390))))))

(assert (=> b!6504823 (= e!3941452 e!3941454)))

(assert (= (and d!2040937 c!1192935) b!6504822))

(assert (= (and d!2040937 (not c!1192935)) b!6504814))

(assert (= (and b!6504814 c!1192934) b!6504818))

(assert (= (and b!6504814 (not c!1192934)) b!6504815))

(assert (= (and b!6504815 res!2671308) b!6504820))

(assert (= (and b!6504815 c!1192933) b!6504821))

(assert (= (and b!6504815 (not c!1192933)) b!6504816))

(assert (= (and b!6504816 c!1192932) b!6504817))

(assert (= (and b!6504816 (not c!1192932)) b!6504823))

(assert (= (and b!6504823 c!1192931) b!6504819))

(assert (= (and b!6504823 (not c!1192931)) b!6504813))

(assert (= (or b!6504817 b!6504819) bm!563781))

(assert (= (or b!6504817 b!6504819) bm!563783))

(assert (= (or b!6504821 bm!563781) bm!563785))

(assert (= (or b!6504821 bm!563783) bm!563784))

(assert (= (or b!6504818 b!6504821) bm!563782))

(assert (= (or b!6504818 bm!563784) bm!563786))

(declare-fun m!7292050 () Bool)

(assert (=> bm!563786 m!7292050))

(declare-fun m!7292052 () Bool)

(assert (=> bm!563785 m!7292052))

(declare-fun m!7292054 () Bool)

(assert (=> b!6504820 m!7292054))

(declare-fun m!7292056 () Bool)

(assert (=> b!6504822 m!7292056))

(declare-fun m!7292058 () Bool)

(assert (=> bm!563782 m!7292058))

(assert (=> bm!563558 d!2040937))

(declare-fun d!2040941 () Bool)

(assert (=> d!2040941 (= (isEmpty!37533 s!2326) ((_ is Nil!65325) s!2326))))

(assert (=> bm!563608 d!2040941))

(assert (=> bm!563606 d!2040941))

(declare-fun b!6504824 () Bool)

(declare-fun e!3941455 () Bool)

(declare-fun e!3941461 () Bool)

(assert (=> b!6504824 (= e!3941455 e!3941461)))

(declare-fun res!2671309 () Bool)

(assert (=> b!6504824 (=> (not res!2671309) (not e!3941461))))

(declare-fun call!563793 () Bool)

(assert (=> b!6504824 (= res!2671309 call!563793)))

(declare-fun call!563792 () Bool)

(declare-fun c!1192936 () Bool)

(declare-fun bm!563787 () Bool)

(declare-fun c!1192937 () Bool)

(assert (=> bm!563787 (= call!563792 (validRegex!8119 (ite c!1192937 (reg!16712 lt!2392471) (ite c!1192936 (regOne!33279 lt!2392471) (regOne!33278 lt!2392471)))))))

(declare-fun b!6504825 () Bool)

(declare-fun e!3941460 () Bool)

(declare-fun call!563794 () Bool)

(assert (=> b!6504825 (= e!3941460 call!563794)))

(declare-fun b!6504826 () Bool)

(declare-fun res!2671310 () Bool)

(assert (=> b!6504826 (=> res!2671310 e!3941455)))

(assert (=> b!6504826 (= res!2671310 (not ((_ is Concat!25228) lt!2392471)))))

(declare-fun e!3941456 () Bool)

(assert (=> b!6504826 (= e!3941456 e!3941455)))

(declare-fun d!2040943 () Bool)

(declare-fun res!2671313 () Bool)

(declare-fun e!3941458 () Bool)

(assert (=> d!2040943 (=> res!2671313 e!3941458)))

(assert (=> d!2040943 (= res!2671313 ((_ is ElementMatch!16383) lt!2392471))))

(assert (=> d!2040943 (= (validRegex!8119 lt!2392471) e!3941458)))

(declare-fun bm!563788 () Bool)

(assert (=> bm!563788 (= call!563793 call!563792)))

(declare-fun b!6504827 () Bool)

(declare-fun e!3941457 () Bool)

(declare-fun e!3941459 () Bool)

(assert (=> b!6504827 (= e!3941457 e!3941459)))

(declare-fun res!2671312 () Bool)

(assert (=> b!6504827 (= res!2671312 (not (nullable!6376 (reg!16712 lt!2392471))))))

(assert (=> b!6504827 (=> (not res!2671312) (not e!3941459))))

(declare-fun b!6504828 () Bool)

(assert (=> b!6504828 (= e!3941457 e!3941456)))

(assert (=> b!6504828 (= c!1192936 ((_ is Union!16383) lt!2392471))))

(declare-fun b!6504829 () Bool)

(assert (=> b!6504829 (= e!3941459 call!563792)))

(declare-fun b!6504830 () Bool)

(assert (=> b!6504830 (= e!3941458 e!3941457)))

(assert (=> b!6504830 (= c!1192937 ((_ is Star!16383) lt!2392471))))

(declare-fun bm!563789 () Bool)

(assert (=> bm!563789 (= call!563794 (validRegex!8119 (ite c!1192936 (regTwo!33279 lt!2392471) (regTwo!33278 lt!2392471))))))

(declare-fun b!6504831 () Bool)

(assert (=> b!6504831 (= e!3941461 call!563794)))

(declare-fun b!6504832 () Bool)

(declare-fun res!2671311 () Bool)

(assert (=> b!6504832 (=> (not res!2671311) (not e!3941460))))

(assert (=> b!6504832 (= res!2671311 call!563793)))

(assert (=> b!6504832 (= e!3941456 e!3941460)))

(assert (= (and d!2040943 (not res!2671313)) b!6504830))

(assert (= (and b!6504830 c!1192937) b!6504827))

(assert (= (and b!6504830 (not c!1192937)) b!6504828))

(assert (= (and b!6504827 res!2671312) b!6504829))

(assert (= (and b!6504828 c!1192936) b!6504832))

(assert (= (and b!6504828 (not c!1192936)) b!6504826))

(assert (= (and b!6504832 res!2671311) b!6504825))

(assert (= (and b!6504826 (not res!2671310)) b!6504824))

(assert (= (and b!6504824 res!2671309) b!6504831))

(assert (= (or b!6504825 b!6504831) bm!563789))

(assert (= (or b!6504832 b!6504824) bm!563788))

(assert (= (or b!6504829 bm!563788) bm!563787))

(declare-fun m!7292060 () Bool)

(assert (=> bm!563787 m!7292060))

(declare-fun m!7292062 () Bool)

(assert (=> b!6504827 m!7292062))

(declare-fun m!7292064 () Bool)

(assert (=> bm!563789 m!7292064))

(assert (=> d!2040445 d!2040943))

(declare-fun bs!1652198 () Bool)

(declare-fun d!2040947 () Bool)

(assert (= bs!1652198 (and d!2040947 d!2040541)))

(declare-fun lambda!360645 () Int)

(assert (=> bs!1652198 (= lambda!360645 lambda!360589)))

(declare-fun bs!1652199 () Bool)

(assert (= bs!1652199 (and d!2040947 d!2040859)))

(assert (=> bs!1652199 (= lambda!360645 lambda!360630)))

(declare-fun bs!1652200 () Bool)

(assert (= bs!1652200 (and d!2040947 d!2040925)))

(assert (=> bs!1652200 (= lambda!360645 lambda!360643)))

(declare-fun bs!1652201 () Bool)

(assert (= bs!1652201 (and d!2040947 d!2040443)))

(assert (=> bs!1652201 (= lambda!360645 lambda!360562)))

(declare-fun bs!1652202 () Bool)

(assert (= bs!1652202 (and d!2040947 d!2040441)))

(assert (=> bs!1652202 (= lambda!360645 lambda!360559)))

(declare-fun bs!1652203 () Bool)

(assert (= bs!1652203 (and d!2040947 d!2040509)))

(assert (=> bs!1652203 (= lambda!360645 lambda!360577)))

(declare-fun bs!1652204 () Bool)

(assert (= bs!1652204 (and d!2040947 d!2040503)))

(assert (=> bs!1652204 (= lambda!360645 lambda!360574)))

(declare-fun bs!1652205 () Bool)

(assert (= bs!1652205 (and d!2040947 d!2040853)))

(assert (=> bs!1652205 (= lambda!360645 lambda!360628)))

(declare-fun bs!1652206 () Bool)

(assert (= bs!1652206 (and d!2040947 b!6503167)))

(assert (=> bs!1652206 (= lambda!360645 lambda!360522)))

(declare-fun bs!1652207 () Bool)

(assert (= bs!1652207 (and d!2040947 d!2040549)))

(assert (=> bs!1652207 (= lambda!360645 lambda!360590)))

(declare-fun b!6504842 () Bool)

(declare-fun e!3941471 () Regex!16383)

(assert (=> b!6504842 (= e!3941471 (Union!16383 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))) (generalisedUnion!2227 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))))

(declare-fun b!6504843 () Bool)

(declare-fun e!3941474 () Bool)

(declare-fun e!3941469 () Bool)

(assert (=> b!6504843 (= e!3941474 e!3941469)))

(declare-fun c!1192942 () Bool)

(assert (=> b!6504843 (= c!1192942 (isEmpty!37530 (tail!12322 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326)))))))

(declare-fun e!3941470 () Bool)

(assert (=> d!2040947 e!3941470))

(declare-fun res!2671319 () Bool)

(assert (=> d!2040947 (=> (not res!2671319) (not e!3941470))))

(declare-fun lt!2392565 () Regex!16383)

(assert (=> d!2040947 (= res!2671319 (validRegex!8119 lt!2392565))))

(declare-fun e!3941472 () Regex!16383)

(assert (=> d!2040947 (= lt!2392565 e!3941472)))

(declare-fun c!1192941 () Bool)

(declare-fun e!3941473 () Bool)

(assert (=> d!2040947 (= c!1192941 e!3941473)))

(declare-fun res!2671320 () Bool)

(assert (=> d!2040947 (=> (not res!2671320) (not e!3941473))))

(assert (=> d!2040947 (= res!2671320 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))

(assert (=> d!2040947 (forall!15564 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326)) lambda!360645)))

(assert (=> d!2040947 (= (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))) lt!2392565)))

(declare-fun b!6504844 () Bool)

(assert (=> b!6504844 (= e!3941473 (isEmpty!37530 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326)))))))

(declare-fun b!6504845 () Bool)

(assert (=> b!6504845 (= e!3941472 e!3941471)))

(declare-fun c!1192943 () Bool)

(assert (=> b!6504845 (= c!1192943 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))

(declare-fun b!6504846 () Bool)

(assert (=> b!6504846 (= e!3941469 (isUnion!1211 lt!2392565))))

(declare-fun b!6504847 () Bool)

(assert (=> b!6504847 (= e!3941472 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))

(declare-fun b!6504848 () Bool)

(assert (=> b!6504848 (= e!3941470 e!3941474)))

(declare-fun c!1192940 () Bool)

(assert (=> b!6504848 (= c!1192940 (isEmpty!37530 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326))))))

(declare-fun b!6504849 () Bool)

(assert (=> b!6504849 (= e!3941469 (= lt!2392565 (head!13237 (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326)))))))

(declare-fun b!6504850 () Bool)

(assert (=> b!6504850 (= e!3941471 EmptyLang!16383)))

(declare-fun b!6504851 () Bool)

(assert (=> b!6504851 (= e!3941474 (isEmptyLang!1781 lt!2392565))))

(assert (= (and d!2040947 res!2671320) b!6504844))

(assert (= (and d!2040947 c!1192941) b!6504847))

(assert (= (and d!2040947 (not c!1192941)) b!6504845))

(assert (= (and b!6504845 c!1192943) b!6504842))

(assert (= (and b!6504845 (not c!1192943)) b!6504850))

(assert (= (and d!2040947 res!2671319) b!6504848))

(assert (= (and b!6504848 c!1192940) b!6504851))

(assert (= (and b!6504848 (not c!1192940)) b!6504843))

(assert (= (and b!6504843 c!1192942) b!6504849))

(assert (= (and b!6504843 (not c!1192942)) b!6504846))

(assert (=> b!6504843 m!7290888))

(declare-fun m!7292078 () Bool)

(assert (=> b!6504843 m!7292078))

(assert (=> b!6504843 m!7292078))

(declare-fun m!7292080 () Bool)

(assert (=> b!6504843 m!7292080))

(declare-fun m!7292082 () Bool)

(assert (=> b!6504851 m!7292082))

(declare-fun m!7292084 () Bool)

(assert (=> d!2040947 m!7292084))

(assert (=> d!2040947 m!7290888))

(declare-fun m!7292086 () Bool)

(assert (=> d!2040947 m!7292086))

(declare-fun m!7292088 () Bool)

(assert (=> b!6504846 m!7292088))

(assert (=> b!6504848 m!7290888))

(declare-fun m!7292090 () Bool)

(assert (=> b!6504848 m!7292090))

(declare-fun m!7292092 () Bool)

(assert (=> b!6504844 m!7292092))

(assert (=> b!6504849 m!7290888))

(declare-fun m!7292094 () Bool)

(assert (=> b!6504849 m!7292094))

(declare-fun m!7292096 () Bool)

(assert (=> b!6504842 m!7292096))

(assert (=> d!2040445 d!2040947))

(declare-fun bs!1652208 () Bool)

(declare-fun d!2040951 () Bool)

(assert (= bs!1652208 (and d!2040951 d!2040541)))

(declare-fun lambda!360646 () Int)

(assert (=> bs!1652208 (= lambda!360646 lambda!360589)))

(declare-fun bs!1652209 () Bool)

(assert (= bs!1652209 (and d!2040951 d!2040947)))

(assert (=> bs!1652209 (= lambda!360646 lambda!360645)))

(declare-fun bs!1652210 () Bool)

(assert (= bs!1652210 (and d!2040951 d!2040859)))

(assert (=> bs!1652210 (= lambda!360646 lambda!360630)))

(declare-fun bs!1652211 () Bool)

(assert (= bs!1652211 (and d!2040951 d!2040925)))

(assert (=> bs!1652211 (= lambda!360646 lambda!360643)))

(declare-fun bs!1652212 () Bool)

(assert (= bs!1652212 (and d!2040951 d!2040443)))

(assert (=> bs!1652212 (= lambda!360646 lambda!360562)))

(declare-fun bs!1652213 () Bool)

(assert (= bs!1652213 (and d!2040951 d!2040441)))

(assert (=> bs!1652213 (= lambda!360646 lambda!360559)))

(declare-fun bs!1652214 () Bool)

(assert (= bs!1652214 (and d!2040951 d!2040509)))

(assert (=> bs!1652214 (= lambda!360646 lambda!360577)))

(declare-fun bs!1652215 () Bool)

(assert (= bs!1652215 (and d!2040951 d!2040503)))

(assert (=> bs!1652215 (= lambda!360646 lambda!360574)))

(declare-fun bs!1652216 () Bool)

(assert (= bs!1652216 (and d!2040951 d!2040853)))

(assert (=> bs!1652216 (= lambda!360646 lambda!360628)))

(declare-fun bs!1652217 () Bool)

(assert (= bs!1652217 (and d!2040951 b!6503167)))

(assert (=> bs!1652217 (= lambda!360646 lambda!360522)))

(declare-fun bs!1652218 () Bool)

(assert (= bs!1652218 (and d!2040951 d!2040549)))

(assert (=> bs!1652218 (= lambda!360646 lambda!360590)))

(declare-fun lt!2392566 () List!65448)

(assert (=> d!2040951 (forall!15564 lt!2392566 lambda!360646)))

(declare-fun e!3941482 () List!65448)

(assert (=> d!2040951 (= lt!2392566 e!3941482)))

(declare-fun c!1192944 () Bool)

(assert (=> d!2040951 (= c!1192944 ((_ is Cons!65326) (Cons!65326 lt!2392388 Nil!65326)))))

(assert (=> d!2040951 (= (unfocusZipperList!1804 (Cons!65326 lt!2392388 Nil!65326)) lt!2392566)))

(declare-fun b!6504865 () Bool)

(assert (=> b!6504865 (= e!3941482 (Cons!65324 (generalisedConcat!1980 (exprs!6267 (h!71774 (Cons!65326 lt!2392388 Nil!65326)))) (unfocusZipperList!1804 (t!379084 (Cons!65326 lt!2392388 Nil!65326)))))))

(declare-fun b!6504866 () Bool)

(assert (=> b!6504866 (= e!3941482 Nil!65324)))

(assert (= (and d!2040951 c!1192944) b!6504865))

(assert (= (and d!2040951 (not c!1192944)) b!6504866))

(declare-fun m!7292098 () Bool)

(assert (=> d!2040951 m!7292098))

(declare-fun m!7292100 () Bool)

(assert (=> b!6504865 m!7292100))

(declare-fun m!7292102 () Bool)

(assert (=> b!6504865 m!7292102))

(assert (=> d!2040445 d!2040951))

(declare-fun bs!1652219 () Bool)

(declare-fun d!2040953 () Bool)

(assert (= bs!1652219 (and d!2040953 d!2040829)))

(declare-fun lambda!360647 () Int)

(assert (=> bs!1652219 (= lambda!360647 lambda!360627)))

(assert (=> d!2040953 (= (nullableZipper!2138 z!1189) (exists!2624 z!1189 lambda!360647))))

(declare-fun bs!1652220 () Bool)

(assert (= bs!1652220 d!2040953))

(declare-fun m!7292104 () Bool)

(assert (=> bs!1652220 m!7292104))

(assert (=> b!6503689 d!2040953))

(declare-fun d!2040955 () Bool)

(declare-fun res!2671323 () Bool)

(declare-fun e!3941492 () Bool)

(assert (=> d!2040955 (=> res!2671323 e!3941492)))

(assert (=> d!2040955 (= res!2671323 ((_ is Nil!65324) (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391)))))

(assert (=> d!2040955 (= (forall!15564 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391) lambda!360522) e!3941492)))

(declare-fun b!6504900 () Bool)

(declare-fun e!3941493 () Bool)

(assert (=> b!6504900 (= e!3941492 e!3941493)))

(declare-fun res!2671324 () Bool)

(assert (=> b!6504900 (=> (not res!2671324) (not e!3941493))))

(assert (=> b!6504900 (= res!2671324 (dynLambda!25954 lambda!360522 (h!71772 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391))))))

(declare-fun b!6504901 () Bool)

(assert (=> b!6504901 (= e!3941493 (forall!15564 (t!379082 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391)) lambda!360522))))

(assert (= (and d!2040955 (not res!2671323)) b!6504900))

(assert (= (and b!6504900 res!2671324) b!6504901))

(declare-fun b_lambda!246245 () Bool)

(assert (=> (not b_lambda!246245) (not b!6504900)))

(declare-fun m!7292106 () Bool)

(assert (=> b!6504900 m!7292106))

(declare-fun m!7292108 () Bool)

(assert (=> b!6504901 m!7292108))

(assert (=> d!2040545 d!2040955))

(assert (=> d!2040545 d!2040539))

(declare-fun d!2040957 () Bool)

(assert (=> d!2040957 (forall!15564 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391) lambda!360522)))

(assert (=> d!2040957 true))

(declare-fun _$78!313 () Unit!158867)

(assert (=> d!2040957 (= (choose!48312 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391 lambda!360522) _$78!313)))

(declare-fun bs!1652221 () Bool)

(assert (= bs!1652221 d!2040957))

(assert (=> bs!1652221 m!7290526))

(assert (=> bs!1652221 m!7290526))

(assert (=> bs!1652221 m!7291166))

(assert (=> d!2040545 d!2040957))

(declare-fun d!2040959 () Bool)

(declare-fun res!2671325 () Bool)

(declare-fun e!3941506 () Bool)

(assert (=> d!2040959 (=> res!2671325 e!3941506)))

(assert (=> d!2040959 (= res!2671325 ((_ is Nil!65324) (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))

(assert (=> d!2040959 (= (forall!15564 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lambda!360522) e!3941506)))

(declare-fun b!6504938 () Bool)

(declare-fun e!3941507 () Bool)

(assert (=> b!6504938 (= e!3941506 e!3941507)))

(declare-fun res!2671326 () Bool)

(assert (=> b!6504938 (=> (not res!2671326) (not e!3941507))))

(assert (=> b!6504938 (= res!2671326 (dynLambda!25954 lambda!360522 (h!71772 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))))))

(declare-fun b!6504939 () Bool)

(assert (=> b!6504939 (= e!3941507 (forall!15564 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) lambda!360522))))

(assert (= (and d!2040959 (not res!2671325)) b!6504938))

(assert (= (and b!6504938 res!2671326) b!6504939))

(declare-fun b_lambda!246247 () Bool)

(assert (=> (not b_lambda!246247) (not b!6504938)))

(declare-fun m!7292112 () Bool)

(assert (=> b!6504938 m!7292112))

(declare-fun m!7292114 () Bool)

(assert (=> b!6504939 m!7292114))

(assert (=> d!2040545 d!2040959))

(assert (=> d!2040495 d!2040941))

(declare-fun b!6504949 () Bool)

(declare-fun e!3941513 () Bool)

(assert (=> b!6504949 (= e!3941513 (not (= (head!13238 (_2!36665 (get!22658 lt!2392498))) (c!1192455 (regTwo!33278 r!7292)))))))

(declare-fun b!6504950 () Bool)

(declare-fun e!3941516 () Bool)

(declare-fun lt!2392567 () Bool)

(assert (=> b!6504950 (= e!3941516 (not lt!2392567))))

(declare-fun b!6504952 () Bool)

(declare-fun e!3941517 () Bool)

(declare-fun call!563798 () Bool)

(assert (=> b!6504952 (= e!3941517 (= lt!2392567 call!563798))))

(declare-fun b!6504954 () Bool)

(declare-fun e!3941515 () Bool)

(assert (=> b!6504954 (= e!3941515 (nullable!6376 (regTwo!33278 r!7292)))))

(declare-fun b!6504956 () Bool)

(assert (=> b!6504956 (= e!3941515 (matchR!8566 (derivativeStep!5077 (regTwo!33278 r!7292) (head!13238 (_2!36665 (get!22658 lt!2392498)))) (tail!12323 (_2!36665 (get!22658 lt!2392498)))))))

(declare-fun b!6504958 () Bool)

(declare-fun res!2671330 () Bool)

(declare-fun e!3941512 () Bool)

(assert (=> b!6504958 (=> res!2671330 e!3941512)))

(declare-fun e!3941514 () Bool)

(assert (=> b!6504958 (= res!2671330 e!3941514)))

(declare-fun res!2671331 () Bool)

(assert (=> b!6504958 (=> (not res!2671331) (not e!3941514))))

(assert (=> b!6504958 (= res!2671331 lt!2392567)))

(declare-fun b!6504959 () Bool)

(declare-fun e!3941511 () Bool)

(assert (=> b!6504959 (= e!3941511 e!3941513)))

(declare-fun res!2671329 () Bool)

(assert (=> b!6504959 (=> res!2671329 e!3941513)))

(assert (=> b!6504959 (= res!2671329 call!563798)))

(declare-fun b!6504960 () Bool)

(declare-fun res!2671334 () Bool)

(assert (=> b!6504960 (=> (not res!2671334) (not e!3941514))))

(assert (=> b!6504960 (= res!2671334 (not call!563798))))

(declare-fun bm!563793 () Bool)

(assert (=> bm!563793 (= call!563798 (isEmpty!37533 (_2!36665 (get!22658 lt!2392498))))))

(declare-fun b!6504961 () Bool)

(declare-fun res!2671333 () Bool)

(assert (=> b!6504961 (=> res!2671333 e!3941513)))

(assert (=> b!6504961 (= res!2671333 (not (isEmpty!37533 (tail!12323 (_2!36665 (get!22658 lt!2392498))))))))

(declare-fun b!6504962 () Bool)

(assert (=> b!6504962 (= e!3941512 e!3941511)))

(declare-fun res!2671328 () Bool)

(assert (=> b!6504962 (=> (not res!2671328) (not e!3941511))))

(assert (=> b!6504962 (= res!2671328 (not lt!2392567))))

(declare-fun b!6504963 () Bool)

(declare-fun res!2671327 () Bool)

(assert (=> b!6504963 (=> res!2671327 e!3941512)))

(assert (=> b!6504963 (= res!2671327 (not ((_ is ElementMatch!16383) (regTwo!33278 r!7292))))))

(assert (=> b!6504963 (= e!3941516 e!3941512)))

(declare-fun b!6504964 () Bool)

(assert (=> b!6504964 (= e!3941517 e!3941516)))

(declare-fun c!1192947 () Bool)

(assert (=> b!6504964 (= c!1192947 ((_ is EmptyLang!16383) (regTwo!33278 r!7292)))))

(declare-fun b!6504965 () Bool)

(declare-fun res!2671332 () Bool)

(assert (=> b!6504965 (=> (not res!2671332) (not e!3941514))))

(assert (=> b!6504965 (= res!2671332 (isEmpty!37533 (tail!12323 (_2!36665 (get!22658 lt!2392498)))))))

(declare-fun b!6504957 () Bool)

(assert (=> b!6504957 (= e!3941514 (= (head!13238 (_2!36665 (get!22658 lt!2392498))) (c!1192455 (regTwo!33278 r!7292))))))

(declare-fun d!2040961 () Bool)

(assert (=> d!2040961 e!3941517))

(declare-fun c!1192946 () Bool)

(assert (=> d!2040961 (= c!1192946 ((_ is EmptyExpr!16383) (regTwo!33278 r!7292)))))

(assert (=> d!2040961 (= lt!2392567 e!3941515)))

(declare-fun c!1192945 () Bool)

(assert (=> d!2040961 (= c!1192945 (isEmpty!37533 (_2!36665 (get!22658 lt!2392498))))))

(assert (=> d!2040961 (validRegex!8119 (regTwo!33278 r!7292))))

(assert (=> d!2040961 (= (matchR!8566 (regTwo!33278 r!7292) (_2!36665 (get!22658 lt!2392498))) lt!2392567)))

(assert (= (and d!2040961 c!1192945) b!6504954))

(assert (= (and d!2040961 (not c!1192945)) b!6504956))

(assert (= (and d!2040961 c!1192946) b!6504952))

(assert (= (and d!2040961 (not c!1192946)) b!6504964))

(assert (= (and b!6504964 c!1192947) b!6504950))

(assert (= (and b!6504964 (not c!1192947)) b!6504963))

(assert (= (and b!6504963 (not res!2671327)) b!6504958))

(assert (= (and b!6504958 res!2671331) b!6504960))

(assert (= (and b!6504960 res!2671334) b!6504965))

(assert (= (and b!6504965 res!2671332) b!6504957))

(assert (= (and b!6504958 (not res!2671330)) b!6504962))

(assert (= (and b!6504962 res!2671328) b!6504959))

(assert (= (and b!6504959 (not res!2671329)) b!6504961))

(assert (= (and b!6504961 (not res!2671333)) b!6504949))

(assert (= (or b!6504952 b!6504959 b!6504960) bm!563793))

(declare-fun m!7292116 () Bool)

(assert (=> d!2040961 m!7292116))

(assert (=> d!2040961 m!7291862))

(declare-fun m!7292118 () Bool)

(assert (=> b!6504956 m!7292118))

(assert (=> b!6504956 m!7292118))

(declare-fun m!7292120 () Bool)

(assert (=> b!6504956 m!7292120))

(declare-fun m!7292122 () Bool)

(assert (=> b!6504956 m!7292122))

(assert (=> b!6504956 m!7292120))

(assert (=> b!6504956 m!7292122))

(declare-fun m!7292124 () Bool)

(assert (=> b!6504956 m!7292124))

(assert (=> b!6504954 m!7291868))

(assert (=> b!6504965 m!7292122))

(assert (=> b!6504965 m!7292122))

(declare-fun m!7292126 () Bool)

(assert (=> b!6504965 m!7292126))

(assert (=> b!6504961 m!7292122))

(assert (=> b!6504961 m!7292122))

(assert (=> b!6504961 m!7292126))

(assert (=> b!6504949 m!7292118))

(assert (=> b!6504957 m!7292118))

(assert (=> bm!563793 m!7292116))

(assert (=> b!6503924 d!2040961))

(declare-fun d!2040963 () Bool)

(assert (=> d!2040963 (= (get!22658 lt!2392498) (v!52452 lt!2392498))))

(assert (=> b!6503924 d!2040963))

(assert (=> b!6503840 d!2040819))

(assert (=> b!6503840 d!2040797))

(declare-fun d!2040965 () Bool)

(assert (=> d!2040965 (= (isEmptyExpr!1772 lt!2392490) ((_ is EmptyExpr!16383) lt!2392490))))

(assert (=> b!6503897 d!2040965))

(assert (=> b!6503836 d!2040819))

(assert (=> b!6503836 d!2040797))

(declare-fun d!2040975 () Bool)

(declare-fun c!1192948 () Bool)

(assert (=> d!2040975 (= c!1192948 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun e!3941524 () Bool)

(assert (=> d!2040975 (= (matchZipper!2395 (derivationStepZipper!2349 lt!2392366 (head!13238 s!2326)) (tail!12323 s!2326)) e!3941524)))

(declare-fun b!6504990 () Bool)

(assert (=> b!6504990 (= e!3941524 (nullableZipper!2138 (derivationStepZipper!2349 lt!2392366 (head!13238 s!2326))))))

(declare-fun b!6504991 () Bool)

(assert (=> b!6504991 (= e!3941524 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 lt!2392366 (head!13238 s!2326)) (head!13238 (tail!12323 s!2326))) (tail!12323 (tail!12323 s!2326))))))

(assert (= (and d!2040975 c!1192948) b!6504990))

(assert (= (and d!2040975 (not c!1192948)) b!6504991))

(assert (=> d!2040975 m!7290956))

(assert (=> d!2040975 m!7291036))

(assert (=> b!6504990 m!7291020))

(declare-fun m!7292138 () Bool)

(assert (=> b!6504990 m!7292138))

(assert (=> b!6504991 m!7290956))

(assert (=> b!6504991 m!7291668))

(assert (=> b!6504991 m!7291020))

(assert (=> b!6504991 m!7291668))

(declare-fun m!7292142 () Bool)

(assert (=> b!6504991 m!7292142))

(assert (=> b!6504991 m!7290956))

(assert (=> b!6504991 m!7291672))

(assert (=> b!6504991 m!7292142))

(assert (=> b!6504991 m!7291672))

(declare-fun m!7292146 () Bool)

(assert (=> b!6504991 m!7292146))

(assert (=> b!6503755 d!2040975))

(declare-fun bs!1652230 () Bool)

(declare-fun d!2040985 () Bool)

(assert (= bs!1652230 (and d!2040985 b!6503160)))

(declare-fun lambda!360648 () Int)

(assert (=> bs!1652230 (= (= (head!13238 s!2326) (h!71773 s!2326)) (= lambda!360648 lambda!360520))))

(declare-fun bs!1652231 () Bool)

(assert (= bs!1652231 (and d!2040985 d!2040453)))

(assert (=> bs!1652231 (= (= (head!13238 s!2326) (h!71773 s!2326)) (= lambda!360648 lambda!360565))))

(declare-fun bs!1652232 () Bool)

(assert (= bs!1652232 (and d!2040985 d!2040789)))

(assert (=> bs!1652232 (= lambda!360648 lambda!360616)))

(declare-fun bs!1652233 () Bool)

(assert (= bs!1652233 (and d!2040985 d!2040885)))

(assert (=> bs!1652233 (= (= (head!13238 s!2326) (head!13238 (t!379083 s!2326))) (= lambda!360648 lambda!360636))))

(assert (=> d!2040985 true))

(assert (=> d!2040985 (= (derivationStepZipper!2349 lt!2392366 (head!13238 s!2326)) (flatMap!1888 lt!2392366 lambda!360648))))

(declare-fun bs!1652234 () Bool)

(assert (= bs!1652234 d!2040985))

(declare-fun m!7292148 () Bool)

(assert (=> bs!1652234 m!7292148))

(assert (=> b!6503755 d!2040985))

(assert (=> b!6503755 d!2040793))

(assert (=> b!6503755 d!2040797))

(declare-fun bm!563794 () Bool)

(declare-fun call!563799 () List!65448)

(declare-fun call!563803 () List!65448)

(assert (=> bm!563794 (= call!563799 call!563803)))

(declare-fun b!6504992 () Bool)

(declare-fun e!3941530 () (InoxSet Context!11534))

(assert (=> b!6504992 (= e!3941530 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6504993 () Bool)

(declare-fun e!3941526 () (InoxSet Context!11534))

(declare-fun e!3941527 () (InoxSet Context!11534))

(assert (=> b!6504993 (= e!3941526 e!3941527)))

(declare-fun c!1192952 () Bool)

(assert (=> b!6504993 (= c!1192952 ((_ is Union!16383) (h!71772 (exprs!6267 lt!2392373))))))

(declare-fun b!6504994 () Bool)

(declare-fun c!1192951 () Bool)

(declare-fun e!3941529 () Bool)

(assert (=> b!6504994 (= c!1192951 e!3941529)))

(declare-fun res!2671335 () Bool)

(assert (=> b!6504994 (=> (not res!2671335) (not e!3941529))))

(assert (=> b!6504994 (= res!2671335 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392373))))))

(declare-fun e!3941525 () (InoxSet Context!11534))

(assert (=> b!6504994 (= e!3941527 e!3941525)))

(declare-fun b!6504995 () Bool)

(declare-fun e!3941528 () (InoxSet Context!11534))

(assert (=> b!6504995 (= e!3941525 e!3941528)))

(declare-fun c!1192950 () Bool)

(assert (=> b!6504995 (= c!1192950 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392373))))))

(declare-fun b!6504996 () Bool)

(declare-fun call!563801 () (InoxSet Context!11534))

(assert (=> b!6504996 (= e!3941528 call!563801)))

(declare-fun d!2040987 () Bool)

(declare-fun c!1192953 () Bool)

(assert (=> d!2040987 (= c!1192953 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 lt!2392373))) (= (c!1192455 (h!71772 (exprs!6267 lt!2392373))) (h!71773 s!2326))))))

(assert (=> d!2040987 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392373)) (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (h!71773 s!2326)) e!3941526)))

(declare-fun b!6504997 () Bool)

(declare-fun call!563802 () (InoxSet Context!11534))

(declare-fun call!563800 () (InoxSet Context!11534))

(assert (=> b!6504997 (= e!3941527 ((_ map or) call!563802 call!563800))))

(declare-fun b!6504998 () Bool)

(assert (=> b!6504998 (= e!3941530 call!563801)))

(declare-fun bm!563795 () Bool)

(assert (=> bm!563795 (= call!563800 (derivationStepZipperDown!1631 (ite c!1192952 (regTwo!33279 (h!71772 (exprs!6267 lt!2392373))) (regOne!33278 (h!71772 (exprs!6267 lt!2392373)))) (ite c!1192952 (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (Context!11535 call!563803)) (h!71773 s!2326)))))

(declare-fun bm!563796 () Bool)

(declare-fun call!563804 () (InoxSet Context!11534))

(assert (=> bm!563796 (= call!563801 call!563804)))

(declare-fun bm!563797 () Bool)

(assert (=> bm!563797 (= call!563804 call!563802)))

(declare-fun bm!563798 () Bool)

(assert (=> bm!563798 (= call!563803 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392373)))) (ite (or c!1192951 c!1192950) (regTwo!33278 (h!71772 (exprs!6267 lt!2392373))) (h!71772 (exprs!6267 lt!2392373)))))))

(declare-fun b!6504999 () Bool)

(assert (=> b!6504999 (= e!3941529 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 lt!2392373)))))))

(declare-fun bm!563799 () Bool)

(assert (=> bm!563799 (= call!563802 (derivationStepZipperDown!1631 (ite c!1192952 (regOne!33279 (h!71772 (exprs!6267 lt!2392373))) (ite c!1192951 (regTwo!33278 (h!71772 (exprs!6267 lt!2392373))) (ite c!1192950 (regOne!33278 (h!71772 (exprs!6267 lt!2392373))) (reg!16712 (h!71772 (exprs!6267 lt!2392373)))))) (ite (or c!1192952 c!1192951) (Context!11535 (t!379082 (exprs!6267 lt!2392373))) (Context!11535 call!563799)) (h!71773 s!2326)))))

(declare-fun b!6505000 () Bool)

(assert (=> b!6505000 (= e!3941525 ((_ map or) call!563800 call!563804))))

(declare-fun b!6505001 () Bool)

(assert (=> b!6505001 (= e!3941526 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 lt!2392373))) true))))

(declare-fun b!6505002 () Bool)

(declare-fun c!1192949 () Bool)

(assert (=> b!6505002 (= c!1192949 ((_ is Star!16383) (h!71772 (exprs!6267 lt!2392373))))))

(assert (=> b!6505002 (= e!3941528 e!3941530)))

(assert (= (and d!2040987 c!1192953) b!6505001))

(assert (= (and d!2040987 (not c!1192953)) b!6504993))

(assert (= (and b!6504993 c!1192952) b!6504997))

(assert (= (and b!6504993 (not c!1192952)) b!6504994))

(assert (= (and b!6504994 res!2671335) b!6504999))

(assert (= (and b!6504994 c!1192951) b!6505000))

(assert (= (and b!6504994 (not c!1192951)) b!6504995))

(assert (= (and b!6504995 c!1192950) b!6504996))

(assert (= (and b!6504995 (not c!1192950)) b!6505002))

(assert (= (and b!6505002 c!1192949) b!6504998))

(assert (= (and b!6505002 (not c!1192949)) b!6504992))

(assert (= (or b!6504996 b!6504998) bm!563794))

(assert (= (or b!6504996 b!6504998) bm!563796))

(assert (= (or b!6505000 bm!563794) bm!563798))

(assert (= (or b!6505000 bm!563796) bm!563797))

(assert (= (or b!6504997 b!6505000) bm!563795))

(assert (= (or b!6504997 bm!563797) bm!563799))

(declare-fun m!7292150 () Bool)

(assert (=> bm!563799 m!7292150))

(declare-fun m!7292152 () Bool)

(assert (=> bm!563798 m!7292152))

(declare-fun m!7292154 () Bool)

(assert (=> b!6504999 m!7292154))

(declare-fun m!7292156 () Bool)

(assert (=> b!6505001 m!7292156))

(declare-fun m!7292158 () Bool)

(assert (=> bm!563795 m!7292158))

(assert (=> bm!563559 d!2040987))

(assert (=> d!2040499 d!2040941))

(assert (=> d!2040499 d!2040505))

(declare-fun d!2040989 () Bool)

(assert (=> d!2040989 (= (Exists!3453 (ite c!1192640 lambda!360570 lambda!360571)) (choose!48307 (ite c!1192640 lambda!360570 lambda!360571)))))

(declare-fun bs!1652235 () Bool)

(assert (= bs!1652235 d!2040989))

(declare-fun m!7292160 () Bool)

(assert (=> bs!1652235 m!7292160))

(assert (=> bm!563592 d!2040989))

(assert (=> d!2040517 d!2040511))

(declare-fun b!6505003 () Bool)

(declare-fun e!3941531 () Bool)

(declare-fun e!3941537 () Bool)

(assert (=> b!6505003 (= e!3941531 e!3941537)))

(declare-fun res!2671336 () Bool)

(assert (=> b!6505003 (=> (not res!2671336) (not e!3941537))))

(declare-fun call!563806 () Bool)

(assert (=> b!6505003 (= res!2671336 call!563806)))

(declare-fun call!563805 () Bool)

(declare-fun bm!563800 () Bool)

(declare-fun c!1192955 () Bool)

(declare-fun c!1192954 () Bool)

(assert (=> bm!563800 (= call!563805 (validRegex!8119 (ite c!1192955 (reg!16712 (regOne!33278 r!7292)) (ite c!1192954 (regOne!33279 (regOne!33278 r!7292)) (regOne!33278 (regOne!33278 r!7292))))))))

(declare-fun b!6505004 () Bool)

(declare-fun e!3941536 () Bool)

(declare-fun call!563807 () Bool)

(assert (=> b!6505004 (= e!3941536 call!563807)))

(declare-fun b!6505005 () Bool)

(declare-fun res!2671337 () Bool)

(assert (=> b!6505005 (=> res!2671337 e!3941531)))

(assert (=> b!6505005 (= res!2671337 (not ((_ is Concat!25228) (regOne!33278 r!7292))))))

(declare-fun e!3941532 () Bool)

(assert (=> b!6505005 (= e!3941532 e!3941531)))

(declare-fun d!2040991 () Bool)

(declare-fun res!2671340 () Bool)

(declare-fun e!3941534 () Bool)

(assert (=> d!2040991 (=> res!2671340 e!3941534)))

(assert (=> d!2040991 (= res!2671340 ((_ is ElementMatch!16383) (regOne!33278 r!7292)))))

(assert (=> d!2040991 (= (validRegex!8119 (regOne!33278 r!7292)) e!3941534)))

(declare-fun bm!563801 () Bool)

(assert (=> bm!563801 (= call!563806 call!563805)))

(declare-fun b!6505006 () Bool)

(declare-fun e!3941533 () Bool)

(declare-fun e!3941535 () Bool)

(assert (=> b!6505006 (= e!3941533 e!3941535)))

(declare-fun res!2671339 () Bool)

(assert (=> b!6505006 (= res!2671339 (not (nullable!6376 (reg!16712 (regOne!33278 r!7292)))))))

(assert (=> b!6505006 (=> (not res!2671339) (not e!3941535))))

(declare-fun b!6505007 () Bool)

(assert (=> b!6505007 (= e!3941533 e!3941532)))

(assert (=> b!6505007 (= c!1192954 ((_ is Union!16383) (regOne!33278 r!7292)))))

(declare-fun b!6505008 () Bool)

(assert (=> b!6505008 (= e!3941535 call!563805)))

(declare-fun b!6505009 () Bool)

(assert (=> b!6505009 (= e!3941534 e!3941533)))

(assert (=> b!6505009 (= c!1192955 ((_ is Star!16383) (regOne!33278 r!7292)))))

(declare-fun bm!563802 () Bool)

(assert (=> bm!563802 (= call!563807 (validRegex!8119 (ite c!1192954 (regTwo!33279 (regOne!33278 r!7292)) (regTwo!33278 (regOne!33278 r!7292)))))))

(declare-fun b!6505010 () Bool)

(assert (=> b!6505010 (= e!3941537 call!563807)))

(declare-fun b!6505011 () Bool)

(declare-fun res!2671338 () Bool)

(assert (=> b!6505011 (=> (not res!2671338) (not e!3941536))))

(assert (=> b!6505011 (= res!2671338 call!563806)))

(assert (=> b!6505011 (= e!3941532 e!3941536)))

(assert (= (and d!2040991 (not res!2671340)) b!6505009))

(assert (= (and b!6505009 c!1192955) b!6505006))

(assert (= (and b!6505009 (not c!1192955)) b!6505007))

(assert (= (and b!6505006 res!2671339) b!6505008))

(assert (= (and b!6505007 c!1192954) b!6505011))

(assert (= (and b!6505007 (not c!1192954)) b!6505005))

(assert (= (and b!6505011 res!2671338) b!6505004))

(assert (= (and b!6505005 (not res!2671337)) b!6505003))

(assert (= (and b!6505003 res!2671336) b!6505010))

(assert (= (or b!6505004 b!6505010) bm!563802))

(assert (= (or b!6505011 b!6505003) bm!563801))

(assert (= (or b!6505008 bm!563801) bm!563800))

(declare-fun m!7292162 () Bool)

(assert (=> bm!563800 m!7292162))

(declare-fun m!7292164 () Bool)

(assert (=> b!6505006 m!7292164))

(declare-fun m!7292166 () Bool)

(assert (=> bm!563802 m!7292166))

(assert (=> d!2040517 d!2040991))

(assert (=> d!2040517 d!2040521))

(declare-fun d!2040993 () Bool)

(assert (=> d!2040993 (= (Exists!3453 lambda!360580) (choose!48307 lambda!360580))))

(declare-fun bs!1652236 () Bool)

(assert (= bs!1652236 d!2040993))

(declare-fun m!7292168 () Bool)

(assert (=> bs!1652236 m!7292168))

(assert (=> d!2040517 d!2040993))

(declare-fun bs!1652237 () Bool)

(declare-fun d!2040995 () Bool)

(assert (= bs!1652237 (and d!2040995 b!6503964)))

(declare-fun lambda!360651 () Int)

(assert (=> bs!1652237 (not (= lambda!360651 lambda!360588))))

(declare-fun bs!1652238 () Bool)

(assert (= bs!1652238 (and d!2040995 b!6503796)))

(assert (=> bs!1652238 (not (= lambda!360651 lambda!360570))))

(declare-fun bs!1652239 () Bool)

(assert (= bs!1652239 (and d!2040995 d!2040519)))

(assert (=> bs!1652239 (not (= lambda!360651 lambda!360586))))

(assert (=> bs!1652239 (= lambda!360651 lambda!360585)))

(declare-fun bs!1652240 () Bool)

(assert (= bs!1652240 (and d!2040995 b!6504574)))

(assert (=> bs!1652240 (not (= lambda!360651 lambda!360622))))

(declare-fun bs!1652241 () Bool)

(assert (= bs!1652241 (and d!2040995 b!6503182)))

(assert (=> bs!1652241 (not (= lambda!360651 lambda!360519))))

(assert (=> bs!1652241 (= lambda!360651 lambda!360518)))

(declare-fun bs!1652242 () Bool)

(assert (= bs!1652242 (and d!2040995 d!2040517)))

(assert (=> bs!1652242 (= lambda!360651 lambda!360580)))

(declare-fun bs!1652243 () Bool)

(assert (= bs!1652243 (and d!2040995 b!6503793)))

(assert (=> bs!1652243 (not (= lambda!360651 lambda!360571))))

(declare-fun bs!1652244 () Bool)

(assert (= bs!1652244 (and d!2040995 b!6504701)))

(assert (=> bs!1652244 (not (= lambda!360651 lambda!360632))))

(declare-fun bs!1652245 () Bool)

(assert (= bs!1652245 (and d!2040995 b!6504571)))

(assert (=> bs!1652245 (not (= lambda!360651 lambda!360624))))

(declare-fun bs!1652246 () Bool)

(assert (= bs!1652246 (and d!2040995 b!6503967)))

(assert (=> bs!1652246 (not (= lambda!360651 lambda!360587))))

(declare-fun bs!1652247 () Bool)

(assert (= bs!1652247 (and d!2040995 b!6504698)))

(assert (=> bs!1652247 (not (= lambda!360651 lambda!360635))))

(assert (=> d!2040995 true))

(assert (=> d!2040995 true))

(assert (=> d!2040995 true))

(assert (=> d!2040995 (= (isDefined!12977 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) Nil!65325 s!2326 s!2326)) (Exists!3453 lambda!360651))))

(assert (=> d!2040995 true))

(declare-fun _$89!2755 () Unit!158867)

(assert (=> d!2040995 (= (choose!48308 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326) _$89!2755)))

(declare-fun bs!1652248 () Bool)

(assert (= bs!1652248 d!2040995))

(assert (=> bs!1652248 m!7290422))

(assert (=> bs!1652248 m!7290422))

(assert (=> bs!1652248 m!7290424))

(declare-fun m!7292170 () Bool)

(assert (=> bs!1652248 m!7292170))

(assert (=> d!2040517 d!2040995))

(declare-fun d!2040997 () Bool)

(declare-fun c!1192958 () Bool)

(assert (=> d!2040997 (= c!1192958 ((_ is Nil!65324) lt!2392515))))

(declare-fun e!3941542 () (InoxSet Regex!16383))

(assert (=> d!2040997 (= (content!12467 lt!2392515) e!3941542)))

(declare-fun b!6505020 () Bool)

(assert (=> b!6505020 (= e!3941542 ((as const (Array Regex!16383 Bool)) false))))

(declare-fun b!6505021 () Bool)

(assert (=> b!6505021 (= e!3941542 ((_ map or) (store ((as const (Array Regex!16383 Bool)) false) (h!71772 lt!2392515) true) (content!12467 (t!379082 lt!2392515))))))

(assert (= (and d!2040997 c!1192958) b!6505020))

(assert (= (and d!2040997 (not c!1192958)) b!6505021))

(declare-fun m!7292172 () Bool)

(assert (=> b!6505021 m!7292172))

(declare-fun m!7292174 () Bool)

(assert (=> b!6505021 m!7292174))

(assert (=> d!2040539 d!2040997))

(declare-fun d!2040999 () Bool)

(declare-fun c!1192959 () Bool)

(assert (=> d!2040999 (= c!1192959 ((_ is Nil!65324) (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))

(declare-fun e!3941543 () (InoxSet Regex!16383))

(assert (=> d!2040999 (= (content!12467 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) e!3941543)))

(declare-fun b!6505022 () Bool)

(assert (=> b!6505022 (= e!3941543 ((as const (Array Regex!16383 Bool)) false))))

(declare-fun b!6505023 () Bool)

(assert (=> b!6505023 (= e!3941543 ((_ map or) (store ((as const (Array Regex!16383 Bool)) false) (h!71772 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) true) (content!12467 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))))

(assert (= (and d!2040999 c!1192959) b!6505022))

(assert (= (and d!2040999 (not c!1192959)) b!6505023))

(declare-fun m!7292176 () Bool)

(assert (=> b!6505023 m!7292176))

(declare-fun m!7292178 () Bool)

(assert (=> b!6505023 m!7292178))

(assert (=> d!2040539 d!2040999))

(declare-fun d!2041001 () Bool)

(declare-fun c!1192960 () Bool)

(assert (=> d!2041001 (= c!1192960 ((_ is Nil!65324) lt!2392391))))

(declare-fun e!3941544 () (InoxSet Regex!16383))

(assert (=> d!2041001 (= (content!12467 lt!2392391) e!3941544)))

(declare-fun b!6505024 () Bool)

(assert (=> b!6505024 (= e!3941544 ((as const (Array Regex!16383 Bool)) false))))

(declare-fun b!6505025 () Bool)

(assert (=> b!6505025 (= e!3941544 ((_ map or) (store ((as const (Array Regex!16383 Bool)) false) (h!71772 lt!2392391) true) (content!12467 (t!379082 lt!2392391))))))

(assert (= (and d!2041001 c!1192960) b!6505024))

(assert (= (and d!2041001 (not c!1192960)) b!6505025))

(declare-fun m!7292180 () Bool)

(assert (=> b!6505025 m!7292180))

(declare-fun m!7292182 () Bool)

(assert (=> b!6505025 m!7292182))

(assert (=> d!2040539 d!2041001))

(declare-fun bm!563803 () Bool)

(declare-fun call!563808 () List!65448)

(declare-fun call!563812 () List!65448)

(assert (=> bm!563803 (= call!563808 call!563812)))

(declare-fun b!6505026 () Bool)

(declare-fun e!3941550 () (InoxSet Context!11534))

(assert (=> b!6505026 (= e!3941550 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505027 () Bool)

(declare-fun e!3941546 () (InoxSet Context!11534))

(declare-fun e!3941547 () (InoxSet Context!11534))

(assert (=> b!6505027 (= e!3941546 e!3941547)))

(declare-fun c!1192964 () Bool)

(assert (=> b!6505027 (= c!1192964 ((_ is Union!16383) (h!71772 (exprs!6267 lt!2392388))))))

(declare-fun b!6505028 () Bool)

(declare-fun c!1192963 () Bool)

(declare-fun e!3941549 () Bool)

(assert (=> b!6505028 (= c!1192963 e!3941549)))

(declare-fun res!2671345 () Bool)

(assert (=> b!6505028 (=> (not res!2671345) (not e!3941549))))

(assert (=> b!6505028 (= res!2671345 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392388))))))

(declare-fun e!3941545 () (InoxSet Context!11534))

(assert (=> b!6505028 (= e!3941547 e!3941545)))

(declare-fun b!6505029 () Bool)

(declare-fun e!3941548 () (InoxSet Context!11534))

(assert (=> b!6505029 (= e!3941545 e!3941548)))

(declare-fun c!1192962 () Bool)

(assert (=> b!6505029 (= c!1192962 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392388))))))

(declare-fun b!6505030 () Bool)

(declare-fun call!563810 () (InoxSet Context!11534))

(assert (=> b!6505030 (= e!3941548 call!563810)))

(declare-fun d!2041003 () Bool)

(declare-fun c!1192965 () Bool)

(assert (=> d!2041003 (= c!1192965 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 lt!2392388))) (= (c!1192455 (h!71772 (exprs!6267 lt!2392388))) (h!71773 s!2326))))))

(assert (=> d!2041003 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392388)) (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (h!71773 s!2326)) e!3941546)))

(declare-fun b!6505031 () Bool)

(declare-fun call!563811 () (InoxSet Context!11534))

(declare-fun call!563809 () (InoxSet Context!11534))

(assert (=> b!6505031 (= e!3941547 ((_ map or) call!563811 call!563809))))

(declare-fun b!6505032 () Bool)

(assert (=> b!6505032 (= e!3941550 call!563810)))

(declare-fun bm!563804 () Bool)

(assert (=> bm!563804 (= call!563809 (derivationStepZipperDown!1631 (ite c!1192964 (regTwo!33279 (h!71772 (exprs!6267 lt!2392388))) (regOne!33278 (h!71772 (exprs!6267 lt!2392388)))) (ite c!1192964 (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (Context!11535 call!563812)) (h!71773 s!2326)))))

(declare-fun bm!563805 () Bool)

(declare-fun call!563813 () (InoxSet Context!11534))

(assert (=> bm!563805 (= call!563810 call!563813)))

(declare-fun bm!563806 () Bool)

(assert (=> bm!563806 (= call!563813 call!563811)))

(declare-fun bm!563807 () Bool)

(assert (=> bm!563807 (= call!563812 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392388)))) (ite (or c!1192963 c!1192962) (regTwo!33278 (h!71772 (exprs!6267 lt!2392388))) (h!71772 (exprs!6267 lt!2392388)))))))

(declare-fun b!6505033 () Bool)

(assert (=> b!6505033 (= e!3941549 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 lt!2392388)))))))

(declare-fun bm!563808 () Bool)

(assert (=> bm!563808 (= call!563811 (derivationStepZipperDown!1631 (ite c!1192964 (regOne!33279 (h!71772 (exprs!6267 lt!2392388))) (ite c!1192963 (regTwo!33278 (h!71772 (exprs!6267 lt!2392388))) (ite c!1192962 (regOne!33278 (h!71772 (exprs!6267 lt!2392388))) (reg!16712 (h!71772 (exprs!6267 lt!2392388)))))) (ite (or c!1192964 c!1192963) (Context!11535 (t!379082 (exprs!6267 lt!2392388))) (Context!11535 call!563808)) (h!71773 s!2326)))))

(declare-fun b!6505034 () Bool)

(assert (=> b!6505034 (= e!3941545 ((_ map or) call!563809 call!563813))))

(declare-fun b!6505035 () Bool)

(assert (=> b!6505035 (= e!3941546 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 lt!2392388))) true))))

(declare-fun b!6505036 () Bool)

(declare-fun c!1192961 () Bool)

(assert (=> b!6505036 (= c!1192961 ((_ is Star!16383) (h!71772 (exprs!6267 lt!2392388))))))

(assert (=> b!6505036 (= e!3941548 e!3941550)))

(assert (= (and d!2041003 c!1192965) b!6505035))

(assert (= (and d!2041003 (not c!1192965)) b!6505027))

(assert (= (and b!6505027 c!1192964) b!6505031))

(assert (= (and b!6505027 (not c!1192964)) b!6505028))

(assert (= (and b!6505028 res!2671345) b!6505033))

(assert (= (and b!6505028 c!1192963) b!6505034))

(assert (= (and b!6505028 (not c!1192963)) b!6505029))

(assert (= (and b!6505029 c!1192962) b!6505030))

(assert (= (and b!6505029 (not c!1192962)) b!6505036))

(assert (= (and b!6505036 c!1192961) b!6505032))

(assert (= (and b!6505036 (not c!1192961)) b!6505026))

(assert (= (or b!6505030 b!6505032) bm!563803))

(assert (= (or b!6505030 b!6505032) bm!563805))

(assert (= (or b!6505034 bm!563803) bm!563807))

(assert (= (or b!6505034 bm!563805) bm!563806))

(assert (= (or b!6505031 b!6505034) bm!563804))

(assert (= (or b!6505031 bm!563806) bm!563808))

(declare-fun m!7292184 () Bool)

(assert (=> bm!563808 m!7292184))

(declare-fun m!7292186 () Bool)

(assert (=> bm!563807 m!7292186))

(declare-fun m!7292188 () Bool)

(assert (=> b!6505033 m!7292188))

(declare-fun m!7292190 () Bool)

(assert (=> b!6505035 m!7292190))

(declare-fun m!7292192 () Bool)

(assert (=> bm!563804 m!7292192))

(assert (=> bm!563560 d!2041003))

(declare-fun bs!1652249 () Bool)

(declare-fun d!2041005 () Bool)

(assert (= bs!1652249 (and d!2041005 d!2040829)))

(declare-fun lambda!360652 () Int)

(assert (=> bs!1652249 (= lambda!360652 lambda!360627)))

(declare-fun bs!1652250 () Bool)

(assert (= bs!1652250 (and d!2041005 d!2040953)))

(assert (=> bs!1652250 (= lambda!360652 lambda!360647)))

(assert (=> d!2041005 (= (nullableZipper!2138 lt!2392396) (exists!2624 lt!2392396 lambda!360652))))

(declare-fun bs!1652251 () Bool)

(assert (= bs!1652251 d!2041005))

(declare-fun m!7292194 () Bool)

(assert (=> bs!1652251 m!7292194))

(assert (=> b!6503752 d!2041005))

(declare-fun bm!563809 () Bool)

(declare-fun call!563814 () List!65448)

(declare-fun call!563818 () List!65448)

(assert (=> bm!563809 (= call!563814 call!563818)))

(declare-fun b!6505037 () Bool)

(declare-fun e!3941556 () (InoxSet Context!11534))

(assert (=> b!6505037 (= e!3941556 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505038 () Bool)

(declare-fun e!3941552 () (InoxSet Context!11534))

(declare-fun e!3941553 () (InoxSet Context!11534))

(assert (=> b!6505038 (= e!3941552 e!3941553)))

(declare-fun c!1192969 () Bool)

(assert (=> b!6505038 (= c!1192969 ((_ is Union!16383) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))))))

(declare-fun b!6505039 () Bool)

(declare-fun c!1192968 () Bool)

(declare-fun e!3941555 () Bool)

(assert (=> b!6505039 (= c!1192968 e!3941555)))

(declare-fun res!2671346 () Bool)

(assert (=> b!6505039 (=> (not res!2671346) (not e!3941555))))

(assert (=> b!6505039 (= res!2671346 ((_ is Concat!25228) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))))))

(declare-fun e!3941551 () (InoxSet Context!11534))

(assert (=> b!6505039 (= e!3941553 e!3941551)))

(declare-fun b!6505040 () Bool)

(declare-fun e!3941554 () (InoxSet Context!11534))

(assert (=> b!6505040 (= e!3941551 e!3941554)))

(declare-fun c!1192967 () Bool)

(assert (=> b!6505040 (= c!1192967 ((_ is Concat!25228) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))))))

(declare-fun b!6505041 () Bool)

(declare-fun call!563816 () (InoxSet Context!11534))

(assert (=> b!6505041 (= e!3941554 call!563816)))

(declare-fun c!1192970 () Bool)

(declare-fun d!2041007 () Bool)

(assert (=> d!2041007 (= c!1192970 (and ((_ is ElementMatch!16383) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (= (c!1192455 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (h!71773 s!2326))))))

(assert (=> d!2041007 (= (derivationStepZipperDown!1631 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))) (ite c!1192628 lt!2392388 (Context!11535 call!563591)) (h!71773 s!2326)) e!3941552)))

(declare-fun b!6505042 () Bool)

(declare-fun call!563817 () (InoxSet Context!11534))

(declare-fun call!563815 () (InoxSet Context!11534))

(assert (=> b!6505042 (= e!3941553 ((_ map or) call!563817 call!563815))))

(declare-fun b!6505043 () Bool)

(assert (=> b!6505043 (= e!3941556 call!563816)))

(declare-fun bm!563810 () Bool)

(assert (=> bm!563810 (= call!563815 (derivationStepZipperDown!1631 (ite c!1192969 (regTwo!33279 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (regOne!33278 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))) (ite c!1192969 (ite c!1192628 lt!2392388 (Context!11535 call!563591)) (Context!11535 call!563818)) (h!71773 s!2326)))))

(declare-fun bm!563811 () Bool)

(declare-fun call!563819 () (InoxSet Context!11534))

(assert (=> bm!563811 (= call!563816 call!563819)))

(declare-fun bm!563812 () Bool)

(assert (=> bm!563812 (= call!563819 call!563817)))

(declare-fun bm!563813 () Bool)

(assert (=> bm!563813 (= call!563818 ($colon$colon!2234 (exprs!6267 (ite c!1192628 lt!2392388 (Context!11535 call!563591))) (ite (or c!1192968 c!1192967) (regTwo!33278 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))))))

(declare-fun b!6505044 () Bool)

(assert (=> b!6505044 (= e!3941555 (nullable!6376 (regOne!33278 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))))))

(declare-fun bm!563814 () Bool)

(assert (=> bm!563814 (= call!563817 (derivationStepZipperDown!1631 (ite c!1192969 (regOne!33279 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (ite c!1192968 (regTwo!33278 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (ite c!1192967 (regOne!33278 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))) (reg!16712 (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))))) (ite (or c!1192969 c!1192968) (ite c!1192628 lt!2392388 (Context!11535 call!563591)) (Context!11535 call!563814)) (h!71773 s!2326)))))

(declare-fun b!6505045 () Bool)

(assert (=> b!6505045 (= e!3941551 ((_ map or) call!563815 call!563819))))

(declare-fun b!6505046 () Bool)

(assert (=> b!6505046 (= e!3941552 (store ((as const (Array Context!11534 Bool)) false) (ite c!1192628 lt!2392388 (Context!11535 call!563591)) true))))

(declare-fun b!6505047 () Bool)

(declare-fun c!1192966 () Bool)

(assert (=> b!6505047 (= c!1192966 ((_ is Star!16383) (ite c!1192628 (regTwo!33279 (reg!16712 (regOne!33278 r!7292))) (regOne!33278 (reg!16712 (regOne!33278 r!7292))))))))

(assert (=> b!6505047 (= e!3941554 e!3941556)))

(assert (= (and d!2041007 c!1192970) b!6505046))

(assert (= (and d!2041007 (not c!1192970)) b!6505038))

(assert (= (and b!6505038 c!1192969) b!6505042))

(assert (= (and b!6505038 (not c!1192969)) b!6505039))

(assert (= (and b!6505039 res!2671346) b!6505044))

(assert (= (and b!6505039 c!1192968) b!6505045))

(assert (= (and b!6505039 (not c!1192968)) b!6505040))

(assert (= (and b!6505040 c!1192967) b!6505041))

(assert (= (and b!6505040 (not c!1192967)) b!6505047))

(assert (= (and b!6505047 c!1192966) b!6505043))

(assert (= (and b!6505047 (not c!1192966)) b!6505037))

(assert (= (or b!6505041 b!6505043) bm!563809))

(assert (= (or b!6505041 b!6505043) bm!563811))

(assert (= (or b!6505045 bm!563809) bm!563813))

(assert (= (or b!6505045 bm!563811) bm!563812))

(assert (= (or b!6505042 b!6505045) bm!563810))

(assert (= (or b!6505042 bm!563812) bm!563814))

(declare-fun m!7292196 () Bool)

(assert (=> bm!563814 m!7292196))

(declare-fun m!7292198 () Bool)

(assert (=> bm!563813 m!7292198))

(declare-fun m!7292200 () Bool)

(assert (=> b!6505044 m!7292200))

(declare-fun m!7292202 () Bool)

(assert (=> b!6505046 m!7292202))

(declare-fun m!7292204 () Bool)

(assert (=> bm!563810 m!7292204))

(assert (=> bm!563583 d!2041007))

(assert (=> d!2040533 d!2040941))

(declare-fun b!6505048 () Bool)

(declare-fun e!3941557 () Bool)

(declare-fun e!3941563 () Bool)

(assert (=> b!6505048 (= e!3941557 e!3941563)))

(declare-fun res!2671347 () Bool)

(assert (=> b!6505048 (=> (not res!2671347) (not e!3941563))))

(declare-fun call!563821 () Bool)

(assert (=> b!6505048 (= res!2671347 call!563821)))

(declare-fun c!1192972 () Bool)

(declare-fun call!563820 () Bool)

(declare-fun c!1192971 () Bool)

(declare-fun bm!563815 () Bool)

(assert (=> bm!563815 (= call!563820 (validRegex!8119 (ite c!1192972 (reg!16712 lt!2392375) (ite c!1192971 (regOne!33279 lt!2392375) (regOne!33278 lt!2392375)))))))

(declare-fun b!6505049 () Bool)

(declare-fun e!3941562 () Bool)

(declare-fun call!563822 () Bool)

(assert (=> b!6505049 (= e!3941562 call!563822)))

(declare-fun b!6505050 () Bool)

(declare-fun res!2671348 () Bool)

(assert (=> b!6505050 (=> res!2671348 e!3941557)))

(assert (=> b!6505050 (= res!2671348 (not ((_ is Concat!25228) lt!2392375)))))

(declare-fun e!3941558 () Bool)

(assert (=> b!6505050 (= e!3941558 e!3941557)))

(declare-fun d!2041009 () Bool)

(declare-fun res!2671351 () Bool)

(declare-fun e!3941560 () Bool)

(assert (=> d!2041009 (=> res!2671351 e!3941560)))

(assert (=> d!2041009 (= res!2671351 ((_ is ElementMatch!16383) lt!2392375))))

(assert (=> d!2041009 (= (validRegex!8119 lt!2392375) e!3941560)))

(declare-fun bm!563816 () Bool)

(assert (=> bm!563816 (= call!563821 call!563820)))

(declare-fun b!6505051 () Bool)

(declare-fun e!3941559 () Bool)

(declare-fun e!3941561 () Bool)

(assert (=> b!6505051 (= e!3941559 e!3941561)))

(declare-fun res!2671350 () Bool)

(assert (=> b!6505051 (= res!2671350 (not (nullable!6376 (reg!16712 lt!2392375))))))

(assert (=> b!6505051 (=> (not res!2671350) (not e!3941561))))

(declare-fun b!6505052 () Bool)

(assert (=> b!6505052 (= e!3941559 e!3941558)))

(assert (=> b!6505052 (= c!1192971 ((_ is Union!16383) lt!2392375))))

(declare-fun b!6505053 () Bool)

(assert (=> b!6505053 (= e!3941561 call!563820)))

(declare-fun b!6505054 () Bool)

(assert (=> b!6505054 (= e!3941560 e!3941559)))

(assert (=> b!6505054 (= c!1192972 ((_ is Star!16383) lt!2392375))))

(declare-fun bm!563817 () Bool)

(assert (=> bm!563817 (= call!563822 (validRegex!8119 (ite c!1192971 (regTwo!33279 lt!2392375) (regTwo!33278 lt!2392375))))))

(declare-fun b!6505055 () Bool)

(assert (=> b!6505055 (= e!3941563 call!563822)))

(declare-fun b!6505056 () Bool)

(declare-fun res!2671349 () Bool)

(assert (=> b!6505056 (=> (not res!2671349) (not e!3941562))))

(assert (=> b!6505056 (= res!2671349 call!563821)))

(assert (=> b!6505056 (= e!3941558 e!3941562)))

(assert (= (and d!2041009 (not res!2671351)) b!6505054))

(assert (= (and b!6505054 c!1192972) b!6505051))

(assert (= (and b!6505054 (not c!1192972)) b!6505052))

(assert (= (and b!6505051 res!2671350) b!6505053))

(assert (= (and b!6505052 c!1192971) b!6505056))

(assert (= (and b!6505052 (not c!1192971)) b!6505050))

(assert (= (and b!6505056 res!2671349) b!6505049))

(assert (= (and b!6505050 (not res!2671348)) b!6505048))

(assert (= (and b!6505048 res!2671347) b!6505055))

(assert (= (or b!6505049 b!6505055) bm!563817))

(assert (= (or b!6505056 b!6505048) bm!563816))

(assert (= (or b!6505053 bm!563816) bm!563815))

(declare-fun m!7292206 () Bool)

(assert (=> bm!563815 m!7292206))

(declare-fun m!7292208 () Bool)

(assert (=> b!6505051 m!7292208))

(declare-fun m!7292210 () Bool)

(assert (=> bm!563817 m!7292210))

(assert (=> d!2040533 d!2041009))

(assert (=> bs!1651791 d!2040487))

(declare-fun d!2041011 () Bool)

(declare-fun res!2671352 () Bool)

(declare-fun e!3941564 () Bool)

(assert (=> d!2041011 (=> res!2671352 e!3941564)))

(assert (=> d!2041011 (= res!2671352 ((_ is Nil!65324) (exprs!6267 lt!2392390)))))

(assert (=> d!2041011 (= (forall!15564 (exprs!6267 lt!2392390) lambda!360589) e!3941564)))

(declare-fun b!6505057 () Bool)

(declare-fun e!3941565 () Bool)

(assert (=> b!6505057 (= e!3941564 e!3941565)))

(declare-fun res!2671353 () Bool)

(assert (=> b!6505057 (=> (not res!2671353) (not e!3941565))))

(assert (=> b!6505057 (= res!2671353 (dynLambda!25954 lambda!360589 (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun b!6505058 () Bool)

(assert (=> b!6505058 (= e!3941565 (forall!15564 (t!379082 (exprs!6267 lt!2392390)) lambda!360589))))

(assert (= (and d!2041011 (not res!2671352)) b!6505057))

(assert (= (and b!6505057 res!2671353) b!6505058))

(declare-fun b_lambda!246275 () Bool)

(assert (=> (not b_lambda!246275) (not b!6505057)))

(declare-fun m!7292212 () Bool)

(assert (=> b!6505057 m!7292212))

(declare-fun m!7292214 () Bool)

(assert (=> b!6505058 m!7292214))

(assert (=> d!2040541 d!2041011))

(assert (=> d!2040483 d!2040475))

(declare-fun d!2041013 () Bool)

(assert (=> d!2041013 (= (flatMap!1888 z!1189 lambda!360520) (dynLambda!25950 lambda!360520 (h!71774 zl!343)))))

(assert (=> d!2041013 true))

(declare-fun _$13!3761 () Unit!158867)

(assert (=> d!2041013 (= (choose!48302 z!1189 (h!71774 zl!343) lambda!360520) _$13!3761)))

(declare-fun b_lambda!246277 () Bool)

(assert (=> (not b_lambda!246277) (not d!2041013)))

(declare-fun bs!1652252 () Bool)

(assert (= bs!1652252 d!2041013))

(assert (=> bs!1652252 m!7290442))

(assert (=> bs!1652252 m!7290986))

(assert (=> d!2040483 d!2041013))

(assert (=> bs!1651795 d!2040461))

(declare-fun b!6505059 () Bool)

(declare-fun e!3941566 () Bool)

(declare-fun e!3941572 () Bool)

(assert (=> b!6505059 (= e!3941566 e!3941572)))

(declare-fun res!2671354 () Bool)

(assert (=> b!6505059 (=> (not res!2671354) (not e!3941572))))

(declare-fun call!563824 () Bool)

(assert (=> b!6505059 (= res!2671354 call!563824)))

(declare-fun bm!563818 () Bool)

(declare-fun c!1192973 () Bool)

(declare-fun call!563823 () Bool)

(declare-fun c!1192974 () Bool)

(assert (=> bm!563818 (= call!563823 (validRegex!8119 (ite c!1192974 (reg!16712 lt!2392477) (ite c!1192973 (regOne!33279 lt!2392477) (regOne!33278 lt!2392477)))))))

(declare-fun b!6505060 () Bool)

(declare-fun e!3941571 () Bool)

(declare-fun call!563825 () Bool)

(assert (=> b!6505060 (= e!3941571 call!563825)))

(declare-fun b!6505061 () Bool)

(declare-fun res!2671355 () Bool)

(assert (=> b!6505061 (=> res!2671355 e!3941566)))

(assert (=> b!6505061 (= res!2671355 (not ((_ is Concat!25228) lt!2392477)))))

(declare-fun e!3941567 () Bool)

(assert (=> b!6505061 (= e!3941567 e!3941566)))

(declare-fun d!2041015 () Bool)

(declare-fun res!2671358 () Bool)

(declare-fun e!3941569 () Bool)

(assert (=> d!2041015 (=> res!2671358 e!3941569)))

(assert (=> d!2041015 (= res!2671358 ((_ is ElementMatch!16383) lt!2392477))))

(assert (=> d!2041015 (= (validRegex!8119 lt!2392477) e!3941569)))

(declare-fun bm!563819 () Bool)

(assert (=> bm!563819 (= call!563824 call!563823)))

(declare-fun b!6505062 () Bool)

(declare-fun e!3941568 () Bool)

(declare-fun e!3941570 () Bool)

(assert (=> b!6505062 (= e!3941568 e!3941570)))

(declare-fun res!2671357 () Bool)

(assert (=> b!6505062 (= res!2671357 (not (nullable!6376 (reg!16712 lt!2392477))))))

(assert (=> b!6505062 (=> (not res!2671357) (not e!3941570))))

(declare-fun b!6505063 () Bool)

(assert (=> b!6505063 (= e!3941568 e!3941567)))

(assert (=> b!6505063 (= c!1192973 ((_ is Union!16383) lt!2392477))))

(declare-fun b!6505064 () Bool)

(assert (=> b!6505064 (= e!3941570 call!563823)))

(declare-fun b!6505065 () Bool)

(assert (=> b!6505065 (= e!3941569 e!3941568)))

(assert (=> b!6505065 (= c!1192974 ((_ is Star!16383) lt!2392477))))

(declare-fun bm!563820 () Bool)

(assert (=> bm!563820 (= call!563825 (validRegex!8119 (ite c!1192973 (regTwo!33279 lt!2392477) (regTwo!33278 lt!2392477))))))

(declare-fun b!6505066 () Bool)

(assert (=> b!6505066 (= e!3941572 call!563825)))

(declare-fun b!6505067 () Bool)

(declare-fun res!2671356 () Bool)

(assert (=> b!6505067 (=> (not res!2671356) (not e!3941571))))

(assert (=> b!6505067 (= res!2671356 call!563824)))

(assert (=> b!6505067 (= e!3941567 e!3941571)))

(assert (= (and d!2041015 (not res!2671358)) b!6505065))

(assert (= (and b!6505065 c!1192974) b!6505062))

(assert (= (and b!6505065 (not c!1192974)) b!6505063))

(assert (= (and b!6505062 res!2671357) b!6505064))

(assert (= (and b!6505063 c!1192973) b!6505067))

(assert (= (and b!6505063 (not c!1192973)) b!6505061))

(assert (= (and b!6505067 res!2671356) b!6505060))

(assert (= (and b!6505061 (not res!2671355)) b!6505059))

(assert (= (and b!6505059 res!2671354) b!6505066))

(assert (= (or b!6505060 b!6505066) bm!563820))

(assert (= (or b!6505067 b!6505059) bm!563819))

(assert (= (or b!6505064 bm!563819) bm!563818))

(declare-fun m!7292216 () Bool)

(assert (=> bm!563818 m!7292216))

(declare-fun m!7292218 () Bool)

(assert (=> b!6505062 m!7292218))

(declare-fun m!7292220 () Bool)

(assert (=> bm!563820 m!7292220))

(assert (=> d!2040469 d!2041015))

(declare-fun bs!1652253 () Bool)

(declare-fun d!2041017 () Bool)

(assert (= bs!1652253 (and d!2041017 d!2040541)))

(declare-fun lambda!360653 () Int)

(assert (=> bs!1652253 (= lambda!360653 lambda!360589)))

(declare-fun bs!1652254 () Bool)

(assert (= bs!1652254 (and d!2041017 d!2040947)))

(assert (=> bs!1652254 (= lambda!360653 lambda!360645)))

(declare-fun bs!1652255 () Bool)

(assert (= bs!1652255 (and d!2041017 d!2040859)))

(assert (=> bs!1652255 (= lambda!360653 lambda!360630)))

(declare-fun bs!1652256 () Bool)

(assert (= bs!1652256 (and d!2041017 d!2040925)))

(assert (=> bs!1652256 (= lambda!360653 lambda!360643)))

(declare-fun bs!1652257 () Bool)

(assert (= bs!1652257 (and d!2041017 d!2040443)))

(assert (=> bs!1652257 (= lambda!360653 lambda!360562)))

(declare-fun bs!1652258 () Bool)

(assert (= bs!1652258 (and d!2041017 d!2040441)))

(assert (=> bs!1652258 (= lambda!360653 lambda!360559)))

(declare-fun bs!1652259 () Bool)

(assert (= bs!1652259 (and d!2041017 d!2040503)))

(assert (=> bs!1652259 (= lambda!360653 lambda!360574)))

(declare-fun bs!1652260 () Bool)

(assert (= bs!1652260 (and d!2041017 d!2040853)))

(assert (=> bs!1652260 (= lambda!360653 lambda!360628)))

(declare-fun bs!1652261 () Bool)

(assert (= bs!1652261 (and d!2041017 d!2040509)))

(assert (=> bs!1652261 (= lambda!360653 lambda!360577)))

(declare-fun bs!1652262 () Bool)

(assert (= bs!1652262 (and d!2041017 d!2040951)))

(assert (=> bs!1652262 (= lambda!360653 lambda!360646)))

(declare-fun bs!1652263 () Bool)

(assert (= bs!1652263 (and d!2041017 b!6503167)))

(assert (=> bs!1652263 (= lambda!360653 lambda!360522)))

(declare-fun bs!1652264 () Bool)

(assert (= bs!1652264 (and d!2041017 d!2040549)))

(assert (=> bs!1652264 (= lambda!360653 lambda!360590)))

(declare-fun b!6505068 () Bool)

(declare-fun e!3941575 () Regex!16383)

(assert (=> b!6505068 (= e!3941575 (Union!16383 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))) (generalisedUnion!2227 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))))

(declare-fun b!6505069 () Bool)

(declare-fun e!3941578 () Bool)

(declare-fun e!3941573 () Bool)

(assert (=> b!6505069 (= e!3941578 e!3941573)))

(declare-fun c!1192977 () Bool)

(assert (=> b!6505069 (= c!1192977 (isEmpty!37530 (tail!12322 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326)))))))

(declare-fun e!3941574 () Bool)

(assert (=> d!2041017 e!3941574))

(declare-fun res!2671359 () Bool)

(assert (=> d!2041017 (=> (not res!2671359) (not e!3941574))))

(declare-fun lt!2392568 () Regex!16383)

(assert (=> d!2041017 (= res!2671359 (validRegex!8119 lt!2392568))))

(declare-fun e!3941576 () Regex!16383)

(assert (=> d!2041017 (= lt!2392568 e!3941576)))

(declare-fun c!1192976 () Bool)

(declare-fun e!3941577 () Bool)

(assert (=> d!2041017 (= c!1192976 e!3941577)))

(declare-fun res!2671360 () Bool)

(assert (=> d!2041017 (=> (not res!2671360) (not e!3941577))))

(assert (=> d!2041017 (= res!2671360 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))

(assert (=> d!2041017 (forall!15564 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326)) lambda!360653)))

(assert (=> d!2041017 (= (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))) lt!2392568)))

(declare-fun b!6505070 () Bool)

(assert (=> b!6505070 (= e!3941577 (isEmpty!37530 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326)))))))

(declare-fun b!6505071 () Bool)

(assert (=> b!6505071 (= e!3941576 e!3941575)))

(declare-fun c!1192978 () Bool)

(assert (=> b!6505071 (= c!1192978 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))

(declare-fun b!6505072 () Bool)

(assert (=> b!6505072 (= e!3941573 (isUnion!1211 lt!2392568))))

(declare-fun b!6505073 () Bool)

(assert (=> b!6505073 (= e!3941576 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))

(declare-fun b!6505074 () Bool)

(assert (=> b!6505074 (= e!3941574 e!3941578)))

(declare-fun c!1192975 () Bool)

(assert (=> b!6505074 (= c!1192975 (isEmpty!37530 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326))))))

(declare-fun b!6505075 () Bool)

(assert (=> b!6505075 (= e!3941573 (= lt!2392568 (head!13237 (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326)))))))

(declare-fun b!6505076 () Bool)

(assert (=> b!6505076 (= e!3941575 EmptyLang!16383)))

(declare-fun b!6505077 () Bool)

(assert (=> b!6505077 (= e!3941578 (isEmptyLang!1781 lt!2392568))))

(assert (= (and d!2041017 res!2671360) b!6505070))

(assert (= (and d!2041017 c!1192976) b!6505073))

(assert (= (and d!2041017 (not c!1192976)) b!6505071))

(assert (= (and b!6505071 c!1192978) b!6505068))

(assert (= (and b!6505071 (not c!1192978)) b!6505076))

(assert (= (and d!2041017 res!2671359) b!6505074))

(assert (= (and b!6505074 c!1192975) b!6505077))

(assert (= (and b!6505074 (not c!1192975)) b!6505069))

(assert (= (and b!6505069 c!1192977) b!6505075))

(assert (= (and b!6505069 (not c!1192977)) b!6505072))

(assert (=> b!6505069 m!7290944))

(declare-fun m!7292222 () Bool)

(assert (=> b!6505069 m!7292222))

(assert (=> b!6505069 m!7292222))

(declare-fun m!7292224 () Bool)

(assert (=> b!6505069 m!7292224))

(declare-fun m!7292226 () Bool)

(assert (=> b!6505077 m!7292226))

(declare-fun m!7292228 () Bool)

(assert (=> d!2041017 m!7292228))

(assert (=> d!2041017 m!7290944))

(declare-fun m!7292230 () Bool)

(assert (=> d!2041017 m!7292230))

(declare-fun m!7292232 () Bool)

(assert (=> b!6505072 m!7292232))

(assert (=> b!6505074 m!7290944))

(declare-fun m!7292234 () Bool)

(assert (=> b!6505074 m!7292234))

(declare-fun m!7292236 () Bool)

(assert (=> b!6505070 m!7292236))

(assert (=> b!6505075 m!7290944))

(declare-fun m!7292238 () Bool)

(assert (=> b!6505075 m!7292238))

(declare-fun m!7292240 () Bool)

(assert (=> b!6505068 m!7292240))

(assert (=> d!2040469 d!2041017))

(declare-fun bs!1652265 () Bool)

(declare-fun d!2041019 () Bool)

(assert (= bs!1652265 (and d!2041019 d!2040541)))

(declare-fun lambda!360654 () Int)

(assert (=> bs!1652265 (= lambda!360654 lambda!360589)))

(declare-fun bs!1652266 () Bool)

(assert (= bs!1652266 (and d!2041019 d!2040947)))

(assert (=> bs!1652266 (= lambda!360654 lambda!360645)))

(declare-fun bs!1652267 () Bool)

(assert (= bs!1652267 (and d!2041019 d!2040859)))

(assert (=> bs!1652267 (= lambda!360654 lambda!360630)))

(declare-fun bs!1652268 () Bool)

(assert (= bs!1652268 (and d!2041019 d!2040925)))

(assert (=> bs!1652268 (= lambda!360654 lambda!360643)))

(declare-fun bs!1652269 () Bool)

(assert (= bs!1652269 (and d!2041019 d!2040443)))

(assert (=> bs!1652269 (= lambda!360654 lambda!360562)))

(declare-fun bs!1652270 () Bool)

(assert (= bs!1652270 (and d!2041019 d!2040441)))

(assert (=> bs!1652270 (= lambda!360654 lambda!360559)))

(declare-fun bs!1652271 () Bool)

(assert (= bs!1652271 (and d!2041019 d!2040503)))

(assert (=> bs!1652271 (= lambda!360654 lambda!360574)))

(declare-fun bs!1652272 () Bool)

(assert (= bs!1652272 (and d!2041019 d!2041017)))

(assert (=> bs!1652272 (= lambda!360654 lambda!360653)))

(declare-fun bs!1652273 () Bool)

(assert (= bs!1652273 (and d!2041019 d!2040853)))

(assert (=> bs!1652273 (= lambda!360654 lambda!360628)))

(declare-fun bs!1652274 () Bool)

(assert (= bs!1652274 (and d!2041019 d!2040509)))

(assert (=> bs!1652274 (= lambda!360654 lambda!360577)))

(declare-fun bs!1652275 () Bool)

(assert (= bs!1652275 (and d!2041019 d!2040951)))

(assert (=> bs!1652275 (= lambda!360654 lambda!360646)))

(declare-fun bs!1652276 () Bool)

(assert (= bs!1652276 (and d!2041019 b!6503167)))

(assert (=> bs!1652276 (= lambda!360654 lambda!360522)))

(declare-fun bs!1652277 () Bool)

(assert (= bs!1652277 (and d!2041019 d!2040549)))

(assert (=> bs!1652277 (= lambda!360654 lambda!360590)))

(declare-fun lt!2392569 () List!65448)

(assert (=> d!2041019 (forall!15564 lt!2392569 lambda!360654)))

(declare-fun e!3941579 () List!65448)

(assert (=> d!2041019 (= lt!2392569 e!3941579)))

(declare-fun c!1192979 () Bool)

(assert (=> d!2041019 (= c!1192979 ((_ is Cons!65326) (Cons!65326 lt!2392373 Nil!65326)))))

(assert (=> d!2041019 (= (unfocusZipperList!1804 (Cons!65326 lt!2392373 Nil!65326)) lt!2392569)))

(declare-fun b!6505078 () Bool)

(assert (=> b!6505078 (= e!3941579 (Cons!65324 (generalisedConcat!1980 (exprs!6267 (h!71774 (Cons!65326 lt!2392373 Nil!65326)))) (unfocusZipperList!1804 (t!379084 (Cons!65326 lt!2392373 Nil!65326)))))))

(declare-fun b!6505079 () Bool)

(assert (=> b!6505079 (= e!3941579 Nil!65324)))

(assert (= (and d!2041019 c!1192979) b!6505078))

(assert (= (and d!2041019 (not c!1192979)) b!6505079))

(declare-fun m!7292242 () Bool)

(assert (=> d!2041019 m!7292242))

(declare-fun m!7292244 () Bool)

(assert (=> b!6505078 m!7292244))

(declare-fun m!7292246 () Bool)

(assert (=> b!6505078 m!7292246))

(assert (=> d!2040469 d!2041019))

(assert (=> b!6503945 d!2040793))

(declare-fun d!2041021 () Bool)

(assert (=> d!2041021 (= (isEmpty!37530 (tail!12322 (unfocusZipperList!1804 zl!343))) ((_ is Nil!65324) (tail!12322 (unfocusZipperList!1804 zl!343))))))

(assert (=> b!6503641 d!2041021))

(declare-fun d!2041023 () Bool)

(assert (=> d!2041023 (= (tail!12322 (unfocusZipperList!1804 zl!343)) (t!379082 (unfocusZipperList!1804 zl!343)))))

(assert (=> b!6503641 d!2041023))

(declare-fun d!2041025 () Bool)

(assert (=> d!2041025 (= (nullable!6376 (h!71772 (exprs!6267 lt!2392397))) (nullableFct!2312 (h!71772 (exprs!6267 lt!2392397))))))

(declare-fun bs!1652278 () Bool)

(assert (= bs!1652278 d!2041025))

(declare-fun m!7292248 () Bool)

(assert (=> bs!1652278 m!7292248))

(assert (=> b!6503735 d!2041025))

(assert (=> b!6503740 d!2040477))

(declare-fun d!2041027 () Bool)

(declare-fun lt!2392572 () Int)

(assert (=> d!2041027 (>= lt!2392572 0)))

(declare-fun e!3941582 () Int)

(assert (=> d!2041027 (= lt!2392572 e!3941582)))

(declare-fun c!1192982 () Bool)

(assert (=> d!2041027 (= c!1192982 ((_ is Nil!65324) lt!2392515))))

(assert (=> d!2041027 (= (size!40440 lt!2392515) lt!2392572)))

(declare-fun b!6505084 () Bool)

(assert (=> b!6505084 (= e!3941582 0)))

(declare-fun b!6505085 () Bool)

(assert (=> b!6505085 (= e!3941582 (+ 1 (size!40440 (t!379082 lt!2392515))))))

(assert (= (and d!2041027 c!1192982) b!6505084))

(assert (= (and d!2041027 (not c!1192982)) b!6505085))

(declare-fun m!7292250 () Bool)

(assert (=> b!6505085 m!7292250))

(assert (=> b!6503980 d!2041027))

(declare-fun d!2041029 () Bool)

(declare-fun lt!2392573 () Int)

(assert (=> d!2041029 (>= lt!2392573 0)))

(declare-fun e!3941583 () Int)

(assert (=> d!2041029 (= lt!2392573 e!3941583)))

(declare-fun c!1192983 () Bool)

(assert (=> d!2041029 (= c!1192983 ((_ is Nil!65324) (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))

(assert (=> d!2041029 (= (size!40440 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) lt!2392573)))

(declare-fun b!6505086 () Bool)

(assert (=> b!6505086 (= e!3941583 0)))

(declare-fun b!6505087 () Bool)

(assert (=> b!6505087 (= e!3941583 (+ 1 (size!40440 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))))

(assert (= (and d!2041029 c!1192983) b!6505086))

(assert (= (and d!2041029 (not c!1192983)) b!6505087))

(declare-fun m!7292252 () Bool)

(assert (=> b!6505087 m!7292252))

(assert (=> b!6503980 d!2041029))

(declare-fun d!2041031 () Bool)

(declare-fun lt!2392574 () Int)

(assert (=> d!2041031 (>= lt!2392574 0)))

(declare-fun e!3941584 () Int)

(assert (=> d!2041031 (= lt!2392574 e!3941584)))

(declare-fun c!1192984 () Bool)

(assert (=> d!2041031 (= c!1192984 ((_ is Nil!65324) lt!2392391))))

(assert (=> d!2041031 (= (size!40440 lt!2392391) lt!2392574)))

(declare-fun b!6505088 () Bool)

(assert (=> b!6505088 (= e!3941584 0)))

(declare-fun b!6505089 () Bool)

(assert (=> b!6505089 (= e!3941584 (+ 1 (size!40440 (t!379082 lt!2392391))))))

(assert (= (and d!2041031 c!1192984) b!6505088))

(assert (= (and d!2041031 (not c!1192984)) b!6505089))

(declare-fun m!7292254 () Bool)

(assert (=> b!6505089 m!7292254))

(assert (=> b!6503980 d!2041031))

(declare-fun d!2041033 () Bool)

(assert (=> d!2041033 (= ($colon$colon!2234 (exprs!6267 lt!2392397) (ite (or c!1192618 c!1192617) (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71772 (exprs!6267 (h!71774 zl!343))))) (Cons!65324 (ite (or c!1192618 c!1192617) (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71772 (exprs!6267 (h!71774 zl!343)))) (exprs!6267 lt!2392397)))))

(assert (=> bm!563578 d!2041033))

(declare-fun bs!1652279 () Bool)

(declare-fun b!6505098 () Bool)

(assert (= bs!1652279 (and b!6505098 b!6503964)))

(declare-fun lambda!360655 () Int)

(assert (=> bs!1652279 (not (= lambda!360655 lambda!360588))))

(declare-fun bs!1652280 () Bool)

(assert (= bs!1652280 (and b!6505098 b!6503796)))

(assert (=> bs!1652280 (= (and (= (reg!16712 (regOne!33279 lt!2392375)) (reg!16712 r!7292)) (= (regOne!33279 lt!2392375) r!7292)) (= lambda!360655 lambda!360570))))

(declare-fun bs!1652281 () Bool)

(assert (= bs!1652281 (and b!6505098 d!2040519)))

(assert (=> bs!1652281 (not (= lambda!360655 lambda!360586))))

(assert (=> bs!1652281 (not (= lambda!360655 lambda!360585))))

(declare-fun bs!1652282 () Bool)

(assert (= bs!1652282 (and b!6505098 b!6504574)))

(assert (=> bs!1652282 (= (and (= (reg!16712 (regOne!33279 lt!2392375)) (reg!16712 (regOne!33279 r!7292))) (= (regOne!33279 lt!2392375) (regOne!33279 r!7292))) (= lambda!360655 lambda!360622))))

(declare-fun bs!1652283 () Bool)

(assert (= bs!1652283 (and b!6505098 b!6503182)))

(assert (=> bs!1652283 (not (= lambda!360655 lambda!360519))))

(assert (=> bs!1652283 (not (= lambda!360655 lambda!360518))))

(declare-fun bs!1652284 () Bool)

(assert (= bs!1652284 (and b!6505098 b!6503793)))

(assert (=> bs!1652284 (not (= lambda!360655 lambda!360571))))

(declare-fun bs!1652285 () Bool)

(assert (= bs!1652285 (and b!6505098 b!6504701)))

(assert (=> bs!1652285 (= (and (= (reg!16712 (regOne!33279 lt!2392375)) (reg!16712 (regTwo!33279 lt!2392375))) (= (regOne!33279 lt!2392375) (regTwo!33279 lt!2392375))) (= lambda!360655 lambda!360632))))

(declare-fun bs!1652286 () Bool)

(assert (= bs!1652286 (and b!6505098 b!6504571)))

(assert (=> bs!1652286 (not (= lambda!360655 lambda!360624))))

(declare-fun bs!1652287 () Bool)

(assert (= bs!1652287 (and b!6505098 b!6503967)))

(assert (=> bs!1652287 (= (and (= (reg!16712 (regOne!33279 lt!2392375)) (reg!16712 lt!2392375)) (= (regOne!33279 lt!2392375) lt!2392375)) (= lambda!360655 lambda!360587))))

(declare-fun bs!1652288 () Bool)

(assert (= bs!1652288 (and b!6505098 b!6504698)))

(assert (=> bs!1652288 (not (= lambda!360655 lambda!360635))))

(declare-fun bs!1652289 () Bool)

(assert (= bs!1652289 (and b!6505098 d!2040517)))

(assert (=> bs!1652289 (not (= lambda!360655 lambda!360580))))

(declare-fun bs!1652290 () Bool)

(assert (= bs!1652290 (and b!6505098 d!2040995)))

(assert (=> bs!1652290 (not (= lambda!360655 lambda!360651))))

(assert (=> b!6505098 true))

(assert (=> b!6505098 true))

(declare-fun bs!1652291 () Bool)

(declare-fun b!6505095 () Bool)

(assert (= bs!1652291 (and b!6505095 b!6503964)))

(declare-fun lambda!360656 () Int)

(assert (=> bs!1652291 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 lt!2392375)) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 lt!2392375))) (= lambda!360656 lambda!360588))))

(declare-fun bs!1652292 () Bool)

(assert (= bs!1652292 (and b!6505095 b!6503796)))

(assert (=> bs!1652292 (not (= lambda!360656 lambda!360570))))

(declare-fun bs!1652293 () Bool)

(assert (= bs!1652293 (and b!6505095 d!2040519)))

(assert (=> bs!1652293 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360656 lambda!360586))))

(assert (=> bs!1652293 (not (= lambda!360656 lambda!360585))))

(declare-fun bs!1652294 () Bool)

(assert (= bs!1652294 (and b!6505095 b!6504574)))

(assert (=> bs!1652294 (not (= lambda!360656 lambda!360622))))

(declare-fun bs!1652295 () Bool)

(assert (= bs!1652295 (and b!6505095 b!6503182)))

(assert (=> bs!1652295 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360656 lambda!360519))))

(assert (=> bs!1652295 (not (= lambda!360656 lambda!360518))))

(declare-fun bs!1652296 () Bool)

(assert (= bs!1652296 (and b!6505095 b!6503793)))

(assert (=> bs!1652296 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 r!7292)) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 r!7292))) (= lambda!360656 lambda!360571))))

(declare-fun bs!1652297 () Bool)

(assert (= bs!1652297 (and b!6505095 b!6504701)))

(assert (=> bs!1652297 (not (= lambda!360656 lambda!360632))))

(declare-fun bs!1652298 () Bool)

(assert (= bs!1652298 (and b!6505095 b!6504571)))

(assert (=> bs!1652298 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 (regOne!33279 r!7292))) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 (regOne!33279 r!7292)))) (= lambda!360656 lambda!360624))))

(declare-fun bs!1652299 () Bool)

(assert (= bs!1652299 (and b!6505095 b!6503967)))

(assert (=> bs!1652299 (not (= lambda!360656 lambda!360587))))

(declare-fun bs!1652300 () Bool)

(assert (= bs!1652300 (and b!6505095 b!6505098)))

(assert (=> bs!1652300 (not (= lambda!360656 lambda!360655))))

(declare-fun bs!1652301 () Bool)

(assert (= bs!1652301 (and b!6505095 b!6504698)))

(assert (=> bs!1652301 (= (and (= (regOne!33278 (regOne!33279 lt!2392375)) (regOne!33278 (regTwo!33279 lt!2392375))) (= (regTwo!33278 (regOne!33279 lt!2392375)) (regTwo!33278 (regTwo!33279 lt!2392375)))) (= lambda!360656 lambda!360635))))

(declare-fun bs!1652302 () Bool)

(assert (= bs!1652302 (and b!6505095 d!2040517)))

(assert (=> bs!1652302 (not (= lambda!360656 lambda!360580))))

(declare-fun bs!1652303 () Bool)

(assert (= bs!1652303 (and b!6505095 d!2040995)))

(assert (=> bs!1652303 (not (= lambda!360656 lambda!360651))))

(assert (=> b!6505095 true))

(assert (=> b!6505095 true))

(declare-fun b!6505090 () Bool)

(declare-fun c!1192987 () Bool)

(assert (=> b!6505090 (= c!1192987 ((_ is ElementMatch!16383) (regOne!33279 lt!2392375)))))

(declare-fun e!3941587 () Bool)

(declare-fun e!3941590 () Bool)

(assert (=> b!6505090 (= e!3941587 e!3941590)))

(declare-fun b!6505091 () Bool)

(declare-fun c!1192988 () Bool)

(assert (=> b!6505091 (= c!1192988 ((_ is Union!16383) (regOne!33279 lt!2392375)))))

(declare-fun e!3941591 () Bool)

(assert (=> b!6505091 (= e!3941590 e!3941591)))

(declare-fun b!6505092 () Bool)

(declare-fun e!3941589 () Bool)

(assert (=> b!6505092 (= e!3941589 (matchRSpec!3484 (regTwo!33279 (regOne!33279 lt!2392375)) s!2326))))

(declare-fun b!6505093 () Bool)

(assert (=> b!6505093 (= e!3941590 (= s!2326 (Cons!65325 (c!1192455 (regOne!33279 lt!2392375)) Nil!65325)))))

(declare-fun d!2041035 () Bool)

(declare-fun c!1192986 () Bool)

(assert (=> d!2041035 (= c!1192986 ((_ is EmptyExpr!16383) (regOne!33279 lt!2392375)))))

(declare-fun e!3941586 () Bool)

(assert (=> d!2041035 (= (matchRSpec!3484 (regOne!33279 lt!2392375) s!2326) e!3941586)))

(declare-fun c!1192985 () Bool)

(declare-fun bm!563821 () Bool)

(declare-fun call!563826 () Bool)

(assert (=> bm!563821 (= call!563826 (Exists!3453 (ite c!1192985 lambda!360655 lambda!360656)))))

(declare-fun b!6505094 () Bool)

(assert (=> b!6505094 (= e!3941591 e!3941589)))

(declare-fun res!2671361 () Bool)

(assert (=> b!6505094 (= res!2671361 (matchRSpec!3484 (regOne!33279 (regOne!33279 lt!2392375)) s!2326))))

(assert (=> b!6505094 (=> res!2671361 e!3941589)))

(declare-fun e!3941588 () Bool)

(assert (=> b!6505095 (= e!3941588 call!563826)))

(declare-fun b!6505096 () Bool)

(declare-fun res!2671362 () Bool)

(declare-fun e!3941585 () Bool)

(assert (=> b!6505096 (=> res!2671362 e!3941585)))

(declare-fun call!563827 () Bool)

(assert (=> b!6505096 (= res!2671362 call!563827)))

(assert (=> b!6505096 (= e!3941588 e!3941585)))

(declare-fun b!6505097 () Bool)

(assert (=> b!6505097 (= e!3941586 e!3941587)))

(declare-fun res!2671363 () Bool)

(assert (=> b!6505097 (= res!2671363 (not ((_ is EmptyLang!16383) (regOne!33279 lt!2392375))))))

(assert (=> b!6505097 (=> (not res!2671363) (not e!3941587))))

(assert (=> b!6505098 (= e!3941585 call!563826)))

(declare-fun bm!563822 () Bool)

(assert (=> bm!563822 (= call!563827 (isEmpty!37533 s!2326))))

(declare-fun b!6505099 () Bool)

(assert (=> b!6505099 (= e!3941591 e!3941588)))

(assert (=> b!6505099 (= c!1192985 ((_ is Star!16383) (regOne!33279 lt!2392375)))))

(declare-fun b!6505100 () Bool)

(assert (=> b!6505100 (= e!3941586 call!563827)))

(assert (= (and d!2041035 c!1192986) b!6505100))

(assert (= (and d!2041035 (not c!1192986)) b!6505097))

(assert (= (and b!6505097 res!2671363) b!6505090))

(assert (= (and b!6505090 c!1192987) b!6505093))

(assert (= (and b!6505090 (not c!1192987)) b!6505091))

(assert (= (and b!6505091 c!1192988) b!6505094))

(assert (= (and b!6505091 (not c!1192988)) b!6505099))

(assert (= (and b!6505094 (not res!2671361)) b!6505092))

(assert (= (and b!6505099 c!1192985) b!6505096))

(assert (= (and b!6505099 (not c!1192985)) b!6505095))

(assert (= (and b!6505096 (not res!2671362)) b!6505098))

(assert (= (or b!6505098 b!6505095) bm!563821))

(assert (= (or b!6505100 b!6505096) bm!563822))

(declare-fun m!7292256 () Bool)

(assert (=> b!6505092 m!7292256))

(declare-fun m!7292258 () Bool)

(assert (=> bm!563821 m!7292258))

(declare-fun m!7292260 () Bool)

(assert (=> b!6505094 m!7292260))

(assert (=> bm!563822 m!7290948))

(assert (=> b!6503963 d!2041035))

(declare-fun d!2041037 () Bool)

(assert (=> d!2041037 true))

(assert (=> d!2041037 true))

(declare-fun res!2671366 () Bool)

(assert (=> d!2041037 (= (choose!48307 lambda!360518) res!2671366)))

(assert (=> d!2040513 d!2041037))

(declare-fun b!6505101 () Bool)

(declare-fun e!3941594 () Bool)

(assert (=> b!6505101 (= e!3941594 (not (= (head!13238 (tail!12323 s!2326)) (c!1192455 (derivativeStep!5077 lt!2392375 (head!13238 s!2326))))))))

(declare-fun b!6505102 () Bool)

(declare-fun e!3941597 () Bool)

(declare-fun lt!2392575 () Bool)

(assert (=> b!6505102 (= e!3941597 (not lt!2392575))))

(declare-fun b!6505103 () Bool)

(declare-fun e!3941598 () Bool)

(declare-fun call!563828 () Bool)

(assert (=> b!6505103 (= e!3941598 (= lt!2392575 call!563828))))

(declare-fun b!6505104 () Bool)

(declare-fun e!3941596 () Bool)

(assert (=> b!6505104 (= e!3941596 (nullable!6376 (derivativeStep!5077 lt!2392375 (head!13238 s!2326))))))

(declare-fun b!6505105 () Bool)

(assert (=> b!6505105 (= e!3941596 (matchR!8566 (derivativeStep!5077 (derivativeStep!5077 lt!2392375 (head!13238 s!2326)) (head!13238 (tail!12323 s!2326))) (tail!12323 (tail!12323 s!2326))))))

(declare-fun b!6505107 () Bool)

(declare-fun res!2671370 () Bool)

(declare-fun e!3941593 () Bool)

(assert (=> b!6505107 (=> res!2671370 e!3941593)))

(declare-fun e!3941595 () Bool)

(assert (=> b!6505107 (= res!2671370 e!3941595)))

(declare-fun res!2671371 () Bool)

(assert (=> b!6505107 (=> (not res!2671371) (not e!3941595))))

(assert (=> b!6505107 (= res!2671371 lt!2392575)))

(declare-fun b!6505108 () Bool)

(declare-fun e!3941592 () Bool)

(assert (=> b!6505108 (= e!3941592 e!3941594)))

(declare-fun res!2671369 () Bool)

(assert (=> b!6505108 (=> res!2671369 e!3941594)))

(assert (=> b!6505108 (= res!2671369 call!563828)))

(declare-fun b!6505109 () Bool)

(declare-fun res!2671374 () Bool)

(assert (=> b!6505109 (=> (not res!2671374) (not e!3941595))))

(assert (=> b!6505109 (= res!2671374 (not call!563828))))

(declare-fun bm!563823 () Bool)

(assert (=> bm!563823 (= call!563828 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun b!6505110 () Bool)

(declare-fun res!2671373 () Bool)

(assert (=> b!6505110 (=> res!2671373 e!3941594)))

(assert (=> b!6505110 (= res!2671373 (not (isEmpty!37533 (tail!12323 (tail!12323 s!2326)))))))

(declare-fun b!6505111 () Bool)

(assert (=> b!6505111 (= e!3941593 e!3941592)))

(declare-fun res!2671368 () Bool)

(assert (=> b!6505111 (=> (not res!2671368) (not e!3941592))))

(assert (=> b!6505111 (= res!2671368 (not lt!2392575))))

(declare-fun b!6505112 () Bool)

(declare-fun res!2671367 () Bool)

(assert (=> b!6505112 (=> res!2671367 e!3941593)))

(assert (=> b!6505112 (= res!2671367 (not ((_ is ElementMatch!16383) (derivativeStep!5077 lt!2392375 (head!13238 s!2326)))))))

(assert (=> b!6505112 (= e!3941597 e!3941593)))

(declare-fun b!6505113 () Bool)

(assert (=> b!6505113 (= e!3941598 e!3941597)))

(declare-fun c!1192991 () Bool)

(assert (=> b!6505113 (= c!1192991 ((_ is EmptyLang!16383) (derivativeStep!5077 lt!2392375 (head!13238 s!2326))))))

(declare-fun b!6505114 () Bool)

(declare-fun res!2671372 () Bool)

(assert (=> b!6505114 (=> (not res!2671372) (not e!3941595))))

(assert (=> b!6505114 (= res!2671372 (isEmpty!37533 (tail!12323 (tail!12323 s!2326))))))

(declare-fun b!6505106 () Bool)

(assert (=> b!6505106 (= e!3941595 (= (head!13238 (tail!12323 s!2326)) (c!1192455 (derivativeStep!5077 lt!2392375 (head!13238 s!2326)))))))

(declare-fun d!2041039 () Bool)

(assert (=> d!2041039 e!3941598))

(declare-fun c!1192990 () Bool)

(assert (=> d!2041039 (= c!1192990 ((_ is EmptyExpr!16383) (derivativeStep!5077 lt!2392375 (head!13238 s!2326))))))

(assert (=> d!2041039 (= lt!2392575 e!3941596)))

(declare-fun c!1192989 () Bool)

(assert (=> d!2041039 (= c!1192989 (isEmpty!37533 (tail!12323 s!2326)))))

(assert (=> d!2041039 (validRegex!8119 (derivativeStep!5077 lt!2392375 (head!13238 s!2326)))))

(assert (=> d!2041039 (= (matchR!8566 (derivativeStep!5077 lt!2392375 (head!13238 s!2326)) (tail!12323 s!2326)) lt!2392575)))

(assert (= (and d!2041039 c!1192989) b!6505104))

(assert (= (and d!2041039 (not c!1192989)) b!6505105))

(assert (= (and d!2041039 c!1192990) b!6505103))

(assert (= (and d!2041039 (not c!1192990)) b!6505113))

(assert (= (and b!6505113 c!1192991) b!6505102))

(assert (= (and b!6505113 (not c!1192991)) b!6505112))

(assert (= (and b!6505112 (not res!2671367)) b!6505107))

(assert (= (and b!6505107 res!2671371) b!6505109))

(assert (= (and b!6505109 res!2671374) b!6505114))

(assert (= (and b!6505114 res!2671372) b!6505106))

(assert (= (and b!6505107 (not res!2671370)) b!6505111))

(assert (= (and b!6505111 res!2671368) b!6505108))

(assert (= (and b!6505108 (not res!2671369)) b!6505110))

(assert (= (and b!6505110 (not res!2671373)) b!6505101))

(assert (= (or b!6505103 b!6505108 b!6505109) bm!563823))

(assert (=> d!2041039 m!7290956))

(assert (=> d!2041039 m!7291036))

(assert (=> d!2041039 m!7291130))

(declare-fun m!7292262 () Bool)

(assert (=> d!2041039 m!7292262))

(assert (=> b!6505105 m!7290956))

(assert (=> b!6505105 m!7291668))

(assert (=> b!6505105 m!7291130))

(assert (=> b!6505105 m!7291668))

(declare-fun m!7292264 () Bool)

(assert (=> b!6505105 m!7292264))

(assert (=> b!6505105 m!7290956))

(assert (=> b!6505105 m!7291672))

(assert (=> b!6505105 m!7292264))

(assert (=> b!6505105 m!7291672))

(declare-fun m!7292266 () Bool)

(assert (=> b!6505105 m!7292266))

(assert (=> b!6505104 m!7291130))

(declare-fun m!7292268 () Bool)

(assert (=> b!6505104 m!7292268))

(assert (=> b!6505114 m!7290956))

(assert (=> b!6505114 m!7291672))

(assert (=> b!6505114 m!7291672))

(declare-fun m!7292270 () Bool)

(assert (=> b!6505114 m!7292270))

(assert (=> b!6505110 m!7290956))

(assert (=> b!6505110 m!7291672))

(assert (=> b!6505110 m!7291672))

(assert (=> b!6505110 m!7292270))

(assert (=> b!6505101 m!7290956))

(assert (=> b!6505101 m!7291668))

(assert (=> b!6505106 m!7290956))

(assert (=> b!6505106 m!7291668))

(assert (=> bm!563823 m!7290956))

(assert (=> bm!563823 m!7291036))

(assert (=> b!6503949 d!2041039))

(declare-fun bm!563832 () Bool)

(declare-fun call!563838 () Regex!16383)

(declare-fun call!563837 () Regex!16383)

(assert (=> bm!563832 (= call!563838 call!563837)))

(declare-fun b!6505135 () Bool)

(declare-fun e!3941609 () Regex!16383)

(declare-fun call!563840 () Regex!16383)

(assert (=> b!6505135 (= e!3941609 (Union!16383 call!563837 call!563840))))

(declare-fun bm!563833 () Bool)

(declare-fun c!1193002 () Bool)

(assert (=> bm!563833 (= call!563840 (derivativeStep!5077 (ite c!1193002 (regTwo!33279 lt!2392375) (regOne!33278 lt!2392375)) (head!13238 s!2326)))))

(declare-fun d!2041041 () Bool)

(declare-fun lt!2392578 () Regex!16383)

(assert (=> d!2041041 (validRegex!8119 lt!2392578)))

(declare-fun e!3941612 () Regex!16383)

(assert (=> d!2041041 (= lt!2392578 e!3941612)))

(declare-fun c!1193006 () Bool)

(assert (=> d!2041041 (= c!1193006 (or ((_ is EmptyExpr!16383) lt!2392375) ((_ is EmptyLang!16383) lt!2392375)))))

(assert (=> d!2041041 (validRegex!8119 lt!2392375)))

(assert (=> d!2041041 (= (derivativeStep!5077 lt!2392375 (head!13238 s!2326)) lt!2392578)))

(declare-fun b!6505136 () Bool)

(assert (=> b!6505136 (= e!3941612 EmptyLang!16383)))

(declare-fun b!6505137 () Bool)

(assert (=> b!6505137 (= c!1193002 ((_ is Union!16383) lt!2392375))))

(declare-fun e!3941613 () Regex!16383)

(assert (=> b!6505137 (= e!3941613 e!3941609)))

(declare-fun c!1193005 () Bool)

(declare-fun bm!563834 () Bool)

(declare-fun c!1193004 () Bool)

(assert (=> bm!563834 (= call!563837 (derivativeStep!5077 (ite c!1193002 (regOne!33279 lt!2392375) (ite c!1193005 (reg!16712 lt!2392375) (ite c!1193004 (regTwo!33278 lt!2392375) (regOne!33278 lt!2392375)))) (head!13238 s!2326)))))

(declare-fun b!6505138 () Bool)

(declare-fun e!3941610 () Regex!16383)

(declare-fun call!563839 () Regex!16383)

(assert (=> b!6505138 (= e!3941610 (Union!16383 (Concat!25228 call!563840 (regTwo!33278 lt!2392375)) call!563839))))

(declare-fun bm!563835 () Bool)

(assert (=> bm!563835 (= call!563839 call!563838)))

(declare-fun b!6505139 () Bool)

(assert (=> b!6505139 (= e!3941610 (Union!16383 (Concat!25228 call!563839 (regTwo!33278 lt!2392375)) EmptyLang!16383))))

(declare-fun b!6505140 () Bool)

(declare-fun e!3941611 () Regex!16383)

(assert (=> b!6505140 (= e!3941611 (Concat!25228 call!563838 lt!2392375))))

(declare-fun b!6505141 () Bool)

(assert (=> b!6505141 (= e!3941609 e!3941611)))

(assert (=> b!6505141 (= c!1193005 ((_ is Star!16383) lt!2392375))))

(declare-fun b!6505142 () Bool)

(assert (=> b!6505142 (= c!1193004 (nullable!6376 (regOne!33278 lt!2392375)))))

(assert (=> b!6505142 (= e!3941611 e!3941610)))

(declare-fun b!6505143 () Bool)

(assert (=> b!6505143 (= e!3941613 (ite (= (head!13238 s!2326) (c!1192455 lt!2392375)) EmptyExpr!16383 EmptyLang!16383))))

(declare-fun b!6505144 () Bool)

(assert (=> b!6505144 (= e!3941612 e!3941613)))

(declare-fun c!1193003 () Bool)

(assert (=> b!6505144 (= c!1193003 ((_ is ElementMatch!16383) lt!2392375))))

(assert (= (and d!2041041 c!1193006) b!6505136))

(assert (= (and d!2041041 (not c!1193006)) b!6505144))

(assert (= (and b!6505144 c!1193003) b!6505143))

(assert (= (and b!6505144 (not c!1193003)) b!6505137))

(assert (= (and b!6505137 c!1193002) b!6505135))

(assert (= (and b!6505137 (not c!1193002)) b!6505141))

(assert (= (and b!6505141 c!1193005) b!6505140))

(assert (= (and b!6505141 (not c!1193005)) b!6505142))

(assert (= (and b!6505142 c!1193004) b!6505138))

(assert (= (and b!6505142 (not c!1193004)) b!6505139))

(assert (= (or b!6505138 b!6505139) bm!563835))

(assert (= (or b!6505140 bm!563835) bm!563832))

(assert (= (or b!6505135 b!6505138) bm!563833))

(assert (= (or b!6505135 bm!563832) bm!563834))

(assert (=> bm!563833 m!7290952))

(declare-fun m!7292272 () Bool)

(assert (=> bm!563833 m!7292272))

(declare-fun m!7292274 () Bool)

(assert (=> d!2041041 m!7292274))

(assert (=> d!2041041 m!7291128))

(assert (=> bm!563834 m!7290952))

(declare-fun m!7292276 () Bool)

(assert (=> bm!563834 m!7292276))

(declare-fun m!7292278 () Bool)

(assert (=> b!6505142 m!7292278))

(assert (=> b!6503949 d!2041041))

(assert (=> b!6503949 d!2040793))

(assert (=> b!6503949 d!2040797))

(declare-fun d!2041043 () Bool)

(assert (=> d!2041043 (= (nullable!6376 (regOne!33278 (reg!16712 (regOne!33278 r!7292)))) (nullableFct!2312 (regOne!33278 (reg!16712 (regOne!33278 r!7292)))))))

(declare-fun bs!1652304 () Bool)

(assert (= bs!1652304 d!2041043))

(declare-fun m!7292280 () Bool)

(assert (=> bs!1652304 m!7292280))

(assert (=> b!6503748 d!2041043))

(declare-fun d!2041045 () Bool)

(assert (=> d!2041045 true))

(assert (=> d!2041045 true))

(declare-fun res!2671375 () Bool)

(assert (=> d!2041045 (= (choose!48307 lambda!360519) res!2671375)))

(assert (=> d!2040515 d!2041045))

(declare-fun b!6505145 () Bool)

(declare-fun e!3941614 () Bool)

(declare-fun e!3941620 () Bool)

(assert (=> b!6505145 (= e!3941614 e!3941620)))

(declare-fun res!2671376 () Bool)

(assert (=> b!6505145 (=> (not res!2671376) (not e!3941620))))

(declare-fun call!563842 () Bool)

(assert (=> b!6505145 (= res!2671376 call!563842)))

(declare-fun c!1193007 () Bool)

(declare-fun c!1193008 () Bool)

(declare-fun call!563841 () Bool)

(declare-fun bm!563836 () Bool)

(assert (=> bm!563836 (= call!563841 (validRegex!8119 (ite c!1193008 (reg!16712 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))) (ite c!1193007 (regOne!33279 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))) (regOne!33278 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292))))))))))

(declare-fun b!6505146 () Bool)

(declare-fun e!3941619 () Bool)

(declare-fun call!563843 () Bool)

(assert (=> b!6505146 (= e!3941619 call!563843)))

(declare-fun b!6505147 () Bool)

(declare-fun res!2671377 () Bool)

(assert (=> b!6505147 (=> res!2671377 e!3941614)))

(assert (=> b!6505147 (= res!2671377 (not ((_ is Concat!25228) (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292))))))))

(declare-fun e!3941615 () Bool)

(assert (=> b!6505147 (= e!3941615 e!3941614)))

(declare-fun d!2041047 () Bool)

(declare-fun res!2671380 () Bool)

(declare-fun e!3941617 () Bool)

(assert (=> d!2041047 (=> res!2671380 e!3941617)))

(assert (=> d!2041047 (= res!2671380 ((_ is ElementMatch!16383) (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))

(assert (=> d!2041047 (= (validRegex!8119 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))) e!3941617)))

(declare-fun bm!563837 () Bool)

(assert (=> bm!563837 (= call!563842 call!563841)))

(declare-fun b!6505148 () Bool)

(declare-fun e!3941616 () Bool)

(declare-fun e!3941618 () Bool)

(assert (=> b!6505148 (= e!3941616 e!3941618)))

(declare-fun res!2671379 () Bool)

(assert (=> b!6505148 (= res!2671379 (not (nullable!6376 (reg!16712 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))))

(assert (=> b!6505148 (=> (not res!2671379) (not e!3941618))))

(declare-fun b!6505149 () Bool)

(assert (=> b!6505149 (= e!3941616 e!3941615)))

(assert (=> b!6505149 (= c!1193007 ((_ is Union!16383) (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))

(declare-fun b!6505150 () Bool)

(assert (=> b!6505150 (= e!3941618 call!563841)))

(declare-fun b!6505151 () Bool)

(assert (=> b!6505151 (= e!3941617 e!3941616)))

(assert (=> b!6505151 (= c!1193008 ((_ is Star!16383) (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))

(declare-fun bm!563838 () Bool)

(assert (=> bm!563838 (= call!563843 (validRegex!8119 (ite c!1193007 (regTwo!33279 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))) (regTwo!33278 (ite c!1192658 (reg!16712 r!7292) (ite c!1192657 (regOne!33279 r!7292) (regOne!33278 r!7292)))))))))

(declare-fun b!6505152 () Bool)

(assert (=> b!6505152 (= e!3941620 call!563843)))

(declare-fun b!6505153 () Bool)

(declare-fun res!2671378 () Bool)

(assert (=> b!6505153 (=> (not res!2671378) (not e!3941619))))

(assert (=> b!6505153 (= res!2671378 call!563842)))

(assert (=> b!6505153 (= e!3941615 e!3941619)))

(assert (= (and d!2041047 (not res!2671380)) b!6505151))

(assert (= (and b!6505151 c!1193008) b!6505148))

(assert (= (and b!6505151 (not c!1193008)) b!6505149))

(assert (= (and b!6505148 res!2671379) b!6505150))

(assert (= (and b!6505149 c!1193007) b!6505153))

(assert (= (and b!6505149 (not c!1193007)) b!6505147))

(assert (= (and b!6505153 res!2671378) b!6505146))

(assert (= (and b!6505147 (not res!2671377)) b!6505145))

(assert (= (and b!6505145 res!2671376) b!6505152))

(assert (= (or b!6505146 b!6505152) bm!563838))

(assert (= (or b!6505153 b!6505145) bm!563837))

(assert (= (or b!6505150 bm!563837) bm!563836))

(declare-fun m!7292282 () Bool)

(assert (=> bm!563836 m!7292282))

(declare-fun m!7292284 () Bool)

(assert (=> b!6505148 m!7292284))

(declare-fun m!7292286 () Bool)

(assert (=> bm!563838 m!7292286))

(assert (=> bm!563603 d!2041047))

(assert (=> d!2040457 d!2040459))

(declare-fun d!2041049 () Bool)

(assert (=> d!2041049 (= (flatMap!1888 lt!2392395 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392388))))

(assert (=> d!2041049 true))

(declare-fun _$13!3762 () Unit!158867)

(assert (=> d!2041049 (= (choose!48302 lt!2392395 lt!2392388 lambda!360520) _$13!3762)))

(declare-fun b_lambda!246279 () Bool)

(assert (=> (not b_lambda!246279) (not d!2041049)))

(declare-fun bs!1652305 () Bool)

(assert (= bs!1652305 d!2041049))

(assert (=> bs!1652305 m!7290480))

(assert (=> bs!1652305 m!7290918))

(assert (=> d!2040457 d!2041049))

(assert (=> bm!563596 d!2040941))

(declare-fun bs!1652306 () Bool)

(declare-fun d!2041051 () Bool)

(assert (= bs!1652306 (and d!2041051 d!2040829)))

(declare-fun lambda!360657 () Int)

(assert (=> bs!1652306 (= lambda!360657 lambda!360627)))

(declare-fun bs!1652307 () Bool)

(assert (= bs!1652307 (and d!2041051 d!2040953)))

(assert (=> bs!1652307 (= lambda!360657 lambda!360647)))

(declare-fun bs!1652308 () Bool)

(assert (= bs!1652308 (and d!2041051 d!2041005)))

(assert (=> bs!1652308 (= lambda!360657 lambda!360652)))

(assert (=> d!2041051 (= (nullableZipper!2138 lt!2392366) (exists!2624 lt!2392366 lambda!360657))))

(declare-fun bs!1652309 () Bool)

(assert (= bs!1652309 d!2041051))

(declare-fun m!7292288 () Bool)

(assert (=> bs!1652309 m!7292288))

(assert (=> b!6503754 d!2041051))

(declare-fun d!2041053 () Bool)

(assert (=> d!2041053 (= (isEmpty!37530 (exprs!6267 (h!71774 zl!343))) ((_ is Nil!65324) (exprs!6267 (h!71774 zl!343))))))

(assert (=> b!6503892 d!2041053))

(assert (=> b!6503832 d!2040793))

(declare-fun d!2041055 () Bool)

(assert (=> d!2041055 (= (head!13237 (exprs!6267 (h!71774 zl!343))) (h!71772 (exprs!6267 (h!71774 zl!343))))))

(assert (=> b!6503896 d!2041055))

(assert (=> b!6503942 d!2040455))

(declare-fun d!2041057 () Bool)

(declare-fun res!2671381 () Bool)

(declare-fun e!3941621 () Bool)

(assert (=> d!2041057 (=> res!2671381 e!3941621)))

(assert (=> d!2041057 (= res!2671381 ((_ is Nil!65324) lt!2392468))))

(assert (=> d!2041057 (= (forall!15564 lt!2392468 lambda!360562) e!3941621)))

(declare-fun b!6505154 () Bool)

(declare-fun e!3941622 () Bool)

(assert (=> b!6505154 (= e!3941621 e!3941622)))

(declare-fun res!2671382 () Bool)

(assert (=> b!6505154 (=> (not res!2671382) (not e!3941622))))

(assert (=> b!6505154 (= res!2671382 (dynLambda!25954 lambda!360562 (h!71772 lt!2392468)))))

(declare-fun b!6505155 () Bool)

(assert (=> b!6505155 (= e!3941622 (forall!15564 (t!379082 lt!2392468) lambda!360562))))

(assert (= (and d!2041057 (not res!2671381)) b!6505154))

(assert (= (and b!6505154 res!2671382) b!6505155))

(declare-fun b_lambda!246281 () Bool)

(assert (=> (not b_lambda!246281) (not b!6505154)))

(declare-fun m!7292290 () Bool)

(assert (=> b!6505154 m!7292290))

(declare-fun m!7292292 () Bool)

(assert (=> b!6505155 m!7292292))

(assert (=> d!2040443 d!2041057))

(declare-fun d!2041059 () Bool)

(assert (=> d!2041059 (= (isEmptyLang!1781 lt!2392465) ((_ is EmptyLang!16383) lt!2392465))))

(assert (=> b!6503649 d!2041059))

(declare-fun d!2041061 () Bool)

(assert (=> d!2041061 (= (nullable!6376 (reg!16712 r!7292)) (nullableFct!2312 (reg!16712 r!7292)))))

(declare-fun bs!1652310 () Bool)

(assert (= bs!1652310 d!2041061))

(declare-fun m!7292294 () Bool)

(assert (=> bs!1652310 m!7292294))

(assert (=> b!6503862 d!2041061))

(declare-fun d!2041063 () Bool)

(assert (=> d!2041063 (= (isDefined!12977 lt!2392498) (not (isEmpty!37534 lt!2392498)))))

(declare-fun bs!1652311 () Bool)

(assert (= bs!1652311 d!2041063))

(declare-fun m!7292296 () Bool)

(assert (=> bs!1652311 m!7292296))

(assert (=> b!6503923 d!2041063))

(assert (=> b!6503654 d!2040509))

(declare-fun bs!1652312 () Bool)

(declare-fun d!2041065 () Bool)

(assert (= bs!1652312 (and d!2041065 d!2040541)))

(declare-fun lambda!360658 () Int)

(assert (=> bs!1652312 (= lambda!360658 lambda!360589)))

(declare-fun bs!1652313 () Bool)

(assert (= bs!1652313 (and d!2041065 d!2040947)))

(assert (=> bs!1652313 (= lambda!360658 lambda!360645)))

(declare-fun bs!1652314 () Bool)

(assert (= bs!1652314 (and d!2041065 d!2040859)))

(assert (=> bs!1652314 (= lambda!360658 lambda!360630)))

(declare-fun bs!1652315 () Bool)

(assert (= bs!1652315 (and d!2041065 d!2040925)))

(assert (=> bs!1652315 (= lambda!360658 lambda!360643)))

(declare-fun bs!1652316 () Bool)

(assert (= bs!1652316 (and d!2041065 d!2040443)))

(assert (=> bs!1652316 (= lambda!360658 lambda!360562)))

(declare-fun bs!1652317 () Bool)

(assert (= bs!1652317 (and d!2041065 d!2040441)))

(assert (=> bs!1652317 (= lambda!360658 lambda!360559)))

(declare-fun bs!1652318 () Bool)

(assert (= bs!1652318 (and d!2041065 d!2040503)))

(assert (=> bs!1652318 (= lambda!360658 lambda!360574)))

(declare-fun bs!1652319 () Bool)

(assert (= bs!1652319 (and d!2041065 d!2041017)))

(assert (=> bs!1652319 (= lambda!360658 lambda!360653)))

(declare-fun bs!1652320 () Bool)

(assert (= bs!1652320 (and d!2041065 d!2040509)))

(assert (=> bs!1652320 (= lambda!360658 lambda!360577)))

(declare-fun bs!1652321 () Bool)

(assert (= bs!1652321 (and d!2041065 d!2040951)))

(assert (=> bs!1652321 (= lambda!360658 lambda!360646)))

(declare-fun bs!1652322 () Bool)

(assert (= bs!1652322 (and d!2041065 b!6503167)))

(assert (=> bs!1652322 (= lambda!360658 lambda!360522)))

(declare-fun bs!1652323 () Bool)

(assert (= bs!1652323 (and d!2041065 d!2040549)))

(assert (=> bs!1652323 (= lambda!360658 lambda!360590)))

(declare-fun bs!1652324 () Bool)

(assert (= bs!1652324 (and d!2041065 d!2040853)))

(assert (=> bs!1652324 (= lambda!360658 lambda!360628)))

(declare-fun bs!1652325 () Bool)

(assert (= bs!1652325 (and d!2041065 d!2041019)))

(assert (=> bs!1652325 (= lambda!360658 lambda!360654)))

(declare-fun lt!2392579 () List!65448)

(assert (=> d!2041065 (forall!15564 lt!2392579 lambda!360658)))

(declare-fun e!3941623 () List!65448)

(assert (=> d!2041065 (= lt!2392579 e!3941623)))

(declare-fun c!1193009 () Bool)

(assert (=> d!2041065 (= c!1193009 ((_ is Cons!65326) (t!379084 zl!343)))))

(assert (=> d!2041065 (= (unfocusZipperList!1804 (t!379084 zl!343)) lt!2392579)))

(declare-fun b!6505156 () Bool)

(assert (=> b!6505156 (= e!3941623 (Cons!65324 (generalisedConcat!1980 (exprs!6267 (h!71774 (t!379084 zl!343)))) (unfocusZipperList!1804 (t!379084 (t!379084 zl!343)))))))

(declare-fun b!6505157 () Bool)

(assert (=> b!6505157 (= e!3941623 Nil!65324)))

(assert (= (and d!2041065 c!1193009) b!6505156))

(assert (= (and d!2041065 (not c!1193009)) b!6505157))

(declare-fun m!7292298 () Bool)

(assert (=> d!2041065 m!7292298))

(declare-fun m!7292300 () Bool)

(assert (=> b!6505156 m!7292300))

(declare-fun m!7292302 () Bool)

(assert (=> b!6505156 m!7292302))

(assert (=> b!6503654 d!2041065))

(declare-fun d!2041067 () Bool)

(declare-fun c!1193012 () Bool)

(assert (=> d!2041067 (= c!1193012 ((_ is Nil!65326) lt!2392487))))

(declare-fun e!3941626 () (InoxSet Context!11534))

(assert (=> d!2041067 (= (content!12466 lt!2392487) e!3941626)))

(declare-fun b!6505162 () Bool)

(assert (=> b!6505162 (= e!3941626 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505163 () Bool)

(assert (=> b!6505163 (= e!3941626 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) (h!71774 lt!2392487) true) (content!12466 (t!379084 lt!2392487))))))

(assert (= (and d!2041067 c!1193012) b!6505162))

(assert (= (and d!2041067 (not c!1193012)) b!6505163))

(declare-fun m!7292304 () Bool)

(assert (=> b!6505163 m!7292304))

(declare-fun m!7292306 () Bool)

(assert (=> b!6505163 m!7292306))

(assert (=> b!6503870 d!2041067))

(declare-fun b!6505164 () Bool)

(declare-fun e!3941627 () Bool)

(declare-fun e!3941633 () Bool)

(assert (=> b!6505164 (= e!3941627 e!3941633)))

(declare-fun res!2671383 () Bool)

(assert (=> b!6505164 (=> (not res!2671383) (not e!3941633))))

(declare-fun call!563845 () Bool)

(assert (=> b!6505164 (= res!2671383 call!563845)))

(declare-fun bm!563839 () Bool)

(declare-fun c!1193014 () Bool)

(declare-fun call!563844 () Bool)

(declare-fun c!1193013 () Bool)

(assert (=> bm!563839 (= call!563844 (validRegex!8119 (ite c!1193014 (reg!16712 lt!2392465) (ite c!1193013 (regOne!33279 lt!2392465) (regOne!33278 lt!2392465)))))))

(declare-fun b!6505165 () Bool)

(declare-fun e!3941632 () Bool)

(declare-fun call!563846 () Bool)

(assert (=> b!6505165 (= e!3941632 call!563846)))

(declare-fun b!6505166 () Bool)

(declare-fun res!2671384 () Bool)

(assert (=> b!6505166 (=> res!2671384 e!3941627)))

(assert (=> b!6505166 (= res!2671384 (not ((_ is Concat!25228) lt!2392465)))))

(declare-fun e!3941628 () Bool)

(assert (=> b!6505166 (= e!3941628 e!3941627)))

(declare-fun d!2041069 () Bool)

(declare-fun res!2671387 () Bool)

(declare-fun e!3941630 () Bool)

(assert (=> d!2041069 (=> res!2671387 e!3941630)))

(assert (=> d!2041069 (= res!2671387 ((_ is ElementMatch!16383) lt!2392465))))

(assert (=> d!2041069 (= (validRegex!8119 lt!2392465) e!3941630)))

(declare-fun bm!563840 () Bool)

(assert (=> bm!563840 (= call!563845 call!563844)))

(declare-fun b!6505167 () Bool)

(declare-fun e!3941629 () Bool)

(declare-fun e!3941631 () Bool)

(assert (=> b!6505167 (= e!3941629 e!3941631)))

(declare-fun res!2671386 () Bool)

(assert (=> b!6505167 (= res!2671386 (not (nullable!6376 (reg!16712 lt!2392465))))))

(assert (=> b!6505167 (=> (not res!2671386) (not e!3941631))))

(declare-fun b!6505168 () Bool)

(assert (=> b!6505168 (= e!3941629 e!3941628)))

(assert (=> b!6505168 (= c!1193013 ((_ is Union!16383) lt!2392465))))

(declare-fun b!6505169 () Bool)

(assert (=> b!6505169 (= e!3941631 call!563844)))

(declare-fun b!6505170 () Bool)

(assert (=> b!6505170 (= e!3941630 e!3941629)))

(assert (=> b!6505170 (= c!1193014 ((_ is Star!16383) lt!2392465))))

(declare-fun bm!563841 () Bool)

(assert (=> bm!563841 (= call!563846 (validRegex!8119 (ite c!1193013 (regTwo!33279 lt!2392465) (regTwo!33278 lt!2392465))))))

(declare-fun b!6505171 () Bool)

(assert (=> b!6505171 (= e!3941633 call!563846)))

(declare-fun b!6505172 () Bool)

(declare-fun res!2671385 () Bool)

(assert (=> b!6505172 (=> (not res!2671385) (not e!3941632))))

(assert (=> b!6505172 (= res!2671385 call!563845)))

(assert (=> b!6505172 (= e!3941628 e!3941632)))

(assert (= (and d!2041069 (not res!2671387)) b!6505170))

(assert (= (and b!6505170 c!1193014) b!6505167))

(assert (= (and b!6505170 (not c!1193014)) b!6505168))

(assert (= (and b!6505167 res!2671386) b!6505169))

(assert (= (and b!6505168 c!1193013) b!6505172))

(assert (= (and b!6505168 (not c!1193013)) b!6505166))

(assert (= (and b!6505172 res!2671385) b!6505165))

(assert (= (and b!6505166 (not res!2671384)) b!6505164))

(assert (= (and b!6505164 res!2671383) b!6505171))

(assert (= (or b!6505165 b!6505171) bm!563841))

(assert (= (or b!6505172 b!6505164) bm!563840))

(assert (= (or b!6505169 bm!563840) bm!563839))

(declare-fun m!7292308 () Bool)

(assert (=> bm!563839 m!7292308))

(declare-fun m!7292310 () Bool)

(assert (=> b!6505167 m!7292310))

(declare-fun m!7292312 () Bool)

(assert (=> bm!563841 m!7292312))

(assert (=> d!2040441 d!2041069))

(declare-fun d!2041071 () Bool)

(declare-fun res!2671388 () Bool)

(declare-fun e!3941634 () Bool)

(assert (=> d!2041071 (=> res!2671388 e!3941634)))

(assert (=> d!2041071 (= res!2671388 ((_ is Nil!65324) (unfocusZipperList!1804 zl!343)))))

(assert (=> d!2041071 (= (forall!15564 (unfocusZipperList!1804 zl!343) lambda!360559) e!3941634)))

(declare-fun b!6505173 () Bool)

(declare-fun e!3941635 () Bool)

(assert (=> b!6505173 (= e!3941634 e!3941635)))

(declare-fun res!2671389 () Bool)

(assert (=> b!6505173 (=> (not res!2671389) (not e!3941635))))

(assert (=> b!6505173 (= res!2671389 (dynLambda!25954 lambda!360559 (h!71772 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6505174 () Bool)

(assert (=> b!6505174 (= e!3941635 (forall!15564 (t!379082 (unfocusZipperList!1804 zl!343)) lambda!360559))))

(assert (= (and d!2041071 (not res!2671388)) b!6505173))

(assert (= (and b!6505173 res!2671389) b!6505174))

(declare-fun b_lambda!246283 () Bool)

(assert (=> (not b_lambda!246283) (not b!6505173)))

(declare-fun m!7292314 () Bool)

(assert (=> b!6505173 m!7292314))

(declare-fun m!7292316 () Bool)

(assert (=> b!6505174 m!7292316))

(assert (=> d!2040441 d!2041071))

(declare-fun d!2041073 () Bool)

(assert (=> d!2041073 (= (Exists!3453 (ite c!1192681 lambda!360587 lambda!360588)) (choose!48307 (ite c!1192681 lambda!360587 lambda!360588)))))

(declare-fun bs!1652326 () Bool)

(assert (= bs!1652326 d!2041073))

(declare-fun m!7292318 () Bool)

(assert (=> bs!1652326 m!7292318))

(assert (=> bm!563607 d!2041073))

(assert (=> d!2040455 d!2040901))

(declare-fun b!6505175 () Bool)

(declare-fun e!3941636 () Bool)

(declare-fun e!3941642 () Bool)

(assert (=> b!6505175 (= e!3941636 e!3941642)))

(declare-fun res!2671390 () Bool)

(assert (=> b!6505175 (=> (not res!2671390) (not e!3941642))))

(declare-fun call!563848 () Bool)

(assert (=> b!6505175 (= res!2671390 call!563848)))

(declare-fun call!563847 () Bool)

(declare-fun bm!563842 () Bool)

(declare-fun c!1193016 () Bool)

(declare-fun c!1193015 () Bool)

(assert (=> bm!563842 (= call!563847 (validRegex!8119 (ite c!1193016 (reg!16712 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))) (ite c!1193015 (regOne!33279 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))) (regOne!33278 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292)))))))))

(declare-fun b!6505176 () Bool)

(declare-fun e!3941641 () Bool)

(declare-fun call!563849 () Bool)

(assert (=> b!6505176 (= e!3941641 call!563849)))

(declare-fun b!6505177 () Bool)

(declare-fun res!2671391 () Bool)

(assert (=> b!6505177 (=> res!2671391 e!3941636)))

(assert (=> b!6505177 (= res!2671391 (not ((_ is Concat!25228) (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292)))))))

(declare-fun e!3941637 () Bool)

(assert (=> b!6505177 (= e!3941637 e!3941636)))

(declare-fun d!2041075 () Bool)

(declare-fun res!2671394 () Bool)

(declare-fun e!3941639 () Bool)

(assert (=> d!2041075 (=> res!2671394 e!3941639)))

(assert (=> d!2041075 (= res!2671394 ((_ is ElementMatch!16383) (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))

(assert (=> d!2041075 (= (validRegex!8119 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))) e!3941639)))

(declare-fun bm!563843 () Bool)

(assert (=> bm!563843 (= call!563848 call!563847)))

(declare-fun b!6505178 () Bool)

(declare-fun e!3941638 () Bool)

(declare-fun e!3941640 () Bool)

(assert (=> b!6505178 (= e!3941638 e!3941640)))

(declare-fun res!2671393 () Bool)

(assert (=> b!6505178 (= res!2671393 (not (nullable!6376 (reg!16712 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))))

(assert (=> b!6505178 (=> (not res!2671393) (not e!3941640))))

(declare-fun b!6505179 () Bool)

(assert (=> b!6505179 (= e!3941638 e!3941637)))

(assert (=> b!6505179 (= c!1193015 ((_ is Union!16383) (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))

(declare-fun b!6505180 () Bool)

(assert (=> b!6505180 (= e!3941640 call!563847)))

(declare-fun b!6505181 () Bool)

(assert (=> b!6505181 (= e!3941639 e!3941638)))

(assert (=> b!6505181 (= c!1193016 ((_ is Star!16383) (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))

(declare-fun bm!563844 () Bool)

(assert (=> bm!563844 (= call!563849 (validRegex!8119 (ite c!1193015 (regTwo!33279 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))) (regTwo!33278 (ite c!1192657 (regTwo!33279 r!7292) (regTwo!33278 r!7292))))))))

(declare-fun b!6505182 () Bool)

(assert (=> b!6505182 (= e!3941642 call!563849)))

(declare-fun b!6505183 () Bool)

(declare-fun res!2671392 () Bool)

(assert (=> b!6505183 (=> (not res!2671392) (not e!3941641))))

(assert (=> b!6505183 (= res!2671392 call!563848)))

(assert (=> b!6505183 (= e!3941637 e!3941641)))

(assert (= (and d!2041075 (not res!2671394)) b!6505181))

(assert (= (and b!6505181 c!1193016) b!6505178))

(assert (= (and b!6505181 (not c!1193016)) b!6505179))

(assert (= (and b!6505178 res!2671393) b!6505180))

(assert (= (and b!6505179 c!1193015) b!6505183))

(assert (= (and b!6505179 (not c!1193015)) b!6505177))

(assert (= (and b!6505183 res!2671392) b!6505176))

(assert (= (and b!6505177 (not res!2671391)) b!6505175))

(assert (= (and b!6505175 res!2671390) b!6505182))

(assert (= (or b!6505176 b!6505182) bm!563844))

(assert (= (or b!6505183 b!6505175) bm!563843))

(assert (= (or b!6505180 bm!563843) bm!563842))

(declare-fun m!7292320 () Bool)

(assert (=> bm!563842 m!7292320))

(declare-fun m!7292322 () Bool)

(assert (=> b!6505178 m!7292322))

(declare-fun m!7292324 () Bool)

(assert (=> bm!563844 m!7292324))

(assert (=> bm!563605 d!2041075))

(declare-fun b!6505184 () Bool)

(declare-fun e!3941645 () Bool)

(assert (=> b!6505184 (= e!3941645 (not (= (head!13238 (_1!36665 (get!22658 lt!2392498))) (c!1192455 (regOne!33278 r!7292)))))))

(declare-fun b!6505185 () Bool)

(declare-fun e!3941648 () Bool)

(declare-fun lt!2392580 () Bool)

(assert (=> b!6505185 (= e!3941648 (not lt!2392580))))

(declare-fun b!6505186 () Bool)

(declare-fun e!3941649 () Bool)

(declare-fun call!563850 () Bool)

(assert (=> b!6505186 (= e!3941649 (= lt!2392580 call!563850))))

(declare-fun b!6505187 () Bool)

(declare-fun e!3941647 () Bool)

(assert (=> b!6505187 (= e!3941647 (nullable!6376 (regOne!33278 r!7292)))))

(declare-fun b!6505188 () Bool)

(assert (=> b!6505188 (= e!3941647 (matchR!8566 (derivativeStep!5077 (regOne!33278 r!7292) (head!13238 (_1!36665 (get!22658 lt!2392498)))) (tail!12323 (_1!36665 (get!22658 lt!2392498)))))))

(declare-fun b!6505190 () Bool)

(declare-fun res!2671398 () Bool)

(declare-fun e!3941644 () Bool)

(assert (=> b!6505190 (=> res!2671398 e!3941644)))

(declare-fun e!3941646 () Bool)

(assert (=> b!6505190 (= res!2671398 e!3941646)))

(declare-fun res!2671399 () Bool)

(assert (=> b!6505190 (=> (not res!2671399) (not e!3941646))))

(assert (=> b!6505190 (= res!2671399 lt!2392580)))

(declare-fun b!6505191 () Bool)

(declare-fun e!3941643 () Bool)

(assert (=> b!6505191 (= e!3941643 e!3941645)))

(declare-fun res!2671397 () Bool)

(assert (=> b!6505191 (=> res!2671397 e!3941645)))

(assert (=> b!6505191 (= res!2671397 call!563850)))

(declare-fun b!6505192 () Bool)

(declare-fun res!2671402 () Bool)

(assert (=> b!6505192 (=> (not res!2671402) (not e!3941646))))

(assert (=> b!6505192 (= res!2671402 (not call!563850))))

(declare-fun bm!563845 () Bool)

(assert (=> bm!563845 (= call!563850 (isEmpty!37533 (_1!36665 (get!22658 lt!2392498))))))

(declare-fun b!6505193 () Bool)

(declare-fun res!2671401 () Bool)

(assert (=> b!6505193 (=> res!2671401 e!3941645)))

(assert (=> b!6505193 (= res!2671401 (not (isEmpty!37533 (tail!12323 (_1!36665 (get!22658 lt!2392498))))))))

(declare-fun b!6505194 () Bool)

(assert (=> b!6505194 (= e!3941644 e!3941643)))

(declare-fun res!2671396 () Bool)

(assert (=> b!6505194 (=> (not res!2671396) (not e!3941643))))

(assert (=> b!6505194 (= res!2671396 (not lt!2392580))))

(declare-fun b!6505195 () Bool)

(declare-fun res!2671395 () Bool)

(assert (=> b!6505195 (=> res!2671395 e!3941644)))

(assert (=> b!6505195 (= res!2671395 (not ((_ is ElementMatch!16383) (regOne!33278 r!7292))))))

(assert (=> b!6505195 (= e!3941648 e!3941644)))

(declare-fun b!6505196 () Bool)

(assert (=> b!6505196 (= e!3941649 e!3941648)))

(declare-fun c!1193019 () Bool)

(assert (=> b!6505196 (= c!1193019 ((_ is EmptyLang!16383) (regOne!33278 r!7292)))))

(declare-fun b!6505197 () Bool)

(declare-fun res!2671400 () Bool)

(assert (=> b!6505197 (=> (not res!2671400) (not e!3941646))))

(assert (=> b!6505197 (= res!2671400 (isEmpty!37533 (tail!12323 (_1!36665 (get!22658 lt!2392498)))))))

(declare-fun b!6505189 () Bool)

(assert (=> b!6505189 (= e!3941646 (= (head!13238 (_1!36665 (get!22658 lt!2392498))) (c!1192455 (regOne!33278 r!7292))))))

(declare-fun d!2041077 () Bool)

(assert (=> d!2041077 e!3941649))

(declare-fun c!1193018 () Bool)

(assert (=> d!2041077 (= c!1193018 ((_ is EmptyExpr!16383) (regOne!33278 r!7292)))))

(assert (=> d!2041077 (= lt!2392580 e!3941647)))

(declare-fun c!1193017 () Bool)

(assert (=> d!2041077 (= c!1193017 (isEmpty!37533 (_1!36665 (get!22658 lt!2392498))))))

(assert (=> d!2041077 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2041077 (= (matchR!8566 (regOne!33278 r!7292) (_1!36665 (get!22658 lt!2392498))) lt!2392580)))

(assert (= (and d!2041077 c!1193017) b!6505187))

(assert (= (and d!2041077 (not c!1193017)) b!6505188))

(assert (= (and d!2041077 c!1193018) b!6505186))

(assert (= (and d!2041077 (not c!1193018)) b!6505196))

(assert (= (and b!6505196 c!1193019) b!6505185))

(assert (= (and b!6505196 (not c!1193019)) b!6505195))

(assert (= (and b!6505195 (not res!2671395)) b!6505190))

(assert (= (and b!6505190 res!2671399) b!6505192))

(assert (= (and b!6505192 res!2671402) b!6505197))

(assert (= (and b!6505197 res!2671400) b!6505189))

(assert (= (and b!6505190 (not res!2671398)) b!6505194))

(assert (= (and b!6505194 res!2671396) b!6505191))

(assert (= (and b!6505191 (not res!2671397)) b!6505193))

(assert (= (and b!6505193 (not res!2671401)) b!6505184))

(assert (= (or b!6505186 b!6505191 b!6505192) bm!563845))

(declare-fun m!7292326 () Bool)

(assert (=> d!2041077 m!7292326))

(assert (=> d!2041077 m!7291076))

(declare-fun m!7292328 () Bool)

(assert (=> b!6505188 m!7292328))

(assert (=> b!6505188 m!7292328))

(declare-fun m!7292330 () Bool)

(assert (=> b!6505188 m!7292330))

(declare-fun m!7292332 () Bool)

(assert (=> b!6505188 m!7292332))

(assert (=> b!6505188 m!7292330))

(assert (=> b!6505188 m!7292332))

(declare-fun m!7292334 () Bool)

(assert (=> b!6505188 m!7292334))

(declare-fun m!7292336 () Bool)

(assert (=> b!6505187 m!7292336))

(assert (=> b!6505197 m!7292332))

(assert (=> b!6505197 m!7292332))

(declare-fun m!7292338 () Bool)

(assert (=> b!6505197 m!7292338))

(assert (=> b!6505193 m!7292332))

(assert (=> b!6505193 m!7292332))

(assert (=> b!6505193 m!7292338))

(assert (=> b!6505184 m!7292328))

(assert (=> b!6505189 m!7292328))

(assert (=> bm!563845 m!7292326))

(assert (=> b!6503927 d!2041077))

(assert (=> b!6503927 d!2040963))

(declare-fun d!2041079 () Bool)

(assert (=> d!2041079 (= (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (nullableFct!2312 (h!71772 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))

(declare-fun bs!1652327 () Bool)

(assert (= bs!1652327 d!2041079))

(declare-fun m!7292340 () Bool)

(assert (=> bs!1652327 m!7292340))

(assert (=> b!6503697 d!2041079))

(declare-fun d!2041081 () Bool)

(declare-fun res!2671403 () Bool)

(declare-fun e!3941650 () Bool)

(assert (=> d!2041081 (=> res!2671403 e!3941650)))

(assert (=> d!2041081 (= res!2671403 ((_ is Nil!65324) (exprs!6267 setElem!44339)))))

(assert (=> d!2041081 (= (forall!15564 (exprs!6267 setElem!44339) lambda!360574) e!3941650)))

(declare-fun b!6505198 () Bool)

(declare-fun e!3941651 () Bool)

(assert (=> b!6505198 (= e!3941650 e!3941651)))

(declare-fun res!2671404 () Bool)

(assert (=> b!6505198 (=> (not res!2671404) (not e!3941651))))

(assert (=> b!6505198 (= res!2671404 (dynLambda!25954 lambda!360574 (h!71772 (exprs!6267 setElem!44339))))))

(declare-fun b!6505199 () Bool)

(assert (=> b!6505199 (= e!3941651 (forall!15564 (t!379082 (exprs!6267 setElem!44339)) lambda!360574))))

(assert (= (and d!2041081 (not res!2671403)) b!6505198))

(assert (= (and b!6505198 res!2671404) b!6505199))

(declare-fun b_lambda!246285 () Bool)

(assert (=> (not b_lambda!246285) (not b!6505198)))

(declare-fun m!7292342 () Bool)

(assert (=> b!6505198 m!7292342))

(declare-fun m!7292344 () Bool)

(assert (=> b!6505199 m!7292344))

(assert (=> d!2040503 d!2041081))

(declare-fun b!6505200 () Bool)

(declare-fun e!3941656 () Bool)

(declare-fun e!3941657 () Bool)

(assert (=> b!6505200 (= e!3941656 e!3941657)))

(declare-fun c!1193020 () Bool)

(assert (=> b!6505200 (= c!1193020 ((_ is Union!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6505201 () Bool)

(declare-fun e!3941655 () Bool)

(assert (=> b!6505201 (= e!3941655 e!3941656)))

(declare-fun res!2671409 () Bool)

(assert (=> b!6505201 (=> res!2671409 e!3941656)))

(assert (=> b!6505201 (= res!2671409 ((_ is Star!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6505202 () Bool)

(declare-fun e!3941653 () Bool)

(assert (=> b!6505202 (= e!3941657 e!3941653)))

(declare-fun res!2671407 () Bool)

(declare-fun call!563851 () Bool)

(assert (=> b!6505202 (= res!2671407 call!563851)))

(assert (=> b!6505202 (=> res!2671407 e!3941653)))

(declare-fun d!2041083 () Bool)

(declare-fun res!2671408 () Bool)

(declare-fun e!3941652 () Bool)

(assert (=> d!2041083 (=> res!2671408 e!3941652)))

(assert (=> d!2041083 (= res!2671408 ((_ is EmptyExpr!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> d!2041083 (= (nullableFct!2312 (h!71772 (exprs!6267 (h!71774 zl!343)))) e!3941652)))

(declare-fun b!6505203 () Bool)

(assert (=> b!6505203 (= e!3941652 e!3941655)))

(declare-fun res!2671406 () Bool)

(assert (=> b!6505203 (=> (not res!2671406) (not e!3941655))))

(assert (=> b!6505203 (= res!2671406 (and (not ((_ is EmptyLang!16383) (h!71772 (exprs!6267 (h!71774 zl!343))))) (not ((_ is ElementMatch!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6505204 () Bool)

(declare-fun e!3941654 () Bool)

(assert (=> b!6505204 (= e!3941657 e!3941654)))

(declare-fun res!2671405 () Bool)

(assert (=> b!6505204 (= res!2671405 call!563851)))

(assert (=> b!6505204 (=> (not res!2671405) (not e!3941654))))

(declare-fun bm!563846 () Bool)

(assert (=> bm!563846 (= call!563851 (nullable!6376 (ite c!1193020 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun bm!563847 () Bool)

(declare-fun call!563852 () Bool)

(assert (=> bm!563847 (= call!563852 (nullable!6376 (ite c!1193020 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6505205 () Bool)

(assert (=> b!6505205 (= e!3941654 call!563852)))

(declare-fun b!6505206 () Bool)

(assert (=> b!6505206 (= e!3941653 call!563852)))

(assert (= (and d!2041083 (not res!2671408)) b!6505203))

(assert (= (and b!6505203 res!2671406) b!6505201))

(assert (= (and b!6505201 (not res!2671409)) b!6505200))

(assert (= (and b!6505200 c!1193020) b!6505202))

(assert (= (and b!6505200 (not c!1193020)) b!6505204))

(assert (= (and b!6505202 (not res!2671407)) b!6505206))

(assert (= (and b!6505204 res!2671405) b!6505205))

(assert (= (or b!6505206 b!6505205) bm!563847))

(assert (= (or b!6505202 b!6505204) bm!563846))

(declare-fun m!7292346 () Bool)

(assert (=> bm!563846 m!7292346))

(declare-fun m!7292348 () Bool)

(assert (=> bm!563847 m!7292348))

(assert (=> d!2040477 d!2041083))

(assert (=> d!2040527 d!2040529))

(assert (=> d!2040527 d!2040473))

(declare-fun d!2041085 () Bool)

(declare-fun e!3941660 () Bool)

(assert (=> d!2041085 (= (matchZipper!2395 ((_ map or) lt!2392389 lt!2392382) (t!379083 s!2326)) e!3941660)))

(declare-fun res!2671412 () Bool)

(assert (=> d!2041085 (=> res!2671412 e!3941660)))

(assert (=> d!2041085 (= res!2671412 (matchZipper!2395 lt!2392389 (t!379083 s!2326)))))

(assert (=> d!2041085 true))

(declare-fun _$48!2270 () Unit!158867)

(assert (=> d!2041085 (= (choose!48310 lt!2392389 lt!2392382 (t!379083 s!2326)) _$48!2270)))

(declare-fun b!6505209 () Bool)

(assert (=> b!6505209 (= e!3941660 (matchZipper!2395 lt!2392382 (t!379083 s!2326)))))

(assert (= (and d!2041085 (not res!2671412)) b!6505209))

(assert (=> d!2041085 m!7290500))

(assert (=> d!2041085 m!7290498))

(assert (=> b!6505209 m!7290436))

(assert (=> d!2040527 d!2041085))

(assert (=> d!2040529 d!2040901))

(declare-fun b!6505210 () Bool)

(declare-fun e!3941663 () Bool)

(assert (=> b!6505210 (= e!3941663 (not (= (head!13238 (tail!12323 s!2326)) (c!1192455 (derivativeStep!5077 r!7292 (head!13238 s!2326))))))))

(declare-fun b!6505211 () Bool)

(declare-fun e!3941666 () Bool)

(declare-fun lt!2392581 () Bool)

(assert (=> b!6505211 (= e!3941666 (not lt!2392581))))

(declare-fun b!6505212 () Bool)

(declare-fun e!3941667 () Bool)

(declare-fun call!563853 () Bool)

(assert (=> b!6505212 (= e!3941667 (= lt!2392581 call!563853))))

(declare-fun b!6505213 () Bool)

(declare-fun e!3941665 () Bool)

(assert (=> b!6505213 (= e!3941665 (nullable!6376 (derivativeStep!5077 r!7292 (head!13238 s!2326))))))

(declare-fun b!6505214 () Bool)

(assert (=> b!6505214 (= e!3941665 (matchR!8566 (derivativeStep!5077 (derivativeStep!5077 r!7292 (head!13238 s!2326)) (head!13238 (tail!12323 s!2326))) (tail!12323 (tail!12323 s!2326))))))

(declare-fun b!6505216 () Bool)

(declare-fun res!2671416 () Bool)

(declare-fun e!3941662 () Bool)

(assert (=> b!6505216 (=> res!2671416 e!3941662)))

(declare-fun e!3941664 () Bool)

(assert (=> b!6505216 (= res!2671416 e!3941664)))

(declare-fun res!2671417 () Bool)

(assert (=> b!6505216 (=> (not res!2671417) (not e!3941664))))

(assert (=> b!6505216 (= res!2671417 lt!2392581)))

(declare-fun b!6505217 () Bool)

(declare-fun e!3941661 () Bool)

(assert (=> b!6505217 (= e!3941661 e!3941663)))

(declare-fun res!2671415 () Bool)

(assert (=> b!6505217 (=> res!2671415 e!3941663)))

(assert (=> b!6505217 (= res!2671415 call!563853)))

(declare-fun b!6505218 () Bool)

(declare-fun res!2671420 () Bool)

(assert (=> b!6505218 (=> (not res!2671420) (not e!3941664))))

(assert (=> b!6505218 (= res!2671420 (not call!563853))))

(declare-fun bm!563848 () Bool)

(assert (=> bm!563848 (= call!563853 (isEmpty!37533 (tail!12323 s!2326)))))

(declare-fun b!6505219 () Bool)

(declare-fun res!2671419 () Bool)

(assert (=> b!6505219 (=> res!2671419 e!3941663)))

(assert (=> b!6505219 (= res!2671419 (not (isEmpty!37533 (tail!12323 (tail!12323 s!2326)))))))

(declare-fun b!6505220 () Bool)

(assert (=> b!6505220 (= e!3941662 e!3941661)))

(declare-fun res!2671414 () Bool)

(assert (=> b!6505220 (=> (not res!2671414) (not e!3941661))))

(assert (=> b!6505220 (= res!2671414 (not lt!2392581))))

(declare-fun b!6505221 () Bool)

(declare-fun res!2671413 () Bool)

(assert (=> b!6505221 (=> res!2671413 e!3941662)))

(assert (=> b!6505221 (= res!2671413 (not ((_ is ElementMatch!16383) (derivativeStep!5077 r!7292 (head!13238 s!2326)))))))

(assert (=> b!6505221 (= e!3941666 e!3941662)))

(declare-fun b!6505222 () Bool)

(assert (=> b!6505222 (= e!3941667 e!3941666)))

(declare-fun c!1193023 () Bool)

(assert (=> b!6505222 (= c!1193023 ((_ is EmptyLang!16383) (derivativeStep!5077 r!7292 (head!13238 s!2326))))))

(declare-fun b!6505223 () Bool)

(declare-fun res!2671418 () Bool)

(assert (=> b!6505223 (=> (not res!2671418) (not e!3941664))))

(assert (=> b!6505223 (= res!2671418 (isEmpty!37533 (tail!12323 (tail!12323 s!2326))))))

(declare-fun b!6505215 () Bool)

(assert (=> b!6505215 (= e!3941664 (= (head!13238 (tail!12323 s!2326)) (c!1192455 (derivativeStep!5077 r!7292 (head!13238 s!2326)))))))

(declare-fun d!2041087 () Bool)

(assert (=> d!2041087 e!3941667))

(declare-fun c!1193022 () Bool)

(assert (=> d!2041087 (= c!1193022 ((_ is EmptyExpr!16383) (derivativeStep!5077 r!7292 (head!13238 s!2326))))))

(assert (=> d!2041087 (= lt!2392581 e!3941665)))

(declare-fun c!1193021 () Bool)

(assert (=> d!2041087 (= c!1193021 (isEmpty!37533 (tail!12323 s!2326)))))

(assert (=> d!2041087 (validRegex!8119 (derivativeStep!5077 r!7292 (head!13238 s!2326)))))

(assert (=> d!2041087 (= (matchR!8566 (derivativeStep!5077 r!7292 (head!13238 s!2326)) (tail!12323 s!2326)) lt!2392581)))

(assert (= (and d!2041087 c!1193021) b!6505213))

(assert (= (and d!2041087 (not c!1193021)) b!6505214))

(assert (= (and d!2041087 c!1193022) b!6505212))

(assert (= (and d!2041087 (not c!1193022)) b!6505222))

(assert (= (and b!6505222 c!1193023) b!6505211))

(assert (= (and b!6505222 (not c!1193023)) b!6505221))

(assert (= (and b!6505221 (not res!2671413)) b!6505216))

(assert (= (and b!6505216 res!2671417) b!6505218))

(assert (= (and b!6505218 res!2671420) b!6505223))

(assert (= (and b!6505223 res!2671418) b!6505215))

(assert (= (and b!6505216 (not res!2671416)) b!6505220))

(assert (= (and b!6505220 res!2671414) b!6505217))

(assert (= (and b!6505217 (not res!2671415)) b!6505219))

(assert (= (and b!6505219 (not res!2671419)) b!6505210))

(assert (= (or b!6505212 b!6505217 b!6505218) bm!563848))

(assert (=> d!2041087 m!7290956))

(assert (=> d!2041087 m!7291036))

(assert (=> d!2041087 m!7291030))

(declare-fun m!7292350 () Bool)

(assert (=> d!2041087 m!7292350))

(assert (=> b!6505214 m!7290956))

(assert (=> b!6505214 m!7291668))

(assert (=> b!6505214 m!7291030))

(assert (=> b!6505214 m!7291668))

(declare-fun m!7292352 () Bool)

(assert (=> b!6505214 m!7292352))

(assert (=> b!6505214 m!7290956))

(assert (=> b!6505214 m!7291672))

(assert (=> b!6505214 m!7292352))

(assert (=> b!6505214 m!7291672))

(declare-fun m!7292354 () Bool)

(assert (=> b!6505214 m!7292354))

(assert (=> b!6505213 m!7291030))

(declare-fun m!7292356 () Bool)

(assert (=> b!6505213 m!7292356))

(assert (=> b!6505223 m!7290956))

(assert (=> b!6505223 m!7291672))

(assert (=> b!6505223 m!7291672))

(assert (=> b!6505223 m!7292270))

(assert (=> b!6505219 m!7290956))

(assert (=> b!6505219 m!7291672))

(assert (=> b!6505219 m!7291672))

(assert (=> b!6505219 m!7292270))

(assert (=> b!6505210 m!7290956))

(assert (=> b!6505210 m!7291668))

(assert (=> b!6505215 m!7290956))

(assert (=> b!6505215 m!7291668))

(assert (=> bm!563848 m!7290956))

(assert (=> bm!563848 m!7291036))

(assert (=> b!6503831 d!2041087))

(declare-fun bm!563849 () Bool)

(declare-fun call!563855 () Regex!16383)

(declare-fun call!563854 () Regex!16383)

(assert (=> bm!563849 (= call!563855 call!563854)))

(declare-fun b!6505224 () Bool)

(declare-fun e!3941668 () Regex!16383)

(declare-fun call!563857 () Regex!16383)

(assert (=> b!6505224 (= e!3941668 (Union!16383 call!563854 call!563857))))

(declare-fun bm!563850 () Bool)

(declare-fun c!1193024 () Bool)

(assert (=> bm!563850 (= call!563857 (derivativeStep!5077 (ite c!1193024 (regTwo!33279 r!7292) (regOne!33278 r!7292)) (head!13238 s!2326)))))

(declare-fun d!2041089 () Bool)

(declare-fun lt!2392582 () Regex!16383)

(assert (=> d!2041089 (validRegex!8119 lt!2392582)))

(declare-fun e!3941671 () Regex!16383)

(assert (=> d!2041089 (= lt!2392582 e!3941671)))

(declare-fun c!1193028 () Bool)

(assert (=> d!2041089 (= c!1193028 (or ((_ is EmptyExpr!16383) r!7292) ((_ is EmptyLang!16383) r!7292)))))

(assert (=> d!2041089 (validRegex!8119 r!7292)))

(assert (=> d!2041089 (= (derivativeStep!5077 r!7292 (head!13238 s!2326)) lt!2392582)))

(declare-fun b!6505225 () Bool)

(assert (=> b!6505225 (= e!3941671 EmptyLang!16383)))

(declare-fun b!6505226 () Bool)

(assert (=> b!6505226 (= c!1193024 ((_ is Union!16383) r!7292))))

(declare-fun e!3941672 () Regex!16383)

(assert (=> b!6505226 (= e!3941672 e!3941668)))

(declare-fun bm!563851 () Bool)

(declare-fun c!1193026 () Bool)

(declare-fun c!1193027 () Bool)

(assert (=> bm!563851 (= call!563854 (derivativeStep!5077 (ite c!1193024 (regOne!33279 r!7292) (ite c!1193027 (reg!16712 r!7292) (ite c!1193026 (regTwo!33278 r!7292) (regOne!33278 r!7292)))) (head!13238 s!2326)))))

(declare-fun b!6505227 () Bool)

(declare-fun call!563856 () Regex!16383)

(declare-fun e!3941669 () Regex!16383)

(assert (=> b!6505227 (= e!3941669 (Union!16383 (Concat!25228 call!563857 (regTwo!33278 r!7292)) call!563856))))

(declare-fun bm!563852 () Bool)

(assert (=> bm!563852 (= call!563856 call!563855)))

(declare-fun b!6505228 () Bool)

(assert (=> b!6505228 (= e!3941669 (Union!16383 (Concat!25228 call!563856 (regTwo!33278 r!7292)) EmptyLang!16383))))

(declare-fun b!6505229 () Bool)

(declare-fun e!3941670 () Regex!16383)

(assert (=> b!6505229 (= e!3941670 (Concat!25228 call!563855 r!7292))))

(declare-fun b!6505230 () Bool)

(assert (=> b!6505230 (= e!3941668 e!3941670)))

(assert (=> b!6505230 (= c!1193027 ((_ is Star!16383) r!7292))))

(declare-fun b!6505231 () Bool)

(assert (=> b!6505231 (= c!1193026 (nullable!6376 (regOne!33278 r!7292)))))

(assert (=> b!6505231 (= e!3941670 e!3941669)))

(declare-fun b!6505232 () Bool)

(assert (=> b!6505232 (= e!3941672 (ite (= (head!13238 s!2326) (c!1192455 r!7292)) EmptyExpr!16383 EmptyLang!16383))))

(declare-fun b!6505233 () Bool)

(assert (=> b!6505233 (= e!3941671 e!3941672)))

(declare-fun c!1193025 () Bool)

(assert (=> b!6505233 (= c!1193025 ((_ is ElementMatch!16383) r!7292))))

(assert (= (and d!2041089 c!1193028) b!6505225))

(assert (= (and d!2041089 (not c!1193028)) b!6505233))

(assert (= (and b!6505233 c!1193025) b!6505232))

(assert (= (and b!6505233 (not c!1193025)) b!6505226))

(assert (= (and b!6505226 c!1193024) b!6505224))

(assert (= (and b!6505226 (not c!1193024)) b!6505230))

(assert (= (and b!6505230 c!1193027) b!6505229))

(assert (= (and b!6505230 (not c!1193027)) b!6505231))

(assert (= (and b!6505231 c!1193026) b!6505227))

(assert (= (and b!6505231 (not c!1193026)) b!6505228))

(assert (= (or b!6505227 b!6505228) bm!563852))

(assert (= (or b!6505229 bm!563852) bm!563849))

(assert (= (or b!6505224 b!6505227) bm!563850))

(assert (= (or b!6505224 bm!563849) bm!563851))

(assert (=> bm!563850 m!7290952))

(declare-fun m!7292358 () Bool)

(assert (=> bm!563850 m!7292358))

(declare-fun m!7292360 () Bool)

(assert (=> d!2041089 m!7292360))

(assert (=> d!2041089 m!7290420))

(assert (=> bm!563851 m!7290952))

(declare-fun m!7292362 () Bool)

(assert (=> bm!563851 m!7292362))

(assert (=> b!6505231 m!7292336))

(assert (=> b!6503831 d!2041089))

(assert (=> b!6503831 d!2040793))

(assert (=> b!6503831 d!2040797))

(declare-fun d!2041091 () Bool)

(assert (=> d!2041091 true))

(declare-fun setRes!44362 () Bool)

(assert (=> d!2041091 setRes!44362))

(declare-fun condSetEmpty!44362 () Bool)

(declare-fun res!2671421 () (InoxSet Context!11534))

(assert (=> d!2041091 (= condSetEmpty!44362 (= res!2671421 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> d!2041091 (= (choose!48299 lt!2392366 lambda!360520) res!2671421)))

(declare-fun setIsEmpty!44362 () Bool)

(assert (=> setIsEmpty!44362 setRes!44362))

(declare-fun setNonEmpty!44362 () Bool)

(declare-fun setElem!44362 () Context!11534)

(declare-fun e!3941673 () Bool)

(declare-fun tp!1799126 () Bool)

(assert (=> setNonEmpty!44362 (= setRes!44362 (and tp!1799126 (inv!84204 setElem!44362) e!3941673))))

(declare-fun setRest!44362 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44362 (= res!2671421 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44362 true) setRest!44362))))

(declare-fun b!6505234 () Bool)

(declare-fun tp!1799125 () Bool)

(assert (=> b!6505234 (= e!3941673 tp!1799125)))

(assert (= (and d!2041091 condSetEmpty!44362) setIsEmpty!44362))

(assert (= (and d!2041091 (not condSetEmpty!44362)) setNonEmpty!44362))

(assert (= setNonEmpty!44362 b!6505234))

(declare-fun m!7292364 () Bool)

(assert (=> setNonEmpty!44362 m!7292364))

(assert (=> d!2040447 d!2041091))

(assert (=> b!6503827 d!2040793))

(declare-fun d!2041093 () Bool)

(assert (=> d!2041093 (= (nullable!6376 lt!2392375) (nullableFct!2312 lt!2392375))))

(declare-fun bs!1652328 () Bool)

(assert (= bs!1652328 d!2041093))

(declare-fun m!7292366 () Bool)

(assert (=> bs!1652328 m!7292366))

(assert (=> b!6503948 d!2041093))

(declare-fun d!2041095 () Bool)

(declare-fun c!1193029 () Bool)

(assert (=> d!2041095 (= c!1193029 (isEmpty!37533 (tail!12323 (t!379083 s!2326))))))

(declare-fun e!3941674 () Bool)

(assert (=> d!2041095 (= (matchZipper!2395 (derivationStepZipper!2349 ((_ map or) lt!2392389 lt!2392382) (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))) e!3941674)))

(declare-fun b!6505235 () Bool)

(assert (=> b!6505235 (= e!3941674 (nullableZipper!2138 (derivationStepZipper!2349 ((_ map or) lt!2392389 lt!2392382) (head!13238 (t!379083 s!2326)))))))

(declare-fun b!6505236 () Bool)

(assert (=> b!6505236 (= e!3941674 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 ((_ map or) lt!2392389 lt!2392382) (head!13238 (t!379083 s!2326))) (head!13238 (tail!12323 (t!379083 s!2326)))) (tail!12323 (tail!12323 (t!379083 s!2326)))))))

(assert (= (and d!2041095 c!1193029) b!6505235))

(assert (= (and d!2041095 (not c!1193029)) b!6505236))

(assert (=> d!2041095 m!7290914))

(assert (=> d!2041095 m!7291932))

(assert (=> b!6505235 m!7291118))

(declare-fun m!7292368 () Bool)

(assert (=> b!6505235 m!7292368))

(assert (=> b!6505236 m!7290914))

(assert (=> b!6505236 m!7291936))

(assert (=> b!6505236 m!7291118))

(assert (=> b!6505236 m!7291936))

(declare-fun m!7292370 () Bool)

(assert (=> b!6505236 m!7292370))

(assert (=> b!6505236 m!7290914))

(assert (=> b!6505236 m!7291940))

(assert (=> b!6505236 m!7292370))

(assert (=> b!6505236 m!7291940))

(declare-fun m!7292372 () Bool)

(assert (=> b!6505236 m!7292372))

(assert (=> b!6503944 d!2041095))

(declare-fun bs!1652329 () Bool)

(declare-fun d!2041097 () Bool)

(assert (= bs!1652329 (and d!2041097 d!2040985)))

(declare-fun lambda!360659 () Int)

(assert (=> bs!1652329 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360659 lambda!360648))))

(declare-fun bs!1652330 () Bool)

(assert (= bs!1652330 (and d!2041097 d!2040453)))

(assert (=> bs!1652330 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360659 lambda!360565))))

(declare-fun bs!1652331 () Bool)

(assert (= bs!1652331 (and d!2041097 d!2040885)))

(assert (=> bs!1652331 (= lambda!360659 lambda!360636)))

(declare-fun bs!1652332 () Bool)

(assert (= bs!1652332 (and d!2041097 d!2040789)))

(assert (=> bs!1652332 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360659 lambda!360616))))

(declare-fun bs!1652333 () Bool)

(assert (= bs!1652333 (and d!2041097 b!6503160)))

(assert (=> bs!1652333 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360659 lambda!360520))))

(assert (=> d!2041097 true))

(assert (=> d!2041097 (= (derivationStepZipper!2349 ((_ map or) lt!2392389 lt!2392382) (head!13238 (t!379083 s!2326))) (flatMap!1888 ((_ map or) lt!2392389 lt!2392382) lambda!360659))))

(declare-fun bs!1652334 () Bool)

(assert (= bs!1652334 d!2041097))

(declare-fun m!7292374 () Bool)

(assert (=> bs!1652334 m!7292374))

(assert (=> b!6503944 d!2041097))

(assert (=> b!6503944 d!2040887))

(assert (=> b!6503944 d!2040889))

(assert (=> d!2040511 d!2041063))

(declare-fun b!6505237 () Bool)

(declare-fun e!3941677 () Bool)

(assert (=> b!6505237 (= e!3941677 (not (= (head!13238 Nil!65325) (c!1192455 (regOne!33278 r!7292)))))))

(declare-fun b!6505238 () Bool)

(declare-fun e!3941680 () Bool)

(declare-fun lt!2392583 () Bool)

(assert (=> b!6505238 (= e!3941680 (not lt!2392583))))

(declare-fun b!6505239 () Bool)

(declare-fun e!3941681 () Bool)

(declare-fun call!563858 () Bool)

(assert (=> b!6505239 (= e!3941681 (= lt!2392583 call!563858))))

(declare-fun b!6505240 () Bool)

(declare-fun e!3941679 () Bool)

(assert (=> b!6505240 (= e!3941679 (nullable!6376 (regOne!33278 r!7292)))))

(declare-fun b!6505241 () Bool)

(assert (=> b!6505241 (= e!3941679 (matchR!8566 (derivativeStep!5077 (regOne!33278 r!7292) (head!13238 Nil!65325)) (tail!12323 Nil!65325)))))

(declare-fun b!6505243 () Bool)

(declare-fun res!2671425 () Bool)

(declare-fun e!3941676 () Bool)

(assert (=> b!6505243 (=> res!2671425 e!3941676)))

(declare-fun e!3941678 () Bool)

(assert (=> b!6505243 (= res!2671425 e!3941678)))

(declare-fun res!2671426 () Bool)

(assert (=> b!6505243 (=> (not res!2671426) (not e!3941678))))

(assert (=> b!6505243 (= res!2671426 lt!2392583)))

(declare-fun b!6505244 () Bool)

(declare-fun e!3941675 () Bool)

(assert (=> b!6505244 (= e!3941675 e!3941677)))

(declare-fun res!2671424 () Bool)

(assert (=> b!6505244 (=> res!2671424 e!3941677)))

(assert (=> b!6505244 (= res!2671424 call!563858)))

(declare-fun b!6505245 () Bool)

(declare-fun res!2671429 () Bool)

(assert (=> b!6505245 (=> (not res!2671429) (not e!3941678))))

(assert (=> b!6505245 (= res!2671429 (not call!563858))))

(declare-fun bm!563853 () Bool)

(assert (=> bm!563853 (= call!563858 (isEmpty!37533 Nil!65325))))

(declare-fun b!6505246 () Bool)

(declare-fun res!2671428 () Bool)

(assert (=> b!6505246 (=> res!2671428 e!3941677)))

(assert (=> b!6505246 (= res!2671428 (not (isEmpty!37533 (tail!12323 Nil!65325))))))

(declare-fun b!6505247 () Bool)

(assert (=> b!6505247 (= e!3941676 e!3941675)))

(declare-fun res!2671423 () Bool)

(assert (=> b!6505247 (=> (not res!2671423) (not e!3941675))))

(assert (=> b!6505247 (= res!2671423 (not lt!2392583))))

(declare-fun b!6505248 () Bool)

(declare-fun res!2671422 () Bool)

(assert (=> b!6505248 (=> res!2671422 e!3941676)))

(assert (=> b!6505248 (= res!2671422 (not ((_ is ElementMatch!16383) (regOne!33278 r!7292))))))

(assert (=> b!6505248 (= e!3941680 e!3941676)))

(declare-fun b!6505249 () Bool)

(assert (=> b!6505249 (= e!3941681 e!3941680)))

(declare-fun c!1193032 () Bool)

(assert (=> b!6505249 (= c!1193032 ((_ is EmptyLang!16383) (regOne!33278 r!7292)))))

(declare-fun b!6505250 () Bool)

(declare-fun res!2671427 () Bool)

(assert (=> b!6505250 (=> (not res!2671427) (not e!3941678))))

(assert (=> b!6505250 (= res!2671427 (isEmpty!37533 (tail!12323 Nil!65325)))))

(declare-fun b!6505242 () Bool)

(assert (=> b!6505242 (= e!3941678 (= (head!13238 Nil!65325) (c!1192455 (regOne!33278 r!7292))))))

(declare-fun d!2041099 () Bool)

(assert (=> d!2041099 e!3941681))

(declare-fun c!1193031 () Bool)

(assert (=> d!2041099 (= c!1193031 ((_ is EmptyExpr!16383) (regOne!33278 r!7292)))))

(assert (=> d!2041099 (= lt!2392583 e!3941679)))

(declare-fun c!1193030 () Bool)

(assert (=> d!2041099 (= c!1193030 (isEmpty!37533 Nil!65325))))

(assert (=> d!2041099 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2041099 (= (matchR!8566 (regOne!33278 r!7292) Nil!65325) lt!2392583)))

(assert (= (and d!2041099 c!1193030) b!6505240))

(assert (= (and d!2041099 (not c!1193030)) b!6505241))

(assert (= (and d!2041099 c!1193031) b!6505239))

(assert (= (and d!2041099 (not c!1193031)) b!6505249))

(assert (= (and b!6505249 c!1193032) b!6505238))

(assert (= (and b!6505249 (not c!1193032)) b!6505248))

(assert (= (and b!6505248 (not res!2671422)) b!6505243))

(assert (= (and b!6505243 res!2671426) b!6505245))

(assert (= (and b!6505245 res!2671429) b!6505250))

(assert (= (and b!6505250 res!2671427) b!6505242))

(assert (= (and b!6505243 (not res!2671425)) b!6505247))

(assert (= (and b!6505247 res!2671423) b!6505244))

(assert (= (and b!6505244 (not res!2671424)) b!6505246))

(assert (= (and b!6505246 (not res!2671428)) b!6505237))

(assert (= (or b!6505239 b!6505244 b!6505245) bm!563853))

(declare-fun m!7292376 () Bool)

(assert (=> d!2041099 m!7292376))

(assert (=> d!2041099 m!7291076))

(declare-fun m!7292378 () Bool)

(assert (=> b!6505241 m!7292378))

(assert (=> b!6505241 m!7292378))

(declare-fun m!7292380 () Bool)

(assert (=> b!6505241 m!7292380))

(declare-fun m!7292382 () Bool)

(assert (=> b!6505241 m!7292382))

(assert (=> b!6505241 m!7292380))

(assert (=> b!6505241 m!7292382))

(declare-fun m!7292384 () Bool)

(assert (=> b!6505241 m!7292384))

(assert (=> b!6505240 m!7292336))

(assert (=> b!6505250 m!7292382))

(assert (=> b!6505250 m!7292382))

(declare-fun m!7292386 () Bool)

(assert (=> b!6505250 m!7292386))

(assert (=> b!6505246 m!7292382))

(assert (=> b!6505246 m!7292382))

(assert (=> b!6505246 m!7292386))

(assert (=> b!6505237 m!7292378))

(assert (=> b!6505242 m!7292378))

(assert (=> bm!563853 m!7292376))

(assert (=> d!2040511 d!2041099))

(assert (=> d!2040511 d!2040991))

(declare-fun b!6505251 () Bool)

(declare-fun e!3941684 () (InoxSet Context!11534))

(declare-fun call!563859 () (InoxSet Context!11534))

(assert (=> b!6505251 (= e!3941684 call!563859)))

(declare-fun b!6505252 () Bool)

(declare-fun e!3941682 () (InoxSet Context!11534))

(assert (=> b!6505252 (= e!3941682 e!3941684)))

(declare-fun c!1193033 () Bool)

(assert (=> b!6505252 (= c!1193033 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))))))))

(declare-fun b!6505253 () Bool)

(assert (=> b!6505253 (= e!3941684 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505254 () Bool)

(assert (=> b!6505254 (= e!3941682 ((_ map or) call!563859 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343))))))) (h!71773 s!2326))))))

(declare-fun b!6505255 () Bool)

(declare-fun e!3941683 () Bool)

(assert (=> b!6505255 (= e!3941683 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343))))))))))

(declare-fun bm!563854 () Bool)

(assert (=> bm!563854 (= call!563859 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343))))))) (h!71773 s!2326)))))

(declare-fun d!2041101 () Bool)

(declare-fun c!1193034 () Bool)

(assert (=> d!2041101 (= c!1193034 e!3941683)))

(declare-fun res!2671430 () Bool)

(assert (=> d!2041101 (=> (not res!2671430) (not e!3941683))))

(assert (=> d!2041101 (= res!2671430 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))))))))

(assert (=> d!2041101 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326)) e!3941682)))

(assert (= (and d!2041101 res!2671430) b!6505255))

(assert (= (and d!2041101 c!1193034) b!6505254))

(assert (= (and d!2041101 (not c!1193034)) b!6505252))

(assert (= (and b!6505252 c!1193033) b!6505251))

(assert (= (and b!6505252 (not c!1193033)) b!6505253))

(assert (= (or b!6505254 b!6505251) bm!563854))

(declare-fun m!7292388 () Bool)

(assert (=> b!6505254 m!7292388))

(declare-fun m!7292390 () Bool)

(assert (=> b!6505255 m!7292390))

(declare-fun m!7292392 () Bool)

(assert (=> bm!563854 m!7292392))

(assert (=> b!6503739 d!2041101))

(declare-fun bs!1652335 () Bool)

(declare-fun d!2041103 () Bool)

(assert (= bs!1652335 (and d!2041103 d!2040541)))

(declare-fun lambda!360660 () Int)

(assert (=> bs!1652335 (= lambda!360660 lambda!360589)))

(declare-fun bs!1652336 () Bool)

(assert (= bs!1652336 (and d!2041103 d!2040947)))

(assert (=> bs!1652336 (= lambda!360660 lambda!360645)))

(declare-fun bs!1652337 () Bool)

(assert (= bs!1652337 (and d!2041103 d!2040859)))

(assert (=> bs!1652337 (= lambda!360660 lambda!360630)))

(declare-fun bs!1652338 () Bool)

(assert (= bs!1652338 (and d!2041103 d!2040925)))

(assert (=> bs!1652338 (= lambda!360660 lambda!360643)))

(declare-fun bs!1652339 () Bool)

(assert (= bs!1652339 (and d!2041103 d!2040443)))

(assert (=> bs!1652339 (= lambda!360660 lambda!360562)))

(declare-fun bs!1652340 () Bool)

(assert (= bs!1652340 (and d!2041103 d!2040441)))

(assert (=> bs!1652340 (= lambda!360660 lambda!360559)))

(declare-fun bs!1652341 () Bool)

(assert (= bs!1652341 (and d!2041103 d!2040503)))

(assert (=> bs!1652341 (= lambda!360660 lambda!360574)))

(declare-fun bs!1652342 () Bool)

(assert (= bs!1652342 (and d!2041103 d!2041017)))

(assert (=> bs!1652342 (= lambda!360660 lambda!360653)))

(declare-fun bs!1652343 () Bool)

(assert (= bs!1652343 (and d!2041103 d!2041065)))

(assert (=> bs!1652343 (= lambda!360660 lambda!360658)))

(declare-fun bs!1652344 () Bool)

(assert (= bs!1652344 (and d!2041103 d!2040509)))

(assert (=> bs!1652344 (= lambda!360660 lambda!360577)))

(declare-fun bs!1652345 () Bool)

(assert (= bs!1652345 (and d!2041103 d!2040951)))

(assert (=> bs!1652345 (= lambda!360660 lambda!360646)))

(declare-fun bs!1652346 () Bool)

(assert (= bs!1652346 (and d!2041103 b!6503167)))

(assert (=> bs!1652346 (= lambda!360660 lambda!360522)))

(declare-fun bs!1652347 () Bool)

(assert (= bs!1652347 (and d!2041103 d!2040549)))

(assert (=> bs!1652347 (= lambda!360660 lambda!360590)))

(declare-fun bs!1652348 () Bool)

(assert (= bs!1652348 (and d!2041103 d!2040853)))

(assert (=> bs!1652348 (= lambda!360660 lambda!360628)))

(declare-fun bs!1652349 () Bool)

(assert (= bs!1652349 (and d!2041103 d!2041019)))

(assert (=> bs!1652349 (= lambda!360660 lambda!360654)))

(declare-fun b!6505256 () Bool)

(declare-fun e!3941687 () Regex!16383)

(assert (=> b!6505256 (= e!3941687 (Union!16383 (h!71772 (t!379082 (unfocusZipperList!1804 zl!343))) (generalisedUnion!2227 (t!379082 (t!379082 (unfocusZipperList!1804 zl!343))))))))

(declare-fun b!6505257 () Bool)

(declare-fun e!3941690 () Bool)

(declare-fun e!3941685 () Bool)

(assert (=> b!6505257 (= e!3941690 e!3941685)))

(declare-fun c!1193037 () Bool)

(assert (=> b!6505257 (= c!1193037 (isEmpty!37530 (tail!12322 (t!379082 (unfocusZipperList!1804 zl!343)))))))

(declare-fun e!3941686 () Bool)

(assert (=> d!2041103 e!3941686))

(declare-fun res!2671431 () Bool)

(assert (=> d!2041103 (=> (not res!2671431) (not e!3941686))))

(declare-fun lt!2392584 () Regex!16383)

(assert (=> d!2041103 (= res!2671431 (validRegex!8119 lt!2392584))))

(declare-fun e!3941688 () Regex!16383)

(assert (=> d!2041103 (= lt!2392584 e!3941688)))

(declare-fun c!1193036 () Bool)

(declare-fun e!3941689 () Bool)

(assert (=> d!2041103 (= c!1193036 e!3941689)))

(declare-fun res!2671432 () Bool)

(assert (=> d!2041103 (=> (not res!2671432) (not e!3941689))))

(assert (=> d!2041103 (= res!2671432 ((_ is Cons!65324) (t!379082 (unfocusZipperList!1804 zl!343))))))

(assert (=> d!2041103 (forall!15564 (t!379082 (unfocusZipperList!1804 zl!343)) lambda!360660)))

(assert (=> d!2041103 (= (generalisedUnion!2227 (t!379082 (unfocusZipperList!1804 zl!343))) lt!2392584)))

(declare-fun b!6505258 () Bool)

(assert (=> b!6505258 (= e!3941689 (isEmpty!37530 (t!379082 (t!379082 (unfocusZipperList!1804 zl!343)))))))

(declare-fun b!6505259 () Bool)

(assert (=> b!6505259 (= e!3941688 e!3941687)))

(declare-fun c!1193038 () Bool)

(assert (=> b!6505259 (= c!1193038 ((_ is Cons!65324) (t!379082 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6505260 () Bool)

(assert (=> b!6505260 (= e!3941685 (isUnion!1211 lt!2392584))))

(declare-fun b!6505261 () Bool)

(assert (=> b!6505261 (= e!3941688 (h!71772 (t!379082 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6505262 () Bool)

(assert (=> b!6505262 (= e!3941686 e!3941690)))

(declare-fun c!1193035 () Bool)

(assert (=> b!6505262 (= c!1193035 (isEmpty!37530 (t!379082 (unfocusZipperList!1804 zl!343))))))

(declare-fun b!6505263 () Bool)

(assert (=> b!6505263 (= e!3941685 (= lt!2392584 (head!13237 (t!379082 (unfocusZipperList!1804 zl!343)))))))

(declare-fun b!6505264 () Bool)

(assert (=> b!6505264 (= e!3941687 EmptyLang!16383)))

(declare-fun b!6505265 () Bool)

(assert (=> b!6505265 (= e!3941690 (isEmptyLang!1781 lt!2392584))))

(assert (= (and d!2041103 res!2671432) b!6505258))

(assert (= (and d!2041103 c!1193036) b!6505261))

(assert (= (and d!2041103 (not c!1193036)) b!6505259))

(assert (= (and b!6505259 c!1193038) b!6505256))

(assert (= (and b!6505259 (not c!1193038)) b!6505264))

(assert (= (and d!2041103 res!2671431) b!6505262))

(assert (= (and b!6505262 c!1193035) b!6505265))

(assert (= (and b!6505262 (not c!1193035)) b!6505257))

(assert (= (and b!6505257 c!1193037) b!6505263))

(assert (= (and b!6505257 (not c!1193037)) b!6505260))

(declare-fun m!7292394 () Bool)

(assert (=> b!6505257 m!7292394))

(assert (=> b!6505257 m!7292394))

(declare-fun m!7292396 () Bool)

(assert (=> b!6505257 m!7292396))

(declare-fun m!7292398 () Bool)

(assert (=> b!6505265 m!7292398))

(declare-fun m!7292400 () Bool)

(assert (=> d!2041103 m!7292400))

(declare-fun m!7292402 () Bool)

(assert (=> d!2041103 m!7292402))

(declare-fun m!7292404 () Bool)

(assert (=> b!6505260 m!7292404))

(assert (=> b!6505262 m!7290876))

(declare-fun m!7292406 () Bool)

(assert (=> b!6505258 m!7292406))

(declare-fun m!7292408 () Bool)

(assert (=> b!6505263 m!7292408))

(declare-fun m!7292410 () Bool)

(assert (=> b!6505256 m!7292410))

(assert (=> b!6503640 d!2041103))

(declare-fun b!6505266 () Bool)

(declare-fun e!3941693 () (InoxSet Context!11534))

(declare-fun call!563860 () (InoxSet Context!11534))

(assert (=> b!6505266 (= e!3941693 call!563860)))

(declare-fun b!6505267 () Bool)

(declare-fun e!3941691 () (InoxSet Context!11534))

(assert (=> b!6505267 (= e!3941691 e!3941693)))

(declare-fun c!1193039 () Bool)

(assert (=> b!6505267 (= c!1193039 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397))))))))

(declare-fun b!6505268 () Bool)

(assert (=> b!6505268 (= e!3941693 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505269 () Bool)

(assert (=> b!6505269 (= e!3941691 ((_ map or) call!563860 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397)))))) (h!71773 s!2326))))))

(declare-fun b!6505270 () Bool)

(declare-fun e!3941692 () Bool)

(assert (=> b!6505270 (= e!3941692 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397)))))))))

(declare-fun bm!563855 () Bool)

(assert (=> bm!563855 (= call!563860 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397)))))) (h!71773 s!2326)))))

(declare-fun d!2041105 () Bool)

(declare-fun c!1193040 () Bool)

(assert (=> d!2041105 (= c!1193040 e!3941692)))

(declare-fun res!2671433 () Bool)

(assert (=> d!2041105 (=> (not res!2671433) (not e!3941692))))

(assert (=> d!2041105 (= res!2671433 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397))))))))

(assert (=> d!2041105 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (h!71773 s!2326)) e!3941691)))

(assert (= (and d!2041105 res!2671433) b!6505270))

(assert (= (and d!2041105 c!1193040) b!6505269))

(assert (= (and d!2041105 (not c!1193040)) b!6505267))

(assert (= (and b!6505267 c!1193039) b!6505266))

(assert (= (and b!6505267 (not c!1193039)) b!6505268))

(assert (= (or b!6505269 b!6505266) bm!563855))

(declare-fun m!7292412 () Bool)

(assert (=> b!6505269 m!7292412))

(declare-fun m!7292414 () Bool)

(assert (=> b!6505270 m!7292414))

(declare-fun m!7292416 () Bool)

(assert (=> bm!563855 m!7292416))

(assert (=> b!6503734 d!2041105))

(assert (=> d!2040473 d!2040901))

(declare-fun d!2041107 () Bool)

(assert (=> d!2041107 (= ($colon$colon!2234 (exprs!6267 lt!2392388) (ite (or c!1192627 c!1192626) (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (regOne!33278 r!7292)))) (Cons!65324 (ite (or c!1192627 c!1192626) (regTwo!33278 (reg!16712 (regOne!33278 r!7292))) (reg!16712 (regOne!33278 r!7292))) (exprs!6267 lt!2392388)))))

(assert (=> bm!563586 d!2041107))

(declare-fun b!6505271 () Bool)

(declare-fun e!3941695 () List!65448)

(assert (=> b!6505271 (= e!3941695 lt!2392391)))

(declare-fun d!2041109 () Bool)

(declare-fun e!3941694 () Bool)

(assert (=> d!2041109 e!3941694))

(declare-fun res!2671435 () Bool)

(assert (=> d!2041109 (=> (not res!2671435) (not e!3941694))))

(declare-fun lt!2392585 () List!65448)

(assert (=> d!2041109 (= res!2671435 (= (content!12467 lt!2392585) ((_ map or) (content!12467 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))) (content!12467 lt!2392391))))))

(assert (=> d!2041109 (= lt!2392585 e!3941695)))

(declare-fun c!1193041 () Bool)

(assert (=> d!2041109 (= c!1193041 ((_ is Nil!65324) (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))))))

(assert (=> d!2041109 (= (++!14469 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)) lt!2392391) lt!2392585)))

(declare-fun b!6505273 () Bool)

(declare-fun res!2671434 () Bool)

(assert (=> b!6505273 (=> (not res!2671434) (not e!3941694))))

(assert (=> b!6505273 (= res!2671434 (= (size!40440 lt!2392585) (+ (size!40440 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))) (size!40440 lt!2392391))))))

(declare-fun b!6505272 () Bool)

(assert (=> b!6505272 (= e!3941695 (Cons!65324 (h!71772 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))) (++!14469 (t!379082 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))) lt!2392391)))))

(declare-fun b!6505274 () Bool)

(assert (=> b!6505274 (= e!3941694 (or (not (= lt!2392391 Nil!65324)) (= lt!2392585 (t!379082 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324)))))))

(assert (= (and d!2041109 c!1193041) b!6505271))

(assert (= (and d!2041109 (not c!1193041)) b!6505272))

(assert (= (and d!2041109 res!2671435) b!6505273))

(assert (= (and b!6505273 res!2671434) b!6505274))

(declare-fun m!7292418 () Bool)

(assert (=> d!2041109 m!7292418))

(assert (=> d!2041109 m!7292178))

(assert (=> d!2041109 m!7291148))

(declare-fun m!7292420 () Bool)

(assert (=> b!6505273 m!7292420))

(assert (=> b!6505273 m!7292252))

(assert (=> b!6505273 m!7291154))

(declare-fun m!7292422 () Bool)

(assert (=> b!6505272 m!7292422))

(assert (=> b!6503979 d!2041109))

(assert (=> bs!1651792 d!2040463))

(declare-fun b!6505275 () Bool)

(declare-fun e!3941696 () Bool)

(declare-fun e!3941702 () Bool)

(assert (=> b!6505275 (= e!3941696 e!3941702)))

(declare-fun res!2671436 () Bool)

(assert (=> b!6505275 (=> (not res!2671436) (not e!3941702))))

(declare-fun call!563862 () Bool)

(assert (=> b!6505275 (= res!2671436 call!563862)))

(declare-fun call!563861 () Bool)

(declare-fun c!1193043 () Bool)

(declare-fun c!1193042 () Bool)

(declare-fun bm!563856 () Bool)

(assert (=> bm!563856 (= call!563861 (validRegex!8119 (ite c!1193043 (reg!16712 lt!2392510) (ite c!1193042 (regOne!33279 lt!2392510) (regOne!33278 lt!2392510)))))))

(declare-fun b!6505276 () Bool)

(declare-fun e!3941701 () Bool)

(declare-fun call!563863 () Bool)

(assert (=> b!6505276 (= e!3941701 call!563863)))

(declare-fun b!6505277 () Bool)

(declare-fun res!2671437 () Bool)

(assert (=> b!6505277 (=> res!2671437 e!3941696)))

(assert (=> b!6505277 (= res!2671437 (not ((_ is Concat!25228) lt!2392510)))))

(declare-fun e!3941697 () Bool)

(assert (=> b!6505277 (= e!3941697 e!3941696)))

(declare-fun d!2041111 () Bool)

(declare-fun res!2671440 () Bool)

(declare-fun e!3941699 () Bool)

(assert (=> d!2041111 (=> res!2671440 e!3941699)))

(assert (=> d!2041111 (= res!2671440 ((_ is ElementMatch!16383) lt!2392510))))

(assert (=> d!2041111 (= (validRegex!8119 lt!2392510) e!3941699)))

(declare-fun bm!563857 () Bool)

(assert (=> bm!563857 (= call!563862 call!563861)))

(declare-fun b!6505278 () Bool)

(declare-fun e!3941698 () Bool)

(declare-fun e!3941700 () Bool)

(assert (=> b!6505278 (= e!3941698 e!3941700)))

(declare-fun res!2671439 () Bool)

(assert (=> b!6505278 (= res!2671439 (not (nullable!6376 (reg!16712 lt!2392510))))))

(assert (=> b!6505278 (=> (not res!2671439) (not e!3941700))))

(declare-fun b!6505279 () Bool)

(assert (=> b!6505279 (= e!3941698 e!3941697)))

(assert (=> b!6505279 (= c!1193042 ((_ is Union!16383) lt!2392510))))

(declare-fun b!6505280 () Bool)

(assert (=> b!6505280 (= e!3941700 call!563861)))

(declare-fun b!6505281 () Bool)

(assert (=> b!6505281 (= e!3941699 e!3941698)))

(assert (=> b!6505281 (= c!1193043 ((_ is Star!16383) lt!2392510))))

(declare-fun bm!563858 () Bool)

(assert (=> bm!563858 (= call!563863 (validRegex!8119 (ite c!1193042 (regTwo!33279 lt!2392510) (regTwo!33278 lt!2392510))))))

(declare-fun b!6505282 () Bool)

(assert (=> b!6505282 (= e!3941702 call!563863)))

(declare-fun b!6505283 () Bool)

(declare-fun res!2671438 () Bool)

(assert (=> b!6505283 (=> (not res!2671438) (not e!3941701))))

(assert (=> b!6505283 (= res!2671438 call!563862)))

(assert (=> b!6505283 (= e!3941697 e!3941701)))

(assert (= (and d!2041111 (not res!2671440)) b!6505281))

(assert (= (and b!6505281 c!1193043) b!6505278))

(assert (= (and b!6505281 (not c!1193043)) b!6505279))

(assert (= (and b!6505278 res!2671439) b!6505280))

(assert (= (and b!6505279 c!1193042) b!6505283))

(assert (= (and b!6505279 (not c!1193042)) b!6505277))

(assert (= (and b!6505283 res!2671438) b!6505276))

(assert (= (and b!6505277 (not res!2671437)) b!6505275))

(assert (= (and b!6505275 res!2671436) b!6505282))

(assert (= (or b!6505276 b!6505282) bm!563858))

(assert (= (or b!6505283 b!6505275) bm!563857))

(assert (= (or b!6505280 bm!563857) bm!563856))

(declare-fun m!7292424 () Bool)

(assert (=> bm!563856 m!7292424))

(declare-fun m!7292426 () Bool)

(assert (=> b!6505278 m!7292426))

(declare-fun m!7292428 () Bool)

(assert (=> bm!563858 m!7292428))

(assert (=> d!2040531 d!2041111))

(declare-fun bs!1652350 () Bool)

(declare-fun d!2041113 () Bool)

(assert (= bs!1652350 (and d!2041113 d!2040541)))

(declare-fun lambda!360661 () Int)

(assert (=> bs!1652350 (= lambda!360661 lambda!360589)))

(declare-fun bs!1652351 () Bool)

(assert (= bs!1652351 (and d!2041113 d!2040947)))

(assert (=> bs!1652351 (= lambda!360661 lambda!360645)))

(declare-fun bs!1652352 () Bool)

(assert (= bs!1652352 (and d!2041113 d!2040859)))

(assert (=> bs!1652352 (= lambda!360661 lambda!360630)))

(declare-fun bs!1652353 () Bool)

(assert (= bs!1652353 (and d!2041113 d!2040925)))

(assert (=> bs!1652353 (= lambda!360661 lambda!360643)))

(declare-fun bs!1652354 () Bool)

(assert (= bs!1652354 (and d!2041113 d!2040443)))

(assert (=> bs!1652354 (= lambda!360661 lambda!360562)))

(declare-fun bs!1652355 () Bool)

(assert (= bs!1652355 (and d!2041113 d!2040441)))

(assert (=> bs!1652355 (= lambda!360661 lambda!360559)))

(declare-fun bs!1652356 () Bool)

(assert (= bs!1652356 (and d!2041113 d!2040503)))

(assert (=> bs!1652356 (= lambda!360661 lambda!360574)))

(declare-fun bs!1652357 () Bool)

(assert (= bs!1652357 (and d!2041113 d!2041017)))

(assert (=> bs!1652357 (= lambda!360661 lambda!360653)))

(declare-fun bs!1652358 () Bool)

(assert (= bs!1652358 (and d!2041113 d!2041065)))

(assert (=> bs!1652358 (= lambda!360661 lambda!360658)))

(declare-fun bs!1652359 () Bool)

(assert (= bs!1652359 (and d!2041113 d!2040509)))

(assert (=> bs!1652359 (= lambda!360661 lambda!360577)))

(declare-fun bs!1652360 () Bool)

(assert (= bs!1652360 (and d!2041113 d!2041103)))

(assert (=> bs!1652360 (= lambda!360661 lambda!360660)))

(declare-fun bs!1652361 () Bool)

(assert (= bs!1652361 (and d!2041113 d!2040951)))

(assert (=> bs!1652361 (= lambda!360661 lambda!360646)))

(declare-fun bs!1652362 () Bool)

(assert (= bs!1652362 (and d!2041113 b!6503167)))

(assert (=> bs!1652362 (= lambda!360661 lambda!360522)))

(declare-fun bs!1652363 () Bool)

(assert (= bs!1652363 (and d!2041113 d!2040549)))

(assert (=> bs!1652363 (= lambda!360661 lambda!360590)))

(declare-fun bs!1652364 () Bool)

(assert (= bs!1652364 (and d!2041113 d!2040853)))

(assert (=> bs!1652364 (= lambda!360661 lambda!360628)))

(declare-fun bs!1652365 () Bool)

(assert (= bs!1652365 (and d!2041113 d!2041019)))

(assert (=> bs!1652365 (= lambda!360661 lambda!360654)))

(declare-fun b!6505284 () Bool)

(declare-fun e!3941705 () Regex!16383)

(assert (=> b!6505284 (= e!3941705 (Union!16383 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))) (generalisedUnion!2227 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))))

(declare-fun b!6505285 () Bool)

(declare-fun e!3941708 () Bool)

(declare-fun e!3941703 () Bool)

(assert (=> b!6505285 (= e!3941708 e!3941703)))

(declare-fun c!1193046 () Bool)

(assert (=> b!6505285 (= c!1193046 (isEmpty!37530 (tail!12322 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326)))))))

(declare-fun e!3941704 () Bool)

(assert (=> d!2041113 e!3941704))

(declare-fun res!2671441 () Bool)

(assert (=> d!2041113 (=> (not res!2671441) (not e!3941704))))

(declare-fun lt!2392586 () Regex!16383)

(assert (=> d!2041113 (= res!2671441 (validRegex!8119 lt!2392586))))

(declare-fun e!3941706 () Regex!16383)

(assert (=> d!2041113 (= lt!2392586 e!3941706)))

(declare-fun c!1193045 () Bool)

(declare-fun e!3941707 () Bool)

(assert (=> d!2041113 (= c!1193045 e!3941707)))

(declare-fun res!2671442 () Bool)

(assert (=> d!2041113 (=> (not res!2671442) (not e!3941707))))

(assert (=> d!2041113 (= res!2671442 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))

(assert (=> d!2041113 (forall!15564 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326)) lambda!360661)))

(assert (=> d!2041113 (= (generalisedUnion!2227 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))) lt!2392586)))

(declare-fun b!6505286 () Bool)

(assert (=> b!6505286 (= e!3941707 (isEmpty!37530 (t!379082 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326)))))))

(declare-fun b!6505287 () Bool)

(assert (=> b!6505287 (= e!3941706 e!3941705)))

(declare-fun c!1193047 () Bool)

(assert (=> b!6505287 (= c!1193047 ((_ is Cons!65324) (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))

(declare-fun b!6505288 () Bool)

(assert (=> b!6505288 (= e!3941703 (isUnion!1211 lt!2392586))))

(declare-fun b!6505289 () Bool)

(assert (=> b!6505289 (= e!3941706 (h!71772 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))

(declare-fun b!6505290 () Bool)

(assert (=> b!6505290 (= e!3941704 e!3941708)))

(declare-fun c!1193044 () Bool)

(assert (=> b!6505290 (= c!1193044 (isEmpty!37530 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326))))))

(declare-fun b!6505291 () Bool)

(assert (=> b!6505291 (= e!3941703 (= lt!2392586 (head!13237 (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326)))))))

(declare-fun b!6505292 () Bool)

(assert (=> b!6505292 (= e!3941705 EmptyLang!16383)))

(declare-fun b!6505293 () Bool)

(assert (=> b!6505293 (= e!3941708 (isEmptyLang!1781 lt!2392586))))

(assert (= (and d!2041113 res!2671442) b!6505286))

(assert (= (and d!2041113 c!1193045) b!6505289))

(assert (= (and d!2041113 (not c!1193045)) b!6505287))

(assert (= (and b!6505287 c!1193047) b!6505284))

(assert (= (and b!6505287 (not c!1193047)) b!6505292))

(assert (= (and d!2041113 res!2671441) b!6505290))

(assert (= (and b!6505290 c!1193044) b!6505293))

(assert (= (and b!6505290 (not c!1193044)) b!6505285))

(assert (= (and b!6505285 c!1193046) b!6505291))

(assert (= (and b!6505285 (not c!1193046)) b!6505288))

(assert (=> b!6505285 m!7291124))

(declare-fun m!7292430 () Bool)

(assert (=> b!6505285 m!7292430))

(assert (=> b!6505285 m!7292430))

(declare-fun m!7292432 () Bool)

(assert (=> b!6505285 m!7292432))

(declare-fun m!7292434 () Bool)

(assert (=> b!6505293 m!7292434))

(declare-fun m!7292436 () Bool)

(assert (=> d!2041113 m!7292436))

(assert (=> d!2041113 m!7291124))

(declare-fun m!7292438 () Bool)

(assert (=> d!2041113 m!7292438))

(declare-fun m!7292440 () Bool)

(assert (=> b!6505288 m!7292440))

(assert (=> b!6505290 m!7291124))

(declare-fun m!7292442 () Bool)

(assert (=> b!6505290 m!7292442))

(declare-fun m!7292444 () Bool)

(assert (=> b!6505286 m!7292444))

(assert (=> b!6505291 m!7291124))

(declare-fun m!7292446 () Bool)

(assert (=> b!6505291 m!7292446))

(declare-fun m!7292448 () Bool)

(assert (=> b!6505284 m!7292448))

(assert (=> d!2040531 d!2041113))

(declare-fun bs!1652366 () Bool)

(declare-fun d!2041115 () Bool)

(assert (= bs!1652366 (and d!2041115 d!2040541)))

(declare-fun lambda!360662 () Int)

(assert (=> bs!1652366 (= lambda!360662 lambda!360589)))

(declare-fun bs!1652367 () Bool)

(assert (= bs!1652367 (and d!2041115 d!2040947)))

(assert (=> bs!1652367 (= lambda!360662 lambda!360645)))

(declare-fun bs!1652368 () Bool)

(assert (= bs!1652368 (and d!2041115 d!2040859)))

(assert (=> bs!1652368 (= lambda!360662 lambda!360630)))

(declare-fun bs!1652369 () Bool)

(assert (= bs!1652369 (and d!2041115 d!2040925)))

(assert (=> bs!1652369 (= lambda!360662 lambda!360643)))

(declare-fun bs!1652370 () Bool)

(assert (= bs!1652370 (and d!2041115 d!2040443)))

(assert (=> bs!1652370 (= lambda!360662 lambda!360562)))

(declare-fun bs!1652371 () Bool)

(assert (= bs!1652371 (and d!2041115 d!2040441)))

(assert (=> bs!1652371 (= lambda!360662 lambda!360559)))

(declare-fun bs!1652372 () Bool)

(assert (= bs!1652372 (and d!2041115 d!2041113)))

(assert (=> bs!1652372 (= lambda!360662 lambda!360661)))

(declare-fun bs!1652373 () Bool)

(assert (= bs!1652373 (and d!2041115 d!2040503)))

(assert (=> bs!1652373 (= lambda!360662 lambda!360574)))

(declare-fun bs!1652374 () Bool)

(assert (= bs!1652374 (and d!2041115 d!2041017)))

(assert (=> bs!1652374 (= lambda!360662 lambda!360653)))

(declare-fun bs!1652375 () Bool)

(assert (= bs!1652375 (and d!2041115 d!2041065)))

(assert (=> bs!1652375 (= lambda!360662 lambda!360658)))

(declare-fun bs!1652376 () Bool)

(assert (= bs!1652376 (and d!2041115 d!2040509)))

(assert (=> bs!1652376 (= lambda!360662 lambda!360577)))

(declare-fun bs!1652377 () Bool)

(assert (= bs!1652377 (and d!2041115 d!2041103)))

(assert (=> bs!1652377 (= lambda!360662 lambda!360660)))

(declare-fun bs!1652378 () Bool)

(assert (= bs!1652378 (and d!2041115 d!2040951)))

(assert (=> bs!1652378 (= lambda!360662 lambda!360646)))

(declare-fun bs!1652379 () Bool)

(assert (= bs!1652379 (and d!2041115 b!6503167)))

(assert (=> bs!1652379 (= lambda!360662 lambda!360522)))

(declare-fun bs!1652380 () Bool)

(assert (= bs!1652380 (and d!2041115 d!2040549)))

(assert (=> bs!1652380 (= lambda!360662 lambda!360590)))

(declare-fun bs!1652381 () Bool)

(assert (= bs!1652381 (and d!2041115 d!2040853)))

(assert (=> bs!1652381 (= lambda!360662 lambda!360628)))

(declare-fun bs!1652382 () Bool)

(assert (= bs!1652382 (and d!2041115 d!2041019)))

(assert (=> bs!1652382 (= lambda!360662 lambda!360654)))

(declare-fun lt!2392587 () List!65448)

(assert (=> d!2041115 (forall!15564 lt!2392587 lambda!360662)))

(declare-fun e!3941709 () List!65448)

(assert (=> d!2041115 (= lt!2392587 e!3941709)))

(declare-fun c!1193048 () Bool)

(assert (=> d!2041115 (= c!1193048 ((_ is Cons!65326) (Cons!65326 lt!2392390 Nil!65326)))))

(assert (=> d!2041115 (= (unfocusZipperList!1804 (Cons!65326 lt!2392390 Nil!65326)) lt!2392587)))

(declare-fun b!6505294 () Bool)

(assert (=> b!6505294 (= e!3941709 (Cons!65324 (generalisedConcat!1980 (exprs!6267 (h!71774 (Cons!65326 lt!2392390 Nil!65326)))) (unfocusZipperList!1804 (t!379084 (Cons!65326 lt!2392390 Nil!65326)))))))

(declare-fun b!6505295 () Bool)

(assert (=> b!6505295 (= e!3941709 Nil!65324)))

(assert (= (and d!2041115 c!1193048) b!6505294))

(assert (= (and d!2041115 (not c!1193048)) b!6505295))

(declare-fun m!7292450 () Bool)

(assert (=> d!2041115 m!7292450))

(declare-fun m!7292452 () Bool)

(assert (=> b!6505294 m!7292452))

(declare-fun m!7292454 () Bool)

(assert (=> b!6505294 m!7292454))

(assert (=> d!2040531 d!2041115))

(declare-fun d!2041117 () Bool)

(assert (=> d!2041117 (= (isEmpty!37530 (tail!12322 (exprs!6267 (h!71774 zl!343)))) ((_ is Nil!65324) (tail!12322 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> b!6503891 d!2041117))

(declare-fun d!2041119 () Bool)

(assert (=> d!2041119 (= (tail!12322 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))

(assert (=> b!6503891 d!2041119))

(assert (=> d!2040543 d!2040547))

(declare-fun d!2041121 () Bool)

(assert (=> d!2041121 (= (map!14883 lt!2392369 lambda!360521) (store ((as const (Array Context!11534 Bool)) false) (dynLambda!25952 lambda!360521 lt!2392373) true))))

(assert (=> d!2041121 true))

(declare-fun _$12!1650 () Unit!158867)

(assert (=> d!2041121 (= (choose!48311 lt!2392369 lt!2392373 lambda!360521) _$12!1650)))

(declare-fun b_lambda!246287 () Bool)

(assert (=> (not b_lambda!246287) (not d!2041121)))

(declare-fun bs!1652383 () Bool)

(assert (= bs!1652383 d!2041121))

(assert (=> bs!1652383 m!7290522))

(assert (=> bs!1652383 m!7291160))

(assert (=> bs!1652383 m!7291160))

(assert (=> bs!1652383 m!7291164))

(assert (=> d!2040543 d!2041121))

(assert (=> d!2040467 d!2040465))

(declare-fun d!2041123 () Bool)

(assert (=> d!2041123 (= (flatMap!1888 lt!2392369 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392373))))

(assert (=> d!2041123 true))

(declare-fun _$13!3763 () Unit!158867)

(assert (=> d!2041123 (= (choose!48302 lt!2392369 lt!2392373 lambda!360520) _$13!3763)))

(declare-fun b_lambda!246289 () Bool)

(assert (=> (not b_lambda!246289) (not d!2041123)))

(declare-fun bs!1652384 () Bool)

(assert (= bs!1652384 d!2041123))

(assert (=> bs!1652384 m!7290494))

(assert (=> bs!1652384 m!7290938))

(assert (=> d!2040467 d!2041123))

(declare-fun d!2041125 () Bool)

(assert (=> d!2041125 (= (isUnion!1211 lt!2392465) ((_ is Union!16383) lt!2392465))))

(assert (=> b!6503644 d!2041125))

(declare-fun d!2041127 () Bool)

(declare-fun c!1193049 () Bool)

(assert (=> d!2041127 (= c!1193049 (isEmpty!37533 (tail!12323 (t!379083 s!2326))))))

(declare-fun e!3941710 () Bool)

(assert (=> d!2041127 (= (matchZipper!2395 (derivationStepZipper!2349 lt!2392389 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))) e!3941710)))

(declare-fun b!6505296 () Bool)

(assert (=> b!6505296 (= e!3941710 (nullableZipper!2138 (derivationStepZipper!2349 lt!2392389 (head!13238 (t!379083 s!2326)))))))

(declare-fun b!6505297 () Bool)

(assert (=> b!6505297 (= e!3941710 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 lt!2392389 (head!13238 (t!379083 s!2326))) (head!13238 (tail!12323 (t!379083 s!2326)))) (tail!12323 (tail!12323 (t!379083 s!2326)))))))

(assert (= (and d!2041127 c!1193049) b!6505296))

(assert (= (and d!2041127 (not c!1193049)) b!6505297))

(assert (=> d!2041127 m!7290914))

(assert (=> d!2041127 m!7291932))

(assert (=> b!6505296 m!7290962))

(declare-fun m!7292456 () Bool)

(assert (=> b!6505296 m!7292456))

(assert (=> b!6505297 m!7290914))

(assert (=> b!6505297 m!7291936))

(assert (=> b!6505297 m!7290962))

(assert (=> b!6505297 m!7291936))

(declare-fun m!7292458 () Bool)

(assert (=> b!6505297 m!7292458))

(assert (=> b!6505297 m!7290914))

(assert (=> b!6505297 m!7291940))

(assert (=> b!6505297 m!7292458))

(assert (=> b!6505297 m!7291940))

(declare-fun m!7292460 () Bool)

(assert (=> b!6505297 m!7292460))

(assert (=> b!6503692 d!2041127))

(declare-fun bs!1652385 () Bool)

(declare-fun d!2041129 () Bool)

(assert (= bs!1652385 (and d!2041129 d!2040985)))

(declare-fun lambda!360663 () Int)

(assert (=> bs!1652385 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360663 lambda!360648))))

(declare-fun bs!1652386 () Bool)

(assert (= bs!1652386 (and d!2041129 d!2040453)))

(assert (=> bs!1652386 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360663 lambda!360565))))

(declare-fun bs!1652387 () Bool)

(assert (= bs!1652387 (and d!2041129 d!2040885)))

(assert (=> bs!1652387 (= lambda!360663 lambda!360636)))

(declare-fun bs!1652388 () Bool)

(assert (= bs!1652388 (and d!2041129 d!2040789)))

(assert (=> bs!1652388 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360663 lambda!360616))))

(declare-fun bs!1652389 () Bool)

(assert (= bs!1652389 (and d!2041129 d!2041097)))

(assert (=> bs!1652389 (= lambda!360663 lambda!360659)))

(declare-fun bs!1652390 () Bool)

(assert (= bs!1652390 (and d!2041129 b!6503160)))

(assert (=> bs!1652390 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360663 lambda!360520))))

(assert (=> d!2041129 true))

(assert (=> d!2041129 (= (derivationStepZipper!2349 lt!2392389 (head!13238 (t!379083 s!2326))) (flatMap!1888 lt!2392389 lambda!360663))))

(declare-fun bs!1652391 () Bool)

(assert (= bs!1652391 d!2041129))

(declare-fun m!7292462 () Bool)

(assert (=> bs!1652391 m!7292462))

(assert (=> b!6503692 d!2041129))

(assert (=> b!6503692 d!2040887))

(assert (=> b!6503692 d!2040889))

(declare-fun d!2041131 () Bool)

(assert (=> d!2041131 (= (Exists!3453 lambda!360585) (choose!48307 lambda!360585))))

(declare-fun bs!1652392 () Bool)

(assert (= bs!1652392 d!2041131))

(declare-fun m!7292464 () Bool)

(assert (=> bs!1652392 m!7292464))

(assert (=> d!2040519 d!2041131))

(declare-fun d!2041133 () Bool)

(assert (=> d!2041133 (= (Exists!3453 lambda!360586) (choose!48307 lambda!360586))))

(declare-fun bs!1652393 () Bool)

(assert (= bs!1652393 d!2041133))

(declare-fun m!7292466 () Bool)

(assert (=> bs!1652393 m!7292466))

(assert (=> d!2040519 d!2041133))

(declare-fun bs!1652394 () Bool)

(declare-fun d!2041135 () Bool)

(assert (= bs!1652394 (and d!2041135 b!6503964)))

(declare-fun lambda!360668 () Int)

(assert (=> bs!1652394 (not (= lambda!360668 lambda!360588))))

(declare-fun bs!1652395 () Bool)

(assert (= bs!1652395 (and d!2041135 b!6503796)))

(assert (=> bs!1652395 (not (= lambda!360668 lambda!360570))))

(declare-fun bs!1652396 () Bool)

(assert (= bs!1652396 (and d!2041135 d!2040519)))

(assert (=> bs!1652396 (not (= lambda!360668 lambda!360586))))

(assert (=> bs!1652396 (= lambda!360668 lambda!360585)))

(declare-fun bs!1652397 () Bool)

(assert (= bs!1652397 (and d!2041135 b!6504574)))

(assert (=> bs!1652397 (not (= lambda!360668 lambda!360622))))

(declare-fun bs!1652398 () Bool)

(assert (= bs!1652398 (and d!2041135 b!6503182)))

(assert (=> bs!1652398 (not (= lambda!360668 lambda!360519))))

(declare-fun bs!1652399 () Bool)

(assert (= bs!1652399 (and d!2041135 b!6503793)))

(assert (=> bs!1652399 (not (= lambda!360668 lambda!360571))))

(declare-fun bs!1652400 () Bool)

(assert (= bs!1652400 (and d!2041135 b!6504701)))

(assert (=> bs!1652400 (not (= lambda!360668 lambda!360632))))

(declare-fun bs!1652401 () Bool)

(assert (= bs!1652401 (and d!2041135 b!6504571)))

(assert (=> bs!1652401 (not (= lambda!360668 lambda!360624))))

(declare-fun bs!1652402 () Bool)

(assert (= bs!1652402 (and d!2041135 b!6503967)))

(assert (=> bs!1652402 (not (= lambda!360668 lambda!360587))))

(declare-fun bs!1652403 () Bool)

(assert (= bs!1652403 (and d!2041135 b!6505098)))

(assert (=> bs!1652403 (not (= lambda!360668 lambda!360655))))

(declare-fun bs!1652404 () Bool)

(assert (= bs!1652404 (and d!2041135 b!6504698)))

(assert (=> bs!1652404 (not (= lambda!360668 lambda!360635))))

(assert (=> bs!1652398 (= lambda!360668 lambda!360518)))

(declare-fun bs!1652405 () Bool)

(assert (= bs!1652405 (and d!2041135 b!6505095)))

(assert (=> bs!1652405 (not (= lambda!360668 lambda!360656))))

(declare-fun bs!1652406 () Bool)

(assert (= bs!1652406 (and d!2041135 d!2040517)))

(assert (=> bs!1652406 (= lambda!360668 lambda!360580)))

(declare-fun bs!1652407 () Bool)

(assert (= bs!1652407 (and d!2041135 d!2040995)))

(assert (=> bs!1652407 (= lambda!360668 lambda!360651)))

(assert (=> d!2041135 true))

(assert (=> d!2041135 true))

(assert (=> d!2041135 true))

(declare-fun lambda!360669 () Int)

(assert (=> bs!1652394 (= (and (= (regOne!33278 r!7292) (regOne!33278 lt!2392375)) (= (regTwo!33278 r!7292) (regTwo!33278 lt!2392375))) (= lambda!360669 lambda!360588))))

(assert (=> bs!1652395 (not (= lambda!360669 lambda!360570))))

(assert (=> bs!1652396 (= lambda!360669 lambda!360586)))

(assert (=> bs!1652396 (not (= lambda!360669 lambda!360585))))

(assert (=> bs!1652397 (not (= lambda!360669 lambda!360622))))

(assert (=> bs!1652398 (= lambda!360669 lambda!360519)))

(assert (=> bs!1652399 (= lambda!360669 lambda!360571)))

(declare-fun bs!1652408 () Bool)

(assert (= bs!1652408 d!2041135))

(assert (=> bs!1652408 (not (= lambda!360669 lambda!360668))))

(assert (=> bs!1652400 (not (= lambda!360669 lambda!360632))))

(assert (=> bs!1652401 (= (and (= (regOne!33278 r!7292) (regOne!33278 (regOne!33279 r!7292))) (= (regTwo!33278 r!7292) (regTwo!33278 (regOne!33279 r!7292)))) (= lambda!360669 lambda!360624))))

(assert (=> bs!1652402 (not (= lambda!360669 lambda!360587))))

(assert (=> bs!1652403 (not (= lambda!360669 lambda!360655))))

(assert (=> bs!1652404 (= (and (= (regOne!33278 r!7292) (regOne!33278 (regTwo!33279 lt!2392375))) (= (regTwo!33278 r!7292) (regTwo!33278 (regTwo!33279 lt!2392375)))) (= lambda!360669 lambda!360635))))

(assert (=> bs!1652398 (not (= lambda!360669 lambda!360518))))

(assert (=> bs!1652405 (= (and (= (regOne!33278 r!7292) (regOne!33278 (regOne!33279 lt!2392375))) (= (regTwo!33278 r!7292) (regTwo!33278 (regOne!33279 lt!2392375)))) (= lambda!360669 lambda!360656))))

(assert (=> bs!1652406 (not (= lambda!360669 lambda!360580))))

(assert (=> bs!1652407 (not (= lambda!360669 lambda!360651))))

(assert (=> d!2041135 true))

(assert (=> d!2041135 true))

(assert (=> d!2041135 true))

(assert (=> d!2041135 (= (Exists!3453 lambda!360668) (Exists!3453 lambda!360669))))

(assert (=> d!2041135 true))

(declare-fun _$90!2377 () Unit!158867)

(assert (=> d!2041135 (= (choose!48309 (regOne!33278 r!7292) (regTwo!33278 r!7292) s!2326) _$90!2377)))

(declare-fun m!7292468 () Bool)

(assert (=> bs!1652408 m!7292468))

(declare-fun m!7292470 () Bool)

(assert (=> bs!1652408 m!7292470))

(assert (=> d!2040519 d!2041135))

(assert (=> d!2040519 d!2040991))

(declare-fun b!6505306 () Bool)

(declare-fun e!3941715 () Bool)

(declare-fun e!3941721 () Bool)

(assert (=> b!6505306 (= e!3941715 e!3941721)))

(declare-fun res!2671451 () Bool)

(assert (=> b!6505306 (=> (not res!2671451) (not e!3941721))))

(declare-fun call!563865 () Bool)

(assert (=> b!6505306 (= res!2671451 call!563865)))

(declare-fun bm!563859 () Bool)

(declare-fun c!1193051 () Bool)

(declare-fun call!563864 () Bool)

(declare-fun c!1193050 () Bool)

(assert (=> bm!563859 (= call!563864 (validRegex!8119 (ite c!1193051 (reg!16712 lt!2392490) (ite c!1193050 (regOne!33279 lt!2392490) (regOne!33278 lt!2392490)))))))

(declare-fun b!6505307 () Bool)

(declare-fun e!3941720 () Bool)

(declare-fun call!563866 () Bool)

(assert (=> b!6505307 (= e!3941720 call!563866)))

(declare-fun b!6505308 () Bool)

(declare-fun res!2671452 () Bool)

(assert (=> b!6505308 (=> res!2671452 e!3941715)))

(assert (=> b!6505308 (= res!2671452 (not ((_ is Concat!25228) lt!2392490)))))

(declare-fun e!3941716 () Bool)

(assert (=> b!6505308 (= e!3941716 e!3941715)))

(declare-fun d!2041137 () Bool)

(declare-fun res!2671455 () Bool)

(declare-fun e!3941718 () Bool)

(assert (=> d!2041137 (=> res!2671455 e!3941718)))

(assert (=> d!2041137 (= res!2671455 ((_ is ElementMatch!16383) lt!2392490))))

(assert (=> d!2041137 (= (validRegex!8119 lt!2392490) e!3941718)))

(declare-fun bm!563860 () Bool)

(assert (=> bm!563860 (= call!563865 call!563864)))

(declare-fun b!6505309 () Bool)

(declare-fun e!3941717 () Bool)

(declare-fun e!3941719 () Bool)

(assert (=> b!6505309 (= e!3941717 e!3941719)))

(declare-fun res!2671454 () Bool)

(assert (=> b!6505309 (= res!2671454 (not (nullable!6376 (reg!16712 lt!2392490))))))

(assert (=> b!6505309 (=> (not res!2671454) (not e!3941719))))

(declare-fun b!6505310 () Bool)

(assert (=> b!6505310 (= e!3941717 e!3941716)))

(assert (=> b!6505310 (= c!1193050 ((_ is Union!16383) lt!2392490))))

(declare-fun b!6505311 () Bool)

(assert (=> b!6505311 (= e!3941719 call!563864)))

(declare-fun b!6505312 () Bool)

(assert (=> b!6505312 (= e!3941718 e!3941717)))

(assert (=> b!6505312 (= c!1193051 ((_ is Star!16383) lt!2392490))))

(declare-fun bm!563861 () Bool)

(assert (=> bm!563861 (= call!563866 (validRegex!8119 (ite c!1193050 (regTwo!33279 lt!2392490) (regTwo!33278 lt!2392490))))))

(declare-fun b!6505313 () Bool)

(assert (=> b!6505313 (= e!3941721 call!563866)))

(declare-fun b!6505314 () Bool)

(declare-fun res!2671453 () Bool)

(assert (=> b!6505314 (=> (not res!2671453) (not e!3941720))))

(assert (=> b!6505314 (= res!2671453 call!563865)))

(assert (=> b!6505314 (= e!3941716 e!3941720)))

(assert (= (and d!2041137 (not res!2671455)) b!6505312))

(assert (= (and b!6505312 c!1193051) b!6505309))

(assert (= (and b!6505312 (not c!1193051)) b!6505310))

(assert (= (and b!6505309 res!2671454) b!6505311))

(assert (= (and b!6505310 c!1193050) b!6505314))

(assert (= (and b!6505310 (not c!1193050)) b!6505308))

(assert (= (and b!6505314 res!2671453) b!6505307))

(assert (= (and b!6505308 (not res!2671452)) b!6505306))

(assert (= (and b!6505306 res!2671451) b!6505313))

(assert (= (or b!6505307 b!6505313) bm!563861))

(assert (= (or b!6505314 b!6505306) bm!563860))

(assert (= (or b!6505311 bm!563860) bm!563859))

(declare-fun m!7292472 () Bool)

(assert (=> bm!563859 m!7292472))

(declare-fun m!7292474 () Bool)

(assert (=> b!6505309 m!7292474))

(declare-fun m!7292476 () Bool)

(assert (=> bm!563861 m!7292476))

(assert (=> d!2040509 d!2041137))

(declare-fun d!2041139 () Bool)

(declare-fun res!2671456 () Bool)

(declare-fun e!3941722 () Bool)

(assert (=> d!2041139 (=> res!2671456 e!3941722)))

(assert (=> d!2041139 (= res!2671456 ((_ is Nil!65324) (exprs!6267 (h!71774 zl!343))))))

(assert (=> d!2041139 (= (forall!15564 (exprs!6267 (h!71774 zl!343)) lambda!360577) e!3941722)))

(declare-fun b!6505315 () Bool)

(declare-fun e!3941723 () Bool)

(assert (=> b!6505315 (= e!3941722 e!3941723)))

(declare-fun res!2671457 () Bool)

(assert (=> b!6505315 (=> (not res!2671457) (not e!3941723))))

(assert (=> b!6505315 (= res!2671457 (dynLambda!25954 lambda!360577 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6505316 () Bool)

(assert (=> b!6505316 (= e!3941723 (forall!15564 (t!379082 (exprs!6267 (h!71774 zl!343))) lambda!360577))))

(assert (= (and d!2041139 (not res!2671456)) b!6505315))

(assert (= (and b!6505315 res!2671457) b!6505316))

(declare-fun b_lambda!246291 () Bool)

(assert (=> (not b_lambda!246291) (not b!6505315)))

(declare-fun m!7292478 () Bool)

(assert (=> b!6505315 m!7292478))

(declare-fun m!7292480 () Bool)

(assert (=> b!6505316 m!7292480))

(assert (=> d!2040509 d!2041139))

(assert (=> d!2040537 d!2040533))

(assert (=> d!2040537 d!2040535))

(declare-fun d!2041141 () Bool)

(assert (=> d!2041141 (= (matchR!8566 lt!2392375 s!2326) (matchRSpec!3484 lt!2392375 s!2326))))

(assert (=> d!2041141 true))

(declare-fun _$88!5214 () Unit!158867)

(assert (=> d!2041141 (= (choose!48305 lt!2392375 s!2326) _$88!5214)))

(declare-fun bs!1652409 () Bool)

(assert (= bs!1652409 d!2041141))

(assert (=> bs!1652409 m!7290514))

(assert (=> bs!1652409 m!7290516))

(assert (=> d!2040537 d!2041141))

(assert (=> d!2040537 d!2041009))

(declare-fun d!2041143 () Bool)

(assert (=> d!2041143 (= (nullable!6376 (h!71772 (exprs!6267 lt!2392388))) (nullableFct!2312 (h!71772 (exprs!6267 lt!2392388))))))

(declare-fun bs!1652410 () Bool)

(assert (= bs!1652410 d!2041143))

(declare-fun m!7292482 () Bool)

(assert (=> bs!1652410 m!7292482))

(assert (=> b!6503688 d!2041143))

(declare-fun d!2041145 () Bool)

(assert (=> d!2041145 (= (isConcat!1295 lt!2392490) ((_ is Concat!25228) lt!2392490))))

(assert (=> b!6503895 d!2041145))

(declare-fun d!2041147 () Bool)

(assert (=> d!2041147 true))

(declare-fun setRes!44363 () Bool)

(assert (=> d!2041147 setRes!44363))

(declare-fun condSetEmpty!44363 () Bool)

(declare-fun res!2671458 () (InoxSet Context!11534))

(assert (=> d!2041147 (= condSetEmpty!44363 (= res!2671458 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> d!2041147 (= (choose!48299 z!1189 lambda!360520) res!2671458)))

(declare-fun setIsEmpty!44363 () Bool)

(assert (=> setIsEmpty!44363 setRes!44363))

(declare-fun e!3941724 () Bool)

(declare-fun setElem!44363 () Context!11534)

(declare-fun tp!1799128 () Bool)

(declare-fun setNonEmpty!44363 () Bool)

(assert (=> setNonEmpty!44363 (= setRes!44363 (and tp!1799128 (inv!84204 setElem!44363) e!3941724))))

(declare-fun setRest!44363 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44363 (= res!2671458 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44363 true) setRest!44363))))

(declare-fun b!6505317 () Bool)

(declare-fun tp!1799127 () Bool)

(assert (=> b!6505317 (= e!3941724 tp!1799127)))

(assert (= (and d!2041147 condSetEmpty!44363) setIsEmpty!44363))

(assert (= (and d!2041147 (not condSetEmpty!44363)) setNonEmpty!44363))

(assert (= setNonEmpty!44363 b!6505317))

(declare-fun m!7292484 () Bool)

(assert (=> setNonEmpty!44363 m!7292484))

(assert (=> d!2040475 d!2041147))

(declare-fun d!2041149 () Bool)

(declare-fun c!1193052 () Bool)

(assert (=> d!2041149 (= c!1193052 (isEmpty!37533 (tail!12323 (t!379083 s!2326))))))

(declare-fun e!3941725 () Bool)

(assert (=> d!2041149 (= (matchZipper!2395 (derivationStepZipper!2349 lt!2392382 (head!13238 (t!379083 s!2326))) (tail!12323 (t!379083 s!2326))) e!3941725)))

(declare-fun b!6505318 () Bool)

(assert (=> b!6505318 (= e!3941725 (nullableZipper!2138 (derivationStepZipper!2349 lt!2392382 (head!13238 (t!379083 s!2326)))))))

(declare-fun b!6505319 () Bool)

(assert (=> b!6505319 (= e!3941725 (matchZipper!2395 (derivationStepZipper!2349 (derivationStepZipper!2349 lt!2392382 (head!13238 (t!379083 s!2326))) (head!13238 (tail!12323 (t!379083 s!2326)))) (tail!12323 (tail!12323 (t!379083 s!2326)))))))

(assert (= (and d!2041149 c!1193052) b!6505318))

(assert (= (and d!2041149 (not c!1193052)) b!6505319))

(assert (=> d!2041149 m!7290914))

(assert (=> d!2041149 m!7291932))

(assert (=> b!6505318 m!7290912))

(declare-fun m!7292486 () Bool)

(assert (=> b!6505318 m!7292486))

(assert (=> b!6505319 m!7290914))

(assert (=> b!6505319 m!7291936))

(assert (=> b!6505319 m!7290912))

(assert (=> b!6505319 m!7291936))

(declare-fun m!7292488 () Bool)

(assert (=> b!6505319 m!7292488))

(assert (=> b!6505319 m!7290914))

(assert (=> b!6505319 m!7291940))

(assert (=> b!6505319 m!7292488))

(assert (=> b!6505319 m!7291940))

(declare-fun m!7292490 () Bool)

(assert (=> b!6505319 m!7292490))

(assert (=> b!6503678 d!2041149))

(declare-fun bs!1652411 () Bool)

(declare-fun d!2041151 () Bool)

(assert (= bs!1652411 (and d!2041151 d!2040985)))

(declare-fun lambda!360670 () Int)

(assert (=> bs!1652411 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360670 lambda!360648))))

(declare-fun bs!1652412 () Bool)

(assert (= bs!1652412 (and d!2041151 d!2040453)))

(assert (=> bs!1652412 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360670 lambda!360565))))

(declare-fun bs!1652413 () Bool)

(assert (= bs!1652413 (and d!2041151 d!2040885)))

(assert (=> bs!1652413 (= lambda!360670 lambda!360636)))

(declare-fun bs!1652414 () Bool)

(assert (= bs!1652414 (and d!2041151 d!2040789)))

(assert (=> bs!1652414 (= (= (head!13238 (t!379083 s!2326)) (head!13238 s!2326)) (= lambda!360670 lambda!360616))))

(declare-fun bs!1652415 () Bool)

(assert (= bs!1652415 (and d!2041151 d!2041129)))

(assert (=> bs!1652415 (= lambda!360670 lambda!360663)))

(declare-fun bs!1652416 () Bool)

(assert (= bs!1652416 (and d!2041151 d!2041097)))

(assert (=> bs!1652416 (= lambda!360670 lambda!360659)))

(declare-fun bs!1652417 () Bool)

(assert (= bs!1652417 (and d!2041151 b!6503160)))

(assert (=> bs!1652417 (= (= (head!13238 (t!379083 s!2326)) (h!71773 s!2326)) (= lambda!360670 lambda!360520))))

(assert (=> d!2041151 true))

(assert (=> d!2041151 (= (derivationStepZipper!2349 lt!2392382 (head!13238 (t!379083 s!2326))) (flatMap!1888 lt!2392382 lambda!360670))))

(declare-fun bs!1652418 () Bool)

(assert (= bs!1652418 d!2041151))

(declare-fun m!7292492 () Bool)

(assert (=> bs!1652418 m!7292492))

(assert (=> b!6503678 d!2041151))

(assert (=> b!6503678 d!2040887))

(assert (=> b!6503678 d!2040889))

(declare-fun d!2041153 () Bool)

(assert (=> d!2041153 (= (nullable!6376 (h!71772 (exprs!6267 lt!2392373))) (nullableFct!2312 (h!71772 (exprs!6267 lt!2392373))))))

(declare-fun bs!1652419 () Bool)

(assert (= bs!1652419 d!2041153))

(declare-fun m!7292494 () Bool)

(assert (=> bs!1652419 m!7292494))

(assert (=> b!6503683 d!2041153))

(declare-fun b!6505328 () Bool)

(declare-fun e!3941731 () List!65449)

(assert (=> b!6505328 (= e!3941731 (_2!36665 (get!22658 lt!2392498)))))

(declare-fun b!6505331 () Bool)

(declare-fun e!3941730 () Bool)

(declare-fun lt!2392590 () List!65449)

(assert (=> b!6505331 (= e!3941730 (or (not (= (_2!36665 (get!22658 lt!2392498)) Nil!65325)) (= lt!2392590 (_1!36665 (get!22658 lt!2392498)))))))

(declare-fun d!2041155 () Bool)

(assert (=> d!2041155 e!3941730))

(declare-fun res!2671464 () Bool)

(assert (=> d!2041155 (=> (not res!2671464) (not e!3941730))))

(declare-fun content!12469 (List!65449) (InoxSet C!33036))

(assert (=> d!2041155 (= res!2671464 (= (content!12469 lt!2392590) ((_ map or) (content!12469 (_1!36665 (get!22658 lt!2392498))) (content!12469 (_2!36665 (get!22658 lt!2392498))))))))

(assert (=> d!2041155 (= lt!2392590 e!3941731)))

(declare-fun c!1193055 () Bool)

(assert (=> d!2041155 (= c!1193055 ((_ is Nil!65325) (_1!36665 (get!22658 lt!2392498))))))

(assert (=> d!2041155 (= (++!14471 (_1!36665 (get!22658 lt!2392498)) (_2!36665 (get!22658 lt!2392498))) lt!2392590)))

(declare-fun b!6505330 () Bool)

(declare-fun res!2671463 () Bool)

(assert (=> b!6505330 (=> (not res!2671463) (not e!3941730))))

(declare-fun size!40442 (List!65449) Int)

(assert (=> b!6505330 (= res!2671463 (= (size!40442 lt!2392590) (+ (size!40442 (_1!36665 (get!22658 lt!2392498))) (size!40442 (_2!36665 (get!22658 lt!2392498))))))))

(declare-fun b!6505329 () Bool)

(assert (=> b!6505329 (= e!3941731 (Cons!65325 (h!71773 (_1!36665 (get!22658 lt!2392498))) (++!14471 (t!379083 (_1!36665 (get!22658 lt!2392498))) (_2!36665 (get!22658 lt!2392498)))))))

(assert (= (and d!2041155 c!1193055) b!6505328))

(assert (= (and d!2041155 (not c!1193055)) b!6505329))

(assert (= (and d!2041155 res!2671464) b!6505330))

(assert (= (and b!6505330 res!2671463) b!6505331))

(declare-fun m!7292496 () Bool)

(assert (=> d!2041155 m!7292496))

(declare-fun m!7292498 () Bool)

(assert (=> d!2041155 m!7292498))

(declare-fun m!7292500 () Bool)

(assert (=> d!2041155 m!7292500))

(declare-fun m!7292502 () Bool)

(assert (=> b!6505330 m!7292502))

(declare-fun m!7292504 () Bool)

(assert (=> b!6505330 m!7292504))

(declare-fun m!7292506 () Bool)

(assert (=> b!6505330 m!7292506))

(declare-fun m!7292508 () Bool)

(assert (=> b!6505329 m!7292508))

(assert (=> b!6503926 d!2041155))

(assert (=> b!6503926 d!2040963))

(declare-fun b!6505332 () Bool)

(declare-fun e!3941733 () List!65449)

(assert (=> b!6505332 (= e!3941733 (t!379083 s!2326))))

(declare-fun b!6505335 () Bool)

(declare-fun e!3941732 () Bool)

(declare-fun lt!2392591 () List!65449)

(assert (=> b!6505335 (= e!3941732 (or (not (= (t!379083 s!2326) Nil!65325)) (= lt!2392591 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)))))))

(declare-fun d!2041157 () Bool)

(assert (=> d!2041157 e!3941732))

(declare-fun res!2671466 () Bool)

(assert (=> d!2041157 (=> (not res!2671466) (not e!3941732))))

(assert (=> d!2041157 (= res!2671466 (= (content!12469 lt!2392591) ((_ map or) (content!12469 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))) (content!12469 (t!379083 s!2326)))))))

(assert (=> d!2041157 (= lt!2392591 e!3941733)))

(declare-fun c!1193056 () Bool)

(assert (=> d!2041157 (= c!1193056 ((_ is Nil!65325) (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))))))

(assert (=> d!2041157 (= (++!14471 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326)) lt!2392591)))

(declare-fun b!6505334 () Bool)

(declare-fun res!2671465 () Bool)

(assert (=> b!6505334 (=> (not res!2671465) (not e!3941732))))

(assert (=> b!6505334 (= res!2671465 (= (size!40442 lt!2392591) (+ (size!40442 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))) (size!40442 (t!379083 s!2326)))))))

(declare-fun b!6505333 () Bool)

(assert (=> b!6505333 (= e!3941733 (Cons!65325 (h!71773 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))) (++!14471 (t!379083 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))) (t!379083 s!2326))))))

(assert (= (and d!2041157 c!1193056) b!6505332))

(assert (= (and d!2041157 (not c!1193056)) b!6505333))

(assert (= (and d!2041157 res!2671466) b!6505334))

(assert (= (and b!6505334 res!2671465) b!6505335))

(declare-fun m!7292510 () Bool)

(assert (=> d!2041157 m!7292510))

(assert (=> d!2041157 m!7291088))

(declare-fun m!7292512 () Bool)

(assert (=> d!2041157 m!7292512))

(declare-fun m!7292514 () Bool)

(assert (=> d!2041157 m!7292514))

(declare-fun m!7292516 () Bool)

(assert (=> b!6505334 m!7292516))

(assert (=> b!6505334 m!7291088))

(declare-fun m!7292518 () Bool)

(assert (=> b!6505334 m!7292518))

(declare-fun m!7292520 () Bool)

(assert (=> b!6505334 m!7292520))

(declare-fun m!7292522 () Bool)

(assert (=> b!6505333 m!7292522))

(assert (=> b!6503922 d!2041157))

(declare-fun b!6505336 () Bool)

(declare-fun e!3941735 () List!65449)

(assert (=> b!6505336 (= e!3941735 (Cons!65325 (h!71773 s!2326) Nil!65325))))

(declare-fun b!6505339 () Bool)

(declare-fun e!3941734 () Bool)

(declare-fun lt!2392592 () List!65449)

(assert (=> b!6505339 (= e!3941734 (or (not (= (Cons!65325 (h!71773 s!2326) Nil!65325) Nil!65325)) (= lt!2392592 Nil!65325)))))

(declare-fun d!2041159 () Bool)

(assert (=> d!2041159 e!3941734))

(declare-fun res!2671468 () Bool)

(assert (=> d!2041159 (=> (not res!2671468) (not e!3941734))))

(assert (=> d!2041159 (= res!2671468 (= (content!12469 lt!2392592) ((_ map or) (content!12469 Nil!65325) (content!12469 (Cons!65325 (h!71773 s!2326) Nil!65325)))))))

(assert (=> d!2041159 (= lt!2392592 e!3941735)))

(declare-fun c!1193057 () Bool)

(assert (=> d!2041159 (= c!1193057 ((_ is Nil!65325) Nil!65325))))

(assert (=> d!2041159 (= (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) lt!2392592)))

(declare-fun b!6505338 () Bool)

(declare-fun res!2671467 () Bool)

(assert (=> b!6505338 (=> (not res!2671467) (not e!3941734))))

(assert (=> b!6505338 (= res!2671467 (= (size!40442 lt!2392592) (+ (size!40442 Nil!65325) (size!40442 (Cons!65325 (h!71773 s!2326) Nil!65325)))))))

(declare-fun b!6505337 () Bool)

(assert (=> b!6505337 (= e!3941735 (Cons!65325 (h!71773 Nil!65325) (++!14471 (t!379083 Nil!65325) (Cons!65325 (h!71773 s!2326) Nil!65325))))))

(assert (= (and d!2041159 c!1193057) b!6505336))

(assert (= (and d!2041159 (not c!1193057)) b!6505337))

(assert (= (and d!2041159 res!2671468) b!6505338))

(assert (= (and b!6505338 res!2671467) b!6505339))

(declare-fun m!7292524 () Bool)

(assert (=> d!2041159 m!7292524))

(declare-fun m!7292526 () Bool)

(assert (=> d!2041159 m!7292526))

(declare-fun m!7292528 () Bool)

(assert (=> d!2041159 m!7292528))

(declare-fun m!7292530 () Bool)

(assert (=> b!6505338 m!7292530))

(declare-fun m!7292532 () Bool)

(assert (=> b!6505338 m!7292532))

(declare-fun m!7292534 () Bool)

(assert (=> b!6505338 m!7292534))

(declare-fun m!7292536 () Bool)

(assert (=> b!6505337 m!7292536))

(assert (=> b!6503922 d!2041159))

(declare-fun d!2041161 () Bool)

(assert (=> d!2041161 (= (++!14471 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326)) s!2326)))

(declare-fun lt!2392595 () Unit!158867)

(declare-fun choose!48315 (List!65449 C!33036 List!65449 List!65449) Unit!158867)

(assert (=> d!2041161 (= lt!2392595 (choose!48315 Nil!65325 (h!71773 s!2326) (t!379083 s!2326) s!2326))))

(assert (=> d!2041161 (= (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) (t!379083 s!2326))) s!2326)))

(assert (=> d!2041161 (= (lemmaMoveElementToOtherListKeepsConcatEq!2536 Nil!65325 (h!71773 s!2326) (t!379083 s!2326) s!2326) lt!2392595)))

(declare-fun bs!1652420 () Bool)

(assert (= bs!1652420 d!2041161))

(assert (=> bs!1652420 m!7291088))

(assert (=> bs!1652420 m!7291088))

(assert (=> bs!1652420 m!7291090))

(declare-fun m!7292538 () Bool)

(assert (=> bs!1652420 m!7292538))

(declare-fun m!7292540 () Bool)

(assert (=> bs!1652420 m!7292540))

(assert (=> b!6503922 d!2041161))

(declare-fun b!6505340 () Bool)

(declare-fun e!3941738 () Option!16274)

(assert (=> b!6505340 (= e!3941738 (Some!16273 (tuple2!66725 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326))))))

(declare-fun b!6505341 () Bool)

(declare-fun e!3941737 () Option!16274)

(assert (=> b!6505341 (= e!3941738 e!3941737)))

(declare-fun c!1193059 () Bool)

(assert (=> b!6505341 (= c!1193059 ((_ is Nil!65325) (t!379083 s!2326)))))

(declare-fun b!6505342 () Bool)

(declare-fun e!3941736 () Bool)

(assert (=> b!6505342 (= e!3941736 (matchR!8566 (regTwo!33278 r!7292) (t!379083 s!2326)))))

(declare-fun d!2041163 () Bool)

(declare-fun e!3941740 () Bool)

(assert (=> d!2041163 e!3941740))

(declare-fun res!2671469 () Bool)

(assert (=> d!2041163 (=> res!2671469 e!3941740)))

(declare-fun e!3941739 () Bool)

(assert (=> d!2041163 (= res!2671469 e!3941739)))

(declare-fun res!2671472 () Bool)

(assert (=> d!2041163 (=> (not res!2671472) (not e!3941739))))

(declare-fun lt!2392597 () Option!16274)

(assert (=> d!2041163 (= res!2671472 (isDefined!12977 lt!2392597))))

(assert (=> d!2041163 (= lt!2392597 e!3941738)))

(declare-fun c!1193058 () Bool)

(assert (=> d!2041163 (= c!1193058 e!3941736)))

(declare-fun res!2671470 () Bool)

(assert (=> d!2041163 (=> (not res!2671470) (not e!3941736))))

(assert (=> d!2041163 (= res!2671470 (matchR!8566 (regOne!33278 r!7292) (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325))))))

(assert (=> d!2041163 (validRegex!8119 (regOne!33278 r!7292))))

(assert (=> d!2041163 (= (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (t!379083 s!2326) s!2326) lt!2392597)))

(declare-fun b!6505343 () Bool)

(declare-fun lt!2392596 () Unit!158867)

(declare-fun lt!2392598 () Unit!158867)

(assert (=> b!6505343 (= lt!2392596 lt!2392598)))

(assert (=> b!6505343 (= (++!14471 (++!14471 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (Cons!65325 (h!71773 (t!379083 s!2326)) Nil!65325)) (t!379083 (t!379083 s!2326))) s!2326)))

(assert (=> b!6505343 (= lt!2392598 (lemmaMoveElementToOtherListKeepsConcatEq!2536 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (h!71773 (t!379083 s!2326)) (t!379083 (t!379083 s!2326)) s!2326))))

(assert (=> b!6505343 (= e!3941737 (findConcatSeparation!2688 (regOne!33278 r!7292) (regTwo!33278 r!7292) (++!14471 (++!14471 Nil!65325 (Cons!65325 (h!71773 s!2326) Nil!65325)) (Cons!65325 (h!71773 (t!379083 s!2326)) Nil!65325)) (t!379083 (t!379083 s!2326)) s!2326))))

(declare-fun b!6505344 () Bool)

(assert (=> b!6505344 (= e!3941740 (not (isDefined!12977 lt!2392597)))))

(declare-fun b!6505345 () Bool)

(declare-fun res!2671471 () Bool)

(assert (=> b!6505345 (=> (not res!2671471) (not e!3941739))))

(assert (=> b!6505345 (= res!2671471 (matchR!8566 (regTwo!33278 r!7292) (_2!36665 (get!22658 lt!2392597))))))

(declare-fun b!6505346 () Bool)

(assert (=> b!6505346 (= e!3941737 None!16273)))

(declare-fun b!6505347 () Bool)

(assert (=> b!6505347 (= e!3941739 (= (++!14471 (_1!36665 (get!22658 lt!2392597)) (_2!36665 (get!22658 lt!2392597))) s!2326))))

(declare-fun b!6505348 () Bool)

(declare-fun res!2671473 () Bool)

(assert (=> b!6505348 (=> (not res!2671473) (not e!3941739))))

(assert (=> b!6505348 (= res!2671473 (matchR!8566 (regOne!33278 r!7292) (_1!36665 (get!22658 lt!2392597))))))

(assert (= (and d!2041163 res!2671470) b!6505342))

(assert (= (and d!2041163 c!1193058) b!6505340))

(assert (= (and d!2041163 (not c!1193058)) b!6505341))

(assert (= (and b!6505341 c!1193059) b!6505346))

(assert (= (and b!6505341 (not c!1193059)) b!6505343))

(assert (= (and d!2041163 res!2671472) b!6505348))

(assert (= (and b!6505348 res!2671473) b!6505345))

(assert (= (and b!6505345 res!2671471) b!6505347))

(assert (= (and d!2041163 (not res!2671469)) b!6505344))

(declare-fun m!7292542 () Bool)

(assert (=> d!2041163 m!7292542))

(assert (=> d!2041163 m!7291088))

(declare-fun m!7292544 () Bool)

(assert (=> d!2041163 m!7292544))

(assert (=> d!2041163 m!7291076))

(declare-fun m!7292546 () Bool)

(assert (=> b!6505345 m!7292546))

(declare-fun m!7292548 () Bool)

(assert (=> b!6505345 m!7292548))

(assert (=> b!6505347 m!7292546))

(declare-fun m!7292550 () Bool)

(assert (=> b!6505347 m!7292550))

(assert (=> b!6505344 m!7292542))

(declare-fun m!7292552 () Bool)

(assert (=> b!6505342 m!7292552))

(assert (=> b!6505348 m!7292546))

(declare-fun m!7292554 () Bool)

(assert (=> b!6505348 m!7292554))

(assert (=> b!6505343 m!7291088))

(declare-fun m!7292556 () Bool)

(assert (=> b!6505343 m!7292556))

(assert (=> b!6505343 m!7292556))

(declare-fun m!7292558 () Bool)

(assert (=> b!6505343 m!7292558))

(assert (=> b!6505343 m!7291088))

(declare-fun m!7292560 () Bool)

(assert (=> b!6505343 m!7292560))

(assert (=> b!6505343 m!7292556))

(declare-fun m!7292562 () Bool)

(assert (=> b!6505343 m!7292562))

(assert (=> b!6503922 d!2041163))

(declare-fun bs!1652421 () Bool)

(declare-fun b!6505357 () Bool)

(assert (= bs!1652421 (and b!6505357 b!6503964)))

(declare-fun lambda!360671 () Int)

(assert (=> bs!1652421 (not (= lambda!360671 lambda!360588))))

(declare-fun bs!1652422 () Bool)

(assert (= bs!1652422 (and b!6505357 b!6503796)))

(assert (=> bs!1652422 (= (and (= (reg!16712 (regTwo!33279 r!7292)) (reg!16712 r!7292)) (= (regTwo!33279 r!7292) r!7292)) (= lambda!360671 lambda!360570))))

(declare-fun bs!1652423 () Bool)

(assert (= bs!1652423 (and b!6505357 d!2040519)))

(assert (=> bs!1652423 (not (= lambda!360671 lambda!360586))))

(assert (=> bs!1652423 (not (= lambda!360671 lambda!360585))))

(declare-fun bs!1652424 () Bool)

(assert (= bs!1652424 (and b!6505357 b!6504574)))

(assert (=> bs!1652424 (= (and (= (reg!16712 (regTwo!33279 r!7292)) (reg!16712 (regOne!33279 r!7292))) (= (regTwo!33279 r!7292) (regOne!33279 r!7292))) (= lambda!360671 lambda!360622))))

(declare-fun bs!1652425 () Bool)

(assert (= bs!1652425 (and b!6505357 b!6503182)))

(assert (=> bs!1652425 (not (= lambda!360671 lambda!360519))))

(declare-fun bs!1652426 () Bool)

(assert (= bs!1652426 (and b!6505357 b!6503793)))

(assert (=> bs!1652426 (not (= lambda!360671 lambda!360571))))

(declare-fun bs!1652427 () Bool)

(assert (= bs!1652427 (and b!6505357 d!2041135)))

(assert (=> bs!1652427 (not (= lambda!360671 lambda!360668))))

(declare-fun bs!1652428 () Bool)

(assert (= bs!1652428 (and b!6505357 b!6504701)))

(assert (=> bs!1652428 (= (and (= (reg!16712 (regTwo!33279 r!7292)) (reg!16712 (regTwo!33279 lt!2392375))) (= (regTwo!33279 r!7292) (regTwo!33279 lt!2392375))) (= lambda!360671 lambda!360632))))

(declare-fun bs!1652429 () Bool)

(assert (= bs!1652429 (and b!6505357 b!6504571)))

(assert (=> bs!1652429 (not (= lambda!360671 lambda!360624))))

(declare-fun bs!1652430 () Bool)

(assert (= bs!1652430 (and b!6505357 b!6503967)))

(assert (=> bs!1652430 (= (and (= (reg!16712 (regTwo!33279 r!7292)) (reg!16712 lt!2392375)) (= (regTwo!33279 r!7292) lt!2392375)) (= lambda!360671 lambda!360587))))

(assert (=> bs!1652427 (not (= lambda!360671 lambda!360669))))

(declare-fun bs!1652431 () Bool)

(assert (= bs!1652431 (and b!6505357 b!6505098)))

(assert (=> bs!1652431 (= (and (= (reg!16712 (regTwo!33279 r!7292)) (reg!16712 (regOne!33279 lt!2392375))) (= (regTwo!33279 r!7292) (regOne!33279 lt!2392375))) (= lambda!360671 lambda!360655))))

(declare-fun bs!1652432 () Bool)

(assert (= bs!1652432 (and b!6505357 b!6504698)))

(assert (=> bs!1652432 (not (= lambda!360671 lambda!360635))))

(assert (=> bs!1652425 (not (= lambda!360671 lambda!360518))))

(declare-fun bs!1652433 () Bool)

(assert (= bs!1652433 (and b!6505357 b!6505095)))

(assert (=> bs!1652433 (not (= lambda!360671 lambda!360656))))

(declare-fun bs!1652434 () Bool)

(assert (= bs!1652434 (and b!6505357 d!2040517)))

(assert (=> bs!1652434 (not (= lambda!360671 lambda!360580))))

(declare-fun bs!1652435 () Bool)

(assert (= bs!1652435 (and b!6505357 d!2040995)))

(assert (=> bs!1652435 (not (= lambda!360671 lambda!360651))))

(assert (=> b!6505357 true))

(assert (=> b!6505357 true))

(declare-fun bs!1652436 () Bool)

(declare-fun b!6505354 () Bool)

(assert (= bs!1652436 (and b!6505354 b!6503964)))

(declare-fun lambda!360672 () Int)

(assert (=> bs!1652436 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 lt!2392375)) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 lt!2392375))) (= lambda!360672 lambda!360588))))

(declare-fun bs!1652437 () Bool)

(assert (= bs!1652437 (and b!6505354 b!6503796)))

(assert (=> bs!1652437 (not (= lambda!360672 lambda!360570))))

(declare-fun bs!1652438 () Bool)

(assert (= bs!1652438 (and b!6505354 d!2040519)))

(assert (=> bs!1652438 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360672 lambda!360586))))

(assert (=> bs!1652438 (not (= lambda!360672 lambda!360585))))

(declare-fun bs!1652439 () Bool)

(assert (= bs!1652439 (and b!6505354 b!6504574)))

(assert (=> bs!1652439 (not (= lambda!360672 lambda!360622))))

(declare-fun bs!1652440 () Bool)

(assert (= bs!1652440 (and b!6505354 b!6503182)))

(assert (=> bs!1652440 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360672 lambda!360519))))

(declare-fun bs!1652441 () Bool)

(assert (= bs!1652441 (and b!6505354 b!6503793)))

(assert (=> bs!1652441 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360672 lambda!360571))))

(declare-fun bs!1652442 () Bool)

(assert (= bs!1652442 (and b!6505354 d!2041135)))

(assert (=> bs!1652442 (not (= lambda!360672 lambda!360668))))

(declare-fun bs!1652443 () Bool)

(assert (= bs!1652443 (and b!6505354 b!6504701)))

(assert (=> bs!1652443 (not (= lambda!360672 lambda!360632))))

(declare-fun bs!1652444 () Bool)

(assert (= bs!1652444 (and b!6505354 b!6504571)))

(assert (=> bs!1652444 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 (regOne!33279 r!7292))) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 (regOne!33279 r!7292)))) (= lambda!360672 lambda!360624))))

(declare-fun bs!1652445 () Bool)

(assert (= bs!1652445 (and b!6505354 b!6503967)))

(assert (=> bs!1652445 (not (= lambda!360672 lambda!360587))))

(assert (=> bs!1652442 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 r!7292)) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 r!7292))) (= lambda!360672 lambda!360669))))

(declare-fun bs!1652446 () Bool)

(assert (= bs!1652446 (and b!6505354 b!6505098)))

(assert (=> bs!1652446 (not (= lambda!360672 lambda!360655))))

(declare-fun bs!1652447 () Bool)

(assert (= bs!1652447 (and b!6505354 b!6504698)))

(assert (=> bs!1652447 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 (regTwo!33279 lt!2392375))) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 (regTwo!33279 lt!2392375)))) (= lambda!360672 lambda!360635))))

(assert (=> bs!1652440 (not (= lambda!360672 lambda!360518))))

(declare-fun bs!1652448 () Bool)

(assert (= bs!1652448 (and b!6505354 b!6505095)))

(assert (=> bs!1652448 (= (and (= (regOne!33278 (regTwo!33279 r!7292)) (regOne!33278 (regOne!33279 lt!2392375))) (= (regTwo!33278 (regTwo!33279 r!7292)) (regTwo!33278 (regOne!33279 lt!2392375)))) (= lambda!360672 lambda!360656))))

(declare-fun bs!1652449 () Bool)

(assert (= bs!1652449 (and b!6505354 b!6505357)))

(assert (=> bs!1652449 (not (= lambda!360672 lambda!360671))))

(declare-fun bs!1652450 () Bool)

(assert (= bs!1652450 (and b!6505354 d!2040517)))

(assert (=> bs!1652450 (not (= lambda!360672 lambda!360580))))

(declare-fun bs!1652451 () Bool)

(assert (= bs!1652451 (and b!6505354 d!2040995)))

(assert (=> bs!1652451 (not (= lambda!360672 lambda!360651))))

(assert (=> b!6505354 true))

(assert (=> b!6505354 true))

(declare-fun b!6505349 () Bool)

(declare-fun c!1193062 () Bool)

(assert (=> b!6505349 (= c!1193062 ((_ is ElementMatch!16383) (regTwo!33279 r!7292)))))

(declare-fun e!3941743 () Bool)

(declare-fun e!3941746 () Bool)

(assert (=> b!6505349 (= e!3941743 e!3941746)))

(declare-fun b!6505350 () Bool)

(declare-fun c!1193063 () Bool)

(assert (=> b!6505350 (= c!1193063 ((_ is Union!16383) (regTwo!33279 r!7292)))))

(declare-fun e!3941747 () Bool)

(assert (=> b!6505350 (= e!3941746 e!3941747)))

(declare-fun b!6505351 () Bool)

(declare-fun e!3941745 () Bool)

(assert (=> b!6505351 (= e!3941745 (matchRSpec!3484 (regTwo!33279 (regTwo!33279 r!7292)) s!2326))))

(declare-fun b!6505352 () Bool)

(assert (=> b!6505352 (= e!3941746 (= s!2326 (Cons!65325 (c!1192455 (regTwo!33279 r!7292)) Nil!65325)))))

(declare-fun d!2041165 () Bool)

(declare-fun c!1193061 () Bool)

(assert (=> d!2041165 (= c!1193061 ((_ is EmptyExpr!16383) (regTwo!33279 r!7292)))))

(declare-fun e!3941742 () Bool)

(assert (=> d!2041165 (= (matchRSpec!3484 (regTwo!33279 r!7292) s!2326) e!3941742)))

(declare-fun bm!563862 () Bool)

(declare-fun c!1193060 () Bool)

(declare-fun call!563867 () Bool)

(assert (=> bm!563862 (= call!563867 (Exists!3453 (ite c!1193060 lambda!360671 lambda!360672)))))

(declare-fun b!6505353 () Bool)

(assert (=> b!6505353 (= e!3941747 e!3941745)))

(declare-fun res!2671474 () Bool)

(assert (=> b!6505353 (= res!2671474 (matchRSpec!3484 (regOne!33279 (regTwo!33279 r!7292)) s!2326))))

(assert (=> b!6505353 (=> res!2671474 e!3941745)))

(declare-fun e!3941744 () Bool)

(assert (=> b!6505354 (= e!3941744 call!563867)))

(declare-fun b!6505355 () Bool)

(declare-fun res!2671475 () Bool)

(declare-fun e!3941741 () Bool)

(assert (=> b!6505355 (=> res!2671475 e!3941741)))

(declare-fun call!563868 () Bool)

(assert (=> b!6505355 (= res!2671475 call!563868)))

(assert (=> b!6505355 (= e!3941744 e!3941741)))

(declare-fun b!6505356 () Bool)

(assert (=> b!6505356 (= e!3941742 e!3941743)))

(declare-fun res!2671476 () Bool)

(assert (=> b!6505356 (= res!2671476 (not ((_ is EmptyLang!16383) (regTwo!33279 r!7292))))))

(assert (=> b!6505356 (=> (not res!2671476) (not e!3941743))))

(assert (=> b!6505357 (= e!3941741 call!563867)))

(declare-fun bm!563863 () Bool)

(assert (=> bm!563863 (= call!563868 (isEmpty!37533 s!2326))))

(declare-fun b!6505358 () Bool)

(assert (=> b!6505358 (= e!3941747 e!3941744)))

(assert (=> b!6505358 (= c!1193060 ((_ is Star!16383) (regTwo!33279 r!7292)))))

(declare-fun b!6505359 () Bool)

(assert (=> b!6505359 (= e!3941742 call!563868)))

(assert (= (and d!2041165 c!1193061) b!6505359))

(assert (= (and d!2041165 (not c!1193061)) b!6505356))

(assert (= (and b!6505356 res!2671476) b!6505349))

(assert (= (and b!6505349 c!1193062) b!6505352))

(assert (= (and b!6505349 (not c!1193062)) b!6505350))

(assert (= (and b!6505350 c!1193063) b!6505353))

(assert (= (and b!6505350 (not c!1193063)) b!6505358))

(assert (= (and b!6505353 (not res!2671474)) b!6505351))

(assert (= (and b!6505358 c!1193060) b!6505355))

(assert (= (and b!6505358 (not c!1193060)) b!6505354))

(assert (= (and b!6505355 (not res!2671475)) b!6505357))

(assert (= (or b!6505357 b!6505354) bm!563862))

(assert (= (or b!6505359 b!6505355) bm!563863))

(declare-fun m!7292564 () Bool)

(assert (=> b!6505351 m!7292564))

(declare-fun m!7292566 () Bool)

(assert (=> bm!563862 m!7292566))

(declare-fun m!7292568 () Bool)

(assert (=> b!6505353 m!7292568))

(assert (=> bm!563863 m!7290948))

(assert (=> b!6503790 d!2041165))

(declare-fun d!2041167 () Bool)

(assert (=> d!2041167 (= (nullable!6376 (h!71772 (exprs!6267 lt!2392390))) (nullableFct!2312 (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun bs!1652452 () Bool)

(assert (= bs!1652452 d!2041167))

(declare-fun m!7292570 () Bool)

(assert (=> bs!1652452 m!7292570))

(assert (=> b!6503670 d!2041167))

(assert (=> bm!563593 d!2040941))

(declare-fun bs!1652453 () Bool)

(declare-fun d!2041169 () Bool)

(assert (= bs!1652453 (and d!2041169 d!2040829)))

(declare-fun lambda!360673 () Int)

(assert (=> bs!1652453 (= lambda!360673 lambda!360627)))

(declare-fun bs!1652454 () Bool)

(assert (= bs!1652454 (and d!2041169 d!2040953)))

(assert (=> bs!1652454 (= lambda!360673 lambda!360647)))

(declare-fun bs!1652455 () Bool)

(assert (= bs!1652455 (and d!2041169 d!2041005)))

(assert (=> bs!1652455 (= lambda!360673 lambda!360652)))

(declare-fun bs!1652456 () Bool)

(assert (= bs!1652456 (and d!2041169 d!2041051)))

(assert (=> bs!1652456 (= lambda!360673 lambda!360657)))

(assert (=> d!2041169 (= (nullableZipper!2138 ((_ map or) lt!2392389 lt!2392382)) (exists!2624 ((_ map or) lt!2392389 lt!2392382) lambda!360673))))

(declare-fun bs!1652457 () Bool)

(assert (= bs!1652457 d!2041169))

(declare-fun m!7292572 () Bool)

(assert (=> bs!1652457 m!7292572))

(assert (=> b!6503943 d!2041169))

(assert (=> d!2040451 d!2040447))

(declare-fun d!2041171 () Bool)

(assert (=> d!2041171 (= (flatMap!1888 lt!2392366 lambda!360520) (dynLambda!25950 lambda!360520 lt!2392390))))

(assert (=> d!2041171 true))

(declare-fun _$13!3764 () Unit!158867)

(assert (=> d!2041171 (= (choose!48302 lt!2392366 lt!2392390 lambda!360520) _$13!3764)))

(declare-fun b_lambda!246293 () Bool)

(assert (=> (not b_lambda!246293) (not d!2041171)))

(declare-fun bs!1652458 () Bool)

(assert (= bs!1652458 d!2041171))

(assert (=> bs!1652458 m!7290470))

(assert (=> bs!1652458 m!7290900))

(assert (=> d!2040451 d!2041171))

(declare-fun b!6505360 () Bool)

(declare-fun e!3941750 () (InoxSet Context!11534))

(declare-fun call!563869 () (InoxSet Context!11534))

(assert (=> b!6505360 (= e!3941750 call!563869)))

(declare-fun b!6505361 () Bool)

(declare-fun e!3941748 () (InoxSet Context!11534))

(assert (=> b!6505361 (= e!3941748 e!3941750)))

(declare-fun c!1193064 () Bool)

(assert (=> b!6505361 (= c!1193064 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))))

(declare-fun b!6505362 () Bool)

(assert (=> b!6505362 (= e!3941750 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505363 () Bool)

(assert (=> b!6505363 (= e!3941748 ((_ map or) call!563869 (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))) (h!71773 s!2326))))))

(declare-fun b!6505364 () Bool)

(declare-fun e!3941749 () Bool)

(assert (=> b!6505364 (= e!3941749 (nullable!6376 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))))))

(declare-fun bm!563864 () Bool)

(assert (=> bm!563864 (= call!563869 (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))) (Context!11535 (t!379082 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343))))))))))) (h!71773 s!2326)))))

(declare-fun d!2041173 () Bool)

(declare-fun c!1193065 () Bool)

(assert (=> d!2041173 (= c!1193065 e!3941749)))

(declare-fun res!2671477 () Bool)

(assert (=> d!2041173 (=> (not res!2671477) (not e!3941749))))

(assert (=> d!2041173 (= res!2671477 ((_ is Cons!65324) (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))))))))

(assert (=> d!2041173 (= (derivationStepZipperUp!1557 (Context!11535 (t!379082 (exprs!6267 (Context!11535 (Cons!65324 (h!71772 (exprs!6267 (h!71774 zl!343))) (t!379082 (exprs!6267 (h!71774 zl!343)))))))) (h!71773 s!2326)) e!3941748)))

(assert (= (and d!2041173 res!2671477) b!6505364))

(assert (= (and d!2041173 c!1193065) b!6505363))

(assert (= (and d!2041173 (not c!1193065)) b!6505361))

(assert (= (and b!6505361 c!1193064) b!6505360))

(assert (= (and b!6505361 (not c!1193064)) b!6505362))

(assert (= (or b!6505363 b!6505360) bm!563864))

(declare-fun m!7292574 () Bool)

(assert (=> b!6505363 m!7292574))

(declare-fun m!7292576 () Bool)

(assert (=> b!6505364 m!7292576))

(declare-fun m!7292578 () Bool)

(assert (=> bm!563864 m!7292578))

(assert (=> b!6503696 d!2041173))

(declare-fun d!2041175 () Bool)

(assert (=> d!2041175 (= (flatMap!1888 lt!2392366 lambda!360565) (choose!48299 lt!2392366 lambda!360565))))

(declare-fun bs!1652459 () Bool)

(assert (= bs!1652459 d!2041175))

(declare-fun m!7292580 () Bool)

(assert (=> bs!1652459 m!7292580))

(assert (=> d!2040453 d!2041175))

(assert (=> b!6503899 d!2040439))

(assert (=> d!2040501 d!2040499))

(assert (=> d!2040501 d!2040497))

(declare-fun d!2041177 () Bool)

(assert (=> d!2041177 (= (matchR!8566 r!7292 s!2326) (matchRSpec!3484 r!7292 s!2326))))

(assert (=> d!2041177 true))

(declare-fun _$88!5215 () Unit!158867)

(assert (=> d!2041177 (= (choose!48305 r!7292 s!2326) _$88!5215)))

(declare-fun bs!1652460 () Bool)

(assert (= bs!1652460 d!2041177))

(assert (=> bs!1652460 m!7290536))

(assert (=> bs!1652460 m!7290534))

(assert (=> d!2040501 d!2041177))

(assert (=> d!2040501 d!2040505))

(assert (=> d!2040471 d!2040941))

(declare-fun d!2041179 () Bool)

(assert (=> d!2041179 (= (nullable!6376 r!7292) (nullableFct!2312 r!7292))))

(declare-fun bs!1652461 () Bool)

(assert (= bs!1652461 d!2041179))

(declare-fun m!7292582 () Bool)

(assert (=> bs!1652461 m!7292582))

(assert (=> b!6503830 d!2041179))

(assert (=> bs!1651793 d!2040449))

(declare-fun bs!1652462 () Bool)

(declare-fun d!2041181 () Bool)

(assert (= bs!1652462 (and d!2041181 d!2041051)))

(declare-fun lambda!360674 () Int)

(assert (=> bs!1652462 (= lambda!360674 lambda!360657)))

(declare-fun bs!1652463 () Bool)

(assert (= bs!1652463 (and d!2041181 d!2041169)))

(assert (=> bs!1652463 (= lambda!360674 lambda!360673)))

(declare-fun bs!1652464 () Bool)

(assert (= bs!1652464 (and d!2041181 d!2040953)))

(assert (=> bs!1652464 (= lambda!360674 lambda!360647)))

(declare-fun bs!1652465 () Bool)

(assert (= bs!1652465 (and d!2041181 d!2040829)))

(assert (=> bs!1652465 (= lambda!360674 lambda!360627)))

(declare-fun bs!1652466 () Bool)

(assert (= bs!1652466 (and d!2041181 d!2041005)))

(assert (=> bs!1652466 (= lambda!360674 lambda!360652)))

(assert (=> d!2041181 (= (nullableZipper!2138 lt!2392389) (exists!2624 lt!2392389 lambda!360674))))

(declare-fun bs!1652467 () Bool)

(assert (= bs!1652467 d!2041181))

(declare-fun m!7292584 () Bool)

(assert (=> bs!1652467 m!7292584))

(assert (=> b!6503691 d!2041181))

(declare-fun d!2041183 () Bool)

(assert (=> d!2041183 true))

(declare-fun setRes!44364 () Bool)

(assert (=> d!2041183 setRes!44364))

(declare-fun condSetEmpty!44364 () Bool)

(declare-fun res!2671478 () (InoxSet Context!11534))

(assert (=> d!2041183 (= condSetEmpty!44364 (= res!2671478 ((as const (Array Context!11534 Bool)) false)))))

(assert (=> d!2041183 (= (choose!48299 lt!2392369 lambda!360520) res!2671478)))

(declare-fun setIsEmpty!44364 () Bool)

(assert (=> setIsEmpty!44364 setRes!44364))

(declare-fun e!3941751 () Bool)

(declare-fun setNonEmpty!44364 () Bool)

(declare-fun tp!1799130 () Bool)

(declare-fun setElem!44364 () Context!11534)

(assert (=> setNonEmpty!44364 (= setRes!44364 (and tp!1799130 (inv!84204 setElem!44364) e!3941751))))

(declare-fun setRest!44364 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44364 (= res!2671478 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44364 true) setRest!44364))))

(declare-fun b!6505365 () Bool)

(declare-fun tp!1799129 () Bool)

(assert (=> b!6505365 (= e!3941751 tp!1799129)))

(assert (= (and d!2041183 condSetEmpty!44364) setIsEmpty!44364))

(assert (= (and d!2041183 (not condSetEmpty!44364)) setNonEmpty!44364))

(assert (= setNonEmpty!44364 b!6505365))

(declare-fun m!7292586 () Bool)

(assert (=> setNonEmpty!44364 m!7292586))

(assert (=> d!2040465 d!2041183))

(declare-fun bm!563865 () Bool)

(declare-fun call!563870 () List!65448)

(declare-fun call!563874 () List!65448)

(assert (=> bm!563865 (= call!563870 call!563874)))

(declare-fun b!6505366 () Bool)

(declare-fun e!3941757 () (InoxSet Context!11534))

(assert (=> b!6505366 (= e!3941757 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505367 () Bool)

(declare-fun e!3941753 () (InoxSet Context!11534))

(declare-fun e!3941754 () (InoxSet Context!11534))

(assert (=> b!6505367 (= e!3941753 e!3941754)))

(declare-fun c!1193069 () Bool)

(assert (=> b!6505367 (= c!1193069 ((_ is Union!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6505368 () Bool)

(declare-fun c!1193068 () Bool)

(declare-fun e!3941756 () Bool)

(assert (=> b!6505368 (= c!1193068 e!3941756)))

(declare-fun res!2671479 () Bool)

(assert (=> b!6505368 (=> (not res!2671479) (not e!3941756))))

(assert (=> b!6505368 (= res!2671479 ((_ is Concat!25228) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun e!3941752 () (InoxSet Context!11534))

(assert (=> b!6505368 (= e!3941754 e!3941752)))

(declare-fun b!6505369 () Bool)

(declare-fun e!3941755 () (InoxSet Context!11534))

(assert (=> b!6505369 (= e!3941752 e!3941755)))

(declare-fun c!1193067 () Bool)

(assert (=> b!6505369 (= c!1193067 ((_ is Concat!25228) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun b!6505370 () Bool)

(declare-fun call!563872 () (InoxSet Context!11534))

(assert (=> b!6505370 (= e!3941755 call!563872)))

(declare-fun d!2041185 () Bool)

(declare-fun c!1193070 () Bool)

(assert (=> d!2041185 (= c!1193070 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))) (= (c!1192455 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326))))))

(assert (=> d!2041185 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 (h!71774 zl!343))) (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (h!71773 s!2326)) e!3941753)))

(declare-fun b!6505371 () Bool)

(declare-fun call!563873 () (InoxSet Context!11534))

(declare-fun call!563871 () (InoxSet Context!11534))

(assert (=> b!6505371 (= e!3941754 ((_ map or) call!563873 call!563871))))

(declare-fun b!6505372 () Bool)

(assert (=> b!6505372 (= e!3941757 call!563872)))

(declare-fun bm!563866 () Bool)

(assert (=> bm!563866 (= call!563871 (derivationStepZipperDown!1631 (ite c!1193069 (regTwo!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))) (ite c!1193069 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (Context!11535 call!563874)) (h!71773 s!2326)))))

(declare-fun bm!563867 () Bool)

(declare-fun call!563875 () (InoxSet Context!11534))

(assert (=> bm!563867 (= call!563872 call!563875)))

(declare-fun bm!563868 () Bool)

(assert (=> bm!563868 (= call!563875 call!563873)))

(declare-fun bm!563869 () Bool)

(assert (=> bm!563869 (= call!563874 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343))))) (ite (or c!1193068 c!1193067) (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (h!71772 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun b!6505373 () Bool)

(assert (=> b!6505373 (= e!3941756 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343))))))))

(declare-fun bm!563870 () Bool)

(assert (=> bm!563870 (= call!563873 (derivationStepZipperDown!1631 (ite c!1193069 (regOne!33279 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1193068 (regTwo!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (ite c!1193067 (regOne!33278 (h!71772 (exprs!6267 (h!71774 zl!343)))) (reg!16712 (h!71772 (exprs!6267 (h!71774 zl!343))))))) (ite (or c!1193069 c!1193068) (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) (Context!11535 call!563870)) (h!71773 s!2326)))))

(declare-fun b!6505374 () Bool)

(assert (=> b!6505374 (= e!3941752 ((_ map or) call!563871 call!563875))))

(declare-fun b!6505375 () Bool)

(assert (=> b!6505375 (= e!3941753 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 (h!71774 zl!343)))) true))))

(declare-fun b!6505376 () Bool)

(declare-fun c!1193066 () Bool)

(assert (=> b!6505376 (= c!1193066 ((_ is Star!16383) (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> b!6505376 (= e!3941755 e!3941757)))

(assert (= (and d!2041185 c!1193070) b!6505375))

(assert (= (and d!2041185 (not c!1193070)) b!6505367))

(assert (= (and b!6505367 c!1193069) b!6505371))

(assert (= (and b!6505367 (not c!1193069)) b!6505368))

(assert (= (and b!6505368 res!2671479) b!6505373))

(assert (= (and b!6505368 c!1193068) b!6505374))

(assert (= (and b!6505368 (not c!1193068)) b!6505369))

(assert (= (and b!6505369 c!1193067) b!6505370))

(assert (= (and b!6505369 (not c!1193067)) b!6505376))

(assert (= (and b!6505376 c!1193066) b!6505372))

(assert (= (and b!6505376 (not c!1193066)) b!6505366))

(assert (= (or b!6505370 b!6505372) bm!563865))

(assert (= (or b!6505370 b!6505372) bm!563867))

(assert (= (or b!6505374 bm!563865) bm!563869))

(assert (= (or b!6505374 bm!563867) bm!563868))

(assert (= (or b!6505371 b!6505374) bm!563866))

(assert (= (or b!6505371 bm!563868) bm!563870))

(declare-fun m!7292588 () Bool)

(assert (=> bm!563870 m!7292588))

(declare-fun m!7292590 () Bool)

(assert (=> bm!563869 m!7292590))

(assert (=> b!6505373 m!7290980))

(declare-fun m!7292592 () Bool)

(assert (=> b!6505375 m!7292592))

(declare-fun m!7292594 () Bool)

(assert (=> bm!563866 m!7292594))

(assert (=> bm!563581 d!2041185))

(declare-fun bm!563871 () Bool)

(declare-fun call!563876 () List!65448)

(declare-fun call!563880 () List!65448)

(assert (=> bm!563871 (= call!563876 call!563880)))

(declare-fun b!6505377 () Bool)

(declare-fun e!3941763 () (InoxSet Context!11534))

(assert (=> b!6505377 (= e!3941763 ((as const (Array Context!11534 Bool)) false))))

(declare-fun b!6505378 () Bool)

(declare-fun e!3941759 () (InoxSet Context!11534))

(declare-fun e!3941760 () (InoxSet Context!11534))

(assert (=> b!6505378 (= e!3941759 e!3941760)))

(declare-fun c!1193074 () Bool)

(assert (=> b!6505378 (= c!1193074 ((_ is Union!16383) (h!71772 (exprs!6267 lt!2392397))))))

(declare-fun b!6505379 () Bool)

(declare-fun c!1193073 () Bool)

(declare-fun e!3941762 () Bool)

(assert (=> b!6505379 (= c!1193073 e!3941762)))

(declare-fun res!2671480 () Bool)

(assert (=> b!6505379 (=> (not res!2671480) (not e!3941762))))

(assert (=> b!6505379 (= res!2671480 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392397))))))

(declare-fun e!3941758 () (InoxSet Context!11534))

(assert (=> b!6505379 (= e!3941760 e!3941758)))

(declare-fun b!6505380 () Bool)

(declare-fun e!3941761 () (InoxSet Context!11534))

(assert (=> b!6505380 (= e!3941758 e!3941761)))

(declare-fun c!1193072 () Bool)

(assert (=> b!6505380 (= c!1193072 ((_ is Concat!25228) (h!71772 (exprs!6267 lt!2392397))))))

(declare-fun b!6505381 () Bool)

(declare-fun call!563878 () (InoxSet Context!11534))

(assert (=> b!6505381 (= e!3941761 call!563878)))

(declare-fun d!2041187 () Bool)

(declare-fun c!1193075 () Bool)

(assert (=> d!2041187 (= c!1193075 (and ((_ is ElementMatch!16383) (h!71772 (exprs!6267 lt!2392397))) (= (c!1192455 (h!71772 (exprs!6267 lt!2392397))) (h!71773 s!2326))))))

(assert (=> d!2041187 (= (derivationStepZipperDown!1631 (h!71772 (exprs!6267 lt!2392397)) (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (h!71773 s!2326)) e!3941759)))

(declare-fun b!6505382 () Bool)

(declare-fun call!563879 () (InoxSet Context!11534))

(declare-fun call!563877 () (InoxSet Context!11534))

(assert (=> b!6505382 (= e!3941760 ((_ map or) call!563879 call!563877))))

(declare-fun b!6505383 () Bool)

(assert (=> b!6505383 (= e!3941763 call!563878)))

(declare-fun bm!563872 () Bool)

(assert (=> bm!563872 (= call!563877 (derivationStepZipperDown!1631 (ite c!1193074 (regTwo!33279 (h!71772 (exprs!6267 lt!2392397))) (regOne!33278 (h!71772 (exprs!6267 lt!2392397)))) (ite c!1193074 (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (Context!11535 call!563880)) (h!71773 s!2326)))))

(declare-fun bm!563873 () Bool)

(declare-fun call!563881 () (InoxSet Context!11534))

(assert (=> bm!563873 (= call!563878 call!563881)))

(declare-fun bm!563874 () Bool)

(assert (=> bm!563874 (= call!563881 call!563879)))

(declare-fun bm!563875 () Bool)

(assert (=> bm!563875 (= call!563880 ($colon$colon!2234 (exprs!6267 (Context!11535 (t!379082 (exprs!6267 lt!2392397)))) (ite (or c!1193073 c!1193072) (regTwo!33278 (h!71772 (exprs!6267 lt!2392397))) (h!71772 (exprs!6267 lt!2392397)))))))

(declare-fun b!6505384 () Bool)

(assert (=> b!6505384 (= e!3941762 (nullable!6376 (regOne!33278 (h!71772 (exprs!6267 lt!2392397)))))))

(declare-fun bm!563876 () Bool)

(assert (=> bm!563876 (= call!563879 (derivationStepZipperDown!1631 (ite c!1193074 (regOne!33279 (h!71772 (exprs!6267 lt!2392397))) (ite c!1193073 (regTwo!33278 (h!71772 (exprs!6267 lt!2392397))) (ite c!1193072 (regOne!33278 (h!71772 (exprs!6267 lt!2392397))) (reg!16712 (h!71772 (exprs!6267 lt!2392397)))))) (ite (or c!1193074 c!1193073) (Context!11535 (t!379082 (exprs!6267 lt!2392397))) (Context!11535 call!563876)) (h!71773 s!2326)))))

(declare-fun b!6505385 () Bool)

(assert (=> b!6505385 (= e!3941758 ((_ map or) call!563877 call!563881))))

(declare-fun b!6505386 () Bool)

(assert (=> b!6505386 (= e!3941759 (store ((as const (Array Context!11534 Bool)) false) (Context!11535 (t!379082 (exprs!6267 lt!2392397))) true))))

(declare-fun b!6505387 () Bool)

(declare-fun c!1193071 () Bool)

(assert (=> b!6505387 (= c!1193071 ((_ is Star!16383) (h!71772 (exprs!6267 lt!2392397))))))

(assert (=> b!6505387 (= e!3941761 e!3941763)))

(assert (= (and d!2041187 c!1193075) b!6505386))

(assert (= (and d!2041187 (not c!1193075)) b!6505378))

(assert (= (and b!6505378 c!1193074) b!6505382))

(assert (= (and b!6505378 (not c!1193074)) b!6505379))

(assert (= (and b!6505379 res!2671480) b!6505384))

(assert (= (and b!6505379 c!1193073) b!6505385))

(assert (= (and b!6505379 (not c!1193073)) b!6505380))

(assert (= (and b!6505380 c!1193072) b!6505381))

(assert (= (and b!6505380 (not c!1193072)) b!6505387))

(assert (= (and b!6505387 c!1193071) b!6505383))

(assert (= (and b!6505387 (not c!1193071)) b!6505377))

(assert (= (or b!6505381 b!6505383) bm!563871))

(assert (= (or b!6505381 b!6505383) bm!563873))

(assert (= (or b!6505385 bm!563871) bm!563875))

(assert (= (or b!6505385 bm!563873) bm!563874))

(assert (= (or b!6505382 b!6505385) bm!563872))

(assert (= (or b!6505382 bm!563874) bm!563876))

(declare-fun m!7292596 () Bool)

(assert (=> bm!563876 m!7292596))

(declare-fun m!7292598 () Bool)

(assert (=> bm!563875 m!7292598))

(declare-fun m!7292600 () Bool)

(assert (=> b!6505384 m!7292600))

(declare-fun m!7292602 () Bool)

(assert (=> b!6505386 m!7292602))

(declare-fun m!7292604 () Bool)

(assert (=> bm!563872 m!7292604))

(assert (=> bm!563580 d!2041187))

(declare-fun b!6505388 () Bool)

(declare-fun e!3941764 () Bool)

(assert (=> b!6505388 (= e!3941764 tp_is_empty!42019)))

(declare-fun b!6505391 () Bool)

(declare-fun tp!1799132 () Bool)

(declare-fun tp!1799135 () Bool)

(assert (=> b!6505391 (= e!3941764 (and tp!1799132 tp!1799135))))

(declare-fun b!6505390 () Bool)

(declare-fun tp!1799134 () Bool)

(assert (=> b!6505390 (= e!3941764 tp!1799134)))

(declare-fun b!6505389 () Bool)

(declare-fun tp!1799131 () Bool)

(declare-fun tp!1799133 () Bool)

(assert (=> b!6505389 (= e!3941764 (and tp!1799131 tp!1799133))))

(assert (=> b!6504003 (= tp!1798899 e!3941764)))

(assert (= (and b!6504003 ((_ is ElementMatch!16383) (regOne!33278 (reg!16712 r!7292)))) b!6505388))

(assert (= (and b!6504003 ((_ is Concat!25228) (regOne!33278 (reg!16712 r!7292)))) b!6505389))

(assert (= (and b!6504003 ((_ is Star!16383) (regOne!33278 (reg!16712 r!7292)))) b!6505390))

(assert (= (and b!6504003 ((_ is Union!16383) (regOne!33278 (reg!16712 r!7292)))) b!6505391))

(declare-fun b!6505392 () Bool)

(declare-fun e!3941765 () Bool)

(assert (=> b!6505392 (= e!3941765 tp_is_empty!42019)))

(declare-fun b!6505395 () Bool)

(declare-fun tp!1799137 () Bool)

(declare-fun tp!1799140 () Bool)

(assert (=> b!6505395 (= e!3941765 (and tp!1799137 tp!1799140))))

(declare-fun b!6505394 () Bool)

(declare-fun tp!1799139 () Bool)

(assert (=> b!6505394 (= e!3941765 tp!1799139)))

(declare-fun b!6505393 () Bool)

(declare-fun tp!1799136 () Bool)

(declare-fun tp!1799138 () Bool)

(assert (=> b!6505393 (= e!3941765 (and tp!1799136 tp!1799138))))

(assert (=> b!6504003 (= tp!1798901 e!3941765)))

(assert (= (and b!6504003 ((_ is ElementMatch!16383) (regTwo!33278 (reg!16712 r!7292)))) b!6505392))

(assert (= (and b!6504003 ((_ is Concat!25228) (regTwo!33278 (reg!16712 r!7292)))) b!6505393))

(assert (= (and b!6504003 ((_ is Star!16383) (regTwo!33278 (reg!16712 r!7292)))) b!6505394))

(assert (= (and b!6504003 ((_ is Union!16383) (regTwo!33278 (reg!16712 r!7292)))) b!6505395))

(declare-fun b!6505396 () Bool)

(declare-fun e!3941766 () Bool)

(assert (=> b!6505396 (= e!3941766 tp_is_empty!42019)))

(declare-fun b!6505399 () Bool)

(declare-fun tp!1799142 () Bool)

(declare-fun tp!1799145 () Bool)

(assert (=> b!6505399 (= e!3941766 (and tp!1799142 tp!1799145))))

(declare-fun b!6505398 () Bool)

(declare-fun tp!1799144 () Bool)

(assert (=> b!6505398 (= e!3941766 tp!1799144)))

(declare-fun b!6505397 () Bool)

(declare-fun tp!1799141 () Bool)

(declare-fun tp!1799143 () Bool)

(assert (=> b!6505397 (= e!3941766 (and tp!1799141 tp!1799143))))

(assert (=> b!6504012 (= tp!1798912 e!3941766)))

(assert (= (and b!6504012 ((_ is ElementMatch!16383) (reg!16712 (regTwo!33279 r!7292)))) b!6505396))

(assert (= (and b!6504012 ((_ is Concat!25228) (reg!16712 (regTwo!33279 r!7292)))) b!6505397))

(assert (= (and b!6504012 ((_ is Star!16383) (reg!16712 (regTwo!33279 r!7292)))) b!6505398))

(assert (= (and b!6504012 ((_ is Union!16383) (reg!16712 (regTwo!33279 r!7292)))) b!6505399))

(declare-fun b!6505400 () Bool)

(declare-fun e!3941767 () Bool)

(assert (=> b!6505400 (= e!3941767 tp_is_empty!42019)))

(declare-fun b!6505403 () Bool)

(declare-fun tp!1799147 () Bool)

(declare-fun tp!1799150 () Bool)

(assert (=> b!6505403 (= e!3941767 (and tp!1799147 tp!1799150))))

(declare-fun b!6505402 () Bool)

(declare-fun tp!1799149 () Bool)

(assert (=> b!6505402 (= e!3941767 tp!1799149)))

(declare-fun b!6505401 () Bool)

(declare-fun tp!1799146 () Bool)

(declare-fun tp!1799148 () Bool)

(assert (=> b!6505401 (= e!3941767 (and tp!1799146 tp!1799148))))

(assert (=> b!6504013 (= tp!1798910 e!3941767)))

(assert (= (and b!6504013 ((_ is ElementMatch!16383) (regOne!33279 (regTwo!33279 r!7292)))) b!6505400))

(assert (= (and b!6504013 ((_ is Concat!25228) (regOne!33279 (regTwo!33279 r!7292)))) b!6505401))

(assert (= (and b!6504013 ((_ is Star!16383) (regOne!33279 (regTwo!33279 r!7292)))) b!6505402))

(assert (= (and b!6504013 ((_ is Union!16383) (regOne!33279 (regTwo!33279 r!7292)))) b!6505403))

(declare-fun b!6505404 () Bool)

(declare-fun e!3941768 () Bool)

(assert (=> b!6505404 (= e!3941768 tp_is_empty!42019)))

(declare-fun b!6505407 () Bool)

(declare-fun tp!1799152 () Bool)

(declare-fun tp!1799155 () Bool)

(assert (=> b!6505407 (= e!3941768 (and tp!1799152 tp!1799155))))

(declare-fun b!6505406 () Bool)

(declare-fun tp!1799154 () Bool)

(assert (=> b!6505406 (= e!3941768 tp!1799154)))

(declare-fun b!6505405 () Bool)

(declare-fun tp!1799151 () Bool)

(declare-fun tp!1799153 () Bool)

(assert (=> b!6505405 (= e!3941768 (and tp!1799151 tp!1799153))))

(assert (=> b!6504013 (= tp!1798913 e!3941768)))

(assert (= (and b!6504013 ((_ is ElementMatch!16383) (regTwo!33279 (regTwo!33279 r!7292)))) b!6505404))

(assert (= (and b!6504013 ((_ is Concat!25228) (regTwo!33279 (regTwo!33279 r!7292)))) b!6505405))

(assert (= (and b!6504013 ((_ is Star!16383) (regTwo!33279 (regTwo!33279 r!7292)))) b!6505406))

(assert (= (and b!6504013 ((_ is Union!16383) (regTwo!33279 (regTwo!33279 r!7292)))) b!6505407))

(declare-fun b!6505408 () Bool)

(declare-fun e!3941769 () Bool)

(assert (=> b!6505408 (= e!3941769 tp_is_empty!42019)))

(declare-fun b!6505411 () Bool)

(declare-fun tp!1799157 () Bool)

(declare-fun tp!1799160 () Bool)

(assert (=> b!6505411 (= e!3941769 (and tp!1799157 tp!1799160))))

(declare-fun b!6505410 () Bool)

(declare-fun tp!1799159 () Bool)

(assert (=> b!6505410 (= e!3941769 tp!1799159)))

(declare-fun b!6505409 () Bool)

(declare-fun tp!1799156 () Bool)

(declare-fun tp!1799158 () Bool)

(assert (=> b!6505409 (= e!3941769 (and tp!1799156 tp!1799158))))

(assert (=> b!6504004 (= tp!1798902 e!3941769)))

(assert (= (and b!6504004 ((_ is ElementMatch!16383) (reg!16712 (reg!16712 r!7292)))) b!6505408))

(assert (= (and b!6504004 ((_ is Concat!25228) (reg!16712 (reg!16712 r!7292)))) b!6505409))

(assert (= (and b!6504004 ((_ is Star!16383) (reg!16712 (reg!16712 r!7292)))) b!6505410))

(assert (= (and b!6504004 ((_ is Union!16383) (reg!16712 (reg!16712 r!7292)))) b!6505411))

(declare-fun b!6505412 () Bool)

(declare-fun e!3941770 () Bool)

(assert (=> b!6505412 (= e!3941770 tp_is_empty!42019)))

(declare-fun b!6505415 () Bool)

(declare-fun tp!1799162 () Bool)

(declare-fun tp!1799165 () Bool)

(assert (=> b!6505415 (= e!3941770 (and tp!1799162 tp!1799165))))

(declare-fun b!6505414 () Bool)

(declare-fun tp!1799164 () Bool)

(assert (=> b!6505414 (= e!3941770 tp!1799164)))

(declare-fun b!6505413 () Bool)

(declare-fun tp!1799161 () Bool)

(declare-fun tp!1799163 () Bool)

(assert (=> b!6505413 (= e!3941770 (and tp!1799161 tp!1799163))))

(assert (=> b!6504005 (= tp!1798900 e!3941770)))

(assert (= (and b!6504005 ((_ is ElementMatch!16383) (regOne!33279 (reg!16712 r!7292)))) b!6505412))

(assert (= (and b!6504005 ((_ is Concat!25228) (regOne!33279 (reg!16712 r!7292)))) b!6505413))

(assert (= (and b!6504005 ((_ is Star!16383) (regOne!33279 (reg!16712 r!7292)))) b!6505414))

(assert (= (and b!6504005 ((_ is Union!16383) (regOne!33279 (reg!16712 r!7292)))) b!6505415))

(declare-fun b!6505416 () Bool)

(declare-fun e!3941771 () Bool)

(assert (=> b!6505416 (= e!3941771 tp_is_empty!42019)))

(declare-fun b!6505419 () Bool)

(declare-fun tp!1799167 () Bool)

(declare-fun tp!1799170 () Bool)

(assert (=> b!6505419 (= e!3941771 (and tp!1799167 tp!1799170))))

(declare-fun b!6505418 () Bool)

(declare-fun tp!1799169 () Bool)

(assert (=> b!6505418 (= e!3941771 tp!1799169)))

(declare-fun b!6505417 () Bool)

(declare-fun tp!1799166 () Bool)

(declare-fun tp!1799168 () Bool)

(assert (=> b!6505417 (= e!3941771 (and tp!1799166 tp!1799168))))

(assert (=> b!6504005 (= tp!1798903 e!3941771)))

(assert (= (and b!6504005 ((_ is ElementMatch!16383) (regTwo!33279 (reg!16712 r!7292)))) b!6505416))

(assert (= (and b!6504005 ((_ is Concat!25228) (regTwo!33279 (reg!16712 r!7292)))) b!6505417))

(assert (= (and b!6504005 ((_ is Star!16383) (regTwo!33279 (reg!16712 r!7292)))) b!6505418))

(assert (= (and b!6504005 ((_ is Union!16383) (regTwo!33279 (reg!16712 r!7292)))) b!6505419))

(declare-fun b!6505420 () Bool)

(declare-fun e!3941772 () Bool)

(assert (=> b!6505420 (= e!3941772 tp_is_empty!42019)))

(declare-fun b!6505423 () Bool)

(declare-fun tp!1799172 () Bool)

(declare-fun tp!1799175 () Bool)

(assert (=> b!6505423 (= e!3941772 (and tp!1799172 tp!1799175))))

(declare-fun b!6505422 () Bool)

(declare-fun tp!1799174 () Bool)

(assert (=> b!6505422 (= e!3941772 tp!1799174)))

(declare-fun b!6505421 () Bool)

(declare-fun tp!1799171 () Bool)

(declare-fun tp!1799173 () Bool)

(assert (=> b!6505421 (= e!3941772 (and tp!1799171 tp!1799173))))

(assert (=> b!6504035 (= tp!1798933 e!3941772)))

(assert (= (and b!6504035 ((_ is ElementMatch!16383) (h!71772 (exprs!6267 setElem!44339)))) b!6505420))

(assert (= (and b!6504035 ((_ is Concat!25228) (h!71772 (exprs!6267 setElem!44339)))) b!6505421))

(assert (= (and b!6504035 ((_ is Star!16383) (h!71772 (exprs!6267 setElem!44339)))) b!6505422))

(assert (= (and b!6504035 ((_ is Union!16383) (h!71772 (exprs!6267 setElem!44339)))) b!6505423))

(declare-fun b!6505424 () Bool)

(declare-fun e!3941773 () Bool)

(declare-fun tp!1799176 () Bool)

(declare-fun tp!1799177 () Bool)

(assert (=> b!6505424 (= e!3941773 (and tp!1799176 tp!1799177))))

(assert (=> b!6504035 (= tp!1798934 e!3941773)))

(assert (= (and b!6504035 ((_ is Cons!65324) (t!379082 (exprs!6267 setElem!44339)))) b!6505424))

(declare-fun b!6505425 () Bool)

(declare-fun e!3941774 () Bool)

(assert (=> b!6505425 (= e!3941774 tp_is_empty!42019)))

(declare-fun b!6505428 () Bool)

(declare-fun tp!1799179 () Bool)

(declare-fun tp!1799182 () Bool)

(assert (=> b!6505428 (= e!3941774 (and tp!1799179 tp!1799182))))

(declare-fun b!6505427 () Bool)

(declare-fun tp!1799181 () Bool)

(assert (=> b!6505427 (= e!3941774 tp!1799181)))

(declare-fun b!6505426 () Bool)

(declare-fun tp!1799178 () Bool)

(declare-fun tp!1799180 () Bool)

(assert (=> b!6505426 (= e!3941774 (and tp!1799178 tp!1799180))))

(assert (=> b!6504015 (= tp!1798914 e!3941774)))

(assert (= (and b!6504015 ((_ is ElementMatch!16383) (regOne!33278 (regOne!33278 r!7292)))) b!6505425))

(assert (= (and b!6504015 ((_ is Concat!25228) (regOne!33278 (regOne!33278 r!7292)))) b!6505426))

(assert (= (and b!6504015 ((_ is Star!16383) (regOne!33278 (regOne!33278 r!7292)))) b!6505427))

(assert (= (and b!6504015 ((_ is Union!16383) (regOne!33278 (regOne!33278 r!7292)))) b!6505428))

(declare-fun b!6505429 () Bool)

(declare-fun e!3941775 () Bool)

(assert (=> b!6505429 (= e!3941775 tp_is_empty!42019)))

(declare-fun b!6505432 () Bool)

(declare-fun tp!1799184 () Bool)

(declare-fun tp!1799187 () Bool)

(assert (=> b!6505432 (= e!3941775 (and tp!1799184 tp!1799187))))

(declare-fun b!6505431 () Bool)

(declare-fun tp!1799186 () Bool)

(assert (=> b!6505431 (= e!3941775 tp!1799186)))

(declare-fun b!6505430 () Bool)

(declare-fun tp!1799183 () Bool)

(declare-fun tp!1799185 () Bool)

(assert (=> b!6505430 (= e!3941775 (and tp!1799183 tp!1799185))))

(assert (=> b!6504015 (= tp!1798916 e!3941775)))

(assert (= (and b!6504015 ((_ is ElementMatch!16383) (regTwo!33278 (regOne!33278 r!7292)))) b!6505429))

(assert (= (and b!6504015 ((_ is Concat!25228) (regTwo!33278 (regOne!33278 r!7292)))) b!6505430))

(assert (= (and b!6504015 ((_ is Star!16383) (regTwo!33278 (regOne!33278 r!7292)))) b!6505431))

(assert (= (and b!6504015 ((_ is Union!16383) (regTwo!33278 (regOne!33278 r!7292)))) b!6505432))

(declare-fun b!6505433 () Bool)

(declare-fun e!3941776 () Bool)

(assert (=> b!6505433 (= e!3941776 tp_is_empty!42019)))

(declare-fun b!6505436 () Bool)

(declare-fun tp!1799189 () Bool)

(declare-fun tp!1799192 () Bool)

(assert (=> b!6505436 (= e!3941776 (and tp!1799189 tp!1799192))))

(declare-fun b!6505435 () Bool)

(declare-fun tp!1799191 () Bool)

(assert (=> b!6505435 (= e!3941776 tp!1799191)))

(declare-fun b!6505434 () Bool)

(declare-fun tp!1799188 () Bool)

(declare-fun tp!1799190 () Bool)

(assert (=> b!6505434 (= e!3941776 (and tp!1799188 tp!1799190))))

(assert (=> b!6504007 (= tp!1798904 e!3941776)))

(assert (= (and b!6504007 ((_ is ElementMatch!16383) (regOne!33278 (regOne!33279 r!7292)))) b!6505433))

(assert (= (and b!6504007 ((_ is Concat!25228) (regOne!33278 (regOne!33279 r!7292)))) b!6505434))

(assert (= (and b!6504007 ((_ is Star!16383) (regOne!33278 (regOne!33279 r!7292)))) b!6505435))

(assert (= (and b!6504007 ((_ is Union!16383) (regOne!33278 (regOne!33279 r!7292)))) b!6505436))

(declare-fun b!6505437 () Bool)

(declare-fun e!3941777 () Bool)

(assert (=> b!6505437 (= e!3941777 tp_is_empty!42019)))

(declare-fun b!6505440 () Bool)

(declare-fun tp!1799194 () Bool)

(declare-fun tp!1799197 () Bool)

(assert (=> b!6505440 (= e!3941777 (and tp!1799194 tp!1799197))))

(declare-fun b!6505439 () Bool)

(declare-fun tp!1799196 () Bool)

(assert (=> b!6505439 (= e!3941777 tp!1799196)))

(declare-fun b!6505438 () Bool)

(declare-fun tp!1799193 () Bool)

(declare-fun tp!1799195 () Bool)

(assert (=> b!6505438 (= e!3941777 (and tp!1799193 tp!1799195))))

(assert (=> b!6504007 (= tp!1798906 e!3941777)))

(assert (= (and b!6504007 ((_ is ElementMatch!16383) (regTwo!33278 (regOne!33279 r!7292)))) b!6505437))

(assert (= (and b!6504007 ((_ is Concat!25228) (regTwo!33278 (regOne!33279 r!7292)))) b!6505438))

(assert (= (and b!6504007 ((_ is Star!16383) (regTwo!33278 (regOne!33279 r!7292)))) b!6505439))

(assert (= (and b!6504007 ((_ is Union!16383) (regTwo!33278 (regOne!33279 r!7292)))) b!6505440))

(declare-fun b!6505441 () Bool)

(declare-fun e!3941778 () Bool)

(assert (=> b!6505441 (= e!3941778 tp_is_empty!42019)))

(declare-fun b!6505444 () Bool)

(declare-fun tp!1799199 () Bool)

(declare-fun tp!1799202 () Bool)

(assert (=> b!6505444 (= e!3941778 (and tp!1799199 tp!1799202))))

(declare-fun b!6505443 () Bool)

(declare-fun tp!1799201 () Bool)

(assert (=> b!6505443 (= e!3941778 tp!1799201)))

(declare-fun b!6505442 () Bool)

(declare-fun tp!1799198 () Bool)

(declare-fun tp!1799200 () Bool)

(assert (=> b!6505442 (= e!3941778 (and tp!1799198 tp!1799200))))

(assert (=> b!6504016 (= tp!1798917 e!3941778)))

(assert (= (and b!6504016 ((_ is ElementMatch!16383) (reg!16712 (regOne!33278 r!7292)))) b!6505441))

(assert (= (and b!6504016 ((_ is Concat!25228) (reg!16712 (regOne!33278 r!7292)))) b!6505442))

(assert (= (and b!6504016 ((_ is Star!16383) (reg!16712 (regOne!33278 r!7292)))) b!6505443))

(assert (= (and b!6504016 ((_ is Union!16383) (reg!16712 (regOne!33278 r!7292)))) b!6505444))

(declare-fun condSetEmpty!44365 () Bool)

(assert (=> setNonEmpty!44345 (= condSetEmpty!44365 (= setRest!44345 ((as const (Array Context!11534 Bool)) false)))))

(declare-fun setRes!44365 () Bool)

(assert (=> setNonEmpty!44345 (= tp!1798887 setRes!44365)))

(declare-fun setIsEmpty!44365 () Bool)

(assert (=> setIsEmpty!44365 setRes!44365))

(declare-fun setNonEmpty!44365 () Bool)

(declare-fun tp!1799203 () Bool)

(declare-fun setElem!44365 () Context!11534)

(declare-fun e!3941779 () Bool)

(assert (=> setNonEmpty!44365 (= setRes!44365 (and tp!1799203 (inv!84204 setElem!44365) e!3941779))))

(declare-fun setRest!44365 () (InoxSet Context!11534))

(assert (=> setNonEmpty!44365 (= setRest!44345 ((_ map or) (store ((as const (Array Context!11534 Bool)) false) setElem!44365 true) setRest!44365))))

(declare-fun b!6505445 () Bool)

(declare-fun tp!1799204 () Bool)

(assert (=> b!6505445 (= e!3941779 tp!1799204)))

(assert (= (and setNonEmpty!44345 condSetEmpty!44365) setIsEmpty!44365))

(assert (= (and setNonEmpty!44345 (not condSetEmpty!44365)) setNonEmpty!44365))

(assert (= setNonEmpty!44365 b!6505445))

(declare-fun m!7292606 () Bool)

(assert (=> setNonEmpty!44365 m!7292606))

(declare-fun b!6505446 () Bool)

(declare-fun e!3941780 () Bool)

(declare-fun tp!1799205 () Bool)

(declare-fun tp!1799206 () Bool)

(assert (=> b!6505446 (= e!3941780 (and tp!1799205 tp!1799206))))

(assert (=> b!6503991 (= tp!1798888 e!3941780)))

(assert (= (and b!6503991 ((_ is Cons!65324) (exprs!6267 setElem!44345))) b!6505446))

(declare-fun b!6505447 () Bool)

(declare-fun e!3941781 () Bool)

(assert (=> b!6505447 (= e!3941781 tp_is_empty!42019)))

(declare-fun b!6505450 () Bool)

(declare-fun tp!1799208 () Bool)

(declare-fun tp!1799211 () Bool)

(assert (=> b!6505450 (= e!3941781 (and tp!1799208 tp!1799211))))

(declare-fun b!6505449 () Bool)

(declare-fun tp!1799210 () Bool)

(assert (=> b!6505449 (= e!3941781 tp!1799210)))

(declare-fun b!6505448 () Bool)

(declare-fun tp!1799207 () Bool)

(declare-fun tp!1799209 () Bool)

(assert (=> b!6505448 (= e!3941781 (and tp!1799207 tp!1799209))))

(assert (=> b!6503986 (= tp!1798881 e!3941781)))

(assert (= (and b!6503986 ((_ is ElementMatch!16383) (h!71772 (exprs!6267 (h!71774 zl!343))))) b!6505447))

(assert (= (and b!6503986 ((_ is Concat!25228) (h!71772 (exprs!6267 (h!71774 zl!343))))) b!6505448))

(assert (= (and b!6503986 ((_ is Star!16383) (h!71772 (exprs!6267 (h!71774 zl!343))))) b!6505449))

(assert (= (and b!6503986 ((_ is Union!16383) (h!71772 (exprs!6267 (h!71774 zl!343))))) b!6505450))

(declare-fun b!6505451 () Bool)

(declare-fun e!3941782 () Bool)

(declare-fun tp!1799212 () Bool)

(declare-fun tp!1799213 () Bool)

(assert (=> b!6505451 (= e!3941782 (and tp!1799212 tp!1799213))))

(assert (=> b!6503986 (= tp!1798882 e!3941782)))

(assert (= (and b!6503986 ((_ is Cons!65324) (t!379082 (exprs!6267 (h!71774 zl!343))))) b!6505451))

(declare-fun b!6505452 () Bool)

(declare-fun e!3941783 () Bool)

(declare-fun tp!1799214 () Bool)

(assert (=> b!6505452 (= e!3941783 (and tp_is_empty!42019 tp!1799214))))

(assert (=> b!6504026 (= tp!1798926 e!3941783)))

(assert (= (and b!6504026 ((_ is Cons!65325) (t!379083 (t!379083 s!2326)))) b!6505452))

(declare-fun b!6505453 () Bool)

(declare-fun e!3941784 () Bool)

(assert (=> b!6505453 (= e!3941784 tp_is_empty!42019)))

(declare-fun b!6505456 () Bool)

(declare-fun tp!1799216 () Bool)

(declare-fun tp!1799219 () Bool)

(assert (=> b!6505456 (= e!3941784 (and tp!1799216 tp!1799219))))

(declare-fun b!6505455 () Bool)

(declare-fun tp!1799218 () Bool)

(assert (=> b!6505455 (= e!3941784 tp!1799218)))

(declare-fun b!6505454 () Bool)

(declare-fun tp!1799215 () Bool)

(declare-fun tp!1799217 () Bool)

(assert (=> b!6505454 (= e!3941784 (and tp!1799215 tp!1799217))))

(assert (=> b!6504017 (= tp!1798915 e!3941784)))

(assert (= (and b!6504017 ((_ is ElementMatch!16383) (regOne!33279 (regOne!33278 r!7292)))) b!6505453))

(assert (= (and b!6504017 ((_ is Concat!25228) (regOne!33279 (regOne!33278 r!7292)))) b!6505454))

(assert (= (and b!6504017 ((_ is Star!16383) (regOne!33279 (regOne!33278 r!7292)))) b!6505455))

(assert (= (and b!6504017 ((_ is Union!16383) (regOne!33279 (regOne!33278 r!7292)))) b!6505456))

(declare-fun b!6505457 () Bool)

(declare-fun e!3941785 () Bool)

(assert (=> b!6505457 (= e!3941785 tp_is_empty!42019)))

(declare-fun b!6505460 () Bool)

(declare-fun tp!1799221 () Bool)

(declare-fun tp!1799224 () Bool)

(assert (=> b!6505460 (= e!3941785 (and tp!1799221 tp!1799224))))

(declare-fun b!6505459 () Bool)

(declare-fun tp!1799223 () Bool)

(assert (=> b!6505459 (= e!3941785 tp!1799223)))

(declare-fun b!6505458 () Bool)

(declare-fun tp!1799220 () Bool)

(declare-fun tp!1799222 () Bool)

(assert (=> b!6505458 (= e!3941785 (and tp!1799220 tp!1799222))))

(assert (=> b!6504017 (= tp!1798918 e!3941785)))

(assert (= (and b!6504017 ((_ is ElementMatch!16383) (regTwo!33279 (regOne!33278 r!7292)))) b!6505457))

(assert (= (and b!6504017 ((_ is Concat!25228) (regTwo!33279 (regOne!33278 r!7292)))) b!6505458))

(assert (= (and b!6504017 ((_ is Star!16383) (regTwo!33279 (regOne!33278 r!7292)))) b!6505459))

(assert (= (and b!6504017 ((_ is Union!16383) (regTwo!33279 (regOne!33278 r!7292)))) b!6505460))

(declare-fun b!6505461 () Bool)

(declare-fun e!3941786 () Bool)

(assert (=> b!6505461 (= e!3941786 tp_is_empty!42019)))

(declare-fun b!6505464 () Bool)

(declare-fun tp!1799226 () Bool)

(declare-fun tp!1799229 () Bool)

(assert (=> b!6505464 (= e!3941786 (and tp!1799226 tp!1799229))))

(declare-fun b!6505463 () Bool)

(declare-fun tp!1799228 () Bool)

(assert (=> b!6505463 (= e!3941786 tp!1799228)))

(declare-fun b!6505462 () Bool)

(declare-fun tp!1799225 () Bool)

(declare-fun tp!1799227 () Bool)

(assert (=> b!6505462 (= e!3941786 (and tp!1799225 tp!1799227))))

(assert (=> b!6504008 (= tp!1798907 e!3941786)))

(assert (= (and b!6504008 ((_ is ElementMatch!16383) (reg!16712 (regOne!33279 r!7292)))) b!6505461))

(assert (= (and b!6504008 ((_ is Concat!25228) (reg!16712 (regOne!33279 r!7292)))) b!6505462))

(assert (= (and b!6504008 ((_ is Star!16383) (reg!16712 (regOne!33279 r!7292)))) b!6505463))

(assert (= (and b!6504008 ((_ is Union!16383) (reg!16712 (regOne!33279 r!7292)))) b!6505464))

(declare-fun b!6505465 () Bool)

(declare-fun e!3941787 () Bool)

(assert (=> b!6505465 (= e!3941787 tp_is_empty!42019)))

(declare-fun b!6505468 () Bool)

(declare-fun tp!1799231 () Bool)

(declare-fun tp!1799234 () Bool)

(assert (=> b!6505468 (= e!3941787 (and tp!1799231 tp!1799234))))

(declare-fun b!6505467 () Bool)

(declare-fun tp!1799233 () Bool)

(assert (=> b!6505467 (= e!3941787 tp!1799233)))

(declare-fun b!6505466 () Bool)

(declare-fun tp!1799230 () Bool)

(declare-fun tp!1799232 () Bool)

(assert (=> b!6505466 (= e!3941787 (and tp!1799230 tp!1799232))))

(assert (=> b!6504009 (= tp!1798905 e!3941787)))

(assert (= (and b!6504009 ((_ is ElementMatch!16383) (regOne!33279 (regOne!33279 r!7292)))) b!6505465))

(assert (= (and b!6504009 ((_ is Concat!25228) (regOne!33279 (regOne!33279 r!7292)))) b!6505466))

(assert (= (and b!6504009 ((_ is Star!16383) (regOne!33279 (regOne!33279 r!7292)))) b!6505467))

(assert (= (and b!6504009 ((_ is Union!16383) (regOne!33279 (regOne!33279 r!7292)))) b!6505468))

(declare-fun b!6505469 () Bool)

(declare-fun e!3941788 () Bool)

(assert (=> b!6505469 (= e!3941788 tp_is_empty!42019)))

(declare-fun b!6505472 () Bool)

(declare-fun tp!1799236 () Bool)

(declare-fun tp!1799239 () Bool)

(assert (=> b!6505472 (= e!3941788 (and tp!1799236 tp!1799239))))

(declare-fun b!6505471 () Bool)

(declare-fun tp!1799238 () Bool)

(assert (=> b!6505471 (= e!3941788 tp!1799238)))

(declare-fun b!6505470 () Bool)

(declare-fun tp!1799235 () Bool)

(declare-fun tp!1799237 () Bool)

(assert (=> b!6505470 (= e!3941788 (and tp!1799235 tp!1799237))))

(assert (=> b!6504009 (= tp!1798908 e!3941788)))

(assert (= (and b!6504009 ((_ is ElementMatch!16383) (regTwo!33279 (regOne!33279 r!7292)))) b!6505469))

(assert (= (and b!6504009 ((_ is Concat!25228) (regTwo!33279 (regOne!33279 r!7292)))) b!6505470))

(assert (= (and b!6504009 ((_ is Star!16383) (regTwo!33279 (regOne!33279 r!7292)))) b!6505471))

(assert (= (and b!6504009 ((_ is Union!16383) (regTwo!33279 (regOne!33279 r!7292)))) b!6505472))

(declare-fun b!6505473 () Bool)

(declare-fun e!3941789 () Bool)

(assert (=> b!6505473 (= e!3941789 tp_is_empty!42019)))

(declare-fun b!6505476 () Bool)

(declare-fun tp!1799241 () Bool)

(declare-fun tp!1799244 () Bool)

(assert (=> b!6505476 (= e!3941789 (and tp!1799241 tp!1799244))))

(declare-fun b!6505475 () Bool)

(declare-fun tp!1799243 () Bool)

(assert (=> b!6505475 (= e!3941789 tp!1799243)))

(declare-fun b!6505474 () Bool)

(declare-fun tp!1799240 () Bool)

(declare-fun tp!1799242 () Bool)

(assert (=> b!6505474 (= e!3941789 (and tp!1799240 tp!1799242))))

(assert (=> b!6504019 (= tp!1798919 e!3941789)))

(assert (= (and b!6504019 ((_ is ElementMatch!16383) (regOne!33278 (regTwo!33278 r!7292)))) b!6505473))

(assert (= (and b!6504019 ((_ is Concat!25228) (regOne!33278 (regTwo!33278 r!7292)))) b!6505474))

(assert (= (and b!6504019 ((_ is Star!16383) (regOne!33278 (regTwo!33278 r!7292)))) b!6505475))

(assert (= (and b!6504019 ((_ is Union!16383) (regOne!33278 (regTwo!33278 r!7292)))) b!6505476))

(declare-fun b!6505477 () Bool)

(declare-fun e!3941790 () Bool)

(assert (=> b!6505477 (= e!3941790 tp_is_empty!42019)))

(declare-fun b!6505480 () Bool)

(declare-fun tp!1799246 () Bool)

(declare-fun tp!1799249 () Bool)

(assert (=> b!6505480 (= e!3941790 (and tp!1799246 tp!1799249))))

(declare-fun b!6505479 () Bool)

(declare-fun tp!1799248 () Bool)

(assert (=> b!6505479 (= e!3941790 tp!1799248)))

(declare-fun b!6505478 () Bool)

(declare-fun tp!1799245 () Bool)

(declare-fun tp!1799247 () Bool)

(assert (=> b!6505478 (= e!3941790 (and tp!1799245 tp!1799247))))

(assert (=> b!6504019 (= tp!1798921 e!3941790)))

(assert (= (and b!6504019 ((_ is ElementMatch!16383) (regTwo!33278 (regTwo!33278 r!7292)))) b!6505477))

(assert (= (and b!6504019 ((_ is Concat!25228) (regTwo!33278 (regTwo!33278 r!7292)))) b!6505478))

(assert (= (and b!6504019 ((_ is Star!16383) (regTwo!33278 (regTwo!33278 r!7292)))) b!6505479))

(assert (= (and b!6504019 ((_ is Union!16383) (regTwo!33278 (regTwo!33278 r!7292)))) b!6505480))

(declare-fun b!6505481 () Bool)

(declare-fun e!3941791 () Bool)

(assert (=> b!6505481 (= e!3941791 tp_is_empty!42019)))

(declare-fun b!6505484 () Bool)

(declare-fun tp!1799251 () Bool)

(declare-fun tp!1799254 () Bool)

(assert (=> b!6505484 (= e!3941791 (and tp!1799251 tp!1799254))))

(declare-fun b!6505483 () Bool)

(declare-fun tp!1799253 () Bool)

(assert (=> b!6505483 (= e!3941791 tp!1799253)))

(declare-fun b!6505482 () Bool)

(declare-fun tp!1799250 () Bool)

(declare-fun tp!1799252 () Bool)

(assert (=> b!6505482 (= e!3941791 (and tp!1799250 tp!1799252))))

(assert (=> b!6504011 (= tp!1798909 e!3941791)))

(assert (= (and b!6504011 ((_ is ElementMatch!16383) (regOne!33278 (regTwo!33279 r!7292)))) b!6505481))

(assert (= (and b!6504011 ((_ is Concat!25228) (regOne!33278 (regTwo!33279 r!7292)))) b!6505482))

(assert (= (and b!6504011 ((_ is Star!16383) (regOne!33278 (regTwo!33279 r!7292)))) b!6505483))

(assert (= (and b!6504011 ((_ is Union!16383) (regOne!33278 (regTwo!33279 r!7292)))) b!6505484))

(declare-fun b!6505485 () Bool)

(declare-fun e!3941792 () Bool)

(assert (=> b!6505485 (= e!3941792 tp_is_empty!42019)))

(declare-fun b!6505488 () Bool)

(declare-fun tp!1799256 () Bool)

(declare-fun tp!1799259 () Bool)

(assert (=> b!6505488 (= e!3941792 (and tp!1799256 tp!1799259))))

(declare-fun b!6505487 () Bool)

(declare-fun tp!1799258 () Bool)

(assert (=> b!6505487 (= e!3941792 tp!1799258)))

(declare-fun b!6505486 () Bool)

(declare-fun tp!1799255 () Bool)

(declare-fun tp!1799257 () Bool)

(assert (=> b!6505486 (= e!3941792 (and tp!1799255 tp!1799257))))

(assert (=> b!6504011 (= tp!1798911 e!3941792)))

(assert (= (and b!6504011 ((_ is ElementMatch!16383) (regTwo!33278 (regTwo!33279 r!7292)))) b!6505485))

(assert (= (and b!6504011 ((_ is Concat!25228) (regTwo!33278 (regTwo!33279 r!7292)))) b!6505486))

(assert (= (and b!6504011 ((_ is Star!16383) (regTwo!33278 (regTwo!33279 r!7292)))) b!6505487))

(assert (= (and b!6504011 ((_ is Union!16383) (regTwo!33278 (regTwo!33279 r!7292)))) b!6505488))

(declare-fun b!6505489 () Bool)

(declare-fun e!3941793 () Bool)

(assert (=> b!6505489 (= e!3941793 tp_is_empty!42019)))

(declare-fun b!6505492 () Bool)

(declare-fun tp!1799261 () Bool)

(declare-fun tp!1799264 () Bool)

(assert (=> b!6505492 (= e!3941793 (and tp!1799261 tp!1799264))))

(declare-fun b!6505491 () Bool)

(declare-fun tp!1799263 () Bool)

(assert (=> b!6505491 (= e!3941793 tp!1799263)))

(declare-fun b!6505490 () Bool)

(declare-fun tp!1799260 () Bool)

(declare-fun tp!1799262 () Bool)

(assert (=> b!6505490 (= e!3941793 (and tp!1799260 tp!1799262))))

(assert (=> b!6504020 (= tp!1798922 e!3941793)))

(assert (= (and b!6504020 ((_ is ElementMatch!16383) (reg!16712 (regTwo!33278 r!7292)))) b!6505489))

(assert (= (and b!6504020 ((_ is Concat!25228) (reg!16712 (regTwo!33278 r!7292)))) b!6505490))

(assert (= (and b!6504020 ((_ is Star!16383) (reg!16712 (regTwo!33278 r!7292)))) b!6505491))

(assert (= (and b!6504020 ((_ is Union!16383) (reg!16712 (regTwo!33278 r!7292)))) b!6505492))

(declare-fun b!6505493 () Bool)

(declare-fun e!3941794 () Bool)

(assert (=> b!6505493 (= e!3941794 tp_is_empty!42019)))

(declare-fun b!6505496 () Bool)

(declare-fun tp!1799266 () Bool)

(declare-fun tp!1799269 () Bool)

(assert (=> b!6505496 (= e!3941794 (and tp!1799266 tp!1799269))))

(declare-fun b!6505495 () Bool)

(declare-fun tp!1799268 () Bool)

(assert (=> b!6505495 (= e!3941794 tp!1799268)))

(declare-fun b!6505494 () Bool)

(declare-fun tp!1799265 () Bool)

(declare-fun tp!1799267 () Bool)

(assert (=> b!6505494 (= e!3941794 (and tp!1799265 tp!1799267))))

(assert (=> b!6504021 (= tp!1798920 e!3941794)))

(assert (= (and b!6504021 ((_ is ElementMatch!16383) (regOne!33279 (regTwo!33278 r!7292)))) b!6505493))

(assert (= (and b!6504021 ((_ is Concat!25228) (regOne!33279 (regTwo!33278 r!7292)))) b!6505494))

(assert (= (and b!6504021 ((_ is Star!16383) (regOne!33279 (regTwo!33278 r!7292)))) b!6505495))

(assert (= (and b!6504021 ((_ is Union!16383) (regOne!33279 (regTwo!33278 r!7292)))) b!6505496))

(declare-fun b!6505497 () Bool)

(declare-fun e!3941795 () Bool)

(assert (=> b!6505497 (= e!3941795 tp_is_empty!42019)))

(declare-fun b!6505500 () Bool)

(declare-fun tp!1799271 () Bool)

(declare-fun tp!1799274 () Bool)

(assert (=> b!6505500 (= e!3941795 (and tp!1799271 tp!1799274))))

(declare-fun b!6505499 () Bool)

(declare-fun tp!1799273 () Bool)

(assert (=> b!6505499 (= e!3941795 tp!1799273)))

(declare-fun b!6505498 () Bool)

(declare-fun tp!1799270 () Bool)

(declare-fun tp!1799272 () Bool)

(assert (=> b!6505498 (= e!3941795 (and tp!1799270 tp!1799272))))

(assert (=> b!6504021 (= tp!1798923 e!3941795)))

(assert (= (and b!6504021 ((_ is ElementMatch!16383) (regTwo!33279 (regTwo!33278 r!7292)))) b!6505497))

(assert (= (and b!6504021 ((_ is Concat!25228) (regTwo!33279 (regTwo!33278 r!7292)))) b!6505498))

(assert (= (and b!6504021 ((_ is Star!16383) (regTwo!33279 (regTwo!33278 r!7292)))) b!6505499))

(assert (= (and b!6504021 ((_ is Union!16383) (regTwo!33279 (regTwo!33278 r!7292)))) b!6505500))

(declare-fun b!6505502 () Bool)

(declare-fun e!3941797 () Bool)

(declare-fun tp!1799275 () Bool)

(assert (=> b!6505502 (= e!3941797 tp!1799275)))

(declare-fun b!6505501 () Bool)

(declare-fun tp!1799276 () Bool)

(declare-fun e!3941796 () Bool)

(assert (=> b!6505501 (= e!3941796 (and (inv!84204 (h!71774 (t!379084 (t!379084 zl!343)))) e!3941797 tp!1799276))))

(assert (=> b!6504033 (= tp!1798932 e!3941796)))

(assert (= b!6505501 b!6505502))

(assert (= (and b!6504033 ((_ is Cons!65326) (t!379084 (t!379084 zl!343)))) b!6505501))

(declare-fun m!7292608 () Bool)

(assert (=> b!6505501 m!7292608))

(declare-fun b!6505503 () Bool)

(declare-fun e!3941798 () Bool)

(declare-fun tp!1799277 () Bool)

(declare-fun tp!1799278 () Bool)

(assert (=> b!6505503 (= e!3941798 (and tp!1799277 tp!1799278))))

(assert (=> b!6504034 (= tp!1798931 e!3941798)))

(assert (= (and b!6504034 ((_ is Cons!65324) (exprs!6267 (h!71774 (t!379084 zl!343))))) b!6505503))

(declare-fun b_lambda!246295 () Bool)

(assert (= b_lambda!246281 (or d!2040443 b_lambda!246295)))

(declare-fun bs!1652468 () Bool)

(declare-fun d!2041189 () Bool)

(assert (= bs!1652468 (and d!2041189 d!2040443)))

(assert (=> bs!1652468 (= (dynLambda!25954 lambda!360562 (h!71772 lt!2392468)) (validRegex!8119 (h!71772 lt!2392468)))))

(declare-fun m!7292610 () Bool)

(assert (=> bs!1652468 m!7292610))

(assert (=> b!6505154 d!2041189))

(declare-fun b_lambda!246297 () Bool)

(assert (= b_lambda!246287 (or b!6503167 b_lambda!246297)))

(assert (=> d!2041121 d!2040557))

(declare-fun b_lambda!246299 () Bool)

(assert (= b_lambda!246293 (or b!6503160 b_lambda!246299)))

(assert (=> d!2041171 d!2040555))

(declare-fun b_lambda!246301 () Bool)

(assert (= b_lambda!246277 (or b!6503160 b_lambda!246301)))

(assert (=> d!2041013 d!2040551))

(declare-fun b_lambda!246303 () Bool)

(assert (= b_lambda!246289 (or b!6503160 b_lambda!246303)))

(assert (=> d!2041123 d!2040559))

(declare-fun b_lambda!246305 () Bool)

(assert (= b_lambda!246245 (or b!6503167 b_lambda!246305)))

(declare-fun bs!1652469 () Bool)

(declare-fun d!2041191 () Bool)

(assert (= bs!1652469 (and d!2041191 b!6503167)))

(assert (=> bs!1652469 (= (dynLambda!25954 lambda!360522 (h!71772 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391))) (validRegex!8119 (h!71772 (++!14469 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324) lt!2392391))))))

(declare-fun m!7292612 () Bool)

(assert (=> bs!1652469 m!7292612))

(assert (=> b!6504900 d!2041191))

(declare-fun b_lambda!246307 () Bool)

(assert (= b_lambda!246283 (or d!2040441 b_lambda!246307)))

(declare-fun bs!1652470 () Bool)

(declare-fun d!2041193 () Bool)

(assert (= bs!1652470 (and d!2041193 d!2040441)))

(assert (=> bs!1652470 (= (dynLambda!25954 lambda!360559 (h!71772 (unfocusZipperList!1804 zl!343))) (validRegex!8119 (h!71772 (unfocusZipperList!1804 zl!343))))))

(declare-fun m!7292614 () Bool)

(assert (=> bs!1652470 m!7292614))

(assert (=> b!6505173 d!2041193))

(declare-fun b_lambda!246309 () Bool)

(assert (= b_lambda!246247 (or b!6503167 b_lambda!246309)))

(declare-fun bs!1652471 () Bool)

(declare-fun d!2041195 () Bool)

(assert (= bs!1652471 (and d!2041195 b!6503167)))

(assert (=> bs!1652471 (= (dynLambda!25954 lambda!360522 (h!71772 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))) (validRegex!8119 (h!71772 (Cons!65324 (reg!16712 (regOne!33278 r!7292)) Nil!65324))))))

(declare-fun m!7292616 () Bool)

(assert (=> bs!1652471 m!7292616))

(assert (=> b!6504938 d!2041195))

(declare-fun b_lambda!246311 () Bool)

(assert (= b_lambda!246237 (or d!2040549 b_lambda!246311)))

(declare-fun bs!1652472 () Bool)

(declare-fun d!2041197 () Bool)

(assert (= bs!1652472 (and d!2041197 d!2040549)))

(assert (=> bs!1652472 (= (dynLambda!25954 lambda!360590 (h!71772 (exprs!6267 (h!71774 zl!343)))) (validRegex!8119 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(declare-fun m!7292618 () Bool)

(assert (=> bs!1652472 m!7292618))

(assert (=> b!6504691 d!2041197))

(declare-fun b_lambda!246313 () Bool)

(assert (= b_lambda!246275 (or d!2040541 b_lambda!246313)))

(declare-fun bs!1652473 () Bool)

(declare-fun d!2041199 () Bool)

(assert (= bs!1652473 (and d!2041199 d!2040541)))

(assert (=> bs!1652473 (= (dynLambda!25954 lambda!360589 (h!71772 (exprs!6267 lt!2392390))) (validRegex!8119 (h!71772 (exprs!6267 lt!2392390))))))

(declare-fun m!7292620 () Bool)

(assert (=> bs!1652473 m!7292620))

(assert (=> b!6505057 d!2041199))

(declare-fun b_lambda!246315 () Bool)

(assert (= b_lambda!246285 (or d!2040503 b_lambda!246315)))

(declare-fun bs!1652474 () Bool)

(declare-fun d!2041201 () Bool)

(assert (= bs!1652474 (and d!2041201 d!2040503)))

(assert (=> bs!1652474 (= (dynLambda!25954 lambda!360574 (h!71772 (exprs!6267 setElem!44339))) (validRegex!8119 (h!71772 (exprs!6267 setElem!44339))))))

(declare-fun m!7292622 () Bool)

(assert (=> bs!1652474 m!7292622))

(assert (=> b!6505198 d!2041201))

(declare-fun b_lambda!246317 () Bool)

(assert (= b_lambda!246279 (or b!6503160 b_lambda!246317)))

(assert (=> d!2041049 d!2040553))

(declare-fun b_lambda!246319 () Bool)

(assert (= b_lambda!246291 (or d!2040509 b_lambda!246319)))

(declare-fun bs!1652475 () Bool)

(declare-fun d!2041203 () Bool)

(assert (= bs!1652475 (and d!2041203 d!2040509)))

(assert (=> bs!1652475 (= (dynLambda!25954 lambda!360577 (h!71772 (exprs!6267 (h!71774 zl!343)))) (validRegex!8119 (h!71772 (exprs!6267 (h!71774 zl!343)))))))

(assert (=> bs!1652475 m!7292618))

(assert (=> b!6505315 d!2041203))

(check-sat (not b!6504794) (not b!6505446) (not b!6505459) (not b!6505231) (not b_lambda!246301) (not bm!563714) (not d!2040787) (not d!2040953) (not b!6505272) (not bm!563855) (not b!6505449) (not b!6505316) (not bs!1652472) (not bm!563845) (not b!6505214) (not b!6505347) (not b!6505498) (not b!6505257) (not d!2041161) (not d!2041089) (not b!6505215) (not b!6505269) (not b!6505262) (not b_lambda!246313) (not bm!563858) (not b!6505163) (not bs!1652468) (not d!2041169) (not b!6505197) (not b!6505189) (not d!2040917) (not b_lambda!246297) (not b!6505338) (not d!2041097) (not bm!563862) (not d!2040931) (not b!6504681) (not b!6505496) (not bm!563746) (not b!6505443) (not bm!563839) (not b!6505044) (not b!6505330) (not b!6504965) (not b!6504848) (not b_lambda!246317) (not b!6505270) (not b!6504954) (not b!6505451) (not d!2041079) (not setNonEmpty!44360) (not b!6505021) (not b!6505068) (not bs!1652473) (not d!2040829) (not bm!563758) (not bm!563768) (not b!6505487) (not b!6505033) (not b_lambda!246213) (not d!2041157) (not d!2041099) (not bm!563718) (not d!2040925) (not d!2041017) (not b!6505006) (not b!6505363) (not d!2040929) (not b!6505106) (not bm!563793) (not b!6505077) (not d!2040951) (not d!2041123) (not setNonEmpty!44362) (not bm!563717) (not bm!563833) (not b!6504683) (not d!2041163) (not b!6505491) (not b!6505235) (not setNonEmpty!44357) (not d!2041043) (not b!6505351) (not b!6505475) (not b!6504846) (not b!6505415) (not bm!563787) (not bm!563815) (not b!6505178) (not b!6504843) (not b!6505148) (not bm!563842) (not b!6505240) (not b!6505462) (not b!6504608) (not b!6505254) (not b!6505223) (not b!6504999) (not b!6504784) (not b!6505464) (not b!6505393) (not b_lambda!246299) (not bm!563800) (not b!6505432) (not b!6505407) (not b!6505492) (not bm!563848) (not b!6505402) (not b!6504767) (not bm!563799) (not d!2041181) (not b!6505452) (not b!6505273) (not b!6505414) (not b!6505403) (not b!6505210) (not bm!563847) (not d!2041039) (not b!6504685) (not b!6504677) (not b!6505479) (not b_lambda!246311) (not b!6504607) (not d!2041155) (not b_lambda!246207) (not b!6505184) (not b!6505263) (not d!2041121) (not b_lambda!246309) (not d!2041153) (not b!6505468) (not bm!563856) (not d!2040975) (not b!6505484) (not b!6505286) (not b!6505471) (not b!6505428) (not b!6505450) (not b!6505419) (not b!6505078) (not b!6505114) (not b!6505470) (not b!6505397) (not b!6504464) (not b!6505246) (not b!6504956) (not bm!563872) (not bm!563711) (not b_lambda!246215) (not d!2040957) (not bm!563738) (not b!6505241) (not b!6505290) (not b!6505455) (not b!6505337) (not b!6505411) (not bs!1652474) (not b!6504622) (not b!6504648) (not b!6505265) (not b!6505293) (not b!6505085) (not b!6504849) (not b!6504777) (not bm!563764) (not d!2041167) (not d!2041041) (not b_lambda!246303) (not b!6505025) (not b!6505444) (not bm!563818) (not b!6505294) (not bm!563823) (not b!6505410) (not b!6505472) (not b!6505342) (not b!6505384) (not b!6505405) (not b!6504786) (not bm!563723) (not b!6504680) (not d!2041077) (not b!6505395) (not b_lambda!246209) (not d!2040995) (not bm!563798) (not b!6504695) (not d!2041133) (not b!6505423) (not b!6505445) (not b_lambda!246307) (not b!6505413) (not b!6505480) (not d!2041115) (not b!6504643) (not b!6504656) (not d!2041061) (not b!6505297) (not b!6505075) (not bm!563866) (not b!6505072) (not bm!563804) (not b!6505105) (not bs!1652475) (not b!6505058) (not b!6505409) (not d!2040859) (not b!6505390) (not d!2041049) (not d!2041175) (not bm!563770) (not b!6504627) (not bm!563732) (not d!2040881) (not b!6505142) (not b!6504697) (not b!6505373) (not d!2040853) (not b!6504538) tp_is_empty!42019 (not b_lambda!246295) (not b!6504820) (not b!6504678) (not b!6505317) (not d!2041087) (not bm!563864) (not b!6505438) (not d!2041065) (not b!6504646) (not b!6504842) (not b!6504990) (not b!6505486) (not b!6505069) (not b!6505503) (not bm!563782) (not b!6505188) (not b!6505296) (not b!6505062) (not b!6505418) (not b!6505364) (not bm!563745) (not b!6505398) (not b!6505426) (not b!6505110) (not d!2040923) (not b!6505318) (not d!2041019) (not b!6504623) (not b!6505463) (not d!2040961) (not b!6505476) (not b!6505401) (not b!6505458) (not d!2040885) (not b_lambda!246211) (not b!6505466) (not bm!563789) (not b!6505344) (not bm!563761) (not b!6505155) (not b!6505101) (not b!6505435) (not setNonEmpty!44363) (not b!6504827) (not b!6504463) (not b!6505442) (not b!6504749) (not b!6505488) (not d!2041103) (not b!6505193) (not b!6505399) (not b!6505456) (not b!6504741) (not b!6504570) (not b!6504991) (not b!6504692) (not bm!563786) (not bm!563767) (not b!6505495) (not bm!563859) (not b!6505319) (not b!6505237) (not b!6504901) (not b!6505431) (not b!6505329) (not bm!563836) (not b!6505291) (not bm!563853) (not d!2041171) (not bm!563807) (not d!2041149) (not d!2041135) (not d!2040993) (not b!6505394) (not d!2040849) (not b!6505255) (not b!6505187) (not bm!563822) (not b!6505467) (not bm!563795) (not d!2041051) (not bm!563870) (not b!6505256) (not d!2041013) (not setNonEmpty!44365) (not bm!563841) (not b!6505422) (not b!6504568) (not bm!563869) (not b!6505242) (not b!6505448) (not d!2041179) (not d!2041141) (not b!6505213) (not b!6505309) (not bs!1652469) (not b!6505500) (not b!6505502) (not b_lambda!246319) (not b!6505087) (not b!6504851) (not b!6505288) (not b!6505474) (not setNonEmpty!44364) (not d!2041131) (not bm!563814) (not bm!563774) (not b!6504800) (not bm!563808) (not d!2041109) (not bm!563851) (not bm!563861) (not b!6505092) (not b!6505482) (not d!2041095) (not bm!563876) (not b!6505494) (not b!6504799) (not bm!563854) (not b!6505434) (not b!6505483) (not d!2041085) (not b!6505174) (not b!6505219) (not bm!563863) (not b!6504647) (not d!2041113) (not b!6505406) (not d!2041129) (not b!6505070) (not d!2041127) (not b!6504628) (not b!6505343) (not b!6505490) (not d!2041063) (not b!6505430) (not d!2041025) (not b!6505440) (not b!6505501) (not b!6505285) (not b!6505278) (not b!6504865) (not bs!1652470) (not b!6505427) (not d!2041093) (not b!6504961) (not bm!563821) (not bm!563817) (not b!6505236) (not bm!563712) (not b!6505199) (not b!6505333) (not bs!1652471) (not b!6505460) (not bm!563773) (not b!6504939) (not b!6504671) (not d!2041159) (not b!6505439) (not b!6505260) (not bm!563846) (not b!6504785) (not b!6505348) (not bm!563785) (not b!6504682) (not b!6505345) (not b!6505051) (not b_lambda!246315) (not b!6505421) (not d!2041005) (not b!6505334) (not b!6505156) (not bm!563810) (not b!6505284) (not b!6505436) (not b!6504949) (not b!6504957) (not bm!563762) (not b!6505250) (not b!6505234) (not bm!563820) (not bm!563743) (not bm!563850) (not bm!563844) (not d!2040947) (not b!6505023) (not bm!563802) (not d!2040985) (not bm!563875) (not d!2040789) (not d!2040989) (not d!2041073) (not bm!563813) (not bm!563838) (not bm!563747) (not b!6504776) (not b!6504652) (not b!6504844) (not b!6504720) (not bm!563740) (not b!6505478) (not b!6505089) (not d!2041151) (not b!6505353) (not b!6505365) (not b!6504757) (not b!6505167) (not b!6505389) (not b!6505454) (not b!6505104) (not bm!563724) (not b!6505424) (not b_lambda!246305) (not b!6505499) (not bm!563737) (not b!6505417) (not b!6505391) (not bm!563834) (not d!2041177) (not b!6505209) (not b!6505258) (not b!6504719) (not b!6505074) (not d!2041143) (not b!6505094))
(check-sat)
