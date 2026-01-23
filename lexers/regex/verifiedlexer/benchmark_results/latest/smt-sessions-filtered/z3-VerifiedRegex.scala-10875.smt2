; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561722 () Bool)

(assert start!561722)

(declare-fun b!5329333 () Bool)

(assert (=> b!5329333 true))

(assert (=> b!5329333 true))

(declare-fun lambda!272301 () Int)

(declare-fun lambda!272300 () Int)

(assert (=> b!5329333 (not (= lambda!272301 lambda!272300))))

(assert (=> b!5329333 true))

(assert (=> b!5329333 true))

(declare-fun b!5329326 () Bool)

(assert (=> b!5329326 true))

(declare-fun bs!1235092 () Bool)

(declare-fun b!5329319 () Bool)

(assert (= bs!1235092 (and b!5329319 b!5329333)))

(declare-datatypes ((C!30264 0))(
  ( (C!30265 (val!24834 Int)) )
))
(declare-datatypes ((Regex!14997 0))(
  ( (ElementMatch!14997 (c!926649 C!30264)) (Concat!23842 (regOne!30506 Regex!14997) (regTwo!30506 Regex!14997)) (EmptyExpr!14997) (Star!14997 (reg!15326 Regex!14997)) (EmptyLang!14997) (Union!14997 (regOne!30507 Regex!14997) (regTwo!30507 Regex!14997)) )
))
(declare-fun r!7292 () Regex!14997)

(declare-fun lambda!272303 () Int)

(declare-fun lt!2174318 () Regex!14997)

(assert (=> bs!1235092 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272303 lambda!272300))))

(assert (=> bs!1235092 (not (= lambda!272303 lambda!272301))))

(assert (=> b!5329319 true))

(assert (=> b!5329319 true))

(assert (=> b!5329319 true))

(declare-fun lambda!272304 () Int)

(assert (=> bs!1235092 (not (= lambda!272304 lambda!272300))))

(assert (=> bs!1235092 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272304 lambda!272301))))

(assert (=> b!5329319 (not (= lambda!272304 lambda!272303))))

(assert (=> b!5329319 true))

(assert (=> b!5329319 true))

(assert (=> b!5329319 true))

(declare-fun b!5329316 () Bool)

(declare-datatypes ((Unit!153506 0))(
  ( (Unit!153507) )
))
(declare-fun e!3310174 () Unit!153506)

(declare-fun Unit!153508 () Unit!153506)

(assert (=> b!5329316 (= e!3310174 Unit!153508)))

(declare-datatypes ((List!61290 0))(
  ( (Nil!61166) (Cons!61166 (h!67614 C!30264) (t!374505 List!61290)) )
))
(declare-fun s!2326 () List!61290)

(declare-fun lt!2174330 () Unit!153506)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61291 0))(
  ( (Nil!61167) (Cons!61167 (h!67615 Regex!14997) (t!374506 List!61291)) )
))
(declare-datatypes ((Context!8762 0))(
  ( (Context!8763 (exprs!4881 List!61291)) )
))
(declare-fun lt!2174311 () (InoxSet Context!8762))

(declare-fun lt!2174309 () (InoxSet Context!8762))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!234 ((InoxSet Context!8762) (InoxSet Context!8762) List!61290) Unit!153506)

(assert (=> b!5329316 (= lt!2174330 (lemmaZipperConcatMatchesSameAsBothZippers!234 lt!2174311 lt!2174309 (t!374505 s!2326)))))

(declare-fun res!2260563 () Bool)

(declare-fun matchZipper!1241 ((InoxSet Context!8762) List!61290) Bool)

(assert (=> b!5329316 (= res!2260563 (matchZipper!1241 lt!2174311 (t!374505 s!2326)))))

(declare-fun e!3310172 () Bool)

(assert (=> b!5329316 (=> res!2260563 e!3310172)))

(assert (=> b!5329316 (= (matchZipper!1241 ((_ map or) lt!2174311 lt!2174309) (t!374505 s!2326)) e!3310172)))

(declare-fun b!5329317 () Bool)

(declare-fun res!2260578 () Bool)

(declare-fun e!3310169 () Bool)

(assert (=> b!5329317 (=> res!2260578 e!3310169)))

(declare-datatypes ((List!61292 0))(
  ( (Nil!61168) (Cons!61168 (h!67616 Context!8762) (t!374507 List!61292)) )
))
(declare-fun zl!343 () List!61292)

(assert (=> b!5329317 (= res!2260578 (not (= (exprs!4881 (h!67616 zl!343)) (Cons!61167 (Concat!23842 (regOne!30506 (regOne!30506 r!7292)) (regTwo!30506 (regOne!30506 r!7292))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5329318 () Bool)

(declare-fun Unit!153509 () Unit!153506)

(assert (=> b!5329318 (= e!3310174 Unit!153509)))

(declare-fun e!3310168 () Bool)

(declare-fun lambda!272305 () Int)

(declare-fun forall!14415 (List!61291 Int) Bool)

(assert (=> b!5329319 (= e!3310168 (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272305))))

(declare-fun matchR!7182 (Regex!14997 List!61290) Bool)

(declare-fun matchRSpec!2100 (Regex!14997 List!61290) Bool)

(assert (=> b!5329319 (= (matchR!7182 lt!2174318 s!2326) (matchRSpec!2100 lt!2174318 s!2326))))

(declare-fun lt!2174319 () Unit!153506)

(declare-fun mainMatchTheorem!2100 (Regex!14997 List!61290) Unit!153506)

(assert (=> b!5329319 (= lt!2174319 (mainMatchTheorem!2100 lt!2174318 s!2326))))

(declare-fun Exists!2178 (Int) Bool)

(assert (=> b!5329319 (= (Exists!2178 lambda!272303) (Exists!2178 lambda!272304))))

(declare-fun lt!2174308 () Unit!153506)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!832 (Regex!14997 Regex!14997 List!61290) Unit!153506)

(assert (=> b!5329319 (= lt!2174308 (lemmaExistCutMatchRandMatchRSpecEquivalent!832 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326))))

(declare-datatypes ((tuple2!64392 0))(
  ( (tuple2!64393 (_1!35499 List!61290) (_2!35499 List!61290)) )
))
(declare-datatypes ((Option!15108 0))(
  ( (None!15107) (Some!15107 (v!51136 tuple2!64392)) )
))
(declare-fun isDefined!11811 (Option!15108) Bool)

(declare-fun findConcatSeparation!1522 (Regex!14997 Regex!14997 List!61290 List!61290 List!61290) Option!15108)

(assert (=> b!5329319 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326)) (Exists!2178 lambda!272303))))

(declare-fun lt!2174327 () Unit!153506)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1286 (Regex!14997 Regex!14997 List!61290) Unit!153506)

(assert (=> b!5329319 (= lt!2174327 (lemmaFindConcatSeparationEquivalentToExists!1286 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326))))

(declare-fun lt!2174324 () List!61291)

(declare-fun generalisedConcat!666 (List!61291) Regex!14997)

(assert (=> b!5329319 (= lt!2174318 (generalisedConcat!666 lt!2174324))))

(declare-fun lt!2174310 () Bool)

(declare-fun lt!2174304 () Regex!14997)

(assert (=> b!5329319 (= lt!2174310 (matchRSpec!2100 lt!2174304 s!2326))))

(declare-fun lt!2174320 () Unit!153506)

(assert (=> b!5329319 (= lt!2174320 (mainMatchTheorem!2100 lt!2174304 s!2326))))

(declare-fun lt!2174322 () (InoxSet Context!8762))

(assert (=> b!5329319 (= lt!2174310 (matchZipper!1241 lt!2174322 s!2326))))

(assert (=> b!5329319 (= lt!2174310 (matchR!7182 lt!2174304 s!2326))))

(declare-fun lt!2174315 () List!61292)

(declare-fun lt!2174312 () Unit!153506)

(declare-fun theoremZipperRegexEquiv!395 ((InoxSet Context!8762) List!61292 Regex!14997 List!61290) Unit!153506)

(assert (=> b!5329319 (= lt!2174312 (theoremZipperRegexEquiv!395 lt!2174322 lt!2174315 lt!2174304 s!2326))))

(declare-fun lt!2174307 () List!61291)

(assert (=> b!5329319 (= lt!2174304 (generalisedConcat!666 lt!2174307))))

(declare-fun b!5329320 () Bool)

(declare-fun res!2260573 () Bool)

(declare-fun e!3310178 () Bool)

(assert (=> b!5329320 (=> (not res!2260573) (not e!3310178))))

(declare-fun unfocusZipper!739 (List!61292) Regex!14997)

(assert (=> b!5329320 (= res!2260573 (= r!7292 (unfocusZipper!739 zl!343)))))

(declare-fun b!5329321 () Bool)

(declare-fun e!3310171 () Bool)

(declare-fun nullable!5166 (Regex!14997) Bool)

(assert (=> b!5329321 (= e!3310171 (nullable!5166 (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5329322 () Bool)

(declare-fun res!2260583 () Bool)

(declare-fun e!3310173 () Bool)

(assert (=> b!5329322 (=> res!2260583 e!3310173)))

(declare-fun isEmpty!33135 (List!61291) Bool)

(assert (=> b!5329322 (= res!2260583 (isEmpty!33135 (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5329323 () Bool)

(declare-fun e!3310179 () Bool)

(declare-fun tp_is_empty!39247 () Bool)

(declare-fun tp!1483303 () Bool)

(assert (=> b!5329323 (= e!3310179 (and tp_is_empty!39247 tp!1483303))))

(declare-fun b!5329324 () Bool)

(declare-fun e!3310177 () Bool)

(assert (=> b!5329324 (= e!3310178 (not e!3310177))))

(declare-fun res!2260562 () Bool)

(assert (=> b!5329324 (=> res!2260562 e!3310177)))

(get-info :version)

(assert (=> b!5329324 (= res!2260562 (not ((_ is Cons!61168) zl!343)))))

(declare-fun lt!2174306 () Bool)

(assert (=> b!5329324 (= lt!2174306 (matchRSpec!2100 r!7292 s!2326))))

(assert (=> b!5329324 (= lt!2174306 (matchR!7182 r!7292 s!2326))))

(declare-fun lt!2174323 () Unit!153506)

(assert (=> b!5329324 (= lt!2174323 (mainMatchTheorem!2100 r!7292 s!2326))))

(declare-fun b!5329325 () Bool)

(declare-fun res!2260574 () Bool)

(assert (=> b!5329325 (=> res!2260574 e!3310177)))

(assert (=> b!5329325 (= res!2260574 (or ((_ is EmptyExpr!14997) r!7292) ((_ is EmptyLang!14997) r!7292) ((_ is ElementMatch!14997) r!7292) ((_ is Union!14997) r!7292) (not ((_ is Concat!23842) r!7292))))))

(declare-fun e!3310175 () Bool)

(assert (=> b!5329326 (= e!3310173 e!3310175)))

(declare-fun res!2260575 () Bool)

(assert (=> b!5329326 (=> res!2260575 e!3310175)))

(assert (=> b!5329326 (= res!2260575 (or (and ((_ is ElementMatch!14997) (regOne!30506 r!7292)) (= (c!926649 (regOne!30506 r!7292)) (h!67614 s!2326))) ((_ is Union!14997) (regOne!30506 r!7292))))))

(declare-fun lt!2174303 () Unit!153506)

(assert (=> b!5329326 (= lt!2174303 e!3310174)))

(declare-fun c!926648 () Bool)

(assert (=> b!5329326 (= c!926648 (nullable!5166 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8762))

(declare-fun lambda!272302 () Int)

(declare-fun flatMap!724 ((InoxSet Context!8762) Int) (InoxSet Context!8762))

(declare-fun derivationStepZipperUp!369 (Context!8762 C!30264) (InoxSet Context!8762))

(assert (=> b!5329326 (= (flatMap!724 z!1189 lambda!272302) (derivationStepZipperUp!369 (h!67616 zl!343) (h!67614 s!2326)))))

(declare-fun lt!2174314 () Unit!153506)

(declare-fun lemmaFlatMapOnSingletonSet!256 ((InoxSet Context!8762) Context!8762 Int) Unit!153506)

(assert (=> b!5329326 (= lt!2174314 (lemmaFlatMapOnSingletonSet!256 z!1189 (h!67616 zl!343) lambda!272302))))

(declare-fun lt!2174316 () Context!8762)

(assert (=> b!5329326 (= lt!2174309 (derivationStepZipperUp!369 lt!2174316 (h!67614 s!2326)))))

(declare-fun derivationStepZipperDown!445 (Regex!14997 Context!8762 C!30264) (InoxSet Context!8762))

(assert (=> b!5329326 (= lt!2174311 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (h!67616 zl!343))) lt!2174316 (h!67614 s!2326)))))

(assert (=> b!5329326 (= lt!2174316 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun lt!2174301 () (InoxSet Context!8762))

(assert (=> b!5329326 (= lt!2174301 (derivationStepZipperUp!369 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))) (h!67614 s!2326)))))

(declare-fun tp!1483308 () Bool)

(declare-fun e!3310166 () Bool)

(declare-fun setRes!34353 () Bool)

(declare-fun setNonEmpty!34353 () Bool)

(declare-fun setElem!34353 () Context!8762)

(declare-fun inv!80739 (Context!8762) Bool)

(assert (=> setNonEmpty!34353 (= setRes!34353 (and tp!1483308 (inv!80739 setElem!34353) e!3310166))))

(declare-fun setRest!34353 () (InoxSet Context!8762))

(assert (=> setNonEmpty!34353 (= z!1189 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) setElem!34353 true) setRest!34353))))

(declare-fun b!5329327 () Bool)

(declare-fun tp!1483309 () Bool)

(assert (=> b!5329327 (= e!3310166 tp!1483309)))

(declare-fun b!5329328 () Bool)

(declare-fun e!3310176 () Bool)

(declare-fun tp!1483302 () Bool)

(declare-fun tp!1483301 () Bool)

(assert (=> b!5329328 (= e!3310176 (and tp!1483302 tp!1483301))))

(declare-fun b!5329329 () Bool)

(declare-fun tp!1483304 () Bool)

(assert (=> b!5329329 (= e!3310176 tp!1483304)))

(declare-fun b!5329330 () Bool)

(declare-fun e!3310170 () Bool)

(assert (=> b!5329330 (= e!3310170 e!3310169)))

(declare-fun res!2260568 () Bool)

(assert (=> b!5329330 (=> res!2260568 e!3310169)))

(declare-fun lt!2174325 () (InoxSet Context!8762))

(declare-fun lt!2174302 () (InoxSet Context!8762))

(assert (=> b!5329330 (= res!2260568 (not (= lt!2174325 lt!2174302)))))

(declare-fun lt!2174326 () Context!8762)

(assert (=> b!5329330 (= (flatMap!724 lt!2174322 lambda!272302) (derivationStepZipperUp!369 lt!2174326 (h!67614 s!2326)))))

(declare-fun lt!2174317 () Unit!153506)

(assert (=> b!5329330 (= lt!2174317 (lemmaFlatMapOnSingletonSet!256 lt!2174322 lt!2174326 lambda!272302))))

(declare-fun lt!2174328 () (InoxSet Context!8762))

(assert (=> b!5329330 (= lt!2174328 (derivationStepZipperUp!369 lt!2174326 (h!67614 s!2326)))))

(declare-fun derivationStepZipper!1238 ((InoxSet Context!8762) C!30264) (InoxSet Context!8762))

(assert (=> b!5329330 (= lt!2174325 (derivationStepZipper!1238 lt!2174322 (h!67614 s!2326)))))

(assert (=> b!5329330 (= lt!2174322 (store ((as const (Array Context!8762 Bool)) false) lt!2174326 true))))

(assert (=> b!5329330 (= lt!2174326 (Context!8763 lt!2174307))))

(assert (=> b!5329330 (= lt!2174307 (Cons!61167 (regOne!30506 (regOne!30506 r!7292)) lt!2174324))))

(declare-fun b!5329331 () Bool)

(declare-fun res!2260567 () Bool)

(assert (=> b!5329331 (=> res!2260567 e!3310177)))

(assert (=> b!5329331 (= res!2260567 (not (= r!7292 (generalisedConcat!666 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5329332 () Bool)

(assert (=> b!5329332 (= e!3310176 tp_is_empty!39247)))

(assert (=> b!5329333 (= e!3310177 e!3310173)))

(declare-fun res!2260585 () Bool)

(assert (=> b!5329333 (=> res!2260585 e!3310173)))

(declare-fun lt!2174329 () Bool)

(assert (=> b!5329333 (= res!2260585 (or (not (= lt!2174306 lt!2174329)) ((_ is Nil!61166) s!2326)))))

(assert (=> b!5329333 (= (Exists!2178 lambda!272300) (Exists!2178 lambda!272301))))

(declare-fun lt!2174321 () Unit!153506)

(assert (=> b!5329333 (= lt!2174321 (lemmaExistCutMatchRandMatchRSpecEquivalent!832 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326))))

(assert (=> b!5329333 (= lt!2174329 (Exists!2178 lambda!272300))))

(assert (=> b!5329333 (= lt!2174329 (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326)))))

(declare-fun lt!2174313 () Unit!153506)

(assert (=> b!5329333 (= lt!2174313 (lemmaFindConcatSeparationEquivalentToExists!1286 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326))))

(declare-fun b!5329334 () Bool)

(declare-fun tp!1483307 () Bool)

(declare-fun tp!1483306 () Bool)

(assert (=> b!5329334 (= e!3310176 (and tp!1483307 tp!1483306))))

(declare-fun b!5329335 () Bool)

(declare-fun e!3310167 () Bool)

(declare-fun tp!1483305 () Bool)

(assert (=> b!5329335 (= e!3310167 tp!1483305)))

(declare-fun e!3310165 () Bool)

(declare-fun tp!1483300 () Bool)

(declare-fun b!5329336 () Bool)

(assert (=> b!5329336 (= e!3310165 (and (inv!80739 (h!67616 zl!343)) e!3310167 tp!1483300))))

(declare-fun b!5329337 () Bool)

(declare-fun res!2260582 () Bool)

(assert (=> b!5329337 (=> res!2260582 e!3310169)))

(declare-fun contextDepthTotal!130 (Context!8762) Int)

(assert (=> b!5329337 (= res!2260582 (>= (contextDepthTotal!130 lt!2174326) (contextDepthTotal!130 (h!67616 zl!343))))))

(declare-fun b!5329338 () Bool)

(declare-fun e!3310180 () Bool)

(assert (=> b!5329338 (= e!3310175 e!3310180)))

(declare-fun res!2260576 () Bool)

(assert (=> b!5329338 (=> res!2260576 e!3310180)))

(assert (=> b!5329338 (= res!2260576 (not (= lt!2174311 lt!2174302)))))

(assert (=> b!5329338 (= lt!2174302 (derivationStepZipperDown!445 (regOne!30506 (regOne!30506 r!7292)) (Context!8763 lt!2174324) (h!67614 s!2326)))))

(assert (=> b!5329338 (= lt!2174324 (Cons!61167 (regTwo!30506 (regOne!30506 r!7292)) (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5329339 () Bool)

(declare-fun res!2260577 () Bool)

(assert (=> b!5329339 (=> res!2260577 e!3310175)))

(assert (=> b!5329339 (= res!2260577 e!3310171)))

(declare-fun res!2260565 () Bool)

(assert (=> b!5329339 (=> (not res!2260565) (not e!3310171))))

(assert (=> b!5329339 (= res!2260565 ((_ is Concat!23842) (regOne!30506 r!7292)))))

(declare-fun b!5329340 () Bool)

(assert (=> b!5329340 (= e!3310172 (matchZipper!1241 lt!2174309 (t!374505 s!2326)))))

(declare-fun b!5329341 () Bool)

(declare-fun res!2260579 () Bool)

(assert (=> b!5329341 (=> (not res!2260579) (not e!3310178))))

(declare-fun toList!8781 ((InoxSet Context!8762)) List!61292)

(assert (=> b!5329341 (= res!2260579 (= (toList!8781 z!1189) zl!343))))

(declare-fun b!5329342 () Bool)

(declare-fun res!2260571 () Bool)

(assert (=> b!5329342 (=> res!2260571 e!3310177)))

(assert (=> b!5329342 (= res!2260571 (not ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343)))))))

(declare-fun res!2260566 () Bool)

(assert (=> start!561722 (=> (not res!2260566) (not e!3310178))))

(declare-fun validRegex!6733 (Regex!14997) Bool)

(assert (=> start!561722 (= res!2260566 (validRegex!6733 r!7292))))

(assert (=> start!561722 e!3310178))

(assert (=> start!561722 e!3310176))

(declare-fun condSetEmpty!34353 () Bool)

(assert (=> start!561722 (= condSetEmpty!34353 (= z!1189 ((as const (Array Context!8762 Bool)) false)))))

(assert (=> start!561722 setRes!34353))

(assert (=> start!561722 e!3310165))

(assert (=> start!561722 e!3310179))

(declare-fun b!5329343 () Bool)

(declare-fun res!2260580 () Bool)

(assert (=> b!5329343 (=> res!2260580 e!3310168)))

(declare-fun zipperDepth!106 (List!61292) Int)

(assert (=> b!5329343 (= res!2260580 (> (zipperDepth!106 lt!2174315) (zipperDepth!106 zl!343)))))

(declare-fun b!5329344 () Bool)

(declare-fun res!2260584 () Bool)

(assert (=> b!5329344 (=> res!2260584 e!3310177)))

(declare-fun generalisedUnion!926 (List!61291) Regex!14997)

(declare-fun unfocusZipperList!439 (List!61292) List!61291)

(assert (=> b!5329344 (= res!2260584 (not (= r!7292 (generalisedUnion!926 (unfocusZipperList!439 zl!343)))))))

(declare-fun b!5329345 () Bool)

(declare-fun res!2260581 () Bool)

(assert (=> b!5329345 (=> res!2260581 e!3310175)))

(assert (=> b!5329345 (= res!2260581 (not ((_ is Concat!23842) (regOne!30506 r!7292))))))

(declare-fun b!5329346 () Bool)

(declare-fun res!2260570 () Bool)

(assert (=> b!5329346 (=> res!2260570 e!3310169)))

(declare-fun lt!2174305 () Bool)

(assert (=> b!5329346 (= res!2260570 (not (= lt!2174305 (matchZipper!1241 lt!2174325 (t!374505 s!2326)))))))

(declare-fun b!5329347 () Bool)

(declare-fun res!2260564 () Bool)

(assert (=> b!5329347 (=> res!2260564 e!3310177)))

(declare-fun isEmpty!33136 (List!61292) Bool)

(assert (=> b!5329347 (= res!2260564 (not (isEmpty!33136 (t!374507 zl!343))))))

(declare-fun setIsEmpty!34353 () Bool)

(assert (=> setIsEmpty!34353 setRes!34353))

(declare-fun b!5329348 () Bool)

(assert (=> b!5329348 (= e!3310169 e!3310168)))

(declare-fun res!2260572 () Bool)

(assert (=> b!5329348 (=> res!2260572 e!3310168)))

(declare-fun zipperDepthTotal!150 (List!61292) Int)

(assert (=> b!5329348 (= res!2260572 (>= (zipperDepthTotal!150 lt!2174315) (zipperDepthTotal!150 zl!343)))))

(assert (=> b!5329348 (= lt!2174315 (Cons!61168 lt!2174326 Nil!61168))))

(declare-fun b!5329349 () Bool)

(assert (=> b!5329349 (= e!3310180 e!3310170)))

(declare-fun res!2260569 () Bool)

(assert (=> b!5329349 (=> res!2260569 e!3310170)))

(assert (=> b!5329349 (= res!2260569 (not (= lt!2174305 (matchZipper!1241 lt!2174302 (t!374505 s!2326)))))))

(assert (=> b!5329349 (= lt!2174305 (matchZipper!1241 lt!2174311 (t!374505 s!2326)))))

(assert (= (and start!561722 res!2260566) b!5329341))

(assert (= (and b!5329341 res!2260579) b!5329320))

(assert (= (and b!5329320 res!2260573) b!5329324))

(assert (= (and b!5329324 (not res!2260562)) b!5329347))

(assert (= (and b!5329347 (not res!2260564)) b!5329331))

(assert (= (and b!5329331 (not res!2260567)) b!5329342))

(assert (= (and b!5329342 (not res!2260571)) b!5329344))

(assert (= (and b!5329344 (not res!2260584)) b!5329325))

(assert (= (and b!5329325 (not res!2260574)) b!5329333))

(assert (= (and b!5329333 (not res!2260585)) b!5329322))

(assert (= (and b!5329322 (not res!2260583)) b!5329326))

(assert (= (and b!5329326 c!926648) b!5329316))

(assert (= (and b!5329326 (not c!926648)) b!5329318))

(assert (= (and b!5329316 (not res!2260563)) b!5329340))

(assert (= (and b!5329326 (not res!2260575)) b!5329339))

(assert (= (and b!5329339 res!2260565) b!5329321))

(assert (= (and b!5329339 (not res!2260577)) b!5329345))

(assert (= (and b!5329345 (not res!2260581)) b!5329338))

(assert (= (and b!5329338 (not res!2260576)) b!5329349))

(assert (= (and b!5329349 (not res!2260569)) b!5329330))

(assert (= (and b!5329330 (not res!2260568)) b!5329346))

(assert (= (and b!5329346 (not res!2260570)) b!5329317))

(assert (= (and b!5329317 (not res!2260578)) b!5329337))

(assert (= (and b!5329337 (not res!2260582)) b!5329348))

(assert (= (and b!5329348 (not res!2260572)) b!5329343))

(assert (= (and b!5329343 (not res!2260580)) b!5329319))

(assert (= (and start!561722 ((_ is ElementMatch!14997) r!7292)) b!5329332))

(assert (= (and start!561722 ((_ is Concat!23842) r!7292)) b!5329328))

(assert (= (and start!561722 ((_ is Star!14997) r!7292)) b!5329329))

(assert (= (and start!561722 ((_ is Union!14997) r!7292)) b!5329334))

(assert (= (and start!561722 condSetEmpty!34353) setIsEmpty!34353))

(assert (= (and start!561722 (not condSetEmpty!34353)) setNonEmpty!34353))

(assert (= setNonEmpty!34353 b!5329327))

(assert (= b!5329336 b!5329335))

(assert (= (and start!561722 ((_ is Cons!61168) zl!343)) b!5329336))

(assert (= (and start!561722 ((_ is Cons!61166) s!2326)) b!5329323))

(declare-fun m!6362876 () Bool)

(assert (=> b!5329324 m!6362876))

(declare-fun m!6362878 () Bool)

(assert (=> b!5329324 m!6362878))

(declare-fun m!6362880 () Bool)

(assert (=> b!5329324 m!6362880))

(declare-fun m!6362882 () Bool)

(assert (=> b!5329322 m!6362882))

(declare-fun m!6362884 () Bool)

(assert (=> b!5329349 m!6362884))

(declare-fun m!6362886 () Bool)

(assert (=> b!5329349 m!6362886))

(declare-fun m!6362888 () Bool)

(assert (=> b!5329338 m!6362888))

(declare-fun m!6362890 () Bool)

(assert (=> start!561722 m!6362890))

(declare-fun m!6362892 () Bool)

(assert (=> b!5329320 m!6362892))

(declare-fun m!6362894 () Bool)

(assert (=> b!5329340 m!6362894))

(declare-fun m!6362896 () Bool)

(assert (=> b!5329321 m!6362896))

(declare-fun m!6362898 () Bool)

(assert (=> b!5329330 m!6362898))

(declare-fun m!6362900 () Bool)

(assert (=> b!5329330 m!6362900))

(declare-fun m!6362902 () Bool)

(assert (=> b!5329330 m!6362902))

(declare-fun m!6362904 () Bool)

(assert (=> b!5329330 m!6362904))

(declare-fun m!6362906 () Bool)

(assert (=> b!5329330 m!6362906))

(declare-fun m!6362908 () Bool)

(assert (=> setNonEmpty!34353 m!6362908))

(declare-fun m!6362910 () Bool)

(assert (=> b!5329333 m!6362910))

(declare-fun m!6362912 () Bool)

(assert (=> b!5329333 m!6362912))

(declare-fun m!6362914 () Bool)

(assert (=> b!5329333 m!6362914))

(declare-fun m!6362916 () Bool)

(assert (=> b!5329333 m!6362916))

(assert (=> b!5329333 m!6362916))

(declare-fun m!6362918 () Bool)

(assert (=> b!5329333 m!6362918))

(assert (=> b!5329333 m!6362912))

(declare-fun m!6362920 () Bool)

(assert (=> b!5329333 m!6362920))

(declare-fun m!6362922 () Bool)

(assert (=> b!5329316 m!6362922))

(assert (=> b!5329316 m!6362886))

(declare-fun m!6362924 () Bool)

(assert (=> b!5329316 m!6362924))

(declare-fun m!6362926 () Bool)

(assert (=> b!5329348 m!6362926))

(declare-fun m!6362928 () Bool)

(assert (=> b!5329348 m!6362928))

(declare-fun m!6362930 () Bool)

(assert (=> b!5329341 m!6362930))

(declare-fun m!6362932 () Bool)

(assert (=> b!5329326 m!6362932))

(declare-fun m!6362934 () Bool)

(assert (=> b!5329326 m!6362934))

(declare-fun m!6362936 () Bool)

(assert (=> b!5329326 m!6362936))

(declare-fun m!6362938 () Bool)

(assert (=> b!5329326 m!6362938))

(declare-fun m!6362940 () Bool)

(assert (=> b!5329326 m!6362940))

(declare-fun m!6362942 () Bool)

(assert (=> b!5329326 m!6362942))

(declare-fun m!6362944 () Bool)

(assert (=> b!5329326 m!6362944))

(declare-fun m!6362946 () Bool)

(assert (=> b!5329347 m!6362946))

(declare-fun m!6362948 () Bool)

(assert (=> b!5329319 m!6362948))

(declare-fun m!6362950 () Bool)

(assert (=> b!5329319 m!6362950))

(declare-fun m!6362952 () Bool)

(assert (=> b!5329319 m!6362952))

(declare-fun m!6362954 () Bool)

(assert (=> b!5329319 m!6362954))

(declare-fun m!6362956 () Bool)

(assert (=> b!5329319 m!6362956))

(declare-fun m!6362958 () Bool)

(assert (=> b!5329319 m!6362958))

(assert (=> b!5329319 m!6362950))

(declare-fun m!6362960 () Bool)

(assert (=> b!5329319 m!6362960))

(declare-fun m!6362962 () Bool)

(assert (=> b!5329319 m!6362962))

(declare-fun m!6362964 () Bool)

(assert (=> b!5329319 m!6362964))

(declare-fun m!6362966 () Bool)

(assert (=> b!5329319 m!6362966))

(declare-fun m!6362968 () Bool)

(assert (=> b!5329319 m!6362968))

(declare-fun m!6362970 () Bool)

(assert (=> b!5329319 m!6362970))

(declare-fun m!6362972 () Bool)

(assert (=> b!5329319 m!6362972))

(declare-fun m!6362974 () Bool)

(assert (=> b!5329319 m!6362974))

(declare-fun m!6362976 () Bool)

(assert (=> b!5329319 m!6362976))

(declare-fun m!6362978 () Bool)

(assert (=> b!5329319 m!6362978))

(declare-fun m!6362980 () Bool)

(assert (=> b!5329319 m!6362980))

(assert (=> b!5329319 m!6362976))

(declare-fun m!6362982 () Bool)

(assert (=> b!5329343 m!6362982))

(declare-fun m!6362984 () Bool)

(assert (=> b!5329343 m!6362984))

(declare-fun m!6362986 () Bool)

(assert (=> b!5329331 m!6362986))

(declare-fun m!6362988 () Bool)

(assert (=> b!5329346 m!6362988))

(declare-fun m!6362990 () Bool)

(assert (=> b!5329337 m!6362990))

(declare-fun m!6362992 () Bool)

(assert (=> b!5329337 m!6362992))

(declare-fun m!6362994 () Bool)

(assert (=> b!5329344 m!6362994))

(assert (=> b!5329344 m!6362994))

(declare-fun m!6362996 () Bool)

(assert (=> b!5329344 m!6362996))

(declare-fun m!6362998 () Bool)

(assert (=> b!5329336 m!6362998))

(check-sat (not b!5329330) (not b!5329328) (not b!5329338) (not b!5329329) (not b!5329333) (not b!5329341) (not b!5329320) (not b!5329349) (not b!5329340) (not b!5329347) (not b!5329321) (not b!5329337) (not b!5329324) (not b!5329319) (not b!5329334) tp_is_empty!39247 (not setNonEmpty!34353) (not b!5329316) (not b!5329348) (not b!5329326) (not b!5329336) (not start!561722) (not b!5329322) (not b!5329335) (not b!5329331) (not b!5329343) (not b!5329346) (not b!5329327) (not b!5329323) (not b!5329344))
(check-sat)
(get-model)

(declare-fun d!1711174 () Bool)

(declare-fun choose!39913 ((InoxSet Context!8762) Int) (InoxSet Context!8762))

(assert (=> d!1711174 (= (flatMap!724 lt!2174322 lambda!272302) (choose!39913 lt!2174322 lambda!272302))))

(declare-fun bs!1235131 () Bool)

(assert (= bs!1235131 d!1711174))

(declare-fun m!6363126 () Bool)

(assert (=> bs!1235131 m!6363126))

(assert (=> b!5329330 d!1711174))

(declare-fun b!5329597 () Bool)

(declare-fun e!3310319 () Bool)

(assert (=> b!5329597 (= e!3310319 (nullable!5166 (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun bm!380732 () Bool)

(declare-fun call!380737 () (InoxSet Context!8762))

(assert (=> bm!380732 (= call!380737 (derivationStepZipperDown!445 (h!67615 (exprs!4881 lt!2174326)) (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (h!67614 s!2326)))))

(declare-fun b!5329598 () Bool)

(declare-fun e!3310321 () (InoxSet Context!8762))

(declare-fun e!3310320 () (InoxSet Context!8762))

(assert (=> b!5329598 (= e!3310321 e!3310320)))

(declare-fun c!926719 () Bool)

(assert (=> b!5329598 (= c!926719 ((_ is Cons!61167) (exprs!4881 lt!2174326)))))

(declare-fun b!5329599 () Bool)

(assert (=> b!5329599 (= e!3310320 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5329600 () Bool)

(assert (=> b!5329600 (= e!3310320 call!380737)))

(declare-fun d!1711178 () Bool)

(declare-fun c!926720 () Bool)

(assert (=> d!1711178 (= c!926720 e!3310319)))

(declare-fun res!2260689 () Bool)

(assert (=> d!1711178 (=> (not res!2260689) (not e!3310319))))

(assert (=> d!1711178 (= res!2260689 ((_ is Cons!61167) (exprs!4881 lt!2174326)))))

(assert (=> d!1711178 (= (derivationStepZipperUp!369 lt!2174326 (h!67614 s!2326)) e!3310321)))

(declare-fun b!5329601 () Bool)

(assert (=> b!5329601 (= e!3310321 ((_ map or) call!380737 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (h!67614 s!2326))))))

(assert (= (and d!1711178 res!2260689) b!5329597))

(assert (= (and d!1711178 c!926720) b!5329601))

(assert (= (and d!1711178 (not c!926720)) b!5329598))

(assert (= (and b!5329598 c!926719) b!5329600))

(assert (= (and b!5329598 (not c!926719)) b!5329599))

(assert (= (or b!5329601 b!5329600) bm!380732))

(declare-fun m!6363154 () Bool)

(assert (=> b!5329597 m!6363154))

(declare-fun m!6363156 () Bool)

(assert (=> bm!380732 m!6363156))

(declare-fun m!6363158 () Bool)

(assert (=> b!5329601 m!6363158))

(assert (=> b!5329330 d!1711178))

(declare-fun d!1711186 () Bool)

(declare-fun dynLambda!24185 (Int Context!8762) (InoxSet Context!8762))

(assert (=> d!1711186 (= (flatMap!724 lt!2174322 lambda!272302) (dynLambda!24185 lambda!272302 lt!2174326))))

(declare-fun lt!2174369 () Unit!153506)

(declare-fun choose!39914 ((InoxSet Context!8762) Context!8762 Int) Unit!153506)

(assert (=> d!1711186 (= lt!2174369 (choose!39914 lt!2174322 lt!2174326 lambda!272302))))

(assert (=> d!1711186 (= lt!2174322 (store ((as const (Array Context!8762 Bool)) false) lt!2174326 true))))

(assert (=> d!1711186 (= (lemmaFlatMapOnSingletonSet!256 lt!2174322 lt!2174326 lambda!272302) lt!2174369)))

(declare-fun b_lambda!204959 () Bool)

(assert (=> (not b_lambda!204959) (not d!1711186)))

(declare-fun bs!1235146 () Bool)

(assert (= bs!1235146 d!1711186))

(assert (=> bs!1235146 m!6362902))

(declare-fun m!6363166 () Bool)

(assert (=> bs!1235146 m!6363166))

(declare-fun m!6363168 () Bool)

(assert (=> bs!1235146 m!6363168))

(assert (=> bs!1235146 m!6362898))

(assert (=> b!5329330 d!1711186))

(declare-fun bs!1235152 () Bool)

(declare-fun d!1711192 () Bool)

(assert (= bs!1235152 (and d!1711192 b!5329326)))

(declare-fun lambda!272339 () Int)

(assert (=> bs!1235152 (= lambda!272339 lambda!272302)))

(assert (=> d!1711192 true))

(assert (=> d!1711192 (= (derivationStepZipper!1238 lt!2174322 (h!67614 s!2326)) (flatMap!724 lt!2174322 lambda!272339))))

(declare-fun bs!1235155 () Bool)

(assert (= bs!1235155 d!1711192))

(declare-fun m!6363178 () Bool)

(assert (=> bs!1235155 m!6363178))

(assert (=> b!5329330 d!1711192))

(declare-fun d!1711198 () Bool)

(declare-fun c!926745 () Bool)

(declare-fun isEmpty!33139 (List!61290) Bool)

(assert (=> d!1711198 (= c!926745 (isEmpty!33139 (t!374505 s!2326)))))

(declare-fun e!3310352 () Bool)

(assert (=> d!1711198 (= (matchZipper!1241 lt!2174302 (t!374505 s!2326)) e!3310352)))

(declare-fun b!5329659 () Bool)

(declare-fun nullableZipper!1354 ((InoxSet Context!8762)) Bool)

(assert (=> b!5329659 (= e!3310352 (nullableZipper!1354 lt!2174302))))

(declare-fun b!5329660 () Bool)

(declare-fun head!11426 (List!61290) C!30264)

(declare-fun tail!10523 (List!61290) List!61290)

(assert (=> b!5329660 (= e!3310352 (matchZipper!1241 (derivationStepZipper!1238 lt!2174302 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))))))

(assert (= (and d!1711198 c!926745) b!5329659))

(assert (= (and d!1711198 (not c!926745)) b!5329660))

(declare-fun m!6363206 () Bool)

(assert (=> d!1711198 m!6363206))

(declare-fun m!6363208 () Bool)

(assert (=> b!5329659 m!6363208))

(declare-fun m!6363210 () Bool)

(assert (=> b!5329660 m!6363210))

(assert (=> b!5329660 m!6363210))

(declare-fun m!6363212 () Bool)

(assert (=> b!5329660 m!6363212))

(declare-fun m!6363214 () Bool)

(assert (=> b!5329660 m!6363214))

(assert (=> b!5329660 m!6363212))

(assert (=> b!5329660 m!6363214))

(declare-fun m!6363216 () Bool)

(assert (=> b!5329660 m!6363216))

(assert (=> b!5329349 d!1711198))

(declare-fun d!1711208 () Bool)

(declare-fun c!926748 () Bool)

(assert (=> d!1711208 (= c!926748 (isEmpty!33139 (t!374505 s!2326)))))

(declare-fun e!3310356 () Bool)

(assert (=> d!1711208 (= (matchZipper!1241 lt!2174311 (t!374505 s!2326)) e!3310356)))

(declare-fun b!5329666 () Bool)

(assert (=> b!5329666 (= e!3310356 (nullableZipper!1354 lt!2174311))))

(declare-fun b!5329667 () Bool)

(assert (=> b!5329667 (= e!3310356 (matchZipper!1241 (derivationStepZipper!1238 lt!2174311 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))))))

(assert (= (and d!1711208 c!926748) b!5329666))

(assert (= (and d!1711208 (not c!926748)) b!5329667))

(assert (=> d!1711208 m!6363206))

(declare-fun m!6363224 () Bool)

(assert (=> b!5329666 m!6363224))

(assert (=> b!5329667 m!6363210))

(assert (=> b!5329667 m!6363210))

(declare-fun m!6363226 () Bool)

(assert (=> b!5329667 m!6363226))

(assert (=> b!5329667 m!6363214))

(assert (=> b!5329667 m!6363226))

(assert (=> b!5329667 m!6363214))

(declare-fun m!6363230 () Bool)

(assert (=> b!5329667 m!6363230))

(assert (=> b!5329349 d!1711208))

(declare-fun d!1711214 () Bool)

(declare-fun choose!39916 (Int) Bool)

(assert (=> d!1711214 (= (Exists!2178 lambda!272300) (choose!39916 lambda!272300))))

(declare-fun bs!1235168 () Bool)

(assert (= bs!1235168 d!1711214))

(declare-fun m!6363242 () Bool)

(assert (=> bs!1235168 m!6363242))

(assert (=> b!5329333 d!1711214))

(declare-fun b!5329772 () Bool)

(declare-fun res!2260744 () Bool)

(declare-fun e!3310420 () Bool)

(assert (=> b!5329772 (=> (not res!2260744) (not e!3310420))))

(declare-fun lt!2174392 () Option!15108)

(declare-fun get!21038 (Option!15108) tuple2!64392)

(assert (=> b!5329772 (= res!2260744 (matchR!7182 (regOne!30506 r!7292) (_1!35499 (get!21038 lt!2174392))))))

(declare-fun b!5329773 () Bool)

(declare-fun e!3310423 () Option!15108)

(assert (=> b!5329773 (= e!3310423 None!15107)))

(declare-fun b!5329774 () Bool)

(declare-fun e!3310424 () Bool)

(assert (=> b!5329774 (= e!3310424 (not (isDefined!11811 lt!2174392)))))

(declare-fun b!5329775 () Bool)

(declare-fun e!3310422 () Option!15108)

(assert (=> b!5329775 (= e!3310422 e!3310423)))

(declare-fun c!926785 () Bool)

(assert (=> b!5329775 (= c!926785 ((_ is Nil!61166) s!2326))))

(declare-fun b!5329776 () Bool)

(declare-fun e!3310421 () Bool)

(assert (=> b!5329776 (= e!3310421 (matchR!7182 (regTwo!30506 r!7292) s!2326))))

(declare-fun b!5329777 () Bool)

(declare-fun res!2260742 () Bool)

(assert (=> b!5329777 (=> (not res!2260742) (not e!3310420))))

(assert (=> b!5329777 (= res!2260742 (matchR!7182 (regTwo!30506 r!7292) (_2!35499 (get!21038 lt!2174392))))))

(declare-fun b!5329778 () Bool)

(declare-fun ++!13334 (List!61290 List!61290) List!61290)

(assert (=> b!5329778 (= e!3310420 (= (++!13334 (_1!35499 (get!21038 lt!2174392)) (_2!35499 (get!21038 lt!2174392))) s!2326))))

(declare-fun b!5329779 () Bool)

(assert (=> b!5329779 (= e!3310422 (Some!15107 (tuple2!64393 Nil!61166 s!2326)))))

(declare-fun b!5329780 () Bool)

(declare-fun lt!2174390 () Unit!153506)

(declare-fun lt!2174391 () Unit!153506)

(assert (=> b!5329780 (= lt!2174390 lt!2174391)))

(assert (=> b!5329780 (= (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1749 (List!61290 C!30264 List!61290 List!61290) Unit!153506)

(assert (=> b!5329780 (= lt!2174391 (lemmaMoveElementToOtherListKeepsConcatEq!1749 Nil!61166 (h!67614 s!2326) (t!374505 s!2326) s!2326))))

(assert (=> b!5329780 (= e!3310423 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326) s!2326))))

(declare-fun d!1711220 () Bool)

(assert (=> d!1711220 e!3310424))

(declare-fun res!2260740 () Bool)

(assert (=> d!1711220 (=> res!2260740 e!3310424)))

(assert (=> d!1711220 (= res!2260740 e!3310420)))

(declare-fun res!2260741 () Bool)

(assert (=> d!1711220 (=> (not res!2260741) (not e!3310420))))

(assert (=> d!1711220 (= res!2260741 (isDefined!11811 lt!2174392))))

(assert (=> d!1711220 (= lt!2174392 e!3310422)))

(declare-fun c!926784 () Bool)

(assert (=> d!1711220 (= c!926784 e!3310421)))

(declare-fun res!2260743 () Bool)

(assert (=> d!1711220 (=> (not res!2260743) (not e!3310421))))

(assert (=> d!1711220 (= res!2260743 (matchR!7182 (regOne!30506 r!7292) Nil!61166))))

(assert (=> d!1711220 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711220 (= (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326) lt!2174392)))

(assert (= (and d!1711220 res!2260743) b!5329776))

(assert (= (and d!1711220 c!926784) b!5329779))

(assert (= (and d!1711220 (not c!926784)) b!5329775))

(assert (= (and b!5329775 c!926785) b!5329773))

(assert (= (and b!5329775 (not c!926785)) b!5329780))

(assert (= (and d!1711220 res!2260741) b!5329772))

(assert (= (and b!5329772 res!2260744) b!5329777))

(assert (= (and b!5329777 res!2260742) b!5329778))

(assert (= (and d!1711220 (not res!2260740)) b!5329774))

(declare-fun m!6363310 () Bool)

(assert (=> b!5329780 m!6363310))

(assert (=> b!5329780 m!6363310))

(declare-fun m!6363312 () Bool)

(assert (=> b!5329780 m!6363312))

(declare-fun m!6363314 () Bool)

(assert (=> b!5329780 m!6363314))

(assert (=> b!5329780 m!6363310))

(declare-fun m!6363316 () Bool)

(assert (=> b!5329780 m!6363316))

(declare-fun m!6363318 () Bool)

(assert (=> b!5329777 m!6363318))

(declare-fun m!6363320 () Bool)

(assert (=> b!5329777 m!6363320))

(declare-fun m!6363322 () Bool)

(assert (=> d!1711220 m!6363322))

(declare-fun m!6363324 () Bool)

(assert (=> d!1711220 m!6363324))

(declare-fun m!6363326 () Bool)

(assert (=> d!1711220 m!6363326))

(assert (=> b!5329778 m!6363318))

(declare-fun m!6363328 () Bool)

(assert (=> b!5329778 m!6363328))

(declare-fun m!6363330 () Bool)

(assert (=> b!5329776 m!6363330))

(assert (=> b!5329774 m!6363322))

(assert (=> b!5329772 m!6363318))

(declare-fun m!6363332 () Bool)

(assert (=> b!5329772 m!6363332))

(assert (=> b!5329333 d!1711220))

(declare-fun d!1711248 () Bool)

(assert (=> d!1711248 (= (Exists!2178 lambda!272301) (choose!39916 lambda!272301))))

(declare-fun bs!1235206 () Bool)

(assert (= bs!1235206 d!1711248))

(declare-fun m!6363334 () Bool)

(assert (=> bs!1235206 m!6363334))

(assert (=> b!5329333 d!1711248))

(declare-fun bs!1235215 () Bool)

(declare-fun d!1711250 () Bool)

(assert (= bs!1235215 (and d!1711250 b!5329333)))

(declare-fun lambda!272362 () Int)

(assert (=> bs!1235215 (= lambda!272362 lambda!272300)))

(assert (=> bs!1235215 (not (= lambda!272362 lambda!272301))))

(declare-fun bs!1235216 () Bool)

(assert (= bs!1235216 (and d!1711250 b!5329319)))

(assert (=> bs!1235216 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272362 lambda!272303))))

(assert (=> bs!1235216 (not (= lambda!272362 lambda!272304))))

(assert (=> d!1711250 true))

(assert (=> d!1711250 true))

(assert (=> d!1711250 true))

(assert (=> d!1711250 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326)) (Exists!2178 lambda!272362))))

(declare-fun lt!2174408 () Unit!153506)

(declare-fun choose!39918 (Regex!14997 Regex!14997 List!61290) Unit!153506)

(assert (=> d!1711250 (= lt!2174408 (choose!39918 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326))))

(assert (=> d!1711250 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711250 (= (lemmaFindConcatSeparationEquivalentToExists!1286 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326) lt!2174408)))

(declare-fun bs!1235217 () Bool)

(assert (= bs!1235217 d!1711250))

(declare-fun m!6363374 () Bool)

(assert (=> bs!1235217 m!6363374))

(declare-fun m!6363376 () Bool)

(assert (=> bs!1235217 m!6363376))

(assert (=> bs!1235217 m!6362912))

(assert (=> bs!1235217 m!6363326))

(assert (=> bs!1235217 m!6362912))

(assert (=> bs!1235217 m!6362914))

(assert (=> b!5329333 d!1711250))

(declare-fun bs!1235226 () Bool)

(declare-fun d!1711262 () Bool)

(assert (= bs!1235226 (and d!1711262 b!5329333)))

(declare-fun lambda!272368 () Int)

(assert (=> bs!1235226 (not (= lambda!272368 lambda!272301))))

(assert (=> bs!1235226 (= lambda!272368 lambda!272300)))

(declare-fun bs!1235227 () Bool)

(assert (= bs!1235227 (and d!1711262 b!5329319)))

(assert (=> bs!1235227 (not (= lambda!272368 lambda!272304))))

(declare-fun bs!1235228 () Bool)

(assert (= bs!1235228 (and d!1711262 d!1711250)))

(assert (=> bs!1235228 (= lambda!272368 lambda!272362)))

(assert (=> bs!1235227 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272368 lambda!272303))))

(assert (=> d!1711262 true))

(assert (=> d!1711262 true))

(assert (=> d!1711262 true))

(declare-fun lambda!272369 () Int)

(assert (=> bs!1235226 (= lambda!272369 lambda!272301)))

(assert (=> bs!1235226 (not (= lambda!272369 lambda!272300))))

(assert (=> bs!1235227 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272369 lambda!272304))))

(assert (=> bs!1235228 (not (= lambda!272369 lambda!272362))))

(assert (=> bs!1235227 (not (= lambda!272369 lambda!272303))))

(declare-fun bs!1235232 () Bool)

(assert (= bs!1235232 d!1711262))

(assert (=> bs!1235232 (not (= lambda!272369 lambda!272368))))

(assert (=> d!1711262 true))

(assert (=> d!1711262 true))

(assert (=> d!1711262 true))

(assert (=> d!1711262 (= (Exists!2178 lambda!272368) (Exists!2178 lambda!272369))))

(declare-fun lt!2174429 () Unit!153506)

(declare-fun choose!39919 (Regex!14997 Regex!14997 List!61290) Unit!153506)

(assert (=> d!1711262 (= lt!2174429 (choose!39919 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326))))

(assert (=> d!1711262 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711262 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!832 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326) lt!2174429)))

(declare-fun m!6363446 () Bool)

(assert (=> bs!1235232 m!6363446))

(declare-fun m!6363448 () Bool)

(assert (=> bs!1235232 m!6363448))

(declare-fun m!6363450 () Bool)

(assert (=> bs!1235232 m!6363450))

(assert (=> bs!1235232 m!6363326))

(assert (=> b!5329333 d!1711262))

(declare-fun d!1711292 () Bool)

(declare-fun isEmpty!33140 (Option!15108) Bool)

(assert (=> d!1711292 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326)) (not (isEmpty!33140 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326))))))

(declare-fun bs!1235233 () Bool)

(assert (= bs!1235233 d!1711292))

(assert (=> bs!1235233 m!6362912))

(declare-fun m!6363452 () Bool)

(assert (=> bs!1235233 m!6363452))

(assert (=> b!5329333 d!1711292))

(declare-fun bs!1235234 () Bool)

(declare-fun d!1711294 () Bool)

(assert (= bs!1235234 (and d!1711294 b!5329319)))

(declare-fun lambda!272372 () Int)

(assert (=> bs!1235234 (= lambda!272372 lambda!272305)))

(declare-fun b!5329924 () Bool)

(declare-fun e!3310502 () Bool)

(declare-fun lt!2174432 () Regex!14997)

(declare-fun head!11427 (List!61291) Regex!14997)

(assert (=> b!5329924 (= e!3310502 (= lt!2174432 (head!11427 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5329925 () Bool)

(declare-fun e!3310505 () Bool)

(declare-fun isEmptyExpr!889 (Regex!14997) Bool)

(assert (=> b!5329925 (= e!3310505 (isEmptyExpr!889 lt!2174432))))

(declare-fun e!3310501 () Bool)

(assert (=> d!1711294 e!3310501))

(declare-fun res!2260775 () Bool)

(assert (=> d!1711294 (=> (not res!2260775) (not e!3310501))))

(assert (=> d!1711294 (= res!2260775 (validRegex!6733 lt!2174432))))

(declare-fun e!3310500 () Regex!14997)

(assert (=> d!1711294 (= lt!2174432 e!3310500)))

(declare-fun c!926823 () Bool)

(declare-fun e!3310504 () Bool)

(assert (=> d!1711294 (= c!926823 e!3310504)))

(declare-fun res!2260774 () Bool)

(assert (=> d!1711294 (=> (not res!2260774) (not e!3310504))))

(assert (=> d!1711294 (= res!2260774 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1711294 (forall!14415 (exprs!4881 (h!67616 zl!343)) lambda!272372)))

(assert (=> d!1711294 (= (generalisedConcat!666 (exprs!4881 (h!67616 zl!343))) lt!2174432)))

(declare-fun b!5329926 () Bool)

(assert (=> b!5329926 (= e!3310504 (isEmpty!33135 (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5329927 () Bool)

(assert (=> b!5329927 (= e!3310501 e!3310505)))

(declare-fun c!926824 () Bool)

(assert (=> b!5329927 (= c!926824 (isEmpty!33135 (exprs!4881 (h!67616 zl!343))))))

(declare-fun b!5329928 () Bool)

(assert (=> b!5329928 (= e!3310500 (h!67615 (exprs!4881 (h!67616 zl!343))))))

(declare-fun b!5329929 () Bool)

(declare-fun e!3310503 () Regex!14997)

(assert (=> b!5329929 (= e!3310503 EmptyExpr!14997)))

(declare-fun b!5329930 () Bool)

(declare-fun isConcat!412 (Regex!14997) Bool)

(assert (=> b!5329930 (= e!3310502 (isConcat!412 lt!2174432))))

(declare-fun b!5329931 () Bool)

(assert (=> b!5329931 (= e!3310500 e!3310503)))

(declare-fun c!926822 () Bool)

(assert (=> b!5329931 (= c!926822 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(declare-fun b!5329932 () Bool)

(assert (=> b!5329932 (= e!3310503 (Concat!23842 (h!67615 (exprs!4881 (h!67616 zl!343))) (generalisedConcat!666 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5329933 () Bool)

(assert (=> b!5329933 (= e!3310505 e!3310502)))

(declare-fun c!926821 () Bool)

(declare-fun tail!10524 (List!61291) List!61291)

(assert (=> b!5329933 (= c!926821 (isEmpty!33135 (tail!10524 (exprs!4881 (h!67616 zl!343)))))))

(assert (= (and d!1711294 res!2260774) b!5329926))

(assert (= (and d!1711294 c!926823) b!5329928))

(assert (= (and d!1711294 (not c!926823)) b!5329931))

(assert (= (and b!5329931 c!926822) b!5329932))

(assert (= (and b!5329931 (not c!926822)) b!5329929))

(assert (= (and d!1711294 res!2260775) b!5329927))

(assert (= (and b!5329927 c!926824) b!5329925))

(assert (= (and b!5329927 (not c!926824)) b!5329933))

(assert (= (and b!5329933 c!926821) b!5329924))

(assert (= (and b!5329933 (not c!926821)) b!5329930))

(declare-fun m!6363454 () Bool)

(assert (=> b!5329930 m!6363454))

(declare-fun m!6363456 () Bool)

(assert (=> b!5329925 m!6363456))

(declare-fun m!6363458 () Bool)

(assert (=> b!5329927 m!6363458))

(assert (=> b!5329926 m!6362882))

(declare-fun m!6363460 () Bool)

(assert (=> b!5329932 m!6363460))

(declare-fun m!6363462 () Bool)

(assert (=> d!1711294 m!6363462))

(declare-fun m!6363464 () Bool)

(assert (=> d!1711294 m!6363464))

(declare-fun m!6363466 () Bool)

(assert (=> b!5329933 m!6363466))

(assert (=> b!5329933 m!6363466))

(declare-fun m!6363468 () Bool)

(assert (=> b!5329933 m!6363468))

(declare-fun m!6363470 () Bool)

(assert (=> b!5329924 m!6363470))

(assert (=> b!5329331 d!1711294))

(declare-fun d!1711296 () Bool)

(declare-fun c!926825 () Bool)

(assert (=> d!1711296 (= c!926825 (isEmpty!33139 (t!374505 s!2326)))))

(declare-fun e!3310506 () Bool)

(assert (=> d!1711296 (= (matchZipper!1241 lt!2174325 (t!374505 s!2326)) e!3310506)))

(declare-fun b!5329934 () Bool)

(assert (=> b!5329934 (= e!3310506 (nullableZipper!1354 lt!2174325))))

(declare-fun b!5329935 () Bool)

(assert (=> b!5329935 (= e!3310506 (matchZipper!1241 (derivationStepZipper!1238 lt!2174325 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))))))

(assert (= (and d!1711296 c!926825) b!5329934))

(assert (= (and d!1711296 (not c!926825)) b!5329935))

(assert (=> d!1711296 m!6363206))

(declare-fun m!6363472 () Bool)

(assert (=> b!5329934 m!6363472))

(assert (=> b!5329935 m!6363210))

(assert (=> b!5329935 m!6363210))

(declare-fun m!6363474 () Bool)

(assert (=> b!5329935 m!6363474))

(assert (=> b!5329935 m!6363214))

(assert (=> b!5329935 m!6363474))

(assert (=> b!5329935 m!6363214))

(declare-fun m!6363476 () Bool)

(assert (=> b!5329935 m!6363476))

(assert (=> b!5329346 d!1711296))

(declare-fun b!5329954 () Bool)

(declare-fun e!3310525 () Bool)

(declare-fun e!3310522 () Bool)

(assert (=> b!5329954 (= e!3310525 e!3310522)))

(declare-fun res!2260790 () Bool)

(assert (=> b!5329954 (= res!2260790 (not (nullable!5166 (reg!15326 r!7292))))))

(assert (=> b!5329954 (=> (not res!2260790) (not e!3310522))))

(declare-fun b!5329955 () Bool)

(declare-fun e!3310526 () Bool)

(assert (=> b!5329955 (= e!3310526 e!3310525)))

(declare-fun c!926830 () Bool)

(assert (=> b!5329955 (= c!926830 ((_ is Star!14997) r!7292))))

(declare-fun b!5329956 () Bool)

(declare-fun e!3310524 () Bool)

(assert (=> b!5329956 (= e!3310525 e!3310524)))

(declare-fun c!926831 () Bool)

(assert (=> b!5329956 (= c!926831 ((_ is Union!14997) r!7292))))

(declare-fun d!1711298 () Bool)

(declare-fun res!2260788 () Bool)

(assert (=> d!1711298 (=> res!2260788 e!3310526)))

(assert (=> d!1711298 (= res!2260788 ((_ is ElementMatch!14997) r!7292))))

(assert (=> d!1711298 (= (validRegex!6733 r!7292) e!3310526)))

(declare-fun b!5329957 () Bool)

(declare-fun e!3310523 () Bool)

(declare-fun e!3310521 () Bool)

(assert (=> b!5329957 (= e!3310523 e!3310521)))

(declare-fun res!2260786 () Bool)

(assert (=> b!5329957 (=> (not res!2260786) (not e!3310521))))

(declare-fun call!380788 () Bool)

(assert (=> b!5329957 (= res!2260786 call!380788)))

(declare-fun call!380787 () Bool)

(declare-fun bm!380781 () Bool)

(assert (=> bm!380781 (= call!380787 (validRegex!6733 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))

(declare-fun bm!380782 () Bool)

(declare-fun call!380786 () Bool)

(assert (=> bm!380782 (= call!380786 (validRegex!6733 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))

(declare-fun b!5329958 () Bool)

(declare-fun res!2260787 () Bool)

(assert (=> b!5329958 (=> res!2260787 e!3310523)))

(assert (=> b!5329958 (= res!2260787 (not ((_ is Concat!23842) r!7292)))))

(assert (=> b!5329958 (= e!3310524 e!3310523)))

(declare-fun b!5329959 () Bool)

(assert (=> b!5329959 (= e!3310522 call!380787)))

(declare-fun b!5329960 () Bool)

(declare-fun res!2260789 () Bool)

(declare-fun e!3310527 () Bool)

(assert (=> b!5329960 (=> (not res!2260789) (not e!3310527))))

(assert (=> b!5329960 (= res!2260789 call!380788)))

(assert (=> b!5329960 (= e!3310524 e!3310527)))

(declare-fun bm!380783 () Bool)

(assert (=> bm!380783 (= call!380788 call!380787)))

(declare-fun b!5329961 () Bool)

(assert (=> b!5329961 (= e!3310527 call!380786)))

(declare-fun b!5329962 () Bool)

(assert (=> b!5329962 (= e!3310521 call!380786)))

(assert (= (and d!1711298 (not res!2260788)) b!5329955))

(assert (= (and b!5329955 c!926830) b!5329954))

(assert (= (and b!5329955 (not c!926830)) b!5329956))

(assert (= (and b!5329954 res!2260790) b!5329959))

(assert (= (and b!5329956 c!926831) b!5329960))

(assert (= (and b!5329956 (not c!926831)) b!5329958))

(assert (= (and b!5329960 res!2260789) b!5329961))

(assert (= (and b!5329958 (not res!2260787)) b!5329957))

(assert (= (and b!5329957 res!2260786) b!5329962))

(assert (= (or b!5329961 b!5329962) bm!380782))

(assert (= (or b!5329960 b!5329957) bm!380783))

(assert (= (or b!5329959 bm!380783) bm!380781))

(declare-fun m!6363478 () Bool)

(assert (=> b!5329954 m!6363478))

(declare-fun m!6363480 () Bool)

(assert (=> bm!380781 m!6363480))

(declare-fun m!6363482 () Bool)

(assert (=> bm!380782 m!6363482))

(assert (=> start!561722 d!1711298))

(declare-fun d!1711300 () Bool)

(assert (=> d!1711300 (= (flatMap!724 z!1189 lambda!272302) (dynLambda!24185 lambda!272302 (h!67616 zl!343)))))

(declare-fun lt!2174433 () Unit!153506)

(assert (=> d!1711300 (= lt!2174433 (choose!39914 z!1189 (h!67616 zl!343) lambda!272302))))

(assert (=> d!1711300 (= z!1189 (store ((as const (Array Context!8762 Bool)) false) (h!67616 zl!343) true))))

(assert (=> d!1711300 (= (lemmaFlatMapOnSingletonSet!256 z!1189 (h!67616 zl!343) lambda!272302) lt!2174433)))

(declare-fun b_lambda!204971 () Bool)

(assert (=> (not b_lambda!204971) (not d!1711300)))

(declare-fun bs!1235235 () Bool)

(assert (= bs!1235235 d!1711300))

(assert (=> bs!1235235 m!6362940))

(declare-fun m!6363484 () Bool)

(assert (=> bs!1235235 m!6363484))

(declare-fun m!6363486 () Bool)

(assert (=> bs!1235235 m!6363486))

(declare-fun m!6363488 () Bool)

(assert (=> bs!1235235 m!6363488))

(assert (=> b!5329326 d!1711300))

(declare-fun b!5329963 () Bool)

(declare-fun e!3310528 () Bool)

(assert (=> b!5329963 (= e!3310528 (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun bm!380784 () Bool)

(declare-fun call!380789 () (InoxSet Context!8762))

(assert (=> bm!380784 (= call!380789 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326)))))

(declare-fun b!5329964 () Bool)

(declare-fun e!3310530 () (InoxSet Context!8762))

(declare-fun e!3310529 () (InoxSet Context!8762))

(assert (=> b!5329964 (= e!3310530 e!3310529)))

(declare-fun c!926832 () Bool)

(assert (=> b!5329964 (= c!926832 ((_ is Cons!61167) (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun b!5329965 () Bool)

(assert (=> b!5329965 (= e!3310529 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5329966 () Bool)

(assert (=> b!5329966 (= e!3310529 call!380789)))

(declare-fun d!1711302 () Bool)

(declare-fun c!926833 () Bool)

(assert (=> d!1711302 (= c!926833 e!3310528)))

(declare-fun res!2260791 () Bool)

(assert (=> d!1711302 (=> (not res!2260791) (not e!3310528))))

(assert (=> d!1711302 (= res!2260791 ((_ is Cons!61167) (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))

(assert (=> d!1711302 (= (derivationStepZipperUp!369 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))) (h!67614 s!2326)) e!3310530)))

(declare-fun b!5329967 () Bool)

(assert (=> b!5329967 (= e!3310530 ((_ map or) call!380789 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326))))))

(assert (= (and d!1711302 res!2260791) b!5329963))

(assert (= (and d!1711302 c!926833) b!5329967))

(assert (= (and d!1711302 (not c!926833)) b!5329964))

(assert (= (and b!5329964 c!926832) b!5329966))

(assert (= (and b!5329964 (not c!926832)) b!5329965))

(assert (= (or b!5329967 b!5329966) bm!380784))

(declare-fun m!6363490 () Bool)

(assert (=> b!5329963 m!6363490))

(declare-fun m!6363492 () Bool)

(assert (=> bm!380784 m!6363492))

(declare-fun m!6363494 () Bool)

(assert (=> b!5329967 m!6363494))

(assert (=> b!5329326 d!1711302))

(declare-fun b!5329968 () Bool)

(declare-fun e!3310531 () Bool)

(assert (=> b!5329968 (= e!3310531 (nullable!5166 (h!67615 (exprs!4881 lt!2174316))))))

(declare-fun bm!380785 () Bool)

(declare-fun call!380790 () (InoxSet Context!8762))

(assert (=> bm!380785 (= call!380790 (derivationStepZipperDown!445 (h!67615 (exprs!4881 lt!2174316)) (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (h!67614 s!2326)))))

(declare-fun b!5329969 () Bool)

(declare-fun e!3310533 () (InoxSet Context!8762))

(declare-fun e!3310532 () (InoxSet Context!8762))

(assert (=> b!5329969 (= e!3310533 e!3310532)))

(declare-fun c!926834 () Bool)

(assert (=> b!5329969 (= c!926834 ((_ is Cons!61167) (exprs!4881 lt!2174316)))))

(declare-fun b!5329970 () Bool)

(assert (=> b!5329970 (= e!3310532 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5329971 () Bool)

(assert (=> b!5329971 (= e!3310532 call!380790)))

(declare-fun d!1711304 () Bool)

(declare-fun c!926835 () Bool)

(assert (=> d!1711304 (= c!926835 e!3310531)))

(declare-fun res!2260792 () Bool)

(assert (=> d!1711304 (=> (not res!2260792) (not e!3310531))))

(assert (=> d!1711304 (= res!2260792 ((_ is Cons!61167) (exprs!4881 lt!2174316)))))

(assert (=> d!1711304 (= (derivationStepZipperUp!369 lt!2174316 (h!67614 s!2326)) e!3310533)))

(declare-fun b!5329972 () Bool)

(assert (=> b!5329972 (= e!3310533 ((_ map or) call!380790 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (h!67614 s!2326))))))

(assert (= (and d!1711304 res!2260792) b!5329968))

(assert (= (and d!1711304 c!926835) b!5329972))

(assert (= (and d!1711304 (not c!926835)) b!5329969))

(assert (= (and b!5329969 c!926834) b!5329971))

(assert (= (and b!5329969 (not c!926834)) b!5329970))

(assert (= (or b!5329972 b!5329971) bm!380785))

(declare-fun m!6363496 () Bool)

(assert (=> b!5329968 m!6363496))

(declare-fun m!6363498 () Bool)

(assert (=> bm!380785 m!6363498))

(declare-fun m!6363500 () Bool)

(assert (=> b!5329972 m!6363500))

(assert (=> b!5329326 d!1711304))

(declare-fun b!5329973 () Bool)

(declare-fun e!3310534 () Bool)

(assert (=> b!5329973 (= e!3310534 (nullable!5166 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bm!380786 () Bool)

(declare-fun call!380791 () (InoxSet Context!8762))

(assert (=> bm!380786 (= call!380791 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (h!67616 zl!343))) (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326)))))

(declare-fun b!5329974 () Bool)

(declare-fun e!3310536 () (InoxSet Context!8762))

(declare-fun e!3310535 () (InoxSet Context!8762))

(assert (=> b!5329974 (= e!3310536 e!3310535)))

(declare-fun c!926836 () Bool)

(assert (=> b!5329974 (= c!926836 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(declare-fun b!5329975 () Bool)

(assert (=> b!5329975 (= e!3310535 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5329976 () Bool)

(assert (=> b!5329976 (= e!3310535 call!380791)))

(declare-fun d!1711306 () Bool)

(declare-fun c!926837 () Bool)

(assert (=> d!1711306 (= c!926837 e!3310534)))

(declare-fun res!2260793 () Bool)

(assert (=> d!1711306 (=> (not res!2260793) (not e!3310534))))

(assert (=> d!1711306 (= res!2260793 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1711306 (= (derivationStepZipperUp!369 (h!67616 zl!343) (h!67614 s!2326)) e!3310536)))

(declare-fun b!5329977 () Bool)

(assert (=> b!5329977 (= e!3310536 ((_ map or) call!380791 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326))))))

(assert (= (and d!1711306 res!2260793) b!5329973))

(assert (= (and d!1711306 c!926837) b!5329977))

(assert (= (and d!1711306 (not c!926837)) b!5329974))

(assert (= (and b!5329974 c!926836) b!5329976))

(assert (= (and b!5329974 (not c!926836)) b!5329975))

(assert (= (or b!5329977 b!5329976) bm!380786))

(assert (=> b!5329973 m!6362938))

(declare-fun m!6363502 () Bool)

(assert (=> bm!380786 m!6363502))

(declare-fun m!6363504 () Bool)

(assert (=> b!5329977 m!6363504))

(assert (=> b!5329326 d!1711306))

(declare-fun b!5330000 () Bool)

(declare-fun e!3310551 () (InoxSet Context!8762))

(declare-fun call!380805 () (InoxSet Context!8762))

(assert (=> b!5330000 (= e!3310551 call!380805)))

(declare-fun bm!380799 () Bool)

(declare-fun call!380806 () (InoxSet Context!8762))

(declare-fun call!380804 () (InoxSet Context!8762))

(assert (=> bm!380799 (= call!380806 call!380804)))

(declare-fun b!5330001 () Bool)

(declare-fun e!3310552 () (InoxSet Context!8762))

(assert (=> b!5330001 (= e!3310552 call!380805)))

(declare-fun c!926852 () Bool)

(declare-fun call!380807 () List!61291)

(declare-fun bm!380800 () Bool)

(declare-fun c!926849 () Bool)

(declare-fun c!926851 () Bool)

(assert (=> bm!380800 (= call!380804 (derivationStepZipperDown!445 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))) (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807)) (h!67614 s!2326)))))

(declare-fun b!5330002 () Bool)

(declare-fun e!3310554 () Bool)

(assert (=> b!5330002 (= e!3310554 (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5330003 () Bool)

(assert (=> b!5330003 (= c!926851 e!3310554)))

(declare-fun res!2260796 () Bool)

(assert (=> b!5330003 (=> (not res!2260796) (not e!3310554))))

(assert (=> b!5330003 (= res!2260796 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun e!3310553 () (InoxSet Context!8762))

(declare-fun e!3310550 () (InoxSet Context!8762))

(assert (=> b!5330003 (= e!3310553 e!3310550)))

(declare-fun b!5330004 () Bool)

(assert (=> b!5330004 (= e!3310551 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!380801 () Bool)

(assert (=> bm!380801 (= call!380805 call!380806)))

(declare-fun call!380808 () List!61291)

(declare-fun bm!380802 () Bool)

(declare-fun call!380809 () (InoxSet Context!8762))

(assert (=> bm!380802 (= call!380809 (derivationStepZipperDown!445 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))) (ite c!926849 lt!2174316 (Context!8763 call!380808)) (h!67614 s!2326)))))

(declare-fun b!5330005 () Bool)

(assert (=> b!5330005 (= e!3310550 ((_ map or) call!380809 call!380806))))

(declare-fun bm!380803 () Bool)

(declare-fun $colon$colon!1404 (List!61291 Regex!14997) List!61291)

(assert (=> bm!380803 (= call!380808 ($colon$colon!1404 (exprs!4881 lt!2174316) (ite (or c!926851 c!926852) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67615 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5330006 () Bool)

(declare-fun c!926850 () Bool)

(assert (=> b!5330006 (= c!926850 ((_ is Star!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> b!5330006 (= e!3310552 e!3310551)))

(declare-fun b!5330007 () Bool)

(declare-fun e!3310549 () (InoxSet Context!8762))

(assert (=> b!5330007 (= e!3310549 e!3310553)))

(assert (=> b!5330007 (= c!926849 ((_ is Union!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5330009 () Bool)

(assert (=> b!5330009 (= e!3310549 (store ((as const (Array Context!8762 Bool)) false) lt!2174316 true))))

(declare-fun b!5330010 () Bool)

(assert (=> b!5330010 (= e!3310550 e!3310552)))

(assert (=> b!5330010 (= c!926852 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bm!380804 () Bool)

(assert (=> bm!380804 (= call!380807 call!380808)))

(declare-fun b!5330008 () Bool)

(assert (=> b!5330008 (= e!3310553 ((_ map or) call!380809 call!380804))))

(declare-fun d!1711308 () Bool)

(declare-fun c!926848 () Bool)

(assert (=> d!1711308 (= c!926848 (and ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))) (= (c!926649 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326))))))

(assert (=> d!1711308 (= (derivationStepZipperDown!445 (h!67615 (exprs!4881 (h!67616 zl!343))) lt!2174316 (h!67614 s!2326)) e!3310549)))

(assert (= (and d!1711308 c!926848) b!5330009))

(assert (= (and d!1711308 (not c!926848)) b!5330007))

(assert (= (and b!5330007 c!926849) b!5330008))

(assert (= (and b!5330007 (not c!926849)) b!5330003))

(assert (= (and b!5330003 res!2260796) b!5330002))

(assert (= (and b!5330003 c!926851) b!5330005))

(assert (= (and b!5330003 (not c!926851)) b!5330010))

(assert (= (and b!5330010 c!926852) b!5330001))

(assert (= (and b!5330010 (not c!926852)) b!5330006))

(assert (= (and b!5330006 c!926850) b!5330000))

(assert (= (and b!5330006 (not c!926850)) b!5330004))

(assert (= (or b!5330001 b!5330000) bm!380804))

(assert (= (or b!5330001 b!5330000) bm!380801))

(assert (= (or b!5330005 bm!380804) bm!380803))

(assert (= (or b!5330005 bm!380801) bm!380799))

(assert (= (or b!5330008 bm!380799) bm!380800))

(assert (= (or b!5330008 b!5330005) bm!380802))

(declare-fun m!6363506 () Bool)

(assert (=> b!5330009 m!6363506))

(declare-fun m!6363508 () Bool)

(assert (=> b!5330002 m!6363508))

(declare-fun m!6363510 () Bool)

(assert (=> bm!380802 m!6363510))

(declare-fun m!6363512 () Bool)

(assert (=> bm!380803 m!6363512))

(declare-fun m!6363514 () Bool)

(assert (=> bm!380800 m!6363514))

(assert (=> b!5329326 d!1711308))

(declare-fun d!1711310 () Bool)

(declare-fun nullableFct!1506 (Regex!14997) Bool)

(assert (=> d!1711310 (= (nullable!5166 (h!67615 (exprs!4881 (h!67616 zl!343)))) (nullableFct!1506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bs!1235236 () Bool)

(assert (= bs!1235236 d!1711310))

(declare-fun m!6363516 () Bool)

(assert (=> bs!1235236 m!6363516))

(assert (=> b!5329326 d!1711310))

(declare-fun d!1711312 () Bool)

(assert (=> d!1711312 (= (flatMap!724 z!1189 lambda!272302) (choose!39913 z!1189 lambda!272302))))

(declare-fun bs!1235237 () Bool)

(assert (= bs!1235237 d!1711312))

(declare-fun m!6363518 () Bool)

(assert (=> bs!1235237 m!6363518))

(assert (=> b!5329326 d!1711312))

(declare-fun bs!1235238 () Bool)

(declare-fun b!5330051 () Bool)

(assert (= bs!1235238 (and b!5330051 b!5329333)))

(declare-fun lambda!272377 () Int)

(assert (=> bs!1235238 (not (= lambda!272377 lambda!272301))))

(assert (=> bs!1235238 (not (= lambda!272377 lambda!272300))))

(declare-fun bs!1235239 () Bool)

(assert (= bs!1235239 (and b!5330051 b!5329319)))

(assert (=> bs!1235239 (not (= lambda!272377 lambda!272304))))

(declare-fun bs!1235240 () Bool)

(assert (= bs!1235240 (and b!5330051 d!1711250)))

(assert (=> bs!1235240 (not (= lambda!272377 lambda!272362))))

(declare-fun bs!1235241 () Bool)

(assert (= bs!1235241 (and b!5330051 d!1711262)))

(assert (=> bs!1235241 (not (= lambda!272377 lambda!272369))))

(assert (=> bs!1235239 (not (= lambda!272377 lambda!272303))))

(assert (=> bs!1235241 (not (= lambda!272377 lambda!272368))))

(assert (=> b!5330051 true))

(assert (=> b!5330051 true))

(declare-fun bs!1235242 () Bool)

(declare-fun b!5330052 () Bool)

(assert (= bs!1235242 (and b!5330052 b!5329333)))

(declare-fun lambda!272378 () Int)

(assert (=> bs!1235242 (= lambda!272378 lambda!272301)))

(assert (=> bs!1235242 (not (= lambda!272378 lambda!272300))))

(declare-fun bs!1235243 () Bool)

(assert (= bs!1235243 (and b!5330052 b!5330051)))

(assert (=> bs!1235243 (not (= lambda!272378 lambda!272377))))

(declare-fun bs!1235244 () Bool)

(assert (= bs!1235244 (and b!5330052 b!5329319)))

(assert (=> bs!1235244 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272378 lambda!272304))))

(declare-fun bs!1235245 () Bool)

(assert (= bs!1235245 (and b!5330052 d!1711250)))

(assert (=> bs!1235245 (not (= lambda!272378 lambda!272362))))

(declare-fun bs!1235246 () Bool)

(assert (= bs!1235246 (and b!5330052 d!1711262)))

(assert (=> bs!1235246 (= lambda!272378 lambda!272369)))

(assert (=> bs!1235244 (not (= lambda!272378 lambda!272303))))

(assert (=> bs!1235246 (not (= lambda!272378 lambda!272368))))

(assert (=> b!5330052 true))

(assert (=> b!5330052 true))

(declare-fun d!1711314 () Bool)

(declare-fun c!926862 () Bool)

(assert (=> d!1711314 (= c!926862 ((_ is EmptyExpr!14997) r!7292))))

(declare-fun e!3310573 () Bool)

(assert (=> d!1711314 (= (matchRSpec!2100 r!7292 s!2326) e!3310573)))

(declare-fun b!5330043 () Bool)

(declare-fun res!2260815 () Bool)

(declare-fun e!3310574 () Bool)

(assert (=> b!5330043 (=> res!2260815 e!3310574)))

(declare-fun call!380814 () Bool)

(assert (=> b!5330043 (= res!2260815 call!380814)))

(declare-fun e!3310577 () Bool)

(assert (=> b!5330043 (= e!3310577 e!3310574)))

(declare-fun b!5330044 () Bool)

(declare-fun e!3310576 () Bool)

(assert (=> b!5330044 (= e!3310576 (matchRSpec!2100 (regTwo!30507 r!7292) s!2326))))

(declare-fun b!5330045 () Bool)

(declare-fun c!926864 () Bool)

(assert (=> b!5330045 (= c!926864 ((_ is ElementMatch!14997) r!7292))))

(declare-fun e!3310579 () Bool)

(declare-fun e!3310578 () Bool)

(assert (=> b!5330045 (= e!3310579 e!3310578)))

(declare-fun b!5330046 () Bool)

(assert (=> b!5330046 (= e!3310573 call!380814)))

(declare-fun call!380815 () Bool)

(declare-fun c!926863 () Bool)

(declare-fun bm!380809 () Bool)

(assert (=> bm!380809 (= call!380815 (Exists!2178 (ite c!926863 lambda!272377 lambda!272378)))))

(declare-fun b!5330047 () Bool)

(declare-fun e!3310575 () Bool)

(assert (=> b!5330047 (= e!3310575 e!3310576)))

(declare-fun res!2260814 () Bool)

(assert (=> b!5330047 (= res!2260814 (matchRSpec!2100 (regOne!30507 r!7292) s!2326))))

(assert (=> b!5330047 (=> res!2260814 e!3310576)))

(declare-fun b!5330048 () Bool)

(assert (=> b!5330048 (= e!3310575 e!3310577)))

(assert (=> b!5330048 (= c!926863 ((_ is Star!14997) r!7292))))

(declare-fun bm!380810 () Bool)

(assert (=> bm!380810 (= call!380814 (isEmpty!33139 s!2326))))

(declare-fun b!5330049 () Bool)

(assert (=> b!5330049 (= e!3310573 e!3310579)))

(declare-fun res!2260813 () Bool)

(assert (=> b!5330049 (= res!2260813 (not ((_ is EmptyLang!14997) r!7292)))))

(assert (=> b!5330049 (=> (not res!2260813) (not e!3310579))))

(declare-fun b!5330050 () Bool)

(declare-fun c!926861 () Bool)

(assert (=> b!5330050 (= c!926861 ((_ is Union!14997) r!7292))))

(assert (=> b!5330050 (= e!3310578 e!3310575)))

(assert (=> b!5330051 (= e!3310574 call!380815)))

(assert (=> b!5330052 (= e!3310577 call!380815)))

(declare-fun b!5330053 () Bool)

(assert (=> b!5330053 (= e!3310578 (= s!2326 (Cons!61166 (c!926649 r!7292) Nil!61166)))))

(assert (= (and d!1711314 c!926862) b!5330046))

(assert (= (and d!1711314 (not c!926862)) b!5330049))

(assert (= (and b!5330049 res!2260813) b!5330045))

(assert (= (and b!5330045 c!926864) b!5330053))

(assert (= (and b!5330045 (not c!926864)) b!5330050))

(assert (= (and b!5330050 c!926861) b!5330047))

(assert (= (and b!5330050 (not c!926861)) b!5330048))

(assert (= (and b!5330047 (not res!2260814)) b!5330044))

(assert (= (and b!5330048 c!926863) b!5330043))

(assert (= (and b!5330048 (not c!926863)) b!5330052))

(assert (= (and b!5330043 (not res!2260815)) b!5330051))

(assert (= (or b!5330051 b!5330052) bm!380809))

(assert (= (or b!5330046 b!5330043) bm!380810))

(declare-fun m!6363520 () Bool)

(assert (=> b!5330044 m!6363520))

(declare-fun m!6363522 () Bool)

(assert (=> bm!380809 m!6363522))

(declare-fun m!6363524 () Bool)

(assert (=> b!5330047 m!6363524))

(declare-fun m!6363526 () Bool)

(assert (=> bm!380810 m!6363526))

(assert (=> b!5329324 d!1711314))

(declare-fun b!5330082 () Bool)

(declare-fun e!3310594 () Bool)

(declare-fun lt!2174436 () Bool)

(assert (=> b!5330082 (= e!3310594 (not lt!2174436))))

(declare-fun b!5330083 () Bool)

(declare-fun res!2260834 () Bool)

(declare-fun e!3310596 () Bool)

(assert (=> b!5330083 (=> (not res!2260834) (not e!3310596))))

(declare-fun call!380818 () Bool)

(assert (=> b!5330083 (= res!2260834 (not call!380818))))

(declare-fun d!1711316 () Bool)

(declare-fun e!3310597 () Bool)

(assert (=> d!1711316 e!3310597))

(declare-fun c!926873 () Bool)

(assert (=> d!1711316 (= c!926873 ((_ is EmptyExpr!14997) r!7292))))

(declare-fun e!3310600 () Bool)

(assert (=> d!1711316 (= lt!2174436 e!3310600)))

(declare-fun c!926871 () Bool)

(assert (=> d!1711316 (= c!926871 (isEmpty!33139 s!2326))))

(assert (=> d!1711316 (validRegex!6733 r!7292)))

(assert (=> d!1711316 (= (matchR!7182 r!7292 s!2326) lt!2174436)))

(declare-fun b!5330084 () Bool)

(assert (=> b!5330084 (= e!3310597 e!3310594)))

(declare-fun c!926872 () Bool)

(assert (=> b!5330084 (= c!926872 ((_ is EmptyLang!14997) r!7292))))

(declare-fun b!5330085 () Bool)

(declare-fun derivativeStep!4175 (Regex!14997 C!30264) Regex!14997)

(assert (=> b!5330085 (= e!3310600 (matchR!7182 (derivativeStep!4175 r!7292 (head!11426 s!2326)) (tail!10523 s!2326)))))

(declare-fun b!5330086 () Bool)

(declare-fun res!2260837 () Bool)

(declare-fun e!3310598 () Bool)

(assert (=> b!5330086 (=> res!2260837 e!3310598)))

(assert (=> b!5330086 (= res!2260837 (not ((_ is ElementMatch!14997) r!7292)))))

(assert (=> b!5330086 (= e!3310594 e!3310598)))

(declare-fun b!5330087 () Bool)

(declare-fun res!2260835 () Bool)

(declare-fun e!3310595 () Bool)

(assert (=> b!5330087 (=> res!2260835 e!3310595)))

(assert (=> b!5330087 (= res!2260835 (not (isEmpty!33139 (tail!10523 s!2326))))))

(declare-fun b!5330088 () Bool)

(assert (=> b!5330088 (= e!3310595 (not (= (head!11426 s!2326) (c!926649 r!7292))))))

(declare-fun b!5330089 () Bool)

(assert (=> b!5330089 (= e!3310597 (= lt!2174436 call!380818))))

(declare-fun b!5330090 () Bool)

(declare-fun res!2260838 () Bool)

(assert (=> b!5330090 (=> res!2260838 e!3310598)))

(assert (=> b!5330090 (= res!2260838 e!3310596)))

(declare-fun res!2260836 () Bool)

(assert (=> b!5330090 (=> (not res!2260836) (not e!3310596))))

(assert (=> b!5330090 (= res!2260836 lt!2174436)))

(declare-fun b!5330091 () Bool)

(declare-fun e!3310599 () Bool)

(assert (=> b!5330091 (= e!3310599 e!3310595)))

(declare-fun res!2260839 () Bool)

(assert (=> b!5330091 (=> res!2260839 e!3310595)))

(assert (=> b!5330091 (= res!2260839 call!380818)))

(declare-fun b!5330092 () Bool)

(assert (=> b!5330092 (= e!3310598 e!3310599)))

(declare-fun res!2260833 () Bool)

(assert (=> b!5330092 (=> (not res!2260833) (not e!3310599))))

(assert (=> b!5330092 (= res!2260833 (not lt!2174436))))

(declare-fun b!5330093 () Bool)

(assert (=> b!5330093 (= e!3310596 (= (head!11426 s!2326) (c!926649 r!7292)))))

(declare-fun b!5330094 () Bool)

(assert (=> b!5330094 (= e!3310600 (nullable!5166 r!7292))))

(declare-fun b!5330095 () Bool)

(declare-fun res!2260832 () Bool)

(assert (=> b!5330095 (=> (not res!2260832) (not e!3310596))))

(assert (=> b!5330095 (= res!2260832 (isEmpty!33139 (tail!10523 s!2326)))))

(declare-fun bm!380813 () Bool)

(assert (=> bm!380813 (= call!380818 (isEmpty!33139 s!2326))))

(assert (= (and d!1711316 c!926871) b!5330094))

(assert (= (and d!1711316 (not c!926871)) b!5330085))

(assert (= (and d!1711316 c!926873) b!5330089))

(assert (= (and d!1711316 (not c!926873)) b!5330084))

(assert (= (and b!5330084 c!926872) b!5330082))

(assert (= (and b!5330084 (not c!926872)) b!5330086))

(assert (= (and b!5330086 (not res!2260837)) b!5330090))

(assert (= (and b!5330090 res!2260836) b!5330083))

(assert (= (and b!5330083 res!2260834) b!5330095))

(assert (= (and b!5330095 res!2260832) b!5330093))

(assert (= (and b!5330090 (not res!2260838)) b!5330092))

(assert (= (and b!5330092 res!2260833) b!5330091))

(assert (= (and b!5330091 (not res!2260839)) b!5330087))

(assert (= (and b!5330087 (not res!2260835)) b!5330088))

(assert (= (or b!5330089 b!5330083 b!5330091) bm!380813))

(declare-fun m!6363528 () Bool)

(assert (=> b!5330085 m!6363528))

(assert (=> b!5330085 m!6363528))

(declare-fun m!6363530 () Bool)

(assert (=> b!5330085 m!6363530))

(declare-fun m!6363532 () Bool)

(assert (=> b!5330085 m!6363532))

(assert (=> b!5330085 m!6363530))

(assert (=> b!5330085 m!6363532))

(declare-fun m!6363534 () Bool)

(assert (=> b!5330085 m!6363534))

(assert (=> d!1711316 m!6363526))

(assert (=> d!1711316 m!6362890))

(assert (=> b!5330087 m!6363532))

(assert (=> b!5330087 m!6363532))

(declare-fun m!6363536 () Bool)

(assert (=> b!5330087 m!6363536))

(assert (=> bm!380813 m!6363526))

(assert (=> b!5330095 m!6363532))

(assert (=> b!5330095 m!6363532))

(assert (=> b!5330095 m!6363536))

(assert (=> b!5330088 m!6363528))

(declare-fun m!6363538 () Bool)

(assert (=> b!5330094 m!6363538))

(assert (=> b!5330093 m!6363528))

(assert (=> b!5329324 d!1711316))

(declare-fun d!1711318 () Bool)

(assert (=> d!1711318 (= (matchR!7182 r!7292 s!2326) (matchRSpec!2100 r!7292 s!2326))))

(declare-fun lt!2174439 () Unit!153506)

(declare-fun choose!39922 (Regex!14997 List!61290) Unit!153506)

(assert (=> d!1711318 (= lt!2174439 (choose!39922 r!7292 s!2326))))

(assert (=> d!1711318 (validRegex!6733 r!7292)))

(assert (=> d!1711318 (= (mainMatchTheorem!2100 r!7292 s!2326) lt!2174439)))

(declare-fun bs!1235247 () Bool)

(assert (= bs!1235247 d!1711318))

(assert (=> bs!1235247 m!6362878))

(assert (=> bs!1235247 m!6362876))

(declare-fun m!6363540 () Bool)

(assert (=> bs!1235247 m!6363540))

(assert (=> bs!1235247 m!6362890))

(assert (=> b!5329324 d!1711318))

(declare-fun d!1711320 () Bool)

(declare-fun lt!2174442 () Int)

(assert (=> d!1711320 (>= lt!2174442 0)))

(declare-fun e!3310603 () Int)

(assert (=> d!1711320 (= lt!2174442 e!3310603)))

(declare-fun c!926876 () Bool)

(assert (=> d!1711320 (= c!926876 ((_ is Cons!61168) lt!2174315))))

(assert (=> d!1711320 (= (zipperDepthTotal!150 lt!2174315) lt!2174442)))

(declare-fun b!5330100 () Bool)

(assert (=> b!5330100 (= e!3310603 (+ (contextDepthTotal!130 (h!67616 lt!2174315)) (zipperDepthTotal!150 (t!374507 lt!2174315))))))

(declare-fun b!5330101 () Bool)

(assert (=> b!5330101 (= e!3310603 0)))

(assert (= (and d!1711320 c!926876) b!5330100))

(assert (= (and d!1711320 (not c!926876)) b!5330101))

(declare-fun m!6363542 () Bool)

(assert (=> b!5330100 m!6363542))

(declare-fun m!6363544 () Bool)

(assert (=> b!5330100 m!6363544))

(assert (=> b!5329348 d!1711320))

(declare-fun d!1711322 () Bool)

(declare-fun lt!2174443 () Int)

(assert (=> d!1711322 (>= lt!2174443 0)))

(declare-fun e!3310604 () Int)

(assert (=> d!1711322 (= lt!2174443 e!3310604)))

(declare-fun c!926877 () Bool)

(assert (=> d!1711322 (= c!926877 ((_ is Cons!61168) zl!343))))

(assert (=> d!1711322 (= (zipperDepthTotal!150 zl!343) lt!2174443)))

(declare-fun b!5330102 () Bool)

(assert (=> b!5330102 (= e!3310604 (+ (contextDepthTotal!130 (h!67616 zl!343)) (zipperDepthTotal!150 (t!374507 zl!343))))))

(declare-fun b!5330103 () Bool)

(assert (=> b!5330103 (= e!3310604 0)))

(assert (= (and d!1711322 c!926877) b!5330102))

(assert (= (and d!1711322 (not c!926877)) b!5330103))

(assert (=> b!5330102 m!6362992))

(declare-fun m!6363546 () Bool)

(assert (=> b!5330102 m!6363546))

(assert (=> b!5329348 d!1711322))

(declare-fun bs!1235248 () Bool)

(declare-fun d!1711324 () Bool)

(assert (= bs!1235248 (and d!1711324 b!5329319)))

(declare-fun lambda!272381 () Int)

(assert (=> bs!1235248 (= lambda!272381 lambda!272305)))

(declare-fun bs!1235249 () Bool)

(assert (= bs!1235249 (and d!1711324 d!1711294)))

(assert (=> bs!1235249 (= lambda!272381 lambda!272372)))

(assert (=> d!1711324 (= (inv!80739 setElem!34353) (forall!14415 (exprs!4881 setElem!34353) lambda!272381))))

(declare-fun bs!1235250 () Bool)

(assert (= bs!1235250 d!1711324))

(declare-fun m!6363548 () Bool)

(assert (=> bs!1235250 m!6363548))

(assert (=> setNonEmpty!34353 d!1711324))

(declare-fun d!1711326 () Bool)

(assert (=> d!1711326 (= (isEmpty!33136 (t!374507 zl!343)) ((_ is Nil!61168) (t!374507 zl!343)))))

(assert (=> b!5329347 d!1711326))

(declare-fun d!1711328 () Bool)

(declare-fun lt!2174446 () Regex!14997)

(assert (=> d!1711328 (validRegex!6733 lt!2174446)))

(assert (=> d!1711328 (= lt!2174446 (generalisedUnion!926 (unfocusZipperList!439 zl!343)))))

(assert (=> d!1711328 (= (unfocusZipper!739 zl!343) lt!2174446)))

(declare-fun bs!1235251 () Bool)

(assert (= bs!1235251 d!1711328))

(declare-fun m!6363550 () Bool)

(assert (=> bs!1235251 m!6363550))

(assert (=> bs!1235251 m!6362994))

(assert (=> bs!1235251 m!6362994))

(assert (=> bs!1235251 m!6362996))

(assert (=> b!5329320 d!1711328))

(declare-fun d!1711330 () Bool)

(assert (=> d!1711330 (= (nullable!5166 (regOne!30506 (regOne!30506 r!7292))) (nullableFct!1506 (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun bs!1235252 () Bool)

(assert (= bs!1235252 d!1711330))

(declare-fun m!6363552 () Bool)

(assert (=> bs!1235252 m!6363552))

(assert (=> b!5329321 d!1711330))

(declare-fun d!1711332 () Bool)

(declare-fun e!3310607 () Bool)

(assert (=> d!1711332 e!3310607))

(declare-fun res!2260842 () Bool)

(assert (=> d!1711332 (=> (not res!2260842) (not e!3310607))))

(declare-fun lt!2174449 () List!61292)

(declare-fun noDuplicate!1309 (List!61292) Bool)

(assert (=> d!1711332 (= res!2260842 (noDuplicate!1309 lt!2174449))))

(declare-fun choose!39923 ((InoxSet Context!8762)) List!61292)

(assert (=> d!1711332 (= lt!2174449 (choose!39923 z!1189))))

(assert (=> d!1711332 (= (toList!8781 z!1189) lt!2174449)))

(declare-fun b!5330106 () Bool)

(declare-fun content!10909 (List!61292) (InoxSet Context!8762))

(assert (=> b!5330106 (= e!3310607 (= (content!10909 lt!2174449) z!1189))))

(assert (= (and d!1711332 res!2260842) b!5330106))

(declare-fun m!6363554 () Bool)

(assert (=> d!1711332 m!6363554))

(declare-fun m!6363556 () Bool)

(assert (=> d!1711332 m!6363556))

(declare-fun m!6363558 () Bool)

(assert (=> b!5330106 m!6363558))

(assert (=> b!5329341 d!1711332))

(declare-fun d!1711334 () Bool)

(assert (=> d!1711334 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326)) (not (isEmpty!33140 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326))))))

(declare-fun bs!1235253 () Bool)

(assert (= bs!1235253 d!1711334))

(assert (=> bs!1235253 m!6362976))

(declare-fun m!6363560 () Bool)

(assert (=> bs!1235253 m!6363560))

(assert (=> b!5329319 d!1711334))

(declare-fun bs!1235254 () Bool)

(declare-fun d!1711336 () Bool)

(assert (= bs!1235254 (and d!1711336 b!5329333)))

(declare-fun lambda!272382 () Int)

(assert (=> bs!1235254 (not (= lambda!272382 lambda!272301))))

(assert (=> bs!1235254 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272382 lambda!272300))))

(declare-fun bs!1235255 () Bool)

(assert (= bs!1235255 (and d!1711336 b!5330051)))

(assert (=> bs!1235255 (not (= lambda!272382 lambda!272377))))

(declare-fun bs!1235256 () Bool)

(assert (= bs!1235256 (and d!1711336 b!5329319)))

(assert (=> bs!1235256 (not (= lambda!272382 lambda!272304))))

(declare-fun bs!1235257 () Bool)

(assert (= bs!1235257 (and d!1711336 d!1711250)))

(assert (=> bs!1235257 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272382 lambda!272362))))

(declare-fun bs!1235258 () Bool)

(assert (= bs!1235258 (and d!1711336 d!1711262)))

(assert (=> bs!1235258 (not (= lambda!272382 lambda!272369))))

(assert (=> bs!1235258 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272382 lambda!272368))))

(assert (=> bs!1235256 (= lambda!272382 lambda!272303)))

(declare-fun bs!1235259 () Bool)

(assert (= bs!1235259 (and d!1711336 b!5330052)))

(assert (=> bs!1235259 (not (= lambda!272382 lambda!272378))))

(assert (=> d!1711336 true))

(assert (=> d!1711336 true))

(assert (=> d!1711336 true))

(declare-fun bs!1235260 () Bool)

(assert (= bs!1235260 d!1711336))

(declare-fun lambda!272383 () Int)

(assert (=> bs!1235260 (not (= lambda!272383 lambda!272382))))

(assert (=> bs!1235254 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272383 lambda!272301))))

(assert (=> bs!1235254 (not (= lambda!272383 lambda!272300))))

(assert (=> bs!1235255 (not (= lambda!272383 lambda!272377))))

(assert (=> bs!1235256 (= lambda!272383 lambda!272304)))

(assert (=> bs!1235257 (not (= lambda!272383 lambda!272362))))

(assert (=> bs!1235258 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272383 lambda!272369))))

(assert (=> bs!1235258 (not (= lambda!272383 lambda!272368))))

(assert (=> bs!1235256 (not (= lambda!272383 lambda!272303))))

(assert (=> bs!1235259 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272383 lambda!272378))))

(assert (=> d!1711336 true))

(assert (=> d!1711336 true))

(assert (=> d!1711336 true))

(assert (=> d!1711336 (= (Exists!2178 lambda!272382) (Exists!2178 lambda!272383))))

(declare-fun lt!2174450 () Unit!153506)

(assert (=> d!1711336 (= lt!2174450 (choose!39919 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326))))

(assert (=> d!1711336 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711336 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!832 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326) lt!2174450)))

(declare-fun m!6363562 () Bool)

(assert (=> bs!1235260 m!6363562))

(declare-fun m!6363564 () Bool)

(assert (=> bs!1235260 m!6363564))

(declare-fun m!6363566 () Bool)

(assert (=> bs!1235260 m!6363566))

(declare-fun m!6363568 () Bool)

(assert (=> bs!1235260 m!6363568))

(assert (=> b!5329319 d!1711336))

(declare-fun b!5330107 () Bool)

(declare-fun e!3310608 () Bool)

(declare-fun lt!2174451 () Bool)

(assert (=> b!5330107 (= e!3310608 (not lt!2174451))))

(declare-fun b!5330108 () Bool)

(declare-fun res!2260845 () Bool)

(declare-fun e!3310610 () Bool)

(assert (=> b!5330108 (=> (not res!2260845) (not e!3310610))))

(declare-fun call!380819 () Bool)

(assert (=> b!5330108 (= res!2260845 (not call!380819))))

(declare-fun d!1711338 () Bool)

(declare-fun e!3310611 () Bool)

(assert (=> d!1711338 e!3310611))

(declare-fun c!926880 () Bool)

(assert (=> d!1711338 (= c!926880 ((_ is EmptyExpr!14997) lt!2174304))))

(declare-fun e!3310614 () Bool)

(assert (=> d!1711338 (= lt!2174451 e!3310614)))

(declare-fun c!926878 () Bool)

(assert (=> d!1711338 (= c!926878 (isEmpty!33139 s!2326))))

(assert (=> d!1711338 (validRegex!6733 lt!2174304)))

(assert (=> d!1711338 (= (matchR!7182 lt!2174304 s!2326) lt!2174451)))

(declare-fun b!5330109 () Bool)

(assert (=> b!5330109 (= e!3310611 e!3310608)))

(declare-fun c!926879 () Bool)

(assert (=> b!5330109 (= c!926879 ((_ is EmptyLang!14997) lt!2174304))))

(declare-fun b!5330110 () Bool)

(assert (=> b!5330110 (= e!3310614 (matchR!7182 (derivativeStep!4175 lt!2174304 (head!11426 s!2326)) (tail!10523 s!2326)))))

(declare-fun b!5330111 () Bool)

(declare-fun res!2260848 () Bool)

(declare-fun e!3310612 () Bool)

(assert (=> b!5330111 (=> res!2260848 e!3310612)))

(assert (=> b!5330111 (= res!2260848 (not ((_ is ElementMatch!14997) lt!2174304)))))

(assert (=> b!5330111 (= e!3310608 e!3310612)))

(declare-fun b!5330112 () Bool)

(declare-fun res!2260846 () Bool)

(declare-fun e!3310609 () Bool)

(assert (=> b!5330112 (=> res!2260846 e!3310609)))

(assert (=> b!5330112 (= res!2260846 (not (isEmpty!33139 (tail!10523 s!2326))))))

(declare-fun b!5330113 () Bool)

(assert (=> b!5330113 (= e!3310609 (not (= (head!11426 s!2326) (c!926649 lt!2174304))))))

(declare-fun b!5330114 () Bool)

(assert (=> b!5330114 (= e!3310611 (= lt!2174451 call!380819))))

(declare-fun b!5330115 () Bool)

(declare-fun res!2260849 () Bool)

(assert (=> b!5330115 (=> res!2260849 e!3310612)))

(assert (=> b!5330115 (= res!2260849 e!3310610)))

(declare-fun res!2260847 () Bool)

(assert (=> b!5330115 (=> (not res!2260847) (not e!3310610))))

(assert (=> b!5330115 (= res!2260847 lt!2174451)))

(declare-fun b!5330116 () Bool)

(declare-fun e!3310613 () Bool)

(assert (=> b!5330116 (= e!3310613 e!3310609)))

(declare-fun res!2260850 () Bool)

(assert (=> b!5330116 (=> res!2260850 e!3310609)))

(assert (=> b!5330116 (= res!2260850 call!380819)))

(declare-fun b!5330117 () Bool)

(assert (=> b!5330117 (= e!3310612 e!3310613)))

(declare-fun res!2260844 () Bool)

(assert (=> b!5330117 (=> (not res!2260844) (not e!3310613))))

(assert (=> b!5330117 (= res!2260844 (not lt!2174451))))

(declare-fun b!5330118 () Bool)

(assert (=> b!5330118 (= e!3310610 (= (head!11426 s!2326) (c!926649 lt!2174304)))))

(declare-fun b!5330119 () Bool)

(assert (=> b!5330119 (= e!3310614 (nullable!5166 lt!2174304))))

(declare-fun b!5330120 () Bool)

(declare-fun res!2260843 () Bool)

(assert (=> b!5330120 (=> (not res!2260843) (not e!3310610))))

(assert (=> b!5330120 (= res!2260843 (isEmpty!33139 (tail!10523 s!2326)))))

(declare-fun bm!380814 () Bool)

(assert (=> bm!380814 (= call!380819 (isEmpty!33139 s!2326))))

(assert (= (and d!1711338 c!926878) b!5330119))

(assert (= (and d!1711338 (not c!926878)) b!5330110))

(assert (= (and d!1711338 c!926880) b!5330114))

(assert (= (and d!1711338 (not c!926880)) b!5330109))

(assert (= (and b!5330109 c!926879) b!5330107))

(assert (= (and b!5330109 (not c!926879)) b!5330111))

(assert (= (and b!5330111 (not res!2260848)) b!5330115))

(assert (= (and b!5330115 res!2260847) b!5330108))

(assert (= (and b!5330108 res!2260845) b!5330120))

(assert (= (and b!5330120 res!2260843) b!5330118))

(assert (= (and b!5330115 (not res!2260849)) b!5330117))

(assert (= (and b!5330117 res!2260844) b!5330116))

(assert (= (and b!5330116 (not res!2260850)) b!5330112))

(assert (= (and b!5330112 (not res!2260846)) b!5330113))

(assert (= (or b!5330114 b!5330108 b!5330116) bm!380814))

(assert (=> b!5330110 m!6363528))

(assert (=> b!5330110 m!6363528))

(declare-fun m!6363570 () Bool)

(assert (=> b!5330110 m!6363570))

(assert (=> b!5330110 m!6363532))

(assert (=> b!5330110 m!6363570))

(assert (=> b!5330110 m!6363532))

(declare-fun m!6363572 () Bool)

(assert (=> b!5330110 m!6363572))

(assert (=> d!1711338 m!6363526))

(declare-fun m!6363574 () Bool)

(assert (=> d!1711338 m!6363574))

(assert (=> b!5330112 m!6363532))

(assert (=> b!5330112 m!6363532))

(assert (=> b!5330112 m!6363536))

(assert (=> bm!380814 m!6363526))

(assert (=> b!5330120 m!6363532))

(assert (=> b!5330120 m!6363532))

(assert (=> b!5330120 m!6363536))

(assert (=> b!5330113 m!6363528))

(declare-fun m!6363576 () Bool)

(assert (=> b!5330119 m!6363576))

(assert (=> b!5330118 m!6363528))

(assert (=> b!5329319 d!1711338))

(declare-fun d!1711340 () Bool)

(declare-fun res!2260855 () Bool)

(declare-fun e!3310619 () Bool)

(assert (=> d!1711340 (=> res!2260855 e!3310619)))

(assert (=> d!1711340 (= res!2260855 ((_ is Nil!61167) (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> d!1711340 (= (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272305) e!3310619)))

(declare-fun b!5330125 () Bool)

(declare-fun e!3310620 () Bool)

(assert (=> b!5330125 (= e!3310619 e!3310620)))

(declare-fun res!2260856 () Bool)

(assert (=> b!5330125 (=> (not res!2260856) (not e!3310620))))

(declare-fun dynLambda!24187 (Int Regex!14997) Bool)

(assert (=> b!5330125 (= res!2260856 (dynLambda!24187 lambda!272305 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5330126 () Bool)

(assert (=> b!5330126 (= e!3310620 (forall!14415 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))) lambda!272305))))

(assert (= (and d!1711340 (not res!2260855)) b!5330125))

(assert (= (and b!5330125 res!2260856) b!5330126))

(declare-fun b_lambda!204973 () Bool)

(assert (=> (not b_lambda!204973) (not b!5330125)))

(declare-fun m!6363578 () Bool)

(assert (=> b!5330125 m!6363578))

(declare-fun m!6363580 () Bool)

(assert (=> b!5330126 m!6363580))

(assert (=> b!5329319 d!1711340))

(declare-fun d!1711342 () Bool)

(assert (=> d!1711342 (= (matchR!7182 lt!2174318 s!2326) (matchRSpec!2100 lt!2174318 s!2326))))

(declare-fun lt!2174452 () Unit!153506)

(assert (=> d!1711342 (= lt!2174452 (choose!39922 lt!2174318 s!2326))))

(assert (=> d!1711342 (validRegex!6733 lt!2174318)))

(assert (=> d!1711342 (= (mainMatchTheorem!2100 lt!2174318 s!2326) lt!2174452)))

(declare-fun bs!1235261 () Bool)

(assert (= bs!1235261 d!1711342))

(assert (=> bs!1235261 m!6362952))

(assert (=> bs!1235261 m!6362972))

(declare-fun m!6363582 () Bool)

(assert (=> bs!1235261 m!6363582))

(declare-fun m!6363584 () Bool)

(assert (=> bs!1235261 m!6363584))

(assert (=> b!5329319 d!1711342))

(declare-fun d!1711344 () Bool)

(declare-fun c!926881 () Bool)

(assert (=> d!1711344 (= c!926881 (isEmpty!33139 s!2326))))

(declare-fun e!3310621 () Bool)

(assert (=> d!1711344 (= (matchZipper!1241 lt!2174322 s!2326) e!3310621)))

(declare-fun b!5330127 () Bool)

(assert (=> b!5330127 (= e!3310621 (nullableZipper!1354 lt!2174322))))

(declare-fun b!5330128 () Bool)

(assert (=> b!5330128 (= e!3310621 (matchZipper!1241 (derivationStepZipper!1238 lt!2174322 (head!11426 s!2326)) (tail!10523 s!2326)))))

(assert (= (and d!1711344 c!926881) b!5330127))

(assert (= (and d!1711344 (not c!926881)) b!5330128))

(assert (=> d!1711344 m!6363526))

(declare-fun m!6363586 () Bool)

(assert (=> b!5330127 m!6363586))

(assert (=> b!5330128 m!6363528))

(assert (=> b!5330128 m!6363528))

(declare-fun m!6363588 () Bool)

(assert (=> b!5330128 m!6363588))

(assert (=> b!5330128 m!6363532))

(assert (=> b!5330128 m!6363588))

(assert (=> b!5330128 m!6363532))

(declare-fun m!6363590 () Bool)

(assert (=> b!5330128 m!6363590))

(assert (=> b!5329319 d!1711344))

(declare-fun bs!1235262 () Bool)

(declare-fun d!1711346 () Bool)

(assert (= bs!1235262 (and d!1711346 b!5329319)))

(declare-fun lambda!272384 () Int)

(assert (=> bs!1235262 (= lambda!272384 lambda!272305)))

(declare-fun bs!1235263 () Bool)

(assert (= bs!1235263 (and d!1711346 d!1711294)))

(assert (=> bs!1235263 (= lambda!272384 lambda!272372)))

(declare-fun bs!1235264 () Bool)

(assert (= bs!1235264 (and d!1711346 d!1711324)))

(assert (=> bs!1235264 (= lambda!272384 lambda!272381)))

(declare-fun b!5330129 () Bool)

(declare-fun e!3310624 () Bool)

(declare-fun lt!2174453 () Regex!14997)

(assert (=> b!5330129 (= e!3310624 (= lt!2174453 (head!11427 lt!2174307)))))

(declare-fun b!5330130 () Bool)

(declare-fun e!3310627 () Bool)

(assert (=> b!5330130 (= e!3310627 (isEmptyExpr!889 lt!2174453))))

(declare-fun e!3310623 () Bool)

(assert (=> d!1711346 e!3310623))

(declare-fun res!2260858 () Bool)

(assert (=> d!1711346 (=> (not res!2260858) (not e!3310623))))

(assert (=> d!1711346 (= res!2260858 (validRegex!6733 lt!2174453))))

(declare-fun e!3310622 () Regex!14997)

(assert (=> d!1711346 (= lt!2174453 e!3310622)))

(declare-fun c!926884 () Bool)

(declare-fun e!3310626 () Bool)

(assert (=> d!1711346 (= c!926884 e!3310626)))

(declare-fun res!2260857 () Bool)

(assert (=> d!1711346 (=> (not res!2260857) (not e!3310626))))

(assert (=> d!1711346 (= res!2260857 ((_ is Cons!61167) lt!2174307))))

(assert (=> d!1711346 (forall!14415 lt!2174307 lambda!272384)))

(assert (=> d!1711346 (= (generalisedConcat!666 lt!2174307) lt!2174453)))

(declare-fun b!5330131 () Bool)

(assert (=> b!5330131 (= e!3310626 (isEmpty!33135 (t!374506 lt!2174307)))))

(declare-fun b!5330132 () Bool)

(assert (=> b!5330132 (= e!3310623 e!3310627)))

(declare-fun c!926885 () Bool)

(assert (=> b!5330132 (= c!926885 (isEmpty!33135 lt!2174307))))

(declare-fun b!5330133 () Bool)

(assert (=> b!5330133 (= e!3310622 (h!67615 lt!2174307))))

(declare-fun b!5330134 () Bool)

(declare-fun e!3310625 () Regex!14997)

(assert (=> b!5330134 (= e!3310625 EmptyExpr!14997)))

(declare-fun b!5330135 () Bool)

(assert (=> b!5330135 (= e!3310624 (isConcat!412 lt!2174453))))

(declare-fun b!5330136 () Bool)

(assert (=> b!5330136 (= e!3310622 e!3310625)))

(declare-fun c!926883 () Bool)

(assert (=> b!5330136 (= c!926883 ((_ is Cons!61167) lt!2174307))))

(declare-fun b!5330137 () Bool)

(assert (=> b!5330137 (= e!3310625 (Concat!23842 (h!67615 lt!2174307) (generalisedConcat!666 (t!374506 lt!2174307))))))

(declare-fun b!5330138 () Bool)

(assert (=> b!5330138 (= e!3310627 e!3310624)))

(declare-fun c!926882 () Bool)

(assert (=> b!5330138 (= c!926882 (isEmpty!33135 (tail!10524 lt!2174307)))))

(assert (= (and d!1711346 res!2260857) b!5330131))

(assert (= (and d!1711346 c!926884) b!5330133))

(assert (= (and d!1711346 (not c!926884)) b!5330136))

(assert (= (and b!5330136 c!926883) b!5330137))

(assert (= (and b!5330136 (not c!926883)) b!5330134))

(assert (= (and d!1711346 res!2260858) b!5330132))

(assert (= (and b!5330132 c!926885) b!5330130))

(assert (= (and b!5330132 (not c!926885)) b!5330138))

(assert (= (and b!5330138 c!926882) b!5330129))

(assert (= (and b!5330138 (not c!926882)) b!5330135))

(declare-fun m!6363592 () Bool)

(assert (=> b!5330135 m!6363592))

(declare-fun m!6363594 () Bool)

(assert (=> b!5330130 m!6363594))

(declare-fun m!6363596 () Bool)

(assert (=> b!5330132 m!6363596))

(declare-fun m!6363598 () Bool)

(assert (=> b!5330131 m!6363598))

(declare-fun m!6363600 () Bool)

(assert (=> b!5330137 m!6363600))

(declare-fun m!6363602 () Bool)

(assert (=> d!1711346 m!6363602))

(declare-fun m!6363604 () Bool)

(assert (=> d!1711346 m!6363604))

(declare-fun m!6363606 () Bool)

(assert (=> b!5330138 m!6363606))

(assert (=> b!5330138 m!6363606))

(declare-fun m!6363608 () Bool)

(assert (=> b!5330138 m!6363608))

(declare-fun m!6363610 () Bool)

(assert (=> b!5330129 m!6363610))

(assert (=> b!5329319 d!1711346))

(declare-fun bs!1235265 () Bool)

(declare-fun b!5330147 () Bool)

(assert (= bs!1235265 (and b!5330147 d!1711336)))

(declare-fun lambda!272385 () Int)

(assert (=> bs!1235265 (not (= lambda!272385 lambda!272382))))

(declare-fun bs!1235266 () Bool)

(assert (= bs!1235266 (and b!5330147 b!5329333)))

(assert (=> bs!1235266 (not (= lambda!272385 lambda!272301))))

(assert (=> bs!1235265 (not (= lambda!272385 lambda!272383))))

(assert (=> bs!1235266 (not (= lambda!272385 lambda!272300))))

(declare-fun bs!1235267 () Bool)

(assert (= bs!1235267 (and b!5330147 b!5330051)))

(assert (=> bs!1235267 (= (and (= (reg!15326 lt!2174318) (reg!15326 r!7292)) (= lt!2174318 r!7292)) (= lambda!272385 lambda!272377))))

(declare-fun bs!1235268 () Bool)

(assert (= bs!1235268 (and b!5330147 b!5329319)))

(assert (=> bs!1235268 (not (= lambda!272385 lambda!272304))))

(declare-fun bs!1235269 () Bool)

(assert (= bs!1235269 (and b!5330147 d!1711250)))

(assert (=> bs!1235269 (not (= lambda!272385 lambda!272362))))

(declare-fun bs!1235270 () Bool)

(assert (= bs!1235270 (and b!5330147 d!1711262)))

(assert (=> bs!1235270 (not (= lambda!272385 lambda!272369))))

(assert (=> bs!1235270 (not (= lambda!272385 lambda!272368))))

(assert (=> bs!1235268 (not (= lambda!272385 lambda!272303))))

(declare-fun bs!1235271 () Bool)

(assert (= bs!1235271 (and b!5330147 b!5330052)))

(assert (=> bs!1235271 (not (= lambda!272385 lambda!272378))))

(assert (=> b!5330147 true))

(assert (=> b!5330147 true))

(declare-fun bs!1235272 () Bool)

(declare-fun b!5330148 () Bool)

(assert (= bs!1235272 (and b!5330148 d!1711336)))

(declare-fun lambda!272386 () Int)

(assert (=> bs!1235272 (not (= lambda!272386 lambda!272382))))

(declare-fun bs!1235273 () Bool)

(assert (= bs!1235273 (and b!5330148 b!5329333)))

(assert (=> bs!1235273 (= (and (= (regOne!30506 lt!2174318) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174318) (regTwo!30506 r!7292))) (= lambda!272386 lambda!272301))))

(declare-fun bs!1235274 () Bool)

(assert (= bs!1235274 (and b!5330148 b!5330147)))

(assert (=> bs!1235274 (not (= lambda!272386 lambda!272385))))

(assert (=> bs!1235272 (= (and (= (regOne!30506 lt!2174318) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 lt!2174318) lt!2174318)) (= lambda!272386 lambda!272383))))

(assert (=> bs!1235273 (not (= lambda!272386 lambda!272300))))

(declare-fun bs!1235275 () Bool)

(assert (= bs!1235275 (and b!5330148 b!5330051)))

(assert (=> bs!1235275 (not (= lambda!272386 lambda!272377))))

(declare-fun bs!1235276 () Bool)

(assert (= bs!1235276 (and b!5330148 b!5329319)))

(assert (=> bs!1235276 (= (and (= (regOne!30506 lt!2174318) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 lt!2174318) lt!2174318)) (= lambda!272386 lambda!272304))))

(declare-fun bs!1235277 () Bool)

(assert (= bs!1235277 (and b!5330148 d!1711250)))

(assert (=> bs!1235277 (not (= lambda!272386 lambda!272362))))

(declare-fun bs!1235278 () Bool)

(assert (= bs!1235278 (and b!5330148 d!1711262)))

(assert (=> bs!1235278 (= (and (= (regOne!30506 lt!2174318) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174318) (regTwo!30506 r!7292))) (= lambda!272386 lambda!272369))))

(assert (=> bs!1235278 (not (= lambda!272386 lambda!272368))))

(assert (=> bs!1235276 (not (= lambda!272386 lambda!272303))))

(declare-fun bs!1235279 () Bool)

(assert (= bs!1235279 (and b!5330148 b!5330052)))

(assert (=> bs!1235279 (= (and (= (regOne!30506 lt!2174318) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174318) (regTwo!30506 r!7292))) (= lambda!272386 lambda!272378))))

(assert (=> b!5330148 true))

(assert (=> b!5330148 true))

(declare-fun d!1711348 () Bool)

(declare-fun c!926887 () Bool)

(assert (=> d!1711348 (= c!926887 ((_ is EmptyExpr!14997) lt!2174318))))

(declare-fun e!3310628 () Bool)

(assert (=> d!1711348 (= (matchRSpec!2100 lt!2174318 s!2326) e!3310628)))

(declare-fun b!5330139 () Bool)

(declare-fun res!2260861 () Bool)

(declare-fun e!3310629 () Bool)

(assert (=> b!5330139 (=> res!2260861 e!3310629)))

(declare-fun call!380820 () Bool)

(assert (=> b!5330139 (= res!2260861 call!380820)))

(declare-fun e!3310632 () Bool)

(assert (=> b!5330139 (= e!3310632 e!3310629)))

(declare-fun b!5330140 () Bool)

(declare-fun e!3310631 () Bool)

(assert (=> b!5330140 (= e!3310631 (matchRSpec!2100 (regTwo!30507 lt!2174318) s!2326))))

(declare-fun b!5330141 () Bool)

(declare-fun c!926889 () Bool)

(assert (=> b!5330141 (= c!926889 ((_ is ElementMatch!14997) lt!2174318))))

(declare-fun e!3310634 () Bool)

(declare-fun e!3310633 () Bool)

(assert (=> b!5330141 (= e!3310634 e!3310633)))

(declare-fun b!5330142 () Bool)

(assert (=> b!5330142 (= e!3310628 call!380820)))

(declare-fun c!926888 () Bool)

(declare-fun call!380821 () Bool)

(declare-fun bm!380815 () Bool)

(assert (=> bm!380815 (= call!380821 (Exists!2178 (ite c!926888 lambda!272385 lambda!272386)))))

(declare-fun b!5330143 () Bool)

(declare-fun e!3310630 () Bool)

(assert (=> b!5330143 (= e!3310630 e!3310631)))

(declare-fun res!2260860 () Bool)

(assert (=> b!5330143 (= res!2260860 (matchRSpec!2100 (regOne!30507 lt!2174318) s!2326))))

(assert (=> b!5330143 (=> res!2260860 e!3310631)))

(declare-fun b!5330144 () Bool)

(assert (=> b!5330144 (= e!3310630 e!3310632)))

(assert (=> b!5330144 (= c!926888 ((_ is Star!14997) lt!2174318))))

(declare-fun bm!380816 () Bool)

(assert (=> bm!380816 (= call!380820 (isEmpty!33139 s!2326))))

(declare-fun b!5330145 () Bool)

(assert (=> b!5330145 (= e!3310628 e!3310634)))

(declare-fun res!2260859 () Bool)

(assert (=> b!5330145 (= res!2260859 (not ((_ is EmptyLang!14997) lt!2174318)))))

(assert (=> b!5330145 (=> (not res!2260859) (not e!3310634))))

(declare-fun b!5330146 () Bool)

(declare-fun c!926886 () Bool)

(assert (=> b!5330146 (= c!926886 ((_ is Union!14997) lt!2174318))))

(assert (=> b!5330146 (= e!3310633 e!3310630)))

(assert (=> b!5330147 (= e!3310629 call!380821)))

(assert (=> b!5330148 (= e!3310632 call!380821)))

(declare-fun b!5330149 () Bool)

(assert (=> b!5330149 (= e!3310633 (= s!2326 (Cons!61166 (c!926649 lt!2174318) Nil!61166)))))

(assert (= (and d!1711348 c!926887) b!5330142))

(assert (= (and d!1711348 (not c!926887)) b!5330145))

(assert (= (and b!5330145 res!2260859) b!5330141))

(assert (= (and b!5330141 c!926889) b!5330149))

(assert (= (and b!5330141 (not c!926889)) b!5330146))

(assert (= (and b!5330146 c!926886) b!5330143))

(assert (= (and b!5330146 (not c!926886)) b!5330144))

(assert (= (and b!5330143 (not res!2260860)) b!5330140))

(assert (= (and b!5330144 c!926888) b!5330139))

(assert (= (and b!5330144 (not c!926888)) b!5330148))

(assert (= (and b!5330139 (not res!2260861)) b!5330147))

(assert (= (or b!5330147 b!5330148) bm!380815))

(assert (= (or b!5330142 b!5330139) bm!380816))

(declare-fun m!6363612 () Bool)

(assert (=> b!5330140 m!6363612))

(declare-fun m!6363614 () Bool)

(assert (=> bm!380815 m!6363614))

(declare-fun m!6363616 () Bool)

(assert (=> b!5330143 m!6363616))

(assert (=> bm!380816 m!6363526))

(assert (=> b!5329319 d!1711348))

(declare-fun bs!1235280 () Bool)

(declare-fun d!1711350 () Bool)

(assert (= bs!1235280 (and d!1711350 d!1711336)))

(declare-fun lambda!272387 () Int)

(assert (=> bs!1235280 (= lambda!272387 lambda!272382)))

(declare-fun bs!1235281 () Bool)

(assert (= bs!1235281 (and d!1711350 b!5329333)))

(assert (=> bs!1235281 (not (= lambda!272387 lambda!272301))))

(declare-fun bs!1235282 () Bool)

(assert (= bs!1235282 (and d!1711350 b!5330147)))

(assert (=> bs!1235282 (not (= lambda!272387 lambda!272385))))

(assert (=> bs!1235280 (not (= lambda!272387 lambda!272383))))

(assert (=> bs!1235281 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272387 lambda!272300))))

(declare-fun bs!1235283 () Bool)

(assert (= bs!1235283 (and d!1711350 b!5330051)))

(assert (=> bs!1235283 (not (= lambda!272387 lambda!272377))))

(declare-fun bs!1235284 () Bool)

(assert (= bs!1235284 (and d!1711350 b!5329319)))

(assert (=> bs!1235284 (not (= lambda!272387 lambda!272304))))

(declare-fun bs!1235285 () Bool)

(assert (= bs!1235285 (and d!1711350 d!1711250)))

(assert (=> bs!1235285 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272387 lambda!272362))))

(declare-fun bs!1235286 () Bool)

(assert (= bs!1235286 (and d!1711350 d!1711262)))

(assert (=> bs!1235286 (not (= lambda!272387 lambda!272369))))

(declare-fun bs!1235287 () Bool)

(assert (= bs!1235287 (and d!1711350 b!5330148)))

(assert (=> bs!1235287 (not (= lambda!272387 lambda!272386))))

(assert (=> bs!1235286 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272387 lambda!272368))))

(assert (=> bs!1235284 (= lambda!272387 lambda!272303)))

(declare-fun bs!1235288 () Bool)

(assert (= bs!1235288 (and d!1711350 b!5330052)))

(assert (=> bs!1235288 (not (= lambda!272387 lambda!272378))))

(assert (=> d!1711350 true))

(assert (=> d!1711350 true))

(assert (=> d!1711350 true))

(assert (=> d!1711350 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326)) (Exists!2178 lambda!272387))))

(declare-fun lt!2174454 () Unit!153506)

(assert (=> d!1711350 (= lt!2174454 (choose!39918 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326))))

(assert (=> d!1711350 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711350 (= (lemmaFindConcatSeparationEquivalentToExists!1286 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326) lt!2174454)))

(declare-fun bs!1235289 () Bool)

(assert (= bs!1235289 d!1711350))

(declare-fun m!6363618 () Bool)

(assert (=> bs!1235289 m!6363618))

(declare-fun m!6363620 () Bool)

(assert (=> bs!1235289 m!6363620))

(assert (=> bs!1235289 m!6362976))

(assert (=> bs!1235289 m!6363568))

(assert (=> bs!1235289 m!6362976))

(assert (=> bs!1235289 m!6362978))

(assert (=> b!5329319 d!1711350))

(declare-fun d!1711352 () Bool)

(assert (=> d!1711352 (= (matchR!7182 lt!2174304 s!2326) (matchZipper!1241 lt!2174322 s!2326))))

(declare-fun lt!2174457 () Unit!153506)

(declare-fun choose!39924 ((InoxSet Context!8762) List!61292 Regex!14997 List!61290) Unit!153506)

(assert (=> d!1711352 (= lt!2174457 (choose!39924 lt!2174322 lt!2174315 lt!2174304 s!2326))))

(assert (=> d!1711352 (validRegex!6733 lt!2174304)))

(assert (=> d!1711352 (= (theoremZipperRegexEquiv!395 lt!2174322 lt!2174315 lt!2174304 s!2326) lt!2174457)))

(declare-fun bs!1235290 () Bool)

(assert (= bs!1235290 d!1711352))

(assert (=> bs!1235290 m!6362968))

(assert (=> bs!1235290 m!6362970))

(declare-fun m!6363622 () Bool)

(assert (=> bs!1235290 m!6363622))

(assert (=> bs!1235290 m!6363574))

(assert (=> b!5329319 d!1711352))

(declare-fun d!1711354 () Bool)

(assert (=> d!1711354 (= (matchR!7182 lt!2174304 s!2326) (matchRSpec!2100 lt!2174304 s!2326))))

(declare-fun lt!2174458 () Unit!153506)

(assert (=> d!1711354 (= lt!2174458 (choose!39922 lt!2174304 s!2326))))

(assert (=> d!1711354 (validRegex!6733 lt!2174304)))

(assert (=> d!1711354 (= (mainMatchTheorem!2100 lt!2174304 s!2326) lt!2174458)))

(declare-fun bs!1235291 () Bool)

(assert (= bs!1235291 d!1711354))

(assert (=> bs!1235291 m!6362968))

(assert (=> bs!1235291 m!6362954))

(declare-fun m!6363624 () Bool)

(assert (=> bs!1235291 m!6363624))

(assert (=> bs!1235291 m!6363574))

(assert (=> b!5329319 d!1711354))

(declare-fun bs!1235292 () Bool)

(declare-fun d!1711356 () Bool)

(assert (= bs!1235292 (and d!1711356 b!5329319)))

(declare-fun lambda!272388 () Int)

(assert (=> bs!1235292 (= lambda!272388 lambda!272305)))

(declare-fun bs!1235293 () Bool)

(assert (= bs!1235293 (and d!1711356 d!1711294)))

(assert (=> bs!1235293 (= lambda!272388 lambda!272372)))

(declare-fun bs!1235294 () Bool)

(assert (= bs!1235294 (and d!1711356 d!1711324)))

(assert (=> bs!1235294 (= lambda!272388 lambda!272381)))

(declare-fun bs!1235295 () Bool)

(assert (= bs!1235295 (and d!1711356 d!1711346)))

(assert (=> bs!1235295 (= lambda!272388 lambda!272384)))

(declare-fun b!5330150 () Bool)

(declare-fun e!3310637 () Bool)

(declare-fun lt!2174459 () Regex!14997)

(assert (=> b!5330150 (= e!3310637 (= lt!2174459 (head!11427 lt!2174324)))))

(declare-fun b!5330151 () Bool)

(declare-fun e!3310640 () Bool)

(assert (=> b!5330151 (= e!3310640 (isEmptyExpr!889 lt!2174459))))

(declare-fun e!3310636 () Bool)

(assert (=> d!1711356 e!3310636))

(declare-fun res!2260863 () Bool)

(assert (=> d!1711356 (=> (not res!2260863) (not e!3310636))))

(assert (=> d!1711356 (= res!2260863 (validRegex!6733 lt!2174459))))

(declare-fun e!3310635 () Regex!14997)

(assert (=> d!1711356 (= lt!2174459 e!3310635)))

(declare-fun c!926892 () Bool)

(declare-fun e!3310639 () Bool)

(assert (=> d!1711356 (= c!926892 e!3310639)))

(declare-fun res!2260862 () Bool)

(assert (=> d!1711356 (=> (not res!2260862) (not e!3310639))))

(assert (=> d!1711356 (= res!2260862 ((_ is Cons!61167) lt!2174324))))

(assert (=> d!1711356 (forall!14415 lt!2174324 lambda!272388)))

(assert (=> d!1711356 (= (generalisedConcat!666 lt!2174324) lt!2174459)))

(declare-fun b!5330152 () Bool)

(assert (=> b!5330152 (= e!3310639 (isEmpty!33135 (t!374506 lt!2174324)))))

(declare-fun b!5330153 () Bool)

(assert (=> b!5330153 (= e!3310636 e!3310640)))

(declare-fun c!926893 () Bool)

(assert (=> b!5330153 (= c!926893 (isEmpty!33135 lt!2174324))))

(declare-fun b!5330154 () Bool)

(assert (=> b!5330154 (= e!3310635 (h!67615 lt!2174324))))

(declare-fun b!5330155 () Bool)

(declare-fun e!3310638 () Regex!14997)

(assert (=> b!5330155 (= e!3310638 EmptyExpr!14997)))

(declare-fun b!5330156 () Bool)

(assert (=> b!5330156 (= e!3310637 (isConcat!412 lt!2174459))))

(declare-fun b!5330157 () Bool)

(assert (=> b!5330157 (= e!3310635 e!3310638)))

(declare-fun c!926891 () Bool)

(assert (=> b!5330157 (= c!926891 ((_ is Cons!61167) lt!2174324))))

(declare-fun b!5330158 () Bool)

(assert (=> b!5330158 (= e!3310638 (Concat!23842 (h!67615 lt!2174324) (generalisedConcat!666 (t!374506 lt!2174324))))))

(declare-fun b!5330159 () Bool)

(assert (=> b!5330159 (= e!3310640 e!3310637)))

(declare-fun c!926890 () Bool)

(assert (=> b!5330159 (= c!926890 (isEmpty!33135 (tail!10524 lt!2174324)))))

(assert (= (and d!1711356 res!2260862) b!5330152))

(assert (= (and d!1711356 c!926892) b!5330154))

(assert (= (and d!1711356 (not c!926892)) b!5330157))

(assert (= (and b!5330157 c!926891) b!5330158))

(assert (= (and b!5330157 (not c!926891)) b!5330155))

(assert (= (and d!1711356 res!2260863) b!5330153))

(assert (= (and b!5330153 c!926893) b!5330151))

(assert (= (and b!5330153 (not c!926893)) b!5330159))

(assert (= (and b!5330159 c!926890) b!5330150))

(assert (= (and b!5330159 (not c!926890)) b!5330156))

(declare-fun m!6363626 () Bool)

(assert (=> b!5330156 m!6363626))

(declare-fun m!6363628 () Bool)

(assert (=> b!5330151 m!6363628))

(declare-fun m!6363630 () Bool)

(assert (=> b!5330153 m!6363630))

(declare-fun m!6363632 () Bool)

(assert (=> b!5330152 m!6363632))

(declare-fun m!6363634 () Bool)

(assert (=> b!5330158 m!6363634))

(declare-fun m!6363636 () Bool)

(assert (=> d!1711356 m!6363636))

(declare-fun m!6363638 () Bool)

(assert (=> d!1711356 m!6363638))

(declare-fun m!6363640 () Bool)

(assert (=> b!5330159 m!6363640))

(assert (=> b!5330159 m!6363640))

(declare-fun m!6363642 () Bool)

(assert (=> b!5330159 m!6363642))

(declare-fun m!6363644 () Bool)

(assert (=> b!5330150 m!6363644))

(assert (=> b!5329319 d!1711356))

(declare-fun d!1711358 () Bool)

(assert (=> d!1711358 (= (Exists!2178 lambda!272304) (choose!39916 lambda!272304))))

(declare-fun bs!1235296 () Bool)

(assert (= bs!1235296 d!1711358))

(declare-fun m!6363646 () Bool)

(assert (=> bs!1235296 m!6363646))

(assert (=> b!5329319 d!1711358))

(declare-fun d!1711360 () Bool)

(assert (=> d!1711360 (= (Exists!2178 lambda!272303) (choose!39916 lambda!272303))))

(declare-fun bs!1235297 () Bool)

(assert (= bs!1235297 d!1711360))

(declare-fun m!6363648 () Bool)

(assert (=> bs!1235297 m!6363648))

(assert (=> b!5329319 d!1711360))

(declare-fun b!5330160 () Bool)

(declare-fun res!2260868 () Bool)

(declare-fun e!3310641 () Bool)

(assert (=> b!5330160 (=> (not res!2260868) (not e!3310641))))

(declare-fun lt!2174462 () Option!15108)

(assert (=> b!5330160 (= res!2260868 (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) (_1!35499 (get!21038 lt!2174462))))))

(declare-fun b!5330161 () Bool)

(declare-fun e!3310644 () Option!15108)

(assert (=> b!5330161 (= e!3310644 None!15107)))

(declare-fun b!5330162 () Bool)

(declare-fun e!3310645 () Bool)

(assert (=> b!5330162 (= e!3310645 (not (isDefined!11811 lt!2174462)))))

(declare-fun b!5330163 () Bool)

(declare-fun e!3310643 () Option!15108)

(assert (=> b!5330163 (= e!3310643 e!3310644)))

(declare-fun c!926895 () Bool)

(assert (=> b!5330163 (= c!926895 ((_ is Nil!61166) s!2326))))

(declare-fun b!5330164 () Bool)

(declare-fun e!3310642 () Bool)

(assert (=> b!5330164 (= e!3310642 (matchR!7182 lt!2174318 s!2326))))

(declare-fun b!5330165 () Bool)

(declare-fun res!2260866 () Bool)

(assert (=> b!5330165 (=> (not res!2260866) (not e!3310641))))

(assert (=> b!5330165 (= res!2260866 (matchR!7182 lt!2174318 (_2!35499 (get!21038 lt!2174462))))))

(declare-fun b!5330166 () Bool)

(assert (=> b!5330166 (= e!3310641 (= (++!13334 (_1!35499 (get!21038 lt!2174462)) (_2!35499 (get!21038 lt!2174462))) s!2326))))

(declare-fun b!5330167 () Bool)

(assert (=> b!5330167 (= e!3310643 (Some!15107 (tuple2!64393 Nil!61166 s!2326)))))

(declare-fun b!5330168 () Bool)

(declare-fun lt!2174460 () Unit!153506)

(declare-fun lt!2174461 () Unit!153506)

(assert (=> b!5330168 (= lt!2174460 lt!2174461)))

(assert (=> b!5330168 (= (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326)) s!2326)))

(assert (=> b!5330168 (= lt!2174461 (lemmaMoveElementToOtherListKeepsConcatEq!1749 Nil!61166 (h!67614 s!2326) (t!374505 s!2326) s!2326))))

(assert (=> b!5330168 (= e!3310644 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326) s!2326))))

(declare-fun d!1711362 () Bool)

(assert (=> d!1711362 e!3310645))

(declare-fun res!2260864 () Bool)

(assert (=> d!1711362 (=> res!2260864 e!3310645)))

(assert (=> d!1711362 (= res!2260864 e!3310641)))

(declare-fun res!2260865 () Bool)

(assert (=> d!1711362 (=> (not res!2260865) (not e!3310641))))

(assert (=> d!1711362 (= res!2260865 (isDefined!11811 lt!2174462))))

(assert (=> d!1711362 (= lt!2174462 e!3310643)))

(declare-fun c!926894 () Bool)

(assert (=> d!1711362 (= c!926894 e!3310642)))

(declare-fun res!2260867 () Bool)

(assert (=> d!1711362 (=> (not res!2260867) (not e!3310642))))

(assert (=> d!1711362 (= res!2260867 (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) Nil!61166))))

(assert (=> d!1711362 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711362 (= (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326) lt!2174462)))

(assert (= (and d!1711362 res!2260867) b!5330164))

(assert (= (and d!1711362 c!926894) b!5330167))

(assert (= (and d!1711362 (not c!926894)) b!5330163))

(assert (= (and b!5330163 c!926895) b!5330161))

(assert (= (and b!5330163 (not c!926895)) b!5330168))

(assert (= (and d!1711362 res!2260865) b!5330160))

(assert (= (and b!5330160 res!2260868) b!5330165))

(assert (= (and b!5330165 res!2260866) b!5330166))

(assert (= (and d!1711362 (not res!2260864)) b!5330162))

(assert (=> b!5330168 m!6363310))

(assert (=> b!5330168 m!6363310))

(assert (=> b!5330168 m!6363312))

(assert (=> b!5330168 m!6363314))

(assert (=> b!5330168 m!6363310))

(declare-fun m!6363650 () Bool)

(assert (=> b!5330168 m!6363650))

(declare-fun m!6363652 () Bool)

(assert (=> b!5330165 m!6363652))

(declare-fun m!6363654 () Bool)

(assert (=> b!5330165 m!6363654))

(declare-fun m!6363656 () Bool)

(assert (=> d!1711362 m!6363656))

(declare-fun m!6363658 () Bool)

(assert (=> d!1711362 m!6363658))

(assert (=> d!1711362 m!6363568))

(assert (=> b!5330166 m!6363652))

(declare-fun m!6363660 () Bool)

(assert (=> b!5330166 m!6363660))

(assert (=> b!5330164 m!6362952))

(assert (=> b!5330162 m!6363656))

(assert (=> b!5330160 m!6363652))

(declare-fun m!6363662 () Bool)

(assert (=> b!5330160 m!6363662))

(assert (=> b!5329319 d!1711362))

(declare-fun bs!1235298 () Bool)

(declare-fun b!5330177 () Bool)

(assert (= bs!1235298 (and b!5330177 d!1711336)))

(declare-fun lambda!272389 () Int)

(assert (=> bs!1235298 (not (= lambda!272389 lambda!272382))))

(declare-fun bs!1235299 () Bool)

(assert (= bs!1235299 (and b!5330177 b!5329333)))

(assert (=> bs!1235299 (not (= lambda!272389 lambda!272301))))

(declare-fun bs!1235300 () Bool)

(assert (= bs!1235300 (and b!5330177 b!5330147)))

(assert (=> bs!1235300 (= (and (= (reg!15326 lt!2174304) (reg!15326 lt!2174318)) (= lt!2174304 lt!2174318)) (= lambda!272389 lambda!272385))))

(assert (=> bs!1235299 (not (= lambda!272389 lambda!272300))))

(declare-fun bs!1235301 () Bool)

(assert (= bs!1235301 (and b!5330177 b!5330051)))

(assert (=> bs!1235301 (= (and (= (reg!15326 lt!2174304) (reg!15326 r!7292)) (= lt!2174304 r!7292)) (= lambda!272389 lambda!272377))))

(declare-fun bs!1235302 () Bool)

(assert (= bs!1235302 (and b!5330177 b!5329319)))

(assert (=> bs!1235302 (not (= lambda!272389 lambda!272304))))

(declare-fun bs!1235303 () Bool)

(assert (= bs!1235303 (and b!5330177 d!1711250)))

(assert (=> bs!1235303 (not (= lambda!272389 lambda!272362))))

(declare-fun bs!1235304 () Bool)

(assert (= bs!1235304 (and b!5330177 d!1711262)))

(assert (=> bs!1235304 (not (= lambda!272389 lambda!272369))))

(declare-fun bs!1235305 () Bool)

(assert (= bs!1235305 (and b!5330177 b!5330148)))

(assert (=> bs!1235305 (not (= lambda!272389 lambda!272386))))

(assert (=> bs!1235304 (not (= lambda!272389 lambda!272368))))

(declare-fun bs!1235306 () Bool)

(assert (= bs!1235306 (and b!5330177 d!1711350)))

(assert (=> bs!1235306 (not (= lambda!272389 lambda!272387))))

(assert (=> bs!1235298 (not (= lambda!272389 lambda!272383))))

(assert (=> bs!1235302 (not (= lambda!272389 lambda!272303))))

(declare-fun bs!1235307 () Bool)

(assert (= bs!1235307 (and b!5330177 b!5330052)))

(assert (=> bs!1235307 (not (= lambda!272389 lambda!272378))))

(assert (=> b!5330177 true))

(assert (=> b!5330177 true))

(declare-fun bs!1235308 () Bool)

(declare-fun b!5330178 () Bool)

(assert (= bs!1235308 (and b!5330178 d!1711336)))

(declare-fun lambda!272390 () Int)

(assert (=> bs!1235308 (not (= lambda!272390 lambda!272382))))

(declare-fun bs!1235309 () Bool)

(assert (= bs!1235309 (and b!5330178 b!5329333)))

(assert (=> bs!1235309 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174304) (regTwo!30506 r!7292))) (= lambda!272390 lambda!272301))))

(declare-fun bs!1235310 () Bool)

(assert (= bs!1235310 (and b!5330178 b!5330177)))

(assert (=> bs!1235310 (not (= lambda!272390 lambda!272389))))

(declare-fun bs!1235311 () Bool)

(assert (= bs!1235311 (and b!5330178 b!5330147)))

(assert (=> bs!1235311 (not (= lambda!272390 lambda!272385))))

(assert (=> bs!1235309 (not (= lambda!272390 lambda!272300))))

(declare-fun bs!1235312 () Bool)

(assert (= bs!1235312 (and b!5330178 b!5330051)))

(assert (=> bs!1235312 (not (= lambda!272390 lambda!272377))))

(declare-fun bs!1235313 () Bool)

(assert (= bs!1235313 (and b!5330178 b!5329319)))

(assert (=> bs!1235313 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 lt!2174304) lt!2174318)) (= lambda!272390 lambda!272304))))

(declare-fun bs!1235314 () Bool)

(assert (= bs!1235314 (and b!5330178 d!1711250)))

(assert (=> bs!1235314 (not (= lambda!272390 lambda!272362))))

(declare-fun bs!1235315 () Bool)

(assert (= bs!1235315 (and b!5330178 d!1711262)))

(assert (=> bs!1235315 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174304) (regTwo!30506 r!7292))) (= lambda!272390 lambda!272369))))

(declare-fun bs!1235316 () Bool)

(assert (= bs!1235316 (and b!5330178 b!5330148)))

(assert (=> bs!1235316 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 lt!2174318)) (= (regTwo!30506 lt!2174304) (regTwo!30506 lt!2174318))) (= lambda!272390 lambda!272386))))

(assert (=> bs!1235315 (not (= lambda!272390 lambda!272368))))

(declare-fun bs!1235317 () Bool)

(assert (= bs!1235317 (and b!5330178 d!1711350)))

(assert (=> bs!1235317 (not (= lambda!272390 lambda!272387))))

(assert (=> bs!1235308 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 lt!2174304) lt!2174318)) (= lambda!272390 lambda!272383))))

(assert (=> bs!1235313 (not (= lambda!272390 lambda!272303))))

(declare-fun bs!1235318 () Bool)

(assert (= bs!1235318 (and b!5330178 b!5330052)))

(assert (=> bs!1235318 (= (and (= (regOne!30506 lt!2174304) (regOne!30506 r!7292)) (= (regTwo!30506 lt!2174304) (regTwo!30506 r!7292))) (= lambda!272390 lambda!272378))))

(assert (=> b!5330178 true))

(assert (=> b!5330178 true))

(declare-fun d!1711364 () Bool)

(declare-fun c!926897 () Bool)

(assert (=> d!1711364 (= c!926897 ((_ is EmptyExpr!14997) lt!2174304))))

(declare-fun e!3310646 () Bool)

(assert (=> d!1711364 (= (matchRSpec!2100 lt!2174304 s!2326) e!3310646)))

(declare-fun b!5330169 () Bool)

(declare-fun res!2260871 () Bool)

(declare-fun e!3310647 () Bool)

(assert (=> b!5330169 (=> res!2260871 e!3310647)))

(declare-fun call!380822 () Bool)

(assert (=> b!5330169 (= res!2260871 call!380822)))

(declare-fun e!3310650 () Bool)

(assert (=> b!5330169 (= e!3310650 e!3310647)))

(declare-fun b!5330170 () Bool)

(declare-fun e!3310649 () Bool)

(assert (=> b!5330170 (= e!3310649 (matchRSpec!2100 (regTwo!30507 lt!2174304) s!2326))))

(declare-fun b!5330171 () Bool)

(declare-fun c!926899 () Bool)

(assert (=> b!5330171 (= c!926899 ((_ is ElementMatch!14997) lt!2174304))))

(declare-fun e!3310652 () Bool)

(declare-fun e!3310651 () Bool)

(assert (=> b!5330171 (= e!3310652 e!3310651)))

(declare-fun b!5330172 () Bool)

(assert (=> b!5330172 (= e!3310646 call!380822)))

(declare-fun c!926898 () Bool)

(declare-fun bm!380817 () Bool)

(declare-fun call!380823 () Bool)

(assert (=> bm!380817 (= call!380823 (Exists!2178 (ite c!926898 lambda!272389 lambda!272390)))))

(declare-fun b!5330173 () Bool)

(declare-fun e!3310648 () Bool)

(assert (=> b!5330173 (= e!3310648 e!3310649)))

(declare-fun res!2260870 () Bool)

(assert (=> b!5330173 (= res!2260870 (matchRSpec!2100 (regOne!30507 lt!2174304) s!2326))))

(assert (=> b!5330173 (=> res!2260870 e!3310649)))

(declare-fun b!5330174 () Bool)

(assert (=> b!5330174 (= e!3310648 e!3310650)))

(assert (=> b!5330174 (= c!926898 ((_ is Star!14997) lt!2174304))))

(declare-fun bm!380818 () Bool)

(assert (=> bm!380818 (= call!380822 (isEmpty!33139 s!2326))))

(declare-fun b!5330175 () Bool)

(assert (=> b!5330175 (= e!3310646 e!3310652)))

(declare-fun res!2260869 () Bool)

(assert (=> b!5330175 (= res!2260869 (not ((_ is EmptyLang!14997) lt!2174304)))))

(assert (=> b!5330175 (=> (not res!2260869) (not e!3310652))))

(declare-fun b!5330176 () Bool)

(declare-fun c!926896 () Bool)

(assert (=> b!5330176 (= c!926896 ((_ is Union!14997) lt!2174304))))

(assert (=> b!5330176 (= e!3310651 e!3310648)))

(assert (=> b!5330177 (= e!3310647 call!380823)))

(assert (=> b!5330178 (= e!3310650 call!380823)))

(declare-fun b!5330179 () Bool)

(assert (=> b!5330179 (= e!3310651 (= s!2326 (Cons!61166 (c!926649 lt!2174304) Nil!61166)))))

(assert (= (and d!1711364 c!926897) b!5330172))

(assert (= (and d!1711364 (not c!926897)) b!5330175))

(assert (= (and b!5330175 res!2260869) b!5330171))

(assert (= (and b!5330171 c!926899) b!5330179))

(assert (= (and b!5330171 (not c!926899)) b!5330176))

(assert (= (and b!5330176 c!926896) b!5330173))

(assert (= (and b!5330176 (not c!926896)) b!5330174))

(assert (= (and b!5330173 (not res!2260870)) b!5330170))

(assert (= (and b!5330174 c!926898) b!5330169))

(assert (= (and b!5330174 (not c!926898)) b!5330178))

(assert (= (and b!5330169 (not res!2260871)) b!5330177))

(assert (= (or b!5330177 b!5330178) bm!380817))

(assert (= (or b!5330172 b!5330169) bm!380818))

(declare-fun m!6363664 () Bool)

(assert (=> b!5330170 m!6363664))

(declare-fun m!6363666 () Bool)

(assert (=> bm!380817 m!6363666))

(declare-fun m!6363668 () Bool)

(assert (=> b!5330173 m!6363668))

(assert (=> bm!380818 m!6363526))

(assert (=> b!5329319 d!1711364))

(declare-fun b!5330180 () Bool)

(declare-fun e!3310653 () Bool)

(declare-fun lt!2174463 () Bool)

(assert (=> b!5330180 (= e!3310653 (not lt!2174463))))

(declare-fun b!5330181 () Bool)

(declare-fun res!2260874 () Bool)

(declare-fun e!3310655 () Bool)

(assert (=> b!5330181 (=> (not res!2260874) (not e!3310655))))

(declare-fun call!380824 () Bool)

(assert (=> b!5330181 (= res!2260874 (not call!380824))))

(declare-fun d!1711366 () Bool)

(declare-fun e!3310656 () Bool)

(assert (=> d!1711366 e!3310656))

(declare-fun c!926902 () Bool)

(assert (=> d!1711366 (= c!926902 ((_ is EmptyExpr!14997) lt!2174318))))

(declare-fun e!3310659 () Bool)

(assert (=> d!1711366 (= lt!2174463 e!3310659)))

(declare-fun c!926900 () Bool)

(assert (=> d!1711366 (= c!926900 (isEmpty!33139 s!2326))))

(assert (=> d!1711366 (validRegex!6733 lt!2174318)))

(assert (=> d!1711366 (= (matchR!7182 lt!2174318 s!2326) lt!2174463)))

(declare-fun b!5330182 () Bool)

(assert (=> b!5330182 (= e!3310656 e!3310653)))

(declare-fun c!926901 () Bool)

(assert (=> b!5330182 (= c!926901 ((_ is EmptyLang!14997) lt!2174318))))

(declare-fun b!5330183 () Bool)

(assert (=> b!5330183 (= e!3310659 (matchR!7182 (derivativeStep!4175 lt!2174318 (head!11426 s!2326)) (tail!10523 s!2326)))))

(declare-fun b!5330184 () Bool)

(declare-fun res!2260877 () Bool)

(declare-fun e!3310657 () Bool)

(assert (=> b!5330184 (=> res!2260877 e!3310657)))

(assert (=> b!5330184 (= res!2260877 (not ((_ is ElementMatch!14997) lt!2174318)))))

(assert (=> b!5330184 (= e!3310653 e!3310657)))

(declare-fun b!5330185 () Bool)

(declare-fun res!2260875 () Bool)

(declare-fun e!3310654 () Bool)

(assert (=> b!5330185 (=> res!2260875 e!3310654)))

(assert (=> b!5330185 (= res!2260875 (not (isEmpty!33139 (tail!10523 s!2326))))))

(declare-fun b!5330186 () Bool)

(assert (=> b!5330186 (= e!3310654 (not (= (head!11426 s!2326) (c!926649 lt!2174318))))))

(declare-fun b!5330187 () Bool)

(assert (=> b!5330187 (= e!3310656 (= lt!2174463 call!380824))))

(declare-fun b!5330188 () Bool)

(declare-fun res!2260878 () Bool)

(assert (=> b!5330188 (=> res!2260878 e!3310657)))

(assert (=> b!5330188 (= res!2260878 e!3310655)))

(declare-fun res!2260876 () Bool)

(assert (=> b!5330188 (=> (not res!2260876) (not e!3310655))))

(assert (=> b!5330188 (= res!2260876 lt!2174463)))

(declare-fun b!5330189 () Bool)

(declare-fun e!3310658 () Bool)

(assert (=> b!5330189 (= e!3310658 e!3310654)))

(declare-fun res!2260879 () Bool)

(assert (=> b!5330189 (=> res!2260879 e!3310654)))

(assert (=> b!5330189 (= res!2260879 call!380824)))

(declare-fun b!5330190 () Bool)

(assert (=> b!5330190 (= e!3310657 e!3310658)))

(declare-fun res!2260873 () Bool)

(assert (=> b!5330190 (=> (not res!2260873) (not e!3310658))))

(assert (=> b!5330190 (= res!2260873 (not lt!2174463))))

(declare-fun b!5330191 () Bool)

(assert (=> b!5330191 (= e!3310655 (= (head!11426 s!2326) (c!926649 lt!2174318)))))

(declare-fun b!5330192 () Bool)

(assert (=> b!5330192 (= e!3310659 (nullable!5166 lt!2174318))))

(declare-fun b!5330193 () Bool)

(declare-fun res!2260872 () Bool)

(assert (=> b!5330193 (=> (not res!2260872) (not e!3310655))))

(assert (=> b!5330193 (= res!2260872 (isEmpty!33139 (tail!10523 s!2326)))))

(declare-fun bm!380819 () Bool)

(assert (=> bm!380819 (= call!380824 (isEmpty!33139 s!2326))))

(assert (= (and d!1711366 c!926900) b!5330192))

(assert (= (and d!1711366 (not c!926900)) b!5330183))

(assert (= (and d!1711366 c!926902) b!5330187))

(assert (= (and d!1711366 (not c!926902)) b!5330182))

(assert (= (and b!5330182 c!926901) b!5330180))

(assert (= (and b!5330182 (not c!926901)) b!5330184))

(assert (= (and b!5330184 (not res!2260877)) b!5330188))

(assert (= (and b!5330188 res!2260876) b!5330181))

(assert (= (and b!5330181 res!2260874) b!5330193))

(assert (= (and b!5330193 res!2260872) b!5330191))

(assert (= (and b!5330188 (not res!2260878)) b!5330190))

(assert (= (and b!5330190 res!2260873) b!5330189))

(assert (= (and b!5330189 (not res!2260879)) b!5330185))

(assert (= (and b!5330185 (not res!2260875)) b!5330186))

(assert (= (or b!5330187 b!5330181 b!5330189) bm!380819))

(assert (=> b!5330183 m!6363528))

(assert (=> b!5330183 m!6363528))

(declare-fun m!6363670 () Bool)

(assert (=> b!5330183 m!6363670))

(assert (=> b!5330183 m!6363532))

(assert (=> b!5330183 m!6363670))

(assert (=> b!5330183 m!6363532))

(declare-fun m!6363672 () Bool)

(assert (=> b!5330183 m!6363672))

(assert (=> d!1711366 m!6363526))

(assert (=> d!1711366 m!6363584))

(assert (=> b!5330185 m!6363532))

(assert (=> b!5330185 m!6363532))

(assert (=> b!5330185 m!6363536))

(assert (=> bm!380819 m!6363526))

(assert (=> b!5330193 m!6363532))

(assert (=> b!5330193 m!6363532))

(assert (=> b!5330193 m!6363536))

(assert (=> b!5330186 m!6363528))

(declare-fun m!6363674 () Bool)

(assert (=> b!5330192 m!6363674))

(assert (=> b!5330191 m!6363528))

(assert (=> b!5329319 d!1711366))

(declare-fun d!1711368 () Bool)

(declare-fun c!926903 () Bool)

(assert (=> d!1711368 (= c!926903 (isEmpty!33139 (t!374505 s!2326)))))

(declare-fun e!3310660 () Bool)

(assert (=> d!1711368 (= (matchZipper!1241 lt!2174309 (t!374505 s!2326)) e!3310660)))

(declare-fun b!5330194 () Bool)

(assert (=> b!5330194 (= e!3310660 (nullableZipper!1354 lt!2174309))))

(declare-fun b!5330195 () Bool)

(assert (=> b!5330195 (= e!3310660 (matchZipper!1241 (derivationStepZipper!1238 lt!2174309 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))))))

(assert (= (and d!1711368 c!926903) b!5330194))

(assert (= (and d!1711368 (not c!926903)) b!5330195))

(assert (=> d!1711368 m!6363206))

(declare-fun m!6363676 () Bool)

(assert (=> b!5330194 m!6363676))

(assert (=> b!5330195 m!6363210))

(assert (=> b!5330195 m!6363210))

(declare-fun m!6363678 () Bool)

(assert (=> b!5330195 m!6363678))

(assert (=> b!5330195 m!6363214))

(assert (=> b!5330195 m!6363678))

(assert (=> b!5330195 m!6363214))

(declare-fun m!6363680 () Bool)

(assert (=> b!5330195 m!6363680))

(assert (=> b!5329340 d!1711368))

(declare-fun b!5330202 () Bool)

(assert (=> b!5330202 true))

(declare-fun bs!1235319 () Bool)

(declare-fun b!5330204 () Bool)

(assert (= bs!1235319 (and b!5330204 b!5330202)))

(declare-fun lambda!272398 () Int)

(declare-fun lt!2174475 () Int)

(declare-fun lambda!272399 () Int)

(declare-fun lt!2174473 () Int)

(assert (=> bs!1235319 (= (= lt!2174473 lt!2174475) (= lambda!272399 lambda!272398))))

(assert (=> b!5330204 true))

(declare-fun d!1711370 () Bool)

(declare-fun e!3310665 () Bool)

(assert (=> d!1711370 e!3310665))

(declare-fun res!2260882 () Bool)

(assert (=> d!1711370 (=> (not res!2260882) (not e!3310665))))

(assert (=> d!1711370 (= res!2260882 (>= lt!2174473 0))))

(declare-fun e!3310666 () Int)

(assert (=> d!1711370 (= lt!2174473 e!3310666)))

(declare-fun c!926912 () Bool)

(assert (=> d!1711370 (= c!926912 ((_ is Cons!61168) lt!2174315))))

(assert (=> d!1711370 (= (zipperDepth!106 lt!2174315) lt!2174473)))

(assert (=> b!5330202 (= e!3310666 lt!2174475)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!60 (Context!8762) Int)

(assert (=> b!5330202 (= lt!2174475 (maxBigInt!0 (contextDepth!60 (h!67616 lt!2174315)) (zipperDepth!106 (t!374507 lt!2174315))))))

(declare-fun lambda!272397 () Int)

(declare-fun lt!2174472 () Unit!153506)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!54 (List!61292 Int Int Int) Unit!153506)

(assert (=> b!5330202 (= lt!2174472 (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 lt!2174315) lt!2174475 (zipperDepth!106 (t!374507 lt!2174315)) lambda!272397))))

(declare-fun forall!14417 (List!61292 Int) Bool)

(assert (=> b!5330202 (forall!14417 (t!374507 lt!2174315) lambda!272398)))

(declare-fun lt!2174474 () Unit!153506)

(assert (=> b!5330202 (= lt!2174474 lt!2174472)))

(declare-fun b!5330203 () Bool)

(assert (=> b!5330203 (= e!3310666 0)))

(assert (=> b!5330204 (= e!3310665 (forall!14417 lt!2174315 lambda!272399))))

(assert (= (and d!1711370 c!926912) b!5330202))

(assert (= (and d!1711370 (not c!926912)) b!5330203))

(assert (= (and d!1711370 res!2260882) b!5330204))

(declare-fun m!6363682 () Bool)

(assert (=> b!5330202 m!6363682))

(declare-fun m!6363684 () Bool)

(assert (=> b!5330202 m!6363684))

(declare-fun m!6363686 () Bool)

(assert (=> b!5330202 m!6363686))

(assert (=> b!5330202 m!6363684))

(declare-fun m!6363688 () Bool)

(assert (=> b!5330202 m!6363688))

(assert (=> b!5330202 m!6363682))

(declare-fun m!6363690 () Bool)

(assert (=> b!5330202 m!6363690))

(assert (=> b!5330202 m!6363684))

(declare-fun m!6363692 () Bool)

(assert (=> b!5330204 m!6363692))

(assert (=> b!5329343 d!1711370))

(declare-fun bs!1235320 () Bool)

(declare-fun b!5330207 () Bool)

(assert (= bs!1235320 (and b!5330207 b!5330202)))

(declare-fun lambda!272400 () Int)

(assert (=> bs!1235320 (= lambda!272400 lambda!272397)))

(declare-fun lt!2174479 () Int)

(declare-fun lambda!272401 () Int)

(assert (=> bs!1235320 (= (= lt!2174479 lt!2174475) (= lambda!272401 lambda!272398))))

(declare-fun bs!1235321 () Bool)

(assert (= bs!1235321 (and b!5330207 b!5330204)))

(assert (=> bs!1235321 (= (= lt!2174479 lt!2174473) (= lambda!272401 lambda!272399))))

(assert (=> b!5330207 true))

(declare-fun bs!1235322 () Bool)

(declare-fun b!5330209 () Bool)

(assert (= bs!1235322 (and b!5330209 b!5330202)))

(declare-fun lambda!272402 () Int)

(declare-fun lt!2174477 () Int)

(assert (=> bs!1235322 (= (= lt!2174477 lt!2174475) (= lambda!272402 lambda!272398))))

(declare-fun bs!1235323 () Bool)

(assert (= bs!1235323 (and b!5330209 b!5330204)))

(assert (=> bs!1235323 (= (= lt!2174477 lt!2174473) (= lambda!272402 lambda!272399))))

(declare-fun bs!1235324 () Bool)

(assert (= bs!1235324 (and b!5330209 b!5330207)))

(assert (=> bs!1235324 (= (= lt!2174477 lt!2174479) (= lambda!272402 lambda!272401))))

(assert (=> b!5330209 true))

(declare-fun d!1711372 () Bool)

(declare-fun e!3310667 () Bool)

(assert (=> d!1711372 e!3310667))

(declare-fun res!2260883 () Bool)

(assert (=> d!1711372 (=> (not res!2260883) (not e!3310667))))

(assert (=> d!1711372 (= res!2260883 (>= lt!2174477 0))))

(declare-fun e!3310668 () Int)

(assert (=> d!1711372 (= lt!2174477 e!3310668)))

(declare-fun c!926913 () Bool)

(assert (=> d!1711372 (= c!926913 ((_ is Cons!61168) zl!343))))

(assert (=> d!1711372 (= (zipperDepth!106 zl!343) lt!2174477)))

(assert (=> b!5330207 (= e!3310668 lt!2174479)))

(assert (=> b!5330207 (= lt!2174479 (maxBigInt!0 (contextDepth!60 (h!67616 zl!343)) (zipperDepth!106 (t!374507 zl!343))))))

(declare-fun lt!2174476 () Unit!153506)

(assert (=> b!5330207 (= lt!2174476 (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 zl!343) lt!2174479 (zipperDepth!106 (t!374507 zl!343)) lambda!272400))))

(assert (=> b!5330207 (forall!14417 (t!374507 zl!343) lambda!272401)))

(declare-fun lt!2174478 () Unit!153506)

(assert (=> b!5330207 (= lt!2174478 lt!2174476)))

(declare-fun b!5330208 () Bool)

(assert (=> b!5330208 (= e!3310668 0)))

(assert (=> b!5330209 (= e!3310667 (forall!14417 zl!343 lambda!272402))))

(assert (= (and d!1711372 c!926913) b!5330207))

(assert (= (and d!1711372 (not c!926913)) b!5330208))

(assert (= (and d!1711372 res!2260883) b!5330209))

(declare-fun m!6363694 () Bool)

(assert (=> b!5330207 m!6363694))

(declare-fun m!6363696 () Bool)

(assert (=> b!5330207 m!6363696))

(declare-fun m!6363698 () Bool)

(assert (=> b!5330207 m!6363698))

(assert (=> b!5330207 m!6363696))

(declare-fun m!6363700 () Bool)

(assert (=> b!5330207 m!6363700))

(assert (=> b!5330207 m!6363694))

(declare-fun m!6363702 () Bool)

(assert (=> b!5330207 m!6363702))

(assert (=> b!5330207 m!6363696))

(declare-fun m!6363704 () Bool)

(assert (=> b!5330209 m!6363704))

(assert (=> b!5329343 d!1711372))

(declare-fun bs!1235325 () Bool)

(declare-fun d!1711374 () Bool)

(assert (= bs!1235325 (and d!1711374 b!5329319)))

(declare-fun lambda!272405 () Int)

(assert (=> bs!1235325 (= lambda!272405 lambda!272305)))

(declare-fun bs!1235326 () Bool)

(assert (= bs!1235326 (and d!1711374 d!1711294)))

(assert (=> bs!1235326 (= lambda!272405 lambda!272372)))

(declare-fun bs!1235327 () Bool)

(assert (= bs!1235327 (and d!1711374 d!1711324)))

(assert (=> bs!1235327 (= lambda!272405 lambda!272381)))

(declare-fun bs!1235328 () Bool)

(assert (= bs!1235328 (and d!1711374 d!1711356)))

(assert (=> bs!1235328 (= lambda!272405 lambda!272388)))

(declare-fun bs!1235329 () Bool)

(assert (= bs!1235329 (and d!1711374 d!1711346)))

(assert (=> bs!1235329 (= lambda!272405 lambda!272384)))

(declare-fun b!5330230 () Bool)

(declare-fun e!3310683 () Bool)

(assert (=> b!5330230 (= e!3310683 (isEmpty!33135 (t!374506 (unfocusZipperList!439 zl!343))))))

(declare-fun e!3310686 () Bool)

(assert (=> d!1711374 e!3310686))

(declare-fun res!2260889 () Bool)

(assert (=> d!1711374 (=> (not res!2260889) (not e!3310686))))

(declare-fun lt!2174482 () Regex!14997)

(assert (=> d!1711374 (= res!2260889 (validRegex!6733 lt!2174482))))

(declare-fun e!3310681 () Regex!14997)

(assert (=> d!1711374 (= lt!2174482 e!3310681)))

(declare-fun c!926923 () Bool)

(assert (=> d!1711374 (= c!926923 e!3310683)))

(declare-fun res!2260888 () Bool)

(assert (=> d!1711374 (=> (not res!2260888) (not e!3310683))))

(assert (=> d!1711374 (= res!2260888 ((_ is Cons!61167) (unfocusZipperList!439 zl!343)))))

(assert (=> d!1711374 (forall!14415 (unfocusZipperList!439 zl!343) lambda!272405)))

(assert (=> d!1711374 (= (generalisedUnion!926 (unfocusZipperList!439 zl!343)) lt!2174482)))

(declare-fun b!5330231 () Bool)

(declare-fun e!3310685 () Bool)

(assert (=> b!5330231 (= e!3310686 e!3310685)))

(declare-fun c!926925 () Bool)

(assert (=> b!5330231 (= c!926925 (isEmpty!33135 (unfocusZipperList!439 zl!343)))))

(declare-fun b!5330232 () Bool)

(declare-fun e!3310684 () Regex!14997)

(assert (=> b!5330232 (= e!3310684 EmptyLang!14997)))

(declare-fun b!5330233 () Bool)

(declare-fun e!3310682 () Bool)

(declare-fun isUnion!329 (Regex!14997) Bool)

(assert (=> b!5330233 (= e!3310682 (isUnion!329 lt!2174482))))

(declare-fun b!5330234 () Bool)

(assert (=> b!5330234 (= e!3310685 e!3310682)))

(declare-fun c!926922 () Bool)

(assert (=> b!5330234 (= c!926922 (isEmpty!33135 (tail!10524 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5330235 () Bool)

(assert (=> b!5330235 (= e!3310681 (h!67615 (unfocusZipperList!439 zl!343)))))

(declare-fun b!5330236 () Bool)

(assert (=> b!5330236 (= e!3310681 e!3310684)))

(declare-fun c!926924 () Bool)

(assert (=> b!5330236 (= c!926924 ((_ is Cons!61167) (unfocusZipperList!439 zl!343)))))

(declare-fun b!5330237 () Bool)

(assert (=> b!5330237 (= e!3310684 (Union!14997 (h!67615 (unfocusZipperList!439 zl!343)) (generalisedUnion!926 (t!374506 (unfocusZipperList!439 zl!343)))))))

(declare-fun b!5330238 () Bool)

(assert (=> b!5330238 (= e!3310682 (= lt!2174482 (head!11427 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5330239 () Bool)

(declare-fun isEmptyLang!897 (Regex!14997) Bool)

(assert (=> b!5330239 (= e!3310685 (isEmptyLang!897 lt!2174482))))

(assert (= (and d!1711374 res!2260888) b!5330230))

(assert (= (and d!1711374 c!926923) b!5330235))

(assert (= (and d!1711374 (not c!926923)) b!5330236))

(assert (= (and b!5330236 c!926924) b!5330237))

(assert (= (and b!5330236 (not c!926924)) b!5330232))

(assert (= (and d!1711374 res!2260889) b!5330231))

(assert (= (and b!5330231 c!926925) b!5330239))

(assert (= (and b!5330231 (not c!926925)) b!5330234))

(assert (= (and b!5330234 c!926922) b!5330238))

(assert (= (and b!5330234 (not c!926922)) b!5330233))

(assert (=> b!5330234 m!6362994))

(declare-fun m!6363706 () Bool)

(assert (=> b!5330234 m!6363706))

(assert (=> b!5330234 m!6363706))

(declare-fun m!6363708 () Bool)

(assert (=> b!5330234 m!6363708))

(declare-fun m!6363710 () Bool)

(assert (=> b!5330230 m!6363710))

(declare-fun m!6363712 () Bool)

(assert (=> b!5330239 m!6363712))

(assert (=> b!5330238 m!6362994))

(declare-fun m!6363714 () Bool)

(assert (=> b!5330238 m!6363714))

(declare-fun m!6363716 () Bool)

(assert (=> b!5330233 m!6363716))

(declare-fun m!6363718 () Bool)

(assert (=> b!5330237 m!6363718))

(declare-fun m!6363720 () Bool)

(assert (=> d!1711374 m!6363720))

(assert (=> d!1711374 m!6362994))

(declare-fun m!6363722 () Bool)

(assert (=> d!1711374 m!6363722))

(assert (=> b!5330231 m!6362994))

(declare-fun m!6363724 () Bool)

(assert (=> b!5330231 m!6363724))

(assert (=> b!5329344 d!1711374))

(declare-fun bs!1235330 () Bool)

(declare-fun d!1711376 () Bool)

(assert (= bs!1235330 (and d!1711376 b!5329319)))

(declare-fun lambda!272408 () Int)

(assert (=> bs!1235330 (= lambda!272408 lambda!272305)))

(declare-fun bs!1235331 () Bool)

(assert (= bs!1235331 (and d!1711376 d!1711294)))

(assert (=> bs!1235331 (= lambda!272408 lambda!272372)))

(declare-fun bs!1235332 () Bool)

(assert (= bs!1235332 (and d!1711376 d!1711324)))

(assert (=> bs!1235332 (= lambda!272408 lambda!272381)))

(declare-fun bs!1235333 () Bool)

(assert (= bs!1235333 (and d!1711376 d!1711356)))

(assert (=> bs!1235333 (= lambda!272408 lambda!272388)))

(declare-fun bs!1235334 () Bool)

(assert (= bs!1235334 (and d!1711376 d!1711346)))

(assert (=> bs!1235334 (= lambda!272408 lambda!272384)))

(declare-fun bs!1235335 () Bool)

(assert (= bs!1235335 (and d!1711376 d!1711374)))

(assert (=> bs!1235335 (= lambda!272408 lambda!272405)))

(declare-fun lt!2174485 () List!61291)

(assert (=> d!1711376 (forall!14415 lt!2174485 lambda!272408)))

(declare-fun e!3310689 () List!61291)

(assert (=> d!1711376 (= lt!2174485 e!3310689)))

(declare-fun c!926928 () Bool)

(assert (=> d!1711376 (= c!926928 ((_ is Cons!61168) zl!343))))

(assert (=> d!1711376 (= (unfocusZipperList!439 zl!343) lt!2174485)))

(declare-fun b!5330244 () Bool)

(assert (=> b!5330244 (= e!3310689 (Cons!61167 (generalisedConcat!666 (exprs!4881 (h!67616 zl!343))) (unfocusZipperList!439 (t!374507 zl!343))))))

(declare-fun b!5330245 () Bool)

(assert (=> b!5330245 (= e!3310689 Nil!61167)))

(assert (= (and d!1711376 c!926928) b!5330244))

(assert (= (and d!1711376 (not c!926928)) b!5330245))

(declare-fun m!6363726 () Bool)

(assert (=> d!1711376 m!6363726))

(assert (=> b!5330244 m!6362986))

(declare-fun m!6363728 () Bool)

(assert (=> b!5330244 m!6363728))

(assert (=> b!5329344 d!1711376))

(declare-fun d!1711378 () Bool)

(assert (=> d!1711378 (= (isEmpty!33135 (t!374506 (exprs!4881 (h!67616 zl!343)))) ((_ is Nil!61167) (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> b!5329322 d!1711378))

(declare-fun bs!1235336 () Bool)

(declare-fun d!1711380 () Bool)

(assert (= bs!1235336 (and d!1711380 b!5329319)))

(declare-fun lambda!272409 () Int)

(assert (=> bs!1235336 (= lambda!272409 lambda!272305)))

(declare-fun bs!1235337 () Bool)

(assert (= bs!1235337 (and d!1711380 d!1711294)))

(assert (=> bs!1235337 (= lambda!272409 lambda!272372)))

(declare-fun bs!1235338 () Bool)

(assert (= bs!1235338 (and d!1711380 d!1711376)))

(assert (=> bs!1235338 (= lambda!272409 lambda!272408)))

(declare-fun bs!1235339 () Bool)

(assert (= bs!1235339 (and d!1711380 d!1711324)))

(assert (=> bs!1235339 (= lambda!272409 lambda!272381)))

(declare-fun bs!1235340 () Bool)

(assert (= bs!1235340 (and d!1711380 d!1711356)))

(assert (=> bs!1235340 (= lambda!272409 lambda!272388)))

(declare-fun bs!1235341 () Bool)

(assert (= bs!1235341 (and d!1711380 d!1711346)))

(assert (=> bs!1235341 (= lambda!272409 lambda!272384)))

(declare-fun bs!1235342 () Bool)

(assert (= bs!1235342 (and d!1711380 d!1711374)))

(assert (=> bs!1235342 (= lambda!272409 lambda!272405)))

(assert (=> d!1711380 (= (inv!80739 (h!67616 zl!343)) (forall!14415 (exprs!4881 (h!67616 zl!343)) lambda!272409))))

(declare-fun bs!1235343 () Bool)

(assert (= bs!1235343 d!1711380))

(declare-fun m!6363730 () Bool)

(assert (=> bs!1235343 m!6363730))

(assert (=> b!5329336 d!1711380))

(declare-fun b!5330246 () Bool)

(declare-fun e!3310692 () (InoxSet Context!8762))

(declare-fun call!380826 () (InoxSet Context!8762))

(assert (=> b!5330246 (= e!3310692 call!380826)))

(declare-fun bm!380820 () Bool)

(declare-fun call!380827 () (InoxSet Context!8762))

(declare-fun call!380825 () (InoxSet Context!8762))

(assert (=> bm!380820 (= call!380827 call!380825)))

(declare-fun b!5330247 () Bool)

(declare-fun e!3310693 () (InoxSet Context!8762))

(assert (=> b!5330247 (= e!3310693 call!380826)))

(declare-fun c!926932 () Bool)

(declare-fun call!380828 () List!61291)

(declare-fun c!926933 () Bool)

(declare-fun bm!380821 () Bool)

(declare-fun c!926930 () Bool)

(assert (=> bm!380821 (= call!380825 (derivationStepZipperDown!445 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))) (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828)) (h!67614 s!2326)))))

(declare-fun b!5330248 () Bool)

(declare-fun e!3310695 () Bool)

(assert (=> b!5330248 (= e!3310695 (nullable!5166 (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))

(declare-fun b!5330249 () Bool)

(assert (=> b!5330249 (= c!926932 e!3310695)))

(declare-fun res!2260890 () Bool)

(assert (=> b!5330249 (=> (not res!2260890) (not e!3310695))))

(assert (=> b!5330249 (= res!2260890 ((_ is Concat!23842) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun e!3310694 () (InoxSet Context!8762))

(declare-fun e!3310691 () (InoxSet Context!8762))

(assert (=> b!5330249 (= e!3310694 e!3310691)))

(declare-fun b!5330250 () Bool)

(assert (=> b!5330250 (= e!3310692 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!380822 () Bool)

(assert (=> bm!380822 (= call!380826 call!380827)))

(declare-fun call!380830 () (InoxSet Context!8762))

(declare-fun bm!380823 () Bool)

(declare-fun call!380829 () List!61291)

(assert (=> bm!380823 (= call!380830 (derivationStepZipperDown!445 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))) (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829)) (h!67614 s!2326)))))

(declare-fun b!5330251 () Bool)

(assert (=> b!5330251 (= e!3310691 ((_ map or) call!380830 call!380827))))

(declare-fun bm!380824 () Bool)

(assert (=> bm!380824 (= call!380829 ($colon$colon!1404 (exprs!4881 (Context!8763 lt!2174324)) (ite (or c!926932 c!926933) (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 r!7292)))))))

(declare-fun b!5330252 () Bool)

(declare-fun c!926931 () Bool)

(assert (=> b!5330252 (= c!926931 ((_ is Star!14997) (regOne!30506 (regOne!30506 r!7292))))))

(assert (=> b!5330252 (= e!3310693 e!3310692)))

(declare-fun b!5330253 () Bool)

(declare-fun e!3310690 () (InoxSet Context!8762))

(assert (=> b!5330253 (= e!3310690 e!3310694)))

(assert (=> b!5330253 (= c!926930 ((_ is Union!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5330255 () Bool)

(assert (=> b!5330255 (= e!3310690 (store ((as const (Array Context!8762 Bool)) false) (Context!8763 lt!2174324) true))))

(declare-fun b!5330256 () Bool)

(assert (=> b!5330256 (= e!3310691 e!3310693)))

(assert (=> b!5330256 (= c!926933 ((_ is Concat!23842) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun bm!380825 () Bool)

(assert (=> bm!380825 (= call!380828 call!380829)))

(declare-fun b!5330254 () Bool)

(assert (=> b!5330254 (= e!3310694 ((_ map or) call!380830 call!380825))))

(declare-fun d!1711382 () Bool)

(declare-fun c!926929 () Bool)

(assert (=> d!1711382 (= c!926929 (and ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292))) (= (c!926649 (regOne!30506 (regOne!30506 r!7292))) (h!67614 s!2326))))))

(assert (=> d!1711382 (= (derivationStepZipperDown!445 (regOne!30506 (regOne!30506 r!7292)) (Context!8763 lt!2174324) (h!67614 s!2326)) e!3310690)))

(assert (= (and d!1711382 c!926929) b!5330255))

(assert (= (and d!1711382 (not c!926929)) b!5330253))

(assert (= (and b!5330253 c!926930) b!5330254))

(assert (= (and b!5330253 (not c!926930)) b!5330249))

(assert (= (and b!5330249 res!2260890) b!5330248))

(assert (= (and b!5330249 c!926932) b!5330251))

(assert (= (and b!5330249 (not c!926932)) b!5330256))

(assert (= (and b!5330256 c!926933) b!5330247))

(assert (= (and b!5330256 (not c!926933)) b!5330252))

(assert (= (and b!5330252 c!926931) b!5330246))

(assert (= (and b!5330252 (not c!926931)) b!5330250))

(assert (= (or b!5330247 b!5330246) bm!380825))

(assert (= (or b!5330247 b!5330246) bm!380822))

(assert (= (or b!5330251 bm!380825) bm!380824))

(assert (= (or b!5330251 bm!380822) bm!380820))

(assert (= (or b!5330254 bm!380820) bm!380821))

(assert (= (or b!5330254 b!5330251) bm!380823))

(declare-fun m!6363732 () Bool)

(assert (=> b!5330255 m!6363732))

(declare-fun m!6363734 () Bool)

(assert (=> b!5330248 m!6363734))

(declare-fun m!6363736 () Bool)

(assert (=> bm!380823 m!6363736))

(declare-fun m!6363738 () Bool)

(assert (=> bm!380824 m!6363738))

(declare-fun m!6363740 () Bool)

(assert (=> bm!380821 m!6363740))

(assert (=> b!5329338 d!1711382))

(declare-fun d!1711384 () Bool)

(declare-fun e!3310698 () Bool)

(assert (=> d!1711384 (= (matchZipper!1241 ((_ map or) lt!2174311 lt!2174309) (t!374505 s!2326)) e!3310698)))

(declare-fun res!2260893 () Bool)

(assert (=> d!1711384 (=> res!2260893 e!3310698)))

(assert (=> d!1711384 (= res!2260893 (matchZipper!1241 lt!2174311 (t!374505 s!2326)))))

(declare-fun lt!2174488 () Unit!153506)

(declare-fun choose!39925 ((InoxSet Context!8762) (InoxSet Context!8762) List!61290) Unit!153506)

(assert (=> d!1711384 (= lt!2174488 (choose!39925 lt!2174311 lt!2174309 (t!374505 s!2326)))))

(assert (=> d!1711384 (= (lemmaZipperConcatMatchesSameAsBothZippers!234 lt!2174311 lt!2174309 (t!374505 s!2326)) lt!2174488)))

(declare-fun b!5330259 () Bool)

(assert (=> b!5330259 (= e!3310698 (matchZipper!1241 lt!2174309 (t!374505 s!2326)))))

(assert (= (and d!1711384 (not res!2260893)) b!5330259))

(assert (=> d!1711384 m!6362924))

(assert (=> d!1711384 m!6362886))

(declare-fun m!6363742 () Bool)

(assert (=> d!1711384 m!6363742))

(assert (=> b!5330259 m!6362894))

(assert (=> b!5329316 d!1711384))

(assert (=> b!5329316 d!1711208))

(declare-fun d!1711386 () Bool)

(declare-fun c!926934 () Bool)

(assert (=> d!1711386 (= c!926934 (isEmpty!33139 (t!374505 s!2326)))))

(declare-fun e!3310699 () Bool)

(assert (=> d!1711386 (= (matchZipper!1241 ((_ map or) lt!2174311 lt!2174309) (t!374505 s!2326)) e!3310699)))

(declare-fun b!5330260 () Bool)

(assert (=> b!5330260 (= e!3310699 (nullableZipper!1354 ((_ map or) lt!2174311 lt!2174309)))))

(declare-fun b!5330261 () Bool)

(assert (=> b!5330261 (= e!3310699 (matchZipper!1241 (derivationStepZipper!1238 ((_ map or) lt!2174311 lt!2174309) (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))))))

(assert (= (and d!1711386 c!926934) b!5330260))

(assert (= (and d!1711386 (not c!926934)) b!5330261))

(assert (=> d!1711386 m!6363206))

(declare-fun m!6363744 () Bool)

(assert (=> b!5330260 m!6363744))

(assert (=> b!5330261 m!6363210))

(assert (=> b!5330261 m!6363210))

(declare-fun m!6363746 () Bool)

(assert (=> b!5330261 m!6363746))

(assert (=> b!5330261 m!6363214))

(assert (=> b!5330261 m!6363746))

(assert (=> b!5330261 m!6363214))

(declare-fun m!6363748 () Bool)

(assert (=> b!5330261 m!6363748))

(assert (=> b!5329316 d!1711386))

(declare-fun d!1711388 () Bool)

(declare-fun lt!2174491 () Int)

(assert (=> d!1711388 (>= lt!2174491 0)))

(declare-fun e!3310702 () Int)

(assert (=> d!1711388 (= lt!2174491 e!3310702)))

(declare-fun c!926938 () Bool)

(assert (=> d!1711388 (= c!926938 ((_ is Cons!61167) (exprs!4881 lt!2174326)))))

(assert (=> d!1711388 (= (contextDepthTotal!130 lt!2174326) lt!2174491)))

(declare-fun b!5330266 () Bool)

(declare-fun regexDepthTotal!59 (Regex!14997) Int)

(assert (=> b!5330266 (= e!3310702 (+ (regexDepthTotal!59 (h!67615 (exprs!4881 lt!2174326))) (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 lt!2174326))))))))

(declare-fun b!5330267 () Bool)

(assert (=> b!5330267 (= e!3310702 1)))

(assert (= (and d!1711388 c!926938) b!5330266))

(assert (= (and d!1711388 (not c!926938)) b!5330267))

(declare-fun m!6363750 () Bool)

(assert (=> b!5330266 m!6363750))

(declare-fun m!6363752 () Bool)

(assert (=> b!5330266 m!6363752))

(assert (=> b!5329337 d!1711388))

(declare-fun d!1711390 () Bool)

(declare-fun lt!2174492 () Int)

(assert (=> d!1711390 (>= lt!2174492 0)))

(declare-fun e!3310703 () Int)

(assert (=> d!1711390 (= lt!2174492 e!3310703)))

(declare-fun c!926939 () Bool)

(assert (=> d!1711390 (= c!926939 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1711390 (= (contextDepthTotal!130 (h!67616 zl!343)) lt!2174492)))

(declare-fun b!5330268 () Bool)

(assert (=> b!5330268 (= e!3310703 (+ (regexDepthTotal!59 (h!67615 (exprs!4881 (h!67616 zl!343)))) (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5330269 () Bool)

(assert (=> b!5330269 (= e!3310703 1)))

(assert (= (and d!1711390 c!926939) b!5330268))

(assert (= (and d!1711390 (not c!926939)) b!5330269))

(declare-fun m!6363754 () Bool)

(assert (=> b!5330268 m!6363754))

(declare-fun m!6363756 () Bool)

(assert (=> b!5330268 m!6363756))

(assert (=> b!5329337 d!1711390))

(declare-fun b!5330274 () Bool)

(declare-fun e!3310706 () Bool)

(declare-fun tp!1483372 () Bool)

(declare-fun tp!1483373 () Bool)

(assert (=> b!5330274 (= e!3310706 (and tp!1483372 tp!1483373))))

(assert (=> b!5329335 (= tp!1483305 e!3310706)))

(assert (= (and b!5329335 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343)))) b!5330274))

(declare-fun b!5330282 () Bool)

(declare-fun e!3310712 () Bool)

(declare-fun tp!1483378 () Bool)

(assert (=> b!5330282 (= e!3310712 tp!1483378)))

(declare-fun b!5330281 () Bool)

(declare-fun e!3310711 () Bool)

(declare-fun tp!1483379 () Bool)

(assert (=> b!5330281 (= e!3310711 (and (inv!80739 (h!67616 (t!374507 zl!343))) e!3310712 tp!1483379))))

(assert (=> b!5329336 (= tp!1483300 e!3310711)))

(assert (= b!5330281 b!5330282))

(assert (= (and b!5329336 ((_ is Cons!61168) (t!374507 zl!343))) b!5330281))

(declare-fun m!6363758 () Bool)

(assert (=> b!5330281 m!6363758))

(declare-fun e!3310715 () Bool)

(assert (=> b!5329334 (= tp!1483307 e!3310715)))

(declare-fun b!5330295 () Bool)

(declare-fun tp!1483392 () Bool)

(assert (=> b!5330295 (= e!3310715 tp!1483392)))

(declare-fun b!5330296 () Bool)

(declare-fun tp!1483394 () Bool)

(declare-fun tp!1483390 () Bool)

(assert (=> b!5330296 (= e!3310715 (and tp!1483394 tp!1483390))))

(declare-fun b!5330294 () Bool)

(declare-fun tp!1483393 () Bool)

(declare-fun tp!1483391 () Bool)

(assert (=> b!5330294 (= e!3310715 (and tp!1483393 tp!1483391))))

(declare-fun b!5330293 () Bool)

(assert (=> b!5330293 (= e!3310715 tp_is_empty!39247)))

(assert (= (and b!5329334 ((_ is ElementMatch!14997) (regOne!30507 r!7292))) b!5330293))

(assert (= (and b!5329334 ((_ is Concat!23842) (regOne!30507 r!7292))) b!5330294))

(assert (= (and b!5329334 ((_ is Star!14997) (regOne!30507 r!7292))) b!5330295))

(assert (= (and b!5329334 ((_ is Union!14997) (regOne!30507 r!7292))) b!5330296))

(declare-fun e!3310716 () Bool)

(assert (=> b!5329334 (= tp!1483306 e!3310716)))

(declare-fun b!5330299 () Bool)

(declare-fun tp!1483397 () Bool)

(assert (=> b!5330299 (= e!3310716 tp!1483397)))

(declare-fun b!5330300 () Bool)

(declare-fun tp!1483399 () Bool)

(declare-fun tp!1483395 () Bool)

(assert (=> b!5330300 (= e!3310716 (and tp!1483399 tp!1483395))))

(declare-fun b!5330298 () Bool)

(declare-fun tp!1483398 () Bool)

(declare-fun tp!1483396 () Bool)

(assert (=> b!5330298 (= e!3310716 (and tp!1483398 tp!1483396))))

(declare-fun b!5330297 () Bool)

(assert (=> b!5330297 (= e!3310716 tp_is_empty!39247)))

(assert (= (and b!5329334 ((_ is ElementMatch!14997) (regTwo!30507 r!7292))) b!5330297))

(assert (= (and b!5329334 ((_ is Concat!23842) (regTwo!30507 r!7292))) b!5330298))

(assert (= (and b!5329334 ((_ is Star!14997) (regTwo!30507 r!7292))) b!5330299))

(assert (= (and b!5329334 ((_ is Union!14997) (regTwo!30507 r!7292))) b!5330300))

(declare-fun e!3310717 () Bool)

(assert (=> b!5329329 (= tp!1483304 e!3310717)))

(declare-fun b!5330303 () Bool)

(declare-fun tp!1483402 () Bool)

(assert (=> b!5330303 (= e!3310717 tp!1483402)))

(declare-fun b!5330304 () Bool)

(declare-fun tp!1483404 () Bool)

(declare-fun tp!1483400 () Bool)

(assert (=> b!5330304 (= e!3310717 (and tp!1483404 tp!1483400))))

(declare-fun b!5330302 () Bool)

(declare-fun tp!1483403 () Bool)

(declare-fun tp!1483401 () Bool)

(assert (=> b!5330302 (= e!3310717 (and tp!1483403 tp!1483401))))

(declare-fun b!5330301 () Bool)

(assert (=> b!5330301 (= e!3310717 tp_is_empty!39247)))

(assert (= (and b!5329329 ((_ is ElementMatch!14997) (reg!15326 r!7292))) b!5330301))

(assert (= (and b!5329329 ((_ is Concat!23842) (reg!15326 r!7292))) b!5330302))

(assert (= (and b!5329329 ((_ is Star!14997) (reg!15326 r!7292))) b!5330303))

(assert (= (and b!5329329 ((_ is Union!14997) (reg!15326 r!7292))) b!5330304))

(declare-fun b!5330309 () Bool)

(declare-fun e!3310720 () Bool)

(declare-fun tp!1483407 () Bool)

(assert (=> b!5330309 (= e!3310720 (and tp_is_empty!39247 tp!1483407))))

(assert (=> b!5329323 (= tp!1483303 e!3310720)))

(assert (= (and b!5329323 ((_ is Cons!61166) (t!374505 s!2326))) b!5330309))

(declare-fun b!5330310 () Bool)

(declare-fun e!3310721 () Bool)

(declare-fun tp!1483408 () Bool)

(declare-fun tp!1483409 () Bool)

(assert (=> b!5330310 (= e!3310721 (and tp!1483408 tp!1483409))))

(assert (=> b!5329327 (= tp!1483309 e!3310721)))

(assert (= (and b!5329327 ((_ is Cons!61167) (exprs!4881 setElem!34353))) b!5330310))

(declare-fun e!3310722 () Bool)

(assert (=> b!5329328 (= tp!1483302 e!3310722)))

(declare-fun b!5330313 () Bool)

(declare-fun tp!1483412 () Bool)

(assert (=> b!5330313 (= e!3310722 tp!1483412)))

(declare-fun b!5330314 () Bool)

(declare-fun tp!1483414 () Bool)

(declare-fun tp!1483410 () Bool)

(assert (=> b!5330314 (= e!3310722 (and tp!1483414 tp!1483410))))

(declare-fun b!5330312 () Bool)

(declare-fun tp!1483413 () Bool)

(declare-fun tp!1483411 () Bool)

(assert (=> b!5330312 (= e!3310722 (and tp!1483413 tp!1483411))))

(declare-fun b!5330311 () Bool)

(assert (=> b!5330311 (= e!3310722 tp_is_empty!39247)))

(assert (= (and b!5329328 ((_ is ElementMatch!14997) (regOne!30506 r!7292))) b!5330311))

(assert (= (and b!5329328 ((_ is Concat!23842) (regOne!30506 r!7292))) b!5330312))

(assert (= (and b!5329328 ((_ is Star!14997) (regOne!30506 r!7292))) b!5330313))

(assert (= (and b!5329328 ((_ is Union!14997) (regOne!30506 r!7292))) b!5330314))

(declare-fun e!3310723 () Bool)

(assert (=> b!5329328 (= tp!1483301 e!3310723)))

(declare-fun b!5330317 () Bool)

(declare-fun tp!1483417 () Bool)

(assert (=> b!5330317 (= e!3310723 tp!1483417)))

(declare-fun b!5330318 () Bool)

(declare-fun tp!1483419 () Bool)

(declare-fun tp!1483415 () Bool)

(assert (=> b!5330318 (= e!3310723 (and tp!1483419 tp!1483415))))

(declare-fun b!5330316 () Bool)

(declare-fun tp!1483418 () Bool)

(declare-fun tp!1483416 () Bool)

(assert (=> b!5330316 (= e!3310723 (and tp!1483418 tp!1483416))))

(declare-fun b!5330315 () Bool)

(assert (=> b!5330315 (= e!3310723 tp_is_empty!39247)))

(assert (= (and b!5329328 ((_ is ElementMatch!14997) (regTwo!30506 r!7292))) b!5330315))

(assert (= (and b!5329328 ((_ is Concat!23842) (regTwo!30506 r!7292))) b!5330316))

(assert (= (and b!5329328 ((_ is Star!14997) (regTwo!30506 r!7292))) b!5330317))

(assert (= (and b!5329328 ((_ is Union!14997) (regTwo!30506 r!7292))) b!5330318))

(declare-fun condSetEmpty!34359 () Bool)

(assert (=> setNonEmpty!34353 (= condSetEmpty!34359 (= setRest!34353 ((as const (Array Context!8762 Bool)) false)))))

(declare-fun setRes!34359 () Bool)

(assert (=> setNonEmpty!34353 (= tp!1483308 setRes!34359)))

(declare-fun setIsEmpty!34359 () Bool)

(assert (=> setIsEmpty!34359 setRes!34359))

(declare-fun tp!1483425 () Bool)

(declare-fun e!3310726 () Bool)

(declare-fun setNonEmpty!34359 () Bool)

(declare-fun setElem!34359 () Context!8762)

(assert (=> setNonEmpty!34359 (= setRes!34359 (and tp!1483425 (inv!80739 setElem!34359) e!3310726))))

(declare-fun setRest!34359 () (InoxSet Context!8762))

(assert (=> setNonEmpty!34359 (= setRest!34353 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) setElem!34359 true) setRest!34359))))

(declare-fun b!5330323 () Bool)

(declare-fun tp!1483424 () Bool)

(assert (=> b!5330323 (= e!3310726 tp!1483424)))

(assert (= (and setNonEmpty!34353 condSetEmpty!34359) setIsEmpty!34359))

(assert (= (and setNonEmpty!34353 (not condSetEmpty!34359)) setNonEmpty!34359))

(assert (= setNonEmpty!34359 b!5330323))

(declare-fun m!6363760 () Bool)

(assert (=> setNonEmpty!34359 m!6363760))

(declare-fun b_lambda!204975 () Bool)

(assert (= b_lambda!204973 (or b!5329319 b_lambda!204975)))

(declare-fun bs!1235344 () Bool)

(declare-fun d!1711392 () Bool)

(assert (= bs!1235344 (and d!1711392 b!5329319)))

(assert (=> bs!1235344 (= (dynLambda!24187 lambda!272305 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))) (validRegex!6733 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun m!6363762 () Bool)

(assert (=> bs!1235344 m!6363762))

(assert (=> b!5330125 d!1711392))

(declare-fun b_lambda!204977 () Bool)

(assert (= b_lambda!204959 (or b!5329326 b_lambda!204977)))

(declare-fun bs!1235345 () Bool)

(declare-fun d!1711394 () Bool)

(assert (= bs!1235345 (and d!1711394 b!5329326)))

(assert (=> bs!1235345 (= (dynLambda!24185 lambda!272302 lt!2174326) (derivationStepZipperUp!369 lt!2174326 (h!67614 s!2326)))))

(assert (=> bs!1235345 m!6362906))

(assert (=> d!1711186 d!1711394))

(declare-fun b_lambda!204979 () Bool)

(assert (= b_lambda!204971 (or b!5329326 b_lambda!204979)))

(declare-fun bs!1235346 () Bool)

(declare-fun d!1711396 () Bool)

(assert (= bs!1235346 (and d!1711396 b!5329326)))

(assert (=> bs!1235346 (= (dynLambda!24185 lambda!272302 (h!67616 zl!343)) (derivationStepZipperUp!369 (h!67616 zl!343) (h!67614 s!2326)))))

(assert (=> bs!1235346 m!6362934))

(assert (=> d!1711300 d!1711396))

(check-sat (not d!1711386) (not b!5330204) (not b_lambda!204979) (not b!5330112) (not b!5330312) (not b!5329667) (not b!5329933) (not bm!380786) (not bm!380817) (not b!5329935) (not b!5330316) (not b!5329972) (not d!1711262) (not b!5330159) (not b!5330237) (not bm!380818) (not d!1711342) (not b!5330095) (not d!1711186) (not b!5330106) (not b!5330140) (not d!1711312) (not d!1711328) (not b!5330126) (not b!5330168) (not b!5330094) (not d!1711296) (not b!5330303) (not bm!380732) (not b!5330298) (not b!5330130) (not b!5330294) (not d!1711346) (not b!5329934) (not b!5330260) (not b!5330119) (not setNonEmpty!34359) (not bm!380802) (not b!5330323) (not b!5330110) (not b!5330183) (not d!1711330) (not b!5330160) (not b!5330295) (not b!5329967) tp_is_empty!39247 (not d!1711344) (not b!5330153) (not bm!380823) (not b!5330314) (not b!5330132) (not bs!1235344) (not b!5330135) (not bm!380824) (not b!5329601) (not d!1711356) (not b!5329666) (not b!5329968) (not b!5330166) (not b!5330234) (not d!1711214) (not bm!380800) (not bm!380814) (not b!5330192) (not d!1711192) (not d!1711350) (not b!5330209) (not b!5330150) (not d!1711360) (not b!5330230) (not b!5330309) (not b!5330195) (not b!5329954) (not b!5329924) (not b!5329780) (not b!5330127) (not bm!380821) (not b!5330158) (not d!1711334) (not b!5330266) (not d!1711292) (not b!5330120) (not b!5330299) (not d!1711374) (not b!5330313) (not bm!380810) (not b!5330118) (not b!5330100) (not d!1711384) (not b!5330151) (not bm!380813) (not b!5329977) (not b!5330113) (not b!5330102) (not b!5329774) (not b!5330268) (not b!5330128) (not bm!380816) (not b!5330261) (not b!5330239) (not b!5329776) (not b!5330131) (not d!1711362) (not b!5329925) (not d!1711336) (not d!1711300) (not d!1711332) (not b!5330318) (not b!5330238) (not bm!380782) (not b!5329659) (not d!1711248) (not b_lambda!204977) (not b!5330310) (not bm!380803) (not d!1711352) (not bm!380784) (not d!1711324) (not d!1711380) (not b!5329660) (not b!5330186) (not b!5330138) (not b!5330087) (not b!5329973) (not b!5330281) (not b!5330152) (not b!5330088) (not b!5330002) (not b!5330259) (not d!1711318) (not b!5329930) (not b!5330282) (not bs!1235346) (not d!1711294) (not b!5329772) (not d!1711354) (not b!5330194) (not b!5330300) (not bm!380819) (not b!5330233) (not d!1711338) (not b!5329963) (not b!5330129) (not bm!380815) (not b!5330137) (not b!5329597) (not b!5330193) (not b!5329932) (not b!5330296) (not d!1711366) (not b!5330156) (not bs!1235345) (not bm!380781) (not b!5330143) (not d!1711250) (not b!5330085) (not d!1711220) (not bm!380809) (not b!5330173) (not d!1711174) (not d!1711198) (not b!5330207) (not b!5330164) (not b!5330191) (not b!5330165) (not b!5330047) (not b_lambda!204975) (not d!1711310) (not b!5330170) (not b!5330185) (not b!5330274) (not b!5330093) (not b!5330202) (not d!1711376) (not b!5330231) (not b!5329926) (not b!5330317) (not d!1711316) (not b!5329777) (not b!5330302) (not b!5330244) (not b!5330044) (not b!5330248) (not bm!380785) (not d!1711368) (not d!1711208) (not b!5330304) (not b!5329927) (not b!5329778) (not b!5330162) (not d!1711358))
(check-sat)
(get-model)

(declare-fun d!1711512 () Bool)

(assert (=> d!1711512 (= ($colon$colon!1404 (exprs!4881 lt!2174316) (ite (or c!926851 c!926852) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67615 (exprs!4881 (h!67616 zl!343))))) (Cons!61167 (ite (or c!926851 c!926852) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67615 (exprs!4881 (h!67616 zl!343)))) (exprs!4881 lt!2174316)))))

(assert (=> bm!380803 d!1711512))

(declare-fun d!1711520 () Bool)

(assert (=> d!1711520 (= (head!11426 s!2326) (h!67614 s!2326))))

(assert (=> b!5330118 d!1711520))

(assert (=> bs!1235345 d!1711178))

(declare-fun b!5330529 () Bool)

(declare-fun e!3310852 () (InoxSet Context!8762))

(declare-fun call!380871 () (InoxSet Context!8762))

(assert (=> b!5330529 (= e!3310852 call!380871)))

(declare-fun bm!380865 () Bool)

(declare-fun call!380872 () (InoxSet Context!8762))

(declare-fun call!380870 () (InoxSet Context!8762))

(assert (=> bm!380865 (= call!380872 call!380870)))

(declare-fun b!5330530 () Bool)

(declare-fun e!3310853 () (InoxSet Context!8762))

(assert (=> b!5330530 (= e!3310853 call!380871)))

(declare-fun call!380873 () List!61291)

(declare-fun bm!380866 () Bool)

(declare-fun c!927008 () Bool)

(declare-fun c!927010 () Bool)

(declare-fun c!927011 () Bool)

(assert (=> bm!380866 (= call!380870 (derivationStepZipperDown!445 (ite c!927008 (regTwo!30507 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (ite c!927010 (regTwo!30506 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (ite c!927011 (regOne!30506 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (reg!15326 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))) (ite (or c!927008 c!927010) (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829)) (Context!8763 call!380873)) (h!67614 s!2326)))))

(declare-fun b!5330531 () Bool)

(declare-fun e!3310855 () Bool)

(assert (=> b!5330531 (= e!3310855 (nullable!5166 (regOne!30506 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))))

(declare-fun b!5330532 () Bool)

(assert (=> b!5330532 (= c!927010 e!3310855)))

(declare-fun res!2260972 () Bool)

(assert (=> b!5330532 (=> (not res!2260972) (not e!3310855))))

(assert (=> b!5330532 (= res!2260972 ((_ is Concat!23842) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun e!3310854 () (InoxSet Context!8762))

(declare-fun e!3310851 () (InoxSet Context!8762))

(assert (=> b!5330532 (= e!3310854 e!3310851)))

(declare-fun b!5330533 () Bool)

(assert (=> b!5330533 (= e!3310852 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!380867 () Bool)

(assert (=> bm!380867 (= call!380871 call!380872)))

(declare-fun call!380874 () List!61291)

(declare-fun call!380875 () (InoxSet Context!8762))

(declare-fun bm!380868 () Bool)

(assert (=> bm!380868 (= call!380875 (derivationStepZipperDown!445 (ite c!927008 (regOne!30507 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (regOne!30506 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))) (ite c!927008 (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829)) (Context!8763 call!380874)) (h!67614 s!2326)))))

(declare-fun b!5330534 () Bool)

(assert (=> b!5330534 (= e!3310851 ((_ map or) call!380875 call!380872))))

(declare-fun bm!380869 () Bool)

(assert (=> bm!380869 (= call!380874 ($colon$colon!1404 (exprs!4881 (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829))) (ite (or c!927010 c!927011) (regTwo!30506 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))))

(declare-fun b!5330535 () Bool)

(declare-fun c!927009 () Bool)

(assert (=> b!5330535 (= c!927009 ((_ is Star!14997) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(assert (=> b!5330535 (= e!3310853 e!3310852)))

(declare-fun b!5330536 () Bool)

(declare-fun e!3310850 () (InoxSet Context!8762))

(assert (=> b!5330536 (= e!3310850 e!3310854)))

(assert (=> b!5330536 (= c!927008 ((_ is Union!14997) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5330538 () Bool)

(assert (=> b!5330538 (= e!3310850 (store ((as const (Array Context!8762 Bool)) false) (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829)) true))))

(declare-fun b!5330539 () Bool)

(assert (=> b!5330539 (= e!3310851 e!3310853)))

(assert (=> b!5330539 (= c!927011 ((_ is Concat!23842) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun bm!380870 () Bool)

(assert (=> bm!380870 (= call!380873 call!380874)))

(declare-fun b!5330537 () Bool)

(assert (=> b!5330537 (= e!3310854 ((_ map or) call!380875 call!380870))))

(declare-fun c!927007 () Bool)

(declare-fun d!1711522 () Bool)

(assert (=> d!1711522 (= c!927007 (and ((_ is ElementMatch!14997) (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (= (c!926649 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))) (h!67614 s!2326))))))

(assert (=> d!1711522 (= (derivationStepZipperDown!445 (ite c!926930 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))) (ite c!926930 (Context!8763 lt!2174324) (Context!8763 call!380829)) (h!67614 s!2326)) e!3310850)))

(assert (= (and d!1711522 c!927007) b!5330538))

(assert (= (and d!1711522 (not c!927007)) b!5330536))

(assert (= (and b!5330536 c!927008) b!5330537))

(assert (= (and b!5330536 (not c!927008)) b!5330532))

(assert (= (and b!5330532 res!2260972) b!5330531))

(assert (= (and b!5330532 c!927010) b!5330534))

(assert (= (and b!5330532 (not c!927010)) b!5330539))

(assert (= (and b!5330539 c!927011) b!5330530))

(assert (= (and b!5330539 (not c!927011)) b!5330535))

(assert (= (and b!5330535 c!927009) b!5330529))

(assert (= (and b!5330535 (not c!927009)) b!5330533))

(assert (= (or b!5330530 b!5330529) bm!380870))

(assert (= (or b!5330530 b!5330529) bm!380867))

(assert (= (or b!5330534 bm!380870) bm!380869))

(assert (= (or b!5330534 bm!380867) bm!380865))

(assert (= (or b!5330537 bm!380865) bm!380866))

(assert (= (or b!5330537 b!5330534) bm!380868))

(declare-fun m!6363988 () Bool)

(assert (=> b!5330538 m!6363988))

(declare-fun m!6363990 () Bool)

(assert (=> b!5330531 m!6363990))

(declare-fun m!6363992 () Bool)

(assert (=> bm!380868 m!6363992))

(declare-fun m!6363994 () Bool)

(assert (=> bm!380869 m!6363994))

(declare-fun m!6363996 () Bool)

(assert (=> bm!380866 m!6363996))

(assert (=> bm!380823 d!1711522))

(declare-fun d!1711526 () Bool)

(assert (=> d!1711526 (= (isEmpty!33140 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326)) (not ((_ is Some!15107) (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326))))))

(assert (=> d!1711292 d!1711526))

(declare-fun d!1711530 () Bool)

(assert (=> d!1711530 (= (isEmpty!33135 (tail!10524 lt!2174307)) ((_ is Nil!61167) (tail!10524 lt!2174307)))))

(assert (=> b!5330138 d!1711530))

(declare-fun d!1711532 () Bool)

(assert (=> d!1711532 (= (tail!10524 lt!2174307) (t!374506 lt!2174307))))

(assert (=> b!5330138 d!1711532))

(declare-fun d!1711534 () Bool)

(assert (=> d!1711534 (= (isDefined!11811 lt!2174392) (not (isEmpty!33140 lt!2174392)))))

(declare-fun bs!1235474 () Bool)

(assert (= bs!1235474 d!1711534))

(declare-fun m!6364004 () Bool)

(assert (=> bs!1235474 m!6364004))

(assert (=> d!1711220 d!1711534))

(declare-fun b!5330549 () Bool)

(declare-fun e!3310863 () Bool)

(declare-fun lt!2174523 () Bool)

(assert (=> b!5330549 (= e!3310863 (not lt!2174523))))

(declare-fun b!5330550 () Bool)

(declare-fun res!2260980 () Bool)

(declare-fun e!3310865 () Bool)

(assert (=> b!5330550 (=> (not res!2260980) (not e!3310865))))

(declare-fun call!380879 () Bool)

(assert (=> b!5330550 (= res!2260980 (not call!380879))))

(declare-fun d!1711536 () Bool)

(declare-fun e!3310866 () Bool)

(assert (=> d!1711536 e!3310866))

(declare-fun c!927016 () Bool)

(assert (=> d!1711536 (= c!927016 ((_ is EmptyExpr!14997) (regOne!30506 r!7292)))))

(declare-fun e!3310869 () Bool)

(assert (=> d!1711536 (= lt!2174523 e!3310869)))

(declare-fun c!927014 () Bool)

(assert (=> d!1711536 (= c!927014 (isEmpty!33139 Nil!61166))))

(assert (=> d!1711536 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711536 (= (matchR!7182 (regOne!30506 r!7292) Nil!61166) lt!2174523)))

(declare-fun b!5330551 () Bool)

(assert (=> b!5330551 (= e!3310866 e!3310863)))

(declare-fun c!927015 () Bool)

(assert (=> b!5330551 (= c!927015 ((_ is EmptyLang!14997) (regOne!30506 r!7292)))))

(declare-fun b!5330552 () Bool)

(assert (=> b!5330552 (= e!3310869 (matchR!7182 (derivativeStep!4175 (regOne!30506 r!7292) (head!11426 Nil!61166)) (tail!10523 Nil!61166)))))

(declare-fun b!5330553 () Bool)

(declare-fun res!2260983 () Bool)

(declare-fun e!3310867 () Bool)

(assert (=> b!5330553 (=> res!2260983 e!3310867)))

(assert (=> b!5330553 (= res!2260983 (not ((_ is ElementMatch!14997) (regOne!30506 r!7292))))))

(assert (=> b!5330553 (= e!3310863 e!3310867)))

(declare-fun b!5330554 () Bool)

(declare-fun res!2260981 () Bool)

(declare-fun e!3310864 () Bool)

(assert (=> b!5330554 (=> res!2260981 e!3310864)))

(assert (=> b!5330554 (= res!2260981 (not (isEmpty!33139 (tail!10523 Nil!61166))))))

(declare-fun b!5330555 () Bool)

(assert (=> b!5330555 (= e!3310864 (not (= (head!11426 Nil!61166) (c!926649 (regOne!30506 r!7292)))))))

(declare-fun b!5330556 () Bool)

(assert (=> b!5330556 (= e!3310866 (= lt!2174523 call!380879))))

(declare-fun b!5330557 () Bool)

(declare-fun res!2260984 () Bool)

(assert (=> b!5330557 (=> res!2260984 e!3310867)))

(assert (=> b!5330557 (= res!2260984 e!3310865)))

(declare-fun res!2260982 () Bool)

(assert (=> b!5330557 (=> (not res!2260982) (not e!3310865))))

(assert (=> b!5330557 (= res!2260982 lt!2174523)))

(declare-fun b!5330558 () Bool)

(declare-fun e!3310868 () Bool)

(assert (=> b!5330558 (= e!3310868 e!3310864)))

(declare-fun res!2260985 () Bool)

(assert (=> b!5330558 (=> res!2260985 e!3310864)))

(assert (=> b!5330558 (= res!2260985 call!380879)))

(declare-fun b!5330559 () Bool)

(assert (=> b!5330559 (= e!3310867 e!3310868)))

(declare-fun res!2260979 () Bool)

(assert (=> b!5330559 (=> (not res!2260979) (not e!3310868))))

(assert (=> b!5330559 (= res!2260979 (not lt!2174523))))

(declare-fun b!5330560 () Bool)

(assert (=> b!5330560 (= e!3310865 (= (head!11426 Nil!61166) (c!926649 (regOne!30506 r!7292))))))

(declare-fun b!5330561 () Bool)

(assert (=> b!5330561 (= e!3310869 (nullable!5166 (regOne!30506 r!7292)))))

(declare-fun b!5330562 () Bool)

(declare-fun res!2260978 () Bool)

(assert (=> b!5330562 (=> (not res!2260978) (not e!3310865))))

(assert (=> b!5330562 (= res!2260978 (isEmpty!33139 (tail!10523 Nil!61166)))))

(declare-fun bm!380874 () Bool)

(assert (=> bm!380874 (= call!380879 (isEmpty!33139 Nil!61166))))

(assert (= (and d!1711536 c!927014) b!5330561))

(assert (= (and d!1711536 (not c!927014)) b!5330552))

(assert (= (and d!1711536 c!927016) b!5330556))

(assert (= (and d!1711536 (not c!927016)) b!5330551))

(assert (= (and b!5330551 c!927015) b!5330549))

(assert (= (and b!5330551 (not c!927015)) b!5330553))

(assert (= (and b!5330553 (not res!2260983)) b!5330557))

(assert (= (and b!5330557 res!2260982) b!5330550))

(assert (= (and b!5330550 res!2260980) b!5330562))

(assert (= (and b!5330562 res!2260978) b!5330560))

(assert (= (and b!5330557 (not res!2260984)) b!5330559))

(assert (= (and b!5330559 res!2260979) b!5330558))

(assert (= (and b!5330558 (not res!2260985)) b!5330554))

(assert (= (and b!5330554 (not res!2260981)) b!5330555))

(assert (= (or b!5330556 b!5330550 b!5330558) bm!380874))

(declare-fun m!6364006 () Bool)

(assert (=> b!5330552 m!6364006))

(assert (=> b!5330552 m!6364006))

(declare-fun m!6364008 () Bool)

(assert (=> b!5330552 m!6364008))

(declare-fun m!6364010 () Bool)

(assert (=> b!5330552 m!6364010))

(assert (=> b!5330552 m!6364008))

(assert (=> b!5330552 m!6364010))

(declare-fun m!6364012 () Bool)

(assert (=> b!5330552 m!6364012))

(declare-fun m!6364014 () Bool)

(assert (=> d!1711536 m!6364014))

(assert (=> d!1711536 m!6363326))

(assert (=> b!5330554 m!6364010))

(assert (=> b!5330554 m!6364010))

(declare-fun m!6364016 () Bool)

(assert (=> b!5330554 m!6364016))

(assert (=> bm!380874 m!6364014))

(assert (=> b!5330562 m!6364010))

(assert (=> b!5330562 m!6364010))

(assert (=> b!5330562 m!6364016))

(assert (=> b!5330555 m!6364006))

(declare-fun m!6364018 () Bool)

(assert (=> b!5330561 m!6364018))

(assert (=> b!5330560 m!6364006))

(assert (=> d!1711220 d!1711536))

(declare-fun b!5330577 () Bool)

(declare-fun e!3310886 () Bool)

(declare-fun e!3310883 () Bool)

(assert (=> b!5330577 (= e!3310886 e!3310883)))

(declare-fun res!2261000 () Bool)

(assert (=> b!5330577 (= res!2261000 (not (nullable!5166 (reg!15326 (regOne!30506 r!7292)))))))

(assert (=> b!5330577 (=> (not res!2261000) (not e!3310883))))

(declare-fun b!5330578 () Bool)

(declare-fun e!3310887 () Bool)

(assert (=> b!5330578 (= e!3310887 e!3310886)))

(declare-fun c!927019 () Bool)

(assert (=> b!5330578 (= c!927019 ((_ is Star!14997) (regOne!30506 r!7292)))))

(declare-fun b!5330579 () Bool)

(declare-fun e!3310885 () Bool)

(assert (=> b!5330579 (= e!3310886 e!3310885)))

(declare-fun c!927020 () Bool)

(assert (=> b!5330579 (= c!927020 ((_ is Union!14997) (regOne!30506 r!7292)))))

(declare-fun d!1711538 () Bool)

(declare-fun res!2260998 () Bool)

(assert (=> d!1711538 (=> res!2260998 e!3310887)))

(assert (=> d!1711538 (= res!2260998 ((_ is ElementMatch!14997) (regOne!30506 r!7292)))))

(assert (=> d!1711538 (= (validRegex!6733 (regOne!30506 r!7292)) e!3310887)))

(declare-fun b!5330580 () Bool)

(declare-fun e!3310884 () Bool)

(declare-fun e!3310882 () Bool)

(assert (=> b!5330580 (= e!3310884 e!3310882)))

(declare-fun res!2260996 () Bool)

(assert (=> b!5330580 (=> (not res!2260996) (not e!3310882))))

(declare-fun call!380886 () Bool)

(assert (=> b!5330580 (= res!2260996 call!380886)))

(declare-fun bm!380879 () Bool)

(declare-fun call!380885 () Bool)

(assert (=> bm!380879 (= call!380885 (validRegex!6733 (ite c!927019 (reg!15326 (regOne!30506 r!7292)) (ite c!927020 (regOne!30507 (regOne!30506 r!7292)) (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun bm!380880 () Bool)

(declare-fun call!380884 () Bool)

(assert (=> bm!380880 (= call!380884 (validRegex!6733 (ite c!927020 (regTwo!30507 (regOne!30506 r!7292)) (regTwo!30506 (regOne!30506 r!7292)))))))

(declare-fun b!5330581 () Bool)

(declare-fun res!2260997 () Bool)

(assert (=> b!5330581 (=> res!2260997 e!3310884)))

(assert (=> b!5330581 (= res!2260997 (not ((_ is Concat!23842) (regOne!30506 r!7292))))))

(assert (=> b!5330581 (= e!3310885 e!3310884)))

(declare-fun b!5330582 () Bool)

(assert (=> b!5330582 (= e!3310883 call!380885)))

(declare-fun b!5330583 () Bool)

(declare-fun res!2260999 () Bool)

(declare-fun e!3310888 () Bool)

(assert (=> b!5330583 (=> (not res!2260999) (not e!3310888))))

(assert (=> b!5330583 (= res!2260999 call!380886)))

(assert (=> b!5330583 (= e!3310885 e!3310888)))

(declare-fun bm!380881 () Bool)

(assert (=> bm!380881 (= call!380886 call!380885)))

(declare-fun b!5330584 () Bool)

(assert (=> b!5330584 (= e!3310888 call!380884)))

(declare-fun b!5330585 () Bool)

(assert (=> b!5330585 (= e!3310882 call!380884)))

(assert (= (and d!1711538 (not res!2260998)) b!5330578))

(assert (= (and b!5330578 c!927019) b!5330577))

(assert (= (and b!5330578 (not c!927019)) b!5330579))

(assert (= (and b!5330577 res!2261000) b!5330582))

(assert (= (and b!5330579 c!927020) b!5330583))

(assert (= (and b!5330579 (not c!927020)) b!5330581))

(assert (= (and b!5330583 res!2260999) b!5330584))

(assert (= (and b!5330581 (not res!2260997)) b!5330580))

(assert (= (and b!5330580 res!2260996) b!5330585))

(assert (= (or b!5330584 b!5330585) bm!380880))

(assert (= (or b!5330583 b!5330580) bm!380881))

(assert (= (or b!5330582 bm!380881) bm!380879))

(declare-fun m!6364020 () Bool)

(assert (=> b!5330577 m!6364020))

(declare-fun m!6364022 () Bool)

(assert (=> bm!380879 m!6364022))

(declare-fun m!6364024 () Bool)

(assert (=> bm!380880 m!6364024))

(assert (=> d!1711220 d!1711538))

(declare-fun d!1711540 () Bool)

(assert (=> d!1711540 (= (isEmpty!33139 (tail!10523 s!2326)) ((_ is Nil!61166) (tail!10523 s!2326)))))

(assert (=> b!5330087 d!1711540))

(declare-fun d!1711542 () Bool)

(assert (=> d!1711542 (= (tail!10523 s!2326) (t!374505 s!2326))))

(assert (=> b!5330087 d!1711542))

(assert (=> d!1711186 d!1711174))

(declare-fun d!1711544 () Bool)

(assert (=> d!1711544 (= (flatMap!724 lt!2174322 lambda!272302) (dynLambda!24185 lambda!272302 lt!2174326))))

(assert (=> d!1711544 true))

(declare-fun _$13!1913 () Unit!153506)

(assert (=> d!1711544 (= (choose!39914 lt!2174322 lt!2174326 lambda!272302) _$13!1913)))

(declare-fun b_lambda!204995 () Bool)

(assert (=> (not b_lambda!204995) (not d!1711544)))

(declare-fun bs!1235475 () Bool)

(assert (= bs!1235475 d!1711544))

(assert (=> bs!1235475 m!6362902))

(assert (=> bs!1235475 m!6363166))

(assert (=> d!1711186 d!1711544))

(declare-fun d!1711548 () Bool)

(assert (=> d!1711548 (= (isEmptyExpr!889 lt!2174453) ((_ is EmptyExpr!14997) lt!2174453))))

(assert (=> b!5330130 d!1711548))

(declare-fun d!1711550 () Bool)

(assert (=> d!1711550 (= (isEmpty!33135 (tail!10524 (unfocusZipperList!439 zl!343))) ((_ is Nil!61167) (tail!10524 (unfocusZipperList!439 zl!343))))))

(assert (=> b!5330234 d!1711550))

(declare-fun d!1711552 () Bool)

(assert (=> d!1711552 (= (tail!10524 (unfocusZipperList!439 zl!343)) (t!374506 (unfocusZipperList!439 zl!343)))))

(assert (=> b!5330234 d!1711552))

(declare-fun d!1711554 () Bool)

(assert (=> d!1711554 (= (isEmpty!33135 (tail!10524 lt!2174324)) ((_ is Nil!61167) (tail!10524 lt!2174324)))))

(assert (=> b!5330159 d!1711554))

(declare-fun d!1711556 () Bool)

(assert (=> d!1711556 (= (tail!10524 lt!2174324) (t!374506 lt!2174324))))

(assert (=> b!5330159 d!1711556))

(declare-fun d!1711558 () Bool)

(assert (=> d!1711558 (= (nullable!5166 (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))) (nullableFct!1506 (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))

(declare-fun bs!1235479 () Bool)

(assert (= bs!1235479 d!1711558))

(declare-fun m!6364030 () Bool)

(assert (=> bs!1235479 m!6364030))

(assert (=> b!5330248 d!1711558))

(declare-fun d!1711560 () Bool)

(assert (=> d!1711560 (= (head!11427 (exprs!4881 (h!67616 zl!343))) (h!67615 (exprs!4881 (h!67616 zl!343))))))

(assert (=> b!5329924 d!1711560))

(assert (=> d!1711350 d!1711334))

(declare-fun b!5330604 () Bool)

(declare-fun e!3310906 () Bool)

(declare-fun e!3310903 () Bool)

(assert (=> b!5330604 (= e!3310906 e!3310903)))

(declare-fun res!2261013 () Bool)

(assert (=> b!5330604 (= res!2261013 (not (nullable!5166 (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))))

(assert (=> b!5330604 (=> (not res!2261013) (not e!3310903))))

(declare-fun b!5330605 () Bool)

(declare-fun e!3310907 () Bool)

(assert (=> b!5330605 (= e!3310907 e!3310906)))

(declare-fun c!927026 () Bool)

(assert (=> b!5330605 (= c!927026 ((_ is Star!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5330606 () Bool)

(declare-fun e!3310905 () Bool)

(assert (=> b!5330606 (= e!3310906 e!3310905)))

(declare-fun c!927027 () Bool)

(assert (=> b!5330606 (= c!927027 ((_ is Union!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun d!1711562 () Bool)

(declare-fun res!2261011 () Bool)

(assert (=> d!1711562 (=> res!2261011 e!3310907)))

(assert (=> d!1711562 (= res!2261011 ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292))))))

(assert (=> d!1711562 (= (validRegex!6733 (regOne!30506 (regOne!30506 r!7292))) e!3310907)))

(declare-fun b!5330607 () Bool)

(declare-fun e!3310904 () Bool)

(declare-fun e!3310902 () Bool)

(assert (=> b!5330607 (= e!3310904 e!3310902)))

(declare-fun res!2261009 () Bool)

(assert (=> b!5330607 (=> (not res!2261009) (not e!3310902))))

(declare-fun call!380893 () Bool)

(assert (=> b!5330607 (= res!2261009 call!380893)))

(declare-fun bm!380886 () Bool)

(declare-fun call!380892 () Bool)

(assert (=> bm!380886 (= call!380892 (validRegex!6733 (ite c!927026 (reg!15326 (regOne!30506 (regOne!30506 r!7292))) (ite c!927027 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292)))))))))

(declare-fun bm!380887 () Bool)

(declare-fun call!380891 () Bool)

(assert (=> bm!380887 (= call!380891 (validRegex!6733 (ite c!927027 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5330608 () Bool)

(declare-fun res!2261010 () Bool)

(assert (=> b!5330608 (=> res!2261010 e!3310904)))

(assert (=> b!5330608 (= res!2261010 (not ((_ is Concat!23842) (regOne!30506 (regOne!30506 r!7292)))))))

(assert (=> b!5330608 (= e!3310905 e!3310904)))

(declare-fun b!5330609 () Bool)

(assert (=> b!5330609 (= e!3310903 call!380892)))

(declare-fun b!5330610 () Bool)

(declare-fun res!2261012 () Bool)

(declare-fun e!3310908 () Bool)

(assert (=> b!5330610 (=> (not res!2261012) (not e!3310908))))

(assert (=> b!5330610 (= res!2261012 call!380893)))

(assert (=> b!5330610 (= e!3310905 e!3310908)))

(declare-fun bm!380888 () Bool)

(assert (=> bm!380888 (= call!380893 call!380892)))

(declare-fun b!5330611 () Bool)

(assert (=> b!5330611 (= e!3310908 call!380891)))

(declare-fun b!5330612 () Bool)

(assert (=> b!5330612 (= e!3310902 call!380891)))

(assert (= (and d!1711562 (not res!2261011)) b!5330605))

(assert (= (and b!5330605 c!927026) b!5330604))

(assert (= (and b!5330605 (not c!927026)) b!5330606))

(assert (= (and b!5330604 res!2261013) b!5330609))

(assert (= (and b!5330606 c!927027) b!5330610))

(assert (= (and b!5330606 (not c!927027)) b!5330608))

(assert (= (and b!5330610 res!2261012) b!5330611))

(assert (= (and b!5330608 (not res!2261010)) b!5330607))

(assert (= (and b!5330607 res!2261009) b!5330612))

(assert (= (or b!5330611 b!5330612) bm!380887))

(assert (= (or b!5330610 b!5330607) bm!380888))

(assert (= (or b!5330609 bm!380888) bm!380886))

(declare-fun m!6364032 () Bool)

(assert (=> b!5330604 m!6364032))

(declare-fun m!6364034 () Bool)

(assert (=> bm!380886 m!6364034))

(declare-fun m!6364036 () Bool)

(assert (=> bm!380887 m!6364036))

(assert (=> d!1711350 d!1711562))

(declare-fun bs!1235508 () Bool)

(declare-fun d!1711564 () Bool)

(assert (= bs!1235508 (and d!1711564 d!1711336)))

(declare-fun lambda!272438 () Int)

(assert (=> bs!1235508 (= lambda!272438 lambda!272382)))

(declare-fun bs!1235509 () Bool)

(assert (= bs!1235509 (and d!1711564 b!5329333)))

(assert (=> bs!1235509 (not (= lambda!272438 lambda!272301))))

(declare-fun bs!1235510 () Bool)

(assert (= bs!1235510 (and d!1711564 b!5330177)))

(assert (=> bs!1235510 (not (= lambda!272438 lambda!272389))))

(declare-fun bs!1235511 () Bool)

(assert (= bs!1235511 (and d!1711564 b!5330147)))

(assert (=> bs!1235511 (not (= lambda!272438 lambda!272385))))

(assert (=> bs!1235509 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272438 lambda!272300))))

(declare-fun bs!1235512 () Bool)

(assert (= bs!1235512 (and d!1711564 b!5330051)))

(assert (=> bs!1235512 (not (= lambda!272438 lambda!272377))))

(declare-fun bs!1235513 () Bool)

(assert (= bs!1235513 (and d!1711564 b!5329319)))

(assert (=> bs!1235513 (not (= lambda!272438 lambda!272304))))

(declare-fun bs!1235514 () Bool)

(assert (= bs!1235514 (and d!1711564 b!5330178)))

(assert (=> bs!1235514 (not (= lambda!272438 lambda!272390))))

(declare-fun bs!1235515 () Bool)

(assert (= bs!1235515 (and d!1711564 d!1711250)))

(assert (=> bs!1235515 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272438 lambda!272362))))

(declare-fun bs!1235516 () Bool)

(assert (= bs!1235516 (and d!1711564 d!1711262)))

(assert (=> bs!1235516 (not (= lambda!272438 lambda!272369))))

(declare-fun bs!1235517 () Bool)

(assert (= bs!1235517 (and d!1711564 b!5330148)))

(assert (=> bs!1235517 (not (= lambda!272438 lambda!272386))))

(assert (=> bs!1235516 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272438 lambda!272368))))

(declare-fun bs!1235518 () Bool)

(assert (= bs!1235518 (and d!1711564 d!1711350)))

(assert (=> bs!1235518 (= lambda!272438 lambda!272387)))

(assert (=> bs!1235508 (not (= lambda!272438 lambda!272383))))

(assert (=> bs!1235513 (= lambda!272438 lambda!272303)))

(declare-fun bs!1235519 () Bool)

(assert (= bs!1235519 (and d!1711564 b!5330052)))

(assert (=> bs!1235519 (not (= lambda!272438 lambda!272378))))

(assert (=> d!1711564 true))

(assert (=> d!1711564 true))

(assert (=> d!1711564 true))

(assert (=> d!1711564 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326)) (Exists!2178 lambda!272438))))

(assert (=> d!1711564 true))

(declare-fun _$89!1534 () Unit!153506)

(assert (=> d!1711564 (= (choose!39918 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326) _$89!1534)))

(declare-fun bs!1235520 () Bool)

(assert (= bs!1235520 d!1711564))

(assert (=> bs!1235520 m!6362976))

(assert (=> bs!1235520 m!6362976))

(assert (=> bs!1235520 m!6362978))

(declare-fun m!6364044 () Bool)

(assert (=> bs!1235520 m!6364044))

(assert (=> d!1711350 d!1711564))

(assert (=> d!1711350 d!1711362))

(declare-fun d!1711572 () Bool)

(assert (=> d!1711572 (= (Exists!2178 lambda!272387) (choose!39916 lambda!272387))))

(declare-fun bs!1235521 () Bool)

(assert (= bs!1235521 d!1711572))

(declare-fun m!6364046 () Bool)

(assert (=> bs!1235521 m!6364046))

(assert (=> d!1711350 d!1711572))

(declare-fun d!1711574 () Bool)

(declare-fun c!927034 () Bool)

(assert (=> d!1711574 (= c!927034 ((_ is Nil!61168) lt!2174449))))

(declare-fun e!3310921 () (InoxSet Context!8762))

(assert (=> d!1711574 (= (content!10909 lt!2174449) e!3310921)))

(declare-fun b!5330637 () Bool)

(assert (=> b!5330637 (= e!3310921 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5330638 () Bool)

(assert (=> b!5330638 (= e!3310921 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) (h!67616 lt!2174449) true) (content!10909 (t!374507 lt!2174449))))))

(assert (= (and d!1711574 c!927034) b!5330637))

(assert (= (and d!1711574 (not c!927034)) b!5330638))

(declare-fun m!6364076 () Bool)

(assert (=> b!5330638 m!6364076))

(declare-fun m!6364078 () Bool)

(assert (=> b!5330638 m!6364078))

(assert (=> b!5330106 d!1711574))

(assert (=> b!5330191 d!1711520))

(declare-fun d!1711580 () Bool)

(assert (=> d!1711580 (= (head!11427 (unfocusZipperList!439 zl!343)) (h!67615 (unfocusZipperList!439 zl!343)))))

(assert (=> b!5330238 d!1711580))

(declare-fun d!1711582 () Bool)

(declare-fun c!927035 () Bool)

(assert (=> d!1711582 (= c!927035 (isEmpty!33139 (tail!10523 (t!374505 s!2326))))))

(declare-fun e!3310922 () Bool)

(assert (=> d!1711582 (= (matchZipper!1241 (derivationStepZipper!1238 lt!2174302 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))) e!3310922)))

(declare-fun b!5330639 () Bool)

(assert (=> b!5330639 (= e!3310922 (nullableZipper!1354 (derivationStepZipper!1238 lt!2174302 (head!11426 (t!374505 s!2326)))))))

(declare-fun b!5330640 () Bool)

(assert (=> b!5330640 (= e!3310922 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 lt!2174302 (head!11426 (t!374505 s!2326))) (head!11426 (tail!10523 (t!374505 s!2326)))) (tail!10523 (tail!10523 (t!374505 s!2326)))))))

(assert (= (and d!1711582 c!927035) b!5330639))

(assert (= (and d!1711582 (not c!927035)) b!5330640))

(assert (=> d!1711582 m!6363214))

(declare-fun m!6364080 () Bool)

(assert (=> d!1711582 m!6364080))

(assert (=> b!5330639 m!6363212))

(declare-fun m!6364082 () Bool)

(assert (=> b!5330639 m!6364082))

(assert (=> b!5330640 m!6363214))

(declare-fun m!6364084 () Bool)

(assert (=> b!5330640 m!6364084))

(assert (=> b!5330640 m!6363212))

(assert (=> b!5330640 m!6364084))

(declare-fun m!6364086 () Bool)

(assert (=> b!5330640 m!6364086))

(assert (=> b!5330640 m!6363214))

(declare-fun m!6364088 () Bool)

(assert (=> b!5330640 m!6364088))

(assert (=> b!5330640 m!6364086))

(assert (=> b!5330640 m!6364088))

(declare-fun m!6364090 () Bool)

(assert (=> b!5330640 m!6364090))

(assert (=> b!5329660 d!1711582))

(declare-fun bs!1235522 () Bool)

(declare-fun d!1711584 () Bool)

(assert (= bs!1235522 (and d!1711584 b!5329326)))

(declare-fun lambda!272439 () Int)

(assert (=> bs!1235522 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272439 lambda!272302))))

(declare-fun bs!1235523 () Bool)

(assert (= bs!1235523 (and d!1711584 d!1711192)))

(assert (=> bs!1235523 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272439 lambda!272339))))

(assert (=> d!1711584 true))

(assert (=> d!1711584 (= (derivationStepZipper!1238 lt!2174302 (head!11426 (t!374505 s!2326))) (flatMap!724 lt!2174302 lambda!272439))))

(declare-fun bs!1235524 () Bool)

(assert (= bs!1235524 d!1711584))

(declare-fun m!6364092 () Bool)

(assert (=> bs!1235524 m!6364092))

(assert (=> b!5329660 d!1711584))

(declare-fun d!1711586 () Bool)

(assert (=> d!1711586 (= (head!11426 (t!374505 s!2326)) (h!67614 (t!374505 s!2326)))))

(assert (=> b!5329660 d!1711586))

(declare-fun d!1711588 () Bool)

(assert (=> d!1711588 (= (tail!10523 (t!374505 s!2326)) (t!374505 (t!374505 s!2326)))))

(assert (=> b!5329660 d!1711588))

(assert (=> d!1711354 d!1711338))

(assert (=> d!1711354 d!1711364))

(declare-fun d!1711590 () Bool)

(assert (=> d!1711590 (= (matchR!7182 lt!2174304 s!2326) (matchRSpec!2100 lt!2174304 s!2326))))

(assert (=> d!1711590 true))

(declare-fun _$88!3634 () Unit!153506)

(assert (=> d!1711590 (= (choose!39922 lt!2174304 s!2326) _$88!3634)))

(declare-fun bs!1235526 () Bool)

(assert (= bs!1235526 d!1711590))

(assert (=> bs!1235526 m!6362968))

(assert (=> bs!1235526 m!6362954))

(assert (=> d!1711354 d!1711590))

(declare-fun b!5330650 () Bool)

(declare-fun e!3310932 () Bool)

(declare-fun e!3310929 () Bool)

(assert (=> b!5330650 (= e!3310932 e!3310929)))

(declare-fun res!2261035 () Bool)

(assert (=> b!5330650 (= res!2261035 (not (nullable!5166 (reg!15326 lt!2174304))))))

(assert (=> b!5330650 (=> (not res!2261035) (not e!3310929))))

(declare-fun b!5330651 () Bool)

(declare-fun e!3310933 () Bool)

(assert (=> b!5330651 (= e!3310933 e!3310932)))

(declare-fun c!927038 () Bool)

(assert (=> b!5330651 (= c!927038 ((_ is Star!14997) lt!2174304))))

(declare-fun b!5330652 () Bool)

(declare-fun e!3310931 () Bool)

(assert (=> b!5330652 (= e!3310932 e!3310931)))

(declare-fun c!927039 () Bool)

(assert (=> b!5330652 (= c!927039 ((_ is Union!14997) lt!2174304))))

(declare-fun d!1711594 () Bool)

(declare-fun res!2261033 () Bool)

(assert (=> d!1711594 (=> res!2261033 e!3310933)))

(assert (=> d!1711594 (= res!2261033 ((_ is ElementMatch!14997) lt!2174304))))

(assert (=> d!1711594 (= (validRegex!6733 lt!2174304) e!3310933)))

(declare-fun b!5330653 () Bool)

(declare-fun e!3310930 () Bool)

(declare-fun e!3310928 () Bool)

(assert (=> b!5330653 (= e!3310930 e!3310928)))

(declare-fun res!2261031 () Bool)

(assert (=> b!5330653 (=> (not res!2261031) (not e!3310928))))

(declare-fun call!380896 () Bool)

(assert (=> b!5330653 (= res!2261031 call!380896)))

(declare-fun bm!380889 () Bool)

(declare-fun call!380895 () Bool)

(assert (=> bm!380889 (= call!380895 (validRegex!6733 (ite c!927038 (reg!15326 lt!2174304) (ite c!927039 (regOne!30507 lt!2174304) (regOne!30506 lt!2174304)))))))

(declare-fun bm!380890 () Bool)

(declare-fun call!380894 () Bool)

(assert (=> bm!380890 (= call!380894 (validRegex!6733 (ite c!927039 (regTwo!30507 lt!2174304) (regTwo!30506 lt!2174304))))))

(declare-fun b!5330654 () Bool)

(declare-fun res!2261032 () Bool)

(assert (=> b!5330654 (=> res!2261032 e!3310930)))

(assert (=> b!5330654 (= res!2261032 (not ((_ is Concat!23842) lt!2174304)))))

(assert (=> b!5330654 (= e!3310931 e!3310930)))

(declare-fun b!5330655 () Bool)

(assert (=> b!5330655 (= e!3310929 call!380895)))

(declare-fun b!5330656 () Bool)

(declare-fun res!2261034 () Bool)

(declare-fun e!3310934 () Bool)

(assert (=> b!5330656 (=> (not res!2261034) (not e!3310934))))

(assert (=> b!5330656 (= res!2261034 call!380896)))

(assert (=> b!5330656 (= e!3310931 e!3310934)))

(declare-fun bm!380891 () Bool)

(assert (=> bm!380891 (= call!380896 call!380895)))

(declare-fun b!5330657 () Bool)

(assert (=> b!5330657 (= e!3310934 call!380894)))

(declare-fun b!5330658 () Bool)

(assert (=> b!5330658 (= e!3310928 call!380894)))

(assert (= (and d!1711594 (not res!2261033)) b!5330651))

(assert (= (and b!5330651 c!927038) b!5330650))

(assert (= (and b!5330651 (not c!927038)) b!5330652))

(assert (= (and b!5330650 res!2261035) b!5330655))

(assert (= (and b!5330652 c!927039) b!5330656))

(assert (= (and b!5330652 (not c!927039)) b!5330654))

(assert (= (and b!5330656 res!2261034) b!5330657))

(assert (= (and b!5330654 (not res!2261032)) b!5330653))

(assert (= (and b!5330653 res!2261031) b!5330658))

(assert (= (or b!5330657 b!5330658) bm!380890))

(assert (= (or b!5330656 b!5330653) bm!380891))

(assert (= (or b!5330655 bm!380891) bm!380889))

(declare-fun m!6364114 () Bool)

(assert (=> b!5330650 m!6364114))

(declare-fun m!6364118 () Bool)

(assert (=> bm!380889 m!6364118))

(declare-fun m!6364120 () Bool)

(assert (=> bm!380890 m!6364120))

(assert (=> d!1711354 d!1711594))

(declare-fun b!5330659 () Bool)

(declare-fun e!3310939 () Bool)

(declare-fun e!3310936 () Bool)

(assert (=> b!5330659 (= e!3310939 e!3310936)))

(declare-fun res!2261040 () Bool)

(assert (=> b!5330659 (= res!2261040 (not (nullable!5166 (reg!15326 lt!2174432))))))

(assert (=> b!5330659 (=> (not res!2261040) (not e!3310936))))

(declare-fun b!5330660 () Bool)

(declare-fun e!3310940 () Bool)

(assert (=> b!5330660 (= e!3310940 e!3310939)))

(declare-fun c!927040 () Bool)

(assert (=> b!5330660 (= c!927040 ((_ is Star!14997) lt!2174432))))

(declare-fun b!5330661 () Bool)

(declare-fun e!3310938 () Bool)

(assert (=> b!5330661 (= e!3310939 e!3310938)))

(declare-fun c!927041 () Bool)

(assert (=> b!5330661 (= c!927041 ((_ is Union!14997) lt!2174432))))

(declare-fun d!1711596 () Bool)

(declare-fun res!2261038 () Bool)

(assert (=> d!1711596 (=> res!2261038 e!3310940)))

(assert (=> d!1711596 (= res!2261038 ((_ is ElementMatch!14997) lt!2174432))))

(assert (=> d!1711596 (= (validRegex!6733 lt!2174432) e!3310940)))

(declare-fun b!5330662 () Bool)

(declare-fun e!3310937 () Bool)

(declare-fun e!3310935 () Bool)

(assert (=> b!5330662 (= e!3310937 e!3310935)))

(declare-fun res!2261036 () Bool)

(assert (=> b!5330662 (=> (not res!2261036) (not e!3310935))))

(declare-fun call!380899 () Bool)

(assert (=> b!5330662 (= res!2261036 call!380899)))

(declare-fun call!380898 () Bool)

(declare-fun bm!380892 () Bool)

(assert (=> bm!380892 (= call!380898 (validRegex!6733 (ite c!927040 (reg!15326 lt!2174432) (ite c!927041 (regOne!30507 lt!2174432) (regOne!30506 lt!2174432)))))))

(declare-fun bm!380893 () Bool)

(declare-fun call!380897 () Bool)

(assert (=> bm!380893 (= call!380897 (validRegex!6733 (ite c!927041 (regTwo!30507 lt!2174432) (regTwo!30506 lt!2174432))))))

(declare-fun b!5330663 () Bool)

(declare-fun res!2261037 () Bool)

(assert (=> b!5330663 (=> res!2261037 e!3310937)))

(assert (=> b!5330663 (= res!2261037 (not ((_ is Concat!23842) lt!2174432)))))

(assert (=> b!5330663 (= e!3310938 e!3310937)))

(declare-fun b!5330664 () Bool)

(assert (=> b!5330664 (= e!3310936 call!380898)))

(declare-fun b!5330665 () Bool)

(declare-fun res!2261039 () Bool)

(declare-fun e!3310941 () Bool)

(assert (=> b!5330665 (=> (not res!2261039) (not e!3310941))))

(assert (=> b!5330665 (= res!2261039 call!380899)))

(assert (=> b!5330665 (= e!3310938 e!3310941)))

(declare-fun bm!380894 () Bool)

(assert (=> bm!380894 (= call!380899 call!380898)))

(declare-fun b!5330666 () Bool)

(assert (=> b!5330666 (= e!3310941 call!380897)))

(declare-fun b!5330667 () Bool)

(assert (=> b!5330667 (= e!3310935 call!380897)))

(assert (= (and d!1711596 (not res!2261038)) b!5330660))

(assert (= (and b!5330660 c!927040) b!5330659))

(assert (= (and b!5330660 (not c!927040)) b!5330661))

(assert (= (and b!5330659 res!2261040) b!5330664))

(assert (= (and b!5330661 c!927041) b!5330665))

(assert (= (and b!5330661 (not c!927041)) b!5330663))

(assert (= (and b!5330665 res!2261039) b!5330666))

(assert (= (and b!5330663 (not res!2261037)) b!5330662))

(assert (= (and b!5330662 res!2261036) b!5330667))

(assert (= (or b!5330666 b!5330667) bm!380893))

(assert (= (or b!5330665 b!5330662) bm!380894))

(assert (= (or b!5330664 bm!380894) bm!380892))

(declare-fun m!6364130 () Bool)

(assert (=> b!5330659 m!6364130))

(declare-fun m!6364132 () Bool)

(assert (=> bm!380892 m!6364132))

(declare-fun m!6364134 () Bool)

(assert (=> bm!380893 m!6364134))

(assert (=> d!1711294 d!1711596))

(declare-fun d!1711604 () Bool)

(declare-fun res!2261048 () Bool)

(declare-fun e!3310951 () Bool)

(assert (=> d!1711604 (=> res!2261048 e!3310951)))

(assert (=> d!1711604 (= res!2261048 ((_ is Nil!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1711604 (= (forall!14415 (exprs!4881 (h!67616 zl!343)) lambda!272372) e!3310951)))

(declare-fun b!5330679 () Bool)

(declare-fun e!3310952 () Bool)

(assert (=> b!5330679 (= e!3310951 e!3310952)))

(declare-fun res!2261049 () Bool)

(assert (=> b!5330679 (=> (not res!2261049) (not e!3310952))))

(assert (=> b!5330679 (= res!2261049 (dynLambda!24187 lambda!272372 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5330680 () Bool)

(assert (=> b!5330680 (= e!3310952 (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272372))))

(assert (= (and d!1711604 (not res!2261048)) b!5330679))

(assert (= (and b!5330679 res!2261049) b!5330680))

(declare-fun b_lambda!204999 () Bool)

(assert (=> (not b_lambda!204999) (not b!5330679)))

(declare-fun m!6364136 () Bool)

(assert (=> b!5330679 m!6364136))

(declare-fun m!6364138 () Bool)

(assert (=> b!5330680 m!6364138))

(assert (=> d!1711294 d!1711604))

(declare-fun d!1711606 () Bool)

(assert (=> d!1711606 (= (isEmpty!33139 s!2326) ((_ is Nil!61166) s!2326))))

(assert (=> d!1711316 d!1711606))

(assert (=> d!1711316 d!1711298))

(declare-fun d!1711608 () Bool)

(assert (=> d!1711608 (= (isEmptyExpr!889 lt!2174459) ((_ is EmptyExpr!14997) lt!2174459))))

(assert (=> b!5330151 d!1711608))

(declare-fun b!5330681 () Bool)

(declare-fun e!3310953 () Bool)

(declare-fun lt!2174534 () Bool)

(assert (=> b!5330681 (= e!3310953 (not lt!2174534))))

(declare-fun b!5330682 () Bool)

(declare-fun res!2261052 () Bool)

(declare-fun e!3310955 () Bool)

(assert (=> b!5330682 (=> (not res!2261052) (not e!3310955))))

(declare-fun call!380903 () Bool)

(assert (=> b!5330682 (= res!2261052 (not call!380903))))

(declare-fun d!1711610 () Bool)

(declare-fun e!3310956 () Bool)

(assert (=> d!1711610 e!3310956))

(declare-fun c!927046 () Bool)

(assert (=> d!1711610 (= c!927046 ((_ is EmptyExpr!14997) (derivativeStep!4175 lt!2174318 (head!11426 s!2326))))))

(declare-fun e!3310959 () Bool)

(assert (=> d!1711610 (= lt!2174534 e!3310959)))

(declare-fun c!927044 () Bool)

(assert (=> d!1711610 (= c!927044 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (=> d!1711610 (validRegex!6733 (derivativeStep!4175 lt!2174318 (head!11426 s!2326)))))

(assert (=> d!1711610 (= (matchR!7182 (derivativeStep!4175 lt!2174318 (head!11426 s!2326)) (tail!10523 s!2326)) lt!2174534)))

(declare-fun b!5330683 () Bool)

(assert (=> b!5330683 (= e!3310956 e!3310953)))

(declare-fun c!927045 () Bool)

(assert (=> b!5330683 (= c!927045 ((_ is EmptyLang!14997) (derivativeStep!4175 lt!2174318 (head!11426 s!2326))))))

(declare-fun b!5330684 () Bool)

(assert (=> b!5330684 (= e!3310959 (matchR!7182 (derivativeStep!4175 (derivativeStep!4175 lt!2174318 (head!11426 s!2326)) (head!11426 (tail!10523 s!2326))) (tail!10523 (tail!10523 s!2326))))))

(declare-fun b!5330685 () Bool)

(declare-fun res!2261055 () Bool)

(declare-fun e!3310957 () Bool)

(assert (=> b!5330685 (=> res!2261055 e!3310957)))

(assert (=> b!5330685 (= res!2261055 (not ((_ is ElementMatch!14997) (derivativeStep!4175 lt!2174318 (head!11426 s!2326)))))))

(assert (=> b!5330685 (= e!3310953 e!3310957)))

(declare-fun b!5330686 () Bool)

(declare-fun res!2261053 () Bool)

(declare-fun e!3310954 () Bool)

(assert (=> b!5330686 (=> res!2261053 e!3310954)))

(assert (=> b!5330686 (= res!2261053 (not (isEmpty!33139 (tail!10523 (tail!10523 s!2326)))))))

(declare-fun b!5330687 () Bool)

(assert (=> b!5330687 (= e!3310954 (not (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 lt!2174318 (head!11426 s!2326))))))))

(declare-fun b!5330688 () Bool)

(assert (=> b!5330688 (= e!3310956 (= lt!2174534 call!380903))))

(declare-fun b!5330689 () Bool)

(declare-fun res!2261056 () Bool)

(assert (=> b!5330689 (=> res!2261056 e!3310957)))

(assert (=> b!5330689 (= res!2261056 e!3310955)))

(declare-fun res!2261054 () Bool)

(assert (=> b!5330689 (=> (not res!2261054) (not e!3310955))))

(assert (=> b!5330689 (= res!2261054 lt!2174534)))

(declare-fun b!5330690 () Bool)

(declare-fun e!3310958 () Bool)

(assert (=> b!5330690 (= e!3310958 e!3310954)))

(declare-fun res!2261057 () Bool)

(assert (=> b!5330690 (=> res!2261057 e!3310954)))

(assert (=> b!5330690 (= res!2261057 call!380903)))

(declare-fun b!5330691 () Bool)

(assert (=> b!5330691 (= e!3310957 e!3310958)))

(declare-fun res!2261051 () Bool)

(assert (=> b!5330691 (=> (not res!2261051) (not e!3310958))))

(assert (=> b!5330691 (= res!2261051 (not lt!2174534))))

(declare-fun b!5330692 () Bool)

(assert (=> b!5330692 (= e!3310955 (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 lt!2174318 (head!11426 s!2326)))))))

(declare-fun b!5330693 () Bool)

(assert (=> b!5330693 (= e!3310959 (nullable!5166 (derivativeStep!4175 lt!2174318 (head!11426 s!2326))))))

(declare-fun b!5330694 () Bool)

(declare-fun res!2261050 () Bool)

(assert (=> b!5330694 (=> (not res!2261050) (not e!3310955))))

(assert (=> b!5330694 (= res!2261050 (isEmpty!33139 (tail!10523 (tail!10523 s!2326))))))

(declare-fun bm!380898 () Bool)

(assert (=> bm!380898 (= call!380903 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (= (and d!1711610 c!927044) b!5330693))

(assert (= (and d!1711610 (not c!927044)) b!5330684))

(assert (= (and d!1711610 c!927046) b!5330688))

(assert (= (and d!1711610 (not c!927046)) b!5330683))

(assert (= (and b!5330683 c!927045) b!5330681))

(assert (= (and b!5330683 (not c!927045)) b!5330685))

(assert (= (and b!5330685 (not res!2261055)) b!5330689))

(assert (= (and b!5330689 res!2261054) b!5330682))

(assert (= (and b!5330682 res!2261052) b!5330694))

(assert (= (and b!5330694 res!2261050) b!5330692))

(assert (= (and b!5330689 (not res!2261056)) b!5330691))

(assert (= (and b!5330691 res!2261051) b!5330690))

(assert (= (and b!5330690 (not res!2261057)) b!5330686))

(assert (= (and b!5330686 (not res!2261053)) b!5330687))

(assert (= (or b!5330688 b!5330682 b!5330690) bm!380898))

(assert (=> b!5330684 m!6363532))

(declare-fun m!6364152 () Bool)

(assert (=> b!5330684 m!6364152))

(assert (=> b!5330684 m!6363670))

(assert (=> b!5330684 m!6364152))

(declare-fun m!6364154 () Bool)

(assert (=> b!5330684 m!6364154))

(assert (=> b!5330684 m!6363532))

(declare-fun m!6364156 () Bool)

(assert (=> b!5330684 m!6364156))

(assert (=> b!5330684 m!6364154))

(assert (=> b!5330684 m!6364156))

(declare-fun m!6364158 () Bool)

(assert (=> b!5330684 m!6364158))

(assert (=> d!1711610 m!6363532))

(assert (=> d!1711610 m!6363536))

(assert (=> d!1711610 m!6363670))

(declare-fun m!6364160 () Bool)

(assert (=> d!1711610 m!6364160))

(assert (=> b!5330686 m!6363532))

(assert (=> b!5330686 m!6364156))

(assert (=> b!5330686 m!6364156))

(declare-fun m!6364162 () Bool)

(assert (=> b!5330686 m!6364162))

(assert (=> bm!380898 m!6363532))

(assert (=> bm!380898 m!6363536))

(assert (=> b!5330694 m!6363532))

(assert (=> b!5330694 m!6364156))

(assert (=> b!5330694 m!6364156))

(assert (=> b!5330694 m!6364162))

(assert (=> b!5330687 m!6363532))

(assert (=> b!5330687 m!6364152))

(assert (=> b!5330693 m!6363670))

(declare-fun m!6364166 () Bool)

(assert (=> b!5330693 m!6364166))

(assert (=> b!5330692 m!6363532))

(assert (=> b!5330692 m!6364152))

(assert (=> b!5330183 d!1711610))

(declare-fun b!5330725 () Bool)

(declare-fun e!3310978 () Regex!14997)

(declare-fun e!3310976 () Regex!14997)

(assert (=> b!5330725 (= e!3310978 e!3310976)))

(declare-fun c!927062 () Bool)

(assert (=> b!5330725 (= c!927062 ((_ is Star!14997) lt!2174318))))

(declare-fun b!5330726 () Bool)

(declare-fun call!380913 () Regex!14997)

(declare-fun call!380912 () Regex!14997)

(assert (=> b!5330726 (= e!3310978 (Union!14997 call!380913 call!380912))))

(declare-fun b!5330727 () Bool)

(declare-fun e!3310979 () Regex!14997)

(declare-fun call!380914 () Regex!14997)

(assert (=> b!5330727 (= e!3310979 (Union!14997 (Concat!23842 call!380914 (regTwo!30506 lt!2174318)) EmptyLang!14997))))

(declare-fun b!5330728 () Bool)

(declare-fun e!3310977 () Regex!14997)

(declare-fun e!3310975 () Regex!14997)

(assert (=> b!5330728 (= e!3310977 e!3310975)))

(declare-fun c!927061 () Bool)

(assert (=> b!5330728 (= c!927061 ((_ is ElementMatch!14997) lt!2174318))))

(declare-fun d!1711618 () Bool)

(declare-fun lt!2174537 () Regex!14997)

(assert (=> d!1711618 (validRegex!6733 lt!2174537)))

(assert (=> d!1711618 (= lt!2174537 e!3310977)))

(declare-fun c!927059 () Bool)

(assert (=> d!1711618 (= c!927059 (or ((_ is EmptyExpr!14997) lt!2174318) ((_ is EmptyLang!14997) lt!2174318)))))

(assert (=> d!1711618 (validRegex!6733 lt!2174318)))

(assert (=> d!1711618 (= (derivativeStep!4175 lt!2174318 (head!11426 s!2326)) lt!2174537)))

(declare-fun bm!380907 () Bool)

(declare-fun call!380915 () Regex!14997)

(assert (=> bm!380907 (= call!380914 call!380915)))

(declare-fun b!5330729 () Bool)

(declare-fun c!927060 () Bool)

(assert (=> b!5330729 (= c!927060 ((_ is Union!14997) lt!2174318))))

(assert (=> b!5330729 (= e!3310975 e!3310978)))

(declare-fun b!5330730 () Bool)

(assert (=> b!5330730 (= e!3310976 (Concat!23842 call!380915 lt!2174318))))

(declare-fun b!5330731 () Bool)

(declare-fun c!927058 () Bool)

(assert (=> b!5330731 (= c!927058 (nullable!5166 (regOne!30506 lt!2174318)))))

(assert (=> b!5330731 (= e!3310976 e!3310979)))

(declare-fun b!5330732 () Bool)

(assert (=> b!5330732 (= e!3310977 EmptyLang!14997)))

(declare-fun bm!380908 () Bool)

(assert (=> bm!380908 (= call!380913 (derivativeStep!4175 (ite c!927060 (regOne!30507 lt!2174318) (regOne!30506 lt!2174318)) (head!11426 s!2326)))))

(declare-fun bm!380909 () Bool)

(assert (=> bm!380909 (= call!380912 (derivativeStep!4175 (ite c!927060 (regTwo!30507 lt!2174318) (ite c!927062 (reg!15326 lt!2174318) (ite c!927058 (regTwo!30506 lt!2174318) (regOne!30506 lt!2174318)))) (head!11426 s!2326)))))

(declare-fun b!5330733 () Bool)

(assert (=> b!5330733 (= e!3310975 (ite (= (head!11426 s!2326) (c!926649 lt!2174318)) EmptyExpr!14997 EmptyLang!14997))))

(declare-fun bm!380910 () Bool)

(assert (=> bm!380910 (= call!380915 call!380912)))

(declare-fun b!5330734 () Bool)

(assert (=> b!5330734 (= e!3310979 (Union!14997 (Concat!23842 call!380913 (regTwo!30506 lt!2174318)) call!380914))))

(assert (= (and d!1711618 c!927059) b!5330732))

(assert (= (and d!1711618 (not c!927059)) b!5330728))

(assert (= (and b!5330728 c!927061) b!5330733))

(assert (= (and b!5330728 (not c!927061)) b!5330729))

(assert (= (and b!5330729 c!927060) b!5330726))

(assert (= (and b!5330729 (not c!927060)) b!5330725))

(assert (= (and b!5330725 c!927062) b!5330730))

(assert (= (and b!5330725 (not c!927062)) b!5330731))

(assert (= (and b!5330731 c!927058) b!5330734))

(assert (= (and b!5330731 (not c!927058)) b!5330727))

(assert (= (or b!5330734 b!5330727) bm!380907))

(assert (= (or b!5330730 bm!380907) bm!380910))

(assert (= (or b!5330726 bm!380910) bm!380909))

(assert (= (or b!5330726 b!5330734) bm!380908))

(declare-fun m!6364172 () Bool)

(assert (=> d!1711618 m!6364172))

(assert (=> d!1711618 m!6363584))

(declare-fun m!6364174 () Bool)

(assert (=> b!5330731 m!6364174))

(assert (=> bm!380908 m!6363528))

(declare-fun m!6364176 () Bool)

(assert (=> bm!380908 m!6364176))

(assert (=> bm!380909 m!6363528))

(declare-fun m!6364178 () Bool)

(assert (=> bm!380909 m!6364178))

(assert (=> b!5330183 d!1711618))

(assert (=> b!5330183 d!1711520))

(assert (=> b!5330183 d!1711542))

(assert (=> bm!380813 d!1711606))

(declare-fun d!1711624 () Bool)

(assert (=> d!1711624 (= (isEmpty!33135 (t!374506 (unfocusZipperList!439 zl!343))) ((_ is Nil!61167) (t!374506 (unfocusZipperList!439 zl!343))))))

(assert (=> b!5330230 d!1711624))

(declare-fun b!5330735 () Bool)

(declare-fun e!3310980 () Bool)

(declare-fun lt!2174538 () Bool)

(assert (=> b!5330735 (= e!3310980 (not lt!2174538))))

(declare-fun b!5330736 () Bool)

(declare-fun res!2261068 () Bool)

(declare-fun e!3310982 () Bool)

(assert (=> b!5330736 (=> (not res!2261068) (not e!3310982))))

(declare-fun call!380916 () Bool)

(assert (=> b!5330736 (= res!2261068 (not call!380916))))

(declare-fun d!1711626 () Bool)

(declare-fun e!3310983 () Bool)

(assert (=> d!1711626 e!3310983))

(declare-fun c!927065 () Bool)

(assert (=> d!1711626 (= c!927065 ((_ is EmptyExpr!14997) lt!2174318))))

(declare-fun e!3310986 () Bool)

(assert (=> d!1711626 (= lt!2174538 e!3310986)))

(declare-fun c!927063 () Bool)

(assert (=> d!1711626 (= c!927063 (isEmpty!33139 (_2!35499 (get!21038 lt!2174462))))))

(assert (=> d!1711626 (validRegex!6733 lt!2174318)))

(assert (=> d!1711626 (= (matchR!7182 lt!2174318 (_2!35499 (get!21038 lt!2174462))) lt!2174538)))

(declare-fun b!5330737 () Bool)

(assert (=> b!5330737 (= e!3310983 e!3310980)))

(declare-fun c!927064 () Bool)

(assert (=> b!5330737 (= c!927064 ((_ is EmptyLang!14997) lt!2174318))))

(declare-fun b!5330738 () Bool)

(assert (=> b!5330738 (= e!3310986 (matchR!7182 (derivativeStep!4175 lt!2174318 (head!11426 (_2!35499 (get!21038 lt!2174462)))) (tail!10523 (_2!35499 (get!21038 lt!2174462)))))))

(declare-fun b!5330739 () Bool)

(declare-fun res!2261071 () Bool)

(declare-fun e!3310984 () Bool)

(assert (=> b!5330739 (=> res!2261071 e!3310984)))

(assert (=> b!5330739 (= res!2261071 (not ((_ is ElementMatch!14997) lt!2174318)))))

(assert (=> b!5330739 (= e!3310980 e!3310984)))

(declare-fun b!5330740 () Bool)

(declare-fun res!2261069 () Bool)

(declare-fun e!3310981 () Bool)

(assert (=> b!5330740 (=> res!2261069 e!3310981)))

(assert (=> b!5330740 (= res!2261069 (not (isEmpty!33139 (tail!10523 (_2!35499 (get!21038 lt!2174462))))))))

(declare-fun b!5330741 () Bool)

(assert (=> b!5330741 (= e!3310981 (not (= (head!11426 (_2!35499 (get!21038 lt!2174462))) (c!926649 lt!2174318))))))

(declare-fun b!5330742 () Bool)

(assert (=> b!5330742 (= e!3310983 (= lt!2174538 call!380916))))

(declare-fun b!5330743 () Bool)

(declare-fun res!2261072 () Bool)

(assert (=> b!5330743 (=> res!2261072 e!3310984)))

(assert (=> b!5330743 (= res!2261072 e!3310982)))

(declare-fun res!2261070 () Bool)

(assert (=> b!5330743 (=> (not res!2261070) (not e!3310982))))

(assert (=> b!5330743 (= res!2261070 lt!2174538)))

(declare-fun b!5330744 () Bool)

(declare-fun e!3310985 () Bool)

(assert (=> b!5330744 (= e!3310985 e!3310981)))

(declare-fun res!2261073 () Bool)

(assert (=> b!5330744 (=> res!2261073 e!3310981)))

(assert (=> b!5330744 (= res!2261073 call!380916)))

(declare-fun b!5330745 () Bool)

(assert (=> b!5330745 (= e!3310984 e!3310985)))

(declare-fun res!2261067 () Bool)

(assert (=> b!5330745 (=> (not res!2261067) (not e!3310985))))

(assert (=> b!5330745 (= res!2261067 (not lt!2174538))))

(declare-fun b!5330746 () Bool)

(assert (=> b!5330746 (= e!3310982 (= (head!11426 (_2!35499 (get!21038 lt!2174462))) (c!926649 lt!2174318)))))

(declare-fun b!5330747 () Bool)

(assert (=> b!5330747 (= e!3310986 (nullable!5166 lt!2174318))))

(declare-fun b!5330748 () Bool)

(declare-fun res!2261066 () Bool)

(assert (=> b!5330748 (=> (not res!2261066) (not e!3310982))))

(assert (=> b!5330748 (= res!2261066 (isEmpty!33139 (tail!10523 (_2!35499 (get!21038 lt!2174462)))))))

(declare-fun bm!380911 () Bool)

(assert (=> bm!380911 (= call!380916 (isEmpty!33139 (_2!35499 (get!21038 lt!2174462))))))

(assert (= (and d!1711626 c!927063) b!5330747))

(assert (= (and d!1711626 (not c!927063)) b!5330738))

(assert (= (and d!1711626 c!927065) b!5330742))

(assert (= (and d!1711626 (not c!927065)) b!5330737))

(assert (= (and b!5330737 c!927064) b!5330735))

(assert (= (and b!5330737 (not c!927064)) b!5330739))

(assert (= (and b!5330739 (not res!2261071)) b!5330743))

(assert (= (and b!5330743 res!2261070) b!5330736))

(assert (= (and b!5330736 res!2261068) b!5330748))

(assert (= (and b!5330748 res!2261066) b!5330746))

(assert (= (and b!5330743 (not res!2261072)) b!5330745))

(assert (= (and b!5330745 res!2261067) b!5330744))

(assert (= (and b!5330744 (not res!2261073)) b!5330740))

(assert (= (and b!5330740 (not res!2261069)) b!5330741))

(assert (= (or b!5330742 b!5330736 b!5330744) bm!380911))

(declare-fun m!6364180 () Bool)

(assert (=> b!5330738 m!6364180))

(assert (=> b!5330738 m!6364180))

(declare-fun m!6364182 () Bool)

(assert (=> b!5330738 m!6364182))

(declare-fun m!6364184 () Bool)

(assert (=> b!5330738 m!6364184))

(assert (=> b!5330738 m!6364182))

(assert (=> b!5330738 m!6364184))

(declare-fun m!6364186 () Bool)

(assert (=> b!5330738 m!6364186))

(declare-fun m!6364188 () Bool)

(assert (=> d!1711626 m!6364188))

(assert (=> d!1711626 m!6363584))

(assert (=> b!5330740 m!6364184))

(assert (=> b!5330740 m!6364184))

(declare-fun m!6364190 () Bool)

(assert (=> b!5330740 m!6364190))

(assert (=> bm!380911 m!6364188))

(assert (=> b!5330748 m!6364184))

(assert (=> b!5330748 m!6364184))

(assert (=> b!5330748 m!6364190))

(assert (=> b!5330741 m!6364180))

(assert (=> b!5330747 m!6363674))

(assert (=> b!5330746 m!6364180))

(assert (=> b!5330165 d!1711626))

(declare-fun d!1711628 () Bool)

(assert (=> d!1711628 (= (get!21038 lt!2174462) (v!51136 lt!2174462))))

(assert (=> b!5330165 d!1711628))

(declare-fun b!5330749 () Bool)

(declare-fun e!3310987 () Bool)

(declare-fun lt!2174539 () Bool)

(assert (=> b!5330749 (= e!3310987 (not lt!2174539))))

(declare-fun b!5330750 () Bool)

(declare-fun res!2261076 () Bool)

(declare-fun e!3310989 () Bool)

(assert (=> b!5330750 (=> (not res!2261076) (not e!3310989))))

(declare-fun call!380917 () Bool)

(assert (=> b!5330750 (= res!2261076 (not call!380917))))

(declare-fun d!1711630 () Bool)

(declare-fun e!3310990 () Bool)

(assert (=> d!1711630 e!3310990))

(declare-fun c!927068 () Bool)

(assert (=> d!1711630 (= c!927068 ((_ is EmptyExpr!14997) (derivativeStep!4175 lt!2174304 (head!11426 s!2326))))))

(declare-fun e!3310993 () Bool)

(assert (=> d!1711630 (= lt!2174539 e!3310993)))

(declare-fun c!927066 () Bool)

(assert (=> d!1711630 (= c!927066 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (=> d!1711630 (validRegex!6733 (derivativeStep!4175 lt!2174304 (head!11426 s!2326)))))

(assert (=> d!1711630 (= (matchR!7182 (derivativeStep!4175 lt!2174304 (head!11426 s!2326)) (tail!10523 s!2326)) lt!2174539)))

(declare-fun b!5330751 () Bool)

(assert (=> b!5330751 (= e!3310990 e!3310987)))

(declare-fun c!927067 () Bool)

(assert (=> b!5330751 (= c!927067 ((_ is EmptyLang!14997) (derivativeStep!4175 lt!2174304 (head!11426 s!2326))))))

(declare-fun b!5330752 () Bool)

(assert (=> b!5330752 (= e!3310993 (matchR!7182 (derivativeStep!4175 (derivativeStep!4175 lt!2174304 (head!11426 s!2326)) (head!11426 (tail!10523 s!2326))) (tail!10523 (tail!10523 s!2326))))))

(declare-fun b!5330753 () Bool)

(declare-fun res!2261079 () Bool)

(declare-fun e!3310991 () Bool)

(assert (=> b!5330753 (=> res!2261079 e!3310991)))

(assert (=> b!5330753 (= res!2261079 (not ((_ is ElementMatch!14997) (derivativeStep!4175 lt!2174304 (head!11426 s!2326)))))))

(assert (=> b!5330753 (= e!3310987 e!3310991)))

(declare-fun b!5330754 () Bool)

(declare-fun res!2261077 () Bool)

(declare-fun e!3310988 () Bool)

(assert (=> b!5330754 (=> res!2261077 e!3310988)))

(assert (=> b!5330754 (= res!2261077 (not (isEmpty!33139 (tail!10523 (tail!10523 s!2326)))))))

(declare-fun b!5330755 () Bool)

(assert (=> b!5330755 (= e!3310988 (not (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 lt!2174304 (head!11426 s!2326))))))))

(declare-fun b!5330756 () Bool)

(assert (=> b!5330756 (= e!3310990 (= lt!2174539 call!380917))))

(declare-fun b!5330757 () Bool)

(declare-fun res!2261080 () Bool)

(assert (=> b!5330757 (=> res!2261080 e!3310991)))

(assert (=> b!5330757 (= res!2261080 e!3310989)))

(declare-fun res!2261078 () Bool)

(assert (=> b!5330757 (=> (not res!2261078) (not e!3310989))))

(assert (=> b!5330757 (= res!2261078 lt!2174539)))

(declare-fun b!5330758 () Bool)

(declare-fun e!3310992 () Bool)

(assert (=> b!5330758 (= e!3310992 e!3310988)))

(declare-fun res!2261081 () Bool)

(assert (=> b!5330758 (=> res!2261081 e!3310988)))

(assert (=> b!5330758 (= res!2261081 call!380917)))

(declare-fun b!5330759 () Bool)

(assert (=> b!5330759 (= e!3310991 e!3310992)))

(declare-fun res!2261075 () Bool)

(assert (=> b!5330759 (=> (not res!2261075) (not e!3310992))))

(assert (=> b!5330759 (= res!2261075 (not lt!2174539))))

(declare-fun b!5330760 () Bool)

(assert (=> b!5330760 (= e!3310989 (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 lt!2174304 (head!11426 s!2326)))))))

(declare-fun b!5330761 () Bool)

(assert (=> b!5330761 (= e!3310993 (nullable!5166 (derivativeStep!4175 lt!2174304 (head!11426 s!2326))))))

(declare-fun b!5330762 () Bool)

(declare-fun res!2261074 () Bool)

(assert (=> b!5330762 (=> (not res!2261074) (not e!3310989))))

(assert (=> b!5330762 (= res!2261074 (isEmpty!33139 (tail!10523 (tail!10523 s!2326))))))

(declare-fun bm!380912 () Bool)

(assert (=> bm!380912 (= call!380917 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (= (and d!1711630 c!927066) b!5330761))

(assert (= (and d!1711630 (not c!927066)) b!5330752))

(assert (= (and d!1711630 c!927068) b!5330756))

(assert (= (and d!1711630 (not c!927068)) b!5330751))

(assert (= (and b!5330751 c!927067) b!5330749))

(assert (= (and b!5330751 (not c!927067)) b!5330753))

(assert (= (and b!5330753 (not res!2261079)) b!5330757))

(assert (= (and b!5330757 res!2261078) b!5330750))

(assert (= (and b!5330750 res!2261076) b!5330762))

(assert (= (and b!5330762 res!2261074) b!5330760))

(assert (= (and b!5330757 (not res!2261080)) b!5330759))

(assert (= (and b!5330759 res!2261075) b!5330758))

(assert (= (and b!5330758 (not res!2261081)) b!5330754))

(assert (= (and b!5330754 (not res!2261077)) b!5330755))

(assert (= (or b!5330756 b!5330750 b!5330758) bm!380912))

(assert (=> b!5330752 m!6363532))

(assert (=> b!5330752 m!6364152))

(assert (=> b!5330752 m!6363570))

(assert (=> b!5330752 m!6364152))

(declare-fun m!6364196 () Bool)

(assert (=> b!5330752 m!6364196))

(assert (=> b!5330752 m!6363532))

(assert (=> b!5330752 m!6364156))

(assert (=> b!5330752 m!6364196))

(assert (=> b!5330752 m!6364156))

(declare-fun m!6364198 () Bool)

(assert (=> b!5330752 m!6364198))

(assert (=> d!1711630 m!6363532))

(assert (=> d!1711630 m!6363536))

(assert (=> d!1711630 m!6363570))

(declare-fun m!6364200 () Bool)

(assert (=> d!1711630 m!6364200))

(assert (=> b!5330754 m!6363532))

(assert (=> b!5330754 m!6364156))

(assert (=> b!5330754 m!6364156))

(assert (=> b!5330754 m!6364162))

(assert (=> bm!380912 m!6363532))

(assert (=> bm!380912 m!6363536))

(assert (=> b!5330762 m!6363532))

(assert (=> b!5330762 m!6364156))

(assert (=> b!5330762 m!6364156))

(assert (=> b!5330762 m!6364162))

(assert (=> b!5330755 m!6363532))

(assert (=> b!5330755 m!6364152))

(assert (=> b!5330761 m!6363570))

(declare-fun m!6364202 () Bool)

(assert (=> b!5330761 m!6364202))

(assert (=> b!5330760 m!6363532))

(assert (=> b!5330760 m!6364152))

(assert (=> b!5330110 d!1711630))

(declare-fun b!5330774 () Bool)

(declare-fun e!3311003 () Regex!14997)

(declare-fun e!3311001 () Regex!14997)

(assert (=> b!5330774 (= e!3311003 e!3311001)))

(declare-fun c!927078 () Bool)

(assert (=> b!5330774 (= c!927078 ((_ is Star!14997) lt!2174304))))

(declare-fun b!5330775 () Bool)

(declare-fun call!380925 () Regex!14997)

(declare-fun call!380924 () Regex!14997)

(assert (=> b!5330775 (= e!3311003 (Union!14997 call!380925 call!380924))))

(declare-fun b!5330776 () Bool)

(declare-fun e!3311004 () Regex!14997)

(declare-fun call!380926 () Regex!14997)

(assert (=> b!5330776 (= e!3311004 (Union!14997 (Concat!23842 call!380926 (regTwo!30506 lt!2174304)) EmptyLang!14997))))

(declare-fun b!5330777 () Bool)

(declare-fun e!3311002 () Regex!14997)

(declare-fun e!3311000 () Regex!14997)

(assert (=> b!5330777 (= e!3311002 e!3311000)))

(declare-fun c!927077 () Bool)

(assert (=> b!5330777 (= c!927077 ((_ is ElementMatch!14997) lt!2174304))))

(declare-fun d!1711634 () Bool)

(declare-fun lt!2174540 () Regex!14997)

(assert (=> d!1711634 (validRegex!6733 lt!2174540)))

(assert (=> d!1711634 (= lt!2174540 e!3311002)))

(declare-fun c!927075 () Bool)

(assert (=> d!1711634 (= c!927075 (or ((_ is EmptyExpr!14997) lt!2174304) ((_ is EmptyLang!14997) lt!2174304)))))

(assert (=> d!1711634 (validRegex!6733 lt!2174304)))

(assert (=> d!1711634 (= (derivativeStep!4175 lt!2174304 (head!11426 s!2326)) lt!2174540)))

(declare-fun bm!380919 () Bool)

(declare-fun call!380927 () Regex!14997)

(assert (=> bm!380919 (= call!380926 call!380927)))

(declare-fun b!5330778 () Bool)

(declare-fun c!927076 () Bool)

(assert (=> b!5330778 (= c!927076 ((_ is Union!14997) lt!2174304))))

(assert (=> b!5330778 (= e!3311000 e!3311003)))

(declare-fun b!5330779 () Bool)

(assert (=> b!5330779 (= e!3311001 (Concat!23842 call!380927 lt!2174304))))

(declare-fun b!5330780 () Bool)

(declare-fun c!927074 () Bool)

(assert (=> b!5330780 (= c!927074 (nullable!5166 (regOne!30506 lt!2174304)))))

(assert (=> b!5330780 (= e!3311001 e!3311004)))

(declare-fun b!5330781 () Bool)

(assert (=> b!5330781 (= e!3311002 EmptyLang!14997)))

(declare-fun bm!380920 () Bool)

(assert (=> bm!380920 (= call!380925 (derivativeStep!4175 (ite c!927076 (regOne!30507 lt!2174304) (regOne!30506 lt!2174304)) (head!11426 s!2326)))))

(declare-fun bm!380921 () Bool)

(assert (=> bm!380921 (= call!380924 (derivativeStep!4175 (ite c!927076 (regTwo!30507 lt!2174304) (ite c!927078 (reg!15326 lt!2174304) (ite c!927074 (regTwo!30506 lt!2174304) (regOne!30506 lt!2174304)))) (head!11426 s!2326)))))

(declare-fun b!5330782 () Bool)

(assert (=> b!5330782 (= e!3311000 (ite (= (head!11426 s!2326) (c!926649 lt!2174304)) EmptyExpr!14997 EmptyLang!14997))))

(declare-fun bm!380922 () Bool)

(assert (=> bm!380922 (= call!380927 call!380924)))

(declare-fun b!5330783 () Bool)

(assert (=> b!5330783 (= e!3311004 (Union!14997 (Concat!23842 call!380925 (regTwo!30506 lt!2174304)) call!380926))))

(assert (= (and d!1711634 c!927075) b!5330781))

(assert (= (and d!1711634 (not c!927075)) b!5330777))

(assert (= (and b!5330777 c!927077) b!5330782))

(assert (= (and b!5330777 (not c!927077)) b!5330778))

(assert (= (and b!5330778 c!927076) b!5330775))

(assert (= (and b!5330778 (not c!927076)) b!5330774))

(assert (= (and b!5330774 c!927078) b!5330779))

(assert (= (and b!5330774 (not c!927078)) b!5330780))

(assert (= (and b!5330780 c!927074) b!5330783))

(assert (= (and b!5330780 (not c!927074)) b!5330776))

(assert (= (or b!5330783 b!5330776) bm!380919))

(assert (= (or b!5330779 bm!380919) bm!380922))

(assert (= (or b!5330775 bm!380922) bm!380921))

(assert (= (or b!5330775 b!5330783) bm!380920))

(declare-fun m!6364204 () Bool)

(assert (=> d!1711634 m!6364204))

(assert (=> d!1711634 m!6363574))

(declare-fun m!6364206 () Bool)

(assert (=> b!5330780 m!6364206))

(assert (=> bm!380920 m!6363528))

(declare-fun m!6364208 () Bool)

(assert (=> bm!380920 m!6364208))

(assert (=> bm!380921 m!6363528))

(declare-fun m!6364210 () Bool)

(assert (=> bm!380921 m!6364210))

(assert (=> b!5330110 d!1711634))

(assert (=> b!5330110 d!1711520))

(assert (=> b!5330110 d!1711542))

(declare-fun d!1711636 () Bool)

(assert (=> d!1711636 (= (isDefined!11811 lt!2174462) (not (isEmpty!33140 lt!2174462)))))

(declare-fun bs!1235551 () Bool)

(assert (= bs!1235551 d!1711636))

(declare-fun m!6364216 () Bool)

(assert (=> bs!1235551 m!6364216))

(assert (=> d!1711362 d!1711636))

(declare-fun b!5330784 () Bool)

(declare-fun e!3311005 () Bool)

(declare-fun lt!2174541 () Bool)

(assert (=> b!5330784 (= e!3311005 (not lt!2174541))))

(declare-fun b!5330785 () Bool)

(declare-fun res!2261085 () Bool)

(declare-fun e!3311007 () Bool)

(assert (=> b!5330785 (=> (not res!2261085) (not e!3311007))))

(declare-fun call!380928 () Bool)

(assert (=> b!5330785 (= res!2261085 (not call!380928))))

(declare-fun d!1711638 () Bool)

(declare-fun e!3311008 () Bool)

(assert (=> d!1711638 e!3311008))

(declare-fun c!927081 () Bool)

(assert (=> d!1711638 (= c!927081 ((_ is EmptyExpr!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun e!3311011 () Bool)

(assert (=> d!1711638 (= lt!2174541 e!3311011)))

(declare-fun c!927079 () Bool)

(assert (=> d!1711638 (= c!927079 (isEmpty!33139 Nil!61166))))

(assert (=> d!1711638 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711638 (= (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) Nil!61166) lt!2174541)))

(declare-fun b!5330786 () Bool)

(assert (=> b!5330786 (= e!3311008 e!3311005)))

(declare-fun c!927080 () Bool)

(assert (=> b!5330786 (= c!927080 ((_ is EmptyLang!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5330787 () Bool)

(assert (=> b!5330787 (= e!3311011 (matchR!7182 (derivativeStep!4175 (regOne!30506 (regOne!30506 r!7292)) (head!11426 Nil!61166)) (tail!10523 Nil!61166)))))

(declare-fun b!5330788 () Bool)

(declare-fun res!2261088 () Bool)

(declare-fun e!3311009 () Bool)

(assert (=> b!5330788 (=> res!2261088 e!3311009)))

(assert (=> b!5330788 (= res!2261088 (not ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292)))))))

(assert (=> b!5330788 (= e!3311005 e!3311009)))

(declare-fun b!5330789 () Bool)

(declare-fun res!2261086 () Bool)

(declare-fun e!3311006 () Bool)

(assert (=> b!5330789 (=> res!2261086 e!3311006)))

(assert (=> b!5330789 (= res!2261086 (not (isEmpty!33139 (tail!10523 Nil!61166))))))

(declare-fun b!5330790 () Bool)

(assert (=> b!5330790 (= e!3311006 (not (= (head!11426 Nil!61166) (c!926649 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5330791 () Bool)

(assert (=> b!5330791 (= e!3311008 (= lt!2174541 call!380928))))

(declare-fun b!5330792 () Bool)

(declare-fun res!2261089 () Bool)

(assert (=> b!5330792 (=> res!2261089 e!3311009)))

(assert (=> b!5330792 (= res!2261089 e!3311007)))

(declare-fun res!2261087 () Bool)

(assert (=> b!5330792 (=> (not res!2261087) (not e!3311007))))

(assert (=> b!5330792 (= res!2261087 lt!2174541)))

(declare-fun b!5330793 () Bool)

(declare-fun e!3311010 () Bool)

(assert (=> b!5330793 (= e!3311010 e!3311006)))

(declare-fun res!2261090 () Bool)

(assert (=> b!5330793 (=> res!2261090 e!3311006)))

(assert (=> b!5330793 (= res!2261090 call!380928)))

(declare-fun b!5330794 () Bool)

(assert (=> b!5330794 (= e!3311009 e!3311010)))

(declare-fun res!2261084 () Bool)

(assert (=> b!5330794 (=> (not res!2261084) (not e!3311010))))

(assert (=> b!5330794 (= res!2261084 (not lt!2174541))))

(declare-fun b!5330795 () Bool)

(assert (=> b!5330795 (= e!3311007 (= (head!11426 Nil!61166) (c!926649 (regOne!30506 (regOne!30506 r!7292)))))))

(declare-fun b!5330796 () Bool)

(assert (=> b!5330796 (= e!3311011 (nullable!5166 (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5330797 () Bool)

(declare-fun res!2261083 () Bool)

(assert (=> b!5330797 (=> (not res!2261083) (not e!3311007))))

(assert (=> b!5330797 (= res!2261083 (isEmpty!33139 (tail!10523 Nil!61166)))))

(declare-fun bm!380923 () Bool)

(assert (=> bm!380923 (= call!380928 (isEmpty!33139 Nil!61166))))

(assert (= (and d!1711638 c!927079) b!5330796))

(assert (= (and d!1711638 (not c!927079)) b!5330787))

(assert (= (and d!1711638 c!927081) b!5330791))

(assert (= (and d!1711638 (not c!927081)) b!5330786))

(assert (= (and b!5330786 c!927080) b!5330784))

(assert (= (and b!5330786 (not c!927080)) b!5330788))

(assert (= (and b!5330788 (not res!2261088)) b!5330792))

(assert (= (and b!5330792 res!2261087) b!5330785))

(assert (= (and b!5330785 res!2261085) b!5330797))

(assert (= (and b!5330797 res!2261083) b!5330795))

(assert (= (and b!5330792 (not res!2261089)) b!5330794))

(assert (= (and b!5330794 res!2261084) b!5330793))

(assert (= (and b!5330793 (not res!2261090)) b!5330789))

(assert (= (and b!5330789 (not res!2261086)) b!5330790))

(assert (= (or b!5330791 b!5330785 b!5330793) bm!380923))

(assert (=> b!5330787 m!6364006))

(assert (=> b!5330787 m!6364006))

(declare-fun m!6364226 () Bool)

(assert (=> b!5330787 m!6364226))

(assert (=> b!5330787 m!6364010))

(assert (=> b!5330787 m!6364226))

(assert (=> b!5330787 m!6364010))

(declare-fun m!6364228 () Bool)

(assert (=> b!5330787 m!6364228))

(assert (=> d!1711638 m!6364014))

(assert (=> d!1711638 m!6363568))

(assert (=> b!5330789 m!6364010))

(assert (=> b!5330789 m!6364010))

(assert (=> b!5330789 m!6364016))

(assert (=> bm!380923 m!6364014))

(assert (=> b!5330797 m!6364010))

(assert (=> b!5330797 m!6364010))

(assert (=> b!5330797 m!6364016))

(assert (=> b!5330790 m!6364006))

(assert (=> b!5330796 m!6362896))

(assert (=> b!5330795 m!6364006))

(assert (=> d!1711362 d!1711638))

(assert (=> d!1711362 d!1711562))

(declare-fun d!1711648 () Bool)

(assert (=> d!1711648 (= (maxBigInt!0 (contextDepth!60 (h!67616 lt!2174315)) (zipperDepth!106 (t!374507 lt!2174315))) (ite (>= (contextDepth!60 (h!67616 lt!2174315)) (zipperDepth!106 (t!374507 lt!2174315))) (contextDepth!60 (h!67616 lt!2174315)) (zipperDepth!106 (t!374507 lt!2174315))))))

(assert (=> b!5330202 d!1711648))

(declare-fun bs!1235558 () Bool)

(declare-fun b!5330869 () Bool)

(assert (= bs!1235558 (and b!5330869 b!5329319)))

(declare-fun lambda!272452 () Int)

(assert (=> bs!1235558 (not (= lambda!272452 lambda!272305))))

(declare-fun bs!1235559 () Bool)

(assert (= bs!1235559 (and b!5330869 d!1711380)))

(assert (=> bs!1235559 (not (= lambda!272452 lambda!272409))))

(declare-fun bs!1235560 () Bool)

(assert (= bs!1235560 (and b!5330869 d!1711294)))

(assert (=> bs!1235560 (not (= lambda!272452 lambda!272372))))

(declare-fun bs!1235561 () Bool)

(assert (= bs!1235561 (and b!5330869 d!1711376)))

(assert (=> bs!1235561 (not (= lambda!272452 lambda!272408))))

(declare-fun bs!1235562 () Bool)

(assert (= bs!1235562 (and b!5330869 d!1711324)))

(assert (=> bs!1235562 (not (= lambda!272452 lambda!272381))))

(declare-fun bs!1235563 () Bool)

(assert (= bs!1235563 (and b!5330869 d!1711356)))

(assert (=> bs!1235563 (not (= lambda!272452 lambda!272388))))

(declare-fun bs!1235564 () Bool)

(assert (= bs!1235564 (and b!5330869 d!1711346)))

(assert (=> bs!1235564 (not (= lambda!272452 lambda!272384))))

(declare-fun bs!1235565 () Bool)

(assert (= bs!1235565 (and b!5330869 d!1711374)))

(assert (=> bs!1235565 (not (= lambda!272452 lambda!272405))))

(assert (=> b!5330869 true))

(declare-fun bs!1235566 () Bool)

(declare-fun b!5330871 () Bool)

(assert (= bs!1235566 (and b!5330871 b!5329319)))

(declare-fun lambda!272453 () Int)

(assert (=> bs!1235566 (not (= lambda!272453 lambda!272305))))

(declare-fun bs!1235567 () Bool)

(assert (= bs!1235567 (and b!5330871 d!1711380)))

(assert (=> bs!1235567 (not (= lambda!272453 lambda!272409))))

(declare-fun bs!1235568 () Bool)

(assert (= bs!1235568 (and b!5330871 d!1711294)))

(assert (=> bs!1235568 (not (= lambda!272453 lambda!272372))))

(declare-fun bs!1235569 () Bool)

(assert (= bs!1235569 (and b!5330871 d!1711376)))

(assert (=> bs!1235569 (not (= lambda!272453 lambda!272408))))

(declare-fun bs!1235570 () Bool)

(assert (= bs!1235570 (and b!5330871 d!1711324)))

(assert (=> bs!1235570 (not (= lambda!272453 lambda!272381))))

(declare-fun bs!1235571 () Bool)

(assert (= bs!1235571 (and b!5330871 d!1711356)))

(assert (=> bs!1235571 (not (= lambda!272453 lambda!272388))))

(declare-fun bs!1235572 () Bool)

(assert (= bs!1235572 (and b!5330871 d!1711346)))

(assert (=> bs!1235572 (not (= lambda!272453 lambda!272384))))

(declare-fun bs!1235573 () Bool)

(assert (= bs!1235573 (and b!5330871 b!5330869)))

(declare-fun lt!2174557 () Int)

(declare-fun lt!2174558 () Int)

(assert (=> bs!1235573 (= (= lt!2174558 lt!2174557) (= lambda!272453 lambda!272452))))

(declare-fun bs!1235574 () Bool)

(assert (= bs!1235574 (and b!5330871 d!1711374)))

(assert (=> bs!1235574 (not (= lambda!272453 lambda!272405))))

(assert (=> b!5330871 true))

(declare-fun d!1711652 () Bool)

(declare-fun e!3311052 () Bool)

(assert (=> d!1711652 e!3311052))

(declare-fun res!2261122 () Bool)

(assert (=> d!1711652 (=> (not res!2261122) (not e!3311052))))

(assert (=> d!1711652 (= res!2261122 (>= lt!2174558 0))))

(declare-fun e!3311053 () Int)

(assert (=> d!1711652 (= lt!2174558 e!3311053)))

(declare-fun c!927103 () Bool)

(assert (=> d!1711652 (= c!927103 ((_ is Cons!61167) (exprs!4881 (h!67616 lt!2174315))))))

(assert (=> d!1711652 (= (contextDepth!60 (h!67616 lt!2174315)) lt!2174558)))

(assert (=> b!5330869 (= e!3311053 lt!2174557)))

(declare-fun regexDepth!163 (Regex!14997) Int)

(assert (=> b!5330869 (= lt!2174557 (maxBigInt!0 (regexDepth!163 (h!67615 (exprs!4881 (h!67616 lt!2174315)))) (contextDepth!60 (Context!8763 (t!374506 (exprs!4881 (h!67616 lt!2174315)))))))))

(declare-fun lt!2174556 () Unit!153506)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!12 (List!61291 Int Int) Unit!153506)

(assert (=> b!5330869 (= lt!2174556 (lemmaForallRegexDepthBiggerThanTransitive!12 (t!374506 (exprs!4881 (h!67616 lt!2174315))) lt!2174557 (contextDepth!60 (Context!8763 (t!374506 (exprs!4881 (h!67616 lt!2174315)))))))))

(assert (=> b!5330869 (forall!14415 (t!374506 (exprs!4881 (h!67616 lt!2174315))) lambda!272452)))

(declare-fun lt!2174555 () Unit!153506)

(assert (=> b!5330869 (= lt!2174555 lt!2174556)))

(declare-fun b!5330870 () Bool)

(assert (=> b!5330870 (= e!3311053 0)))

(assert (=> b!5330871 (= e!3311052 (forall!14415 (exprs!4881 (h!67616 lt!2174315)) lambda!272453))))

(assert (= (and d!1711652 c!927103) b!5330869))

(assert (= (and d!1711652 (not c!927103)) b!5330870))

(assert (= (and d!1711652 res!2261122) b!5330871))

(declare-fun m!6364294 () Bool)

(assert (=> b!5330869 m!6364294))

(declare-fun m!6364296 () Bool)

(assert (=> b!5330869 m!6364296))

(declare-fun m!6364298 () Bool)

(assert (=> b!5330869 m!6364298))

(declare-fun m!6364300 () Bool)

(assert (=> b!5330869 m!6364300))

(assert (=> b!5330869 m!6364294))

(assert (=> b!5330869 m!6364296))

(declare-fun m!6364302 () Bool)

(assert (=> b!5330869 m!6364302))

(assert (=> b!5330869 m!6364296))

(declare-fun m!6364304 () Bool)

(assert (=> b!5330871 m!6364304))

(assert (=> b!5330202 d!1711652))

(declare-fun bs!1235575 () Bool)

(declare-fun b!5330894 () Bool)

(assert (= bs!1235575 (and b!5330894 b!5330202)))

(declare-fun lambda!272454 () Int)

(assert (=> bs!1235575 (= lambda!272454 lambda!272397)))

(declare-fun bs!1235576 () Bool)

(assert (= bs!1235576 (and b!5330894 b!5330207)))

(assert (=> bs!1235576 (= lambda!272454 lambda!272400)))

(declare-fun lambda!272455 () Int)

(declare-fun lt!2174564 () Int)

(assert (=> bs!1235575 (= (= lt!2174564 lt!2174475) (= lambda!272455 lambda!272398))))

(declare-fun bs!1235577 () Bool)

(assert (= bs!1235577 (and b!5330894 b!5330204)))

(assert (=> bs!1235577 (= (= lt!2174564 lt!2174473) (= lambda!272455 lambda!272399))))

(assert (=> bs!1235576 (= (= lt!2174564 lt!2174479) (= lambda!272455 lambda!272401))))

(declare-fun bs!1235578 () Bool)

(assert (= bs!1235578 (and b!5330894 b!5330209)))

(assert (=> bs!1235578 (= (= lt!2174564 lt!2174477) (= lambda!272455 lambda!272402))))

(assert (=> b!5330894 true))

(declare-fun bs!1235579 () Bool)

(declare-fun b!5330896 () Bool)

(assert (= bs!1235579 (and b!5330896 b!5330207)))

(declare-fun lambda!272456 () Int)

(declare-fun lt!2174562 () Int)

(assert (=> bs!1235579 (= (= lt!2174562 lt!2174479) (= lambda!272456 lambda!272401))))

(declare-fun bs!1235580 () Bool)

(assert (= bs!1235580 (and b!5330896 b!5330204)))

(assert (=> bs!1235580 (= (= lt!2174562 lt!2174473) (= lambda!272456 lambda!272399))))

(declare-fun bs!1235581 () Bool)

(assert (= bs!1235581 (and b!5330896 b!5330209)))

(assert (=> bs!1235581 (= (= lt!2174562 lt!2174477) (= lambda!272456 lambda!272402))))

(declare-fun bs!1235582 () Bool)

(assert (= bs!1235582 (and b!5330896 b!5330202)))

(assert (=> bs!1235582 (= (= lt!2174562 lt!2174475) (= lambda!272456 lambda!272398))))

(declare-fun bs!1235583 () Bool)

(assert (= bs!1235583 (and b!5330896 b!5330894)))

(assert (=> bs!1235583 (= (= lt!2174562 lt!2174564) (= lambda!272456 lambda!272455))))

(assert (=> b!5330896 true))

(declare-fun d!1711670 () Bool)

(declare-fun e!3311064 () Bool)

(assert (=> d!1711670 e!3311064))

(declare-fun res!2261123 () Bool)

(assert (=> d!1711670 (=> (not res!2261123) (not e!3311064))))

(assert (=> d!1711670 (= res!2261123 (>= lt!2174562 0))))

(declare-fun e!3311065 () Int)

(assert (=> d!1711670 (= lt!2174562 e!3311065)))

(declare-fun c!927114 () Bool)

(assert (=> d!1711670 (= c!927114 ((_ is Cons!61168) (t!374507 lt!2174315)))))

(assert (=> d!1711670 (= (zipperDepth!106 (t!374507 lt!2174315)) lt!2174562)))

(assert (=> b!5330894 (= e!3311065 lt!2174564)))

(assert (=> b!5330894 (= lt!2174564 (maxBigInt!0 (contextDepth!60 (h!67616 (t!374507 lt!2174315))) (zipperDepth!106 (t!374507 (t!374507 lt!2174315)))))))

(declare-fun lt!2174561 () Unit!153506)

(assert (=> b!5330894 (= lt!2174561 (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 (t!374507 lt!2174315)) lt!2174564 (zipperDepth!106 (t!374507 (t!374507 lt!2174315))) lambda!272454))))

(assert (=> b!5330894 (forall!14417 (t!374507 (t!374507 lt!2174315)) lambda!272455)))

(declare-fun lt!2174563 () Unit!153506)

(assert (=> b!5330894 (= lt!2174563 lt!2174561)))

(declare-fun b!5330895 () Bool)

(assert (=> b!5330895 (= e!3311065 0)))

(assert (=> b!5330896 (= e!3311064 (forall!14417 (t!374507 lt!2174315) lambda!272456))))

(assert (= (and d!1711670 c!927114) b!5330894))

(assert (= (and d!1711670 (not c!927114)) b!5330895))

(assert (= (and d!1711670 res!2261123) b!5330896))

(declare-fun m!6364306 () Bool)

(assert (=> b!5330894 m!6364306))

(declare-fun m!6364308 () Bool)

(assert (=> b!5330894 m!6364308))

(declare-fun m!6364310 () Bool)

(assert (=> b!5330894 m!6364310))

(assert (=> b!5330894 m!6364308))

(declare-fun m!6364312 () Bool)

(assert (=> b!5330894 m!6364312))

(assert (=> b!5330894 m!6364306))

(declare-fun m!6364314 () Bool)

(assert (=> b!5330894 m!6364314))

(assert (=> b!5330894 m!6364308))

(declare-fun m!6364316 () Bool)

(assert (=> b!5330896 m!6364316))

(assert (=> b!5330202 d!1711670))

(declare-fun d!1711672 () Bool)

(declare-fun res!2261128 () Bool)

(declare-fun e!3311075 () Bool)

(assert (=> d!1711672 (=> res!2261128 e!3311075)))

(assert (=> d!1711672 (= res!2261128 ((_ is Nil!61168) (t!374507 lt!2174315)))))

(assert (=> d!1711672 (= (forall!14417 (t!374507 lt!2174315) lambda!272398) e!3311075)))

(declare-fun b!5330911 () Bool)

(declare-fun e!3311076 () Bool)

(assert (=> b!5330911 (= e!3311075 e!3311076)))

(declare-fun res!2261129 () Bool)

(assert (=> b!5330911 (=> (not res!2261129) (not e!3311076))))

(declare-fun dynLambda!24191 (Int Context!8762) Bool)

(assert (=> b!5330911 (= res!2261129 (dynLambda!24191 lambda!272398 (h!67616 (t!374507 lt!2174315))))))

(declare-fun b!5330912 () Bool)

(assert (=> b!5330912 (= e!3311076 (forall!14417 (t!374507 (t!374507 lt!2174315)) lambda!272398))))

(assert (= (and d!1711672 (not res!2261128)) b!5330911))

(assert (= (and b!5330911 res!2261129) b!5330912))

(declare-fun b_lambda!205001 () Bool)

(assert (=> (not b_lambda!205001) (not b!5330911)))

(declare-fun m!6364326 () Bool)

(assert (=> b!5330911 m!6364326))

(declare-fun m!6364328 () Bool)

(assert (=> b!5330912 m!6364328))

(assert (=> b!5330202 d!1711672))

(declare-fun bs!1235594 () Bool)

(declare-fun d!1711676 () Bool)

(assert (= bs!1235594 (and d!1711676 b!5330207)))

(declare-fun lambda!272460 () Int)

(assert (=> bs!1235594 (not (= lambda!272460 lambda!272401))))

(declare-fun bs!1235596 () Bool)

(assert (= bs!1235596 (and d!1711676 b!5330204)))

(assert (=> bs!1235596 (not (= lambda!272460 lambda!272399))))

(declare-fun bs!1235597 () Bool)

(assert (= bs!1235597 (and d!1711676 b!5330896)))

(assert (=> bs!1235597 (not (= lambda!272460 lambda!272456))))

(declare-fun bs!1235599 () Bool)

(assert (= bs!1235599 (and d!1711676 b!5330209)))

(assert (=> bs!1235599 (not (= lambda!272460 lambda!272402))))

(declare-fun bs!1235600 () Bool)

(assert (= bs!1235600 (and d!1711676 b!5330202)))

(assert (=> bs!1235600 (not (= lambda!272460 lambda!272398))))

(declare-fun bs!1235601 () Bool)

(assert (= bs!1235601 (and d!1711676 b!5330894)))

(assert (=> bs!1235601 (not (= lambda!272460 lambda!272455))))

(assert (=> d!1711676 true))

(assert (=> d!1711676 true))

(declare-fun order!27095 () Int)

(declare-fun order!27097 () Int)

(declare-fun dynLambda!24192 (Int Int) Int)

(declare-fun dynLambda!24193 (Int Int) Int)

(assert (=> d!1711676 (< (dynLambda!24192 order!27095 lambda!272397) (dynLambda!24193 order!27097 lambda!272460))))

(assert (=> d!1711676 (forall!14417 (t!374507 lt!2174315) lambda!272460)))

(declare-fun lt!2174568 () Unit!153506)

(declare-fun choose!39928 (List!61292 Int Int Int) Unit!153506)

(assert (=> d!1711676 (= lt!2174568 (choose!39928 (t!374507 lt!2174315) lt!2174475 (zipperDepth!106 (t!374507 lt!2174315)) lambda!272397))))

(assert (=> d!1711676 (>= lt!2174475 (zipperDepth!106 (t!374507 lt!2174315)))))

(assert (=> d!1711676 (= (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 lt!2174315) lt!2174475 (zipperDepth!106 (t!374507 lt!2174315)) lambda!272397) lt!2174568)))

(declare-fun bs!1235605 () Bool)

(assert (= bs!1235605 d!1711676))

(declare-fun m!6364346 () Bool)

(assert (=> bs!1235605 m!6364346))

(assert (=> bs!1235605 m!6363684))

(declare-fun m!6364348 () Bool)

(assert (=> bs!1235605 m!6364348))

(assert (=> b!5330202 d!1711676))

(declare-fun b!5330934 () Bool)

(declare-fun e!3311091 () Bool)

(declare-fun lt!2174569 () Bool)

(assert (=> b!5330934 (= e!3311091 (not lt!2174569))))

(declare-fun b!5330935 () Bool)

(declare-fun res!2261142 () Bool)

(declare-fun e!3311093 () Bool)

(assert (=> b!5330935 (=> (not res!2261142) (not e!3311093))))

(declare-fun call!380959 () Bool)

(assert (=> b!5330935 (= res!2261142 (not call!380959))))

(declare-fun d!1711686 () Bool)

(declare-fun e!3311094 () Bool)

(assert (=> d!1711686 e!3311094))

(declare-fun c!927128 () Bool)

(assert (=> d!1711686 (= c!927128 ((_ is EmptyExpr!14997) (regTwo!30506 r!7292)))))

(declare-fun e!3311097 () Bool)

(assert (=> d!1711686 (= lt!2174569 e!3311097)))

(declare-fun c!927126 () Bool)

(assert (=> d!1711686 (= c!927126 (isEmpty!33139 (_2!35499 (get!21038 lt!2174392))))))

(assert (=> d!1711686 (validRegex!6733 (regTwo!30506 r!7292))))

(assert (=> d!1711686 (= (matchR!7182 (regTwo!30506 r!7292) (_2!35499 (get!21038 lt!2174392))) lt!2174569)))

(declare-fun b!5330936 () Bool)

(assert (=> b!5330936 (= e!3311094 e!3311091)))

(declare-fun c!927127 () Bool)

(assert (=> b!5330936 (= c!927127 ((_ is EmptyLang!14997) (regTwo!30506 r!7292)))))

(declare-fun b!5330937 () Bool)

(assert (=> b!5330937 (= e!3311097 (matchR!7182 (derivativeStep!4175 (regTwo!30506 r!7292) (head!11426 (_2!35499 (get!21038 lt!2174392)))) (tail!10523 (_2!35499 (get!21038 lt!2174392)))))))

(declare-fun b!5330938 () Bool)

(declare-fun res!2261145 () Bool)

(declare-fun e!3311095 () Bool)

(assert (=> b!5330938 (=> res!2261145 e!3311095)))

(assert (=> b!5330938 (= res!2261145 (not ((_ is ElementMatch!14997) (regTwo!30506 r!7292))))))

(assert (=> b!5330938 (= e!3311091 e!3311095)))

(declare-fun b!5330939 () Bool)

(declare-fun res!2261143 () Bool)

(declare-fun e!3311092 () Bool)

(assert (=> b!5330939 (=> res!2261143 e!3311092)))

(assert (=> b!5330939 (= res!2261143 (not (isEmpty!33139 (tail!10523 (_2!35499 (get!21038 lt!2174392))))))))

(declare-fun b!5330940 () Bool)

(assert (=> b!5330940 (= e!3311092 (not (= (head!11426 (_2!35499 (get!21038 lt!2174392))) (c!926649 (regTwo!30506 r!7292)))))))

(declare-fun b!5330941 () Bool)

(assert (=> b!5330941 (= e!3311094 (= lt!2174569 call!380959))))

(declare-fun b!5330942 () Bool)

(declare-fun res!2261146 () Bool)

(assert (=> b!5330942 (=> res!2261146 e!3311095)))

(assert (=> b!5330942 (= res!2261146 e!3311093)))

(declare-fun res!2261144 () Bool)

(assert (=> b!5330942 (=> (not res!2261144) (not e!3311093))))

(assert (=> b!5330942 (= res!2261144 lt!2174569)))

(declare-fun b!5330943 () Bool)

(declare-fun e!3311096 () Bool)

(assert (=> b!5330943 (= e!3311096 e!3311092)))

(declare-fun res!2261147 () Bool)

(assert (=> b!5330943 (=> res!2261147 e!3311092)))

(assert (=> b!5330943 (= res!2261147 call!380959)))

(declare-fun b!5330944 () Bool)

(assert (=> b!5330944 (= e!3311095 e!3311096)))

(declare-fun res!2261141 () Bool)

(assert (=> b!5330944 (=> (not res!2261141) (not e!3311096))))

(assert (=> b!5330944 (= res!2261141 (not lt!2174569))))

(declare-fun b!5330945 () Bool)

(assert (=> b!5330945 (= e!3311093 (= (head!11426 (_2!35499 (get!21038 lt!2174392))) (c!926649 (regTwo!30506 r!7292))))))

(declare-fun b!5330946 () Bool)

(assert (=> b!5330946 (= e!3311097 (nullable!5166 (regTwo!30506 r!7292)))))

(declare-fun b!5330947 () Bool)

(declare-fun res!2261140 () Bool)

(assert (=> b!5330947 (=> (not res!2261140) (not e!3311093))))

(assert (=> b!5330947 (= res!2261140 (isEmpty!33139 (tail!10523 (_2!35499 (get!21038 lt!2174392)))))))

(declare-fun bm!380954 () Bool)

(assert (=> bm!380954 (= call!380959 (isEmpty!33139 (_2!35499 (get!21038 lt!2174392))))))

(assert (= (and d!1711686 c!927126) b!5330946))

(assert (= (and d!1711686 (not c!927126)) b!5330937))

(assert (= (and d!1711686 c!927128) b!5330941))

(assert (= (and d!1711686 (not c!927128)) b!5330936))

(assert (= (and b!5330936 c!927127) b!5330934))

(assert (= (and b!5330936 (not c!927127)) b!5330938))

(assert (= (and b!5330938 (not res!2261145)) b!5330942))

(assert (= (and b!5330942 res!2261144) b!5330935))

(assert (= (and b!5330935 res!2261142) b!5330947))

(assert (= (and b!5330947 res!2261140) b!5330945))

(assert (= (and b!5330942 (not res!2261146)) b!5330944))

(assert (= (and b!5330944 res!2261141) b!5330943))

(assert (= (and b!5330943 (not res!2261147)) b!5330939))

(assert (= (and b!5330939 (not res!2261143)) b!5330940))

(assert (= (or b!5330941 b!5330935 b!5330943) bm!380954))

(declare-fun m!6364350 () Bool)

(assert (=> b!5330937 m!6364350))

(assert (=> b!5330937 m!6364350))

(declare-fun m!6364352 () Bool)

(assert (=> b!5330937 m!6364352))

(declare-fun m!6364354 () Bool)

(assert (=> b!5330937 m!6364354))

(assert (=> b!5330937 m!6364352))

(assert (=> b!5330937 m!6364354))

(declare-fun m!6364356 () Bool)

(assert (=> b!5330937 m!6364356))

(declare-fun m!6364358 () Bool)

(assert (=> d!1711686 m!6364358))

(declare-fun m!6364360 () Bool)

(assert (=> d!1711686 m!6364360))

(assert (=> b!5330939 m!6364354))

(assert (=> b!5330939 m!6364354))

(declare-fun m!6364362 () Bool)

(assert (=> b!5330939 m!6364362))

(assert (=> bm!380954 m!6364358))

(assert (=> b!5330947 m!6364354))

(assert (=> b!5330947 m!6364354))

(assert (=> b!5330947 m!6364362))

(assert (=> b!5330940 m!6364350))

(declare-fun m!6364364 () Bool)

(assert (=> b!5330946 m!6364364))

(assert (=> b!5330945 m!6364350))

(assert (=> b!5329777 d!1711686))

(declare-fun d!1711688 () Bool)

(assert (=> d!1711688 (= (get!21038 lt!2174392) (v!51136 lt!2174392))))

(assert (=> b!5329777 d!1711688))

(declare-fun d!1711690 () Bool)

(assert (=> d!1711690 (= (isEmpty!33135 (tail!10524 (exprs!4881 (h!67616 zl!343)))) ((_ is Nil!61167) (tail!10524 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> b!5329933 d!1711690))

(declare-fun d!1711692 () Bool)

(assert (=> d!1711692 (= (tail!10524 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))

(assert (=> b!5329933 d!1711692))

(declare-fun d!1711694 () Bool)

(assert (=> d!1711694 (= (isEmpty!33140 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326)) (not ((_ is Some!15107) (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 Nil!61166 s!2326 s!2326))))))

(assert (=> d!1711334 d!1711694))

(declare-fun d!1711696 () Bool)

(assert (=> d!1711696 (= (Exists!2178 (ite c!926888 lambda!272385 lambda!272386)) (choose!39916 (ite c!926888 lambda!272385 lambda!272386)))))

(declare-fun bs!1235611 () Bool)

(assert (= bs!1235611 d!1711696))

(declare-fun m!6364366 () Bool)

(assert (=> bs!1235611 m!6364366))

(assert (=> bm!380815 d!1711696))

(declare-fun bs!1235613 () Bool)

(declare-fun d!1711698 () Bool)

(assert (= bs!1235613 (and d!1711698 b!5330207)))

(declare-fun lambda!272464 () Int)

(assert (=> bs!1235613 (not (= lambda!272464 lambda!272401))))

(declare-fun bs!1235614 () Bool)

(assert (= bs!1235614 (and d!1711698 b!5330204)))

(assert (=> bs!1235614 (not (= lambda!272464 lambda!272399))))

(declare-fun bs!1235615 () Bool)

(assert (= bs!1235615 (and d!1711698 b!5330896)))

(assert (=> bs!1235615 (not (= lambda!272464 lambda!272456))))

(declare-fun bs!1235616 () Bool)

(assert (= bs!1235616 (and d!1711698 b!5330209)))

(assert (=> bs!1235616 (not (= lambda!272464 lambda!272402))))

(declare-fun bs!1235617 () Bool)

(assert (= bs!1235617 (and d!1711698 b!5330202)))

(assert (=> bs!1235617 (not (= lambda!272464 lambda!272398))))

(declare-fun bs!1235618 () Bool)

(assert (= bs!1235618 (and d!1711698 d!1711676)))

(assert (=> bs!1235618 (not (= lambda!272464 lambda!272460))))

(declare-fun bs!1235619 () Bool)

(assert (= bs!1235619 (and d!1711698 b!5330894)))

(assert (=> bs!1235619 (not (= lambda!272464 lambda!272455))))

(declare-fun exists!2015 ((InoxSet Context!8762) Int) Bool)

(assert (=> d!1711698 (= (nullableZipper!1354 lt!2174325) (exists!2015 lt!2174325 lambda!272464))))

(declare-fun bs!1235620 () Bool)

(assert (= bs!1235620 d!1711698))

(declare-fun m!6364372 () Bool)

(assert (=> bs!1235620 m!6364372))

(assert (=> b!5329934 d!1711698))

(declare-fun b!5330959 () Bool)

(declare-fun e!3311109 () Bool)

(declare-fun e!3311106 () Bool)

(assert (=> b!5330959 (= e!3311109 e!3311106)))

(declare-fun res!2261155 () Bool)

(assert (=> b!5330959 (= res!2261155 (not (nullable!5166 (reg!15326 lt!2174482))))))

(assert (=> b!5330959 (=> (not res!2261155) (not e!3311106))))

(declare-fun b!5330960 () Bool)

(declare-fun e!3311110 () Bool)

(assert (=> b!5330960 (= e!3311110 e!3311109)))

(declare-fun c!927135 () Bool)

(assert (=> b!5330960 (= c!927135 ((_ is Star!14997) lt!2174482))))

(declare-fun b!5330961 () Bool)

(declare-fun e!3311108 () Bool)

(assert (=> b!5330961 (= e!3311109 e!3311108)))

(declare-fun c!927136 () Bool)

(assert (=> b!5330961 (= c!927136 ((_ is Union!14997) lt!2174482))))

(declare-fun d!1711702 () Bool)

(declare-fun res!2261153 () Bool)

(assert (=> d!1711702 (=> res!2261153 e!3311110)))

(assert (=> d!1711702 (= res!2261153 ((_ is ElementMatch!14997) lt!2174482))))

(assert (=> d!1711702 (= (validRegex!6733 lt!2174482) e!3311110)))

(declare-fun b!5330962 () Bool)

(declare-fun e!3311107 () Bool)

(declare-fun e!3311105 () Bool)

(assert (=> b!5330962 (= e!3311107 e!3311105)))

(declare-fun res!2261151 () Bool)

(assert (=> b!5330962 (=> (not res!2261151) (not e!3311105))))

(declare-fun call!380964 () Bool)

(assert (=> b!5330962 (= res!2261151 call!380964)))

(declare-fun call!380963 () Bool)

(declare-fun bm!380957 () Bool)

(assert (=> bm!380957 (= call!380963 (validRegex!6733 (ite c!927135 (reg!15326 lt!2174482) (ite c!927136 (regOne!30507 lt!2174482) (regOne!30506 lt!2174482)))))))

(declare-fun bm!380958 () Bool)

(declare-fun call!380962 () Bool)

(assert (=> bm!380958 (= call!380962 (validRegex!6733 (ite c!927136 (regTwo!30507 lt!2174482) (regTwo!30506 lt!2174482))))))

(declare-fun b!5330963 () Bool)

(declare-fun res!2261152 () Bool)

(assert (=> b!5330963 (=> res!2261152 e!3311107)))

(assert (=> b!5330963 (= res!2261152 (not ((_ is Concat!23842) lt!2174482)))))

(assert (=> b!5330963 (= e!3311108 e!3311107)))

(declare-fun b!5330964 () Bool)

(assert (=> b!5330964 (= e!3311106 call!380963)))

(declare-fun b!5330965 () Bool)

(declare-fun res!2261154 () Bool)

(declare-fun e!3311111 () Bool)

(assert (=> b!5330965 (=> (not res!2261154) (not e!3311111))))

(assert (=> b!5330965 (= res!2261154 call!380964)))

(assert (=> b!5330965 (= e!3311108 e!3311111)))

(declare-fun bm!380959 () Bool)

(assert (=> bm!380959 (= call!380964 call!380963)))

(declare-fun b!5330966 () Bool)

(assert (=> b!5330966 (= e!3311111 call!380962)))

(declare-fun b!5330967 () Bool)

(assert (=> b!5330967 (= e!3311105 call!380962)))

(assert (= (and d!1711702 (not res!2261153)) b!5330960))

(assert (= (and b!5330960 c!927135) b!5330959))

(assert (= (and b!5330960 (not c!927135)) b!5330961))

(assert (= (and b!5330959 res!2261155) b!5330964))

(assert (= (and b!5330961 c!927136) b!5330965))

(assert (= (and b!5330961 (not c!927136)) b!5330963))

(assert (= (and b!5330965 res!2261154) b!5330966))

(assert (= (and b!5330963 (not res!2261152)) b!5330962))

(assert (= (and b!5330962 res!2261151) b!5330967))

(assert (= (or b!5330966 b!5330967) bm!380958))

(assert (= (or b!5330965 b!5330962) bm!380959))

(assert (= (or b!5330964 bm!380959) bm!380957))

(declare-fun m!6364374 () Bool)

(assert (=> b!5330959 m!6364374))

(declare-fun m!6364376 () Bool)

(assert (=> bm!380957 m!6364376))

(declare-fun m!6364378 () Bool)

(assert (=> bm!380958 m!6364378))

(assert (=> d!1711374 d!1711702))

(declare-fun d!1711704 () Bool)

(declare-fun res!2261156 () Bool)

(declare-fun e!3311112 () Bool)

(assert (=> d!1711704 (=> res!2261156 e!3311112)))

(assert (=> d!1711704 (= res!2261156 ((_ is Nil!61167) (unfocusZipperList!439 zl!343)))))

(assert (=> d!1711704 (= (forall!14415 (unfocusZipperList!439 zl!343) lambda!272405) e!3311112)))

(declare-fun b!5330968 () Bool)

(declare-fun e!3311113 () Bool)

(assert (=> b!5330968 (= e!3311112 e!3311113)))

(declare-fun res!2261157 () Bool)

(assert (=> b!5330968 (=> (not res!2261157) (not e!3311113))))

(assert (=> b!5330968 (= res!2261157 (dynLambda!24187 lambda!272405 (h!67615 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5330969 () Bool)

(assert (=> b!5330969 (= e!3311113 (forall!14415 (t!374506 (unfocusZipperList!439 zl!343)) lambda!272405))))

(assert (= (and d!1711704 (not res!2261156)) b!5330968))

(assert (= (and b!5330968 res!2261157) b!5330969))

(declare-fun b_lambda!205003 () Bool)

(assert (=> (not b_lambda!205003) (not b!5330968)))

(declare-fun m!6364380 () Bool)

(assert (=> b!5330968 m!6364380))

(declare-fun m!6364382 () Bool)

(assert (=> b!5330969 m!6364382))

(assert (=> d!1711374 d!1711704))

(declare-fun d!1711706 () Bool)

(assert (=> d!1711706 (= (isEmpty!33139 (t!374505 s!2326)) ((_ is Nil!61166) (t!374505 s!2326)))))

(assert (=> d!1711386 d!1711706))

(assert (=> d!1711384 d!1711386))

(assert (=> d!1711384 d!1711208))

(declare-fun d!1711708 () Bool)

(declare-fun e!3311116 () Bool)

(assert (=> d!1711708 (= (matchZipper!1241 ((_ map or) lt!2174311 lt!2174309) (t!374505 s!2326)) e!3311116)))

(declare-fun res!2261160 () Bool)

(assert (=> d!1711708 (=> res!2261160 e!3311116)))

(assert (=> d!1711708 (= res!2261160 (matchZipper!1241 lt!2174311 (t!374505 s!2326)))))

(assert (=> d!1711708 true))

(declare-fun _$48!1012 () Unit!153506)

(assert (=> d!1711708 (= (choose!39925 lt!2174311 lt!2174309 (t!374505 s!2326)) _$48!1012)))

(declare-fun b!5330972 () Bool)

(assert (=> b!5330972 (= e!3311116 (matchZipper!1241 lt!2174309 (t!374505 s!2326)))))

(assert (= (and d!1711708 (not res!2261160)) b!5330972))

(assert (=> d!1711708 m!6362924))

(assert (=> d!1711708 m!6362886))

(assert (=> b!5330972 m!6362894))

(assert (=> d!1711384 d!1711708))

(declare-fun d!1711710 () Bool)

(assert (=> d!1711710 (= (isEmpty!33135 (exprs!4881 (h!67616 zl!343))) ((_ is Nil!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> b!5329927 d!1711710))

(declare-fun b!5330973 () Bool)

(declare-fun e!3311117 () Bool)

(assert (=> b!5330973 (= e!3311117 (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))))))))

(declare-fun bm!380960 () Bool)

(declare-fun call!380965 () (InoxSet Context!8762))

(assert (=> bm!380960 (= call!380965 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))))) (h!67614 s!2326)))))

(declare-fun b!5330974 () Bool)

(declare-fun e!3311119 () (InoxSet Context!8762))

(declare-fun e!3311118 () (InoxSet Context!8762))

(assert (=> b!5330974 (= e!3311119 e!3311118)))

(declare-fun c!927137 () Bool)

(assert (=> b!5330974 (= c!927137 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326))))))))

(declare-fun b!5330975 () Bool)

(assert (=> b!5330975 (= e!3311118 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5330976 () Bool)

(assert (=> b!5330976 (= e!3311118 call!380965)))

(declare-fun d!1711712 () Bool)

(declare-fun c!927138 () Bool)

(assert (=> d!1711712 (= c!927138 e!3311117)))

(declare-fun res!2261161 () Bool)

(assert (=> d!1711712 (=> (not res!2261161) (not e!3311117))))

(assert (=> d!1711712 (= res!2261161 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326))))))))

(assert (=> d!1711712 (= (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (h!67614 s!2326)) e!3311119)))

(declare-fun b!5330977 () Bool)

(assert (=> b!5330977 (= e!3311119 ((_ map or) call!380965 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))))) (h!67614 s!2326))))))

(assert (= (and d!1711712 res!2261161) b!5330973))

(assert (= (and d!1711712 c!927138) b!5330977))

(assert (= (and d!1711712 (not c!927138)) b!5330974))

(assert (= (and b!5330974 c!927137) b!5330976))

(assert (= (and b!5330974 (not c!927137)) b!5330975))

(assert (= (or b!5330977 b!5330976) bm!380960))

(declare-fun m!6364384 () Bool)

(assert (=> b!5330973 m!6364384))

(declare-fun m!6364386 () Bool)

(assert (=> bm!380960 m!6364386))

(declare-fun m!6364388 () Bool)

(assert (=> b!5330977 m!6364388))

(assert (=> b!5329601 d!1711712))

(assert (=> bm!380819 d!1711606))

(declare-fun bs!1235654 () Bool)

(declare-fun d!1711714 () Bool)

(assert (= bs!1235654 (and d!1711714 b!5329319)))

(declare-fun lambda!272467 () Int)

(assert (=> bs!1235654 (= lambda!272467 lambda!272305)))

(declare-fun bs!1235656 () Bool)

(assert (= bs!1235656 (and d!1711714 d!1711380)))

(assert (=> bs!1235656 (= lambda!272467 lambda!272409)))

(declare-fun bs!1235657 () Bool)

(assert (= bs!1235657 (and d!1711714 d!1711294)))

(assert (=> bs!1235657 (= lambda!272467 lambda!272372)))

(declare-fun bs!1235659 () Bool)

(assert (= bs!1235659 (and d!1711714 d!1711376)))

(assert (=> bs!1235659 (= lambda!272467 lambda!272408)))

(declare-fun bs!1235660 () Bool)

(assert (= bs!1235660 (and d!1711714 d!1711324)))

(assert (=> bs!1235660 (= lambda!272467 lambda!272381)))

(declare-fun bs!1235662 () Bool)

(assert (= bs!1235662 (and d!1711714 d!1711356)))

(assert (=> bs!1235662 (= lambda!272467 lambda!272388)))

(declare-fun bs!1235663 () Bool)

(assert (= bs!1235663 (and d!1711714 b!5330869)))

(assert (=> bs!1235663 (not (= lambda!272467 lambda!272452))))

(declare-fun bs!1235664 () Bool)

(assert (= bs!1235664 (and d!1711714 d!1711374)))

(assert (=> bs!1235664 (= lambda!272467 lambda!272405)))

(declare-fun bs!1235665 () Bool)

(assert (= bs!1235665 (and d!1711714 b!5330871)))

(assert (=> bs!1235665 (not (= lambda!272467 lambda!272453))))

(declare-fun bs!1235666 () Bool)

(assert (= bs!1235666 (and d!1711714 d!1711346)))

(assert (=> bs!1235666 (= lambda!272467 lambda!272384)))

(declare-fun b!5330978 () Bool)

(declare-fun e!3311122 () Bool)

(declare-fun lt!2174570 () Regex!14997)

(assert (=> b!5330978 (= e!3311122 (= lt!2174570 (head!11427 (t!374506 lt!2174307))))))

(declare-fun b!5330979 () Bool)

(declare-fun e!3311125 () Bool)

(assert (=> b!5330979 (= e!3311125 (isEmptyExpr!889 lt!2174570))))

(declare-fun e!3311121 () Bool)

(assert (=> d!1711714 e!3311121))

(declare-fun res!2261163 () Bool)

(assert (=> d!1711714 (=> (not res!2261163) (not e!3311121))))

(assert (=> d!1711714 (= res!2261163 (validRegex!6733 lt!2174570))))

(declare-fun e!3311120 () Regex!14997)

(assert (=> d!1711714 (= lt!2174570 e!3311120)))

(declare-fun c!927141 () Bool)

(declare-fun e!3311124 () Bool)

(assert (=> d!1711714 (= c!927141 e!3311124)))

(declare-fun res!2261162 () Bool)

(assert (=> d!1711714 (=> (not res!2261162) (not e!3311124))))

(assert (=> d!1711714 (= res!2261162 ((_ is Cons!61167) (t!374506 lt!2174307)))))

(assert (=> d!1711714 (forall!14415 (t!374506 lt!2174307) lambda!272467)))

(assert (=> d!1711714 (= (generalisedConcat!666 (t!374506 lt!2174307)) lt!2174570)))

(declare-fun b!5330980 () Bool)

(assert (=> b!5330980 (= e!3311124 (isEmpty!33135 (t!374506 (t!374506 lt!2174307))))))

(declare-fun b!5330981 () Bool)

(assert (=> b!5330981 (= e!3311121 e!3311125)))

(declare-fun c!927142 () Bool)

(assert (=> b!5330981 (= c!927142 (isEmpty!33135 (t!374506 lt!2174307)))))

(declare-fun b!5330982 () Bool)

(assert (=> b!5330982 (= e!3311120 (h!67615 (t!374506 lt!2174307)))))

(declare-fun b!5330983 () Bool)

(declare-fun e!3311123 () Regex!14997)

(assert (=> b!5330983 (= e!3311123 EmptyExpr!14997)))

(declare-fun b!5330984 () Bool)

(assert (=> b!5330984 (= e!3311122 (isConcat!412 lt!2174570))))

(declare-fun b!5330985 () Bool)

(assert (=> b!5330985 (= e!3311120 e!3311123)))

(declare-fun c!927140 () Bool)

(assert (=> b!5330985 (= c!927140 ((_ is Cons!61167) (t!374506 lt!2174307)))))

(declare-fun b!5330986 () Bool)

(assert (=> b!5330986 (= e!3311123 (Concat!23842 (h!67615 (t!374506 lt!2174307)) (generalisedConcat!666 (t!374506 (t!374506 lt!2174307)))))))

(declare-fun b!5330987 () Bool)

(assert (=> b!5330987 (= e!3311125 e!3311122)))

(declare-fun c!927139 () Bool)

(assert (=> b!5330987 (= c!927139 (isEmpty!33135 (tail!10524 (t!374506 lt!2174307))))))

(assert (= (and d!1711714 res!2261162) b!5330980))

(assert (= (and d!1711714 c!927141) b!5330982))

(assert (= (and d!1711714 (not c!927141)) b!5330985))

(assert (= (and b!5330985 c!927140) b!5330986))

(assert (= (and b!5330985 (not c!927140)) b!5330983))

(assert (= (and d!1711714 res!2261163) b!5330981))

(assert (= (and b!5330981 c!927142) b!5330979))

(assert (= (and b!5330981 (not c!927142)) b!5330987))

(assert (= (and b!5330987 c!927139) b!5330978))

(assert (= (and b!5330987 (not c!927139)) b!5330984))

(declare-fun m!6364390 () Bool)

(assert (=> b!5330984 m!6364390))

(declare-fun m!6364392 () Bool)

(assert (=> b!5330979 m!6364392))

(assert (=> b!5330981 m!6363598))

(declare-fun m!6364394 () Bool)

(assert (=> b!5330980 m!6364394))

(declare-fun m!6364396 () Bool)

(assert (=> b!5330986 m!6364396))

(declare-fun m!6364398 () Bool)

(assert (=> d!1711714 m!6364398))

(declare-fun m!6364400 () Bool)

(assert (=> d!1711714 m!6364400))

(declare-fun m!6364402 () Bool)

(assert (=> b!5330987 m!6364402))

(assert (=> b!5330987 m!6364402))

(declare-fun m!6364404 () Bool)

(assert (=> b!5330987 m!6364404))

(declare-fun m!6364406 () Bool)

(assert (=> b!5330978 m!6364406))

(assert (=> b!5330137 d!1711714))

(assert (=> d!1711342 d!1711366))

(assert (=> d!1711342 d!1711348))

(declare-fun d!1711716 () Bool)

(assert (=> d!1711716 (= (matchR!7182 lt!2174318 s!2326) (matchRSpec!2100 lt!2174318 s!2326))))

(assert (=> d!1711716 true))

(declare-fun _$88!3635 () Unit!153506)

(assert (=> d!1711716 (= (choose!39922 lt!2174318 s!2326) _$88!3635)))

(declare-fun bs!1235670 () Bool)

(assert (= bs!1235670 d!1711716))

(assert (=> bs!1235670 m!6362952))

(assert (=> bs!1235670 m!6362972))

(assert (=> d!1711342 d!1711716))

(declare-fun b!5330988 () Bool)

(declare-fun e!3311130 () Bool)

(declare-fun e!3311127 () Bool)

(assert (=> b!5330988 (= e!3311130 e!3311127)))

(declare-fun res!2261168 () Bool)

(assert (=> b!5330988 (= res!2261168 (not (nullable!5166 (reg!15326 lt!2174318))))))

(assert (=> b!5330988 (=> (not res!2261168) (not e!3311127))))

(declare-fun b!5330989 () Bool)

(declare-fun e!3311131 () Bool)

(assert (=> b!5330989 (= e!3311131 e!3311130)))

(declare-fun c!927143 () Bool)

(assert (=> b!5330989 (= c!927143 ((_ is Star!14997) lt!2174318))))

(declare-fun b!5330990 () Bool)

(declare-fun e!3311129 () Bool)

(assert (=> b!5330990 (= e!3311130 e!3311129)))

(declare-fun c!927144 () Bool)

(assert (=> b!5330990 (= c!927144 ((_ is Union!14997) lt!2174318))))

(declare-fun d!1711718 () Bool)

(declare-fun res!2261166 () Bool)

(assert (=> d!1711718 (=> res!2261166 e!3311131)))

(assert (=> d!1711718 (= res!2261166 ((_ is ElementMatch!14997) lt!2174318))))

(assert (=> d!1711718 (= (validRegex!6733 lt!2174318) e!3311131)))

(declare-fun b!5330991 () Bool)

(declare-fun e!3311128 () Bool)

(declare-fun e!3311126 () Bool)

(assert (=> b!5330991 (= e!3311128 e!3311126)))

(declare-fun res!2261164 () Bool)

(assert (=> b!5330991 (=> (not res!2261164) (not e!3311126))))

(declare-fun call!380968 () Bool)

(assert (=> b!5330991 (= res!2261164 call!380968)))

(declare-fun call!380967 () Bool)

(declare-fun bm!380961 () Bool)

(assert (=> bm!380961 (= call!380967 (validRegex!6733 (ite c!927143 (reg!15326 lt!2174318) (ite c!927144 (regOne!30507 lt!2174318) (regOne!30506 lt!2174318)))))))

(declare-fun bm!380962 () Bool)

(declare-fun call!380966 () Bool)

(assert (=> bm!380962 (= call!380966 (validRegex!6733 (ite c!927144 (regTwo!30507 lt!2174318) (regTwo!30506 lt!2174318))))))

(declare-fun b!5330992 () Bool)

(declare-fun res!2261165 () Bool)

(assert (=> b!5330992 (=> res!2261165 e!3311128)))

(assert (=> b!5330992 (= res!2261165 (not ((_ is Concat!23842) lt!2174318)))))

(assert (=> b!5330992 (= e!3311129 e!3311128)))

(declare-fun b!5330993 () Bool)

(assert (=> b!5330993 (= e!3311127 call!380967)))

(declare-fun b!5330994 () Bool)

(declare-fun res!2261167 () Bool)

(declare-fun e!3311132 () Bool)

(assert (=> b!5330994 (=> (not res!2261167) (not e!3311132))))

(assert (=> b!5330994 (= res!2261167 call!380968)))

(assert (=> b!5330994 (= e!3311129 e!3311132)))

(declare-fun bm!380963 () Bool)

(assert (=> bm!380963 (= call!380968 call!380967)))

(declare-fun b!5330995 () Bool)

(assert (=> b!5330995 (= e!3311132 call!380966)))

(declare-fun b!5330996 () Bool)

(assert (=> b!5330996 (= e!3311126 call!380966)))

(assert (= (and d!1711718 (not res!2261166)) b!5330989))

(assert (= (and b!5330989 c!927143) b!5330988))

(assert (= (and b!5330989 (not c!927143)) b!5330990))

(assert (= (and b!5330988 res!2261168) b!5330993))

(assert (= (and b!5330990 c!927144) b!5330994))

(assert (= (and b!5330990 (not c!927144)) b!5330992))

(assert (= (and b!5330994 res!2261167) b!5330995))

(assert (= (and b!5330992 (not res!2261165)) b!5330991))

(assert (= (and b!5330991 res!2261164) b!5330996))

(assert (= (or b!5330995 b!5330996) bm!380962))

(assert (= (or b!5330994 b!5330991) bm!380963))

(assert (= (or b!5330993 bm!380963) bm!380961))

(declare-fun m!6364414 () Bool)

(assert (=> b!5330988 m!6364414))

(declare-fun m!6364416 () Bool)

(assert (=> bm!380961 m!6364416))

(declare-fun m!6364418 () Bool)

(assert (=> bm!380962 m!6364418))

(assert (=> d!1711342 d!1711718))

(declare-fun d!1711722 () Bool)

(declare-fun c!927149 () Bool)

(assert (=> d!1711722 (= c!927149 (isEmpty!33139 (tail!10523 (t!374505 s!2326))))))

(declare-fun e!3311139 () Bool)

(assert (=> d!1711722 (= (matchZipper!1241 (derivationStepZipper!1238 ((_ map or) lt!2174311 lt!2174309) (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))) e!3311139)))

(declare-fun b!5331007 () Bool)

(assert (=> b!5331007 (= e!3311139 (nullableZipper!1354 (derivationStepZipper!1238 ((_ map or) lt!2174311 lt!2174309) (head!11426 (t!374505 s!2326)))))))

(declare-fun b!5331008 () Bool)

(assert (=> b!5331008 (= e!3311139 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 ((_ map or) lt!2174311 lt!2174309) (head!11426 (t!374505 s!2326))) (head!11426 (tail!10523 (t!374505 s!2326)))) (tail!10523 (tail!10523 (t!374505 s!2326)))))))

(assert (= (and d!1711722 c!927149) b!5331007))

(assert (= (and d!1711722 (not c!927149)) b!5331008))

(assert (=> d!1711722 m!6363214))

(assert (=> d!1711722 m!6364080))

(assert (=> b!5331007 m!6363746))

(declare-fun m!6364420 () Bool)

(assert (=> b!5331007 m!6364420))

(assert (=> b!5331008 m!6363214))

(assert (=> b!5331008 m!6364084))

(assert (=> b!5331008 m!6363746))

(assert (=> b!5331008 m!6364084))

(declare-fun m!6364422 () Bool)

(assert (=> b!5331008 m!6364422))

(assert (=> b!5331008 m!6363214))

(assert (=> b!5331008 m!6364088))

(assert (=> b!5331008 m!6364422))

(assert (=> b!5331008 m!6364088))

(declare-fun m!6364424 () Bool)

(assert (=> b!5331008 m!6364424))

(assert (=> b!5330261 d!1711722))

(declare-fun bs!1235683 () Bool)

(declare-fun d!1711724 () Bool)

(assert (= bs!1235683 (and d!1711724 b!5329326)))

(declare-fun lambda!272469 () Int)

(assert (=> bs!1235683 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272469 lambda!272302))))

(declare-fun bs!1235684 () Bool)

(assert (= bs!1235684 (and d!1711724 d!1711192)))

(assert (=> bs!1235684 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272469 lambda!272339))))

(declare-fun bs!1235685 () Bool)

(assert (= bs!1235685 (and d!1711724 d!1711584)))

(assert (=> bs!1235685 (= lambda!272469 lambda!272439)))

(assert (=> d!1711724 true))

(assert (=> d!1711724 (= (derivationStepZipper!1238 ((_ map or) lt!2174311 lt!2174309) (head!11426 (t!374505 s!2326))) (flatMap!724 ((_ map or) lt!2174311 lt!2174309) lambda!272469))))

(declare-fun bs!1235686 () Bool)

(assert (= bs!1235686 d!1711724))

(declare-fun m!6364426 () Bool)

(assert (=> bs!1235686 m!6364426))

(assert (=> b!5330261 d!1711724))

(assert (=> b!5330261 d!1711586))

(assert (=> b!5330261 d!1711588))

(assert (=> bm!380814 d!1711606))

(declare-fun d!1711726 () Bool)

(assert (=> d!1711726 true))

(assert (=> d!1711726 true))

(declare-fun res!2261178 () Bool)

(assert (=> d!1711726 (= (choose!39916 lambda!272304) res!2261178)))

(assert (=> d!1711358 d!1711726))

(assert (=> bs!1235346 d!1711306))

(declare-fun d!1711730 () Bool)

(assert (=> d!1711730 (= (head!11427 lt!2174307) (h!67615 lt!2174307))))

(assert (=> b!5330129 d!1711730))

(declare-fun d!1711732 () Bool)

(declare-fun res!2261179 () Bool)

(declare-fun e!3311147 () Bool)

(assert (=> d!1711732 (=> res!2261179 e!3311147)))

(assert (=> d!1711732 (= res!2261179 ((_ is Nil!61167) (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(assert (=> d!1711732 (= (forall!14415 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))) lambda!272305) e!3311147)))

(declare-fun b!5331018 () Bool)

(declare-fun e!3311148 () Bool)

(assert (=> b!5331018 (= e!3311147 e!3311148)))

(declare-fun res!2261180 () Bool)

(assert (=> b!5331018 (=> (not res!2261180) (not e!3311148))))

(assert (=> b!5331018 (= res!2261180 (dynLambda!24187 lambda!272305 (h!67615 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331019 () Bool)

(assert (=> b!5331019 (= e!3311148 (forall!14415 (t!374506 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343))))) lambda!272305))))

(assert (= (and d!1711732 (not res!2261179)) b!5331018))

(assert (= (and b!5331018 res!2261180) b!5331019))

(declare-fun b_lambda!205005 () Bool)

(assert (=> (not b_lambda!205005) (not b!5331018)))

(declare-fun m!6364452 () Bool)

(assert (=> b!5331018 m!6364452))

(declare-fun m!6364456 () Bool)

(assert (=> b!5331019 m!6364456))

(assert (=> b!5330126 d!1711732))

(declare-fun b!5331051 () Bool)

(declare-fun e!3311171 () List!61290)

(assert (=> b!5331051 (= e!3311171 (Cons!61166 (h!67614 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))) (++!13334 (t!374505 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))) (t!374505 s!2326))))))

(declare-fun b!5331050 () Bool)

(assert (=> b!5331050 (= e!3311171 (t!374505 s!2326))))

(declare-fun b!5331052 () Bool)

(declare-fun res!2261201 () Bool)

(declare-fun e!3311172 () Bool)

(assert (=> b!5331052 (=> (not res!2261201) (not e!3311172))))

(declare-fun lt!2174574 () List!61290)

(declare-fun size!39771 (List!61290) Int)

(assert (=> b!5331052 (= res!2261201 (= (size!39771 lt!2174574) (+ (size!39771 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))) (size!39771 (t!374505 s!2326)))))))

(declare-fun d!1711736 () Bool)

(assert (=> d!1711736 e!3311172))

(declare-fun res!2261200 () Bool)

(assert (=> d!1711736 (=> (not res!2261200) (not e!3311172))))

(declare-fun content!10911 (List!61290) (InoxSet C!30264))

(assert (=> d!1711736 (= res!2261200 (= (content!10911 lt!2174574) ((_ map or) (content!10911 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))) (content!10911 (t!374505 s!2326)))))))

(assert (=> d!1711736 (= lt!2174574 e!3311171)))

(declare-fun c!927158 () Bool)

(assert (=> d!1711736 (= c!927158 ((_ is Nil!61166) (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))))))

(assert (=> d!1711736 (= (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326)) lt!2174574)))

(declare-fun b!5331053 () Bool)

(assert (=> b!5331053 (= e!3311172 (or (not (= (t!374505 s!2326) Nil!61166)) (= lt!2174574 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)))))))

(assert (= (and d!1711736 c!927158) b!5331050))

(assert (= (and d!1711736 (not c!927158)) b!5331051))

(assert (= (and d!1711736 res!2261200) b!5331052))

(assert (= (and b!5331052 res!2261201) b!5331053))

(declare-fun m!6364486 () Bool)

(assert (=> b!5331051 m!6364486))

(declare-fun m!6364488 () Bool)

(assert (=> b!5331052 m!6364488))

(assert (=> b!5331052 m!6363310))

(declare-fun m!6364490 () Bool)

(assert (=> b!5331052 m!6364490))

(declare-fun m!6364492 () Bool)

(assert (=> b!5331052 m!6364492))

(declare-fun m!6364494 () Bool)

(assert (=> d!1711736 m!6364494))

(assert (=> d!1711736 m!6363310))

(declare-fun m!6364496 () Bool)

(assert (=> d!1711736 m!6364496))

(declare-fun m!6364498 () Bool)

(assert (=> d!1711736 m!6364498))

(assert (=> b!5330168 d!1711736))

(declare-fun b!5331066 () Bool)

(declare-fun e!3311179 () List!61290)

(assert (=> b!5331066 (= e!3311179 (Cons!61166 (h!67614 Nil!61166) (++!13334 (t!374505 Nil!61166) (Cons!61166 (h!67614 s!2326) Nil!61166))))))

(declare-fun b!5331065 () Bool)

(assert (=> b!5331065 (= e!3311179 (Cons!61166 (h!67614 s!2326) Nil!61166))))

(declare-fun b!5331067 () Bool)

(declare-fun res!2261204 () Bool)

(declare-fun e!3311180 () Bool)

(assert (=> b!5331067 (=> (not res!2261204) (not e!3311180))))

(declare-fun lt!2174575 () List!61290)

(assert (=> b!5331067 (= res!2261204 (= (size!39771 lt!2174575) (+ (size!39771 Nil!61166) (size!39771 (Cons!61166 (h!67614 s!2326) Nil!61166)))))))

(declare-fun d!1711764 () Bool)

(assert (=> d!1711764 e!3311180))

(declare-fun res!2261203 () Bool)

(assert (=> d!1711764 (=> (not res!2261203) (not e!3311180))))

(assert (=> d!1711764 (= res!2261203 (= (content!10911 lt!2174575) ((_ map or) (content!10911 Nil!61166) (content!10911 (Cons!61166 (h!67614 s!2326) Nil!61166)))))))

(assert (=> d!1711764 (= lt!2174575 e!3311179)))

(declare-fun c!927164 () Bool)

(assert (=> d!1711764 (= c!927164 ((_ is Nil!61166) Nil!61166))))

(assert (=> d!1711764 (= (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) lt!2174575)))

(declare-fun b!5331068 () Bool)

(assert (=> b!5331068 (= e!3311180 (or (not (= (Cons!61166 (h!67614 s!2326) Nil!61166) Nil!61166)) (= lt!2174575 Nil!61166)))))

(assert (= (and d!1711764 c!927164) b!5331065))

(assert (= (and d!1711764 (not c!927164)) b!5331066))

(assert (= (and d!1711764 res!2261203) b!5331067))

(assert (= (and b!5331067 res!2261204) b!5331068))

(declare-fun m!6364500 () Bool)

(assert (=> b!5331066 m!6364500))

(declare-fun m!6364502 () Bool)

(assert (=> b!5331067 m!6364502))

(declare-fun m!6364504 () Bool)

(assert (=> b!5331067 m!6364504))

(declare-fun m!6364506 () Bool)

(assert (=> b!5331067 m!6364506))

(declare-fun m!6364508 () Bool)

(assert (=> d!1711764 m!6364508))

(declare-fun m!6364510 () Bool)

(assert (=> d!1711764 m!6364510))

(declare-fun m!6364512 () Bool)

(assert (=> d!1711764 m!6364512))

(assert (=> b!5330168 d!1711764))

(declare-fun d!1711766 () Bool)

(assert (=> d!1711766 (= (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326)) s!2326)))

(declare-fun lt!2174579 () Unit!153506)

(declare-fun choose!39929 (List!61290 C!30264 List!61290 List!61290) Unit!153506)

(assert (=> d!1711766 (= lt!2174579 (choose!39929 Nil!61166 (h!67614 s!2326) (t!374505 s!2326) s!2326))))

(assert (=> d!1711766 (= (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) (t!374505 s!2326))) s!2326)))

(assert (=> d!1711766 (= (lemmaMoveElementToOtherListKeepsConcatEq!1749 Nil!61166 (h!67614 s!2326) (t!374505 s!2326) s!2326) lt!2174579)))

(declare-fun bs!1235716 () Bool)

(assert (= bs!1235716 d!1711766))

(assert (=> bs!1235716 m!6363310))

(assert (=> bs!1235716 m!6363310))

(assert (=> bs!1235716 m!6363312))

(declare-fun m!6364542 () Bool)

(assert (=> bs!1235716 m!6364542))

(declare-fun m!6364544 () Bool)

(assert (=> bs!1235716 m!6364544))

(assert (=> b!5330168 d!1711766))

(declare-fun b!5331076 () Bool)

(declare-fun res!2261214 () Bool)

(declare-fun e!3311184 () Bool)

(assert (=> b!5331076 (=> (not res!2261214) (not e!3311184))))

(declare-fun lt!2174582 () Option!15108)

(assert (=> b!5331076 (= res!2261214 (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) (_1!35499 (get!21038 lt!2174582))))))

(declare-fun b!5331077 () Bool)

(declare-fun e!3311189 () Option!15108)

(assert (=> b!5331077 (= e!3311189 None!15107)))

(declare-fun b!5331078 () Bool)

(declare-fun e!3311190 () Bool)

(assert (=> b!5331078 (= e!3311190 (not (isDefined!11811 lt!2174582)))))

(declare-fun b!5331079 () Bool)

(declare-fun e!3311188 () Option!15108)

(assert (=> b!5331079 (= e!3311188 e!3311189)))

(declare-fun c!927167 () Bool)

(assert (=> b!5331079 (= c!927167 ((_ is Nil!61166) (t!374505 s!2326)))))

(declare-fun b!5331080 () Bool)

(declare-fun e!3311186 () Bool)

(assert (=> b!5331080 (= e!3311186 (matchR!7182 lt!2174318 (t!374505 s!2326)))))

(declare-fun b!5331081 () Bool)

(declare-fun res!2261212 () Bool)

(assert (=> b!5331081 (=> (not res!2261212) (not e!3311184))))

(assert (=> b!5331081 (= res!2261212 (matchR!7182 lt!2174318 (_2!35499 (get!21038 lt!2174582))))))

(declare-fun b!5331082 () Bool)

(assert (=> b!5331082 (= e!3311184 (= (++!13334 (_1!35499 (get!21038 lt!2174582)) (_2!35499 (get!21038 lt!2174582))) s!2326))))

(declare-fun b!5331083 () Bool)

(assert (=> b!5331083 (= e!3311188 (Some!15107 (tuple2!64393 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326))))))

(declare-fun b!5331084 () Bool)

(declare-fun lt!2174580 () Unit!153506)

(declare-fun lt!2174581 () Unit!153506)

(assert (=> b!5331084 (= lt!2174580 lt!2174581)))

(assert (=> b!5331084 (= (++!13334 (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (Cons!61166 (h!67614 (t!374505 s!2326)) Nil!61166)) (t!374505 (t!374505 s!2326))) s!2326)))

(assert (=> b!5331084 (= lt!2174581 (lemmaMoveElementToOtherListKeepsConcatEq!1749 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (h!67614 (t!374505 s!2326)) (t!374505 (t!374505 s!2326)) s!2326))))

(assert (=> b!5331084 (= e!3311189 (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (Cons!61166 (h!67614 (t!374505 s!2326)) Nil!61166)) (t!374505 (t!374505 s!2326)) s!2326))))

(declare-fun d!1711778 () Bool)

(assert (=> d!1711778 e!3311190))

(declare-fun res!2261208 () Bool)

(assert (=> d!1711778 (=> res!2261208 e!3311190)))

(assert (=> d!1711778 (= res!2261208 e!3311184)))

(declare-fun res!2261210 () Bool)

(assert (=> d!1711778 (=> (not res!2261210) (not e!3311184))))

(assert (=> d!1711778 (= res!2261210 (isDefined!11811 lt!2174582))))

(assert (=> d!1711778 (= lt!2174582 e!3311188)))

(declare-fun c!927166 () Bool)

(assert (=> d!1711778 (= c!927166 e!3311186)))

(declare-fun res!2261213 () Bool)

(assert (=> d!1711778 (=> (not res!2261213) (not e!3311186))))

(assert (=> d!1711778 (= res!2261213 (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))))))

(assert (=> d!1711778 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711778 (= (findConcatSeparation!1522 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326) s!2326) lt!2174582)))

(assert (= (and d!1711778 res!2261213) b!5331080))

(assert (= (and d!1711778 c!927166) b!5331083))

(assert (= (and d!1711778 (not c!927166)) b!5331079))

(assert (= (and b!5331079 c!927167) b!5331077))

(assert (= (and b!5331079 (not c!927167)) b!5331084))

(assert (= (and d!1711778 res!2261210) b!5331076))

(assert (= (and b!5331076 res!2261214) b!5331081))

(assert (= (and b!5331081 res!2261212) b!5331082))

(assert (= (and d!1711778 (not res!2261208)) b!5331078))

(assert (=> b!5331084 m!6363310))

(declare-fun m!6364564 () Bool)

(assert (=> b!5331084 m!6364564))

(assert (=> b!5331084 m!6364564))

(declare-fun m!6364566 () Bool)

(assert (=> b!5331084 m!6364566))

(assert (=> b!5331084 m!6363310))

(declare-fun m!6364568 () Bool)

(assert (=> b!5331084 m!6364568))

(assert (=> b!5331084 m!6364564))

(declare-fun m!6364570 () Bool)

(assert (=> b!5331084 m!6364570))

(declare-fun m!6364572 () Bool)

(assert (=> b!5331081 m!6364572))

(declare-fun m!6364574 () Bool)

(assert (=> b!5331081 m!6364574))

(declare-fun m!6364576 () Bool)

(assert (=> d!1711778 m!6364576))

(assert (=> d!1711778 m!6363310))

(declare-fun m!6364578 () Bool)

(assert (=> d!1711778 m!6364578))

(assert (=> d!1711778 m!6363568))

(assert (=> b!5331082 m!6364572))

(declare-fun m!6364580 () Bool)

(assert (=> b!5331082 m!6364580))

(declare-fun m!6364582 () Bool)

(assert (=> b!5331080 m!6364582))

(assert (=> b!5331078 m!6364576))

(assert (=> b!5331076 m!6364572))

(declare-fun m!6364584 () Bool)

(assert (=> b!5331076 m!6364584))

(assert (=> b!5330168 d!1711778))

(declare-fun bs!1235730 () Bool)

(declare-fun d!1711786 () Bool)

(assert (= bs!1235730 (and d!1711786 b!5329319)))

(declare-fun lambda!272474 () Int)

(assert (=> bs!1235730 (= lambda!272474 lambda!272305)))

(declare-fun bs!1235732 () Bool)

(assert (= bs!1235732 (and d!1711786 d!1711380)))

(assert (=> bs!1235732 (= lambda!272474 lambda!272409)))

(declare-fun bs!1235733 () Bool)

(assert (= bs!1235733 (and d!1711786 d!1711294)))

(assert (=> bs!1235733 (= lambda!272474 lambda!272372)))

(declare-fun bs!1235734 () Bool)

(assert (= bs!1235734 (and d!1711786 d!1711376)))

(assert (=> bs!1235734 (= lambda!272474 lambda!272408)))

(declare-fun bs!1235735 () Bool)

(assert (= bs!1235735 (and d!1711786 d!1711324)))

(assert (=> bs!1235735 (= lambda!272474 lambda!272381)))

(declare-fun bs!1235736 () Bool)

(assert (= bs!1235736 (and d!1711786 d!1711356)))

(assert (=> bs!1235736 (= lambda!272474 lambda!272388)))

(declare-fun bs!1235737 () Bool)

(assert (= bs!1235737 (and d!1711786 b!5330869)))

(assert (=> bs!1235737 (not (= lambda!272474 lambda!272452))))

(declare-fun bs!1235738 () Bool)

(assert (= bs!1235738 (and d!1711786 d!1711714)))

(assert (=> bs!1235738 (= lambda!272474 lambda!272467)))

(declare-fun bs!1235740 () Bool)

(assert (= bs!1235740 (and d!1711786 d!1711374)))

(assert (=> bs!1235740 (= lambda!272474 lambda!272405)))

(declare-fun bs!1235742 () Bool)

(assert (= bs!1235742 (and d!1711786 b!5330871)))

(assert (=> bs!1235742 (not (= lambda!272474 lambda!272453))))

(declare-fun bs!1235744 () Bool)

(assert (= bs!1235744 (and d!1711786 d!1711346)))

(assert (=> bs!1235744 (= lambda!272474 lambda!272384)))

(declare-fun b!5331089 () Bool)

(declare-fun e!3311195 () Bool)

(declare-fun lt!2174584 () Regex!14997)

(assert (=> b!5331089 (= e!3311195 (= lt!2174584 (head!11427 (t!374506 lt!2174324))))))

(declare-fun b!5331090 () Bool)

(declare-fun e!3311198 () Bool)

(assert (=> b!5331090 (= e!3311198 (isEmptyExpr!889 lt!2174584))))

(declare-fun e!3311194 () Bool)

(assert (=> d!1711786 e!3311194))

(declare-fun res!2261218 () Bool)

(assert (=> d!1711786 (=> (not res!2261218) (not e!3311194))))

(assert (=> d!1711786 (= res!2261218 (validRegex!6733 lt!2174584))))

(declare-fun e!3311193 () Regex!14997)

(assert (=> d!1711786 (= lt!2174584 e!3311193)))

(declare-fun c!927171 () Bool)

(declare-fun e!3311197 () Bool)

(assert (=> d!1711786 (= c!927171 e!3311197)))

(declare-fun res!2261217 () Bool)

(assert (=> d!1711786 (=> (not res!2261217) (not e!3311197))))

(assert (=> d!1711786 (= res!2261217 ((_ is Cons!61167) (t!374506 lt!2174324)))))

(assert (=> d!1711786 (forall!14415 (t!374506 lt!2174324) lambda!272474)))

(assert (=> d!1711786 (= (generalisedConcat!666 (t!374506 lt!2174324)) lt!2174584)))

(declare-fun b!5331091 () Bool)

(assert (=> b!5331091 (= e!3311197 (isEmpty!33135 (t!374506 (t!374506 lt!2174324))))))

(declare-fun b!5331092 () Bool)

(assert (=> b!5331092 (= e!3311194 e!3311198)))

(declare-fun c!927172 () Bool)

(assert (=> b!5331092 (= c!927172 (isEmpty!33135 (t!374506 lt!2174324)))))

(declare-fun b!5331093 () Bool)

(assert (=> b!5331093 (= e!3311193 (h!67615 (t!374506 lt!2174324)))))

(declare-fun b!5331094 () Bool)

(declare-fun e!3311196 () Regex!14997)

(assert (=> b!5331094 (= e!3311196 EmptyExpr!14997)))

(declare-fun b!5331095 () Bool)

(assert (=> b!5331095 (= e!3311195 (isConcat!412 lt!2174584))))

(declare-fun b!5331096 () Bool)

(assert (=> b!5331096 (= e!3311193 e!3311196)))

(declare-fun c!927170 () Bool)

(assert (=> b!5331096 (= c!927170 ((_ is Cons!61167) (t!374506 lt!2174324)))))

(declare-fun b!5331097 () Bool)

(assert (=> b!5331097 (= e!3311196 (Concat!23842 (h!67615 (t!374506 lt!2174324)) (generalisedConcat!666 (t!374506 (t!374506 lt!2174324)))))))

(declare-fun b!5331098 () Bool)

(assert (=> b!5331098 (= e!3311198 e!3311195)))

(declare-fun c!927169 () Bool)

(assert (=> b!5331098 (= c!927169 (isEmpty!33135 (tail!10524 (t!374506 lt!2174324))))))

(assert (= (and d!1711786 res!2261217) b!5331091))

(assert (= (and d!1711786 c!927171) b!5331093))

(assert (= (and d!1711786 (not c!927171)) b!5331096))

(assert (= (and b!5331096 c!927170) b!5331097))

(assert (= (and b!5331096 (not c!927170)) b!5331094))

(assert (= (and d!1711786 res!2261218) b!5331092))

(assert (= (and b!5331092 c!927172) b!5331090))

(assert (= (and b!5331092 (not c!927172)) b!5331098))

(assert (= (and b!5331098 c!927169) b!5331089))

(assert (= (and b!5331098 (not c!927169)) b!5331095))

(declare-fun m!6364588 () Bool)

(assert (=> b!5331095 m!6364588))

(declare-fun m!6364590 () Bool)

(assert (=> b!5331090 m!6364590))

(assert (=> b!5331092 m!6363632))

(declare-fun m!6364592 () Bool)

(assert (=> b!5331091 m!6364592))

(declare-fun m!6364594 () Bool)

(assert (=> b!5331097 m!6364594))

(declare-fun m!6364596 () Bool)

(assert (=> d!1711786 m!6364596))

(declare-fun m!6364598 () Bool)

(assert (=> d!1711786 m!6364598))

(declare-fun m!6364600 () Bool)

(assert (=> b!5331098 m!6364600))

(assert (=> b!5331098 m!6364600))

(declare-fun m!6364602 () Bool)

(assert (=> b!5331098 m!6364602))

(declare-fun m!6364604 () Bool)

(assert (=> b!5331089 m!6364604))

(assert (=> b!5330158 d!1711786))

(assert (=> b!5330259 d!1711368))

(assert (=> b!5329780 d!1711736))

(assert (=> b!5329780 d!1711764))

(assert (=> b!5329780 d!1711766))

(declare-fun b!5331109 () Bool)

(declare-fun res!2261225 () Bool)

(declare-fun e!3311205 () Bool)

(assert (=> b!5331109 (=> (not res!2261225) (not e!3311205))))

(declare-fun lt!2174588 () Option!15108)

(assert (=> b!5331109 (= res!2261225 (matchR!7182 (regOne!30506 r!7292) (_1!35499 (get!21038 lt!2174588))))))

(declare-fun b!5331110 () Bool)

(declare-fun e!3311208 () Option!15108)

(assert (=> b!5331110 (= e!3311208 None!15107)))

(declare-fun b!5331111 () Bool)

(declare-fun e!3311209 () Bool)

(assert (=> b!5331111 (= e!3311209 (not (isDefined!11811 lt!2174588)))))

(declare-fun b!5331112 () Bool)

(declare-fun e!3311207 () Option!15108)

(assert (=> b!5331112 (= e!3311207 e!3311208)))

(declare-fun c!927178 () Bool)

(assert (=> b!5331112 (= c!927178 ((_ is Nil!61166) (t!374505 s!2326)))))

(declare-fun b!5331113 () Bool)

(declare-fun e!3311206 () Bool)

(assert (=> b!5331113 (= e!3311206 (matchR!7182 (regTwo!30506 r!7292) (t!374505 s!2326)))))

(declare-fun b!5331114 () Bool)

(declare-fun res!2261223 () Bool)

(assert (=> b!5331114 (=> (not res!2261223) (not e!3311205))))

(assert (=> b!5331114 (= res!2261223 (matchR!7182 (regTwo!30506 r!7292) (_2!35499 (get!21038 lt!2174588))))))

(declare-fun b!5331115 () Bool)

(assert (=> b!5331115 (= e!3311205 (= (++!13334 (_1!35499 (get!21038 lt!2174588)) (_2!35499 (get!21038 lt!2174588))) s!2326))))

(declare-fun b!5331116 () Bool)

(assert (=> b!5331116 (= e!3311207 (Some!15107 (tuple2!64393 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326))))))

(declare-fun b!5331117 () Bool)

(declare-fun lt!2174586 () Unit!153506)

(declare-fun lt!2174587 () Unit!153506)

(assert (=> b!5331117 (= lt!2174586 lt!2174587)))

(assert (=> b!5331117 (= (++!13334 (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (Cons!61166 (h!67614 (t!374505 s!2326)) Nil!61166)) (t!374505 (t!374505 s!2326))) s!2326)))

(assert (=> b!5331117 (= lt!2174587 (lemmaMoveElementToOtherListKeepsConcatEq!1749 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (h!67614 (t!374505 s!2326)) (t!374505 (t!374505 s!2326)) s!2326))))

(assert (=> b!5331117 (= e!3311208 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) (++!13334 (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (Cons!61166 (h!67614 (t!374505 s!2326)) Nil!61166)) (t!374505 (t!374505 s!2326)) s!2326))))

(declare-fun d!1711792 () Bool)

(assert (=> d!1711792 e!3311209))

(declare-fun res!2261221 () Bool)

(assert (=> d!1711792 (=> res!2261221 e!3311209)))

(assert (=> d!1711792 (= res!2261221 e!3311205)))

(declare-fun res!2261222 () Bool)

(assert (=> d!1711792 (=> (not res!2261222) (not e!3311205))))

(assert (=> d!1711792 (= res!2261222 (isDefined!11811 lt!2174588))))

(assert (=> d!1711792 (= lt!2174588 e!3311207)))

(declare-fun c!927177 () Bool)

(assert (=> d!1711792 (= c!927177 e!3311206)))

(declare-fun res!2261224 () Bool)

(assert (=> d!1711792 (=> (not res!2261224) (not e!3311206))))

(assert (=> d!1711792 (= res!2261224 (matchR!7182 (regOne!30506 r!7292) (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166))))))

(assert (=> d!1711792 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711792 (= (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) (++!13334 Nil!61166 (Cons!61166 (h!67614 s!2326) Nil!61166)) (t!374505 s!2326) s!2326) lt!2174588)))

(assert (= (and d!1711792 res!2261224) b!5331113))

(assert (= (and d!1711792 c!927177) b!5331116))

(assert (= (and d!1711792 (not c!927177)) b!5331112))

(assert (= (and b!5331112 c!927178) b!5331110))

(assert (= (and b!5331112 (not c!927178)) b!5331117))

(assert (= (and d!1711792 res!2261222) b!5331109))

(assert (= (and b!5331109 res!2261225) b!5331114))

(assert (= (and b!5331114 res!2261223) b!5331115))

(assert (= (and d!1711792 (not res!2261221)) b!5331111))

(assert (=> b!5331117 m!6363310))

(assert (=> b!5331117 m!6364564))

(assert (=> b!5331117 m!6364564))

(assert (=> b!5331117 m!6364566))

(assert (=> b!5331117 m!6363310))

(assert (=> b!5331117 m!6364568))

(assert (=> b!5331117 m!6364564))

(declare-fun m!6364632 () Bool)

(assert (=> b!5331117 m!6364632))

(declare-fun m!6364634 () Bool)

(assert (=> b!5331114 m!6364634))

(declare-fun m!6364636 () Bool)

(assert (=> b!5331114 m!6364636))

(declare-fun m!6364638 () Bool)

(assert (=> d!1711792 m!6364638))

(assert (=> d!1711792 m!6363310))

(declare-fun m!6364640 () Bool)

(assert (=> d!1711792 m!6364640))

(assert (=> d!1711792 m!6363326))

(assert (=> b!5331115 m!6364634))

(declare-fun m!6364642 () Bool)

(assert (=> b!5331115 m!6364642))

(declare-fun m!6364644 () Bool)

(assert (=> b!5331113 m!6364644))

(assert (=> b!5331111 m!6364638))

(assert (=> b!5331109 m!6364634))

(declare-fun m!6364646 () Bool)

(assert (=> b!5331109 m!6364646))

(assert (=> b!5329780 d!1711792))

(assert (=> b!5330113 d!1711520))

(declare-fun b!5331122 () Bool)

(declare-fun e!3311216 () Bool)

(declare-fun e!3311213 () Bool)

(assert (=> b!5331122 (= e!3311216 e!3311213)))

(declare-fun res!2261230 () Bool)

(assert (=> b!5331122 (= res!2261230 (not (nullable!5166 (reg!15326 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))))

(assert (=> b!5331122 (=> (not res!2261230) (not e!3311213))))

(declare-fun b!5331123 () Bool)

(declare-fun e!3311217 () Bool)

(assert (=> b!5331123 (= e!3311217 e!3311216)))

(declare-fun c!927181 () Bool)

(assert (=> b!5331123 (= c!927181 ((_ is Star!14997) (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5331124 () Bool)

(declare-fun e!3311215 () Bool)

(assert (=> b!5331124 (= e!3311216 e!3311215)))

(declare-fun c!927182 () Bool)

(assert (=> b!5331124 (= c!927182 ((_ is Union!14997) (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun d!1711800 () Bool)

(declare-fun res!2261228 () Bool)

(assert (=> d!1711800 (=> res!2261228 e!3311217)))

(assert (=> d!1711800 (= res!2261228 ((_ is ElementMatch!14997) (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(assert (=> d!1711800 (= (validRegex!6733 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))) e!3311217)))

(declare-fun b!5331125 () Bool)

(declare-fun e!3311214 () Bool)

(declare-fun e!3311212 () Bool)

(assert (=> b!5331125 (= e!3311214 e!3311212)))

(declare-fun res!2261226 () Bool)

(assert (=> b!5331125 (=> (not res!2261226) (not e!3311212))))

(declare-fun call!380985 () Bool)

(assert (=> b!5331125 (= res!2261226 call!380985)))

(declare-fun bm!380978 () Bool)

(declare-fun call!380984 () Bool)

(assert (=> bm!380978 (= call!380984 (validRegex!6733 (ite c!927181 (reg!15326 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))) (ite c!927182 (regOne!30507 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))) (regOne!30506 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun bm!380979 () Bool)

(declare-fun call!380983 () Bool)

(assert (=> bm!380979 (= call!380983 (validRegex!6733 (ite c!927182 (regTwo!30507 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))) (regTwo!30506 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun b!5331126 () Bool)

(declare-fun res!2261227 () Bool)

(assert (=> b!5331126 (=> res!2261227 e!3311214)))

(assert (=> b!5331126 (= res!2261227 (not ((_ is Concat!23842) (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(assert (=> b!5331126 (= e!3311215 e!3311214)))

(declare-fun b!5331127 () Bool)

(assert (=> b!5331127 (= e!3311213 call!380984)))

(declare-fun b!5331128 () Bool)

(declare-fun res!2261229 () Bool)

(declare-fun e!3311218 () Bool)

(assert (=> b!5331128 (=> (not res!2261229) (not e!3311218))))

(assert (=> b!5331128 (= res!2261229 call!380985)))

(assert (=> b!5331128 (= e!3311215 e!3311218)))

(declare-fun bm!380980 () Bool)

(assert (=> bm!380980 (= call!380985 call!380984)))

(declare-fun b!5331129 () Bool)

(assert (=> b!5331129 (= e!3311218 call!380983)))

(declare-fun b!5331130 () Bool)

(assert (=> b!5331130 (= e!3311212 call!380983)))

(assert (= (and d!1711800 (not res!2261228)) b!5331123))

(assert (= (and b!5331123 c!927181) b!5331122))

(assert (= (and b!5331123 (not c!927181)) b!5331124))

(assert (= (and b!5331122 res!2261230) b!5331127))

(assert (= (and b!5331124 c!927182) b!5331128))

(assert (= (and b!5331124 (not c!927182)) b!5331126))

(assert (= (and b!5331128 res!2261229) b!5331129))

(assert (= (and b!5331126 (not res!2261227)) b!5331125))

(assert (= (and b!5331125 res!2261226) b!5331130))

(assert (= (or b!5331129 b!5331130) bm!380979))

(assert (= (or b!5331128 b!5331125) bm!380980))

(assert (= (or b!5331127 bm!380980) bm!380978))

(declare-fun m!6364648 () Bool)

(assert (=> b!5331122 m!6364648))

(declare-fun m!6364650 () Bool)

(assert (=> bm!380978 m!6364650))

(declare-fun m!6364652 () Bool)

(assert (=> bm!380979 m!6364652))

(assert (=> bs!1235344 d!1711800))

(declare-fun b!5331145 () Bool)

(declare-fun e!3311228 () (InoxSet Context!8762))

(declare-fun call!380988 () (InoxSet Context!8762))

(assert (=> b!5331145 (= e!3311228 call!380988)))

(declare-fun bm!380982 () Bool)

(declare-fun call!380989 () (InoxSet Context!8762))

(declare-fun call!380987 () (InoxSet Context!8762))

(assert (=> bm!380982 (= call!380989 call!380987)))

(declare-fun b!5331146 () Bool)

(declare-fun e!3311229 () (InoxSet Context!8762))

(assert (=> b!5331146 (= e!3311229 call!380988)))

(declare-fun bm!380983 () Bool)

(declare-fun call!380990 () List!61291)

(declare-fun c!927189 () Bool)

(declare-fun c!927190 () Bool)

(declare-fun c!927187 () Bool)

(assert (=> bm!380983 (= call!380987 (derivationStepZipperDown!445 (ite c!927187 (regTwo!30507 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (ite c!927189 (regTwo!30506 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (ite c!927190 (regOne!30506 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (reg!15326 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))))))) (ite (or c!927187 c!927189) (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828)) (Context!8763 call!380990)) (h!67614 s!2326)))))

(declare-fun b!5331147 () Bool)

(declare-fun e!3311231 () Bool)

(assert (=> b!5331147 (= e!3311231 (nullable!5166 (regOne!30506 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))))))))

(declare-fun b!5331148 () Bool)

(assert (=> b!5331148 (= c!927189 e!3311231)))

(declare-fun res!2261239 () Bool)

(assert (=> b!5331148 (=> (not res!2261239) (not e!3311231))))

(assert (=> b!5331148 (= res!2261239 ((_ is Concat!23842) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))))))

(declare-fun e!3311230 () (InoxSet Context!8762))

(declare-fun e!3311227 () (InoxSet Context!8762))

(assert (=> b!5331148 (= e!3311230 e!3311227)))

(declare-fun b!5331149 () Bool)

(assert (=> b!5331149 (= e!3311228 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!380984 () Bool)

(assert (=> bm!380984 (= call!380988 call!380989)))

(declare-fun call!380992 () (InoxSet Context!8762))

(declare-fun bm!380985 () Bool)

(declare-fun call!380991 () List!61291)

(assert (=> bm!380985 (= call!380992 (derivationStepZipperDown!445 (ite c!927187 (regOne!30507 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (regOne!30506 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))))) (ite c!927187 (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828)) (Context!8763 call!380991)) (h!67614 s!2326)))))

(declare-fun b!5331150 () Bool)

(assert (=> b!5331150 (= e!3311227 ((_ map or) call!380992 call!380989))))

(declare-fun bm!380986 () Bool)

(assert (=> bm!380986 (= call!380991 ($colon$colon!1404 (exprs!4881 (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828))) (ite (or c!927189 c!927190) (regTwo!30506 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))))))))

(declare-fun b!5331151 () Bool)

(declare-fun c!927188 () Bool)

(assert (=> b!5331151 (= c!927188 ((_ is Star!14997) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))))))

(assert (=> b!5331151 (= e!3311229 e!3311228)))

(declare-fun b!5331152 () Bool)

(declare-fun e!3311226 () (InoxSet Context!8762))

(assert (=> b!5331152 (= e!3311226 e!3311230)))

(assert (=> b!5331152 (= c!927187 ((_ is Union!14997) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))))))

(declare-fun b!5331154 () Bool)

(assert (=> b!5331154 (= e!3311226 (store ((as const (Array Context!8762 Bool)) false) (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828)) true))))

(declare-fun b!5331155 () Bool)

(assert (=> b!5331155 (= e!3311227 e!3311229)))

(assert (=> b!5331155 (= c!927190 ((_ is Concat!23842) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))))))

(declare-fun bm!380987 () Bool)

(assert (=> bm!380987 (= call!380990 call!380991)))

(declare-fun b!5331153 () Bool)

(assert (=> b!5331153 (= e!3311230 ((_ map or) call!380992 call!380987))))

(declare-fun d!1711804 () Bool)

(declare-fun c!927186 () Bool)

(assert (=> d!1711804 (= c!927186 (and ((_ is ElementMatch!14997) (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (= (c!926649 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292))))))) (h!67614 s!2326))))))

(assert (=> d!1711804 (= (derivationStepZipperDown!445 (ite c!926930 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (ite c!926932 (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (ite c!926933 (regOne!30506 (regOne!30506 (regOne!30506 r!7292))) (reg!15326 (regOne!30506 (regOne!30506 r!7292)))))) (ite (or c!926930 c!926932) (Context!8763 lt!2174324) (Context!8763 call!380828)) (h!67614 s!2326)) e!3311226)))

(assert (= (and d!1711804 c!927186) b!5331154))

(assert (= (and d!1711804 (not c!927186)) b!5331152))

(assert (= (and b!5331152 c!927187) b!5331153))

(assert (= (and b!5331152 (not c!927187)) b!5331148))

(assert (= (and b!5331148 res!2261239) b!5331147))

(assert (= (and b!5331148 c!927189) b!5331150))

(assert (= (and b!5331148 (not c!927189)) b!5331155))

(assert (= (and b!5331155 c!927190) b!5331146))

(assert (= (and b!5331155 (not c!927190)) b!5331151))

(assert (= (and b!5331151 c!927188) b!5331145))

(assert (= (and b!5331151 (not c!927188)) b!5331149))

(assert (= (or b!5331146 b!5331145) bm!380987))

(assert (= (or b!5331146 b!5331145) bm!380984))

(assert (= (or b!5331150 bm!380987) bm!380986))

(assert (= (or b!5331150 bm!380984) bm!380982))

(assert (= (or b!5331153 bm!380982) bm!380983))

(assert (= (or b!5331153 b!5331150) bm!380985))

(declare-fun m!6364668 () Bool)

(assert (=> b!5331154 m!6364668))

(declare-fun m!6364672 () Bool)

(assert (=> b!5331147 m!6364672))

(declare-fun m!6364676 () Bool)

(assert (=> bm!380985 m!6364676))

(declare-fun m!6364678 () Bool)

(assert (=> bm!380986 m!6364678))

(declare-fun m!6364680 () Bool)

(assert (=> bm!380983 m!6364680))

(assert (=> bm!380821 d!1711804))

(declare-fun b!5331167 () Bool)

(declare-fun e!3311243 () (InoxSet Context!8762))

(declare-fun call!380997 () (InoxSet Context!8762))

(assert (=> b!5331167 (= e!3311243 call!380997)))

(declare-fun bm!380991 () Bool)

(declare-fun call!380998 () (InoxSet Context!8762))

(declare-fun call!380996 () (InoxSet Context!8762))

(assert (=> bm!380991 (= call!380998 call!380996)))

(declare-fun b!5331168 () Bool)

(declare-fun e!3311244 () (InoxSet Context!8762))

(assert (=> b!5331168 (= e!3311244 call!380997)))

(declare-fun c!927197 () Bool)

(declare-fun c!927194 () Bool)

(declare-fun c!927196 () Bool)

(declare-fun bm!380992 () Bool)

(declare-fun call!380999 () List!61291)

(assert (=> bm!380992 (= call!380996 (derivationStepZipperDown!445 (ite c!927194 (regTwo!30507 (h!67615 (exprs!4881 lt!2174326))) (ite c!927196 (regTwo!30506 (h!67615 (exprs!4881 lt!2174326))) (ite c!927197 (regOne!30506 (h!67615 (exprs!4881 lt!2174326))) (reg!15326 (h!67615 (exprs!4881 lt!2174326)))))) (ite (or c!927194 c!927196) (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (Context!8763 call!380999)) (h!67614 s!2326)))))

(declare-fun b!5331169 () Bool)

(declare-fun e!3311246 () Bool)

(assert (=> b!5331169 (= e!3311246 (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 lt!2174326)))))))

(declare-fun b!5331170 () Bool)

(assert (=> b!5331170 (= c!927196 e!3311246)))

(declare-fun res!2261247 () Bool)

(assert (=> b!5331170 (=> (not res!2261247) (not e!3311246))))

(assert (=> b!5331170 (= res!2261247 ((_ is Concat!23842) (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun e!3311245 () (InoxSet Context!8762))

(declare-fun e!3311242 () (InoxSet Context!8762))

(assert (=> b!5331170 (= e!3311245 e!3311242)))

(declare-fun b!5331171 () Bool)

(assert (=> b!5331171 (= e!3311243 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!380993 () Bool)

(assert (=> bm!380993 (= call!380997 call!380998)))

(declare-fun bm!380994 () Bool)

(declare-fun call!381001 () (InoxSet Context!8762))

(declare-fun call!381000 () List!61291)

(assert (=> bm!380994 (= call!381001 (derivationStepZipperDown!445 (ite c!927194 (regOne!30507 (h!67615 (exprs!4881 lt!2174326))) (regOne!30506 (h!67615 (exprs!4881 lt!2174326)))) (ite c!927194 (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (Context!8763 call!381000)) (h!67614 s!2326)))))

(declare-fun b!5331172 () Bool)

(assert (=> b!5331172 (= e!3311242 ((_ map or) call!381001 call!380998))))

(declare-fun bm!380995 () Bool)

(assert (=> bm!380995 (= call!381000 ($colon$colon!1404 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))) (ite (or c!927196 c!927197) (regTwo!30506 (h!67615 (exprs!4881 lt!2174326))) (h!67615 (exprs!4881 lt!2174326)))))))

(declare-fun b!5331173 () Bool)

(declare-fun c!927195 () Bool)

(assert (=> b!5331173 (= c!927195 ((_ is Star!14997) (h!67615 (exprs!4881 lt!2174326))))))

(assert (=> b!5331173 (= e!3311244 e!3311243)))

(declare-fun b!5331174 () Bool)

(declare-fun e!3311241 () (InoxSet Context!8762))

(assert (=> b!5331174 (= e!3311241 e!3311245)))

(assert (=> b!5331174 (= c!927194 ((_ is Union!14997) (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun b!5331176 () Bool)

(assert (=> b!5331176 (= e!3311241 (store ((as const (Array Context!8762 Bool)) false) (Context!8763 (t!374506 (exprs!4881 lt!2174326))) true))))

(declare-fun b!5331178 () Bool)

(assert (=> b!5331178 (= e!3311242 e!3311244)))

(assert (=> b!5331178 (= c!927197 ((_ is Concat!23842) (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun bm!380996 () Bool)

(assert (=> bm!380996 (= call!380999 call!381000)))

(declare-fun b!5331175 () Bool)

(assert (=> b!5331175 (= e!3311245 ((_ map or) call!381001 call!380996))))

(declare-fun d!1711810 () Bool)

(declare-fun c!927193 () Bool)

(assert (=> d!1711810 (= c!927193 (and ((_ is ElementMatch!14997) (h!67615 (exprs!4881 lt!2174326))) (= (c!926649 (h!67615 (exprs!4881 lt!2174326))) (h!67614 s!2326))))))

(assert (=> d!1711810 (= (derivationStepZipperDown!445 (h!67615 (exprs!4881 lt!2174326)) (Context!8763 (t!374506 (exprs!4881 lt!2174326))) (h!67614 s!2326)) e!3311241)))

(assert (= (and d!1711810 c!927193) b!5331176))

(assert (= (and d!1711810 (not c!927193)) b!5331174))

(assert (= (and b!5331174 c!927194) b!5331175))

(assert (= (and b!5331174 (not c!927194)) b!5331170))

(assert (= (and b!5331170 res!2261247) b!5331169))

(assert (= (and b!5331170 c!927196) b!5331172))

(assert (= (and b!5331170 (not c!927196)) b!5331178))

(assert (= (and b!5331178 c!927197) b!5331168))

(assert (= (and b!5331178 (not c!927197)) b!5331173))

(assert (= (and b!5331173 c!927195) b!5331167))

(assert (= (and b!5331173 (not c!927195)) b!5331171))

(assert (= (or b!5331168 b!5331167) bm!380996))

(assert (= (or b!5331168 b!5331167) bm!380993))

(assert (= (or b!5331172 bm!380996) bm!380995))

(assert (= (or b!5331172 bm!380993) bm!380991))

(assert (= (or b!5331175 bm!380991) bm!380992))

(assert (= (or b!5331175 b!5331172) bm!380994))

(declare-fun m!6364692 () Bool)

(assert (=> b!5331176 m!6364692))

(declare-fun m!6364694 () Bool)

(assert (=> b!5331169 m!6364694))

(declare-fun m!6364696 () Bool)

(assert (=> bm!380994 m!6364696))

(declare-fun m!6364698 () Bool)

(assert (=> bm!380995 m!6364698))

(declare-fun m!6364700 () Bool)

(assert (=> bm!380992 m!6364700))

(assert (=> bm!380732 d!1711810))

(declare-fun bs!1235756 () Bool)

(declare-fun d!1711816 () Bool)

(assert (= bs!1235756 (and d!1711816 b!5329319)))

(declare-fun lambda!272476 () Int)

(assert (=> bs!1235756 (= lambda!272476 lambda!272305)))

(declare-fun bs!1235757 () Bool)

(assert (= bs!1235757 (and d!1711816 d!1711380)))

(assert (=> bs!1235757 (= lambda!272476 lambda!272409)))

(declare-fun bs!1235758 () Bool)

(assert (= bs!1235758 (and d!1711816 d!1711294)))

(assert (=> bs!1235758 (= lambda!272476 lambda!272372)))

(declare-fun bs!1235759 () Bool)

(assert (= bs!1235759 (and d!1711816 d!1711376)))

(assert (=> bs!1235759 (= lambda!272476 lambda!272408)))

(declare-fun bs!1235760 () Bool)

(assert (= bs!1235760 (and d!1711816 d!1711324)))

(assert (=> bs!1235760 (= lambda!272476 lambda!272381)))

(declare-fun bs!1235761 () Bool)

(assert (= bs!1235761 (and d!1711816 d!1711356)))

(assert (=> bs!1235761 (= lambda!272476 lambda!272388)))

(declare-fun bs!1235762 () Bool)

(assert (= bs!1235762 (and d!1711816 d!1711786)))

(assert (=> bs!1235762 (= lambda!272476 lambda!272474)))

(declare-fun bs!1235763 () Bool)

(assert (= bs!1235763 (and d!1711816 b!5330869)))

(assert (=> bs!1235763 (not (= lambda!272476 lambda!272452))))

(declare-fun bs!1235764 () Bool)

(assert (= bs!1235764 (and d!1711816 d!1711714)))

(assert (=> bs!1235764 (= lambda!272476 lambda!272467)))

(declare-fun bs!1235765 () Bool)

(assert (= bs!1235765 (and d!1711816 d!1711374)))

(assert (=> bs!1235765 (= lambda!272476 lambda!272405)))

(declare-fun bs!1235766 () Bool)

(assert (= bs!1235766 (and d!1711816 b!5330871)))

(assert (=> bs!1235766 (not (= lambda!272476 lambda!272453))))

(declare-fun bs!1235767 () Bool)

(assert (= bs!1235767 (and d!1711816 d!1711346)))

(assert (=> bs!1235767 (= lambda!272476 lambda!272384)))

(declare-fun b!5331183 () Bool)

(declare-fun e!3311252 () Bool)

(assert (=> b!5331183 (= e!3311252 (isEmpty!33135 (t!374506 (t!374506 (unfocusZipperList!439 zl!343)))))))

(declare-fun e!3311255 () Bool)

(assert (=> d!1711816 e!3311255))

(declare-fun res!2261250 () Bool)

(assert (=> d!1711816 (=> (not res!2261250) (not e!3311255))))

(declare-fun lt!2174592 () Regex!14997)

(assert (=> d!1711816 (= res!2261250 (validRegex!6733 lt!2174592))))

(declare-fun e!3311250 () Regex!14997)

(assert (=> d!1711816 (= lt!2174592 e!3311250)))

(declare-fun c!927201 () Bool)

(assert (=> d!1711816 (= c!927201 e!3311252)))

(declare-fun res!2261249 () Bool)

(assert (=> d!1711816 (=> (not res!2261249) (not e!3311252))))

(assert (=> d!1711816 (= res!2261249 ((_ is Cons!61167) (t!374506 (unfocusZipperList!439 zl!343))))))

(assert (=> d!1711816 (forall!14415 (t!374506 (unfocusZipperList!439 zl!343)) lambda!272476)))

(assert (=> d!1711816 (= (generalisedUnion!926 (t!374506 (unfocusZipperList!439 zl!343))) lt!2174592)))

(declare-fun b!5331184 () Bool)

(declare-fun e!3311254 () Bool)

(assert (=> b!5331184 (= e!3311255 e!3311254)))

(declare-fun c!927203 () Bool)

(assert (=> b!5331184 (= c!927203 (isEmpty!33135 (t!374506 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5331185 () Bool)

(declare-fun e!3311253 () Regex!14997)

(assert (=> b!5331185 (= e!3311253 EmptyLang!14997)))

(declare-fun b!5331186 () Bool)

(declare-fun e!3311251 () Bool)

(assert (=> b!5331186 (= e!3311251 (isUnion!329 lt!2174592))))

(declare-fun b!5331187 () Bool)

(assert (=> b!5331187 (= e!3311254 e!3311251)))

(declare-fun c!927200 () Bool)

(assert (=> b!5331187 (= c!927200 (isEmpty!33135 (tail!10524 (t!374506 (unfocusZipperList!439 zl!343)))))))

(declare-fun b!5331188 () Bool)

(assert (=> b!5331188 (= e!3311250 (h!67615 (t!374506 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5331189 () Bool)

(assert (=> b!5331189 (= e!3311250 e!3311253)))

(declare-fun c!927202 () Bool)

(assert (=> b!5331189 (= c!927202 ((_ is Cons!61167) (t!374506 (unfocusZipperList!439 zl!343))))))

(declare-fun b!5331190 () Bool)

(assert (=> b!5331190 (= e!3311253 (Union!14997 (h!67615 (t!374506 (unfocusZipperList!439 zl!343))) (generalisedUnion!926 (t!374506 (t!374506 (unfocusZipperList!439 zl!343))))))))

(declare-fun b!5331191 () Bool)

(assert (=> b!5331191 (= e!3311251 (= lt!2174592 (head!11427 (t!374506 (unfocusZipperList!439 zl!343)))))))

(declare-fun b!5331192 () Bool)

(assert (=> b!5331192 (= e!3311254 (isEmptyLang!897 lt!2174592))))

(assert (= (and d!1711816 res!2261249) b!5331183))

(assert (= (and d!1711816 c!927201) b!5331188))

(assert (= (and d!1711816 (not c!927201)) b!5331189))

(assert (= (and b!5331189 c!927202) b!5331190))

(assert (= (and b!5331189 (not c!927202)) b!5331185))

(assert (= (and d!1711816 res!2261250) b!5331184))

(assert (= (and b!5331184 c!927203) b!5331192))

(assert (= (and b!5331184 (not c!927203)) b!5331187))

(assert (= (and b!5331187 c!927200) b!5331191))

(assert (= (and b!5331187 (not c!927200)) b!5331186))

(declare-fun m!6364702 () Bool)

(assert (=> b!5331187 m!6364702))

(assert (=> b!5331187 m!6364702))

(declare-fun m!6364706 () Bool)

(assert (=> b!5331187 m!6364706))

(declare-fun m!6364710 () Bool)

(assert (=> b!5331183 m!6364710))

(declare-fun m!6364712 () Bool)

(assert (=> b!5331192 m!6364712))

(declare-fun m!6364714 () Bool)

(assert (=> b!5331191 m!6364714))

(declare-fun m!6364716 () Bool)

(assert (=> b!5331186 m!6364716))

(declare-fun m!6364718 () Bool)

(assert (=> b!5331190 m!6364718))

(declare-fun m!6364720 () Bool)

(assert (=> d!1711816 m!6364720))

(declare-fun m!6364722 () Bool)

(assert (=> d!1711816 m!6364722))

(assert (=> b!5331184 m!6363710))

(assert (=> b!5330237 d!1711816))

(assert (=> d!1711300 d!1711312))

(declare-fun d!1711820 () Bool)

(assert (=> d!1711820 (= (flatMap!724 z!1189 lambda!272302) (dynLambda!24185 lambda!272302 (h!67616 zl!343)))))

(assert (=> d!1711820 true))

(declare-fun _$13!1914 () Unit!153506)

(assert (=> d!1711820 (= (choose!39914 z!1189 (h!67616 zl!343) lambda!272302) _$13!1914)))

(declare-fun b_lambda!205015 () Bool)

(assert (=> (not b_lambda!205015) (not d!1711820)))

(declare-fun bs!1235768 () Bool)

(assert (= bs!1235768 d!1711820))

(assert (=> bs!1235768 m!6362940))

(assert (=> bs!1235768 m!6363484))

(assert (=> d!1711300 d!1711820))

(assert (=> bm!380816 d!1711606))

(declare-fun b!5331201 () Bool)

(declare-fun e!3311266 () (InoxSet Context!8762))

(declare-fun call!381004 () (InoxSet Context!8762))

(assert (=> b!5331201 (= e!3311266 call!381004)))

(declare-fun bm!380998 () Bool)

(declare-fun call!381005 () (InoxSet Context!8762))

(declare-fun call!381003 () (InoxSet Context!8762))

(assert (=> bm!380998 (= call!381005 call!381003)))

(declare-fun b!5331202 () Bool)

(declare-fun e!3311267 () (InoxSet Context!8762))

(assert (=> b!5331202 (= e!3311267 call!381004)))

(declare-fun c!927205 () Bool)

(declare-fun bm!380999 () Bool)

(declare-fun c!927208 () Bool)

(declare-fun c!927207 () Bool)

(declare-fun call!381006 () List!61291)

(assert (=> bm!380999 (= call!381003 (derivationStepZipperDown!445 (ite c!927205 (regTwo!30507 (h!67615 (exprs!4881 lt!2174316))) (ite c!927207 (regTwo!30506 (h!67615 (exprs!4881 lt!2174316))) (ite c!927208 (regOne!30506 (h!67615 (exprs!4881 lt!2174316))) (reg!15326 (h!67615 (exprs!4881 lt!2174316)))))) (ite (or c!927205 c!927207) (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (Context!8763 call!381006)) (h!67614 s!2326)))))

(declare-fun b!5331203 () Bool)

(declare-fun e!3311269 () Bool)

(assert (=> b!5331203 (= e!3311269 (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 lt!2174316)))))))

(declare-fun b!5331204 () Bool)

(assert (=> b!5331204 (= c!927207 e!3311269)))

(declare-fun res!2261259 () Bool)

(assert (=> b!5331204 (=> (not res!2261259) (not e!3311269))))

(assert (=> b!5331204 (= res!2261259 ((_ is Concat!23842) (h!67615 (exprs!4881 lt!2174316))))))

(declare-fun e!3311268 () (InoxSet Context!8762))

(declare-fun e!3311265 () (InoxSet Context!8762))

(assert (=> b!5331204 (= e!3311268 e!3311265)))

(declare-fun b!5331205 () Bool)

(assert (=> b!5331205 (= e!3311266 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!381000 () Bool)

(assert (=> bm!381000 (= call!381004 call!381005)))

(declare-fun call!381008 () (InoxSet Context!8762))

(declare-fun call!381007 () List!61291)

(declare-fun bm!381001 () Bool)

(assert (=> bm!381001 (= call!381008 (derivationStepZipperDown!445 (ite c!927205 (regOne!30507 (h!67615 (exprs!4881 lt!2174316))) (regOne!30506 (h!67615 (exprs!4881 lt!2174316)))) (ite c!927205 (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (Context!8763 call!381007)) (h!67614 s!2326)))))

(declare-fun b!5331206 () Bool)

(assert (=> b!5331206 (= e!3311265 ((_ map or) call!381008 call!381005))))

(declare-fun bm!381002 () Bool)

(assert (=> bm!381002 (= call!381007 ($colon$colon!1404 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316)))) (ite (or c!927207 c!927208) (regTwo!30506 (h!67615 (exprs!4881 lt!2174316))) (h!67615 (exprs!4881 lt!2174316)))))))

(declare-fun b!5331208 () Bool)

(declare-fun c!927206 () Bool)

(assert (=> b!5331208 (= c!927206 ((_ is Star!14997) (h!67615 (exprs!4881 lt!2174316))))))

(assert (=> b!5331208 (= e!3311267 e!3311266)))

(declare-fun b!5331210 () Bool)

(declare-fun e!3311262 () (InoxSet Context!8762))

(assert (=> b!5331210 (= e!3311262 e!3311268)))

(assert (=> b!5331210 (= c!927205 ((_ is Union!14997) (h!67615 (exprs!4881 lt!2174316))))))

(declare-fun b!5331212 () Bool)

(assert (=> b!5331212 (= e!3311262 (store ((as const (Array Context!8762 Bool)) false) (Context!8763 (t!374506 (exprs!4881 lt!2174316))) true))))

(declare-fun b!5331213 () Bool)

(assert (=> b!5331213 (= e!3311265 e!3311267)))

(assert (=> b!5331213 (= c!927208 ((_ is Concat!23842) (h!67615 (exprs!4881 lt!2174316))))))

(declare-fun bm!381003 () Bool)

(assert (=> bm!381003 (= call!381006 call!381007)))

(declare-fun b!5331211 () Bool)

(assert (=> b!5331211 (= e!3311268 ((_ map or) call!381008 call!381003))))

(declare-fun d!1711822 () Bool)

(declare-fun c!927204 () Bool)

(assert (=> d!1711822 (= c!927204 (and ((_ is ElementMatch!14997) (h!67615 (exprs!4881 lt!2174316))) (= (c!926649 (h!67615 (exprs!4881 lt!2174316))) (h!67614 s!2326))))))

(assert (=> d!1711822 (= (derivationStepZipperDown!445 (h!67615 (exprs!4881 lt!2174316)) (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (h!67614 s!2326)) e!3311262)))

(assert (= (and d!1711822 c!927204) b!5331212))

(assert (= (and d!1711822 (not c!927204)) b!5331210))

(assert (= (and b!5331210 c!927205) b!5331211))

(assert (= (and b!5331210 (not c!927205)) b!5331204))

(assert (= (and b!5331204 res!2261259) b!5331203))

(assert (= (and b!5331204 c!927207) b!5331206))

(assert (= (and b!5331204 (not c!927207)) b!5331213))

(assert (= (and b!5331213 c!927208) b!5331202))

(assert (= (and b!5331213 (not c!927208)) b!5331208))

(assert (= (and b!5331208 c!927206) b!5331201))

(assert (= (and b!5331208 (not c!927206)) b!5331205))

(assert (= (or b!5331202 b!5331201) bm!381003))

(assert (= (or b!5331202 b!5331201) bm!381000))

(assert (= (or b!5331206 bm!381003) bm!381002))

(assert (= (or b!5331206 bm!381000) bm!380998))

(assert (= (or b!5331211 bm!380998) bm!380999))

(assert (= (or b!5331211 b!5331206) bm!381001))

(declare-fun m!6364724 () Bool)

(assert (=> b!5331212 m!6364724))

(declare-fun m!6364726 () Bool)

(assert (=> b!5331203 m!6364726))

(declare-fun m!6364728 () Bool)

(assert (=> bm!381001 m!6364728))

(declare-fun m!6364730 () Bool)

(assert (=> bm!381002 m!6364730))

(declare-fun m!6364732 () Bool)

(assert (=> bm!380999 m!6364732))

(assert (=> bm!380785 d!1711822))

(declare-fun bs!1235769 () Bool)

(declare-fun d!1711824 () Bool)

(assert (= bs!1235769 (and d!1711824 b!5330207)))

(declare-fun lambda!272477 () Int)

(assert (=> bs!1235769 (not (= lambda!272477 lambda!272401))))

(declare-fun bs!1235770 () Bool)

(assert (= bs!1235770 (and d!1711824 d!1711698)))

(assert (=> bs!1235770 (= lambda!272477 lambda!272464)))

(declare-fun bs!1235771 () Bool)

(assert (= bs!1235771 (and d!1711824 b!5330204)))

(assert (=> bs!1235771 (not (= lambda!272477 lambda!272399))))

(declare-fun bs!1235772 () Bool)

(assert (= bs!1235772 (and d!1711824 b!5330896)))

(assert (=> bs!1235772 (not (= lambda!272477 lambda!272456))))

(declare-fun bs!1235773 () Bool)

(assert (= bs!1235773 (and d!1711824 b!5330209)))

(assert (=> bs!1235773 (not (= lambda!272477 lambda!272402))))

(declare-fun bs!1235774 () Bool)

(assert (= bs!1235774 (and d!1711824 b!5330202)))

(assert (=> bs!1235774 (not (= lambda!272477 lambda!272398))))

(declare-fun bs!1235775 () Bool)

(assert (= bs!1235775 (and d!1711824 d!1711676)))

(assert (=> bs!1235775 (not (= lambda!272477 lambda!272460))))

(declare-fun bs!1235776 () Bool)

(assert (= bs!1235776 (and d!1711824 b!5330894)))

(assert (=> bs!1235776 (not (= lambda!272477 lambda!272455))))

(assert (=> d!1711824 (= (nullableZipper!1354 lt!2174302) (exists!2015 lt!2174302 lambda!272477))))

(declare-fun bs!1235778 () Bool)

(assert (= bs!1235778 d!1711824))

(declare-fun m!6364742 () Bool)

(assert (=> bs!1235778 m!6364742))

(assert (=> b!5329659 d!1711824))

(declare-fun b!5331219 () Bool)

(declare-fun e!3311279 () (InoxSet Context!8762))

(declare-fun call!381010 () (InoxSet Context!8762))

(assert (=> b!5331219 (= e!3311279 call!381010)))

(declare-fun bm!381004 () Bool)

(declare-fun call!381011 () (InoxSet Context!8762))

(declare-fun call!381009 () (InoxSet Context!8762))

(assert (=> bm!381004 (= call!381011 call!381009)))

(declare-fun b!5331220 () Bool)

(declare-fun e!3311280 () (InoxSet Context!8762))

(assert (=> b!5331220 (= e!3311280 call!381010)))

(declare-fun c!927213 () Bool)

(declare-fun bm!381005 () Bool)

(declare-fun c!927212 () Bool)

(declare-fun c!927210 () Bool)

(declare-fun call!381012 () List!61291)

(assert (=> bm!381005 (= call!381009 (derivationStepZipperDown!445 (ite c!927210 (regTwo!30507 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (ite c!927212 (regTwo!30506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (ite c!927213 (regOne!30506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (reg!15326 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))) (ite (or c!927210 c!927212) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (Context!8763 call!381012)) (h!67614 s!2326)))))

(declare-fun b!5331221 () Bool)

(declare-fun e!3311282 () Bool)

(assert (=> b!5331221 (= e!3311282 (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))))

(declare-fun b!5331222 () Bool)

(assert (=> b!5331222 (= c!927212 e!3311282)))

(declare-fun res!2261264 () Bool)

(assert (=> b!5331222 (=> (not res!2261264) (not e!3311282))))

(assert (=> b!5331222 (= res!2261264 ((_ is Concat!23842) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun e!3311281 () (InoxSet Context!8762))

(declare-fun e!3311278 () (InoxSet Context!8762))

(assert (=> b!5331222 (= e!3311281 e!3311278)))

(declare-fun b!5331223 () Bool)

(assert (=> b!5331223 (= e!3311279 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!381006 () Bool)

(assert (=> bm!381006 (= call!381010 call!381011)))

(declare-fun call!381013 () List!61291)

(declare-fun bm!381007 () Bool)

(declare-fun call!381014 () (InoxSet Context!8762))

(assert (=> bm!381007 (= call!381014 (derivationStepZipperDown!445 (ite c!927210 (regOne!30507 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (regOne!30506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))) (ite c!927210 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (Context!8763 call!381013)) (h!67614 s!2326)))))

(declare-fun b!5331224 () Bool)

(assert (=> b!5331224 (= e!3311278 ((_ map or) call!381014 call!381011))))

(declare-fun bm!381008 () Bool)

(assert (=> bm!381008 (= call!381013 ($colon$colon!1404 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))) (ite (or c!927212 c!927213) (regTwo!30506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))))

(declare-fun b!5331225 () Bool)

(declare-fun c!927211 () Bool)

(assert (=> b!5331225 (= c!927211 ((_ is Star!14997) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(assert (=> b!5331225 (= e!3311280 e!3311279)))

(declare-fun b!5331226 () Bool)

(declare-fun e!3311277 () (InoxSet Context!8762))

(assert (=> b!5331226 (= e!3311277 e!3311281)))

(assert (=> b!5331226 (= c!927210 ((_ is Union!14997) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun b!5331228 () Bool)

(assert (=> b!5331228 (= e!3311277 (store ((as const (Array Context!8762 Bool)) false) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) true))))

(declare-fun b!5331229 () Bool)

(assert (=> b!5331229 (= e!3311278 e!3311280)))

(assert (=> b!5331229 (= c!927213 ((_ is Concat!23842) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun bm!381009 () Bool)

(assert (=> bm!381009 (= call!381012 call!381013)))

(declare-fun b!5331227 () Bool)

(assert (=> b!5331227 (= e!3311281 ((_ map or) call!381014 call!381009))))

(declare-fun d!1711832 () Bool)

(declare-fun c!927209 () Bool)

(assert (=> d!1711832 (= c!927209 (and ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (= (c!926649 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326))))))

(assert (=> d!1711832 (= (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326)) e!3311277)))

(assert (= (and d!1711832 c!927209) b!5331228))

(assert (= (and d!1711832 (not c!927209)) b!5331226))

(assert (= (and b!5331226 c!927210) b!5331227))

(assert (= (and b!5331226 (not c!927210)) b!5331222))

(assert (= (and b!5331222 res!2261264) b!5331221))

(assert (= (and b!5331222 c!927212) b!5331224))

(assert (= (and b!5331222 (not c!927212)) b!5331229))

(assert (= (and b!5331229 c!927213) b!5331220))

(assert (= (and b!5331229 (not c!927213)) b!5331225))

(assert (= (and b!5331225 c!927211) b!5331219))

(assert (= (and b!5331225 (not c!927211)) b!5331223))

(assert (= (or b!5331220 b!5331219) bm!381009))

(assert (= (or b!5331220 b!5331219) bm!381006))

(assert (= (or b!5331224 bm!381009) bm!381008))

(assert (= (or b!5331224 bm!381006) bm!381004))

(assert (= (or b!5331227 bm!381004) bm!381005))

(assert (= (or b!5331227 b!5331224) bm!381007))

(declare-fun m!6364748 () Bool)

(assert (=> b!5331228 m!6364748))

(declare-fun m!6364750 () Bool)

(assert (=> b!5331221 m!6364750))

(declare-fun m!6364752 () Bool)

(assert (=> bm!381007 m!6364752))

(declare-fun m!6364754 () Bool)

(assert (=> bm!381008 m!6364754))

(declare-fun m!6364760 () Bool)

(assert (=> bm!381005 m!6364760))

(assert (=> bm!380784 d!1711832))

(assert (=> b!5330095 d!1711540))

(assert (=> b!5330095 d!1711542))

(declare-fun bs!1235795 () Bool)

(declare-fun b!5331240 () Bool)

(assert (= bs!1235795 (and b!5331240 d!1711336)))

(declare-fun lambda!272480 () Int)

(assert (=> bs!1235795 (not (= lambda!272480 lambda!272382))))

(declare-fun bs!1235797 () Bool)

(assert (= bs!1235797 (and b!5331240 b!5329333)))

(assert (=> bs!1235797 (not (= lambda!272480 lambda!272301))))

(declare-fun bs!1235799 () Bool)

(assert (= bs!1235799 (and b!5331240 b!5330177)))

(assert (=> bs!1235799 (= (and (= (reg!15326 (regOne!30507 lt!2174304)) (reg!15326 lt!2174304)) (= (regOne!30507 lt!2174304) lt!2174304)) (= lambda!272480 lambda!272389))))

(declare-fun bs!1235801 () Bool)

(assert (= bs!1235801 (and b!5331240 b!5330147)))

(assert (=> bs!1235801 (= (and (= (reg!15326 (regOne!30507 lt!2174304)) (reg!15326 lt!2174318)) (= (regOne!30507 lt!2174304) lt!2174318)) (= lambda!272480 lambda!272385))))

(assert (=> bs!1235797 (not (= lambda!272480 lambda!272300))))

(declare-fun bs!1235805 () Bool)

(assert (= bs!1235805 (and b!5331240 b!5330051)))

(assert (=> bs!1235805 (= (and (= (reg!15326 (regOne!30507 lt!2174304)) (reg!15326 r!7292)) (= (regOne!30507 lt!2174304) r!7292)) (= lambda!272480 lambda!272377))))

(declare-fun bs!1235807 () Bool)

(assert (= bs!1235807 (and b!5331240 b!5330178)))

(assert (=> bs!1235807 (not (= lambda!272480 lambda!272390))))

(declare-fun bs!1235809 () Bool)

(assert (= bs!1235809 (and b!5331240 d!1711250)))

(assert (=> bs!1235809 (not (= lambda!272480 lambda!272362))))

(declare-fun bs!1235811 () Bool)

(assert (= bs!1235811 (and b!5331240 d!1711262)))

(assert (=> bs!1235811 (not (= lambda!272480 lambda!272369))))

(declare-fun bs!1235812 () Bool)

(assert (= bs!1235812 (and b!5331240 b!5330148)))

(assert (=> bs!1235812 (not (= lambda!272480 lambda!272386))))

(assert (=> bs!1235811 (not (= lambda!272480 lambda!272368))))

(declare-fun bs!1235815 () Bool)

(assert (= bs!1235815 (and b!5331240 d!1711350)))

(assert (=> bs!1235815 (not (= lambda!272480 lambda!272387))))

(assert (=> bs!1235795 (not (= lambda!272480 lambda!272383))))

(declare-fun bs!1235818 () Bool)

(assert (= bs!1235818 (and b!5331240 d!1711564)))

(assert (=> bs!1235818 (not (= lambda!272480 lambda!272438))))

(declare-fun bs!1235820 () Bool)

(assert (= bs!1235820 (and b!5331240 b!5329319)))

(assert (=> bs!1235820 (not (= lambda!272480 lambda!272304))))

(assert (=> bs!1235820 (not (= lambda!272480 lambda!272303))))

(declare-fun bs!1235822 () Bool)

(assert (= bs!1235822 (and b!5331240 b!5330052)))

(assert (=> bs!1235822 (not (= lambda!272480 lambda!272378))))

(assert (=> b!5331240 true))

(assert (=> b!5331240 true))

(declare-fun bs!1235827 () Bool)

(declare-fun b!5331241 () Bool)

(assert (= bs!1235827 (and b!5331241 d!1711336)))

(declare-fun lambda!272481 () Int)

(assert (=> bs!1235827 (not (= lambda!272481 lambda!272382))))

(declare-fun bs!1235828 () Bool)

(assert (= bs!1235828 (and b!5331241 b!5329333)))

(assert (=> bs!1235828 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272481 lambda!272301))))

(declare-fun bs!1235829 () Bool)

(assert (= bs!1235829 (and b!5331241 b!5330177)))

(assert (=> bs!1235829 (not (= lambda!272481 lambda!272389))))

(declare-fun bs!1235831 () Bool)

(assert (= bs!1235831 (and b!5331241 b!5330147)))

(assert (=> bs!1235831 (not (= lambda!272481 lambda!272385))))

(assert (=> bs!1235828 (not (= lambda!272481 lambda!272300))))

(declare-fun bs!1235832 () Bool)

(assert (= bs!1235832 (and b!5331241 b!5330051)))

(assert (=> bs!1235832 (not (= lambda!272481 lambda!272377))))

(declare-fun bs!1235833 () Bool)

(assert (= bs!1235833 (and b!5331241 b!5330178)))

(assert (=> bs!1235833 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regOne!30507 lt!2174304)) (regTwo!30506 lt!2174304))) (= lambda!272481 lambda!272390))))

(declare-fun bs!1235834 () Bool)

(assert (= bs!1235834 (and b!5331241 d!1711250)))

(assert (=> bs!1235834 (not (= lambda!272481 lambda!272362))))

(declare-fun bs!1235835 () Bool)

(assert (= bs!1235835 (and b!5331241 d!1711262)))

(assert (=> bs!1235835 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272481 lambda!272369))))

(declare-fun bs!1235836 () Bool)

(assert (= bs!1235836 (and b!5331241 b!5331240)))

(assert (=> bs!1235836 (not (= lambda!272481 lambda!272480))))

(declare-fun bs!1235837 () Bool)

(assert (= bs!1235837 (and b!5331241 b!5330148)))

(assert (=> bs!1235837 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regOne!30507 lt!2174304)) (regTwo!30506 lt!2174318))) (= lambda!272481 lambda!272386))))

(assert (=> bs!1235835 (not (= lambda!272481 lambda!272368))))

(declare-fun bs!1235838 () Bool)

(assert (= bs!1235838 (and b!5331241 d!1711350)))

(assert (=> bs!1235838 (not (= lambda!272481 lambda!272387))))

(assert (=> bs!1235827 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174304)) lt!2174318)) (= lambda!272481 lambda!272383))))

(declare-fun bs!1235841 () Bool)

(assert (= bs!1235841 (and b!5331241 d!1711564)))

(assert (=> bs!1235841 (not (= lambda!272481 lambda!272438))))

(declare-fun bs!1235843 () Bool)

(assert (= bs!1235843 (and b!5331241 b!5329319)))

(assert (=> bs!1235843 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174304)) lt!2174318)) (= lambda!272481 lambda!272304))))

(assert (=> bs!1235843 (not (= lambda!272481 lambda!272303))))

(declare-fun bs!1235846 () Bool)

(assert (= bs!1235846 (and b!5331241 b!5330052)))

(assert (=> bs!1235846 (= (and (= (regOne!30506 (regOne!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272481 lambda!272378))))

(assert (=> b!5331241 true))

(assert (=> b!5331241 true))

(declare-fun d!1711842 () Bool)

(declare-fun c!927215 () Bool)

(assert (=> d!1711842 (= c!927215 ((_ is EmptyExpr!14997) (regOne!30507 lt!2174304)))))

(declare-fun e!3311285 () Bool)

(assert (=> d!1711842 (= (matchRSpec!2100 (regOne!30507 lt!2174304) s!2326) e!3311285)))

(declare-fun b!5331232 () Bool)

(declare-fun res!2261269 () Bool)

(declare-fun e!3311286 () Bool)

(assert (=> b!5331232 (=> res!2261269 e!3311286)))

(declare-fun call!381015 () Bool)

(assert (=> b!5331232 (= res!2261269 call!381015)))

(declare-fun e!3311289 () Bool)

(assert (=> b!5331232 (= e!3311289 e!3311286)))

(declare-fun b!5331233 () Bool)

(declare-fun e!3311288 () Bool)

(assert (=> b!5331233 (= e!3311288 (matchRSpec!2100 (regTwo!30507 (regOne!30507 lt!2174304)) s!2326))))

(declare-fun b!5331234 () Bool)

(declare-fun c!927217 () Bool)

(assert (=> b!5331234 (= c!927217 ((_ is ElementMatch!14997) (regOne!30507 lt!2174304)))))

(declare-fun e!3311291 () Bool)

(declare-fun e!3311290 () Bool)

(assert (=> b!5331234 (= e!3311291 e!3311290)))

(declare-fun b!5331235 () Bool)

(assert (=> b!5331235 (= e!3311285 call!381015)))

(declare-fun bm!381010 () Bool)

(declare-fun c!927216 () Bool)

(declare-fun call!381016 () Bool)

(assert (=> bm!381010 (= call!381016 (Exists!2178 (ite c!927216 lambda!272480 lambda!272481)))))

(declare-fun b!5331236 () Bool)

(declare-fun e!3311287 () Bool)

(assert (=> b!5331236 (= e!3311287 e!3311288)))

(declare-fun res!2261268 () Bool)

(assert (=> b!5331236 (= res!2261268 (matchRSpec!2100 (regOne!30507 (regOne!30507 lt!2174304)) s!2326))))

(assert (=> b!5331236 (=> res!2261268 e!3311288)))

(declare-fun b!5331237 () Bool)

(assert (=> b!5331237 (= e!3311287 e!3311289)))

(assert (=> b!5331237 (= c!927216 ((_ is Star!14997) (regOne!30507 lt!2174304)))))

(declare-fun bm!381011 () Bool)

(assert (=> bm!381011 (= call!381015 (isEmpty!33139 s!2326))))

(declare-fun b!5331238 () Bool)

(assert (=> b!5331238 (= e!3311285 e!3311291)))

(declare-fun res!2261267 () Bool)

(assert (=> b!5331238 (= res!2261267 (not ((_ is EmptyLang!14997) (regOne!30507 lt!2174304))))))

(assert (=> b!5331238 (=> (not res!2261267) (not e!3311291))))

(declare-fun b!5331239 () Bool)

(declare-fun c!927214 () Bool)

(assert (=> b!5331239 (= c!927214 ((_ is Union!14997) (regOne!30507 lt!2174304)))))

(assert (=> b!5331239 (= e!3311290 e!3311287)))

(assert (=> b!5331240 (= e!3311286 call!381016)))

(assert (=> b!5331241 (= e!3311289 call!381016)))

(declare-fun b!5331242 () Bool)

(assert (=> b!5331242 (= e!3311290 (= s!2326 (Cons!61166 (c!926649 (regOne!30507 lt!2174304)) Nil!61166)))))

(assert (= (and d!1711842 c!927215) b!5331235))

(assert (= (and d!1711842 (not c!927215)) b!5331238))

(assert (= (and b!5331238 res!2261267) b!5331234))

(assert (= (and b!5331234 c!927217) b!5331242))

(assert (= (and b!5331234 (not c!927217)) b!5331239))

(assert (= (and b!5331239 c!927214) b!5331236))

(assert (= (and b!5331239 (not c!927214)) b!5331237))

(assert (= (and b!5331236 (not res!2261268)) b!5331233))

(assert (= (and b!5331237 c!927216) b!5331232))

(assert (= (and b!5331237 (not c!927216)) b!5331241))

(assert (= (and b!5331232 (not res!2261269)) b!5331240))

(assert (= (or b!5331240 b!5331241) bm!381010))

(assert (= (or b!5331235 b!5331232) bm!381011))

(declare-fun m!6364766 () Bool)

(assert (=> b!5331233 m!6364766))

(declare-fun m!6364768 () Bool)

(assert (=> bm!381010 m!6364768))

(declare-fun m!6364770 () Bool)

(assert (=> b!5331236 m!6364770))

(assert (=> bm!381011 m!6363526))

(assert (=> b!5330173 d!1711842))

(assert (=> b!5330164 d!1711366))

(declare-fun b!5331254 () Bool)

(declare-fun e!3311299 () Bool)

(declare-fun lt!2174593 () Bool)

(assert (=> b!5331254 (= e!3311299 (not lt!2174593))))

(declare-fun b!5331255 () Bool)

(declare-fun res!2261275 () Bool)

(declare-fun e!3311301 () Bool)

(assert (=> b!5331255 (=> (not res!2261275) (not e!3311301))))

(declare-fun call!381019 () Bool)

(assert (=> b!5331255 (= res!2261275 (not call!381019))))

(declare-fun d!1711848 () Bool)

(declare-fun e!3311302 () Bool)

(assert (=> d!1711848 e!3311302))

(declare-fun c!927224 () Bool)

(assert (=> d!1711848 (= c!927224 ((_ is EmptyExpr!14997) (regTwo!30506 r!7292)))))

(declare-fun e!3311305 () Bool)

(assert (=> d!1711848 (= lt!2174593 e!3311305)))

(declare-fun c!927222 () Bool)

(assert (=> d!1711848 (= c!927222 (isEmpty!33139 s!2326))))

(assert (=> d!1711848 (validRegex!6733 (regTwo!30506 r!7292))))

(assert (=> d!1711848 (= (matchR!7182 (regTwo!30506 r!7292) s!2326) lt!2174593)))

(declare-fun b!5331256 () Bool)

(assert (=> b!5331256 (= e!3311302 e!3311299)))

(declare-fun c!927223 () Bool)

(assert (=> b!5331256 (= c!927223 ((_ is EmptyLang!14997) (regTwo!30506 r!7292)))))

(declare-fun b!5331257 () Bool)

(assert (=> b!5331257 (= e!3311305 (matchR!7182 (derivativeStep!4175 (regTwo!30506 r!7292) (head!11426 s!2326)) (tail!10523 s!2326)))))

(declare-fun b!5331258 () Bool)

(declare-fun res!2261278 () Bool)

(declare-fun e!3311303 () Bool)

(assert (=> b!5331258 (=> res!2261278 e!3311303)))

(assert (=> b!5331258 (= res!2261278 (not ((_ is ElementMatch!14997) (regTwo!30506 r!7292))))))

(assert (=> b!5331258 (= e!3311299 e!3311303)))

(declare-fun b!5331259 () Bool)

(declare-fun res!2261276 () Bool)

(declare-fun e!3311300 () Bool)

(assert (=> b!5331259 (=> res!2261276 e!3311300)))

(assert (=> b!5331259 (= res!2261276 (not (isEmpty!33139 (tail!10523 s!2326))))))

(declare-fun b!5331260 () Bool)

(assert (=> b!5331260 (= e!3311300 (not (= (head!11426 s!2326) (c!926649 (regTwo!30506 r!7292)))))))

(declare-fun b!5331261 () Bool)

(assert (=> b!5331261 (= e!3311302 (= lt!2174593 call!381019))))

(declare-fun b!5331262 () Bool)

(declare-fun res!2261279 () Bool)

(assert (=> b!5331262 (=> res!2261279 e!3311303)))

(assert (=> b!5331262 (= res!2261279 e!3311301)))

(declare-fun res!2261277 () Bool)

(assert (=> b!5331262 (=> (not res!2261277) (not e!3311301))))

(assert (=> b!5331262 (= res!2261277 lt!2174593)))

(declare-fun b!5331263 () Bool)

(declare-fun e!3311304 () Bool)

(assert (=> b!5331263 (= e!3311304 e!3311300)))

(declare-fun res!2261280 () Bool)

(assert (=> b!5331263 (=> res!2261280 e!3311300)))

(assert (=> b!5331263 (= res!2261280 call!381019)))

(declare-fun b!5331264 () Bool)

(assert (=> b!5331264 (= e!3311303 e!3311304)))

(declare-fun res!2261274 () Bool)

(assert (=> b!5331264 (=> (not res!2261274) (not e!3311304))))

(assert (=> b!5331264 (= res!2261274 (not lt!2174593))))

(declare-fun b!5331265 () Bool)

(assert (=> b!5331265 (= e!3311301 (= (head!11426 s!2326) (c!926649 (regTwo!30506 r!7292))))))

(declare-fun b!5331266 () Bool)

(assert (=> b!5331266 (= e!3311305 (nullable!5166 (regTwo!30506 r!7292)))))

(declare-fun b!5331267 () Bool)

(declare-fun res!2261273 () Bool)

(assert (=> b!5331267 (=> (not res!2261273) (not e!3311301))))

(assert (=> b!5331267 (= res!2261273 (isEmpty!33139 (tail!10523 s!2326)))))

(declare-fun bm!381014 () Bool)

(assert (=> bm!381014 (= call!381019 (isEmpty!33139 s!2326))))

(assert (= (and d!1711848 c!927222) b!5331266))

(assert (= (and d!1711848 (not c!927222)) b!5331257))

(assert (= (and d!1711848 c!927224) b!5331261))

(assert (= (and d!1711848 (not c!927224)) b!5331256))

(assert (= (and b!5331256 c!927223) b!5331254))

(assert (= (and b!5331256 (not c!927223)) b!5331258))

(assert (= (and b!5331258 (not res!2261278)) b!5331262))

(assert (= (and b!5331262 res!2261277) b!5331255))

(assert (= (and b!5331255 res!2261275) b!5331267))

(assert (= (and b!5331267 res!2261273) b!5331265))

(assert (= (and b!5331262 (not res!2261279)) b!5331264))

(assert (= (and b!5331264 res!2261274) b!5331263))

(assert (= (and b!5331263 (not res!2261280)) b!5331259))

(assert (= (and b!5331259 (not res!2261276)) b!5331260))

(assert (= (or b!5331261 b!5331255 b!5331263) bm!381014))

(assert (=> b!5331257 m!6363528))

(assert (=> b!5331257 m!6363528))

(declare-fun m!6364772 () Bool)

(assert (=> b!5331257 m!6364772))

(assert (=> b!5331257 m!6363532))

(assert (=> b!5331257 m!6364772))

(assert (=> b!5331257 m!6363532))

(declare-fun m!6364774 () Bool)

(assert (=> b!5331257 m!6364774))

(assert (=> d!1711848 m!6363526))

(assert (=> d!1711848 m!6364360))

(assert (=> b!5331259 m!6363532))

(assert (=> b!5331259 m!6363532))

(assert (=> b!5331259 m!6363536))

(assert (=> bm!381014 m!6363526))

(assert (=> b!5331267 m!6363532))

(assert (=> b!5331267 m!6363532))

(assert (=> b!5331267 m!6363536))

(assert (=> b!5331260 m!6363528))

(assert (=> b!5331266 m!6364364))

(assert (=> b!5331265 m!6363528))

(assert (=> b!5329776 d!1711848))

(declare-fun b!5331268 () Bool)

(declare-fun e!3311306 () Bool)

(assert (=> b!5331268 (= e!3311306 (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun bm!381015 () Bool)

(declare-fun call!381020 () (InoxSet Context!8762))

(assert (=> bm!381015 (= call!381020 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))))) (h!67614 s!2326)))))

(declare-fun b!5331269 () Bool)

(declare-fun e!3311308 () (InoxSet Context!8762))

(declare-fun e!3311307 () (InoxSet Context!8762))

(assert (=> b!5331269 (= e!3311308 e!3311307)))

(declare-fun c!927225 () Bool)

(assert (=> b!5331269 (= c!927225 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331270 () Bool)

(assert (=> b!5331270 (= e!3311307 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5331271 () Bool)

(assert (=> b!5331271 (= e!3311307 call!381020)))

(declare-fun d!1711850 () Bool)

(declare-fun c!927226 () Bool)

(assert (=> d!1711850 (= c!927226 e!3311306)))

(declare-fun res!2261281 () Bool)

(assert (=> d!1711850 (=> (not res!2261281) (not e!3311306))))

(assert (=> d!1711850 (= res!2261281 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(assert (=> d!1711850 (= (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326)) e!3311308)))

(declare-fun b!5331272 () Bool)

(assert (=> b!5331272 (= e!3311308 ((_ map or) call!381020 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))))) (h!67614 s!2326))))))

(assert (= (and d!1711850 res!2261281) b!5331268))

(assert (= (and d!1711850 c!927226) b!5331272))

(assert (= (and d!1711850 (not c!927226)) b!5331269))

(assert (= (and b!5331269 c!927225) b!5331271))

(assert (= (and b!5331269 (not c!927225)) b!5331270))

(assert (= (or b!5331272 b!5331271) bm!381015))

(declare-fun m!6364776 () Bool)

(assert (=> b!5331268 m!6364776))

(declare-fun m!6364778 () Bool)

(assert (=> bm!381015 m!6364778))

(declare-fun m!6364780 () Bool)

(assert (=> b!5331272 m!6364780))

(assert (=> b!5329977 d!1711850))

(assert (=> b!5330186 d!1711520))

(declare-fun b!5331273 () Bool)

(declare-fun e!3311309 () Bool)

(assert (=> b!5331273 (= e!3311309 (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316)))))))))

(declare-fun bm!381016 () Bool)

(declare-fun call!381021 () (InoxSet Context!8762))

(assert (=> bm!381016 (= call!381021 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316)))))) (h!67614 s!2326)))))

(declare-fun b!5331274 () Bool)

(declare-fun e!3311311 () (InoxSet Context!8762))

(declare-fun e!3311310 () (InoxSet Context!8762))

(assert (=> b!5331274 (= e!3311311 e!3311310)))

(declare-fun c!927227 () Bool)

(assert (=> b!5331274 (= c!927227 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316))))))))

(declare-fun b!5331275 () Bool)

(assert (=> b!5331275 (= e!3311310 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5331276 () Bool)

(assert (=> b!5331276 (= e!3311310 call!381021)))

(declare-fun d!1711852 () Bool)

(declare-fun c!927228 () Bool)

(assert (=> d!1711852 (= c!927228 e!3311309)))

(declare-fun res!2261282 () Bool)

(assert (=> d!1711852 (=> (not res!2261282) (not e!3311309))))

(assert (=> d!1711852 (= res!2261282 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316))))))))

(assert (=> d!1711852 (= (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 lt!2174316))) (h!67614 s!2326)) e!3311311)))

(declare-fun b!5331277 () Bool)

(assert (=> b!5331277 (= e!3311311 ((_ map or) call!381021 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174316)))))) (h!67614 s!2326))))))

(assert (= (and d!1711852 res!2261282) b!5331273))

(assert (= (and d!1711852 c!927228) b!5331277))

(assert (= (and d!1711852 (not c!927228)) b!5331274))

(assert (= (and b!5331274 c!927227) b!5331276))

(assert (= (and b!5331274 (not c!927227)) b!5331275))

(assert (= (or b!5331277 b!5331276) bm!381016))

(declare-fun m!6364782 () Bool)

(assert (=> b!5331273 m!6364782))

(declare-fun m!6364784 () Bool)

(assert (=> bm!381016 m!6364784))

(declare-fun m!6364786 () Bool)

(assert (=> b!5331277 m!6364786))

(assert (=> b!5329972 d!1711852))

(declare-fun b!5331278 () Bool)

(declare-fun e!3311312 () Bool)

(assert (=> b!5331278 (= e!3311312 (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))))))

(declare-fun bm!381017 () Bool)

(declare-fun call!381022 () (InoxSet Context!8762))

(assert (=> bm!381017 (= call!381022 (derivationStepZipperDown!445 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))) (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))) (h!67614 s!2326)))))

(declare-fun b!5331279 () Bool)

(declare-fun e!3311314 () (InoxSet Context!8762))

(declare-fun e!3311313 () (InoxSet Context!8762))

(assert (=> b!5331279 (= e!3311314 e!3311313)))

(declare-fun c!927229 () Bool)

(assert (=> b!5331279 (= c!927229 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))))

(declare-fun b!5331280 () Bool)

(assert (=> b!5331280 (= e!3311313 ((as const (Array Context!8762 Bool)) false))))

(declare-fun b!5331281 () Bool)

(assert (=> b!5331281 (= e!3311313 call!381022)))

(declare-fun d!1711854 () Bool)

(declare-fun c!927230 () Bool)

(assert (=> d!1711854 (= c!927230 e!3311312)))

(declare-fun res!2261283 () Bool)

(assert (=> d!1711854 (=> (not res!2261283) (not e!3311312))))

(assert (=> d!1711854 (= res!2261283 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))))

(assert (=> d!1711854 (= (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326)) e!3311314)))

(declare-fun b!5331282 () Bool)

(assert (=> b!5331282 (= e!3311314 ((_ map or) call!381022 (derivationStepZipperUp!369 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343))))))))))) (h!67614 s!2326))))))

(assert (= (and d!1711854 res!2261283) b!5331278))

(assert (= (and d!1711854 c!927230) b!5331282))

(assert (= (and d!1711854 (not c!927230)) b!5331279))

(assert (= (and b!5331279 c!927229) b!5331281))

(assert (= (and b!5331279 (not c!927229)) b!5331280))

(assert (= (or b!5331282 b!5331281) bm!381017))

(declare-fun m!6364788 () Bool)

(assert (=> b!5331278 m!6364788))

(declare-fun m!6364790 () Bool)

(assert (=> bm!381017 m!6364790))

(declare-fun m!6364792 () Bool)

(assert (=> b!5331282 m!6364792))

(assert (=> b!5329967 d!1711854))

(declare-fun d!1711856 () Bool)

(declare-fun lt!2174594 () Int)

(assert (=> d!1711856 (>= lt!2174594 0)))

(declare-fun e!3311315 () Int)

(assert (=> d!1711856 (= lt!2174594 e!3311315)))

(declare-fun c!927231 () Bool)

(assert (=> d!1711856 (= c!927231 ((_ is Cons!61167) (exprs!4881 (h!67616 lt!2174315))))))

(assert (=> d!1711856 (= (contextDepthTotal!130 (h!67616 lt!2174315)) lt!2174594)))

(declare-fun b!5331283 () Bool)

(assert (=> b!5331283 (= e!3311315 (+ (regexDepthTotal!59 (h!67615 (exprs!4881 (h!67616 lt!2174315)))) (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 (h!67616 lt!2174315)))))))))

(declare-fun b!5331284 () Bool)

(assert (=> b!5331284 (= e!3311315 1)))

(assert (= (and d!1711856 c!927231) b!5331283))

(assert (= (and d!1711856 (not c!927231)) b!5331284))

(declare-fun m!6364794 () Bool)

(assert (=> b!5331283 m!6364794))

(declare-fun m!6364796 () Bool)

(assert (=> b!5331283 m!6364796))

(assert (=> b!5330100 d!1711856))

(declare-fun d!1711858 () Bool)

(declare-fun lt!2174595 () Int)

(assert (=> d!1711858 (>= lt!2174595 0)))

(declare-fun e!3311316 () Int)

(assert (=> d!1711858 (= lt!2174595 e!3311316)))

(declare-fun c!927232 () Bool)

(assert (=> d!1711858 (= c!927232 ((_ is Cons!61168) (t!374507 lt!2174315)))))

(assert (=> d!1711858 (= (zipperDepthTotal!150 (t!374507 lt!2174315)) lt!2174595)))

(declare-fun b!5331285 () Bool)

(assert (=> b!5331285 (= e!3311316 (+ (contextDepthTotal!130 (h!67616 (t!374507 lt!2174315))) (zipperDepthTotal!150 (t!374507 (t!374507 lt!2174315)))))))

(declare-fun b!5331286 () Bool)

(assert (=> b!5331286 (= e!3311316 0)))

(assert (= (and d!1711858 c!927232) b!5331285))

(assert (= (and d!1711858 (not c!927232)) b!5331286))

(declare-fun m!6364798 () Bool)

(assert (=> b!5331285 m!6364798))

(declare-fun m!6364800 () Bool)

(assert (=> b!5331285 m!6364800))

(assert (=> b!5330100 d!1711858))

(declare-fun d!1711860 () Bool)

(assert (=> d!1711860 (= (isUnion!329 lt!2174482) ((_ is Union!14997) lt!2174482))))

(assert (=> b!5330233 d!1711860))

(declare-fun bs!1235880 () Bool)

(declare-fun d!1711862 () Bool)

(assert (= bs!1235880 (and d!1711862 b!5329319)))

(declare-fun lambda!272484 () Int)

(assert (=> bs!1235880 (= lambda!272484 lambda!272305)))

(declare-fun bs!1235882 () Bool)

(assert (= bs!1235882 (and d!1711862 d!1711380)))

(assert (=> bs!1235882 (= lambda!272484 lambda!272409)))

(declare-fun bs!1235883 () Bool)

(assert (= bs!1235883 (and d!1711862 d!1711294)))

(assert (=> bs!1235883 (= lambda!272484 lambda!272372)))

(declare-fun bs!1235885 () Bool)

(assert (= bs!1235885 (and d!1711862 d!1711376)))

(assert (=> bs!1235885 (= lambda!272484 lambda!272408)))

(declare-fun bs!1235887 () Bool)

(assert (= bs!1235887 (and d!1711862 d!1711324)))

(assert (=> bs!1235887 (= lambda!272484 lambda!272381)))

(declare-fun bs!1235888 () Bool)

(assert (= bs!1235888 (and d!1711862 d!1711356)))

(assert (=> bs!1235888 (= lambda!272484 lambda!272388)))

(declare-fun bs!1235889 () Bool)

(assert (= bs!1235889 (and d!1711862 d!1711786)))

(assert (=> bs!1235889 (= lambda!272484 lambda!272474)))

(declare-fun bs!1235890 () Bool)

(assert (= bs!1235890 (and d!1711862 b!5330869)))

(assert (=> bs!1235890 (not (= lambda!272484 lambda!272452))))

(declare-fun bs!1235891 () Bool)

(assert (= bs!1235891 (and d!1711862 d!1711714)))

(assert (=> bs!1235891 (= lambda!272484 lambda!272467)))

(declare-fun bs!1235893 () Bool)

(assert (= bs!1235893 (and d!1711862 d!1711374)))

(assert (=> bs!1235893 (= lambda!272484 lambda!272405)))

(declare-fun bs!1235894 () Bool)

(assert (= bs!1235894 (and d!1711862 d!1711816)))

(assert (=> bs!1235894 (= lambda!272484 lambda!272476)))

(declare-fun bs!1235896 () Bool)

(assert (= bs!1235896 (and d!1711862 b!5330871)))

(assert (=> bs!1235896 (not (= lambda!272484 lambda!272453))))

(declare-fun bs!1235897 () Bool)

(assert (= bs!1235897 (and d!1711862 d!1711346)))

(assert (=> bs!1235897 (= lambda!272484 lambda!272384)))

(assert (=> d!1711862 (= (inv!80739 setElem!34359) (forall!14415 (exprs!4881 setElem!34359) lambda!272484))))

(declare-fun bs!1235899 () Bool)

(assert (= bs!1235899 d!1711862))

(declare-fun m!6364802 () Bool)

(assert (=> bs!1235899 m!6364802))

(assert (=> setNonEmpty!34359 d!1711862))

(declare-fun bs!1235901 () Bool)

(declare-fun d!1711864 () Bool)

(assert (= bs!1235901 (and d!1711864 b!5329319)))

(declare-fun lambda!272485 () Int)

(assert (=> bs!1235901 (= lambda!272485 lambda!272305)))

(declare-fun bs!1235902 () Bool)

(assert (= bs!1235902 (and d!1711864 d!1711380)))

(assert (=> bs!1235902 (= lambda!272485 lambda!272409)))

(declare-fun bs!1235903 () Bool)

(assert (= bs!1235903 (and d!1711864 d!1711294)))

(assert (=> bs!1235903 (= lambda!272485 lambda!272372)))

(declare-fun bs!1235904 () Bool)

(assert (= bs!1235904 (and d!1711864 d!1711862)))

(assert (=> bs!1235904 (= lambda!272485 lambda!272484)))

(declare-fun bs!1235905 () Bool)

(assert (= bs!1235905 (and d!1711864 d!1711376)))

(assert (=> bs!1235905 (= lambda!272485 lambda!272408)))

(declare-fun bs!1235906 () Bool)

(assert (= bs!1235906 (and d!1711864 d!1711324)))

(assert (=> bs!1235906 (= lambda!272485 lambda!272381)))

(declare-fun bs!1235907 () Bool)

(assert (= bs!1235907 (and d!1711864 d!1711356)))

(assert (=> bs!1235907 (= lambda!272485 lambda!272388)))

(declare-fun bs!1235908 () Bool)

(assert (= bs!1235908 (and d!1711864 d!1711786)))

(assert (=> bs!1235908 (= lambda!272485 lambda!272474)))

(declare-fun bs!1235909 () Bool)

(assert (= bs!1235909 (and d!1711864 b!5330869)))

(assert (=> bs!1235909 (not (= lambda!272485 lambda!272452))))

(declare-fun bs!1235910 () Bool)

(assert (= bs!1235910 (and d!1711864 d!1711714)))

(assert (=> bs!1235910 (= lambda!272485 lambda!272467)))

(declare-fun bs!1235911 () Bool)

(assert (= bs!1235911 (and d!1711864 d!1711374)))

(assert (=> bs!1235911 (= lambda!272485 lambda!272405)))

(declare-fun bs!1235912 () Bool)

(assert (= bs!1235912 (and d!1711864 d!1711816)))

(assert (=> bs!1235912 (= lambda!272485 lambda!272476)))

(declare-fun bs!1235913 () Bool)

(assert (= bs!1235913 (and d!1711864 b!5330871)))

(assert (=> bs!1235913 (not (= lambda!272485 lambda!272453))))

(declare-fun bs!1235914 () Bool)

(assert (= bs!1235914 (and d!1711864 d!1711346)))

(assert (=> bs!1235914 (= lambda!272485 lambda!272384)))

(declare-fun b!5331287 () Bool)

(declare-fun e!3311319 () Bool)

(declare-fun lt!2174596 () Regex!14997)

(assert (=> b!5331287 (= e!3311319 (= lt!2174596 (head!11427 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5331288 () Bool)

(declare-fun e!3311322 () Bool)

(assert (=> b!5331288 (= e!3311322 (isEmptyExpr!889 lt!2174596))))

(declare-fun e!3311318 () Bool)

(assert (=> d!1711864 e!3311318))

(declare-fun res!2261285 () Bool)

(assert (=> d!1711864 (=> (not res!2261285) (not e!3311318))))

(assert (=> d!1711864 (= res!2261285 (validRegex!6733 lt!2174596))))

(declare-fun e!3311317 () Regex!14997)

(assert (=> d!1711864 (= lt!2174596 e!3311317)))

(declare-fun c!927235 () Bool)

(declare-fun e!3311321 () Bool)

(assert (=> d!1711864 (= c!927235 e!3311321)))

(declare-fun res!2261284 () Bool)

(assert (=> d!1711864 (=> (not res!2261284) (not e!3311321))))

(assert (=> d!1711864 (= res!2261284 ((_ is Cons!61167) (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> d!1711864 (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272485)))

(assert (=> d!1711864 (= (generalisedConcat!666 (t!374506 (exprs!4881 (h!67616 zl!343)))) lt!2174596)))

(declare-fun b!5331289 () Bool)

(assert (=> b!5331289 (= e!3311321 (isEmpty!33135 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5331290 () Bool)

(assert (=> b!5331290 (= e!3311318 e!3311322)))

(declare-fun c!927236 () Bool)

(assert (=> b!5331290 (= c!927236 (isEmpty!33135 (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331291 () Bool)

(assert (=> b!5331291 (= e!3311317 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331292 () Bool)

(declare-fun e!3311320 () Regex!14997)

(assert (=> b!5331292 (= e!3311320 EmptyExpr!14997)))

(declare-fun b!5331293 () Bool)

(assert (=> b!5331293 (= e!3311319 (isConcat!412 lt!2174596))))

(declare-fun b!5331294 () Bool)

(assert (=> b!5331294 (= e!3311317 e!3311320)))

(declare-fun c!927234 () Bool)

(assert (=> b!5331294 (= c!927234 ((_ is Cons!61167) (t!374506 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331295 () Bool)

(assert (=> b!5331295 (= e!3311320 (Concat!23842 (h!67615 (t!374506 (exprs!4881 (h!67616 zl!343)))) (generalisedConcat!666 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331296 () Bool)

(assert (=> b!5331296 (= e!3311322 e!3311319)))

(declare-fun c!927233 () Bool)

(assert (=> b!5331296 (= c!927233 (isEmpty!33135 (tail!10524 (t!374506 (exprs!4881 (h!67616 zl!343))))))))

(assert (= (and d!1711864 res!2261284) b!5331289))

(assert (= (and d!1711864 c!927235) b!5331291))

(assert (= (and d!1711864 (not c!927235)) b!5331294))

(assert (= (and b!5331294 c!927234) b!5331295))

(assert (= (and b!5331294 (not c!927234)) b!5331292))

(assert (= (and d!1711864 res!2261285) b!5331290))

(assert (= (and b!5331290 c!927236) b!5331288))

(assert (= (and b!5331290 (not c!927236)) b!5331296))

(assert (= (and b!5331296 c!927233) b!5331287))

(assert (= (and b!5331296 (not c!927233)) b!5331293))

(declare-fun m!6364810 () Bool)

(assert (=> b!5331293 m!6364810))

(declare-fun m!6364812 () Bool)

(assert (=> b!5331288 m!6364812))

(assert (=> b!5331290 m!6362882))

(declare-fun m!6364814 () Bool)

(assert (=> b!5331289 m!6364814))

(declare-fun m!6364816 () Bool)

(assert (=> b!5331295 m!6364816))

(declare-fun m!6364818 () Bool)

(assert (=> d!1711864 m!6364818))

(declare-fun m!6364820 () Bool)

(assert (=> d!1711864 m!6364820))

(declare-fun m!6364822 () Bool)

(assert (=> b!5331296 m!6364822))

(assert (=> b!5331296 m!6364822))

(declare-fun m!6364824 () Bool)

(assert (=> b!5331296 m!6364824))

(declare-fun m!6364826 () Bool)

(assert (=> b!5331287 m!6364826))

(assert (=> b!5329932 d!1711864))

(assert (=> bm!380810 d!1711606))

(assert (=> b!5330244 d!1711294))

(declare-fun bs!1235926 () Bool)

(declare-fun d!1711872 () Bool)

(assert (= bs!1235926 (and d!1711872 b!5329319)))

(declare-fun lambda!272487 () Int)

(assert (=> bs!1235926 (= lambda!272487 lambda!272305)))

(declare-fun bs!1235928 () Bool)

(assert (= bs!1235928 (and d!1711872 d!1711380)))

(assert (=> bs!1235928 (= lambda!272487 lambda!272409)))

(declare-fun bs!1235930 () Bool)

(assert (= bs!1235930 (and d!1711872 d!1711294)))

(assert (=> bs!1235930 (= lambda!272487 lambda!272372)))

(declare-fun bs!1235932 () Bool)

(assert (= bs!1235932 (and d!1711872 d!1711862)))

(assert (=> bs!1235932 (= lambda!272487 lambda!272484)))

(declare-fun bs!1235934 () Bool)

(assert (= bs!1235934 (and d!1711872 d!1711324)))

(assert (=> bs!1235934 (= lambda!272487 lambda!272381)))

(declare-fun bs!1235935 () Bool)

(assert (= bs!1235935 (and d!1711872 d!1711356)))

(assert (=> bs!1235935 (= lambda!272487 lambda!272388)))

(declare-fun bs!1235936 () Bool)

(assert (= bs!1235936 (and d!1711872 d!1711786)))

(assert (=> bs!1235936 (= lambda!272487 lambda!272474)))

(declare-fun bs!1235937 () Bool)

(assert (= bs!1235937 (and d!1711872 b!5330869)))

(assert (=> bs!1235937 (not (= lambda!272487 lambda!272452))))

(declare-fun bs!1235938 () Bool)

(assert (= bs!1235938 (and d!1711872 d!1711714)))

(assert (=> bs!1235938 (= lambda!272487 lambda!272467)))

(declare-fun bs!1235939 () Bool)

(assert (= bs!1235939 (and d!1711872 d!1711374)))

(assert (=> bs!1235939 (= lambda!272487 lambda!272405)))

(declare-fun bs!1235940 () Bool)

(assert (= bs!1235940 (and d!1711872 d!1711376)))

(assert (=> bs!1235940 (= lambda!272487 lambda!272408)))

(declare-fun bs!1235941 () Bool)

(assert (= bs!1235941 (and d!1711872 d!1711864)))

(assert (=> bs!1235941 (= lambda!272487 lambda!272485)))

(declare-fun bs!1235942 () Bool)

(assert (= bs!1235942 (and d!1711872 d!1711816)))

(assert (=> bs!1235942 (= lambda!272487 lambda!272476)))

(declare-fun bs!1235943 () Bool)

(assert (= bs!1235943 (and d!1711872 b!5330871)))

(assert (=> bs!1235943 (not (= lambda!272487 lambda!272453))))

(declare-fun bs!1235944 () Bool)

(assert (= bs!1235944 (and d!1711872 d!1711346)))

(assert (=> bs!1235944 (= lambda!272487 lambda!272384)))

(declare-fun lt!2174598 () List!61291)

(assert (=> d!1711872 (forall!14415 lt!2174598 lambda!272487)))

(declare-fun e!3311329 () List!61291)

(assert (=> d!1711872 (= lt!2174598 e!3311329)))

(declare-fun c!927241 () Bool)

(assert (=> d!1711872 (= c!927241 ((_ is Cons!61168) (t!374507 zl!343)))))

(assert (=> d!1711872 (= (unfocusZipperList!439 (t!374507 zl!343)) lt!2174598)))

(declare-fun b!5331307 () Bool)

(assert (=> b!5331307 (= e!3311329 (Cons!61167 (generalisedConcat!666 (exprs!4881 (h!67616 (t!374507 zl!343)))) (unfocusZipperList!439 (t!374507 (t!374507 zl!343)))))))

(declare-fun b!5331308 () Bool)

(assert (=> b!5331308 (= e!3311329 Nil!61167)))

(assert (= (and d!1711872 c!927241) b!5331307))

(assert (= (and d!1711872 (not c!927241)) b!5331308))

(declare-fun m!6364846 () Bool)

(assert (=> d!1711872 m!6364846))

(declare-fun m!6364848 () Bool)

(assert (=> b!5331307 m!6364848))

(declare-fun m!6364850 () Bool)

(assert (=> b!5331307 m!6364850))

(assert (=> b!5330244 d!1711872))

(declare-fun d!1711876 () Bool)

(declare-fun res!2261288 () Bool)

(declare-fun e!3311330 () Bool)

(assert (=> d!1711876 (=> res!2261288 e!3311330)))

(assert (=> d!1711876 (= res!2261288 ((_ is Nil!61167) lt!2174485))))

(assert (=> d!1711876 (= (forall!14415 lt!2174485 lambda!272408) e!3311330)))

(declare-fun b!5331309 () Bool)

(declare-fun e!3311331 () Bool)

(assert (=> b!5331309 (= e!3311330 e!3311331)))

(declare-fun res!2261289 () Bool)

(assert (=> b!5331309 (=> (not res!2261289) (not e!3311331))))

(assert (=> b!5331309 (= res!2261289 (dynLambda!24187 lambda!272408 (h!67615 lt!2174485)))))

(declare-fun b!5331310 () Bool)

(assert (=> b!5331310 (= e!3311331 (forall!14415 (t!374506 lt!2174485) lambda!272408))))

(assert (= (and d!1711876 (not res!2261288)) b!5331309))

(assert (= (and b!5331309 res!2261289) b!5331310))

(declare-fun b_lambda!205019 () Bool)

(assert (=> (not b_lambda!205019) (not b!5331309)))

(declare-fun m!6364852 () Bool)

(assert (=> b!5331309 m!6364852))

(declare-fun m!6364854 () Bool)

(assert (=> b!5331310 m!6364854))

(assert (=> d!1711376 d!1711876))

(assert (=> d!1711198 d!1711706))

(declare-fun bs!1235958 () Bool)

(declare-fun b!5331319 () Bool)

(assert (= bs!1235958 (and b!5331319 d!1711336)))

(declare-fun lambda!272489 () Int)

(assert (=> bs!1235958 (not (= lambda!272489 lambda!272382))))

(declare-fun bs!1235959 () Bool)

(assert (= bs!1235959 (and b!5331319 b!5329333)))

(assert (=> bs!1235959 (not (= lambda!272489 lambda!272301))))

(declare-fun bs!1235960 () Bool)

(assert (= bs!1235960 (and b!5331319 b!5330177)))

(assert (=> bs!1235960 (= (and (= (reg!15326 (regTwo!30507 lt!2174304)) (reg!15326 lt!2174304)) (= (regTwo!30507 lt!2174304) lt!2174304)) (= lambda!272489 lambda!272389))))

(declare-fun bs!1235962 () Bool)

(assert (= bs!1235962 (and b!5331319 b!5330147)))

(assert (=> bs!1235962 (= (and (= (reg!15326 (regTwo!30507 lt!2174304)) (reg!15326 lt!2174318)) (= (regTwo!30507 lt!2174304) lt!2174318)) (= lambda!272489 lambda!272385))))

(declare-fun bs!1235964 () Bool)

(assert (= bs!1235964 (and b!5331319 b!5331241)))

(assert (=> bs!1235964 (not (= lambda!272489 lambda!272481))))

(assert (=> bs!1235959 (not (= lambda!272489 lambda!272300))))

(declare-fun bs!1235966 () Bool)

(assert (= bs!1235966 (and b!5331319 b!5330051)))

(assert (=> bs!1235966 (= (and (= (reg!15326 (regTwo!30507 lt!2174304)) (reg!15326 r!7292)) (= (regTwo!30507 lt!2174304) r!7292)) (= lambda!272489 lambda!272377))))

(declare-fun bs!1235968 () Bool)

(assert (= bs!1235968 (and b!5331319 b!5330178)))

(assert (=> bs!1235968 (not (= lambda!272489 lambda!272390))))

(declare-fun bs!1235970 () Bool)

(assert (= bs!1235970 (and b!5331319 d!1711250)))

(assert (=> bs!1235970 (not (= lambda!272489 lambda!272362))))

(declare-fun bs!1235972 () Bool)

(assert (= bs!1235972 (and b!5331319 d!1711262)))

(assert (=> bs!1235972 (not (= lambda!272489 lambda!272369))))

(declare-fun bs!1235974 () Bool)

(assert (= bs!1235974 (and b!5331319 b!5331240)))

(assert (=> bs!1235974 (= (and (= (reg!15326 (regTwo!30507 lt!2174304)) (reg!15326 (regOne!30507 lt!2174304))) (= (regTwo!30507 lt!2174304) (regOne!30507 lt!2174304))) (= lambda!272489 lambda!272480))))

(declare-fun bs!1235976 () Bool)

(assert (= bs!1235976 (and b!5331319 b!5330148)))

(assert (=> bs!1235976 (not (= lambda!272489 lambda!272386))))

(assert (=> bs!1235972 (not (= lambda!272489 lambda!272368))))

(declare-fun bs!1235979 () Bool)

(assert (= bs!1235979 (and b!5331319 d!1711350)))

(assert (=> bs!1235979 (not (= lambda!272489 lambda!272387))))

(assert (=> bs!1235958 (not (= lambda!272489 lambda!272383))))

(declare-fun bs!1235982 () Bool)

(assert (= bs!1235982 (and b!5331319 d!1711564)))

(assert (=> bs!1235982 (not (= lambda!272489 lambda!272438))))

(declare-fun bs!1235984 () Bool)

(assert (= bs!1235984 (and b!5331319 b!5329319)))

(assert (=> bs!1235984 (not (= lambda!272489 lambda!272304))))

(assert (=> bs!1235984 (not (= lambda!272489 lambda!272303))))

(declare-fun bs!1235986 () Bool)

(assert (= bs!1235986 (and b!5331319 b!5330052)))

(assert (=> bs!1235986 (not (= lambda!272489 lambda!272378))))

(assert (=> b!5331319 true))

(assert (=> b!5331319 true))

(declare-fun bs!1235992 () Bool)

(declare-fun b!5331320 () Bool)

(assert (= bs!1235992 (and b!5331320 d!1711336)))

(declare-fun lambda!272491 () Int)

(assert (=> bs!1235992 (not (= lambda!272491 lambda!272382))))

(declare-fun bs!1235994 () Bool)

(assert (= bs!1235994 (and b!5331320 b!5329333)))

(assert (=> bs!1235994 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272491 lambda!272301))))

(declare-fun bs!1235995 () Bool)

(assert (= bs!1235995 (and b!5331320 b!5330177)))

(assert (=> bs!1235995 (not (= lambda!272491 lambda!272389))))

(declare-fun bs!1235996 () Bool)

(assert (= bs!1235996 (and b!5331320 b!5330147)))

(assert (=> bs!1235996 (not (= lambda!272491 lambda!272385))))

(declare-fun bs!1235998 () Bool)

(assert (= bs!1235998 (and b!5331320 b!5331241)))

(assert (=> bs!1235998 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272491 lambda!272481))))

(assert (=> bs!1235994 (not (= lambda!272491 lambda!272300))))

(declare-fun bs!1236000 () Bool)

(assert (= bs!1236000 (and b!5331320 b!5330051)))

(assert (=> bs!1236000 (not (= lambda!272491 lambda!272377))))

(declare-fun bs!1236002 () Bool)

(assert (= bs!1236002 (and b!5331320 b!5330178)))

(assert (=> bs!1236002 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 lt!2174304))) (= lambda!272491 lambda!272390))))

(declare-fun bs!1236003 () Bool)

(assert (= bs!1236003 (and b!5331320 d!1711250)))

(assert (=> bs!1236003 (not (= lambda!272491 lambda!272362))))

(declare-fun bs!1236005 () Bool)

(assert (= bs!1236005 (and b!5331320 d!1711262)))

(assert (=> bs!1236005 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272491 lambda!272369))))

(declare-fun bs!1236006 () Bool)

(assert (= bs!1236006 (and b!5331320 b!5330148)))

(assert (=> bs!1236006 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 lt!2174318))) (= lambda!272491 lambda!272386))))

(assert (=> bs!1236005 (not (= lambda!272491 lambda!272368))))

(declare-fun bs!1236007 () Bool)

(assert (= bs!1236007 (and b!5331320 d!1711350)))

(assert (=> bs!1236007 (not (= lambda!272491 lambda!272387))))

(assert (=> bs!1235992 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174304)) lt!2174318)) (= lambda!272491 lambda!272383))))

(declare-fun bs!1236008 () Bool)

(assert (= bs!1236008 (and b!5331320 d!1711564)))

(assert (=> bs!1236008 (not (= lambda!272491 lambda!272438))))

(declare-fun bs!1236009 () Bool)

(assert (= bs!1236009 (and b!5331320 b!5329319)))

(assert (=> bs!1236009 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174304)) lt!2174318)) (= lambda!272491 lambda!272304))))

(assert (=> bs!1236009 (not (= lambda!272491 lambda!272303))))

(declare-fun bs!1236012 () Bool)

(assert (= bs!1236012 (and b!5331320 b!5330052)))

(assert (=> bs!1236012 (= (and (= (regOne!30506 (regTwo!30507 lt!2174304)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174304)) (regTwo!30506 r!7292))) (= lambda!272491 lambda!272378))))

(declare-fun bs!1236014 () Bool)

(assert (= bs!1236014 (and b!5331320 b!5331319)))

(assert (=> bs!1236014 (not (= lambda!272491 lambda!272489))))

(declare-fun bs!1236016 () Bool)

(assert (= bs!1236016 (and b!5331320 b!5331240)))

(assert (=> bs!1236016 (not (= lambda!272491 lambda!272480))))

(assert (=> b!5331320 true))

(assert (=> b!5331320 true))

(declare-fun d!1711878 () Bool)

(declare-fun c!927243 () Bool)

(assert (=> d!1711878 (= c!927243 ((_ is EmptyExpr!14997) (regTwo!30507 lt!2174304)))))

(declare-fun e!3311332 () Bool)

(assert (=> d!1711878 (= (matchRSpec!2100 (regTwo!30507 lt!2174304) s!2326) e!3311332)))

(declare-fun b!5331311 () Bool)

(declare-fun res!2261292 () Bool)

(declare-fun e!3311333 () Bool)

(assert (=> b!5331311 (=> res!2261292 e!3311333)))

(declare-fun call!381023 () Bool)

(assert (=> b!5331311 (= res!2261292 call!381023)))

(declare-fun e!3311336 () Bool)

(assert (=> b!5331311 (= e!3311336 e!3311333)))

(declare-fun b!5331312 () Bool)

(declare-fun e!3311335 () Bool)

(assert (=> b!5331312 (= e!3311335 (matchRSpec!2100 (regTwo!30507 (regTwo!30507 lt!2174304)) s!2326))))

(declare-fun b!5331313 () Bool)

(declare-fun c!927245 () Bool)

(assert (=> b!5331313 (= c!927245 ((_ is ElementMatch!14997) (regTwo!30507 lt!2174304)))))

(declare-fun e!3311338 () Bool)

(declare-fun e!3311337 () Bool)

(assert (=> b!5331313 (= e!3311338 e!3311337)))

(declare-fun b!5331314 () Bool)

(assert (=> b!5331314 (= e!3311332 call!381023)))

(declare-fun bm!381018 () Bool)

(declare-fun call!381024 () Bool)

(declare-fun c!927244 () Bool)

(assert (=> bm!381018 (= call!381024 (Exists!2178 (ite c!927244 lambda!272489 lambda!272491)))))

(declare-fun b!5331315 () Bool)

(declare-fun e!3311334 () Bool)

(assert (=> b!5331315 (= e!3311334 e!3311335)))

(declare-fun res!2261291 () Bool)

(assert (=> b!5331315 (= res!2261291 (matchRSpec!2100 (regOne!30507 (regTwo!30507 lt!2174304)) s!2326))))

(assert (=> b!5331315 (=> res!2261291 e!3311335)))

(declare-fun b!5331316 () Bool)

(assert (=> b!5331316 (= e!3311334 e!3311336)))

(assert (=> b!5331316 (= c!927244 ((_ is Star!14997) (regTwo!30507 lt!2174304)))))

(declare-fun bm!381019 () Bool)

(assert (=> bm!381019 (= call!381023 (isEmpty!33139 s!2326))))

(declare-fun b!5331317 () Bool)

(assert (=> b!5331317 (= e!3311332 e!3311338)))

(declare-fun res!2261290 () Bool)

(assert (=> b!5331317 (= res!2261290 (not ((_ is EmptyLang!14997) (regTwo!30507 lt!2174304))))))

(assert (=> b!5331317 (=> (not res!2261290) (not e!3311338))))

(declare-fun b!5331318 () Bool)

(declare-fun c!927242 () Bool)

(assert (=> b!5331318 (= c!927242 ((_ is Union!14997) (regTwo!30507 lt!2174304)))))

(assert (=> b!5331318 (= e!3311337 e!3311334)))

(assert (=> b!5331319 (= e!3311333 call!381024)))

(assert (=> b!5331320 (= e!3311336 call!381024)))

(declare-fun b!5331321 () Bool)

(assert (=> b!5331321 (= e!3311337 (= s!2326 (Cons!61166 (c!926649 (regTwo!30507 lt!2174304)) Nil!61166)))))

(assert (= (and d!1711878 c!927243) b!5331314))

(assert (= (and d!1711878 (not c!927243)) b!5331317))

(assert (= (and b!5331317 res!2261290) b!5331313))

(assert (= (and b!5331313 c!927245) b!5331321))

(assert (= (and b!5331313 (not c!927245)) b!5331318))

(assert (= (and b!5331318 c!927242) b!5331315))

(assert (= (and b!5331318 (not c!927242)) b!5331316))

(assert (= (and b!5331315 (not res!2261291)) b!5331312))

(assert (= (and b!5331316 c!927244) b!5331311))

(assert (= (and b!5331316 (not c!927244)) b!5331320))

(assert (= (and b!5331311 (not res!2261292)) b!5331319))

(assert (= (or b!5331319 b!5331320) bm!381018))

(assert (= (or b!5331314 b!5331311) bm!381019))

(declare-fun m!6364858 () Bool)

(assert (=> b!5331312 m!6364858))

(declare-fun m!6364860 () Bool)

(assert (=> bm!381018 m!6364860))

(declare-fun m!6364862 () Bool)

(assert (=> b!5331315 m!6364862))

(assert (=> bm!381019 m!6363526))

(assert (=> b!5330170 d!1711878))

(declare-fun d!1711882 () Bool)

(declare-fun res!2261296 () Bool)

(declare-fun e!3311346 () Bool)

(assert (=> d!1711882 (=> res!2261296 e!3311346)))

(assert (=> d!1711882 (= res!2261296 ((_ is Nil!61168) zl!343))))

(assert (=> d!1711882 (= (forall!14417 zl!343 lambda!272402) e!3311346)))

(declare-fun b!5331333 () Bool)

(declare-fun e!3311347 () Bool)

(assert (=> b!5331333 (= e!3311346 e!3311347)))

(declare-fun res!2261297 () Bool)

(assert (=> b!5331333 (=> (not res!2261297) (not e!3311347))))

(assert (=> b!5331333 (= res!2261297 (dynLambda!24191 lambda!272402 (h!67616 zl!343)))))

(declare-fun b!5331334 () Bool)

(assert (=> b!5331334 (= e!3311347 (forall!14417 (t!374507 zl!343) lambda!272402))))

(assert (= (and d!1711882 (not res!2261296)) b!5331333))

(assert (= (and b!5331333 res!2261297) b!5331334))

(declare-fun b_lambda!205021 () Bool)

(assert (=> (not b_lambda!205021) (not b!5331333)))

(declare-fun m!6364864 () Bool)

(assert (=> b!5331333 m!6364864))

(declare-fun m!6364866 () Bool)

(assert (=> b!5331334 m!6364866))

(assert (=> b!5330209 d!1711882))

(declare-fun d!1711884 () Bool)

(assert (=> d!1711884 true))

(assert (=> d!1711884 true))

(declare-fun res!2261298 () Bool)

(assert (=> d!1711884 (= (choose!39916 lambda!272303) res!2261298)))

(assert (=> d!1711360 d!1711884))

(declare-fun b!5331335 () Bool)

(declare-fun e!3311348 () Bool)

(declare-fun lt!2174599 () Bool)

(assert (=> b!5331335 (= e!3311348 (not lt!2174599))))

(declare-fun b!5331336 () Bool)

(declare-fun res!2261301 () Bool)

(declare-fun e!3311350 () Bool)

(assert (=> b!5331336 (=> (not res!2261301) (not e!3311350))))

(declare-fun call!381027 () Bool)

(assert (=> b!5331336 (= res!2261301 (not call!381027))))

(declare-fun d!1711886 () Bool)

(declare-fun e!3311351 () Bool)

(assert (=> d!1711886 e!3311351))

(declare-fun c!927252 () Bool)

(assert (=> d!1711886 (= c!927252 ((_ is EmptyExpr!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun e!3311354 () Bool)

(assert (=> d!1711886 (= lt!2174599 e!3311354)))

(declare-fun c!927250 () Bool)

(assert (=> d!1711886 (= c!927250 (isEmpty!33139 (_1!35499 (get!21038 lt!2174462))))))

(assert (=> d!1711886 (validRegex!6733 (regOne!30506 (regOne!30506 r!7292)))))

(assert (=> d!1711886 (= (matchR!7182 (regOne!30506 (regOne!30506 r!7292)) (_1!35499 (get!21038 lt!2174462))) lt!2174599)))

(declare-fun b!5331337 () Bool)

(assert (=> b!5331337 (= e!3311351 e!3311348)))

(declare-fun c!927251 () Bool)

(assert (=> b!5331337 (= c!927251 ((_ is EmptyLang!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5331338 () Bool)

(assert (=> b!5331338 (= e!3311354 (matchR!7182 (derivativeStep!4175 (regOne!30506 (regOne!30506 r!7292)) (head!11426 (_1!35499 (get!21038 lt!2174462)))) (tail!10523 (_1!35499 (get!21038 lt!2174462)))))))

(declare-fun b!5331339 () Bool)

(declare-fun res!2261304 () Bool)

(declare-fun e!3311352 () Bool)

(assert (=> b!5331339 (=> res!2261304 e!3311352)))

(assert (=> b!5331339 (= res!2261304 (not ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292)))))))

(assert (=> b!5331339 (= e!3311348 e!3311352)))

(declare-fun b!5331340 () Bool)

(declare-fun res!2261302 () Bool)

(declare-fun e!3311349 () Bool)

(assert (=> b!5331340 (=> res!2261302 e!3311349)))

(assert (=> b!5331340 (= res!2261302 (not (isEmpty!33139 (tail!10523 (_1!35499 (get!21038 lt!2174462))))))))

(declare-fun b!5331341 () Bool)

(assert (=> b!5331341 (= e!3311349 (not (= (head!11426 (_1!35499 (get!21038 lt!2174462))) (c!926649 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5331342 () Bool)

(assert (=> b!5331342 (= e!3311351 (= lt!2174599 call!381027))))

(declare-fun b!5331343 () Bool)

(declare-fun res!2261305 () Bool)

(assert (=> b!5331343 (=> res!2261305 e!3311352)))

(assert (=> b!5331343 (= res!2261305 e!3311350)))

(declare-fun res!2261303 () Bool)

(assert (=> b!5331343 (=> (not res!2261303) (not e!3311350))))

(assert (=> b!5331343 (= res!2261303 lt!2174599)))

(declare-fun b!5331344 () Bool)

(declare-fun e!3311353 () Bool)

(assert (=> b!5331344 (= e!3311353 e!3311349)))

(declare-fun res!2261306 () Bool)

(assert (=> b!5331344 (=> res!2261306 e!3311349)))

(assert (=> b!5331344 (= res!2261306 call!381027)))

(declare-fun b!5331345 () Bool)

(assert (=> b!5331345 (= e!3311352 e!3311353)))

(declare-fun res!2261300 () Bool)

(assert (=> b!5331345 (=> (not res!2261300) (not e!3311353))))

(assert (=> b!5331345 (= res!2261300 (not lt!2174599))))

(declare-fun b!5331346 () Bool)

(assert (=> b!5331346 (= e!3311350 (= (head!11426 (_1!35499 (get!21038 lt!2174462))) (c!926649 (regOne!30506 (regOne!30506 r!7292)))))))

(declare-fun b!5331347 () Bool)

(assert (=> b!5331347 (= e!3311354 (nullable!5166 (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun b!5331348 () Bool)

(declare-fun res!2261299 () Bool)

(assert (=> b!5331348 (=> (not res!2261299) (not e!3311350))))

(assert (=> b!5331348 (= res!2261299 (isEmpty!33139 (tail!10523 (_1!35499 (get!21038 lt!2174462)))))))

(declare-fun bm!381022 () Bool)

(assert (=> bm!381022 (= call!381027 (isEmpty!33139 (_1!35499 (get!21038 lt!2174462))))))

(assert (= (and d!1711886 c!927250) b!5331347))

(assert (= (and d!1711886 (not c!927250)) b!5331338))

(assert (= (and d!1711886 c!927252) b!5331342))

(assert (= (and d!1711886 (not c!927252)) b!5331337))

(assert (= (and b!5331337 c!927251) b!5331335))

(assert (= (and b!5331337 (not c!927251)) b!5331339))

(assert (= (and b!5331339 (not res!2261304)) b!5331343))

(assert (= (and b!5331343 res!2261303) b!5331336))

(assert (= (and b!5331336 res!2261301) b!5331348))

(assert (= (and b!5331348 res!2261299) b!5331346))

(assert (= (and b!5331343 (not res!2261305)) b!5331345))

(assert (= (and b!5331345 res!2261300) b!5331344))

(assert (= (and b!5331344 (not res!2261306)) b!5331340))

(assert (= (and b!5331340 (not res!2261302)) b!5331341))

(assert (= (or b!5331342 b!5331336 b!5331344) bm!381022))

(declare-fun m!6364868 () Bool)

(assert (=> b!5331338 m!6364868))

(assert (=> b!5331338 m!6364868))

(declare-fun m!6364870 () Bool)

(assert (=> b!5331338 m!6364870))

(declare-fun m!6364872 () Bool)

(assert (=> b!5331338 m!6364872))

(assert (=> b!5331338 m!6364870))

(assert (=> b!5331338 m!6364872))

(declare-fun m!6364874 () Bool)

(assert (=> b!5331338 m!6364874))

(declare-fun m!6364876 () Bool)

(assert (=> d!1711886 m!6364876))

(assert (=> d!1711886 m!6363568))

(assert (=> b!5331340 m!6364872))

(assert (=> b!5331340 m!6364872))

(declare-fun m!6364878 () Bool)

(assert (=> b!5331340 m!6364878))

(assert (=> bm!381022 m!6364876))

(assert (=> b!5331348 m!6364872))

(assert (=> b!5331348 m!6364872))

(assert (=> b!5331348 m!6364878))

(assert (=> b!5331341 m!6364868))

(assert (=> b!5331347 m!6362896))

(assert (=> b!5331346 m!6364868))

(assert (=> b!5330160 d!1711886))

(assert (=> b!5330160 d!1711628))

(declare-fun d!1711888 () Bool)

(assert (=> d!1711888 (= (head!11427 lt!2174324) (h!67615 lt!2174324))))

(assert (=> b!5330150 d!1711888))

(declare-fun b!5331349 () Bool)

(declare-fun e!3311355 () Bool)

(declare-fun lt!2174600 () Bool)

(assert (=> b!5331349 (= e!3311355 (not lt!2174600))))

(declare-fun b!5331350 () Bool)

(declare-fun res!2261309 () Bool)

(declare-fun e!3311357 () Bool)

(assert (=> b!5331350 (=> (not res!2261309) (not e!3311357))))

(declare-fun call!381028 () Bool)

(assert (=> b!5331350 (= res!2261309 (not call!381028))))

(declare-fun d!1711890 () Bool)

(declare-fun e!3311358 () Bool)

(assert (=> d!1711890 e!3311358))

(declare-fun c!927255 () Bool)

(assert (=> d!1711890 (= c!927255 ((_ is EmptyExpr!14997) (regOne!30506 r!7292)))))

(declare-fun e!3311361 () Bool)

(assert (=> d!1711890 (= lt!2174600 e!3311361)))

(declare-fun c!927253 () Bool)

(assert (=> d!1711890 (= c!927253 (isEmpty!33139 (_1!35499 (get!21038 lt!2174392))))))

(assert (=> d!1711890 (validRegex!6733 (regOne!30506 r!7292))))

(assert (=> d!1711890 (= (matchR!7182 (regOne!30506 r!7292) (_1!35499 (get!21038 lt!2174392))) lt!2174600)))

(declare-fun b!5331351 () Bool)

(assert (=> b!5331351 (= e!3311358 e!3311355)))

(declare-fun c!927254 () Bool)

(assert (=> b!5331351 (= c!927254 ((_ is EmptyLang!14997) (regOne!30506 r!7292)))))

(declare-fun b!5331352 () Bool)

(assert (=> b!5331352 (= e!3311361 (matchR!7182 (derivativeStep!4175 (regOne!30506 r!7292) (head!11426 (_1!35499 (get!21038 lt!2174392)))) (tail!10523 (_1!35499 (get!21038 lt!2174392)))))))

(declare-fun b!5331353 () Bool)

(declare-fun res!2261312 () Bool)

(declare-fun e!3311359 () Bool)

(assert (=> b!5331353 (=> res!2261312 e!3311359)))

(assert (=> b!5331353 (= res!2261312 (not ((_ is ElementMatch!14997) (regOne!30506 r!7292))))))

(assert (=> b!5331353 (= e!3311355 e!3311359)))

(declare-fun b!5331354 () Bool)

(declare-fun res!2261310 () Bool)

(declare-fun e!3311356 () Bool)

(assert (=> b!5331354 (=> res!2261310 e!3311356)))

(assert (=> b!5331354 (= res!2261310 (not (isEmpty!33139 (tail!10523 (_1!35499 (get!21038 lt!2174392))))))))

(declare-fun b!5331355 () Bool)

(assert (=> b!5331355 (= e!3311356 (not (= (head!11426 (_1!35499 (get!21038 lt!2174392))) (c!926649 (regOne!30506 r!7292)))))))

(declare-fun b!5331356 () Bool)

(assert (=> b!5331356 (= e!3311358 (= lt!2174600 call!381028))))

(declare-fun b!5331357 () Bool)

(declare-fun res!2261313 () Bool)

(assert (=> b!5331357 (=> res!2261313 e!3311359)))

(assert (=> b!5331357 (= res!2261313 e!3311357)))

(declare-fun res!2261311 () Bool)

(assert (=> b!5331357 (=> (not res!2261311) (not e!3311357))))

(assert (=> b!5331357 (= res!2261311 lt!2174600)))

(declare-fun b!5331358 () Bool)

(declare-fun e!3311360 () Bool)

(assert (=> b!5331358 (= e!3311360 e!3311356)))

(declare-fun res!2261314 () Bool)

(assert (=> b!5331358 (=> res!2261314 e!3311356)))

(assert (=> b!5331358 (= res!2261314 call!381028)))

(declare-fun b!5331359 () Bool)

(assert (=> b!5331359 (= e!3311359 e!3311360)))

(declare-fun res!2261308 () Bool)

(assert (=> b!5331359 (=> (not res!2261308) (not e!3311360))))

(assert (=> b!5331359 (= res!2261308 (not lt!2174600))))

(declare-fun b!5331360 () Bool)

(assert (=> b!5331360 (= e!3311357 (= (head!11426 (_1!35499 (get!21038 lt!2174392))) (c!926649 (regOne!30506 r!7292))))))

(declare-fun b!5331361 () Bool)

(assert (=> b!5331361 (= e!3311361 (nullable!5166 (regOne!30506 r!7292)))))

(declare-fun b!5331362 () Bool)

(declare-fun res!2261307 () Bool)

(assert (=> b!5331362 (=> (not res!2261307) (not e!3311357))))

(assert (=> b!5331362 (= res!2261307 (isEmpty!33139 (tail!10523 (_1!35499 (get!21038 lt!2174392)))))))

(declare-fun bm!381023 () Bool)

(assert (=> bm!381023 (= call!381028 (isEmpty!33139 (_1!35499 (get!21038 lt!2174392))))))

(assert (= (and d!1711890 c!927253) b!5331361))

(assert (= (and d!1711890 (not c!927253)) b!5331352))

(assert (= (and d!1711890 c!927255) b!5331356))

(assert (= (and d!1711890 (not c!927255)) b!5331351))

(assert (= (and b!5331351 c!927254) b!5331349))

(assert (= (and b!5331351 (not c!927254)) b!5331353))

(assert (= (and b!5331353 (not res!2261312)) b!5331357))

(assert (= (and b!5331357 res!2261311) b!5331350))

(assert (= (and b!5331350 res!2261309) b!5331362))

(assert (= (and b!5331362 res!2261307) b!5331360))

(assert (= (and b!5331357 (not res!2261313)) b!5331359))

(assert (= (and b!5331359 res!2261308) b!5331358))

(assert (= (and b!5331358 (not res!2261314)) b!5331354))

(assert (= (and b!5331354 (not res!2261310)) b!5331355))

(assert (= (or b!5331356 b!5331350 b!5331358) bm!381023))

(declare-fun m!6364886 () Bool)

(assert (=> b!5331352 m!6364886))

(assert (=> b!5331352 m!6364886))

(declare-fun m!6364888 () Bool)

(assert (=> b!5331352 m!6364888))

(declare-fun m!6364890 () Bool)

(assert (=> b!5331352 m!6364890))

(assert (=> b!5331352 m!6364888))

(assert (=> b!5331352 m!6364890))

(declare-fun m!6364892 () Bool)

(assert (=> b!5331352 m!6364892))

(declare-fun m!6364894 () Bool)

(assert (=> d!1711890 m!6364894))

(assert (=> d!1711890 m!6363326))

(assert (=> b!5331354 m!6364890))

(assert (=> b!5331354 m!6364890))

(declare-fun m!6364896 () Bool)

(assert (=> b!5331354 m!6364896))

(assert (=> bm!381023 m!6364894))

(assert (=> b!5331362 m!6364890))

(assert (=> b!5331362 m!6364890))

(assert (=> b!5331362 m!6364896))

(assert (=> b!5331355 m!6364886))

(assert (=> b!5331361 m!6364018))

(assert (=> b!5331360 m!6364886))

(assert (=> b!5329772 d!1711890))

(assert (=> b!5329772 d!1711688))

(declare-fun b!5331374 () Bool)

(declare-fun e!3311370 () (InoxSet Context!8762))

(declare-fun call!381036 () (InoxSet Context!8762))

(assert (=> b!5331374 (= e!3311370 call!381036)))

(declare-fun bm!381030 () Bool)

(declare-fun call!381037 () (InoxSet Context!8762))

(declare-fun call!381035 () (InoxSet Context!8762))

(assert (=> bm!381030 (= call!381037 call!381035)))

(declare-fun b!5331375 () Bool)

(declare-fun e!3311371 () (InoxSet Context!8762))

(assert (=> b!5331375 (= e!3311371 call!381036)))

(declare-fun call!381038 () List!61291)

(declare-fun c!927265 () Bool)

(declare-fun c!927264 () Bool)

(declare-fun bm!381031 () Bool)

(declare-fun c!927262 () Bool)

(assert (=> bm!381031 (= call!381035 (derivationStepZipperDown!445 (ite c!927262 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!927264 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!927265 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))) (ite (or c!927262 c!927264) (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (Context!8763 call!381038)) (h!67614 s!2326)))))

(declare-fun b!5331376 () Bool)

(declare-fun e!3311373 () Bool)

(assert (=> b!5331376 (= e!3311373 (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5331377 () Bool)

(assert (=> b!5331377 (= c!927264 e!3311373)))

(declare-fun res!2261316 () Bool)

(assert (=> b!5331377 (=> (not res!2261316) (not e!3311373))))

(assert (=> b!5331377 (= res!2261316 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun e!3311372 () (InoxSet Context!8762))

(declare-fun e!3311369 () (InoxSet Context!8762))

(assert (=> b!5331377 (= e!3311372 e!3311369)))

(declare-fun b!5331378 () Bool)

(assert (=> b!5331378 (= e!3311370 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!381032 () Bool)

(assert (=> bm!381032 (= call!381036 call!381037)))

(declare-fun call!381040 () (InoxSet Context!8762))

(declare-fun bm!381033 () Bool)

(declare-fun call!381039 () List!61291)

(assert (=> bm!381033 (= call!381040 (derivationStepZipperDown!445 (ite c!927262 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))) (ite c!927262 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (Context!8763 call!381039)) (h!67614 s!2326)))))

(declare-fun b!5331379 () Bool)

(assert (=> b!5331379 (= e!3311369 ((_ map or) call!381040 call!381037))))

(declare-fun bm!381034 () Bool)

(assert (=> bm!381034 (= call!381039 ($colon$colon!1404 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))) (ite (or c!927264 c!927265) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67615 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun b!5331380 () Bool)

(declare-fun c!927263 () Bool)

(assert (=> b!5331380 (= c!927263 ((_ is Star!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> b!5331380 (= e!3311371 e!3311370)))

(declare-fun b!5331381 () Bool)

(declare-fun e!3311368 () (InoxSet Context!8762))

(assert (=> b!5331381 (= e!3311368 e!3311372)))

(assert (=> b!5331381 (= c!927262 ((_ is Union!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331383 () Bool)

(assert (=> b!5331383 (= e!3311368 (store ((as const (Array Context!8762 Bool)) false) (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) true))))

(declare-fun b!5331384 () Bool)

(assert (=> b!5331384 (= e!3311369 e!3311371)))

(assert (=> b!5331384 (= c!927265 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bm!381035 () Bool)

(assert (=> bm!381035 (= call!381038 call!381039)))

(declare-fun b!5331382 () Bool)

(assert (=> b!5331382 (= e!3311372 ((_ map or) call!381040 call!381035))))

(declare-fun d!1711894 () Bool)

(declare-fun c!927261 () Bool)

(assert (=> d!1711894 (= c!927261 (and ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))) (= (c!926649 (h!67615 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326))))))

(assert (=> d!1711894 (= (derivationStepZipperDown!445 (h!67615 (exprs!4881 (h!67616 zl!343))) (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))) (h!67614 s!2326)) e!3311368)))

(assert (= (and d!1711894 c!927261) b!5331383))

(assert (= (and d!1711894 (not c!927261)) b!5331381))

(assert (= (and b!5331381 c!927262) b!5331382))

(assert (= (and b!5331381 (not c!927262)) b!5331377))

(assert (= (and b!5331377 res!2261316) b!5331376))

(assert (= (and b!5331377 c!927264) b!5331379))

(assert (= (and b!5331377 (not c!927264)) b!5331384))

(assert (= (and b!5331384 c!927265) b!5331375))

(assert (= (and b!5331384 (not c!927265)) b!5331380))

(assert (= (and b!5331380 c!927263) b!5331374))

(assert (= (and b!5331380 (not c!927263)) b!5331378))

(assert (= (or b!5331375 b!5331374) bm!381035))

(assert (= (or b!5331375 b!5331374) bm!381032))

(assert (= (or b!5331379 bm!381035) bm!381034))

(assert (= (or b!5331379 bm!381032) bm!381030))

(assert (= (or b!5331382 bm!381030) bm!381031))

(assert (= (or b!5331382 b!5331379) bm!381033))

(declare-fun m!6364904 () Bool)

(assert (=> b!5331383 m!6364904))

(assert (=> b!5331376 m!6363508))

(declare-fun m!6364906 () Bool)

(assert (=> bm!381033 m!6364906))

(declare-fun m!6364910 () Bool)

(assert (=> bm!381034 m!6364910))

(declare-fun m!6364914 () Bool)

(assert (=> bm!381031 m!6364914))

(assert (=> bm!380786 d!1711894))

(declare-fun bs!1236039 () Bool)

(declare-fun b!5331404 () Bool)

(assert (= bs!1236039 (and b!5331404 d!1711336)))

(declare-fun lambda!272494 () Int)

(assert (=> bs!1236039 (not (= lambda!272494 lambda!272382))))

(declare-fun bs!1236041 () Bool)

(assert (= bs!1236041 (and b!5331404 b!5329333)))

(assert (=> bs!1236041 (not (= lambda!272494 lambda!272301))))

(declare-fun bs!1236043 () Bool)

(assert (= bs!1236043 (and b!5331404 b!5330177)))

(assert (=> bs!1236043 (= (and (= (reg!15326 (regTwo!30507 r!7292)) (reg!15326 lt!2174304)) (= (regTwo!30507 r!7292) lt!2174304)) (= lambda!272494 lambda!272389))))

(declare-fun bs!1236045 () Bool)

(assert (= bs!1236045 (and b!5331404 b!5331320)))

(assert (=> bs!1236045 (not (= lambda!272494 lambda!272491))))

(declare-fun bs!1236047 () Bool)

(assert (= bs!1236047 (and b!5331404 b!5330147)))

(assert (=> bs!1236047 (= (and (= (reg!15326 (regTwo!30507 r!7292)) (reg!15326 lt!2174318)) (= (regTwo!30507 r!7292) lt!2174318)) (= lambda!272494 lambda!272385))))

(declare-fun bs!1236049 () Bool)

(assert (= bs!1236049 (and b!5331404 b!5331241)))

(assert (=> bs!1236049 (not (= lambda!272494 lambda!272481))))

(assert (=> bs!1236041 (not (= lambda!272494 lambda!272300))))

(declare-fun bs!1236052 () Bool)

(assert (= bs!1236052 (and b!5331404 b!5330051)))

(assert (=> bs!1236052 (= (and (= (reg!15326 (regTwo!30507 r!7292)) (reg!15326 r!7292)) (= (regTwo!30507 r!7292) r!7292)) (= lambda!272494 lambda!272377))))

(declare-fun bs!1236054 () Bool)

(assert (= bs!1236054 (and b!5331404 b!5330178)))

(assert (=> bs!1236054 (not (= lambda!272494 lambda!272390))))

(declare-fun bs!1236056 () Bool)

(assert (= bs!1236056 (and b!5331404 d!1711250)))

(assert (=> bs!1236056 (not (= lambda!272494 lambda!272362))))

(declare-fun bs!1236058 () Bool)

(assert (= bs!1236058 (and b!5331404 d!1711262)))

(assert (=> bs!1236058 (not (= lambda!272494 lambda!272369))))

(declare-fun bs!1236060 () Bool)

(assert (= bs!1236060 (and b!5331404 b!5330148)))

(assert (=> bs!1236060 (not (= lambda!272494 lambda!272386))))

(assert (=> bs!1236058 (not (= lambda!272494 lambda!272368))))

(declare-fun bs!1236063 () Bool)

(assert (= bs!1236063 (and b!5331404 d!1711350)))

(assert (=> bs!1236063 (not (= lambda!272494 lambda!272387))))

(assert (=> bs!1236039 (not (= lambda!272494 lambda!272383))))

(declare-fun bs!1236065 () Bool)

(assert (= bs!1236065 (and b!5331404 d!1711564)))

(assert (=> bs!1236065 (not (= lambda!272494 lambda!272438))))

(declare-fun bs!1236066 () Bool)

(assert (= bs!1236066 (and b!5331404 b!5329319)))

(assert (=> bs!1236066 (not (= lambda!272494 lambda!272304))))

(assert (=> bs!1236066 (not (= lambda!272494 lambda!272303))))

(declare-fun bs!1236069 () Bool)

(assert (= bs!1236069 (and b!5331404 b!5330052)))

(assert (=> bs!1236069 (not (= lambda!272494 lambda!272378))))

(declare-fun bs!1236071 () Bool)

(assert (= bs!1236071 (and b!5331404 b!5331319)))

(assert (=> bs!1236071 (= (and (= (reg!15326 (regTwo!30507 r!7292)) (reg!15326 (regTwo!30507 lt!2174304))) (= (regTwo!30507 r!7292) (regTwo!30507 lt!2174304))) (= lambda!272494 lambda!272489))))

(declare-fun bs!1236073 () Bool)

(assert (= bs!1236073 (and b!5331404 b!5331240)))

(assert (=> bs!1236073 (= (and (= (reg!15326 (regTwo!30507 r!7292)) (reg!15326 (regOne!30507 lt!2174304))) (= (regTwo!30507 r!7292) (regOne!30507 lt!2174304))) (= lambda!272494 lambda!272480))))

(assert (=> b!5331404 true))

(assert (=> b!5331404 true))

(declare-fun bs!1236078 () Bool)

(declare-fun b!5331405 () Bool)

(assert (= bs!1236078 (and b!5331405 d!1711336)))

(declare-fun lambda!272495 () Int)

(assert (=> bs!1236078 (not (= lambda!272495 lambda!272382))))

(declare-fun bs!1236080 () Bool)

(assert (= bs!1236080 (and b!5331405 b!5329333)))

(assert (=> bs!1236080 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272495 lambda!272301))))

(declare-fun bs!1236081 () Bool)

(assert (= bs!1236081 (and b!5331405 b!5330177)))

(assert (=> bs!1236081 (not (= lambda!272495 lambda!272389))))

(declare-fun bs!1236083 () Bool)

(assert (= bs!1236083 (and b!5331405 b!5331320)))

(assert (=> bs!1236083 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 (regTwo!30507 lt!2174304))) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272495 lambda!272491))))

(declare-fun bs!1236084 () Bool)

(assert (= bs!1236084 (and b!5331405 b!5330147)))

(assert (=> bs!1236084 (not (= lambda!272495 lambda!272385))))

(declare-fun bs!1236086 () Bool)

(assert (= bs!1236086 (and b!5331405 b!5331241)))

(assert (=> bs!1236086 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272495 lambda!272481))))

(assert (=> bs!1236080 (not (= lambda!272495 lambda!272300))))

(declare-fun bs!1236087 () Bool)

(assert (= bs!1236087 (and b!5331405 b!5330051)))

(assert (=> bs!1236087 (not (= lambda!272495 lambda!272377))))

(declare-fun bs!1236088 () Bool)

(assert (= bs!1236088 (and b!5331405 b!5330178)))

(assert (=> bs!1236088 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 lt!2174304))) (= lambda!272495 lambda!272390))))

(declare-fun bs!1236089 () Bool)

(assert (= bs!1236089 (and b!5331405 d!1711250)))

(assert (=> bs!1236089 (not (= lambda!272495 lambda!272362))))

(declare-fun bs!1236090 () Bool)

(assert (= bs!1236090 (and b!5331405 d!1711262)))

(assert (=> bs!1236090 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272495 lambda!272369))))

(declare-fun bs!1236092 () Bool)

(assert (= bs!1236092 (and b!5331405 b!5330148)))

(assert (=> bs!1236092 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 lt!2174318))) (= lambda!272495 lambda!272386))))

(assert (=> bs!1236090 (not (= lambda!272495 lambda!272368))))

(declare-fun bs!1236095 () Bool)

(assert (= bs!1236095 (and b!5331405 d!1711350)))

(assert (=> bs!1236095 (not (= lambda!272495 lambda!272387))))

(assert (=> bs!1236078 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 r!7292)) lt!2174318)) (= lambda!272495 lambda!272383))))

(declare-fun bs!1236098 () Bool)

(assert (= bs!1236098 (and b!5331405 d!1711564)))

(assert (=> bs!1236098 (not (= lambda!272495 lambda!272438))))

(declare-fun bs!1236100 () Bool)

(assert (= bs!1236100 (and b!5331405 b!5329319)))

(assert (=> bs!1236100 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 r!7292)) lt!2174318)) (= lambda!272495 lambda!272304))))

(assert (=> bs!1236100 (not (= lambda!272495 lambda!272303))))

(declare-fun bs!1236102 () Bool)

(assert (= bs!1236102 (and b!5331405 b!5330052)))

(assert (=> bs!1236102 (= (and (= (regOne!30506 (regTwo!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272495 lambda!272378))))

(declare-fun bs!1236104 () Bool)

(assert (= bs!1236104 (and b!5331405 b!5331404)))

(assert (=> bs!1236104 (not (= lambda!272495 lambda!272494))))

(declare-fun bs!1236106 () Bool)

(assert (= bs!1236106 (and b!5331405 b!5331319)))

(assert (=> bs!1236106 (not (= lambda!272495 lambda!272489))))

(declare-fun bs!1236108 () Bool)

(assert (= bs!1236108 (and b!5331405 b!5331240)))

(assert (=> bs!1236108 (not (= lambda!272495 lambda!272480))))

(assert (=> b!5331405 true))

(assert (=> b!5331405 true))

(declare-fun d!1711898 () Bool)

(declare-fun c!927271 () Bool)

(assert (=> d!1711898 (= c!927271 ((_ is EmptyExpr!14997) (regTwo!30507 r!7292)))))

(declare-fun e!3311381 () Bool)

(assert (=> d!1711898 (= (matchRSpec!2100 (regTwo!30507 r!7292) s!2326) e!3311381)))

(declare-fun b!5331396 () Bool)

(declare-fun res!2261322 () Bool)

(declare-fun e!3311382 () Bool)

(assert (=> b!5331396 (=> res!2261322 e!3311382)))

(declare-fun call!381043 () Bool)

(assert (=> b!5331396 (= res!2261322 call!381043)))

(declare-fun e!3311385 () Bool)

(assert (=> b!5331396 (= e!3311385 e!3311382)))

(declare-fun b!5331397 () Bool)

(declare-fun e!3311384 () Bool)

(assert (=> b!5331397 (= e!3311384 (matchRSpec!2100 (regTwo!30507 (regTwo!30507 r!7292)) s!2326))))

(declare-fun b!5331398 () Bool)

(declare-fun c!927273 () Bool)

(assert (=> b!5331398 (= c!927273 ((_ is ElementMatch!14997) (regTwo!30507 r!7292)))))

(declare-fun e!3311387 () Bool)

(declare-fun e!3311386 () Bool)

(assert (=> b!5331398 (= e!3311387 e!3311386)))

(declare-fun b!5331399 () Bool)

(assert (=> b!5331399 (= e!3311381 call!381043)))

(declare-fun call!381044 () Bool)

(declare-fun c!927272 () Bool)

(declare-fun bm!381038 () Bool)

(assert (=> bm!381038 (= call!381044 (Exists!2178 (ite c!927272 lambda!272494 lambda!272495)))))

(declare-fun b!5331400 () Bool)

(declare-fun e!3311383 () Bool)

(assert (=> b!5331400 (= e!3311383 e!3311384)))

(declare-fun res!2261321 () Bool)

(assert (=> b!5331400 (= res!2261321 (matchRSpec!2100 (regOne!30507 (regTwo!30507 r!7292)) s!2326))))

(assert (=> b!5331400 (=> res!2261321 e!3311384)))

(declare-fun b!5331401 () Bool)

(assert (=> b!5331401 (= e!3311383 e!3311385)))

(assert (=> b!5331401 (= c!927272 ((_ is Star!14997) (regTwo!30507 r!7292)))))

(declare-fun bm!381039 () Bool)

(assert (=> bm!381039 (= call!381043 (isEmpty!33139 s!2326))))

(declare-fun b!5331402 () Bool)

(assert (=> b!5331402 (= e!3311381 e!3311387)))

(declare-fun res!2261320 () Bool)

(assert (=> b!5331402 (= res!2261320 (not ((_ is EmptyLang!14997) (regTwo!30507 r!7292))))))

(assert (=> b!5331402 (=> (not res!2261320) (not e!3311387))))

(declare-fun b!5331403 () Bool)

(declare-fun c!927270 () Bool)

(assert (=> b!5331403 (= c!927270 ((_ is Union!14997) (regTwo!30507 r!7292)))))

(assert (=> b!5331403 (= e!3311386 e!3311383)))

(assert (=> b!5331404 (= e!3311382 call!381044)))

(assert (=> b!5331405 (= e!3311385 call!381044)))

(declare-fun b!5331406 () Bool)

(assert (=> b!5331406 (= e!3311386 (= s!2326 (Cons!61166 (c!926649 (regTwo!30507 r!7292)) Nil!61166)))))

(assert (= (and d!1711898 c!927271) b!5331399))

(assert (= (and d!1711898 (not c!927271)) b!5331402))

(assert (= (and b!5331402 res!2261320) b!5331398))

(assert (= (and b!5331398 c!927273) b!5331406))

(assert (= (and b!5331398 (not c!927273)) b!5331403))

(assert (= (and b!5331403 c!927270) b!5331400))

(assert (= (and b!5331403 (not c!927270)) b!5331401))

(assert (= (and b!5331400 (not res!2261321)) b!5331397))

(assert (= (and b!5331401 c!927272) b!5331396))

(assert (= (and b!5331401 (not c!927272)) b!5331405))

(assert (= (and b!5331396 (not res!2261322)) b!5331404))

(assert (= (or b!5331404 b!5331405) bm!381038))

(assert (= (or b!5331399 b!5331396) bm!381039))

(declare-fun m!6364916 () Bool)

(assert (=> b!5331397 m!6364916))

(declare-fun m!6364918 () Bool)

(assert (=> bm!381038 m!6364918))

(declare-fun m!6364920 () Bool)

(assert (=> b!5331400 m!6364920))

(assert (=> bm!381039 m!6363526))

(assert (=> b!5330044 d!1711898))

(declare-fun d!1711900 () Bool)

(declare-fun c!927274 () Bool)

(assert (=> d!1711900 (= c!927274 (isEmpty!33139 (tail!10523 (t!374505 s!2326))))))

(declare-fun e!3311388 () Bool)

(assert (=> d!1711900 (= (matchZipper!1241 (derivationStepZipper!1238 lt!2174311 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))) e!3311388)))

(declare-fun b!5331407 () Bool)

(assert (=> b!5331407 (= e!3311388 (nullableZipper!1354 (derivationStepZipper!1238 lt!2174311 (head!11426 (t!374505 s!2326)))))))

(declare-fun b!5331408 () Bool)

(assert (=> b!5331408 (= e!3311388 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 lt!2174311 (head!11426 (t!374505 s!2326))) (head!11426 (tail!10523 (t!374505 s!2326)))) (tail!10523 (tail!10523 (t!374505 s!2326)))))))

(assert (= (and d!1711900 c!927274) b!5331407))

(assert (= (and d!1711900 (not c!927274)) b!5331408))

(assert (=> d!1711900 m!6363214))

(assert (=> d!1711900 m!6364080))

(assert (=> b!5331407 m!6363226))

(declare-fun m!6364922 () Bool)

(assert (=> b!5331407 m!6364922))

(assert (=> b!5331408 m!6363214))

(assert (=> b!5331408 m!6364084))

(assert (=> b!5331408 m!6363226))

(assert (=> b!5331408 m!6364084))

(declare-fun m!6364924 () Bool)

(assert (=> b!5331408 m!6364924))

(assert (=> b!5331408 m!6363214))

(assert (=> b!5331408 m!6364088))

(assert (=> b!5331408 m!6364924))

(assert (=> b!5331408 m!6364088))

(declare-fun m!6364926 () Bool)

(assert (=> b!5331408 m!6364926))

(assert (=> b!5329667 d!1711900))

(declare-fun bs!1236121 () Bool)

(declare-fun d!1711902 () Bool)

(assert (= bs!1236121 (and d!1711902 b!5329326)))

(declare-fun lambda!272497 () Int)

(assert (=> bs!1236121 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272497 lambda!272302))))

(declare-fun bs!1236123 () Bool)

(assert (= bs!1236123 (and d!1711902 d!1711192)))

(assert (=> bs!1236123 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272497 lambda!272339))))

(declare-fun bs!1236124 () Bool)

(assert (= bs!1236124 (and d!1711902 d!1711584)))

(assert (=> bs!1236124 (= lambda!272497 lambda!272439)))

(declare-fun bs!1236126 () Bool)

(assert (= bs!1236126 (and d!1711902 d!1711724)))

(assert (=> bs!1236126 (= lambda!272497 lambda!272469)))

(assert (=> d!1711902 true))

(assert (=> d!1711902 (= (derivationStepZipper!1238 lt!2174311 (head!11426 (t!374505 s!2326))) (flatMap!724 lt!2174311 lambda!272497))))

(declare-fun bs!1236128 () Bool)

(assert (= bs!1236128 d!1711902))

(declare-fun m!6364928 () Bool)

(assert (=> bs!1236128 m!6364928))

(assert (=> b!5329667 d!1711902))

(assert (=> b!5329667 d!1711586))

(assert (=> b!5329667 d!1711588))

(assert (=> b!5330193 d!1711540))

(assert (=> b!5330193 d!1711542))

(declare-fun b!5331409 () Bool)

(declare-fun e!3311393 () Bool)

(declare-fun e!3311390 () Bool)

(assert (=> b!5331409 (= e!3311393 e!3311390)))

(declare-fun res!2261327 () Bool)

(assert (=> b!5331409 (= res!2261327 (not (nullable!5166 (reg!15326 lt!2174453))))))

(assert (=> b!5331409 (=> (not res!2261327) (not e!3311390))))

(declare-fun b!5331410 () Bool)

(declare-fun e!3311394 () Bool)

(assert (=> b!5331410 (= e!3311394 e!3311393)))

(declare-fun c!927275 () Bool)

(assert (=> b!5331410 (= c!927275 ((_ is Star!14997) lt!2174453))))

(declare-fun b!5331411 () Bool)

(declare-fun e!3311392 () Bool)

(assert (=> b!5331411 (= e!3311393 e!3311392)))

(declare-fun c!927276 () Bool)

(assert (=> b!5331411 (= c!927276 ((_ is Union!14997) lt!2174453))))

(declare-fun d!1711904 () Bool)

(declare-fun res!2261325 () Bool)

(assert (=> d!1711904 (=> res!2261325 e!3311394)))

(assert (=> d!1711904 (= res!2261325 ((_ is ElementMatch!14997) lt!2174453))))

(assert (=> d!1711904 (= (validRegex!6733 lt!2174453) e!3311394)))

(declare-fun b!5331412 () Bool)

(declare-fun e!3311391 () Bool)

(declare-fun e!3311389 () Bool)

(assert (=> b!5331412 (= e!3311391 e!3311389)))

(declare-fun res!2261323 () Bool)

(assert (=> b!5331412 (=> (not res!2261323) (not e!3311389))))

(declare-fun call!381047 () Bool)

(assert (=> b!5331412 (= res!2261323 call!381047)))

(declare-fun call!381046 () Bool)

(declare-fun bm!381040 () Bool)

(assert (=> bm!381040 (= call!381046 (validRegex!6733 (ite c!927275 (reg!15326 lt!2174453) (ite c!927276 (regOne!30507 lt!2174453) (regOne!30506 lt!2174453)))))))

(declare-fun bm!381041 () Bool)

(declare-fun call!381045 () Bool)

(assert (=> bm!381041 (= call!381045 (validRegex!6733 (ite c!927276 (regTwo!30507 lt!2174453) (regTwo!30506 lt!2174453))))))

(declare-fun b!5331413 () Bool)

(declare-fun res!2261324 () Bool)

(assert (=> b!5331413 (=> res!2261324 e!3311391)))

(assert (=> b!5331413 (= res!2261324 (not ((_ is Concat!23842) lt!2174453)))))

(assert (=> b!5331413 (= e!3311392 e!3311391)))

(declare-fun b!5331414 () Bool)

(assert (=> b!5331414 (= e!3311390 call!381046)))

(declare-fun b!5331415 () Bool)

(declare-fun res!2261326 () Bool)

(declare-fun e!3311395 () Bool)

(assert (=> b!5331415 (=> (not res!2261326) (not e!3311395))))

(assert (=> b!5331415 (= res!2261326 call!381047)))

(assert (=> b!5331415 (= e!3311392 e!3311395)))

(declare-fun bm!381042 () Bool)

(assert (=> bm!381042 (= call!381047 call!381046)))

(declare-fun b!5331416 () Bool)

(assert (=> b!5331416 (= e!3311395 call!381045)))

(declare-fun b!5331417 () Bool)

(assert (=> b!5331417 (= e!3311389 call!381045)))

(assert (= (and d!1711904 (not res!2261325)) b!5331410))

(assert (= (and b!5331410 c!927275) b!5331409))

(assert (= (and b!5331410 (not c!927275)) b!5331411))

(assert (= (and b!5331409 res!2261327) b!5331414))

(assert (= (and b!5331411 c!927276) b!5331415))

(assert (= (and b!5331411 (not c!927276)) b!5331413))

(assert (= (and b!5331415 res!2261326) b!5331416))

(assert (= (and b!5331413 (not res!2261324)) b!5331412))

(assert (= (and b!5331412 res!2261323) b!5331417))

(assert (= (or b!5331416 b!5331417) bm!381041))

(assert (= (or b!5331415 b!5331412) bm!381042))

(assert (= (or b!5331414 bm!381042) bm!381040))

(declare-fun m!6364930 () Bool)

(assert (=> b!5331409 m!6364930))

(declare-fun m!6364932 () Bool)

(assert (=> bm!381040 m!6364932))

(declare-fun m!6364934 () Bool)

(assert (=> bm!381041 m!6364934))

(assert (=> d!1711346 d!1711904))

(declare-fun d!1711906 () Bool)

(declare-fun res!2261328 () Bool)

(declare-fun e!3311396 () Bool)

(assert (=> d!1711906 (=> res!2261328 e!3311396)))

(assert (=> d!1711906 (= res!2261328 ((_ is Nil!61167) lt!2174307))))

(assert (=> d!1711906 (= (forall!14415 lt!2174307 lambda!272384) e!3311396)))

(declare-fun b!5331418 () Bool)

(declare-fun e!3311397 () Bool)

(assert (=> b!5331418 (= e!3311396 e!3311397)))

(declare-fun res!2261329 () Bool)

(assert (=> b!5331418 (=> (not res!2261329) (not e!3311397))))

(assert (=> b!5331418 (= res!2261329 (dynLambda!24187 lambda!272384 (h!67615 lt!2174307)))))

(declare-fun b!5331419 () Bool)

(assert (=> b!5331419 (= e!3311397 (forall!14415 (t!374506 lt!2174307) lambda!272384))))

(assert (= (and d!1711906 (not res!2261328)) b!5331418))

(assert (= (and b!5331418 res!2261329) b!5331419))

(declare-fun b_lambda!205023 () Bool)

(assert (=> (not b_lambda!205023) (not b!5331418)))

(declare-fun m!6364942 () Bool)

(assert (=> b!5331418 m!6364942))

(declare-fun m!6364944 () Bool)

(assert (=> b!5331419 m!6364944))

(assert (=> d!1711346 d!1711906))

(declare-fun b!5331423 () Bool)

(declare-fun e!3311400 () Bool)

(declare-fun lt!2174605 () Bool)

(assert (=> b!5331423 (= e!3311400 (not lt!2174605))))

(declare-fun b!5331424 () Bool)

(declare-fun res!2261333 () Bool)

(declare-fun e!3311402 () Bool)

(assert (=> b!5331424 (=> (not res!2261333) (not e!3311402))))

(declare-fun call!381048 () Bool)

(assert (=> b!5331424 (= res!2261333 (not call!381048))))

(declare-fun d!1711910 () Bool)

(declare-fun e!3311403 () Bool)

(assert (=> d!1711910 e!3311403))

(declare-fun c!927280 () Bool)

(assert (=> d!1711910 (= c!927280 ((_ is EmptyExpr!14997) (derivativeStep!4175 r!7292 (head!11426 s!2326))))))

(declare-fun e!3311406 () Bool)

(assert (=> d!1711910 (= lt!2174605 e!3311406)))

(declare-fun c!927278 () Bool)

(assert (=> d!1711910 (= c!927278 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (=> d!1711910 (validRegex!6733 (derivativeStep!4175 r!7292 (head!11426 s!2326)))))

(assert (=> d!1711910 (= (matchR!7182 (derivativeStep!4175 r!7292 (head!11426 s!2326)) (tail!10523 s!2326)) lt!2174605)))

(declare-fun b!5331425 () Bool)

(assert (=> b!5331425 (= e!3311403 e!3311400)))

(declare-fun c!927279 () Bool)

(assert (=> b!5331425 (= c!927279 ((_ is EmptyLang!14997) (derivativeStep!4175 r!7292 (head!11426 s!2326))))))

(declare-fun b!5331426 () Bool)

(assert (=> b!5331426 (= e!3311406 (matchR!7182 (derivativeStep!4175 (derivativeStep!4175 r!7292 (head!11426 s!2326)) (head!11426 (tail!10523 s!2326))) (tail!10523 (tail!10523 s!2326))))))

(declare-fun b!5331427 () Bool)

(declare-fun res!2261336 () Bool)

(declare-fun e!3311404 () Bool)

(assert (=> b!5331427 (=> res!2261336 e!3311404)))

(assert (=> b!5331427 (= res!2261336 (not ((_ is ElementMatch!14997) (derivativeStep!4175 r!7292 (head!11426 s!2326)))))))

(assert (=> b!5331427 (= e!3311400 e!3311404)))

(declare-fun b!5331428 () Bool)

(declare-fun res!2261334 () Bool)

(declare-fun e!3311401 () Bool)

(assert (=> b!5331428 (=> res!2261334 e!3311401)))

(assert (=> b!5331428 (= res!2261334 (not (isEmpty!33139 (tail!10523 (tail!10523 s!2326)))))))

(declare-fun b!5331429 () Bool)

(assert (=> b!5331429 (= e!3311401 (not (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 r!7292 (head!11426 s!2326))))))))

(declare-fun b!5331430 () Bool)

(assert (=> b!5331430 (= e!3311403 (= lt!2174605 call!381048))))

(declare-fun b!5331431 () Bool)

(declare-fun res!2261337 () Bool)

(assert (=> b!5331431 (=> res!2261337 e!3311404)))

(assert (=> b!5331431 (= res!2261337 e!3311402)))

(declare-fun res!2261335 () Bool)

(assert (=> b!5331431 (=> (not res!2261335) (not e!3311402))))

(assert (=> b!5331431 (= res!2261335 lt!2174605)))

(declare-fun b!5331432 () Bool)

(declare-fun e!3311405 () Bool)

(assert (=> b!5331432 (= e!3311405 e!3311401)))

(declare-fun res!2261338 () Bool)

(assert (=> b!5331432 (=> res!2261338 e!3311401)))

(assert (=> b!5331432 (= res!2261338 call!381048)))

(declare-fun b!5331433 () Bool)

(assert (=> b!5331433 (= e!3311404 e!3311405)))

(declare-fun res!2261332 () Bool)

(assert (=> b!5331433 (=> (not res!2261332) (not e!3311405))))

(assert (=> b!5331433 (= res!2261332 (not lt!2174605))))

(declare-fun b!5331434 () Bool)

(assert (=> b!5331434 (= e!3311402 (= (head!11426 (tail!10523 s!2326)) (c!926649 (derivativeStep!4175 r!7292 (head!11426 s!2326)))))))

(declare-fun b!5331435 () Bool)

(assert (=> b!5331435 (= e!3311406 (nullable!5166 (derivativeStep!4175 r!7292 (head!11426 s!2326))))))

(declare-fun b!5331436 () Bool)

(declare-fun res!2261331 () Bool)

(assert (=> b!5331436 (=> (not res!2261331) (not e!3311402))))

(assert (=> b!5331436 (= res!2261331 (isEmpty!33139 (tail!10523 (tail!10523 s!2326))))))

(declare-fun bm!381043 () Bool)

(assert (=> bm!381043 (= call!381048 (isEmpty!33139 (tail!10523 s!2326)))))

(assert (= (and d!1711910 c!927278) b!5331435))

(assert (= (and d!1711910 (not c!927278)) b!5331426))

(assert (= (and d!1711910 c!927280) b!5331430))

(assert (= (and d!1711910 (not c!927280)) b!5331425))

(assert (= (and b!5331425 c!927279) b!5331423))

(assert (= (and b!5331425 (not c!927279)) b!5331427))

(assert (= (and b!5331427 (not res!2261336)) b!5331431))

(assert (= (and b!5331431 res!2261335) b!5331424))

(assert (= (and b!5331424 res!2261333) b!5331436))

(assert (= (and b!5331436 res!2261331) b!5331434))

(assert (= (and b!5331431 (not res!2261337)) b!5331433))

(assert (= (and b!5331433 res!2261332) b!5331432))

(assert (= (and b!5331432 (not res!2261338)) b!5331428))

(assert (= (and b!5331428 (not res!2261334)) b!5331429))

(assert (= (or b!5331430 b!5331424 b!5331432) bm!381043))

(assert (=> b!5331426 m!6363532))

(assert (=> b!5331426 m!6364152))

(assert (=> b!5331426 m!6363530))

(assert (=> b!5331426 m!6364152))

(declare-fun m!6364946 () Bool)

(assert (=> b!5331426 m!6364946))

(assert (=> b!5331426 m!6363532))

(assert (=> b!5331426 m!6364156))

(assert (=> b!5331426 m!6364946))

(assert (=> b!5331426 m!6364156))

(declare-fun m!6364948 () Bool)

(assert (=> b!5331426 m!6364948))

(assert (=> d!1711910 m!6363532))

(assert (=> d!1711910 m!6363536))

(assert (=> d!1711910 m!6363530))

(declare-fun m!6364950 () Bool)

(assert (=> d!1711910 m!6364950))

(assert (=> b!5331428 m!6363532))

(assert (=> b!5331428 m!6364156))

(assert (=> b!5331428 m!6364156))

(assert (=> b!5331428 m!6364162))

(assert (=> bm!381043 m!6363532))

(assert (=> bm!381043 m!6363536))

(assert (=> b!5331436 m!6363532))

(assert (=> b!5331436 m!6364156))

(assert (=> b!5331436 m!6364156))

(assert (=> b!5331436 m!6364162))

(assert (=> b!5331429 m!6363532))

(assert (=> b!5331429 m!6364152))

(assert (=> b!5331435 m!6363530))

(declare-fun m!6364952 () Bool)

(assert (=> b!5331435 m!6364952))

(assert (=> b!5331434 m!6363532))

(assert (=> b!5331434 m!6364152))

(assert (=> b!5330085 d!1711910))

(declare-fun b!5331437 () Bool)

(declare-fun e!3311410 () Regex!14997)

(declare-fun e!3311408 () Regex!14997)

(assert (=> b!5331437 (= e!3311410 e!3311408)))

(declare-fun c!927285 () Bool)

(assert (=> b!5331437 (= c!927285 ((_ is Star!14997) r!7292))))

(declare-fun b!5331438 () Bool)

(declare-fun call!381050 () Regex!14997)

(declare-fun call!381049 () Regex!14997)

(assert (=> b!5331438 (= e!3311410 (Union!14997 call!381050 call!381049))))

(declare-fun b!5331439 () Bool)

(declare-fun e!3311411 () Regex!14997)

(declare-fun call!381051 () Regex!14997)

(assert (=> b!5331439 (= e!3311411 (Union!14997 (Concat!23842 call!381051 (regTwo!30506 r!7292)) EmptyLang!14997))))

(declare-fun b!5331440 () Bool)

(declare-fun e!3311409 () Regex!14997)

(declare-fun e!3311407 () Regex!14997)

(assert (=> b!5331440 (= e!3311409 e!3311407)))

(declare-fun c!927284 () Bool)

(assert (=> b!5331440 (= c!927284 ((_ is ElementMatch!14997) r!7292))))

(declare-fun d!1711912 () Bool)

(declare-fun lt!2174606 () Regex!14997)

(assert (=> d!1711912 (validRegex!6733 lt!2174606)))

(assert (=> d!1711912 (= lt!2174606 e!3311409)))

(declare-fun c!927282 () Bool)

(assert (=> d!1711912 (= c!927282 (or ((_ is EmptyExpr!14997) r!7292) ((_ is EmptyLang!14997) r!7292)))))

(assert (=> d!1711912 (validRegex!6733 r!7292)))

(assert (=> d!1711912 (= (derivativeStep!4175 r!7292 (head!11426 s!2326)) lt!2174606)))

(declare-fun bm!381044 () Bool)

(declare-fun call!381052 () Regex!14997)

(assert (=> bm!381044 (= call!381051 call!381052)))

(declare-fun b!5331441 () Bool)

(declare-fun c!927283 () Bool)

(assert (=> b!5331441 (= c!927283 ((_ is Union!14997) r!7292))))

(assert (=> b!5331441 (= e!3311407 e!3311410)))

(declare-fun b!5331442 () Bool)

(assert (=> b!5331442 (= e!3311408 (Concat!23842 call!381052 r!7292))))

(declare-fun b!5331443 () Bool)

(declare-fun c!927281 () Bool)

(assert (=> b!5331443 (= c!927281 (nullable!5166 (regOne!30506 r!7292)))))

(assert (=> b!5331443 (= e!3311408 e!3311411)))

(declare-fun b!5331444 () Bool)

(assert (=> b!5331444 (= e!3311409 EmptyLang!14997)))

(declare-fun bm!381045 () Bool)

(assert (=> bm!381045 (= call!381050 (derivativeStep!4175 (ite c!927283 (regOne!30507 r!7292) (regOne!30506 r!7292)) (head!11426 s!2326)))))

(declare-fun bm!381046 () Bool)

(assert (=> bm!381046 (= call!381049 (derivativeStep!4175 (ite c!927283 (regTwo!30507 r!7292) (ite c!927285 (reg!15326 r!7292) (ite c!927281 (regTwo!30506 r!7292) (regOne!30506 r!7292)))) (head!11426 s!2326)))))

(declare-fun b!5331445 () Bool)

(assert (=> b!5331445 (= e!3311407 (ite (= (head!11426 s!2326) (c!926649 r!7292)) EmptyExpr!14997 EmptyLang!14997))))

(declare-fun bm!381047 () Bool)

(assert (=> bm!381047 (= call!381052 call!381049)))

(declare-fun b!5331446 () Bool)

(assert (=> b!5331446 (= e!3311411 (Union!14997 (Concat!23842 call!381050 (regTwo!30506 r!7292)) call!381051))))

(assert (= (and d!1711912 c!927282) b!5331444))

(assert (= (and d!1711912 (not c!927282)) b!5331440))

(assert (= (and b!5331440 c!927284) b!5331445))

(assert (= (and b!5331440 (not c!927284)) b!5331441))

(assert (= (and b!5331441 c!927283) b!5331438))

(assert (= (and b!5331441 (not c!927283)) b!5331437))

(assert (= (and b!5331437 c!927285) b!5331442))

(assert (= (and b!5331437 (not c!927285)) b!5331443))

(assert (= (and b!5331443 c!927281) b!5331446))

(assert (= (and b!5331443 (not c!927281)) b!5331439))

(assert (= (or b!5331446 b!5331439) bm!381044))

(assert (= (or b!5331442 bm!381044) bm!381047))

(assert (= (or b!5331438 bm!381047) bm!381046))

(assert (= (or b!5331438 b!5331446) bm!381045))

(declare-fun m!6364954 () Bool)

(assert (=> d!1711912 m!6364954))

(assert (=> d!1711912 m!6362890))

(assert (=> b!5331443 m!6364018))

(assert (=> bm!381045 m!6363528))

(declare-fun m!6364956 () Bool)

(assert (=> bm!381045 m!6364956))

(assert (=> bm!381046 m!6363528))

(declare-fun m!6364958 () Bool)

(assert (=> bm!381046 m!6364958))

(assert (=> b!5330085 d!1711912))

(assert (=> b!5330085 d!1711520))

(assert (=> b!5330085 d!1711542))

(declare-fun d!1711914 () Bool)

(assert (=> d!1711914 (= (isConcat!412 lt!2174432) ((_ is Concat!23842) lt!2174432))))

(assert (=> b!5329930 d!1711914))

(assert (=> b!5330120 d!1711540))

(assert (=> b!5330120 d!1711542))

(declare-fun bs!1236164 () Bool)

(declare-fun d!1711916 () Bool)

(assert (= bs!1236164 (and d!1711916 b!5330207)))

(declare-fun lambda!272500 () Int)

(assert (=> bs!1236164 (not (= lambda!272500 lambda!272401))))

(declare-fun bs!1236165 () Bool)

(assert (= bs!1236165 (and d!1711916 d!1711698)))

(assert (=> bs!1236165 (= lambda!272500 lambda!272464)))

(declare-fun bs!1236166 () Bool)

(assert (= bs!1236166 (and d!1711916 d!1711824)))

(assert (=> bs!1236166 (= lambda!272500 lambda!272477)))

(declare-fun bs!1236167 () Bool)

(assert (= bs!1236167 (and d!1711916 b!5330204)))

(assert (=> bs!1236167 (not (= lambda!272500 lambda!272399))))

(declare-fun bs!1236168 () Bool)

(assert (= bs!1236168 (and d!1711916 b!5330896)))

(assert (=> bs!1236168 (not (= lambda!272500 lambda!272456))))

(declare-fun bs!1236169 () Bool)

(assert (= bs!1236169 (and d!1711916 b!5330209)))

(assert (=> bs!1236169 (not (= lambda!272500 lambda!272402))))

(declare-fun bs!1236170 () Bool)

(assert (= bs!1236170 (and d!1711916 b!5330202)))

(assert (=> bs!1236170 (not (= lambda!272500 lambda!272398))))

(declare-fun bs!1236171 () Bool)

(assert (= bs!1236171 (and d!1711916 d!1711676)))

(assert (=> bs!1236171 (not (= lambda!272500 lambda!272460))))

(declare-fun bs!1236172 () Bool)

(assert (= bs!1236172 (and d!1711916 b!5330894)))

(assert (=> bs!1236172 (not (= lambda!272500 lambda!272455))))

(assert (=> d!1711916 (= (nullableZipper!1354 ((_ map or) lt!2174311 lt!2174309)) (exists!2015 ((_ map or) lt!2174311 lt!2174309) lambda!272500))))

(declare-fun bs!1236173 () Bool)

(assert (= bs!1236173 d!1711916))

(declare-fun m!6364974 () Bool)

(assert (=> bs!1236173 m!6364974))

(assert (=> b!5330260 d!1711916))

(declare-fun d!1711922 () Bool)

(assert (=> d!1711922 (= ($colon$colon!1404 (exprs!4881 (Context!8763 lt!2174324)) (ite (or c!926932 c!926933) (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 r!7292)))) (Cons!61167 (ite (or c!926932 c!926933) (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 r!7292))) (exprs!4881 (Context!8763 lt!2174324))))))

(assert (=> bm!380824 d!1711922))

(declare-fun d!1711924 () Bool)

(declare-fun res!2261346 () Bool)

(declare-fun e!3311420 () Bool)

(assert (=> d!1711924 (=> res!2261346 e!3311420)))

(assert (=> d!1711924 (= res!2261346 ((_ is Nil!61168) lt!2174449))))

(assert (=> d!1711924 (= (noDuplicate!1309 lt!2174449) e!3311420)))

(declare-fun b!5331456 () Bool)

(declare-fun e!3311421 () Bool)

(assert (=> b!5331456 (= e!3311420 e!3311421)))

(declare-fun res!2261347 () Bool)

(assert (=> b!5331456 (=> (not res!2261347) (not e!3311421))))

(declare-fun contains!19714 (List!61292 Context!8762) Bool)

(assert (=> b!5331456 (= res!2261347 (not (contains!19714 (t!374507 lt!2174449) (h!67616 lt!2174449))))))

(declare-fun b!5331457 () Bool)

(assert (=> b!5331457 (= e!3311421 (noDuplicate!1309 (t!374507 lt!2174449)))))

(assert (= (and d!1711924 (not res!2261346)) b!5331456))

(assert (= (and b!5331456 res!2261347) b!5331457))

(declare-fun m!6364978 () Bool)

(assert (=> b!5331456 m!6364978))

(declare-fun m!6364980 () Bool)

(assert (=> b!5331457 m!6364980))

(assert (=> d!1711332 d!1711924))

(declare-fun d!1711926 () Bool)

(declare-fun e!3311429 () Bool)

(assert (=> d!1711926 e!3311429))

(declare-fun res!2261352 () Bool)

(assert (=> d!1711926 (=> (not res!2261352) (not e!3311429))))

(declare-fun res!2261353 () List!61292)

(assert (=> d!1711926 (= res!2261352 (noDuplicate!1309 res!2261353))))

(declare-fun e!3311430 () Bool)

(assert (=> d!1711926 e!3311430))

(assert (=> d!1711926 (= (choose!39923 z!1189) res!2261353)))

(declare-fun b!5331465 () Bool)

(declare-fun e!3311428 () Bool)

(declare-fun tp!1483445 () Bool)

(assert (=> b!5331465 (= e!3311428 tp!1483445)))

(declare-fun tp!1483444 () Bool)

(declare-fun b!5331464 () Bool)

(assert (=> b!5331464 (= e!3311430 (and (inv!80739 (h!67616 res!2261353)) e!3311428 tp!1483444))))

(declare-fun b!5331466 () Bool)

(assert (=> b!5331466 (= e!3311429 (= (content!10909 res!2261353) z!1189))))

(assert (= b!5331464 b!5331465))

(assert (= (and d!1711926 ((_ is Cons!61168) res!2261353)) b!5331464))

(assert (= (and d!1711926 res!2261352) b!5331466))

(declare-fun m!6364994 () Bool)

(assert (=> d!1711926 m!6364994))

(declare-fun m!6364996 () Bool)

(assert (=> b!5331464 m!6364996))

(declare-fun m!6364998 () Bool)

(assert (=> b!5331466 m!6364998))

(assert (=> d!1711332 d!1711926))

(declare-fun bs!1236217 () Bool)

(declare-fun b!5331475 () Bool)

(assert (= bs!1236217 (and b!5331475 d!1711336)))

(declare-fun lambda!272505 () Int)

(assert (=> bs!1236217 (not (= lambda!272505 lambda!272382))))

(declare-fun bs!1236218 () Bool)

(assert (= bs!1236218 (and b!5331475 b!5329333)))

(assert (=> bs!1236218 (not (= lambda!272505 lambda!272301))))

(declare-fun bs!1236219 () Bool)

(assert (= bs!1236219 (and b!5331475 b!5330177)))

(assert (=> bs!1236219 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 lt!2174304)) (= (regOne!30507 r!7292) lt!2174304)) (= lambda!272505 lambda!272389))))

(declare-fun bs!1236220 () Bool)

(assert (= bs!1236220 (and b!5331475 b!5331320)))

(assert (=> bs!1236220 (not (= lambda!272505 lambda!272491))))

(declare-fun bs!1236221 () Bool)

(assert (= bs!1236221 (and b!5331475 b!5330147)))

(assert (=> bs!1236221 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 lt!2174318)) (= (regOne!30507 r!7292) lt!2174318)) (= lambda!272505 lambda!272385))))

(assert (=> bs!1236218 (not (= lambda!272505 lambda!272300))))

(declare-fun bs!1236222 () Bool)

(assert (= bs!1236222 (and b!5331475 b!5330051)))

(assert (=> bs!1236222 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 r!7292)) (= (regOne!30507 r!7292) r!7292)) (= lambda!272505 lambda!272377))))

(declare-fun bs!1236223 () Bool)

(assert (= bs!1236223 (and b!5331475 b!5330178)))

(assert (=> bs!1236223 (not (= lambda!272505 lambda!272390))))

(declare-fun bs!1236224 () Bool)

(assert (= bs!1236224 (and b!5331475 d!1711250)))

(assert (=> bs!1236224 (not (= lambda!272505 lambda!272362))))

(declare-fun bs!1236225 () Bool)

(assert (= bs!1236225 (and b!5331475 d!1711262)))

(assert (=> bs!1236225 (not (= lambda!272505 lambda!272369))))

(declare-fun bs!1236226 () Bool)

(assert (= bs!1236226 (and b!5331475 b!5330148)))

(assert (=> bs!1236226 (not (= lambda!272505 lambda!272386))))

(assert (=> bs!1236225 (not (= lambda!272505 lambda!272368))))

(declare-fun bs!1236227 () Bool)

(assert (= bs!1236227 (and b!5331475 d!1711350)))

(assert (=> bs!1236227 (not (= lambda!272505 lambda!272387))))

(assert (=> bs!1236217 (not (= lambda!272505 lambda!272383))))

(declare-fun bs!1236228 () Bool)

(assert (= bs!1236228 (and b!5331475 b!5331405)))

(assert (=> bs!1236228 (not (= lambda!272505 lambda!272495))))

(declare-fun bs!1236229 () Bool)

(assert (= bs!1236229 (and b!5331475 b!5331241)))

(assert (=> bs!1236229 (not (= lambda!272505 lambda!272481))))

(declare-fun bs!1236230 () Bool)

(assert (= bs!1236230 (and b!5331475 d!1711564)))

(assert (=> bs!1236230 (not (= lambda!272505 lambda!272438))))

(declare-fun bs!1236231 () Bool)

(assert (= bs!1236231 (and b!5331475 b!5329319)))

(assert (=> bs!1236231 (not (= lambda!272505 lambda!272304))))

(assert (=> bs!1236231 (not (= lambda!272505 lambda!272303))))

(declare-fun bs!1236232 () Bool)

(assert (= bs!1236232 (and b!5331475 b!5330052)))

(assert (=> bs!1236232 (not (= lambda!272505 lambda!272378))))

(declare-fun bs!1236233 () Bool)

(assert (= bs!1236233 (and b!5331475 b!5331404)))

(assert (=> bs!1236233 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 (regTwo!30507 r!7292))) (= (regOne!30507 r!7292) (regTwo!30507 r!7292))) (= lambda!272505 lambda!272494))))

(declare-fun bs!1236234 () Bool)

(assert (= bs!1236234 (and b!5331475 b!5331319)))

(assert (=> bs!1236234 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 (regTwo!30507 lt!2174304))) (= (regOne!30507 r!7292) (regTwo!30507 lt!2174304))) (= lambda!272505 lambda!272489))))

(declare-fun bs!1236235 () Bool)

(assert (= bs!1236235 (and b!5331475 b!5331240)))

(assert (=> bs!1236235 (= (and (= (reg!15326 (regOne!30507 r!7292)) (reg!15326 (regOne!30507 lt!2174304))) (= (regOne!30507 r!7292) (regOne!30507 lt!2174304))) (= lambda!272505 lambda!272480))))

(assert (=> b!5331475 true))

(assert (=> b!5331475 true))

(declare-fun bs!1236243 () Bool)

(declare-fun b!5331476 () Bool)

(assert (= bs!1236243 (and b!5331476 d!1711336)))

(declare-fun lambda!272507 () Int)

(assert (=> bs!1236243 (not (= lambda!272507 lambda!272382))))

(declare-fun bs!1236244 () Bool)

(assert (= bs!1236244 (and b!5331476 b!5329333)))

(assert (=> bs!1236244 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272507 lambda!272301))))

(declare-fun bs!1236245 () Bool)

(assert (= bs!1236245 (and b!5331476 b!5330177)))

(assert (=> bs!1236245 (not (= lambda!272507 lambda!272389))))

(declare-fun bs!1236246 () Bool)

(assert (= bs!1236246 (and b!5331476 b!5331320)))

(assert (=> bs!1236246 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 (regTwo!30507 lt!2174304))) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272507 lambda!272491))))

(declare-fun bs!1236248 () Bool)

(assert (= bs!1236248 (and b!5331476 b!5330147)))

(assert (=> bs!1236248 (not (= lambda!272507 lambda!272385))))

(assert (=> bs!1236244 (not (= lambda!272507 lambda!272300))))

(declare-fun bs!1236250 () Bool)

(assert (= bs!1236250 (and b!5331476 b!5330051)))

(assert (=> bs!1236250 (not (= lambda!272507 lambda!272377))))

(declare-fun bs!1236251 () Bool)

(assert (= bs!1236251 (and b!5331476 b!5330178)))

(assert (=> bs!1236251 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 lt!2174304))) (= lambda!272507 lambda!272390))))

(declare-fun bs!1236252 () Bool)

(assert (= bs!1236252 (and b!5331476 d!1711250)))

(assert (=> bs!1236252 (not (= lambda!272507 lambda!272362))))

(declare-fun bs!1236253 () Bool)

(assert (= bs!1236253 (and b!5331476 d!1711262)))

(assert (=> bs!1236253 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272507 lambda!272369))))

(declare-fun bs!1236254 () Bool)

(assert (= bs!1236254 (and b!5331476 b!5331475)))

(assert (=> bs!1236254 (not (= lambda!272507 lambda!272505))))

(declare-fun bs!1236255 () Bool)

(assert (= bs!1236255 (and b!5331476 b!5330148)))

(assert (=> bs!1236255 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 lt!2174318))) (= lambda!272507 lambda!272386))))

(assert (=> bs!1236253 (not (= lambda!272507 lambda!272368))))

(declare-fun bs!1236256 () Bool)

(assert (= bs!1236256 (and b!5331476 d!1711350)))

(assert (=> bs!1236256 (not (= lambda!272507 lambda!272387))))

(assert (=> bs!1236243 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 r!7292)) lt!2174318)) (= lambda!272507 lambda!272383))))

(declare-fun bs!1236257 () Bool)

(assert (= bs!1236257 (and b!5331476 b!5331405)))

(assert (=> bs!1236257 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 (regTwo!30507 r!7292))) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 (regTwo!30507 r!7292)))) (= lambda!272507 lambda!272495))))

(declare-fun bs!1236258 () Bool)

(assert (= bs!1236258 (and b!5331476 b!5331241)))

(assert (=> bs!1236258 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272507 lambda!272481))))

(declare-fun bs!1236259 () Bool)

(assert (= bs!1236259 (and b!5331476 d!1711564)))

(assert (=> bs!1236259 (not (= lambda!272507 lambda!272438))))

(declare-fun bs!1236260 () Bool)

(assert (= bs!1236260 (and b!5331476 b!5329319)))

(assert (=> bs!1236260 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 r!7292)) lt!2174318)) (= lambda!272507 lambda!272304))))

(assert (=> bs!1236260 (not (= lambda!272507 lambda!272303))))

(declare-fun bs!1236261 () Bool)

(assert (= bs!1236261 (and b!5331476 b!5330052)))

(assert (=> bs!1236261 (= (and (= (regOne!30506 (regOne!30507 r!7292)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 r!7292)) (regTwo!30506 r!7292))) (= lambda!272507 lambda!272378))))

(declare-fun bs!1236262 () Bool)

(assert (= bs!1236262 (and b!5331476 b!5331404)))

(assert (=> bs!1236262 (not (= lambda!272507 lambda!272494))))

(declare-fun bs!1236263 () Bool)

(assert (= bs!1236263 (and b!5331476 b!5331319)))

(assert (=> bs!1236263 (not (= lambda!272507 lambda!272489))))

(declare-fun bs!1236264 () Bool)

(assert (= bs!1236264 (and b!5331476 b!5331240)))

(assert (=> bs!1236264 (not (= lambda!272507 lambda!272480))))

(assert (=> b!5331476 true))

(assert (=> b!5331476 true))

(declare-fun d!1711930 () Bool)

(declare-fun c!927288 () Bool)

(assert (=> d!1711930 (= c!927288 ((_ is EmptyExpr!14997) (regOne!30507 r!7292)))))

(declare-fun e!3311431 () Bool)

(assert (=> d!1711930 (= (matchRSpec!2100 (regOne!30507 r!7292) s!2326) e!3311431)))

(declare-fun b!5331467 () Bool)

(declare-fun res!2261356 () Bool)

(declare-fun e!3311432 () Bool)

(assert (=> b!5331467 (=> res!2261356 e!3311432)))

(declare-fun call!381053 () Bool)

(assert (=> b!5331467 (= res!2261356 call!381053)))

(declare-fun e!3311435 () Bool)

(assert (=> b!5331467 (= e!3311435 e!3311432)))

(declare-fun b!5331468 () Bool)

(declare-fun e!3311434 () Bool)

(assert (=> b!5331468 (= e!3311434 (matchRSpec!2100 (regTwo!30507 (regOne!30507 r!7292)) s!2326))))

(declare-fun b!5331469 () Bool)

(declare-fun c!927290 () Bool)

(assert (=> b!5331469 (= c!927290 ((_ is ElementMatch!14997) (regOne!30507 r!7292)))))

(declare-fun e!3311437 () Bool)

(declare-fun e!3311436 () Bool)

(assert (=> b!5331469 (= e!3311437 e!3311436)))

(declare-fun b!5331470 () Bool)

(assert (=> b!5331470 (= e!3311431 call!381053)))

(declare-fun call!381054 () Bool)

(declare-fun bm!381048 () Bool)

(declare-fun c!927289 () Bool)

(assert (=> bm!381048 (= call!381054 (Exists!2178 (ite c!927289 lambda!272505 lambda!272507)))))

(declare-fun b!5331471 () Bool)

(declare-fun e!3311433 () Bool)

(assert (=> b!5331471 (= e!3311433 e!3311434)))

(declare-fun res!2261355 () Bool)

(assert (=> b!5331471 (= res!2261355 (matchRSpec!2100 (regOne!30507 (regOne!30507 r!7292)) s!2326))))

(assert (=> b!5331471 (=> res!2261355 e!3311434)))

(declare-fun b!5331472 () Bool)

(assert (=> b!5331472 (= e!3311433 e!3311435)))

(assert (=> b!5331472 (= c!927289 ((_ is Star!14997) (regOne!30507 r!7292)))))

(declare-fun bm!381049 () Bool)

(assert (=> bm!381049 (= call!381053 (isEmpty!33139 s!2326))))

(declare-fun b!5331473 () Bool)

(assert (=> b!5331473 (= e!3311431 e!3311437)))

(declare-fun res!2261354 () Bool)

(assert (=> b!5331473 (= res!2261354 (not ((_ is EmptyLang!14997) (regOne!30507 r!7292))))))

(assert (=> b!5331473 (=> (not res!2261354) (not e!3311437))))

(declare-fun b!5331474 () Bool)

(declare-fun c!927287 () Bool)

(assert (=> b!5331474 (= c!927287 ((_ is Union!14997) (regOne!30507 r!7292)))))

(assert (=> b!5331474 (= e!3311436 e!3311433)))

(assert (=> b!5331475 (= e!3311432 call!381054)))

(assert (=> b!5331476 (= e!3311435 call!381054)))

(declare-fun b!5331477 () Bool)

(assert (=> b!5331477 (= e!3311436 (= s!2326 (Cons!61166 (c!926649 (regOne!30507 r!7292)) Nil!61166)))))

(assert (= (and d!1711930 c!927288) b!5331470))

(assert (= (and d!1711930 (not c!927288)) b!5331473))

(assert (= (and b!5331473 res!2261354) b!5331469))

(assert (= (and b!5331469 c!927290) b!5331477))

(assert (= (and b!5331469 (not c!927290)) b!5331474))

(assert (= (and b!5331474 c!927287) b!5331471))

(assert (= (and b!5331474 (not c!927287)) b!5331472))

(assert (= (and b!5331471 (not res!2261355)) b!5331468))

(assert (= (and b!5331472 c!927289) b!5331467))

(assert (= (and b!5331472 (not c!927289)) b!5331476))

(assert (= (and b!5331467 (not res!2261356)) b!5331475))

(assert (= (or b!5331475 b!5331476) bm!381048))

(assert (= (or b!5331470 b!5331467) bm!381049))

(declare-fun m!6365052 () Bool)

(assert (=> b!5331468 m!6365052))

(declare-fun m!6365054 () Bool)

(assert (=> bm!381048 m!6365054))

(declare-fun m!6365056 () Bool)

(assert (=> b!5331471 m!6365056))

(assert (=> bm!381049 m!6363526))

(assert (=> b!5330047 d!1711930))

(declare-fun d!1711960 () Bool)

(declare-fun res!2261386 () Bool)

(declare-fun e!3311473 () Bool)

(assert (=> d!1711960 (=> res!2261386 e!3311473)))

(assert (=> d!1711960 (= res!2261386 ((_ is Nil!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1711960 (= (forall!14415 (exprs!4881 (h!67616 zl!343)) lambda!272409) e!3311473)))

(declare-fun b!5331543 () Bool)

(declare-fun e!3311474 () Bool)

(assert (=> b!5331543 (= e!3311473 e!3311474)))

(declare-fun res!2261387 () Bool)

(assert (=> b!5331543 (=> (not res!2261387) (not e!3311474))))

(assert (=> b!5331543 (= res!2261387 (dynLambda!24187 lambda!272409 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331544 () Bool)

(assert (=> b!5331544 (= e!3311474 (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272409))))

(assert (= (and d!1711960 (not res!2261386)) b!5331543))

(assert (= (and b!5331543 res!2261387) b!5331544))

(declare-fun b_lambda!205027 () Bool)

(assert (=> (not b_lambda!205027) (not b!5331543)))

(declare-fun m!6365058 () Bool)

(assert (=> b!5331543 m!6365058))

(declare-fun m!6365060 () Bool)

(assert (=> b!5331544 m!6365060))

(assert (=> d!1711380 d!1711960))

(assert (=> d!1711208 d!1711706))

(assert (=> b!5330102 d!1711390))

(declare-fun d!1711962 () Bool)

(declare-fun lt!2174617 () Int)

(assert (=> d!1711962 (>= lt!2174617 0)))

(declare-fun e!3311475 () Int)

(assert (=> d!1711962 (= lt!2174617 e!3311475)))

(declare-fun c!927309 () Bool)

(assert (=> d!1711962 (= c!927309 ((_ is Cons!61168) (t!374507 zl!343)))))

(assert (=> d!1711962 (= (zipperDepthTotal!150 (t!374507 zl!343)) lt!2174617)))

(declare-fun b!5331545 () Bool)

(assert (=> b!5331545 (= e!3311475 (+ (contextDepthTotal!130 (h!67616 (t!374507 zl!343))) (zipperDepthTotal!150 (t!374507 (t!374507 zl!343)))))))

(declare-fun b!5331546 () Bool)

(assert (=> b!5331546 (= e!3311475 0)))

(assert (= (and d!1711962 c!927309) b!5331545))

(assert (= (and d!1711962 (not c!927309)) b!5331546))

(declare-fun m!6365066 () Bool)

(assert (=> b!5331545 m!6365066))

(declare-fun m!6365068 () Bool)

(assert (=> b!5331545 m!6365068))

(assert (=> b!5330102 d!1711962))

(declare-fun bs!1236273 () Bool)

(declare-fun b!5331555 () Bool)

(assert (= bs!1236273 (and b!5331555 d!1711336)))

(declare-fun lambda!272509 () Int)

(assert (=> bs!1236273 (not (= lambda!272509 lambda!272382))))

(declare-fun bs!1236276 () Bool)

(assert (= bs!1236276 (and b!5331555 b!5329333)))

(assert (=> bs!1236276 (not (= lambda!272509 lambda!272301))))

(declare-fun bs!1236279 () Bool)

(assert (= bs!1236279 (and b!5331555 b!5330177)))

(assert (=> bs!1236279 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 lt!2174304)) (= (regTwo!30507 lt!2174318) lt!2174304)) (= lambda!272509 lambda!272389))))

(declare-fun bs!1236282 () Bool)

(assert (= bs!1236282 (and b!5331555 b!5331320)))

(assert (=> bs!1236282 (not (= lambda!272509 lambda!272491))))

(declare-fun bs!1236284 () Bool)

(assert (= bs!1236284 (and b!5331555 b!5330147)))

(assert (=> bs!1236284 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 lt!2174318)) (= (regTwo!30507 lt!2174318) lt!2174318)) (= lambda!272509 lambda!272385))))

(assert (=> bs!1236276 (not (= lambda!272509 lambda!272300))))

(declare-fun bs!1236288 () Bool)

(assert (= bs!1236288 (and b!5331555 b!5330051)))

(assert (=> bs!1236288 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 r!7292)) (= (regTwo!30507 lt!2174318) r!7292)) (= lambda!272509 lambda!272377))))

(declare-fun bs!1236290 () Bool)

(assert (= bs!1236290 (and b!5331555 b!5330178)))

(assert (=> bs!1236290 (not (= lambda!272509 lambda!272390))))

(declare-fun bs!1236291 () Bool)

(assert (= bs!1236291 (and b!5331555 d!1711250)))

(assert (=> bs!1236291 (not (= lambda!272509 lambda!272362))))

(declare-fun bs!1236292 () Bool)

(assert (= bs!1236292 (and b!5331555 d!1711262)))

(assert (=> bs!1236292 (not (= lambda!272509 lambda!272369))))

(declare-fun bs!1236293 () Bool)

(assert (= bs!1236293 (and b!5331555 b!5331475)))

(assert (=> bs!1236293 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 (regOne!30507 r!7292))) (= (regTwo!30507 lt!2174318) (regOne!30507 r!7292))) (= lambda!272509 lambda!272505))))

(declare-fun bs!1236294 () Bool)

(assert (= bs!1236294 (and b!5331555 b!5330148)))

(assert (=> bs!1236294 (not (= lambda!272509 lambda!272386))))

(declare-fun bs!1236295 () Bool)

(assert (= bs!1236295 (and b!5331555 b!5331476)))

(assert (=> bs!1236295 (not (= lambda!272509 lambda!272507))))

(assert (=> bs!1236292 (not (= lambda!272509 lambda!272368))))

(declare-fun bs!1236296 () Bool)

(assert (= bs!1236296 (and b!5331555 d!1711350)))

(assert (=> bs!1236296 (not (= lambda!272509 lambda!272387))))

(assert (=> bs!1236273 (not (= lambda!272509 lambda!272383))))

(declare-fun bs!1236297 () Bool)

(assert (= bs!1236297 (and b!5331555 b!5331405)))

(assert (=> bs!1236297 (not (= lambda!272509 lambda!272495))))

(declare-fun bs!1236298 () Bool)

(assert (= bs!1236298 (and b!5331555 b!5331241)))

(assert (=> bs!1236298 (not (= lambda!272509 lambda!272481))))

(declare-fun bs!1236299 () Bool)

(assert (= bs!1236299 (and b!5331555 d!1711564)))

(assert (=> bs!1236299 (not (= lambda!272509 lambda!272438))))

(declare-fun bs!1236300 () Bool)

(assert (= bs!1236300 (and b!5331555 b!5329319)))

(assert (=> bs!1236300 (not (= lambda!272509 lambda!272304))))

(assert (=> bs!1236300 (not (= lambda!272509 lambda!272303))))

(declare-fun bs!1236301 () Bool)

(assert (= bs!1236301 (and b!5331555 b!5330052)))

(assert (=> bs!1236301 (not (= lambda!272509 lambda!272378))))

(declare-fun bs!1236302 () Bool)

(assert (= bs!1236302 (and b!5331555 b!5331404)))

(assert (=> bs!1236302 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 (regTwo!30507 r!7292))) (= (regTwo!30507 lt!2174318) (regTwo!30507 r!7292))) (= lambda!272509 lambda!272494))))

(declare-fun bs!1236303 () Bool)

(assert (= bs!1236303 (and b!5331555 b!5331319)))

(assert (=> bs!1236303 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 (regTwo!30507 lt!2174304))) (= (regTwo!30507 lt!2174318) (regTwo!30507 lt!2174304))) (= lambda!272509 lambda!272489))))

(declare-fun bs!1236304 () Bool)

(assert (= bs!1236304 (and b!5331555 b!5331240)))

(assert (=> bs!1236304 (= (and (= (reg!15326 (regTwo!30507 lt!2174318)) (reg!15326 (regOne!30507 lt!2174304))) (= (regTwo!30507 lt!2174318) (regOne!30507 lt!2174304))) (= lambda!272509 lambda!272480))))

(assert (=> b!5331555 true))

(assert (=> b!5331555 true))

(declare-fun bs!1236305 () Bool)

(declare-fun b!5331556 () Bool)

(assert (= bs!1236305 (and b!5331556 d!1711336)))

(declare-fun lambda!272510 () Int)

(assert (=> bs!1236305 (not (= lambda!272510 lambda!272382))))

(declare-fun bs!1236306 () Bool)

(assert (= bs!1236306 (and b!5331556 b!5329333)))

(assert (=> bs!1236306 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272510 lambda!272301))))

(declare-fun bs!1236307 () Bool)

(assert (= bs!1236307 (and b!5331556 b!5330177)))

(assert (=> bs!1236307 (not (= lambda!272510 lambda!272389))))

(declare-fun bs!1236308 () Bool)

(assert (= bs!1236308 (and b!5331556 b!5331320)))

(assert (=> bs!1236308 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regTwo!30507 lt!2174304))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272510 lambda!272491))))

(declare-fun bs!1236309 () Bool)

(assert (= bs!1236309 (and b!5331556 b!5330147)))

(assert (=> bs!1236309 (not (= lambda!272510 lambda!272385))))

(assert (=> bs!1236306 (not (= lambda!272510 lambda!272300))))

(declare-fun bs!1236310 () Bool)

(assert (= bs!1236310 (and b!5331556 b!5330051)))

(assert (=> bs!1236310 (not (= lambda!272510 lambda!272377))))

(declare-fun bs!1236311 () Bool)

(assert (= bs!1236311 (and b!5331556 b!5330178)))

(assert (=> bs!1236311 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 lt!2174304))) (= lambda!272510 lambda!272390))))

(declare-fun bs!1236312 () Bool)

(assert (= bs!1236312 (and b!5331556 d!1711250)))

(assert (=> bs!1236312 (not (= lambda!272510 lambda!272362))))

(declare-fun bs!1236313 () Bool)

(assert (= bs!1236313 (and b!5331556 d!1711262)))

(assert (=> bs!1236313 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272510 lambda!272369))))

(declare-fun bs!1236314 () Bool)

(assert (= bs!1236314 (and b!5331556 b!5331555)))

(assert (=> bs!1236314 (not (= lambda!272510 lambda!272509))))

(declare-fun bs!1236315 () Bool)

(assert (= bs!1236315 (and b!5331556 b!5331475)))

(assert (=> bs!1236315 (not (= lambda!272510 lambda!272505))))

(declare-fun bs!1236316 () Bool)

(assert (= bs!1236316 (and b!5331556 b!5330148)))

(assert (=> bs!1236316 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 lt!2174318))) (= lambda!272510 lambda!272386))))

(declare-fun bs!1236317 () Bool)

(assert (= bs!1236317 (and b!5331556 b!5331476)))

(assert (=> bs!1236317 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regOne!30507 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 (regOne!30507 r!7292)))) (= lambda!272510 lambda!272507))))

(assert (=> bs!1236313 (not (= lambda!272510 lambda!272368))))

(declare-fun bs!1236318 () Bool)

(assert (= bs!1236318 (and b!5331556 d!1711350)))

(assert (=> bs!1236318 (not (= lambda!272510 lambda!272387))))

(assert (=> bs!1236305 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) lt!2174318)) (= lambda!272510 lambda!272383))))

(declare-fun bs!1236319 () Bool)

(assert (= bs!1236319 (and b!5331556 b!5331405)))

(assert (=> bs!1236319 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regTwo!30507 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 (regTwo!30507 r!7292)))) (= lambda!272510 lambda!272495))))

(declare-fun bs!1236320 () Bool)

(assert (= bs!1236320 (and b!5331556 b!5331241)))

(assert (=> bs!1236320 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272510 lambda!272481))))

(declare-fun bs!1236321 () Bool)

(assert (= bs!1236321 (and b!5331556 d!1711564)))

(assert (=> bs!1236321 (not (= lambda!272510 lambda!272438))))

(declare-fun bs!1236322 () Bool)

(assert (= bs!1236322 (and b!5331556 b!5329319)))

(assert (=> bs!1236322 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regTwo!30507 lt!2174318)) lt!2174318)) (= lambda!272510 lambda!272304))))

(assert (=> bs!1236322 (not (= lambda!272510 lambda!272303))))

(declare-fun bs!1236323 () Bool)

(assert (= bs!1236323 (and b!5331556 b!5330052)))

(assert (=> bs!1236323 (= (and (= (regOne!30506 (regTwo!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regTwo!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272510 lambda!272378))))

(declare-fun bs!1236324 () Bool)

(assert (= bs!1236324 (and b!5331556 b!5331404)))

(assert (=> bs!1236324 (not (= lambda!272510 lambda!272494))))

(declare-fun bs!1236325 () Bool)

(assert (= bs!1236325 (and b!5331556 b!5331319)))

(assert (=> bs!1236325 (not (= lambda!272510 lambda!272489))))

(declare-fun bs!1236326 () Bool)

(assert (= bs!1236326 (and b!5331556 b!5331240)))

(assert (=> bs!1236326 (not (= lambda!272510 lambda!272480))))

(assert (=> b!5331556 true))

(assert (=> b!5331556 true))

(declare-fun d!1711966 () Bool)

(declare-fun c!927311 () Bool)

(assert (=> d!1711966 (= c!927311 ((_ is EmptyExpr!14997) (regTwo!30507 lt!2174318)))))

(declare-fun e!3311476 () Bool)

(assert (=> d!1711966 (= (matchRSpec!2100 (regTwo!30507 lt!2174318) s!2326) e!3311476)))

(declare-fun b!5331547 () Bool)

(declare-fun res!2261391 () Bool)

(declare-fun e!3311477 () Bool)

(assert (=> b!5331547 (=> res!2261391 e!3311477)))

(declare-fun call!381065 () Bool)

(assert (=> b!5331547 (= res!2261391 call!381065)))

(declare-fun e!3311480 () Bool)

(assert (=> b!5331547 (= e!3311480 e!3311477)))

(declare-fun b!5331548 () Bool)

(declare-fun e!3311479 () Bool)

(assert (=> b!5331548 (= e!3311479 (matchRSpec!2100 (regTwo!30507 (regTwo!30507 lt!2174318)) s!2326))))

(declare-fun b!5331549 () Bool)

(declare-fun c!927313 () Bool)

(assert (=> b!5331549 (= c!927313 ((_ is ElementMatch!14997) (regTwo!30507 lt!2174318)))))

(declare-fun e!3311482 () Bool)

(declare-fun e!3311481 () Bool)

(assert (=> b!5331549 (= e!3311482 e!3311481)))

(declare-fun b!5331550 () Bool)

(assert (=> b!5331550 (= e!3311476 call!381065)))

(declare-fun call!381066 () Bool)

(declare-fun bm!381060 () Bool)

(declare-fun c!927312 () Bool)

(assert (=> bm!381060 (= call!381066 (Exists!2178 (ite c!927312 lambda!272509 lambda!272510)))))

(declare-fun b!5331551 () Bool)

(declare-fun e!3311478 () Bool)

(assert (=> b!5331551 (= e!3311478 e!3311479)))

(declare-fun res!2261390 () Bool)

(assert (=> b!5331551 (= res!2261390 (matchRSpec!2100 (regOne!30507 (regTwo!30507 lt!2174318)) s!2326))))

(assert (=> b!5331551 (=> res!2261390 e!3311479)))

(declare-fun b!5331552 () Bool)

(assert (=> b!5331552 (= e!3311478 e!3311480)))

(assert (=> b!5331552 (= c!927312 ((_ is Star!14997) (regTwo!30507 lt!2174318)))))

(declare-fun bm!381061 () Bool)

(assert (=> bm!381061 (= call!381065 (isEmpty!33139 s!2326))))

(declare-fun b!5331553 () Bool)

(assert (=> b!5331553 (= e!3311476 e!3311482)))

(declare-fun res!2261389 () Bool)

(assert (=> b!5331553 (= res!2261389 (not ((_ is EmptyLang!14997) (regTwo!30507 lt!2174318))))))

(assert (=> b!5331553 (=> (not res!2261389) (not e!3311482))))

(declare-fun b!5331554 () Bool)

(declare-fun c!927310 () Bool)

(assert (=> b!5331554 (= c!927310 ((_ is Union!14997) (regTwo!30507 lt!2174318)))))

(assert (=> b!5331554 (= e!3311481 e!3311478)))

(assert (=> b!5331555 (= e!3311477 call!381066)))

(assert (=> b!5331556 (= e!3311480 call!381066)))

(declare-fun b!5331557 () Bool)

(assert (=> b!5331557 (= e!3311481 (= s!2326 (Cons!61166 (c!926649 (regTwo!30507 lt!2174318)) Nil!61166)))))

(assert (= (and d!1711966 c!927311) b!5331550))

(assert (= (and d!1711966 (not c!927311)) b!5331553))

(assert (= (and b!5331553 res!2261389) b!5331549))

(assert (= (and b!5331549 c!927313) b!5331557))

(assert (= (and b!5331549 (not c!927313)) b!5331554))

(assert (= (and b!5331554 c!927310) b!5331551))

(assert (= (and b!5331554 (not c!927310)) b!5331552))

(assert (= (and b!5331551 (not res!2261390)) b!5331548))

(assert (= (and b!5331552 c!927312) b!5331547))

(assert (= (and b!5331552 (not c!927312)) b!5331556))

(assert (= (and b!5331547 (not res!2261391)) b!5331555))

(assert (= (or b!5331555 b!5331556) bm!381060))

(assert (= (or b!5331550 b!5331547) bm!381061))

(declare-fun m!6365082 () Bool)

(assert (=> b!5331548 m!6365082))

(declare-fun m!6365084 () Bool)

(assert (=> bm!381060 m!6365084))

(declare-fun m!6365086 () Bool)

(assert (=> b!5331551 m!6365086))

(assert (=> bm!381061 m!6363526))

(assert (=> b!5330140 d!1711966))

(assert (=> b!5330112 d!1711540))

(assert (=> b!5330112 d!1711542))

(declare-fun b!5331580 () Bool)

(declare-fun e!3311499 () Bool)

(declare-fun e!3311496 () Bool)

(assert (=> b!5331580 (= e!3311499 e!3311496)))

(declare-fun res!2261398 () Bool)

(assert (=> b!5331580 (= res!2261398 (not (nullable!5166 (reg!15326 lt!2174459))))))

(assert (=> b!5331580 (=> (not res!2261398) (not e!3311496))))

(declare-fun b!5331581 () Bool)

(declare-fun e!3311500 () Bool)

(assert (=> b!5331581 (= e!3311500 e!3311499)))

(declare-fun c!927324 () Bool)

(assert (=> b!5331581 (= c!927324 ((_ is Star!14997) lt!2174459))))

(declare-fun b!5331582 () Bool)

(declare-fun e!3311498 () Bool)

(assert (=> b!5331582 (= e!3311499 e!3311498)))

(declare-fun c!927325 () Bool)

(assert (=> b!5331582 (= c!927325 ((_ is Union!14997) lt!2174459))))

(declare-fun d!1711976 () Bool)

(declare-fun res!2261396 () Bool)

(assert (=> d!1711976 (=> res!2261396 e!3311500)))

(assert (=> d!1711976 (= res!2261396 ((_ is ElementMatch!14997) lt!2174459))))

(assert (=> d!1711976 (= (validRegex!6733 lt!2174459) e!3311500)))

(declare-fun b!5331583 () Bool)

(declare-fun e!3311497 () Bool)

(declare-fun e!3311495 () Bool)

(assert (=> b!5331583 (= e!3311497 e!3311495)))

(declare-fun res!2261394 () Bool)

(assert (=> b!5331583 (=> (not res!2261394) (not e!3311495))))

(declare-fun call!381081 () Bool)

(assert (=> b!5331583 (= res!2261394 call!381081)))

(declare-fun call!381080 () Bool)

(declare-fun bm!381074 () Bool)

(assert (=> bm!381074 (= call!381080 (validRegex!6733 (ite c!927324 (reg!15326 lt!2174459) (ite c!927325 (regOne!30507 lt!2174459) (regOne!30506 lt!2174459)))))))

(declare-fun bm!381075 () Bool)

(declare-fun call!381079 () Bool)

(assert (=> bm!381075 (= call!381079 (validRegex!6733 (ite c!927325 (regTwo!30507 lt!2174459) (regTwo!30506 lt!2174459))))))

(declare-fun b!5331584 () Bool)

(declare-fun res!2261395 () Bool)

(assert (=> b!5331584 (=> res!2261395 e!3311497)))

(assert (=> b!5331584 (= res!2261395 (not ((_ is Concat!23842) lt!2174459)))))

(assert (=> b!5331584 (= e!3311498 e!3311497)))

(declare-fun b!5331585 () Bool)

(assert (=> b!5331585 (= e!3311496 call!381080)))

(declare-fun b!5331586 () Bool)

(declare-fun res!2261397 () Bool)

(declare-fun e!3311501 () Bool)

(assert (=> b!5331586 (=> (not res!2261397) (not e!3311501))))

(assert (=> b!5331586 (= res!2261397 call!381081)))

(assert (=> b!5331586 (= e!3311498 e!3311501)))

(declare-fun bm!381076 () Bool)

(assert (=> bm!381076 (= call!381081 call!381080)))

(declare-fun b!5331587 () Bool)

(assert (=> b!5331587 (= e!3311501 call!381079)))

(declare-fun b!5331588 () Bool)

(assert (=> b!5331588 (= e!3311495 call!381079)))

(assert (= (and d!1711976 (not res!2261396)) b!5331581))

(assert (= (and b!5331581 c!927324) b!5331580))

(assert (= (and b!5331581 (not c!927324)) b!5331582))

(assert (= (and b!5331580 res!2261398) b!5331585))

(assert (= (and b!5331582 c!927325) b!5331586))

(assert (= (and b!5331582 (not c!927325)) b!5331584))

(assert (= (and b!5331586 res!2261397) b!5331587))

(assert (= (and b!5331584 (not res!2261395)) b!5331583))

(assert (= (and b!5331583 res!2261394) b!5331588))

(assert (= (or b!5331587 b!5331588) bm!381075))

(assert (= (or b!5331586 b!5331583) bm!381076))

(assert (= (or b!5331585 bm!381076) bm!381074))

(declare-fun m!6365098 () Bool)

(assert (=> b!5331580 m!6365098))

(declare-fun m!6365100 () Bool)

(assert (=> bm!381074 m!6365100))

(declare-fun m!6365102 () Bool)

(assert (=> bm!381075 m!6365102))

(assert (=> d!1711356 d!1711976))

(declare-fun d!1711980 () Bool)

(declare-fun res!2261403 () Bool)

(declare-fun e!3311504 () Bool)

(assert (=> d!1711980 (=> res!2261403 e!3311504)))

(assert (=> d!1711980 (= res!2261403 ((_ is Nil!61167) lt!2174324))))

(assert (=> d!1711980 (= (forall!14415 lt!2174324 lambda!272388) e!3311504)))

(declare-fun b!5331589 () Bool)

(declare-fun e!3311506 () Bool)

(assert (=> b!5331589 (= e!3311504 e!3311506)))

(declare-fun res!2261404 () Bool)

(assert (=> b!5331589 (=> (not res!2261404) (not e!3311506))))

(assert (=> b!5331589 (= res!2261404 (dynLambda!24187 lambda!272388 (h!67615 lt!2174324)))))

(declare-fun b!5331590 () Bool)

(assert (=> b!5331590 (= e!3311506 (forall!14415 (t!374506 lt!2174324) lambda!272388))))

(assert (= (and d!1711980 (not res!2261403)) b!5331589))

(assert (= (and b!5331589 res!2261404) b!5331590))

(declare-fun b_lambda!205029 () Bool)

(assert (=> (not b_lambda!205029) (not b!5331589)))

(declare-fun m!6365104 () Bool)

(assert (=> b!5331589 m!6365104))

(declare-fun m!6365106 () Bool)

(assert (=> b!5331590 m!6365106))

(assert (=> d!1711356 d!1711980))

(declare-fun d!1711982 () Bool)

(declare-fun res!2261409 () Bool)

(declare-fun e!3311511 () Bool)

(assert (=> d!1711982 (=> res!2261409 e!3311511)))

(assert (=> d!1711982 (= res!2261409 ((_ is Nil!61168) lt!2174315))))

(assert (=> d!1711982 (= (forall!14417 lt!2174315 lambda!272399) e!3311511)))

(declare-fun b!5331605 () Bool)

(declare-fun e!3311512 () Bool)

(assert (=> b!5331605 (= e!3311511 e!3311512)))

(declare-fun res!2261410 () Bool)

(assert (=> b!5331605 (=> (not res!2261410) (not e!3311512))))

(assert (=> b!5331605 (= res!2261410 (dynLambda!24191 lambda!272399 (h!67616 lt!2174315)))))

(declare-fun b!5331606 () Bool)

(assert (=> b!5331606 (= e!3311512 (forall!14417 (t!374507 lt!2174315) lambda!272399))))

(assert (= (and d!1711982 (not res!2261409)) b!5331605))

(assert (= (and b!5331605 res!2261410) b!5331606))

(declare-fun b_lambda!205031 () Bool)

(assert (=> (not b_lambda!205031) (not b!5331605)))

(declare-fun m!6365108 () Bool)

(assert (=> b!5331605 m!6365108))

(declare-fun m!6365110 () Bool)

(assert (=> b!5331606 m!6365110))

(assert (=> b!5330204 d!1711982))

(declare-fun d!1711984 () Bool)

(assert (=> d!1711984 (= (isEmpty!33135 lt!2174307) ((_ is Nil!61167) lt!2174307))))

(assert (=> b!5330132 d!1711984))

(declare-fun b!5331607 () Bool)

(declare-fun e!3311515 () (InoxSet Context!8762))

(declare-fun call!381084 () (InoxSet Context!8762))

(assert (=> b!5331607 (= e!3311515 call!381084)))

(declare-fun bm!381078 () Bool)

(declare-fun call!381085 () (InoxSet Context!8762))

(declare-fun call!381083 () (InoxSet Context!8762))

(assert (=> bm!381078 (= call!381085 call!381083)))

(declare-fun b!5331608 () Bool)

(declare-fun e!3311516 () (InoxSet Context!8762))

(assert (=> b!5331608 (= e!3311516 call!381084)))

(declare-fun bm!381079 () Bool)

(declare-fun c!927330 () Bool)

(declare-fun c!927333 () Bool)

(declare-fun c!927332 () Bool)

(declare-fun call!381086 () List!61291)

(assert (=> bm!381079 (= call!381083 (derivationStepZipperDown!445 (ite c!927330 (regTwo!30507 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (ite c!927332 (regTwo!30506 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (ite c!927333 (regOne!30506 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (reg!15326 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))) (ite (or c!927330 c!927332) (ite c!926849 lt!2174316 (Context!8763 call!380808)) (Context!8763 call!381086)) (h!67614 s!2326)))))

(declare-fun b!5331609 () Bool)

(declare-fun e!3311518 () Bool)

(assert (=> b!5331609 (= e!3311518 (nullable!5166 (regOne!30506 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun b!5331610 () Bool)

(assert (=> b!5331610 (= c!927332 e!3311518)))

(declare-fun res!2261411 () Bool)

(assert (=> b!5331610 (=> (not res!2261411) (not e!3311518))))

(assert (=> b!5331610 (= res!2261411 ((_ is Concat!23842) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun e!3311517 () (InoxSet Context!8762))

(declare-fun e!3311514 () (InoxSet Context!8762))

(assert (=> b!5331610 (= e!3311517 e!3311514)))

(declare-fun b!5331611 () Bool)

(assert (=> b!5331611 (= e!3311515 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!381080 () Bool)

(assert (=> bm!381080 (= call!381084 call!381085)))

(declare-fun call!381087 () List!61291)

(declare-fun call!381088 () (InoxSet Context!8762))

(declare-fun bm!381081 () Bool)

(assert (=> bm!381081 (= call!381088 (derivationStepZipperDown!445 (ite c!927330 (regOne!30507 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (regOne!30506 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))) (ite c!927330 (ite c!926849 lt!2174316 (Context!8763 call!380808)) (Context!8763 call!381087)) (h!67614 s!2326)))))

(declare-fun b!5331612 () Bool)

(assert (=> b!5331612 (= e!3311514 ((_ map or) call!381088 call!381085))))

(declare-fun bm!381082 () Bool)

(assert (=> bm!381082 (= call!381087 ($colon$colon!1404 (exprs!4881 (ite c!926849 lt!2174316 (Context!8763 call!380808))) (ite (or c!927332 c!927333) (regTwo!30506 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun b!5331613 () Bool)

(declare-fun c!927331 () Bool)

(assert (=> b!5331613 (= c!927331 ((_ is Star!14997) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(assert (=> b!5331613 (= e!3311516 e!3311515)))

(declare-fun b!5331614 () Bool)

(declare-fun e!3311513 () (InoxSet Context!8762))

(assert (=> b!5331614 (= e!3311513 e!3311517)))

(assert (=> b!5331614 (= c!927330 ((_ is Union!14997) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331616 () Bool)

(assert (=> b!5331616 (= e!3311513 (store ((as const (Array Context!8762 Bool)) false) (ite c!926849 lt!2174316 (Context!8763 call!380808)) true))))

(declare-fun b!5331617 () Bool)

(assert (=> b!5331617 (= e!3311514 e!3311516)))

(assert (=> b!5331617 (= c!927333 ((_ is Concat!23842) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun bm!381083 () Bool)

(assert (=> bm!381083 (= call!381086 call!381087)))

(declare-fun b!5331615 () Bool)

(assert (=> b!5331615 (= e!3311517 ((_ map or) call!381088 call!381083))))

(declare-fun d!1711986 () Bool)

(declare-fun c!927329 () Bool)

(assert (=> d!1711986 (= c!927329 (and ((_ is ElementMatch!14997) (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (= (c!926649 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))) (h!67614 s!2326))))))

(assert (=> d!1711986 (= (derivationStepZipperDown!445 (ite c!926849 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))) (ite c!926849 lt!2174316 (Context!8763 call!380808)) (h!67614 s!2326)) e!3311513)))

(assert (= (and d!1711986 c!927329) b!5331616))

(assert (= (and d!1711986 (not c!927329)) b!5331614))

(assert (= (and b!5331614 c!927330) b!5331615))

(assert (= (and b!5331614 (not c!927330)) b!5331610))

(assert (= (and b!5331610 res!2261411) b!5331609))

(assert (= (and b!5331610 c!927332) b!5331612))

(assert (= (and b!5331610 (not c!927332)) b!5331617))

(assert (= (and b!5331617 c!927333) b!5331608))

(assert (= (and b!5331617 (not c!927333)) b!5331613))

(assert (= (and b!5331613 c!927331) b!5331607))

(assert (= (and b!5331613 (not c!927331)) b!5331611))

(assert (= (or b!5331608 b!5331607) bm!381083))

(assert (= (or b!5331608 b!5331607) bm!381080))

(assert (= (or b!5331612 bm!381083) bm!381082))

(assert (= (or b!5331612 bm!381080) bm!381078))

(assert (= (or b!5331615 bm!381078) bm!381079))

(assert (= (or b!5331615 b!5331612) bm!381081))

(declare-fun m!6365120 () Bool)

(assert (=> b!5331616 m!6365120))

(declare-fun m!6365122 () Bool)

(assert (=> b!5331609 m!6365122))

(declare-fun m!6365124 () Bool)

(assert (=> bm!381081 m!6365124))

(declare-fun m!6365128 () Bool)

(assert (=> bm!381082 m!6365128))

(declare-fun m!6365136 () Bool)

(assert (=> bm!381079 m!6365136))

(assert (=> bm!380802 d!1711986))

(declare-fun b!5331628 () Bool)

(declare-fun e!3311528 () Bool)

(declare-fun e!3311525 () Bool)

(assert (=> b!5331628 (= e!3311528 e!3311525)))

(declare-fun res!2261416 () Bool)

(assert (=> b!5331628 (= res!2261416 (not (nullable!5166 (reg!15326 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))))

(assert (=> b!5331628 (=> (not res!2261416) (not e!3311525))))

(declare-fun b!5331629 () Bool)

(declare-fun e!3311529 () Bool)

(assert (=> b!5331629 (= e!3311529 e!3311528)))

(declare-fun c!927339 () Bool)

(assert (=> b!5331629 (= c!927339 ((_ is Star!14997) (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))

(declare-fun b!5331630 () Bool)

(declare-fun e!3311527 () Bool)

(assert (=> b!5331630 (= e!3311528 e!3311527)))

(declare-fun c!927340 () Bool)

(assert (=> b!5331630 (= c!927340 ((_ is Union!14997) (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))

(declare-fun d!1711992 () Bool)

(declare-fun res!2261414 () Bool)

(assert (=> d!1711992 (=> res!2261414 e!3311529)))

(assert (=> d!1711992 (= res!2261414 ((_ is ElementMatch!14997) (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))

(assert (=> d!1711992 (= (validRegex!6733 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))) e!3311529)))

(declare-fun b!5331631 () Bool)

(declare-fun e!3311526 () Bool)

(declare-fun e!3311524 () Bool)

(assert (=> b!5331631 (= e!3311526 e!3311524)))

(declare-fun res!2261412 () Bool)

(assert (=> b!5331631 (=> (not res!2261412) (not e!3311524))))

(declare-fun call!381095 () Bool)

(assert (=> b!5331631 (= res!2261412 call!381095)))

(declare-fun call!381094 () Bool)

(declare-fun bm!381088 () Bool)

(assert (=> bm!381088 (= call!381094 (validRegex!6733 (ite c!927339 (reg!15326 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))) (ite c!927340 (regOne!30507 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))) (regOne!30506 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292)))))))))

(declare-fun call!381093 () Bool)

(declare-fun bm!381089 () Bool)

(assert (=> bm!381089 (= call!381093 (validRegex!6733 (ite c!927340 (regTwo!30507 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))) (regTwo!30506 (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292))))))))

(declare-fun b!5331632 () Bool)

(declare-fun res!2261413 () Bool)

(assert (=> b!5331632 (=> res!2261413 e!3311526)))

(assert (=> b!5331632 (= res!2261413 (not ((_ is Concat!23842) (ite c!926831 (regTwo!30507 r!7292) (regTwo!30506 r!7292)))))))

(assert (=> b!5331632 (= e!3311527 e!3311526)))

(declare-fun b!5331633 () Bool)

(assert (=> b!5331633 (= e!3311525 call!381094)))

(declare-fun b!5331634 () Bool)

(declare-fun res!2261415 () Bool)

(declare-fun e!3311530 () Bool)

(assert (=> b!5331634 (=> (not res!2261415) (not e!3311530))))

(assert (=> b!5331634 (= res!2261415 call!381095)))

(assert (=> b!5331634 (= e!3311527 e!3311530)))

(declare-fun bm!381090 () Bool)

(assert (=> bm!381090 (= call!381095 call!381094)))

(declare-fun b!5331635 () Bool)

(assert (=> b!5331635 (= e!3311530 call!381093)))

(declare-fun b!5331636 () Bool)

(assert (=> b!5331636 (= e!3311524 call!381093)))

(assert (= (and d!1711992 (not res!2261414)) b!5331629))

(assert (= (and b!5331629 c!927339) b!5331628))

(assert (= (and b!5331629 (not c!927339)) b!5331630))

(assert (= (and b!5331628 res!2261416) b!5331633))

(assert (= (and b!5331630 c!927340) b!5331634))

(assert (= (and b!5331630 (not c!927340)) b!5331632))

(assert (= (and b!5331634 res!2261415) b!5331635))

(assert (= (and b!5331632 (not res!2261413)) b!5331631))

(assert (= (and b!5331631 res!2261412) b!5331636))

(assert (= (or b!5331635 b!5331636) bm!381089))

(assert (= (or b!5331634 b!5331631) bm!381090))

(assert (= (or b!5331633 bm!381090) bm!381088))

(declare-fun m!6365138 () Bool)

(assert (=> b!5331628 m!6365138))

(declare-fun m!6365140 () Bool)

(assert (=> bm!381088 m!6365140))

(declare-fun m!6365142 () Bool)

(assert (=> bm!381089 m!6365142))

(assert (=> bm!380782 d!1711992))

(declare-fun d!1712008 () Bool)

(assert (=> d!1712008 (= (nullable!5166 (h!67615 (exprs!4881 lt!2174326))) (nullableFct!1506 (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun bs!1236329 () Bool)

(assert (= bs!1236329 d!1712008))

(declare-fun m!6365144 () Bool)

(assert (=> bs!1236329 m!6365144))

(assert (=> b!5329597 d!1712008))

(assert (=> b!5329926 d!1711378))

(declare-fun d!1712010 () Bool)

(assert (=> d!1712010 (= (nullable!5166 r!7292) (nullableFct!1506 r!7292))))

(declare-fun bs!1236330 () Bool)

(assert (= bs!1236330 d!1712010))

(declare-fun m!6365146 () Bool)

(assert (=> bs!1236330 m!6365146))

(assert (=> b!5330094 d!1712010))

(declare-fun d!1712012 () Bool)

(assert (=> d!1712012 (= (Exists!2178 (ite c!926898 lambda!272389 lambda!272390)) (choose!39916 (ite c!926898 lambda!272389 lambda!272390)))))

(declare-fun bs!1236331 () Bool)

(assert (= bs!1236331 d!1712012))

(declare-fun m!6365148 () Bool)

(assert (=> bs!1236331 m!6365148))

(assert (=> bm!380817 d!1712012))

(assert (=> d!1711344 d!1711606))

(declare-fun d!1712014 () Bool)

(assert (=> d!1712014 true))

(assert (=> d!1712014 true))

(declare-fun res!2261418 () Bool)

(assert (=> d!1712014 (= (choose!39916 lambda!272300) res!2261418)))

(assert (=> d!1711214 d!1712014))

(declare-fun d!1712016 () Bool)

(assert (=> d!1712016 (= (isEmpty!33135 lt!2174324) ((_ is Nil!61167) lt!2174324))))

(assert (=> b!5330153 d!1712016))

(declare-fun d!1712018 () Bool)

(declare-fun c!927343 () Bool)

(assert (=> d!1712018 (= c!927343 (isEmpty!33139 (tail!10523 (t!374505 s!2326))))))

(declare-fun e!3311534 () Bool)

(assert (=> d!1712018 (= (matchZipper!1241 (derivationStepZipper!1238 lt!2174309 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))) e!3311534)))

(declare-fun b!5331642 () Bool)

(assert (=> b!5331642 (= e!3311534 (nullableZipper!1354 (derivationStepZipper!1238 lt!2174309 (head!11426 (t!374505 s!2326)))))))

(declare-fun b!5331643 () Bool)

(assert (=> b!5331643 (= e!3311534 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 lt!2174309 (head!11426 (t!374505 s!2326))) (head!11426 (tail!10523 (t!374505 s!2326)))) (tail!10523 (tail!10523 (t!374505 s!2326)))))))

(assert (= (and d!1712018 c!927343) b!5331642))

(assert (= (and d!1712018 (not c!927343)) b!5331643))

(assert (=> d!1712018 m!6363214))

(assert (=> d!1712018 m!6364080))

(assert (=> b!5331642 m!6363678))

(declare-fun m!6365156 () Bool)

(assert (=> b!5331642 m!6365156))

(assert (=> b!5331643 m!6363214))

(assert (=> b!5331643 m!6364084))

(assert (=> b!5331643 m!6363678))

(assert (=> b!5331643 m!6364084))

(declare-fun m!6365158 () Bool)

(assert (=> b!5331643 m!6365158))

(assert (=> b!5331643 m!6363214))

(assert (=> b!5331643 m!6364088))

(assert (=> b!5331643 m!6365158))

(assert (=> b!5331643 m!6364088))

(declare-fun m!6365160 () Bool)

(assert (=> b!5331643 m!6365160))

(assert (=> b!5330195 d!1712018))

(declare-fun bs!1236332 () Bool)

(declare-fun d!1712024 () Bool)

(assert (= bs!1236332 (and d!1712024 d!1711902)))

(declare-fun lambda!272511 () Int)

(assert (=> bs!1236332 (= lambda!272511 lambda!272497)))

(declare-fun bs!1236333 () Bool)

(assert (= bs!1236333 (and d!1712024 d!1711192)))

(assert (=> bs!1236333 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272511 lambda!272339))))

(declare-fun bs!1236334 () Bool)

(assert (= bs!1236334 (and d!1712024 d!1711584)))

(assert (=> bs!1236334 (= lambda!272511 lambda!272439)))

(declare-fun bs!1236335 () Bool)

(assert (= bs!1236335 (and d!1712024 b!5329326)))

(assert (=> bs!1236335 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272511 lambda!272302))))

(declare-fun bs!1236336 () Bool)

(assert (= bs!1236336 (and d!1712024 d!1711724)))

(assert (=> bs!1236336 (= lambda!272511 lambda!272469)))

(assert (=> d!1712024 true))

(assert (=> d!1712024 (= (derivationStepZipper!1238 lt!2174309 (head!11426 (t!374505 s!2326))) (flatMap!724 lt!2174309 lambda!272511))))

(declare-fun bs!1236337 () Bool)

(assert (= bs!1236337 d!1712024))

(declare-fun m!6365164 () Bool)

(assert (=> bs!1236337 m!6365164))

(assert (=> b!5330195 d!1712024))

(assert (=> b!5330195 d!1711586))

(assert (=> b!5330195 d!1711588))

(declare-fun d!1712028 () Bool)

(assert (=> d!1712028 (= (Exists!2178 lambda!272368) (choose!39916 lambda!272368))))

(declare-fun bs!1236338 () Bool)

(assert (= bs!1236338 d!1712028))

(declare-fun m!6365170 () Bool)

(assert (=> bs!1236338 m!6365170))

(assert (=> d!1711262 d!1712028))

(declare-fun d!1712032 () Bool)

(assert (=> d!1712032 (= (Exists!2178 lambda!272369) (choose!39916 lambda!272369))))

(declare-fun bs!1236339 () Bool)

(assert (= bs!1236339 d!1712032))

(declare-fun m!6365172 () Bool)

(assert (=> bs!1236339 m!6365172))

(assert (=> d!1711262 d!1712032))

(declare-fun bs!1236349 () Bool)

(declare-fun d!1712034 () Bool)

(assert (= bs!1236349 (and d!1712034 b!5329333)))

(declare-fun lambda!272517 () Int)

(assert (=> bs!1236349 (not (= lambda!272517 lambda!272301))))

(declare-fun bs!1236351 () Bool)

(assert (= bs!1236351 (and d!1712034 b!5330177)))

(assert (=> bs!1236351 (not (= lambda!272517 lambda!272389))))

(declare-fun bs!1236353 () Bool)

(assert (= bs!1236353 (and d!1712034 b!5331320)))

(assert (=> bs!1236353 (not (= lambda!272517 lambda!272491))))

(declare-fun bs!1236356 () Bool)

(assert (= bs!1236356 (and d!1712034 b!5330147)))

(assert (=> bs!1236356 (not (= lambda!272517 lambda!272385))))

(assert (=> bs!1236349 (= lambda!272517 lambda!272300)))

(declare-fun bs!1236359 () Bool)

(assert (= bs!1236359 (and d!1712034 b!5330051)))

(assert (=> bs!1236359 (not (= lambda!272517 lambda!272377))))

(declare-fun bs!1236361 () Bool)

(assert (= bs!1236361 (and d!1712034 b!5330178)))

(assert (=> bs!1236361 (not (= lambda!272517 lambda!272390))))

(declare-fun bs!1236363 () Bool)

(assert (= bs!1236363 (and d!1712034 d!1711250)))

(assert (=> bs!1236363 (= lambda!272517 lambda!272362)))

(declare-fun bs!1236365 () Bool)

(assert (= bs!1236365 (and d!1712034 d!1711262)))

(assert (=> bs!1236365 (not (= lambda!272517 lambda!272369))))

(declare-fun bs!1236368 () Bool)

(assert (= bs!1236368 (and d!1712034 b!5331555)))

(assert (=> bs!1236368 (not (= lambda!272517 lambda!272509))))

(declare-fun bs!1236369 () Bool)

(assert (= bs!1236369 (and d!1712034 b!5331475)))

(assert (=> bs!1236369 (not (= lambda!272517 lambda!272505))))

(declare-fun bs!1236370 () Bool)

(assert (= bs!1236370 (and d!1712034 b!5330148)))

(assert (=> bs!1236370 (not (= lambda!272517 lambda!272386))))

(declare-fun bs!1236371 () Bool)

(assert (= bs!1236371 (and d!1712034 b!5331476)))

(assert (=> bs!1236371 (not (= lambda!272517 lambda!272507))))

(assert (=> bs!1236365 (= lambda!272517 lambda!272368)))

(declare-fun bs!1236372 () Bool)

(assert (= bs!1236372 (and d!1712034 b!5331556)))

(assert (=> bs!1236372 (not (= lambda!272517 lambda!272510))))

(declare-fun bs!1236373 () Bool)

(assert (= bs!1236373 (and d!1712034 d!1711336)))

(assert (=> bs!1236373 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272517 lambda!272382))))

(declare-fun bs!1236374 () Bool)

(assert (= bs!1236374 (and d!1712034 d!1711350)))

(assert (=> bs!1236374 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272517 lambda!272387))))

(assert (=> bs!1236373 (not (= lambda!272517 lambda!272383))))

(declare-fun bs!1236375 () Bool)

(assert (= bs!1236375 (and d!1712034 b!5331405)))

(assert (=> bs!1236375 (not (= lambda!272517 lambda!272495))))

(declare-fun bs!1236376 () Bool)

(assert (= bs!1236376 (and d!1712034 b!5331241)))

(assert (=> bs!1236376 (not (= lambda!272517 lambda!272481))))

(declare-fun bs!1236377 () Bool)

(assert (= bs!1236377 (and d!1712034 d!1711564)))

(assert (=> bs!1236377 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272517 lambda!272438))))

(declare-fun bs!1236378 () Bool)

(assert (= bs!1236378 (and d!1712034 b!5329319)))

(assert (=> bs!1236378 (not (= lambda!272517 lambda!272304))))

(assert (=> bs!1236378 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272517 lambda!272303))))

(declare-fun bs!1236379 () Bool)

(assert (= bs!1236379 (and d!1712034 b!5330052)))

(assert (=> bs!1236379 (not (= lambda!272517 lambda!272378))))

(declare-fun bs!1236380 () Bool)

(assert (= bs!1236380 (and d!1712034 b!5331404)))

(assert (=> bs!1236380 (not (= lambda!272517 lambda!272494))))

(declare-fun bs!1236381 () Bool)

(assert (= bs!1236381 (and d!1712034 b!5331319)))

(assert (=> bs!1236381 (not (= lambda!272517 lambda!272489))))

(declare-fun bs!1236382 () Bool)

(assert (= bs!1236382 (and d!1712034 b!5331240)))

(assert (=> bs!1236382 (not (= lambda!272517 lambda!272480))))

(assert (=> d!1712034 true))

(assert (=> d!1712034 true))

(assert (=> d!1712034 true))

(declare-fun lambda!272518 () Int)

(assert (=> bs!1236349 (= lambda!272518 lambda!272301)))

(assert (=> bs!1236351 (not (= lambda!272518 lambda!272389))))

(assert (=> bs!1236353 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regTwo!30507 lt!2174304))) (= (regTwo!30506 r!7292) (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272518 lambda!272491))))

(assert (=> bs!1236356 (not (= lambda!272518 lambda!272385))))

(assert (=> bs!1236349 (not (= lambda!272518 lambda!272300))))

(assert (=> bs!1236359 (not (= lambda!272518 lambda!272377))))

(assert (=> bs!1236363 (not (= lambda!272518 lambda!272362))))

(assert (=> bs!1236365 (= lambda!272518 lambda!272369)))

(assert (=> bs!1236368 (not (= lambda!272518 lambda!272509))))

(assert (=> bs!1236369 (not (= lambda!272518 lambda!272505))))

(assert (=> bs!1236370 (= (and (= (regOne!30506 r!7292) (regOne!30506 lt!2174318)) (= (regTwo!30506 r!7292) (regTwo!30506 lt!2174318))) (= lambda!272518 lambda!272386))))

(assert (=> bs!1236371 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30507 r!7292))) (= (regTwo!30506 r!7292) (regTwo!30506 (regOne!30507 r!7292)))) (= lambda!272518 lambda!272507))))

(assert (=> bs!1236365 (not (= lambda!272518 lambda!272368))))

(assert (=> bs!1236372 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regTwo!30507 lt!2174318))) (= (regTwo!30506 r!7292) (regTwo!30506 (regTwo!30507 lt!2174318)))) (= lambda!272518 lambda!272510))))

(assert (=> bs!1236373 (not (= lambda!272518 lambda!272382))))

(assert (=> bs!1236374 (not (= lambda!272518 lambda!272387))))

(assert (=> bs!1236373 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272518 lambda!272383))))

(assert (=> bs!1236375 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regTwo!30507 r!7292))) (= (regTwo!30506 r!7292) (regTwo!30506 (regTwo!30507 r!7292)))) (= lambda!272518 lambda!272495))))

(assert (=> bs!1236376 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 r!7292) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272518 lambda!272481))))

(assert (=> bs!1236377 (not (= lambda!272518 lambda!272438))))

(assert (=> bs!1236378 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272518 lambda!272304))))

(assert (=> bs!1236361 (= (and (= (regOne!30506 r!7292) (regOne!30506 lt!2174304)) (= (regTwo!30506 r!7292) (regTwo!30506 lt!2174304))) (= lambda!272518 lambda!272390))))

(declare-fun bs!1236383 () Bool)

(assert (= bs!1236383 d!1712034))

(assert (=> bs!1236383 (not (= lambda!272518 lambda!272517))))

(assert (=> bs!1236378 (not (= lambda!272518 lambda!272303))))

(assert (=> bs!1236379 (= lambda!272518 lambda!272378)))

(assert (=> bs!1236380 (not (= lambda!272518 lambda!272494))))

(assert (=> bs!1236381 (not (= lambda!272518 lambda!272489))))

(assert (=> bs!1236382 (not (= lambda!272518 lambda!272480))))

(assert (=> d!1712034 true))

(assert (=> d!1712034 true))

(assert (=> d!1712034 true))

(assert (=> d!1712034 (= (Exists!2178 lambda!272517) (Exists!2178 lambda!272518))))

(assert (=> d!1712034 true))

(declare-fun _$90!1159 () Unit!153506)

(assert (=> d!1712034 (= (choose!39919 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326) _$90!1159)))

(declare-fun m!6365194 () Bool)

(assert (=> bs!1236383 m!6365194))

(declare-fun m!6365196 () Bool)

(assert (=> bs!1236383 m!6365196))

(assert (=> d!1711262 d!1712034))

(assert (=> d!1711262 d!1711538))

(assert (=> b!5330185 d!1711540))

(assert (=> b!5330185 d!1711542))

(declare-fun d!1712060 () Bool)

(assert (=> d!1712060 (= (nullable!5166 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))) (nullableFct!1506 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))

(declare-fun bs!1236384 () Bool)

(assert (= bs!1236384 d!1712060))

(declare-fun m!6365198 () Bool)

(assert (=> bs!1236384 m!6365198))

(assert (=> b!5330002 d!1712060))

(declare-fun d!1712062 () Bool)

(declare-fun c!927345 () Bool)

(assert (=> d!1712062 (= c!927345 (isEmpty!33139 (tail!10523 s!2326)))))

(declare-fun e!3311575 () Bool)

(assert (=> d!1712062 (= (matchZipper!1241 (derivationStepZipper!1238 lt!2174322 (head!11426 s!2326)) (tail!10523 s!2326)) e!3311575)))

(declare-fun b!5331770 () Bool)

(assert (=> b!5331770 (= e!3311575 (nullableZipper!1354 (derivationStepZipper!1238 lt!2174322 (head!11426 s!2326))))))

(declare-fun b!5331771 () Bool)

(assert (=> b!5331771 (= e!3311575 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 lt!2174322 (head!11426 s!2326)) (head!11426 (tail!10523 s!2326))) (tail!10523 (tail!10523 s!2326))))))

(assert (= (and d!1712062 c!927345) b!5331770))

(assert (= (and d!1712062 (not c!927345)) b!5331771))

(assert (=> d!1712062 m!6363532))

(assert (=> d!1712062 m!6363536))

(assert (=> b!5331770 m!6363588))

(declare-fun m!6365200 () Bool)

(assert (=> b!5331770 m!6365200))

(assert (=> b!5331771 m!6363532))

(assert (=> b!5331771 m!6364152))

(assert (=> b!5331771 m!6363588))

(assert (=> b!5331771 m!6364152))

(declare-fun m!6365202 () Bool)

(assert (=> b!5331771 m!6365202))

(assert (=> b!5331771 m!6363532))

(assert (=> b!5331771 m!6364156))

(assert (=> b!5331771 m!6365202))

(assert (=> b!5331771 m!6364156))

(declare-fun m!6365204 () Bool)

(assert (=> b!5331771 m!6365204))

(assert (=> b!5330128 d!1712062))

(declare-fun bs!1236385 () Bool)

(declare-fun d!1712064 () Bool)

(assert (= bs!1236385 (and d!1712064 d!1711192)))

(declare-fun lambda!272519 () Int)

(assert (=> bs!1236385 (= (= (head!11426 s!2326) (h!67614 s!2326)) (= lambda!272519 lambda!272339))))

(declare-fun bs!1236386 () Bool)

(assert (= bs!1236386 (and d!1712064 d!1711584)))

(assert (=> bs!1236386 (= (= (head!11426 s!2326) (head!11426 (t!374505 s!2326))) (= lambda!272519 lambda!272439))))

(declare-fun bs!1236387 () Bool)

(assert (= bs!1236387 (and d!1712064 d!1712024)))

(assert (=> bs!1236387 (= (= (head!11426 s!2326) (head!11426 (t!374505 s!2326))) (= lambda!272519 lambda!272511))))

(declare-fun bs!1236388 () Bool)

(assert (= bs!1236388 (and d!1712064 d!1711902)))

(assert (=> bs!1236388 (= (= (head!11426 s!2326) (head!11426 (t!374505 s!2326))) (= lambda!272519 lambda!272497))))

(declare-fun bs!1236389 () Bool)

(assert (= bs!1236389 (and d!1712064 b!5329326)))

(assert (=> bs!1236389 (= (= (head!11426 s!2326) (h!67614 s!2326)) (= lambda!272519 lambda!272302))))

(declare-fun bs!1236390 () Bool)

(assert (= bs!1236390 (and d!1712064 d!1711724)))

(assert (=> bs!1236390 (= (= (head!11426 s!2326) (head!11426 (t!374505 s!2326))) (= lambda!272519 lambda!272469))))

(assert (=> d!1712064 true))

(assert (=> d!1712064 (= (derivationStepZipper!1238 lt!2174322 (head!11426 s!2326)) (flatMap!724 lt!2174322 lambda!272519))))

(declare-fun bs!1236391 () Bool)

(assert (= bs!1236391 d!1712064))

(declare-fun m!6365206 () Bool)

(assert (=> bs!1236391 m!6365206))

(assert (=> b!5330128 d!1712064))

(assert (=> b!5330128 d!1711520))

(assert (=> b!5330128 d!1711542))

(declare-fun b!5331788 () Bool)

(declare-fun e!3311587 () Int)

(assert (=> b!5331788 (= e!3311587 1)))

(declare-fun bm!381098 () Bool)

(declare-fun call!381104 () Int)

(declare-fun call!381105 () Int)

(assert (=> bm!381098 (= call!381104 call!381105)))

(declare-fun b!5331789 () Bool)

(declare-fun e!3311585 () Int)

(assert (=> b!5331789 (= e!3311585 (+ 1 call!381105))))

(declare-fun d!1712066 () Bool)

(declare-fun lt!2174622 () Int)

(assert (=> d!1712066 (> lt!2174622 0)))

(assert (=> d!1712066 (= lt!2174622 e!3311587)))

(declare-fun c!927354 () Bool)

(assert (=> d!1712066 (= c!927354 ((_ is ElementMatch!14997) (h!67615 (exprs!4881 lt!2174326))))))

(assert (=> d!1712066 (= (regexDepthTotal!59 (h!67615 (exprs!4881 lt!2174326))) lt!2174622)))

(declare-fun b!5331790 () Bool)

(assert (=> b!5331790 (= e!3311587 e!3311585)))

(declare-fun c!927356 () Bool)

(assert (=> b!5331790 (= c!927356 ((_ is Star!14997) (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun b!5331791 () Bool)

(declare-fun e!3311586 () Int)

(declare-fun e!3311584 () Int)

(assert (=> b!5331791 (= e!3311586 e!3311584)))

(declare-fun c!927355 () Bool)

(assert (=> b!5331791 (= c!927355 ((_ is Concat!23842) (h!67615 (exprs!4881 lt!2174326))))))

(declare-fun bm!381099 () Bool)

(declare-fun c!927357 () Bool)

(assert (=> bm!381099 (= call!381105 (regexDepthTotal!59 (ite c!927356 (reg!15326 (h!67615 (exprs!4881 lt!2174326))) (ite c!927357 (regOne!30507 (h!67615 (exprs!4881 lt!2174326))) (regOne!30506 (h!67615 (exprs!4881 lt!2174326)))))))))

(declare-fun b!5331792 () Bool)

(declare-fun call!381103 () Int)

(assert (=> b!5331792 (= e!3311586 (+ 1 call!381104 call!381103))))

(declare-fun b!5331793 () Bool)

(assert (=> b!5331793 (= c!927357 ((_ is Union!14997) (h!67615 (exprs!4881 lt!2174326))))))

(assert (=> b!5331793 (= e!3311585 e!3311586)))

(declare-fun b!5331794 () Bool)

(assert (=> b!5331794 (= e!3311584 (+ 1 call!381104 call!381103))))

(declare-fun bm!381100 () Bool)

(assert (=> bm!381100 (= call!381103 (regexDepthTotal!59 (ite c!927357 (regTwo!30507 (h!67615 (exprs!4881 lt!2174326))) (regTwo!30506 (h!67615 (exprs!4881 lt!2174326))))))))

(declare-fun b!5331795 () Bool)

(assert (=> b!5331795 (= e!3311584 1)))

(assert (= (and d!1712066 c!927354) b!5331788))

(assert (= (and d!1712066 (not c!927354)) b!5331790))

(assert (= (and b!5331790 c!927356) b!5331789))

(assert (= (and b!5331790 (not c!927356)) b!5331793))

(assert (= (and b!5331793 c!927357) b!5331792))

(assert (= (and b!5331793 (not c!927357)) b!5331791))

(assert (= (and b!5331791 c!927355) b!5331794))

(assert (= (and b!5331791 (not c!927355)) b!5331795))

(assert (= (or b!5331792 b!5331794) bm!381100))

(assert (= (or b!5331792 b!5331794) bm!381098))

(assert (= (or b!5331789 bm!381098) bm!381099))

(declare-fun m!6365208 () Bool)

(assert (=> bm!381099 m!6365208))

(declare-fun m!6365210 () Bool)

(assert (=> bm!381100 m!6365210))

(assert (=> b!5330266 d!1712066))

(declare-fun d!1712068 () Bool)

(declare-fun lt!2174623 () Int)

(assert (=> d!1712068 (>= lt!2174623 0)))

(declare-fun e!3311588 () Int)

(assert (=> d!1712068 (= lt!2174623 e!3311588)))

(declare-fun c!927358 () Bool)

(assert (=> d!1712068 (= c!927358 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326))))))))

(assert (=> d!1712068 (= (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))) lt!2174623)))

(declare-fun b!5331796 () Bool)

(assert (=> b!5331796 (= e!3311588 (+ (regexDepthTotal!59 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))))) (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 lt!2174326)))))))))))

(declare-fun b!5331797 () Bool)

(assert (=> b!5331797 (= e!3311588 1)))

(assert (= (and d!1712068 c!927358) b!5331796))

(assert (= (and d!1712068 (not c!927358)) b!5331797))

(declare-fun m!6365212 () Bool)

(assert (=> b!5331796 m!6365212))

(declare-fun m!6365214 () Bool)

(assert (=> b!5331796 m!6365214))

(assert (=> b!5330266 d!1712068))

(assert (=> d!1711250 d!1711220))

(assert (=> d!1711250 d!1711538))

(assert (=> d!1711250 d!1711292))

(declare-fun d!1712070 () Bool)

(assert (=> d!1712070 (= (Exists!2178 lambda!272362) (choose!39916 lambda!272362))))

(declare-fun bs!1236392 () Bool)

(assert (= bs!1236392 d!1712070))

(declare-fun m!6365216 () Bool)

(assert (=> bs!1236392 m!6365216))

(assert (=> d!1711250 d!1712070))

(declare-fun bs!1236393 () Bool)

(declare-fun d!1712072 () Bool)

(assert (= bs!1236393 (and d!1712072 b!5329333)))

(declare-fun lambda!272520 () Int)

(assert (=> bs!1236393 (not (= lambda!272520 lambda!272301))))

(declare-fun bs!1236394 () Bool)

(assert (= bs!1236394 (and d!1712072 b!5330177)))

(assert (=> bs!1236394 (not (= lambda!272520 lambda!272389))))

(declare-fun bs!1236395 () Bool)

(assert (= bs!1236395 (and d!1712072 b!5331320)))

(assert (=> bs!1236395 (not (= lambda!272520 lambda!272491))))

(declare-fun bs!1236396 () Bool)

(assert (= bs!1236396 (and d!1712072 b!5330147)))

(assert (=> bs!1236396 (not (= lambda!272520 lambda!272385))))

(assert (=> bs!1236393 (= lambda!272520 lambda!272300)))

(declare-fun bs!1236397 () Bool)

(assert (= bs!1236397 (and d!1712072 b!5330051)))

(assert (=> bs!1236397 (not (= lambda!272520 lambda!272377))))

(declare-fun bs!1236398 () Bool)

(assert (= bs!1236398 (and d!1712072 d!1712034)))

(assert (=> bs!1236398 (not (= lambda!272520 lambda!272518))))

(declare-fun bs!1236399 () Bool)

(assert (= bs!1236399 (and d!1712072 d!1711250)))

(assert (=> bs!1236399 (= lambda!272520 lambda!272362)))

(declare-fun bs!1236400 () Bool)

(assert (= bs!1236400 (and d!1712072 d!1711262)))

(assert (=> bs!1236400 (not (= lambda!272520 lambda!272369))))

(declare-fun bs!1236401 () Bool)

(assert (= bs!1236401 (and d!1712072 b!5331555)))

(assert (=> bs!1236401 (not (= lambda!272520 lambda!272509))))

(declare-fun bs!1236402 () Bool)

(assert (= bs!1236402 (and d!1712072 b!5331475)))

(assert (=> bs!1236402 (not (= lambda!272520 lambda!272505))))

(declare-fun bs!1236403 () Bool)

(assert (= bs!1236403 (and d!1712072 b!5330148)))

(assert (=> bs!1236403 (not (= lambda!272520 lambda!272386))))

(declare-fun bs!1236404 () Bool)

(assert (= bs!1236404 (and d!1712072 b!5331476)))

(assert (=> bs!1236404 (not (= lambda!272520 lambda!272507))))

(assert (=> bs!1236400 (= lambda!272520 lambda!272368)))

(declare-fun bs!1236405 () Bool)

(assert (= bs!1236405 (and d!1712072 b!5331556)))

(assert (=> bs!1236405 (not (= lambda!272520 lambda!272510))))

(declare-fun bs!1236406 () Bool)

(assert (= bs!1236406 (and d!1712072 d!1711336)))

(assert (=> bs!1236406 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272520 lambda!272382))))

(declare-fun bs!1236407 () Bool)

(assert (= bs!1236407 (and d!1712072 d!1711350)))

(assert (=> bs!1236407 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272520 lambda!272387))))

(assert (=> bs!1236406 (not (= lambda!272520 lambda!272383))))

(declare-fun bs!1236408 () Bool)

(assert (= bs!1236408 (and d!1712072 b!5331405)))

(assert (=> bs!1236408 (not (= lambda!272520 lambda!272495))))

(declare-fun bs!1236409 () Bool)

(assert (= bs!1236409 (and d!1712072 b!5331241)))

(assert (=> bs!1236409 (not (= lambda!272520 lambda!272481))))

(declare-fun bs!1236410 () Bool)

(assert (= bs!1236410 (and d!1712072 d!1711564)))

(assert (=> bs!1236410 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272520 lambda!272438))))

(declare-fun bs!1236411 () Bool)

(assert (= bs!1236411 (and d!1712072 b!5329319)))

(assert (=> bs!1236411 (not (= lambda!272520 lambda!272304))))

(declare-fun bs!1236412 () Bool)

(assert (= bs!1236412 (and d!1712072 b!5330178)))

(assert (=> bs!1236412 (not (= lambda!272520 lambda!272390))))

(assert (=> bs!1236398 (= lambda!272520 lambda!272517)))

(assert (=> bs!1236411 (= (and (= (regOne!30506 r!7292) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 r!7292) lt!2174318)) (= lambda!272520 lambda!272303))))

(declare-fun bs!1236413 () Bool)

(assert (= bs!1236413 (and d!1712072 b!5330052)))

(assert (=> bs!1236413 (not (= lambda!272520 lambda!272378))))

(declare-fun bs!1236414 () Bool)

(assert (= bs!1236414 (and d!1712072 b!5331404)))

(assert (=> bs!1236414 (not (= lambda!272520 lambda!272494))))

(declare-fun bs!1236415 () Bool)

(assert (= bs!1236415 (and d!1712072 b!5331319)))

(assert (=> bs!1236415 (not (= lambda!272520 lambda!272489))))

(declare-fun bs!1236416 () Bool)

(assert (= bs!1236416 (and d!1712072 b!5331240)))

(assert (=> bs!1236416 (not (= lambda!272520 lambda!272480))))

(assert (=> d!1712072 true))

(assert (=> d!1712072 true))

(assert (=> d!1712072 true))

(assert (=> d!1712072 (= (isDefined!11811 (findConcatSeparation!1522 (regOne!30506 r!7292) (regTwo!30506 r!7292) Nil!61166 s!2326 s!2326)) (Exists!2178 lambda!272520))))

(assert (=> d!1712072 true))

(declare-fun _$89!1536 () Unit!153506)

(assert (=> d!1712072 (= (choose!39918 (regOne!30506 r!7292) (regTwo!30506 r!7292) s!2326) _$89!1536)))

(declare-fun bs!1236417 () Bool)

(assert (= bs!1236417 d!1712072))

(assert (=> bs!1236417 m!6362912))

(assert (=> bs!1236417 m!6362912))

(assert (=> bs!1236417 m!6362914))

(declare-fun m!6365218 () Bool)

(assert (=> bs!1236417 m!6365218))

(assert (=> d!1711250 d!1712072))

(declare-fun d!1712074 () Bool)

(assert (=> d!1712074 (= (nullable!5166 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))) (nullableFct!1506 (h!67615 (exprs!4881 (Context!8763 (Cons!61167 (h!67615 (exprs!4881 (h!67616 zl!343))) (t!374506 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun bs!1236418 () Bool)

(assert (= bs!1236418 d!1712074))

(declare-fun m!6365220 () Bool)

(assert (=> bs!1236418 m!6365220))

(assert (=> b!5329963 d!1712074))

(declare-fun b!5331798 () Bool)

(declare-fun e!3311593 () Bool)

(declare-fun e!3311590 () Bool)

(assert (=> b!5331798 (= e!3311593 e!3311590)))

(declare-fun res!2261431 () Bool)

(assert (=> b!5331798 (= res!2261431 (not (nullable!5166 (reg!15326 lt!2174446))))))

(assert (=> b!5331798 (=> (not res!2261431) (not e!3311590))))

(declare-fun b!5331799 () Bool)

(declare-fun e!3311594 () Bool)

(assert (=> b!5331799 (= e!3311594 e!3311593)))

(declare-fun c!927359 () Bool)

(assert (=> b!5331799 (= c!927359 ((_ is Star!14997) lt!2174446))))

(declare-fun b!5331800 () Bool)

(declare-fun e!3311592 () Bool)

(assert (=> b!5331800 (= e!3311593 e!3311592)))

(declare-fun c!927360 () Bool)

(assert (=> b!5331800 (= c!927360 ((_ is Union!14997) lt!2174446))))

(declare-fun d!1712076 () Bool)

(declare-fun res!2261429 () Bool)

(assert (=> d!1712076 (=> res!2261429 e!3311594)))

(assert (=> d!1712076 (= res!2261429 ((_ is ElementMatch!14997) lt!2174446))))

(assert (=> d!1712076 (= (validRegex!6733 lt!2174446) e!3311594)))

(declare-fun b!5331801 () Bool)

(declare-fun e!3311591 () Bool)

(declare-fun e!3311589 () Bool)

(assert (=> b!5331801 (= e!3311591 e!3311589)))

(declare-fun res!2261427 () Bool)

(assert (=> b!5331801 (=> (not res!2261427) (not e!3311589))))

(declare-fun call!381108 () Bool)

(assert (=> b!5331801 (= res!2261427 call!381108)))

(declare-fun call!381107 () Bool)

(declare-fun bm!381101 () Bool)

(assert (=> bm!381101 (= call!381107 (validRegex!6733 (ite c!927359 (reg!15326 lt!2174446) (ite c!927360 (regOne!30507 lt!2174446) (regOne!30506 lt!2174446)))))))

(declare-fun bm!381102 () Bool)

(declare-fun call!381106 () Bool)

(assert (=> bm!381102 (= call!381106 (validRegex!6733 (ite c!927360 (regTwo!30507 lt!2174446) (regTwo!30506 lt!2174446))))))

(declare-fun b!5331802 () Bool)

(declare-fun res!2261428 () Bool)

(assert (=> b!5331802 (=> res!2261428 e!3311591)))

(assert (=> b!5331802 (= res!2261428 (not ((_ is Concat!23842) lt!2174446)))))

(assert (=> b!5331802 (= e!3311592 e!3311591)))

(declare-fun b!5331803 () Bool)

(assert (=> b!5331803 (= e!3311590 call!381107)))

(declare-fun b!5331804 () Bool)

(declare-fun res!2261430 () Bool)

(declare-fun e!3311595 () Bool)

(assert (=> b!5331804 (=> (not res!2261430) (not e!3311595))))

(assert (=> b!5331804 (= res!2261430 call!381108)))

(assert (=> b!5331804 (= e!3311592 e!3311595)))

(declare-fun bm!381103 () Bool)

(assert (=> bm!381103 (= call!381108 call!381107)))

(declare-fun b!5331805 () Bool)

(assert (=> b!5331805 (= e!3311595 call!381106)))

(declare-fun b!5331806 () Bool)

(assert (=> b!5331806 (= e!3311589 call!381106)))

(assert (= (and d!1712076 (not res!2261429)) b!5331799))

(assert (= (and b!5331799 c!927359) b!5331798))

(assert (= (and b!5331799 (not c!927359)) b!5331800))

(assert (= (and b!5331798 res!2261431) b!5331803))

(assert (= (and b!5331800 c!927360) b!5331804))

(assert (= (and b!5331800 (not c!927360)) b!5331802))

(assert (= (and b!5331804 res!2261430) b!5331805))

(assert (= (and b!5331802 (not res!2261428)) b!5331801))

(assert (= (and b!5331801 res!2261427) b!5331806))

(assert (= (or b!5331805 b!5331806) bm!381102))

(assert (= (or b!5331804 b!5331801) bm!381103))

(assert (= (or b!5331803 bm!381103) bm!381101))

(declare-fun m!6365222 () Bool)

(assert (=> b!5331798 m!6365222))

(declare-fun m!6365224 () Bool)

(assert (=> bm!381101 m!6365224))

(declare-fun m!6365226 () Bool)

(assert (=> bm!381102 m!6365226))

(assert (=> d!1711328 d!1712076))

(assert (=> d!1711328 d!1711374))

(assert (=> d!1711328 d!1711376))

(assert (=> d!1711368 d!1711706))

(assert (=> b!5329973 d!1711310))

(declare-fun d!1712078 () Bool)

(assert (=> d!1712078 (= (nullable!5166 (h!67615 (exprs!4881 lt!2174316))) (nullableFct!1506 (h!67615 (exprs!4881 lt!2174316))))))

(declare-fun bs!1236419 () Bool)

(assert (= bs!1236419 d!1712078))

(declare-fun m!6365228 () Bool)

(assert (=> bs!1236419 m!6365228))

(assert (=> b!5329968 d!1712078))

(declare-fun d!1712080 () Bool)

(declare-fun res!2261432 () Bool)

(declare-fun e!3311596 () Bool)

(assert (=> d!1712080 (=> res!2261432 e!3311596)))

(assert (=> d!1712080 (= res!2261432 ((_ is Nil!61167) (exprs!4881 setElem!34353)))))

(assert (=> d!1712080 (= (forall!14415 (exprs!4881 setElem!34353) lambda!272381) e!3311596)))

(declare-fun b!5331807 () Bool)

(declare-fun e!3311597 () Bool)

(assert (=> b!5331807 (= e!3311596 e!3311597)))

(declare-fun res!2261433 () Bool)

(assert (=> b!5331807 (=> (not res!2261433) (not e!3311597))))

(assert (=> b!5331807 (= res!2261433 (dynLambda!24187 lambda!272381 (h!67615 (exprs!4881 setElem!34353))))))

(declare-fun b!5331808 () Bool)

(assert (=> b!5331808 (= e!3311597 (forall!14415 (t!374506 (exprs!4881 setElem!34353)) lambda!272381))))

(assert (= (and d!1712080 (not res!2261432)) b!5331807))

(assert (= (and b!5331807 res!2261433) b!5331808))

(declare-fun b_lambda!205061 () Bool)

(assert (=> (not b_lambda!205061) (not b!5331807)))

(declare-fun m!6365230 () Bool)

(assert (=> b!5331807 m!6365230))

(declare-fun m!6365232 () Bool)

(assert (=> b!5331808 m!6365232))

(assert (=> d!1711324 d!1712080))

(declare-fun d!1712082 () Bool)

(assert (=> d!1712082 (= (isEmptyLang!897 lt!2174482) ((_ is EmptyLang!14997) lt!2174482))))

(assert (=> b!5330239 d!1712082))

(declare-fun bs!1236420 () Bool)

(declare-fun d!1712084 () Bool)

(assert (= bs!1236420 (and d!1712084 b!5329319)))

(declare-fun lambda!272521 () Int)

(assert (=> bs!1236420 (= lambda!272521 lambda!272305)))

(declare-fun bs!1236421 () Bool)

(assert (= bs!1236421 (and d!1712084 d!1711380)))

(assert (=> bs!1236421 (= lambda!272521 lambda!272409)))

(declare-fun bs!1236422 () Bool)

(assert (= bs!1236422 (and d!1712084 d!1711294)))

(assert (=> bs!1236422 (= lambda!272521 lambda!272372)))

(declare-fun bs!1236423 () Bool)

(assert (= bs!1236423 (and d!1712084 d!1711862)))

(assert (=> bs!1236423 (= lambda!272521 lambda!272484)))

(declare-fun bs!1236424 () Bool)

(assert (= bs!1236424 (and d!1712084 d!1711324)))

(assert (=> bs!1236424 (= lambda!272521 lambda!272381)))

(declare-fun bs!1236425 () Bool)

(assert (= bs!1236425 (and d!1712084 d!1711356)))

(assert (=> bs!1236425 (= lambda!272521 lambda!272388)))

(declare-fun bs!1236426 () Bool)

(assert (= bs!1236426 (and d!1712084 d!1711786)))

(assert (=> bs!1236426 (= lambda!272521 lambda!272474)))

(declare-fun bs!1236427 () Bool)

(assert (= bs!1236427 (and d!1712084 b!5330869)))

(assert (=> bs!1236427 (not (= lambda!272521 lambda!272452))))

(declare-fun bs!1236428 () Bool)

(assert (= bs!1236428 (and d!1712084 d!1711872)))

(assert (=> bs!1236428 (= lambda!272521 lambda!272487)))

(declare-fun bs!1236429 () Bool)

(assert (= bs!1236429 (and d!1712084 d!1711714)))

(assert (=> bs!1236429 (= lambda!272521 lambda!272467)))

(declare-fun bs!1236430 () Bool)

(assert (= bs!1236430 (and d!1712084 d!1711374)))

(assert (=> bs!1236430 (= lambda!272521 lambda!272405)))

(declare-fun bs!1236431 () Bool)

(assert (= bs!1236431 (and d!1712084 d!1711376)))

(assert (=> bs!1236431 (= lambda!272521 lambda!272408)))

(declare-fun bs!1236432 () Bool)

(assert (= bs!1236432 (and d!1712084 d!1711864)))

(assert (=> bs!1236432 (= lambda!272521 lambda!272485)))

(declare-fun bs!1236433 () Bool)

(assert (= bs!1236433 (and d!1712084 d!1711816)))

(assert (=> bs!1236433 (= lambda!272521 lambda!272476)))

(declare-fun bs!1236434 () Bool)

(assert (= bs!1236434 (and d!1712084 b!5330871)))

(assert (=> bs!1236434 (not (= lambda!272521 lambda!272453))))

(declare-fun bs!1236435 () Bool)

(assert (= bs!1236435 (and d!1712084 d!1711346)))

(assert (=> bs!1236435 (= lambda!272521 lambda!272384)))

(assert (=> d!1712084 (= (inv!80739 (h!67616 (t!374507 zl!343))) (forall!14415 (exprs!4881 (h!67616 (t!374507 zl!343))) lambda!272521))))

(declare-fun bs!1236436 () Bool)

(assert (= bs!1236436 d!1712084))

(declare-fun m!6365234 () Bool)

(assert (=> bs!1236436 m!6365234))

(assert (=> b!5330281 d!1712084))

(declare-fun d!1712086 () Bool)

(assert (=> d!1712086 (= (isConcat!412 lt!2174453) ((_ is Concat!23842) lt!2174453))))

(assert (=> b!5330135 d!1712086))

(declare-fun d!1712088 () Bool)

(assert (=> d!1712088 true))

(assert (=> d!1712088 true))

(declare-fun res!2261434 () Bool)

(assert (=> d!1712088 (= (choose!39916 lambda!272301) res!2261434)))

(assert (=> d!1711248 d!1712088))

(declare-fun d!1712090 () Bool)

(assert (=> d!1712090 (= (nullable!5166 lt!2174304) (nullableFct!1506 lt!2174304))))

(declare-fun bs!1236437 () Bool)

(assert (= bs!1236437 d!1712090))

(declare-fun m!6365236 () Bool)

(assert (=> bs!1236437 m!6365236))

(assert (=> b!5330119 d!1712090))

(declare-fun d!1712092 () Bool)

(assert (=> d!1712092 (= (Exists!2178 (ite c!926863 lambda!272377 lambda!272378)) (choose!39916 (ite c!926863 lambda!272377 lambda!272378)))))

(declare-fun bs!1236438 () Bool)

(assert (= bs!1236438 d!1712092))

(declare-fun m!6365238 () Bool)

(assert (=> bs!1236438 m!6365238))

(assert (=> bm!380809 d!1712092))

(assert (=> b!5330088 d!1711520))

(declare-fun d!1712094 () Bool)

(assert (=> d!1712094 true))

(declare-fun setRes!34367 () Bool)

(assert (=> d!1712094 setRes!34367))

(declare-fun condSetEmpty!34367 () Bool)

(declare-fun res!2261437 () (InoxSet Context!8762))

(assert (=> d!1712094 (= condSetEmpty!34367 (= res!2261437 ((as const (Array Context!8762 Bool)) false)))))

(assert (=> d!1712094 (= (choose!39913 z!1189 lambda!272302) res!2261437)))

(declare-fun setIsEmpty!34367 () Bool)

(assert (=> setIsEmpty!34367 setRes!34367))

(declare-fun e!3311600 () Bool)

(declare-fun setNonEmpty!34367 () Bool)

(declare-fun setElem!34367 () Context!8762)

(declare-fun tp!1483598 () Bool)

(assert (=> setNonEmpty!34367 (= setRes!34367 (and tp!1483598 (inv!80739 setElem!34367) e!3311600))))

(declare-fun setRest!34367 () (InoxSet Context!8762))

(assert (=> setNonEmpty!34367 (= res!2261437 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) setElem!34367 true) setRest!34367))))

(declare-fun b!5331811 () Bool)

(declare-fun tp!1483599 () Bool)

(assert (=> b!5331811 (= e!3311600 tp!1483599)))

(assert (= (and d!1712094 condSetEmpty!34367) setIsEmpty!34367))

(assert (= (and d!1712094 (not condSetEmpty!34367)) setNonEmpty!34367))

(assert (= setNonEmpty!34367 b!5331811))

(declare-fun m!6365240 () Bool)

(assert (=> setNonEmpty!34367 m!6365240))

(assert (=> d!1711312 d!1712094))

(assert (=> d!1711352 d!1711338))

(assert (=> d!1711352 d!1711344))

(declare-fun d!1712096 () Bool)

(assert (=> d!1712096 (= (matchR!7182 lt!2174304 s!2326) (matchZipper!1241 lt!2174322 s!2326))))

(assert (=> d!1712096 true))

(declare-fun _$44!1408 () Unit!153506)

(assert (=> d!1712096 (= (choose!39924 lt!2174322 lt!2174315 lt!2174304 s!2326) _$44!1408)))

(declare-fun bs!1236439 () Bool)

(assert (= bs!1236439 d!1712096))

(assert (=> bs!1236439 m!6362968))

(assert (=> bs!1236439 m!6362970))

(assert (=> d!1711352 d!1712096))

(assert (=> d!1711352 d!1711594))

(declare-fun b!5331813 () Bool)

(declare-fun e!3311601 () List!61290)

(assert (=> b!5331813 (= e!3311601 (Cons!61166 (h!67614 (_1!35499 (get!21038 lt!2174392))) (++!13334 (t!374505 (_1!35499 (get!21038 lt!2174392))) (_2!35499 (get!21038 lt!2174392)))))))

(declare-fun b!5331812 () Bool)

(assert (=> b!5331812 (= e!3311601 (_2!35499 (get!21038 lt!2174392)))))

(declare-fun b!5331814 () Bool)

(declare-fun res!2261439 () Bool)

(declare-fun e!3311602 () Bool)

(assert (=> b!5331814 (=> (not res!2261439) (not e!3311602))))

(declare-fun lt!2174624 () List!61290)

(assert (=> b!5331814 (= res!2261439 (= (size!39771 lt!2174624) (+ (size!39771 (_1!35499 (get!21038 lt!2174392))) (size!39771 (_2!35499 (get!21038 lt!2174392))))))))

(declare-fun d!1712098 () Bool)

(assert (=> d!1712098 e!3311602))

(declare-fun res!2261438 () Bool)

(assert (=> d!1712098 (=> (not res!2261438) (not e!3311602))))

(assert (=> d!1712098 (= res!2261438 (= (content!10911 lt!2174624) ((_ map or) (content!10911 (_1!35499 (get!21038 lt!2174392))) (content!10911 (_2!35499 (get!21038 lt!2174392))))))))

(assert (=> d!1712098 (= lt!2174624 e!3311601)))

(declare-fun c!927361 () Bool)

(assert (=> d!1712098 (= c!927361 ((_ is Nil!61166) (_1!35499 (get!21038 lt!2174392))))))

(assert (=> d!1712098 (= (++!13334 (_1!35499 (get!21038 lt!2174392)) (_2!35499 (get!21038 lt!2174392))) lt!2174624)))

(declare-fun b!5331815 () Bool)

(assert (=> b!5331815 (= e!3311602 (or (not (= (_2!35499 (get!21038 lt!2174392)) Nil!61166)) (= lt!2174624 (_1!35499 (get!21038 lt!2174392)))))))

(assert (= (and d!1712098 c!927361) b!5331812))

(assert (= (and d!1712098 (not c!927361)) b!5331813))

(assert (= (and d!1712098 res!2261438) b!5331814))

(assert (= (and b!5331814 res!2261439) b!5331815))

(declare-fun m!6365242 () Bool)

(assert (=> b!5331813 m!6365242))

(declare-fun m!6365244 () Bool)

(assert (=> b!5331814 m!6365244))

(declare-fun m!6365246 () Bool)

(assert (=> b!5331814 m!6365246))

(declare-fun m!6365248 () Bool)

(assert (=> b!5331814 m!6365248))

(declare-fun m!6365250 () Bool)

(assert (=> d!1712098 m!6365250))

(declare-fun m!6365252 () Bool)

(assert (=> d!1712098 m!6365252))

(declare-fun m!6365254 () Bool)

(assert (=> d!1712098 m!6365254))

(assert (=> b!5329778 d!1712098))

(assert (=> b!5329778 d!1711688))

(declare-fun b!5331830 () Bool)

(declare-fun e!3311618 () Bool)

(declare-fun call!381114 () Bool)

(assert (=> b!5331830 (= e!3311618 call!381114)))

(declare-fun b!5331831 () Bool)

(declare-fun e!3311620 () Bool)

(declare-fun e!3311616 () Bool)

(assert (=> b!5331831 (= e!3311620 e!3311616)))

(declare-fun res!2261451 () Bool)

(declare-fun call!381113 () Bool)

(assert (=> b!5331831 (= res!2261451 call!381113)))

(assert (=> b!5331831 (=> res!2261451 e!3311616)))

(declare-fun b!5331832 () Bool)

(assert (=> b!5331832 (= e!3311616 call!381114)))

(declare-fun b!5331833 () Bool)

(declare-fun e!3311615 () Bool)

(declare-fun e!3311617 () Bool)

(assert (=> b!5331833 (= e!3311615 e!3311617)))

(declare-fun res!2261453 () Bool)

(assert (=> b!5331833 (=> (not res!2261453) (not e!3311617))))

(assert (=> b!5331833 (= res!2261453 (and (not ((_ is EmptyLang!14997) (h!67615 (exprs!4881 (h!67616 zl!343))))) (not ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331834 () Bool)

(assert (=> b!5331834 (= e!3311620 e!3311618)))

(declare-fun res!2261452 () Bool)

(assert (=> b!5331834 (= res!2261452 call!381113)))

(assert (=> b!5331834 (=> (not res!2261452) (not e!3311618))))

(declare-fun b!5331835 () Bool)

(declare-fun e!3311619 () Bool)

(assert (=> b!5331835 (= e!3311617 e!3311619)))

(declare-fun res!2261454 () Bool)

(assert (=> b!5331835 (=> res!2261454 e!3311619)))

(assert (=> b!5331835 (= res!2261454 ((_ is Star!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bm!381108 () Bool)

(declare-fun c!927364 () Bool)

(assert (=> bm!381108 (= call!381113 (nullable!5166 (ite c!927364 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun d!1712100 () Bool)

(declare-fun res!2261450 () Bool)

(assert (=> d!1712100 (=> res!2261450 e!3311615)))

(assert (=> d!1712100 (= res!2261450 ((_ is EmptyExpr!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> d!1712100 (= (nullableFct!1506 (h!67615 (exprs!4881 (h!67616 zl!343)))) e!3311615)))

(declare-fun bm!381109 () Bool)

(assert (=> bm!381109 (= call!381114 (nullable!5166 (ite c!927364 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331836 () Bool)

(assert (=> b!5331836 (= e!3311619 e!3311620)))

(assert (=> b!5331836 (= c!927364 ((_ is Union!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (= (and d!1712100 (not res!2261450)) b!5331833))

(assert (= (and b!5331833 res!2261453) b!5331835))

(assert (= (and b!5331835 (not res!2261454)) b!5331836))

(assert (= (and b!5331836 c!927364) b!5331831))

(assert (= (and b!5331836 (not c!927364)) b!5331834))

(assert (= (and b!5331831 (not res!2261451)) b!5331832))

(assert (= (and b!5331834 res!2261452) b!5331830))

(assert (= (or b!5331832 b!5331830) bm!381109))

(assert (= (or b!5331831 b!5331834) bm!381108))

(declare-fun m!6365256 () Bool)

(assert (=> bm!381108 m!6365256))

(declare-fun m!6365258 () Bool)

(assert (=> bm!381109 m!6365258))

(assert (=> d!1711310 d!1712100))

(declare-fun b!5331837 () Bool)

(declare-fun e!3311625 () Bool)

(declare-fun e!3311622 () Bool)

(assert (=> b!5331837 (= e!3311625 e!3311622)))

(declare-fun res!2261459 () Bool)

(assert (=> b!5331837 (= res!2261459 (not (nullable!5166 (reg!15326 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))))

(assert (=> b!5331837 (=> (not res!2261459) (not e!3311622))))

(declare-fun b!5331838 () Bool)

(declare-fun e!3311626 () Bool)

(assert (=> b!5331838 (= e!3311626 e!3311625)))

(declare-fun c!927365 () Bool)

(assert (=> b!5331838 (= c!927365 ((_ is Star!14997) (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))

(declare-fun b!5331839 () Bool)

(declare-fun e!3311624 () Bool)

(assert (=> b!5331839 (= e!3311625 e!3311624)))

(declare-fun c!927366 () Bool)

(assert (=> b!5331839 (= c!927366 ((_ is Union!14997) (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))

(declare-fun d!1712102 () Bool)

(declare-fun res!2261457 () Bool)

(assert (=> d!1712102 (=> res!2261457 e!3311626)))

(assert (=> d!1712102 (= res!2261457 ((_ is ElementMatch!14997) (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))

(assert (=> d!1712102 (= (validRegex!6733 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))) e!3311626)))

(declare-fun b!5331840 () Bool)

(declare-fun e!3311623 () Bool)

(declare-fun e!3311621 () Bool)

(assert (=> b!5331840 (= e!3311623 e!3311621)))

(declare-fun res!2261455 () Bool)

(assert (=> b!5331840 (=> (not res!2261455) (not e!3311621))))

(declare-fun call!381117 () Bool)

(assert (=> b!5331840 (= res!2261455 call!381117)))

(declare-fun call!381116 () Bool)

(declare-fun bm!381110 () Bool)

(assert (=> bm!381110 (= call!381116 (validRegex!6733 (ite c!927365 (reg!15326 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))) (ite c!927366 (regOne!30507 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))) (regOne!30506 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292))))))))))

(declare-fun bm!381111 () Bool)

(declare-fun call!381115 () Bool)

(assert (=> bm!381111 (= call!381115 (validRegex!6733 (ite c!927366 (regTwo!30507 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))) (regTwo!30506 (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292)))))))))

(declare-fun b!5331841 () Bool)

(declare-fun res!2261456 () Bool)

(assert (=> b!5331841 (=> res!2261456 e!3311623)))

(assert (=> b!5331841 (= res!2261456 (not ((_ is Concat!23842) (ite c!926830 (reg!15326 r!7292) (ite c!926831 (regOne!30507 r!7292) (regOne!30506 r!7292))))))))

(assert (=> b!5331841 (= e!3311624 e!3311623)))

(declare-fun b!5331842 () Bool)

(assert (=> b!5331842 (= e!3311622 call!381116)))

(declare-fun b!5331843 () Bool)

(declare-fun res!2261458 () Bool)

(declare-fun e!3311627 () Bool)

(assert (=> b!5331843 (=> (not res!2261458) (not e!3311627))))

(assert (=> b!5331843 (= res!2261458 call!381117)))

(assert (=> b!5331843 (= e!3311624 e!3311627)))

(declare-fun bm!381112 () Bool)

(assert (=> bm!381112 (= call!381117 call!381116)))

(declare-fun b!5331844 () Bool)

(assert (=> b!5331844 (= e!3311627 call!381115)))

(declare-fun b!5331845 () Bool)

(assert (=> b!5331845 (= e!3311621 call!381115)))

(assert (= (and d!1712102 (not res!2261457)) b!5331838))

(assert (= (and b!5331838 c!927365) b!5331837))

(assert (= (and b!5331838 (not c!927365)) b!5331839))

(assert (= (and b!5331837 res!2261459) b!5331842))

(assert (= (and b!5331839 c!927366) b!5331843))

(assert (= (and b!5331839 (not c!927366)) b!5331841))

(assert (= (and b!5331843 res!2261458) b!5331844))

(assert (= (and b!5331841 (not res!2261456)) b!5331840))

(assert (= (and b!5331840 res!2261455) b!5331845))

(assert (= (or b!5331844 b!5331845) bm!381111))

(assert (= (or b!5331843 b!5331840) bm!381112))

(assert (= (or b!5331842 bm!381112) bm!381110))

(declare-fun m!6365260 () Bool)

(assert (=> b!5331837 m!6365260))

(declare-fun m!6365262 () Bool)

(assert (=> bm!381110 m!6365262))

(declare-fun m!6365264 () Bool)

(assert (=> bm!381111 m!6365264))

(assert (=> bm!380781 d!1712102))

(declare-fun d!1712104 () Bool)

(assert (=> d!1712104 (= (isEmpty!33135 (t!374506 lt!2174307)) ((_ is Nil!61167) (t!374506 lt!2174307)))))

(assert (=> b!5330131 d!1712104))

(declare-fun b!5331846 () Bool)

(declare-fun e!3311631 () Int)

(assert (=> b!5331846 (= e!3311631 1)))

(declare-fun bm!381113 () Bool)

(declare-fun call!381119 () Int)

(declare-fun call!381120 () Int)

(assert (=> bm!381113 (= call!381119 call!381120)))

(declare-fun b!5331847 () Bool)

(declare-fun e!3311629 () Int)

(assert (=> b!5331847 (= e!3311629 (+ 1 call!381120))))

(declare-fun d!1712106 () Bool)

(declare-fun lt!2174625 () Int)

(assert (=> d!1712106 (> lt!2174625 0)))

(assert (=> d!1712106 (= lt!2174625 e!3311631)))

(declare-fun c!927367 () Bool)

(assert (=> d!1712106 (= c!927367 ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> d!1712106 (= (regexDepthTotal!59 (h!67615 (exprs!4881 (h!67616 zl!343)))) lt!2174625)))

(declare-fun b!5331848 () Bool)

(assert (=> b!5331848 (= e!3311631 e!3311629)))

(declare-fun c!927369 () Bool)

(assert (=> b!5331848 (= c!927369 ((_ is Star!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun b!5331849 () Bool)

(declare-fun e!3311630 () Int)

(declare-fun e!3311628 () Int)

(assert (=> b!5331849 (= e!3311630 e!3311628)))

(declare-fun c!927368 () Bool)

(assert (=> b!5331849 (= c!927368 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun bm!381114 () Bool)

(declare-fun c!927370 () Bool)

(assert (=> bm!381114 (= call!381120 (regexDepthTotal!59 (ite c!927369 (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!927370 (regOne!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))

(declare-fun b!5331850 () Bool)

(declare-fun call!381118 () Int)

(assert (=> b!5331850 (= e!3311630 (+ 1 call!381119 call!381118))))

(declare-fun b!5331851 () Bool)

(assert (=> b!5331851 (= c!927370 ((_ is Union!14997) (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> b!5331851 (= e!3311629 e!3311630)))

(declare-fun b!5331852 () Bool)

(assert (=> b!5331852 (= e!3311628 (+ 1 call!381119 call!381118))))

(declare-fun bm!381115 () Bool)

(assert (=> bm!381115 (= call!381118 (regexDepthTotal!59 (ite c!927370 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun b!5331853 () Bool)

(assert (=> b!5331853 (= e!3311628 1)))

(assert (= (and d!1712106 c!927367) b!5331846))

(assert (= (and d!1712106 (not c!927367)) b!5331848))

(assert (= (and b!5331848 c!927369) b!5331847))

(assert (= (and b!5331848 (not c!927369)) b!5331851))

(assert (= (and b!5331851 c!927370) b!5331850))

(assert (= (and b!5331851 (not c!927370)) b!5331849))

(assert (= (and b!5331849 c!927368) b!5331852))

(assert (= (and b!5331849 (not c!927368)) b!5331853))

(assert (= (or b!5331850 b!5331852) bm!381115))

(assert (= (or b!5331850 b!5331852) bm!381113))

(assert (= (or b!5331847 bm!381113) bm!381114))

(declare-fun m!6365266 () Bool)

(assert (=> bm!381114 m!6365266))

(declare-fun m!6365268 () Bool)

(assert (=> bm!381115 m!6365268))

(assert (=> b!5330268 d!1712106))

(declare-fun d!1712108 () Bool)

(declare-fun lt!2174626 () Int)

(assert (=> d!1712108 (>= lt!2174626 0)))

(declare-fun e!3311632 () Int)

(assert (=> d!1712108 (= lt!2174626 e!3311632)))

(declare-fun c!927371 () Bool)

(assert (=> d!1712108 (= c!927371 ((_ is Cons!61167) (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(assert (=> d!1712108 (= (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))) lt!2174626)))

(declare-fun b!5331854 () Bool)

(assert (=> b!5331854 (= e!3311632 (+ (regexDepthTotal!59 (h!67615 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))))) (contextDepthTotal!130 (Context!8763 (t!374506 (exprs!4881 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343))))))))))))

(declare-fun b!5331855 () Bool)

(assert (=> b!5331855 (= e!3311632 1)))

(assert (= (and d!1712108 c!927371) b!5331854))

(assert (= (and d!1712108 (not c!927371)) b!5331855))

(declare-fun m!6365270 () Bool)

(assert (=> b!5331854 m!6365270))

(declare-fun m!6365272 () Bool)

(assert (=> b!5331854 m!6365272))

(assert (=> b!5330268 d!1712108))

(declare-fun d!1712110 () Bool)

(assert (=> d!1712110 (= (isEmptyExpr!889 lt!2174432) ((_ is EmptyExpr!14997) lt!2174432))))

(assert (=> b!5329925 d!1712110))

(declare-fun d!1712112 () Bool)

(assert (=> d!1712112 true))

(declare-fun setRes!34368 () Bool)

(assert (=> d!1712112 setRes!34368))

(declare-fun condSetEmpty!34368 () Bool)

(declare-fun res!2261460 () (InoxSet Context!8762))

(assert (=> d!1712112 (= condSetEmpty!34368 (= res!2261460 ((as const (Array Context!8762 Bool)) false)))))

(assert (=> d!1712112 (= (choose!39913 lt!2174322 lambda!272302) res!2261460)))

(declare-fun setIsEmpty!34368 () Bool)

(assert (=> setIsEmpty!34368 setRes!34368))

(declare-fun tp!1483600 () Bool)

(declare-fun e!3311633 () Bool)

(declare-fun setElem!34368 () Context!8762)

(declare-fun setNonEmpty!34368 () Bool)

(assert (=> setNonEmpty!34368 (= setRes!34368 (and tp!1483600 (inv!80739 setElem!34368) e!3311633))))

(declare-fun setRest!34368 () (InoxSet Context!8762))

(assert (=> setNonEmpty!34368 (= res!2261460 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) setElem!34368 true) setRest!34368))))

(declare-fun b!5331856 () Bool)

(declare-fun tp!1483601 () Bool)

(assert (=> b!5331856 (= e!3311633 tp!1483601)))

(assert (= (and d!1712112 condSetEmpty!34368) setIsEmpty!34368))

(assert (= (and d!1712112 (not condSetEmpty!34368)) setNonEmpty!34368))

(assert (= setNonEmpty!34368 b!5331856))

(declare-fun m!6365274 () Bool)

(assert (=> setNonEmpty!34368 m!6365274))

(assert (=> d!1711174 d!1712112))

(declare-fun bs!1236440 () Bool)

(declare-fun d!1712114 () Bool)

(assert (= bs!1236440 (and d!1712114 b!5330207)))

(declare-fun lambda!272522 () Int)

(assert (=> bs!1236440 (not (= lambda!272522 lambda!272401))))

(declare-fun bs!1236441 () Bool)

(assert (= bs!1236441 (and d!1712114 d!1711698)))

(assert (=> bs!1236441 (= lambda!272522 lambda!272464)))

(declare-fun bs!1236442 () Bool)

(assert (= bs!1236442 (and d!1712114 d!1711824)))

(assert (=> bs!1236442 (= lambda!272522 lambda!272477)))

(declare-fun bs!1236443 () Bool)

(assert (= bs!1236443 (and d!1712114 b!5330204)))

(assert (=> bs!1236443 (not (= lambda!272522 lambda!272399))))

(declare-fun bs!1236444 () Bool)

(assert (= bs!1236444 (and d!1712114 b!5330896)))

(assert (=> bs!1236444 (not (= lambda!272522 lambda!272456))))

(declare-fun bs!1236445 () Bool)

(assert (= bs!1236445 (and d!1712114 b!5330209)))

(assert (=> bs!1236445 (not (= lambda!272522 lambda!272402))))

(declare-fun bs!1236446 () Bool)

(assert (= bs!1236446 (and d!1712114 b!5330202)))

(assert (=> bs!1236446 (not (= lambda!272522 lambda!272398))))

(declare-fun bs!1236447 () Bool)

(assert (= bs!1236447 (and d!1712114 d!1711916)))

(assert (=> bs!1236447 (= lambda!272522 lambda!272500)))

(declare-fun bs!1236448 () Bool)

(assert (= bs!1236448 (and d!1712114 d!1711676)))

(assert (=> bs!1236448 (not (= lambda!272522 lambda!272460))))

(declare-fun bs!1236449 () Bool)

(assert (= bs!1236449 (and d!1712114 b!5330894)))

(assert (=> bs!1236449 (not (= lambda!272522 lambda!272455))))

(assert (=> d!1712114 (= (nullableZipper!1354 lt!2174311) (exists!2015 lt!2174311 lambda!272522))))

(declare-fun bs!1236450 () Bool)

(assert (= bs!1236450 d!1712114))

(declare-fun m!6365276 () Bool)

(assert (=> bs!1236450 m!6365276))

(assert (=> b!5329666 d!1712114))

(declare-fun d!1712116 () Bool)

(assert (=> d!1712116 (= (flatMap!724 lt!2174322 lambda!272339) (choose!39913 lt!2174322 lambda!272339))))

(declare-fun bs!1236451 () Bool)

(assert (= bs!1236451 d!1712116))

(declare-fun m!6365278 () Bool)

(assert (=> bs!1236451 m!6365278))

(assert (=> d!1711192 d!1712116))

(declare-fun d!1712118 () Bool)

(assert (=> d!1712118 (= (nullable!5166 lt!2174318) (nullableFct!1506 lt!2174318))))

(declare-fun bs!1236452 () Bool)

(assert (= bs!1236452 d!1712118))

(declare-fun m!6365280 () Bool)

(assert (=> bs!1236452 m!6365280))

(assert (=> b!5330192 d!1712118))

(declare-fun b!5331857 () Bool)

(declare-fun e!3311637 () Bool)

(declare-fun call!381122 () Bool)

(assert (=> b!5331857 (= e!3311637 call!381122)))

(declare-fun b!5331858 () Bool)

(declare-fun e!3311639 () Bool)

(declare-fun e!3311635 () Bool)

(assert (=> b!5331858 (= e!3311639 e!3311635)))

(declare-fun res!2261462 () Bool)

(declare-fun call!381121 () Bool)

(assert (=> b!5331858 (= res!2261462 call!381121)))

(assert (=> b!5331858 (=> res!2261462 e!3311635)))

(declare-fun b!5331859 () Bool)

(assert (=> b!5331859 (= e!3311635 call!381122)))

(declare-fun b!5331860 () Bool)

(declare-fun e!3311634 () Bool)

(declare-fun e!3311636 () Bool)

(assert (=> b!5331860 (= e!3311634 e!3311636)))

(declare-fun res!2261464 () Bool)

(assert (=> b!5331860 (=> (not res!2261464) (not e!3311636))))

(assert (=> b!5331860 (= res!2261464 (and (not ((_ is EmptyLang!14997) (regOne!30506 (regOne!30506 r!7292)))) (not ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5331861 () Bool)

(assert (=> b!5331861 (= e!3311639 e!3311637)))

(declare-fun res!2261463 () Bool)

(assert (=> b!5331861 (= res!2261463 call!381121)))

(assert (=> b!5331861 (=> (not res!2261463) (not e!3311637))))

(declare-fun b!5331862 () Bool)

(declare-fun e!3311638 () Bool)

(assert (=> b!5331862 (= e!3311636 e!3311638)))

(declare-fun res!2261465 () Bool)

(assert (=> b!5331862 (=> res!2261465 e!3311638)))

(assert (=> b!5331862 (= res!2261465 ((_ is Star!14997) (regOne!30506 (regOne!30506 r!7292))))))

(declare-fun bm!381116 () Bool)

(declare-fun c!927372 () Bool)

(assert (=> bm!381116 (= call!381121 (nullable!5166 (ite c!927372 (regOne!30507 (regOne!30506 (regOne!30506 r!7292))) (regOne!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun d!1712120 () Bool)

(declare-fun res!2261461 () Bool)

(assert (=> d!1712120 (=> res!2261461 e!3311634)))

(assert (=> d!1712120 (= res!2261461 ((_ is EmptyExpr!14997) (regOne!30506 (regOne!30506 r!7292))))))

(assert (=> d!1712120 (= (nullableFct!1506 (regOne!30506 (regOne!30506 r!7292))) e!3311634)))

(declare-fun bm!381117 () Bool)

(assert (=> bm!381117 (= call!381122 (nullable!5166 (ite c!927372 (regTwo!30507 (regOne!30506 (regOne!30506 r!7292))) (regTwo!30506 (regOne!30506 (regOne!30506 r!7292))))))))

(declare-fun b!5331863 () Bool)

(assert (=> b!5331863 (= e!3311638 e!3311639)))

(assert (=> b!5331863 (= c!927372 ((_ is Union!14997) (regOne!30506 (regOne!30506 r!7292))))))

(assert (= (and d!1712120 (not res!2261461)) b!5331860))

(assert (= (and b!5331860 res!2261464) b!5331862))

(assert (= (and b!5331862 (not res!2261465)) b!5331863))

(assert (= (and b!5331863 c!927372) b!5331858))

(assert (= (and b!5331863 (not c!927372)) b!5331861))

(assert (= (and b!5331858 (not res!2261462)) b!5331859))

(assert (= (and b!5331861 res!2261463) b!5331857))

(assert (= (or b!5331859 b!5331857) bm!381117))

(assert (= (or b!5331858 b!5331861) bm!381116))

(declare-fun m!6365282 () Bool)

(assert (=> bm!381116 m!6365282))

(declare-fun m!6365284 () Bool)

(assert (=> bm!381117 m!6365284))

(assert (=> d!1711330 d!1712120))

(assert (=> b!5330162 d!1711636))

(assert (=> d!1711338 d!1711606))

(assert (=> d!1711338 d!1711594))

(declare-fun d!1712122 () Bool)

(assert (=> d!1712122 (= (isEmpty!33135 (t!374506 lt!2174324)) ((_ is Nil!61167) (t!374506 lt!2174324)))))

(assert (=> b!5330152 d!1712122))

(declare-fun d!1712124 () Bool)

(declare-fun c!927373 () Bool)

(assert (=> d!1712124 (= c!927373 (isEmpty!33139 (tail!10523 (t!374505 s!2326))))))

(declare-fun e!3311640 () Bool)

(assert (=> d!1712124 (= (matchZipper!1241 (derivationStepZipper!1238 lt!2174325 (head!11426 (t!374505 s!2326))) (tail!10523 (t!374505 s!2326))) e!3311640)))

(declare-fun b!5331864 () Bool)

(assert (=> b!5331864 (= e!3311640 (nullableZipper!1354 (derivationStepZipper!1238 lt!2174325 (head!11426 (t!374505 s!2326)))))))

(declare-fun b!5331865 () Bool)

(assert (=> b!5331865 (= e!3311640 (matchZipper!1241 (derivationStepZipper!1238 (derivationStepZipper!1238 lt!2174325 (head!11426 (t!374505 s!2326))) (head!11426 (tail!10523 (t!374505 s!2326)))) (tail!10523 (tail!10523 (t!374505 s!2326)))))))

(assert (= (and d!1712124 c!927373) b!5331864))

(assert (= (and d!1712124 (not c!927373)) b!5331865))

(assert (=> d!1712124 m!6363214))

(assert (=> d!1712124 m!6364080))

(assert (=> b!5331864 m!6363474))

(declare-fun m!6365286 () Bool)

(assert (=> b!5331864 m!6365286))

(assert (=> b!5331865 m!6363214))

(assert (=> b!5331865 m!6364084))

(assert (=> b!5331865 m!6363474))

(assert (=> b!5331865 m!6364084))

(declare-fun m!6365288 () Bool)

(assert (=> b!5331865 m!6365288))

(assert (=> b!5331865 m!6363214))

(assert (=> b!5331865 m!6364088))

(assert (=> b!5331865 m!6365288))

(assert (=> b!5331865 m!6364088))

(declare-fun m!6365290 () Bool)

(assert (=> b!5331865 m!6365290))

(assert (=> b!5329935 d!1712124))

(declare-fun bs!1236453 () Bool)

(declare-fun d!1712126 () Bool)

(assert (= bs!1236453 (and d!1712126 d!1712064)))

(declare-fun lambda!272523 () Int)

(assert (=> bs!1236453 (= (= (head!11426 (t!374505 s!2326)) (head!11426 s!2326)) (= lambda!272523 lambda!272519))))

(declare-fun bs!1236454 () Bool)

(assert (= bs!1236454 (and d!1712126 d!1711192)))

(assert (=> bs!1236454 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272523 lambda!272339))))

(declare-fun bs!1236455 () Bool)

(assert (= bs!1236455 (and d!1712126 d!1711584)))

(assert (=> bs!1236455 (= lambda!272523 lambda!272439)))

(declare-fun bs!1236456 () Bool)

(assert (= bs!1236456 (and d!1712126 d!1712024)))

(assert (=> bs!1236456 (= lambda!272523 lambda!272511)))

(declare-fun bs!1236457 () Bool)

(assert (= bs!1236457 (and d!1712126 d!1711902)))

(assert (=> bs!1236457 (= lambda!272523 lambda!272497)))

(declare-fun bs!1236458 () Bool)

(assert (= bs!1236458 (and d!1712126 b!5329326)))

(assert (=> bs!1236458 (= (= (head!11426 (t!374505 s!2326)) (h!67614 s!2326)) (= lambda!272523 lambda!272302))))

(declare-fun bs!1236459 () Bool)

(assert (= bs!1236459 (and d!1712126 d!1711724)))

(assert (=> bs!1236459 (= lambda!272523 lambda!272469)))

(assert (=> d!1712126 true))

(assert (=> d!1712126 (= (derivationStepZipper!1238 lt!2174325 (head!11426 (t!374505 s!2326))) (flatMap!724 lt!2174325 lambda!272523))))

(declare-fun bs!1236460 () Bool)

(assert (= bs!1236460 d!1712126))

(declare-fun m!6365292 () Bool)

(assert (=> bs!1236460 m!6365292))

(assert (=> b!5329935 d!1712126))

(assert (=> b!5329935 d!1711586))

(assert (=> b!5329935 d!1711588))

(declare-fun d!1712128 () Bool)

(assert (=> d!1712128 (= (Exists!2178 lambda!272382) (choose!39916 lambda!272382))))

(declare-fun bs!1236461 () Bool)

(assert (= bs!1236461 d!1712128))

(declare-fun m!6365294 () Bool)

(assert (=> bs!1236461 m!6365294))

(assert (=> d!1711336 d!1712128))

(declare-fun d!1712130 () Bool)

(assert (=> d!1712130 (= (Exists!2178 lambda!272383) (choose!39916 lambda!272383))))

(declare-fun bs!1236462 () Bool)

(assert (= bs!1236462 d!1712130))

(declare-fun m!6365296 () Bool)

(assert (=> bs!1236462 m!6365296))

(assert (=> d!1711336 d!1712130))

(declare-fun bs!1236463 () Bool)

(declare-fun d!1712132 () Bool)

(assert (= bs!1236463 (and d!1712132 b!5329333)))

(declare-fun lambda!272524 () Int)

(assert (=> bs!1236463 (not (= lambda!272524 lambda!272301))))

(declare-fun bs!1236464 () Bool)

(assert (= bs!1236464 (and d!1712132 b!5330177)))

(assert (=> bs!1236464 (not (= lambda!272524 lambda!272389))))

(declare-fun bs!1236465 () Bool)

(assert (= bs!1236465 (and d!1712132 b!5331320)))

(assert (=> bs!1236465 (not (= lambda!272524 lambda!272491))))

(declare-fun bs!1236466 () Bool)

(assert (= bs!1236466 (and d!1712132 b!5330147)))

(assert (=> bs!1236466 (not (= lambda!272524 lambda!272385))))

(assert (=> bs!1236463 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272524 lambda!272300))))

(declare-fun bs!1236467 () Bool)

(assert (= bs!1236467 (and d!1712132 b!5330051)))

(assert (=> bs!1236467 (not (= lambda!272524 lambda!272377))))

(declare-fun bs!1236468 () Bool)

(assert (= bs!1236468 (and d!1712132 d!1712034)))

(assert (=> bs!1236468 (not (= lambda!272524 lambda!272518))))

(declare-fun bs!1236469 () Bool)

(assert (= bs!1236469 (and d!1712132 d!1711250)))

(assert (=> bs!1236469 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272524 lambda!272362))))

(declare-fun bs!1236470 () Bool)

(assert (= bs!1236470 (and d!1712132 d!1711262)))

(assert (=> bs!1236470 (not (= lambda!272524 lambda!272369))))

(declare-fun bs!1236471 () Bool)

(assert (= bs!1236471 (and d!1712132 d!1712072)))

(assert (=> bs!1236471 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272524 lambda!272520))))

(declare-fun bs!1236472 () Bool)

(assert (= bs!1236472 (and d!1712132 b!5331555)))

(assert (=> bs!1236472 (not (= lambda!272524 lambda!272509))))

(declare-fun bs!1236473 () Bool)

(assert (= bs!1236473 (and d!1712132 b!5331475)))

(assert (=> bs!1236473 (not (= lambda!272524 lambda!272505))))

(declare-fun bs!1236474 () Bool)

(assert (= bs!1236474 (and d!1712132 b!5330148)))

(assert (=> bs!1236474 (not (= lambda!272524 lambda!272386))))

(declare-fun bs!1236475 () Bool)

(assert (= bs!1236475 (and d!1712132 b!5331476)))

(assert (=> bs!1236475 (not (= lambda!272524 lambda!272507))))

(assert (=> bs!1236470 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272524 lambda!272368))))

(declare-fun bs!1236476 () Bool)

(assert (= bs!1236476 (and d!1712132 b!5331556)))

(assert (=> bs!1236476 (not (= lambda!272524 lambda!272510))))

(declare-fun bs!1236477 () Bool)

(assert (= bs!1236477 (and d!1712132 d!1711336)))

(assert (=> bs!1236477 (= lambda!272524 lambda!272382)))

(declare-fun bs!1236478 () Bool)

(assert (= bs!1236478 (and d!1712132 d!1711350)))

(assert (=> bs!1236478 (= lambda!272524 lambda!272387)))

(assert (=> bs!1236477 (not (= lambda!272524 lambda!272383))))

(declare-fun bs!1236479 () Bool)

(assert (= bs!1236479 (and d!1712132 b!5331405)))

(assert (=> bs!1236479 (not (= lambda!272524 lambda!272495))))

(declare-fun bs!1236480 () Bool)

(assert (= bs!1236480 (and d!1712132 b!5331241)))

(assert (=> bs!1236480 (not (= lambda!272524 lambda!272481))))

(declare-fun bs!1236481 () Bool)

(assert (= bs!1236481 (and d!1712132 d!1711564)))

(assert (=> bs!1236481 (= lambda!272524 lambda!272438)))

(declare-fun bs!1236482 () Bool)

(assert (= bs!1236482 (and d!1712132 b!5329319)))

(assert (=> bs!1236482 (not (= lambda!272524 lambda!272304))))

(declare-fun bs!1236483 () Bool)

(assert (= bs!1236483 (and d!1712132 b!5330178)))

(assert (=> bs!1236483 (not (= lambda!272524 lambda!272390))))

(assert (=> bs!1236468 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272524 lambda!272517))))

(assert (=> bs!1236482 (= lambda!272524 lambda!272303)))

(declare-fun bs!1236484 () Bool)

(assert (= bs!1236484 (and d!1712132 b!5330052)))

(assert (=> bs!1236484 (not (= lambda!272524 lambda!272378))))

(declare-fun bs!1236485 () Bool)

(assert (= bs!1236485 (and d!1712132 b!5331404)))

(assert (=> bs!1236485 (not (= lambda!272524 lambda!272494))))

(declare-fun bs!1236486 () Bool)

(assert (= bs!1236486 (and d!1712132 b!5331319)))

(assert (=> bs!1236486 (not (= lambda!272524 lambda!272489))))

(declare-fun bs!1236487 () Bool)

(assert (= bs!1236487 (and d!1712132 b!5331240)))

(assert (=> bs!1236487 (not (= lambda!272524 lambda!272480))))

(assert (=> d!1712132 true))

(assert (=> d!1712132 true))

(assert (=> d!1712132 true))

(declare-fun lambda!272525 () Int)

(assert (=> bs!1236463 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272525 lambda!272301))))

(assert (=> bs!1236464 (not (= lambda!272525 lambda!272389))))

(assert (=> bs!1236465 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 (regTwo!30507 lt!2174304))) (= lt!2174318 (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272525 lambda!272491))))

(assert (=> bs!1236466 (not (= lambda!272525 lambda!272385))))

(assert (=> bs!1236463 (not (= lambda!272525 lambda!272300))))

(assert (=> bs!1236467 (not (= lambda!272525 lambda!272377))))

(assert (=> bs!1236468 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272525 lambda!272518))))

(assert (=> bs!1236469 (not (= lambda!272525 lambda!272362))))

(assert (=> bs!1236470 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272525 lambda!272369))))

(assert (=> bs!1236471 (not (= lambda!272525 lambda!272520))))

(assert (=> bs!1236472 (not (= lambda!272525 lambda!272509))))

(assert (=> bs!1236473 (not (= lambda!272525 lambda!272505))))

(assert (=> bs!1236474 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 lt!2174318)) (= lt!2174318 (regTwo!30506 lt!2174318))) (= lambda!272525 lambda!272386))))

(declare-fun bs!1236488 () Bool)

(assert (= bs!1236488 d!1712132))

(assert (=> bs!1236488 (not (= lambda!272525 lambda!272524))))

(assert (=> bs!1236475 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 (regOne!30507 r!7292))) (= lt!2174318 (regTwo!30506 (regOne!30507 r!7292)))) (= lambda!272525 lambda!272507))))

(assert (=> bs!1236470 (not (= lambda!272525 lambda!272368))))

(assert (=> bs!1236476 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 (regTwo!30507 lt!2174318))) (= lt!2174318 (regTwo!30506 (regTwo!30507 lt!2174318)))) (= lambda!272525 lambda!272510))))

(assert (=> bs!1236477 (not (= lambda!272525 lambda!272382))))

(assert (=> bs!1236478 (not (= lambda!272525 lambda!272387))))

(assert (=> bs!1236477 (= lambda!272525 lambda!272383)))

(assert (=> bs!1236479 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 (regTwo!30507 r!7292))) (= lt!2174318 (regTwo!30506 (regTwo!30507 r!7292)))) (= lambda!272525 lambda!272495))))

(assert (=> bs!1236480 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 (regOne!30507 lt!2174304))) (= lt!2174318 (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272525 lambda!272481))))

(assert (=> bs!1236481 (not (= lambda!272525 lambda!272438))))

(assert (=> bs!1236482 (= lambda!272525 lambda!272304)))

(assert (=> bs!1236483 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 lt!2174304)) (= lt!2174318 (regTwo!30506 lt!2174304))) (= lambda!272525 lambda!272390))))

(assert (=> bs!1236468 (not (= lambda!272525 lambda!272517))))

(assert (=> bs!1236482 (not (= lambda!272525 lambda!272303))))

(assert (=> bs!1236484 (= (and (= (regOne!30506 (regOne!30506 r!7292)) (regOne!30506 r!7292)) (= lt!2174318 (regTwo!30506 r!7292))) (= lambda!272525 lambda!272378))))

(assert (=> bs!1236485 (not (= lambda!272525 lambda!272494))))

(assert (=> bs!1236486 (not (= lambda!272525 lambda!272489))))

(assert (=> bs!1236487 (not (= lambda!272525 lambda!272480))))

(assert (=> d!1712132 true))

(assert (=> d!1712132 true))

(assert (=> d!1712132 true))

(assert (=> d!1712132 (= (Exists!2178 lambda!272524) (Exists!2178 lambda!272525))))

(assert (=> d!1712132 true))

(declare-fun _$90!1160 () Unit!153506)

(assert (=> d!1712132 (= (choose!39919 (regOne!30506 (regOne!30506 r!7292)) lt!2174318 s!2326) _$90!1160)))

(declare-fun m!6365298 () Bool)

(assert (=> bs!1236488 m!6365298))

(declare-fun m!6365300 () Bool)

(assert (=> bs!1236488 m!6365300))

(assert (=> d!1711336 d!1712132))

(assert (=> d!1711336 d!1711562))

(assert (=> b!5329774 d!1711534))

(declare-fun bs!1236489 () Bool)

(declare-fun d!1712134 () Bool)

(assert (= bs!1236489 (and d!1712134 b!5330207)))

(declare-fun lambda!272526 () Int)

(assert (=> bs!1236489 (not (= lambda!272526 lambda!272401))))

(declare-fun bs!1236490 () Bool)

(assert (= bs!1236490 (and d!1712134 d!1711698)))

(assert (=> bs!1236490 (= lambda!272526 lambda!272464)))

(declare-fun bs!1236491 () Bool)

(assert (= bs!1236491 (and d!1712134 d!1711824)))

(assert (=> bs!1236491 (= lambda!272526 lambda!272477)))

(declare-fun bs!1236492 () Bool)

(assert (= bs!1236492 (and d!1712134 b!5330204)))

(assert (=> bs!1236492 (not (= lambda!272526 lambda!272399))))

(declare-fun bs!1236493 () Bool)

(assert (= bs!1236493 (and d!1712134 b!5330896)))

(assert (=> bs!1236493 (not (= lambda!272526 lambda!272456))))

(declare-fun bs!1236494 () Bool)

(assert (= bs!1236494 (and d!1712134 b!5330209)))

(assert (=> bs!1236494 (not (= lambda!272526 lambda!272402))))

(declare-fun bs!1236495 () Bool)

(assert (= bs!1236495 (and d!1712134 b!5330202)))

(assert (=> bs!1236495 (not (= lambda!272526 lambda!272398))))

(declare-fun bs!1236496 () Bool)

(assert (= bs!1236496 (and d!1712134 d!1712114)))

(assert (=> bs!1236496 (= lambda!272526 lambda!272522)))

(declare-fun bs!1236497 () Bool)

(assert (= bs!1236497 (and d!1712134 d!1711916)))

(assert (=> bs!1236497 (= lambda!272526 lambda!272500)))

(declare-fun bs!1236498 () Bool)

(assert (= bs!1236498 (and d!1712134 d!1711676)))

(assert (=> bs!1236498 (not (= lambda!272526 lambda!272460))))

(declare-fun bs!1236499 () Bool)

(assert (= bs!1236499 (and d!1712134 b!5330894)))

(assert (=> bs!1236499 (not (= lambda!272526 lambda!272455))))

(assert (=> d!1712134 (= (nullableZipper!1354 lt!2174309) (exists!2015 lt!2174309 lambda!272526))))

(declare-fun bs!1236500 () Bool)

(assert (= bs!1236500 d!1712134))

(declare-fun m!6365302 () Bool)

(assert (=> bs!1236500 m!6365302))

(assert (=> b!5330194 d!1712134))

(declare-fun d!1712136 () Bool)

(assert (=> d!1712136 (= (isEmpty!33135 (unfocusZipperList!439 zl!343)) ((_ is Nil!61167) (unfocusZipperList!439 zl!343)))))

(assert (=> b!5330231 d!1712136))

(declare-fun bs!1236501 () Bool)

(declare-fun d!1712138 () Bool)

(assert (= bs!1236501 (and d!1712138 b!5330207)))

(declare-fun lambda!272527 () Int)

(assert (=> bs!1236501 (not (= lambda!272527 lambda!272401))))

(declare-fun bs!1236502 () Bool)

(assert (= bs!1236502 (and d!1712138 d!1711698)))

(assert (=> bs!1236502 (= lambda!272527 lambda!272464)))

(declare-fun bs!1236503 () Bool)

(assert (= bs!1236503 (and d!1712138 d!1711824)))

(assert (=> bs!1236503 (= lambda!272527 lambda!272477)))

(declare-fun bs!1236504 () Bool)

(assert (= bs!1236504 (and d!1712138 b!5330204)))

(assert (=> bs!1236504 (not (= lambda!272527 lambda!272399))))

(declare-fun bs!1236505 () Bool)

(assert (= bs!1236505 (and d!1712138 b!5330896)))

(assert (=> bs!1236505 (not (= lambda!272527 lambda!272456))))

(declare-fun bs!1236506 () Bool)

(assert (= bs!1236506 (and d!1712138 b!5330209)))

(assert (=> bs!1236506 (not (= lambda!272527 lambda!272402))))

(declare-fun bs!1236507 () Bool)

(assert (= bs!1236507 (and d!1712138 b!5330202)))

(assert (=> bs!1236507 (not (= lambda!272527 lambda!272398))))

(declare-fun bs!1236508 () Bool)

(assert (= bs!1236508 (and d!1712138 d!1712114)))

(assert (=> bs!1236508 (= lambda!272527 lambda!272522)))

(declare-fun bs!1236509 () Bool)

(assert (= bs!1236509 (and d!1712138 d!1711916)))

(assert (=> bs!1236509 (= lambda!272527 lambda!272500)))

(declare-fun bs!1236510 () Bool)

(assert (= bs!1236510 (and d!1712138 d!1712134)))

(assert (=> bs!1236510 (= lambda!272527 lambda!272526)))

(declare-fun bs!1236511 () Bool)

(assert (= bs!1236511 (and d!1712138 d!1711676)))

(assert (=> bs!1236511 (not (= lambda!272527 lambda!272460))))

(declare-fun bs!1236512 () Bool)

(assert (= bs!1236512 (and d!1712138 b!5330894)))

(assert (=> bs!1236512 (not (= lambda!272527 lambda!272455))))

(assert (=> d!1712138 (= (nullableZipper!1354 lt!2174322) (exists!2015 lt!2174322 lambda!272527))))

(declare-fun bs!1236513 () Bool)

(assert (= bs!1236513 d!1712138))

(declare-fun m!6365304 () Bool)

(assert (=> bs!1236513 m!6365304))

(assert (=> b!5330127 d!1712138))

(declare-fun d!1712140 () Bool)

(assert (=> d!1712140 (= (nullable!5166 (reg!15326 r!7292)) (nullableFct!1506 (reg!15326 r!7292)))))

(declare-fun bs!1236514 () Bool)

(assert (= bs!1236514 d!1712140))

(declare-fun m!6365306 () Bool)

(assert (=> bs!1236514 m!6365306))

(assert (=> b!5329954 d!1712140))

(assert (=> bm!380818 d!1711606))

(declare-fun b!5331867 () Bool)

(declare-fun e!3311641 () List!61290)

(assert (=> b!5331867 (= e!3311641 (Cons!61166 (h!67614 (_1!35499 (get!21038 lt!2174462))) (++!13334 (t!374505 (_1!35499 (get!21038 lt!2174462))) (_2!35499 (get!21038 lt!2174462)))))))

(declare-fun b!5331866 () Bool)

(assert (=> b!5331866 (= e!3311641 (_2!35499 (get!21038 lt!2174462)))))

(declare-fun b!5331868 () Bool)

(declare-fun res!2261467 () Bool)

(declare-fun e!3311642 () Bool)

(assert (=> b!5331868 (=> (not res!2261467) (not e!3311642))))

(declare-fun lt!2174627 () List!61290)

(assert (=> b!5331868 (= res!2261467 (= (size!39771 lt!2174627) (+ (size!39771 (_1!35499 (get!21038 lt!2174462))) (size!39771 (_2!35499 (get!21038 lt!2174462))))))))

(declare-fun d!1712142 () Bool)

(assert (=> d!1712142 e!3311642))

(declare-fun res!2261466 () Bool)

(assert (=> d!1712142 (=> (not res!2261466) (not e!3311642))))

(assert (=> d!1712142 (= res!2261466 (= (content!10911 lt!2174627) ((_ map or) (content!10911 (_1!35499 (get!21038 lt!2174462))) (content!10911 (_2!35499 (get!21038 lt!2174462))))))))

(assert (=> d!1712142 (= lt!2174627 e!3311641)))

(declare-fun c!927374 () Bool)

(assert (=> d!1712142 (= c!927374 ((_ is Nil!61166) (_1!35499 (get!21038 lt!2174462))))))

(assert (=> d!1712142 (= (++!13334 (_1!35499 (get!21038 lt!2174462)) (_2!35499 (get!21038 lt!2174462))) lt!2174627)))

(declare-fun b!5331869 () Bool)

(assert (=> b!5331869 (= e!3311642 (or (not (= (_2!35499 (get!21038 lt!2174462)) Nil!61166)) (= lt!2174627 (_1!35499 (get!21038 lt!2174462)))))))

(assert (= (and d!1712142 c!927374) b!5331866))

(assert (= (and d!1712142 (not c!927374)) b!5331867))

(assert (= (and d!1712142 res!2261466) b!5331868))

(assert (= (and b!5331868 res!2261467) b!5331869))

(declare-fun m!6365308 () Bool)

(assert (=> b!5331867 m!6365308))

(declare-fun m!6365310 () Bool)

(assert (=> b!5331868 m!6365310))

(declare-fun m!6365312 () Bool)

(assert (=> b!5331868 m!6365312))

(declare-fun m!6365314 () Bool)

(assert (=> b!5331868 m!6365314))

(declare-fun m!6365316 () Bool)

(assert (=> d!1712142 m!6365316))

(declare-fun m!6365318 () Bool)

(assert (=> d!1712142 m!6365318))

(declare-fun m!6365320 () Bool)

(assert (=> d!1712142 m!6365320))

(assert (=> b!5330166 d!1712142))

(assert (=> b!5330166 d!1711628))

(declare-fun b!5331870 () Bool)

(declare-fun e!3311645 () (InoxSet Context!8762))

(declare-fun call!381124 () (InoxSet Context!8762))

(assert (=> b!5331870 (= e!3311645 call!381124)))

(declare-fun bm!381118 () Bool)

(declare-fun call!381125 () (InoxSet Context!8762))

(declare-fun call!381123 () (InoxSet Context!8762))

(assert (=> bm!381118 (= call!381125 call!381123)))

(declare-fun b!5331871 () Bool)

(declare-fun e!3311646 () (InoxSet Context!8762))

(assert (=> b!5331871 (= e!3311646 call!381124)))

(declare-fun call!381126 () List!61291)

(declare-fun c!927378 () Bool)

(declare-fun bm!381119 () Bool)

(declare-fun c!927376 () Bool)

(declare-fun c!927379 () Bool)

(assert (=> bm!381119 (= call!381123 (derivationStepZipperDown!445 (ite c!927376 (regTwo!30507 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (ite c!927378 (regTwo!30506 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (ite c!927379 (regOne!30506 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (reg!15326 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))) (ite (or c!927376 c!927378) (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807)) (Context!8763 call!381126)) (h!67614 s!2326)))))

(declare-fun b!5331872 () Bool)

(declare-fun e!3311648 () Bool)

(assert (=> b!5331872 (= e!3311648 (nullable!5166 (regOne!30506 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))))

(declare-fun b!5331873 () Bool)

(assert (=> b!5331873 (= c!927378 e!3311648)))

(declare-fun res!2261468 () Bool)

(assert (=> b!5331873 (=> (not res!2261468) (not e!3311648))))

(assert (=> b!5331873 (= res!2261468 ((_ is Concat!23842) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun e!3311647 () (InoxSet Context!8762))

(declare-fun e!3311644 () (InoxSet Context!8762))

(assert (=> b!5331873 (= e!3311647 e!3311644)))

(declare-fun b!5331874 () Bool)

(assert (=> b!5331874 (= e!3311645 ((as const (Array Context!8762 Bool)) false))))

(declare-fun bm!381120 () Bool)

(assert (=> bm!381120 (= call!381124 call!381125)))

(declare-fun call!381128 () (InoxSet Context!8762))

(declare-fun call!381127 () List!61291)

(declare-fun bm!381121 () Bool)

(assert (=> bm!381121 (= call!381128 (derivationStepZipperDown!445 (ite c!927376 (regOne!30507 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (regOne!30506 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))))) (ite c!927376 (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807)) (Context!8763 call!381127)) (h!67614 s!2326)))))

(declare-fun b!5331875 () Bool)

(assert (=> b!5331875 (= e!3311644 ((_ map or) call!381128 call!381125))))

(declare-fun bm!381122 () Bool)

(assert (=> bm!381122 (= call!381127 ($colon$colon!1404 (exprs!4881 (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807))) (ite (or c!927378 c!927379) (regTwo!30506 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))))))))

(declare-fun b!5331876 () Bool)

(declare-fun c!927377 () Bool)

(assert (=> b!5331876 (= c!927377 ((_ is Star!14997) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))))

(assert (=> b!5331876 (= e!3311646 e!3311645)))

(declare-fun b!5331877 () Bool)

(declare-fun e!3311643 () (InoxSet Context!8762))

(assert (=> b!5331877 (= e!3311643 e!3311647)))

(assert (=> b!5331877 (= c!927376 ((_ is Union!14997) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun b!5331879 () Bool)

(assert (=> b!5331879 (= e!3311643 (store ((as const (Array Context!8762 Bool)) false) (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807)) true))))

(declare-fun b!5331880 () Bool)

(assert (=> b!5331880 (= e!3311644 e!3311646)))

(assert (=> b!5331880 (= c!927379 ((_ is Concat!23842) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))))))

(declare-fun bm!381123 () Bool)

(assert (=> bm!381123 (= call!381126 call!381127)))

(declare-fun b!5331878 () Bool)

(assert (=> b!5331878 (= e!3311647 ((_ map or) call!381128 call!381123))))

(declare-fun d!1712144 () Bool)

(declare-fun c!927375 () Bool)

(assert (=> d!1712144 (= c!927375 (and ((_ is ElementMatch!14997) (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (= (c!926649 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343)))))))) (h!67614 s!2326))))))

(assert (=> d!1712144 (= (derivationStepZipperDown!445 (ite c!926849 (regTwo!30507 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926851 (regTwo!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (ite c!926852 (regOne!30506 (h!67615 (exprs!4881 (h!67616 zl!343)))) (reg!15326 (h!67615 (exprs!4881 (h!67616 zl!343))))))) (ite (or c!926849 c!926851) lt!2174316 (Context!8763 call!380807)) (h!67614 s!2326)) e!3311643)))

(assert (= (and d!1712144 c!927375) b!5331879))

(assert (= (and d!1712144 (not c!927375)) b!5331877))

(assert (= (and b!5331877 c!927376) b!5331878))

(assert (= (and b!5331877 (not c!927376)) b!5331873))

(assert (= (and b!5331873 res!2261468) b!5331872))

(assert (= (and b!5331873 c!927378) b!5331875))

(assert (= (and b!5331873 (not c!927378)) b!5331880))

(assert (= (and b!5331880 c!927379) b!5331871))

(assert (= (and b!5331880 (not c!927379)) b!5331876))

(assert (= (and b!5331876 c!927377) b!5331870))

(assert (= (and b!5331876 (not c!927377)) b!5331874))

(assert (= (or b!5331871 b!5331870) bm!381123))

(assert (= (or b!5331871 b!5331870) bm!381120))

(assert (= (or b!5331875 bm!381123) bm!381122))

(assert (= (or b!5331875 bm!381120) bm!381118))

(assert (= (or b!5331878 bm!381118) bm!381119))

(assert (= (or b!5331878 b!5331875) bm!381121))

(declare-fun m!6365322 () Bool)

(assert (=> b!5331879 m!6365322))

(declare-fun m!6365324 () Bool)

(assert (=> b!5331872 m!6365324))

(declare-fun m!6365326 () Bool)

(assert (=> bm!381121 m!6365326))

(declare-fun m!6365328 () Bool)

(assert (=> bm!381122 m!6365328))

(declare-fun m!6365330 () Bool)

(assert (=> bm!381119 m!6365330))

(assert (=> bm!380800 d!1712144))

(declare-fun d!1712146 () Bool)

(assert (=> d!1712146 (= (isConcat!412 lt!2174459) ((_ is Concat!23842) lt!2174459))))

(assert (=> b!5330156 d!1712146))

(assert (=> d!1711318 d!1711316))

(assert (=> d!1711318 d!1711314))

(declare-fun d!1712148 () Bool)

(assert (=> d!1712148 (= (matchR!7182 r!7292 s!2326) (matchRSpec!2100 r!7292 s!2326))))

(assert (=> d!1712148 true))

(declare-fun _$88!3638 () Unit!153506)

(assert (=> d!1712148 (= (choose!39922 r!7292 s!2326) _$88!3638)))

(declare-fun bs!1236515 () Bool)

(assert (= bs!1236515 d!1712148))

(assert (=> bs!1236515 m!6362878))

(assert (=> bs!1236515 m!6362876))

(assert (=> d!1711318 d!1712148))

(assert (=> d!1711318 d!1711298))

(declare-fun bs!1236516 () Bool)

(declare-fun b!5331881 () Bool)

(assert (= bs!1236516 (and b!5331881 b!5329319)))

(declare-fun lambda!272528 () Int)

(assert (=> bs!1236516 (not (= lambda!272528 lambda!272305))))

(declare-fun bs!1236517 () Bool)

(assert (= bs!1236517 (and b!5331881 d!1711380)))

(assert (=> bs!1236517 (not (= lambda!272528 lambda!272409))))

(declare-fun bs!1236518 () Bool)

(assert (= bs!1236518 (and b!5331881 d!1711294)))

(assert (=> bs!1236518 (not (= lambda!272528 lambda!272372))))

(declare-fun bs!1236519 () Bool)

(assert (= bs!1236519 (and b!5331881 d!1711862)))

(assert (=> bs!1236519 (not (= lambda!272528 lambda!272484))))

(declare-fun bs!1236520 () Bool)

(assert (= bs!1236520 (and b!5331881 d!1711324)))

(assert (=> bs!1236520 (not (= lambda!272528 lambda!272381))))

(declare-fun bs!1236521 () Bool)

(assert (= bs!1236521 (and b!5331881 d!1711356)))

(assert (=> bs!1236521 (not (= lambda!272528 lambda!272388))))

(declare-fun bs!1236522 () Bool)

(assert (= bs!1236522 (and b!5331881 d!1711786)))

(assert (=> bs!1236522 (not (= lambda!272528 lambda!272474))))

(declare-fun bs!1236523 () Bool)

(assert (= bs!1236523 (and b!5331881 d!1711872)))

(assert (=> bs!1236523 (not (= lambda!272528 lambda!272487))))

(declare-fun bs!1236524 () Bool)

(assert (= bs!1236524 (and b!5331881 d!1711714)))

(assert (=> bs!1236524 (not (= lambda!272528 lambda!272467))))

(declare-fun bs!1236525 () Bool)

(assert (= bs!1236525 (and b!5331881 d!1711374)))

(assert (=> bs!1236525 (not (= lambda!272528 lambda!272405))))

(declare-fun bs!1236526 () Bool)

(assert (= bs!1236526 (and b!5331881 d!1711376)))

(assert (=> bs!1236526 (not (= lambda!272528 lambda!272408))))

(declare-fun bs!1236527 () Bool)

(assert (= bs!1236527 (and b!5331881 d!1711864)))

(assert (=> bs!1236527 (not (= lambda!272528 lambda!272485))))

(declare-fun bs!1236528 () Bool)

(assert (= bs!1236528 (and b!5331881 d!1711816)))

(assert (=> bs!1236528 (not (= lambda!272528 lambda!272476))))

(declare-fun bs!1236529 () Bool)

(assert (= bs!1236529 (and b!5331881 b!5330871)))

(declare-fun lt!2174630 () Int)

(assert (=> bs!1236529 (= (= lt!2174630 lt!2174558) (= lambda!272528 lambda!272453))))

(declare-fun bs!1236530 () Bool)

(assert (= bs!1236530 (and b!5331881 d!1711346)))

(assert (=> bs!1236530 (not (= lambda!272528 lambda!272384))))

(declare-fun bs!1236531 () Bool)

(assert (= bs!1236531 (and b!5331881 d!1712084)))

(assert (=> bs!1236531 (not (= lambda!272528 lambda!272521))))

(declare-fun bs!1236532 () Bool)

(assert (= bs!1236532 (and b!5331881 b!5330869)))

(assert (=> bs!1236532 (= (= lt!2174630 lt!2174557) (= lambda!272528 lambda!272452))))

(assert (=> b!5331881 true))

(declare-fun bs!1236533 () Bool)

(declare-fun b!5331883 () Bool)

(assert (= bs!1236533 (and b!5331883 b!5329319)))

(declare-fun lambda!272529 () Int)

(assert (=> bs!1236533 (not (= lambda!272529 lambda!272305))))

(declare-fun bs!1236534 () Bool)

(assert (= bs!1236534 (and b!5331883 d!1711294)))

(assert (=> bs!1236534 (not (= lambda!272529 lambda!272372))))

(declare-fun bs!1236535 () Bool)

(assert (= bs!1236535 (and b!5331883 d!1711862)))

(assert (=> bs!1236535 (not (= lambda!272529 lambda!272484))))

(declare-fun bs!1236536 () Bool)

(assert (= bs!1236536 (and b!5331883 d!1711324)))

(assert (=> bs!1236536 (not (= lambda!272529 lambda!272381))))

(declare-fun bs!1236537 () Bool)

(assert (= bs!1236537 (and b!5331883 d!1711356)))

(assert (=> bs!1236537 (not (= lambda!272529 lambda!272388))))

(declare-fun bs!1236538 () Bool)

(assert (= bs!1236538 (and b!5331883 d!1711786)))

(assert (=> bs!1236538 (not (= lambda!272529 lambda!272474))))

(declare-fun bs!1236539 () Bool)

(assert (= bs!1236539 (and b!5331883 d!1711872)))

(assert (=> bs!1236539 (not (= lambda!272529 lambda!272487))))

(declare-fun bs!1236540 () Bool)

(assert (= bs!1236540 (and b!5331883 d!1711714)))

(assert (=> bs!1236540 (not (= lambda!272529 lambda!272467))))

(declare-fun bs!1236541 () Bool)

(assert (= bs!1236541 (and b!5331883 d!1711374)))

(assert (=> bs!1236541 (not (= lambda!272529 lambda!272405))))

(declare-fun bs!1236542 () Bool)

(assert (= bs!1236542 (and b!5331883 d!1711380)))

(assert (=> bs!1236542 (not (= lambda!272529 lambda!272409))))

(declare-fun bs!1236543 () Bool)

(assert (= bs!1236543 (and b!5331883 b!5331881)))

(declare-fun lt!2174631 () Int)

(assert (=> bs!1236543 (= (= lt!2174631 lt!2174630) (= lambda!272529 lambda!272528))))

(declare-fun bs!1236544 () Bool)

(assert (= bs!1236544 (and b!5331883 d!1711376)))

(assert (=> bs!1236544 (not (= lambda!272529 lambda!272408))))

(declare-fun bs!1236545 () Bool)

(assert (= bs!1236545 (and b!5331883 d!1711864)))

(assert (=> bs!1236545 (not (= lambda!272529 lambda!272485))))

(declare-fun bs!1236546 () Bool)

(assert (= bs!1236546 (and b!5331883 d!1711816)))

(assert (=> bs!1236546 (not (= lambda!272529 lambda!272476))))

(declare-fun bs!1236547 () Bool)

(assert (= bs!1236547 (and b!5331883 b!5330871)))

(assert (=> bs!1236547 (= (= lt!2174631 lt!2174558) (= lambda!272529 lambda!272453))))

(declare-fun bs!1236548 () Bool)

(assert (= bs!1236548 (and b!5331883 d!1711346)))

(assert (=> bs!1236548 (not (= lambda!272529 lambda!272384))))

(declare-fun bs!1236549 () Bool)

(assert (= bs!1236549 (and b!5331883 d!1712084)))

(assert (=> bs!1236549 (not (= lambda!272529 lambda!272521))))

(declare-fun bs!1236550 () Bool)

(assert (= bs!1236550 (and b!5331883 b!5330869)))

(assert (=> bs!1236550 (= (= lt!2174631 lt!2174557) (= lambda!272529 lambda!272452))))

(assert (=> b!5331883 true))

(declare-fun d!1712150 () Bool)

(declare-fun e!3311649 () Bool)

(assert (=> d!1712150 e!3311649))

(declare-fun res!2261469 () Bool)

(assert (=> d!1712150 (=> (not res!2261469) (not e!3311649))))

(assert (=> d!1712150 (= res!2261469 (>= lt!2174631 0))))

(declare-fun e!3311650 () Int)

(assert (=> d!1712150 (= lt!2174631 e!3311650)))

(declare-fun c!927380 () Bool)

(assert (=> d!1712150 (= c!927380 ((_ is Cons!61167) (exprs!4881 (h!67616 zl!343))))))

(assert (=> d!1712150 (= (contextDepth!60 (h!67616 zl!343)) lt!2174631)))

(assert (=> b!5331881 (= e!3311650 lt!2174630)))

(assert (=> b!5331881 (= lt!2174630 (maxBigInt!0 (regexDepth!163 (h!67615 (exprs!4881 (h!67616 zl!343)))) (contextDepth!60 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun lt!2174629 () Unit!153506)

(assert (=> b!5331881 (= lt!2174629 (lemmaForallRegexDepthBiggerThanTransitive!12 (t!374506 (exprs!4881 (h!67616 zl!343))) lt!2174630 (contextDepth!60 (Context!8763 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(assert (=> b!5331881 (forall!14415 (t!374506 (exprs!4881 (h!67616 zl!343))) lambda!272528)))

(declare-fun lt!2174628 () Unit!153506)

(assert (=> b!5331881 (= lt!2174628 lt!2174629)))

(declare-fun b!5331882 () Bool)

(assert (=> b!5331882 (= e!3311650 0)))

(assert (=> b!5331883 (= e!3311649 (forall!14415 (exprs!4881 (h!67616 zl!343)) lambda!272529))))

(assert (= (and d!1712150 c!927380) b!5331881))

(assert (= (and d!1712150 (not c!927380)) b!5331882))

(assert (= (and d!1712150 res!2261469) b!5331883))

(declare-fun m!6365332 () Bool)

(assert (=> b!5331881 m!6365332))

(declare-fun m!6365334 () Bool)

(assert (=> b!5331881 m!6365334))

(declare-fun m!6365336 () Bool)

(assert (=> b!5331881 m!6365336))

(declare-fun m!6365338 () Bool)

(assert (=> b!5331881 m!6365338))

(assert (=> b!5331881 m!6365332))

(assert (=> b!5331881 m!6365334))

(declare-fun m!6365340 () Bool)

(assert (=> b!5331881 m!6365340))

(assert (=> b!5331881 m!6365334))

(declare-fun m!6365342 () Bool)

(assert (=> b!5331883 m!6365342))

(assert (=> b!5330207 d!1712150))

(declare-fun d!1712152 () Bool)

(assert (=> d!1712152 (= (maxBigInt!0 (contextDepth!60 (h!67616 zl!343)) (zipperDepth!106 (t!374507 zl!343))) (ite (>= (contextDepth!60 (h!67616 zl!343)) (zipperDepth!106 (t!374507 zl!343))) (contextDepth!60 (h!67616 zl!343)) (zipperDepth!106 (t!374507 zl!343))))))

(assert (=> b!5330207 d!1712152))

(declare-fun d!1712154 () Bool)

(declare-fun res!2261470 () Bool)

(declare-fun e!3311651 () Bool)

(assert (=> d!1712154 (=> res!2261470 e!3311651)))

(assert (=> d!1712154 (= res!2261470 ((_ is Nil!61168) (t!374507 zl!343)))))

(assert (=> d!1712154 (= (forall!14417 (t!374507 zl!343) lambda!272401) e!3311651)))

(declare-fun b!5331884 () Bool)

(declare-fun e!3311652 () Bool)

(assert (=> b!5331884 (= e!3311651 e!3311652)))

(declare-fun res!2261471 () Bool)

(assert (=> b!5331884 (=> (not res!2261471) (not e!3311652))))

(assert (=> b!5331884 (= res!2261471 (dynLambda!24191 lambda!272401 (h!67616 (t!374507 zl!343))))))

(declare-fun b!5331885 () Bool)

(assert (=> b!5331885 (= e!3311652 (forall!14417 (t!374507 (t!374507 zl!343)) lambda!272401))))

(assert (= (and d!1712154 (not res!2261470)) b!5331884))

(assert (= (and b!5331884 res!2261471) b!5331885))

(declare-fun b_lambda!205063 () Bool)

(assert (=> (not b_lambda!205063) (not b!5331884)))

(declare-fun m!6365344 () Bool)

(assert (=> b!5331884 m!6365344))

(declare-fun m!6365346 () Bool)

(assert (=> b!5331885 m!6365346))

(assert (=> b!5330207 d!1712154))

(declare-fun bs!1236551 () Bool)

(declare-fun d!1712156 () Bool)

(assert (= bs!1236551 (and d!1712156 b!5330207)))

(declare-fun lambda!272530 () Int)

(assert (=> bs!1236551 (not (= lambda!272530 lambda!272401))))

(declare-fun bs!1236552 () Bool)

(assert (= bs!1236552 (and d!1712156 d!1711698)))

(assert (=> bs!1236552 (not (= lambda!272530 lambda!272464))))

(declare-fun bs!1236553 () Bool)

(assert (= bs!1236553 (and d!1712156 d!1711824)))

(assert (=> bs!1236553 (not (= lambda!272530 lambda!272477))))

(declare-fun bs!1236554 () Bool)

(assert (= bs!1236554 (and d!1712156 b!5330204)))

(assert (=> bs!1236554 (not (= lambda!272530 lambda!272399))))

(declare-fun bs!1236555 () Bool)

(assert (= bs!1236555 (and d!1712156 b!5330896)))

(assert (=> bs!1236555 (not (= lambda!272530 lambda!272456))))

(declare-fun bs!1236556 () Bool)

(assert (= bs!1236556 (and d!1712156 b!5330202)))

(assert (=> bs!1236556 (not (= lambda!272530 lambda!272398))))

(declare-fun bs!1236557 () Bool)

(assert (= bs!1236557 (and d!1712156 d!1712114)))

(assert (=> bs!1236557 (not (= lambda!272530 lambda!272522))))

(declare-fun bs!1236558 () Bool)

(assert (= bs!1236558 (and d!1712156 d!1711916)))

(assert (=> bs!1236558 (not (= lambda!272530 lambda!272500))))

(declare-fun bs!1236559 () Bool)

(assert (= bs!1236559 (and d!1712156 d!1712134)))

(assert (=> bs!1236559 (not (= lambda!272530 lambda!272526))))

(declare-fun bs!1236560 () Bool)

(assert (= bs!1236560 (and d!1712156 d!1711676)))

(assert (=> bs!1236560 (= (and (= lt!2174479 lt!2174475) (= lambda!272400 lambda!272397)) (= lambda!272530 lambda!272460))))

(declare-fun bs!1236561 () Bool)

(assert (= bs!1236561 (and d!1712156 b!5330894)))

(assert (=> bs!1236561 (not (= lambda!272530 lambda!272455))))

(declare-fun bs!1236562 () Bool)

(assert (= bs!1236562 (and d!1712156 d!1712138)))

(assert (=> bs!1236562 (not (= lambda!272530 lambda!272527))))

(declare-fun bs!1236563 () Bool)

(assert (= bs!1236563 (and d!1712156 b!5330209)))

(assert (=> bs!1236563 (not (= lambda!272530 lambda!272402))))

(assert (=> d!1712156 true))

(assert (=> d!1712156 true))

(assert (=> d!1712156 (< (dynLambda!24192 order!27095 lambda!272400) (dynLambda!24193 order!27097 lambda!272530))))

(assert (=> d!1712156 (forall!14417 (t!374507 zl!343) lambda!272530)))

(declare-fun lt!2174632 () Unit!153506)

(assert (=> d!1712156 (= lt!2174632 (choose!39928 (t!374507 zl!343) lt!2174479 (zipperDepth!106 (t!374507 zl!343)) lambda!272400))))

(assert (=> d!1712156 (>= lt!2174479 (zipperDepth!106 (t!374507 zl!343)))))

(assert (=> d!1712156 (= (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 zl!343) lt!2174479 (zipperDepth!106 (t!374507 zl!343)) lambda!272400) lt!2174632)))

(declare-fun bs!1236564 () Bool)

(assert (= bs!1236564 d!1712156))

(declare-fun m!6365348 () Bool)

(assert (=> bs!1236564 m!6365348))

(assert (=> bs!1236564 m!6363696))

(declare-fun m!6365350 () Bool)

(assert (=> bs!1236564 m!6365350))

(assert (=> b!5330207 d!1712156))

(declare-fun bs!1236565 () Bool)

(declare-fun b!5331886 () Bool)

(assert (= bs!1236565 (and b!5331886 b!5330202)))

(declare-fun lambda!272531 () Int)

(assert (=> bs!1236565 (= lambda!272531 lambda!272397)))

(declare-fun bs!1236566 () Bool)

(assert (= bs!1236566 (and b!5331886 b!5330207)))

(assert (=> bs!1236566 (= lambda!272531 lambda!272400)))

(declare-fun bs!1236567 () Bool)

(assert (= bs!1236567 (and b!5331886 b!5330894)))

(assert (=> bs!1236567 (= lambda!272531 lambda!272454)))

(declare-fun lambda!272532 () Int)

(declare-fun lt!2174636 () Int)

(assert (=> bs!1236566 (= (= lt!2174636 lt!2174479) (= lambda!272532 lambda!272401))))

(declare-fun bs!1236568 () Bool)

(assert (= bs!1236568 (and b!5331886 d!1711698)))

(assert (=> bs!1236568 (not (= lambda!272532 lambda!272464))))

(declare-fun bs!1236569 () Bool)

(assert (= bs!1236569 (and b!5331886 d!1711824)))

(assert (=> bs!1236569 (not (= lambda!272532 lambda!272477))))

(declare-fun bs!1236570 () Bool)

(assert (= bs!1236570 (and b!5331886 b!5330204)))

(assert (=> bs!1236570 (= (= lt!2174636 lt!2174473) (= lambda!272532 lambda!272399))))

(declare-fun bs!1236571 () Bool)

(assert (= bs!1236571 (and b!5331886 b!5330896)))

(assert (=> bs!1236571 (= (= lt!2174636 lt!2174562) (= lambda!272532 lambda!272456))))

(declare-fun bs!1236572 () Bool)

(assert (= bs!1236572 (and b!5331886 d!1712156)))

(assert (=> bs!1236572 (not (= lambda!272532 lambda!272530))))

(assert (=> bs!1236565 (= (= lt!2174636 lt!2174475) (= lambda!272532 lambda!272398))))

(declare-fun bs!1236573 () Bool)

(assert (= bs!1236573 (and b!5331886 d!1712114)))

(assert (=> bs!1236573 (not (= lambda!272532 lambda!272522))))

(declare-fun bs!1236574 () Bool)

(assert (= bs!1236574 (and b!5331886 d!1711916)))

(assert (=> bs!1236574 (not (= lambda!272532 lambda!272500))))

(declare-fun bs!1236575 () Bool)

(assert (= bs!1236575 (and b!5331886 d!1712134)))

(assert (=> bs!1236575 (not (= lambda!272532 lambda!272526))))

(declare-fun bs!1236576 () Bool)

(assert (= bs!1236576 (and b!5331886 d!1711676)))

(assert (=> bs!1236576 (not (= lambda!272532 lambda!272460))))

(assert (=> bs!1236567 (= (= lt!2174636 lt!2174564) (= lambda!272532 lambda!272455))))

(declare-fun bs!1236577 () Bool)

(assert (= bs!1236577 (and b!5331886 d!1712138)))

(assert (=> bs!1236577 (not (= lambda!272532 lambda!272527))))

(declare-fun bs!1236578 () Bool)

(assert (= bs!1236578 (and b!5331886 b!5330209)))

(assert (=> bs!1236578 (= (= lt!2174636 lt!2174477) (= lambda!272532 lambda!272402))))

(assert (=> b!5331886 true))

(declare-fun bs!1236579 () Bool)

(declare-fun b!5331888 () Bool)

(assert (= bs!1236579 (and b!5331888 b!5330207)))

(declare-fun lt!2174634 () Int)

(declare-fun lambda!272533 () Int)

(assert (=> bs!1236579 (= (= lt!2174634 lt!2174479) (= lambda!272533 lambda!272401))))

(declare-fun bs!1236580 () Bool)

(assert (= bs!1236580 (and b!5331888 d!1711698)))

(assert (=> bs!1236580 (not (= lambda!272533 lambda!272464))))

(declare-fun bs!1236581 () Bool)

(assert (= bs!1236581 (and b!5331888 d!1711824)))

(assert (=> bs!1236581 (not (= lambda!272533 lambda!272477))))

(declare-fun bs!1236582 () Bool)

(assert (= bs!1236582 (and b!5331888 b!5330204)))

(assert (=> bs!1236582 (= (= lt!2174634 lt!2174473) (= lambda!272533 lambda!272399))))

(declare-fun bs!1236583 () Bool)

(assert (= bs!1236583 (and b!5331888 b!5330896)))

(assert (=> bs!1236583 (= (= lt!2174634 lt!2174562) (= lambda!272533 lambda!272456))))

(declare-fun bs!1236584 () Bool)

(assert (= bs!1236584 (and b!5331888 d!1712156)))

(assert (=> bs!1236584 (not (= lambda!272533 lambda!272530))))

(declare-fun bs!1236585 () Bool)

(assert (= bs!1236585 (and b!5331888 b!5330202)))

(assert (=> bs!1236585 (= (= lt!2174634 lt!2174475) (= lambda!272533 lambda!272398))))

(declare-fun bs!1236586 () Bool)

(assert (= bs!1236586 (and b!5331888 d!1712114)))

(assert (=> bs!1236586 (not (= lambda!272533 lambda!272522))))

(declare-fun bs!1236587 () Bool)

(assert (= bs!1236587 (and b!5331888 d!1711916)))

(assert (=> bs!1236587 (not (= lambda!272533 lambda!272500))))

(declare-fun bs!1236588 () Bool)

(assert (= bs!1236588 (and b!5331888 d!1712134)))

(assert (=> bs!1236588 (not (= lambda!272533 lambda!272526))))

(declare-fun bs!1236589 () Bool)

(assert (= bs!1236589 (and b!5331888 d!1711676)))

(assert (=> bs!1236589 (not (= lambda!272533 lambda!272460))))

(declare-fun bs!1236590 () Bool)

(assert (= bs!1236590 (and b!5331888 d!1712138)))

(assert (=> bs!1236590 (not (= lambda!272533 lambda!272527))))

(declare-fun bs!1236591 () Bool)

(assert (= bs!1236591 (and b!5331888 b!5330209)))

(assert (=> bs!1236591 (= (= lt!2174634 lt!2174477) (= lambda!272533 lambda!272402))))

(declare-fun bs!1236592 () Bool)

(assert (= bs!1236592 (and b!5331888 b!5331886)))

(assert (=> bs!1236592 (= (= lt!2174634 lt!2174636) (= lambda!272533 lambda!272532))))

(declare-fun bs!1236593 () Bool)

(assert (= bs!1236593 (and b!5331888 b!5330894)))

(assert (=> bs!1236593 (= (= lt!2174634 lt!2174564) (= lambda!272533 lambda!272455))))

(assert (=> b!5331888 true))

(declare-fun d!1712158 () Bool)

(declare-fun e!3311653 () Bool)

(assert (=> d!1712158 e!3311653))

(declare-fun res!2261472 () Bool)

(assert (=> d!1712158 (=> (not res!2261472) (not e!3311653))))

(assert (=> d!1712158 (= res!2261472 (>= lt!2174634 0))))

(declare-fun e!3311654 () Int)

(assert (=> d!1712158 (= lt!2174634 e!3311654)))

(declare-fun c!927381 () Bool)

(assert (=> d!1712158 (= c!927381 ((_ is Cons!61168) (t!374507 zl!343)))))

(assert (=> d!1712158 (= (zipperDepth!106 (t!374507 zl!343)) lt!2174634)))

(assert (=> b!5331886 (= e!3311654 lt!2174636)))

(assert (=> b!5331886 (= lt!2174636 (maxBigInt!0 (contextDepth!60 (h!67616 (t!374507 zl!343))) (zipperDepth!106 (t!374507 (t!374507 zl!343)))))))

(declare-fun lt!2174633 () Unit!153506)

(assert (=> b!5331886 (= lt!2174633 (lemmaForallContextDepthBiggerThanTransitive!54 (t!374507 (t!374507 zl!343)) lt!2174636 (zipperDepth!106 (t!374507 (t!374507 zl!343))) lambda!272531))))

(assert (=> b!5331886 (forall!14417 (t!374507 (t!374507 zl!343)) lambda!272532)))

(declare-fun lt!2174635 () Unit!153506)

(assert (=> b!5331886 (= lt!2174635 lt!2174633)))

(declare-fun b!5331887 () Bool)

(assert (=> b!5331887 (= e!3311654 0)))

(assert (=> b!5331888 (= e!3311653 (forall!14417 (t!374507 zl!343) lambda!272533))))

(assert (= (and d!1712158 c!927381) b!5331886))

(assert (= (and d!1712158 (not c!927381)) b!5331887))

(assert (= (and d!1712158 res!2261472) b!5331888))

(declare-fun m!6365352 () Bool)

(assert (=> b!5331886 m!6365352))

(declare-fun m!6365354 () Bool)

(assert (=> b!5331886 m!6365354))

(declare-fun m!6365356 () Bool)

(assert (=> b!5331886 m!6365356))

(assert (=> b!5331886 m!6365354))

(declare-fun m!6365358 () Bool)

(assert (=> b!5331886 m!6365358))

(assert (=> b!5331886 m!6365352))

(declare-fun m!6365360 () Bool)

(assert (=> b!5331886 m!6365360))

(assert (=> b!5331886 m!6365354))

(declare-fun m!6365362 () Bool)

(assert (=> b!5331888 m!6365362))

(assert (=> b!5330207 d!1712158))

(assert (=> d!1711296 d!1711706))

(declare-fun bs!1236594 () Bool)

(declare-fun b!5331897 () Bool)

(assert (= bs!1236594 (and b!5331897 b!5329333)))

(declare-fun lambda!272534 () Int)

(assert (=> bs!1236594 (not (= lambda!272534 lambda!272301))))

(declare-fun bs!1236595 () Bool)

(assert (= bs!1236595 (and b!5331897 b!5330177)))

(assert (=> bs!1236595 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 lt!2174304)) (= (regOne!30507 lt!2174318) lt!2174304)) (= lambda!272534 lambda!272389))))

(declare-fun bs!1236596 () Bool)

(assert (= bs!1236596 (and b!5331897 b!5331320)))

(assert (=> bs!1236596 (not (= lambda!272534 lambda!272491))))

(declare-fun bs!1236597 () Bool)

(assert (= bs!1236597 (and b!5331897 b!5330147)))

(assert (=> bs!1236597 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 lt!2174318)) (= (regOne!30507 lt!2174318) lt!2174318)) (= lambda!272534 lambda!272385))))

(assert (=> bs!1236594 (not (= lambda!272534 lambda!272300))))

(declare-fun bs!1236598 () Bool)

(assert (= bs!1236598 (and b!5331897 b!5330051)))

(assert (=> bs!1236598 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 r!7292)) (= (regOne!30507 lt!2174318) r!7292)) (= lambda!272534 lambda!272377))))

(declare-fun bs!1236599 () Bool)

(assert (= bs!1236599 (and b!5331897 d!1712034)))

(assert (=> bs!1236599 (not (= lambda!272534 lambda!272518))))

(declare-fun bs!1236600 () Bool)

(assert (= bs!1236600 (and b!5331897 d!1711250)))

(assert (=> bs!1236600 (not (= lambda!272534 lambda!272362))))

(declare-fun bs!1236601 () Bool)

(assert (= bs!1236601 (and b!5331897 d!1711262)))

(assert (=> bs!1236601 (not (= lambda!272534 lambda!272369))))

(declare-fun bs!1236602 () Bool)

(assert (= bs!1236602 (and b!5331897 d!1712072)))

(assert (=> bs!1236602 (not (= lambda!272534 lambda!272520))))

(declare-fun bs!1236603 () Bool)

(assert (= bs!1236603 (and b!5331897 b!5331555)))

(assert (=> bs!1236603 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 (regTwo!30507 lt!2174318))) (= (regOne!30507 lt!2174318) (regTwo!30507 lt!2174318))) (= lambda!272534 lambda!272509))))

(declare-fun bs!1236604 () Bool)

(assert (= bs!1236604 (and b!5331897 d!1712132)))

(assert (=> bs!1236604 (not (= lambda!272534 lambda!272525))))

(declare-fun bs!1236605 () Bool)

(assert (= bs!1236605 (and b!5331897 b!5331475)))

(assert (=> bs!1236605 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 (regOne!30507 r!7292))) (= (regOne!30507 lt!2174318) (regOne!30507 r!7292))) (= lambda!272534 lambda!272505))))

(declare-fun bs!1236606 () Bool)

(assert (= bs!1236606 (and b!5331897 b!5330148)))

(assert (=> bs!1236606 (not (= lambda!272534 lambda!272386))))

(assert (=> bs!1236604 (not (= lambda!272534 lambda!272524))))

(declare-fun bs!1236607 () Bool)

(assert (= bs!1236607 (and b!5331897 b!5331476)))

(assert (=> bs!1236607 (not (= lambda!272534 lambda!272507))))

(assert (=> bs!1236601 (not (= lambda!272534 lambda!272368))))

(declare-fun bs!1236608 () Bool)

(assert (= bs!1236608 (and b!5331897 b!5331556)))

(assert (=> bs!1236608 (not (= lambda!272534 lambda!272510))))

(declare-fun bs!1236609 () Bool)

(assert (= bs!1236609 (and b!5331897 d!1711336)))

(assert (=> bs!1236609 (not (= lambda!272534 lambda!272382))))

(declare-fun bs!1236610 () Bool)

(assert (= bs!1236610 (and b!5331897 d!1711350)))

(assert (=> bs!1236610 (not (= lambda!272534 lambda!272387))))

(assert (=> bs!1236609 (not (= lambda!272534 lambda!272383))))

(declare-fun bs!1236611 () Bool)

(assert (= bs!1236611 (and b!5331897 b!5331405)))

(assert (=> bs!1236611 (not (= lambda!272534 lambda!272495))))

(declare-fun bs!1236612 () Bool)

(assert (= bs!1236612 (and b!5331897 b!5331241)))

(assert (=> bs!1236612 (not (= lambda!272534 lambda!272481))))

(declare-fun bs!1236613 () Bool)

(assert (= bs!1236613 (and b!5331897 d!1711564)))

(assert (=> bs!1236613 (not (= lambda!272534 lambda!272438))))

(declare-fun bs!1236614 () Bool)

(assert (= bs!1236614 (and b!5331897 b!5329319)))

(assert (=> bs!1236614 (not (= lambda!272534 lambda!272304))))

(declare-fun bs!1236615 () Bool)

(assert (= bs!1236615 (and b!5331897 b!5330178)))

(assert (=> bs!1236615 (not (= lambda!272534 lambda!272390))))

(assert (=> bs!1236599 (not (= lambda!272534 lambda!272517))))

(assert (=> bs!1236614 (not (= lambda!272534 lambda!272303))))

(declare-fun bs!1236616 () Bool)

(assert (= bs!1236616 (and b!5331897 b!5330052)))

(assert (=> bs!1236616 (not (= lambda!272534 lambda!272378))))

(declare-fun bs!1236617 () Bool)

(assert (= bs!1236617 (and b!5331897 b!5331404)))

(assert (=> bs!1236617 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 (regTwo!30507 r!7292))) (= (regOne!30507 lt!2174318) (regTwo!30507 r!7292))) (= lambda!272534 lambda!272494))))

(declare-fun bs!1236618 () Bool)

(assert (= bs!1236618 (and b!5331897 b!5331319)))

(assert (=> bs!1236618 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 (regTwo!30507 lt!2174304))) (= (regOne!30507 lt!2174318) (regTwo!30507 lt!2174304))) (= lambda!272534 lambda!272489))))

(declare-fun bs!1236619 () Bool)

(assert (= bs!1236619 (and b!5331897 b!5331240)))

(assert (=> bs!1236619 (= (and (= (reg!15326 (regOne!30507 lt!2174318)) (reg!15326 (regOne!30507 lt!2174304))) (= (regOne!30507 lt!2174318) (regOne!30507 lt!2174304))) (= lambda!272534 lambda!272480))))

(assert (=> b!5331897 true))

(assert (=> b!5331897 true))

(declare-fun bs!1236620 () Bool)

(declare-fun b!5331898 () Bool)

(assert (= bs!1236620 (and b!5331898 b!5329333)))

(declare-fun lambda!272535 () Int)

(assert (=> bs!1236620 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272535 lambda!272301))))

(declare-fun bs!1236621 () Bool)

(assert (= bs!1236621 (and b!5331898 b!5330177)))

(assert (=> bs!1236621 (not (= lambda!272535 lambda!272389))))

(declare-fun bs!1236622 () Bool)

(assert (= bs!1236622 (and b!5331898 b!5331320)))

(assert (=> bs!1236622 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regTwo!30507 lt!2174304))) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 (regTwo!30507 lt!2174304)))) (= lambda!272535 lambda!272491))))

(declare-fun bs!1236623 () Bool)

(assert (= bs!1236623 (and b!5331898 b!5330147)))

(assert (=> bs!1236623 (not (= lambda!272535 lambda!272385))))

(assert (=> bs!1236620 (not (= lambda!272535 lambda!272300))))

(declare-fun bs!1236624 () Bool)

(assert (= bs!1236624 (and b!5331898 b!5330051)))

(assert (=> bs!1236624 (not (= lambda!272535 lambda!272377))))

(declare-fun bs!1236625 () Bool)

(assert (= bs!1236625 (and b!5331898 d!1712034)))

(assert (=> bs!1236625 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272535 lambda!272518))))

(declare-fun bs!1236626 () Bool)

(assert (= bs!1236626 (and b!5331898 d!1711250)))

(assert (=> bs!1236626 (not (= lambda!272535 lambda!272362))))

(declare-fun bs!1236627 () Bool)

(assert (= bs!1236627 (and b!5331898 d!1712072)))

(assert (=> bs!1236627 (not (= lambda!272535 lambda!272520))))

(declare-fun bs!1236628 () Bool)

(assert (= bs!1236628 (and b!5331898 b!5331555)))

(assert (=> bs!1236628 (not (= lambda!272535 lambda!272509))))

(declare-fun bs!1236629 () Bool)

(assert (= bs!1236629 (and b!5331898 d!1712132)))

(assert (=> bs!1236629 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174318)) lt!2174318)) (= lambda!272535 lambda!272525))))

(declare-fun bs!1236630 () Bool)

(assert (= bs!1236630 (and b!5331898 b!5331475)))

(assert (=> bs!1236630 (not (= lambda!272535 lambda!272505))))

(declare-fun bs!1236631 () Bool)

(assert (= bs!1236631 (and b!5331898 b!5330148)))

(assert (=> bs!1236631 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 lt!2174318)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 lt!2174318))) (= lambda!272535 lambda!272386))))

(assert (=> bs!1236629 (not (= lambda!272535 lambda!272524))))

(declare-fun bs!1236632 () Bool)

(assert (= bs!1236632 (and b!5331898 b!5331476)))

(assert (=> bs!1236632 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regOne!30507 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 (regOne!30507 r!7292)))) (= lambda!272535 lambda!272507))))

(declare-fun bs!1236633 () Bool)

(assert (= bs!1236633 (and b!5331898 d!1711262)))

(assert (=> bs!1236633 (not (= lambda!272535 lambda!272368))))

(declare-fun bs!1236634 () Bool)

(assert (= bs!1236634 (and b!5331898 b!5331556)))

(assert (=> bs!1236634 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regTwo!30507 lt!2174318))) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 (regTwo!30507 lt!2174318)))) (= lambda!272535 lambda!272510))))

(declare-fun bs!1236635 () Bool)

(assert (= bs!1236635 (and b!5331898 d!1711336)))

(assert (=> bs!1236635 (not (= lambda!272535 lambda!272382))))

(declare-fun bs!1236636 () Bool)

(assert (= bs!1236636 (and b!5331898 d!1711350)))

(assert (=> bs!1236636 (not (= lambda!272535 lambda!272387))))

(assert (=> bs!1236635 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174318)) lt!2174318)) (= lambda!272535 lambda!272383))))

(declare-fun bs!1236637 () Bool)

(assert (= bs!1236637 (and b!5331898 b!5331405)))

(assert (=> bs!1236637 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regTwo!30507 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 (regTwo!30507 r!7292)))) (= lambda!272535 lambda!272495))))

(declare-fun bs!1236638 () Bool)

(assert (= bs!1236638 (and b!5331898 b!5331241)))

(assert (=> bs!1236638 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regOne!30507 lt!2174304))) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 (regOne!30507 lt!2174304)))) (= lambda!272535 lambda!272481))))

(declare-fun bs!1236639 () Bool)

(assert (= bs!1236639 (and b!5331898 d!1711564)))

(assert (=> bs!1236639 (not (= lambda!272535 lambda!272438))))

(declare-fun bs!1236640 () Bool)

(assert (= bs!1236640 (and b!5331898 b!5329319)))

(assert (=> bs!1236640 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 (regOne!30506 r!7292))) (= (regTwo!30506 (regOne!30507 lt!2174318)) lt!2174318)) (= lambda!272535 lambda!272304))))

(declare-fun bs!1236641 () Bool)

(assert (= bs!1236641 (and b!5331898 b!5330178)))

(assert (=> bs!1236641 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 lt!2174304)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 lt!2174304))) (= lambda!272535 lambda!272390))))

(assert (=> bs!1236625 (not (= lambda!272535 lambda!272517))))

(assert (=> bs!1236633 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272535 lambda!272369))))

(declare-fun bs!1236642 () Bool)

(assert (= bs!1236642 (and b!5331898 b!5331897)))

(assert (=> bs!1236642 (not (= lambda!272535 lambda!272534))))

(assert (=> bs!1236640 (not (= lambda!272535 lambda!272303))))

(declare-fun bs!1236643 () Bool)

(assert (= bs!1236643 (and b!5331898 b!5330052)))

(assert (=> bs!1236643 (= (and (= (regOne!30506 (regOne!30507 lt!2174318)) (regOne!30506 r!7292)) (= (regTwo!30506 (regOne!30507 lt!2174318)) (regTwo!30506 r!7292))) (= lambda!272535 lambda!272378))))

(declare-fun bs!1236644 () Bool)

(assert (= bs!1236644 (and b!5331898 b!5331404)))

(assert (=> bs!1236644 (not (= lambda!272535 lambda!272494))))

(declare-fun bs!1236645 () Bool)

(assert (= bs!1236645 (and b!5331898 b!5331319)))

(assert (=> bs!1236645 (not (= lambda!272535 lambda!272489))))

(declare-fun bs!1236646 () Bool)

(assert (= bs!1236646 (and b!5331898 b!5331240)))

(assert (=> bs!1236646 (not (= lambda!272535 lambda!272480))))

(assert (=> b!5331898 true))

(assert (=> b!5331898 true))

(declare-fun d!1712160 () Bool)

(declare-fun c!927383 () Bool)

(assert (=> d!1712160 (= c!927383 ((_ is EmptyExpr!14997) (regOne!30507 lt!2174318)))))

(declare-fun e!3311655 () Bool)

(assert (=> d!1712160 (= (matchRSpec!2100 (regOne!30507 lt!2174318) s!2326) e!3311655)))

(declare-fun b!5331889 () Bool)

(declare-fun res!2261475 () Bool)

(declare-fun e!3311656 () Bool)

(assert (=> b!5331889 (=> res!2261475 e!3311656)))

(declare-fun call!381129 () Bool)

(assert (=> b!5331889 (= res!2261475 call!381129)))

(declare-fun e!3311659 () Bool)

(assert (=> b!5331889 (= e!3311659 e!3311656)))

(declare-fun b!5331890 () Bool)

(declare-fun e!3311658 () Bool)

(assert (=> b!5331890 (= e!3311658 (matchRSpec!2100 (regTwo!30507 (regOne!30507 lt!2174318)) s!2326))))

(declare-fun b!5331891 () Bool)

(declare-fun c!927385 () Bool)

(assert (=> b!5331891 (= c!927385 ((_ is ElementMatch!14997) (regOne!30507 lt!2174318)))))

(declare-fun e!3311661 () Bool)

(declare-fun e!3311660 () Bool)

(assert (=> b!5331891 (= e!3311661 e!3311660)))

(declare-fun b!5331892 () Bool)

(assert (=> b!5331892 (= e!3311655 call!381129)))

(declare-fun c!927384 () Bool)

(declare-fun bm!381124 () Bool)

(declare-fun call!381130 () Bool)

(assert (=> bm!381124 (= call!381130 (Exists!2178 (ite c!927384 lambda!272534 lambda!272535)))))

(declare-fun b!5331893 () Bool)

(declare-fun e!3311657 () Bool)

(assert (=> b!5331893 (= e!3311657 e!3311658)))

(declare-fun res!2261474 () Bool)

(assert (=> b!5331893 (= res!2261474 (matchRSpec!2100 (regOne!30507 (regOne!30507 lt!2174318)) s!2326))))

(assert (=> b!5331893 (=> res!2261474 e!3311658)))

(declare-fun b!5331894 () Bool)

(assert (=> b!5331894 (= e!3311657 e!3311659)))

(assert (=> b!5331894 (= c!927384 ((_ is Star!14997) (regOne!30507 lt!2174318)))))

(declare-fun bm!381125 () Bool)

(assert (=> bm!381125 (= call!381129 (isEmpty!33139 s!2326))))

(declare-fun b!5331895 () Bool)

(assert (=> b!5331895 (= e!3311655 e!3311661)))

(declare-fun res!2261473 () Bool)

(assert (=> b!5331895 (= res!2261473 (not ((_ is EmptyLang!14997) (regOne!30507 lt!2174318))))))

(assert (=> b!5331895 (=> (not res!2261473) (not e!3311661))))

(declare-fun b!5331896 () Bool)

(declare-fun c!927382 () Bool)

(assert (=> b!5331896 (= c!927382 ((_ is Union!14997) (regOne!30507 lt!2174318)))))

(assert (=> b!5331896 (= e!3311660 e!3311657)))

(assert (=> b!5331897 (= e!3311656 call!381130)))

(assert (=> b!5331898 (= e!3311659 call!381130)))

(declare-fun b!5331899 () Bool)

(assert (=> b!5331899 (= e!3311660 (= s!2326 (Cons!61166 (c!926649 (regOne!30507 lt!2174318)) Nil!61166)))))

(assert (= (and d!1712160 c!927383) b!5331892))

(assert (= (and d!1712160 (not c!927383)) b!5331895))

(assert (= (and b!5331895 res!2261473) b!5331891))

(assert (= (and b!5331891 c!927385) b!5331899))

(assert (= (and b!5331891 (not c!927385)) b!5331896))

(assert (= (and b!5331896 c!927382) b!5331893))

(assert (= (and b!5331896 (not c!927382)) b!5331894))

(assert (= (and b!5331893 (not res!2261474)) b!5331890))

(assert (= (and b!5331894 c!927384) b!5331889))

(assert (= (and b!5331894 (not c!927384)) b!5331898))

(assert (= (and b!5331889 (not res!2261475)) b!5331897))

(assert (= (or b!5331897 b!5331898) bm!381124))

(assert (= (or b!5331892 b!5331889) bm!381125))

(declare-fun m!6365364 () Bool)

(assert (=> b!5331890 m!6365364))

(declare-fun m!6365366 () Bool)

(assert (=> bm!381124 m!6365366))

(declare-fun m!6365368 () Bool)

(assert (=> b!5331893 m!6365368))

(assert (=> bm!381125 m!6363526))

(assert (=> b!5330143 d!1712160))

(assert (=> d!1711366 d!1711606))

(assert (=> d!1711366 d!1711718))

(assert (=> b!5330093 d!1711520))

(declare-fun b!5331901 () Bool)

(declare-fun e!3311663 () Bool)

(declare-fun tp!1483602 () Bool)

(assert (=> b!5331901 (= e!3311663 tp!1483602)))

(declare-fun tp!1483603 () Bool)

(declare-fun b!5331900 () Bool)

(declare-fun e!3311662 () Bool)

(assert (=> b!5331900 (= e!3311662 (and (inv!80739 (h!67616 (t!374507 (t!374507 zl!343)))) e!3311663 tp!1483603))))

(assert (=> b!5330281 (= tp!1483379 e!3311662)))

(assert (= b!5331900 b!5331901))

(assert (= (and b!5330281 ((_ is Cons!61168) (t!374507 (t!374507 zl!343)))) b!5331900))

(declare-fun m!6365370 () Bool)

(assert (=> b!5331900 m!6365370))

(declare-fun e!3311664 () Bool)

(assert (=> b!5330312 (= tp!1483413 e!3311664)))

(declare-fun b!5331904 () Bool)

(declare-fun tp!1483606 () Bool)

(assert (=> b!5331904 (= e!3311664 tp!1483606)))

(declare-fun b!5331905 () Bool)

(declare-fun tp!1483608 () Bool)

(declare-fun tp!1483604 () Bool)

(assert (=> b!5331905 (= e!3311664 (and tp!1483608 tp!1483604))))

(declare-fun b!5331903 () Bool)

(declare-fun tp!1483607 () Bool)

(declare-fun tp!1483605 () Bool)

(assert (=> b!5331903 (= e!3311664 (and tp!1483607 tp!1483605))))

(declare-fun b!5331902 () Bool)

(assert (=> b!5331902 (= e!3311664 tp_is_empty!39247)))

(assert (= (and b!5330312 ((_ is ElementMatch!14997) (regOne!30506 (regOne!30506 r!7292)))) b!5331902))

(assert (= (and b!5330312 ((_ is Concat!23842) (regOne!30506 (regOne!30506 r!7292)))) b!5331903))

(assert (= (and b!5330312 ((_ is Star!14997) (regOne!30506 (regOne!30506 r!7292)))) b!5331904))

(assert (= (and b!5330312 ((_ is Union!14997) (regOne!30506 (regOne!30506 r!7292)))) b!5331905))

(declare-fun e!3311665 () Bool)

(assert (=> b!5330312 (= tp!1483411 e!3311665)))

(declare-fun b!5331908 () Bool)

(declare-fun tp!1483611 () Bool)

(assert (=> b!5331908 (= e!3311665 tp!1483611)))

(declare-fun b!5331909 () Bool)

(declare-fun tp!1483613 () Bool)

(declare-fun tp!1483609 () Bool)

(assert (=> b!5331909 (= e!3311665 (and tp!1483613 tp!1483609))))

(declare-fun b!5331907 () Bool)

(declare-fun tp!1483612 () Bool)

(declare-fun tp!1483610 () Bool)

(assert (=> b!5331907 (= e!3311665 (and tp!1483612 tp!1483610))))

(declare-fun b!5331906 () Bool)

(assert (=> b!5331906 (= e!3311665 tp_is_empty!39247)))

(assert (= (and b!5330312 ((_ is ElementMatch!14997) (regTwo!30506 (regOne!30506 r!7292)))) b!5331906))

(assert (= (and b!5330312 ((_ is Concat!23842) (regTwo!30506 (regOne!30506 r!7292)))) b!5331907))

(assert (= (and b!5330312 ((_ is Star!14997) (regTwo!30506 (regOne!30506 r!7292)))) b!5331908))

(assert (= (and b!5330312 ((_ is Union!14997) (regTwo!30506 (regOne!30506 r!7292)))) b!5331909))

(declare-fun b!5331910 () Bool)

(declare-fun e!3311666 () Bool)

(declare-fun tp!1483614 () Bool)

(declare-fun tp!1483615 () Bool)

(assert (=> b!5331910 (= e!3311666 (and tp!1483614 tp!1483615))))

(assert (=> b!5330282 (= tp!1483378 e!3311666)))

(assert (= (and b!5330282 ((_ is Cons!61167) (exprs!4881 (h!67616 (t!374507 zl!343))))) b!5331910))

(declare-fun e!3311667 () Bool)

(assert (=> b!5330313 (= tp!1483412 e!3311667)))

(declare-fun b!5331913 () Bool)

(declare-fun tp!1483618 () Bool)

(assert (=> b!5331913 (= e!3311667 tp!1483618)))

(declare-fun b!5331914 () Bool)

(declare-fun tp!1483620 () Bool)

(declare-fun tp!1483616 () Bool)

(assert (=> b!5331914 (= e!3311667 (and tp!1483620 tp!1483616))))

(declare-fun b!5331912 () Bool)

(declare-fun tp!1483619 () Bool)

(declare-fun tp!1483617 () Bool)

(assert (=> b!5331912 (= e!3311667 (and tp!1483619 tp!1483617))))

(declare-fun b!5331911 () Bool)

(assert (=> b!5331911 (= e!3311667 tp_is_empty!39247)))

(assert (= (and b!5330313 ((_ is ElementMatch!14997) (reg!15326 (regOne!30506 r!7292)))) b!5331911))

(assert (= (and b!5330313 ((_ is Concat!23842) (reg!15326 (regOne!30506 r!7292)))) b!5331912))

(assert (= (and b!5330313 ((_ is Star!14997) (reg!15326 (regOne!30506 r!7292)))) b!5331913))

(assert (= (and b!5330313 ((_ is Union!14997) (reg!15326 (regOne!30506 r!7292)))) b!5331914))

(declare-fun e!3311668 () Bool)

(assert (=> b!5330314 (= tp!1483414 e!3311668)))

(declare-fun b!5331917 () Bool)

(declare-fun tp!1483623 () Bool)

(assert (=> b!5331917 (= e!3311668 tp!1483623)))

(declare-fun b!5331918 () Bool)

(declare-fun tp!1483625 () Bool)

(declare-fun tp!1483621 () Bool)

(assert (=> b!5331918 (= e!3311668 (and tp!1483625 tp!1483621))))

(declare-fun b!5331916 () Bool)

(declare-fun tp!1483624 () Bool)

(declare-fun tp!1483622 () Bool)

(assert (=> b!5331916 (= e!3311668 (and tp!1483624 tp!1483622))))

(declare-fun b!5331915 () Bool)

(assert (=> b!5331915 (= e!3311668 tp_is_empty!39247)))

(assert (= (and b!5330314 ((_ is ElementMatch!14997) (regOne!30507 (regOne!30506 r!7292)))) b!5331915))

(assert (= (and b!5330314 ((_ is Concat!23842) (regOne!30507 (regOne!30506 r!7292)))) b!5331916))

(assert (= (and b!5330314 ((_ is Star!14997) (regOne!30507 (regOne!30506 r!7292)))) b!5331917))

(assert (= (and b!5330314 ((_ is Union!14997) (regOne!30507 (regOne!30506 r!7292)))) b!5331918))

(declare-fun e!3311669 () Bool)

(assert (=> b!5330314 (= tp!1483410 e!3311669)))

(declare-fun b!5331921 () Bool)

(declare-fun tp!1483628 () Bool)

(assert (=> b!5331921 (= e!3311669 tp!1483628)))

(declare-fun b!5331922 () Bool)

(declare-fun tp!1483630 () Bool)

(declare-fun tp!1483626 () Bool)

(assert (=> b!5331922 (= e!3311669 (and tp!1483630 tp!1483626))))

(declare-fun b!5331920 () Bool)

(declare-fun tp!1483629 () Bool)

(declare-fun tp!1483627 () Bool)

(assert (=> b!5331920 (= e!3311669 (and tp!1483629 tp!1483627))))

(declare-fun b!5331919 () Bool)

(assert (=> b!5331919 (= e!3311669 tp_is_empty!39247)))

(assert (= (and b!5330314 ((_ is ElementMatch!14997) (regTwo!30507 (regOne!30506 r!7292)))) b!5331919))

(assert (= (and b!5330314 ((_ is Concat!23842) (regTwo!30507 (regOne!30506 r!7292)))) b!5331920))

(assert (= (and b!5330314 ((_ is Star!14997) (regTwo!30507 (regOne!30506 r!7292)))) b!5331921))

(assert (= (and b!5330314 ((_ is Union!14997) (regTwo!30507 (regOne!30506 r!7292)))) b!5331922))

(declare-fun e!3311670 () Bool)

(assert (=> b!5330298 (= tp!1483398 e!3311670)))

(declare-fun b!5331925 () Bool)

(declare-fun tp!1483633 () Bool)

(assert (=> b!5331925 (= e!3311670 tp!1483633)))

(declare-fun b!5331926 () Bool)

(declare-fun tp!1483635 () Bool)

(declare-fun tp!1483631 () Bool)

(assert (=> b!5331926 (= e!3311670 (and tp!1483635 tp!1483631))))

(declare-fun b!5331924 () Bool)

(declare-fun tp!1483634 () Bool)

(declare-fun tp!1483632 () Bool)

(assert (=> b!5331924 (= e!3311670 (and tp!1483634 tp!1483632))))

(declare-fun b!5331923 () Bool)

(assert (=> b!5331923 (= e!3311670 tp_is_empty!39247)))

(assert (= (and b!5330298 ((_ is ElementMatch!14997) (regOne!30506 (regTwo!30507 r!7292)))) b!5331923))

(assert (= (and b!5330298 ((_ is Concat!23842) (regOne!30506 (regTwo!30507 r!7292)))) b!5331924))

(assert (= (and b!5330298 ((_ is Star!14997) (regOne!30506 (regTwo!30507 r!7292)))) b!5331925))

(assert (= (and b!5330298 ((_ is Union!14997) (regOne!30506 (regTwo!30507 r!7292)))) b!5331926))

(declare-fun e!3311671 () Bool)

(assert (=> b!5330298 (= tp!1483396 e!3311671)))

(declare-fun b!5331929 () Bool)

(declare-fun tp!1483638 () Bool)

(assert (=> b!5331929 (= e!3311671 tp!1483638)))

(declare-fun b!5331930 () Bool)

(declare-fun tp!1483640 () Bool)

(declare-fun tp!1483636 () Bool)

(assert (=> b!5331930 (= e!3311671 (and tp!1483640 tp!1483636))))

(declare-fun b!5331928 () Bool)

(declare-fun tp!1483639 () Bool)

(declare-fun tp!1483637 () Bool)

(assert (=> b!5331928 (= e!3311671 (and tp!1483639 tp!1483637))))

(declare-fun b!5331927 () Bool)

(assert (=> b!5331927 (= e!3311671 tp_is_empty!39247)))

(assert (= (and b!5330298 ((_ is ElementMatch!14997) (regTwo!30506 (regTwo!30507 r!7292)))) b!5331927))

(assert (= (and b!5330298 ((_ is Concat!23842) (regTwo!30506 (regTwo!30507 r!7292)))) b!5331928))

(assert (= (and b!5330298 ((_ is Star!14997) (regTwo!30506 (regTwo!30507 r!7292)))) b!5331929))

(assert (= (and b!5330298 ((_ is Union!14997) (regTwo!30506 (regTwo!30507 r!7292)))) b!5331930))

(declare-fun e!3311672 () Bool)

(assert (=> b!5330303 (= tp!1483402 e!3311672)))

(declare-fun b!5331933 () Bool)

(declare-fun tp!1483643 () Bool)

(assert (=> b!5331933 (= e!3311672 tp!1483643)))

(declare-fun b!5331934 () Bool)

(declare-fun tp!1483645 () Bool)

(declare-fun tp!1483641 () Bool)

(assert (=> b!5331934 (= e!3311672 (and tp!1483645 tp!1483641))))

(declare-fun b!5331932 () Bool)

(declare-fun tp!1483644 () Bool)

(declare-fun tp!1483642 () Bool)

(assert (=> b!5331932 (= e!3311672 (and tp!1483644 tp!1483642))))

(declare-fun b!5331931 () Bool)

(assert (=> b!5331931 (= e!3311672 tp_is_empty!39247)))

(assert (= (and b!5330303 ((_ is ElementMatch!14997) (reg!15326 (reg!15326 r!7292)))) b!5331931))

(assert (= (and b!5330303 ((_ is Concat!23842) (reg!15326 (reg!15326 r!7292)))) b!5331932))

(assert (= (and b!5330303 ((_ is Star!14997) (reg!15326 (reg!15326 r!7292)))) b!5331933))

(assert (= (and b!5330303 ((_ is Union!14997) (reg!15326 (reg!15326 r!7292)))) b!5331934))

(declare-fun e!3311673 () Bool)

(assert (=> b!5330294 (= tp!1483393 e!3311673)))

(declare-fun b!5331937 () Bool)

(declare-fun tp!1483648 () Bool)

(assert (=> b!5331937 (= e!3311673 tp!1483648)))

(declare-fun b!5331938 () Bool)

(declare-fun tp!1483650 () Bool)

(declare-fun tp!1483646 () Bool)

(assert (=> b!5331938 (= e!3311673 (and tp!1483650 tp!1483646))))

(declare-fun b!5331936 () Bool)

(declare-fun tp!1483649 () Bool)

(declare-fun tp!1483647 () Bool)

(assert (=> b!5331936 (= e!3311673 (and tp!1483649 tp!1483647))))

(declare-fun b!5331935 () Bool)

(assert (=> b!5331935 (= e!3311673 tp_is_empty!39247)))

(assert (= (and b!5330294 ((_ is ElementMatch!14997) (regOne!30506 (regOne!30507 r!7292)))) b!5331935))

(assert (= (and b!5330294 ((_ is Concat!23842) (regOne!30506 (regOne!30507 r!7292)))) b!5331936))

(assert (= (and b!5330294 ((_ is Star!14997) (regOne!30506 (regOne!30507 r!7292)))) b!5331937))

(assert (= (and b!5330294 ((_ is Union!14997) (regOne!30506 (regOne!30507 r!7292)))) b!5331938))

(declare-fun e!3311674 () Bool)

(assert (=> b!5330294 (= tp!1483391 e!3311674)))

(declare-fun b!5331941 () Bool)

(declare-fun tp!1483653 () Bool)

(assert (=> b!5331941 (= e!3311674 tp!1483653)))

(declare-fun b!5331942 () Bool)

(declare-fun tp!1483655 () Bool)

(declare-fun tp!1483651 () Bool)

(assert (=> b!5331942 (= e!3311674 (and tp!1483655 tp!1483651))))

(declare-fun b!5331940 () Bool)

(declare-fun tp!1483654 () Bool)

(declare-fun tp!1483652 () Bool)

(assert (=> b!5331940 (= e!3311674 (and tp!1483654 tp!1483652))))

(declare-fun b!5331939 () Bool)

(assert (=> b!5331939 (= e!3311674 tp_is_empty!39247)))

(assert (= (and b!5330294 ((_ is ElementMatch!14997) (regTwo!30506 (regOne!30507 r!7292)))) b!5331939))

(assert (= (and b!5330294 ((_ is Concat!23842) (regTwo!30506 (regOne!30507 r!7292)))) b!5331940))

(assert (= (and b!5330294 ((_ is Star!14997) (regTwo!30506 (regOne!30507 r!7292)))) b!5331941))

(assert (= (and b!5330294 ((_ is Union!14997) (regTwo!30506 (regOne!30507 r!7292)))) b!5331942))

(declare-fun e!3311675 () Bool)

(assert (=> b!5330304 (= tp!1483404 e!3311675)))

(declare-fun b!5331945 () Bool)

(declare-fun tp!1483658 () Bool)

(assert (=> b!5331945 (= e!3311675 tp!1483658)))

(declare-fun b!5331946 () Bool)

(declare-fun tp!1483660 () Bool)

(declare-fun tp!1483656 () Bool)

(assert (=> b!5331946 (= e!3311675 (and tp!1483660 tp!1483656))))

(declare-fun b!5331944 () Bool)

(declare-fun tp!1483659 () Bool)

(declare-fun tp!1483657 () Bool)

(assert (=> b!5331944 (= e!3311675 (and tp!1483659 tp!1483657))))

(declare-fun b!5331943 () Bool)

(assert (=> b!5331943 (= e!3311675 tp_is_empty!39247)))

(assert (= (and b!5330304 ((_ is ElementMatch!14997) (regOne!30507 (reg!15326 r!7292)))) b!5331943))

(assert (= (and b!5330304 ((_ is Concat!23842) (regOne!30507 (reg!15326 r!7292)))) b!5331944))

(assert (= (and b!5330304 ((_ is Star!14997) (regOne!30507 (reg!15326 r!7292)))) b!5331945))

(assert (= (and b!5330304 ((_ is Union!14997) (regOne!30507 (reg!15326 r!7292)))) b!5331946))

(declare-fun e!3311676 () Bool)

(assert (=> b!5330304 (= tp!1483400 e!3311676)))

(declare-fun b!5331949 () Bool)

(declare-fun tp!1483663 () Bool)

(assert (=> b!5331949 (= e!3311676 tp!1483663)))

(declare-fun b!5331950 () Bool)

(declare-fun tp!1483665 () Bool)

(declare-fun tp!1483661 () Bool)

(assert (=> b!5331950 (= e!3311676 (and tp!1483665 tp!1483661))))

(declare-fun b!5331948 () Bool)

(declare-fun tp!1483664 () Bool)

(declare-fun tp!1483662 () Bool)

(assert (=> b!5331948 (= e!3311676 (and tp!1483664 tp!1483662))))

(declare-fun b!5331947 () Bool)

(assert (=> b!5331947 (= e!3311676 tp_is_empty!39247)))

(assert (= (and b!5330304 ((_ is ElementMatch!14997) (regTwo!30507 (reg!15326 r!7292)))) b!5331947))

(assert (= (and b!5330304 ((_ is Concat!23842) (regTwo!30507 (reg!15326 r!7292)))) b!5331948))

(assert (= (and b!5330304 ((_ is Star!14997) (regTwo!30507 (reg!15326 r!7292)))) b!5331949))

(assert (= (and b!5330304 ((_ is Union!14997) (regTwo!30507 (reg!15326 r!7292)))) b!5331950))

(declare-fun e!3311677 () Bool)

(assert (=> b!5330295 (= tp!1483392 e!3311677)))

(declare-fun b!5331953 () Bool)

(declare-fun tp!1483668 () Bool)

(assert (=> b!5331953 (= e!3311677 tp!1483668)))

(declare-fun b!5331954 () Bool)

(declare-fun tp!1483670 () Bool)

(declare-fun tp!1483666 () Bool)

(assert (=> b!5331954 (= e!3311677 (and tp!1483670 tp!1483666))))

(declare-fun b!5331952 () Bool)

(declare-fun tp!1483669 () Bool)

(declare-fun tp!1483667 () Bool)

(assert (=> b!5331952 (= e!3311677 (and tp!1483669 tp!1483667))))

(declare-fun b!5331951 () Bool)

(assert (=> b!5331951 (= e!3311677 tp_is_empty!39247)))

(assert (= (and b!5330295 ((_ is ElementMatch!14997) (reg!15326 (regOne!30507 r!7292)))) b!5331951))

(assert (= (and b!5330295 ((_ is Concat!23842) (reg!15326 (regOne!30507 r!7292)))) b!5331952))

(assert (= (and b!5330295 ((_ is Star!14997) (reg!15326 (regOne!30507 r!7292)))) b!5331953))

(assert (= (and b!5330295 ((_ is Union!14997) (reg!15326 (regOne!30507 r!7292)))) b!5331954))

(declare-fun e!3311678 () Bool)

(assert (=> b!5330296 (= tp!1483394 e!3311678)))

(declare-fun b!5331957 () Bool)

(declare-fun tp!1483673 () Bool)

(assert (=> b!5331957 (= e!3311678 tp!1483673)))

(declare-fun b!5331958 () Bool)

(declare-fun tp!1483675 () Bool)

(declare-fun tp!1483671 () Bool)

(assert (=> b!5331958 (= e!3311678 (and tp!1483675 tp!1483671))))

(declare-fun b!5331956 () Bool)

(declare-fun tp!1483674 () Bool)

(declare-fun tp!1483672 () Bool)

(assert (=> b!5331956 (= e!3311678 (and tp!1483674 tp!1483672))))

(declare-fun b!5331955 () Bool)

(assert (=> b!5331955 (= e!3311678 tp_is_empty!39247)))

(assert (= (and b!5330296 ((_ is ElementMatch!14997) (regOne!30507 (regOne!30507 r!7292)))) b!5331955))

(assert (= (and b!5330296 ((_ is Concat!23842) (regOne!30507 (regOne!30507 r!7292)))) b!5331956))

(assert (= (and b!5330296 ((_ is Star!14997) (regOne!30507 (regOne!30507 r!7292)))) b!5331957))

(assert (= (and b!5330296 ((_ is Union!14997) (regOne!30507 (regOne!30507 r!7292)))) b!5331958))

(declare-fun e!3311679 () Bool)

(assert (=> b!5330296 (= tp!1483390 e!3311679)))

(declare-fun b!5331961 () Bool)

(declare-fun tp!1483678 () Bool)

(assert (=> b!5331961 (= e!3311679 tp!1483678)))

(declare-fun b!5331962 () Bool)

(declare-fun tp!1483680 () Bool)

(declare-fun tp!1483676 () Bool)

(assert (=> b!5331962 (= e!3311679 (and tp!1483680 tp!1483676))))

(declare-fun b!5331960 () Bool)

(declare-fun tp!1483679 () Bool)

(declare-fun tp!1483677 () Bool)

(assert (=> b!5331960 (= e!3311679 (and tp!1483679 tp!1483677))))

(declare-fun b!5331959 () Bool)

(assert (=> b!5331959 (= e!3311679 tp_is_empty!39247)))

(assert (= (and b!5330296 ((_ is ElementMatch!14997) (regTwo!30507 (regOne!30507 r!7292)))) b!5331959))

(assert (= (and b!5330296 ((_ is Concat!23842) (regTwo!30507 (regOne!30507 r!7292)))) b!5331960))

(assert (= (and b!5330296 ((_ is Star!14997) (regTwo!30507 (regOne!30507 r!7292)))) b!5331961))

(assert (= (and b!5330296 ((_ is Union!14997) (regTwo!30507 (regOne!30507 r!7292)))) b!5331962))

(declare-fun e!3311680 () Bool)

(assert (=> b!5330274 (= tp!1483372 e!3311680)))

(declare-fun b!5331965 () Bool)

(declare-fun tp!1483683 () Bool)

(assert (=> b!5331965 (= e!3311680 tp!1483683)))

(declare-fun b!5331966 () Bool)

(declare-fun tp!1483685 () Bool)

(declare-fun tp!1483681 () Bool)

(assert (=> b!5331966 (= e!3311680 (and tp!1483685 tp!1483681))))

(declare-fun b!5331964 () Bool)

(declare-fun tp!1483684 () Bool)

(declare-fun tp!1483682 () Bool)

(assert (=> b!5331964 (= e!3311680 (and tp!1483684 tp!1483682))))

(declare-fun b!5331963 () Bool)

(assert (=> b!5331963 (= e!3311680 tp_is_empty!39247)))

(assert (= (and b!5330274 ((_ is ElementMatch!14997) (h!67615 (exprs!4881 (h!67616 zl!343))))) b!5331963))

(assert (= (and b!5330274 ((_ is Concat!23842) (h!67615 (exprs!4881 (h!67616 zl!343))))) b!5331964))

(assert (= (and b!5330274 ((_ is Star!14997) (h!67615 (exprs!4881 (h!67616 zl!343))))) b!5331965))

(assert (= (and b!5330274 ((_ is Union!14997) (h!67615 (exprs!4881 (h!67616 zl!343))))) b!5331966))

(declare-fun b!5331967 () Bool)

(declare-fun e!3311681 () Bool)

(declare-fun tp!1483686 () Bool)

(declare-fun tp!1483687 () Bool)

(assert (=> b!5331967 (= e!3311681 (and tp!1483686 tp!1483687))))

(assert (=> b!5330274 (= tp!1483373 e!3311681)))

(assert (= (and b!5330274 ((_ is Cons!61167) (t!374506 (exprs!4881 (h!67616 zl!343))))) b!5331967))

(declare-fun b!5331968 () Bool)

(declare-fun e!3311682 () Bool)

(declare-fun tp!1483688 () Bool)

(assert (=> b!5331968 (= e!3311682 (and tp_is_empty!39247 tp!1483688))))

(assert (=> b!5330309 (= tp!1483407 e!3311682)))

(assert (= (and b!5330309 ((_ is Cons!61166) (t!374505 (t!374505 s!2326)))) b!5331968))

(declare-fun e!3311683 () Bool)

(assert (=> b!5330316 (= tp!1483418 e!3311683)))

(declare-fun b!5331971 () Bool)

(declare-fun tp!1483691 () Bool)

(assert (=> b!5331971 (= e!3311683 tp!1483691)))

(declare-fun b!5331972 () Bool)

(declare-fun tp!1483693 () Bool)

(declare-fun tp!1483689 () Bool)

(assert (=> b!5331972 (= e!3311683 (and tp!1483693 tp!1483689))))

(declare-fun b!5331970 () Bool)

(declare-fun tp!1483692 () Bool)

(declare-fun tp!1483690 () Bool)

(assert (=> b!5331970 (= e!3311683 (and tp!1483692 tp!1483690))))

(declare-fun b!5331969 () Bool)

(assert (=> b!5331969 (= e!3311683 tp_is_empty!39247)))

(assert (= (and b!5330316 ((_ is ElementMatch!14997) (regOne!30506 (regTwo!30506 r!7292)))) b!5331969))

(assert (= (and b!5330316 ((_ is Concat!23842) (regOne!30506 (regTwo!30506 r!7292)))) b!5331970))

(assert (= (and b!5330316 ((_ is Star!14997) (regOne!30506 (regTwo!30506 r!7292)))) b!5331971))

(assert (= (and b!5330316 ((_ is Union!14997) (regOne!30506 (regTwo!30506 r!7292)))) b!5331972))

(declare-fun e!3311684 () Bool)

(assert (=> b!5330316 (= tp!1483416 e!3311684)))

(declare-fun b!5331975 () Bool)

(declare-fun tp!1483696 () Bool)

(assert (=> b!5331975 (= e!3311684 tp!1483696)))

(declare-fun b!5331976 () Bool)

(declare-fun tp!1483698 () Bool)

(declare-fun tp!1483694 () Bool)

(assert (=> b!5331976 (= e!3311684 (and tp!1483698 tp!1483694))))

(declare-fun b!5331974 () Bool)

(declare-fun tp!1483697 () Bool)

(declare-fun tp!1483695 () Bool)

(assert (=> b!5331974 (= e!3311684 (and tp!1483697 tp!1483695))))

(declare-fun b!5331973 () Bool)

(assert (=> b!5331973 (= e!3311684 tp_is_empty!39247)))

(assert (= (and b!5330316 ((_ is ElementMatch!14997) (regTwo!30506 (regTwo!30506 r!7292)))) b!5331973))

(assert (= (and b!5330316 ((_ is Concat!23842) (regTwo!30506 (regTwo!30506 r!7292)))) b!5331974))

(assert (= (and b!5330316 ((_ is Star!14997) (regTwo!30506 (regTwo!30506 r!7292)))) b!5331975))

(assert (= (and b!5330316 ((_ is Union!14997) (regTwo!30506 (regTwo!30506 r!7292)))) b!5331976))

(declare-fun e!3311685 () Bool)

(assert (=> b!5330317 (= tp!1483417 e!3311685)))

(declare-fun b!5331979 () Bool)

(declare-fun tp!1483701 () Bool)

(assert (=> b!5331979 (= e!3311685 tp!1483701)))

(declare-fun b!5331980 () Bool)

(declare-fun tp!1483703 () Bool)

(declare-fun tp!1483699 () Bool)

(assert (=> b!5331980 (= e!3311685 (and tp!1483703 tp!1483699))))

(declare-fun b!5331978 () Bool)

(declare-fun tp!1483702 () Bool)

(declare-fun tp!1483700 () Bool)

(assert (=> b!5331978 (= e!3311685 (and tp!1483702 tp!1483700))))

(declare-fun b!5331977 () Bool)

(assert (=> b!5331977 (= e!3311685 tp_is_empty!39247)))

(assert (= (and b!5330317 ((_ is ElementMatch!14997) (reg!15326 (regTwo!30506 r!7292)))) b!5331977))

(assert (= (and b!5330317 ((_ is Concat!23842) (reg!15326 (regTwo!30506 r!7292)))) b!5331978))

(assert (= (and b!5330317 ((_ is Star!14997) (reg!15326 (regTwo!30506 r!7292)))) b!5331979))

(assert (= (and b!5330317 ((_ is Union!14997) (reg!15326 (regTwo!30506 r!7292)))) b!5331980))

(declare-fun e!3311686 () Bool)

(assert (=> b!5330318 (= tp!1483419 e!3311686)))

(declare-fun b!5331983 () Bool)

(declare-fun tp!1483706 () Bool)

(assert (=> b!5331983 (= e!3311686 tp!1483706)))

(declare-fun b!5331984 () Bool)

(declare-fun tp!1483708 () Bool)

(declare-fun tp!1483704 () Bool)

(assert (=> b!5331984 (= e!3311686 (and tp!1483708 tp!1483704))))

(declare-fun b!5331982 () Bool)

(declare-fun tp!1483707 () Bool)

(declare-fun tp!1483705 () Bool)

(assert (=> b!5331982 (= e!3311686 (and tp!1483707 tp!1483705))))

(declare-fun b!5331981 () Bool)

(assert (=> b!5331981 (= e!3311686 tp_is_empty!39247)))

(assert (= (and b!5330318 ((_ is ElementMatch!14997) (regOne!30507 (regTwo!30506 r!7292)))) b!5331981))

(assert (= (and b!5330318 ((_ is Concat!23842) (regOne!30507 (regTwo!30506 r!7292)))) b!5331982))

(assert (= (and b!5330318 ((_ is Star!14997) (regOne!30507 (regTwo!30506 r!7292)))) b!5331983))

(assert (= (and b!5330318 ((_ is Union!14997) (regOne!30507 (regTwo!30506 r!7292)))) b!5331984))

(declare-fun e!3311687 () Bool)

(assert (=> b!5330318 (= tp!1483415 e!3311687)))

(declare-fun b!5331987 () Bool)

(declare-fun tp!1483711 () Bool)

(assert (=> b!5331987 (= e!3311687 tp!1483711)))

(declare-fun b!5331988 () Bool)

(declare-fun tp!1483713 () Bool)

(declare-fun tp!1483709 () Bool)

(assert (=> b!5331988 (= e!3311687 (and tp!1483713 tp!1483709))))

(declare-fun b!5331986 () Bool)

(declare-fun tp!1483712 () Bool)

(declare-fun tp!1483710 () Bool)

(assert (=> b!5331986 (= e!3311687 (and tp!1483712 tp!1483710))))

(declare-fun b!5331985 () Bool)

(assert (=> b!5331985 (= e!3311687 tp_is_empty!39247)))

(assert (= (and b!5330318 ((_ is ElementMatch!14997) (regTwo!30507 (regTwo!30506 r!7292)))) b!5331985))

(assert (= (and b!5330318 ((_ is Concat!23842) (regTwo!30507 (regTwo!30506 r!7292)))) b!5331986))

(assert (= (and b!5330318 ((_ is Star!14997) (regTwo!30507 (regTwo!30506 r!7292)))) b!5331987))

(assert (= (and b!5330318 ((_ is Union!14997) (regTwo!30507 (regTwo!30506 r!7292)))) b!5331988))

(declare-fun e!3311688 () Bool)

(assert (=> b!5330310 (= tp!1483408 e!3311688)))

(declare-fun b!5331991 () Bool)

(declare-fun tp!1483716 () Bool)

(assert (=> b!5331991 (= e!3311688 tp!1483716)))

(declare-fun b!5331992 () Bool)

(declare-fun tp!1483718 () Bool)

(declare-fun tp!1483714 () Bool)

(assert (=> b!5331992 (= e!3311688 (and tp!1483718 tp!1483714))))

(declare-fun b!5331990 () Bool)

(declare-fun tp!1483717 () Bool)

(declare-fun tp!1483715 () Bool)

(assert (=> b!5331990 (= e!3311688 (and tp!1483717 tp!1483715))))

(declare-fun b!5331989 () Bool)

(assert (=> b!5331989 (= e!3311688 tp_is_empty!39247)))

(assert (= (and b!5330310 ((_ is ElementMatch!14997) (h!67615 (exprs!4881 setElem!34353)))) b!5331989))

(assert (= (and b!5330310 ((_ is Concat!23842) (h!67615 (exprs!4881 setElem!34353)))) b!5331990))

(assert (= (and b!5330310 ((_ is Star!14997) (h!67615 (exprs!4881 setElem!34353)))) b!5331991))

(assert (= (and b!5330310 ((_ is Union!14997) (h!67615 (exprs!4881 setElem!34353)))) b!5331992))

(declare-fun b!5331993 () Bool)

(declare-fun e!3311689 () Bool)

(declare-fun tp!1483719 () Bool)

(declare-fun tp!1483720 () Bool)

(assert (=> b!5331993 (= e!3311689 (and tp!1483719 tp!1483720))))

(assert (=> b!5330310 (= tp!1483409 e!3311689)))

(assert (= (and b!5330310 ((_ is Cons!61167) (t!374506 (exprs!4881 setElem!34353)))) b!5331993))

(declare-fun e!3311690 () Bool)

(assert (=> b!5330302 (= tp!1483403 e!3311690)))

(declare-fun b!5331996 () Bool)

(declare-fun tp!1483723 () Bool)

(assert (=> b!5331996 (= e!3311690 tp!1483723)))

(declare-fun b!5331997 () Bool)

(declare-fun tp!1483725 () Bool)

(declare-fun tp!1483721 () Bool)

(assert (=> b!5331997 (= e!3311690 (and tp!1483725 tp!1483721))))

(declare-fun b!5331995 () Bool)

(declare-fun tp!1483724 () Bool)

(declare-fun tp!1483722 () Bool)

(assert (=> b!5331995 (= e!3311690 (and tp!1483724 tp!1483722))))

(declare-fun b!5331994 () Bool)

(assert (=> b!5331994 (= e!3311690 tp_is_empty!39247)))

(assert (= (and b!5330302 ((_ is ElementMatch!14997) (regOne!30506 (reg!15326 r!7292)))) b!5331994))

(assert (= (and b!5330302 ((_ is Concat!23842) (regOne!30506 (reg!15326 r!7292)))) b!5331995))

(assert (= (and b!5330302 ((_ is Star!14997) (regOne!30506 (reg!15326 r!7292)))) b!5331996))

(assert (= (and b!5330302 ((_ is Union!14997) (regOne!30506 (reg!15326 r!7292)))) b!5331997))

(declare-fun e!3311691 () Bool)

(assert (=> b!5330302 (= tp!1483401 e!3311691)))

(declare-fun b!5332000 () Bool)

(declare-fun tp!1483728 () Bool)

(assert (=> b!5332000 (= e!3311691 tp!1483728)))

(declare-fun b!5332001 () Bool)

(declare-fun tp!1483730 () Bool)

(declare-fun tp!1483726 () Bool)

(assert (=> b!5332001 (= e!3311691 (and tp!1483730 tp!1483726))))

(declare-fun b!5331999 () Bool)

(declare-fun tp!1483729 () Bool)

(declare-fun tp!1483727 () Bool)

(assert (=> b!5331999 (= e!3311691 (and tp!1483729 tp!1483727))))

(declare-fun b!5331998 () Bool)

(assert (=> b!5331998 (= e!3311691 tp_is_empty!39247)))

(assert (= (and b!5330302 ((_ is ElementMatch!14997) (regTwo!30506 (reg!15326 r!7292)))) b!5331998))

(assert (= (and b!5330302 ((_ is Concat!23842) (regTwo!30506 (reg!15326 r!7292)))) b!5331999))

(assert (= (and b!5330302 ((_ is Star!14997) (regTwo!30506 (reg!15326 r!7292)))) b!5332000))

(assert (= (and b!5330302 ((_ is Union!14997) (regTwo!30506 (reg!15326 r!7292)))) b!5332001))

(declare-fun condSetEmpty!34369 () Bool)

(assert (=> setNonEmpty!34359 (= condSetEmpty!34369 (= setRest!34359 ((as const (Array Context!8762 Bool)) false)))))

(declare-fun setRes!34369 () Bool)

(assert (=> setNonEmpty!34359 (= tp!1483425 setRes!34369)))

(declare-fun setIsEmpty!34369 () Bool)

(assert (=> setIsEmpty!34369 setRes!34369))

(declare-fun tp!1483732 () Bool)

(declare-fun e!3311692 () Bool)

(declare-fun setNonEmpty!34369 () Bool)

(declare-fun setElem!34369 () Context!8762)

(assert (=> setNonEmpty!34369 (= setRes!34369 (and tp!1483732 (inv!80739 setElem!34369) e!3311692))))

(declare-fun setRest!34369 () (InoxSet Context!8762))

(assert (=> setNonEmpty!34369 (= setRest!34359 ((_ map or) (store ((as const (Array Context!8762 Bool)) false) setElem!34369 true) setRest!34369))))

(declare-fun b!5332002 () Bool)

(declare-fun tp!1483731 () Bool)

(assert (=> b!5332002 (= e!3311692 tp!1483731)))

(assert (= (and setNonEmpty!34359 condSetEmpty!34369) setIsEmpty!34369))

(assert (= (and setNonEmpty!34359 (not condSetEmpty!34369)) setNonEmpty!34369))

(assert (= setNonEmpty!34369 b!5332002))

(declare-fun m!6365372 () Bool)

(assert (=> setNonEmpty!34369 m!6365372))

(declare-fun e!3311693 () Bool)

(assert (=> b!5330299 (= tp!1483397 e!3311693)))

(declare-fun b!5332005 () Bool)

(declare-fun tp!1483735 () Bool)

(assert (=> b!5332005 (= e!3311693 tp!1483735)))

(declare-fun b!5332006 () Bool)

(declare-fun tp!1483737 () Bool)

(declare-fun tp!1483733 () Bool)

(assert (=> b!5332006 (= e!3311693 (and tp!1483737 tp!1483733))))

(declare-fun b!5332004 () Bool)

(declare-fun tp!1483736 () Bool)

(declare-fun tp!1483734 () Bool)

(assert (=> b!5332004 (= e!3311693 (and tp!1483736 tp!1483734))))

(declare-fun b!5332003 () Bool)

(assert (=> b!5332003 (= e!3311693 tp_is_empty!39247)))

(assert (= (and b!5330299 ((_ is ElementMatch!14997) (reg!15326 (regTwo!30507 r!7292)))) b!5332003))

(assert (= (and b!5330299 ((_ is Concat!23842) (reg!15326 (regTwo!30507 r!7292)))) b!5332004))

(assert (= (and b!5330299 ((_ is Star!14997) (reg!15326 (regTwo!30507 r!7292)))) b!5332005))

(assert (= (and b!5330299 ((_ is Union!14997) (reg!15326 (regTwo!30507 r!7292)))) b!5332006))

(declare-fun b!5332007 () Bool)

(declare-fun e!3311694 () Bool)

(declare-fun tp!1483738 () Bool)

(declare-fun tp!1483739 () Bool)

(assert (=> b!5332007 (= e!3311694 (and tp!1483738 tp!1483739))))

(assert (=> b!5330323 (= tp!1483424 e!3311694)))

(assert (= (and b!5330323 ((_ is Cons!61167) (exprs!4881 setElem!34359))) b!5332007))

(declare-fun e!3311695 () Bool)

(assert (=> b!5330300 (= tp!1483399 e!3311695)))

(declare-fun b!5332010 () Bool)

(declare-fun tp!1483742 () Bool)

(assert (=> b!5332010 (= e!3311695 tp!1483742)))

(declare-fun b!5332011 () Bool)

(declare-fun tp!1483744 () Bool)

(declare-fun tp!1483740 () Bool)

(assert (=> b!5332011 (= e!3311695 (and tp!1483744 tp!1483740))))

(declare-fun b!5332009 () Bool)

(declare-fun tp!1483743 () Bool)

(declare-fun tp!1483741 () Bool)

(assert (=> b!5332009 (= e!3311695 (and tp!1483743 tp!1483741))))

(declare-fun b!5332008 () Bool)

(assert (=> b!5332008 (= e!3311695 tp_is_empty!39247)))

(assert (= (and b!5330300 ((_ is ElementMatch!14997) (regOne!30507 (regTwo!30507 r!7292)))) b!5332008))

(assert (= (and b!5330300 ((_ is Concat!23842) (regOne!30507 (regTwo!30507 r!7292)))) b!5332009))

(assert (= (and b!5330300 ((_ is Star!14997) (regOne!30507 (regTwo!30507 r!7292)))) b!5332010))

(assert (= (and b!5330300 ((_ is Union!14997) (regOne!30507 (regTwo!30507 r!7292)))) b!5332011))

(declare-fun e!3311696 () Bool)

(assert (=> b!5330300 (= tp!1483395 e!3311696)))

(declare-fun b!5332014 () Bool)

(declare-fun tp!1483747 () Bool)

(assert (=> b!5332014 (= e!3311696 tp!1483747)))

(declare-fun b!5332015 () Bool)

(declare-fun tp!1483749 () Bool)

(declare-fun tp!1483745 () Bool)

(assert (=> b!5332015 (= e!3311696 (and tp!1483749 tp!1483745))))

(declare-fun b!5332013 () Bool)

(declare-fun tp!1483748 () Bool)

(declare-fun tp!1483746 () Bool)

(assert (=> b!5332013 (= e!3311696 (and tp!1483748 tp!1483746))))

(declare-fun b!5332012 () Bool)

(assert (=> b!5332012 (= e!3311696 tp_is_empty!39247)))

(assert (= (and b!5330300 ((_ is ElementMatch!14997) (regTwo!30507 (regTwo!30507 r!7292)))) b!5332012))

(assert (= (and b!5330300 ((_ is Concat!23842) (regTwo!30507 (regTwo!30507 r!7292)))) b!5332013))

(assert (= (and b!5330300 ((_ is Star!14997) (regTwo!30507 (regTwo!30507 r!7292)))) b!5332014))

(assert (= (and b!5330300 ((_ is Union!14997) (regTwo!30507 (regTwo!30507 r!7292)))) b!5332015))

(declare-fun b_lambda!205065 () Bool)

(assert (= b_lambda!204999 (or d!1711294 b_lambda!205065)))

(declare-fun bs!1236647 () Bool)

(declare-fun d!1712162 () Bool)

(assert (= bs!1236647 (and d!1712162 d!1711294)))

(assert (=> bs!1236647 (= (dynLambda!24187 lambda!272372 (h!67615 (exprs!4881 (h!67616 zl!343)))) (validRegex!6733 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(declare-fun m!6365374 () Bool)

(assert (=> bs!1236647 m!6365374))

(assert (=> b!5330679 d!1712162))

(declare-fun b_lambda!205067 () Bool)

(assert (= b_lambda!205021 (or b!5330209 b_lambda!205067)))

(declare-fun bs!1236648 () Bool)

(declare-fun d!1712164 () Bool)

(assert (= bs!1236648 (and d!1712164 b!5330209)))

(assert (=> bs!1236648 (= (dynLambda!24191 lambda!272402 (h!67616 zl!343)) (>= lt!2174477 (contextDepth!60 (h!67616 zl!343))))))

(assert (=> bs!1236648 m!6363694))

(assert (=> b!5331333 d!1712164))

(declare-fun b_lambda!205069 () Bool)

(assert (= b_lambda!205023 (or d!1711346 b_lambda!205069)))

(declare-fun bs!1236649 () Bool)

(declare-fun d!1712166 () Bool)

(assert (= bs!1236649 (and d!1712166 d!1711346)))

(assert (=> bs!1236649 (= (dynLambda!24187 lambda!272384 (h!67615 lt!2174307)) (validRegex!6733 (h!67615 lt!2174307)))))

(declare-fun m!6365376 () Bool)

(assert (=> bs!1236649 m!6365376))

(assert (=> b!5331418 d!1712166))

(declare-fun b_lambda!205071 () Bool)

(assert (= b_lambda!205019 (or d!1711376 b_lambda!205071)))

(declare-fun bs!1236650 () Bool)

(declare-fun d!1712168 () Bool)

(assert (= bs!1236650 (and d!1712168 d!1711376)))

(assert (=> bs!1236650 (= (dynLambda!24187 lambda!272408 (h!67615 lt!2174485)) (validRegex!6733 (h!67615 lt!2174485)))))

(declare-fun m!6365378 () Bool)

(assert (=> bs!1236650 m!6365378))

(assert (=> b!5331309 d!1712168))

(declare-fun b_lambda!205073 () Bool)

(assert (= b_lambda!204995 (or b!5329326 b_lambda!205073)))

(assert (=> d!1711544 d!1711394))

(declare-fun b_lambda!205075 () Bool)

(assert (= b_lambda!205003 (or d!1711374 b_lambda!205075)))

(declare-fun bs!1236651 () Bool)

(declare-fun d!1712170 () Bool)

(assert (= bs!1236651 (and d!1712170 d!1711374)))

(assert (=> bs!1236651 (= (dynLambda!24187 lambda!272405 (h!67615 (unfocusZipperList!439 zl!343))) (validRegex!6733 (h!67615 (unfocusZipperList!439 zl!343))))))

(declare-fun m!6365380 () Bool)

(assert (=> bs!1236651 m!6365380))

(assert (=> b!5330968 d!1712170))

(declare-fun b_lambda!205077 () Bool)

(assert (= b_lambda!205063 (or b!5330207 b_lambda!205077)))

(declare-fun bs!1236652 () Bool)

(declare-fun d!1712172 () Bool)

(assert (= bs!1236652 (and d!1712172 b!5330207)))

(assert (=> bs!1236652 (= (dynLambda!24191 lambda!272401 (h!67616 (t!374507 zl!343))) (>= lt!2174479 (contextDepth!60 (h!67616 (t!374507 zl!343)))))))

(assert (=> bs!1236652 m!6365352))

(assert (=> b!5331884 d!1712172))

(declare-fun b_lambda!205079 () Bool)

(assert (= b_lambda!205001 (or b!5330202 b_lambda!205079)))

(declare-fun bs!1236653 () Bool)

(declare-fun d!1712174 () Bool)

(assert (= bs!1236653 (and d!1712174 b!5330202)))

(assert (=> bs!1236653 (= (dynLambda!24191 lambda!272398 (h!67616 (t!374507 lt!2174315))) (>= lt!2174475 (contextDepth!60 (h!67616 (t!374507 lt!2174315)))))))

(assert (=> bs!1236653 m!6364306))

(assert (=> b!5330911 d!1712174))

(declare-fun b_lambda!205081 () Bool)

(assert (= b_lambda!205029 (or d!1711356 b_lambda!205081)))

(declare-fun bs!1236654 () Bool)

(declare-fun d!1712176 () Bool)

(assert (= bs!1236654 (and d!1712176 d!1711356)))

(assert (=> bs!1236654 (= (dynLambda!24187 lambda!272388 (h!67615 lt!2174324)) (validRegex!6733 (h!67615 lt!2174324)))))

(declare-fun m!6365382 () Bool)

(assert (=> bs!1236654 m!6365382))

(assert (=> b!5331589 d!1712176))

(declare-fun b_lambda!205083 () Bool)

(assert (= b_lambda!205031 (or b!5330204 b_lambda!205083)))

(declare-fun bs!1236655 () Bool)

(declare-fun d!1712178 () Bool)

(assert (= bs!1236655 (and d!1712178 b!5330204)))

(assert (=> bs!1236655 (= (dynLambda!24191 lambda!272399 (h!67616 lt!2174315)) (>= lt!2174473 (contextDepth!60 (h!67616 lt!2174315))))))

(assert (=> bs!1236655 m!6363682))

(assert (=> b!5331605 d!1712178))

(declare-fun b_lambda!205085 () Bool)

(assert (= b_lambda!205061 (or d!1711324 b_lambda!205085)))

(declare-fun bs!1236656 () Bool)

(declare-fun d!1712180 () Bool)

(assert (= bs!1236656 (and d!1712180 d!1711324)))

(assert (=> bs!1236656 (= (dynLambda!24187 lambda!272381 (h!67615 (exprs!4881 setElem!34353))) (validRegex!6733 (h!67615 (exprs!4881 setElem!34353))))))

(declare-fun m!6365384 () Bool)

(assert (=> bs!1236656 m!6365384))

(assert (=> b!5331807 d!1712180))

(declare-fun b_lambda!205087 () Bool)

(assert (= b_lambda!205015 (or b!5329326 b_lambda!205087)))

(assert (=> d!1711820 d!1711396))

(declare-fun b_lambda!205089 () Bool)

(assert (= b_lambda!205027 (or d!1711380 b_lambda!205089)))

(declare-fun bs!1236657 () Bool)

(declare-fun d!1712182 () Bool)

(assert (= bs!1236657 (and d!1712182 d!1711380)))

(assert (=> bs!1236657 (= (dynLambda!24187 lambda!272409 (h!67615 (exprs!4881 (h!67616 zl!343)))) (validRegex!6733 (h!67615 (exprs!4881 (h!67616 zl!343)))))))

(assert (=> bs!1236657 m!6365374))

(assert (=> b!5331543 d!1712182))

(declare-fun b_lambda!205091 () Bool)

(assert (= b_lambda!205005 (or b!5329319 b_lambda!205091)))

(declare-fun bs!1236658 () Bool)

(declare-fun d!1712184 () Bool)

(assert (= bs!1236658 (and d!1712184 b!5329319)))

(assert (=> bs!1236658 (= (dynLambda!24187 lambda!272305 (h!67615 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))))) (validRegex!6733 (h!67615 (t!374506 (t!374506 (exprs!4881 (h!67616 zl!343)))))))))

(declare-fun m!6365386 () Bool)

(assert (=> bs!1236658 m!6365386))

(assert (=> b!5331018 d!1712184))

(check-sat (not b!5331310) (not b!5330752) (not bm!380957) (not bm!381119) (not d!1712060) (not b!5331548) (not b!5331917) (not b_lambda!204979) (not b!5331982) (not b!5331080) (not b!5331922) (not b!5331940) (not b!5330939) (not bm!381010) (not bm!381045) (not bm!381002) (not b!5331090) (not bs!1236652) (not b!5330687) (not b!5331953) (not b!5331926) (not bm!381110) (not b!5331109) (not bm!380958) (not d!1712012) (not b!5332000) (not bm!381061) (not b!5331995) (not b!5330561) (not b!5330940) (not b_lambda!205083) (not b!5330762) (not b!5331464) (not bm!381075) (not b!5331187) (not b!5331961) (not b!5331288) (not bm!380886) (not bm!381122) (not b!5331428) (not b!5331277) (not b!5330797) (not d!1712008) (not b!5331097) (not d!1711582) (not b!5331285) (not b!5331348) (not b!5331975) (not b!5331921) (not d!1711724) (not d!1711686) (not b!5331903) (not d!1711634) (not b!5331958) (not d!1712148) (not b!5331436) (not b!5331771) (not b!5331098) (not b!5330684) (not b!5331609) (not bs!1236654) (not b!5331854) (not d!1711708) (not d!1711766) (not bs!1236656) (not b!5330747) (not bm!380994) (not bm!381038) (not d!1712156) (not b!5331606) (not bm!381079) (not b!5331095) (not b!5331307) (not b!5331950) (not b!5331814) (not bm!380889) (not d!1712138) (not bm!380909) (not d!1711864) (not b!5332015) (not b!5331466) (not bm!380890) (not bm!380954) (not b!5331434) (not d!1712064) (not b!5331340) (not bm!380979) (not b!5331545) (not b!5330738) (not b!5330746) (not d!1712142) (not b!5331184) (not d!1712028) (not b!5331948) (not bm!380868) (not d!1711902) (not b!5331856) (not b!5331267) (not d!1711816) (not b!5331295) (not d!1712070) (not b!5332001) (not b!5331974) (not b!5331907) (not b_lambda!205069) (not b!5330659) (not b!5331117) (not b!5331183) (not bm!380962) (not bm!381001) (not d!1711534) (not d!1711590) (not bs!1236650) (not b!5331347) (not d!1711786) (not b!5331089) (not d!1712074) (not b!5331798) (not b!5331081) (not bm!381121) (not d!1711716) (not d!1711714) (not b!5331551) (not bm!381019) (not d!1711910) (not b!5331865) (not b!5331233) (not d!1711916) (not b_lambda!205065) (not bm!381102) tp_is_empty!39247 (not b!5331084) (not b!5330555) (not b!5330780) (not b!5331590) (not bm!381017) (not bm!380985) (not b!5330760) (not b!5331954) (not bm!381023) (not bm!381074) (not b_lambda!205075) (not bm!380920) (not b!5331067) (not bm!381043) (not b!5330680) (not b!5330977) (not bm!380898) (not b!5331971) (not bs!1236655) (not b!5331019) (not b!5331186) (not b!5331912) (not b!5331544) (not b!5331360) (not b!5330560) (not b!5331409) (not b!5331968) (not b!5330787) (not b!5331900) (not b!5331979) (not d!1711900) (not setNonEmpty!34367) (not b!5331999) (not b!5331893) (not d!1712032) (not bs!1236647) (not bm!381082) (not d!1712126) (not b!5332010) (not bm!380908) (not bs!1236651) (not bs!1236657) (not b!5330912) (not b!5330562) (not b!5330761) (not b!5331471) (not b!5331147) (not b!5330686) (not b!5331811) (not bm!380960) (not b!5331580) (not b_lambda!205087) (not d!1711618) (not d!1711722) (not b!5330692) (not b!5330894) (not b!5331257) (not bm!381034) (not b!5330740) (not b!5331169) (not b!5331091) (not b!5331949) (not b!5331952) (not d!1711698) (not d!1711912) (not b!5331203) (not b!5331426) (not b!5331468) (not b!5330969) (not b!5331868) (not b!5331287) (not bm!381005) (not bm!381033) (not b!5331997) (not b!5331376) (not b!5331970) (not d!1712128) (not b!5331354) (not d!1711886) (not bm!381125) (not bs!1236653) (not d!1712062) (not d!1711792) (not bm!381124) (not b!5331260) (not b!5331925) (not b!5330640) (not d!1711536) (not b!5331400) (not b!5331933) (not d!1712072) (not d!1711636) (not b!5331092) (not d!1712116) (not b!5330754) (not b!5331972) (not b!5331052) (not d!1711584) (not b!5330694) (not b!5331978) (not b!5330871) (not b!5331115) (not b!5331886) (not b!5331867) (not b!5331643) (not b!5331289) (not d!1711558) (not b!5331872) (not b!5330638) (not b_lambda!205079) (not d!1712130) (not b!5330796) (not b!5330896) (not bm!380992) (not b!5331904) (not b!5331008) (not b!5331984) (not b!5331355) (not d!1712134) (not b_lambda!205073) (not bm!381101) (not b!5331408) (not b!5330973) (not b!5330531) (not d!1711764) (not d!1711630) (not bm!380995) (not d!1712096) (not b!5331960) (not b!5331362) (not bm!381116) (not bm!381039) (not b!5332013) (not b!5331190) (not d!1712010) (not b!5331992) (not b!5331113) (not b!5331628) (not b!5331341) (not bm!381115) (not b!5331268) (not b!5331944) (not b!5331397) (not b_lambda!204977) (not b!5330790) (not b!5331122) (not d!1711610) (not b!5331962) (not b!5330554) (not b!5332005) (not b!5331918) (not b!5330978) (not bm!381100) (not b!5331924) (not d!1711848) (not bm!380911) (not b!5331293) (not b!5331967) (not b!5331465) (not b!5331076) (not bm!381041) (not bm!381109) (not d!1712092) (not b_lambda!205085) (not b!5331929) (not bm!381088) (not bm!381015) (not d!1711544) (not b!5331983) (not b!5331312) (not b!5331883) (not b!5331909) (not bm!380880) (not b!5330755) (not b!5331770) (not d!1711872) (not bm!380923) (not setNonEmpty!34368) (not b!5331945) (not bm!381016) (not b!5331905) (not b!5331990) (not b!5331051) (not b!5330795) (not bm!380983) (not b!5331334) (not b!5331278) (not b!5331946) (not b!5331456) (not bs!1236658) (not b!5330639) (not b!5331864) (not d!1712124) (not d!1712034) (not b!5330945) (not b!5331881) (not bm!381008) (not b!5331996) (not b!5331916) (not b!5331908) (not b_lambda!205067) (not b!5331265) (not b!5331192) (not b!5331987) (not d!1712118) (not bm!380986) (not b!5331457) (not b!5331796) (not b!5330980) (not bm!381060) (not bm!381040) (not bm!381014) (not b!5331934) (not b!5331976) (not b!5331932) (not d!1711736) (not bm!380869) (not b!5332009) (not bm!380866) (not bm!380892) (not b!5330869) (not bm!380921) (not bm!380887) (not b!5331290) (not b!5330987) (not b!5331964) (not bm!380912) (not b!5330731) (not d!1712084) (not bm!381081) (not b!5331937) (not b!5331980) (not b!5331346) (not b!5330552) (not b!5331111) (not b!5331283) (not b!5331221) (not b_lambda!205081) (not d!1712078) (not d!1712098) (not b!5331941) (not d!1711824) (not b!5331191) (not b!5330789) (not b!5330748) (not setNonEmpty!34369) (not b!5331642) (not b!5330577) (not bs!1236648) (not b!5331965) (not d!1711564) (not d!1712140) (not bm!381089) (not b!5331282) (not b!5331993) (not b!5331913) (not d!1711638) (not b!5331942) (not d!1712024) (not b!5331890) (not bm!381117) (not b!5331443) (not b!5330979) (not d!1711926) (not b!5331936) (not bm!381007) (not b!5331352) (not b!5331419) (not b!5331986) (not b!5330946) (not bm!381048) (not bm!381011) (not bm!381049) (not b!5330693) (not b_lambda!205089) (not b!5331078) (not b!5330986) (not b_lambda!205091) (not b!5330972) (not b_lambda!204975) (not b!5331272) (not b!5332006) (not b!5331273) (not d!1711778) (not b!5332004) (not b!5332007) (not b!5331429) (not b!5331361) (not b!5331266) (not b!5331920) (not b!5331435) (not b!5332014) (not b!5331910) (not b!5332002) (not b!5331991) (not b!5331259) (not b!5330604) (not b!5331930) (not b!5330937) (not b!5331296) (not bm!380961) (not b!5331938) (not bm!380999) (not b!5330988) (not d!1712018) (not b!5331888) (not b!5331813) (not b!5331236) (not d!1711890) (not b!5331315) (not b!5331007) (not b!5330959) (not b!5330650) (not b!5331885) (not d!1711626) (not d!1712090) (not b!5330947) (not b!5331956) (not bm!381114) (not b!5331957) (not b!5331407) (not bm!381111) (not d!1711820) (not b_lambda!205077) (not b!5330981) (not bm!381108) (not bs!1236649) (not bm!381018) (not b!5331901) (not b!5331928) (not bm!381022) (not b!5331114) (not bm!381099) (not b_lambda!205071) (not d!1711696) (not bm!380879) (not bm!380978) (not d!1712114) (not d!1711676) (not b!5331988) (not bm!381046) (not b!5332011) (not d!1712132) (not b!5331338) (not bm!381031) (not bm!380874) (not d!1711572) (not b!5331082) (not b!5331837) (not b!5331066) (not d!1711862) (not b!5331808) (not bm!380893) (not b!5331966) (not b!5331914) (not b!5330741) (not b!5330984))
(check-sat)
