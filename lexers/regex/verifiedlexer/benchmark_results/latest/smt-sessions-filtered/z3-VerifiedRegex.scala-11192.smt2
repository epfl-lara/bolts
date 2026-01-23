; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!584070 () Bool)

(assert start!584070)

(declare-fun b!5646420 () Bool)

(assert (=> b!5646420 true))

(assert (=> b!5646420 true))

(declare-fun lambda!303424 () Int)

(declare-fun lambda!303423 () Int)

(assert (=> b!5646420 (not (= lambda!303424 lambda!303423))))

(assert (=> b!5646420 true))

(assert (=> b!5646420 true))

(declare-fun b!5646443 () Bool)

(assert (=> b!5646443 true))

(declare-fun bs!1312089 () Bool)

(declare-fun b!5646415 () Bool)

(assert (= bs!1312089 (and b!5646415 b!5646420)))

(declare-datatypes ((C!31532 0))(
  ( (C!31533 (val!25468 Int)) )
))
(declare-datatypes ((Regex!15631 0))(
  ( (ElementMatch!15631 (c!992159 C!31532)) (Concat!24476 (regOne!31774 Regex!15631) (regTwo!31774 Regex!15631)) (EmptyExpr!15631) (Star!15631 (reg!15960 Regex!15631)) (EmptyLang!15631) (Union!15631 (regOne!31775 Regex!15631) (regTwo!31775 Regex!15631)) )
))
(declare-fun r!7292 () Regex!15631)

(declare-fun lt!2264184 () Regex!15631)

(declare-fun lambda!303426 () Int)

(assert (=> bs!1312089 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303426 lambda!303423))))

(assert (=> bs!1312089 (not (= lambda!303426 lambda!303424))))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(declare-fun lambda!303427 () Int)

(assert (=> bs!1312089 (not (= lambda!303427 lambda!303423))))

(assert (=> bs!1312089 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303427 lambda!303424))))

(assert (=> b!5646415 (not (= lambda!303427 lambda!303426))))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(declare-fun lt!2264217 () Regex!15631)

(declare-fun lambda!303428 () Int)

(assert (=> bs!1312089 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303428 lambda!303423))))

(assert (=> bs!1312089 (not (= lambda!303428 lambda!303424))))

(assert (=> b!5646415 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303428 lambda!303426))))

(assert (=> b!5646415 (not (= lambda!303428 lambda!303427))))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(declare-fun lambda!303429 () Int)

(assert (=> bs!1312089 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303429 lambda!303424))))

(assert (=> b!5646415 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303429 lambda!303427))))

(assert (=> b!5646415 (not (= lambda!303429 lambda!303426))))

(assert (=> b!5646415 (not (= lambda!303429 lambda!303428))))

(assert (=> bs!1312089 (not (= lambda!303429 lambda!303423))))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(assert (=> b!5646415 true))

(declare-fun b!5646412 () Bool)

(declare-fun e!3478372 () Bool)

(declare-fun e!3478364 () Bool)

(assert (=> b!5646412 (= e!3478372 e!3478364)))

(declare-fun res!2388549 () Bool)

(assert (=> b!5646412 (=> res!2388549 e!3478364)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63192 0))(
  ( (Nil!63068) (Cons!63068 (h!69516 Regex!15631) (t!376490 List!63192)) )
))
(declare-datatypes ((Context!10030 0))(
  ( (Context!10031 (exprs!5515 List!63192)) )
))
(declare-fun lt!2264224 () (InoxSet Context!10030))

(declare-fun lt!2264186 () (InoxSet Context!10030))

(assert (=> b!5646412 (= res!2388549 (not (= lt!2264224 lt!2264186)))))

(declare-fun lt!2264227 () (InoxSet Context!10030))

(declare-fun lt!2264223 () (InoxSet Context!10030))

(assert (=> b!5646412 (= lt!2264186 ((_ map or) lt!2264227 lt!2264223))))

(declare-datatypes ((List!63193 0))(
  ( (Nil!63069) (Cons!63069 (h!69517 C!31532) (t!376491 List!63193)) )
))
(declare-fun s!2326 () List!63193)

(declare-fun lt!2264212 () Context!10030)

(declare-fun derivationStepZipperDown!973 (Regex!15631 Context!10030 C!31532) (InoxSet Context!10030))

(assert (=> b!5646412 (= lt!2264223 (derivationStepZipperDown!973 (regTwo!31774 (regOne!31774 r!7292)) lt!2264212 (h!69517 s!2326)))))

(declare-fun lt!2264221 () Context!10030)

(assert (=> b!5646412 (= lt!2264227 (derivationStepZipperDown!973 (regOne!31774 (regOne!31774 r!7292)) lt!2264221 (h!69517 s!2326)))))

(declare-fun lt!2264230 () List!63192)

(assert (=> b!5646412 (= lt!2264221 (Context!10031 lt!2264230))))

(declare-datatypes ((List!63194 0))(
  ( (Nil!63070) (Cons!63070 (h!69518 Context!10030) (t!376492 List!63194)) )
))
(declare-fun zl!343 () List!63194)

(assert (=> b!5646412 (= lt!2264230 (Cons!63068 (regTwo!31774 (regOne!31774 r!7292)) (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5646413 () Bool)

(declare-fun res!2388528 () Bool)

(declare-fun e!3478366 () Bool)

(assert (=> b!5646413 (=> res!2388528 e!3478366)))

(assert (=> b!5646413 (= res!2388528 (not (= (exprs!5515 (h!69518 zl!343)) (Cons!63068 (Concat!24476 (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5646414 () Bool)

(declare-fun res!2388551 () Bool)

(declare-fun e!3478368 () Bool)

(assert (=> b!5646414 (=> (not res!2388551) (not e!3478368))))

(declare-fun z!1189 () (InoxSet Context!10030))

(declare-fun toList!9415 ((InoxSet Context!10030)) List!63194)

(assert (=> b!5646414 (= res!2388551 (= (toList!9415 z!1189) zl!343))))

(declare-fun lt!2264204 () Bool)

(declare-fun e!3478370 () Bool)

(declare-fun lt!2264226 () Bool)

(declare-fun matchZipper!1769 ((InoxSet Context!10030) List!63193) Bool)

(assert (=> b!5646415 (= e!3478370 (= (matchZipper!1769 z!1189 s!2326) (or lt!2264226 lt!2264204)))))

(declare-fun Exists!2731 (Int) Bool)

(assert (=> b!5646415 (= (Exists!2731 lambda!303428) (Exists!2731 lambda!303429))))

(declare-datatypes ((Unit!156056 0))(
  ( (Unit!156057) )
))
(declare-fun lt!2264214 () Unit!156056)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (Regex!15631 Regex!15631 List!63193) Unit!156056)

(assert (=> b!5646415 (= lt!2264214 (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326))))

(declare-datatypes ((tuple2!65456 0))(
  ( (tuple2!65457 (_1!36031 List!63193) (_2!36031 List!63193)) )
))
(declare-datatypes ((Option!15640 0))(
  ( (None!15639) (Some!15639 (v!51686 tuple2!65456)) )
))
(declare-fun isDefined!12343 (Option!15640) Bool)

(declare-fun findConcatSeparation!2054 (Regex!15631 Regex!15631 List!63193 List!63193 List!63193) Option!15640)

(assert (=> b!5646415 (= (isDefined!12343 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303428))))

(declare-fun lt!2264192 () Unit!156056)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1818 (Regex!15631 Regex!15631 List!63193) Unit!156056)

(assert (=> b!5646415 (= lt!2264192 (lemmaFindConcatSeparationEquivalentToExists!1818 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326))))

(declare-fun generalisedConcat!1246 (List!63192) Regex!15631)

(assert (=> b!5646415 (= lt!2264217 (generalisedConcat!1246 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun lt!2264206 () Bool)

(declare-fun matchRSpec!2734 (Regex!15631 List!63193) Bool)

(assert (=> b!5646415 (= lt!2264206 (matchRSpec!2734 lt!2264184 s!2326))))

(declare-fun lt!2264190 () Unit!156056)

(declare-fun mainMatchTheorem!2734 (Regex!15631 List!63193) Unit!156056)

(assert (=> b!5646415 (= lt!2264190 (mainMatchTheorem!2734 lt!2264184 s!2326))))

(assert (=> b!5646415 (= (Exists!2731 lambda!303426) (Exists!2731 lambda!303427))))

(declare-fun lt!2264193 () Unit!156056)

(assert (=> b!5646415 (= lt!2264193 (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326))))

(assert (=> b!5646415 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303426))))

(declare-fun lt!2264219 () Unit!156056)

(assert (=> b!5646415 (= lt!2264219 (lemmaFindConcatSeparationEquivalentToExists!1818 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326))))

(declare-fun lt!2264218 () Bool)

(declare-fun lt!2264222 () Regex!15631)

(assert (=> b!5646415 (= lt!2264218 (matchRSpec!2734 lt!2264222 s!2326))))

(declare-fun lt!2264216 () Unit!156056)

(assert (=> b!5646415 (= lt!2264216 (mainMatchTheorem!2734 lt!2264222 s!2326))))

(assert (=> b!5646415 (= lt!2264206 lt!2264204)))

(declare-fun lt!2264191 () (InoxSet Context!10030))

(assert (=> b!5646415 (= lt!2264204 (matchZipper!1769 lt!2264191 s!2326))))

(declare-fun matchR!7816 (Regex!15631 List!63193) Bool)

(assert (=> b!5646415 (= lt!2264206 (matchR!7816 lt!2264184 s!2326))))

(declare-fun lt!2264213 () Unit!156056)

(declare-fun theoremZipperRegexEquiv!627 ((InoxSet Context!10030) List!63194 Regex!15631 List!63193) Unit!156056)

(assert (=> b!5646415 (= lt!2264213 (theoremZipperRegexEquiv!627 lt!2264191 (Cons!63070 lt!2264221 Nil!63070) lt!2264184 s!2326))))

(assert (=> b!5646415 (= lt!2264184 (generalisedConcat!1246 lt!2264230))))

(assert (=> b!5646415 (= lt!2264218 lt!2264226)))

(declare-fun lt!2264195 () (InoxSet Context!10030))

(assert (=> b!5646415 (= lt!2264226 (matchZipper!1769 lt!2264195 s!2326))))

(assert (=> b!5646415 (= lt!2264218 (matchR!7816 lt!2264222 s!2326))))

(declare-fun lt!2264185 () List!63194)

(declare-fun lt!2264203 () Unit!156056)

(assert (=> b!5646415 (= lt!2264203 (theoremZipperRegexEquiv!627 lt!2264195 lt!2264185 lt!2264222 s!2326))))

(declare-fun lt!2264211 () List!63192)

(assert (=> b!5646415 (= lt!2264222 (generalisedConcat!1246 lt!2264211))))

(declare-fun b!5646416 () Bool)

(declare-fun res!2388536 () Bool)

(assert (=> b!5646416 (=> res!2388536 e!3478366)))

(declare-fun lt!2264194 () Context!10030)

(declare-fun contextDepthTotal!216 (Context!10030) Int)

(assert (=> b!5646416 (= res!2388536 (>= (contextDepthTotal!216 lt!2264194) (contextDepthTotal!216 (h!69518 zl!343))))))

(declare-fun b!5646418 () Bool)

(declare-fun e!3478360 () Bool)

(declare-fun tp!1565047 () Bool)

(declare-fun tp!1565049 () Bool)

(assert (=> b!5646418 (= e!3478360 (and tp!1565047 tp!1565049))))

(declare-fun setNonEmpty!37712 () Bool)

(declare-fun setElem!37712 () Context!10030)

(declare-fun setRes!37712 () Bool)

(declare-fun tp!1565042 () Bool)

(declare-fun e!3478358 () Bool)

(declare-fun inv!82324 (Context!10030) Bool)

(assert (=> setNonEmpty!37712 (= setRes!37712 (and tp!1565042 (inv!82324 setElem!37712) e!3478358))))

(declare-fun setRest!37712 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37712 (= z!1189 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37712 true) setRest!37712))))

(declare-fun setIsEmpty!37712 () Bool)

(assert (=> setIsEmpty!37712 setRes!37712))

(declare-fun b!5646419 () Bool)

(declare-fun tp_is_empty!40515 () Bool)

(assert (=> b!5646419 (= e!3478360 tp_is_empty!40515)))

(declare-fun e!3478369 () Bool)

(declare-fun e!3478365 () Bool)

(assert (=> b!5646420 (= e!3478369 e!3478365)))

(declare-fun res!2388527 () Bool)

(assert (=> b!5646420 (=> res!2388527 e!3478365)))

(declare-fun lt!2264200 () Bool)

(declare-fun lt!2264199 () Bool)

(get-info :version)

(assert (=> b!5646420 (= res!2388527 (or (not (= lt!2264200 lt!2264199)) ((_ is Nil!63069) s!2326)))))

(assert (=> b!5646420 (= (Exists!2731 lambda!303423) (Exists!2731 lambda!303424))))

(declare-fun lt!2264208 () Unit!156056)

(assert (=> b!5646420 (= lt!2264208 (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326))))

(assert (=> b!5646420 (= lt!2264199 (Exists!2731 lambda!303423))))

(assert (=> b!5646420 (= lt!2264199 (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326)))))

(declare-fun lt!2264210 () Unit!156056)

(assert (=> b!5646420 (= lt!2264210 (lemmaFindConcatSeparationEquivalentToExists!1818 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326))))

(declare-fun b!5646421 () Bool)

(declare-fun e!3478361 () Bool)

(assert (=> b!5646421 (= e!3478361 e!3478366)))

(declare-fun res!2388538 () Bool)

(assert (=> b!5646421 (=> res!2388538 e!3478366)))

(declare-fun e!3478375 () Bool)

(assert (=> b!5646421 (= res!2388538 e!3478375)))

(declare-fun res!2388545 () Bool)

(assert (=> b!5646421 (=> (not res!2388545) (not e!3478375))))

(declare-fun lt!2264205 () (InoxSet Context!10030))

(declare-fun lt!2264202 () Bool)

(assert (=> b!5646421 (= res!2388545 (not (= lt!2264202 (matchZipper!1769 lt!2264205 (t!376491 s!2326)))))))

(declare-fun lt!2264209 () (InoxSet Context!10030))

(declare-fun e!3478359 () Bool)

(assert (=> b!5646421 (= (matchZipper!1769 lt!2264209 (t!376491 s!2326)) e!3478359)))

(declare-fun res!2388537 () Bool)

(assert (=> b!5646421 (=> res!2388537 e!3478359)))

(declare-fun lt!2264229 () Bool)

(assert (=> b!5646421 (= res!2388537 lt!2264229)))

(declare-fun lt!2264228 () (InoxSet Context!10030))

(declare-fun lt!2264189 () Unit!156056)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!656 ((InoxSet Context!10030) (InoxSet Context!10030) List!63193) Unit!156056)

(assert (=> b!5646421 (= lt!2264189 (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264227 lt!2264228 (t!376491 s!2326)))))

(declare-fun lambda!303425 () Int)

(declare-fun flatMap!1244 ((InoxSet Context!10030) Int) (InoxSet Context!10030))

(declare-fun derivationStepZipperUp!899 (Context!10030 C!31532) (InoxSet Context!10030))

(assert (=> b!5646421 (= (flatMap!1244 lt!2264191 lambda!303425) (derivationStepZipperUp!899 lt!2264221 (h!69517 s!2326)))))

(declare-fun lt!2264201 () Unit!156056)

(declare-fun lemmaFlatMapOnSingletonSet!776 ((InoxSet Context!10030) Context!10030 Int) Unit!156056)

(assert (=> b!5646421 (= lt!2264201 (lemmaFlatMapOnSingletonSet!776 lt!2264191 lt!2264221 lambda!303425))))

(declare-fun b!5646422 () Bool)

(assert (=> b!5646422 (= e!3478366 e!3478370)))

(declare-fun res!2388529 () Bool)

(assert (=> b!5646422 (=> res!2388529 e!3478370)))

(declare-fun zipperDepthTotal!240 (List!63194) Int)

(assert (=> b!5646422 (= res!2388529 (>= (zipperDepthTotal!240 lt!2264185) (zipperDepthTotal!240 zl!343)))))

(assert (=> b!5646422 (= lt!2264185 (Cons!63070 lt!2264194 Nil!63070))))

(declare-fun b!5646423 () Bool)

(declare-fun e!3478374 () Bool)

(declare-fun tp!1565043 () Bool)

(assert (=> b!5646423 (= e!3478374 (and tp_is_empty!40515 tp!1565043))))

(declare-fun b!5646424 () Bool)

(declare-fun res!2388541 () Bool)

(assert (=> b!5646424 (=> res!2388541 e!3478369)))

(assert (=> b!5646424 (= res!2388541 (not ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5646425 () Bool)

(declare-fun res!2388543 () Bool)

(assert (=> b!5646425 (=> res!2388543 e!3478372)))

(declare-fun nullable!5663 (Regex!15631) Bool)

(assert (=> b!5646425 (= res!2388543 (not (nullable!5663 (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5646426 () Bool)

(declare-fun res!2388534 () Bool)

(assert (=> b!5646426 (=> res!2388534 e!3478369)))

(declare-fun generalisedUnion!1494 (List!63192) Regex!15631)

(declare-fun unfocusZipperList!1059 (List!63194) List!63192)

(assert (=> b!5646426 (= res!2388534 (not (= r!7292 (generalisedUnion!1494 (unfocusZipperList!1059 zl!343)))))))

(declare-fun b!5646427 () Bool)

(declare-fun e!3478367 () Bool)

(assert (=> b!5646427 (= e!3478367 e!3478361)))

(declare-fun res!2388547 () Bool)

(assert (=> b!5646427 (=> res!2388547 e!3478361)))

(assert (=> b!5646427 (= res!2388547 (not (= lt!2264205 lt!2264209)))))

(assert (=> b!5646427 (= lt!2264209 ((_ map or) lt!2264227 lt!2264228))))

(assert (=> b!5646427 (= lt!2264228 (derivationStepZipperUp!899 lt!2264221 (h!69517 s!2326)))))

(assert (=> b!5646427 (= (flatMap!1244 lt!2264195 lambda!303425) (derivationStepZipperUp!899 lt!2264194 (h!69517 s!2326)))))

(declare-fun lt!2264225 () Unit!156056)

(assert (=> b!5646427 (= lt!2264225 (lemmaFlatMapOnSingletonSet!776 lt!2264195 lt!2264194 lambda!303425))))

(declare-fun lt!2264196 () (InoxSet Context!10030))

(assert (=> b!5646427 (= lt!2264196 (derivationStepZipperUp!899 lt!2264194 (h!69517 s!2326)))))

(declare-fun derivationStepZipper!1718 ((InoxSet Context!10030) C!31532) (InoxSet Context!10030))

(assert (=> b!5646427 (= lt!2264205 (derivationStepZipper!1718 lt!2264195 (h!69517 s!2326)))))

(assert (=> b!5646427 (= lt!2264191 (store ((as const (Array Context!10030 Bool)) false) lt!2264221 true))))

(assert (=> b!5646427 (= lt!2264195 (store ((as const (Array Context!10030 Bool)) false) lt!2264194 true))))

(assert (=> b!5646427 (= lt!2264194 (Context!10031 lt!2264211))))

(assert (=> b!5646427 (= lt!2264211 (Cons!63068 (regOne!31774 (regOne!31774 r!7292)) lt!2264230))))

(declare-fun b!5646428 () Bool)

(declare-fun e!3478363 () Unit!156056)

(declare-fun Unit!156058 () Unit!156056)

(assert (=> b!5646428 (= e!3478363 Unit!156058)))

(declare-fun b!5646429 () Bool)

(declare-fun tp!1565045 () Bool)

(assert (=> b!5646429 (= e!3478360 tp!1565045)))

(declare-fun b!5646430 () Bool)

(declare-fun res!2388533 () Bool)

(assert (=> b!5646430 (=> res!2388533 e!3478369)))

(assert (=> b!5646430 (= res!2388533 (not (= r!7292 (generalisedConcat!1246 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5646431 () Bool)

(assert (=> b!5646431 (= e!3478375 (not (matchZipper!1769 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (t!376491 s!2326))))))

(declare-fun b!5646432 () Bool)

(declare-fun Unit!156059 () Unit!156056)

(assert (=> b!5646432 (= e!3478363 Unit!156059)))

(declare-fun lt!2264187 () Unit!156056)

(declare-fun lt!2264207 () (InoxSet Context!10030))

(assert (=> b!5646432 (= lt!2264187 (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264224 lt!2264207 (t!376491 s!2326)))))

(declare-fun res!2388552 () Bool)

(assert (=> b!5646432 (= res!2388552 (matchZipper!1769 lt!2264224 (t!376491 s!2326)))))

(declare-fun e!3478373 () Bool)

(assert (=> b!5646432 (=> res!2388552 e!3478373)))

(assert (=> b!5646432 (= (matchZipper!1769 ((_ map or) lt!2264224 lt!2264207) (t!376491 s!2326)) e!3478373)))

(declare-fun b!5646433 () Bool)

(declare-fun tp!1565041 () Bool)

(declare-fun tp!1565040 () Bool)

(assert (=> b!5646433 (= e!3478360 (and tp!1565041 tp!1565040))))

(declare-fun b!5646434 () Bool)

(declare-fun res!2388542 () Bool)

(assert (=> b!5646434 (=> res!2388542 e!3478365)))

(declare-fun isEmpty!34913 (List!63192) Bool)

(assert (=> b!5646434 (= res!2388542 (isEmpty!34913 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun tp!1565044 () Bool)

(declare-fun e!3478371 () Bool)

(declare-fun e!3478376 () Bool)

(declare-fun b!5646435 () Bool)

(assert (=> b!5646435 (= e!3478371 (and (inv!82324 (h!69518 zl!343)) e!3478376 tp!1565044))))

(declare-fun b!5646436 () Bool)

(assert (=> b!5646436 (= e!3478364 e!3478367)))

(declare-fun res!2388530 () Bool)

(assert (=> b!5646436 (=> res!2388530 e!3478367)))

(declare-fun e!3478362 () Bool)

(assert (=> b!5646436 (= res!2388530 e!3478362)))

(declare-fun res!2388550 () Bool)

(assert (=> b!5646436 (=> (not res!2388550) (not e!3478362))))

(assert (=> b!5646436 (= res!2388550 (not (= lt!2264202 lt!2264229)))))

(assert (=> b!5646436 (= lt!2264202 (matchZipper!1769 lt!2264224 (t!376491 s!2326)))))

(declare-fun e!3478357 () Bool)

(assert (=> b!5646436 (= (matchZipper!1769 lt!2264186 (t!376491 s!2326)) e!3478357)))

(declare-fun res!2388535 () Bool)

(assert (=> b!5646436 (=> res!2388535 e!3478357)))

(assert (=> b!5646436 (= res!2388535 lt!2264229)))

(assert (=> b!5646436 (= lt!2264229 (matchZipper!1769 lt!2264227 (t!376491 s!2326)))))

(declare-fun lt!2264198 () Unit!156056)

(assert (=> b!5646436 (= lt!2264198 (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264227 lt!2264223 (t!376491 s!2326)))))

(declare-fun b!5646437 () Bool)

(assert (=> b!5646437 (= e!3478359 (matchZipper!1769 lt!2264228 (t!376491 s!2326)))))

(declare-fun b!5646438 () Bool)

(assert (=> b!5646438 (= e!3478373 (matchZipper!1769 lt!2264207 (t!376491 s!2326)))))

(declare-fun b!5646439 () Bool)

(declare-fun res!2388544 () Bool)

(assert (=> b!5646439 (=> res!2388544 e!3478369)))

(declare-fun isEmpty!34914 (List!63194) Bool)

(assert (=> b!5646439 (= res!2388544 (not (isEmpty!34914 (t!376492 zl!343))))))

(declare-fun b!5646440 () Bool)

(declare-fun tp!1565048 () Bool)

(assert (=> b!5646440 (= e!3478358 tp!1565048)))

(declare-fun b!5646441 () Bool)

(declare-fun tp!1565046 () Bool)

(assert (=> b!5646441 (= e!3478376 tp!1565046)))

(declare-fun b!5646442 () Bool)

(assert (=> b!5646442 (= e!3478362 (not (matchZipper!1769 lt!2264223 (t!376491 s!2326))))))

(assert (=> b!5646443 (= e!3478365 e!3478372)))

(declare-fun res!2388539 () Bool)

(assert (=> b!5646443 (=> res!2388539 e!3478372)))

(assert (=> b!5646443 (= res!2388539 (or (and ((_ is ElementMatch!15631) (regOne!31774 r!7292)) (= (c!992159 (regOne!31774 r!7292)) (h!69517 s!2326))) ((_ is Union!15631) (regOne!31774 r!7292)) (not ((_ is Concat!24476) (regOne!31774 r!7292)))))))

(declare-fun lt!2264215 () Unit!156056)

(assert (=> b!5646443 (= lt!2264215 e!3478363)))

(declare-fun c!992158 () Bool)

(assert (=> b!5646443 (= c!992158 (nullable!5663 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5646443 (= (flatMap!1244 z!1189 lambda!303425) (derivationStepZipperUp!899 (h!69518 zl!343) (h!69517 s!2326)))))

(declare-fun lt!2264188 () Unit!156056)

(assert (=> b!5646443 (= lt!2264188 (lemmaFlatMapOnSingletonSet!776 z!1189 (h!69518 zl!343) lambda!303425))))

(assert (=> b!5646443 (= lt!2264207 (derivationStepZipperUp!899 lt!2264212 (h!69517 s!2326)))))

(assert (=> b!5646443 (= lt!2264224 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (h!69518 zl!343))) lt!2264212 (h!69517 s!2326)))))

(assert (=> b!5646443 (= lt!2264212 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun lt!2264220 () (InoxSet Context!10030))

(assert (=> b!5646443 (= lt!2264220 (derivationStepZipperUp!899 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))) (h!69517 s!2326)))))

(declare-fun b!5646444 () Bool)

(declare-fun res!2388540 () Bool)

(assert (=> b!5646444 (=> res!2388540 e!3478369)))

(assert (=> b!5646444 (= res!2388540 (or ((_ is EmptyExpr!15631) r!7292) ((_ is EmptyLang!15631) r!7292) ((_ is ElementMatch!15631) r!7292) ((_ is Union!15631) r!7292) (not ((_ is Concat!24476) r!7292))))))

(declare-fun b!5646445 () Bool)

(assert (=> b!5646445 (= e!3478368 (not e!3478369))))

(declare-fun res!2388531 () Bool)

(assert (=> b!5646445 (=> res!2388531 e!3478369)))

(assert (=> b!5646445 (= res!2388531 (not ((_ is Cons!63070) zl!343)))))

(assert (=> b!5646445 (= lt!2264200 (matchRSpec!2734 r!7292 s!2326))))

(assert (=> b!5646445 (= lt!2264200 (matchR!7816 r!7292 s!2326))))

(declare-fun lt!2264197 () Unit!156056)

(assert (=> b!5646445 (= lt!2264197 (mainMatchTheorem!2734 r!7292 s!2326))))

(declare-fun b!5646417 () Bool)

(declare-fun res!2388532 () Bool)

(assert (=> b!5646417 (=> (not res!2388532) (not e!3478368))))

(declare-fun unfocusZipper!1373 (List!63194) Regex!15631)

(assert (=> b!5646417 (= res!2388532 (= r!7292 (unfocusZipper!1373 zl!343)))))

(declare-fun res!2388548 () Bool)

(assert (=> start!584070 (=> (not res!2388548) (not e!3478368))))

(declare-fun validRegex!7367 (Regex!15631) Bool)

(assert (=> start!584070 (= res!2388548 (validRegex!7367 r!7292))))

(assert (=> start!584070 e!3478368))

(assert (=> start!584070 e!3478360))

(declare-fun condSetEmpty!37712 () Bool)

(assert (=> start!584070 (= condSetEmpty!37712 (= z!1189 ((as const (Array Context!10030 Bool)) false)))))

(assert (=> start!584070 setRes!37712))

(assert (=> start!584070 e!3478371))

(assert (=> start!584070 e!3478374))

(declare-fun b!5646446 () Bool)

(assert (=> b!5646446 (= e!3478357 (matchZipper!1769 lt!2264223 (t!376491 s!2326)))))

(declare-fun b!5646447 () Bool)

(declare-fun res!2388546 () Bool)

(assert (=> b!5646447 (=> res!2388546 e!3478370)))

(declare-fun zipperDepth!208 (List!63194) Int)

(assert (=> b!5646447 (= res!2388546 (> (zipperDepth!208 lt!2264185) (zipperDepth!208 zl!343)))))

(assert (= (and start!584070 res!2388548) b!5646414))

(assert (= (and b!5646414 res!2388551) b!5646417))

(assert (= (and b!5646417 res!2388532) b!5646445))

(assert (= (and b!5646445 (not res!2388531)) b!5646439))

(assert (= (and b!5646439 (not res!2388544)) b!5646430))

(assert (= (and b!5646430 (not res!2388533)) b!5646424))

(assert (= (and b!5646424 (not res!2388541)) b!5646426))

(assert (= (and b!5646426 (not res!2388534)) b!5646444))

(assert (= (and b!5646444 (not res!2388540)) b!5646420))

(assert (= (and b!5646420 (not res!2388527)) b!5646434))

(assert (= (and b!5646434 (not res!2388542)) b!5646443))

(assert (= (and b!5646443 c!992158) b!5646432))

(assert (= (and b!5646443 (not c!992158)) b!5646428))

(assert (= (and b!5646432 (not res!2388552)) b!5646438))

(assert (= (and b!5646443 (not res!2388539)) b!5646425))

(assert (= (and b!5646425 (not res!2388543)) b!5646412))

(assert (= (and b!5646412 (not res!2388549)) b!5646436))

(assert (= (and b!5646436 (not res!2388535)) b!5646446))

(assert (= (and b!5646436 res!2388550) b!5646442))

(assert (= (and b!5646436 (not res!2388530)) b!5646427))

(assert (= (and b!5646427 (not res!2388547)) b!5646421))

(assert (= (and b!5646421 (not res!2388537)) b!5646437))

(assert (= (and b!5646421 res!2388545) b!5646431))

(assert (= (and b!5646421 (not res!2388538)) b!5646413))

(assert (= (and b!5646413 (not res!2388528)) b!5646416))

(assert (= (and b!5646416 (not res!2388536)) b!5646422))

(assert (= (and b!5646422 (not res!2388529)) b!5646447))

(assert (= (and b!5646447 (not res!2388546)) b!5646415))

(assert (= (and start!584070 ((_ is ElementMatch!15631) r!7292)) b!5646419))

(assert (= (and start!584070 ((_ is Concat!24476) r!7292)) b!5646433))

(assert (= (and start!584070 ((_ is Star!15631) r!7292)) b!5646429))

(assert (= (and start!584070 ((_ is Union!15631) r!7292)) b!5646418))

(assert (= (and start!584070 condSetEmpty!37712) setIsEmpty!37712))

(assert (= (and start!584070 (not condSetEmpty!37712)) setNonEmpty!37712))

(assert (= setNonEmpty!37712 b!5646440))

(assert (= b!5646435 b!5646441))

(assert (= (and start!584070 ((_ is Cons!63070) zl!343)) b!5646435))

(assert (= (and start!584070 ((_ is Cons!63069) s!2326)) b!5646423))

(declare-fun m!6613636 () Bool)

(assert (=> b!5646436 m!6613636))

(declare-fun m!6613638 () Bool)

(assert (=> b!5646436 m!6613638))

(declare-fun m!6613640 () Bool)

(assert (=> b!5646436 m!6613640))

(declare-fun m!6613642 () Bool)

(assert (=> b!5646436 m!6613642))

(declare-fun m!6613644 () Bool)

(assert (=> b!5646435 m!6613644))

(declare-fun m!6613646 () Bool)

(assert (=> b!5646447 m!6613646))

(declare-fun m!6613648 () Bool)

(assert (=> b!5646447 m!6613648))

(declare-fun m!6613650 () Bool)

(assert (=> b!5646427 m!6613650))

(declare-fun m!6613652 () Bool)

(assert (=> b!5646427 m!6613652))

(declare-fun m!6613654 () Bool)

(assert (=> b!5646427 m!6613654))

(declare-fun m!6613656 () Bool)

(assert (=> b!5646427 m!6613656))

(declare-fun m!6613658 () Bool)

(assert (=> b!5646427 m!6613658))

(declare-fun m!6613660 () Bool)

(assert (=> b!5646427 m!6613660))

(declare-fun m!6613662 () Bool)

(assert (=> b!5646427 m!6613662))

(declare-fun m!6613664 () Bool)

(assert (=> b!5646426 m!6613664))

(assert (=> b!5646426 m!6613664))

(declare-fun m!6613666 () Bool)

(assert (=> b!5646426 m!6613666))

(declare-fun m!6613668 () Bool)

(assert (=> b!5646446 m!6613668))

(declare-fun m!6613670 () Bool)

(assert (=> b!5646431 m!6613670))

(assert (=> b!5646431 m!6613670))

(declare-fun m!6613672 () Bool)

(assert (=> b!5646431 m!6613672))

(declare-fun m!6613674 () Bool)

(assert (=> b!5646415 m!6613674))

(declare-fun m!6613676 () Bool)

(assert (=> b!5646415 m!6613676))

(declare-fun m!6613678 () Bool)

(assert (=> b!5646415 m!6613678))

(declare-fun m!6613680 () Bool)

(assert (=> b!5646415 m!6613680))

(declare-fun m!6613682 () Bool)

(assert (=> b!5646415 m!6613682))

(declare-fun m!6613684 () Bool)

(assert (=> b!5646415 m!6613684))

(declare-fun m!6613686 () Bool)

(assert (=> b!5646415 m!6613686))

(declare-fun m!6613688 () Bool)

(assert (=> b!5646415 m!6613688))

(declare-fun m!6613690 () Bool)

(assert (=> b!5646415 m!6613690))

(declare-fun m!6613692 () Bool)

(assert (=> b!5646415 m!6613692))

(declare-fun m!6613694 () Bool)

(assert (=> b!5646415 m!6613694))

(declare-fun m!6613696 () Bool)

(assert (=> b!5646415 m!6613696))

(declare-fun m!6613698 () Bool)

(assert (=> b!5646415 m!6613698))

(declare-fun m!6613700 () Bool)

(assert (=> b!5646415 m!6613700))

(declare-fun m!6613702 () Bool)

(assert (=> b!5646415 m!6613702))

(declare-fun m!6613704 () Bool)

(assert (=> b!5646415 m!6613704))

(declare-fun m!6613706 () Bool)

(assert (=> b!5646415 m!6613706))

(declare-fun m!6613708 () Bool)

(assert (=> b!5646415 m!6613708))

(declare-fun m!6613710 () Bool)

(assert (=> b!5646415 m!6613710))

(declare-fun m!6613712 () Bool)

(assert (=> b!5646415 m!6613712))

(assert (=> b!5646415 m!6613694))

(declare-fun m!6613714 () Bool)

(assert (=> b!5646415 m!6613714))

(declare-fun m!6613716 () Bool)

(assert (=> b!5646415 m!6613716))

(assert (=> b!5646415 m!6613678))

(declare-fun m!6613718 () Bool)

(assert (=> b!5646415 m!6613718))

(assert (=> b!5646415 m!6613708))

(assert (=> b!5646415 m!6613706))

(declare-fun m!6613720 () Bool)

(assert (=> b!5646415 m!6613720))

(declare-fun m!6613722 () Bool)

(assert (=> b!5646415 m!6613722))

(declare-fun m!6613724 () Bool)

(assert (=> b!5646415 m!6613724))

(declare-fun m!6613726 () Bool)

(assert (=> b!5646425 m!6613726))

(declare-fun m!6613728 () Bool)

(assert (=> b!5646421 m!6613728))

(assert (=> b!5646421 m!6613650))

(declare-fun m!6613730 () Bool)

(assert (=> b!5646421 m!6613730))

(declare-fun m!6613732 () Bool)

(assert (=> b!5646421 m!6613732))

(declare-fun m!6613734 () Bool)

(assert (=> b!5646421 m!6613734))

(declare-fun m!6613736 () Bool)

(assert (=> b!5646421 m!6613736))

(declare-fun m!6613738 () Bool)

(assert (=> b!5646430 m!6613738))

(declare-fun m!6613740 () Bool)

(assert (=> b!5646422 m!6613740))

(declare-fun m!6613742 () Bool)

(assert (=> b!5646422 m!6613742))

(declare-fun m!6613744 () Bool)

(assert (=> b!5646420 m!6613744))

(declare-fun m!6613746 () Bool)

(assert (=> b!5646420 m!6613746))

(declare-fun m!6613748 () Bool)

(assert (=> b!5646420 m!6613748))

(declare-fun m!6613750 () Bool)

(assert (=> b!5646420 m!6613750))

(assert (=> b!5646420 m!6613746))

(declare-fun m!6613752 () Bool)

(assert (=> b!5646420 m!6613752))

(assert (=> b!5646420 m!6613748))

(declare-fun m!6613754 () Bool)

(assert (=> b!5646420 m!6613754))

(declare-fun m!6613756 () Bool)

(assert (=> b!5646412 m!6613756))

(declare-fun m!6613758 () Bool)

(assert (=> b!5646412 m!6613758))

(declare-fun m!6613760 () Bool)

(assert (=> b!5646434 m!6613760))

(declare-fun m!6613762 () Bool)

(assert (=> b!5646414 m!6613762))

(declare-fun m!6613764 () Bool)

(assert (=> b!5646432 m!6613764))

(assert (=> b!5646432 m!6613636))

(declare-fun m!6613766 () Bool)

(assert (=> b!5646432 m!6613766))

(declare-fun m!6613768 () Bool)

(assert (=> b!5646416 m!6613768))

(declare-fun m!6613770 () Bool)

(assert (=> b!5646416 m!6613770))

(declare-fun m!6613772 () Bool)

(assert (=> b!5646437 m!6613772))

(declare-fun m!6613774 () Bool)

(assert (=> b!5646443 m!6613774))

(declare-fun m!6613776 () Bool)

(assert (=> b!5646443 m!6613776))

(declare-fun m!6613778 () Bool)

(assert (=> b!5646443 m!6613778))

(declare-fun m!6613780 () Bool)

(assert (=> b!5646443 m!6613780))

(declare-fun m!6613782 () Bool)

(assert (=> b!5646443 m!6613782))

(declare-fun m!6613784 () Bool)

(assert (=> b!5646443 m!6613784))

(declare-fun m!6613786 () Bool)

(assert (=> b!5646443 m!6613786))

(assert (=> b!5646442 m!6613668))

(declare-fun m!6613788 () Bool)

(assert (=> b!5646445 m!6613788))

(declare-fun m!6613790 () Bool)

(assert (=> b!5646445 m!6613790))

(declare-fun m!6613792 () Bool)

(assert (=> b!5646445 m!6613792))

(declare-fun m!6613794 () Bool)

(assert (=> b!5646439 m!6613794))

(declare-fun m!6613796 () Bool)

(assert (=> setNonEmpty!37712 m!6613796))

(declare-fun m!6613798 () Bool)

(assert (=> b!5646438 m!6613798))

(declare-fun m!6613800 () Bool)

(assert (=> start!584070 m!6613800))

(declare-fun m!6613802 () Bool)

(assert (=> b!5646417 m!6613802))

(check-sat (not b!5646422) (not b!5646415) (not b!5646427) tp_is_empty!40515 (not b!5646432) (not b!5646443) (not b!5646438) (not b!5646447) (not b!5646431) (not b!5646425) (not b!5646421) (not b!5646441) (not b!5646423) (not b!5646426) (not b!5646435) (not b!5646445) (not setNonEmpty!37712) (not start!584070) (not b!5646439) (not b!5646437) (not b!5646420) (not b!5646416) (not b!5646434) (not b!5646442) (not b!5646429) (not b!5646430) (not b!5646433) (not b!5646412) (not b!5646446) (not b!5646417) (not b!5646414) (not b!5646436) (not b!5646440) (not b!5646418))
(check-sat)
(get-model)

(declare-fun d!1783655 () Bool)

(declare-fun c!992327 () Bool)

(declare-fun isEmpty!34917 (List!63193) Bool)

(assert (=> d!1783655 (= c!992327 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478675 () Bool)

(assert (=> d!1783655 (= (matchZipper!1769 lt!2264223 (t!376491 s!2326)) e!3478675)))

(declare-fun b!5646987 () Bool)

(declare-fun nullableZipper!1613 ((InoxSet Context!10030)) Bool)

(assert (=> b!5646987 (= e!3478675 (nullableZipper!1613 lt!2264223))))

(declare-fun b!5646988 () Bool)

(declare-fun head!12006 (List!63193) C!31532)

(declare-fun tail!11101 (List!63193) List!63193)

(assert (=> b!5646988 (= e!3478675 (matchZipper!1769 (derivationStepZipper!1718 lt!2264223 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783655 c!992327) b!5646987))

(assert (= (and d!1783655 (not c!992327)) b!5646988))

(declare-fun m!6614302 () Bool)

(assert (=> d!1783655 m!6614302))

(declare-fun m!6614304 () Bool)

(assert (=> b!5646987 m!6614304))

(declare-fun m!6614306 () Bool)

(assert (=> b!5646988 m!6614306))

(assert (=> b!5646988 m!6614306))

(declare-fun m!6614308 () Bool)

(assert (=> b!5646988 m!6614308))

(declare-fun m!6614310 () Bool)

(assert (=> b!5646988 m!6614310))

(assert (=> b!5646988 m!6614308))

(assert (=> b!5646988 m!6614310))

(declare-fun m!6614312 () Bool)

(assert (=> b!5646988 m!6614312))

(assert (=> b!5646442 d!1783655))

(declare-fun d!1783657 () Bool)

(declare-fun c!992333 () Bool)

(declare-fun e!3478684 () Bool)

(assert (=> d!1783657 (= c!992333 e!3478684)))

(declare-fun res!2388714 () Bool)

(assert (=> d!1783657 (=> (not res!2388714) (not e!3478684))))

(assert (=> d!1783657 (= res!2388714 ((_ is Cons!63068) (exprs!5515 lt!2264221)))))

(declare-fun e!3478683 () (InoxSet Context!10030))

(assert (=> d!1783657 (= (derivationStepZipperUp!899 lt!2264221 (h!69517 s!2326)) e!3478683)))

(declare-fun b!5646999 () Bool)

(declare-fun e!3478682 () (InoxSet Context!10030))

(declare-fun call!426977 () (InoxSet Context!10030))

(assert (=> b!5646999 (= e!3478682 call!426977)))

(declare-fun b!5647000 () Bool)

(assert (=> b!5647000 (= e!3478683 e!3478682)))

(declare-fun c!992332 () Bool)

(assert (=> b!5647000 (= c!992332 ((_ is Cons!63068) (exprs!5515 lt!2264221)))))

(declare-fun bm!426972 () Bool)

(assert (=> bm!426972 (= call!426977 (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264221)) (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (h!69517 s!2326)))))

(declare-fun b!5647001 () Bool)

(assert (=> b!5647001 (= e!3478682 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647002 () Bool)

(assert (=> b!5647002 (= e!3478683 ((_ map or) call!426977 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (h!69517 s!2326))))))

(declare-fun b!5647003 () Bool)

(assert (=> b!5647003 (= e!3478684 (nullable!5663 (h!69516 (exprs!5515 lt!2264221))))))

(assert (= (and d!1783657 res!2388714) b!5647003))

(assert (= (and d!1783657 c!992333) b!5647002))

(assert (= (and d!1783657 (not c!992333)) b!5647000))

(assert (= (and b!5647000 c!992332) b!5646999))

(assert (= (and b!5647000 (not c!992332)) b!5647001))

(assert (= (or b!5647002 b!5646999) bm!426972))

(declare-fun m!6614314 () Bool)

(assert (=> bm!426972 m!6614314))

(declare-fun m!6614316 () Bool)

(assert (=> b!5647002 m!6614316))

(declare-fun m!6614318 () Bool)

(assert (=> b!5647003 m!6614318))

(assert (=> b!5646421 d!1783657))

(declare-fun e!3478687 () Bool)

(declare-fun d!1783659 () Bool)

(assert (=> d!1783659 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264228) (t!376491 s!2326)) e!3478687)))

(declare-fun res!2388717 () Bool)

(assert (=> d!1783659 (=> res!2388717 e!3478687)))

(assert (=> d!1783659 (= res!2388717 (matchZipper!1769 lt!2264227 (t!376491 s!2326)))))

(declare-fun lt!2264324 () Unit!156056)

(declare-fun choose!42755 ((InoxSet Context!10030) (InoxSet Context!10030) List!63193) Unit!156056)

(assert (=> d!1783659 (= lt!2264324 (choose!42755 lt!2264227 lt!2264228 (t!376491 s!2326)))))

(assert (=> d!1783659 (= (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264227 lt!2264228 (t!376491 s!2326)) lt!2264324)))

(declare-fun b!5647006 () Bool)

(assert (=> b!5647006 (= e!3478687 (matchZipper!1769 lt!2264228 (t!376491 s!2326)))))

(assert (= (and d!1783659 (not res!2388717)) b!5647006))

(declare-fun m!6614320 () Bool)

(assert (=> d!1783659 m!6614320))

(assert (=> d!1783659 m!6613640))

(declare-fun m!6614322 () Bool)

(assert (=> d!1783659 m!6614322))

(assert (=> b!5647006 m!6613772))

(assert (=> b!5646421 d!1783659))

(declare-fun d!1783661 () Bool)

(declare-fun c!992334 () Bool)

(assert (=> d!1783661 (= c!992334 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478688 () Bool)

(assert (=> d!1783661 (= (matchZipper!1769 lt!2264205 (t!376491 s!2326)) e!3478688)))

(declare-fun b!5647007 () Bool)

(assert (=> b!5647007 (= e!3478688 (nullableZipper!1613 lt!2264205))))

(declare-fun b!5647008 () Bool)

(assert (=> b!5647008 (= e!3478688 (matchZipper!1769 (derivationStepZipper!1718 lt!2264205 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783661 c!992334) b!5647007))

(assert (= (and d!1783661 (not c!992334)) b!5647008))

(assert (=> d!1783661 m!6614302))

(declare-fun m!6614324 () Bool)

(assert (=> b!5647007 m!6614324))

(assert (=> b!5647008 m!6614306))

(assert (=> b!5647008 m!6614306))

(declare-fun m!6614326 () Bool)

(assert (=> b!5647008 m!6614326))

(assert (=> b!5647008 m!6614310))

(assert (=> b!5647008 m!6614326))

(assert (=> b!5647008 m!6614310))

(declare-fun m!6614328 () Bool)

(assert (=> b!5647008 m!6614328))

(assert (=> b!5646421 d!1783661))

(declare-fun d!1783663 () Bool)

(declare-fun choose!42756 ((InoxSet Context!10030) Int) (InoxSet Context!10030))

(assert (=> d!1783663 (= (flatMap!1244 lt!2264191 lambda!303425) (choose!42756 lt!2264191 lambda!303425))))

(declare-fun bs!1312253 () Bool)

(assert (= bs!1312253 d!1783663))

(declare-fun m!6614330 () Bool)

(assert (=> bs!1312253 m!6614330))

(assert (=> b!5646421 d!1783663))

(declare-fun d!1783665 () Bool)

(declare-fun dynLambda!24674 (Int Context!10030) (InoxSet Context!10030))

(assert (=> d!1783665 (= (flatMap!1244 lt!2264191 lambda!303425) (dynLambda!24674 lambda!303425 lt!2264221))))

(declare-fun lt!2264327 () Unit!156056)

(declare-fun choose!42757 ((InoxSet Context!10030) Context!10030 Int) Unit!156056)

(assert (=> d!1783665 (= lt!2264327 (choose!42757 lt!2264191 lt!2264221 lambda!303425))))

(assert (=> d!1783665 (= lt!2264191 (store ((as const (Array Context!10030 Bool)) false) lt!2264221 true))))

(assert (=> d!1783665 (= (lemmaFlatMapOnSingletonSet!776 lt!2264191 lt!2264221 lambda!303425) lt!2264327)))

(declare-fun b_lambda!213639 () Bool)

(assert (=> (not b_lambda!213639) (not d!1783665)))

(declare-fun bs!1312254 () Bool)

(assert (= bs!1312254 d!1783665))

(assert (=> bs!1312254 m!6613730))

(declare-fun m!6614332 () Bool)

(assert (=> bs!1312254 m!6614332))

(declare-fun m!6614334 () Bool)

(assert (=> bs!1312254 m!6614334))

(assert (=> bs!1312254 m!6613654))

(assert (=> b!5646421 d!1783665))

(declare-fun d!1783667 () Bool)

(declare-fun c!992335 () Bool)

(assert (=> d!1783667 (= c!992335 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478689 () Bool)

(assert (=> d!1783667 (= (matchZipper!1769 lt!2264209 (t!376491 s!2326)) e!3478689)))

(declare-fun b!5647009 () Bool)

(assert (=> b!5647009 (= e!3478689 (nullableZipper!1613 lt!2264209))))

(declare-fun b!5647010 () Bool)

(assert (=> b!5647010 (= e!3478689 (matchZipper!1769 (derivationStepZipper!1718 lt!2264209 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783667 c!992335) b!5647009))

(assert (= (and d!1783667 (not c!992335)) b!5647010))

(assert (=> d!1783667 m!6614302))

(declare-fun m!6614336 () Bool)

(assert (=> b!5647009 m!6614336))

(assert (=> b!5647010 m!6614306))

(assert (=> b!5647010 m!6614306))

(declare-fun m!6614338 () Bool)

(assert (=> b!5647010 m!6614338))

(assert (=> b!5647010 m!6614310))

(assert (=> b!5647010 m!6614338))

(assert (=> b!5647010 m!6614310))

(declare-fun m!6614340 () Bool)

(assert (=> b!5647010 m!6614340))

(assert (=> b!5646421 d!1783667))

(declare-fun b!5647029 () Bool)

(declare-fun e!3478704 () Bool)

(assert (=> b!5647029 (= e!3478704 (matchR!7816 (regTwo!31774 r!7292) s!2326))))

(declare-fun b!5647030 () Bool)

(declare-fun e!3478702 () Option!15640)

(assert (=> b!5647030 (= e!3478702 None!15639)))

(declare-fun d!1783669 () Bool)

(declare-fun e!3478701 () Bool)

(assert (=> d!1783669 e!3478701))

(declare-fun res!2388730 () Bool)

(assert (=> d!1783669 (=> res!2388730 e!3478701)))

(declare-fun e!3478700 () Bool)

(assert (=> d!1783669 (= res!2388730 e!3478700)))

(declare-fun res!2388728 () Bool)

(assert (=> d!1783669 (=> (not res!2388728) (not e!3478700))))

(declare-fun lt!2264335 () Option!15640)

(assert (=> d!1783669 (= res!2388728 (isDefined!12343 lt!2264335))))

(declare-fun e!3478703 () Option!15640)

(assert (=> d!1783669 (= lt!2264335 e!3478703)))

(declare-fun c!992341 () Bool)

(assert (=> d!1783669 (= c!992341 e!3478704)))

(declare-fun res!2388729 () Bool)

(assert (=> d!1783669 (=> (not res!2388729) (not e!3478704))))

(assert (=> d!1783669 (= res!2388729 (matchR!7816 (regOne!31774 r!7292) Nil!63069))))

(assert (=> d!1783669 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1783669 (= (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326) lt!2264335)))

(declare-fun b!5647031 () Bool)

(assert (=> b!5647031 (= e!3478703 (Some!15639 (tuple2!65457 Nil!63069 s!2326)))))

(declare-fun b!5647032 () Bool)

(declare-fun res!2388732 () Bool)

(assert (=> b!5647032 (=> (not res!2388732) (not e!3478700))))

(declare-fun get!21730 (Option!15640) tuple2!65456)

(assert (=> b!5647032 (= res!2388732 (matchR!7816 (regTwo!31774 r!7292) (_2!36031 (get!21730 lt!2264335))))))

(declare-fun b!5647033 () Bool)

(assert (=> b!5647033 (= e!3478701 (not (isDefined!12343 lt!2264335)))))

(declare-fun b!5647034 () Bool)

(declare-fun lt!2264336 () Unit!156056)

(declare-fun lt!2264334 () Unit!156056)

(assert (=> b!5647034 (= lt!2264336 lt!2264334)))

(declare-fun ++!13847 (List!63193 List!63193) List!63193)

(assert (=> b!5647034 (= (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2016 (List!63193 C!31532 List!63193 List!63193) Unit!156056)

(assert (=> b!5647034 (= lt!2264334 (lemmaMoveElementToOtherListKeepsConcatEq!2016 Nil!63069 (h!69517 s!2326) (t!376491 s!2326) s!2326))))

(assert (=> b!5647034 (= e!3478702 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326))))

(declare-fun b!5647035 () Bool)

(assert (=> b!5647035 (= e!3478703 e!3478702)))

(declare-fun c!992340 () Bool)

(assert (=> b!5647035 (= c!992340 ((_ is Nil!63069) s!2326))))

(declare-fun b!5647036 () Bool)

(assert (=> b!5647036 (= e!3478700 (= (++!13847 (_1!36031 (get!21730 lt!2264335)) (_2!36031 (get!21730 lt!2264335))) s!2326))))

(declare-fun b!5647037 () Bool)

(declare-fun res!2388731 () Bool)

(assert (=> b!5647037 (=> (not res!2388731) (not e!3478700))))

(assert (=> b!5647037 (= res!2388731 (matchR!7816 (regOne!31774 r!7292) (_1!36031 (get!21730 lt!2264335))))))

(assert (= (and d!1783669 res!2388729) b!5647029))

(assert (= (and d!1783669 c!992341) b!5647031))

(assert (= (and d!1783669 (not c!992341)) b!5647035))

(assert (= (and b!5647035 c!992340) b!5647030))

(assert (= (and b!5647035 (not c!992340)) b!5647034))

(assert (= (and d!1783669 res!2388728) b!5647037))

(assert (= (and b!5647037 res!2388731) b!5647032))

(assert (= (and b!5647032 res!2388732) b!5647036))

(assert (= (and d!1783669 (not res!2388730)) b!5647033))

(declare-fun m!6614342 () Bool)

(assert (=> b!5647033 m!6614342))

(declare-fun m!6614344 () Bool)

(assert (=> b!5647029 m!6614344))

(declare-fun m!6614346 () Bool)

(assert (=> b!5647036 m!6614346))

(declare-fun m!6614348 () Bool)

(assert (=> b!5647036 m!6614348))

(assert (=> d!1783669 m!6614342))

(declare-fun m!6614350 () Bool)

(assert (=> d!1783669 m!6614350))

(declare-fun m!6614352 () Bool)

(assert (=> d!1783669 m!6614352))

(declare-fun m!6614354 () Bool)

(assert (=> b!5647034 m!6614354))

(assert (=> b!5647034 m!6614354))

(declare-fun m!6614356 () Bool)

(assert (=> b!5647034 m!6614356))

(declare-fun m!6614358 () Bool)

(assert (=> b!5647034 m!6614358))

(assert (=> b!5647034 m!6614354))

(declare-fun m!6614360 () Bool)

(assert (=> b!5647034 m!6614360))

(assert (=> b!5647032 m!6614346))

(declare-fun m!6614362 () Bool)

(assert (=> b!5647032 m!6614362))

(assert (=> b!5647037 m!6614346))

(declare-fun m!6614364 () Bool)

(assert (=> b!5647037 m!6614364))

(assert (=> b!5646420 d!1783669))

(declare-fun d!1783671 () Bool)

(declare-fun choose!42758 (Int) Bool)

(assert (=> d!1783671 (= (Exists!2731 lambda!303423) (choose!42758 lambda!303423))))

(declare-fun bs!1312255 () Bool)

(assert (= bs!1312255 d!1783671))

(declare-fun m!6614366 () Bool)

(assert (=> bs!1312255 m!6614366))

(assert (=> b!5646420 d!1783671))

(declare-fun d!1783673 () Bool)

(assert (=> d!1783673 (= (Exists!2731 lambda!303424) (choose!42758 lambda!303424))))

(declare-fun bs!1312256 () Bool)

(assert (= bs!1312256 d!1783673))

(declare-fun m!6614368 () Bool)

(assert (=> bs!1312256 m!6614368))

(assert (=> b!5646420 d!1783673))

(declare-fun bs!1312257 () Bool)

(declare-fun d!1783675 () Bool)

(assert (= bs!1312257 (and d!1783675 b!5646415)))

(declare-fun lambda!303489 () Int)

(assert (=> bs!1312257 (not (= lambda!303489 lambda!303429))))

(declare-fun bs!1312258 () Bool)

(assert (= bs!1312258 (and d!1783675 b!5646420)))

(assert (=> bs!1312258 (not (= lambda!303489 lambda!303424))))

(assert (=> bs!1312257 (not (= lambda!303489 lambda!303427))))

(assert (=> bs!1312257 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303489 lambda!303426))))

(assert (=> bs!1312257 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303489 lambda!303428))))

(assert (=> bs!1312258 (= lambda!303489 lambda!303423)))

(assert (=> d!1783675 true))

(assert (=> d!1783675 true))

(assert (=> d!1783675 true))

(assert (=> d!1783675 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303489))))

(declare-fun lt!2264339 () Unit!156056)

(declare-fun choose!42759 (Regex!15631 Regex!15631 List!63193) Unit!156056)

(assert (=> d!1783675 (= lt!2264339 (choose!42759 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326))))

(assert (=> d!1783675 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1783675 (= (lemmaFindConcatSeparationEquivalentToExists!1818 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326) lt!2264339)))

(declare-fun bs!1312259 () Bool)

(assert (= bs!1312259 d!1783675))

(declare-fun m!6614370 () Bool)

(assert (=> bs!1312259 m!6614370))

(assert (=> bs!1312259 m!6613748))

(assert (=> bs!1312259 m!6613750))

(declare-fun m!6614372 () Bool)

(assert (=> bs!1312259 m!6614372))

(assert (=> bs!1312259 m!6613748))

(assert (=> bs!1312259 m!6614352))

(assert (=> b!5646420 d!1783675))

(declare-fun bs!1312260 () Bool)

(declare-fun d!1783677 () Bool)

(assert (= bs!1312260 (and d!1783677 d!1783675)))

(declare-fun lambda!303494 () Int)

(assert (=> bs!1312260 (= lambda!303494 lambda!303489)))

(declare-fun bs!1312261 () Bool)

(assert (= bs!1312261 (and d!1783677 b!5646415)))

(assert (=> bs!1312261 (not (= lambda!303494 lambda!303429))))

(declare-fun bs!1312262 () Bool)

(assert (= bs!1312262 (and d!1783677 b!5646420)))

(assert (=> bs!1312262 (not (= lambda!303494 lambda!303424))))

(assert (=> bs!1312261 (not (= lambda!303494 lambda!303427))))

(assert (=> bs!1312261 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303494 lambda!303426))))

(assert (=> bs!1312261 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303494 lambda!303428))))

(assert (=> bs!1312262 (= lambda!303494 lambda!303423)))

(assert (=> d!1783677 true))

(assert (=> d!1783677 true))

(assert (=> d!1783677 true))

(declare-fun lambda!303495 () Int)

(assert (=> bs!1312260 (not (= lambda!303495 lambda!303489))))

(assert (=> bs!1312261 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303495 lambda!303429))))

(assert (=> bs!1312262 (= lambda!303495 lambda!303424)))

(assert (=> bs!1312261 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303495 lambda!303427))))

(declare-fun bs!1312263 () Bool)

(assert (= bs!1312263 d!1783677))

(assert (=> bs!1312263 (not (= lambda!303495 lambda!303494))))

(assert (=> bs!1312261 (not (= lambda!303495 lambda!303426))))

(assert (=> bs!1312261 (not (= lambda!303495 lambda!303428))))

(assert (=> bs!1312262 (not (= lambda!303495 lambda!303423))))

(assert (=> d!1783677 true))

(assert (=> d!1783677 true))

(assert (=> d!1783677 true))

(assert (=> d!1783677 (= (Exists!2731 lambda!303494) (Exists!2731 lambda!303495))))

(declare-fun lt!2264342 () Unit!156056)

(declare-fun choose!42760 (Regex!15631 Regex!15631 List!63193) Unit!156056)

(assert (=> d!1783677 (= lt!2264342 (choose!42760 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326))))

(assert (=> d!1783677 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1783677 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326) lt!2264342)))

(declare-fun m!6614374 () Bool)

(assert (=> bs!1312263 m!6614374))

(declare-fun m!6614376 () Bool)

(assert (=> bs!1312263 m!6614376))

(declare-fun m!6614378 () Bool)

(assert (=> bs!1312263 m!6614378))

(assert (=> bs!1312263 m!6614352))

(assert (=> b!5646420 d!1783677))

(declare-fun d!1783679 () Bool)

(declare-fun isEmpty!34918 (Option!15640) Bool)

(assert (=> d!1783679 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326)) (not (isEmpty!34918 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326))))))

(declare-fun bs!1312264 () Bool)

(assert (= bs!1312264 d!1783679))

(assert (=> bs!1312264 m!6613748))

(declare-fun m!6614380 () Bool)

(assert (=> bs!1312264 m!6614380))

(assert (=> b!5646420 d!1783679))

(declare-fun bs!1312265 () Bool)

(declare-fun b!5647092 () Bool)

(assert (= bs!1312265 (and b!5647092 d!1783675)))

(declare-fun lambda!303500 () Int)

(assert (=> bs!1312265 (not (= lambda!303500 lambda!303489))))

(declare-fun bs!1312266 () Bool)

(assert (= bs!1312266 (and b!5647092 b!5646415)))

(assert (=> bs!1312266 (not (= lambda!303500 lambda!303429))))

(declare-fun bs!1312267 () Bool)

(assert (= bs!1312267 (and b!5647092 b!5646420)))

(assert (=> bs!1312267 (not (= lambda!303500 lambda!303424))))

(assert (=> bs!1312266 (not (= lambda!303500 lambda!303427))))

(declare-fun bs!1312268 () Bool)

(assert (= bs!1312268 (and b!5647092 d!1783677)))

(assert (=> bs!1312268 (not (= lambda!303500 lambda!303494))))

(assert (=> bs!1312268 (not (= lambda!303500 lambda!303495))))

(assert (=> bs!1312266 (not (= lambda!303500 lambda!303426))))

(assert (=> bs!1312266 (not (= lambda!303500 lambda!303428))))

(assert (=> bs!1312267 (not (= lambda!303500 lambda!303423))))

(assert (=> b!5647092 true))

(assert (=> b!5647092 true))

(declare-fun bs!1312269 () Bool)

(declare-fun b!5647087 () Bool)

(assert (= bs!1312269 (and b!5647087 d!1783675)))

(declare-fun lambda!303501 () Int)

(assert (=> bs!1312269 (not (= lambda!303501 lambda!303489))))

(declare-fun bs!1312270 () Bool)

(assert (= bs!1312270 (and b!5647087 b!5646415)))

(assert (=> bs!1312270 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303501 lambda!303429))))

(declare-fun bs!1312271 () Bool)

(assert (= bs!1312271 (and b!5647087 b!5646420)))

(assert (=> bs!1312271 (= lambda!303501 lambda!303424)))

(assert (=> bs!1312270 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303501 lambda!303427))))

(declare-fun bs!1312272 () Bool)

(assert (= bs!1312272 (and b!5647087 d!1783677)))

(assert (=> bs!1312272 (not (= lambda!303501 lambda!303494))))

(assert (=> bs!1312270 (not (= lambda!303501 lambda!303426))))

(assert (=> bs!1312270 (not (= lambda!303501 lambda!303428))))

(assert (=> bs!1312271 (not (= lambda!303501 lambda!303423))))

(declare-fun bs!1312273 () Bool)

(assert (= bs!1312273 (and b!5647087 b!5647092)))

(assert (=> bs!1312273 (not (= lambda!303501 lambda!303500))))

(assert (=> bs!1312272 (= lambda!303501 lambda!303495)))

(assert (=> b!5647087 true))

(assert (=> b!5647087 true))

(declare-fun b!5647082 () Bool)

(declare-fun e!3478729 () Bool)

(assert (=> b!5647082 (= e!3478729 (= s!2326 (Cons!63069 (c!992159 r!7292) Nil!63069)))))

(declare-fun b!5647083 () Bool)

(declare-fun res!2388761 () Bool)

(declare-fun e!3478730 () Bool)

(assert (=> b!5647083 (=> res!2388761 e!3478730)))

(declare-fun call!426982 () Bool)

(assert (=> b!5647083 (= res!2388761 call!426982)))

(declare-fun e!3478733 () Bool)

(assert (=> b!5647083 (= e!3478733 e!3478730)))

(declare-fun bm!426977 () Bool)

(assert (=> bm!426977 (= call!426982 (isEmpty!34917 s!2326))))

(declare-fun b!5647084 () Bool)

(declare-fun c!992353 () Bool)

(assert (=> b!5647084 (= c!992353 ((_ is ElementMatch!15631) r!7292))))

(declare-fun e!3478734 () Bool)

(assert (=> b!5647084 (= e!3478734 e!3478729)))

(declare-fun b!5647085 () Bool)

(declare-fun e!3478731 () Bool)

(declare-fun e!3478732 () Bool)

(assert (=> b!5647085 (= e!3478731 e!3478732)))

(declare-fun res!2388762 () Bool)

(assert (=> b!5647085 (= res!2388762 (matchRSpec!2734 (regOne!31775 r!7292) s!2326))))

(assert (=> b!5647085 (=> res!2388762 e!3478732)))

(declare-fun d!1783681 () Bool)

(declare-fun c!992352 () Bool)

(assert (=> d!1783681 (= c!992352 ((_ is EmptyExpr!15631) r!7292))))

(declare-fun e!3478735 () Bool)

(assert (=> d!1783681 (= (matchRSpec!2734 r!7292 s!2326) e!3478735)))

(declare-fun b!5647086 () Bool)

(declare-fun c!992351 () Bool)

(assert (=> b!5647086 (= c!992351 ((_ is Union!15631) r!7292))))

(assert (=> b!5647086 (= e!3478729 e!3478731)))

(declare-fun call!426983 () Bool)

(declare-fun c!992350 () Bool)

(declare-fun bm!426978 () Bool)

(assert (=> bm!426978 (= call!426983 (Exists!2731 (ite c!992350 lambda!303500 lambda!303501)))))

(assert (=> b!5647087 (= e!3478733 call!426983)))

(declare-fun b!5647088 () Bool)

(assert (=> b!5647088 (= e!3478731 e!3478733)))

(assert (=> b!5647088 (= c!992350 ((_ is Star!15631) r!7292))))

(declare-fun b!5647089 () Bool)

(assert (=> b!5647089 (= e!3478735 call!426982)))

(declare-fun b!5647090 () Bool)

(assert (=> b!5647090 (= e!3478735 e!3478734)))

(declare-fun res!2388763 () Bool)

(assert (=> b!5647090 (= res!2388763 (not ((_ is EmptyLang!15631) r!7292)))))

(assert (=> b!5647090 (=> (not res!2388763) (not e!3478734))))

(declare-fun b!5647091 () Bool)

(assert (=> b!5647091 (= e!3478732 (matchRSpec!2734 (regTwo!31775 r!7292) s!2326))))

(assert (=> b!5647092 (= e!3478730 call!426983)))

(assert (= (and d!1783681 c!992352) b!5647089))

(assert (= (and d!1783681 (not c!992352)) b!5647090))

(assert (= (and b!5647090 res!2388763) b!5647084))

(assert (= (and b!5647084 c!992353) b!5647082))

(assert (= (and b!5647084 (not c!992353)) b!5647086))

(assert (= (and b!5647086 c!992351) b!5647085))

(assert (= (and b!5647086 (not c!992351)) b!5647088))

(assert (= (and b!5647085 (not res!2388762)) b!5647091))

(assert (= (and b!5647088 c!992350) b!5647083))

(assert (= (and b!5647088 (not c!992350)) b!5647087))

(assert (= (and b!5647083 (not res!2388761)) b!5647092))

(assert (= (or b!5647092 b!5647087) bm!426978))

(assert (= (or b!5647089 b!5647083) bm!426977))

(declare-fun m!6614382 () Bool)

(assert (=> bm!426977 m!6614382))

(declare-fun m!6614384 () Bool)

(assert (=> b!5647085 m!6614384))

(declare-fun m!6614386 () Bool)

(assert (=> bm!426978 m!6614386))

(declare-fun m!6614388 () Bool)

(assert (=> b!5647091 m!6614388))

(assert (=> b!5646445 d!1783681))

(declare-fun b!5647121 () Bool)

(declare-fun res!2388786 () Bool)

(declare-fun e!3478750 () Bool)

(assert (=> b!5647121 (=> (not res!2388786) (not e!3478750))))

(declare-fun call!426986 () Bool)

(assert (=> b!5647121 (= res!2388786 (not call!426986))))

(declare-fun b!5647122 () Bool)

(declare-fun e!3478751 () Bool)

(assert (=> b!5647122 (= e!3478751 (nullable!5663 r!7292))))

(declare-fun b!5647123 () Bool)

(declare-fun e!3478753 () Bool)

(declare-fun e!3478755 () Bool)

(assert (=> b!5647123 (= e!3478753 e!3478755)))

(declare-fun res!2388787 () Bool)

(assert (=> b!5647123 (=> (not res!2388787) (not e!3478755))))

(declare-fun lt!2264345 () Bool)

(assert (=> b!5647123 (= res!2388787 (not lt!2264345))))

(declare-fun b!5647124 () Bool)

(declare-fun e!3478752 () Bool)

(assert (=> b!5647124 (= e!3478752 (not lt!2264345))))

(declare-fun b!5647125 () Bool)

(declare-fun res!2388784 () Bool)

(declare-fun e!3478754 () Bool)

(assert (=> b!5647125 (=> res!2388784 e!3478754)))

(assert (=> b!5647125 (= res!2388784 (not (isEmpty!34917 (tail!11101 s!2326))))))

(declare-fun b!5647127 () Bool)

(assert (=> b!5647127 (= e!3478755 e!3478754)))

(declare-fun res!2388783 () Bool)

(assert (=> b!5647127 (=> res!2388783 e!3478754)))

(assert (=> b!5647127 (= res!2388783 call!426986)))

(declare-fun b!5647128 () Bool)

(assert (=> b!5647128 (= e!3478750 (= (head!12006 s!2326) (c!992159 r!7292)))))

(declare-fun b!5647129 () Bool)

(declare-fun res!2388785 () Bool)

(assert (=> b!5647129 (=> res!2388785 e!3478753)))

(assert (=> b!5647129 (= res!2388785 (not ((_ is ElementMatch!15631) r!7292)))))

(assert (=> b!5647129 (= e!3478752 e!3478753)))

(declare-fun b!5647130 () Bool)

(declare-fun e!3478756 () Bool)

(assert (=> b!5647130 (= e!3478756 (= lt!2264345 call!426986))))

(declare-fun bm!426981 () Bool)

(assert (=> bm!426981 (= call!426986 (isEmpty!34917 s!2326))))

(declare-fun d!1783683 () Bool)

(assert (=> d!1783683 e!3478756))

(declare-fun c!992360 () Bool)

(assert (=> d!1783683 (= c!992360 ((_ is EmptyExpr!15631) r!7292))))

(assert (=> d!1783683 (= lt!2264345 e!3478751)))

(declare-fun c!992361 () Bool)

(assert (=> d!1783683 (= c!992361 (isEmpty!34917 s!2326))))

(assert (=> d!1783683 (validRegex!7367 r!7292)))

(assert (=> d!1783683 (= (matchR!7816 r!7292 s!2326) lt!2264345)))

(declare-fun b!5647126 () Bool)

(declare-fun derivativeStep!4467 (Regex!15631 C!31532) Regex!15631)

(assert (=> b!5647126 (= e!3478751 (matchR!7816 (derivativeStep!4467 r!7292 (head!12006 s!2326)) (tail!11101 s!2326)))))

(declare-fun b!5647131 () Bool)

(declare-fun res!2388780 () Bool)

(assert (=> b!5647131 (=> res!2388780 e!3478753)))

(assert (=> b!5647131 (= res!2388780 e!3478750)))

(declare-fun res!2388782 () Bool)

(assert (=> b!5647131 (=> (not res!2388782) (not e!3478750))))

(assert (=> b!5647131 (= res!2388782 lt!2264345)))

(declare-fun b!5647132 () Bool)

(declare-fun res!2388781 () Bool)

(assert (=> b!5647132 (=> (not res!2388781) (not e!3478750))))

(assert (=> b!5647132 (= res!2388781 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun b!5647133 () Bool)

(assert (=> b!5647133 (= e!3478756 e!3478752)))

(declare-fun c!992362 () Bool)

(assert (=> b!5647133 (= c!992362 ((_ is EmptyLang!15631) r!7292))))

(declare-fun b!5647134 () Bool)

(assert (=> b!5647134 (= e!3478754 (not (= (head!12006 s!2326) (c!992159 r!7292))))))

(assert (= (and d!1783683 c!992361) b!5647122))

(assert (= (and d!1783683 (not c!992361)) b!5647126))

(assert (= (and d!1783683 c!992360) b!5647130))

(assert (= (and d!1783683 (not c!992360)) b!5647133))

(assert (= (and b!5647133 c!992362) b!5647124))

(assert (= (and b!5647133 (not c!992362)) b!5647129))

(assert (= (and b!5647129 (not res!2388785)) b!5647131))

(assert (= (and b!5647131 res!2388782) b!5647121))

(assert (= (and b!5647121 res!2388786) b!5647132))

(assert (= (and b!5647132 res!2388781) b!5647128))

(assert (= (and b!5647131 (not res!2388780)) b!5647123))

(assert (= (and b!5647123 res!2388787) b!5647127))

(assert (= (and b!5647127 (not res!2388783)) b!5647125))

(assert (= (and b!5647125 (not res!2388784)) b!5647134))

(assert (= (or b!5647130 b!5647121 b!5647127) bm!426981))

(assert (=> d!1783683 m!6614382))

(assert (=> d!1783683 m!6613800))

(declare-fun m!6614390 () Bool)

(assert (=> b!5647134 m!6614390))

(assert (=> b!5647128 m!6614390))

(assert (=> bm!426981 m!6614382))

(declare-fun m!6614392 () Bool)

(assert (=> b!5647132 m!6614392))

(assert (=> b!5647132 m!6614392))

(declare-fun m!6614394 () Bool)

(assert (=> b!5647132 m!6614394))

(assert (=> b!5647125 m!6614392))

(assert (=> b!5647125 m!6614392))

(assert (=> b!5647125 m!6614394))

(assert (=> b!5647126 m!6614390))

(assert (=> b!5647126 m!6614390))

(declare-fun m!6614396 () Bool)

(assert (=> b!5647126 m!6614396))

(assert (=> b!5647126 m!6614392))

(assert (=> b!5647126 m!6614396))

(assert (=> b!5647126 m!6614392))

(declare-fun m!6614398 () Bool)

(assert (=> b!5647126 m!6614398))

(declare-fun m!6614400 () Bool)

(assert (=> b!5647122 m!6614400))

(assert (=> b!5646445 d!1783683))

(declare-fun d!1783685 () Bool)

(assert (=> d!1783685 (= (matchR!7816 r!7292 s!2326) (matchRSpec!2734 r!7292 s!2326))))

(declare-fun lt!2264348 () Unit!156056)

(declare-fun choose!42761 (Regex!15631 List!63193) Unit!156056)

(assert (=> d!1783685 (= lt!2264348 (choose!42761 r!7292 s!2326))))

(assert (=> d!1783685 (validRegex!7367 r!7292)))

(assert (=> d!1783685 (= (mainMatchTheorem!2734 r!7292 s!2326) lt!2264348)))

(declare-fun bs!1312274 () Bool)

(assert (= bs!1312274 d!1783685))

(assert (=> bs!1312274 m!6613790))

(assert (=> bs!1312274 m!6613788))

(declare-fun m!6614402 () Bool)

(assert (=> bs!1312274 m!6614402))

(assert (=> bs!1312274 m!6613800))

(assert (=> b!5646445 d!1783685))

(declare-fun d!1783687 () Bool)

(declare-fun lt!2264351 () Int)

(assert (=> d!1783687 (>= lt!2264351 0)))

(declare-fun e!3478759 () Int)

(assert (=> d!1783687 (= lt!2264351 e!3478759)))

(declare-fun c!992365 () Bool)

(assert (=> d!1783687 (= c!992365 ((_ is Cons!63070) lt!2264185))))

(assert (=> d!1783687 (= (zipperDepthTotal!240 lt!2264185) lt!2264351)))

(declare-fun b!5647139 () Bool)

(assert (=> b!5647139 (= e!3478759 (+ (contextDepthTotal!216 (h!69518 lt!2264185)) (zipperDepthTotal!240 (t!376492 lt!2264185))))))

(declare-fun b!5647140 () Bool)

(assert (=> b!5647140 (= e!3478759 0)))

(assert (= (and d!1783687 c!992365) b!5647139))

(assert (= (and d!1783687 (not c!992365)) b!5647140))

(declare-fun m!6614404 () Bool)

(assert (=> b!5647139 m!6614404))

(declare-fun m!6614406 () Bool)

(assert (=> b!5647139 m!6614406))

(assert (=> b!5646422 d!1783687))

(declare-fun d!1783689 () Bool)

(declare-fun lt!2264352 () Int)

(assert (=> d!1783689 (>= lt!2264352 0)))

(declare-fun e!3478760 () Int)

(assert (=> d!1783689 (= lt!2264352 e!3478760)))

(declare-fun c!992366 () Bool)

(assert (=> d!1783689 (= c!992366 ((_ is Cons!63070) zl!343))))

(assert (=> d!1783689 (= (zipperDepthTotal!240 zl!343) lt!2264352)))

(declare-fun b!5647141 () Bool)

(assert (=> b!5647141 (= e!3478760 (+ (contextDepthTotal!216 (h!69518 zl!343)) (zipperDepthTotal!240 (t!376492 zl!343))))))

(declare-fun b!5647142 () Bool)

(assert (=> b!5647142 (= e!3478760 0)))

(assert (= (and d!1783689 c!992366) b!5647141))

(assert (= (and d!1783689 (not c!992366)) b!5647142))

(assert (=> b!5647141 m!6613770))

(declare-fun m!6614408 () Bool)

(assert (=> b!5647141 m!6614408))

(assert (=> b!5646422 d!1783689))

(declare-fun d!1783691 () Bool)

(declare-fun c!992368 () Bool)

(declare-fun e!3478763 () Bool)

(assert (=> d!1783691 (= c!992368 e!3478763)))

(declare-fun res!2388788 () Bool)

(assert (=> d!1783691 (=> (not res!2388788) (not e!3478763))))

(assert (=> d!1783691 (= res!2388788 ((_ is Cons!63068) (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun e!3478762 () (InoxSet Context!10030))

(assert (=> d!1783691 (= (derivationStepZipperUp!899 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))) (h!69517 s!2326)) e!3478762)))

(declare-fun b!5647143 () Bool)

(declare-fun e!3478761 () (InoxSet Context!10030))

(declare-fun call!426987 () (InoxSet Context!10030))

(assert (=> b!5647143 (= e!3478761 call!426987)))

(declare-fun b!5647144 () Bool)

(assert (=> b!5647144 (= e!3478762 e!3478761)))

(declare-fun c!992367 () Bool)

(assert (=> b!5647144 (= c!992367 ((_ is Cons!63068) (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun bm!426982 () Bool)

(assert (=> bm!426982 (= call!426987 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326)))))

(declare-fun b!5647145 () Bool)

(assert (=> b!5647145 (= e!3478761 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647146 () Bool)

(assert (=> b!5647146 (= e!3478762 ((_ map or) call!426987 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326))))))

(declare-fun b!5647147 () Bool)

(assert (=> b!5647147 (= e!3478763 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(assert (= (and d!1783691 res!2388788) b!5647147))

(assert (= (and d!1783691 c!992368) b!5647146))

(assert (= (and d!1783691 (not c!992368)) b!5647144))

(assert (= (and b!5647144 c!992367) b!5647143))

(assert (= (and b!5647144 (not c!992367)) b!5647145))

(assert (= (or b!5647146 b!5647143) bm!426982))

(declare-fun m!6614410 () Bool)

(assert (=> bm!426982 m!6614410))

(declare-fun m!6614412 () Bool)

(assert (=> b!5647146 m!6614412))

(declare-fun m!6614414 () Bool)

(assert (=> b!5647147 m!6614414))

(assert (=> b!5646443 d!1783691))

(declare-fun d!1783693 () Bool)

(assert (=> d!1783693 (= (flatMap!1244 z!1189 lambda!303425) (dynLambda!24674 lambda!303425 (h!69518 zl!343)))))

(declare-fun lt!2264353 () Unit!156056)

(assert (=> d!1783693 (= lt!2264353 (choose!42757 z!1189 (h!69518 zl!343) lambda!303425))))

(assert (=> d!1783693 (= z!1189 (store ((as const (Array Context!10030 Bool)) false) (h!69518 zl!343) true))))

(assert (=> d!1783693 (= (lemmaFlatMapOnSingletonSet!776 z!1189 (h!69518 zl!343) lambda!303425) lt!2264353)))

(declare-fun b_lambda!213641 () Bool)

(assert (=> (not b_lambda!213641) (not d!1783693)))

(declare-fun bs!1312275 () Bool)

(assert (= bs!1312275 d!1783693))

(assert (=> bs!1312275 m!6613776))

(declare-fun m!6614416 () Bool)

(assert (=> bs!1312275 m!6614416))

(declare-fun m!6614418 () Bool)

(assert (=> bs!1312275 m!6614418))

(declare-fun m!6614420 () Bool)

(assert (=> bs!1312275 m!6614420))

(assert (=> b!5646443 d!1783693))

(declare-fun d!1783695 () Bool)

(assert (=> d!1783695 (= (flatMap!1244 z!1189 lambda!303425) (choose!42756 z!1189 lambda!303425))))

(declare-fun bs!1312276 () Bool)

(assert (= bs!1312276 d!1783695))

(declare-fun m!6614422 () Bool)

(assert (=> bs!1312276 m!6614422))

(assert (=> b!5646443 d!1783695))

(declare-fun d!1783697 () Bool)

(declare-fun c!992370 () Bool)

(declare-fun e!3478766 () Bool)

(assert (=> d!1783697 (= c!992370 e!3478766)))

(declare-fun res!2388789 () Bool)

(assert (=> d!1783697 (=> (not res!2388789) (not e!3478766))))

(assert (=> d!1783697 (= res!2388789 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(declare-fun e!3478765 () (InoxSet Context!10030))

(assert (=> d!1783697 (= (derivationStepZipperUp!899 (h!69518 zl!343) (h!69517 s!2326)) e!3478765)))

(declare-fun b!5647148 () Bool)

(declare-fun e!3478764 () (InoxSet Context!10030))

(declare-fun call!426988 () (InoxSet Context!10030))

(assert (=> b!5647148 (= e!3478764 call!426988)))

(declare-fun b!5647149 () Bool)

(assert (=> b!5647149 (= e!3478765 e!3478764)))

(declare-fun c!992369 () Bool)

(assert (=> b!5647149 (= c!992369 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(declare-fun bm!426983 () Bool)

(assert (=> bm!426983 (= call!426988 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (h!69518 zl!343))) (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326)))))

(declare-fun b!5647150 () Bool)

(assert (=> b!5647150 (= e!3478764 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647151 () Bool)

(assert (=> b!5647151 (= e!3478765 ((_ map or) call!426988 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326))))))

(declare-fun b!5647152 () Bool)

(assert (=> b!5647152 (= e!3478766 (nullable!5663 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (= (and d!1783697 res!2388789) b!5647152))

(assert (= (and d!1783697 c!992370) b!5647151))

(assert (= (and d!1783697 (not c!992370)) b!5647149))

(assert (= (and b!5647149 c!992369) b!5647148))

(assert (= (and b!5647149 (not c!992369)) b!5647150))

(assert (= (or b!5647151 b!5647148) bm!426983))

(declare-fun m!6614424 () Bool)

(assert (=> bm!426983 m!6614424))

(declare-fun m!6614426 () Bool)

(assert (=> b!5647151 m!6614426))

(assert (=> b!5647152 m!6613778))

(assert (=> b!5646443 d!1783697))

(declare-fun d!1783699 () Bool)

(declare-fun c!992372 () Bool)

(declare-fun e!3478769 () Bool)

(assert (=> d!1783699 (= c!992372 e!3478769)))

(declare-fun res!2388790 () Bool)

(assert (=> d!1783699 (=> (not res!2388790) (not e!3478769))))

(assert (=> d!1783699 (= res!2388790 ((_ is Cons!63068) (exprs!5515 lt!2264212)))))

(declare-fun e!3478768 () (InoxSet Context!10030))

(assert (=> d!1783699 (= (derivationStepZipperUp!899 lt!2264212 (h!69517 s!2326)) e!3478768)))

(declare-fun b!5647153 () Bool)

(declare-fun e!3478767 () (InoxSet Context!10030))

(declare-fun call!426989 () (InoxSet Context!10030))

(assert (=> b!5647153 (= e!3478767 call!426989)))

(declare-fun b!5647154 () Bool)

(assert (=> b!5647154 (= e!3478768 e!3478767)))

(declare-fun c!992371 () Bool)

(assert (=> b!5647154 (= c!992371 ((_ is Cons!63068) (exprs!5515 lt!2264212)))))

(declare-fun bm!426984 () Bool)

(assert (=> bm!426984 (= call!426989 (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264212)) (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (h!69517 s!2326)))))

(declare-fun b!5647155 () Bool)

(assert (=> b!5647155 (= e!3478767 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647156 () Bool)

(assert (=> b!5647156 (= e!3478768 ((_ map or) call!426989 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (h!69517 s!2326))))))

(declare-fun b!5647157 () Bool)

(assert (=> b!5647157 (= e!3478769 (nullable!5663 (h!69516 (exprs!5515 lt!2264212))))))

(assert (= (and d!1783699 res!2388790) b!5647157))

(assert (= (and d!1783699 c!992372) b!5647156))

(assert (= (and d!1783699 (not c!992372)) b!5647154))

(assert (= (and b!5647154 c!992371) b!5647153))

(assert (= (and b!5647154 (not c!992371)) b!5647155))

(assert (= (or b!5647156 b!5647153) bm!426984))

(declare-fun m!6614428 () Bool)

(assert (=> bm!426984 m!6614428))

(declare-fun m!6614430 () Bool)

(assert (=> b!5647156 m!6614430))

(declare-fun m!6614432 () Bool)

(assert (=> b!5647157 m!6614432))

(assert (=> b!5646443 d!1783699))

(declare-fun d!1783701 () Bool)

(declare-fun nullableFct!1760 (Regex!15631) Bool)

(assert (=> d!1783701 (= (nullable!5663 (h!69516 (exprs!5515 (h!69518 zl!343)))) (nullableFct!1760 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun bs!1312277 () Bool)

(assert (= bs!1312277 d!1783701))

(declare-fun m!6614434 () Bool)

(assert (=> bs!1312277 m!6614434))

(assert (=> b!5646443 d!1783701))

(declare-fun call!427005 () List!63192)

(declare-fun c!992387 () Bool)

(declare-fun bm!426997 () Bool)

(declare-fun c!992384 () Bool)

(declare-fun $colon$colon!1681 (List!63192 Regex!15631) List!63192)

(assert (=> bm!426997 (= call!427005 ($colon$colon!1681 (exprs!5515 lt!2264212) (ite (or c!992387 c!992384) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69516 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun bm!426998 () Bool)

(declare-fun call!427006 () List!63192)

(assert (=> bm!426998 (= call!427006 call!427005)))

(declare-fun b!5647180 () Bool)

(declare-fun e!3478787 () (InoxSet Context!10030))

(assert (=> b!5647180 (= e!3478787 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647181 () Bool)

(declare-fun e!3478783 () (InoxSet Context!10030))

(declare-fun call!427004 () (InoxSet Context!10030))

(assert (=> b!5647181 (= e!3478783 call!427004)))

(declare-fun d!1783703 () Bool)

(declare-fun c!992385 () Bool)

(assert (=> d!1783703 (= c!992385 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))) (= (c!992159 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326))))))

(declare-fun e!3478784 () (InoxSet Context!10030))

(assert (=> d!1783703 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 (h!69518 zl!343))) lt!2264212 (h!69517 s!2326)) e!3478784)))

(declare-fun c!992386 () Bool)

(declare-fun call!427002 () (InoxSet Context!10030))

(declare-fun bm!426999 () Bool)

(assert (=> bm!426999 (= call!427002 (derivationStepZipperDown!973 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))) (ite c!992386 lt!2264212 (Context!10031 call!427005)) (h!69517 s!2326)))))

(declare-fun b!5647182 () Bool)

(declare-fun e!3478785 () (InoxSet Context!10030))

(assert (=> b!5647182 (= e!3478784 e!3478785)))

(assert (=> b!5647182 (= c!992386 ((_ is Union!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647183 () Bool)

(declare-fun call!427003 () (InoxSet Context!10030))

(assert (=> b!5647183 (= e!3478785 ((_ map or) call!427002 call!427003))))

(declare-fun b!5647184 () Bool)

(declare-fun e!3478782 () (InoxSet Context!10030))

(declare-fun call!427007 () (InoxSet Context!10030))

(assert (=> b!5647184 (= e!3478782 ((_ map or) call!427002 call!427007))))

(declare-fun b!5647185 () Bool)

(assert (=> b!5647185 (= e!3478784 (store ((as const (Array Context!10030 Bool)) false) lt!2264212 true))))

(declare-fun b!5647186 () Bool)

(declare-fun e!3478786 () Bool)

(assert (=> b!5647186 (= e!3478786 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5647187 () Bool)

(declare-fun c!992383 () Bool)

(assert (=> b!5647187 (= c!992383 ((_ is Star!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5647187 (= e!3478783 e!3478787)))

(declare-fun b!5647188 () Bool)

(assert (=> b!5647188 (= e!3478787 call!427004)))

(declare-fun b!5647189 () Bool)

(assert (=> b!5647189 (= e!3478782 e!3478783)))

(assert (=> b!5647189 (= c!992384 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun bm!427000 () Bool)

(assert (=> bm!427000 (= call!427004 call!427007)))

(declare-fun bm!427001 () Bool)

(assert (=> bm!427001 (= call!427007 call!427003)))

(declare-fun b!5647190 () Bool)

(assert (=> b!5647190 (= c!992387 e!3478786)))

(declare-fun res!2388793 () Bool)

(assert (=> b!5647190 (=> (not res!2388793) (not e!3478786))))

(assert (=> b!5647190 (= res!2388793 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5647190 (= e!3478785 e!3478782)))

(declare-fun bm!427002 () Bool)

(assert (=> bm!427002 (= call!427003 (derivationStepZipperDown!973 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))) (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006)) (h!69517 s!2326)))))

(assert (= (and d!1783703 c!992385) b!5647185))

(assert (= (and d!1783703 (not c!992385)) b!5647182))

(assert (= (and b!5647182 c!992386) b!5647183))

(assert (= (and b!5647182 (not c!992386)) b!5647190))

(assert (= (and b!5647190 res!2388793) b!5647186))

(assert (= (and b!5647190 c!992387) b!5647184))

(assert (= (and b!5647190 (not c!992387)) b!5647189))

(assert (= (and b!5647189 c!992384) b!5647181))

(assert (= (and b!5647189 (not c!992384)) b!5647187))

(assert (= (and b!5647187 c!992383) b!5647188))

(assert (= (and b!5647187 (not c!992383)) b!5647180))

(assert (= (or b!5647181 b!5647188) bm!426998))

(assert (= (or b!5647181 b!5647188) bm!427000))

(assert (= (or b!5647184 bm!426998) bm!426997))

(assert (= (or b!5647184 bm!427000) bm!427001))

(assert (= (or b!5647183 bm!427001) bm!427002))

(assert (= (or b!5647183 b!5647184) bm!426999))

(declare-fun m!6614436 () Bool)

(assert (=> bm!426997 m!6614436))

(declare-fun m!6614438 () Bool)

(assert (=> b!5647186 m!6614438))

(declare-fun m!6614440 () Bool)

(assert (=> bm!426999 m!6614440))

(declare-fun m!6614442 () Bool)

(assert (=> bm!427002 m!6614442))

(declare-fun m!6614444 () Bool)

(assert (=> b!5647185 m!6614444))

(assert (=> b!5646443 d!1783703))

(declare-fun d!1783705 () Bool)

(declare-fun lt!2264356 () Regex!15631)

(assert (=> d!1783705 (validRegex!7367 lt!2264356)))

(assert (=> d!1783705 (= lt!2264356 (generalisedUnion!1494 (unfocusZipperList!1059 zl!343)))))

(assert (=> d!1783705 (= (unfocusZipper!1373 zl!343) lt!2264356)))

(declare-fun bs!1312278 () Bool)

(assert (= bs!1312278 d!1783705))

(declare-fun m!6614446 () Bool)

(assert (=> bs!1312278 m!6614446))

(assert (=> bs!1312278 m!6613664))

(assert (=> bs!1312278 m!6613664))

(assert (=> bs!1312278 m!6613666))

(assert (=> b!5646417 d!1783705))

(declare-fun d!1783707 () Bool)

(declare-fun c!992388 () Bool)

(assert (=> d!1783707 (= c!992388 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478788 () Bool)

(assert (=> d!1783707 (= (matchZipper!1769 lt!2264228 (t!376491 s!2326)) e!3478788)))

(declare-fun b!5647191 () Bool)

(assert (=> b!5647191 (= e!3478788 (nullableZipper!1613 lt!2264228))))

(declare-fun b!5647192 () Bool)

(assert (=> b!5647192 (= e!3478788 (matchZipper!1769 (derivationStepZipper!1718 lt!2264228 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783707 c!992388) b!5647191))

(assert (= (and d!1783707 (not c!992388)) b!5647192))

(assert (=> d!1783707 m!6614302))

(declare-fun m!6614448 () Bool)

(assert (=> b!5647191 m!6614448))

(assert (=> b!5647192 m!6614306))

(assert (=> b!5647192 m!6614306))

(declare-fun m!6614450 () Bool)

(assert (=> b!5647192 m!6614450))

(assert (=> b!5647192 m!6614310))

(assert (=> b!5647192 m!6614450))

(assert (=> b!5647192 m!6614310))

(declare-fun m!6614452 () Bool)

(assert (=> b!5647192 m!6614452))

(assert (=> b!5646437 d!1783707))

(declare-fun d!1783709 () Bool)

(declare-fun lt!2264359 () Int)

(assert (=> d!1783709 (>= lt!2264359 0)))

(declare-fun e!3478791 () Int)

(assert (=> d!1783709 (= lt!2264359 e!3478791)))

(declare-fun c!992392 () Bool)

(assert (=> d!1783709 (= c!992392 ((_ is Cons!63068) (exprs!5515 lt!2264194)))))

(assert (=> d!1783709 (= (contextDepthTotal!216 lt!2264194) lt!2264359)))

(declare-fun b!5647197 () Bool)

(declare-fun regexDepthTotal!95 (Regex!15631) Int)

(assert (=> b!5647197 (= e!3478791 (+ (regexDepthTotal!95 (h!69516 (exprs!5515 lt!2264194))) (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 lt!2264194))))))))

(declare-fun b!5647198 () Bool)

(assert (=> b!5647198 (= e!3478791 1)))

(assert (= (and d!1783709 c!992392) b!5647197))

(assert (= (and d!1783709 (not c!992392)) b!5647198))

(declare-fun m!6614454 () Bool)

(assert (=> b!5647197 m!6614454))

(declare-fun m!6614456 () Bool)

(assert (=> b!5647197 m!6614456))

(assert (=> b!5646416 d!1783709))

(declare-fun d!1783711 () Bool)

(declare-fun lt!2264360 () Int)

(assert (=> d!1783711 (>= lt!2264360 0)))

(declare-fun e!3478792 () Int)

(assert (=> d!1783711 (= lt!2264360 e!3478792)))

(declare-fun c!992393 () Bool)

(assert (=> d!1783711 (= c!992393 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> d!1783711 (= (contextDepthTotal!216 (h!69518 zl!343)) lt!2264360)))

(declare-fun b!5647199 () Bool)

(assert (=> b!5647199 (= e!3478792 (+ (regexDepthTotal!95 (h!69516 (exprs!5515 (h!69518 zl!343)))) (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5647200 () Bool)

(assert (=> b!5647200 (= e!3478792 1)))

(assert (= (and d!1783711 c!992393) b!5647199))

(assert (= (and d!1783711 (not c!992393)) b!5647200))

(declare-fun m!6614458 () Bool)

(assert (=> b!5647199 m!6614458))

(declare-fun m!6614460 () Bool)

(assert (=> b!5647199 m!6614460))

(assert (=> b!5646416 d!1783711))

(declare-fun d!1783713 () Bool)

(declare-fun lambda!303504 () Int)

(declare-fun forall!14788 (List!63192 Int) Bool)

(assert (=> d!1783713 (= (inv!82324 (h!69518 zl!343)) (forall!14788 (exprs!5515 (h!69518 zl!343)) lambda!303504))))

(declare-fun bs!1312279 () Bool)

(assert (= bs!1312279 d!1783713))

(declare-fun m!6614462 () Bool)

(assert (=> bs!1312279 m!6614462))

(assert (=> b!5646435 d!1783713))

(declare-fun d!1783715 () Bool)

(declare-fun c!992394 () Bool)

(assert (=> d!1783715 (= c!992394 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478793 () Bool)

(assert (=> d!1783715 (= (matchZipper!1769 lt!2264224 (t!376491 s!2326)) e!3478793)))

(declare-fun b!5647201 () Bool)

(assert (=> b!5647201 (= e!3478793 (nullableZipper!1613 lt!2264224))))

(declare-fun b!5647202 () Bool)

(assert (=> b!5647202 (= e!3478793 (matchZipper!1769 (derivationStepZipper!1718 lt!2264224 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783715 c!992394) b!5647201))

(assert (= (and d!1783715 (not c!992394)) b!5647202))

(assert (=> d!1783715 m!6614302))

(declare-fun m!6614464 () Bool)

(assert (=> b!5647201 m!6614464))

(assert (=> b!5647202 m!6614306))

(assert (=> b!5647202 m!6614306))

(declare-fun m!6614466 () Bool)

(assert (=> b!5647202 m!6614466))

(assert (=> b!5647202 m!6614310))

(assert (=> b!5647202 m!6614466))

(assert (=> b!5647202 m!6614310))

(declare-fun m!6614468 () Bool)

(assert (=> b!5647202 m!6614468))

(assert (=> b!5646436 d!1783715))

(declare-fun d!1783717 () Bool)

(declare-fun c!992395 () Bool)

(assert (=> d!1783717 (= c!992395 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478794 () Bool)

(assert (=> d!1783717 (= (matchZipper!1769 lt!2264186 (t!376491 s!2326)) e!3478794)))

(declare-fun b!5647203 () Bool)

(assert (=> b!5647203 (= e!3478794 (nullableZipper!1613 lt!2264186))))

(declare-fun b!5647204 () Bool)

(assert (=> b!5647204 (= e!3478794 (matchZipper!1769 (derivationStepZipper!1718 lt!2264186 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783717 c!992395) b!5647203))

(assert (= (and d!1783717 (not c!992395)) b!5647204))

(assert (=> d!1783717 m!6614302))

(declare-fun m!6614470 () Bool)

(assert (=> b!5647203 m!6614470))

(assert (=> b!5647204 m!6614306))

(assert (=> b!5647204 m!6614306))

(declare-fun m!6614472 () Bool)

(assert (=> b!5647204 m!6614472))

(assert (=> b!5647204 m!6614310))

(assert (=> b!5647204 m!6614472))

(assert (=> b!5647204 m!6614310))

(declare-fun m!6614474 () Bool)

(assert (=> b!5647204 m!6614474))

(assert (=> b!5646436 d!1783717))

(declare-fun d!1783719 () Bool)

(declare-fun c!992396 () Bool)

(assert (=> d!1783719 (= c!992396 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478795 () Bool)

(assert (=> d!1783719 (= (matchZipper!1769 lt!2264227 (t!376491 s!2326)) e!3478795)))

(declare-fun b!5647205 () Bool)

(assert (=> b!5647205 (= e!3478795 (nullableZipper!1613 lt!2264227))))

(declare-fun b!5647206 () Bool)

(assert (=> b!5647206 (= e!3478795 (matchZipper!1769 (derivationStepZipper!1718 lt!2264227 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783719 c!992396) b!5647205))

(assert (= (and d!1783719 (not c!992396)) b!5647206))

(assert (=> d!1783719 m!6614302))

(declare-fun m!6614476 () Bool)

(assert (=> b!5647205 m!6614476))

(assert (=> b!5647206 m!6614306))

(assert (=> b!5647206 m!6614306))

(declare-fun m!6614478 () Bool)

(assert (=> b!5647206 m!6614478))

(assert (=> b!5647206 m!6614310))

(assert (=> b!5647206 m!6614478))

(assert (=> b!5647206 m!6614310))

(declare-fun m!6614480 () Bool)

(assert (=> b!5647206 m!6614480))

(assert (=> b!5646436 d!1783719))

(declare-fun d!1783721 () Bool)

(declare-fun e!3478796 () Bool)

(assert (=> d!1783721 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264223) (t!376491 s!2326)) e!3478796)))

(declare-fun res!2388794 () Bool)

(assert (=> d!1783721 (=> res!2388794 e!3478796)))

(assert (=> d!1783721 (= res!2388794 (matchZipper!1769 lt!2264227 (t!376491 s!2326)))))

(declare-fun lt!2264361 () Unit!156056)

(assert (=> d!1783721 (= lt!2264361 (choose!42755 lt!2264227 lt!2264223 (t!376491 s!2326)))))

(assert (=> d!1783721 (= (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264227 lt!2264223 (t!376491 s!2326)) lt!2264361)))

(declare-fun b!5647207 () Bool)

(assert (=> b!5647207 (= e!3478796 (matchZipper!1769 lt!2264223 (t!376491 s!2326)))))

(assert (= (and d!1783721 (not res!2388794)) b!5647207))

(declare-fun m!6614482 () Bool)

(assert (=> d!1783721 m!6614482))

(assert (=> d!1783721 m!6613640))

(declare-fun m!6614484 () Bool)

(assert (=> d!1783721 m!6614484))

(assert (=> b!5647207 m!6613668))

(assert (=> b!5646436 d!1783721))

(declare-fun d!1783723 () Bool)

(assert (=> d!1783723 (= (isEmpty!34914 (t!376492 zl!343)) ((_ is Nil!63070) (t!376492 zl!343)))))

(assert (=> b!5646439 d!1783723))

(declare-fun d!1783725 () Bool)

(declare-fun c!992397 () Bool)

(assert (=> d!1783725 (= c!992397 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478797 () Bool)

(assert (=> d!1783725 (= (matchZipper!1769 lt!2264207 (t!376491 s!2326)) e!3478797)))

(declare-fun b!5647208 () Bool)

(assert (=> b!5647208 (= e!3478797 (nullableZipper!1613 lt!2264207))))

(declare-fun b!5647209 () Bool)

(assert (=> b!5647209 (= e!3478797 (matchZipper!1769 (derivationStepZipper!1718 lt!2264207 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783725 c!992397) b!5647208))

(assert (= (and d!1783725 (not c!992397)) b!5647209))

(assert (=> d!1783725 m!6614302))

(declare-fun m!6614486 () Bool)

(assert (=> b!5647208 m!6614486))

(assert (=> b!5647209 m!6614306))

(assert (=> b!5647209 m!6614306))

(declare-fun m!6614488 () Bool)

(assert (=> b!5647209 m!6614488))

(assert (=> b!5647209 m!6614310))

(assert (=> b!5647209 m!6614488))

(assert (=> b!5647209 m!6614310))

(declare-fun m!6614490 () Bool)

(assert (=> b!5647209 m!6614490))

(assert (=> b!5646438 d!1783725))

(declare-fun bs!1312280 () Bool)

(declare-fun d!1783727 () Bool)

(assert (= bs!1312280 (and d!1783727 d!1783713)))

(declare-fun lambda!303505 () Int)

(assert (=> bs!1312280 (= lambda!303505 lambda!303504)))

(assert (=> d!1783727 (= (inv!82324 setElem!37712) (forall!14788 (exprs!5515 setElem!37712) lambda!303505))))

(declare-fun bs!1312281 () Bool)

(assert (= bs!1312281 d!1783727))

(declare-fun m!6614492 () Bool)

(assert (=> bs!1312281 m!6614492))

(assert (=> setNonEmpty!37712 d!1783727))

(declare-fun bm!427003 () Bool)

(declare-fun c!992399 () Bool)

(declare-fun c!992402 () Bool)

(declare-fun call!427011 () List!63192)

(assert (=> bm!427003 (= call!427011 ($colon$colon!1681 (exprs!5515 lt!2264212) (ite (or c!992402 c!992399) (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun bm!427004 () Bool)

(declare-fun call!427012 () List!63192)

(assert (=> bm!427004 (= call!427012 call!427011)))

(declare-fun b!5647210 () Bool)

(declare-fun e!3478803 () (InoxSet Context!10030))

(assert (=> b!5647210 (= e!3478803 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647211 () Bool)

(declare-fun e!3478799 () (InoxSet Context!10030))

(declare-fun call!427010 () (InoxSet Context!10030))

(assert (=> b!5647211 (= e!3478799 call!427010)))

(declare-fun d!1783729 () Bool)

(declare-fun c!992400 () Bool)

(assert (=> d!1783729 (= c!992400 (and ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31774 r!7292))) (= (c!992159 (regTwo!31774 (regOne!31774 r!7292))) (h!69517 s!2326))))))

(declare-fun e!3478800 () (InoxSet Context!10030))

(assert (=> d!1783729 (= (derivationStepZipperDown!973 (regTwo!31774 (regOne!31774 r!7292)) lt!2264212 (h!69517 s!2326)) e!3478800)))

(declare-fun call!427008 () (InoxSet Context!10030))

(declare-fun bm!427005 () Bool)

(declare-fun c!992401 () Bool)

(assert (=> bm!427005 (= call!427008 (derivationStepZipperDown!973 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))) (ite c!992401 lt!2264212 (Context!10031 call!427011)) (h!69517 s!2326)))))

(declare-fun b!5647212 () Bool)

(declare-fun e!3478801 () (InoxSet Context!10030))

(assert (=> b!5647212 (= e!3478800 e!3478801)))

(assert (=> b!5647212 (= c!992401 ((_ is Union!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5647213 () Bool)

(declare-fun call!427009 () (InoxSet Context!10030))

(assert (=> b!5647213 (= e!3478801 ((_ map or) call!427008 call!427009))))

(declare-fun b!5647214 () Bool)

(declare-fun e!3478798 () (InoxSet Context!10030))

(declare-fun call!427013 () (InoxSet Context!10030))

(assert (=> b!5647214 (= e!3478798 ((_ map or) call!427008 call!427013))))

(declare-fun b!5647215 () Bool)

(assert (=> b!5647215 (= e!3478800 (store ((as const (Array Context!10030 Bool)) false) lt!2264212 true))))

(declare-fun b!5647216 () Bool)

(declare-fun e!3478802 () Bool)

(assert (=> b!5647216 (= e!3478802 (nullable!5663 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5647217 () Bool)

(declare-fun c!992398 () Bool)

(assert (=> b!5647217 (= c!992398 ((_ is Star!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(assert (=> b!5647217 (= e!3478799 e!3478803)))

(declare-fun b!5647218 () Bool)

(assert (=> b!5647218 (= e!3478803 call!427010)))

(declare-fun b!5647219 () Bool)

(assert (=> b!5647219 (= e!3478798 e!3478799)))

(assert (=> b!5647219 (= c!992399 ((_ is Concat!24476) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun bm!427006 () Bool)

(assert (=> bm!427006 (= call!427010 call!427013)))

(declare-fun bm!427007 () Bool)

(assert (=> bm!427007 (= call!427013 call!427009)))

(declare-fun b!5647220 () Bool)

(assert (=> b!5647220 (= c!992402 e!3478802)))

(declare-fun res!2388795 () Bool)

(assert (=> b!5647220 (=> (not res!2388795) (not e!3478802))))

(assert (=> b!5647220 (= res!2388795 ((_ is Concat!24476) (regTwo!31774 (regOne!31774 r!7292))))))

(assert (=> b!5647220 (= e!3478801 e!3478798)))

(declare-fun bm!427008 () Bool)

(assert (=> bm!427008 (= call!427009 (derivationStepZipperDown!973 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))) (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012)) (h!69517 s!2326)))))

(assert (= (and d!1783729 c!992400) b!5647215))

(assert (= (and d!1783729 (not c!992400)) b!5647212))

(assert (= (and b!5647212 c!992401) b!5647213))

(assert (= (and b!5647212 (not c!992401)) b!5647220))

(assert (= (and b!5647220 res!2388795) b!5647216))

(assert (= (and b!5647220 c!992402) b!5647214))

(assert (= (and b!5647220 (not c!992402)) b!5647219))

(assert (= (and b!5647219 c!992399) b!5647211))

(assert (= (and b!5647219 (not c!992399)) b!5647217))

(assert (= (and b!5647217 c!992398) b!5647218))

(assert (= (and b!5647217 (not c!992398)) b!5647210))

(assert (= (or b!5647211 b!5647218) bm!427004))

(assert (= (or b!5647211 b!5647218) bm!427006))

(assert (= (or b!5647214 bm!427004) bm!427003))

(assert (= (or b!5647214 bm!427006) bm!427007))

(assert (= (or b!5647213 bm!427007) bm!427008))

(assert (= (or b!5647213 b!5647214) bm!427005))

(declare-fun m!6614494 () Bool)

(assert (=> bm!427003 m!6614494))

(declare-fun m!6614496 () Bool)

(assert (=> b!5647216 m!6614496))

(declare-fun m!6614498 () Bool)

(assert (=> bm!427005 m!6614498))

(declare-fun m!6614500 () Bool)

(assert (=> bm!427008 m!6614500))

(assert (=> b!5647215 m!6614444))

(assert (=> b!5646412 d!1783729))

(declare-fun call!427017 () List!63192)

(declare-fun bm!427009 () Bool)

(declare-fun c!992404 () Bool)

(declare-fun c!992407 () Bool)

(assert (=> bm!427009 (= call!427017 ($colon$colon!1681 (exprs!5515 lt!2264221) (ite (or c!992407 c!992404) (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun bm!427010 () Bool)

(declare-fun call!427018 () List!63192)

(assert (=> bm!427010 (= call!427018 call!427017)))

(declare-fun b!5647221 () Bool)

(declare-fun e!3478809 () (InoxSet Context!10030))

(assert (=> b!5647221 (= e!3478809 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647222 () Bool)

(declare-fun e!3478805 () (InoxSet Context!10030))

(declare-fun call!427016 () (InoxSet Context!10030))

(assert (=> b!5647222 (= e!3478805 call!427016)))

(declare-fun d!1783731 () Bool)

(declare-fun c!992405 () Bool)

(assert (=> d!1783731 (= c!992405 (and ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292))) (= (c!992159 (regOne!31774 (regOne!31774 r!7292))) (h!69517 s!2326))))))

(declare-fun e!3478806 () (InoxSet Context!10030))

(assert (=> d!1783731 (= (derivationStepZipperDown!973 (regOne!31774 (regOne!31774 r!7292)) lt!2264221 (h!69517 s!2326)) e!3478806)))

(declare-fun call!427014 () (InoxSet Context!10030))

(declare-fun c!992406 () Bool)

(declare-fun bm!427011 () Bool)

(assert (=> bm!427011 (= call!427014 (derivationStepZipperDown!973 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))) (ite c!992406 lt!2264221 (Context!10031 call!427017)) (h!69517 s!2326)))))

(declare-fun b!5647223 () Bool)

(declare-fun e!3478807 () (InoxSet Context!10030))

(assert (=> b!5647223 (= e!3478806 e!3478807)))

(assert (=> b!5647223 (= c!992406 ((_ is Union!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5647224 () Bool)

(declare-fun call!427015 () (InoxSet Context!10030))

(assert (=> b!5647224 (= e!3478807 ((_ map or) call!427014 call!427015))))

(declare-fun b!5647225 () Bool)

(declare-fun e!3478804 () (InoxSet Context!10030))

(declare-fun call!427019 () (InoxSet Context!10030))

(assert (=> b!5647225 (= e!3478804 ((_ map or) call!427014 call!427019))))

(declare-fun b!5647226 () Bool)

(assert (=> b!5647226 (= e!3478806 (store ((as const (Array Context!10030 Bool)) false) lt!2264221 true))))

(declare-fun b!5647227 () Bool)

(declare-fun e!3478808 () Bool)

(assert (=> b!5647227 (= e!3478808 (nullable!5663 (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5647228 () Bool)

(declare-fun c!992403 () Bool)

(assert (=> b!5647228 (= c!992403 ((_ is Star!15631) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> b!5647228 (= e!3478805 e!3478809)))

(declare-fun b!5647229 () Bool)

(assert (=> b!5647229 (= e!3478809 call!427016)))

(declare-fun b!5647230 () Bool)

(assert (=> b!5647230 (= e!3478804 e!3478805)))

(assert (=> b!5647230 (= c!992404 ((_ is Concat!24476) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun bm!427012 () Bool)

(assert (=> bm!427012 (= call!427016 call!427019)))

(declare-fun bm!427013 () Bool)

(assert (=> bm!427013 (= call!427019 call!427015)))

(declare-fun b!5647231 () Bool)

(assert (=> b!5647231 (= c!992407 e!3478808)))

(declare-fun res!2388796 () Bool)

(assert (=> b!5647231 (=> (not res!2388796) (not e!3478808))))

(assert (=> b!5647231 (= res!2388796 ((_ is Concat!24476) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> b!5647231 (= e!3478807 e!3478804)))

(declare-fun bm!427014 () Bool)

(assert (=> bm!427014 (= call!427015 (derivationStepZipperDown!973 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))) (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018)) (h!69517 s!2326)))))

(assert (= (and d!1783731 c!992405) b!5647226))

(assert (= (and d!1783731 (not c!992405)) b!5647223))

(assert (= (and b!5647223 c!992406) b!5647224))

(assert (= (and b!5647223 (not c!992406)) b!5647231))

(assert (= (and b!5647231 res!2388796) b!5647227))

(assert (= (and b!5647231 c!992407) b!5647225))

(assert (= (and b!5647231 (not c!992407)) b!5647230))

(assert (= (and b!5647230 c!992404) b!5647222))

(assert (= (and b!5647230 (not c!992404)) b!5647228))

(assert (= (and b!5647228 c!992403) b!5647229))

(assert (= (and b!5647228 (not c!992403)) b!5647221))

(assert (= (or b!5647222 b!5647229) bm!427010))

(assert (= (or b!5647222 b!5647229) bm!427012))

(assert (= (or b!5647225 bm!427010) bm!427009))

(assert (= (or b!5647225 bm!427012) bm!427013))

(assert (= (or b!5647224 bm!427013) bm!427014))

(assert (= (or b!5647224 b!5647225) bm!427011))

(declare-fun m!6614502 () Bool)

(assert (=> bm!427009 m!6614502))

(declare-fun m!6614504 () Bool)

(assert (=> b!5647227 m!6614504))

(declare-fun m!6614506 () Bool)

(assert (=> bm!427011 m!6614506))

(declare-fun m!6614508 () Bool)

(assert (=> bm!427014 m!6614508))

(assert (=> b!5647226 m!6613654))

(assert (=> b!5646412 d!1783731))

(declare-fun d!1783733 () Bool)

(declare-fun c!992408 () Bool)

(assert (=> d!1783733 (= c!992408 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478810 () Bool)

(assert (=> d!1783733 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (t!376491 s!2326)) e!3478810)))

(declare-fun b!5647232 () Bool)

(assert (=> b!5647232 (= e!3478810 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326))))))

(declare-fun b!5647233 () Bool)

(assert (=> b!5647233 (= e!3478810 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783733 c!992408) b!5647232))

(assert (= (and d!1783733 (not c!992408)) b!5647233))

(assert (=> d!1783733 m!6614302))

(assert (=> b!5647232 m!6613670))

(declare-fun m!6614510 () Bool)

(assert (=> b!5647232 m!6614510))

(assert (=> b!5647233 m!6614306))

(assert (=> b!5647233 m!6613670))

(assert (=> b!5647233 m!6614306))

(declare-fun m!6614512 () Bool)

(assert (=> b!5647233 m!6614512))

(assert (=> b!5647233 m!6614310))

(assert (=> b!5647233 m!6614512))

(assert (=> b!5647233 m!6614310))

(declare-fun m!6614514 () Bool)

(assert (=> b!5647233 m!6614514))

(assert (=> b!5646431 d!1783733))

(declare-fun bs!1312282 () Bool)

(declare-fun d!1783735 () Bool)

(assert (= bs!1312282 (and d!1783735 b!5646443)))

(declare-fun lambda!303508 () Int)

(assert (=> bs!1312282 (= lambda!303508 lambda!303425)))

(assert (=> d!1783735 true))

(assert (=> d!1783735 (= (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (flatMap!1244 lt!2264191 lambda!303508))))

(declare-fun bs!1312283 () Bool)

(assert (= bs!1312283 d!1783735))

(declare-fun m!6614516 () Bool)

(assert (=> bs!1312283 m!6614516))

(assert (=> b!5646431 d!1783735))

(declare-fun d!1783737 () Bool)

(declare-fun e!3478811 () Bool)

(assert (=> d!1783737 (= (matchZipper!1769 ((_ map or) lt!2264224 lt!2264207) (t!376491 s!2326)) e!3478811)))

(declare-fun res!2388797 () Bool)

(assert (=> d!1783737 (=> res!2388797 e!3478811)))

(assert (=> d!1783737 (= res!2388797 (matchZipper!1769 lt!2264224 (t!376491 s!2326)))))

(declare-fun lt!2264362 () Unit!156056)

(assert (=> d!1783737 (= lt!2264362 (choose!42755 lt!2264224 lt!2264207 (t!376491 s!2326)))))

(assert (=> d!1783737 (= (lemmaZipperConcatMatchesSameAsBothZippers!656 lt!2264224 lt!2264207 (t!376491 s!2326)) lt!2264362)))

(declare-fun b!5647236 () Bool)

(assert (=> b!5647236 (= e!3478811 (matchZipper!1769 lt!2264207 (t!376491 s!2326)))))

(assert (= (and d!1783737 (not res!2388797)) b!5647236))

(assert (=> d!1783737 m!6613766))

(assert (=> d!1783737 m!6613636))

(declare-fun m!6614518 () Bool)

(assert (=> d!1783737 m!6614518))

(assert (=> b!5647236 m!6613798))

(assert (=> b!5646432 d!1783737))

(assert (=> b!5646432 d!1783715))

(declare-fun d!1783739 () Bool)

(declare-fun c!992411 () Bool)

(assert (=> d!1783739 (= c!992411 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3478812 () Bool)

(assert (=> d!1783739 (= (matchZipper!1769 ((_ map or) lt!2264224 lt!2264207) (t!376491 s!2326)) e!3478812)))

(declare-fun b!5647237 () Bool)

(assert (=> b!5647237 (= e!3478812 (nullableZipper!1613 ((_ map or) lt!2264224 lt!2264207)))))

(declare-fun b!5647238 () Bool)

(assert (=> b!5647238 (= e!3478812 (matchZipper!1769 (derivationStepZipper!1718 ((_ map or) lt!2264224 lt!2264207) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1783739 c!992411) b!5647237))

(assert (= (and d!1783739 (not c!992411)) b!5647238))

(assert (=> d!1783739 m!6614302))

(declare-fun m!6614520 () Bool)

(assert (=> b!5647237 m!6614520))

(assert (=> b!5647238 m!6614306))

(assert (=> b!5647238 m!6614306))

(declare-fun m!6614522 () Bool)

(assert (=> b!5647238 m!6614522))

(assert (=> b!5647238 m!6614310))

(assert (=> b!5647238 m!6614522))

(assert (=> b!5647238 m!6614310))

(declare-fun m!6614524 () Bool)

(assert (=> b!5647238 m!6614524))

(assert (=> b!5646432 d!1783739))

(declare-fun bs!1312284 () Bool)

(declare-fun d!1783741 () Bool)

(assert (= bs!1312284 (and d!1783741 d!1783713)))

(declare-fun lambda!303511 () Int)

(assert (=> bs!1312284 (= lambda!303511 lambda!303504)))

(declare-fun bs!1312285 () Bool)

(assert (= bs!1312285 (and d!1783741 d!1783727)))

(assert (=> bs!1312285 (= lambda!303511 lambda!303505)))

(declare-fun b!5647259 () Bool)

(declare-fun e!3478830 () Bool)

(assert (=> b!5647259 (= e!3478830 (isEmpty!34913 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647260 () Bool)

(declare-fun e!3478826 () Regex!15631)

(assert (=> b!5647260 (= e!3478826 (Concat!24476 (h!69516 (exprs!5515 (h!69518 zl!343))) (generalisedConcat!1246 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun e!3478829 () Bool)

(assert (=> d!1783741 e!3478829))

(declare-fun res!2388803 () Bool)

(assert (=> d!1783741 (=> (not res!2388803) (not e!3478829))))

(declare-fun lt!2264365 () Regex!15631)

(assert (=> d!1783741 (= res!2388803 (validRegex!7367 lt!2264365))))

(declare-fun e!3478827 () Regex!15631)

(assert (=> d!1783741 (= lt!2264365 e!3478827)))

(declare-fun c!992422 () Bool)

(assert (=> d!1783741 (= c!992422 e!3478830)))

(declare-fun res!2388802 () Bool)

(assert (=> d!1783741 (=> (not res!2388802) (not e!3478830))))

(assert (=> d!1783741 (= res!2388802 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> d!1783741 (forall!14788 (exprs!5515 (h!69518 zl!343)) lambda!303511)))

(assert (=> d!1783741 (= (generalisedConcat!1246 (exprs!5515 (h!69518 zl!343))) lt!2264365)))

(declare-fun b!5647261 () Bool)

(assert (=> b!5647261 (= e!3478827 (h!69516 (exprs!5515 (h!69518 zl!343))))))

(declare-fun b!5647262 () Bool)

(assert (=> b!5647262 (= e!3478827 e!3478826)))

(declare-fun c!992421 () Bool)

(assert (=> b!5647262 (= c!992421 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(declare-fun b!5647263 () Bool)

(assert (=> b!5647263 (= e!3478826 EmptyExpr!15631)))

(declare-fun b!5647264 () Bool)

(declare-fun e!3478825 () Bool)

(declare-fun isEmptyExpr!1172 (Regex!15631) Bool)

(assert (=> b!5647264 (= e!3478825 (isEmptyExpr!1172 lt!2264365))))

(declare-fun b!5647265 () Bool)

(declare-fun e!3478828 () Bool)

(assert (=> b!5647265 (= e!3478825 e!3478828)))

(declare-fun c!992420 () Bool)

(declare-fun tail!11102 (List!63192) List!63192)

(assert (=> b!5647265 (= c!992420 (isEmpty!34913 (tail!11102 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647266 () Bool)

(assert (=> b!5647266 (= e!3478829 e!3478825)))

(declare-fun c!992423 () Bool)

(assert (=> b!5647266 (= c!992423 (isEmpty!34913 (exprs!5515 (h!69518 zl!343))))))

(declare-fun b!5647267 () Bool)

(declare-fun head!12007 (List!63192) Regex!15631)

(assert (=> b!5647267 (= e!3478828 (= lt!2264365 (head!12007 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647268 () Bool)

(declare-fun isConcat!695 (Regex!15631) Bool)

(assert (=> b!5647268 (= e!3478828 (isConcat!695 lt!2264365))))

(assert (= (and d!1783741 res!2388802) b!5647259))

(assert (= (and d!1783741 c!992422) b!5647261))

(assert (= (and d!1783741 (not c!992422)) b!5647262))

(assert (= (and b!5647262 c!992421) b!5647260))

(assert (= (and b!5647262 (not c!992421)) b!5647263))

(assert (= (and d!1783741 res!2388803) b!5647266))

(assert (= (and b!5647266 c!992423) b!5647264))

(assert (= (and b!5647266 (not c!992423)) b!5647265))

(assert (= (and b!5647265 c!992420) b!5647267))

(assert (= (and b!5647265 (not c!992420)) b!5647268))

(declare-fun m!6614526 () Bool)

(assert (=> b!5647265 m!6614526))

(assert (=> b!5647265 m!6614526))

(declare-fun m!6614528 () Bool)

(assert (=> b!5647265 m!6614528))

(declare-fun m!6614530 () Bool)

(assert (=> b!5647266 m!6614530))

(assert (=> b!5647260 m!6613692))

(declare-fun m!6614532 () Bool)

(assert (=> b!5647264 m!6614532))

(declare-fun m!6614534 () Bool)

(assert (=> b!5647267 m!6614534))

(assert (=> b!5647259 m!6613760))

(declare-fun m!6614536 () Bool)

(assert (=> d!1783741 m!6614536))

(declare-fun m!6614538 () Bool)

(assert (=> d!1783741 m!6614538))

(declare-fun m!6614540 () Bool)

(assert (=> b!5647268 m!6614540))

(assert (=> b!5646430 d!1783741))

(declare-fun d!1783743 () Bool)

(assert (=> d!1783743 (= (isEmpty!34913 (t!376490 (exprs!5515 (h!69518 zl!343)))) ((_ is Nil!63068) (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5646434 d!1783743))

(declare-fun d!1783745 () Bool)

(assert (=> d!1783745 (= (Exists!2731 lambda!303428) (choose!42758 lambda!303428))))

(declare-fun bs!1312286 () Bool)

(assert (= bs!1312286 d!1783745))

(declare-fun m!6614542 () Bool)

(assert (=> bs!1312286 m!6614542))

(assert (=> b!5646415 d!1783745))

(declare-fun b!5647269 () Bool)

(declare-fun res!2388810 () Bool)

(declare-fun e!3478831 () Bool)

(assert (=> b!5647269 (=> (not res!2388810) (not e!3478831))))

(declare-fun call!427020 () Bool)

(assert (=> b!5647269 (= res!2388810 (not call!427020))))

(declare-fun b!5647270 () Bool)

(declare-fun e!3478832 () Bool)

(assert (=> b!5647270 (= e!3478832 (nullable!5663 lt!2264184))))

(declare-fun b!5647271 () Bool)

(declare-fun e!3478834 () Bool)

(declare-fun e!3478836 () Bool)

(assert (=> b!5647271 (= e!3478834 e!3478836)))

(declare-fun res!2388811 () Bool)

(assert (=> b!5647271 (=> (not res!2388811) (not e!3478836))))

(declare-fun lt!2264366 () Bool)

(assert (=> b!5647271 (= res!2388811 (not lt!2264366))))

(declare-fun b!5647272 () Bool)

(declare-fun e!3478833 () Bool)

(assert (=> b!5647272 (= e!3478833 (not lt!2264366))))

(declare-fun b!5647273 () Bool)

(declare-fun res!2388808 () Bool)

(declare-fun e!3478835 () Bool)

(assert (=> b!5647273 (=> res!2388808 e!3478835)))

(assert (=> b!5647273 (= res!2388808 (not (isEmpty!34917 (tail!11101 s!2326))))))

(declare-fun b!5647275 () Bool)

(assert (=> b!5647275 (= e!3478836 e!3478835)))

(declare-fun res!2388807 () Bool)

(assert (=> b!5647275 (=> res!2388807 e!3478835)))

(assert (=> b!5647275 (= res!2388807 call!427020)))

(declare-fun b!5647276 () Bool)

(assert (=> b!5647276 (= e!3478831 (= (head!12006 s!2326) (c!992159 lt!2264184)))))

(declare-fun b!5647277 () Bool)

(declare-fun res!2388809 () Bool)

(assert (=> b!5647277 (=> res!2388809 e!3478834)))

(assert (=> b!5647277 (= res!2388809 (not ((_ is ElementMatch!15631) lt!2264184)))))

(assert (=> b!5647277 (= e!3478833 e!3478834)))

(declare-fun b!5647278 () Bool)

(declare-fun e!3478837 () Bool)

(assert (=> b!5647278 (= e!3478837 (= lt!2264366 call!427020))))

(declare-fun bm!427015 () Bool)

(assert (=> bm!427015 (= call!427020 (isEmpty!34917 s!2326))))

(declare-fun d!1783747 () Bool)

(assert (=> d!1783747 e!3478837))

(declare-fun c!992424 () Bool)

(assert (=> d!1783747 (= c!992424 ((_ is EmptyExpr!15631) lt!2264184))))

(assert (=> d!1783747 (= lt!2264366 e!3478832)))

(declare-fun c!992425 () Bool)

(assert (=> d!1783747 (= c!992425 (isEmpty!34917 s!2326))))

(assert (=> d!1783747 (validRegex!7367 lt!2264184)))

(assert (=> d!1783747 (= (matchR!7816 lt!2264184 s!2326) lt!2264366)))

(declare-fun b!5647274 () Bool)

(assert (=> b!5647274 (= e!3478832 (matchR!7816 (derivativeStep!4467 lt!2264184 (head!12006 s!2326)) (tail!11101 s!2326)))))

(declare-fun b!5647279 () Bool)

(declare-fun res!2388804 () Bool)

(assert (=> b!5647279 (=> res!2388804 e!3478834)))

(assert (=> b!5647279 (= res!2388804 e!3478831)))

(declare-fun res!2388806 () Bool)

(assert (=> b!5647279 (=> (not res!2388806) (not e!3478831))))

(assert (=> b!5647279 (= res!2388806 lt!2264366)))

(declare-fun b!5647280 () Bool)

(declare-fun res!2388805 () Bool)

(assert (=> b!5647280 (=> (not res!2388805) (not e!3478831))))

(assert (=> b!5647280 (= res!2388805 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun b!5647281 () Bool)

(assert (=> b!5647281 (= e!3478837 e!3478833)))

(declare-fun c!992426 () Bool)

(assert (=> b!5647281 (= c!992426 ((_ is EmptyLang!15631) lt!2264184))))

(declare-fun b!5647282 () Bool)

(assert (=> b!5647282 (= e!3478835 (not (= (head!12006 s!2326) (c!992159 lt!2264184))))))

(assert (= (and d!1783747 c!992425) b!5647270))

(assert (= (and d!1783747 (not c!992425)) b!5647274))

(assert (= (and d!1783747 c!992424) b!5647278))

(assert (= (and d!1783747 (not c!992424)) b!5647281))

(assert (= (and b!5647281 c!992426) b!5647272))

(assert (= (and b!5647281 (not c!992426)) b!5647277))

(assert (= (and b!5647277 (not res!2388809)) b!5647279))

(assert (= (and b!5647279 res!2388806) b!5647269))

(assert (= (and b!5647269 res!2388810) b!5647280))

(assert (= (and b!5647280 res!2388805) b!5647276))

(assert (= (and b!5647279 (not res!2388804)) b!5647271))

(assert (= (and b!5647271 res!2388811) b!5647275))

(assert (= (and b!5647275 (not res!2388807)) b!5647273))

(assert (= (and b!5647273 (not res!2388808)) b!5647282))

(assert (= (or b!5647278 b!5647269 b!5647275) bm!427015))

(assert (=> d!1783747 m!6614382))

(declare-fun m!6614544 () Bool)

(assert (=> d!1783747 m!6614544))

(assert (=> b!5647282 m!6614390))

(assert (=> b!5647276 m!6614390))

(assert (=> bm!427015 m!6614382))

(assert (=> b!5647280 m!6614392))

(assert (=> b!5647280 m!6614392))

(assert (=> b!5647280 m!6614394))

(assert (=> b!5647273 m!6614392))

(assert (=> b!5647273 m!6614392))

(assert (=> b!5647273 m!6614394))

(assert (=> b!5647274 m!6614390))

(assert (=> b!5647274 m!6614390))

(declare-fun m!6614546 () Bool)

(assert (=> b!5647274 m!6614546))

(assert (=> b!5647274 m!6614392))

(assert (=> b!5647274 m!6614546))

(assert (=> b!5647274 m!6614392))

(declare-fun m!6614548 () Bool)

(assert (=> b!5647274 m!6614548))

(declare-fun m!6614550 () Bool)

(assert (=> b!5647270 m!6614550))

(assert (=> b!5646415 d!1783747))

(declare-fun d!1783749 () Bool)

(assert (=> d!1783749 (= (Exists!2731 lambda!303429) (choose!42758 lambda!303429))))

(declare-fun bs!1312287 () Bool)

(assert (= bs!1312287 d!1783749))

(declare-fun m!6614552 () Bool)

(assert (=> bs!1312287 m!6614552))

(assert (=> b!5646415 d!1783749))

(declare-fun bs!1312288 () Bool)

(declare-fun d!1783751 () Bool)

(assert (= bs!1312288 (and d!1783751 d!1783675)))

(declare-fun lambda!303512 () Int)

(assert (=> bs!1312288 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303512 lambda!303489))))

(declare-fun bs!1312289 () Bool)

(assert (= bs!1312289 (and d!1783751 b!5646415)))

(assert (=> bs!1312289 (not (= lambda!303512 lambda!303429))))

(declare-fun bs!1312290 () Bool)

(assert (= bs!1312290 (and d!1783751 b!5646420)))

(assert (=> bs!1312290 (not (= lambda!303512 lambda!303424))))

(assert (=> bs!1312289 (not (= lambda!303512 lambda!303427))))

(declare-fun bs!1312291 () Bool)

(assert (= bs!1312291 (and d!1783751 d!1783677)))

(assert (=> bs!1312291 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303512 lambda!303494))))

(assert (=> bs!1312289 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303512 lambda!303426))))

(assert (=> bs!1312289 (= lambda!303512 lambda!303428)))

(assert (=> bs!1312290 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303512 lambda!303423))))

(declare-fun bs!1312292 () Bool)

(assert (= bs!1312292 (and d!1783751 b!5647087)))

(assert (=> bs!1312292 (not (= lambda!303512 lambda!303501))))

(declare-fun bs!1312293 () Bool)

(assert (= bs!1312293 (and d!1783751 b!5647092)))

(assert (=> bs!1312293 (not (= lambda!303512 lambda!303500))))

(assert (=> bs!1312291 (not (= lambda!303512 lambda!303495))))

(assert (=> d!1783751 true))

(assert (=> d!1783751 true))

(assert (=> d!1783751 true))

(declare-fun lambda!303513 () Int)

(assert (=> bs!1312288 (not (= lambda!303513 lambda!303489))))

(assert (=> bs!1312289 (= lambda!303513 lambda!303429)))

(assert (=> bs!1312290 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303513 lambda!303424))))

(assert (=> bs!1312289 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303513 lambda!303427))))

(assert (=> bs!1312291 (not (= lambda!303513 lambda!303494))))

(assert (=> bs!1312289 (not (= lambda!303513 lambda!303426))))

(assert (=> bs!1312289 (not (= lambda!303513 lambda!303428))))

(declare-fun bs!1312294 () Bool)

(assert (= bs!1312294 d!1783751))

(assert (=> bs!1312294 (not (= lambda!303513 lambda!303512))))

(assert (=> bs!1312290 (not (= lambda!303513 lambda!303423))))

(assert (=> bs!1312292 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303513 lambda!303501))))

(assert (=> bs!1312293 (not (= lambda!303513 lambda!303500))))

(assert (=> bs!1312291 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303513 lambda!303495))))

(assert (=> d!1783751 true))

(assert (=> d!1783751 true))

(assert (=> d!1783751 true))

(assert (=> d!1783751 (= (Exists!2731 lambda!303512) (Exists!2731 lambda!303513))))

(declare-fun lt!2264367 () Unit!156056)

(assert (=> d!1783751 (= lt!2264367 (choose!42760 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326))))

(assert (=> d!1783751 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783751 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326) lt!2264367)))

(declare-fun m!6614554 () Bool)

(assert (=> bs!1312294 m!6614554))

(declare-fun m!6614556 () Bool)

(assert (=> bs!1312294 m!6614556))

(declare-fun m!6614558 () Bool)

(assert (=> bs!1312294 m!6614558))

(declare-fun m!6614560 () Bool)

(assert (=> bs!1312294 m!6614560))

(assert (=> b!5646415 d!1783751))

(declare-fun d!1783753 () Bool)

(assert (=> d!1783753 (= (Exists!2731 lambda!303427) (choose!42758 lambda!303427))))

(declare-fun bs!1312295 () Bool)

(assert (= bs!1312295 d!1783753))

(declare-fun m!6614562 () Bool)

(assert (=> bs!1312295 m!6614562))

(assert (=> b!5646415 d!1783753))

(declare-fun b!5647283 () Bool)

(declare-fun res!2388818 () Bool)

(declare-fun e!3478838 () Bool)

(assert (=> b!5647283 (=> (not res!2388818) (not e!3478838))))

(declare-fun call!427021 () Bool)

(assert (=> b!5647283 (= res!2388818 (not call!427021))))

(declare-fun b!5647284 () Bool)

(declare-fun e!3478839 () Bool)

(assert (=> b!5647284 (= e!3478839 (nullable!5663 lt!2264222))))

(declare-fun b!5647285 () Bool)

(declare-fun e!3478841 () Bool)

(declare-fun e!3478843 () Bool)

(assert (=> b!5647285 (= e!3478841 e!3478843)))

(declare-fun res!2388819 () Bool)

(assert (=> b!5647285 (=> (not res!2388819) (not e!3478843))))

(declare-fun lt!2264368 () Bool)

(assert (=> b!5647285 (= res!2388819 (not lt!2264368))))

(declare-fun b!5647286 () Bool)

(declare-fun e!3478840 () Bool)

(assert (=> b!5647286 (= e!3478840 (not lt!2264368))))

(declare-fun b!5647287 () Bool)

(declare-fun res!2388816 () Bool)

(declare-fun e!3478842 () Bool)

(assert (=> b!5647287 (=> res!2388816 e!3478842)))

(assert (=> b!5647287 (= res!2388816 (not (isEmpty!34917 (tail!11101 s!2326))))))

(declare-fun b!5647289 () Bool)

(assert (=> b!5647289 (= e!3478843 e!3478842)))

(declare-fun res!2388815 () Bool)

(assert (=> b!5647289 (=> res!2388815 e!3478842)))

(assert (=> b!5647289 (= res!2388815 call!427021)))

(declare-fun b!5647290 () Bool)

(assert (=> b!5647290 (= e!3478838 (= (head!12006 s!2326) (c!992159 lt!2264222)))))

(declare-fun b!5647291 () Bool)

(declare-fun res!2388817 () Bool)

(assert (=> b!5647291 (=> res!2388817 e!3478841)))

(assert (=> b!5647291 (= res!2388817 (not ((_ is ElementMatch!15631) lt!2264222)))))

(assert (=> b!5647291 (= e!3478840 e!3478841)))

(declare-fun b!5647292 () Bool)

(declare-fun e!3478844 () Bool)

(assert (=> b!5647292 (= e!3478844 (= lt!2264368 call!427021))))

(declare-fun bm!427016 () Bool)

(assert (=> bm!427016 (= call!427021 (isEmpty!34917 s!2326))))

(declare-fun d!1783755 () Bool)

(assert (=> d!1783755 e!3478844))

(declare-fun c!992427 () Bool)

(assert (=> d!1783755 (= c!992427 ((_ is EmptyExpr!15631) lt!2264222))))

(assert (=> d!1783755 (= lt!2264368 e!3478839)))

(declare-fun c!992428 () Bool)

(assert (=> d!1783755 (= c!992428 (isEmpty!34917 s!2326))))

(assert (=> d!1783755 (validRegex!7367 lt!2264222)))

(assert (=> d!1783755 (= (matchR!7816 lt!2264222 s!2326) lt!2264368)))

(declare-fun b!5647288 () Bool)

(assert (=> b!5647288 (= e!3478839 (matchR!7816 (derivativeStep!4467 lt!2264222 (head!12006 s!2326)) (tail!11101 s!2326)))))

(declare-fun b!5647293 () Bool)

(declare-fun res!2388812 () Bool)

(assert (=> b!5647293 (=> res!2388812 e!3478841)))

(assert (=> b!5647293 (= res!2388812 e!3478838)))

(declare-fun res!2388814 () Bool)

(assert (=> b!5647293 (=> (not res!2388814) (not e!3478838))))

(assert (=> b!5647293 (= res!2388814 lt!2264368)))

(declare-fun b!5647294 () Bool)

(declare-fun res!2388813 () Bool)

(assert (=> b!5647294 (=> (not res!2388813) (not e!3478838))))

(assert (=> b!5647294 (= res!2388813 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun b!5647295 () Bool)

(assert (=> b!5647295 (= e!3478844 e!3478840)))

(declare-fun c!992429 () Bool)

(assert (=> b!5647295 (= c!992429 ((_ is EmptyLang!15631) lt!2264222))))

(declare-fun b!5647296 () Bool)

(assert (=> b!5647296 (= e!3478842 (not (= (head!12006 s!2326) (c!992159 lt!2264222))))))

(assert (= (and d!1783755 c!992428) b!5647284))

(assert (= (and d!1783755 (not c!992428)) b!5647288))

(assert (= (and d!1783755 c!992427) b!5647292))

(assert (= (and d!1783755 (not c!992427)) b!5647295))

(assert (= (and b!5647295 c!992429) b!5647286))

(assert (= (and b!5647295 (not c!992429)) b!5647291))

(assert (= (and b!5647291 (not res!2388817)) b!5647293))

(assert (= (and b!5647293 res!2388814) b!5647283))

(assert (= (and b!5647283 res!2388818) b!5647294))

(assert (= (and b!5647294 res!2388813) b!5647290))

(assert (= (and b!5647293 (not res!2388812)) b!5647285))

(assert (= (and b!5647285 res!2388819) b!5647289))

(assert (= (and b!5647289 (not res!2388815)) b!5647287))

(assert (= (and b!5647287 (not res!2388816)) b!5647296))

(assert (= (or b!5647292 b!5647283 b!5647289) bm!427016))

(assert (=> d!1783755 m!6614382))

(declare-fun m!6614564 () Bool)

(assert (=> d!1783755 m!6614564))

(assert (=> b!5647296 m!6614390))

(assert (=> b!5647290 m!6614390))

(assert (=> bm!427016 m!6614382))

(assert (=> b!5647294 m!6614392))

(assert (=> b!5647294 m!6614392))

(assert (=> b!5647294 m!6614394))

(assert (=> b!5647287 m!6614392))

(assert (=> b!5647287 m!6614392))

(assert (=> b!5647287 m!6614394))

(assert (=> b!5647288 m!6614390))

(assert (=> b!5647288 m!6614390))

(declare-fun m!6614566 () Bool)

(assert (=> b!5647288 m!6614566))

(assert (=> b!5647288 m!6614392))

(assert (=> b!5647288 m!6614566))

(assert (=> b!5647288 m!6614392))

(declare-fun m!6614568 () Bool)

(assert (=> b!5647288 m!6614568))

(declare-fun m!6614570 () Bool)

(assert (=> b!5647284 m!6614570))

(assert (=> b!5646415 d!1783755))

(declare-fun d!1783757 () Bool)

(assert (=> d!1783757 (= (matchR!7816 lt!2264222 s!2326) (matchRSpec!2734 lt!2264222 s!2326))))

(declare-fun lt!2264369 () Unit!156056)

(assert (=> d!1783757 (= lt!2264369 (choose!42761 lt!2264222 s!2326))))

(assert (=> d!1783757 (validRegex!7367 lt!2264222)))

(assert (=> d!1783757 (= (mainMatchTheorem!2734 lt!2264222 s!2326) lt!2264369)))

(declare-fun bs!1312296 () Bool)

(assert (= bs!1312296 d!1783757))

(assert (=> bs!1312296 m!6613700))

(assert (=> bs!1312296 m!6613698))

(declare-fun m!6614572 () Bool)

(assert (=> bs!1312296 m!6614572))

(assert (=> bs!1312296 m!6614564))

(assert (=> b!5646415 d!1783757))

(declare-fun bs!1312297 () Bool)

(declare-fun d!1783759 () Bool)

(assert (= bs!1312297 (and d!1783759 d!1783675)))

(declare-fun lambda!303514 () Int)

(assert (=> bs!1312297 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303514 lambda!303489))))

(declare-fun bs!1312298 () Bool)

(assert (= bs!1312298 (and d!1783759 d!1783751)))

(assert (=> bs!1312298 (not (= lambda!303514 lambda!303513))))

(declare-fun bs!1312299 () Bool)

(assert (= bs!1312299 (and d!1783759 b!5646415)))

(assert (=> bs!1312299 (not (= lambda!303514 lambda!303429))))

(declare-fun bs!1312300 () Bool)

(assert (= bs!1312300 (and d!1783759 b!5646420)))

(assert (=> bs!1312300 (not (= lambda!303514 lambda!303424))))

(assert (=> bs!1312299 (not (= lambda!303514 lambda!303427))))

(declare-fun bs!1312301 () Bool)

(assert (= bs!1312301 (and d!1783759 d!1783677)))

(assert (=> bs!1312301 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303514 lambda!303494))))

(assert (=> bs!1312299 (= lambda!303514 lambda!303426)))

(assert (=> bs!1312299 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303514 lambda!303428))))

(assert (=> bs!1312298 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303514 lambda!303512))))

(assert (=> bs!1312300 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303514 lambda!303423))))

(declare-fun bs!1312302 () Bool)

(assert (= bs!1312302 (and d!1783759 b!5647087)))

(assert (=> bs!1312302 (not (= lambda!303514 lambda!303501))))

(declare-fun bs!1312303 () Bool)

(assert (= bs!1312303 (and d!1783759 b!5647092)))

(assert (=> bs!1312303 (not (= lambda!303514 lambda!303500))))

(assert (=> bs!1312301 (not (= lambda!303514 lambda!303495))))

(assert (=> d!1783759 true))

(assert (=> d!1783759 true))

(assert (=> d!1783759 true))

(assert (=> d!1783759 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303514))))

(declare-fun lt!2264370 () Unit!156056)

(assert (=> d!1783759 (= lt!2264370 (choose!42759 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326))))

(assert (=> d!1783759 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783759 (= (lemmaFindConcatSeparationEquivalentToExists!1818 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326) lt!2264370)))

(declare-fun bs!1312304 () Bool)

(assert (= bs!1312304 d!1783759))

(declare-fun m!6614574 () Bool)

(assert (=> bs!1312304 m!6614574))

(assert (=> bs!1312304 m!6613706))

(assert (=> bs!1312304 m!6613720))

(declare-fun m!6614576 () Bool)

(assert (=> bs!1312304 m!6614576))

(assert (=> bs!1312304 m!6613706))

(declare-fun m!6614578 () Bool)

(assert (=> bs!1312304 m!6614578))

(assert (=> b!5646415 d!1783759))

(declare-fun bs!1312305 () Bool)

(declare-fun d!1783761 () Bool)

(assert (= bs!1312305 (and d!1783761 d!1783713)))

(declare-fun lambda!303515 () Int)

(assert (=> bs!1312305 (= lambda!303515 lambda!303504)))

(declare-fun bs!1312306 () Bool)

(assert (= bs!1312306 (and d!1783761 d!1783727)))

(assert (=> bs!1312306 (= lambda!303515 lambda!303505)))

(declare-fun bs!1312307 () Bool)

(assert (= bs!1312307 (and d!1783761 d!1783741)))

(assert (=> bs!1312307 (= lambda!303515 lambda!303511)))

(declare-fun b!5647297 () Bool)

(declare-fun e!3478850 () Bool)

(assert (=> b!5647297 (= e!3478850 (isEmpty!34913 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5647298 () Bool)

(declare-fun e!3478846 () Regex!15631)

(assert (=> b!5647298 (= e!3478846 (Concat!24476 (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343)))) (generalisedConcat!1246 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun e!3478849 () Bool)

(assert (=> d!1783761 e!3478849))

(declare-fun res!2388821 () Bool)

(assert (=> d!1783761 (=> (not res!2388821) (not e!3478849))))

(declare-fun lt!2264371 () Regex!15631)

(assert (=> d!1783761 (= res!2388821 (validRegex!7367 lt!2264371))))

(declare-fun e!3478847 () Regex!15631)

(assert (=> d!1783761 (= lt!2264371 e!3478847)))

(declare-fun c!992432 () Bool)

(assert (=> d!1783761 (= c!992432 e!3478850)))

(declare-fun res!2388820 () Bool)

(assert (=> d!1783761 (=> (not res!2388820) (not e!3478850))))

(assert (=> d!1783761 (= res!2388820 ((_ is Cons!63068) (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> d!1783761 (forall!14788 (t!376490 (exprs!5515 (h!69518 zl!343))) lambda!303515)))

(assert (=> d!1783761 (= (generalisedConcat!1246 (t!376490 (exprs!5515 (h!69518 zl!343)))) lt!2264371)))

(declare-fun b!5647299 () Bool)

(assert (=> b!5647299 (= e!3478847 (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647300 () Bool)

(assert (=> b!5647300 (= e!3478847 e!3478846)))

(declare-fun c!992431 () Bool)

(assert (=> b!5647300 (= c!992431 ((_ is Cons!63068) (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647301 () Bool)

(assert (=> b!5647301 (= e!3478846 EmptyExpr!15631)))

(declare-fun b!5647302 () Bool)

(declare-fun e!3478845 () Bool)

(assert (=> b!5647302 (= e!3478845 (isEmptyExpr!1172 lt!2264371))))

(declare-fun b!5647303 () Bool)

(declare-fun e!3478848 () Bool)

(assert (=> b!5647303 (= e!3478845 e!3478848)))

(declare-fun c!992430 () Bool)

(assert (=> b!5647303 (= c!992430 (isEmpty!34913 (tail!11102 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5647304 () Bool)

(assert (=> b!5647304 (= e!3478849 e!3478845)))

(declare-fun c!992433 () Bool)

(assert (=> b!5647304 (= c!992433 (isEmpty!34913 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5647305 () Bool)

(assert (=> b!5647305 (= e!3478848 (= lt!2264371 (head!12007 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5647306 () Bool)

(assert (=> b!5647306 (= e!3478848 (isConcat!695 lt!2264371))))

(assert (= (and d!1783761 res!2388820) b!5647297))

(assert (= (and d!1783761 c!992432) b!5647299))

(assert (= (and d!1783761 (not c!992432)) b!5647300))

(assert (= (and b!5647300 c!992431) b!5647298))

(assert (= (and b!5647300 (not c!992431)) b!5647301))

(assert (= (and d!1783761 res!2388821) b!5647304))

(assert (= (and b!5647304 c!992433) b!5647302))

(assert (= (and b!5647304 (not c!992433)) b!5647303))

(assert (= (and b!5647303 c!992430) b!5647305))

(assert (= (and b!5647303 (not c!992430)) b!5647306))

(declare-fun m!6614580 () Bool)

(assert (=> b!5647303 m!6614580))

(assert (=> b!5647303 m!6614580))

(declare-fun m!6614582 () Bool)

(assert (=> b!5647303 m!6614582))

(assert (=> b!5647304 m!6613760))

(declare-fun m!6614584 () Bool)

(assert (=> b!5647298 m!6614584))

(declare-fun m!6614586 () Bool)

(assert (=> b!5647302 m!6614586))

(declare-fun m!6614588 () Bool)

(assert (=> b!5647305 m!6614588))

(declare-fun m!6614590 () Bool)

(assert (=> b!5647297 m!6614590))

(declare-fun m!6614592 () Bool)

(assert (=> d!1783761 m!6614592))

(declare-fun m!6614594 () Bool)

(assert (=> d!1783761 m!6614594))

(declare-fun m!6614596 () Bool)

(assert (=> b!5647306 m!6614596))

(assert (=> b!5646415 d!1783761))

(declare-fun d!1783763 () Bool)

(assert (=> d!1783763 (= (Exists!2731 lambda!303426) (choose!42758 lambda!303426))))

(declare-fun bs!1312308 () Bool)

(assert (= bs!1312308 d!1783763))

(declare-fun m!6614598 () Bool)

(assert (=> bs!1312308 m!6614598))

(assert (=> b!5646415 d!1783763))

(declare-fun b!5647307 () Bool)

(declare-fun e!3478855 () Bool)

(assert (=> b!5647307 (= e!3478855 (matchR!7816 lt!2264217 s!2326))))

(declare-fun b!5647308 () Bool)

(declare-fun e!3478853 () Option!15640)

(assert (=> b!5647308 (= e!3478853 None!15639)))

(declare-fun d!1783765 () Bool)

(declare-fun e!3478852 () Bool)

(assert (=> d!1783765 e!3478852))

(declare-fun res!2388824 () Bool)

(assert (=> d!1783765 (=> res!2388824 e!3478852)))

(declare-fun e!3478851 () Bool)

(assert (=> d!1783765 (= res!2388824 e!3478851)))

(declare-fun res!2388822 () Bool)

(assert (=> d!1783765 (=> (not res!2388822) (not e!3478851))))

(declare-fun lt!2264373 () Option!15640)

(assert (=> d!1783765 (= res!2388822 (isDefined!12343 lt!2264373))))

(declare-fun e!3478854 () Option!15640)

(assert (=> d!1783765 (= lt!2264373 e!3478854)))

(declare-fun c!992435 () Bool)

(assert (=> d!1783765 (= c!992435 e!3478855)))

(declare-fun res!2388823 () Bool)

(assert (=> d!1783765 (=> (not res!2388823) (not e!3478855))))

(assert (=> d!1783765 (= res!2388823 (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) Nil!63069))))

(assert (=> d!1783765 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783765 (= (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326) lt!2264373)))

(declare-fun b!5647309 () Bool)

(assert (=> b!5647309 (= e!3478854 (Some!15639 (tuple2!65457 Nil!63069 s!2326)))))

(declare-fun b!5647310 () Bool)

(declare-fun res!2388826 () Bool)

(assert (=> b!5647310 (=> (not res!2388826) (not e!3478851))))

(assert (=> b!5647310 (= res!2388826 (matchR!7816 lt!2264217 (_2!36031 (get!21730 lt!2264373))))))

(declare-fun b!5647311 () Bool)

(assert (=> b!5647311 (= e!3478852 (not (isDefined!12343 lt!2264373)))))

(declare-fun b!5647312 () Bool)

(declare-fun lt!2264374 () Unit!156056)

(declare-fun lt!2264372 () Unit!156056)

(assert (=> b!5647312 (= lt!2264374 lt!2264372)))

(assert (=> b!5647312 (= (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326)) s!2326)))

(assert (=> b!5647312 (= lt!2264372 (lemmaMoveElementToOtherListKeepsConcatEq!2016 Nil!63069 (h!69517 s!2326) (t!376491 s!2326) s!2326))))

(assert (=> b!5647312 (= e!3478853 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326))))

(declare-fun b!5647313 () Bool)

(assert (=> b!5647313 (= e!3478854 e!3478853)))

(declare-fun c!992434 () Bool)

(assert (=> b!5647313 (= c!992434 ((_ is Nil!63069) s!2326))))

(declare-fun b!5647314 () Bool)

(assert (=> b!5647314 (= e!3478851 (= (++!13847 (_1!36031 (get!21730 lt!2264373)) (_2!36031 (get!21730 lt!2264373))) s!2326))))

(declare-fun b!5647315 () Bool)

(declare-fun res!2388825 () Bool)

(assert (=> b!5647315 (=> (not res!2388825) (not e!3478851))))

(assert (=> b!5647315 (= res!2388825 (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264373))))))

(assert (= (and d!1783765 res!2388823) b!5647307))

(assert (= (and d!1783765 c!992435) b!5647309))

(assert (= (and d!1783765 (not c!992435)) b!5647313))

(assert (= (and b!5647313 c!992434) b!5647308))

(assert (= (and b!5647313 (not c!992434)) b!5647312))

(assert (= (and d!1783765 res!2388822) b!5647315))

(assert (= (and b!5647315 res!2388825) b!5647310))

(assert (= (and b!5647310 res!2388826) b!5647314))

(assert (= (and d!1783765 (not res!2388824)) b!5647311))

(declare-fun m!6614600 () Bool)

(assert (=> b!5647311 m!6614600))

(declare-fun m!6614602 () Bool)

(assert (=> b!5647307 m!6614602))

(declare-fun m!6614604 () Bool)

(assert (=> b!5647314 m!6614604))

(declare-fun m!6614606 () Bool)

(assert (=> b!5647314 m!6614606))

(assert (=> d!1783765 m!6614600))

(declare-fun m!6614608 () Bool)

(assert (=> d!1783765 m!6614608))

(assert (=> d!1783765 m!6614560))

(assert (=> b!5647312 m!6614354))

(assert (=> b!5647312 m!6614354))

(assert (=> b!5647312 m!6614356))

(assert (=> b!5647312 m!6614358))

(assert (=> b!5647312 m!6614354))

(declare-fun m!6614610 () Bool)

(assert (=> b!5647312 m!6614610))

(assert (=> b!5647310 m!6614604))

(declare-fun m!6614612 () Bool)

(assert (=> b!5647310 m!6614612))

(assert (=> b!5647315 m!6614604))

(declare-fun m!6614614 () Bool)

(assert (=> b!5647315 m!6614614))

(assert (=> b!5646415 d!1783765))

(declare-fun d!1783767 () Bool)

(declare-fun c!992436 () Bool)

(assert (=> d!1783767 (= c!992436 (isEmpty!34917 s!2326))))

(declare-fun e!3478856 () Bool)

(assert (=> d!1783767 (= (matchZipper!1769 z!1189 s!2326) e!3478856)))

(declare-fun b!5647316 () Bool)

(assert (=> b!5647316 (= e!3478856 (nullableZipper!1613 z!1189))))

(declare-fun b!5647317 () Bool)

(assert (=> b!5647317 (= e!3478856 (matchZipper!1769 (derivationStepZipper!1718 z!1189 (head!12006 s!2326)) (tail!11101 s!2326)))))

(assert (= (and d!1783767 c!992436) b!5647316))

(assert (= (and d!1783767 (not c!992436)) b!5647317))

(assert (=> d!1783767 m!6614382))

(declare-fun m!6614616 () Bool)

(assert (=> b!5647316 m!6614616))

(assert (=> b!5647317 m!6614390))

(assert (=> b!5647317 m!6614390))

(declare-fun m!6614618 () Bool)

(assert (=> b!5647317 m!6614618))

(assert (=> b!5647317 m!6614392))

(assert (=> b!5647317 m!6614618))

(assert (=> b!5647317 m!6614392))

(declare-fun m!6614620 () Bool)

(assert (=> b!5647317 m!6614620))

(assert (=> b!5646415 d!1783767))

(declare-fun bs!1312309 () Bool)

(declare-fun d!1783769 () Bool)

(assert (= bs!1312309 (and d!1783769 d!1783713)))

(declare-fun lambda!303516 () Int)

(assert (=> bs!1312309 (= lambda!303516 lambda!303504)))

(declare-fun bs!1312310 () Bool)

(assert (= bs!1312310 (and d!1783769 d!1783727)))

(assert (=> bs!1312310 (= lambda!303516 lambda!303505)))

(declare-fun bs!1312311 () Bool)

(assert (= bs!1312311 (and d!1783769 d!1783741)))

(assert (=> bs!1312311 (= lambda!303516 lambda!303511)))

(declare-fun bs!1312312 () Bool)

(assert (= bs!1312312 (and d!1783769 d!1783761)))

(assert (=> bs!1312312 (= lambda!303516 lambda!303515)))

(declare-fun b!5647318 () Bool)

(declare-fun e!3478862 () Bool)

(assert (=> b!5647318 (= e!3478862 (isEmpty!34913 (t!376490 lt!2264230)))))

(declare-fun b!5647319 () Bool)

(declare-fun e!3478858 () Regex!15631)

(assert (=> b!5647319 (= e!3478858 (Concat!24476 (h!69516 lt!2264230) (generalisedConcat!1246 (t!376490 lt!2264230))))))

(declare-fun e!3478861 () Bool)

(assert (=> d!1783769 e!3478861))

(declare-fun res!2388828 () Bool)

(assert (=> d!1783769 (=> (not res!2388828) (not e!3478861))))

(declare-fun lt!2264375 () Regex!15631)

(assert (=> d!1783769 (= res!2388828 (validRegex!7367 lt!2264375))))

(declare-fun e!3478859 () Regex!15631)

(assert (=> d!1783769 (= lt!2264375 e!3478859)))

(declare-fun c!992439 () Bool)

(assert (=> d!1783769 (= c!992439 e!3478862)))

(declare-fun res!2388827 () Bool)

(assert (=> d!1783769 (=> (not res!2388827) (not e!3478862))))

(assert (=> d!1783769 (= res!2388827 ((_ is Cons!63068) lt!2264230))))

(assert (=> d!1783769 (forall!14788 lt!2264230 lambda!303516)))

(assert (=> d!1783769 (= (generalisedConcat!1246 lt!2264230) lt!2264375)))

(declare-fun b!5647320 () Bool)

(assert (=> b!5647320 (= e!3478859 (h!69516 lt!2264230))))

(declare-fun b!5647321 () Bool)

(assert (=> b!5647321 (= e!3478859 e!3478858)))

(declare-fun c!992438 () Bool)

(assert (=> b!5647321 (= c!992438 ((_ is Cons!63068) lt!2264230))))

(declare-fun b!5647322 () Bool)

(assert (=> b!5647322 (= e!3478858 EmptyExpr!15631)))

(declare-fun b!5647323 () Bool)

(declare-fun e!3478857 () Bool)

(assert (=> b!5647323 (= e!3478857 (isEmptyExpr!1172 lt!2264375))))

(declare-fun b!5647324 () Bool)

(declare-fun e!3478860 () Bool)

(assert (=> b!5647324 (= e!3478857 e!3478860)))

(declare-fun c!992437 () Bool)

(assert (=> b!5647324 (= c!992437 (isEmpty!34913 (tail!11102 lt!2264230)))))

(declare-fun b!5647325 () Bool)

(assert (=> b!5647325 (= e!3478861 e!3478857)))

(declare-fun c!992440 () Bool)

(assert (=> b!5647325 (= c!992440 (isEmpty!34913 lt!2264230))))

(declare-fun b!5647326 () Bool)

(assert (=> b!5647326 (= e!3478860 (= lt!2264375 (head!12007 lt!2264230)))))

(declare-fun b!5647327 () Bool)

(assert (=> b!5647327 (= e!3478860 (isConcat!695 lt!2264375))))

(assert (= (and d!1783769 res!2388827) b!5647318))

(assert (= (and d!1783769 c!992439) b!5647320))

(assert (= (and d!1783769 (not c!992439)) b!5647321))

(assert (= (and b!5647321 c!992438) b!5647319))

(assert (= (and b!5647321 (not c!992438)) b!5647322))

(assert (= (and d!1783769 res!2388828) b!5647325))

(assert (= (and b!5647325 c!992440) b!5647323))

(assert (= (and b!5647325 (not c!992440)) b!5647324))

(assert (= (and b!5647324 c!992437) b!5647326))

(assert (= (and b!5647324 (not c!992437)) b!5647327))

(declare-fun m!6614622 () Bool)

(assert (=> b!5647324 m!6614622))

(assert (=> b!5647324 m!6614622))

(declare-fun m!6614624 () Bool)

(assert (=> b!5647324 m!6614624))

(declare-fun m!6614626 () Bool)

(assert (=> b!5647325 m!6614626))

(declare-fun m!6614628 () Bool)

(assert (=> b!5647319 m!6614628))

(declare-fun m!6614630 () Bool)

(assert (=> b!5647323 m!6614630))

(declare-fun m!6614632 () Bool)

(assert (=> b!5647326 m!6614632))

(declare-fun m!6614634 () Bool)

(assert (=> b!5647318 m!6614634))

(declare-fun m!6614636 () Bool)

(assert (=> d!1783769 m!6614636))

(declare-fun m!6614638 () Bool)

(assert (=> d!1783769 m!6614638))

(declare-fun m!6614640 () Bool)

(assert (=> b!5647327 m!6614640))

(assert (=> b!5646415 d!1783769))

(declare-fun d!1783771 () Bool)

(assert (=> d!1783771 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326)) (not (isEmpty!34918 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326))))))

(declare-fun bs!1312313 () Bool)

(assert (= bs!1312313 d!1783771))

(assert (=> bs!1312313 m!6613706))

(declare-fun m!6614642 () Bool)

(assert (=> bs!1312313 m!6614642))

(assert (=> b!5646415 d!1783771))

(declare-fun b!5647328 () Bool)

(declare-fun e!3478867 () Bool)

(assert (=> b!5647328 (= e!3478867 (matchR!7816 lt!2264184 s!2326))))

(declare-fun b!5647329 () Bool)

(declare-fun e!3478865 () Option!15640)

(assert (=> b!5647329 (= e!3478865 None!15639)))

(declare-fun d!1783773 () Bool)

(declare-fun e!3478864 () Bool)

(assert (=> d!1783773 e!3478864))

(declare-fun res!2388831 () Bool)

(assert (=> d!1783773 (=> res!2388831 e!3478864)))

(declare-fun e!3478863 () Bool)

(assert (=> d!1783773 (= res!2388831 e!3478863)))

(declare-fun res!2388829 () Bool)

(assert (=> d!1783773 (=> (not res!2388829) (not e!3478863))))

(declare-fun lt!2264377 () Option!15640)

(assert (=> d!1783773 (= res!2388829 (isDefined!12343 lt!2264377))))

(declare-fun e!3478866 () Option!15640)

(assert (=> d!1783773 (= lt!2264377 e!3478866)))

(declare-fun c!992442 () Bool)

(assert (=> d!1783773 (= c!992442 e!3478867)))

(declare-fun res!2388830 () Bool)

(assert (=> d!1783773 (=> (not res!2388830) (not e!3478867))))

(assert (=> d!1783773 (= res!2388830 (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) Nil!63069))))

(assert (=> d!1783773 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783773 (= (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326) lt!2264377)))

(declare-fun b!5647330 () Bool)

(assert (=> b!5647330 (= e!3478866 (Some!15639 (tuple2!65457 Nil!63069 s!2326)))))

(declare-fun b!5647331 () Bool)

(declare-fun res!2388833 () Bool)

(assert (=> b!5647331 (=> (not res!2388833) (not e!3478863))))

(assert (=> b!5647331 (= res!2388833 (matchR!7816 lt!2264184 (_2!36031 (get!21730 lt!2264377))))))

(declare-fun b!5647332 () Bool)

(assert (=> b!5647332 (= e!3478864 (not (isDefined!12343 lt!2264377)))))

(declare-fun b!5647333 () Bool)

(declare-fun lt!2264378 () Unit!156056)

(declare-fun lt!2264376 () Unit!156056)

(assert (=> b!5647333 (= lt!2264378 lt!2264376)))

(assert (=> b!5647333 (= (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326)) s!2326)))

(assert (=> b!5647333 (= lt!2264376 (lemmaMoveElementToOtherListKeepsConcatEq!2016 Nil!63069 (h!69517 s!2326) (t!376491 s!2326) s!2326))))

(assert (=> b!5647333 (= e!3478865 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326))))

(declare-fun b!5647334 () Bool)

(assert (=> b!5647334 (= e!3478866 e!3478865)))

(declare-fun c!992441 () Bool)

(assert (=> b!5647334 (= c!992441 ((_ is Nil!63069) s!2326))))

(declare-fun b!5647335 () Bool)

(assert (=> b!5647335 (= e!3478863 (= (++!13847 (_1!36031 (get!21730 lt!2264377)) (_2!36031 (get!21730 lt!2264377))) s!2326))))

(declare-fun b!5647336 () Bool)

(declare-fun res!2388832 () Bool)

(assert (=> b!5647336 (=> (not res!2388832) (not e!3478863))))

(assert (=> b!5647336 (= res!2388832 (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264377))))))

(assert (= (and d!1783773 res!2388830) b!5647328))

(assert (= (and d!1783773 c!992442) b!5647330))

(assert (= (and d!1783773 (not c!992442)) b!5647334))

(assert (= (and b!5647334 c!992441) b!5647329))

(assert (= (and b!5647334 (not c!992441)) b!5647333))

(assert (= (and d!1783773 res!2388829) b!5647336))

(assert (= (and b!5647336 res!2388832) b!5647331))

(assert (= (and b!5647331 res!2388833) b!5647335))

(assert (= (and d!1783773 (not res!2388831)) b!5647332))

(declare-fun m!6614644 () Bool)

(assert (=> b!5647332 m!6614644))

(assert (=> b!5647328 m!6613676))

(declare-fun m!6614646 () Bool)

(assert (=> b!5647335 m!6614646))

(declare-fun m!6614648 () Bool)

(assert (=> b!5647335 m!6614648))

(assert (=> d!1783773 m!6614644))

(declare-fun m!6614650 () Bool)

(assert (=> d!1783773 m!6614650))

(assert (=> d!1783773 m!6614578))

(assert (=> b!5647333 m!6614354))

(assert (=> b!5647333 m!6614354))

(assert (=> b!5647333 m!6614356))

(assert (=> b!5647333 m!6614358))

(assert (=> b!5647333 m!6614354))

(declare-fun m!6614652 () Bool)

(assert (=> b!5647333 m!6614652))

(assert (=> b!5647331 m!6614646))

(declare-fun m!6614654 () Bool)

(assert (=> b!5647331 m!6614654))

(assert (=> b!5647336 m!6614646))

(declare-fun m!6614656 () Bool)

(assert (=> b!5647336 m!6614656))

(assert (=> b!5646415 d!1783773))

(declare-fun bs!1312314 () Bool)

(declare-fun d!1783775 () Bool)

(assert (= bs!1312314 (and d!1783775 d!1783769)))

(declare-fun lambda!303517 () Int)

(assert (=> bs!1312314 (= lambda!303517 lambda!303516)))

(declare-fun bs!1312315 () Bool)

(assert (= bs!1312315 (and d!1783775 d!1783713)))

(assert (=> bs!1312315 (= lambda!303517 lambda!303504)))

(declare-fun bs!1312316 () Bool)

(assert (= bs!1312316 (and d!1783775 d!1783727)))

(assert (=> bs!1312316 (= lambda!303517 lambda!303505)))

(declare-fun bs!1312317 () Bool)

(assert (= bs!1312317 (and d!1783775 d!1783761)))

(assert (=> bs!1312317 (= lambda!303517 lambda!303515)))

(declare-fun bs!1312318 () Bool)

(assert (= bs!1312318 (and d!1783775 d!1783741)))

(assert (=> bs!1312318 (= lambda!303517 lambda!303511)))

(declare-fun b!5647337 () Bool)

(declare-fun e!3478873 () Bool)

(assert (=> b!5647337 (= e!3478873 (isEmpty!34913 (t!376490 lt!2264211)))))

(declare-fun b!5647338 () Bool)

(declare-fun e!3478869 () Regex!15631)

(assert (=> b!5647338 (= e!3478869 (Concat!24476 (h!69516 lt!2264211) (generalisedConcat!1246 (t!376490 lt!2264211))))))

(declare-fun e!3478872 () Bool)

(assert (=> d!1783775 e!3478872))

(declare-fun res!2388835 () Bool)

(assert (=> d!1783775 (=> (not res!2388835) (not e!3478872))))

(declare-fun lt!2264379 () Regex!15631)

(assert (=> d!1783775 (= res!2388835 (validRegex!7367 lt!2264379))))

(declare-fun e!3478870 () Regex!15631)

(assert (=> d!1783775 (= lt!2264379 e!3478870)))

(declare-fun c!992445 () Bool)

(assert (=> d!1783775 (= c!992445 e!3478873)))

(declare-fun res!2388834 () Bool)

(assert (=> d!1783775 (=> (not res!2388834) (not e!3478873))))

(assert (=> d!1783775 (= res!2388834 ((_ is Cons!63068) lt!2264211))))

(assert (=> d!1783775 (forall!14788 lt!2264211 lambda!303517)))

(assert (=> d!1783775 (= (generalisedConcat!1246 lt!2264211) lt!2264379)))

(declare-fun b!5647339 () Bool)

(assert (=> b!5647339 (= e!3478870 (h!69516 lt!2264211))))

(declare-fun b!5647340 () Bool)

(assert (=> b!5647340 (= e!3478870 e!3478869)))

(declare-fun c!992444 () Bool)

(assert (=> b!5647340 (= c!992444 ((_ is Cons!63068) lt!2264211))))

(declare-fun b!5647341 () Bool)

(assert (=> b!5647341 (= e!3478869 EmptyExpr!15631)))

(declare-fun b!5647342 () Bool)

(declare-fun e!3478868 () Bool)

(assert (=> b!5647342 (= e!3478868 (isEmptyExpr!1172 lt!2264379))))

(declare-fun b!5647343 () Bool)

(declare-fun e!3478871 () Bool)

(assert (=> b!5647343 (= e!3478868 e!3478871)))

(declare-fun c!992443 () Bool)

(assert (=> b!5647343 (= c!992443 (isEmpty!34913 (tail!11102 lt!2264211)))))

(declare-fun b!5647344 () Bool)

(assert (=> b!5647344 (= e!3478872 e!3478868)))

(declare-fun c!992446 () Bool)

(assert (=> b!5647344 (= c!992446 (isEmpty!34913 lt!2264211))))

(declare-fun b!5647345 () Bool)

(assert (=> b!5647345 (= e!3478871 (= lt!2264379 (head!12007 lt!2264211)))))

(declare-fun b!5647346 () Bool)

(assert (=> b!5647346 (= e!3478871 (isConcat!695 lt!2264379))))

(assert (= (and d!1783775 res!2388834) b!5647337))

(assert (= (and d!1783775 c!992445) b!5647339))

(assert (= (and d!1783775 (not c!992445)) b!5647340))

(assert (= (and b!5647340 c!992444) b!5647338))

(assert (= (and b!5647340 (not c!992444)) b!5647341))

(assert (= (and d!1783775 res!2388835) b!5647344))

(assert (= (and b!5647344 c!992446) b!5647342))

(assert (= (and b!5647344 (not c!992446)) b!5647343))

(assert (= (and b!5647343 c!992443) b!5647345))

(assert (= (and b!5647343 (not c!992443)) b!5647346))

(declare-fun m!6614658 () Bool)

(assert (=> b!5647343 m!6614658))

(assert (=> b!5647343 m!6614658))

(declare-fun m!6614660 () Bool)

(assert (=> b!5647343 m!6614660))

(declare-fun m!6614662 () Bool)

(assert (=> b!5647344 m!6614662))

(declare-fun m!6614664 () Bool)

(assert (=> b!5647338 m!6614664))

(declare-fun m!6614666 () Bool)

(assert (=> b!5647342 m!6614666))

(declare-fun m!6614668 () Bool)

(assert (=> b!5647345 m!6614668))

(declare-fun m!6614670 () Bool)

(assert (=> b!5647337 m!6614670))

(declare-fun m!6614672 () Bool)

(assert (=> d!1783775 m!6614672))

(declare-fun m!6614674 () Bool)

(assert (=> d!1783775 m!6614674))

(declare-fun m!6614676 () Bool)

(assert (=> b!5647346 m!6614676))

(assert (=> b!5646415 d!1783775))

(declare-fun d!1783777 () Bool)

(declare-fun c!992447 () Bool)

(assert (=> d!1783777 (= c!992447 (isEmpty!34917 s!2326))))

(declare-fun e!3478874 () Bool)

(assert (=> d!1783777 (= (matchZipper!1769 lt!2264191 s!2326) e!3478874)))

(declare-fun b!5647347 () Bool)

(assert (=> b!5647347 (= e!3478874 (nullableZipper!1613 lt!2264191))))

(declare-fun b!5647348 () Bool)

(assert (=> b!5647348 (= e!3478874 (matchZipper!1769 (derivationStepZipper!1718 lt!2264191 (head!12006 s!2326)) (tail!11101 s!2326)))))

(assert (= (and d!1783777 c!992447) b!5647347))

(assert (= (and d!1783777 (not c!992447)) b!5647348))

(assert (=> d!1783777 m!6614382))

(declare-fun m!6614678 () Bool)

(assert (=> b!5647347 m!6614678))

(assert (=> b!5647348 m!6614390))

(assert (=> b!5647348 m!6614390))

(declare-fun m!6614680 () Bool)

(assert (=> b!5647348 m!6614680))

(assert (=> b!5647348 m!6614392))

(assert (=> b!5647348 m!6614680))

(assert (=> b!5647348 m!6614392))

(declare-fun m!6614682 () Bool)

(assert (=> b!5647348 m!6614682))

(assert (=> b!5646415 d!1783777))

(declare-fun bs!1312319 () Bool)

(declare-fun b!5647359 () Bool)

(assert (= bs!1312319 (and b!5647359 d!1783675)))

(declare-fun lambda!303518 () Int)

(assert (=> bs!1312319 (not (= lambda!303518 lambda!303489))))

(declare-fun bs!1312320 () Bool)

(assert (= bs!1312320 (and b!5647359 d!1783751)))

(assert (=> bs!1312320 (not (= lambda!303518 lambda!303513))))

(declare-fun bs!1312321 () Bool)

(assert (= bs!1312321 (and b!5647359 b!5646415)))

(assert (=> bs!1312321 (not (= lambda!303518 lambda!303429))))

(declare-fun bs!1312322 () Bool)

(assert (= bs!1312322 (and b!5647359 b!5646420)))

(assert (=> bs!1312322 (not (= lambda!303518 lambda!303424))))

(assert (=> bs!1312321 (not (= lambda!303518 lambda!303427))))

(declare-fun bs!1312323 () Bool)

(assert (= bs!1312323 (and b!5647359 d!1783677)))

(assert (=> bs!1312323 (not (= lambda!303518 lambda!303494))))

(assert (=> bs!1312321 (not (= lambda!303518 lambda!303426))))

(assert (=> bs!1312321 (not (= lambda!303518 lambda!303428))))

(assert (=> bs!1312320 (not (= lambda!303518 lambda!303512))))

(assert (=> bs!1312322 (not (= lambda!303518 lambda!303423))))

(declare-fun bs!1312324 () Bool)

(assert (= bs!1312324 (and b!5647359 b!5647087)))

(assert (=> bs!1312324 (not (= lambda!303518 lambda!303501))))

(declare-fun bs!1312325 () Bool)

(assert (= bs!1312325 (and b!5647359 d!1783759)))

(assert (=> bs!1312325 (not (= lambda!303518 lambda!303514))))

(declare-fun bs!1312326 () Bool)

(assert (= bs!1312326 (and b!5647359 b!5647092)))

(assert (=> bs!1312326 (= (and (= (reg!15960 lt!2264222) (reg!15960 r!7292)) (= lt!2264222 r!7292)) (= lambda!303518 lambda!303500))))

(assert (=> bs!1312323 (not (= lambda!303518 lambda!303495))))

(assert (=> b!5647359 true))

(assert (=> b!5647359 true))

(declare-fun bs!1312327 () Bool)

(declare-fun b!5647354 () Bool)

(assert (= bs!1312327 (and b!5647354 d!1783675)))

(declare-fun lambda!303519 () Int)

(assert (=> bs!1312327 (not (= lambda!303519 lambda!303489))))

(declare-fun bs!1312328 () Bool)

(assert (= bs!1312328 (and b!5647354 d!1783751)))

(assert (=> bs!1312328 (= (and (= (regOne!31774 lt!2264222) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264222) lt!2264217)) (= lambda!303519 lambda!303513))))

(declare-fun bs!1312329 () Bool)

(assert (= bs!1312329 (and b!5647354 b!5646415)))

(assert (=> bs!1312329 (= (and (= (regOne!31774 lt!2264222) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264222) lt!2264217)) (= lambda!303519 lambda!303429))))

(declare-fun bs!1312330 () Bool)

(assert (= bs!1312330 (and b!5647354 b!5646420)))

(assert (=> bs!1312330 (= (and (= (regOne!31774 lt!2264222) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264222) (regTwo!31774 r!7292))) (= lambda!303519 lambda!303424))))

(assert (=> bs!1312329 (= (and (= (regOne!31774 lt!2264222) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264222) lt!2264184)) (= lambda!303519 lambda!303427))))

(assert (=> bs!1312329 (not (= lambda!303519 lambda!303426))))

(assert (=> bs!1312329 (not (= lambda!303519 lambda!303428))))

(assert (=> bs!1312328 (not (= lambda!303519 lambda!303512))))

(assert (=> bs!1312330 (not (= lambda!303519 lambda!303423))))

(declare-fun bs!1312331 () Bool)

(assert (= bs!1312331 (and b!5647354 b!5647087)))

(assert (=> bs!1312331 (= (and (= (regOne!31774 lt!2264222) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264222) (regTwo!31774 r!7292))) (= lambda!303519 lambda!303501))))

(declare-fun bs!1312332 () Bool)

(assert (= bs!1312332 (and b!5647354 d!1783759)))

(assert (=> bs!1312332 (not (= lambda!303519 lambda!303514))))

(declare-fun bs!1312333 () Bool)

(assert (= bs!1312333 (and b!5647354 d!1783677)))

(assert (=> bs!1312333 (not (= lambda!303519 lambda!303494))))

(declare-fun bs!1312334 () Bool)

(assert (= bs!1312334 (and b!5647354 b!5647359)))

(assert (=> bs!1312334 (not (= lambda!303519 lambda!303518))))

(declare-fun bs!1312335 () Bool)

(assert (= bs!1312335 (and b!5647354 b!5647092)))

(assert (=> bs!1312335 (not (= lambda!303519 lambda!303500))))

(assert (=> bs!1312333 (= (and (= (regOne!31774 lt!2264222) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264222) (regTwo!31774 r!7292))) (= lambda!303519 lambda!303495))))

(assert (=> b!5647354 true))

(assert (=> b!5647354 true))

(declare-fun b!5647349 () Bool)

(declare-fun e!3478875 () Bool)

(assert (=> b!5647349 (= e!3478875 (= s!2326 (Cons!63069 (c!992159 lt!2264222) Nil!63069)))))

(declare-fun b!5647350 () Bool)

(declare-fun res!2388836 () Bool)

(declare-fun e!3478876 () Bool)

(assert (=> b!5647350 (=> res!2388836 e!3478876)))

(declare-fun call!427022 () Bool)

(assert (=> b!5647350 (= res!2388836 call!427022)))

(declare-fun e!3478879 () Bool)

(assert (=> b!5647350 (= e!3478879 e!3478876)))

(declare-fun bm!427017 () Bool)

(assert (=> bm!427017 (= call!427022 (isEmpty!34917 s!2326))))

(declare-fun b!5647351 () Bool)

(declare-fun c!992451 () Bool)

(assert (=> b!5647351 (= c!992451 ((_ is ElementMatch!15631) lt!2264222))))

(declare-fun e!3478880 () Bool)

(assert (=> b!5647351 (= e!3478880 e!3478875)))

(declare-fun b!5647352 () Bool)

(declare-fun e!3478877 () Bool)

(declare-fun e!3478878 () Bool)

(assert (=> b!5647352 (= e!3478877 e!3478878)))

(declare-fun res!2388837 () Bool)

(assert (=> b!5647352 (= res!2388837 (matchRSpec!2734 (regOne!31775 lt!2264222) s!2326))))

(assert (=> b!5647352 (=> res!2388837 e!3478878)))

(declare-fun d!1783779 () Bool)

(declare-fun c!992450 () Bool)

(assert (=> d!1783779 (= c!992450 ((_ is EmptyExpr!15631) lt!2264222))))

(declare-fun e!3478881 () Bool)

(assert (=> d!1783779 (= (matchRSpec!2734 lt!2264222 s!2326) e!3478881)))

(declare-fun b!5647353 () Bool)

(declare-fun c!992449 () Bool)

(assert (=> b!5647353 (= c!992449 ((_ is Union!15631) lt!2264222))))

(assert (=> b!5647353 (= e!3478875 e!3478877)))

(declare-fun bm!427018 () Bool)

(declare-fun call!427023 () Bool)

(declare-fun c!992448 () Bool)

(assert (=> bm!427018 (= call!427023 (Exists!2731 (ite c!992448 lambda!303518 lambda!303519)))))

(assert (=> b!5647354 (= e!3478879 call!427023)))

(declare-fun b!5647355 () Bool)

(assert (=> b!5647355 (= e!3478877 e!3478879)))

(assert (=> b!5647355 (= c!992448 ((_ is Star!15631) lt!2264222))))

(declare-fun b!5647356 () Bool)

(assert (=> b!5647356 (= e!3478881 call!427022)))

(declare-fun b!5647357 () Bool)

(assert (=> b!5647357 (= e!3478881 e!3478880)))

(declare-fun res!2388838 () Bool)

(assert (=> b!5647357 (= res!2388838 (not ((_ is EmptyLang!15631) lt!2264222)))))

(assert (=> b!5647357 (=> (not res!2388838) (not e!3478880))))

(declare-fun b!5647358 () Bool)

(assert (=> b!5647358 (= e!3478878 (matchRSpec!2734 (regTwo!31775 lt!2264222) s!2326))))

(assert (=> b!5647359 (= e!3478876 call!427023)))

(assert (= (and d!1783779 c!992450) b!5647356))

(assert (= (and d!1783779 (not c!992450)) b!5647357))

(assert (= (and b!5647357 res!2388838) b!5647351))

(assert (= (and b!5647351 c!992451) b!5647349))

(assert (= (and b!5647351 (not c!992451)) b!5647353))

(assert (= (and b!5647353 c!992449) b!5647352))

(assert (= (and b!5647353 (not c!992449)) b!5647355))

(assert (= (and b!5647352 (not res!2388837)) b!5647358))

(assert (= (and b!5647355 c!992448) b!5647350))

(assert (= (and b!5647355 (not c!992448)) b!5647354))

(assert (= (and b!5647350 (not res!2388836)) b!5647359))

(assert (= (or b!5647359 b!5647354) bm!427018))

(assert (= (or b!5647356 b!5647350) bm!427017))

(assert (=> bm!427017 m!6614382))

(declare-fun m!6614684 () Bool)

(assert (=> b!5647352 m!6614684))

(declare-fun m!6614686 () Bool)

(assert (=> bm!427018 m!6614686))

(declare-fun m!6614688 () Bool)

(assert (=> b!5647358 m!6614688))

(assert (=> b!5646415 d!1783779))

(declare-fun bs!1312336 () Bool)

(declare-fun d!1783781 () Bool)

(assert (= bs!1312336 (and d!1783781 d!1783675)))

(declare-fun lambda!303520 () Int)

(assert (=> bs!1312336 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303520 lambda!303489))))

(declare-fun bs!1312337 () Bool)

(assert (= bs!1312337 (and d!1783781 d!1783751)))

(assert (=> bs!1312337 (not (= lambda!303520 lambda!303513))))

(declare-fun bs!1312338 () Bool)

(assert (= bs!1312338 (and d!1783781 b!5646415)))

(assert (=> bs!1312338 (not (= lambda!303520 lambda!303429))))

(declare-fun bs!1312339 () Bool)

(assert (= bs!1312339 (and d!1783781 b!5646420)))

(assert (=> bs!1312339 (not (= lambda!303520 lambda!303424))))

(assert (=> bs!1312338 (not (= lambda!303520 lambda!303427))))

(assert (=> bs!1312338 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303520 lambda!303426))))

(assert (=> bs!1312338 (= lambda!303520 lambda!303428)))

(assert (=> bs!1312337 (= lambda!303520 lambda!303512)))

(declare-fun bs!1312340 () Bool)

(assert (= bs!1312340 (and d!1783781 b!5647087)))

(assert (=> bs!1312340 (not (= lambda!303520 lambda!303501))))

(declare-fun bs!1312341 () Bool)

(assert (= bs!1312341 (and d!1783781 d!1783759)))

(assert (=> bs!1312341 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303520 lambda!303514))))

(declare-fun bs!1312342 () Bool)

(assert (= bs!1312342 (and d!1783781 d!1783677)))

(assert (=> bs!1312342 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303520 lambda!303494))))

(declare-fun bs!1312343 () Bool)

(assert (= bs!1312343 (and d!1783781 b!5647359)))

(assert (=> bs!1312343 (not (= lambda!303520 lambda!303518))))

(declare-fun bs!1312344 () Bool)

(assert (= bs!1312344 (and d!1783781 b!5647092)))

(assert (=> bs!1312344 (not (= lambda!303520 lambda!303500))))

(assert (=> bs!1312342 (not (= lambda!303520 lambda!303495))))

(assert (=> bs!1312339 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303520 lambda!303423))))

(declare-fun bs!1312345 () Bool)

(assert (= bs!1312345 (and d!1783781 b!5647354)))

(assert (=> bs!1312345 (not (= lambda!303520 lambda!303519))))

(assert (=> d!1783781 true))

(assert (=> d!1783781 true))

(assert (=> d!1783781 true))

(assert (=> d!1783781 (= (isDefined!12343 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303520))))

(declare-fun lt!2264380 () Unit!156056)

(assert (=> d!1783781 (= lt!2264380 (choose!42759 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326))))

(assert (=> d!1783781 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783781 (= (lemmaFindConcatSeparationEquivalentToExists!1818 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326) lt!2264380)))

(declare-fun bs!1312346 () Bool)

(assert (= bs!1312346 d!1783781))

(declare-fun m!6614690 () Bool)

(assert (=> bs!1312346 m!6614690))

(assert (=> bs!1312346 m!6613678))

(assert (=> bs!1312346 m!6613680))

(declare-fun m!6614692 () Bool)

(assert (=> bs!1312346 m!6614692))

(assert (=> bs!1312346 m!6613678))

(assert (=> bs!1312346 m!6614560))

(assert (=> b!5646415 d!1783781))

(declare-fun d!1783783 () Bool)

(assert (=> d!1783783 (= (isDefined!12343 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326)) (not (isEmpty!34918 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326))))))

(declare-fun bs!1312347 () Bool)

(assert (= bs!1312347 d!1783783))

(assert (=> bs!1312347 m!6613678))

(declare-fun m!6614694 () Bool)

(assert (=> bs!1312347 m!6614694))

(assert (=> b!5646415 d!1783783))

(declare-fun d!1783785 () Bool)

(assert (=> d!1783785 (= (matchR!7816 lt!2264222 s!2326) (matchZipper!1769 lt!2264195 s!2326))))

(declare-fun lt!2264383 () Unit!156056)

(declare-fun choose!42762 ((InoxSet Context!10030) List!63194 Regex!15631 List!63193) Unit!156056)

(assert (=> d!1783785 (= lt!2264383 (choose!42762 lt!2264195 lt!2264185 lt!2264222 s!2326))))

(assert (=> d!1783785 (validRegex!7367 lt!2264222)))

(assert (=> d!1783785 (= (theoremZipperRegexEquiv!627 lt!2264195 lt!2264185 lt!2264222 s!2326) lt!2264383)))

(declare-fun bs!1312348 () Bool)

(assert (= bs!1312348 d!1783785))

(assert (=> bs!1312348 m!6613700))

(assert (=> bs!1312348 m!6613690))

(declare-fun m!6614696 () Bool)

(assert (=> bs!1312348 m!6614696))

(assert (=> bs!1312348 m!6614564))

(assert (=> b!5646415 d!1783785))

(declare-fun d!1783787 () Bool)

(declare-fun c!992452 () Bool)

(assert (=> d!1783787 (= c!992452 (isEmpty!34917 s!2326))))

(declare-fun e!3478882 () Bool)

(assert (=> d!1783787 (= (matchZipper!1769 lt!2264195 s!2326) e!3478882)))

(declare-fun b!5647360 () Bool)

(assert (=> b!5647360 (= e!3478882 (nullableZipper!1613 lt!2264195))))

(declare-fun b!5647361 () Bool)

(assert (=> b!5647361 (= e!3478882 (matchZipper!1769 (derivationStepZipper!1718 lt!2264195 (head!12006 s!2326)) (tail!11101 s!2326)))))

(assert (= (and d!1783787 c!992452) b!5647360))

(assert (= (and d!1783787 (not c!992452)) b!5647361))

(assert (=> d!1783787 m!6614382))

(declare-fun m!6614698 () Bool)

(assert (=> b!5647360 m!6614698))

(assert (=> b!5647361 m!6614390))

(assert (=> b!5647361 m!6614390))

(declare-fun m!6614700 () Bool)

(assert (=> b!5647361 m!6614700))

(assert (=> b!5647361 m!6614392))

(assert (=> b!5647361 m!6614700))

(assert (=> b!5647361 m!6614392))

(declare-fun m!6614702 () Bool)

(assert (=> b!5647361 m!6614702))

(assert (=> b!5646415 d!1783787))

(declare-fun bs!1312349 () Bool)

(declare-fun b!5647372 () Bool)

(assert (= bs!1312349 (and b!5647372 d!1783675)))

(declare-fun lambda!303521 () Int)

(assert (=> bs!1312349 (not (= lambda!303521 lambda!303489))))

(declare-fun bs!1312350 () Bool)

(assert (= bs!1312350 (and b!5647372 d!1783751)))

(assert (=> bs!1312350 (not (= lambda!303521 lambda!303513))))

(declare-fun bs!1312351 () Bool)

(assert (= bs!1312351 (and b!5647372 b!5646415)))

(assert (=> bs!1312351 (not (= lambda!303521 lambda!303429))))

(declare-fun bs!1312352 () Bool)

(assert (= bs!1312352 (and b!5647372 b!5646420)))

(assert (=> bs!1312352 (not (= lambda!303521 lambda!303424))))

(assert (=> bs!1312351 (not (= lambda!303521 lambda!303427))))

(assert (=> bs!1312351 (not (= lambda!303521 lambda!303426))))

(assert (=> bs!1312351 (not (= lambda!303521 lambda!303428))))

(declare-fun bs!1312353 () Bool)

(assert (= bs!1312353 (and b!5647372 b!5647087)))

(assert (=> bs!1312353 (not (= lambda!303521 lambda!303501))))

(declare-fun bs!1312354 () Bool)

(assert (= bs!1312354 (and b!5647372 d!1783759)))

(assert (=> bs!1312354 (not (= lambda!303521 lambda!303514))))

(declare-fun bs!1312355 () Bool)

(assert (= bs!1312355 (and b!5647372 d!1783677)))

(assert (=> bs!1312355 (not (= lambda!303521 lambda!303494))))

(declare-fun bs!1312356 () Bool)

(assert (= bs!1312356 (and b!5647372 b!5647359)))

(assert (=> bs!1312356 (= (and (= (reg!15960 lt!2264184) (reg!15960 lt!2264222)) (= lt!2264184 lt!2264222)) (= lambda!303521 lambda!303518))))

(declare-fun bs!1312357 () Bool)

(assert (= bs!1312357 (and b!5647372 b!5647092)))

(assert (=> bs!1312357 (= (and (= (reg!15960 lt!2264184) (reg!15960 r!7292)) (= lt!2264184 r!7292)) (= lambda!303521 lambda!303500))))

(assert (=> bs!1312355 (not (= lambda!303521 lambda!303495))))

(declare-fun bs!1312358 () Bool)

(assert (= bs!1312358 (and b!5647372 d!1783781)))

(assert (=> bs!1312358 (not (= lambda!303521 lambda!303520))))

(assert (=> bs!1312350 (not (= lambda!303521 lambda!303512))))

(assert (=> bs!1312352 (not (= lambda!303521 lambda!303423))))

(declare-fun bs!1312359 () Bool)

(assert (= bs!1312359 (and b!5647372 b!5647354)))

(assert (=> bs!1312359 (not (= lambda!303521 lambda!303519))))

(assert (=> b!5647372 true))

(assert (=> b!5647372 true))

(declare-fun bs!1312360 () Bool)

(declare-fun b!5647367 () Bool)

(assert (= bs!1312360 (and b!5647367 d!1783675)))

(declare-fun lambda!303522 () Int)

(assert (=> bs!1312360 (not (= lambda!303522 lambda!303489))))

(declare-fun bs!1312361 () Bool)

(assert (= bs!1312361 (and b!5647367 d!1783751)))

(assert (=> bs!1312361 (= (and (= (regOne!31774 lt!2264184) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264184) lt!2264217)) (= lambda!303522 lambda!303513))))

(declare-fun bs!1312362 () Bool)

(assert (= bs!1312362 (and b!5647367 b!5646415)))

(assert (=> bs!1312362 (= (and (= (regOne!31774 lt!2264184) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264184) lt!2264217)) (= lambda!303522 lambda!303429))))

(declare-fun bs!1312363 () Bool)

(assert (= bs!1312363 (and b!5647367 b!5646420)))

(assert (=> bs!1312363 (= (and (= (regOne!31774 lt!2264184) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264184) (regTwo!31774 r!7292))) (= lambda!303522 lambda!303424))))

(assert (=> bs!1312362 (= (and (= (regOne!31774 lt!2264184) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 lt!2264184) lt!2264184)) (= lambda!303522 lambda!303427))))

(declare-fun bs!1312364 () Bool)

(assert (= bs!1312364 (and b!5647367 b!5647372)))

(assert (=> bs!1312364 (not (= lambda!303522 lambda!303521))))

(assert (=> bs!1312362 (not (= lambda!303522 lambda!303426))))

(assert (=> bs!1312362 (not (= lambda!303522 lambda!303428))))

(declare-fun bs!1312365 () Bool)

(assert (= bs!1312365 (and b!5647367 b!5647087)))

(assert (=> bs!1312365 (= (and (= (regOne!31774 lt!2264184) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264184) (regTwo!31774 r!7292))) (= lambda!303522 lambda!303501))))

(declare-fun bs!1312366 () Bool)

(assert (= bs!1312366 (and b!5647367 d!1783759)))

(assert (=> bs!1312366 (not (= lambda!303522 lambda!303514))))

(declare-fun bs!1312367 () Bool)

(assert (= bs!1312367 (and b!5647367 d!1783677)))

(assert (=> bs!1312367 (not (= lambda!303522 lambda!303494))))

(declare-fun bs!1312368 () Bool)

(assert (= bs!1312368 (and b!5647367 b!5647359)))

(assert (=> bs!1312368 (not (= lambda!303522 lambda!303518))))

(declare-fun bs!1312369 () Bool)

(assert (= bs!1312369 (and b!5647367 b!5647092)))

(assert (=> bs!1312369 (not (= lambda!303522 lambda!303500))))

(assert (=> bs!1312367 (= (and (= (regOne!31774 lt!2264184) (regOne!31774 r!7292)) (= (regTwo!31774 lt!2264184) (regTwo!31774 r!7292))) (= lambda!303522 lambda!303495))))

(declare-fun bs!1312370 () Bool)

(assert (= bs!1312370 (and b!5647367 d!1783781)))

(assert (=> bs!1312370 (not (= lambda!303522 lambda!303520))))

(assert (=> bs!1312361 (not (= lambda!303522 lambda!303512))))

(assert (=> bs!1312363 (not (= lambda!303522 lambda!303423))))

(declare-fun bs!1312371 () Bool)

(assert (= bs!1312371 (and b!5647367 b!5647354)))

(assert (=> bs!1312371 (= (and (= (regOne!31774 lt!2264184) (regOne!31774 lt!2264222)) (= (regTwo!31774 lt!2264184) (regTwo!31774 lt!2264222))) (= lambda!303522 lambda!303519))))

(assert (=> b!5647367 true))

(assert (=> b!5647367 true))

(declare-fun b!5647362 () Bool)

(declare-fun e!3478883 () Bool)

(assert (=> b!5647362 (= e!3478883 (= s!2326 (Cons!63069 (c!992159 lt!2264184) Nil!63069)))))

(declare-fun b!5647363 () Bool)

(declare-fun res!2388839 () Bool)

(declare-fun e!3478884 () Bool)

(assert (=> b!5647363 (=> res!2388839 e!3478884)))

(declare-fun call!427024 () Bool)

(assert (=> b!5647363 (= res!2388839 call!427024)))

(declare-fun e!3478887 () Bool)

(assert (=> b!5647363 (= e!3478887 e!3478884)))

(declare-fun bm!427019 () Bool)

(assert (=> bm!427019 (= call!427024 (isEmpty!34917 s!2326))))

(declare-fun b!5647364 () Bool)

(declare-fun c!992456 () Bool)

(assert (=> b!5647364 (= c!992456 ((_ is ElementMatch!15631) lt!2264184))))

(declare-fun e!3478888 () Bool)

(assert (=> b!5647364 (= e!3478888 e!3478883)))

(declare-fun b!5647365 () Bool)

(declare-fun e!3478885 () Bool)

(declare-fun e!3478886 () Bool)

(assert (=> b!5647365 (= e!3478885 e!3478886)))

(declare-fun res!2388840 () Bool)

(assert (=> b!5647365 (= res!2388840 (matchRSpec!2734 (regOne!31775 lt!2264184) s!2326))))

(assert (=> b!5647365 (=> res!2388840 e!3478886)))

(declare-fun d!1783789 () Bool)

(declare-fun c!992455 () Bool)

(assert (=> d!1783789 (= c!992455 ((_ is EmptyExpr!15631) lt!2264184))))

(declare-fun e!3478889 () Bool)

(assert (=> d!1783789 (= (matchRSpec!2734 lt!2264184 s!2326) e!3478889)))

(declare-fun b!5647366 () Bool)

(declare-fun c!992454 () Bool)

(assert (=> b!5647366 (= c!992454 ((_ is Union!15631) lt!2264184))))

(assert (=> b!5647366 (= e!3478883 e!3478885)))

(declare-fun call!427025 () Bool)

(declare-fun bm!427020 () Bool)

(declare-fun c!992453 () Bool)

(assert (=> bm!427020 (= call!427025 (Exists!2731 (ite c!992453 lambda!303521 lambda!303522)))))

(assert (=> b!5647367 (= e!3478887 call!427025)))

(declare-fun b!5647368 () Bool)

(assert (=> b!5647368 (= e!3478885 e!3478887)))

(assert (=> b!5647368 (= c!992453 ((_ is Star!15631) lt!2264184))))

(declare-fun b!5647369 () Bool)

(assert (=> b!5647369 (= e!3478889 call!427024)))

(declare-fun b!5647370 () Bool)

(assert (=> b!5647370 (= e!3478889 e!3478888)))

(declare-fun res!2388841 () Bool)

(assert (=> b!5647370 (= res!2388841 (not ((_ is EmptyLang!15631) lt!2264184)))))

(assert (=> b!5647370 (=> (not res!2388841) (not e!3478888))))

(declare-fun b!5647371 () Bool)

(assert (=> b!5647371 (= e!3478886 (matchRSpec!2734 (regTwo!31775 lt!2264184) s!2326))))

(assert (=> b!5647372 (= e!3478884 call!427025)))

(assert (= (and d!1783789 c!992455) b!5647369))

(assert (= (and d!1783789 (not c!992455)) b!5647370))

(assert (= (and b!5647370 res!2388841) b!5647364))

(assert (= (and b!5647364 c!992456) b!5647362))

(assert (= (and b!5647364 (not c!992456)) b!5647366))

(assert (= (and b!5647366 c!992454) b!5647365))

(assert (= (and b!5647366 (not c!992454)) b!5647368))

(assert (= (and b!5647365 (not res!2388840)) b!5647371))

(assert (= (and b!5647368 c!992453) b!5647363))

(assert (= (and b!5647368 (not c!992453)) b!5647367))

(assert (= (and b!5647363 (not res!2388839)) b!5647372))

(assert (= (or b!5647372 b!5647367) bm!427020))

(assert (= (or b!5647369 b!5647363) bm!427019))

(assert (=> bm!427019 m!6614382))

(declare-fun m!6614704 () Bool)

(assert (=> b!5647365 m!6614704))

(declare-fun m!6614706 () Bool)

(assert (=> bm!427020 m!6614706))

(declare-fun m!6614708 () Bool)

(assert (=> b!5647371 m!6614708))

(assert (=> b!5646415 d!1783789))

(declare-fun d!1783791 () Bool)

(assert (=> d!1783791 (= (matchR!7816 lt!2264184 s!2326) (matchZipper!1769 lt!2264191 s!2326))))

(declare-fun lt!2264384 () Unit!156056)

(assert (=> d!1783791 (= lt!2264384 (choose!42762 lt!2264191 (Cons!63070 lt!2264221 Nil!63070) lt!2264184 s!2326))))

(assert (=> d!1783791 (validRegex!7367 lt!2264184)))

(assert (=> d!1783791 (= (theoremZipperRegexEquiv!627 lt!2264191 (Cons!63070 lt!2264221 Nil!63070) lt!2264184 s!2326) lt!2264384)))

(declare-fun bs!1312372 () Bool)

(assert (= bs!1312372 d!1783791))

(assert (=> bs!1312372 m!6613676))

(assert (=> bs!1312372 m!6613712))

(declare-fun m!6614710 () Bool)

(assert (=> bs!1312372 m!6614710))

(assert (=> bs!1312372 m!6614544))

(assert (=> b!5646415 d!1783791))

(declare-fun bs!1312373 () Bool)

(declare-fun d!1783793 () Bool)

(assert (= bs!1312373 (and d!1783793 d!1783675)))

(declare-fun lambda!303523 () Int)

(assert (=> bs!1312373 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303523 lambda!303489))))

(declare-fun bs!1312374 () Bool)

(assert (= bs!1312374 (and d!1783793 d!1783751)))

(assert (=> bs!1312374 (not (= lambda!303523 lambda!303513))))

(declare-fun bs!1312375 () Bool)

(assert (= bs!1312375 (and d!1783793 b!5646415)))

(assert (=> bs!1312375 (not (= lambda!303523 lambda!303429))))

(declare-fun bs!1312376 () Bool)

(assert (= bs!1312376 (and d!1783793 b!5646420)))

(assert (=> bs!1312376 (not (= lambda!303523 lambda!303424))))

(assert (=> bs!1312375 (not (= lambda!303523 lambda!303427))))

(declare-fun bs!1312377 () Bool)

(assert (= bs!1312377 (and d!1783793 b!5647372)))

(assert (=> bs!1312377 (not (= lambda!303523 lambda!303521))))

(assert (=> bs!1312375 (= lambda!303523 lambda!303426)))

(assert (=> bs!1312375 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303523 lambda!303428))))

(declare-fun bs!1312378 () Bool)

(assert (= bs!1312378 (and d!1783793 b!5647367)))

(assert (=> bs!1312378 (not (= lambda!303523 lambda!303522))))

(declare-fun bs!1312379 () Bool)

(assert (= bs!1312379 (and d!1783793 b!5647087)))

(assert (=> bs!1312379 (not (= lambda!303523 lambda!303501))))

(declare-fun bs!1312380 () Bool)

(assert (= bs!1312380 (and d!1783793 d!1783759)))

(assert (=> bs!1312380 (= lambda!303523 lambda!303514)))

(declare-fun bs!1312381 () Bool)

(assert (= bs!1312381 (and d!1783793 d!1783677)))

(assert (=> bs!1312381 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303523 lambda!303494))))

(declare-fun bs!1312382 () Bool)

(assert (= bs!1312382 (and d!1783793 b!5647359)))

(assert (=> bs!1312382 (not (= lambda!303523 lambda!303518))))

(declare-fun bs!1312383 () Bool)

(assert (= bs!1312383 (and d!1783793 b!5647092)))

(assert (=> bs!1312383 (not (= lambda!303523 lambda!303500))))

(assert (=> bs!1312381 (not (= lambda!303523 lambda!303495))))

(declare-fun bs!1312384 () Bool)

(assert (= bs!1312384 (and d!1783793 d!1783781)))

(assert (=> bs!1312384 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303523 lambda!303520))))

(assert (=> bs!1312374 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303523 lambda!303512))))

(assert (=> bs!1312376 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303523 lambda!303423))))

(declare-fun bs!1312385 () Bool)

(assert (= bs!1312385 (and d!1783793 b!5647354)))

(assert (=> bs!1312385 (not (= lambda!303523 lambda!303519))))

(assert (=> d!1783793 true))

(assert (=> d!1783793 true))

(assert (=> d!1783793 true))

(declare-fun lambda!303524 () Int)

(assert (=> bs!1312373 (not (= lambda!303524 lambda!303489))))

(assert (=> bs!1312374 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303524 lambda!303513))))

(assert (=> bs!1312375 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303524 lambda!303429))))

(assert (=> bs!1312376 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303524 lambda!303424))))

(assert (=> bs!1312375 (= lambda!303524 lambda!303427)))

(assert (=> bs!1312377 (not (= lambda!303524 lambda!303521))))

(assert (=> bs!1312375 (not (= lambda!303524 lambda!303426))))

(assert (=> bs!1312375 (not (= lambda!303524 lambda!303428))))

(declare-fun bs!1312386 () Bool)

(assert (= bs!1312386 d!1783793))

(assert (=> bs!1312386 (not (= lambda!303524 lambda!303523))))

(assert (=> bs!1312378 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264184)) (= lt!2264184 (regTwo!31774 lt!2264184))) (= lambda!303524 lambda!303522))))

(assert (=> bs!1312379 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303524 lambda!303501))))

(assert (=> bs!1312380 (not (= lambda!303524 lambda!303514))))

(assert (=> bs!1312381 (not (= lambda!303524 lambda!303494))))

(assert (=> bs!1312382 (not (= lambda!303524 lambda!303518))))

(assert (=> bs!1312383 (not (= lambda!303524 lambda!303500))))

(assert (=> bs!1312381 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303524 lambda!303495))))

(assert (=> bs!1312384 (not (= lambda!303524 lambda!303520))))

(assert (=> bs!1312374 (not (= lambda!303524 lambda!303512))))

(assert (=> bs!1312376 (not (= lambda!303524 lambda!303423))))

(assert (=> bs!1312385 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264222)) (= lt!2264184 (regTwo!31774 lt!2264222))) (= lambda!303524 lambda!303519))))

(assert (=> d!1783793 true))

(assert (=> d!1783793 true))

(assert (=> d!1783793 true))

(assert (=> d!1783793 (= (Exists!2731 lambda!303523) (Exists!2731 lambda!303524))))

(declare-fun lt!2264385 () Unit!156056)

(assert (=> d!1783793 (= lt!2264385 (choose!42760 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326))))

(assert (=> d!1783793 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1783793 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1360 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326) lt!2264385)))

(declare-fun m!6614712 () Bool)

(assert (=> bs!1312386 m!6614712))

(declare-fun m!6614714 () Bool)

(assert (=> bs!1312386 m!6614714))

(declare-fun m!6614716 () Bool)

(assert (=> bs!1312386 m!6614716))

(assert (=> bs!1312386 m!6614578))

(assert (=> b!5646415 d!1783793))

(declare-fun d!1783795 () Bool)

(assert (=> d!1783795 (= (matchR!7816 lt!2264184 s!2326) (matchRSpec!2734 lt!2264184 s!2326))))

(declare-fun lt!2264386 () Unit!156056)

(assert (=> d!1783795 (= lt!2264386 (choose!42761 lt!2264184 s!2326))))

(assert (=> d!1783795 (validRegex!7367 lt!2264184)))

(assert (=> d!1783795 (= (mainMatchTheorem!2734 lt!2264184 s!2326) lt!2264386)))

(declare-fun bs!1312387 () Bool)

(assert (= bs!1312387 d!1783795))

(assert (=> bs!1312387 m!6613676))

(assert (=> bs!1312387 m!6613674))

(declare-fun m!6614718 () Bool)

(assert (=> bs!1312387 m!6614718))

(assert (=> bs!1312387 m!6614544))

(assert (=> b!5646415 d!1783795))

(declare-fun d!1783797 () Bool)

(declare-fun e!3478892 () Bool)

(assert (=> d!1783797 e!3478892))

(declare-fun res!2388844 () Bool)

(assert (=> d!1783797 (=> (not res!2388844) (not e!3478892))))

(declare-fun lt!2264389 () List!63194)

(declare-fun noDuplicate!1594 (List!63194) Bool)

(assert (=> d!1783797 (= res!2388844 (noDuplicate!1594 lt!2264389))))

(declare-fun choose!42763 ((InoxSet Context!10030)) List!63194)

(assert (=> d!1783797 (= lt!2264389 (choose!42763 z!1189))))

(assert (=> d!1783797 (= (toList!9415 z!1189) lt!2264389)))

(declare-fun b!5647375 () Bool)

(declare-fun content!11411 (List!63194) (InoxSet Context!10030))

(assert (=> b!5647375 (= e!3478892 (= (content!11411 lt!2264389) z!1189))))

(assert (= (and d!1783797 res!2388844) b!5647375))

(declare-fun m!6614720 () Bool)

(assert (=> d!1783797 m!6614720))

(declare-fun m!6614722 () Bool)

(assert (=> d!1783797 m!6614722))

(declare-fun m!6614724 () Bool)

(assert (=> b!5647375 m!6614724))

(assert (=> b!5646414 d!1783797))

(declare-fun bs!1312388 () Bool)

(declare-fun d!1783799 () Bool)

(assert (= bs!1312388 (and d!1783799 d!1783769)))

(declare-fun lambda!303527 () Int)

(assert (=> bs!1312388 (= lambda!303527 lambda!303516)))

(declare-fun bs!1312389 () Bool)

(assert (= bs!1312389 (and d!1783799 d!1783713)))

(assert (=> bs!1312389 (= lambda!303527 lambda!303504)))

(declare-fun bs!1312390 () Bool)

(assert (= bs!1312390 (and d!1783799 d!1783727)))

(assert (=> bs!1312390 (= lambda!303527 lambda!303505)))

(declare-fun bs!1312391 () Bool)

(assert (= bs!1312391 (and d!1783799 d!1783761)))

(assert (=> bs!1312391 (= lambda!303527 lambda!303515)))

(declare-fun bs!1312392 () Bool)

(assert (= bs!1312392 (and d!1783799 d!1783775)))

(assert (=> bs!1312392 (= lambda!303527 lambda!303517)))

(declare-fun bs!1312393 () Bool)

(assert (= bs!1312393 (and d!1783799 d!1783741)))

(assert (=> bs!1312393 (= lambda!303527 lambda!303511)))

(declare-fun b!5647396 () Bool)

(declare-fun e!3478905 () Regex!15631)

(assert (=> b!5647396 (= e!3478905 (Union!15631 (h!69516 (unfocusZipperList!1059 zl!343)) (generalisedUnion!1494 (t!376490 (unfocusZipperList!1059 zl!343)))))))

(declare-fun b!5647397 () Bool)

(declare-fun e!3478907 () Bool)

(declare-fun lt!2264392 () Regex!15631)

(assert (=> b!5647397 (= e!3478907 (= lt!2264392 (head!12007 (unfocusZipperList!1059 zl!343))))))

(declare-fun b!5647398 () Bool)

(declare-fun e!3478908 () Regex!15631)

(assert (=> b!5647398 (= e!3478908 e!3478905)))

(declare-fun c!992465 () Bool)

(assert (=> b!5647398 (= c!992465 ((_ is Cons!63068) (unfocusZipperList!1059 zl!343)))))

(declare-fun b!5647399 () Bool)

(declare-fun e!3478910 () Bool)

(declare-fun isEmptyLang!1182 (Regex!15631) Bool)

(assert (=> b!5647399 (= e!3478910 (isEmptyLang!1182 lt!2264392))))

(declare-fun b!5647400 () Bool)

(assert (=> b!5647400 (= e!3478908 (h!69516 (unfocusZipperList!1059 zl!343)))))

(declare-fun e!3478906 () Bool)

(assert (=> d!1783799 e!3478906))

(declare-fun res!2388850 () Bool)

(assert (=> d!1783799 (=> (not res!2388850) (not e!3478906))))

(assert (=> d!1783799 (= res!2388850 (validRegex!7367 lt!2264392))))

(assert (=> d!1783799 (= lt!2264392 e!3478908)))

(declare-fun c!992468 () Bool)

(declare-fun e!3478909 () Bool)

(assert (=> d!1783799 (= c!992468 e!3478909)))

(declare-fun res!2388849 () Bool)

(assert (=> d!1783799 (=> (not res!2388849) (not e!3478909))))

(assert (=> d!1783799 (= res!2388849 ((_ is Cons!63068) (unfocusZipperList!1059 zl!343)))))

(assert (=> d!1783799 (forall!14788 (unfocusZipperList!1059 zl!343) lambda!303527)))

(assert (=> d!1783799 (= (generalisedUnion!1494 (unfocusZipperList!1059 zl!343)) lt!2264392)))

(declare-fun b!5647401 () Bool)

(declare-fun isUnion!612 (Regex!15631) Bool)

(assert (=> b!5647401 (= e!3478907 (isUnion!612 lt!2264392))))

(declare-fun b!5647402 () Bool)

(assert (=> b!5647402 (= e!3478910 e!3478907)))

(declare-fun c!992466 () Bool)

(assert (=> b!5647402 (= c!992466 (isEmpty!34913 (tail!11102 (unfocusZipperList!1059 zl!343))))))

(declare-fun b!5647403 () Bool)

(assert (=> b!5647403 (= e!3478906 e!3478910)))

(declare-fun c!992467 () Bool)

(assert (=> b!5647403 (= c!992467 (isEmpty!34913 (unfocusZipperList!1059 zl!343)))))

(declare-fun b!5647404 () Bool)

(assert (=> b!5647404 (= e!3478905 EmptyLang!15631)))

(declare-fun b!5647405 () Bool)

(assert (=> b!5647405 (= e!3478909 (isEmpty!34913 (t!376490 (unfocusZipperList!1059 zl!343))))))

(assert (= (and d!1783799 res!2388849) b!5647405))

(assert (= (and d!1783799 c!992468) b!5647400))

(assert (= (and d!1783799 (not c!992468)) b!5647398))

(assert (= (and b!5647398 c!992465) b!5647396))

(assert (= (and b!5647398 (not c!992465)) b!5647404))

(assert (= (and d!1783799 res!2388850) b!5647403))

(assert (= (and b!5647403 c!992467) b!5647399))

(assert (= (and b!5647403 (not c!992467)) b!5647402))

(assert (= (and b!5647402 c!992466) b!5647397))

(assert (= (and b!5647402 (not c!992466)) b!5647401))

(assert (=> b!5647402 m!6613664))

(declare-fun m!6614726 () Bool)

(assert (=> b!5647402 m!6614726))

(assert (=> b!5647402 m!6614726))

(declare-fun m!6614728 () Bool)

(assert (=> b!5647402 m!6614728))

(declare-fun m!6614730 () Bool)

(assert (=> b!5647396 m!6614730))

(assert (=> b!5647397 m!6613664))

(declare-fun m!6614732 () Bool)

(assert (=> b!5647397 m!6614732))

(assert (=> b!5647403 m!6613664))

(declare-fun m!6614734 () Bool)

(assert (=> b!5647403 m!6614734))

(declare-fun m!6614736 () Bool)

(assert (=> b!5647401 m!6614736))

(declare-fun m!6614738 () Bool)

(assert (=> b!5647399 m!6614738))

(declare-fun m!6614740 () Bool)

(assert (=> d!1783799 m!6614740))

(assert (=> d!1783799 m!6613664))

(declare-fun m!6614742 () Bool)

(assert (=> d!1783799 m!6614742))

(declare-fun m!6614744 () Bool)

(assert (=> b!5647405 m!6614744))

(assert (=> b!5646426 d!1783799))

(declare-fun bs!1312394 () Bool)

(declare-fun d!1783801 () Bool)

(assert (= bs!1312394 (and d!1783801 d!1783769)))

(declare-fun lambda!303530 () Int)

(assert (=> bs!1312394 (= lambda!303530 lambda!303516)))

(declare-fun bs!1312395 () Bool)

(assert (= bs!1312395 (and d!1783801 d!1783799)))

(assert (=> bs!1312395 (= lambda!303530 lambda!303527)))

(declare-fun bs!1312396 () Bool)

(assert (= bs!1312396 (and d!1783801 d!1783713)))

(assert (=> bs!1312396 (= lambda!303530 lambda!303504)))

(declare-fun bs!1312397 () Bool)

(assert (= bs!1312397 (and d!1783801 d!1783727)))

(assert (=> bs!1312397 (= lambda!303530 lambda!303505)))

(declare-fun bs!1312398 () Bool)

(assert (= bs!1312398 (and d!1783801 d!1783761)))

(assert (=> bs!1312398 (= lambda!303530 lambda!303515)))

(declare-fun bs!1312399 () Bool)

(assert (= bs!1312399 (and d!1783801 d!1783775)))

(assert (=> bs!1312399 (= lambda!303530 lambda!303517)))

(declare-fun bs!1312400 () Bool)

(assert (= bs!1312400 (and d!1783801 d!1783741)))

(assert (=> bs!1312400 (= lambda!303530 lambda!303511)))

(declare-fun lt!2264395 () List!63192)

(assert (=> d!1783801 (forall!14788 lt!2264395 lambda!303530)))

(declare-fun e!3478913 () List!63192)

(assert (=> d!1783801 (= lt!2264395 e!3478913)))

(declare-fun c!992471 () Bool)

(assert (=> d!1783801 (= c!992471 ((_ is Cons!63070) zl!343))))

(assert (=> d!1783801 (= (unfocusZipperList!1059 zl!343) lt!2264395)))

(declare-fun b!5647410 () Bool)

(assert (=> b!5647410 (= e!3478913 (Cons!63068 (generalisedConcat!1246 (exprs!5515 (h!69518 zl!343))) (unfocusZipperList!1059 (t!376492 zl!343))))))

(declare-fun b!5647411 () Bool)

(assert (=> b!5647411 (= e!3478913 Nil!63068)))

(assert (= (and d!1783801 c!992471) b!5647410))

(assert (= (and d!1783801 (not c!992471)) b!5647411))

(declare-fun m!6614746 () Bool)

(assert (=> d!1783801 m!6614746))

(assert (=> b!5647410 m!6613738))

(declare-fun m!6614748 () Bool)

(assert (=> b!5647410 m!6614748))

(assert (=> b!5646426 d!1783801))

(declare-fun b!5647418 () Bool)

(assert (=> b!5647418 true))

(declare-fun bs!1312401 () Bool)

(declare-fun b!5647420 () Bool)

(assert (= bs!1312401 (and b!5647420 b!5647418)))

(declare-fun lt!2264407 () Int)

(declare-fun lt!2264406 () Int)

(declare-fun lambda!303539 () Int)

(declare-fun lambda!303538 () Int)

(assert (=> bs!1312401 (= (= lt!2264406 lt!2264407) (= lambda!303539 lambda!303538))))

(assert (=> b!5647420 true))

(declare-fun d!1783803 () Bool)

(declare-fun e!3478919 () Bool)

(assert (=> d!1783803 e!3478919))

(declare-fun res!2388853 () Bool)

(assert (=> d!1783803 (=> (not res!2388853) (not e!3478919))))

(assert (=> d!1783803 (= res!2388853 (>= lt!2264406 0))))

(declare-fun e!3478918 () Int)

(assert (=> d!1783803 (= lt!2264406 e!3478918)))

(declare-fun c!992480 () Bool)

(assert (=> d!1783803 (= c!992480 ((_ is Cons!63070) lt!2264185))))

(assert (=> d!1783803 (= (zipperDepth!208 lt!2264185) lt!2264406)))

(assert (=> b!5647418 (= e!3478918 lt!2264407)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!119 (Context!10030) Int)

(assert (=> b!5647418 (= lt!2264407 (maxBigInt!0 (contextDepth!119 (h!69518 lt!2264185)) (zipperDepth!208 (t!376492 lt!2264185))))))

(declare-fun lt!2264404 () Unit!156056)

(declare-fun lambda!303537 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!109 (List!63194 Int Int Int) Unit!156056)

(assert (=> b!5647418 (= lt!2264404 (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 lt!2264185) lt!2264407 (zipperDepth!208 (t!376492 lt!2264185)) lambda!303537))))

(declare-fun forall!14789 (List!63194 Int) Bool)

(assert (=> b!5647418 (forall!14789 (t!376492 lt!2264185) lambda!303538)))

(declare-fun lt!2264405 () Unit!156056)

(assert (=> b!5647418 (= lt!2264405 lt!2264404)))

(declare-fun b!5647419 () Bool)

(assert (=> b!5647419 (= e!3478918 0)))

(assert (=> b!5647420 (= e!3478919 (forall!14789 lt!2264185 lambda!303539))))

(assert (= (and d!1783803 c!992480) b!5647418))

(assert (= (and d!1783803 (not c!992480)) b!5647419))

(assert (= (and d!1783803 res!2388853) b!5647420))

(declare-fun m!6614750 () Bool)

(assert (=> b!5647418 m!6614750))

(declare-fun m!6614752 () Bool)

(assert (=> b!5647418 m!6614752))

(declare-fun m!6614754 () Bool)

(assert (=> b!5647418 m!6614754))

(assert (=> b!5647418 m!6614752))

(declare-fun m!6614756 () Bool)

(assert (=> b!5647418 m!6614756))

(assert (=> b!5647418 m!6614752))

(assert (=> b!5647418 m!6614750))

(declare-fun m!6614758 () Bool)

(assert (=> b!5647418 m!6614758))

(declare-fun m!6614760 () Bool)

(assert (=> b!5647420 m!6614760))

(assert (=> b!5646447 d!1783803))

(declare-fun bs!1312402 () Bool)

(declare-fun b!5647423 () Bool)

(assert (= bs!1312402 (and b!5647423 b!5647418)))

(declare-fun lambda!303540 () Int)

(assert (=> bs!1312402 (= lambda!303540 lambda!303537)))

(declare-fun lambda!303541 () Int)

(declare-fun lt!2264411 () Int)

(assert (=> bs!1312402 (= (= lt!2264411 lt!2264407) (= lambda!303541 lambda!303538))))

(declare-fun bs!1312403 () Bool)

(assert (= bs!1312403 (and b!5647423 b!5647420)))

(assert (=> bs!1312403 (= (= lt!2264411 lt!2264406) (= lambda!303541 lambda!303539))))

(assert (=> b!5647423 true))

(declare-fun bs!1312404 () Bool)

(declare-fun b!5647425 () Bool)

(assert (= bs!1312404 (and b!5647425 b!5647418)))

(declare-fun lt!2264410 () Int)

(declare-fun lambda!303542 () Int)

(assert (=> bs!1312404 (= (= lt!2264410 lt!2264407) (= lambda!303542 lambda!303538))))

(declare-fun bs!1312405 () Bool)

(assert (= bs!1312405 (and b!5647425 b!5647420)))

(assert (=> bs!1312405 (= (= lt!2264410 lt!2264406) (= lambda!303542 lambda!303539))))

(declare-fun bs!1312406 () Bool)

(assert (= bs!1312406 (and b!5647425 b!5647423)))

(assert (=> bs!1312406 (= (= lt!2264410 lt!2264411) (= lambda!303542 lambda!303541))))

(assert (=> b!5647425 true))

(declare-fun d!1783805 () Bool)

(declare-fun e!3478921 () Bool)

(assert (=> d!1783805 e!3478921))

(declare-fun res!2388854 () Bool)

(assert (=> d!1783805 (=> (not res!2388854) (not e!3478921))))

(assert (=> d!1783805 (= res!2388854 (>= lt!2264410 0))))

(declare-fun e!3478920 () Int)

(assert (=> d!1783805 (= lt!2264410 e!3478920)))

(declare-fun c!992481 () Bool)

(assert (=> d!1783805 (= c!992481 ((_ is Cons!63070) zl!343))))

(assert (=> d!1783805 (= (zipperDepth!208 zl!343) lt!2264410)))

(assert (=> b!5647423 (= e!3478920 lt!2264411)))

(assert (=> b!5647423 (= lt!2264411 (maxBigInt!0 (contextDepth!119 (h!69518 zl!343)) (zipperDepth!208 (t!376492 zl!343))))))

(declare-fun lt!2264408 () Unit!156056)

(assert (=> b!5647423 (= lt!2264408 (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 zl!343) lt!2264411 (zipperDepth!208 (t!376492 zl!343)) lambda!303540))))

(assert (=> b!5647423 (forall!14789 (t!376492 zl!343) lambda!303541)))

(declare-fun lt!2264409 () Unit!156056)

(assert (=> b!5647423 (= lt!2264409 lt!2264408)))

(declare-fun b!5647424 () Bool)

(assert (=> b!5647424 (= e!3478920 0)))

(assert (=> b!5647425 (= e!3478921 (forall!14789 zl!343 lambda!303542))))

(assert (= (and d!1783805 c!992481) b!5647423))

(assert (= (and d!1783805 (not c!992481)) b!5647424))

(assert (= (and d!1783805 res!2388854) b!5647425))

(declare-fun m!6614762 () Bool)

(assert (=> b!5647423 m!6614762))

(declare-fun m!6614764 () Bool)

(assert (=> b!5647423 m!6614764))

(declare-fun m!6614766 () Bool)

(assert (=> b!5647423 m!6614766))

(assert (=> b!5647423 m!6614764))

(declare-fun m!6614768 () Bool)

(assert (=> b!5647423 m!6614768))

(assert (=> b!5647423 m!6614764))

(assert (=> b!5647423 m!6614762))

(declare-fun m!6614770 () Bool)

(assert (=> b!5647423 m!6614770))

(declare-fun m!6614772 () Bool)

(assert (=> b!5647425 m!6614772))

(assert (=> b!5646447 d!1783805))

(assert (=> b!5646446 d!1783655))

(declare-fun d!1783807 () Bool)

(assert (=> d!1783807 (= (nullable!5663 (regOne!31774 (regOne!31774 r!7292))) (nullableFct!1760 (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun bs!1312407 () Bool)

(assert (= bs!1312407 d!1783807))

(declare-fun m!6614774 () Bool)

(assert (=> bs!1312407 m!6614774))

(assert (=> b!5646425 d!1783807))

(assert (=> b!5646427 d!1783657))

(declare-fun d!1783809 () Bool)

(assert (=> d!1783809 (= (flatMap!1244 lt!2264195 lambda!303425) (dynLambda!24674 lambda!303425 lt!2264194))))

(declare-fun lt!2264412 () Unit!156056)

(assert (=> d!1783809 (= lt!2264412 (choose!42757 lt!2264195 lt!2264194 lambda!303425))))

(assert (=> d!1783809 (= lt!2264195 (store ((as const (Array Context!10030 Bool)) false) lt!2264194 true))))

(assert (=> d!1783809 (= (lemmaFlatMapOnSingletonSet!776 lt!2264195 lt!2264194 lambda!303425) lt!2264412)))

(declare-fun b_lambda!213643 () Bool)

(assert (=> (not b_lambda!213643) (not d!1783809)))

(declare-fun bs!1312408 () Bool)

(assert (= bs!1312408 d!1783809))

(assert (=> bs!1312408 m!6613660))

(declare-fun m!6614776 () Bool)

(assert (=> bs!1312408 m!6614776))

(declare-fun m!6614778 () Bool)

(assert (=> bs!1312408 m!6614778))

(assert (=> bs!1312408 m!6613656))

(assert (=> b!5646427 d!1783809))

(declare-fun d!1783811 () Bool)

(assert (=> d!1783811 (= (flatMap!1244 lt!2264195 lambda!303425) (choose!42756 lt!2264195 lambda!303425))))

(declare-fun bs!1312409 () Bool)

(assert (= bs!1312409 d!1783811))

(declare-fun m!6614780 () Bool)

(assert (=> bs!1312409 m!6614780))

(assert (=> b!5646427 d!1783811))

(declare-fun bs!1312410 () Bool)

(declare-fun d!1783813 () Bool)

(assert (= bs!1312410 (and d!1783813 b!5646443)))

(declare-fun lambda!303543 () Int)

(assert (=> bs!1312410 (= lambda!303543 lambda!303425)))

(declare-fun bs!1312411 () Bool)

(assert (= bs!1312411 (and d!1783813 d!1783735)))

(assert (=> bs!1312411 (= lambda!303543 lambda!303508)))

(assert (=> d!1783813 true))

(assert (=> d!1783813 (= (derivationStepZipper!1718 lt!2264195 (h!69517 s!2326)) (flatMap!1244 lt!2264195 lambda!303543))))

(declare-fun bs!1312412 () Bool)

(assert (= bs!1312412 d!1783813))

(declare-fun m!6614782 () Bool)

(assert (=> bs!1312412 m!6614782))

(assert (=> b!5646427 d!1783813))

(declare-fun d!1783815 () Bool)

(declare-fun c!992483 () Bool)

(declare-fun e!3478924 () Bool)

(assert (=> d!1783815 (= c!992483 e!3478924)))

(declare-fun res!2388855 () Bool)

(assert (=> d!1783815 (=> (not res!2388855) (not e!3478924))))

(assert (=> d!1783815 (= res!2388855 ((_ is Cons!63068) (exprs!5515 lt!2264194)))))

(declare-fun e!3478923 () (InoxSet Context!10030))

(assert (=> d!1783815 (= (derivationStepZipperUp!899 lt!2264194 (h!69517 s!2326)) e!3478923)))

(declare-fun b!5647426 () Bool)

(declare-fun e!3478922 () (InoxSet Context!10030))

(declare-fun call!427026 () (InoxSet Context!10030))

(assert (=> b!5647426 (= e!3478922 call!427026)))

(declare-fun b!5647427 () Bool)

(assert (=> b!5647427 (= e!3478923 e!3478922)))

(declare-fun c!992482 () Bool)

(assert (=> b!5647427 (= c!992482 ((_ is Cons!63068) (exprs!5515 lt!2264194)))))

(declare-fun bm!427021 () Bool)

(assert (=> bm!427021 (= call!427026 (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264194)) (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (h!69517 s!2326)))))

(declare-fun b!5647428 () Bool)

(assert (=> b!5647428 (= e!3478922 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5647429 () Bool)

(assert (=> b!5647429 (= e!3478923 ((_ map or) call!427026 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (h!69517 s!2326))))))

(declare-fun b!5647430 () Bool)

(assert (=> b!5647430 (= e!3478924 (nullable!5663 (h!69516 (exprs!5515 lt!2264194))))))

(assert (= (and d!1783815 res!2388855) b!5647430))

(assert (= (and d!1783815 c!992483) b!5647429))

(assert (= (and d!1783815 (not c!992483)) b!5647427))

(assert (= (and b!5647427 c!992482) b!5647426))

(assert (= (and b!5647427 (not c!992482)) b!5647428))

(assert (= (or b!5647429 b!5647426) bm!427021))

(declare-fun m!6614784 () Bool)

(assert (=> bm!427021 m!6614784))

(declare-fun m!6614786 () Bool)

(assert (=> b!5647429 m!6614786))

(declare-fun m!6614788 () Bool)

(assert (=> b!5647430 m!6614788))

(assert (=> b!5646427 d!1783815))

(declare-fun bm!427028 () Bool)

(declare-fun call!427035 () Bool)

(declare-fun call!427034 () Bool)

(assert (=> bm!427028 (= call!427035 call!427034)))

(declare-fun b!5647449 () Bool)

(declare-fun res!2388869 () Bool)

(declare-fun e!3478940 () Bool)

(assert (=> b!5647449 (=> (not res!2388869) (not e!3478940))))

(assert (=> b!5647449 (= res!2388869 call!427035)))

(declare-fun e!3478942 () Bool)

(assert (=> b!5647449 (= e!3478942 e!3478940)))

(declare-fun b!5647450 () Bool)

(declare-fun res!2388870 () Bool)

(declare-fun e!3478943 () Bool)

(assert (=> b!5647450 (=> res!2388870 e!3478943)))

(assert (=> b!5647450 (= res!2388870 (not ((_ is Concat!24476) r!7292)))))

(assert (=> b!5647450 (= e!3478942 e!3478943)))

(declare-fun bm!427029 () Bool)

(declare-fun call!427033 () Bool)

(declare-fun c!992489 () Bool)

(assert (=> bm!427029 (= call!427033 (validRegex!7367 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))

(declare-fun d!1783817 () Bool)

(declare-fun res!2388868 () Bool)

(declare-fun e!3478945 () Bool)

(assert (=> d!1783817 (=> res!2388868 e!3478945)))

(assert (=> d!1783817 (= res!2388868 ((_ is ElementMatch!15631) r!7292))))

(assert (=> d!1783817 (= (validRegex!7367 r!7292) e!3478945)))

(declare-fun b!5647451 () Bool)

(declare-fun e!3478939 () Bool)

(assert (=> b!5647451 (= e!3478939 e!3478942)))

(assert (=> b!5647451 (= c!992489 ((_ is Union!15631) r!7292))))

(declare-fun b!5647452 () Bool)

(assert (=> b!5647452 (= e!3478945 e!3478939)))

(declare-fun c!992488 () Bool)

(assert (=> b!5647452 (= c!992488 ((_ is Star!15631) r!7292))))

(declare-fun bm!427030 () Bool)

(assert (=> bm!427030 (= call!427034 (validRegex!7367 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))

(declare-fun b!5647453 () Bool)

(declare-fun e!3478944 () Bool)

(assert (=> b!5647453 (= e!3478944 call!427034)))

(declare-fun b!5647454 () Bool)

(declare-fun e!3478941 () Bool)

(assert (=> b!5647454 (= e!3478941 call!427033)))

(declare-fun b!5647455 () Bool)

(assert (=> b!5647455 (= e!3478943 e!3478941)))

(declare-fun res!2388867 () Bool)

(assert (=> b!5647455 (=> (not res!2388867) (not e!3478941))))

(assert (=> b!5647455 (= res!2388867 call!427035)))

(declare-fun b!5647456 () Bool)

(assert (=> b!5647456 (= e!3478940 call!427033)))

(declare-fun b!5647457 () Bool)

(assert (=> b!5647457 (= e!3478939 e!3478944)))

(declare-fun res!2388866 () Bool)

(assert (=> b!5647457 (= res!2388866 (not (nullable!5663 (reg!15960 r!7292))))))

(assert (=> b!5647457 (=> (not res!2388866) (not e!3478944))))

(assert (= (and d!1783817 (not res!2388868)) b!5647452))

(assert (= (and b!5647452 c!992488) b!5647457))

(assert (= (and b!5647452 (not c!992488)) b!5647451))

(assert (= (and b!5647457 res!2388866) b!5647453))

(assert (= (and b!5647451 c!992489) b!5647449))

(assert (= (and b!5647451 (not c!992489)) b!5647450))

(assert (= (and b!5647449 res!2388869) b!5647456))

(assert (= (and b!5647450 (not res!2388870)) b!5647455))

(assert (= (and b!5647455 res!2388867) b!5647454))

(assert (= (or b!5647456 b!5647454) bm!427029))

(assert (= (or b!5647449 b!5647455) bm!427028))

(assert (= (or b!5647453 bm!427028) bm!427030))

(declare-fun m!6614790 () Bool)

(assert (=> bm!427029 m!6614790))

(declare-fun m!6614792 () Bool)

(assert (=> bm!427030 m!6614792))

(declare-fun m!6614794 () Bool)

(assert (=> b!5647457 m!6614794))

(assert (=> start!584070 d!1783817))

(declare-fun b!5647471 () Bool)

(declare-fun e!3478948 () Bool)

(declare-fun tp!1565119 () Bool)

(declare-fun tp!1565120 () Bool)

(assert (=> b!5647471 (= e!3478948 (and tp!1565119 tp!1565120))))

(declare-fun b!5647468 () Bool)

(assert (=> b!5647468 (= e!3478948 tp_is_empty!40515)))

(assert (=> b!5646418 (= tp!1565047 e!3478948)))

(declare-fun b!5647469 () Bool)

(declare-fun tp!1565122 () Bool)

(declare-fun tp!1565118 () Bool)

(assert (=> b!5647469 (= e!3478948 (and tp!1565122 tp!1565118))))

(declare-fun b!5647470 () Bool)

(declare-fun tp!1565121 () Bool)

(assert (=> b!5647470 (= e!3478948 tp!1565121)))

(assert (= (and b!5646418 ((_ is ElementMatch!15631) (regOne!31775 r!7292))) b!5647468))

(assert (= (and b!5646418 ((_ is Concat!24476) (regOne!31775 r!7292))) b!5647469))

(assert (= (and b!5646418 ((_ is Star!15631) (regOne!31775 r!7292))) b!5647470))

(assert (= (and b!5646418 ((_ is Union!15631) (regOne!31775 r!7292))) b!5647471))

(declare-fun b!5647475 () Bool)

(declare-fun e!3478949 () Bool)

(declare-fun tp!1565124 () Bool)

(declare-fun tp!1565125 () Bool)

(assert (=> b!5647475 (= e!3478949 (and tp!1565124 tp!1565125))))

(declare-fun b!5647472 () Bool)

(assert (=> b!5647472 (= e!3478949 tp_is_empty!40515)))

(assert (=> b!5646418 (= tp!1565049 e!3478949)))

(declare-fun b!5647473 () Bool)

(declare-fun tp!1565127 () Bool)

(declare-fun tp!1565123 () Bool)

(assert (=> b!5647473 (= e!3478949 (and tp!1565127 tp!1565123))))

(declare-fun b!5647474 () Bool)

(declare-fun tp!1565126 () Bool)

(assert (=> b!5647474 (= e!3478949 tp!1565126)))

(assert (= (and b!5646418 ((_ is ElementMatch!15631) (regTwo!31775 r!7292))) b!5647472))

(assert (= (and b!5646418 ((_ is Concat!24476) (regTwo!31775 r!7292))) b!5647473))

(assert (= (and b!5646418 ((_ is Star!15631) (regTwo!31775 r!7292))) b!5647474))

(assert (= (and b!5646418 ((_ is Union!15631) (regTwo!31775 r!7292))) b!5647475))

(declare-fun b!5647483 () Bool)

(declare-fun e!3478955 () Bool)

(declare-fun tp!1565132 () Bool)

(assert (=> b!5647483 (= e!3478955 tp!1565132)))

(declare-fun e!3478954 () Bool)

(declare-fun b!5647482 () Bool)

(declare-fun tp!1565133 () Bool)

(assert (=> b!5647482 (= e!3478954 (and (inv!82324 (h!69518 (t!376492 zl!343))) e!3478955 tp!1565133))))

(assert (=> b!5646435 (= tp!1565044 e!3478954)))

(assert (= b!5647482 b!5647483))

(assert (= (and b!5646435 ((_ is Cons!63070) (t!376492 zl!343))) b!5647482))

(declare-fun m!6614796 () Bool)

(assert (=> b!5647482 m!6614796))

(declare-fun b!5647488 () Bool)

(declare-fun e!3478958 () Bool)

(declare-fun tp!1565138 () Bool)

(declare-fun tp!1565139 () Bool)

(assert (=> b!5647488 (= e!3478958 (and tp!1565138 tp!1565139))))

(assert (=> b!5646441 (= tp!1565046 e!3478958)))

(assert (= (and b!5646441 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343)))) b!5647488))

(declare-fun b!5647493 () Bool)

(declare-fun e!3478961 () Bool)

(declare-fun tp!1565142 () Bool)

(assert (=> b!5647493 (= e!3478961 (and tp_is_empty!40515 tp!1565142))))

(assert (=> b!5646423 (= tp!1565043 e!3478961)))

(assert (= (and b!5646423 ((_ is Cons!63069) (t!376491 s!2326))) b!5647493))

(declare-fun b!5647494 () Bool)

(declare-fun e!3478962 () Bool)

(declare-fun tp!1565143 () Bool)

(declare-fun tp!1565144 () Bool)

(assert (=> b!5647494 (= e!3478962 (and tp!1565143 tp!1565144))))

(assert (=> b!5646440 (= tp!1565048 e!3478962)))

(assert (= (and b!5646440 ((_ is Cons!63068) (exprs!5515 setElem!37712))) b!5647494))

(declare-fun b!5647498 () Bool)

(declare-fun e!3478963 () Bool)

(declare-fun tp!1565146 () Bool)

(declare-fun tp!1565147 () Bool)

(assert (=> b!5647498 (= e!3478963 (and tp!1565146 tp!1565147))))

(declare-fun b!5647495 () Bool)

(assert (=> b!5647495 (= e!3478963 tp_is_empty!40515)))

(assert (=> b!5646429 (= tp!1565045 e!3478963)))

(declare-fun b!5647496 () Bool)

(declare-fun tp!1565149 () Bool)

(declare-fun tp!1565145 () Bool)

(assert (=> b!5647496 (= e!3478963 (and tp!1565149 tp!1565145))))

(declare-fun b!5647497 () Bool)

(declare-fun tp!1565148 () Bool)

(assert (=> b!5647497 (= e!3478963 tp!1565148)))

(assert (= (and b!5646429 ((_ is ElementMatch!15631) (reg!15960 r!7292))) b!5647495))

(assert (= (and b!5646429 ((_ is Concat!24476) (reg!15960 r!7292))) b!5647496))

(assert (= (and b!5646429 ((_ is Star!15631) (reg!15960 r!7292))) b!5647497))

(assert (= (and b!5646429 ((_ is Union!15631) (reg!15960 r!7292))) b!5647498))

(declare-fun b!5647502 () Bool)

(declare-fun e!3478964 () Bool)

(declare-fun tp!1565151 () Bool)

(declare-fun tp!1565152 () Bool)

(assert (=> b!5647502 (= e!3478964 (and tp!1565151 tp!1565152))))

(declare-fun b!5647499 () Bool)

(assert (=> b!5647499 (= e!3478964 tp_is_empty!40515)))

(assert (=> b!5646433 (= tp!1565041 e!3478964)))

(declare-fun b!5647500 () Bool)

(declare-fun tp!1565154 () Bool)

(declare-fun tp!1565150 () Bool)

(assert (=> b!5647500 (= e!3478964 (and tp!1565154 tp!1565150))))

(declare-fun b!5647501 () Bool)

(declare-fun tp!1565153 () Bool)

(assert (=> b!5647501 (= e!3478964 tp!1565153)))

(assert (= (and b!5646433 ((_ is ElementMatch!15631) (regOne!31774 r!7292))) b!5647499))

(assert (= (and b!5646433 ((_ is Concat!24476) (regOne!31774 r!7292))) b!5647500))

(assert (= (and b!5646433 ((_ is Star!15631) (regOne!31774 r!7292))) b!5647501))

(assert (= (and b!5646433 ((_ is Union!15631) (regOne!31774 r!7292))) b!5647502))

(declare-fun b!5647506 () Bool)

(declare-fun e!3478965 () Bool)

(declare-fun tp!1565156 () Bool)

(declare-fun tp!1565157 () Bool)

(assert (=> b!5647506 (= e!3478965 (and tp!1565156 tp!1565157))))

(declare-fun b!5647503 () Bool)

(assert (=> b!5647503 (= e!3478965 tp_is_empty!40515)))

(assert (=> b!5646433 (= tp!1565040 e!3478965)))

(declare-fun b!5647504 () Bool)

(declare-fun tp!1565159 () Bool)

(declare-fun tp!1565155 () Bool)

(assert (=> b!5647504 (= e!3478965 (and tp!1565159 tp!1565155))))

(declare-fun b!5647505 () Bool)

(declare-fun tp!1565158 () Bool)

(assert (=> b!5647505 (= e!3478965 tp!1565158)))

(assert (= (and b!5646433 ((_ is ElementMatch!15631) (regTwo!31774 r!7292))) b!5647503))

(assert (= (and b!5646433 ((_ is Concat!24476) (regTwo!31774 r!7292))) b!5647504))

(assert (= (and b!5646433 ((_ is Star!15631) (regTwo!31774 r!7292))) b!5647505))

(assert (= (and b!5646433 ((_ is Union!15631) (regTwo!31774 r!7292))) b!5647506))

(declare-fun condSetEmpty!37718 () Bool)

(assert (=> setNonEmpty!37712 (= condSetEmpty!37718 (= setRest!37712 ((as const (Array Context!10030 Bool)) false)))))

(declare-fun setRes!37718 () Bool)

(assert (=> setNonEmpty!37712 (= tp!1565042 setRes!37718)))

(declare-fun setIsEmpty!37718 () Bool)

(assert (=> setIsEmpty!37718 setRes!37718))

(declare-fun setElem!37718 () Context!10030)

(declare-fun setNonEmpty!37718 () Bool)

(declare-fun e!3478968 () Bool)

(declare-fun tp!1565164 () Bool)

(assert (=> setNonEmpty!37718 (= setRes!37718 (and tp!1565164 (inv!82324 setElem!37718) e!3478968))))

(declare-fun setRest!37718 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37718 (= setRest!37712 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37718 true) setRest!37718))))

(declare-fun b!5647511 () Bool)

(declare-fun tp!1565165 () Bool)

(assert (=> b!5647511 (= e!3478968 tp!1565165)))

(assert (= (and setNonEmpty!37712 condSetEmpty!37718) setIsEmpty!37718))

(assert (= (and setNonEmpty!37712 (not condSetEmpty!37718)) setNonEmpty!37718))

(assert (= setNonEmpty!37718 b!5647511))

(declare-fun m!6614798 () Bool)

(assert (=> setNonEmpty!37718 m!6614798))

(declare-fun b_lambda!213645 () Bool)

(assert (= b_lambda!213643 (or b!5646443 b_lambda!213645)))

(declare-fun bs!1312413 () Bool)

(declare-fun d!1783819 () Bool)

(assert (= bs!1312413 (and d!1783819 b!5646443)))

(assert (=> bs!1312413 (= (dynLambda!24674 lambda!303425 lt!2264194) (derivationStepZipperUp!899 lt!2264194 (h!69517 s!2326)))))

(assert (=> bs!1312413 m!6613658))

(assert (=> d!1783809 d!1783819))

(declare-fun b_lambda!213647 () Bool)

(assert (= b_lambda!213639 (or b!5646443 b_lambda!213647)))

(declare-fun bs!1312414 () Bool)

(declare-fun d!1783821 () Bool)

(assert (= bs!1312414 (and d!1783821 b!5646443)))

(assert (=> bs!1312414 (= (dynLambda!24674 lambda!303425 lt!2264221) (derivationStepZipperUp!899 lt!2264221 (h!69517 s!2326)))))

(assert (=> bs!1312414 m!6613650))

(assert (=> d!1783665 d!1783821))

(declare-fun b_lambda!213649 () Bool)

(assert (= b_lambda!213641 (or b!5646443 b_lambda!213649)))

(declare-fun bs!1312415 () Bool)

(declare-fun d!1783823 () Bool)

(assert (= bs!1312415 (and d!1783823 b!5646443)))

(assert (=> bs!1312415 (= (dynLambda!24674 lambda!303425 (h!69518 zl!343)) (derivationStepZipperUp!899 (h!69518 zl!343) (h!69517 s!2326)))))

(assert (=> bs!1312415 m!6613786))

(assert (=> d!1783693 d!1783823))

(check-sat (not d!1783755) (not b!5647401) (not b!5647208) (not bs!1312415) (not bm!426997) (not b!5647333) (not b!5647152) (not d!1783757) (not d!1783751) (not b!5647260) (not b!5647122) (not d!1783739) (not b!5647237) (not d!1783671) (not b!5647266) (not b!5647037) (not b!5647337) (not b!5647003) (not b!5647259) (not b!5647306) (not b!5647500) (not b!5647488) (not b!5647009) (not b!5647156) (not b!5647375) (not b!5647346) (not d!1783701) (not d!1783721) (not b!5647002) (not d!1783771) (not b!5647134) (not b!5647227) (not b!5647474) (not b!5647423) (not b!5647305) (not d!1783787) (not b!5647029) (not b!5647128) (not b!5647276) (not b!5647273) (not d!1783695) (not b!5647327) (not b!5647457) (not b!5647425) (not d!1783797) (not b!5647304) (not d!1783759) (not d!1783791) (not b!5647347) (not b!5647325) (not b!5647410) (not b!5647470) (not d!1783675) (not b!5647345) (not bm!427019) (not b!5647216) (not b!5647397) (not bm!427008) (not bm!427030) (not bm!427009) (not bm!427002) tp_is_empty!40515 (not d!1783707) (not b!5647331) (not b!5647314) (not d!1783767) (not b!5647146) (not b!5647497) (not b!5647352) (not b!5647207) (not bm!427011) (not b!5647469) (not d!1783747) (not b!5647209) (not b!5647267) (not b!5647311) (not d!1783667) (not b!5647288) (not bm!427005) (not d!1783745) (not b!5647284) (not d!1783775) (not b!5647471) (not bm!426984) (not d!1783811) (not d!1783679) (not d!1783793) (not d!1783737) (not b!5647006) (not bs!1312413) (not d!1783673) (not b!5647287) (not b!5647034) (not b!5647360) (not b!5647238) (not b!5647429) (not b!5647036) (not b!5647310) (not b!5647502) (not b!5647342) (not d!1783807) (not b!5647085) (not b!5647268) (not b!5647420) (not d!1783665) (not b!5647280) (not d!1783795) (not b!5647396) (not b!5647344) (not b!5647343) (not d!1783753) (not b!5647348) (not b_lambda!213645) (not d!1783769) (not b!5647498) (not b!5647192) (not b!5647297) (not b!5647270) (not b!5647361) (not b!5647402) (not bm!426972) (not b!5647473) (not b!5647007) (not d!1783659) (not b!5647501) (not b!5647326) (not b!5647236) (not bm!426981) (not b!5647197) (not b!5647405) (not b!5647399) (not d!1783785) (not b!5647147) (not b!5647494) (not bm!427015) (not d!1783741) (not bm!427016) (not b!5647139) (not d!1783727) (not b!5647365) (not bm!426982) (not b!5647316) (not d!1783783) (not b!5647232) (not b!5647010) (not bm!427003) (not d!1783725) (not b!5647132) (not b!5647282) (not b!5647302) (not d!1783735) (not d!1783683) (not d!1783719) (not d!1783715) (not b!5647265) (not b!5647318) (not d!1783669) (not b!5647475) (not b!5647506) (not b!5647233) (not b!5647307) (not b!5647201) (not b!5646988) (not bm!427020) (not b!5647290) (not bm!427021) (not d!1783663) (not bm!427018) (not b!5647274) (not b!5647191) (not b!5647315) (not b!5647033) (not b!5647328) (not b!5646987) (not b!5647493) (not d!1783813) (not b_lambda!213647) (not d!1783763) (not b!5647317) (not b!5647430) (not d!1783749) (not d!1783713) (not bm!426978) (not bm!426977) (not b!5647202) (not b!5647319) (not d!1783685) (not d!1783799) (not b!5647264) (not d!1783773) (not d!1783717) (not b!5647204) (not b!5647505) (not b!5647511) (not b!5647151) (not b!5647371) (not b!5647203) (not b!5647483) (not b!5647205) (not b!5647332) (not b!5647482) (not d!1783801) (not b!5647199) (not d!1783705) (not setNonEmpty!37718) (not d!1783677) (not b!5647296) (not b!5647157) (not b!5647504) (not d!1783761) (not d!1783809) (not b!5647312) (not b!5647324) (not b!5647032) (not b!5647141) (not b!5647336) (not d!1783765) (not b!5647091) (not b!5647323) (not b!5647358) (not b!5647186) (not d!1783693) (not bm!427017) (not b!5647125) (not b!5647303) (not b!5647338) (not d!1783777) (not b!5647335) (not b!5647418) (not bm!426983) (not bm!427014) (not b!5647298) (not bm!427029) (not d!1783781) (not b!5647496) (not b!5647403) (not d!1783655) (not b!5647294) (not bs!1312414) (not b_lambda!213649) (not b!5647126) (not b!5647008) (not b!5647206) (not d!1783733) (not d!1783661) (not bm!426999))
(check-sat)
(get-model)

(declare-fun d!1784293 () Bool)

(assert (=> d!1784293 (= (head!12007 lt!2264230) (h!69516 lt!2264230))))

(assert (=> b!5647326 d!1784293))

(declare-fun d!1784295 () Bool)

(assert (=> d!1784295 (= (isEmpty!34917 (t!376491 s!2326)) ((_ is Nil!63069) (t!376491 s!2326)))))

(assert (=> d!1783655 d!1784295))

(declare-fun d!1784297 () Bool)

(declare-fun res!2389212 () Bool)

(declare-fun e!3479478 () Bool)

(assert (=> d!1784297 (=> res!2389212 e!3479478)))

(assert (=> d!1784297 (= res!2389212 ((_ is Nil!63068) lt!2264395))))

(assert (=> d!1784297 (= (forall!14788 lt!2264395 lambda!303530) e!3479478)))

(declare-fun b!5648348 () Bool)

(declare-fun e!3479479 () Bool)

(assert (=> b!5648348 (= e!3479478 e!3479479)))

(declare-fun res!2389213 () Bool)

(assert (=> b!5648348 (=> (not res!2389213) (not e!3479479))))

(declare-fun dynLambda!24678 (Int Regex!15631) Bool)

(assert (=> b!5648348 (= res!2389213 (dynLambda!24678 lambda!303530 (h!69516 lt!2264395)))))

(declare-fun b!5648349 () Bool)

(assert (=> b!5648349 (= e!3479479 (forall!14788 (t!376490 lt!2264395) lambda!303530))))

(assert (= (and d!1784297 (not res!2389212)) b!5648348))

(assert (= (and b!5648348 res!2389213) b!5648349))

(declare-fun b_lambda!213677 () Bool)

(assert (=> (not b_lambda!213677) (not b!5648348)))

(declare-fun m!6615748 () Bool)

(assert (=> b!5648348 m!6615748))

(declare-fun m!6615750 () Bool)

(assert (=> b!5648349 m!6615750))

(assert (=> d!1783801 d!1784297))

(declare-fun d!1784299 () Bool)

(assert (=> d!1784299 true))

(assert (=> d!1784299 true))

(declare-fun res!2389216 () Bool)

(assert (=> d!1784299 (= (choose!42758 lambda!303428) res!2389216)))

(assert (=> d!1783745 d!1784299))

(declare-fun bs!1313321 () Bool)

(declare-fun d!1784301 () Bool)

(assert (= bs!1313321 (and d!1784301 d!1783769)))

(declare-fun lambda!303621 () Int)

(assert (=> bs!1313321 (= lambda!303621 lambda!303516)))

(declare-fun bs!1313322 () Bool)

(assert (= bs!1313322 (and d!1784301 d!1783799)))

(assert (=> bs!1313322 (= lambda!303621 lambda!303527)))

(declare-fun bs!1313323 () Bool)

(assert (= bs!1313323 (and d!1784301 d!1783713)))

(assert (=> bs!1313323 (= lambda!303621 lambda!303504)))

(declare-fun bs!1313324 () Bool)

(assert (= bs!1313324 (and d!1784301 d!1783801)))

(assert (=> bs!1313324 (= lambda!303621 lambda!303530)))

(declare-fun bs!1313325 () Bool)

(assert (= bs!1313325 (and d!1784301 d!1783727)))

(assert (=> bs!1313325 (= lambda!303621 lambda!303505)))

(declare-fun bs!1313326 () Bool)

(assert (= bs!1313326 (and d!1784301 d!1783761)))

(assert (=> bs!1313326 (= lambda!303621 lambda!303515)))

(declare-fun bs!1313327 () Bool)

(assert (= bs!1313327 (and d!1784301 d!1783775)))

(assert (=> bs!1313327 (= lambda!303621 lambda!303517)))

(declare-fun bs!1313328 () Bool)

(assert (= bs!1313328 (and d!1784301 d!1783741)))

(assert (=> bs!1313328 (= lambda!303621 lambda!303511)))

(assert (=> d!1784301 (= (inv!82324 setElem!37718) (forall!14788 (exprs!5515 setElem!37718) lambda!303621))))

(declare-fun bs!1313329 () Bool)

(assert (= bs!1313329 d!1784301))

(declare-fun m!6615752 () Bool)

(assert (=> bs!1313329 m!6615752))

(assert (=> setNonEmpty!37718 d!1784301))

(declare-fun d!1784303 () Bool)

(declare-fun c!992743 () Bool)

(declare-fun e!3479482 () Bool)

(assert (=> d!1784303 (= c!992743 e!3479482)))

(declare-fun res!2389217 () Bool)

(assert (=> d!1784303 (=> (not res!2389217) (not e!3479482))))

(assert (=> d!1784303 (= res!2389217 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun e!3479481 () (InoxSet Context!10030))

(assert (=> d!1784303 (= (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326)) e!3479481)))

(declare-fun b!5648350 () Bool)

(declare-fun e!3479480 () (InoxSet Context!10030))

(declare-fun call!427204 () (InoxSet Context!10030))

(assert (=> b!5648350 (= e!3479480 call!427204)))

(declare-fun b!5648351 () Bool)

(assert (=> b!5648351 (= e!3479481 e!3479480)))

(declare-fun c!992742 () Bool)

(assert (=> b!5648351 (= c!992742 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun bm!427199 () Bool)

(assert (=> bm!427199 (= call!427204 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))))) (h!69517 s!2326)))))

(declare-fun b!5648352 () Bool)

(assert (=> b!5648352 (= e!3479480 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648353 () Bool)

(assert (=> b!5648353 (= e!3479481 ((_ map or) call!427204 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))))) (h!69517 s!2326))))))

(declare-fun b!5648354 () Bool)

(assert (=> b!5648354 (= e!3479482 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))))))))

(assert (= (and d!1784303 res!2389217) b!5648354))

(assert (= (and d!1784303 c!992743) b!5648353))

(assert (= (and d!1784303 (not c!992743)) b!5648351))

(assert (= (and b!5648351 c!992742) b!5648350))

(assert (= (and b!5648351 (not c!992742)) b!5648352))

(assert (= (or b!5648353 b!5648350) bm!427199))

(declare-fun m!6615760 () Bool)

(assert (=> bm!427199 m!6615760))

(declare-fun m!6615762 () Bool)

(assert (=> b!5648353 m!6615762))

(declare-fun m!6615764 () Bool)

(assert (=> b!5648354 m!6615764))

(assert (=> b!5647151 d!1784303))

(declare-fun b!5648381 () Bool)

(declare-fun e!3479504 () Bool)

(declare-fun e!3479503 () Bool)

(assert (=> b!5648381 (= e!3479504 e!3479503)))

(declare-fun res!2389236 () Bool)

(declare-fun call!427211 () Bool)

(assert (=> b!5648381 (= res!2389236 call!427211)))

(assert (=> b!5648381 (=> (not res!2389236) (not e!3479503))))

(declare-fun b!5648382 () Bool)

(declare-fun e!3479508 () Bool)

(declare-fun e!3479507 () Bool)

(assert (=> b!5648382 (= e!3479508 e!3479507)))

(declare-fun res!2389233 () Bool)

(assert (=> b!5648382 (=> res!2389233 e!3479507)))

(assert (=> b!5648382 (= res!2389233 ((_ is Star!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648383 () Bool)

(declare-fun call!427212 () Bool)

(assert (=> b!5648383 (= e!3479503 call!427212)))

(declare-fun bm!427206 () Bool)

(declare-fun c!992750 () Bool)

(assert (=> bm!427206 (= call!427212 (nullable!5663 (ite c!992750 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun b!5648384 () Bool)

(declare-fun e!3479506 () Bool)

(assert (=> b!5648384 (= e!3479506 call!427212)))

(declare-fun b!5648385 () Bool)

(assert (=> b!5648385 (= e!3479507 e!3479504)))

(assert (=> b!5648385 (= c!992750 ((_ is Union!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun bm!427207 () Bool)

(assert (=> bm!427207 (= call!427211 (nullable!5663 (ite c!992750 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun d!1784313 () Bool)

(declare-fun res!2389232 () Bool)

(declare-fun e!3479505 () Bool)

(assert (=> d!1784313 (=> res!2389232 e!3479505)))

(assert (=> d!1784313 (= res!2389232 ((_ is EmptyExpr!15631) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784313 (= (nullableFct!1760 (regOne!31774 (regOne!31774 r!7292))) e!3479505)))

(declare-fun b!5648386 () Bool)

(assert (=> b!5648386 (= e!3479505 e!3479508)))

(declare-fun res!2389234 () Bool)

(assert (=> b!5648386 (=> (not res!2389234) (not e!3479508))))

(assert (=> b!5648386 (= res!2389234 (and (not ((_ is EmptyLang!15631) (regOne!31774 (regOne!31774 r!7292)))) (not ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun b!5648387 () Bool)

(assert (=> b!5648387 (= e!3479504 e!3479506)))

(declare-fun res!2389235 () Bool)

(assert (=> b!5648387 (= res!2389235 call!427211)))

(assert (=> b!5648387 (=> res!2389235 e!3479506)))

(assert (= (and d!1784313 (not res!2389232)) b!5648386))

(assert (= (and b!5648386 res!2389234) b!5648382))

(assert (= (and b!5648382 (not res!2389233)) b!5648385))

(assert (= (and b!5648385 c!992750) b!5648387))

(assert (= (and b!5648385 (not c!992750)) b!5648381))

(assert (= (and b!5648387 (not res!2389235)) b!5648384))

(assert (= (and b!5648381 res!2389236) b!5648383))

(assert (= (or b!5648384 b!5648383) bm!427206))

(assert (= (or b!5648387 b!5648381) bm!427207))

(declare-fun m!6615768 () Bool)

(assert (=> bm!427206 m!6615768))

(declare-fun m!6615770 () Bool)

(assert (=> bm!427207 m!6615770))

(assert (=> d!1783807 d!1784313))

(declare-fun c!992755 () Bool)

(declare-fun bm!427208 () Bool)

(declare-fun c!992752 () Bool)

(declare-fun call!427216 () List!63192)

(assert (=> bm!427208 (= call!427216 ($colon$colon!1681 (exprs!5515 (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018))) (ite (or c!992755 c!992752) (regTwo!31774 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))))))))

(declare-fun bm!427209 () Bool)

(declare-fun call!427217 () List!63192)

(assert (=> bm!427209 (= call!427217 call!427216)))

(declare-fun b!5648388 () Bool)

(declare-fun e!3479514 () (InoxSet Context!10030))

(assert (=> b!5648388 (= e!3479514 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648389 () Bool)

(declare-fun e!3479510 () (InoxSet Context!10030))

(declare-fun call!427215 () (InoxSet Context!10030))

(assert (=> b!5648389 (= e!3479510 call!427215)))

(declare-fun d!1784317 () Bool)

(declare-fun c!992753 () Bool)

(assert (=> d!1784317 (= c!992753 (and ((_ is ElementMatch!15631) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (= (c!992159 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (h!69517 s!2326))))))

(declare-fun e!3479511 () (InoxSet Context!10030))

(assert (=> d!1784317 (= (derivationStepZipperDown!973 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))) (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018)) (h!69517 s!2326)) e!3479511)))

(declare-fun call!427213 () (InoxSet Context!10030))

(declare-fun bm!427210 () Bool)

(declare-fun c!992754 () Bool)

(assert (=> bm!427210 (= call!427213 (derivationStepZipperDown!973 (ite c!992754 (regOne!31775 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (regOne!31774 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))))) (ite c!992754 (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018)) (Context!10031 call!427216)) (h!69517 s!2326)))))

(declare-fun b!5648390 () Bool)

(declare-fun e!3479512 () (InoxSet Context!10030))

(assert (=> b!5648390 (= e!3479511 e!3479512)))

(assert (=> b!5648390 (= c!992754 ((_ is Union!15631) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))))))

(declare-fun b!5648391 () Bool)

(declare-fun call!427214 () (InoxSet Context!10030))

(assert (=> b!5648391 (= e!3479512 ((_ map or) call!427213 call!427214))))

(declare-fun b!5648392 () Bool)

(declare-fun e!3479509 () (InoxSet Context!10030))

(declare-fun call!427218 () (InoxSet Context!10030))

(assert (=> b!5648392 (= e!3479509 ((_ map or) call!427213 call!427218))))

(declare-fun b!5648393 () Bool)

(assert (=> b!5648393 (= e!3479511 (store ((as const (Array Context!10030 Bool)) false) (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018)) true))))

(declare-fun e!3479513 () Bool)

(declare-fun b!5648394 () Bool)

(assert (=> b!5648394 (= e!3479513 (nullable!5663 (regOne!31774 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))))))))

(declare-fun b!5648395 () Bool)

(declare-fun c!992751 () Bool)

(assert (=> b!5648395 (= c!992751 ((_ is Star!15631) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))))))

(assert (=> b!5648395 (= e!3479510 e!3479514)))

(declare-fun b!5648396 () Bool)

(assert (=> b!5648396 (= e!3479514 call!427215)))

(declare-fun b!5648397 () Bool)

(assert (=> b!5648397 (= e!3479509 e!3479510)))

(assert (=> b!5648397 (= c!992752 ((_ is Concat!24476) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))))))

(declare-fun bm!427211 () Bool)

(assert (=> bm!427211 (= call!427215 call!427218)))

(declare-fun bm!427212 () Bool)

(assert (=> bm!427212 (= call!427218 call!427214)))

(declare-fun b!5648398 () Bool)

(assert (=> b!5648398 (= c!992755 e!3479513)))

(declare-fun res!2389237 () Bool)

(assert (=> b!5648398 (=> (not res!2389237) (not e!3479513))))

(assert (=> b!5648398 (= res!2389237 ((_ is Concat!24476) (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))))))

(assert (=> b!5648398 (= e!3479512 e!3479509)))

(declare-fun bm!427213 () Bool)

(assert (=> bm!427213 (= call!427214 (derivationStepZipperDown!973 (ite c!992754 (regTwo!31775 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (ite c!992755 (regTwo!31774 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (ite c!992752 (regOne!31774 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))) (reg!15960 (ite c!992406 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (ite c!992407 (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (ite c!992404 (regOne!31774 (regOne!31774 (regOne!31774 r!7292))) (reg!15960 (regOne!31774 (regOne!31774 r!7292)))))))))) (ite (or c!992754 c!992755) (ite (or c!992406 c!992407) lt!2264221 (Context!10031 call!427018)) (Context!10031 call!427217)) (h!69517 s!2326)))))

(assert (= (and d!1784317 c!992753) b!5648393))

(assert (= (and d!1784317 (not c!992753)) b!5648390))

(assert (= (and b!5648390 c!992754) b!5648391))

(assert (= (and b!5648390 (not c!992754)) b!5648398))

(assert (= (and b!5648398 res!2389237) b!5648394))

(assert (= (and b!5648398 c!992755) b!5648392))

(assert (= (and b!5648398 (not c!992755)) b!5648397))

(assert (= (and b!5648397 c!992752) b!5648389))

(assert (= (and b!5648397 (not c!992752)) b!5648395))

(assert (= (and b!5648395 c!992751) b!5648396))

(assert (= (and b!5648395 (not c!992751)) b!5648388))

(assert (= (or b!5648389 b!5648396) bm!427209))

(assert (= (or b!5648389 b!5648396) bm!427211))

(assert (= (or b!5648392 bm!427209) bm!427208))

(assert (= (or b!5648392 bm!427211) bm!427212))

(assert (= (or b!5648391 bm!427212) bm!427213))

(assert (= (or b!5648391 b!5648392) bm!427210))

(declare-fun m!6615772 () Bool)

(assert (=> bm!427208 m!6615772))

(declare-fun m!6615774 () Bool)

(assert (=> b!5648394 m!6615774))

(declare-fun m!6615776 () Bool)

(assert (=> bm!427210 m!6615776))

(declare-fun m!6615778 () Bool)

(assert (=> bm!427213 m!6615778))

(declare-fun m!6615780 () Bool)

(assert (=> b!5648393 m!6615780))

(assert (=> bm!427014 d!1784317))

(assert (=> d!1783667 d!1784295))

(declare-fun c!992757 () Bool)

(declare-fun call!427222 () List!63192)

(declare-fun c!992760 () Bool)

(declare-fun bm!427214 () Bool)

(assert (=> bm!427214 (= call!427222 ($colon$colon!1681 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212)))) (ite (or c!992760 c!992757) (regTwo!31774 (h!69516 (exprs!5515 lt!2264212))) (h!69516 (exprs!5515 lt!2264212)))))))

(declare-fun bm!427215 () Bool)

(declare-fun call!427223 () List!63192)

(assert (=> bm!427215 (= call!427223 call!427222)))

(declare-fun b!5648399 () Bool)

(declare-fun e!3479520 () (InoxSet Context!10030))

(assert (=> b!5648399 (= e!3479520 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648400 () Bool)

(declare-fun e!3479516 () (InoxSet Context!10030))

(declare-fun call!427221 () (InoxSet Context!10030))

(assert (=> b!5648400 (= e!3479516 call!427221)))

(declare-fun d!1784319 () Bool)

(declare-fun c!992758 () Bool)

(assert (=> d!1784319 (= c!992758 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 lt!2264212))) (= (c!992159 (h!69516 (exprs!5515 lt!2264212))) (h!69517 s!2326))))))

(declare-fun e!3479517 () (InoxSet Context!10030))

(assert (=> d!1784319 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264212)) (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (h!69517 s!2326)) e!3479517)))

(declare-fun bm!427216 () Bool)

(declare-fun call!427219 () (InoxSet Context!10030))

(declare-fun c!992759 () Bool)

(assert (=> bm!427216 (= call!427219 (derivationStepZipperDown!973 (ite c!992759 (regOne!31775 (h!69516 (exprs!5515 lt!2264212))) (regOne!31774 (h!69516 (exprs!5515 lt!2264212)))) (ite c!992759 (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (Context!10031 call!427222)) (h!69517 s!2326)))))

(declare-fun b!5648401 () Bool)

(declare-fun e!3479518 () (InoxSet Context!10030))

(assert (=> b!5648401 (= e!3479517 e!3479518)))

(assert (=> b!5648401 (= c!992759 ((_ is Union!15631) (h!69516 (exprs!5515 lt!2264212))))))

(declare-fun b!5648402 () Bool)

(declare-fun call!427220 () (InoxSet Context!10030))

(assert (=> b!5648402 (= e!3479518 ((_ map or) call!427219 call!427220))))

(declare-fun b!5648403 () Bool)

(declare-fun e!3479515 () (InoxSet Context!10030))

(declare-fun call!427224 () (InoxSet Context!10030))

(assert (=> b!5648403 (= e!3479515 ((_ map or) call!427219 call!427224))))

(declare-fun b!5648404 () Bool)

(assert (=> b!5648404 (= e!3479517 (store ((as const (Array Context!10030 Bool)) false) (Context!10031 (t!376490 (exprs!5515 lt!2264212))) true))))

(declare-fun b!5648405 () Bool)

(declare-fun e!3479519 () Bool)

(assert (=> b!5648405 (= e!3479519 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 lt!2264212)))))))

(declare-fun b!5648406 () Bool)

(declare-fun c!992756 () Bool)

(assert (=> b!5648406 (= c!992756 ((_ is Star!15631) (h!69516 (exprs!5515 lt!2264212))))))

(assert (=> b!5648406 (= e!3479516 e!3479520)))

(declare-fun b!5648407 () Bool)

(assert (=> b!5648407 (= e!3479520 call!427221)))

(declare-fun b!5648408 () Bool)

(assert (=> b!5648408 (= e!3479515 e!3479516)))

(assert (=> b!5648408 (= c!992757 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264212))))))

(declare-fun bm!427217 () Bool)

(assert (=> bm!427217 (= call!427221 call!427224)))

(declare-fun bm!427218 () Bool)

(assert (=> bm!427218 (= call!427224 call!427220)))

(declare-fun b!5648409 () Bool)

(assert (=> b!5648409 (= c!992760 e!3479519)))

(declare-fun res!2389238 () Bool)

(assert (=> b!5648409 (=> (not res!2389238) (not e!3479519))))

(assert (=> b!5648409 (= res!2389238 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264212))))))

(assert (=> b!5648409 (= e!3479518 e!3479515)))

(declare-fun bm!427219 () Bool)

(assert (=> bm!427219 (= call!427220 (derivationStepZipperDown!973 (ite c!992759 (regTwo!31775 (h!69516 (exprs!5515 lt!2264212))) (ite c!992760 (regTwo!31774 (h!69516 (exprs!5515 lt!2264212))) (ite c!992757 (regOne!31774 (h!69516 (exprs!5515 lt!2264212))) (reg!15960 (h!69516 (exprs!5515 lt!2264212)))))) (ite (or c!992759 c!992760) (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (Context!10031 call!427223)) (h!69517 s!2326)))))

(assert (= (and d!1784319 c!992758) b!5648404))

(assert (= (and d!1784319 (not c!992758)) b!5648401))

(assert (= (and b!5648401 c!992759) b!5648402))

(assert (= (and b!5648401 (not c!992759)) b!5648409))

(assert (= (and b!5648409 res!2389238) b!5648405))

(assert (= (and b!5648409 c!992760) b!5648403))

(assert (= (and b!5648409 (not c!992760)) b!5648408))

(assert (= (and b!5648408 c!992757) b!5648400))

(assert (= (and b!5648408 (not c!992757)) b!5648406))

(assert (= (and b!5648406 c!992756) b!5648407))

(assert (= (and b!5648406 (not c!992756)) b!5648399))

(assert (= (or b!5648400 b!5648407) bm!427215))

(assert (= (or b!5648400 b!5648407) bm!427217))

(assert (= (or b!5648403 bm!427215) bm!427214))

(assert (= (or b!5648403 bm!427217) bm!427218))

(assert (= (or b!5648402 bm!427218) bm!427219))

(assert (= (or b!5648402 b!5648403) bm!427216))

(declare-fun m!6615782 () Bool)

(assert (=> bm!427214 m!6615782))

(declare-fun m!6615784 () Bool)

(assert (=> b!5648405 m!6615784))

(declare-fun m!6615786 () Bool)

(assert (=> bm!427216 m!6615786))

(declare-fun m!6615788 () Bool)

(assert (=> bm!427219 m!6615788))

(declare-fun m!6615790 () Bool)

(assert (=> b!5648404 m!6615790))

(assert (=> bm!426984 d!1784319))

(declare-fun d!1784321 () Bool)

(declare-fun c!992761 () Bool)

(assert (=> d!1784321 (= c!992761 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479521 () Bool)

(assert (=> d!1784321 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264186 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479521)))

(declare-fun b!5648410 () Bool)

(assert (=> b!5648410 (= e!3479521 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264186 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5648411 () Bool)

(assert (=> b!5648411 (= e!3479521 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264186 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784321 c!992761) b!5648410))

(assert (= (and d!1784321 (not c!992761)) b!5648411))

(assert (=> d!1784321 m!6614310))

(declare-fun m!6615792 () Bool)

(assert (=> d!1784321 m!6615792))

(assert (=> b!5648410 m!6614472))

(declare-fun m!6615794 () Bool)

(assert (=> b!5648410 m!6615794))

(assert (=> b!5648411 m!6614310))

(declare-fun m!6615796 () Bool)

(assert (=> b!5648411 m!6615796))

(assert (=> b!5648411 m!6614472))

(assert (=> b!5648411 m!6615796))

(declare-fun m!6615798 () Bool)

(assert (=> b!5648411 m!6615798))

(assert (=> b!5648411 m!6614310))

(declare-fun m!6615800 () Bool)

(assert (=> b!5648411 m!6615800))

(assert (=> b!5648411 m!6615798))

(assert (=> b!5648411 m!6615800))

(declare-fun m!6615802 () Bool)

(assert (=> b!5648411 m!6615802))

(assert (=> b!5647204 d!1784321))

(declare-fun bs!1313380 () Bool)

(declare-fun d!1784323 () Bool)

(assert (= bs!1313380 (and d!1784323 b!5646443)))

(declare-fun lambda!303624 () Int)

(assert (=> bs!1313380 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303624 lambda!303425))))

(declare-fun bs!1313382 () Bool)

(assert (= bs!1313382 (and d!1784323 d!1783735)))

(assert (=> bs!1313382 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303624 lambda!303508))))

(declare-fun bs!1313384 () Bool)

(assert (= bs!1313384 (and d!1784323 d!1783813)))

(assert (=> bs!1313384 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303624 lambda!303543))))

(assert (=> d!1784323 true))

(assert (=> d!1784323 (= (derivationStepZipper!1718 lt!2264186 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264186 lambda!303624))))

(declare-fun bs!1313387 () Bool)

(assert (= bs!1313387 d!1784323))

(declare-fun m!6615804 () Bool)

(assert (=> bs!1313387 m!6615804))

(assert (=> b!5647204 d!1784323))

(declare-fun d!1784325 () Bool)

(assert (=> d!1784325 (= (head!12006 (t!376491 s!2326)) (h!69517 (t!376491 s!2326)))))

(assert (=> b!5647204 d!1784325))

(declare-fun d!1784327 () Bool)

(assert (=> d!1784327 (= (tail!11101 (t!376491 s!2326)) (t!376491 (t!376491 s!2326)))))

(assert (=> b!5647204 d!1784327))

(declare-fun d!1784329 () Bool)

(assert (=> d!1784329 (= (isEmptyExpr!1172 lt!2264371) ((_ is EmptyExpr!15631) lt!2264371))))

(assert (=> b!5647302 d!1784329))

(declare-fun d!1784331 () Bool)

(assert (=> d!1784331 (= (isDefined!12343 lt!2264373) (not (isEmpty!34918 lt!2264373)))))

(declare-fun bs!1313395 () Bool)

(assert (= bs!1313395 d!1784331))

(declare-fun m!6615806 () Bool)

(assert (=> bs!1313395 m!6615806))

(assert (=> d!1783765 d!1784331))

(declare-fun b!5648412 () Bool)

(declare-fun res!2389245 () Bool)

(declare-fun e!3479522 () Bool)

(assert (=> b!5648412 (=> (not res!2389245) (not e!3479522))))

(declare-fun call!427225 () Bool)

(assert (=> b!5648412 (= res!2389245 (not call!427225))))

(declare-fun b!5648413 () Bool)

(declare-fun e!3479523 () Bool)

(assert (=> b!5648413 (= e!3479523 (nullable!5663 (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648414 () Bool)

(declare-fun e!3479525 () Bool)

(declare-fun e!3479527 () Bool)

(assert (=> b!5648414 (= e!3479525 e!3479527)))

(declare-fun res!2389246 () Bool)

(assert (=> b!5648414 (=> (not res!2389246) (not e!3479527))))

(declare-fun lt!2264491 () Bool)

(assert (=> b!5648414 (= res!2389246 (not lt!2264491))))

(declare-fun b!5648415 () Bool)

(declare-fun e!3479524 () Bool)

(assert (=> b!5648415 (= e!3479524 (not lt!2264491))))

(declare-fun b!5648416 () Bool)

(declare-fun res!2389243 () Bool)

(declare-fun e!3479526 () Bool)

(assert (=> b!5648416 (=> res!2389243 e!3479526)))

(assert (=> b!5648416 (= res!2389243 (not (isEmpty!34917 (tail!11101 Nil!63069))))))

(declare-fun b!5648418 () Bool)

(assert (=> b!5648418 (= e!3479527 e!3479526)))

(declare-fun res!2389242 () Bool)

(assert (=> b!5648418 (=> res!2389242 e!3479526)))

(assert (=> b!5648418 (= res!2389242 call!427225)))

(declare-fun b!5648419 () Bool)

(assert (=> b!5648419 (= e!3479522 (= (head!12006 Nil!63069) (c!992159 (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5648420 () Bool)

(declare-fun res!2389244 () Bool)

(assert (=> b!5648420 (=> res!2389244 e!3479525)))

(assert (=> b!5648420 (= res!2389244 (not ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5648420 (= e!3479524 e!3479525)))

(declare-fun b!5648421 () Bool)

(declare-fun e!3479528 () Bool)

(assert (=> b!5648421 (= e!3479528 (= lt!2264491 call!427225))))

(declare-fun bm!427220 () Bool)

(assert (=> bm!427220 (= call!427225 (isEmpty!34917 Nil!63069))))

(declare-fun d!1784333 () Bool)

(assert (=> d!1784333 e!3479528))

(declare-fun c!992762 () Bool)

(assert (=> d!1784333 (= c!992762 ((_ is EmptyExpr!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784333 (= lt!2264491 e!3479523)))

(declare-fun c!992763 () Bool)

(assert (=> d!1784333 (= c!992763 (isEmpty!34917 Nil!63069))))

(assert (=> d!1784333 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784333 (= (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) Nil!63069) lt!2264491)))

(declare-fun b!5648417 () Bool)

(assert (=> b!5648417 (= e!3479523 (matchR!7816 (derivativeStep!4467 (regTwo!31774 (regOne!31774 r!7292)) (head!12006 Nil!63069)) (tail!11101 Nil!63069)))))

(declare-fun b!5648422 () Bool)

(declare-fun res!2389239 () Bool)

(assert (=> b!5648422 (=> res!2389239 e!3479525)))

(assert (=> b!5648422 (= res!2389239 e!3479522)))

(declare-fun res!2389241 () Bool)

(assert (=> b!5648422 (=> (not res!2389241) (not e!3479522))))

(assert (=> b!5648422 (= res!2389241 lt!2264491)))

(declare-fun b!5648423 () Bool)

(declare-fun res!2389240 () Bool)

(assert (=> b!5648423 (=> (not res!2389240) (not e!3479522))))

(assert (=> b!5648423 (= res!2389240 (isEmpty!34917 (tail!11101 Nil!63069)))))

(declare-fun b!5648424 () Bool)

(assert (=> b!5648424 (= e!3479528 e!3479524)))

(declare-fun c!992764 () Bool)

(assert (=> b!5648424 (= c!992764 ((_ is EmptyLang!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648425 () Bool)

(assert (=> b!5648425 (= e!3479526 (not (= (head!12006 Nil!63069) (c!992159 (regTwo!31774 (regOne!31774 r!7292))))))))

(assert (= (and d!1784333 c!992763) b!5648413))

(assert (= (and d!1784333 (not c!992763)) b!5648417))

(assert (= (and d!1784333 c!992762) b!5648421))

(assert (= (and d!1784333 (not c!992762)) b!5648424))

(assert (= (and b!5648424 c!992764) b!5648415))

(assert (= (and b!5648424 (not c!992764)) b!5648420))

(assert (= (and b!5648420 (not res!2389244)) b!5648422))

(assert (= (and b!5648422 res!2389241) b!5648412))

(assert (= (and b!5648412 res!2389245) b!5648423))

(assert (= (and b!5648423 res!2389240) b!5648419))

(assert (= (and b!5648422 (not res!2389239)) b!5648414))

(assert (= (and b!5648414 res!2389246) b!5648418))

(assert (= (and b!5648418 (not res!2389242)) b!5648416))

(assert (= (and b!5648416 (not res!2389243)) b!5648425))

(assert (= (or b!5648421 b!5648412 b!5648418) bm!427220))

(declare-fun m!6615814 () Bool)

(assert (=> d!1784333 m!6615814))

(assert (=> d!1784333 m!6614560))

(declare-fun m!6615816 () Bool)

(assert (=> b!5648425 m!6615816))

(assert (=> b!5648419 m!6615816))

(assert (=> bm!427220 m!6615814))

(declare-fun m!6615818 () Bool)

(assert (=> b!5648423 m!6615818))

(assert (=> b!5648423 m!6615818))

(declare-fun m!6615820 () Bool)

(assert (=> b!5648423 m!6615820))

(assert (=> b!5648416 m!6615818))

(assert (=> b!5648416 m!6615818))

(assert (=> b!5648416 m!6615820))

(assert (=> b!5648417 m!6615816))

(assert (=> b!5648417 m!6615816))

(declare-fun m!6615822 () Bool)

(assert (=> b!5648417 m!6615822))

(assert (=> b!5648417 m!6615818))

(assert (=> b!5648417 m!6615822))

(assert (=> b!5648417 m!6615818))

(declare-fun m!6615824 () Bool)

(assert (=> b!5648417 m!6615824))

(declare-fun m!6615826 () Bool)

(assert (=> b!5648413 m!6615826))

(assert (=> d!1783765 d!1784333))

(declare-fun bm!427227 () Bool)

(declare-fun call!427234 () Bool)

(declare-fun call!427233 () Bool)

(assert (=> bm!427227 (= call!427234 call!427233)))

(declare-fun b!5648437 () Bool)

(declare-fun res!2389251 () Bool)

(declare-fun e!3479536 () Bool)

(assert (=> b!5648437 (=> (not res!2389251) (not e!3479536))))

(assert (=> b!5648437 (= res!2389251 call!427234)))

(declare-fun e!3479538 () Bool)

(assert (=> b!5648437 (= e!3479538 e!3479536)))

(declare-fun b!5648438 () Bool)

(declare-fun res!2389252 () Bool)

(declare-fun e!3479539 () Bool)

(assert (=> b!5648438 (=> res!2389252 e!3479539)))

(assert (=> b!5648438 (= res!2389252 (not ((_ is Concat!24476) (regTwo!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5648438 (= e!3479538 e!3479539)))

(declare-fun bm!427228 () Bool)

(declare-fun call!427232 () Bool)

(declare-fun c!992771 () Bool)

(assert (=> bm!427228 (= call!427232 (validRegex!7367 (ite c!992771 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))))))))

(declare-fun d!1784337 () Bool)

(declare-fun res!2389250 () Bool)

(declare-fun e!3479541 () Bool)

(assert (=> d!1784337 (=> res!2389250 e!3479541)))

(assert (=> d!1784337 (= res!2389250 ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784337 (= (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292))) e!3479541)))

(declare-fun b!5648439 () Bool)

(declare-fun e!3479535 () Bool)

(assert (=> b!5648439 (= e!3479535 e!3479538)))

(assert (=> b!5648439 (= c!992771 ((_ is Union!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648440 () Bool)

(assert (=> b!5648440 (= e!3479541 e!3479535)))

(declare-fun c!992770 () Bool)

(assert (=> b!5648440 (= c!992770 ((_ is Star!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun bm!427229 () Bool)

(assert (=> bm!427229 (= call!427233 (validRegex!7367 (ite c!992770 (reg!15960 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992771 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))))

(declare-fun b!5648441 () Bool)

(declare-fun e!3479540 () Bool)

(assert (=> b!5648441 (= e!3479540 call!427233)))

(declare-fun b!5648442 () Bool)

(declare-fun e!3479537 () Bool)

(assert (=> b!5648442 (= e!3479537 call!427232)))

(declare-fun b!5648443 () Bool)

(assert (=> b!5648443 (= e!3479539 e!3479537)))

(declare-fun res!2389249 () Bool)

(assert (=> b!5648443 (=> (not res!2389249) (not e!3479537))))

(assert (=> b!5648443 (= res!2389249 call!427234)))

(declare-fun b!5648444 () Bool)

(assert (=> b!5648444 (= e!3479536 call!427232)))

(declare-fun b!5648445 () Bool)

(assert (=> b!5648445 (= e!3479535 e!3479540)))

(declare-fun res!2389248 () Bool)

(assert (=> b!5648445 (= res!2389248 (not (nullable!5663 (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5648445 (=> (not res!2389248) (not e!3479540))))

(assert (= (and d!1784337 (not res!2389250)) b!5648440))

(assert (= (and b!5648440 c!992770) b!5648445))

(assert (= (and b!5648440 (not c!992770)) b!5648439))

(assert (= (and b!5648445 res!2389248) b!5648441))

(assert (= (and b!5648439 c!992771) b!5648437))

(assert (= (and b!5648439 (not c!992771)) b!5648438))

(assert (= (and b!5648437 res!2389251) b!5648444))

(assert (= (and b!5648438 (not res!2389252)) b!5648443))

(assert (= (and b!5648443 res!2389249) b!5648442))

(assert (= (or b!5648444 b!5648442) bm!427228))

(assert (= (or b!5648437 b!5648443) bm!427227))

(assert (= (or b!5648441 bm!427227) bm!427229))

(declare-fun m!6615830 () Bool)

(assert (=> bm!427228 m!6615830))

(declare-fun m!6615832 () Bool)

(assert (=> bm!427229 m!6615832))

(declare-fun m!6615836 () Bool)

(assert (=> b!5648445 m!6615836))

(assert (=> d!1783765 d!1784337))

(declare-fun b!5648489 () Bool)

(declare-fun e!3479566 () Int)

(declare-fun e!3479567 () Int)

(assert (=> b!5648489 (= e!3479566 e!3479567)))

(declare-fun c!992788 () Bool)

(assert (=> b!5648489 (= c!992788 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264194))))))

(declare-fun d!1784339 () Bool)

(declare-fun lt!2264496 () Int)

(assert (=> d!1784339 (> lt!2264496 0)))

(declare-fun e!3479568 () Int)

(assert (=> d!1784339 (= lt!2264496 e!3479568)))

(declare-fun c!992787 () Bool)

(assert (=> d!1784339 (= c!992787 ((_ is ElementMatch!15631) (h!69516 (exprs!5515 lt!2264194))))))

(assert (=> d!1784339 (= (regexDepthTotal!95 (h!69516 (exprs!5515 lt!2264194))) lt!2264496)))

(declare-fun c!992785 () Bool)

(declare-fun c!992786 () Bool)

(declare-fun call!427243 () Int)

(declare-fun bm!427236 () Bool)

(assert (=> bm!427236 (= call!427243 (regexDepthTotal!95 (ite c!992785 (reg!15960 (h!69516 (exprs!5515 lt!2264194))) (ite c!992786 (regOne!31775 (h!69516 (exprs!5515 lt!2264194))) (regOne!31774 (h!69516 (exprs!5515 lt!2264194)))))))))

(declare-fun b!5648490 () Bool)

(declare-fun e!3479565 () Int)

(assert (=> b!5648490 (= e!3479565 (+ 1 call!427243))))

(declare-fun b!5648491 () Bool)

(declare-fun call!427242 () Int)

(declare-fun call!427241 () Int)

(assert (=> b!5648491 (= e!3479567 (+ 1 call!427242 call!427241))))

(declare-fun bm!427237 () Bool)

(assert (=> bm!427237 (= call!427241 (regexDepthTotal!95 (ite c!992786 (regTwo!31775 (h!69516 (exprs!5515 lt!2264194))) (regTwo!31774 (h!69516 (exprs!5515 lt!2264194))))))))

(declare-fun b!5648492 () Bool)

(assert (=> b!5648492 (= e!3479567 1)))

(declare-fun bm!427238 () Bool)

(assert (=> bm!427238 (= call!427242 call!427243)))

(declare-fun b!5648493 () Bool)

(assert (=> b!5648493 (= e!3479568 e!3479565)))

(assert (=> b!5648493 (= c!992785 ((_ is Star!15631) (h!69516 (exprs!5515 lt!2264194))))))

(declare-fun b!5648494 () Bool)

(assert (=> b!5648494 (= c!992786 ((_ is Union!15631) (h!69516 (exprs!5515 lt!2264194))))))

(assert (=> b!5648494 (= e!3479565 e!3479566)))

(declare-fun b!5648496 () Bool)

(assert (=> b!5648496 (= e!3479568 1)))

(declare-fun b!5648498 () Bool)

(assert (=> b!5648498 (= e!3479566 (+ 1 call!427242 call!427241))))

(assert (= (and d!1784339 c!992787) b!5648496))

(assert (= (and d!1784339 (not c!992787)) b!5648493))

(assert (= (and b!5648493 c!992785) b!5648490))

(assert (= (and b!5648493 (not c!992785)) b!5648494))

(assert (= (and b!5648494 c!992786) b!5648498))

(assert (= (and b!5648494 (not c!992786)) b!5648489))

(assert (= (and b!5648489 c!992788) b!5648491))

(assert (= (and b!5648489 (not c!992788)) b!5648492))

(assert (= (or b!5648498 b!5648491) bm!427237))

(assert (= (or b!5648498 b!5648491) bm!427238))

(assert (= (or b!5648490 bm!427238) bm!427236))

(declare-fun m!6615882 () Bool)

(assert (=> bm!427236 m!6615882))

(declare-fun m!6615884 () Bool)

(assert (=> bm!427237 m!6615884))

(assert (=> b!5647197 d!1784339))

(declare-fun d!1784349 () Bool)

(declare-fun lt!2264497 () Int)

(assert (=> d!1784349 (>= lt!2264497 0)))

(declare-fun e!3479574 () Int)

(assert (=> d!1784349 (= lt!2264497 e!3479574)))

(declare-fun c!992789 () Bool)

(assert (=> d!1784349 (= c!992789 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194))))))))

(assert (=> d!1784349 (= (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))) lt!2264497)))

(declare-fun b!5648511 () Bool)

(assert (=> b!5648511 (= e!3479574 (+ (regexDepthTotal!95 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))))) (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))))))))))

(declare-fun b!5648512 () Bool)

(assert (=> b!5648512 (= e!3479574 1)))

(assert (= (and d!1784349 c!992789) b!5648511))

(assert (= (and d!1784349 (not c!992789)) b!5648512))

(declare-fun m!6615888 () Bool)

(assert (=> b!5648511 m!6615888))

(declare-fun m!6615890 () Bool)

(assert (=> b!5648511 m!6615890))

(assert (=> b!5647197 d!1784349))

(assert (=> b!5647260 d!1783761))

(declare-fun d!1784351 () Bool)

(assert (=> d!1784351 (= (Exists!2731 (ite c!992448 lambda!303518 lambda!303519)) (choose!42758 (ite c!992448 lambda!303518 lambda!303519)))))

(declare-fun bs!1313415 () Bool)

(assert (= bs!1313415 d!1784351))

(declare-fun m!6615892 () Bool)

(assert (=> bs!1313415 m!6615892))

(assert (=> bm!427018 d!1784351))

(declare-fun d!1784353 () Bool)

(assert (=> d!1784353 true))

(assert (=> d!1784353 true))

(declare-fun res!2389259 () Bool)

(assert (=> d!1784353 (= (choose!42758 lambda!303427) res!2389259)))

(assert (=> d!1783753 d!1784353))

(declare-fun d!1784355 () Bool)

(assert (=> d!1784355 (= (Exists!2731 lambda!303523) (choose!42758 lambda!303523))))

(declare-fun bs!1313416 () Bool)

(assert (= bs!1313416 d!1784355))

(declare-fun m!6615894 () Bool)

(assert (=> bs!1313416 m!6615894))

(assert (=> d!1783793 d!1784355))

(declare-fun d!1784357 () Bool)

(assert (=> d!1784357 (= (Exists!2731 lambda!303524) (choose!42758 lambda!303524))))

(declare-fun bs!1313417 () Bool)

(assert (= bs!1313417 d!1784357))

(declare-fun m!6615896 () Bool)

(assert (=> bs!1313417 m!6615896))

(assert (=> d!1783793 d!1784357))

(declare-fun bs!1313430 () Bool)

(declare-fun d!1784359 () Bool)

(assert (= bs!1313430 (and d!1784359 d!1783675)))

(declare-fun lambda!303630 () Int)

(assert (=> bs!1313430 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303630 lambda!303489))))

(declare-fun bs!1313431 () Bool)

(assert (= bs!1313431 (and d!1784359 d!1783751)))

(assert (=> bs!1313431 (not (= lambda!303630 lambda!303513))))

(declare-fun bs!1313432 () Bool)

(assert (= bs!1313432 (and d!1784359 b!5646415)))

(assert (=> bs!1313432 (not (= lambda!303630 lambda!303429))))

(declare-fun bs!1313433 () Bool)

(assert (= bs!1313433 (and d!1784359 b!5646420)))

(assert (=> bs!1313433 (not (= lambda!303630 lambda!303424))))

(assert (=> bs!1313432 (not (= lambda!303630 lambda!303427))))

(declare-fun bs!1313434 () Bool)

(assert (= bs!1313434 (and d!1784359 b!5647372)))

(assert (=> bs!1313434 (not (= lambda!303630 lambda!303521))))

(assert (=> bs!1313432 (= lambda!303630 lambda!303426)))

(assert (=> bs!1313432 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303630 lambda!303428))))

(declare-fun bs!1313435 () Bool)

(assert (= bs!1313435 (and d!1784359 d!1783793)))

(assert (=> bs!1313435 (= lambda!303630 lambda!303523)))

(assert (=> bs!1313435 (not (= lambda!303630 lambda!303524))))

(declare-fun bs!1313436 () Bool)

(assert (= bs!1313436 (and d!1784359 b!5647367)))

(assert (=> bs!1313436 (not (= lambda!303630 lambda!303522))))

(declare-fun bs!1313437 () Bool)

(assert (= bs!1313437 (and d!1784359 b!5647087)))

(assert (=> bs!1313437 (not (= lambda!303630 lambda!303501))))

(declare-fun bs!1313438 () Bool)

(assert (= bs!1313438 (and d!1784359 d!1783759)))

(assert (=> bs!1313438 (= lambda!303630 lambda!303514)))

(declare-fun bs!1313439 () Bool)

(assert (= bs!1313439 (and d!1784359 d!1783677)))

(assert (=> bs!1313439 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303630 lambda!303494))))

(declare-fun bs!1313440 () Bool)

(assert (= bs!1313440 (and d!1784359 b!5647359)))

(assert (=> bs!1313440 (not (= lambda!303630 lambda!303518))))

(declare-fun bs!1313441 () Bool)

(assert (= bs!1313441 (and d!1784359 b!5647092)))

(assert (=> bs!1313441 (not (= lambda!303630 lambda!303500))))

(assert (=> bs!1313439 (not (= lambda!303630 lambda!303495))))

(declare-fun bs!1313442 () Bool)

(assert (= bs!1313442 (and d!1784359 d!1783781)))

(assert (=> bs!1313442 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303630 lambda!303520))))

(assert (=> bs!1313431 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303630 lambda!303512))))

(assert (=> bs!1313433 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303630 lambda!303423))))

(declare-fun bs!1313443 () Bool)

(assert (= bs!1313443 (and d!1784359 b!5647354)))

(assert (=> bs!1313443 (not (= lambda!303630 lambda!303519))))

(assert (=> d!1784359 true))

(assert (=> d!1784359 true))

(assert (=> d!1784359 true))

(declare-fun lambda!303631 () Int)

(assert (=> bs!1313430 (not (= lambda!303631 lambda!303489))))

(assert (=> bs!1313431 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303631 lambda!303513))))

(assert (=> bs!1313432 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303631 lambda!303429))))

(assert (=> bs!1313433 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303631 lambda!303424))))

(assert (=> bs!1313432 (= lambda!303631 lambda!303427)))

(assert (=> bs!1313434 (not (= lambda!303631 lambda!303521))))

(assert (=> bs!1313432 (not (= lambda!303631 lambda!303426))))

(assert (=> bs!1313432 (not (= lambda!303631 lambda!303428))))

(assert (=> bs!1313435 (not (= lambda!303631 lambda!303523))))

(assert (=> bs!1313435 (= lambda!303631 lambda!303524)))

(assert (=> bs!1313436 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264184)) (= lt!2264184 (regTwo!31774 lt!2264184))) (= lambda!303631 lambda!303522))))

(assert (=> bs!1313437 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303631 lambda!303501))))

(assert (=> bs!1313438 (not (= lambda!303631 lambda!303514))))

(assert (=> bs!1313439 (not (= lambda!303631 lambda!303494))))

(assert (=> bs!1313440 (not (= lambda!303631 lambda!303518))))

(assert (=> bs!1313441 (not (= lambda!303631 lambda!303500))))

(assert (=> bs!1313439 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303631 lambda!303495))))

(declare-fun bs!1313444 () Bool)

(assert (= bs!1313444 d!1784359))

(assert (=> bs!1313444 (not (= lambda!303631 lambda!303630))))

(assert (=> bs!1313442 (not (= lambda!303631 lambda!303520))))

(assert (=> bs!1313431 (not (= lambda!303631 lambda!303512))))

(assert (=> bs!1313433 (not (= lambda!303631 lambda!303423))))

(assert (=> bs!1313443 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264222)) (= lt!2264184 (regTwo!31774 lt!2264222))) (= lambda!303631 lambda!303519))))

(assert (=> d!1784359 true))

(assert (=> d!1784359 true))

(assert (=> d!1784359 true))

(assert (=> d!1784359 (= (Exists!2731 lambda!303630) (Exists!2731 lambda!303631))))

(assert (=> d!1784359 true))

(declare-fun _$90!1387 () Unit!156056)

(assert (=> d!1784359 (= (choose!42760 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326) _$90!1387)))

(declare-fun m!6615912 () Bool)

(assert (=> bs!1313444 m!6615912))

(declare-fun m!6615914 () Bool)

(assert (=> bs!1313444 m!6615914))

(assert (=> d!1783793 d!1784359))

(declare-fun bm!427239 () Bool)

(declare-fun call!427246 () Bool)

(declare-fun call!427245 () Bool)

(assert (=> bm!427239 (= call!427246 call!427245)))

(declare-fun b!5648612 () Bool)

(declare-fun res!2389271 () Bool)

(declare-fun e!3479605 () Bool)

(assert (=> b!5648612 (=> (not res!2389271) (not e!3479605))))

(assert (=> b!5648612 (= res!2389271 call!427246)))

(declare-fun e!3479607 () Bool)

(assert (=> b!5648612 (= e!3479607 e!3479605)))

(declare-fun b!5648613 () Bool)

(declare-fun res!2389272 () Bool)

(declare-fun e!3479608 () Bool)

(assert (=> b!5648613 (=> res!2389272 e!3479608)))

(assert (=> b!5648613 (= res!2389272 (not ((_ is Concat!24476) (regOne!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5648613 (= e!3479607 e!3479608)))

(declare-fun bm!427240 () Bool)

(declare-fun call!427244 () Bool)

(declare-fun c!992791 () Bool)

(assert (=> bm!427240 (= call!427244 (validRegex!7367 (ite c!992791 (regTwo!31775 (regOne!31774 (regOne!31774 r!7292))) (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun d!1784385 () Bool)

(declare-fun res!2389270 () Bool)

(declare-fun e!3479610 () Bool)

(assert (=> d!1784385 (=> res!2389270 e!3479610)))

(assert (=> d!1784385 (= res!2389270 ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784385 (= (validRegex!7367 (regOne!31774 (regOne!31774 r!7292))) e!3479610)))

(declare-fun b!5648614 () Bool)

(declare-fun e!3479604 () Bool)

(assert (=> b!5648614 (= e!3479604 e!3479607)))

(assert (=> b!5648614 (= c!992791 ((_ is Union!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648615 () Bool)

(assert (=> b!5648615 (= e!3479610 e!3479604)))

(declare-fun c!992790 () Bool)

(assert (=> b!5648615 (= c!992790 ((_ is Star!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun bm!427241 () Bool)

(assert (=> bm!427241 (= call!427245 (validRegex!7367 (ite c!992790 (reg!15960 (regOne!31774 (regOne!31774 r!7292))) (ite c!992791 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))))

(declare-fun b!5648616 () Bool)

(declare-fun e!3479609 () Bool)

(assert (=> b!5648616 (= e!3479609 call!427245)))

(declare-fun b!5648617 () Bool)

(declare-fun e!3479606 () Bool)

(assert (=> b!5648617 (= e!3479606 call!427244)))

(declare-fun b!5648618 () Bool)

(assert (=> b!5648618 (= e!3479608 e!3479606)))

(declare-fun res!2389269 () Bool)

(assert (=> b!5648618 (=> (not res!2389269) (not e!3479606))))

(assert (=> b!5648618 (= res!2389269 call!427246)))

(declare-fun b!5648619 () Bool)

(assert (=> b!5648619 (= e!3479605 call!427244)))

(declare-fun b!5648620 () Bool)

(assert (=> b!5648620 (= e!3479604 e!3479609)))

(declare-fun res!2389268 () Bool)

(assert (=> b!5648620 (= res!2389268 (not (nullable!5663 (reg!15960 (regOne!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5648620 (=> (not res!2389268) (not e!3479609))))

(assert (= (and d!1784385 (not res!2389270)) b!5648615))

(assert (= (and b!5648615 c!992790) b!5648620))

(assert (= (and b!5648615 (not c!992790)) b!5648614))

(assert (= (and b!5648620 res!2389268) b!5648616))

(assert (= (and b!5648614 c!992791) b!5648612))

(assert (= (and b!5648614 (not c!992791)) b!5648613))

(assert (= (and b!5648612 res!2389271) b!5648619))

(assert (= (and b!5648613 (not res!2389272)) b!5648618))

(assert (= (and b!5648618 res!2389269) b!5648617))

(assert (= (or b!5648619 b!5648617) bm!427240))

(assert (= (or b!5648612 b!5648618) bm!427239))

(assert (= (or b!5648616 bm!427239) bm!427241))

(declare-fun m!6615916 () Bool)

(assert (=> bm!427240 m!6615916))

(declare-fun m!6615918 () Bool)

(assert (=> bm!427241 m!6615918))

(declare-fun m!6615920 () Bool)

(assert (=> b!5648620 m!6615920))

(assert (=> d!1783793 d!1784385))

(declare-fun d!1784387 () Bool)

(assert (=> d!1784387 (= (head!12006 s!2326) (h!69517 s!2326))))

(assert (=> b!5647276 d!1784387))

(declare-fun d!1784389 () Bool)

(assert (=> d!1784389 (= (isDefined!12343 lt!2264377) (not (isEmpty!34918 lt!2264377)))))

(declare-fun bs!1313445 () Bool)

(assert (= bs!1313445 d!1784389))

(declare-fun m!6615922 () Bool)

(assert (=> bs!1313445 m!6615922))

(assert (=> d!1783773 d!1784389))

(declare-fun b!5648621 () Bool)

(declare-fun res!2389279 () Bool)

(declare-fun e!3479611 () Bool)

(assert (=> b!5648621 (=> (not res!2389279) (not e!3479611))))

(declare-fun call!427247 () Bool)

(assert (=> b!5648621 (= res!2389279 (not call!427247))))

(declare-fun b!5648622 () Bool)

(declare-fun e!3479612 () Bool)

(assert (=> b!5648622 (= e!3479612 (nullable!5663 (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648623 () Bool)

(declare-fun e!3479614 () Bool)

(declare-fun e!3479616 () Bool)

(assert (=> b!5648623 (= e!3479614 e!3479616)))

(declare-fun res!2389280 () Bool)

(assert (=> b!5648623 (=> (not res!2389280) (not e!3479616))))

(declare-fun lt!2264498 () Bool)

(assert (=> b!5648623 (= res!2389280 (not lt!2264498))))

(declare-fun b!5648624 () Bool)

(declare-fun e!3479613 () Bool)

(assert (=> b!5648624 (= e!3479613 (not lt!2264498))))

(declare-fun b!5648625 () Bool)

(declare-fun res!2389277 () Bool)

(declare-fun e!3479615 () Bool)

(assert (=> b!5648625 (=> res!2389277 e!3479615)))

(assert (=> b!5648625 (= res!2389277 (not (isEmpty!34917 (tail!11101 Nil!63069))))))

(declare-fun b!5648627 () Bool)

(assert (=> b!5648627 (= e!3479616 e!3479615)))

(declare-fun res!2389276 () Bool)

(assert (=> b!5648627 (=> res!2389276 e!3479615)))

(assert (=> b!5648627 (= res!2389276 call!427247)))

(declare-fun b!5648628 () Bool)

(assert (=> b!5648628 (= e!3479611 (= (head!12006 Nil!63069) (c!992159 (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5648629 () Bool)

(declare-fun res!2389278 () Bool)

(assert (=> b!5648629 (=> res!2389278 e!3479614)))

(assert (=> b!5648629 (= res!2389278 (not ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5648629 (= e!3479613 e!3479614)))

(declare-fun b!5648630 () Bool)

(declare-fun e!3479617 () Bool)

(assert (=> b!5648630 (= e!3479617 (= lt!2264498 call!427247))))

(declare-fun bm!427242 () Bool)

(assert (=> bm!427242 (= call!427247 (isEmpty!34917 Nil!63069))))

(declare-fun d!1784391 () Bool)

(assert (=> d!1784391 e!3479617))

(declare-fun c!992792 () Bool)

(assert (=> d!1784391 (= c!992792 ((_ is EmptyExpr!15631) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784391 (= lt!2264498 e!3479612)))

(declare-fun c!992793 () Bool)

(assert (=> d!1784391 (= c!992793 (isEmpty!34917 Nil!63069))))

(assert (=> d!1784391 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784391 (= (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) Nil!63069) lt!2264498)))

(declare-fun b!5648626 () Bool)

(assert (=> b!5648626 (= e!3479612 (matchR!7816 (derivativeStep!4467 (regOne!31774 (regOne!31774 r!7292)) (head!12006 Nil!63069)) (tail!11101 Nil!63069)))))

(declare-fun b!5648631 () Bool)

(declare-fun res!2389273 () Bool)

(assert (=> b!5648631 (=> res!2389273 e!3479614)))

(assert (=> b!5648631 (= res!2389273 e!3479611)))

(declare-fun res!2389275 () Bool)

(assert (=> b!5648631 (=> (not res!2389275) (not e!3479611))))

(assert (=> b!5648631 (= res!2389275 lt!2264498)))

(declare-fun b!5648632 () Bool)

(declare-fun res!2389274 () Bool)

(assert (=> b!5648632 (=> (not res!2389274) (not e!3479611))))

(assert (=> b!5648632 (= res!2389274 (isEmpty!34917 (tail!11101 Nil!63069)))))

(declare-fun b!5648633 () Bool)

(assert (=> b!5648633 (= e!3479617 e!3479613)))

(declare-fun c!992794 () Bool)

(assert (=> b!5648633 (= c!992794 ((_ is EmptyLang!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5648634 () Bool)

(assert (=> b!5648634 (= e!3479615 (not (= (head!12006 Nil!63069) (c!992159 (regOne!31774 (regOne!31774 r!7292))))))))

(assert (= (and d!1784391 c!992793) b!5648622))

(assert (= (and d!1784391 (not c!992793)) b!5648626))

(assert (= (and d!1784391 c!992792) b!5648630))

(assert (= (and d!1784391 (not c!992792)) b!5648633))

(assert (= (and b!5648633 c!992794) b!5648624))

(assert (= (and b!5648633 (not c!992794)) b!5648629))

(assert (= (and b!5648629 (not res!2389278)) b!5648631))

(assert (= (and b!5648631 res!2389275) b!5648621))

(assert (= (and b!5648621 res!2389279) b!5648632))

(assert (= (and b!5648632 res!2389274) b!5648628))

(assert (= (and b!5648631 (not res!2389273)) b!5648623))

(assert (= (and b!5648623 res!2389280) b!5648627))

(assert (= (and b!5648627 (not res!2389276)) b!5648625))

(assert (= (and b!5648625 (not res!2389277)) b!5648634))

(assert (= (or b!5648630 b!5648621 b!5648627) bm!427242))

(assert (=> d!1784391 m!6615814))

(assert (=> d!1784391 m!6614578))

(assert (=> b!5648634 m!6615816))

(assert (=> b!5648628 m!6615816))

(assert (=> bm!427242 m!6615814))

(assert (=> b!5648632 m!6615818))

(assert (=> b!5648632 m!6615818))

(assert (=> b!5648632 m!6615820))

(assert (=> b!5648625 m!6615818))

(assert (=> b!5648625 m!6615818))

(assert (=> b!5648625 m!6615820))

(assert (=> b!5648626 m!6615816))

(assert (=> b!5648626 m!6615816))

(declare-fun m!6615924 () Bool)

(assert (=> b!5648626 m!6615924))

(assert (=> b!5648626 m!6615818))

(assert (=> b!5648626 m!6615924))

(assert (=> b!5648626 m!6615818))

(declare-fun m!6615926 () Bool)

(assert (=> b!5648626 m!6615926))

(assert (=> b!5648622 m!6613726))

(assert (=> d!1783773 d!1784391))

(assert (=> d!1783773 d!1784385))

(assert (=> d!1783719 d!1784295))

(declare-fun d!1784393 () Bool)

(assert (=> d!1784393 true))

(declare-fun setRes!37727 () Bool)

(assert (=> d!1784393 setRes!37727))

(declare-fun condSetEmpty!37727 () Bool)

(declare-fun res!2389283 () (InoxSet Context!10030))

(assert (=> d!1784393 (= condSetEmpty!37727 (= res!2389283 ((as const (Array Context!10030 Bool)) false)))))

(assert (=> d!1784393 (= (choose!42756 z!1189 lambda!303425) res!2389283)))

(declare-fun setIsEmpty!37727 () Bool)

(assert (=> setIsEmpty!37727 setRes!37727))

(declare-fun setElem!37727 () Context!10030)

(declare-fun tp!1565335 () Bool)

(declare-fun e!3479620 () Bool)

(declare-fun setNonEmpty!37727 () Bool)

(assert (=> setNonEmpty!37727 (= setRes!37727 (and tp!1565335 (inv!82324 setElem!37727) e!3479620))))

(declare-fun setRest!37727 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37727 (= res!2389283 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37727 true) setRest!37727))))

(declare-fun b!5648637 () Bool)

(declare-fun tp!1565334 () Bool)

(assert (=> b!5648637 (= e!3479620 tp!1565334)))

(assert (= (and d!1784393 condSetEmpty!37727) setIsEmpty!37727))

(assert (= (and d!1784393 (not condSetEmpty!37727)) setNonEmpty!37727))

(assert (= setNonEmpty!37727 b!5648637))

(declare-fun m!6615928 () Bool)

(assert (=> setNonEmpty!37727 m!6615928))

(assert (=> d!1783695 d!1784393))

(declare-fun d!1784395 () Bool)

(assert (=> d!1784395 (= (isEmpty!34918 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326)) (not ((_ is Some!15639) (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326))))))

(assert (=> d!1783679 d!1784395))

(declare-fun call!427251 () List!63192)

(declare-fun bm!427243 () Bool)

(declare-fun c!992796 () Bool)

(declare-fun c!992799 () Bool)

(assert (=> bm!427243 (= call!427251 ($colon$colon!1681 (exprs!5515 (ite c!992386 lt!2264212 (Context!10031 call!427005))) (ite (or c!992799 c!992796) (regTwo!31774 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun bm!427244 () Bool)

(declare-fun call!427252 () List!63192)

(assert (=> bm!427244 (= call!427252 call!427251)))

(declare-fun b!5648638 () Bool)

(declare-fun e!3479626 () (InoxSet Context!10030))

(assert (=> b!5648638 (= e!3479626 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648639 () Bool)

(declare-fun e!3479622 () (InoxSet Context!10030))

(declare-fun call!427250 () (InoxSet Context!10030))

(assert (=> b!5648639 (= e!3479622 call!427250)))

(declare-fun d!1784397 () Bool)

(declare-fun c!992797 () Bool)

(assert (=> d!1784397 (= c!992797 (and ((_ is ElementMatch!15631) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (= (c!992159 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (h!69517 s!2326))))))

(declare-fun e!3479623 () (InoxSet Context!10030))

(assert (=> d!1784397 (= (derivationStepZipperDown!973 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))) (ite c!992386 lt!2264212 (Context!10031 call!427005)) (h!69517 s!2326)) e!3479623)))

(declare-fun bm!427245 () Bool)

(declare-fun call!427248 () (InoxSet Context!10030))

(declare-fun c!992798 () Bool)

(assert (=> bm!427245 (= call!427248 (derivationStepZipperDown!973 (ite c!992798 (regOne!31775 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (regOne!31774 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))) (ite c!992798 (ite c!992386 lt!2264212 (Context!10031 call!427005)) (Context!10031 call!427251)) (h!69517 s!2326)))))

(declare-fun b!5648640 () Bool)

(declare-fun e!3479624 () (InoxSet Context!10030))

(assert (=> b!5648640 (= e!3479623 e!3479624)))

(assert (=> b!5648640 (= c!992798 ((_ is Union!15631) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648641 () Bool)

(declare-fun call!427249 () (InoxSet Context!10030))

(assert (=> b!5648641 (= e!3479624 ((_ map or) call!427248 call!427249))))

(declare-fun b!5648642 () Bool)

(declare-fun e!3479621 () (InoxSet Context!10030))

(declare-fun call!427253 () (InoxSet Context!10030))

(assert (=> b!5648642 (= e!3479621 ((_ map or) call!427248 call!427253))))

(declare-fun b!5648643 () Bool)

(assert (=> b!5648643 (= e!3479623 (store ((as const (Array Context!10030 Bool)) false) (ite c!992386 lt!2264212 (Context!10031 call!427005)) true))))

(declare-fun b!5648644 () Bool)

(declare-fun e!3479625 () Bool)

(assert (=> b!5648644 (= e!3479625 (nullable!5663 (regOne!31774 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun b!5648645 () Bool)

(declare-fun c!992795 () Bool)

(assert (=> b!5648645 (= c!992795 ((_ is Star!15631) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(assert (=> b!5648645 (= e!3479622 e!3479626)))

(declare-fun b!5648646 () Bool)

(assert (=> b!5648646 (= e!3479626 call!427250)))

(declare-fun b!5648647 () Bool)

(assert (=> b!5648647 (= e!3479621 e!3479622)))

(assert (=> b!5648647 (= c!992796 ((_ is Concat!24476) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun bm!427246 () Bool)

(assert (=> bm!427246 (= call!427250 call!427253)))

(declare-fun bm!427247 () Bool)

(assert (=> bm!427247 (= call!427253 call!427249)))

(declare-fun b!5648648 () Bool)

(assert (=> b!5648648 (= c!992799 e!3479625)))

(declare-fun res!2389284 () Bool)

(assert (=> b!5648648 (=> (not res!2389284) (not e!3479625))))

(assert (=> b!5648648 (= res!2389284 ((_ is Concat!24476) (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(assert (=> b!5648648 (= e!3479624 e!3479621)))

(declare-fun bm!427248 () Bool)

(assert (=> bm!427248 (= call!427249 (derivationStepZipperDown!973 (ite c!992798 (regTwo!31775 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (ite c!992799 (regTwo!31774 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (ite c!992796 (regOne!31774 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))) (reg!15960 (ite c!992386 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))) (ite (or c!992798 c!992799) (ite c!992386 lt!2264212 (Context!10031 call!427005)) (Context!10031 call!427252)) (h!69517 s!2326)))))

(assert (= (and d!1784397 c!992797) b!5648643))

(assert (= (and d!1784397 (not c!992797)) b!5648640))

(assert (= (and b!5648640 c!992798) b!5648641))

(assert (= (and b!5648640 (not c!992798)) b!5648648))

(assert (= (and b!5648648 res!2389284) b!5648644))

(assert (= (and b!5648648 c!992799) b!5648642))

(assert (= (and b!5648648 (not c!992799)) b!5648647))

(assert (= (and b!5648647 c!992796) b!5648639))

(assert (= (and b!5648647 (not c!992796)) b!5648645))

(assert (= (and b!5648645 c!992795) b!5648646))

(assert (= (and b!5648645 (not c!992795)) b!5648638))

(assert (= (or b!5648639 b!5648646) bm!427244))

(assert (= (or b!5648639 b!5648646) bm!427246))

(assert (= (or b!5648642 bm!427244) bm!427243))

(assert (= (or b!5648642 bm!427246) bm!427247))

(assert (= (or b!5648641 bm!427247) bm!427248))

(assert (= (or b!5648641 b!5648642) bm!427245))

(declare-fun m!6615930 () Bool)

(assert (=> bm!427243 m!6615930))

(declare-fun m!6615932 () Bool)

(assert (=> b!5648644 m!6615932))

(declare-fun m!6615934 () Bool)

(assert (=> bm!427245 m!6615934))

(declare-fun m!6615936 () Bool)

(assert (=> bm!427248 m!6615936))

(declare-fun m!6615938 () Bool)

(assert (=> b!5648643 m!6615938))

(assert (=> bm!426999 d!1784397))

(declare-fun d!1784399 () Bool)

(assert (=> d!1784399 (= (isEmptyExpr!1172 lt!2264379) ((_ is EmptyExpr!15631) lt!2264379))))

(assert (=> b!5647342 d!1784399))

(declare-fun d!1784401 () Bool)

(assert (=> d!1784401 (= (maxBigInt!0 (contextDepth!119 (h!69518 lt!2264185)) (zipperDepth!208 (t!376492 lt!2264185))) (ite (>= (contextDepth!119 (h!69518 lt!2264185)) (zipperDepth!208 (t!376492 lt!2264185))) (contextDepth!119 (h!69518 lt!2264185)) (zipperDepth!208 (t!376492 lt!2264185))))))

(assert (=> b!5647418 d!1784401))

(declare-fun bs!1313446 () Bool)

(declare-fun b!5648656 () Bool)

(assert (= bs!1313446 (and b!5648656 d!1783769)))

(declare-fun lambda!303636 () Int)

(assert (=> bs!1313446 (not (= lambda!303636 lambda!303516))))

(declare-fun bs!1313447 () Bool)

(assert (= bs!1313447 (and b!5648656 d!1783799)))

(assert (=> bs!1313447 (not (= lambda!303636 lambda!303527))))

(declare-fun bs!1313448 () Bool)

(assert (= bs!1313448 (and b!5648656 d!1783713)))

(assert (=> bs!1313448 (not (= lambda!303636 lambda!303504))))

(declare-fun bs!1313449 () Bool)

(assert (= bs!1313449 (and b!5648656 d!1783801)))

(assert (=> bs!1313449 (not (= lambda!303636 lambda!303530))))

(declare-fun bs!1313450 () Bool)

(assert (= bs!1313450 (and b!5648656 d!1783761)))

(assert (=> bs!1313450 (not (= lambda!303636 lambda!303515))))

(declare-fun bs!1313451 () Bool)

(assert (= bs!1313451 (and b!5648656 d!1783775)))

(assert (=> bs!1313451 (not (= lambda!303636 lambda!303517))))

(declare-fun bs!1313452 () Bool)

(assert (= bs!1313452 (and b!5648656 d!1783741)))

(assert (=> bs!1313452 (not (= lambda!303636 lambda!303511))))

(declare-fun bs!1313453 () Bool)

(assert (= bs!1313453 (and b!5648656 d!1784301)))

(assert (=> bs!1313453 (not (= lambda!303636 lambda!303621))))

(declare-fun bs!1313454 () Bool)

(assert (= bs!1313454 (and b!5648656 d!1783727)))

(assert (=> bs!1313454 (not (= lambda!303636 lambda!303505))))

(assert (=> b!5648656 true))

(declare-fun bs!1313455 () Bool)

(declare-fun b!5648658 () Bool)

(assert (= bs!1313455 (and b!5648658 d!1783769)))

(declare-fun lambda!303637 () Int)

(assert (=> bs!1313455 (not (= lambda!303637 lambda!303516))))

(declare-fun bs!1313456 () Bool)

(assert (= bs!1313456 (and b!5648658 d!1783799)))

(assert (=> bs!1313456 (not (= lambda!303637 lambda!303527))))

(declare-fun bs!1313457 () Bool)

(assert (= bs!1313457 (and b!5648658 d!1783713)))

(assert (=> bs!1313457 (not (= lambda!303637 lambda!303504))))

(declare-fun bs!1313458 () Bool)

(assert (= bs!1313458 (and b!5648658 d!1783801)))

(assert (=> bs!1313458 (not (= lambda!303637 lambda!303530))))

(declare-fun bs!1313459 () Bool)

(assert (= bs!1313459 (and b!5648658 b!5648656)))

(declare-fun lt!2264507 () Int)

(declare-fun lt!2264510 () Int)

(assert (=> bs!1313459 (= (= lt!2264510 lt!2264507) (= lambda!303637 lambda!303636))))

(declare-fun bs!1313460 () Bool)

(assert (= bs!1313460 (and b!5648658 d!1783761)))

(assert (=> bs!1313460 (not (= lambda!303637 lambda!303515))))

(declare-fun bs!1313461 () Bool)

(assert (= bs!1313461 (and b!5648658 d!1783775)))

(assert (=> bs!1313461 (not (= lambda!303637 lambda!303517))))

(declare-fun bs!1313462 () Bool)

(assert (= bs!1313462 (and b!5648658 d!1783741)))

(assert (=> bs!1313462 (not (= lambda!303637 lambda!303511))))

(declare-fun bs!1313463 () Bool)

(assert (= bs!1313463 (and b!5648658 d!1784301)))

(assert (=> bs!1313463 (not (= lambda!303637 lambda!303621))))

(declare-fun bs!1313464 () Bool)

(assert (= bs!1313464 (and b!5648658 d!1783727)))

(assert (=> bs!1313464 (not (= lambda!303637 lambda!303505))))

(assert (=> b!5648658 true))

(declare-fun d!1784403 () Bool)

(declare-fun e!3479632 () Bool)

(assert (=> d!1784403 e!3479632))

(declare-fun res!2389287 () Bool)

(assert (=> d!1784403 (=> (not res!2389287) (not e!3479632))))

(assert (=> d!1784403 (= res!2389287 (>= lt!2264510 0))))

(declare-fun e!3479631 () Int)

(assert (=> d!1784403 (= lt!2264510 e!3479631)))

(declare-fun c!992803 () Bool)

(assert (=> d!1784403 (= c!992803 ((_ is Cons!63068) (exprs!5515 (h!69518 lt!2264185))))))

(assert (=> d!1784403 (= (contextDepth!119 (h!69518 lt!2264185)) lt!2264510)))

(assert (=> b!5648656 (= e!3479631 lt!2264507)))

(declare-fun regexDepth!223 (Regex!15631) Int)

(assert (=> b!5648656 (= lt!2264507 (maxBigInt!0 (regexDepth!223 (h!69516 (exprs!5515 (h!69518 lt!2264185)))) (contextDepth!119 (Context!10031 (t!376490 (exprs!5515 (h!69518 lt!2264185)))))))))

(declare-fun lt!2264509 () Unit!156056)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!26 (List!63192 Int Int) Unit!156056)

(assert (=> b!5648656 (= lt!2264509 (lemmaForallRegexDepthBiggerThanTransitive!26 (t!376490 (exprs!5515 (h!69518 lt!2264185))) lt!2264507 (contextDepth!119 (Context!10031 (t!376490 (exprs!5515 (h!69518 lt!2264185)))))))))

(assert (=> b!5648656 (forall!14788 (t!376490 (exprs!5515 (h!69518 lt!2264185))) lambda!303636)))

(declare-fun lt!2264508 () Unit!156056)

(assert (=> b!5648656 (= lt!2264508 lt!2264509)))

(declare-fun b!5648657 () Bool)

(assert (=> b!5648657 (= e!3479631 0)))

(assert (=> b!5648658 (= e!3479632 (forall!14788 (exprs!5515 (h!69518 lt!2264185)) lambda!303637))))

(assert (= (and d!1784403 c!992803) b!5648656))

(assert (= (and d!1784403 (not c!992803)) b!5648657))

(assert (= (and d!1784403 res!2389287) b!5648658))

(declare-fun m!6615940 () Bool)

(assert (=> b!5648656 m!6615940))

(declare-fun m!6615942 () Bool)

(assert (=> b!5648656 m!6615942))

(declare-fun m!6615944 () Bool)

(assert (=> b!5648656 m!6615944))

(declare-fun m!6615946 () Bool)

(assert (=> b!5648656 m!6615946))

(assert (=> b!5648656 m!6615942))

(declare-fun m!6615948 () Bool)

(assert (=> b!5648656 m!6615948))

(assert (=> b!5648656 m!6615940))

(assert (=> b!5648656 m!6615942))

(declare-fun m!6615950 () Bool)

(assert (=> b!5648658 m!6615950))

(assert (=> b!5647418 d!1784403))

(declare-fun d!1784405 () Bool)

(declare-fun res!2389292 () Bool)

(declare-fun e!3479637 () Bool)

(assert (=> d!1784405 (=> res!2389292 e!3479637)))

(assert (=> d!1784405 (= res!2389292 ((_ is Nil!63070) (t!376492 lt!2264185)))))

(assert (=> d!1784405 (= (forall!14789 (t!376492 lt!2264185) lambda!303538) e!3479637)))

(declare-fun b!5648665 () Bool)

(declare-fun e!3479638 () Bool)

(assert (=> b!5648665 (= e!3479637 e!3479638)))

(declare-fun res!2389293 () Bool)

(assert (=> b!5648665 (=> (not res!2389293) (not e!3479638))))

(declare-fun dynLambda!24680 (Int Context!10030) Bool)

(assert (=> b!5648665 (= res!2389293 (dynLambda!24680 lambda!303538 (h!69518 (t!376492 lt!2264185))))))

(declare-fun b!5648666 () Bool)

(assert (=> b!5648666 (= e!3479638 (forall!14789 (t!376492 (t!376492 lt!2264185)) lambda!303538))))

(assert (= (and d!1784405 (not res!2389292)) b!5648665))

(assert (= (and b!5648665 res!2389293) b!5648666))

(declare-fun b_lambda!213713 () Bool)

(assert (=> (not b_lambda!213713) (not b!5648665)))

(declare-fun m!6615952 () Bool)

(assert (=> b!5648665 m!6615952))

(declare-fun m!6615954 () Bool)

(assert (=> b!5648666 m!6615954))

(assert (=> b!5647418 d!1784405))

(declare-fun bs!1313465 () Bool)

(declare-fun d!1784407 () Bool)

(assert (= bs!1313465 (and d!1784407 b!5647418)))

(declare-fun lambda!303640 () Int)

(assert (=> bs!1313465 (not (= lambda!303640 lambda!303538))))

(declare-fun bs!1313466 () Bool)

(assert (= bs!1313466 (and d!1784407 b!5647420)))

(assert (=> bs!1313466 (not (= lambda!303640 lambda!303539))))

(declare-fun bs!1313467 () Bool)

(assert (= bs!1313467 (and d!1784407 b!5647423)))

(assert (=> bs!1313467 (not (= lambda!303640 lambda!303541))))

(declare-fun bs!1313468 () Bool)

(assert (= bs!1313468 (and d!1784407 b!5647425)))

(assert (=> bs!1313468 (not (= lambda!303640 lambda!303542))))

(assert (=> d!1784407 true))

(assert (=> d!1784407 true))

(declare-fun order!27165 () Int)

(declare-fun order!27167 () Int)

(declare-fun dynLambda!24681 (Int Int) Int)

(declare-fun dynLambda!24682 (Int Int) Int)

(assert (=> d!1784407 (< (dynLambda!24681 order!27165 lambda!303537) (dynLambda!24682 order!27167 lambda!303640))))

(assert (=> d!1784407 (forall!14789 (t!376492 lt!2264185) lambda!303640)))

(declare-fun lt!2264513 () Unit!156056)

(declare-fun choose!42766 (List!63194 Int Int Int) Unit!156056)

(assert (=> d!1784407 (= lt!2264513 (choose!42766 (t!376492 lt!2264185) lt!2264407 (zipperDepth!208 (t!376492 lt!2264185)) lambda!303537))))

(assert (=> d!1784407 (>= lt!2264407 (zipperDepth!208 (t!376492 lt!2264185)))))

(assert (=> d!1784407 (= (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 lt!2264185) lt!2264407 (zipperDepth!208 (t!376492 lt!2264185)) lambda!303537) lt!2264513)))

(declare-fun bs!1313469 () Bool)

(assert (= bs!1313469 d!1784407))

(declare-fun m!6615956 () Bool)

(assert (=> bs!1313469 m!6615956))

(assert (=> bs!1313469 m!6614752))

(declare-fun m!6615958 () Bool)

(assert (=> bs!1313469 m!6615958))

(assert (=> b!5647418 d!1784407))

(declare-fun bs!1313470 () Bool)

(declare-fun b!5648670 () Bool)

(assert (= bs!1313470 (and b!5648670 b!5647418)))

(declare-fun lambda!303641 () Int)

(assert (=> bs!1313470 (= lambda!303641 lambda!303537)))

(declare-fun bs!1313471 () Bool)

(assert (= bs!1313471 (and b!5648670 b!5647423)))

(assert (=> bs!1313471 (= lambda!303641 lambda!303540)))

(declare-fun bs!1313472 () Bool)

(assert (= bs!1313472 (and b!5648670 d!1784407)))

(declare-fun lambda!303642 () Int)

(assert (=> bs!1313472 (not (= lambda!303642 lambda!303640))))

(declare-fun lt!2264517 () Int)

(assert (=> bs!1313470 (= (= lt!2264517 lt!2264407) (= lambda!303642 lambda!303538))))

(assert (=> bs!1313471 (= (= lt!2264517 lt!2264411) (= lambda!303642 lambda!303541))))

(declare-fun bs!1313473 () Bool)

(assert (= bs!1313473 (and b!5648670 b!5647425)))

(assert (=> bs!1313473 (= (= lt!2264517 lt!2264410) (= lambda!303642 lambda!303542))))

(declare-fun bs!1313474 () Bool)

(assert (= bs!1313474 (and b!5648670 b!5647420)))

(assert (=> bs!1313474 (= (= lt!2264517 lt!2264406) (= lambda!303642 lambda!303539))))

(assert (=> b!5648670 true))

(declare-fun bs!1313475 () Bool)

(declare-fun b!5648672 () Bool)

(assert (= bs!1313475 (and b!5648672 d!1784407)))

(declare-fun lambda!303643 () Int)

(assert (=> bs!1313475 (not (= lambda!303643 lambda!303640))))

(declare-fun bs!1313476 () Bool)

(assert (= bs!1313476 (and b!5648672 b!5647418)))

(declare-fun lt!2264516 () Int)

(assert (=> bs!1313476 (= (= lt!2264516 lt!2264407) (= lambda!303643 lambda!303538))))

(declare-fun bs!1313477 () Bool)

(assert (= bs!1313477 (and b!5648672 b!5648670)))

(assert (=> bs!1313477 (= (= lt!2264516 lt!2264517) (= lambda!303643 lambda!303642))))

(declare-fun bs!1313478 () Bool)

(assert (= bs!1313478 (and b!5648672 b!5647423)))

(assert (=> bs!1313478 (= (= lt!2264516 lt!2264411) (= lambda!303643 lambda!303541))))

(declare-fun bs!1313479 () Bool)

(assert (= bs!1313479 (and b!5648672 b!5647425)))

(assert (=> bs!1313479 (= (= lt!2264516 lt!2264410) (= lambda!303643 lambda!303542))))

(declare-fun bs!1313480 () Bool)

(assert (= bs!1313480 (and b!5648672 b!5647420)))

(assert (=> bs!1313480 (= (= lt!2264516 lt!2264406) (= lambda!303643 lambda!303539))))

(assert (=> b!5648672 true))

(declare-fun d!1784409 () Bool)

(declare-fun e!3479640 () Bool)

(assert (=> d!1784409 e!3479640))

(declare-fun res!2389294 () Bool)

(assert (=> d!1784409 (=> (not res!2389294) (not e!3479640))))

(assert (=> d!1784409 (= res!2389294 (>= lt!2264516 0))))

(declare-fun e!3479639 () Int)

(assert (=> d!1784409 (= lt!2264516 e!3479639)))

(declare-fun c!992806 () Bool)

(assert (=> d!1784409 (= c!992806 ((_ is Cons!63070) (t!376492 lt!2264185)))))

(assert (=> d!1784409 (= (zipperDepth!208 (t!376492 lt!2264185)) lt!2264516)))

(assert (=> b!5648670 (= e!3479639 lt!2264517)))

(assert (=> b!5648670 (= lt!2264517 (maxBigInt!0 (contextDepth!119 (h!69518 (t!376492 lt!2264185))) (zipperDepth!208 (t!376492 (t!376492 lt!2264185)))))))

(declare-fun lt!2264514 () Unit!156056)

(assert (=> b!5648670 (= lt!2264514 (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 (t!376492 lt!2264185)) lt!2264517 (zipperDepth!208 (t!376492 (t!376492 lt!2264185))) lambda!303641))))

(assert (=> b!5648670 (forall!14789 (t!376492 (t!376492 lt!2264185)) lambda!303642)))

(declare-fun lt!2264515 () Unit!156056)

(assert (=> b!5648670 (= lt!2264515 lt!2264514)))

(declare-fun b!5648671 () Bool)

(assert (=> b!5648671 (= e!3479639 0)))

(assert (=> b!5648672 (= e!3479640 (forall!14789 (t!376492 lt!2264185) lambda!303643))))

(assert (= (and d!1784409 c!992806) b!5648670))

(assert (= (and d!1784409 (not c!992806)) b!5648671))

(assert (= (and d!1784409 res!2389294) b!5648672))

(declare-fun m!6615960 () Bool)

(assert (=> b!5648670 m!6615960))

(declare-fun m!6615962 () Bool)

(assert (=> b!5648670 m!6615962))

(declare-fun m!6615964 () Bool)

(assert (=> b!5648670 m!6615964))

(assert (=> b!5648670 m!6615962))

(declare-fun m!6615966 () Bool)

(assert (=> b!5648670 m!6615966))

(assert (=> b!5648670 m!6615962))

(assert (=> b!5648670 m!6615960))

(declare-fun m!6615968 () Bool)

(assert (=> b!5648670 m!6615968))

(declare-fun m!6615970 () Bool)

(assert (=> b!5648672 m!6615970))

(assert (=> b!5647418 d!1784409))

(declare-fun d!1784411 () Bool)

(assert (=> d!1784411 true))

(assert (=> d!1784411 true))

(declare-fun res!2389295 () Bool)

(assert (=> d!1784411 (= (choose!42758 lambda!303429) res!2389295)))

(assert (=> d!1783749 d!1784411))

(declare-fun d!1784413 () Bool)

(assert (=> d!1784413 (= (isEmpty!34917 s!2326) ((_ is Nil!63069) s!2326))))

(assert (=> d!1783767 d!1784413))

(declare-fun bm!427249 () Bool)

(declare-fun call!427256 () Bool)

(declare-fun call!427255 () Bool)

(assert (=> bm!427249 (= call!427256 call!427255)))

(declare-fun b!5648673 () Bool)

(declare-fun res!2389299 () Bool)

(declare-fun e!3479642 () Bool)

(assert (=> b!5648673 (=> (not res!2389299) (not e!3479642))))

(assert (=> b!5648673 (= res!2389299 call!427256)))

(declare-fun e!3479644 () Bool)

(assert (=> b!5648673 (= e!3479644 e!3479642)))

(declare-fun b!5648674 () Bool)

(declare-fun res!2389300 () Bool)

(declare-fun e!3479645 () Bool)

(assert (=> b!5648674 (=> res!2389300 e!3479645)))

(assert (=> b!5648674 (= res!2389300 (not ((_ is Concat!24476) (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292))))))))

(assert (=> b!5648674 (= e!3479644 e!3479645)))

(declare-fun c!992808 () Bool)

(declare-fun bm!427250 () Bool)

(declare-fun call!427254 () Bool)

(assert (=> bm!427250 (= call!427254 (validRegex!7367 (ite c!992808 (regTwo!31775 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))) (regTwo!31774 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))))

(declare-fun d!1784415 () Bool)

(declare-fun res!2389298 () Bool)

(declare-fun e!3479647 () Bool)

(assert (=> d!1784415 (=> res!2389298 e!3479647)))

(assert (=> d!1784415 (= res!2389298 ((_ is ElementMatch!15631) (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))

(assert (=> d!1784415 (= (validRegex!7367 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))) e!3479647)))

(declare-fun b!5648675 () Bool)

(declare-fun e!3479641 () Bool)

(assert (=> b!5648675 (= e!3479641 e!3479644)))

(assert (=> b!5648675 (= c!992808 ((_ is Union!15631) (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))

(declare-fun b!5648676 () Bool)

(assert (=> b!5648676 (= e!3479647 e!3479641)))

(declare-fun c!992807 () Bool)

(assert (=> b!5648676 (= c!992807 ((_ is Star!15631) (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))

(declare-fun bm!427251 () Bool)

(assert (=> bm!427251 (= call!427255 (validRegex!7367 (ite c!992807 (reg!15960 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))) (ite c!992808 (regOne!31775 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))) (regOne!31774 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292))))))))))

(declare-fun b!5648677 () Bool)

(declare-fun e!3479646 () Bool)

(assert (=> b!5648677 (= e!3479646 call!427255)))

(declare-fun b!5648678 () Bool)

(declare-fun e!3479643 () Bool)

(assert (=> b!5648678 (= e!3479643 call!427254)))

(declare-fun b!5648679 () Bool)

(assert (=> b!5648679 (= e!3479645 e!3479643)))

(declare-fun res!2389297 () Bool)

(assert (=> b!5648679 (=> (not res!2389297) (not e!3479643))))

(assert (=> b!5648679 (= res!2389297 call!427256)))

(declare-fun b!5648680 () Bool)

(assert (=> b!5648680 (= e!3479642 call!427254)))

(declare-fun b!5648681 () Bool)

(assert (=> b!5648681 (= e!3479641 e!3479646)))

(declare-fun res!2389296 () Bool)

(assert (=> b!5648681 (= res!2389296 (not (nullable!5663 (reg!15960 (ite c!992488 (reg!15960 r!7292) (ite c!992489 (regOne!31775 r!7292) (regOne!31774 r!7292)))))))))

(assert (=> b!5648681 (=> (not res!2389296) (not e!3479646))))

(assert (= (and d!1784415 (not res!2389298)) b!5648676))

(assert (= (and b!5648676 c!992807) b!5648681))

(assert (= (and b!5648676 (not c!992807)) b!5648675))

(assert (= (and b!5648681 res!2389296) b!5648677))

(assert (= (and b!5648675 c!992808) b!5648673))

(assert (= (and b!5648675 (not c!992808)) b!5648674))

(assert (= (and b!5648673 res!2389299) b!5648680))

(assert (= (and b!5648674 (not res!2389300)) b!5648679))

(assert (= (and b!5648679 res!2389297) b!5648678))

(assert (= (or b!5648680 b!5648678) bm!427250))

(assert (= (or b!5648673 b!5648679) bm!427249))

(assert (= (or b!5648677 bm!427249) bm!427251))

(declare-fun m!6615972 () Bool)

(assert (=> bm!427250 m!6615972))

(declare-fun m!6615974 () Bool)

(assert (=> bm!427251 m!6615974))

(declare-fun m!6615976 () Bool)

(assert (=> b!5648681 m!6615976))

(assert (=> bm!427030 d!1784415))

(declare-fun d!1784417 () Bool)

(declare-fun lt!2264518 () Int)

(assert (=> d!1784417 (>= lt!2264518 0)))

(declare-fun e!3479648 () Int)

(assert (=> d!1784417 (= lt!2264518 e!3479648)))

(declare-fun c!992809 () Bool)

(assert (=> d!1784417 (= c!992809 ((_ is Cons!63068) (exprs!5515 (h!69518 lt!2264185))))))

(assert (=> d!1784417 (= (contextDepthTotal!216 (h!69518 lt!2264185)) lt!2264518)))

(declare-fun b!5648682 () Bool)

(assert (=> b!5648682 (= e!3479648 (+ (regexDepthTotal!95 (h!69516 (exprs!5515 (h!69518 lt!2264185)))) (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 (h!69518 lt!2264185)))))))))

(declare-fun b!5648683 () Bool)

(assert (=> b!5648683 (= e!3479648 1)))

(assert (= (and d!1784417 c!992809) b!5648682))

(assert (= (and d!1784417 (not c!992809)) b!5648683))

(declare-fun m!6615978 () Bool)

(assert (=> b!5648682 m!6615978))

(declare-fun m!6615980 () Bool)

(assert (=> b!5648682 m!6615980))

(assert (=> b!5647139 d!1784417))

(declare-fun d!1784419 () Bool)

(declare-fun lt!2264519 () Int)

(assert (=> d!1784419 (>= lt!2264519 0)))

(declare-fun e!3479649 () Int)

(assert (=> d!1784419 (= lt!2264519 e!3479649)))

(declare-fun c!992810 () Bool)

(assert (=> d!1784419 (= c!992810 ((_ is Cons!63070) (t!376492 lt!2264185)))))

(assert (=> d!1784419 (= (zipperDepthTotal!240 (t!376492 lt!2264185)) lt!2264519)))

(declare-fun b!5648684 () Bool)

(assert (=> b!5648684 (= e!3479649 (+ (contextDepthTotal!216 (h!69518 (t!376492 lt!2264185))) (zipperDepthTotal!240 (t!376492 (t!376492 lt!2264185)))))))

(declare-fun b!5648685 () Bool)

(assert (=> b!5648685 (= e!3479649 0)))

(assert (= (and d!1784419 c!992810) b!5648684))

(assert (= (and d!1784419 (not c!992810)) b!5648685))

(declare-fun m!6615982 () Bool)

(assert (=> b!5648684 m!6615982))

(declare-fun m!6615984 () Bool)

(assert (=> b!5648684 m!6615984))

(assert (=> b!5647139 d!1784419))

(declare-fun d!1784421 () Bool)

(assert (=> d!1784421 (= (isEmpty!34913 (tail!11102 (t!376490 (exprs!5515 (h!69518 zl!343))))) ((_ is Nil!63068) (tail!11102 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(assert (=> b!5647303 d!1784421))

(declare-fun d!1784423 () Bool)

(assert (=> d!1784423 (= (tail!11102 (t!376490 (exprs!5515 (h!69518 zl!343)))) (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5647303 d!1784423))

(declare-fun bs!1313481 () Bool)

(declare-fun d!1784425 () Bool)

(assert (= bs!1313481 (and d!1784425 d!1784407)))

(declare-fun lambda!303646 () Int)

(assert (=> bs!1313481 (not (= lambda!303646 lambda!303640))))

(declare-fun bs!1313482 () Bool)

(assert (= bs!1313482 (and d!1784425 b!5647418)))

(assert (=> bs!1313482 (not (= lambda!303646 lambda!303538))))

(declare-fun bs!1313483 () Bool)

(assert (= bs!1313483 (and d!1784425 b!5648672)))

(assert (=> bs!1313483 (not (= lambda!303646 lambda!303643))))

(declare-fun bs!1313484 () Bool)

(assert (= bs!1313484 (and d!1784425 b!5648670)))

(assert (=> bs!1313484 (not (= lambda!303646 lambda!303642))))

(declare-fun bs!1313485 () Bool)

(assert (= bs!1313485 (and d!1784425 b!5647423)))

(assert (=> bs!1313485 (not (= lambda!303646 lambda!303541))))

(declare-fun bs!1313486 () Bool)

(assert (= bs!1313486 (and d!1784425 b!5647425)))

(assert (=> bs!1313486 (not (= lambda!303646 lambda!303542))))

(declare-fun bs!1313487 () Bool)

(assert (= bs!1313487 (and d!1784425 b!5647420)))

(assert (=> bs!1313487 (not (= lambda!303646 lambda!303539))))

(declare-fun exists!2194 ((InoxSet Context!10030) Int) Bool)

(assert (=> d!1784425 (= (nullableZipper!1613 lt!2264191) (exists!2194 lt!2264191 lambda!303646))))

(declare-fun bs!1313488 () Bool)

(assert (= bs!1313488 d!1784425))

(declare-fun m!6615986 () Bool)

(assert (=> bs!1313488 m!6615986))

(assert (=> b!5647347 d!1784425))

(declare-fun bs!1313489 () Bool)

(declare-fun b!5648686 () Bool)

(assert (= bs!1313489 (and b!5648686 d!1783769)))

(declare-fun lambda!303647 () Int)

(assert (=> bs!1313489 (not (= lambda!303647 lambda!303516))))

(declare-fun bs!1313490 () Bool)

(assert (= bs!1313490 (and b!5648686 d!1783799)))

(assert (=> bs!1313490 (not (= lambda!303647 lambda!303527))))

(declare-fun bs!1313491 () Bool)

(assert (= bs!1313491 (and b!5648686 d!1783713)))

(assert (=> bs!1313491 (not (= lambda!303647 lambda!303504))))

(declare-fun bs!1313492 () Bool)

(assert (= bs!1313492 (and b!5648686 d!1783801)))

(assert (=> bs!1313492 (not (= lambda!303647 lambda!303530))))

(declare-fun bs!1313493 () Bool)

(assert (= bs!1313493 (and b!5648686 b!5648658)))

(declare-fun lt!2264520 () Int)

(assert (=> bs!1313493 (= (= lt!2264520 lt!2264510) (= lambda!303647 lambda!303637))))

(declare-fun bs!1313494 () Bool)

(assert (= bs!1313494 (and b!5648686 b!5648656)))

(assert (=> bs!1313494 (= (= lt!2264520 lt!2264507) (= lambda!303647 lambda!303636))))

(declare-fun bs!1313495 () Bool)

(assert (= bs!1313495 (and b!5648686 d!1783761)))

(assert (=> bs!1313495 (not (= lambda!303647 lambda!303515))))

(declare-fun bs!1313496 () Bool)

(assert (= bs!1313496 (and b!5648686 d!1783775)))

(assert (=> bs!1313496 (not (= lambda!303647 lambda!303517))))

(declare-fun bs!1313497 () Bool)

(assert (= bs!1313497 (and b!5648686 d!1783741)))

(assert (=> bs!1313497 (not (= lambda!303647 lambda!303511))))

(declare-fun bs!1313498 () Bool)

(assert (= bs!1313498 (and b!5648686 d!1784301)))

(assert (=> bs!1313498 (not (= lambda!303647 lambda!303621))))

(declare-fun bs!1313499 () Bool)

(assert (= bs!1313499 (and b!5648686 d!1783727)))

(assert (=> bs!1313499 (not (= lambda!303647 lambda!303505))))

(assert (=> b!5648686 true))

(declare-fun bs!1313500 () Bool)

(declare-fun b!5648688 () Bool)

(assert (= bs!1313500 (and b!5648688 d!1783769)))

(declare-fun lambda!303648 () Int)

(assert (=> bs!1313500 (not (= lambda!303648 lambda!303516))))

(declare-fun bs!1313501 () Bool)

(assert (= bs!1313501 (and b!5648688 d!1783799)))

(assert (=> bs!1313501 (not (= lambda!303648 lambda!303527))))

(declare-fun bs!1313502 () Bool)

(assert (= bs!1313502 (and b!5648688 d!1783713)))

(assert (=> bs!1313502 (not (= lambda!303648 lambda!303504))))

(declare-fun bs!1313503 () Bool)

(assert (= bs!1313503 (and b!5648688 d!1783801)))

(assert (=> bs!1313503 (not (= lambda!303648 lambda!303530))))

(declare-fun bs!1313504 () Bool)

(assert (= bs!1313504 (and b!5648688 b!5648658)))

(declare-fun lt!2264523 () Int)

(assert (=> bs!1313504 (= (= lt!2264523 lt!2264510) (= lambda!303648 lambda!303637))))

(declare-fun bs!1313505 () Bool)

(assert (= bs!1313505 (and b!5648688 b!5648656)))

(assert (=> bs!1313505 (= (= lt!2264523 lt!2264507) (= lambda!303648 lambda!303636))))

(declare-fun bs!1313506 () Bool)

(assert (= bs!1313506 (and b!5648688 d!1783761)))

(assert (=> bs!1313506 (not (= lambda!303648 lambda!303515))))

(declare-fun bs!1313507 () Bool)

(assert (= bs!1313507 (and b!5648688 d!1783775)))

(assert (=> bs!1313507 (not (= lambda!303648 lambda!303517))))

(declare-fun bs!1313508 () Bool)

(assert (= bs!1313508 (and b!5648688 b!5648686)))

(assert (=> bs!1313508 (= (= lt!2264523 lt!2264520) (= lambda!303648 lambda!303647))))

(declare-fun bs!1313509 () Bool)

(assert (= bs!1313509 (and b!5648688 d!1783741)))

(assert (=> bs!1313509 (not (= lambda!303648 lambda!303511))))

(declare-fun bs!1313510 () Bool)

(assert (= bs!1313510 (and b!5648688 d!1784301)))

(assert (=> bs!1313510 (not (= lambda!303648 lambda!303621))))

(declare-fun bs!1313511 () Bool)

(assert (= bs!1313511 (and b!5648688 d!1783727)))

(assert (=> bs!1313511 (not (= lambda!303648 lambda!303505))))

(assert (=> b!5648688 true))

(declare-fun d!1784427 () Bool)

(declare-fun e!3479651 () Bool)

(assert (=> d!1784427 e!3479651))

(declare-fun res!2389301 () Bool)

(assert (=> d!1784427 (=> (not res!2389301) (not e!3479651))))

(assert (=> d!1784427 (= res!2389301 (>= lt!2264523 0))))

(declare-fun e!3479650 () Int)

(assert (=> d!1784427 (= lt!2264523 e!3479650)))

(declare-fun c!992813 () Bool)

(assert (=> d!1784427 (= c!992813 ((_ is Cons!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> d!1784427 (= (contextDepth!119 (h!69518 zl!343)) lt!2264523)))

(assert (=> b!5648686 (= e!3479650 lt!2264520)))

(assert (=> b!5648686 (= lt!2264520 (maxBigInt!0 (regexDepth!223 (h!69516 (exprs!5515 (h!69518 zl!343)))) (contextDepth!119 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun lt!2264522 () Unit!156056)

(assert (=> b!5648686 (= lt!2264522 (lemmaForallRegexDepthBiggerThanTransitive!26 (t!376490 (exprs!5515 (h!69518 zl!343))) lt!2264520 (contextDepth!119 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(assert (=> b!5648686 (forall!14788 (t!376490 (exprs!5515 (h!69518 zl!343))) lambda!303647)))

(declare-fun lt!2264521 () Unit!156056)

(assert (=> b!5648686 (= lt!2264521 lt!2264522)))

(declare-fun b!5648687 () Bool)

(assert (=> b!5648687 (= e!3479650 0)))

(assert (=> b!5648688 (= e!3479651 (forall!14788 (exprs!5515 (h!69518 zl!343)) lambda!303648))))

(assert (= (and d!1784427 c!992813) b!5648686))

(assert (= (and d!1784427 (not c!992813)) b!5648687))

(assert (= (and d!1784427 res!2389301) b!5648688))

(declare-fun m!6615988 () Bool)

(assert (=> b!5648686 m!6615988))

(declare-fun m!6615990 () Bool)

(assert (=> b!5648686 m!6615990))

(declare-fun m!6615992 () Bool)

(assert (=> b!5648686 m!6615992))

(declare-fun m!6615994 () Bool)

(assert (=> b!5648686 m!6615994))

(assert (=> b!5648686 m!6615990))

(declare-fun m!6615996 () Bool)

(assert (=> b!5648686 m!6615996))

(assert (=> b!5648686 m!6615988))

(assert (=> b!5648686 m!6615990))

(declare-fun m!6615998 () Bool)

(assert (=> b!5648688 m!6615998))

(assert (=> b!5647423 d!1784427))

(declare-fun bs!1313512 () Bool)

(declare-fun b!5648689 () Bool)

(assert (= bs!1313512 (and b!5648689 b!5647418)))

(declare-fun lambda!303649 () Int)

(assert (=> bs!1313512 (= lambda!303649 lambda!303537)))

(declare-fun bs!1313513 () Bool)

(assert (= bs!1313513 (and b!5648689 b!5647423)))

(assert (=> bs!1313513 (= lambda!303649 lambda!303540)))

(declare-fun bs!1313514 () Bool)

(assert (= bs!1313514 (and b!5648689 b!5648670)))

(assert (=> bs!1313514 (= lambda!303649 lambda!303641)))

(declare-fun bs!1313515 () Bool)

(assert (= bs!1313515 (and b!5648689 d!1784407)))

(declare-fun lambda!303650 () Int)

(assert (=> bs!1313515 (not (= lambda!303650 lambda!303640))))

(declare-fun lt!2264527 () Int)

(assert (=> bs!1313512 (= (= lt!2264527 lt!2264407) (= lambda!303650 lambda!303538))))

(declare-fun bs!1313516 () Bool)

(assert (= bs!1313516 (and b!5648689 b!5648672)))

(assert (=> bs!1313516 (= (= lt!2264527 lt!2264516) (= lambda!303650 lambda!303643))))

(declare-fun bs!1313517 () Bool)

(assert (= bs!1313517 (and b!5648689 d!1784425)))

(assert (=> bs!1313517 (not (= lambda!303650 lambda!303646))))

(assert (=> bs!1313514 (= (= lt!2264527 lt!2264517) (= lambda!303650 lambda!303642))))

(assert (=> bs!1313513 (= (= lt!2264527 lt!2264411) (= lambda!303650 lambda!303541))))

(declare-fun bs!1313518 () Bool)

(assert (= bs!1313518 (and b!5648689 b!5647425)))

(assert (=> bs!1313518 (= (= lt!2264527 lt!2264410) (= lambda!303650 lambda!303542))))

(declare-fun bs!1313519 () Bool)

(assert (= bs!1313519 (and b!5648689 b!5647420)))

(assert (=> bs!1313519 (= (= lt!2264527 lt!2264406) (= lambda!303650 lambda!303539))))

(assert (=> b!5648689 true))

(declare-fun bs!1313520 () Bool)

(declare-fun b!5648691 () Bool)

(assert (= bs!1313520 (and b!5648691 d!1784407)))

(declare-fun lambda!303651 () Int)

(assert (=> bs!1313520 (not (= lambda!303651 lambda!303640))))

(declare-fun bs!1313521 () Bool)

(assert (= bs!1313521 (and b!5648691 b!5647418)))

(declare-fun lt!2264526 () Int)

(assert (=> bs!1313521 (= (= lt!2264526 lt!2264407) (= lambda!303651 lambda!303538))))

(declare-fun bs!1313522 () Bool)

(assert (= bs!1313522 (and b!5648691 b!5648672)))

(assert (=> bs!1313522 (= (= lt!2264526 lt!2264516) (= lambda!303651 lambda!303643))))

(declare-fun bs!1313523 () Bool)

(assert (= bs!1313523 (and b!5648691 b!5648689)))

(assert (=> bs!1313523 (= (= lt!2264526 lt!2264527) (= lambda!303651 lambda!303650))))

(declare-fun bs!1313524 () Bool)

(assert (= bs!1313524 (and b!5648691 d!1784425)))

(assert (=> bs!1313524 (not (= lambda!303651 lambda!303646))))

(declare-fun bs!1313525 () Bool)

(assert (= bs!1313525 (and b!5648691 b!5648670)))

(assert (=> bs!1313525 (= (= lt!2264526 lt!2264517) (= lambda!303651 lambda!303642))))

(declare-fun bs!1313526 () Bool)

(assert (= bs!1313526 (and b!5648691 b!5647423)))

(assert (=> bs!1313526 (= (= lt!2264526 lt!2264411) (= lambda!303651 lambda!303541))))

(declare-fun bs!1313527 () Bool)

(assert (= bs!1313527 (and b!5648691 b!5647425)))

(assert (=> bs!1313527 (= (= lt!2264526 lt!2264410) (= lambda!303651 lambda!303542))))

(declare-fun bs!1313528 () Bool)

(assert (= bs!1313528 (and b!5648691 b!5647420)))

(assert (=> bs!1313528 (= (= lt!2264526 lt!2264406) (= lambda!303651 lambda!303539))))

(assert (=> b!5648691 true))

(declare-fun d!1784429 () Bool)

(declare-fun e!3479653 () Bool)

(assert (=> d!1784429 e!3479653))

(declare-fun res!2389302 () Bool)

(assert (=> d!1784429 (=> (not res!2389302) (not e!3479653))))

(assert (=> d!1784429 (= res!2389302 (>= lt!2264526 0))))

(declare-fun e!3479652 () Int)

(assert (=> d!1784429 (= lt!2264526 e!3479652)))

(declare-fun c!992814 () Bool)

(assert (=> d!1784429 (= c!992814 ((_ is Cons!63070) (t!376492 zl!343)))))

(assert (=> d!1784429 (= (zipperDepth!208 (t!376492 zl!343)) lt!2264526)))

(assert (=> b!5648689 (= e!3479652 lt!2264527)))

(assert (=> b!5648689 (= lt!2264527 (maxBigInt!0 (contextDepth!119 (h!69518 (t!376492 zl!343))) (zipperDepth!208 (t!376492 (t!376492 zl!343)))))))

(declare-fun lt!2264524 () Unit!156056)

(assert (=> b!5648689 (= lt!2264524 (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 (t!376492 zl!343)) lt!2264527 (zipperDepth!208 (t!376492 (t!376492 zl!343))) lambda!303649))))

(assert (=> b!5648689 (forall!14789 (t!376492 (t!376492 zl!343)) lambda!303650)))

(declare-fun lt!2264525 () Unit!156056)

(assert (=> b!5648689 (= lt!2264525 lt!2264524)))

(declare-fun b!5648690 () Bool)

(assert (=> b!5648690 (= e!3479652 0)))

(assert (=> b!5648691 (= e!3479653 (forall!14789 (t!376492 zl!343) lambda!303651))))

(assert (= (and d!1784429 c!992814) b!5648689))

(assert (= (and d!1784429 (not c!992814)) b!5648690))

(assert (= (and d!1784429 res!2389302) b!5648691))

(declare-fun m!6616000 () Bool)

(assert (=> b!5648689 m!6616000))

(declare-fun m!6616002 () Bool)

(assert (=> b!5648689 m!6616002))

(declare-fun m!6616004 () Bool)

(assert (=> b!5648689 m!6616004))

(assert (=> b!5648689 m!6616002))

(declare-fun m!6616006 () Bool)

(assert (=> b!5648689 m!6616006))

(assert (=> b!5648689 m!6616002))

(assert (=> b!5648689 m!6616000))

(declare-fun m!6616008 () Bool)

(assert (=> b!5648689 m!6616008))

(declare-fun m!6616010 () Bool)

(assert (=> b!5648691 m!6616010))

(assert (=> b!5647423 d!1784429))

(declare-fun d!1784431 () Bool)

(assert (=> d!1784431 (= (maxBigInt!0 (contextDepth!119 (h!69518 zl!343)) (zipperDepth!208 (t!376492 zl!343))) (ite (>= (contextDepth!119 (h!69518 zl!343)) (zipperDepth!208 (t!376492 zl!343))) (contextDepth!119 (h!69518 zl!343)) (zipperDepth!208 (t!376492 zl!343))))))

(assert (=> b!5647423 d!1784431))

(declare-fun d!1784433 () Bool)

(declare-fun res!2389303 () Bool)

(declare-fun e!3479654 () Bool)

(assert (=> d!1784433 (=> res!2389303 e!3479654)))

(assert (=> d!1784433 (= res!2389303 ((_ is Nil!63070) (t!376492 zl!343)))))

(assert (=> d!1784433 (= (forall!14789 (t!376492 zl!343) lambda!303541) e!3479654)))

(declare-fun b!5648692 () Bool)

(declare-fun e!3479655 () Bool)

(assert (=> b!5648692 (= e!3479654 e!3479655)))

(declare-fun res!2389304 () Bool)

(assert (=> b!5648692 (=> (not res!2389304) (not e!3479655))))

(assert (=> b!5648692 (= res!2389304 (dynLambda!24680 lambda!303541 (h!69518 (t!376492 zl!343))))))

(declare-fun b!5648693 () Bool)

(assert (=> b!5648693 (= e!3479655 (forall!14789 (t!376492 (t!376492 zl!343)) lambda!303541))))

(assert (= (and d!1784433 (not res!2389303)) b!5648692))

(assert (= (and b!5648692 res!2389304) b!5648693))

(declare-fun b_lambda!213715 () Bool)

(assert (=> (not b_lambda!213715) (not b!5648692)))

(declare-fun m!6616012 () Bool)

(assert (=> b!5648692 m!6616012))

(declare-fun m!6616014 () Bool)

(assert (=> b!5648693 m!6616014))

(assert (=> b!5647423 d!1784433))

(declare-fun bs!1313529 () Bool)

(declare-fun d!1784435 () Bool)

(assert (= bs!1313529 (and d!1784435 d!1784407)))

(declare-fun lambda!303652 () Int)

(assert (=> bs!1313529 (= (and (= lt!2264411 lt!2264407) (= lambda!303540 lambda!303537)) (= lambda!303652 lambda!303640))))

(declare-fun bs!1313530 () Bool)

(assert (= bs!1313530 (and d!1784435 b!5647418)))

(assert (=> bs!1313530 (not (= lambda!303652 lambda!303538))))

(declare-fun bs!1313531 () Bool)

(assert (= bs!1313531 (and d!1784435 b!5648691)))

(assert (=> bs!1313531 (not (= lambda!303652 lambda!303651))))

(declare-fun bs!1313532 () Bool)

(assert (= bs!1313532 (and d!1784435 b!5648672)))

(assert (=> bs!1313532 (not (= lambda!303652 lambda!303643))))

(declare-fun bs!1313533 () Bool)

(assert (= bs!1313533 (and d!1784435 b!5648689)))

(assert (=> bs!1313533 (not (= lambda!303652 lambda!303650))))

(declare-fun bs!1313534 () Bool)

(assert (= bs!1313534 (and d!1784435 d!1784425)))

(assert (=> bs!1313534 (not (= lambda!303652 lambda!303646))))

(declare-fun bs!1313535 () Bool)

(assert (= bs!1313535 (and d!1784435 b!5648670)))

(assert (=> bs!1313535 (not (= lambda!303652 lambda!303642))))

(declare-fun bs!1313536 () Bool)

(assert (= bs!1313536 (and d!1784435 b!5647423)))

(assert (=> bs!1313536 (not (= lambda!303652 lambda!303541))))

(declare-fun bs!1313537 () Bool)

(assert (= bs!1313537 (and d!1784435 b!5647425)))

(assert (=> bs!1313537 (not (= lambda!303652 lambda!303542))))

(declare-fun bs!1313538 () Bool)

(assert (= bs!1313538 (and d!1784435 b!5647420)))

(assert (=> bs!1313538 (not (= lambda!303652 lambda!303539))))

(assert (=> d!1784435 true))

(assert (=> d!1784435 true))

(assert (=> d!1784435 (< (dynLambda!24681 order!27165 lambda!303540) (dynLambda!24682 order!27167 lambda!303652))))

(assert (=> d!1784435 (forall!14789 (t!376492 zl!343) lambda!303652)))

(declare-fun lt!2264528 () Unit!156056)

(assert (=> d!1784435 (= lt!2264528 (choose!42766 (t!376492 zl!343) lt!2264411 (zipperDepth!208 (t!376492 zl!343)) lambda!303540))))

(assert (=> d!1784435 (>= lt!2264411 (zipperDepth!208 (t!376492 zl!343)))))

(assert (=> d!1784435 (= (lemmaForallContextDepthBiggerThanTransitive!109 (t!376492 zl!343) lt!2264411 (zipperDepth!208 (t!376492 zl!343)) lambda!303540) lt!2264528)))

(declare-fun bs!1313539 () Bool)

(assert (= bs!1313539 d!1784435))

(declare-fun m!6616016 () Bool)

(assert (=> bs!1313539 m!6616016))

(assert (=> bs!1313539 m!6614764))

(declare-fun m!6616018 () Bool)

(assert (=> bs!1313539 m!6616018))

(assert (=> b!5647423 d!1784435))

(declare-fun b!5648703 () Bool)

(declare-fun e!3479661 () List!63193)

(assert (=> b!5648703 (= e!3479661 (Cons!63069 (h!69517 (_1!36031 (get!21730 lt!2264335))) (++!13847 (t!376491 (_1!36031 (get!21730 lt!2264335))) (_2!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5648704 () Bool)

(declare-fun res!2389310 () Bool)

(declare-fun e!3479660 () Bool)

(assert (=> b!5648704 (=> (not res!2389310) (not e!3479660))))

(declare-fun lt!2264531 () List!63193)

(declare-fun size!39985 (List!63193) Int)

(assert (=> b!5648704 (= res!2389310 (= (size!39985 lt!2264531) (+ (size!39985 (_1!36031 (get!21730 lt!2264335))) (size!39985 (_2!36031 (get!21730 lt!2264335))))))))

(declare-fun d!1784437 () Bool)

(assert (=> d!1784437 e!3479660))

(declare-fun res!2389309 () Bool)

(assert (=> d!1784437 (=> (not res!2389309) (not e!3479660))))

(declare-fun content!11413 (List!63193) (InoxSet C!31532))

(assert (=> d!1784437 (= res!2389309 (= (content!11413 lt!2264531) ((_ map or) (content!11413 (_1!36031 (get!21730 lt!2264335))) (content!11413 (_2!36031 (get!21730 lt!2264335))))))))

(assert (=> d!1784437 (= lt!2264531 e!3479661)))

(declare-fun c!992817 () Bool)

(assert (=> d!1784437 (= c!992817 ((_ is Nil!63069) (_1!36031 (get!21730 lt!2264335))))))

(assert (=> d!1784437 (= (++!13847 (_1!36031 (get!21730 lt!2264335)) (_2!36031 (get!21730 lt!2264335))) lt!2264531)))

(declare-fun b!5648705 () Bool)

(assert (=> b!5648705 (= e!3479660 (or (not (= (_2!36031 (get!21730 lt!2264335)) Nil!63069)) (= lt!2264531 (_1!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5648702 () Bool)

(assert (=> b!5648702 (= e!3479661 (_2!36031 (get!21730 lt!2264335)))))

(assert (= (and d!1784437 c!992817) b!5648702))

(assert (= (and d!1784437 (not c!992817)) b!5648703))

(assert (= (and d!1784437 res!2389309) b!5648704))

(assert (= (and b!5648704 res!2389310) b!5648705))

(declare-fun m!6616020 () Bool)

(assert (=> b!5648703 m!6616020))

(declare-fun m!6616022 () Bool)

(assert (=> b!5648704 m!6616022))

(declare-fun m!6616024 () Bool)

(assert (=> b!5648704 m!6616024))

(declare-fun m!6616026 () Bool)

(assert (=> b!5648704 m!6616026))

(declare-fun m!6616028 () Bool)

(assert (=> d!1784437 m!6616028))

(declare-fun m!6616030 () Bool)

(assert (=> d!1784437 m!6616030))

(declare-fun m!6616032 () Bool)

(assert (=> d!1784437 m!6616032))

(assert (=> b!5647036 d!1784437))

(declare-fun d!1784439 () Bool)

(assert (=> d!1784439 (= (get!21730 lt!2264335) (v!51686 lt!2264335))))

(assert (=> b!5647036 d!1784439))

(assert (=> b!5647152 d!1783701))

(declare-fun d!1784441 () Bool)

(assert (=> d!1784441 (= (isConcat!695 lt!2264375) ((_ is Concat!24476) lt!2264375))))

(assert (=> b!5647327 d!1784441))

(assert (=> d!1783715 d!1784295))

(declare-fun bs!1313540 () Bool)

(declare-fun d!1784443 () Bool)

(assert (= bs!1313540 (and d!1784443 d!1783769)))

(declare-fun lambda!303653 () Int)

(assert (=> bs!1313540 (= lambda!303653 lambda!303516)))

(declare-fun bs!1313541 () Bool)

(assert (= bs!1313541 (and d!1784443 d!1783799)))

(assert (=> bs!1313541 (= lambda!303653 lambda!303527)))

(declare-fun bs!1313542 () Bool)

(assert (= bs!1313542 (and d!1784443 d!1783713)))

(assert (=> bs!1313542 (= lambda!303653 lambda!303504)))

(declare-fun bs!1313543 () Bool)

(assert (= bs!1313543 (and d!1784443 d!1783801)))

(assert (=> bs!1313543 (= lambda!303653 lambda!303530)))

(declare-fun bs!1313544 () Bool)

(assert (= bs!1313544 (and d!1784443 b!5648658)))

(assert (=> bs!1313544 (not (= lambda!303653 lambda!303637))))

(declare-fun bs!1313545 () Bool)

(assert (= bs!1313545 (and d!1784443 b!5648656)))

(assert (=> bs!1313545 (not (= lambda!303653 lambda!303636))))

(declare-fun bs!1313546 () Bool)

(assert (= bs!1313546 (and d!1784443 d!1783761)))

(assert (=> bs!1313546 (= lambda!303653 lambda!303515)))

(declare-fun bs!1313547 () Bool)

(assert (= bs!1313547 (and d!1784443 b!5648688)))

(assert (=> bs!1313547 (not (= lambda!303653 lambda!303648))))

(declare-fun bs!1313548 () Bool)

(assert (= bs!1313548 (and d!1784443 d!1783775)))

(assert (=> bs!1313548 (= lambda!303653 lambda!303517)))

(declare-fun bs!1313549 () Bool)

(assert (= bs!1313549 (and d!1784443 b!5648686)))

(assert (=> bs!1313549 (not (= lambda!303653 lambda!303647))))

(declare-fun bs!1313550 () Bool)

(assert (= bs!1313550 (and d!1784443 d!1783741)))

(assert (=> bs!1313550 (= lambda!303653 lambda!303511)))

(declare-fun bs!1313551 () Bool)

(assert (= bs!1313551 (and d!1784443 d!1784301)))

(assert (=> bs!1313551 (= lambda!303653 lambda!303621)))

(declare-fun bs!1313552 () Bool)

(assert (= bs!1313552 (and d!1784443 d!1783727)))

(assert (=> bs!1313552 (= lambda!303653 lambda!303505)))

(declare-fun b!5648706 () Bool)

(declare-fun e!3479667 () Bool)

(assert (=> b!5648706 (= e!3479667 (isEmpty!34913 (t!376490 (t!376490 lt!2264230))))))

(declare-fun b!5648707 () Bool)

(declare-fun e!3479663 () Regex!15631)

(assert (=> b!5648707 (= e!3479663 (Concat!24476 (h!69516 (t!376490 lt!2264230)) (generalisedConcat!1246 (t!376490 (t!376490 lt!2264230)))))))

(declare-fun e!3479666 () Bool)

(assert (=> d!1784443 e!3479666))

(declare-fun res!2389312 () Bool)

(assert (=> d!1784443 (=> (not res!2389312) (not e!3479666))))

(declare-fun lt!2264532 () Regex!15631)

(assert (=> d!1784443 (= res!2389312 (validRegex!7367 lt!2264532))))

(declare-fun e!3479664 () Regex!15631)

(assert (=> d!1784443 (= lt!2264532 e!3479664)))

(declare-fun c!992820 () Bool)

(assert (=> d!1784443 (= c!992820 e!3479667)))

(declare-fun res!2389311 () Bool)

(assert (=> d!1784443 (=> (not res!2389311) (not e!3479667))))

(assert (=> d!1784443 (= res!2389311 ((_ is Cons!63068) (t!376490 lt!2264230)))))

(assert (=> d!1784443 (forall!14788 (t!376490 lt!2264230) lambda!303653)))

(assert (=> d!1784443 (= (generalisedConcat!1246 (t!376490 lt!2264230)) lt!2264532)))

(declare-fun b!5648708 () Bool)

(assert (=> b!5648708 (= e!3479664 (h!69516 (t!376490 lt!2264230)))))

(declare-fun b!5648709 () Bool)

(assert (=> b!5648709 (= e!3479664 e!3479663)))

(declare-fun c!992819 () Bool)

(assert (=> b!5648709 (= c!992819 ((_ is Cons!63068) (t!376490 lt!2264230)))))

(declare-fun b!5648710 () Bool)

(assert (=> b!5648710 (= e!3479663 EmptyExpr!15631)))

(declare-fun b!5648711 () Bool)

(declare-fun e!3479662 () Bool)

(assert (=> b!5648711 (= e!3479662 (isEmptyExpr!1172 lt!2264532))))

(declare-fun b!5648712 () Bool)

(declare-fun e!3479665 () Bool)

(assert (=> b!5648712 (= e!3479662 e!3479665)))

(declare-fun c!992818 () Bool)

(assert (=> b!5648712 (= c!992818 (isEmpty!34913 (tail!11102 (t!376490 lt!2264230))))))

(declare-fun b!5648713 () Bool)

(assert (=> b!5648713 (= e!3479666 e!3479662)))

(declare-fun c!992821 () Bool)

(assert (=> b!5648713 (= c!992821 (isEmpty!34913 (t!376490 lt!2264230)))))

(declare-fun b!5648714 () Bool)

(assert (=> b!5648714 (= e!3479665 (= lt!2264532 (head!12007 (t!376490 lt!2264230))))))

(declare-fun b!5648715 () Bool)

(assert (=> b!5648715 (= e!3479665 (isConcat!695 lt!2264532))))

(assert (= (and d!1784443 res!2389311) b!5648706))

(assert (= (and d!1784443 c!992820) b!5648708))

(assert (= (and d!1784443 (not c!992820)) b!5648709))

(assert (= (and b!5648709 c!992819) b!5648707))

(assert (= (and b!5648709 (not c!992819)) b!5648710))

(assert (= (and d!1784443 res!2389312) b!5648713))

(assert (= (and b!5648713 c!992821) b!5648711))

(assert (= (and b!5648713 (not c!992821)) b!5648712))

(assert (= (and b!5648712 c!992818) b!5648714))

(assert (= (and b!5648712 (not c!992818)) b!5648715))

(declare-fun m!6616034 () Bool)

(assert (=> b!5648712 m!6616034))

(assert (=> b!5648712 m!6616034))

(declare-fun m!6616036 () Bool)

(assert (=> b!5648712 m!6616036))

(assert (=> b!5648713 m!6614634))

(declare-fun m!6616038 () Bool)

(assert (=> b!5648707 m!6616038))

(declare-fun m!6616040 () Bool)

(assert (=> b!5648711 m!6616040))

(declare-fun m!6616042 () Bool)

(assert (=> b!5648714 m!6616042))

(declare-fun m!6616044 () Bool)

(assert (=> b!5648706 m!6616044))

(declare-fun m!6616046 () Bool)

(assert (=> d!1784443 m!6616046))

(declare-fun m!6616048 () Bool)

(assert (=> d!1784443 m!6616048))

(declare-fun m!6616050 () Bool)

(assert (=> b!5648715 m!6616050))

(assert (=> b!5647319 d!1784443))

(declare-fun d!1784445 () Bool)

(assert (=> d!1784445 (= (nullable!5663 (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))) (nullableFct!1760 (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun bs!1313553 () Bool)

(assert (= bs!1313553 d!1784445))

(declare-fun m!6616052 () Bool)

(assert (=> bs!1313553 m!6616052))

(assert (=> b!5647227 d!1784445))

(declare-fun d!1784447 () Bool)

(assert (=> d!1784447 (= (nullable!5663 lt!2264222) (nullableFct!1760 lt!2264222))))

(declare-fun bs!1313554 () Bool)

(assert (= bs!1313554 d!1784447))

(declare-fun m!6616054 () Bool)

(assert (=> bs!1313554 m!6616054))

(assert (=> b!5647284 d!1784447))

(declare-fun d!1784449 () Bool)

(assert (=> d!1784449 (= (isEmpty!34918 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326)) (not ((_ is Some!15639) (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326))))))

(assert (=> d!1783783 d!1784449))

(assert (=> bs!1312415 d!1783697))

(declare-fun d!1784451 () Bool)

(assert (=> d!1784451 (= (isUnion!612 lt!2264392) ((_ is Union!15631) lt!2264392))))

(assert (=> b!5647401 d!1784451))

(assert (=> b!5647128 d!1784387))

(declare-fun d!1784453 () Bool)

(assert (=> d!1784453 (= (isEmpty!34913 (t!376490 lt!2264230)) ((_ is Nil!63068) (t!376490 lt!2264230)))))

(assert (=> b!5647318 d!1784453))

(assert (=> bm!427019 d!1784413))

(declare-fun d!1784455 () Bool)

(declare-fun res!2389313 () Bool)

(declare-fun e!3479668 () Bool)

(assert (=> d!1784455 (=> res!2389313 e!3479668)))

(assert (=> d!1784455 (= res!2389313 ((_ is Nil!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> d!1784455 (= (forall!14788 (exprs!5515 (h!69518 zl!343)) lambda!303504) e!3479668)))

(declare-fun b!5648716 () Bool)

(declare-fun e!3479669 () Bool)

(assert (=> b!5648716 (= e!3479668 e!3479669)))

(declare-fun res!2389314 () Bool)

(assert (=> b!5648716 (=> (not res!2389314) (not e!3479669))))

(assert (=> b!5648716 (= res!2389314 (dynLambda!24678 lambda!303504 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5648717 () Bool)

(assert (=> b!5648717 (= e!3479669 (forall!14788 (t!376490 (exprs!5515 (h!69518 zl!343))) lambda!303504))))

(assert (= (and d!1784455 (not res!2389313)) b!5648716))

(assert (= (and b!5648716 res!2389314) b!5648717))

(declare-fun b_lambda!213717 () Bool)

(assert (=> (not b_lambda!213717) (not b!5648716)))

(declare-fun m!6616056 () Bool)

(assert (=> b!5648716 m!6616056))

(declare-fun m!6616058 () Bool)

(assert (=> b!5648717 m!6616058))

(assert (=> d!1783713 d!1784455))

(declare-fun d!1784457 () Bool)

(assert (=> d!1784457 (= (isEmpty!34913 (tail!11102 lt!2264211)) ((_ is Nil!63068) (tail!11102 lt!2264211)))))

(assert (=> b!5647343 d!1784457))

(declare-fun d!1784459 () Bool)

(assert (=> d!1784459 (= (tail!11102 lt!2264211) (t!376490 lt!2264211))))

(assert (=> b!5647343 d!1784459))

(declare-fun d!1784461 () Bool)

(assert (=> d!1784461 (= ($colon$colon!1681 (exprs!5515 lt!2264221) (ite (or c!992407 c!992404) (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 r!7292)))) (Cons!63068 (ite (or c!992407 c!992404) (regTwo!31774 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 r!7292))) (exprs!5515 lt!2264221)))))

(assert (=> bm!427009 d!1784461))

(declare-fun d!1784463 () Bool)

(declare-fun c!992823 () Bool)

(declare-fun e!3479672 () Bool)

(assert (=> d!1784463 (= c!992823 e!3479672)))

(declare-fun res!2389315 () Bool)

(assert (=> d!1784463 (=> (not res!2389315) (not e!3479672))))

(assert (=> d!1784463 (= res!2389315 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212))))))))

(declare-fun e!3479671 () (InoxSet Context!10030))

(assert (=> d!1784463 (= (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264212))) (h!69517 s!2326)) e!3479671)))

(declare-fun b!5648718 () Bool)

(declare-fun e!3479670 () (InoxSet Context!10030))

(declare-fun call!427257 () (InoxSet Context!10030))

(assert (=> b!5648718 (= e!3479670 call!427257)))

(declare-fun b!5648719 () Bool)

(assert (=> b!5648719 (= e!3479671 e!3479670)))

(declare-fun c!992822 () Bool)

(assert (=> b!5648719 (= c!992822 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212))))))))

(declare-fun bm!427252 () Bool)

(assert (=> bm!427252 (= call!427257 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212)))))) (h!69517 s!2326)))))

(declare-fun b!5648720 () Bool)

(assert (=> b!5648720 (= e!3479670 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648721 () Bool)

(assert (=> b!5648721 (= e!3479671 ((_ map or) call!427257 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212)))))) (h!69517 s!2326))))))

(declare-fun b!5648722 () Bool)

(assert (=> b!5648722 (= e!3479672 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264212)))))))))

(assert (= (and d!1784463 res!2389315) b!5648722))

(assert (= (and d!1784463 c!992823) b!5648721))

(assert (= (and d!1784463 (not c!992823)) b!5648719))

(assert (= (and b!5648719 c!992822) b!5648718))

(assert (= (and b!5648719 (not c!992822)) b!5648720))

(assert (= (or b!5648721 b!5648718) bm!427252))

(declare-fun m!6616060 () Bool)

(assert (=> bm!427252 m!6616060))

(declare-fun m!6616062 () Bool)

(assert (=> b!5648721 m!6616062))

(declare-fun m!6616064 () Bool)

(assert (=> b!5648722 m!6616064))

(assert (=> b!5647156 d!1784463))

(declare-fun d!1784465 () Bool)

(declare-fun c!992824 () Bool)

(assert (=> d!1784465 (= c!992824 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun e!3479673 () Bool)

(assert (=> d!1784465 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264191 (head!12006 s!2326)) (tail!11101 s!2326)) e!3479673)))

(declare-fun b!5648723 () Bool)

(assert (=> b!5648723 (= e!3479673 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264191 (head!12006 s!2326))))))

(declare-fun b!5648724 () Bool)

(assert (=> b!5648724 (= e!3479673 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(assert (= (and d!1784465 c!992824) b!5648723))

(assert (= (and d!1784465 (not c!992824)) b!5648724))

(assert (=> d!1784465 m!6614392))

(assert (=> d!1784465 m!6614394))

(assert (=> b!5648723 m!6614680))

(declare-fun m!6616066 () Bool)

(assert (=> b!5648723 m!6616066))

(assert (=> b!5648724 m!6614392))

(declare-fun m!6616068 () Bool)

(assert (=> b!5648724 m!6616068))

(assert (=> b!5648724 m!6614680))

(assert (=> b!5648724 m!6616068))

(declare-fun m!6616070 () Bool)

(assert (=> b!5648724 m!6616070))

(assert (=> b!5648724 m!6614392))

(declare-fun m!6616072 () Bool)

(assert (=> b!5648724 m!6616072))

(assert (=> b!5648724 m!6616070))

(assert (=> b!5648724 m!6616072))

(declare-fun m!6616074 () Bool)

(assert (=> b!5648724 m!6616074))

(assert (=> b!5647348 d!1784465))

(declare-fun bs!1313555 () Bool)

(declare-fun d!1784467 () Bool)

(assert (= bs!1313555 (and d!1784467 b!5646443)))

(declare-fun lambda!303654 () Int)

(assert (=> bs!1313555 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303654 lambda!303425))))

(declare-fun bs!1313556 () Bool)

(assert (= bs!1313556 (and d!1784467 d!1783735)))

(assert (=> bs!1313556 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303654 lambda!303508))))

(declare-fun bs!1313557 () Bool)

(assert (= bs!1313557 (and d!1784467 d!1783813)))

(assert (=> bs!1313557 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303654 lambda!303543))))

(declare-fun bs!1313558 () Bool)

(assert (= bs!1313558 (and d!1784467 d!1784323)))

(assert (=> bs!1313558 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303654 lambda!303624))))

(assert (=> d!1784467 true))

(assert (=> d!1784467 (= (derivationStepZipper!1718 lt!2264191 (head!12006 s!2326)) (flatMap!1244 lt!2264191 lambda!303654))))

(declare-fun bs!1313559 () Bool)

(assert (= bs!1313559 d!1784467))

(declare-fun m!6616076 () Bool)

(assert (=> bs!1313559 m!6616076))

(assert (=> b!5647348 d!1784467))

(assert (=> b!5647348 d!1784387))

(declare-fun d!1784469 () Bool)

(assert (=> d!1784469 (= (tail!11101 s!2326) (t!376491 s!2326))))

(assert (=> b!5647348 d!1784469))

(assert (=> b!5647304 d!1783743))

(declare-fun b!5648725 () Bool)

(declare-fun e!3479675 () Int)

(declare-fun e!3479676 () Int)

(assert (=> b!5648725 (= e!3479675 e!3479676)))

(declare-fun c!992828 () Bool)

(assert (=> b!5648725 (= c!992828 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun d!1784471 () Bool)

(declare-fun lt!2264533 () Int)

(assert (=> d!1784471 (> lt!2264533 0)))

(declare-fun e!3479677 () Int)

(assert (=> d!1784471 (= lt!2264533 e!3479677)))

(declare-fun c!992827 () Bool)

(assert (=> d!1784471 (= c!992827 ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> d!1784471 (= (regexDepthTotal!95 (h!69516 (exprs!5515 (h!69518 zl!343)))) lt!2264533)))

(declare-fun bm!427253 () Bool)

(declare-fun c!992826 () Bool)

(declare-fun c!992825 () Bool)

(declare-fun call!427260 () Int)

(assert (=> bm!427253 (= call!427260 (regexDepthTotal!95 (ite c!992825 (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992826 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun b!5648726 () Bool)

(declare-fun e!3479674 () Int)

(assert (=> b!5648726 (= e!3479674 (+ 1 call!427260))))

(declare-fun b!5648727 () Bool)

(declare-fun call!427259 () Int)

(declare-fun call!427258 () Int)

(assert (=> b!5648727 (= e!3479676 (+ 1 call!427259 call!427258))))

(declare-fun bm!427254 () Bool)

(assert (=> bm!427254 (= call!427258 (regexDepthTotal!95 (ite c!992826 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648728 () Bool)

(assert (=> b!5648728 (= e!3479676 1)))

(declare-fun bm!427255 () Bool)

(assert (=> bm!427255 (= call!427259 call!427260)))

(declare-fun b!5648729 () Bool)

(assert (=> b!5648729 (= e!3479677 e!3479674)))

(assert (=> b!5648729 (= c!992825 ((_ is Star!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5648730 () Bool)

(assert (=> b!5648730 (= c!992826 ((_ is Union!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5648730 (= e!3479674 e!3479675)))

(declare-fun b!5648731 () Bool)

(assert (=> b!5648731 (= e!3479677 1)))

(declare-fun b!5648732 () Bool)

(assert (=> b!5648732 (= e!3479675 (+ 1 call!427259 call!427258))))

(assert (= (and d!1784471 c!992827) b!5648731))

(assert (= (and d!1784471 (not c!992827)) b!5648729))

(assert (= (and b!5648729 c!992825) b!5648726))

(assert (= (and b!5648729 (not c!992825)) b!5648730))

(assert (= (and b!5648730 c!992826) b!5648732))

(assert (= (and b!5648730 (not c!992826)) b!5648725))

(assert (= (and b!5648725 c!992828) b!5648727))

(assert (= (and b!5648725 (not c!992828)) b!5648728))

(assert (= (or b!5648732 b!5648727) bm!427254))

(assert (= (or b!5648732 b!5648727) bm!427255))

(assert (= (or b!5648726 bm!427255) bm!427253))

(declare-fun m!6616078 () Bool)

(assert (=> bm!427253 m!6616078))

(declare-fun m!6616080 () Bool)

(assert (=> bm!427254 m!6616080))

(assert (=> b!5647199 d!1784471))

(declare-fun d!1784473 () Bool)

(declare-fun lt!2264534 () Int)

(assert (=> d!1784473 (>= lt!2264534 0)))

(declare-fun e!3479678 () Int)

(assert (=> d!1784473 (= lt!2264534 e!3479678)))

(declare-fun c!992829 () Bool)

(assert (=> d!1784473 (= c!992829 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(assert (=> d!1784473 (= (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))) lt!2264534)))

(declare-fun b!5648733 () Bool)

(assert (=> b!5648733 (= e!3479678 (+ (regexDepthTotal!95 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))))) (contextDepthTotal!216 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))))))))))

(declare-fun b!5648734 () Bool)

(assert (=> b!5648734 (= e!3479678 1)))

(assert (= (and d!1784473 c!992829) b!5648733))

(assert (= (and d!1784473 (not c!992829)) b!5648734))

(declare-fun m!6616082 () Bool)

(assert (=> b!5648733 m!6616082))

(declare-fun m!6616084 () Bool)

(assert (=> b!5648733 m!6616084))

(assert (=> b!5647199 d!1784473))

(declare-fun b!5648735 () Bool)

(declare-fun res!2389322 () Bool)

(declare-fun e!3479679 () Bool)

(assert (=> b!5648735 (=> (not res!2389322) (not e!3479679))))

(declare-fun call!427261 () Bool)

(assert (=> b!5648735 (= res!2389322 (not call!427261))))

(declare-fun b!5648736 () Bool)

(declare-fun e!3479680 () Bool)

(assert (=> b!5648736 (= e!3479680 (nullable!5663 (regOne!31774 r!7292)))))

(declare-fun b!5648737 () Bool)

(declare-fun e!3479682 () Bool)

(declare-fun e!3479684 () Bool)

(assert (=> b!5648737 (= e!3479682 e!3479684)))

(declare-fun res!2389323 () Bool)

(assert (=> b!5648737 (=> (not res!2389323) (not e!3479684))))

(declare-fun lt!2264535 () Bool)

(assert (=> b!5648737 (= res!2389323 (not lt!2264535))))

(declare-fun b!5648738 () Bool)

(declare-fun e!3479681 () Bool)

(assert (=> b!5648738 (= e!3479681 (not lt!2264535))))

(declare-fun b!5648739 () Bool)

(declare-fun res!2389320 () Bool)

(declare-fun e!3479683 () Bool)

(assert (=> b!5648739 (=> res!2389320 e!3479683)))

(assert (=> b!5648739 (= res!2389320 (not (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264335))))))))

(declare-fun b!5648741 () Bool)

(assert (=> b!5648741 (= e!3479684 e!3479683)))

(declare-fun res!2389319 () Bool)

(assert (=> b!5648741 (=> res!2389319 e!3479683)))

(assert (=> b!5648741 (= res!2389319 call!427261)))

(declare-fun b!5648742 () Bool)

(assert (=> b!5648742 (= e!3479679 (= (head!12006 (_1!36031 (get!21730 lt!2264335))) (c!992159 (regOne!31774 r!7292))))))

(declare-fun b!5648743 () Bool)

(declare-fun res!2389321 () Bool)

(assert (=> b!5648743 (=> res!2389321 e!3479682)))

(assert (=> b!5648743 (= res!2389321 (not ((_ is ElementMatch!15631) (regOne!31774 r!7292))))))

(assert (=> b!5648743 (= e!3479681 e!3479682)))

(declare-fun b!5648744 () Bool)

(declare-fun e!3479685 () Bool)

(assert (=> b!5648744 (= e!3479685 (= lt!2264535 call!427261))))

(declare-fun bm!427256 () Bool)

(assert (=> bm!427256 (= call!427261 (isEmpty!34917 (_1!36031 (get!21730 lt!2264335))))))

(declare-fun d!1784475 () Bool)

(assert (=> d!1784475 e!3479685))

(declare-fun c!992830 () Bool)

(assert (=> d!1784475 (= c!992830 ((_ is EmptyExpr!15631) (regOne!31774 r!7292)))))

(assert (=> d!1784475 (= lt!2264535 e!3479680)))

(declare-fun c!992831 () Bool)

(assert (=> d!1784475 (= c!992831 (isEmpty!34917 (_1!36031 (get!21730 lt!2264335))))))

(assert (=> d!1784475 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1784475 (= (matchR!7816 (regOne!31774 r!7292) (_1!36031 (get!21730 lt!2264335))) lt!2264535)))

(declare-fun b!5648740 () Bool)

(assert (=> b!5648740 (= e!3479680 (matchR!7816 (derivativeStep!4467 (regOne!31774 r!7292) (head!12006 (_1!36031 (get!21730 lt!2264335)))) (tail!11101 (_1!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5648745 () Bool)

(declare-fun res!2389316 () Bool)

(assert (=> b!5648745 (=> res!2389316 e!3479682)))

(assert (=> b!5648745 (= res!2389316 e!3479679)))

(declare-fun res!2389318 () Bool)

(assert (=> b!5648745 (=> (not res!2389318) (not e!3479679))))

(assert (=> b!5648745 (= res!2389318 lt!2264535)))

(declare-fun b!5648746 () Bool)

(declare-fun res!2389317 () Bool)

(assert (=> b!5648746 (=> (not res!2389317) (not e!3479679))))

(assert (=> b!5648746 (= res!2389317 (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5648747 () Bool)

(assert (=> b!5648747 (= e!3479685 e!3479681)))

(declare-fun c!992832 () Bool)

(assert (=> b!5648747 (= c!992832 ((_ is EmptyLang!15631) (regOne!31774 r!7292)))))

(declare-fun b!5648748 () Bool)

(assert (=> b!5648748 (= e!3479683 (not (= (head!12006 (_1!36031 (get!21730 lt!2264335))) (c!992159 (regOne!31774 r!7292)))))))

(assert (= (and d!1784475 c!992831) b!5648736))

(assert (= (and d!1784475 (not c!992831)) b!5648740))

(assert (= (and d!1784475 c!992830) b!5648744))

(assert (= (and d!1784475 (not c!992830)) b!5648747))

(assert (= (and b!5648747 c!992832) b!5648738))

(assert (= (and b!5648747 (not c!992832)) b!5648743))

(assert (= (and b!5648743 (not res!2389321)) b!5648745))

(assert (= (and b!5648745 res!2389318) b!5648735))

(assert (= (and b!5648735 res!2389322) b!5648746))

(assert (= (and b!5648746 res!2389317) b!5648742))

(assert (= (and b!5648745 (not res!2389316)) b!5648737))

(assert (= (and b!5648737 res!2389323) b!5648741))

(assert (= (and b!5648741 (not res!2389319)) b!5648739))

(assert (= (and b!5648739 (not res!2389320)) b!5648748))

(assert (= (or b!5648744 b!5648735 b!5648741) bm!427256))

(declare-fun m!6616086 () Bool)

(assert (=> d!1784475 m!6616086))

(assert (=> d!1784475 m!6614352))

(declare-fun m!6616088 () Bool)

(assert (=> b!5648748 m!6616088))

(assert (=> b!5648742 m!6616088))

(assert (=> bm!427256 m!6616086))

(declare-fun m!6616090 () Bool)

(assert (=> b!5648746 m!6616090))

(assert (=> b!5648746 m!6616090))

(declare-fun m!6616092 () Bool)

(assert (=> b!5648746 m!6616092))

(assert (=> b!5648739 m!6616090))

(assert (=> b!5648739 m!6616090))

(assert (=> b!5648739 m!6616092))

(assert (=> b!5648740 m!6616088))

(assert (=> b!5648740 m!6616088))

(declare-fun m!6616094 () Bool)

(assert (=> b!5648740 m!6616094))

(assert (=> b!5648740 m!6616090))

(assert (=> b!5648740 m!6616094))

(assert (=> b!5648740 m!6616090))

(declare-fun m!6616096 () Bool)

(assert (=> b!5648740 m!6616096))

(declare-fun m!6616098 () Bool)

(assert (=> b!5648736 m!6616098))

(assert (=> b!5647037 d!1784475))

(assert (=> b!5647037 d!1784439))

(declare-fun d!1784477 () Bool)

(assert (=> d!1784477 (= (Exists!2731 lambda!303494) (choose!42758 lambda!303494))))

(declare-fun bs!1313560 () Bool)

(assert (= bs!1313560 d!1784477))

(declare-fun m!6616100 () Bool)

(assert (=> bs!1313560 m!6616100))

(assert (=> d!1783677 d!1784477))

(declare-fun d!1784479 () Bool)

(assert (=> d!1784479 (= (Exists!2731 lambda!303495) (choose!42758 lambda!303495))))

(declare-fun bs!1313561 () Bool)

(assert (= bs!1313561 d!1784479))

(declare-fun m!6616102 () Bool)

(assert (=> bs!1313561 m!6616102))

(assert (=> d!1783677 d!1784479))

(declare-fun bs!1313562 () Bool)

(declare-fun d!1784481 () Bool)

(assert (= bs!1313562 (and d!1784481 d!1783675)))

(declare-fun lambda!303655 () Int)

(assert (=> bs!1313562 (= lambda!303655 lambda!303489)))

(declare-fun bs!1313563 () Bool)

(assert (= bs!1313563 (and d!1784481 d!1783751)))

(assert (=> bs!1313563 (not (= lambda!303655 lambda!303513))))

(declare-fun bs!1313564 () Bool)

(assert (= bs!1313564 (and d!1784481 b!5646415)))

(assert (=> bs!1313564 (not (= lambda!303655 lambda!303429))))

(declare-fun bs!1313565 () Bool)

(assert (= bs!1313565 (and d!1784481 b!5646420)))

(assert (=> bs!1313565 (not (= lambda!303655 lambda!303424))))

(assert (=> bs!1313564 (not (= lambda!303655 lambda!303427))))

(declare-fun bs!1313566 () Bool)

(assert (= bs!1313566 (and d!1784481 b!5647372)))

(assert (=> bs!1313566 (not (= lambda!303655 lambda!303521))))

(assert (=> bs!1313564 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303655 lambda!303426))))

(assert (=> bs!1313564 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303655 lambda!303428))))

(declare-fun bs!1313567 () Bool)

(assert (= bs!1313567 (and d!1784481 d!1783793)))

(assert (=> bs!1313567 (not (= lambda!303655 lambda!303524))))

(declare-fun bs!1313568 () Bool)

(assert (= bs!1313568 (and d!1784481 b!5647367)))

(assert (=> bs!1313568 (not (= lambda!303655 lambda!303522))))

(declare-fun bs!1313569 () Bool)

(assert (= bs!1313569 (and d!1784481 b!5647087)))

(assert (=> bs!1313569 (not (= lambda!303655 lambda!303501))))

(declare-fun bs!1313570 () Bool)

(assert (= bs!1313570 (and d!1784481 d!1783759)))

(assert (=> bs!1313570 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303655 lambda!303514))))

(declare-fun bs!1313571 () Bool)

(assert (= bs!1313571 (and d!1784481 d!1783677)))

(assert (=> bs!1313571 (= lambda!303655 lambda!303494)))

(declare-fun bs!1313572 () Bool)

(assert (= bs!1313572 (and d!1784481 b!5647359)))

(assert (=> bs!1313572 (not (= lambda!303655 lambda!303518))))

(declare-fun bs!1313573 () Bool)

(assert (= bs!1313573 (and d!1784481 b!5647092)))

(assert (=> bs!1313573 (not (= lambda!303655 lambda!303500))))

(assert (=> bs!1313571 (not (= lambda!303655 lambda!303495))))

(declare-fun bs!1313574 () Bool)

(assert (= bs!1313574 (and d!1784481 d!1784359)))

(assert (=> bs!1313574 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303655 lambda!303630))))

(assert (=> bs!1313567 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303655 lambda!303523))))

(assert (=> bs!1313574 (not (= lambda!303655 lambda!303631))))

(declare-fun bs!1313575 () Bool)

(assert (= bs!1313575 (and d!1784481 d!1783781)))

(assert (=> bs!1313575 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303655 lambda!303520))))

(assert (=> bs!1313563 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303655 lambda!303512))))

(assert (=> bs!1313565 (= lambda!303655 lambda!303423)))

(declare-fun bs!1313576 () Bool)

(assert (= bs!1313576 (and d!1784481 b!5647354)))

(assert (=> bs!1313576 (not (= lambda!303655 lambda!303519))))

(assert (=> d!1784481 true))

(assert (=> d!1784481 true))

(assert (=> d!1784481 true))

(declare-fun lambda!303656 () Int)

(assert (=> bs!1313562 (not (= lambda!303656 lambda!303489))))

(assert (=> bs!1313563 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303656 lambda!303513))))

(assert (=> bs!1313564 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303656 lambda!303429))))

(assert (=> bs!1313565 (= lambda!303656 lambda!303424)))

(assert (=> bs!1313564 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303656 lambda!303427))))

(assert (=> bs!1313566 (not (= lambda!303656 lambda!303521))))

(declare-fun bs!1313577 () Bool)

(assert (= bs!1313577 d!1784481))

(assert (=> bs!1313577 (not (= lambda!303656 lambda!303655))))

(assert (=> bs!1313564 (not (= lambda!303656 lambda!303426))))

(assert (=> bs!1313564 (not (= lambda!303656 lambda!303428))))

(assert (=> bs!1313567 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303656 lambda!303524))))

(assert (=> bs!1313568 (= (and (= (regOne!31774 r!7292) (regOne!31774 lt!2264184)) (= (regTwo!31774 r!7292) (regTwo!31774 lt!2264184))) (= lambda!303656 lambda!303522))))

(assert (=> bs!1313569 (= lambda!303656 lambda!303501)))

(assert (=> bs!1313570 (not (= lambda!303656 lambda!303514))))

(assert (=> bs!1313571 (not (= lambda!303656 lambda!303494))))

(assert (=> bs!1313572 (not (= lambda!303656 lambda!303518))))

(assert (=> bs!1313573 (not (= lambda!303656 lambda!303500))))

(assert (=> bs!1313571 (= lambda!303656 lambda!303495)))

(assert (=> bs!1313574 (not (= lambda!303656 lambda!303630))))

(assert (=> bs!1313567 (not (= lambda!303656 lambda!303523))))

(assert (=> bs!1313574 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303656 lambda!303631))))

(assert (=> bs!1313575 (not (= lambda!303656 lambda!303520))))

(assert (=> bs!1313563 (not (= lambda!303656 lambda!303512))))

(assert (=> bs!1313565 (not (= lambda!303656 lambda!303423))))

(assert (=> bs!1313576 (= (and (= (regOne!31774 r!7292) (regOne!31774 lt!2264222)) (= (regTwo!31774 r!7292) (regTwo!31774 lt!2264222))) (= lambda!303656 lambda!303519))))

(assert (=> d!1784481 true))

(assert (=> d!1784481 true))

(assert (=> d!1784481 true))

(assert (=> d!1784481 (= (Exists!2731 lambda!303655) (Exists!2731 lambda!303656))))

(assert (=> d!1784481 true))

(declare-fun _$90!1388 () Unit!156056)

(assert (=> d!1784481 (= (choose!42760 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326) _$90!1388)))

(declare-fun m!6616104 () Bool)

(assert (=> bs!1313577 m!6616104))

(declare-fun m!6616106 () Bool)

(assert (=> bs!1313577 m!6616106))

(assert (=> d!1783677 d!1784481))

(declare-fun bm!427257 () Bool)

(declare-fun call!427264 () Bool)

(declare-fun call!427263 () Bool)

(assert (=> bm!427257 (= call!427264 call!427263)))

(declare-fun b!5648749 () Bool)

(declare-fun res!2389327 () Bool)

(declare-fun e!3479687 () Bool)

(assert (=> b!5648749 (=> (not res!2389327) (not e!3479687))))

(assert (=> b!5648749 (= res!2389327 call!427264)))

(declare-fun e!3479689 () Bool)

(assert (=> b!5648749 (= e!3479689 e!3479687)))

(declare-fun b!5648750 () Bool)

(declare-fun res!2389328 () Bool)

(declare-fun e!3479690 () Bool)

(assert (=> b!5648750 (=> res!2389328 e!3479690)))

(assert (=> b!5648750 (= res!2389328 (not ((_ is Concat!24476) (regOne!31774 r!7292))))))

(assert (=> b!5648750 (= e!3479689 e!3479690)))

(declare-fun bm!427258 () Bool)

(declare-fun call!427262 () Bool)

(declare-fun c!992834 () Bool)

(assert (=> bm!427258 (= call!427262 (validRegex!7367 (ite c!992834 (regTwo!31775 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun d!1784483 () Bool)

(declare-fun res!2389326 () Bool)

(declare-fun e!3479692 () Bool)

(assert (=> d!1784483 (=> res!2389326 e!3479692)))

(assert (=> d!1784483 (= res!2389326 ((_ is ElementMatch!15631) (regOne!31774 r!7292)))))

(assert (=> d!1784483 (= (validRegex!7367 (regOne!31774 r!7292)) e!3479692)))

(declare-fun b!5648751 () Bool)

(declare-fun e!3479686 () Bool)

(assert (=> b!5648751 (= e!3479686 e!3479689)))

(assert (=> b!5648751 (= c!992834 ((_ is Union!15631) (regOne!31774 r!7292)))))

(declare-fun b!5648752 () Bool)

(assert (=> b!5648752 (= e!3479692 e!3479686)))

(declare-fun c!992833 () Bool)

(assert (=> b!5648752 (= c!992833 ((_ is Star!15631) (regOne!31774 r!7292)))))

(declare-fun bm!427259 () Bool)

(assert (=> bm!427259 (= call!427263 (validRegex!7367 (ite c!992833 (reg!15960 (regOne!31774 r!7292)) (ite c!992834 (regOne!31775 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun b!5648753 () Bool)

(declare-fun e!3479691 () Bool)

(assert (=> b!5648753 (= e!3479691 call!427263)))

(declare-fun b!5648754 () Bool)

(declare-fun e!3479688 () Bool)

(assert (=> b!5648754 (= e!3479688 call!427262)))

(declare-fun b!5648755 () Bool)

(assert (=> b!5648755 (= e!3479690 e!3479688)))

(declare-fun res!2389325 () Bool)

(assert (=> b!5648755 (=> (not res!2389325) (not e!3479688))))

(assert (=> b!5648755 (= res!2389325 call!427264)))

(declare-fun b!5648756 () Bool)

(assert (=> b!5648756 (= e!3479687 call!427262)))

(declare-fun b!5648757 () Bool)

(assert (=> b!5648757 (= e!3479686 e!3479691)))

(declare-fun res!2389324 () Bool)

(assert (=> b!5648757 (= res!2389324 (not (nullable!5663 (reg!15960 (regOne!31774 r!7292)))))))

(assert (=> b!5648757 (=> (not res!2389324) (not e!3479691))))

(assert (= (and d!1784483 (not res!2389326)) b!5648752))

(assert (= (and b!5648752 c!992833) b!5648757))

(assert (= (and b!5648752 (not c!992833)) b!5648751))

(assert (= (and b!5648757 res!2389324) b!5648753))

(assert (= (and b!5648751 c!992834) b!5648749))

(assert (= (and b!5648751 (not c!992834)) b!5648750))

(assert (= (and b!5648749 res!2389327) b!5648756))

(assert (= (and b!5648750 (not res!2389328)) b!5648755))

(assert (= (and b!5648755 res!2389325) b!5648754))

(assert (= (or b!5648756 b!5648754) bm!427258))

(assert (= (or b!5648749 b!5648755) bm!427257))

(assert (= (or b!5648753 bm!427257) bm!427259))

(declare-fun m!6616108 () Bool)

(assert (=> bm!427258 m!6616108))

(declare-fun m!6616110 () Bool)

(assert (=> bm!427259 m!6616110))

(declare-fun m!6616112 () Bool)

(assert (=> b!5648757 m!6616112))

(assert (=> d!1783677 d!1784483))

(assert (=> bm!427015 d!1784413))

(declare-fun b!5648758 () Bool)

(declare-fun res!2389335 () Bool)

(declare-fun e!3479693 () Bool)

(assert (=> b!5648758 (=> (not res!2389335) (not e!3479693))))

(declare-fun call!427265 () Bool)

(assert (=> b!5648758 (= res!2389335 (not call!427265))))

(declare-fun b!5648759 () Bool)

(declare-fun e!3479694 () Bool)

(assert (=> b!5648759 (= e!3479694 (nullable!5663 (regTwo!31774 r!7292)))))

(declare-fun b!5648760 () Bool)

(declare-fun e!3479696 () Bool)

(declare-fun e!3479698 () Bool)

(assert (=> b!5648760 (= e!3479696 e!3479698)))

(declare-fun res!2389336 () Bool)

(assert (=> b!5648760 (=> (not res!2389336) (not e!3479698))))

(declare-fun lt!2264536 () Bool)

(assert (=> b!5648760 (= res!2389336 (not lt!2264536))))

(declare-fun b!5648761 () Bool)

(declare-fun e!3479695 () Bool)

(assert (=> b!5648761 (= e!3479695 (not lt!2264536))))

(declare-fun b!5648762 () Bool)

(declare-fun res!2389333 () Bool)

(declare-fun e!3479697 () Bool)

(assert (=> b!5648762 (=> res!2389333 e!3479697)))

(assert (=> b!5648762 (= res!2389333 (not (isEmpty!34917 (tail!11101 s!2326))))))

(declare-fun b!5648764 () Bool)

(assert (=> b!5648764 (= e!3479698 e!3479697)))

(declare-fun res!2389332 () Bool)

(assert (=> b!5648764 (=> res!2389332 e!3479697)))

(assert (=> b!5648764 (= res!2389332 call!427265)))

(declare-fun b!5648765 () Bool)

(assert (=> b!5648765 (= e!3479693 (= (head!12006 s!2326) (c!992159 (regTwo!31774 r!7292))))))

(declare-fun b!5648766 () Bool)

(declare-fun res!2389334 () Bool)

(assert (=> b!5648766 (=> res!2389334 e!3479696)))

(assert (=> b!5648766 (= res!2389334 (not ((_ is ElementMatch!15631) (regTwo!31774 r!7292))))))

(assert (=> b!5648766 (= e!3479695 e!3479696)))

(declare-fun b!5648767 () Bool)

(declare-fun e!3479699 () Bool)

(assert (=> b!5648767 (= e!3479699 (= lt!2264536 call!427265))))

(declare-fun bm!427260 () Bool)

(assert (=> bm!427260 (= call!427265 (isEmpty!34917 s!2326))))

(declare-fun d!1784485 () Bool)

(assert (=> d!1784485 e!3479699))

(declare-fun c!992835 () Bool)

(assert (=> d!1784485 (= c!992835 ((_ is EmptyExpr!15631) (regTwo!31774 r!7292)))))

(assert (=> d!1784485 (= lt!2264536 e!3479694)))

(declare-fun c!992836 () Bool)

(assert (=> d!1784485 (= c!992836 (isEmpty!34917 s!2326))))

(assert (=> d!1784485 (validRegex!7367 (regTwo!31774 r!7292))))

(assert (=> d!1784485 (= (matchR!7816 (regTwo!31774 r!7292) s!2326) lt!2264536)))

(declare-fun b!5648763 () Bool)

(assert (=> b!5648763 (= e!3479694 (matchR!7816 (derivativeStep!4467 (regTwo!31774 r!7292) (head!12006 s!2326)) (tail!11101 s!2326)))))

(declare-fun b!5648768 () Bool)

(declare-fun res!2389329 () Bool)

(assert (=> b!5648768 (=> res!2389329 e!3479696)))

(assert (=> b!5648768 (= res!2389329 e!3479693)))

(declare-fun res!2389331 () Bool)

(assert (=> b!5648768 (=> (not res!2389331) (not e!3479693))))

(assert (=> b!5648768 (= res!2389331 lt!2264536)))

(declare-fun b!5648769 () Bool)

(declare-fun res!2389330 () Bool)

(assert (=> b!5648769 (=> (not res!2389330) (not e!3479693))))

(assert (=> b!5648769 (= res!2389330 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun b!5648770 () Bool)

(assert (=> b!5648770 (= e!3479699 e!3479695)))

(declare-fun c!992837 () Bool)

(assert (=> b!5648770 (= c!992837 ((_ is EmptyLang!15631) (regTwo!31774 r!7292)))))

(declare-fun b!5648771 () Bool)

(assert (=> b!5648771 (= e!3479697 (not (= (head!12006 s!2326) (c!992159 (regTwo!31774 r!7292)))))))

(assert (= (and d!1784485 c!992836) b!5648759))

(assert (= (and d!1784485 (not c!992836)) b!5648763))

(assert (= (and d!1784485 c!992835) b!5648767))

(assert (= (and d!1784485 (not c!992835)) b!5648770))

(assert (= (and b!5648770 c!992837) b!5648761))

(assert (= (and b!5648770 (not c!992837)) b!5648766))

(assert (= (and b!5648766 (not res!2389334)) b!5648768))

(assert (= (and b!5648768 res!2389331) b!5648758))

(assert (= (and b!5648758 res!2389335) b!5648769))

(assert (= (and b!5648769 res!2389330) b!5648765))

(assert (= (and b!5648768 (not res!2389329)) b!5648760))

(assert (= (and b!5648760 res!2389336) b!5648764))

(assert (= (and b!5648764 (not res!2389332)) b!5648762))

(assert (= (and b!5648762 (not res!2389333)) b!5648771))

(assert (= (or b!5648767 b!5648758 b!5648764) bm!427260))

(assert (=> d!1784485 m!6614382))

(declare-fun m!6616114 () Bool)

(assert (=> d!1784485 m!6616114))

(assert (=> b!5648771 m!6614390))

(assert (=> b!5648765 m!6614390))

(assert (=> bm!427260 m!6614382))

(assert (=> b!5648769 m!6614392))

(assert (=> b!5648769 m!6614392))

(assert (=> b!5648769 m!6614394))

(assert (=> b!5648762 m!6614392))

(assert (=> b!5648762 m!6614392))

(assert (=> b!5648762 m!6614394))

(assert (=> b!5648763 m!6614390))

(assert (=> b!5648763 m!6614390))

(declare-fun m!6616116 () Bool)

(assert (=> b!5648763 m!6616116))

(assert (=> b!5648763 m!6614392))

(assert (=> b!5648763 m!6616116))

(assert (=> b!5648763 m!6614392))

(declare-fun m!6616118 () Bool)

(assert (=> b!5648763 m!6616118))

(declare-fun m!6616120 () Bool)

(assert (=> b!5648759 m!6616120))

(assert (=> b!5647029 d!1784485))

(declare-fun d!1784487 () Bool)

(assert (=> d!1784487 true))

(assert (=> d!1784487 true))

(declare-fun res!2389337 () Bool)

(assert (=> d!1784487 (= (choose!42758 lambda!303424) res!2389337)))

(assert (=> d!1783673 d!1784487))

(declare-fun bs!1313578 () Bool)

(declare-fun b!5648782 () Bool)

(assert (= bs!1313578 (and b!5648782 d!1783675)))

(declare-fun lambda!303657 () Int)

(assert (=> bs!1313578 (not (= lambda!303657 lambda!303489))))

(declare-fun bs!1313579 () Bool)

(assert (= bs!1313579 (and b!5648782 d!1783751)))

(assert (=> bs!1313579 (not (= lambda!303657 lambda!303513))))

(declare-fun bs!1313580 () Bool)

(assert (= bs!1313580 (and b!5648782 b!5646415)))

(assert (=> bs!1313580 (not (= lambda!303657 lambda!303429))))

(declare-fun bs!1313581 () Bool)

(assert (= bs!1313581 (and b!5648782 b!5646420)))

(assert (=> bs!1313581 (not (= lambda!303657 lambda!303424))))

(assert (=> bs!1313580 (not (= lambda!303657 lambda!303427))))

(declare-fun bs!1313582 () Bool)

(assert (= bs!1313582 (and b!5648782 b!5647372)))

(assert (=> bs!1313582 (= (and (= (reg!15960 (regTwo!31775 r!7292)) (reg!15960 lt!2264184)) (= (regTwo!31775 r!7292) lt!2264184)) (= lambda!303657 lambda!303521))))

(declare-fun bs!1313583 () Bool)

(assert (= bs!1313583 (and b!5648782 d!1784481)))

(assert (=> bs!1313583 (not (= lambda!303657 lambda!303655))))

(assert (=> bs!1313580 (not (= lambda!303657 lambda!303426))))

(assert (=> bs!1313583 (not (= lambda!303657 lambda!303656))))

(assert (=> bs!1313580 (not (= lambda!303657 lambda!303428))))

(declare-fun bs!1313584 () Bool)

(assert (= bs!1313584 (and b!5648782 d!1783793)))

(assert (=> bs!1313584 (not (= lambda!303657 lambda!303524))))

(declare-fun bs!1313585 () Bool)

(assert (= bs!1313585 (and b!5648782 b!5647367)))

(assert (=> bs!1313585 (not (= lambda!303657 lambda!303522))))

(declare-fun bs!1313586 () Bool)

(assert (= bs!1313586 (and b!5648782 b!5647087)))

(assert (=> bs!1313586 (not (= lambda!303657 lambda!303501))))

(declare-fun bs!1313587 () Bool)

(assert (= bs!1313587 (and b!5648782 d!1783759)))

(assert (=> bs!1313587 (not (= lambda!303657 lambda!303514))))

(declare-fun bs!1313588 () Bool)

(assert (= bs!1313588 (and b!5648782 d!1783677)))

(assert (=> bs!1313588 (not (= lambda!303657 lambda!303494))))

(declare-fun bs!1313589 () Bool)

(assert (= bs!1313589 (and b!5648782 b!5647359)))

(assert (=> bs!1313589 (= (and (= (reg!15960 (regTwo!31775 r!7292)) (reg!15960 lt!2264222)) (= (regTwo!31775 r!7292) lt!2264222)) (= lambda!303657 lambda!303518))))

(declare-fun bs!1313590 () Bool)

(assert (= bs!1313590 (and b!5648782 b!5647092)))

(assert (=> bs!1313590 (= (and (= (reg!15960 (regTwo!31775 r!7292)) (reg!15960 r!7292)) (= (regTwo!31775 r!7292) r!7292)) (= lambda!303657 lambda!303500))))

(assert (=> bs!1313588 (not (= lambda!303657 lambda!303495))))

(declare-fun bs!1313591 () Bool)

(assert (= bs!1313591 (and b!5648782 d!1784359)))

(assert (=> bs!1313591 (not (= lambda!303657 lambda!303630))))

(assert (=> bs!1313584 (not (= lambda!303657 lambda!303523))))

(assert (=> bs!1313591 (not (= lambda!303657 lambda!303631))))

(declare-fun bs!1313592 () Bool)

(assert (= bs!1313592 (and b!5648782 d!1783781)))

(assert (=> bs!1313592 (not (= lambda!303657 lambda!303520))))

(assert (=> bs!1313579 (not (= lambda!303657 lambda!303512))))

(assert (=> bs!1313581 (not (= lambda!303657 lambda!303423))))

(declare-fun bs!1313593 () Bool)

(assert (= bs!1313593 (and b!5648782 b!5647354)))

(assert (=> bs!1313593 (not (= lambda!303657 lambda!303519))))

(assert (=> b!5648782 true))

(assert (=> b!5648782 true))

(declare-fun bs!1313594 () Bool)

(declare-fun b!5648777 () Bool)

(assert (= bs!1313594 (and b!5648777 d!1783675)))

(declare-fun lambda!303658 () Int)

(assert (=> bs!1313594 (not (= lambda!303658 lambda!303489))))

(declare-fun bs!1313595 () Bool)

(assert (= bs!1313595 (and b!5648777 d!1783751)))

(assert (=> bs!1313595 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 r!7292)) lt!2264217)) (= lambda!303658 lambda!303513))))

(declare-fun bs!1313596 () Bool)

(assert (= bs!1313596 (and b!5648777 b!5646415)))

(assert (=> bs!1313596 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 r!7292)) lt!2264217)) (= lambda!303658 lambda!303429))))

(declare-fun bs!1313597 () Bool)

(assert (= bs!1313597 (and b!5648777 b!5646420)))

(assert (=> bs!1313597 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303658 lambda!303424))))

(assert (=> bs!1313596 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 r!7292)) lt!2264184)) (= lambda!303658 lambda!303427))))

(declare-fun bs!1313598 () Bool)

(assert (= bs!1313598 (and b!5648777 b!5647372)))

(assert (=> bs!1313598 (not (= lambda!303658 lambda!303521))))

(declare-fun bs!1313599 () Bool)

(assert (= bs!1313599 (and b!5648777 d!1784481)))

(assert (=> bs!1313599 (not (= lambda!303658 lambda!303655))))

(assert (=> bs!1313596 (not (= lambda!303658 lambda!303426))))

(assert (=> bs!1313599 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303658 lambda!303656))))

(assert (=> bs!1313596 (not (= lambda!303658 lambda!303428))))

(declare-fun bs!1313600 () Bool)

(assert (= bs!1313600 (and b!5648777 d!1783793)))

(assert (=> bs!1313600 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 r!7292)) lt!2264184)) (= lambda!303658 lambda!303524))))

(declare-fun bs!1313601 () Bool)

(assert (= bs!1313601 (and b!5648777 b!5647367)))

(assert (=> bs!1313601 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 lt!2264184))) (= lambda!303658 lambda!303522))))

(declare-fun bs!1313602 () Bool)

(assert (= bs!1313602 (and b!5648777 b!5647087)))

(assert (=> bs!1313602 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303658 lambda!303501))))

(declare-fun bs!1313603 () Bool)

(assert (= bs!1313603 (and b!5648777 d!1783759)))

(assert (=> bs!1313603 (not (= lambda!303658 lambda!303514))))

(declare-fun bs!1313604 () Bool)

(assert (= bs!1313604 (and b!5648777 d!1783677)))

(assert (=> bs!1313604 (not (= lambda!303658 lambda!303494))))

(declare-fun bs!1313605 () Bool)

(assert (= bs!1313605 (and b!5648777 b!5648782)))

(assert (=> bs!1313605 (not (= lambda!303658 lambda!303657))))

(declare-fun bs!1313606 () Bool)

(assert (= bs!1313606 (and b!5648777 b!5647359)))

(assert (=> bs!1313606 (not (= lambda!303658 lambda!303518))))

(declare-fun bs!1313607 () Bool)

(assert (= bs!1313607 (and b!5648777 b!5647092)))

(assert (=> bs!1313607 (not (= lambda!303658 lambda!303500))))

(assert (=> bs!1313604 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303658 lambda!303495))))

(declare-fun bs!1313608 () Bool)

(assert (= bs!1313608 (and b!5648777 d!1784359)))

(assert (=> bs!1313608 (not (= lambda!303658 lambda!303630))))

(assert (=> bs!1313600 (not (= lambda!303658 lambda!303523))))

(assert (=> bs!1313608 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 r!7292)) lt!2264184)) (= lambda!303658 lambda!303631))))

(declare-fun bs!1313609 () Bool)

(assert (= bs!1313609 (and b!5648777 d!1783781)))

(assert (=> bs!1313609 (not (= lambda!303658 lambda!303520))))

(assert (=> bs!1313595 (not (= lambda!303658 lambda!303512))))

(assert (=> bs!1313597 (not (= lambda!303658 lambda!303423))))

(declare-fun bs!1313610 () Bool)

(assert (= bs!1313610 (and b!5648777 b!5647354)))

(assert (=> bs!1313610 (= (and (= (regOne!31774 (regTwo!31775 r!7292)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regTwo!31775 r!7292)) (regTwo!31774 lt!2264222))) (= lambda!303658 lambda!303519))))

(assert (=> b!5648777 true))

(assert (=> b!5648777 true))

(declare-fun b!5648772 () Bool)

(declare-fun e!3479700 () Bool)

(assert (=> b!5648772 (= e!3479700 (= s!2326 (Cons!63069 (c!992159 (regTwo!31775 r!7292)) Nil!63069)))))

(declare-fun b!5648773 () Bool)

(declare-fun res!2389338 () Bool)

(declare-fun e!3479701 () Bool)

(assert (=> b!5648773 (=> res!2389338 e!3479701)))

(declare-fun call!427266 () Bool)

(assert (=> b!5648773 (= res!2389338 call!427266)))

(declare-fun e!3479704 () Bool)

(assert (=> b!5648773 (= e!3479704 e!3479701)))

(declare-fun bm!427261 () Bool)

(assert (=> bm!427261 (= call!427266 (isEmpty!34917 s!2326))))

(declare-fun b!5648774 () Bool)

(declare-fun c!992841 () Bool)

(assert (=> b!5648774 (= c!992841 ((_ is ElementMatch!15631) (regTwo!31775 r!7292)))))

(declare-fun e!3479705 () Bool)

(assert (=> b!5648774 (= e!3479705 e!3479700)))

(declare-fun b!5648775 () Bool)

(declare-fun e!3479702 () Bool)

(declare-fun e!3479703 () Bool)

(assert (=> b!5648775 (= e!3479702 e!3479703)))

(declare-fun res!2389339 () Bool)

(assert (=> b!5648775 (= res!2389339 (matchRSpec!2734 (regOne!31775 (regTwo!31775 r!7292)) s!2326))))

(assert (=> b!5648775 (=> res!2389339 e!3479703)))

(declare-fun d!1784489 () Bool)

(declare-fun c!992840 () Bool)

(assert (=> d!1784489 (= c!992840 ((_ is EmptyExpr!15631) (regTwo!31775 r!7292)))))

(declare-fun e!3479706 () Bool)

(assert (=> d!1784489 (= (matchRSpec!2734 (regTwo!31775 r!7292) s!2326) e!3479706)))

(declare-fun b!5648776 () Bool)

(declare-fun c!992839 () Bool)

(assert (=> b!5648776 (= c!992839 ((_ is Union!15631) (regTwo!31775 r!7292)))))

(assert (=> b!5648776 (= e!3479700 e!3479702)))

(declare-fun bm!427262 () Bool)

(declare-fun c!992838 () Bool)

(declare-fun call!427267 () Bool)

(assert (=> bm!427262 (= call!427267 (Exists!2731 (ite c!992838 lambda!303657 lambda!303658)))))

(assert (=> b!5648777 (= e!3479704 call!427267)))

(declare-fun b!5648778 () Bool)

(assert (=> b!5648778 (= e!3479702 e!3479704)))

(assert (=> b!5648778 (= c!992838 ((_ is Star!15631) (regTwo!31775 r!7292)))))

(declare-fun b!5648779 () Bool)

(assert (=> b!5648779 (= e!3479706 call!427266)))

(declare-fun b!5648780 () Bool)

(assert (=> b!5648780 (= e!3479706 e!3479705)))

(declare-fun res!2389340 () Bool)

(assert (=> b!5648780 (= res!2389340 (not ((_ is EmptyLang!15631) (regTwo!31775 r!7292))))))

(assert (=> b!5648780 (=> (not res!2389340) (not e!3479705))))

(declare-fun b!5648781 () Bool)

(assert (=> b!5648781 (= e!3479703 (matchRSpec!2734 (regTwo!31775 (regTwo!31775 r!7292)) s!2326))))

(assert (=> b!5648782 (= e!3479701 call!427267)))

(assert (= (and d!1784489 c!992840) b!5648779))

(assert (= (and d!1784489 (not c!992840)) b!5648780))

(assert (= (and b!5648780 res!2389340) b!5648774))

(assert (= (and b!5648774 c!992841) b!5648772))

(assert (= (and b!5648774 (not c!992841)) b!5648776))

(assert (= (and b!5648776 c!992839) b!5648775))

(assert (= (and b!5648776 (not c!992839)) b!5648778))

(assert (= (and b!5648775 (not res!2389339)) b!5648781))

(assert (= (and b!5648778 c!992838) b!5648773))

(assert (= (and b!5648778 (not c!992838)) b!5648777))

(assert (= (and b!5648773 (not res!2389338)) b!5648782))

(assert (= (or b!5648782 b!5648777) bm!427262))

(assert (= (or b!5648779 b!5648773) bm!427261))

(assert (=> bm!427261 m!6614382))

(declare-fun m!6616122 () Bool)

(assert (=> b!5648775 m!6616122))

(declare-fun m!6616124 () Bool)

(assert (=> bm!427262 m!6616124))

(declare-fun m!6616126 () Bool)

(assert (=> b!5648781 m!6616126))

(assert (=> b!5647091 d!1784489))

(declare-fun b!5648783 () Bool)

(declare-fun res!2389347 () Bool)

(declare-fun e!3479707 () Bool)

(assert (=> b!5648783 (=> (not res!2389347) (not e!3479707))))

(declare-fun call!427268 () Bool)

(assert (=> b!5648783 (= res!2389347 (not call!427268))))

(declare-fun b!5648784 () Bool)

(declare-fun e!3479708 () Bool)

(assert (=> b!5648784 (= e!3479708 (nullable!5663 lt!2264184))))

(declare-fun b!5648785 () Bool)

(declare-fun e!3479710 () Bool)

(declare-fun e!3479712 () Bool)

(assert (=> b!5648785 (= e!3479710 e!3479712)))

(declare-fun res!2389348 () Bool)

(assert (=> b!5648785 (=> (not res!2389348) (not e!3479712))))

(declare-fun lt!2264537 () Bool)

(assert (=> b!5648785 (= res!2389348 (not lt!2264537))))

(declare-fun b!5648786 () Bool)

(declare-fun e!3479709 () Bool)

(assert (=> b!5648786 (= e!3479709 (not lt!2264537))))

(declare-fun b!5648787 () Bool)

(declare-fun res!2389345 () Bool)

(declare-fun e!3479711 () Bool)

(assert (=> b!5648787 (=> res!2389345 e!3479711)))

(assert (=> b!5648787 (= res!2389345 (not (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264377))))))))

(declare-fun b!5648789 () Bool)

(assert (=> b!5648789 (= e!3479712 e!3479711)))

(declare-fun res!2389344 () Bool)

(assert (=> b!5648789 (=> res!2389344 e!3479711)))

(assert (=> b!5648789 (= res!2389344 call!427268)))

(declare-fun b!5648790 () Bool)

(assert (=> b!5648790 (= e!3479707 (= (head!12006 (_2!36031 (get!21730 lt!2264377))) (c!992159 lt!2264184)))))

(declare-fun b!5648791 () Bool)

(declare-fun res!2389346 () Bool)

(assert (=> b!5648791 (=> res!2389346 e!3479710)))

(assert (=> b!5648791 (= res!2389346 (not ((_ is ElementMatch!15631) lt!2264184)))))

(assert (=> b!5648791 (= e!3479709 e!3479710)))

(declare-fun b!5648792 () Bool)

(declare-fun e!3479713 () Bool)

(assert (=> b!5648792 (= e!3479713 (= lt!2264537 call!427268))))

(declare-fun bm!427263 () Bool)

(assert (=> bm!427263 (= call!427268 (isEmpty!34917 (_2!36031 (get!21730 lt!2264377))))))

(declare-fun d!1784491 () Bool)

(assert (=> d!1784491 e!3479713))

(declare-fun c!992842 () Bool)

(assert (=> d!1784491 (= c!992842 ((_ is EmptyExpr!15631) lt!2264184))))

(assert (=> d!1784491 (= lt!2264537 e!3479708)))

(declare-fun c!992843 () Bool)

(assert (=> d!1784491 (= c!992843 (isEmpty!34917 (_2!36031 (get!21730 lt!2264377))))))

(assert (=> d!1784491 (validRegex!7367 lt!2264184)))

(assert (=> d!1784491 (= (matchR!7816 lt!2264184 (_2!36031 (get!21730 lt!2264377))) lt!2264537)))

(declare-fun b!5648788 () Bool)

(assert (=> b!5648788 (= e!3479708 (matchR!7816 (derivativeStep!4467 lt!2264184 (head!12006 (_2!36031 (get!21730 lt!2264377)))) (tail!11101 (_2!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5648793 () Bool)

(declare-fun res!2389341 () Bool)

(assert (=> b!5648793 (=> res!2389341 e!3479710)))

(assert (=> b!5648793 (= res!2389341 e!3479707)))

(declare-fun res!2389343 () Bool)

(assert (=> b!5648793 (=> (not res!2389343) (not e!3479707))))

(assert (=> b!5648793 (= res!2389343 lt!2264537)))

(declare-fun b!5648794 () Bool)

(declare-fun res!2389342 () Bool)

(assert (=> b!5648794 (=> (not res!2389342) (not e!3479707))))

(assert (=> b!5648794 (= res!2389342 (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5648795 () Bool)

(assert (=> b!5648795 (= e!3479713 e!3479709)))

(declare-fun c!992844 () Bool)

(assert (=> b!5648795 (= c!992844 ((_ is EmptyLang!15631) lt!2264184))))

(declare-fun b!5648796 () Bool)

(assert (=> b!5648796 (= e!3479711 (not (= (head!12006 (_2!36031 (get!21730 lt!2264377))) (c!992159 lt!2264184))))))

(assert (= (and d!1784491 c!992843) b!5648784))

(assert (= (and d!1784491 (not c!992843)) b!5648788))

(assert (= (and d!1784491 c!992842) b!5648792))

(assert (= (and d!1784491 (not c!992842)) b!5648795))

(assert (= (and b!5648795 c!992844) b!5648786))

(assert (= (and b!5648795 (not c!992844)) b!5648791))

(assert (= (and b!5648791 (not res!2389346)) b!5648793))

(assert (= (and b!5648793 res!2389343) b!5648783))

(assert (= (and b!5648783 res!2389347) b!5648794))

(assert (= (and b!5648794 res!2389342) b!5648790))

(assert (= (and b!5648793 (not res!2389341)) b!5648785))

(assert (= (and b!5648785 res!2389348) b!5648789))

(assert (= (and b!5648789 (not res!2389344)) b!5648787))

(assert (= (and b!5648787 (not res!2389345)) b!5648796))

(assert (= (or b!5648792 b!5648783 b!5648789) bm!427263))

(declare-fun m!6616128 () Bool)

(assert (=> d!1784491 m!6616128))

(assert (=> d!1784491 m!6614544))

(declare-fun m!6616130 () Bool)

(assert (=> b!5648796 m!6616130))

(assert (=> b!5648790 m!6616130))

(assert (=> bm!427263 m!6616128))

(declare-fun m!6616132 () Bool)

(assert (=> b!5648794 m!6616132))

(assert (=> b!5648794 m!6616132))

(declare-fun m!6616134 () Bool)

(assert (=> b!5648794 m!6616134))

(assert (=> b!5648787 m!6616132))

(assert (=> b!5648787 m!6616132))

(assert (=> b!5648787 m!6616134))

(assert (=> b!5648788 m!6616130))

(assert (=> b!5648788 m!6616130))

(declare-fun m!6616136 () Bool)

(assert (=> b!5648788 m!6616136))

(assert (=> b!5648788 m!6616132))

(assert (=> b!5648788 m!6616136))

(assert (=> b!5648788 m!6616132))

(declare-fun m!6616138 () Bool)

(assert (=> b!5648788 m!6616138))

(assert (=> b!5648784 m!6614550))

(assert (=> b!5647331 d!1784491))

(declare-fun d!1784493 () Bool)

(assert (=> d!1784493 (= (get!21730 lt!2264377) (v!51686 lt!2264377))))

(assert (=> b!5647331 d!1784493))

(declare-fun d!1784495 () Bool)

(declare-fun res!2389349 () Bool)

(declare-fun e!3479714 () Bool)

(assert (=> d!1784495 (=> res!2389349 e!3479714)))

(assert (=> d!1784495 (= res!2389349 ((_ is Nil!63070) lt!2264185))))

(assert (=> d!1784495 (= (forall!14789 lt!2264185 lambda!303539) e!3479714)))

(declare-fun b!5648797 () Bool)

(declare-fun e!3479715 () Bool)

(assert (=> b!5648797 (= e!3479714 e!3479715)))

(declare-fun res!2389350 () Bool)

(assert (=> b!5648797 (=> (not res!2389350) (not e!3479715))))

(assert (=> b!5648797 (= res!2389350 (dynLambda!24680 lambda!303539 (h!69518 lt!2264185)))))

(declare-fun b!5648798 () Bool)

(assert (=> b!5648798 (= e!3479715 (forall!14789 (t!376492 lt!2264185) lambda!303539))))

(assert (= (and d!1784495 (not res!2389349)) b!5648797))

(assert (= (and b!5648797 res!2389350) b!5648798))

(declare-fun b_lambda!213719 () Bool)

(assert (=> (not b_lambda!213719) (not b!5648797)))

(declare-fun m!6616140 () Bool)

(assert (=> b!5648797 m!6616140))

(declare-fun m!6616142 () Bool)

(assert (=> b!5648798 m!6616142))

(assert (=> b!5647420 d!1784495))

(declare-fun c!992846 () Bool)

(declare-fun call!427272 () List!63192)

(declare-fun c!992849 () Bool)

(declare-fun bm!427264 () Bool)

(assert (=> bm!427264 (= call!427272 ($colon$colon!1681 (exprs!5515 (ite c!992401 lt!2264212 (Context!10031 call!427011))) (ite (or c!992849 c!992846) (regTwo!31774 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))))

(declare-fun bm!427265 () Bool)

(declare-fun call!427273 () List!63192)

(assert (=> bm!427265 (= call!427273 call!427272)))

(declare-fun b!5648799 () Bool)

(declare-fun e!3479721 () (InoxSet Context!10030))

(assert (=> b!5648799 (= e!3479721 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648800 () Bool)

(declare-fun e!3479717 () (InoxSet Context!10030))

(declare-fun call!427271 () (InoxSet Context!10030))

(assert (=> b!5648800 (= e!3479717 call!427271)))

(declare-fun d!1784497 () Bool)

(declare-fun c!992847 () Bool)

(assert (=> d!1784497 (= c!992847 (and ((_ is ElementMatch!15631) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (= (c!992159 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (h!69517 s!2326))))))

(declare-fun e!3479718 () (InoxSet Context!10030))

(assert (=> d!1784497 (= (derivationStepZipperDown!973 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))) (ite c!992401 lt!2264212 (Context!10031 call!427011)) (h!69517 s!2326)) e!3479718)))

(declare-fun bm!427266 () Bool)

(declare-fun c!992848 () Bool)

(declare-fun call!427269 () (InoxSet Context!10030))

(assert (=> bm!427266 (= call!427269 (derivationStepZipperDown!973 (ite c!992848 (regOne!31775 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (regOne!31774 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))) (ite c!992848 (ite c!992401 lt!2264212 (Context!10031 call!427011)) (Context!10031 call!427272)) (h!69517 s!2326)))))

(declare-fun b!5648801 () Bool)

(declare-fun e!3479719 () (InoxSet Context!10030))

(assert (=> b!5648801 (= e!3479718 e!3479719)))

(assert (=> b!5648801 (= c!992848 ((_ is Union!15631) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))))))

(declare-fun b!5648802 () Bool)

(declare-fun call!427270 () (InoxSet Context!10030))

(assert (=> b!5648802 (= e!3479719 ((_ map or) call!427269 call!427270))))

(declare-fun b!5648803 () Bool)

(declare-fun e!3479716 () (InoxSet Context!10030))

(declare-fun call!427274 () (InoxSet Context!10030))

(assert (=> b!5648803 (= e!3479716 ((_ map or) call!427269 call!427274))))

(declare-fun b!5648804 () Bool)

(assert (=> b!5648804 (= e!3479718 (store ((as const (Array Context!10030 Bool)) false) (ite c!992401 lt!2264212 (Context!10031 call!427011)) true))))

(declare-fun b!5648805 () Bool)

(declare-fun e!3479720 () Bool)

(assert (=> b!5648805 (= e!3479720 (nullable!5663 (regOne!31774 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))))

(declare-fun b!5648806 () Bool)

(declare-fun c!992845 () Bool)

(assert (=> b!5648806 (= c!992845 ((_ is Star!15631) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5648806 (= e!3479717 e!3479721)))

(declare-fun b!5648807 () Bool)

(assert (=> b!5648807 (= e!3479721 call!427271)))

(declare-fun b!5648808 () Bool)

(assert (=> b!5648808 (= e!3479716 e!3479717)))

(assert (=> b!5648808 (= c!992846 ((_ is Concat!24476) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))))))

(declare-fun bm!427267 () Bool)

(assert (=> bm!427267 (= call!427271 call!427274)))

(declare-fun bm!427268 () Bool)

(assert (=> bm!427268 (= call!427274 call!427270)))

(declare-fun b!5648809 () Bool)

(assert (=> b!5648809 (= c!992849 e!3479720)))

(declare-fun res!2389351 () Bool)

(assert (=> b!5648809 (=> (not res!2389351) (not e!3479720))))

(assert (=> b!5648809 (= res!2389351 ((_ is Concat!24476) (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5648809 (= e!3479719 e!3479716)))

(declare-fun bm!427269 () Bool)

(assert (=> bm!427269 (= call!427270 (derivationStepZipperDown!973 (ite c!992848 (regTwo!31775 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (ite c!992849 (regTwo!31774 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (ite c!992846 (regOne!31774 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))))) (reg!15960 (ite c!992401 (regOne!31775 (regTwo!31774 (regOne!31774 r!7292))) (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))) (ite (or c!992848 c!992849) (ite c!992401 lt!2264212 (Context!10031 call!427011)) (Context!10031 call!427273)) (h!69517 s!2326)))))

(assert (= (and d!1784497 c!992847) b!5648804))

(assert (= (and d!1784497 (not c!992847)) b!5648801))

(assert (= (and b!5648801 c!992848) b!5648802))

(assert (= (and b!5648801 (not c!992848)) b!5648809))

(assert (= (and b!5648809 res!2389351) b!5648805))

(assert (= (and b!5648809 c!992849) b!5648803))

(assert (= (and b!5648809 (not c!992849)) b!5648808))

(assert (= (and b!5648808 c!992846) b!5648800))

(assert (= (and b!5648808 (not c!992846)) b!5648806))

(assert (= (and b!5648806 c!992845) b!5648807))

(assert (= (and b!5648806 (not c!992845)) b!5648799))

(assert (= (or b!5648800 b!5648807) bm!427265))

(assert (= (or b!5648800 b!5648807) bm!427267))

(assert (= (or b!5648803 bm!427265) bm!427264))

(assert (= (or b!5648803 bm!427267) bm!427268))

(assert (= (or b!5648802 bm!427268) bm!427269))

(assert (= (or b!5648802 b!5648803) bm!427266))

(declare-fun m!6616144 () Bool)

(assert (=> bm!427264 m!6616144))

(declare-fun m!6616146 () Bool)

(assert (=> b!5648805 m!6616146))

(declare-fun m!6616148 () Bool)

(assert (=> bm!427266 m!6616148))

(declare-fun m!6616150 () Bool)

(assert (=> bm!427269 m!6616150))

(declare-fun m!6616152 () Bool)

(assert (=> b!5648804 m!6616152))

(assert (=> bm!427005 d!1784497))

(assert (=> d!1783725 d!1784295))

(declare-fun d!1784499 () Bool)

(assert (=> d!1784499 (= (isEmpty!34913 (tail!11102 (unfocusZipperList!1059 zl!343))) ((_ is Nil!63068) (tail!11102 (unfocusZipperList!1059 zl!343))))))

(assert (=> b!5647402 d!1784499))

(declare-fun d!1784501 () Bool)

(assert (=> d!1784501 (= (tail!11102 (unfocusZipperList!1059 zl!343)) (t!376490 (unfocusZipperList!1059 zl!343)))))

(assert (=> b!5647402 d!1784501))

(declare-fun bs!1313611 () Bool)

(declare-fun b!5648820 () Bool)

(assert (= bs!1313611 (and b!5648820 d!1783675)))

(declare-fun lambda!303659 () Int)

(assert (=> bs!1313611 (not (= lambda!303659 lambda!303489))))

(declare-fun bs!1313612 () Bool)

(assert (= bs!1313612 (and b!5648820 d!1783751)))

(assert (=> bs!1313612 (not (= lambda!303659 lambda!303513))))

(declare-fun bs!1313613 () Bool)

(assert (= bs!1313613 (and b!5648820 b!5646415)))

(assert (=> bs!1313613 (not (= lambda!303659 lambda!303429))))

(declare-fun bs!1313614 () Bool)

(assert (= bs!1313614 (and b!5648820 b!5646420)))

(assert (=> bs!1313614 (not (= lambda!303659 lambda!303424))))

(assert (=> bs!1313613 (not (= lambda!303659 lambda!303427))))

(declare-fun bs!1313615 () Bool)

(assert (= bs!1313615 (and b!5648820 b!5647372)))

(assert (=> bs!1313615 (= (and (= (reg!15960 (regTwo!31775 lt!2264184)) (reg!15960 lt!2264184)) (= (regTwo!31775 lt!2264184) lt!2264184)) (= lambda!303659 lambda!303521))))

(declare-fun bs!1313616 () Bool)

(assert (= bs!1313616 (and b!5648820 d!1784481)))

(assert (=> bs!1313616 (not (= lambda!303659 lambda!303655))))

(assert (=> bs!1313613 (not (= lambda!303659 lambda!303426))))

(assert (=> bs!1313616 (not (= lambda!303659 lambda!303656))))

(assert (=> bs!1313613 (not (= lambda!303659 lambda!303428))))

(declare-fun bs!1313617 () Bool)

(assert (= bs!1313617 (and b!5648820 b!5647367)))

(assert (=> bs!1313617 (not (= lambda!303659 lambda!303522))))

(declare-fun bs!1313618 () Bool)

(assert (= bs!1313618 (and b!5648820 b!5647087)))

(assert (=> bs!1313618 (not (= lambda!303659 lambda!303501))))

(declare-fun bs!1313619 () Bool)

(assert (= bs!1313619 (and b!5648820 d!1783759)))

(assert (=> bs!1313619 (not (= lambda!303659 lambda!303514))))

(declare-fun bs!1313620 () Bool)

(assert (= bs!1313620 (and b!5648820 d!1783677)))

(assert (=> bs!1313620 (not (= lambda!303659 lambda!303494))))

(declare-fun bs!1313621 () Bool)

(assert (= bs!1313621 (and b!5648820 b!5648782)))

(assert (=> bs!1313621 (= (and (= (reg!15960 (regTwo!31775 lt!2264184)) (reg!15960 (regTwo!31775 r!7292))) (= (regTwo!31775 lt!2264184) (regTwo!31775 r!7292))) (= lambda!303659 lambda!303657))))

(declare-fun bs!1313622 () Bool)

(assert (= bs!1313622 (and b!5648820 b!5647359)))

(assert (=> bs!1313622 (= (and (= (reg!15960 (regTwo!31775 lt!2264184)) (reg!15960 lt!2264222)) (= (regTwo!31775 lt!2264184) lt!2264222)) (= lambda!303659 lambda!303518))))

(declare-fun bs!1313623 () Bool)

(assert (= bs!1313623 (and b!5648820 b!5647092)))

(assert (=> bs!1313623 (= (and (= (reg!15960 (regTwo!31775 lt!2264184)) (reg!15960 r!7292)) (= (regTwo!31775 lt!2264184) r!7292)) (= lambda!303659 lambda!303500))))

(assert (=> bs!1313620 (not (= lambda!303659 lambda!303495))))

(declare-fun bs!1313624 () Bool)

(assert (= bs!1313624 (and b!5648820 d!1784359)))

(assert (=> bs!1313624 (not (= lambda!303659 lambda!303630))))

(declare-fun bs!1313625 () Bool)

(assert (= bs!1313625 (and b!5648820 d!1783793)))

(assert (=> bs!1313625 (not (= lambda!303659 lambda!303523))))

(assert (=> bs!1313624 (not (= lambda!303659 lambda!303631))))

(assert (=> bs!1313625 (not (= lambda!303659 lambda!303524))))

(declare-fun bs!1313626 () Bool)

(assert (= bs!1313626 (and b!5648820 b!5648777)))

(assert (=> bs!1313626 (not (= lambda!303659 lambda!303658))))

(declare-fun bs!1313627 () Bool)

(assert (= bs!1313627 (and b!5648820 d!1783781)))

(assert (=> bs!1313627 (not (= lambda!303659 lambda!303520))))

(assert (=> bs!1313612 (not (= lambda!303659 lambda!303512))))

(assert (=> bs!1313614 (not (= lambda!303659 lambda!303423))))

(declare-fun bs!1313628 () Bool)

(assert (= bs!1313628 (and b!5648820 b!5647354)))

(assert (=> bs!1313628 (not (= lambda!303659 lambda!303519))))

(assert (=> b!5648820 true))

(assert (=> b!5648820 true))

(declare-fun bs!1313629 () Bool)

(declare-fun b!5648815 () Bool)

(assert (= bs!1313629 (and b!5648815 d!1783675)))

(declare-fun lambda!303660 () Int)

(assert (=> bs!1313629 (not (= lambda!303660 lambda!303489))))

(declare-fun bs!1313630 () Bool)

(assert (= bs!1313630 (and b!5648815 d!1783751)))

(assert (=> bs!1313630 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) lt!2264217)) (= lambda!303660 lambda!303513))))

(declare-fun bs!1313631 () Bool)

(assert (= bs!1313631 (and b!5648815 b!5646415)))

(assert (=> bs!1313631 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) lt!2264217)) (= lambda!303660 lambda!303429))))

(declare-fun bs!1313632 () Bool)

(assert (= bs!1313632 (and b!5648815 b!5646420)))

(assert (=> bs!1313632 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303660 lambda!303424))))

(assert (=> bs!1313631 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) lt!2264184)) (= lambda!303660 lambda!303427))))

(declare-fun bs!1313633 () Bool)

(assert (= bs!1313633 (and b!5648815 b!5647372)))

(assert (=> bs!1313633 (not (= lambda!303660 lambda!303521))))

(declare-fun bs!1313634 () Bool)

(assert (= bs!1313634 (and b!5648815 d!1784481)))

(assert (=> bs!1313634 (not (= lambda!303660 lambda!303655))))

(assert (=> bs!1313631 (not (= lambda!303660 lambda!303426))))

(assert (=> bs!1313634 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303660 lambda!303656))))

(assert (=> bs!1313631 (not (= lambda!303660 lambda!303428))))

(declare-fun bs!1313635 () Bool)

(assert (= bs!1313635 (and b!5648815 b!5647367)))

(assert (=> bs!1313635 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 lt!2264184))) (= lambda!303660 lambda!303522))))

(declare-fun bs!1313636 () Bool)

(assert (= bs!1313636 (and b!5648815 b!5648820)))

(assert (=> bs!1313636 (not (= lambda!303660 lambda!303659))))

(declare-fun bs!1313637 () Bool)

(assert (= bs!1313637 (and b!5648815 b!5647087)))

(assert (=> bs!1313637 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303660 lambda!303501))))

(declare-fun bs!1313638 () Bool)

(assert (= bs!1313638 (and b!5648815 d!1783759)))

(assert (=> bs!1313638 (not (= lambda!303660 lambda!303514))))

(declare-fun bs!1313639 () Bool)

(assert (= bs!1313639 (and b!5648815 d!1783677)))

(assert (=> bs!1313639 (not (= lambda!303660 lambda!303494))))

(declare-fun bs!1313640 () Bool)

(assert (= bs!1313640 (and b!5648815 b!5648782)))

(assert (=> bs!1313640 (not (= lambda!303660 lambda!303657))))

(declare-fun bs!1313641 () Bool)

(assert (= bs!1313641 (and b!5648815 b!5647359)))

(assert (=> bs!1313641 (not (= lambda!303660 lambda!303518))))

(declare-fun bs!1313642 () Bool)

(assert (= bs!1313642 (and b!5648815 b!5647092)))

(assert (=> bs!1313642 (not (= lambda!303660 lambda!303500))))

(assert (=> bs!1313639 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303660 lambda!303495))))

(declare-fun bs!1313643 () Bool)

(assert (= bs!1313643 (and b!5648815 d!1784359)))

(assert (=> bs!1313643 (not (= lambda!303660 lambda!303630))))

(declare-fun bs!1313644 () Bool)

(assert (= bs!1313644 (and b!5648815 d!1783793)))

(assert (=> bs!1313644 (not (= lambda!303660 lambda!303523))))

(assert (=> bs!1313643 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) lt!2264184)) (= lambda!303660 lambda!303631))))

(assert (=> bs!1313644 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) lt!2264184)) (= lambda!303660 lambda!303524))))

(declare-fun bs!1313645 () Bool)

(assert (= bs!1313645 (and b!5648815 b!5648777)))

(assert (=> bs!1313645 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 (regTwo!31775 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303660 lambda!303658))))

(declare-fun bs!1313646 () Bool)

(assert (= bs!1313646 (and b!5648815 d!1783781)))

(assert (=> bs!1313646 (not (= lambda!303660 lambda!303520))))

(assert (=> bs!1313630 (not (= lambda!303660 lambda!303512))))

(assert (=> bs!1313632 (not (= lambda!303660 lambda!303423))))

(declare-fun bs!1313647 () Bool)

(assert (= bs!1313647 (and b!5648815 b!5647354)))

(assert (=> bs!1313647 (= (and (= (regOne!31774 (regTwo!31775 lt!2264184)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regTwo!31775 lt!2264184)) (regTwo!31774 lt!2264222))) (= lambda!303660 lambda!303519))))

(assert (=> b!5648815 true))

(assert (=> b!5648815 true))

(declare-fun b!5648810 () Bool)

(declare-fun e!3479722 () Bool)

(assert (=> b!5648810 (= e!3479722 (= s!2326 (Cons!63069 (c!992159 (regTwo!31775 lt!2264184)) Nil!63069)))))

(declare-fun b!5648811 () Bool)

(declare-fun res!2389352 () Bool)

(declare-fun e!3479723 () Bool)

(assert (=> b!5648811 (=> res!2389352 e!3479723)))

(declare-fun call!427275 () Bool)

(assert (=> b!5648811 (= res!2389352 call!427275)))

(declare-fun e!3479726 () Bool)

(assert (=> b!5648811 (= e!3479726 e!3479723)))

(declare-fun bm!427270 () Bool)

(assert (=> bm!427270 (= call!427275 (isEmpty!34917 s!2326))))

(declare-fun b!5648812 () Bool)

(declare-fun c!992853 () Bool)

(assert (=> b!5648812 (= c!992853 ((_ is ElementMatch!15631) (regTwo!31775 lt!2264184)))))

(declare-fun e!3479727 () Bool)

(assert (=> b!5648812 (= e!3479727 e!3479722)))

(declare-fun b!5648813 () Bool)

(declare-fun e!3479724 () Bool)

(declare-fun e!3479725 () Bool)

(assert (=> b!5648813 (= e!3479724 e!3479725)))

(declare-fun res!2389353 () Bool)

(assert (=> b!5648813 (= res!2389353 (matchRSpec!2734 (regOne!31775 (regTwo!31775 lt!2264184)) s!2326))))

(assert (=> b!5648813 (=> res!2389353 e!3479725)))

(declare-fun d!1784503 () Bool)

(declare-fun c!992852 () Bool)

(assert (=> d!1784503 (= c!992852 ((_ is EmptyExpr!15631) (regTwo!31775 lt!2264184)))))

(declare-fun e!3479728 () Bool)

(assert (=> d!1784503 (= (matchRSpec!2734 (regTwo!31775 lt!2264184) s!2326) e!3479728)))

(declare-fun b!5648814 () Bool)

(declare-fun c!992851 () Bool)

(assert (=> b!5648814 (= c!992851 ((_ is Union!15631) (regTwo!31775 lt!2264184)))))

(assert (=> b!5648814 (= e!3479722 e!3479724)))

(declare-fun c!992850 () Bool)

(declare-fun call!427276 () Bool)

(declare-fun bm!427271 () Bool)

(assert (=> bm!427271 (= call!427276 (Exists!2731 (ite c!992850 lambda!303659 lambda!303660)))))

(assert (=> b!5648815 (= e!3479726 call!427276)))

(declare-fun b!5648816 () Bool)

(assert (=> b!5648816 (= e!3479724 e!3479726)))

(assert (=> b!5648816 (= c!992850 ((_ is Star!15631) (regTwo!31775 lt!2264184)))))

(declare-fun b!5648817 () Bool)

(assert (=> b!5648817 (= e!3479728 call!427275)))

(declare-fun b!5648818 () Bool)

(assert (=> b!5648818 (= e!3479728 e!3479727)))

(declare-fun res!2389354 () Bool)

(assert (=> b!5648818 (= res!2389354 (not ((_ is EmptyLang!15631) (regTwo!31775 lt!2264184))))))

(assert (=> b!5648818 (=> (not res!2389354) (not e!3479727))))

(declare-fun b!5648819 () Bool)

(assert (=> b!5648819 (= e!3479725 (matchRSpec!2734 (regTwo!31775 (regTwo!31775 lt!2264184)) s!2326))))

(assert (=> b!5648820 (= e!3479723 call!427276)))

(assert (= (and d!1784503 c!992852) b!5648817))

(assert (= (and d!1784503 (not c!992852)) b!5648818))

(assert (= (and b!5648818 res!2389354) b!5648812))

(assert (= (and b!5648812 c!992853) b!5648810))

(assert (= (and b!5648812 (not c!992853)) b!5648814))

(assert (= (and b!5648814 c!992851) b!5648813))

(assert (= (and b!5648814 (not c!992851)) b!5648816))

(assert (= (and b!5648813 (not res!2389353)) b!5648819))

(assert (= (and b!5648816 c!992850) b!5648811))

(assert (= (and b!5648816 (not c!992850)) b!5648815))

(assert (= (and b!5648811 (not res!2389352)) b!5648820))

(assert (= (or b!5648820 b!5648815) bm!427271))

(assert (= (or b!5648817 b!5648811) bm!427270))

(assert (=> bm!427270 m!6614382))

(declare-fun m!6616154 () Bool)

(assert (=> b!5648813 m!6616154))

(declare-fun m!6616156 () Bool)

(assert (=> bm!427271 m!6616156))

(declare-fun m!6616158 () Bool)

(assert (=> b!5648819 m!6616158))

(assert (=> b!5647371 d!1784503))

(declare-fun c!992855 () Bool)

(declare-fun c!992858 () Bool)

(declare-fun bm!427272 () Bool)

(declare-fun call!427280 () List!63192)

(assert (=> bm!427272 (= call!427280 ($colon$colon!1681 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))) (ite (or c!992858 c!992855) (regTwo!31774 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))))

(declare-fun bm!427273 () Bool)

(declare-fun call!427281 () List!63192)

(assert (=> bm!427273 (= call!427281 call!427280)))

(declare-fun b!5648821 () Bool)

(declare-fun e!3479734 () (InoxSet Context!10030))

(assert (=> b!5648821 (= e!3479734 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648822 () Bool)

(declare-fun e!3479730 () (InoxSet Context!10030))

(declare-fun call!427279 () (InoxSet Context!10030))

(assert (=> b!5648822 (= e!3479730 call!427279)))

(declare-fun d!1784505 () Bool)

(declare-fun c!992856 () Bool)

(assert (=> d!1784505 (= c!992856 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (= (c!992159 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326))))))

(declare-fun e!3479731 () (InoxSet Context!10030))

(assert (=> d!1784505 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326)) e!3479731)))

(declare-fun c!992857 () Bool)

(declare-fun bm!427274 () Bool)

(declare-fun call!427277 () (InoxSet Context!10030))

(assert (=> bm!427274 (= call!427277 (derivationStepZipperDown!973 (ite c!992857 (regOne!31775 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (regOne!31774 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))) (ite c!992857 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (Context!10031 call!427280)) (h!69517 s!2326)))))

(declare-fun b!5648823 () Bool)

(declare-fun e!3479732 () (InoxSet Context!10030))

(assert (=> b!5648823 (= e!3479731 e!3479732)))

(assert (=> b!5648823 (= c!992857 ((_ is Union!15631) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(declare-fun b!5648824 () Bool)

(declare-fun call!427278 () (InoxSet Context!10030))

(assert (=> b!5648824 (= e!3479732 ((_ map or) call!427277 call!427278))))

(declare-fun b!5648825 () Bool)

(declare-fun e!3479729 () (InoxSet Context!10030))

(declare-fun call!427282 () (InoxSet Context!10030))

(assert (=> b!5648825 (= e!3479729 ((_ map or) call!427277 call!427282))))

(declare-fun b!5648826 () Bool)

(assert (=> b!5648826 (= e!3479731 (store ((as const (Array Context!10030 Bool)) false) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) true))))

(declare-fun b!5648827 () Bool)

(declare-fun e!3479733 () Bool)

(assert (=> b!5648827 (= e!3479733 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))))

(declare-fun b!5648828 () Bool)

(declare-fun c!992854 () Bool)

(assert (=> b!5648828 (= c!992854 ((_ is Star!15631) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(assert (=> b!5648828 (= e!3479730 e!3479734)))

(declare-fun b!5648829 () Bool)

(assert (=> b!5648829 (= e!3479734 call!427279)))

(declare-fun b!5648830 () Bool)

(assert (=> b!5648830 (= e!3479729 e!3479730)))

(assert (=> b!5648830 (= c!992855 ((_ is Concat!24476) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(declare-fun bm!427275 () Bool)

(assert (=> bm!427275 (= call!427279 call!427282)))

(declare-fun bm!427276 () Bool)

(assert (=> bm!427276 (= call!427282 call!427278)))

(declare-fun b!5648831 () Bool)

(assert (=> b!5648831 (= c!992858 e!3479733)))

(declare-fun res!2389355 () Bool)

(assert (=> b!5648831 (=> (not res!2389355) (not e!3479733))))

(assert (=> b!5648831 (= res!2389355 ((_ is Concat!24476) (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(assert (=> b!5648831 (= e!3479732 e!3479729)))

(declare-fun bm!427277 () Bool)

(assert (=> bm!427277 (= call!427278 (derivationStepZipperDown!973 (ite c!992857 (regTwo!31775 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (ite c!992858 (regTwo!31774 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (ite c!992855 (regOne!31774 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (reg!15960 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))) (ite (or c!992857 c!992858) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (Context!10031 call!427281)) (h!69517 s!2326)))))

(assert (= (and d!1784505 c!992856) b!5648826))

(assert (= (and d!1784505 (not c!992856)) b!5648823))

(assert (= (and b!5648823 c!992857) b!5648824))

(assert (= (and b!5648823 (not c!992857)) b!5648831))

(assert (= (and b!5648831 res!2389355) b!5648827))

(assert (= (and b!5648831 c!992858) b!5648825))

(assert (= (and b!5648831 (not c!992858)) b!5648830))

(assert (= (and b!5648830 c!992855) b!5648822))

(assert (= (and b!5648830 (not c!992855)) b!5648828))

(assert (= (and b!5648828 c!992854) b!5648829))

(assert (= (and b!5648828 (not c!992854)) b!5648821))

(assert (= (or b!5648822 b!5648829) bm!427273))

(assert (= (or b!5648822 b!5648829) bm!427275))

(assert (= (or b!5648825 bm!427273) bm!427272))

(assert (= (or b!5648825 bm!427275) bm!427276))

(assert (= (or b!5648824 bm!427276) bm!427277))

(assert (= (or b!5648824 b!5648825) bm!427274))

(declare-fun m!6616160 () Bool)

(assert (=> bm!427272 m!6616160))

(declare-fun m!6616162 () Bool)

(assert (=> b!5648827 m!6616162))

(declare-fun m!6616164 () Bool)

(assert (=> bm!427274 m!6616164))

(declare-fun m!6616166 () Bool)

(assert (=> bm!427277 m!6616166))

(declare-fun m!6616168 () Bool)

(assert (=> b!5648826 m!6616168))

(assert (=> bm!426982 d!1784505))

(assert (=> bm!427016 d!1784413))

(assert (=> d!1783791 d!1783747))

(assert (=> d!1783791 d!1783777))

(declare-fun d!1784507 () Bool)

(assert (=> d!1784507 (= (matchR!7816 lt!2264184 s!2326) (matchZipper!1769 lt!2264191 s!2326))))

(assert (=> d!1784507 true))

(declare-fun _$44!1429 () Unit!156056)

(assert (=> d!1784507 (= (choose!42762 lt!2264191 (Cons!63070 lt!2264221 Nil!63070) lt!2264184 s!2326) _$44!1429)))

(declare-fun bs!1313648 () Bool)

(assert (= bs!1313648 d!1784507))

(assert (=> bs!1313648 m!6613676))

(assert (=> bs!1313648 m!6613712))

(assert (=> d!1783791 d!1784507))

(declare-fun bm!427278 () Bool)

(declare-fun call!427285 () Bool)

(declare-fun call!427284 () Bool)

(assert (=> bm!427278 (= call!427285 call!427284)))

(declare-fun b!5648832 () Bool)

(declare-fun res!2389359 () Bool)

(declare-fun e!3479736 () Bool)

(assert (=> b!5648832 (=> (not res!2389359) (not e!3479736))))

(assert (=> b!5648832 (= res!2389359 call!427285)))

(declare-fun e!3479738 () Bool)

(assert (=> b!5648832 (= e!3479738 e!3479736)))

(declare-fun b!5648833 () Bool)

(declare-fun res!2389360 () Bool)

(declare-fun e!3479739 () Bool)

(assert (=> b!5648833 (=> res!2389360 e!3479739)))

(assert (=> b!5648833 (= res!2389360 (not ((_ is Concat!24476) lt!2264184)))))

(assert (=> b!5648833 (= e!3479738 e!3479739)))

(declare-fun bm!427279 () Bool)

(declare-fun call!427283 () Bool)

(declare-fun c!992860 () Bool)

(assert (=> bm!427279 (= call!427283 (validRegex!7367 (ite c!992860 (regTwo!31775 lt!2264184) (regTwo!31774 lt!2264184))))))

(declare-fun d!1784509 () Bool)

(declare-fun res!2389358 () Bool)

(declare-fun e!3479741 () Bool)

(assert (=> d!1784509 (=> res!2389358 e!3479741)))

(assert (=> d!1784509 (= res!2389358 ((_ is ElementMatch!15631) lt!2264184))))

(assert (=> d!1784509 (= (validRegex!7367 lt!2264184) e!3479741)))

(declare-fun b!5648834 () Bool)

(declare-fun e!3479735 () Bool)

(assert (=> b!5648834 (= e!3479735 e!3479738)))

(assert (=> b!5648834 (= c!992860 ((_ is Union!15631) lt!2264184))))

(declare-fun b!5648835 () Bool)

(assert (=> b!5648835 (= e!3479741 e!3479735)))

(declare-fun c!992859 () Bool)

(assert (=> b!5648835 (= c!992859 ((_ is Star!15631) lt!2264184))))

(declare-fun bm!427280 () Bool)

(assert (=> bm!427280 (= call!427284 (validRegex!7367 (ite c!992859 (reg!15960 lt!2264184) (ite c!992860 (regOne!31775 lt!2264184) (regOne!31774 lt!2264184)))))))

(declare-fun b!5648836 () Bool)

(declare-fun e!3479740 () Bool)

(assert (=> b!5648836 (= e!3479740 call!427284)))

(declare-fun b!5648837 () Bool)

(declare-fun e!3479737 () Bool)

(assert (=> b!5648837 (= e!3479737 call!427283)))

(declare-fun b!5648838 () Bool)

(assert (=> b!5648838 (= e!3479739 e!3479737)))

(declare-fun res!2389357 () Bool)

(assert (=> b!5648838 (=> (not res!2389357) (not e!3479737))))

(assert (=> b!5648838 (= res!2389357 call!427285)))

(declare-fun b!5648839 () Bool)

(assert (=> b!5648839 (= e!3479736 call!427283)))

(declare-fun b!5648840 () Bool)

(assert (=> b!5648840 (= e!3479735 e!3479740)))

(declare-fun res!2389356 () Bool)

(assert (=> b!5648840 (= res!2389356 (not (nullable!5663 (reg!15960 lt!2264184))))))

(assert (=> b!5648840 (=> (not res!2389356) (not e!3479740))))

(assert (= (and d!1784509 (not res!2389358)) b!5648835))

(assert (= (and b!5648835 c!992859) b!5648840))

(assert (= (and b!5648835 (not c!992859)) b!5648834))

(assert (= (and b!5648840 res!2389356) b!5648836))

(assert (= (and b!5648834 c!992860) b!5648832))

(assert (= (and b!5648834 (not c!992860)) b!5648833))

(assert (= (and b!5648832 res!2389359) b!5648839))

(assert (= (and b!5648833 (not res!2389360)) b!5648838))

(assert (= (and b!5648838 res!2389357) b!5648837))

(assert (= (or b!5648839 b!5648837) bm!427279))

(assert (= (or b!5648832 b!5648838) bm!427278))

(assert (= (or b!5648836 bm!427278) bm!427280))

(declare-fun m!6616170 () Bool)

(assert (=> bm!427279 m!6616170))

(declare-fun m!6616172 () Bool)

(assert (=> bm!427280 m!6616172))

(declare-fun m!6616174 () Bool)

(assert (=> b!5648840 m!6616174))

(assert (=> d!1783791 d!1784509))

(declare-fun d!1784511 () Bool)

(assert (=> d!1784511 (= (nullable!5663 lt!2264184) (nullableFct!1760 lt!2264184))))

(declare-fun bs!1313649 () Bool)

(assert (= bs!1313649 d!1784511))

(declare-fun m!6616176 () Bool)

(assert (=> bs!1313649 m!6616176))

(assert (=> b!5647270 d!1784511))

(assert (=> bm!426977 d!1784413))

(declare-fun b!5648841 () Bool)

(declare-fun res!2389367 () Bool)

(declare-fun e!3479742 () Bool)

(assert (=> b!5648841 (=> (not res!2389367) (not e!3479742))))

(declare-fun call!427286 () Bool)

(assert (=> b!5648841 (= res!2389367 (not call!427286))))

(declare-fun b!5648842 () Bool)

(declare-fun e!3479743 () Bool)

(assert (=> b!5648842 (= e!3479743 (nullable!5663 lt!2264217))))

(declare-fun b!5648843 () Bool)

(declare-fun e!3479745 () Bool)

(declare-fun e!3479747 () Bool)

(assert (=> b!5648843 (= e!3479745 e!3479747)))

(declare-fun res!2389368 () Bool)

(assert (=> b!5648843 (=> (not res!2389368) (not e!3479747))))

(declare-fun lt!2264538 () Bool)

(assert (=> b!5648843 (= res!2389368 (not lt!2264538))))

(declare-fun b!5648844 () Bool)

(declare-fun e!3479744 () Bool)

(assert (=> b!5648844 (= e!3479744 (not lt!2264538))))

(declare-fun b!5648845 () Bool)

(declare-fun res!2389365 () Bool)

(declare-fun e!3479746 () Bool)

(assert (=> b!5648845 (=> res!2389365 e!3479746)))

(assert (=> b!5648845 (= res!2389365 (not (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264373))))))))

(declare-fun b!5648847 () Bool)

(assert (=> b!5648847 (= e!3479747 e!3479746)))

(declare-fun res!2389364 () Bool)

(assert (=> b!5648847 (=> res!2389364 e!3479746)))

(assert (=> b!5648847 (= res!2389364 call!427286)))

(declare-fun b!5648848 () Bool)

(assert (=> b!5648848 (= e!3479742 (= (head!12006 (_2!36031 (get!21730 lt!2264373))) (c!992159 lt!2264217)))))

(declare-fun b!5648849 () Bool)

(declare-fun res!2389366 () Bool)

(assert (=> b!5648849 (=> res!2389366 e!3479745)))

(assert (=> b!5648849 (= res!2389366 (not ((_ is ElementMatch!15631) lt!2264217)))))

(assert (=> b!5648849 (= e!3479744 e!3479745)))

(declare-fun b!5648850 () Bool)

(declare-fun e!3479748 () Bool)

(assert (=> b!5648850 (= e!3479748 (= lt!2264538 call!427286))))

(declare-fun bm!427281 () Bool)

(assert (=> bm!427281 (= call!427286 (isEmpty!34917 (_2!36031 (get!21730 lt!2264373))))))

(declare-fun d!1784513 () Bool)

(assert (=> d!1784513 e!3479748))

(declare-fun c!992861 () Bool)

(assert (=> d!1784513 (= c!992861 ((_ is EmptyExpr!15631) lt!2264217))))

(assert (=> d!1784513 (= lt!2264538 e!3479743)))

(declare-fun c!992862 () Bool)

(assert (=> d!1784513 (= c!992862 (isEmpty!34917 (_2!36031 (get!21730 lt!2264373))))))

(assert (=> d!1784513 (validRegex!7367 lt!2264217)))

(assert (=> d!1784513 (= (matchR!7816 lt!2264217 (_2!36031 (get!21730 lt!2264373))) lt!2264538)))

(declare-fun b!5648846 () Bool)

(assert (=> b!5648846 (= e!3479743 (matchR!7816 (derivativeStep!4467 lt!2264217 (head!12006 (_2!36031 (get!21730 lt!2264373)))) (tail!11101 (_2!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5648851 () Bool)

(declare-fun res!2389361 () Bool)

(assert (=> b!5648851 (=> res!2389361 e!3479745)))

(assert (=> b!5648851 (= res!2389361 e!3479742)))

(declare-fun res!2389363 () Bool)

(assert (=> b!5648851 (=> (not res!2389363) (not e!3479742))))

(assert (=> b!5648851 (= res!2389363 lt!2264538)))

(declare-fun b!5648852 () Bool)

(declare-fun res!2389362 () Bool)

(assert (=> b!5648852 (=> (not res!2389362) (not e!3479742))))

(assert (=> b!5648852 (= res!2389362 (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5648853 () Bool)

(assert (=> b!5648853 (= e!3479748 e!3479744)))

(declare-fun c!992863 () Bool)

(assert (=> b!5648853 (= c!992863 ((_ is EmptyLang!15631) lt!2264217))))

(declare-fun b!5648854 () Bool)

(assert (=> b!5648854 (= e!3479746 (not (= (head!12006 (_2!36031 (get!21730 lt!2264373))) (c!992159 lt!2264217))))))

(assert (= (and d!1784513 c!992862) b!5648842))

(assert (= (and d!1784513 (not c!992862)) b!5648846))

(assert (= (and d!1784513 c!992861) b!5648850))

(assert (= (and d!1784513 (not c!992861)) b!5648853))

(assert (= (and b!5648853 c!992863) b!5648844))

(assert (= (and b!5648853 (not c!992863)) b!5648849))

(assert (= (and b!5648849 (not res!2389366)) b!5648851))

(assert (= (and b!5648851 res!2389363) b!5648841))

(assert (= (and b!5648841 res!2389367) b!5648852))

(assert (= (and b!5648852 res!2389362) b!5648848))

(assert (= (and b!5648851 (not res!2389361)) b!5648843))

(assert (= (and b!5648843 res!2389368) b!5648847))

(assert (= (and b!5648847 (not res!2389364)) b!5648845))

(assert (= (and b!5648845 (not res!2389365)) b!5648854))

(assert (= (or b!5648850 b!5648841 b!5648847) bm!427281))

(declare-fun m!6616178 () Bool)

(assert (=> d!1784513 m!6616178))

(declare-fun m!6616180 () Bool)

(assert (=> d!1784513 m!6616180))

(declare-fun m!6616182 () Bool)

(assert (=> b!5648854 m!6616182))

(assert (=> b!5648848 m!6616182))

(assert (=> bm!427281 m!6616178))

(declare-fun m!6616184 () Bool)

(assert (=> b!5648852 m!6616184))

(assert (=> b!5648852 m!6616184))

(declare-fun m!6616186 () Bool)

(assert (=> b!5648852 m!6616186))

(assert (=> b!5648845 m!6616184))

(assert (=> b!5648845 m!6616184))

(assert (=> b!5648845 m!6616186))

(assert (=> b!5648846 m!6616182))

(assert (=> b!5648846 m!6616182))

(declare-fun m!6616188 () Bool)

(assert (=> b!5648846 m!6616188))

(assert (=> b!5648846 m!6616184))

(assert (=> b!5648846 m!6616188))

(assert (=> b!5648846 m!6616184))

(declare-fun m!6616190 () Bool)

(assert (=> b!5648846 m!6616190))

(declare-fun m!6616192 () Bool)

(assert (=> b!5648842 m!6616192))

(assert (=> b!5647310 d!1784513))

(declare-fun d!1784515 () Bool)

(assert (=> d!1784515 (= (get!21730 lt!2264373) (v!51686 lt!2264373))))

(assert (=> b!5647310 d!1784515))

(declare-fun d!1784517 () Bool)

(assert (=> d!1784517 (= (isEmpty!34913 lt!2264211) ((_ is Nil!63068) lt!2264211))))

(assert (=> b!5647344 d!1784517))

(declare-fun bm!427282 () Bool)

(declare-fun call!427289 () Bool)

(declare-fun call!427288 () Bool)

(assert (=> bm!427282 (= call!427289 call!427288)))

(declare-fun b!5648855 () Bool)

(declare-fun res!2389372 () Bool)

(declare-fun e!3479750 () Bool)

(assert (=> b!5648855 (=> (not res!2389372) (not e!3479750))))

(assert (=> b!5648855 (= res!2389372 call!427289)))

(declare-fun e!3479752 () Bool)

(assert (=> b!5648855 (= e!3479752 e!3479750)))

(declare-fun b!5648856 () Bool)

(declare-fun res!2389373 () Bool)

(declare-fun e!3479753 () Bool)

(assert (=> b!5648856 (=> res!2389373 e!3479753)))

(assert (=> b!5648856 (= res!2389373 (not ((_ is Concat!24476) lt!2264375)))))

(assert (=> b!5648856 (= e!3479752 e!3479753)))

(declare-fun bm!427283 () Bool)

(declare-fun call!427287 () Bool)

(declare-fun c!992865 () Bool)

(assert (=> bm!427283 (= call!427287 (validRegex!7367 (ite c!992865 (regTwo!31775 lt!2264375) (regTwo!31774 lt!2264375))))))

(declare-fun d!1784519 () Bool)

(declare-fun res!2389371 () Bool)

(declare-fun e!3479755 () Bool)

(assert (=> d!1784519 (=> res!2389371 e!3479755)))

(assert (=> d!1784519 (= res!2389371 ((_ is ElementMatch!15631) lt!2264375))))

(assert (=> d!1784519 (= (validRegex!7367 lt!2264375) e!3479755)))

(declare-fun b!5648857 () Bool)

(declare-fun e!3479749 () Bool)

(assert (=> b!5648857 (= e!3479749 e!3479752)))

(assert (=> b!5648857 (= c!992865 ((_ is Union!15631) lt!2264375))))

(declare-fun b!5648858 () Bool)

(assert (=> b!5648858 (= e!3479755 e!3479749)))

(declare-fun c!992864 () Bool)

(assert (=> b!5648858 (= c!992864 ((_ is Star!15631) lt!2264375))))

(declare-fun bm!427284 () Bool)

(assert (=> bm!427284 (= call!427288 (validRegex!7367 (ite c!992864 (reg!15960 lt!2264375) (ite c!992865 (regOne!31775 lt!2264375) (regOne!31774 lt!2264375)))))))

(declare-fun b!5648859 () Bool)

(declare-fun e!3479754 () Bool)

(assert (=> b!5648859 (= e!3479754 call!427288)))

(declare-fun b!5648860 () Bool)

(declare-fun e!3479751 () Bool)

(assert (=> b!5648860 (= e!3479751 call!427287)))

(declare-fun b!5648861 () Bool)

(assert (=> b!5648861 (= e!3479753 e!3479751)))

(declare-fun res!2389370 () Bool)

(assert (=> b!5648861 (=> (not res!2389370) (not e!3479751))))

(assert (=> b!5648861 (= res!2389370 call!427289)))

(declare-fun b!5648862 () Bool)

(assert (=> b!5648862 (= e!3479750 call!427287)))

(declare-fun b!5648863 () Bool)

(assert (=> b!5648863 (= e!3479749 e!3479754)))

(declare-fun res!2389369 () Bool)

(assert (=> b!5648863 (= res!2389369 (not (nullable!5663 (reg!15960 lt!2264375))))))

(assert (=> b!5648863 (=> (not res!2389369) (not e!3479754))))

(assert (= (and d!1784519 (not res!2389371)) b!5648858))

(assert (= (and b!5648858 c!992864) b!5648863))

(assert (= (and b!5648858 (not c!992864)) b!5648857))

(assert (= (and b!5648863 res!2389369) b!5648859))

(assert (= (and b!5648857 c!992865) b!5648855))

(assert (= (and b!5648857 (not c!992865)) b!5648856))

(assert (= (and b!5648855 res!2389372) b!5648862))

(assert (= (and b!5648856 (not res!2389373)) b!5648861))

(assert (= (and b!5648861 res!2389370) b!5648860))

(assert (= (or b!5648862 b!5648860) bm!427283))

(assert (= (or b!5648855 b!5648861) bm!427282))

(assert (= (or b!5648859 bm!427282) bm!427284))

(declare-fun m!6616194 () Bool)

(assert (=> bm!427283 m!6616194))

(declare-fun m!6616196 () Bool)

(assert (=> bm!427284 m!6616196))

(declare-fun m!6616198 () Bool)

(assert (=> b!5648863 m!6616198))

(assert (=> d!1783769 d!1784519))

(declare-fun d!1784521 () Bool)

(declare-fun res!2389374 () Bool)

(declare-fun e!3479756 () Bool)

(assert (=> d!1784521 (=> res!2389374 e!3479756)))

(assert (=> d!1784521 (= res!2389374 ((_ is Nil!63068) lt!2264230))))

(assert (=> d!1784521 (= (forall!14788 lt!2264230 lambda!303516) e!3479756)))

(declare-fun b!5648864 () Bool)

(declare-fun e!3479757 () Bool)

(assert (=> b!5648864 (= e!3479756 e!3479757)))

(declare-fun res!2389375 () Bool)

(assert (=> b!5648864 (=> (not res!2389375) (not e!3479757))))

(assert (=> b!5648864 (= res!2389375 (dynLambda!24678 lambda!303516 (h!69516 lt!2264230)))))

(declare-fun b!5648865 () Bool)

(assert (=> b!5648865 (= e!3479757 (forall!14788 (t!376490 lt!2264230) lambda!303516))))

(assert (= (and d!1784521 (not res!2389374)) b!5648864))

(assert (= (and b!5648864 res!2389375) b!5648865))

(declare-fun b_lambda!213721 () Bool)

(assert (=> (not b_lambda!213721) (not b!5648864)))

(declare-fun m!6616200 () Bool)

(assert (=> b!5648864 m!6616200))

(declare-fun m!6616202 () Bool)

(assert (=> b!5648865 m!6616202))

(assert (=> d!1783769 d!1784521))

(declare-fun d!1784523 () Bool)

(assert (=> d!1784523 (= (nullable!5663 (h!69516 (exprs!5515 lt!2264212))) (nullableFct!1760 (h!69516 (exprs!5515 lt!2264212))))))

(declare-fun bs!1313650 () Bool)

(assert (= bs!1313650 d!1784523))

(declare-fun m!6616204 () Bool)

(assert (=> bs!1313650 m!6616204))

(assert (=> b!5647157 d!1784523))

(declare-fun d!1784525 () Bool)

(assert (=> d!1784525 (= (head!12007 (t!376490 (exprs!5515 (h!69518 zl!343)))) (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5647305 d!1784525))

(declare-fun bm!427285 () Bool)

(declare-fun call!427292 () Bool)

(declare-fun call!427291 () Bool)

(assert (=> bm!427285 (= call!427292 call!427291)))

(declare-fun b!5648866 () Bool)

(declare-fun res!2389379 () Bool)

(declare-fun e!3479759 () Bool)

(assert (=> b!5648866 (=> (not res!2389379) (not e!3479759))))

(assert (=> b!5648866 (= res!2389379 call!427292)))

(declare-fun e!3479761 () Bool)

(assert (=> b!5648866 (= e!3479761 e!3479759)))

(declare-fun b!5648867 () Bool)

(declare-fun res!2389380 () Bool)

(declare-fun e!3479762 () Bool)

(assert (=> b!5648867 (=> res!2389380 e!3479762)))

(assert (=> b!5648867 (= res!2389380 (not ((_ is Concat!24476) lt!2264392)))))

(assert (=> b!5648867 (= e!3479761 e!3479762)))

(declare-fun bm!427286 () Bool)

(declare-fun call!427290 () Bool)

(declare-fun c!992867 () Bool)

(assert (=> bm!427286 (= call!427290 (validRegex!7367 (ite c!992867 (regTwo!31775 lt!2264392) (regTwo!31774 lt!2264392))))))

(declare-fun d!1784527 () Bool)

(declare-fun res!2389378 () Bool)

(declare-fun e!3479764 () Bool)

(assert (=> d!1784527 (=> res!2389378 e!3479764)))

(assert (=> d!1784527 (= res!2389378 ((_ is ElementMatch!15631) lt!2264392))))

(assert (=> d!1784527 (= (validRegex!7367 lt!2264392) e!3479764)))

(declare-fun b!5648868 () Bool)

(declare-fun e!3479758 () Bool)

(assert (=> b!5648868 (= e!3479758 e!3479761)))

(assert (=> b!5648868 (= c!992867 ((_ is Union!15631) lt!2264392))))

(declare-fun b!5648869 () Bool)

(assert (=> b!5648869 (= e!3479764 e!3479758)))

(declare-fun c!992866 () Bool)

(assert (=> b!5648869 (= c!992866 ((_ is Star!15631) lt!2264392))))

(declare-fun bm!427287 () Bool)

(assert (=> bm!427287 (= call!427291 (validRegex!7367 (ite c!992866 (reg!15960 lt!2264392) (ite c!992867 (regOne!31775 lt!2264392) (regOne!31774 lt!2264392)))))))

(declare-fun b!5648870 () Bool)

(declare-fun e!3479763 () Bool)

(assert (=> b!5648870 (= e!3479763 call!427291)))

(declare-fun b!5648871 () Bool)

(declare-fun e!3479760 () Bool)

(assert (=> b!5648871 (= e!3479760 call!427290)))

(declare-fun b!5648872 () Bool)

(assert (=> b!5648872 (= e!3479762 e!3479760)))

(declare-fun res!2389377 () Bool)

(assert (=> b!5648872 (=> (not res!2389377) (not e!3479760))))

(assert (=> b!5648872 (= res!2389377 call!427292)))

(declare-fun b!5648873 () Bool)

(assert (=> b!5648873 (= e!3479759 call!427290)))

(declare-fun b!5648874 () Bool)

(assert (=> b!5648874 (= e!3479758 e!3479763)))

(declare-fun res!2389376 () Bool)

(assert (=> b!5648874 (= res!2389376 (not (nullable!5663 (reg!15960 lt!2264392))))))

(assert (=> b!5648874 (=> (not res!2389376) (not e!3479763))))

(assert (= (and d!1784527 (not res!2389378)) b!5648869))

(assert (= (and b!5648869 c!992866) b!5648874))

(assert (= (and b!5648869 (not c!992866)) b!5648868))

(assert (= (and b!5648874 res!2389376) b!5648870))

(assert (= (and b!5648868 c!992867) b!5648866))

(assert (= (and b!5648868 (not c!992867)) b!5648867))

(assert (= (and b!5648866 res!2389379) b!5648873))

(assert (= (and b!5648867 (not res!2389380)) b!5648872))

(assert (= (and b!5648872 res!2389377) b!5648871))

(assert (= (or b!5648873 b!5648871) bm!427286))

(assert (= (or b!5648866 b!5648872) bm!427285))

(assert (= (or b!5648870 bm!427285) bm!427287))

(declare-fun m!6616206 () Bool)

(assert (=> bm!427286 m!6616206))

(declare-fun m!6616208 () Bool)

(assert (=> bm!427287 m!6616208))

(declare-fun m!6616210 () Bool)

(assert (=> b!5648874 m!6616210))

(assert (=> d!1783799 d!1784527))

(declare-fun d!1784529 () Bool)

(declare-fun res!2389381 () Bool)

(declare-fun e!3479765 () Bool)

(assert (=> d!1784529 (=> res!2389381 e!3479765)))

(assert (=> d!1784529 (= res!2389381 ((_ is Nil!63068) (unfocusZipperList!1059 zl!343)))))

(assert (=> d!1784529 (= (forall!14788 (unfocusZipperList!1059 zl!343) lambda!303527) e!3479765)))

(declare-fun b!5648875 () Bool)

(declare-fun e!3479766 () Bool)

(assert (=> b!5648875 (= e!3479765 e!3479766)))

(declare-fun res!2389382 () Bool)

(assert (=> b!5648875 (=> (not res!2389382) (not e!3479766))))

(assert (=> b!5648875 (= res!2389382 (dynLambda!24678 lambda!303527 (h!69516 (unfocusZipperList!1059 zl!343))))))

(declare-fun b!5648876 () Bool)

(assert (=> b!5648876 (= e!3479766 (forall!14788 (t!376490 (unfocusZipperList!1059 zl!343)) lambda!303527))))

(assert (= (and d!1784529 (not res!2389381)) b!5648875))

(assert (= (and b!5648875 res!2389382) b!5648876))

(declare-fun b_lambda!213723 () Bool)

(assert (=> (not b_lambda!213723) (not b!5648875)))

(declare-fun m!6616212 () Bool)

(assert (=> b!5648875 m!6616212))

(declare-fun m!6616214 () Bool)

(assert (=> b!5648876 m!6616214))

(assert (=> d!1783799 d!1784529))

(declare-fun d!1784531 () Bool)

(assert (=> d!1784531 (= (flatMap!1244 lt!2264195 lambda!303543) (choose!42756 lt!2264195 lambda!303543))))

(declare-fun bs!1313651 () Bool)

(assert (= bs!1313651 d!1784531))

(declare-fun m!6616216 () Bool)

(assert (=> bs!1313651 m!6616216))

(assert (=> d!1783813 d!1784531))

(declare-fun d!1784533 () Bool)

(declare-fun res!2389383 () Bool)

(declare-fun e!3479767 () Bool)

(assert (=> d!1784533 (=> res!2389383 e!3479767)))

(assert (=> d!1784533 (= res!2389383 ((_ is Nil!63070) zl!343))))

(assert (=> d!1784533 (= (forall!14789 zl!343 lambda!303542) e!3479767)))

(declare-fun b!5648877 () Bool)

(declare-fun e!3479768 () Bool)

(assert (=> b!5648877 (= e!3479767 e!3479768)))

(declare-fun res!2389384 () Bool)

(assert (=> b!5648877 (=> (not res!2389384) (not e!3479768))))

(assert (=> b!5648877 (= res!2389384 (dynLambda!24680 lambda!303542 (h!69518 zl!343)))))

(declare-fun b!5648878 () Bool)

(assert (=> b!5648878 (= e!3479768 (forall!14789 (t!376492 zl!343) lambda!303542))))

(assert (= (and d!1784533 (not res!2389383)) b!5648877))

(assert (= (and b!5648877 res!2389384) b!5648878))

(declare-fun b_lambda!213725 () Bool)

(assert (=> (not b_lambda!213725) (not b!5648877)))

(declare-fun m!6616218 () Bool)

(assert (=> b!5648877 m!6616218))

(declare-fun m!6616220 () Bool)

(assert (=> b!5648878 m!6616220))

(assert (=> b!5647425 d!1784533))

(assert (=> d!1783707 d!1784295))

(declare-fun d!1784535 () Bool)

(assert (=> d!1784535 (= (isEmpty!34913 (t!376490 lt!2264211)) ((_ is Nil!63068) (t!376490 lt!2264211)))))

(assert (=> b!5647337 d!1784535))

(assert (=> bm!426981 d!1784413))

(declare-fun d!1784537 () Bool)

(declare-fun c!992870 () Bool)

(assert (=> d!1784537 (= c!992870 ((_ is Nil!63070) lt!2264389))))

(declare-fun e!3479771 () (InoxSet Context!10030))

(assert (=> d!1784537 (= (content!11411 lt!2264389) e!3479771)))

(declare-fun b!5648883 () Bool)

(assert (=> b!5648883 (= e!3479771 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648884 () Bool)

(assert (=> b!5648884 (= e!3479771 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) (h!69518 lt!2264389) true) (content!11411 (t!376492 lt!2264389))))))

(assert (= (and d!1784537 c!992870) b!5648883))

(assert (= (and d!1784537 (not c!992870)) b!5648884))

(declare-fun m!6616222 () Bool)

(assert (=> b!5648884 m!6616222))

(declare-fun m!6616224 () Bool)

(assert (=> b!5648884 m!6616224))

(assert (=> b!5647375 d!1784537))

(assert (=> d!1783787 d!1784413))

(declare-fun d!1784539 () Bool)

(declare-fun c!992871 () Bool)

(assert (=> d!1784539 (= c!992871 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3479772 () Bool)

(assert (=> d!1784539 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264223) (t!376491 s!2326)) e!3479772)))

(declare-fun b!5648885 () Bool)

(assert (=> b!5648885 (= e!3479772 (nullableZipper!1613 ((_ map or) lt!2264227 lt!2264223)))))

(declare-fun b!5648886 () Bool)

(assert (=> b!5648886 (= e!3479772 (matchZipper!1769 (derivationStepZipper!1718 ((_ map or) lt!2264227 lt!2264223) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1784539 c!992871) b!5648885))

(assert (= (and d!1784539 (not c!992871)) b!5648886))

(assert (=> d!1784539 m!6614302))

(declare-fun m!6616226 () Bool)

(assert (=> b!5648885 m!6616226))

(assert (=> b!5648886 m!6614306))

(assert (=> b!5648886 m!6614306))

(declare-fun m!6616228 () Bool)

(assert (=> b!5648886 m!6616228))

(assert (=> b!5648886 m!6614310))

(assert (=> b!5648886 m!6616228))

(assert (=> b!5648886 m!6614310))

(declare-fun m!6616230 () Bool)

(assert (=> b!5648886 m!6616230))

(assert (=> d!1783721 d!1784539))

(assert (=> d!1783721 d!1783719))

(declare-fun d!1784541 () Bool)

(declare-fun e!3479775 () Bool)

(assert (=> d!1784541 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264223) (t!376491 s!2326)) e!3479775)))

(declare-fun res!2389387 () Bool)

(assert (=> d!1784541 (=> res!2389387 e!3479775)))

(assert (=> d!1784541 (= res!2389387 (matchZipper!1769 lt!2264227 (t!376491 s!2326)))))

(assert (=> d!1784541 true))

(declare-fun _$48!1279 () Unit!156056)

(assert (=> d!1784541 (= (choose!42755 lt!2264227 lt!2264223 (t!376491 s!2326)) _$48!1279)))

(declare-fun b!5648889 () Bool)

(assert (=> b!5648889 (= e!3479775 (matchZipper!1769 lt!2264223 (t!376491 s!2326)))))

(assert (= (and d!1784541 (not res!2389387)) b!5648889))

(assert (=> d!1784541 m!6614482))

(assert (=> d!1784541 m!6613640))

(assert (=> b!5648889 m!6613668))

(assert (=> d!1783721 d!1784541))

(declare-fun c!992873 () Bool)

(declare-fun bm!427288 () Bool)

(declare-fun c!992876 () Bool)

(declare-fun call!427296 () List!63192)

(assert (=> bm!427288 (= call!427296 ($colon$colon!1681 (exprs!5515 (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006))) (ite (or c!992876 c!992873) (regTwo!31774 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))))

(declare-fun bm!427289 () Bool)

(declare-fun call!427297 () List!63192)

(assert (=> bm!427289 (= call!427297 call!427296)))

(declare-fun b!5648890 () Bool)

(declare-fun e!3479781 () (InoxSet Context!10030))

(assert (=> b!5648890 (= e!3479781 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648891 () Bool)

(declare-fun e!3479777 () (InoxSet Context!10030))

(declare-fun call!427295 () (InoxSet Context!10030))

(assert (=> b!5648891 (= e!3479777 call!427295)))

(declare-fun c!992874 () Bool)

(declare-fun d!1784543 () Bool)

(assert (=> d!1784543 (= c!992874 (and ((_ is ElementMatch!15631) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (= (c!992159 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326))))))

(declare-fun e!3479778 () (InoxSet Context!10030))

(assert (=> d!1784543 (= (derivationStepZipperDown!973 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))) (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006)) (h!69517 s!2326)) e!3479778)))

(declare-fun call!427293 () (InoxSet Context!10030))

(declare-fun bm!427290 () Bool)

(declare-fun c!992875 () Bool)

(assert (=> bm!427290 (= call!427293 (derivationStepZipperDown!973 (ite c!992875 (regOne!31775 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (regOne!31774 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))))) (ite c!992875 (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006)) (Context!10031 call!427296)) (h!69517 s!2326)))))

(declare-fun b!5648892 () Bool)

(declare-fun e!3479779 () (InoxSet Context!10030))

(assert (=> b!5648892 (= e!3479778 e!3479779)))

(assert (=> b!5648892 (= c!992875 ((_ is Union!15631) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))))

(declare-fun b!5648893 () Bool)

(declare-fun call!427294 () (InoxSet Context!10030))

(assert (=> b!5648893 (= e!3479779 ((_ map or) call!427293 call!427294))))

(declare-fun b!5648894 () Bool)

(declare-fun e!3479776 () (InoxSet Context!10030))

(declare-fun call!427298 () (InoxSet Context!10030))

(assert (=> b!5648894 (= e!3479776 ((_ map or) call!427293 call!427298))))

(declare-fun b!5648895 () Bool)

(assert (=> b!5648895 (= e!3479778 (store ((as const (Array Context!10030 Bool)) false) (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006)) true))))

(declare-fun b!5648896 () Bool)

(declare-fun e!3479780 () Bool)

(assert (=> b!5648896 (= e!3479780 (nullable!5663 (regOne!31774 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))))

(declare-fun c!992872 () Bool)

(declare-fun b!5648897 () Bool)

(assert (=> b!5648897 (= c!992872 ((_ is Star!15631) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))))

(assert (=> b!5648897 (= e!3479777 e!3479781)))

(declare-fun b!5648898 () Bool)

(assert (=> b!5648898 (= e!3479781 call!427295)))

(declare-fun b!5648899 () Bool)

(assert (=> b!5648899 (= e!3479776 e!3479777)))

(assert (=> b!5648899 (= c!992873 ((_ is Concat!24476) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))))

(declare-fun bm!427291 () Bool)

(assert (=> bm!427291 (= call!427295 call!427298)))

(declare-fun bm!427292 () Bool)

(assert (=> bm!427292 (= call!427298 call!427294)))

(declare-fun b!5648900 () Bool)

(assert (=> b!5648900 (= c!992876 e!3479780)))

(declare-fun res!2389388 () Bool)

(assert (=> b!5648900 (=> (not res!2389388) (not e!3479780))))

(assert (=> b!5648900 (= res!2389388 ((_ is Concat!24476) (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))))

(assert (=> b!5648900 (= e!3479779 e!3479776)))

(declare-fun bm!427293 () Bool)

(assert (=> bm!427293 (= call!427294 (derivationStepZipperDown!973 (ite c!992875 (regTwo!31775 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (ite c!992876 (regTwo!31774 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (ite c!992873 (regOne!31774 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343)))))))) (reg!15960 (ite c!992386 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992387 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992384 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))))))) (ite (or c!992875 c!992876) (ite (or c!992386 c!992387) lt!2264212 (Context!10031 call!427006)) (Context!10031 call!427297)) (h!69517 s!2326)))))

(assert (= (and d!1784543 c!992874) b!5648895))

(assert (= (and d!1784543 (not c!992874)) b!5648892))

(assert (= (and b!5648892 c!992875) b!5648893))

(assert (= (and b!5648892 (not c!992875)) b!5648900))

(assert (= (and b!5648900 res!2389388) b!5648896))

(assert (= (and b!5648900 c!992876) b!5648894))

(assert (= (and b!5648900 (not c!992876)) b!5648899))

(assert (= (and b!5648899 c!992873) b!5648891))

(assert (= (and b!5648899 (not c!992873)) b!5648897))

(assert (= (and b!5648897 c!992872) b!5648898))

(assert (= (and b!5648897 (not c!992872)) b!5648890))

(assert (= (or b!5648891 b!5648898) bm!427289))

(assert (= (or b!5648891 b!5648898) bm!427291))

(assert (= (or b!5648894 bm!427289) bm!427288))

(assert (= (or b!5648894 bm!427291) bm!427292))

(assert (= (or b!5648893 bm!427292) bm!427293))

(assert (= (or b!5648893 b!5648894) bm!427290))

(declare-fun m!6616232 () Bool)

(assert (=> bm!427288 m!6616232))

(declare-fun m!6616234 () Bool)

(assert (=> b!5648896 m!6616234))

(declare-fun m!6616236 () Bool)

(assert (=> bm!427290 m!6616236))

(declare-fun m!6616238 () Bool)

(assert (=> bm!427293 m!6616238))

(declare-fun m!6616240 () Bool)

(assert (=> b!5648895 m!6616240))

(assert (=> bm!427002 d!1784543))

(assert (=> d!1783661 d!1784295))

(declare-fun bs!1313652 () Bool)

(declare-fun d!1784545 () Bool)

(assert (= bs!1313652 (and d!1784545 d!1784407)))

(declare-fun lambda!303661 () Int)

(assert (=> bs!1313652 (not (= lambda!303661 lambda!303640))))

(declare-fun bs!1313653 () Bool)

(assert (= bs!1313653 (and d!1784545 b!5647418)))

(assert (=> bs!1313653 (not (= lambda!303661 lambda!303538))))

(declare-fun bs!1313654 () Bool)

(assert (= bs!1313654 (and d!1784545 b!5648691)))

(assert (=> bs!1313654 (not (= lambda!303661 lambda!303651))))

(declare-fun bs!1313655 () Bool)

(assert (= bs!1313655 (and d!1784545 b!5648672)))

(assert (=> bs!1313655 (not (= lambda!303661 lambda!303643))))

(declare-fun bs!1313656 () Bool)

(assert (= bs!1313656 (and d!1784545 b!5648689)))

(assert (=> bs!1313656 (not (= lambda!303661 lambda!303650))))

(declare-fun bs!1313657 () Bool)

(assert (= bs!1313657 (and d!1784545 d!1784425)))

(assert (=> bs!1313657 (= lambda!303661 lambda!303646)))

(declare-fun bs!1313658 () Bool)

(assert (= bs!1313658 (and d!1784545 d!1784435)))

(assert (=> bs!1313658 (not (= lambda!303661 lambda!303652))))

(declare-fun bs!1313659 () Bool)

(assert (= bs!1313659 (and d!1784545 b!5648670)))

(assert (=> bs!1313659 (not (= lambda!303661 lambda!303642))))

(declare-fun bs!1313660 () Bool)

(assert (= bs!1313660 (and d!1784545 b!5647423)))

(assert (=> bs!1313660 (not (= lambda!303661 lambda!303541))))

(declare-fun bs!1313661 () Bool)

(assert (= bs!1313661 (and d!1784545 b!5647425)))

(assert (=> bs!1313661 (not (= lambda!303661 lambda!303542))))

(declare-fun bs!1313662 () Bool)

(assert (= bs!1313662 (and d!1784545 b!5647420)))

(assert (=> bs!1313662 (not (= lambda!303661 lambda!303539))))

(assert (=> d!1784545 (= (nullableZipper!1613 lt!2264209) (exists!2194 lt!2264209 lambda!303661))))

(declare-fun bs!1313663 () Bool)

(assert (= bs!1313663 d!1784545))

(declare-fun m!6616242 () Bool)

(assert (=> bs!1313663 m!6616242))

(assert (=> b!5647009 d!1784545))

(declare-fun d!1784547 () Bool)

(assert (=> d!1784547 (= (head!12007 lt!2264211) (h!69516 lt!2264211))))

(assert (=> b!5647345 d!1784547))

(assert (=> b!5647332 d!1784389))

(declare-fun bs!1313664 () Bool)

(declare-fun d!1784549 () Bool)

(assert (= bs!1313664 (and d!1784549 d!1784407)))

(declare-fun lambda!303662 () Int)

(assert (=> bs!1313664 (not (= lambda!303662 lambda!303640))))

(declare-fun bs!1313665 () Bool)

(assert (= bs!1313665 (and d!1784549 b!5647418)))

(assert (=> bs!1313665 (not (= lambda!303662 lambda!303538))))

(declare-fun bs!1313666 () Bool)

(assert (= bs!1313666 (and d!1784549 d!1784545)))

(assert (=> bs!1313666 (= lambda!303662 lambda!303661)))

(declare-fun bs!1313667 () Bool)

(assert (= bs!1313667 (and d!1784549 b!5648691)))

(assert (=> bs!1313667 (not (= lambda!303662 lambda!303651))))

(declare-fun bs!1313668 () Bool)

(assert (= bs!1313668 (and d!1784549 b!5648672)))

(assert (=> bs!1313668 (not (= lambda!303662 lambda!303643))))

(declare-fun bs!1313669 () Bool)

(assert (= bs!1313669 (and d!1784549 b!5648689)))

(assert (=> bs!1313669 (not (= lambda!303662 lambda!303650))))

(declare-fun bs!1313670 () Bool)

(assert (= bs!1313670 (and d!1784549 d!1784425)))

(assert (=> bs!1313670 (= lambda!303662 lambda!303646)))

(declare-fun bs!1313671 () Bool)

(assert (= bs!1313671 (and d!1784549 d!1784435)))

(assert (=> bs!1313671 (not (= lambda!303662 lambda!303652))))

(declare-fun bs!1313672 () Bool)

(assert (= bs!1313672 (and d!1784549 b!5648670)))

(assert (=> bs!1313672 (not (= lambda!303662 lambda!303642))))

(declare-fun bs!1313673 () Bool)

(assert (= bs!1313673 (and d!1784549 b!5647423)))

(assert (=> bs!1313673 (not (= lambda!303662 lambda!303541))))

(declare-fun bs!1313674 () Bool)

(assert (= bs!1313674 (and d!1784549 b!5647425)))

(assert (=> bs!1313674 (not (= lambda!303662 lambda!303542))))

(declare-fun bs!1313675 () Bool)

(assert (= bs!1313675 (and d!1784549 b!5647420)))

(assert (=> bs!1313675 (not (= lambda!303662 lambda!303539))))

(assert (=> d!1784549 (= (nullableZipper!1613 z!1189) (exists!2194 z!1189 lambda!303662))))

(declare-fun bs!1313676 () Bool)

(assert (= bs!1313676 d!1784549))

(declare-fun m!6616244 () Bool)

(assert (=> bs!1313676 m!6616244))

(assert (=> b!5647316 d!1784549))

(declare-fun d!1784551 () Bool)

(assert (=> d!1784551 (= (isEmpty!34913 (unfocusZipperList!1059 zl!343)) ((_ is Nil!63068) (unfocusZipperList!1059 zl!343)))))

(assert (=> b!5647403 d!1784551))

(assert (=> d!1783739 d!1784295))

(assert (=> d!1783733 d!1784295))

(declare-fun d!1784553 () Bool)

(assert (=> d!1784553 true))

(assert (=> d!1784553 true))

(declare-fun res!2389389 () Bool)

(assert (=> d!1784553 (= (choose!42758 lambda!303426) res!2389389)))

(assert (=> d!1783763 d!1784553))

(assert (=> d!1783737 d!1783739))

(assert (=> d!1783737 d!1783715))

(declare-fun d!1784555 () Bool)

(declare-fun e!3479782 () Bool)

(assert (=> d!1784555 (= (matchZipper!1769 ((_ map or) lt!2264224 lt!2264207) (t!376491 s!2326)) e!3479782)))

(declare-fun res!2389390 () Bool)

(assert (=> d!1784555 (=> res!2389390 e!3479782)))

(assert (=> d!1784555 (= res!2389390 (matchZipper!1769 lt!2264224 (t!376491 s!2326)))))

(assert (=> d!1784555 true))

(declare-fun _$48!1280 () Unit!156056)

(assert (=> d!1784555 (= (choose!42755 lt!2264224 lt!2264207 (t!376491 s!2326)) _$48!1280)))

(declare-fun b!5648901 () Bool)

(assert (=> b!5648901 (= e!3479782 (matchZipper!1769 lt!2264207 (t!376491 s!2326)))))

(assert (= (and d!1784555 (not res!2389390)) b!5648901))

(assert (=> d!1784555 m!6613766))

(assert (=> d!1784555 m!6613636))

(assert (=> b!5648901 m!6613798))

(assert (=> d!1783737 d!1784555))

(declare-fun d!1784557 () Bool)

(assert (=> d!1784557 (= (nullable!5663 r!7292) (nullableFct!1760 r!7292))))

(declare-fun bs!1313677 () Bool)

(assert (= bs!1313677 d!1784557))

(declare-fun m!6616246 () Bool)

(assert (=> bs!1313677 m!6616246))

(assert (=> b!5647122 d!1784557))

(declare-fun d!1784559 () Bool)

(assert (=> d!1784559 (= (isEmpty!34918 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326)) (not ((_ is Some!15639) (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326))))))

(assert (=> d!1783771 d!1784559))

(declare-fun call!427302 () List!63192)

(declare-fun bm!427294 () Bool)

(declare-fun c!992878 () Bool)

(declare-fun c!992881 () Bool)

(assert (=> bm!427294 (= call!427302 ($colon$colon!1681 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221)))) (ite (or c!992881 c!992878) (regTwo!31774 (h!69516 (exprs!5515 lt!2264221))) (h!69516 (exprs!5515 lt!2264221)))))))

(declare-fun bm!427295 () Bool)

(declare-fun call!427303 () List!63192)

(assert (=> bm!427295 (= call!427303 call!427302)))

(declare-fun b!5648902 () Bool)

(declare-fun e!3479788 () (InoxSet Context!10030))

(assert (=> b!5648902 (= e!3479788 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648903 () Bool)

(declare-fun e!3479784 () (InoxSet Context!10030))

(declare-fun call!427301 () (InoxSet Context!10030))

(assert (=> b!5648903 (= e!3479784 call!427301)))

(declare-fun d!1784561 () Bool)

(declare-fun c!992879 () Bool)

(assert (=> d!1784561 (= c!992879 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 lt!2264221))) (= (c!992159 (h!69516 (exprs!5515 lt!2264221))) (h!69517 s!2326))))))

(declare-fun e!3479785 () (InoxSet Context!10030))

(assert (=> d!1784561 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264221)) (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (h!69517 s!2326)) e!3479785)))

(declare-fun bm!427296 () Bool)

(declare-fun call!427299 () (InoxSet Context!10030))

(declare-fun c!992880 () Bool)

(assert (=> bm!427296 (= call!427299 (derivationStepZipperDown!973 (ite c!992880 (regOne!31775 (h!69516 (exprs!5515 lt!2264221))) (regOne!31774 (h!69516 (exprs!5515 lt!2264221)))) (ite c!992880 (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (Context!10031 call!427302)) (h!69517 s!2326)))))

(declare-fun b!5648904 () Bool)

(declare-fun e!3479786 () (InoxSet Context!10030))

(assert (=> b!5648904 (= e!3479785 e!3479786)))

(assert (=> b!5648904 (= c!992880 ((_ is Union!15631) (h!69516 (exprs!5515 lt!2264221))))))

(declare-fun b!5648905 () Bool)

(declare-fun call!427300 () (InoxSet Context!10030))

(assert (=> b!5648905 (= e!3479786 ((_ map or) call!427299 call!427300))))

(declare-fun b!5648906 () Bool)

(declare-fun e!3479783 () (InoxSet Context!10030))

(declare-fun call!427304 () (InoxSet Context!10030))

(assert (=> b!5648906 (= e!3479783 ((_ map or) call!427299 call!427304))))

(declare-fun b!5648907 () Bool)

(assert (=> b!5648907 (= e!3479785 (store ((as const (Array Context!10030 Bool)) false) (Context!10031 (t!376490 (exprs!5515 lt!2264221))) true))))

(declare-fun b!5648908 () Bool)

(declare-fun e!3479787 () Bool)

(assert (=> b!5648908 (= e!3479787 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 lt!2264221)))))))

(declare-fun b!5648909 () Bool)

(declare-fun c!992877 () Bool)

(assert (=> b!5648909 (= c!992877 ((_ is Star!15631) (h!69516 (exprs!5515 lt!2264221))))))

(assert (=> b!5648909 (= e!3479784 e!3479788)))

(declare-fun b!5648910 () Bool)

(assert (=> b!5648910 (= e!3479788 call!427301)))

(declare-fun b!5648911 () Bool)

(assert (=> b!5648911 (= e!3479783 e!3479784)))

(assert (=> b!5648911 (= c!992878 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264221))))))

(declare-fun bm!427297 () Bool)

(assert (=> bm!427297 (= call!427301 call!427304)))

(declare-fun bm!427298 () Bool)

(assert (=> bm!427298 (= call!427304 call!427300)))

(declare-fun b!5648912 () Bool)

(assert (=> b!5648912 (= c!992881 e!3479787)))

(declare-fun res!2389391 () Bool)

(assert (=> b!5648912 (=> (not res!2389391) (not e!3479787))))

(assert (=> b!5648912 (= res!2389391 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264221))))))

(assert (=> b!5648912 (= e!3479786 e!3479783)))

(declare-fun bm!427299 () Bool)

(assert (=> bm!427299 (= call!427300 (derivationStepZipperDown!973 (ite c!992880 (regTwo!31775 (h!69516 (exprs!5515 lt!2264221))) (ite c!992881 (regTwo!31774 (h!69516 (exprs!5515 lt!2264221))) (ite c!992878 (regOne!31774 (h!69516 (exprs!5515 lt!2264221))) (reg!15960 (h!69516 (exprs!5515 lt!2264221)))))) (ite (or c!992880 c!992881) (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (Context!10031 call!427303)) (h!69517 s!2326)))))

(assert (= (and d!1784561 c!992879) b!5648907))

(assert (= (and d!1784561 (not c!992879)) b!5648904))

(assert (= (and b!5648904 c!992880) b!5648905))

(assert (= (and b!5648904 (not c!992880)) b!5648912))

(assert (= (and b!5648912 res!2389391) b!5648908))

(assert (= (and b!5648912 c!992881) b!5648906))

(assert (= (and b!5648912 (not c!992881)) b!5648911))

(assert (= (and b!5648911 c!992878) b!5648903))

(assert (= (and b!5648911 (not c!992878)) b!5648909))

(assert (= (and b!5648909 c!992877) b!5648910))

(assert (= (and b!5648909 (not c!992877)) b!5648902))

(assert (= (or b!5648903 b!5648910) bm!427295))

(assert (= (or b!5648903 b!5648910) bm!427297))

(assert (= (or b!5648906 bm!427295) bm!427294))

(assert (= (or b!5648906 bm!427297) bm!427298))

(assert (= (or b!5648905 bm!427298) bm!427299))

(assert (= (or b!5648905 b!5648906) bm!427296))

(declare-fun m!6616248 () Bool)

(assert (=> bm!427294 m!6616248))

(declare-fun m!6616250 () Bool)

(assert (=> b!5648908 m!6616250))

(declare-fun m!6616252 () Bool)

(assert (=> bm!427296 m!6616252))

(declare-fun m!6616254 () Bool)

(assert (=> bm!427299 m!6616254))

(declare-fun m!6616256 () Bool)

(assert (=> b!5648907 m!6616256))

(assert (=> bm!426972 d!1784561))

(declare-fun bs!1313678 () Bool)

(declare-fun b!5648923 () Bool)

(assert (= bs!1313678 (and b!5648923 d!1783675)))

(declare-fun lambda!303663 () Int)

(assert (=> bs!1313678 (not (= lambda!303663 lambda!303489))))

(declare-fun bs!1313679 () Bool)

(assert (= bs!1313679 (and b!5648923 d!1783751)))

(assert (=> bs!1313679 (not (= lambda!303663 lambda!303513))))

(declare-fun bs!1313680 () Bool)

(assert (= bs!1313680 (and b!5648923 b!5646415)))

(assert (=> bs!1313680 (not (= lambda!303663 lambda!303429))))

(declare-fun bs!1313681 () Bool)

(assert (= bs!1313681 (and b!5648923 b!5646420)))

(assert (=> bs!1313681 (not (= lambda!303663 lambda!303424))))

(assert (=> bs!1313680 (not (= lambda!303663 lambda!303427))))

(declare-fun bs!1313682 () Bool)

(assert (= bs!1313682 (and b!5648923 b!5647372)))

(assert (=> bs!1313682 (= (and (= (reg!15960 (regOne!31775 lt!2264184)) (reg!15960 lt!2264184)) (= (regOne!31775 lt!2264184) lt!2264184)) (= lambda!303663 lambda!303521))))

(declare-fun bs!1313683 () Bool)

(assert (= bs!1313683 (and b!5648923 d!1784481)))

(assert (=> bs!1313683 (not (= lambda!303663 lambda!303655))))

(assert (=> bs!1313680 (not (= lambda!303663 lambda!303426))))

(assert (=> bs!1313680 (not (= lambda!303663 lambda!303428))))

(declare-fun bs!1313684 () Bool)

(assert (= bs!1313684 (and b!5648923 b!5647367)))

(assert (=> bs!1313684 (not (= lambda!303663 lambda!303522))))

(declare-fun bs!1313685 () Bool)

(assert (= bs!1313685 (and b!5648923 b!5648820)))

(assert (=> bs!1313685 (= (and (= (reg!15960 (regOne!31775 lt!2264184)) (reg!15960 (regTwo!31775 lt!2264184))) (= (regOne!31775 lt!2264184) (regTwo!31775 lt!2264184))) (= lambda!303663 lambda!303659))))

(declare-fun bs!1313686 () Bool)

(assert (= bs!1313686 (and b!5648923 b!5647087)))

(assert (=> bs!1313686 (not (= lambda!303663 lambda!303501))))

(declare-fun bs!1313687 () Bool)

(assert (= bs!1313687 (and b!5648923 d!1783759)))

(assert (=> bs!1313687 (not (= lambda!303663 lambda!303514))))

(declare-fun bs!1313688 () Bool)

(assert (= bs!1313688 (and b!5648923 d!1783677)))

(assert (=> bs!1313688 (not (= lambda!303663 lambda!303494))))

(declare-fun bs!1313689 () Bool)

(assert (= bs!1313689 (and b!5648923 b!5648782)))

(assert (=> bs!1313689 (= (and (= (reg!15960 (regOne!31775 lt!2264184)) (reg!15960 (regTwo!31775 r!7292))) (= (regOne!31775 lt!2264184) (regTwo!31775 r!7292))) (= lambda!303663 lambda!303657))))

(declare-fun bs!1313690 () Bool)

(assert (= bs!1313690 (and b!5648923 b!5647359)))

(assert (=> bs!1313690 (= (and (= (reg!15960 (regOne!31775 lt!2264184)) (reg!15960 lt!2264222)) (= (regOne!31775 lt!2264184) lt!2264222)) (= lambda!303663 lambda!303518))))

(declare-fun bs!1313691 () Bool)

(assert (= bs!1313691 (and b!5648923 b!5647092)))

(assert (=> bs!1313691 (= (and (= (reg!15960 (regOne!31775 lt!2264184)) (reg!15960 r!7292)) (= (regOne!31775 lt!2264184) r!7292)) (= lambda!303663 lambda!303500))))

(assert (=> bs!1313688 (not (= lambda!303663 lambda!303495))))

(declare-fun bs!1313692 () Bool)

(assert (= bs!1313692 (and b!5648923 d!1784359)))

(assert (=> bs!1313692 (not (= lambda!303663 lambda!303630))))

(declare-fun bs!1313693 () Bool)

(assert (= bs!1313693 (and b!5648923 b!5648815)))

(assert (=> bs!1313693 (not (= lambda!303663 lambda!303660))))

(assert (=> bs!1313683 (not (= lambda!303663 lambda!303656))))

(declare-fun bs!1313694 () Bool)

(assert (= bs!1313694 (and b!5648923 d!1783793)))

(assert (=> bs!1313694 (not (= lambda!303663 lambda!303523))))

(assert (=> bs!1313692 (not (= lambda!303663 lambda!303631))))

(assert (=> bs!1313694 (not (= lambda!303663 lambda!303524))))

(declare-fun bs!1313695 () Bool)

(assert (= bs!1313695 (and b!5648923 b!5648777)))

(assert (=> bs!1313695 (not (= lambda!303663 lambda!303658))))

(declare-fun bs!1313696 () Bool)

(assert (= bs!1313696 (and b!5648923 d!1783781)))

(assert (=> bs!1313696 (not (= lambda!303663 lambda!303520))))

(assert (=> bs!1313679 (not (= lambda!303663 lambda!303512))))

(assert (=> bs!1313681 (not (= lambda!303663 lambda!303423))))

(declare-fun bs!1313697 () Bool)

(assert (= bs!1313697 (and b!5648923 b!5647354)))

(assert (=> bs!1313697 (not (= lambda!303663 lambda!303519))))

(assert (=> b!5648923 true))

(assert (=> b!5648923 true))

(declare-fun bs!1313698 () Bool)

(declare-fun b!5648918 () Bool)

(assert (= bs!1313698 (and b!5648918 d!1783675)))

(declare-fun lambda!303664 () Int)

(assert (=> bs!1313698 (not (= lambda!303664 lambda!303489))))

(declare-fun bs!1313699 () Bool)

(assert (= bs!1313699 (and b!5648918 d!1783751)))

(assert (=> bs!1313699 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) lt!2264217)) (= lambda!303664 lambda!303513))))

(declare-fun bs!1313700 () Bool)

(assert (= bs!1313700 (and b!5648918 b!5646415)))

(assert (=> bs!1313700 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) lt!2264217)) (= lambda!303664 lambda!303429))))

(declare-fun bs!1313701 () Bool)

(assert (= bs!1313701 (and b!5648918 b!5646420)))

(assert (=> bs!1313701 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303664 lambda!303424))))

(assert (=> bs!1313700 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) lt!2264184)) (= lambda!303664 lambda!303427))))

(declare-fun bs!1313702 () Bool)

(assert (= bs!1313702 (and b!5648918 b!5647372)))

(assert (=> bs!1313702 (not (= lambda!303664 lambda!303521))))

(declare-fun bs!1313703 () Bool)

(assert (= bs!1313703 (and b!5648918 d!1784481)))

(assert (=> bs!1313703 (not (= lambda!303664 lambda!303655))))

(assert (=> bs!1313700 (not (= lambda!303664 lambda!303426))))

(assert (=> bs!1313700 (not (= lambda!303664 lambda!303428))))

(declare-fun bs!1313704 () Bool)

(assert (= bs!1313704 (and b!5648918 b!5647367)))

(assert (=> bs!1313704 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 lt!2264184))) (= lambda!303664 lambda!303522))))

(declare-fun bs!1313705 () Bool)

(assert (= bs!1313705 (and b!5648918 b!5648820)))

(assert (=> bs!1313705 (not (= lambda!303664 lambda!303659))))

(declare-fun bs!1313706 () Bool)

(assert (= bs!1313706 (and b!5648918 b!5647087)))

(assert (=> bs!1313706 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303664 lambda!303501))))

(declare-fun bs!1313707 () Bool)

(assert (= bs!1313707 (and b!5648918 d!1783759)))

(assert (=> bs!1313707 (not (= lambda!303664 lambda!303514))))

(declare-fun bs!1313708 () Bool)

(assert (= bs!1313708 (and b!5648918 d!1783677)))

(assert (=> bs!1313708 (not (= lambda!303664 lambda!303494))))

(declare-fun bs!1313709 () Bool)

(assert (= bs!1313709 (and b!5648918 b!5648782)))

(assert (=> bs!1313709 (not (= lambda!303664 lambda!303657))))

(declare-fun bs!1313710 () Bool)

(assert (= bs!1313710 (and b!5648918 b!5647359)))

(assert (=> bs!1313710 (not (= lambda!303664 lambda!303518))))

(declare-fun bs!1313711 () Bool)

(assert (= bs!1313711 (and b!5648918 b!5647092)))

(assert (=> bs!1313711 (not (= lambda!303664 lambda!303500))))

(assert (=> bs!1313708 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303664 lambda!303495))))

(declare-fun bs!1313712 () Bool)

(assert (= bs!1313712 (and b!5648918 d!1784359)))

(assert (=> bs!1313712 (not (= lambda!303664 lambda!303630))))

(declare-fun bs!1313713 () Bool)

(assert (= bs!1313713 (and b!5648918 b!5648815)))

(assert (=> bs!1313713 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 (regTwo!31775 lt!2264184))) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 (regTwo!31775 lt!2264184)))) (= lambda!303664 lambda!303660))))

(assert (=> bs!1313703 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 r!7292))) (= lambda!303664 lambda!303656))))

(declare-fun bs!1313714 () Bool)

(assert (= bs!1313714 (and b!5648918 d!1783793)))

(assert (=> bs!1313714 (not (= lambda!303664 lambda!303523))))

(assert (=> bs!1313712 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) lt!2264184)) (= lambda!303664 lambda!303631))))

(assert (=> bs!1313714 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) lt!2264184)) (= lambda!303664 lambda!303524))))

(declare-fun bs!1313715 () Bool)

(assert (= bs!1313715 (and b!5648918 b!5648777)))

(assert (=> bs!1313715 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 (regTwo!31775 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303664 lambda!303658))))

(declare-fun bs!1313716 () Bool)

(assert (= bs!1313716 (and b!5648918 d!1783781)))

(assert (=> bs!1313716 (not (= lambda!303664 lambda!303520))))

(assert (=> bs!1313699 (not (= lambda!303664 lambda!303512))))

(assert (=> bs!1313701 (not (= lambda!303664 lambda!303423))))

(declare-fun bs!1313717 () Bool)

(assert (= bs!1313717 (and b!5648918 b!5647354)))

(assert (=> bs!1313717 (= (and (= (regOne!31774 (regOne!31775 lt!2264184)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regOne!31775 lt!2264184)) (regTwo!31774 lt!2264222))) (= lambda!303664 lambda!303519))))

(declare-fun bs!1313718 () Bool)

(assert (= bs!1313718 (and b!5648918 b!5648923)))

(assert (=> bs!1313718 (not (= lambda!303664 lambda!303663))))

(assert (=> b!5648918 true))

(assert (=> b!5648918 true))

(declare-fun b!5648913 () Bool)

(declare-fun e!3479789 () Bool)

(assert (=> b!5648913 (= e!3479789 (= s!2326 (Cons!63069 (c!992159 (regOne!31775 lt!2264184)) Nil!63069)))))

(declare-fun b!5648914 () Bool)

(declare-fun res!2389392 () Bool)

(declare-fun e!3479790 () Bool)

(assert (=> b!5648914 (=> res!2389392 e!3479790)))

(declare-fun call!427305 () Bool)

(assert (=> b!5648914 (= res!2389392 call!427305)))

(declare-fun e!3479793 () Bool)

(assert (=> b!5648914 (= e!3479793 e!3479790)))

(declare-fun bm!427300 () Bool)

(assert (=> bm!427300 (= call!427305 (isEmpty!34917 s!2326))))

(declare-fun b!5648915 () Bool)

(declare-fun c!992885 () Bool)

(assert (=> b!5648915 (= c!992885 ((_ is ElementMatch!15631) (regOne!31775 lt!2264184)))))

(declare-fun e!3479794 () Bool)

(assert (=> b!5648915 (= e!3479794 e!3479789)))

(declare-fun b!5648916 () Bool)

(declare-fun e!3479791 () Bool)

(declare-fun e!3479792 () Bool)

(assert (=> b!5648916 (= e!3479791 e!3479792)))

(declare-fun res!2389393 () Bool)

(assert (=> b!5648916 (= res!2389393 (matchRSpec!2734 (regOne!31775 (regOne!31775 lt!2264184)) s!2326))))

(assert (=> b!5648916 (=> res!2389393 e!3479792)))

(declare-fun d!1784563 () Bool)

(declare-fun c!992884 () Bool)

(assert (=> d!1784563 (= c!992884 ((_ is EmptyExpr!15631) (regOne!31775 lt!2264184)))))

(declare-fun e!3479795 () Bool)

(assert (=> d!1784563 (= (matchRSpec!2734 (regOne!31775 lt!2264184) s!2326) e!3479795)))

(declare-fun b!5648917 () Bool)

(declare-fun c!992883 () Bool)

(assert (=> b!5648917 (= c!992883 ((_ is Union!15631) (regOne!31775 lt!2264184)))))

(assert (=> b!5648917 (= e!3479789 e!3479791)))

(declare-fun bm!427301 () Bool)

(declare-fun call!427306 () Bool)

(declare-fun c!992882 () Bool)

(assert (=> bm!427301 (= call!427306 (Exists!2731 (ite c!992882 lambda!303663 lambda!303664)))))

(assert (=> b!5648918 (= e!3479793 call!427306)))

(declare-fun b!5648919 () Bool)

(assert (=> b!5648919 (= e!3479791 e!3479793)))

(assert (=> b!5648919 (= c!992882 ((_ is Star!15631) (regOne!31775 lt!2264184)))))

(declare-fun b!5648920 () Bool)

(assert (=> b!5648920 (= e!3479795 call!427305)))

(declare-fun b!5648921 () Bool)

(assert (=> b!5648921 (= e!3479795 e!3479794)))

(declare-fun res!2389394 () Bool)

(assert (=> b!5648921 (= res!2389394 (not ((_ is EmptyLang!15631) (regOne!31775 lt!2264184))))))

(assert (=> b!5648921 (=> (not res!2389394) (not e!3479794))))

(declare-fun b!5648922 () Bool)

(assert (=> b!5648922 (= e!3479792 (matchRSpec!2734 (regTwo!31775 (regOne!31775 lt!2264184)) s!2326))))

(assert (=> b!5648923 (= e!3479790 call!427306)))

(assert (= (and d!1784563 c!992884) b!5648920))

(assert (= (and d!1784563 (not c!992884)) b!5648921))

(assert (= (and b!5648921 res!2389394) b!5648915))

(assert (= (and b!5648915 c!992885) b!5648913))

(assert (= (and b!5648915 (not c!992885)) b!5648917))

(assert (= (and b!5648917 c!992883) b!5648916))

(assert (= (and b!5648917 (not c!992883)) b!5648919))

(assert (= (and b!5648916 (not res!2389393)) b!5648922))

(assert (= (and b!5648919 c!992882) b!5648914))

(assert (= (and b!5648919 (not c!992882)) b!5648918))

(assert (= (and b!5648914 (not res!2389392)) b!5648923))

(assert (= (or b!5648923 b!5648918) bm!427301))

(assert (= (or b!5648920 b!5648914) bm!427300))

(assert (=> bm!427300 m!6614382))

(declare-fun m!6616258 () Bool)

(assert (=> b!5648916 m!6616258))

(declare-fun m!6616260 () Bool)

(assert (=> bm!427301 m!6616260))

(declare-fun m!6616262 () Bool)

(assert (=> b!5648922 m!6616262))

(assert (=> b!5647365 d!1784563))

(assert (=> b!5647311 d!1784331))

(declare-fun d!1784565 () Bool)

(assert (=> d!1784565 true))

(assert (=> d!1784565 true))

(declare-fun res!2389395 () Bool)

(assert (=> d!1784565 (= (choose!42758 lambda!303423) res!2389395)))

(assert (=> d!1783671 d!1784565))

(declare-fun b!5648924 () Bool)

(declare-fun e!3479797 () Bool)

(declare-fun e!3479796 () Bool)

(assert (=> b!5648924 (= e!3479797 e!3479796)))

(declare-fun res!2389400 () Bool)

(declare-fun call!427307 () Bool)

(assert (=> b!5648924 (= res!2389400 call!427307)))

(assert (=> b!5648924 (=> (not res!2389400) (not e!3479796))))

(declare-fun b!5648925 () Bool)

(declare-fun e!3479801 () Bool)

(declare-fun e!3479800 () Bool)

(assert (=> b!5648925 (= e!3479801 e!3479800)))

(declare-fun res!2389397 () Bool)

(assert (=> b!5648925 (=> res!2389397 e!3479800)))

(assert (=> b!5648925 (= res!2389397 ((_ is Star!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5648926 () Bool)

(declare-fun call!427308 () Bool)

(assert (=> b!5648926 (= e!3479796 call!427308)))

(declare-fun bm!427302 () Bool)

(declare-fun c!992886 () Bool)

(assert (=> bm!427302 (= call!427308 (nullable!5663 (ite c!992886 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648927 () Bool)

(declare-fun e!3479799 () Bool)

(assert (=> b!5648927 (= e!3479799 call!427308)))

(declare-fun b!5648928 () Bool)

(assert (=> b!5648928 (= e!3479800 e!3479797)))

(assert (=> b!5648928 (= c!992886 ((_ is Union!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun bm!427303 () Bool)

(assert (=> bm!427303 (= call!427307 (nullable!5663 (ite c!992886 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun d!1784567 () Bool)

(declare-fun res!2389396 () Bool)

(declare-fun e!3479798 () Bool)

(assert (=> d!1784567 (=> res!2389396 e!3479798)))

(assert (=> d!1784567 (= res!2389396 ((_ is EmptyExpr!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> d!1784567 (= (nullableFct!1760 (h!69516 (exprs!5515 (h!69518 zl!343)))) e!3479798)))

(declare-fun b!5648929 () Bool)

(assert (=> b!5648929 (= e!3479798 e!3479801)))

(declare-fun res!2389398 () Bool)

(assert (=> b!5648929 (=> (not res!2389398) (not e!3479801))))

(assert (=> b!5648929 (= res!2389398 (and (not ((_ is EmptyLang!15631) (h!69516 (exprs!5515 (h!69518 zl!343))))) (not ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648930 () Bool)

(assert (=> b!5648930 (= e!3479797 e!3479799)))

(declare-fun res!2389399 () Bool)

(assert (=> b!5648930 (= res!2389399 call!427307)))

(assert (=> b!5648930 (=> res!2389399 e!3479799)))

(assert (= (and d!1784567 (not res!2389396)) b!5648929))

(assert (= (and b!5648929 res!2389398) b!5648925))

(assert (= (and b!5648925 (not res!2389397)) b!5648928))

(assert (= (and b!5648928 c!992886) b!5648930))

(assert (= (and b!5648928 (not c!992886)) b!5648924))

(assert (= (and b!5648930 (not res!2389399)) b!5648927))

(assert (= (and b!5648924 res!2389400) b!5648926))

(assert (= (or b!5648927 b!5648926) bm!427302))

(assert (= (or b!5648930 b!5648924) bm!427303))

(declare-fun m!6616264 () Bool)

(assert (=> bm!427302 m!6616264))

(declare-fun m!6616266 () Bool)

(assert (=> bm!427303 m!6616266))

(assert (=> d!1783701 d!1784567))

(declare-fun bs!1313719 () Bool)

(declare-fun d!1784569 () Bool)

(assert (= bs!1313719 (and d!1784569 d!1784407)))

(declare-fun lambda!303665 () Int)

(assert (=> bs!1313719 (not (= lambda!303665 lambda!303640))))

(declare-fun bs!1313720 () Bool)

(assert (= bs!1313720 (and d!1784569 b!5647418)))

(assert (=> bs!1313720 (not (= lambda!303665 lambda!303538))))

(declare-fun bs!1313721 () Bool)

(assert (= bs!1313721 (and d!1784569 d!1784545)))

(assert (=> bs!1313721 (= lambda!303665 lambda!303661)))

(declare-fun bs!1313722 () Bool)

(assert (= bs!1313722 (and d!1784569 b!5648691)))

(assert (=> bs!1313722 (not (= lambda!303665 lambda!303651))))

(declare-fun bs!1313723 () Bool)

(assert (= bs!1313723 (and d!1784569 b!5648672)))

(assert (=> bs!1313723 (not (= lambda!303665 lambda!303643))))

(declare-fun bs!1313724 () Bool)

(assert (= bs!1313724 (and d!1784569 b!5648689)))

(assert (=> bs!1313724 (not (= lambda!303665 lambda!303650))))

(declare-fun bs!1313725 () Bool)

(assert (= bs!1313725 (and d!1784569 d!1784425)))

(assert (=> bs!1313725 (= lambda!303665 lambda!303646)))

(declare-fun bs!1313726 () Bool)

(assert (= bs!1313726 (and d!1784569 d!1784549)))

(assert (=> bs!1313726 (= lambda!303665 lambda!303662)))

(declare-fun bs!1313727 () Bool)

(assert (= bs!1313727 (and d!1784569 d!1784435)))

(assert (=> bs!1313727 (not (= lambda!303665 lambda!303652))))

(declare-fun bs!1313728 () Bool)

(assert (= bs!1313728 (and d!1784569 b!5648670)))

(assert (=> bs!1313728 (not (= lambda!303665 lambda!303642))))

(declare-fun bs!1313729 () Bool)

(assert (= bs!1313729 (and d!1784569 b!5647423)))

(assert (=> bs!1313729 (not (= lambda!303665 lambda!303541))))

(declare-fun bs!1313730 () Bool)

(assert (= bs!1313730 (and d!1784569 b!5647425)))

(assert (=> bs!1313730 (not (= lambda!303665 lambda!303542))))

(declare-fun bs!1313731 () Bool)

(assert (= bs!1313731 (and d!1784569 b!5647420)))

(assert (=> bs!1313731 (not (= lambda!303665 lambda!303539))))

(assert (=> d!1784569 (= (nullableZipper!1613 lt!2264227) (exists!2194 lt!2264227 lambda!303665))))

(declare-fun bs!1313732 () Bool)

(assert (= bs!1313732 d!1784569))

(declare-fun m!6616268 () Bool)

(assert (=> bs!1313732 m!6616268))

(assert (=> b!5647205 d!1784569))

(declare-fun d!1784571 () Bool)

(assert (=> d!1784571 (= (isEmpty!34917 (tail!11101 s!2326)) ((_ is Nil!63069) (tail!11101 s!2326)))))

(assert (=> b!5647287 d!1784571))

(assert (=> b!5647287 d!1784469))

(declare-fun d!1784573 () Bool)

(declare-fun c!992887 () Bool)

(assert (=> d!1784573 (= c!992887 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479802 () Bool)

(assert (=> d!1784573 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264209 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479802)))

(declare-fun b!5648931 () Bool)

(assert (=> b!5648931 (= e!3479802 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264209 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5648932 () Bool)

(assert (=> b!5648932 (= e!3479802 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264209 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784573 c!992887) b!5648931))

(assert (= (and d!1784573 (not c!992887)) b!5648932))

(assert (=> d!1784573 m!6614310))

(assert (=> d!1784573 m!6615792))

(assert (=> b!5648931 m!6614338))

(declare-fun m!6616270 () Bool)

(assert (=> b!5648931 m!6616270))

(assert (=> b!5648932 m!6614310))

(assert (=> b!5648932 m!6615796))

(assert (=> b!5648932 m!6614338))

(assert (=> b!5648932 m!6615796))

(declare-fun m!6616272 () Bool)

(assert (=> b!5648932 m!6616272))

(assert (=> b!5648932 m!6614310))

(assert (=> b!5648932 m!6615800))

(assert (=> b!5648932 m!6616272))

(assert (=> b!5648932 m!6615800))

(declare-fun m!6616274 () Bool)

(assert (=> b!5648932 m!6616274))

(assert (=> b!5647010 d!1784573))

(declare-fun bs!1313733 () Bool)

(declare-fun d!1784575 () Bool)

(assert (= bs!1313733 (and d!1784575 b!5646443)))

(declare-fun lambda!303666 () Int)

(assert (=> bs!1313733 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303666 lambda!303425))))

(declare-fun bs!1313734 () Bool)

(assert (= bs!1313734 (and d!1784575 d!1784467)))

(assert (=> bs!1313734 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303666 lambda!303654))))

(declare-fun bs!1313735 () Bool)

(assert (= bs!1313735 (and d!1784575 d!1784323)))

(assert (=> bs!1313735 (= lambda!303666 lambda!303624)))

(declare-fun bs!1313736 () Bool)

(assert (= bs!1313736 (and d!1784575 d!1783813)))

(assert (=> bs!1313736 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303666 lambda!303543))))

(declare-fun bs!1313737 () Bool)

(assert (= bs!1313737 (and d!1784575 d!1783735)))

(assert (=> bs!1313737 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303666 lambda!303508))))

(assert (=> d!1784575 true))

(assert (=> d!1784575 (= (derivationStepZipper!1718 lt!2264209 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264209 lambda!303666))))

(declare-fun bs!1313738 () Bool)

(assert (= bs!1313738 d!1784575))

(declare-fun m!6616276 () Bool)

(assert (=> bs!1313738 m!6616276))

(assert (=> b!5647010 d!1784575))

(assert (=> b!5647010 d!1784325))

(assert (=> b!5647010 d!1784327))

(assert (=> b!5647410 d!1783741))

(declare-fun bs!1313739 () Bool)

(declare-fun d!1784577 () Bool)

(assert (= bs!1313739 (and d!1784577 d!1783769)))

(declare-fun lambda!303667 () Int)

(assert (=> bs!1313739 (= lambda!303667 lambda!303516)))

(declare-fun bs!1313740 () Bool)

(assert (= bs!1313740 (and d!1784577 d!1783799)))

(assert (=> bs!1313740 (= lambda!303667 lambda!303527)))

(declare-fun bs!1313741 () Bool)

(assert (= bs!1313741 (and d!1784577 d!1783713)))

(assert (=> bs!1313741 (= lambda!303667 lambda!303504)))

(declare-fun bs!1313742 () Bool)

(assert (= bs!1313742 (and d!1784577 d!1783801)))

(assert (=> bs!1313742 (= lambda!303667 lambda!303530)))

(declare-fun bs!1313743 () Bool)

(assert (= bs!1313743 (and d!1784577 b!5648658)))

(assert (=> bs!1313743 (not (= lambda!303667 lambda!303637))))

(declare-fun bs!1313744 () Bool)

(assert (= bs!1313744 (and d!1784577 b!5648656)))

(assert (=> bs!1313744 (not (= lambda!303667 lambda!303636))))

(declare-fun bs!1313745 () Bool)

(assert (= bs!1313745 (and d!1784577 d!1784443)))

(assert (=> bs!1313745 (= lambda!303667 lambda!303653)))

(declare-fun bs!1313746 () Bool)

(assert (= bs!1313746 (and d!1784577 d!1783761)))

(assert (=> bs!1313746 (= lambda!303667 lambda!303515)))

(declare-fun bs!1313747 () Bool)

(assert (= bs!1313747 (and d!1784577 b!5648688)))

(assert (=> bs!1313747 (not (= lambda!303667 lambda!303648))))

(declare-fun bs!1313748 () Bool)

(assert (= bs!1313748 (and d!1784577 d!1783775)))

(assert (=> bs!1313748 (= lambda!303667 lambda!303517)))

(declare-fun bs!1313749 () Bool)

(assert (= bs!1313749 (and d!1784577 b!5648686)))

(assert (=> bs!1313749 (not (= lambda!303667 lambda!303647))))

(declare-fun bs!1313750 () Bool)

(assert (= bs!1313750 (and d!1784577 d!1783741)))

(assert (=> bs!1313750 (= lambda!303667 lambda!303511)))

(declare-fun bs!1313751 () Bool)

(assert (= bs!1313751 (and d!1784577 d!1784301)))

(assert (=> bs!1313751 (= lambda!303667 lambda!303621)))

(declare-fun bs!1313752 () Bool)

(assert (= bs!1313752 (and d!1784577 d!1783727)))

(assert (=> bs!1313752 (= lambda!303667 lambda!303505)))

(declare-fun lt!2264539 () List!63192)

(assert (=> d!1784577 (forall!14788 lt!2264539 lambda!303667)))

(declare-fun e!3479803 () List!63192)

(assert (=> d!1784577 (= lt!2264539 e!3479803)))

(declare-fun c!992888 () Bool)

(assert (=> d!1784577 (= c!992888 ((_ is Cons!63070) (t!376492 zl!343)))))

(assert (=> d!1784577 (= (unfocusZipperList!1059 (t!376492 zl!343)) lt!2264539)))

(declare-fun b!5648933 () Bool)

(assert (=> b!5648933 (= e!3479803 (Cons!63068 (generalisedConcat!1246 (exprs!5515 (h!69518 (t!376492 zl!343)))) (unfocusZipperList!1059 (t!376492 (t!376492 zl!343)))))))

(declare-fun b!5648934 () Bool)

(assert (=> b!5648934 (= e!3479803 Nil!63068)))

(assert (= (and d!1784577 c!992888) b!5648933))

(assert (= (and d!1784577 (not c!992888)) b!5648934))

(declare-fun m!6616278 () Bool)

(assert (=> d!1784577 m!6616278))

(declare-fun m!6616280 () Bool)

(assert (=> b!5648933 m!6616280))

(declare-fun m!6616282 () Bool)

(assert (=> b!5648933 m!6616282))

(assert (=> b!5647410 d!1784577))

(declare-fun d!1784579 () Bool)

(assert (=> d!1784579 (= (isConcat!695 lt!2264371) ((_ is Concat!24476) lt!2264371))))

(assert (=> b!5647306 d!1784579))

(declare-fun d!1784581 () Bool)

(assert (=> d!1784581 (= ($colon$colon!1681 (exprs!5515 lt!2264212) (ite (or c!992387 c!992384) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69516 (exprs!5515 (h!69518 zl!343))))) (Cons!63068 (ite (or c!992387 c!992384) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69516 (exprs!5515 (h!69518 zl!343)))) (exprs!5515 lt!2264212)))))

(assert (=> bm!426997 d!1784581))

(declare-fun bs!1313753 () Bool)

(declare-fun d!1784583 () Bool)

(assert (= bs!1313753 (and d!1784583 d!1783769)))

(declare-fun lambda!303668 () Int)

(assert (=> bs!1313753 (= lambda!303668 lambda!303516)))

(declare-fun bs!1313754 () Bool)

(assert (= bs!1313754 (and d!1784583 d!1783799)))

(assert (=> bs!1313754 (= lambda!303668 lambda!303527)))

(declare-fun bs!1313755 () Bool)

(assert (= bs!1313755 (and d!1784583 d!1783713)))

(assert (=> bs!1313755 (= lambda!303668 lambda!303504)))

(declare-fun bs!1313756 () Bool)

(assert (= bs!1313756 (and d!1784583 d!1783801)))

(assert (=> bs!1313756 (= lambda!303668 lambda!303530)))

(declare-fun bs!1313757 () Bool)

(assert (= bs!1313757 (and d!1784583 b!5648658)))

(assert (=> bs!1313757 (not (= lambda!303668 lambda!303637))))

(declare-fun bs!1313758 () Bool)

(assert (= bs!1313758 (and d!1784583 b!5648656)))

(assert (=> bs!1313758 (not (= lambda!303668 lambda!303636))))

(declare-fun bs!1313759 () Bool)

(assert (= bs!1313759 (and d!1784583 d!1784443)))

(assert (=> bs!1313759 (= lambda!303668 lambda!303653)))

(declare-fun bs!1313760 () Bool)

(assert (= bs!1313760 (and d!1784583 d!1783761)))

(assert (=> bs!1313760 (= lambda!303668 lambda!303515)))

(declare-fun bs!1313761 () Bool)

(assert (= bs!1313761 (and d!1784583 b!5648688)))

(assert (=> bs!1313761 (not (= lambda!303668 lambda!303648))))

(declare-fun bs!1313762 () Bool)

(assert (= bs!1313762 (and d!1784583 d!1784577)))

(assert (=> bs!1313762 (= lambda!303668 lambda!303667)))

(declare-fun bs!1313763 () Bool)

(assert (= bs!1313763 (and d!1784583 d!1783775)))

(assert (=> bs!1313763 (= lambda!303668 lambda!303517)))

(declare-fun bs!1313764 () Bool)

(assert (= bs!1313764 (and d!1784583 b!5648686)))

(assert (=> bs!1313764 (not (= lambda!303668 lambda!303647))))

(declare-fun bs!1313765 () Bool)

(assert (= bs!1313765 (and d!1784583 d!1783741)))

(assert (=> bs!1313765 (= lambda!303668 lambda!303511)))

(declare-fun bs!1313766 () Bool)

(assert (= bs!1313766 (and d!1784583 d!1784301)))

(assert (=> bs!1313766 (= lambda!303668 lambda!303621)))

(declare-fun bs!1313767 () Bool)

(assert (= bs!1313767 (and d!1784583 d!1783727)))

(assert (=> bs!1313767 (= lambda!303668 lambda!303505)))

(declare-fun b!5648935 () Bool)

(declare-fun e!3479809 () Bool)

(assert (=> b!5648935 (= e!3479809 (isEmpty!34913 (t!376490 (t!376490 lt!2264211))))))

(declare-fun b!5648936 () Bool)

(declare-fun e!3479805 () Regex!15631)

(assert (=> b!5648936 (= e!3479805 (Concat!24476 (h!69516 (t!376490 lt!2264211)) (generalisedConcat!1246 (t!376490 (t!376490 lt!2264211)))))))

(declare-fun e!3479808 () Bool)

(assert (=> d!1784583 e!3479808))

(declare-fun res!2389402 () Bool)

(assert (=> d!1784583 (=> (not res!2389402) (not e!3479808))))

(declare-fun lt!2264540 () Regex!15631)

(assert (=> d!1784583 (= res!2389402 (validRegex!7367 lt!2264540))))

(declare-fun e!3479806 () Regex!15631)

(assert (=> d!1784583 (= lt!2264540 e!3479806)))

(declare-fun c!992891 () Bool)

(assert (=> d!1784583 (= c!992891 e!3479809)))

(declare-fun res!2389401 () Bool)

(assert (=> d!1784583 (=> (not res!2389401) (not e!3479809))))

(assert (=> d!1784583 (= res!2389401 ((_ is Cons!63068) (t!376490 lt!2264211)))))

(assert (=> d!1784583 (forall!14788 (t!376490 lt!2264211) lambda!303668)))

(assert (=> d!1784583 (= (generalisedConcat!1246 (t!376490 lt!2264211)) lt!2264540)))

(declare-fun b!5648937 () Bool)

(assert (=> b!5648937 (= e!3479806 (h!69516 (t!376490 lt!2264211)))))

(declare-fun b!5648938 () Bool)

(assert (=> b!5648938 (= e!3479806 e!3479805)))

(declare-fun c!992890 () Bool)

(assert (=> b!5648938 (= c!992890 ((_ is Cons!63068) (t!376490 lt!2264211)))))

(declare-fun b!5648939 () Bool)

(assert (=> b!5648939 (= e!3479805 EmptyExpr!15631)))

(declare-fun b!5648940 () Bool)

(declare-fun e!3479804 () Bool)

(assert (=> b!5648940 (= e!3479804 (isEmptyExpr!1172 lt!2264540))))

(declare-fun b!5648941 () Bool)

(declare-fun e!3479807 () Bool)

(assert (=> b!5648941 (= e!3479804 e!3479807)))

(declare-fun c!992889 () Bool)

(assert (=> b!5648941 (= c!992889 (isEmpty!34913 (tail!11102 (t!376490 lt!2264211))))))

(declare-fun b!5648942 () Bool)

(assert (=> b!5648942 (= e!3479808 e!3479804)))

(declare-fun c!992892 () Bool)

(assert (=> b!5648942 (= c!992892 (isEmpty!34913 (t!376490 lt!2264211)))))

(declare-fun b!5648943 () Bool)

(assert (=> b!5648943 (= e!3479807 (= lt!2264540 (head!12007 (t!376490 lt!2264211))))))

(declare-fun b!5648944 () Bool)

(assert (=> b!5648944 (= e!3479807 (isConcat!695 lt!2264540))))

(assert (= (and d!1784583 res!2389401) b!5648935))

(assert (= (and d!1784583 c!992891) b!5648937))

(assert (= (and d!1784583 (not c!992891)) b!5648938))

(assert (= (and b!5648938 c!992890) b!5648936))

(assert (= (and b!5648938 (not c!992890)) b!5648939))

(assert (= (and d!1784583 res!2389402) b!5648942))

(assert (= (and b!5648942 c!992892) b!5648940))

(assert (= (and b!5648942 (not c!992892)) b!5648941))

(assert (= (and b!5648941 c!992889) b!5648943))

(assert (= (and b!5648941 (not c!992889)) b!5648944))

(declare-fun m!6616284 () Bool)

(assert (=> b!5648941 m!6616284))

(assert (=> b!5648941 m!6616284))

(declare-fun m!6616286 () Bool)

(assert (=> b!5648941 m!6616286))

(assert (=> b!5648942 m!6614670))

(declare-fun m!6616288 () Bool)

(assert (=> b!5648936 m!6616288))

(declare-fun m!6616290 () Bool)

(assert (=> b!5648940 m!6616290))

(declare-fun m!6616292 () Bool)

(assert (=> b!5648943 m!6616292))

(declare-fun m!6616294 () Bool)

(assert (=> b!5648935 m!6616294))

(declare-fun m!6616296 () Bool)

(assert (=> d!1784583 m!6616296))

(declare-fun m!6616298 () Bool)

(assert (=> d!1784583 m!6616298))

(declare-fun m!6616300 () Bool)

(assert (=> b!5648944 m!6616300))

(assert (=> b!5647338 d!1784583))

(declare-fun bs!1313768 () Bool)

(declare-fun d!1784585 () Bool)

(assert (= bs!1313768 (and d!1784585 d!1783769)))

(declare-fun lambda!303669 () Int)

(assert (=> bs!1313768 (= lambda!303669 lambda!303516)))

(declare-fun bs!1313769 () Bool)

(assert (= bs!1313769 (and d!1784585 d!1783799)))

(assert (=> bs!1313769 (= lambda!303669 lambda!303527)))

(declare-fun bs!1313770 () Bool)

(assert (= bs!1313770 (and d!1784585 d!1783713)))

(assert (=> bs!1313770 (= lambda!303669 lambda!303504)))

(declare-fun bs!1313771 () Bool)

(assert (= bs!1313771 (and d!1784585 d!1783801)))

(assert (=> bs!1313771 (= lambda!303669 lambda!303530)))

(declare-fun bs!1313772 () Bool)

(assert (= bs!1313772 (and d!1784585 b!5648658)))

(assert (=> bs!1313772 (not (= lambda!303669 lambda!303637))))

(declare-fun bs!1313773 () Bool)

(assert (= bs!1313773 (and d!1784585 b!5648656)))

(assert (=> bs!1313773 (not (= lambda!303669 lambda!303636))))

(declare-fun bs!1313774 () Bool)

(assert (= bs!1313774 (and d!1784585 d!1784443)))

(assert (=> bs!1313774 (= lambda!303669 lambda!303653)))

(declare-fun bs!1313775 () Bool)

(assert (= bs!1313775 (and d!1784585 d!1783761)))

(assert (=> bs!1313775 (= lambda!303669 lambda!303515)))

(declare-fun bs!1313776 () Bool)

(assert (= bs!1313776 (and d!1784585 b!5648688)))

(assert (=> bs!1313776 (not (= lambda!303669 lambda!303648))))

(declare-fun bs!1313777 () Bool)

(assert (= bs!1313777 (and d!1784585 d!1784583)))

(assert (=> bs!1313777 (= lambda!303669 lambda!303668)))

(declare-fun bs!1313778 () Bool)

(assert (= bs!1313778 (and d!1784585 d!1784577)))

(assert (=> bs!1313778 (= lambda!303669 lambda!303667)))

(declare-fun bs!1313779 () Bool)

(assert (= bs!1313779 (and d!1784585 d!1783775)))

(assert (=> bs!1313779 (= lambda!303669 lambda!303517)))

(declare-fun bs!1313780 () Bool)

(assert (= bs!1313780 (and d!1784585 b!5648686)))

(assert (=> bs!1313780 (not (= lambda!303669 lambda!303647))))

(declare-fun bs!1313781 () Bool)

(assert (= bs!1313781 (and d!1784585 d!1783741)))

(assert (=> bs!1313781 (= lambda!303669 lambda!303511)))

(declare-fun bs!1313782 () Bool)

(assert (= bs!1313782 (and d!1784585 d!1784301)))

(assert (=> bs!1313782 (= lambda!303669 lambda!303621)))

(declare-fun bs!1313783 () Bool)

(assert (= bs!1313783 (and d!1784585 d!1783727)))

(assert (=> bs!1313783 (= lambda!303669 lambda!303505)))

(assert (=> d!1784585 (= (inv!82324 (h!69518 (t!376492 zl!343))) (forall!14788 (exprs!5515 (h!69518 (t!376492 zl!343))) lambda!303669))))

(declare-fun bs!1313784 () Bool)

(assert (= bs!1313784 d!1784585))

(declare-fun m!6616302 () Bool)

(assert (=> bs!1313784 m!6616302))

(assert (=> b!5647482 d!1784585))

(declare-fun bs!1313785 () Bool)

(declare-fun b!5648955 () Bool)

(assert (= bs!1313785 (and b!5648955 d!1783675)))

(declare-fun lambda!303670 () Int)

(assert (=> bs!1313785 (not (= lambda!303670 lambda!303489))))

(declare-fun bs!1313786 () Bool)

(assert (= bs!1313786 (and b!5648955 d!1783751)))

(assert (=> bs!1313786 (not (= lambda!303670 lambda!303513))))

(declare-fun bs!1313787 () Bool)

(assert (= bs!1313787 (and b!5648955 b!5646415)))

(assert (=> bs!1313787 (not (= lambda!303670 lambda!303429))))

(assert (=> bs!1313787 (not (= lambda!303670 lambda!303427))))

(declare-fun bs!1313788 () Bool)

(assert (= bs!1313788 (and b!5648955 b!5647372)))

(assert (=> bs!1313788 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 lt!2264184)) (= (regTwo!31775 lt!2264222) lt!2264184)) (= lambda!303670 lambda!303521))))

(declare-fun bs!1313789 () Bool)

(assert (= bs!1313789 (and b!5648955 d!1784481)))

(assert (=> bs!1313789 (not (= lambda!303670 lambda!303655))))

(assert (=> bs!1313787 (not (= lambda!303670 lambda!303426))))

(assert (=> bs!1313787 (not (= lambda!303670 lambda!303428))))

(declare-fun bs!1313790 () Bool)

(assert (= bs!1313790 (and b!5648955 b!5647367)))

(assert (=> bs!1313790 (not (= lambda!303670 lambda!303522))))

(declare-fun bs!1313791 () Bool)

(assert (= bs!1313791 (and b!5648955 b!5648820)))

(assert (=> bs!1313791 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 (regTwo!31775 lt!2264184))) (= (regTwo!31775 lt!2264222) (regTwo!31775 lt!2264184))) (= lambda!303670 lambda!303659))))

(declare-fun bs!1313792 () Bool)

(assert (= bs!1313792 (and b!5648955 b!5647087)))

(assert (=> bs!1313792 (not (= lambda!303670 lambda!303501))))

(declare-fun bs!1313793 () Bool)

(assert (= bs!1313793 (and b!5648955 d!1783759)))

(assert (=> bs!1313793 (not (= lambda!303670 lambda!303514))))

(declare-fun bs!1313794 () Bool)

(assert (= bs!1313794 (and b!5648955 b!5648918)))

(assert (=> bs!1313794 (not (= lambda!303670 lambda!303664))))

(declare-fun bs!1313795 () Bool)

(assert (= bs!1313795 (and b!5648955 b!5646420)))

(assert (=> bs!1313795 (not (= lambda!303670 lambda!303424))))

(declare-fun bs!1313796 () Bool)

(assert (= bs!1313796 (and b!5648955 d!1783677)))

(assert (=> bs!1313796 (not (= lambda!303670 lambda!303494))))

(declare-fun bs!1313797 () Bool)

(assert (= bs!1313797 (and b!5648955 b!5648782)))

(assert (=> bs!1313797 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 (regTwo!31775 r!7292))) (= (regTwo!31775 lt!2264222) (regTwo!31775 r!7292))) (= lambda!303670 lambda!303657))))

(declare-fun bs!1313798 () Bool)

(assert (= bs!1313798 (and b!5648955 b!5647359)))

(assert (=> bs!1313798 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 lt!2264222)) (= (regTwo!31775 lt!2264222) lt!2264222)) (= lambda!303670 lambda!303518))))

(declare-fun bs!1313799 () Bool)

(assert (= bs!1313799 (and b!5648955 b!5647092)))

(assert (=> bs!1313799 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 r!7292)) (= (regTwo!31775 lt!2264222) r!7292)) (= lambda!303670 lambda!303500))))

(assert (=> bs!1313796 (not (= lambda!303670 lambda!303495))))

(declare-fun bs!1313800 () Bool)

(assert (= bs!1313800 (and b!5648955 d!1784359)))

(assert (=> bs!1313800 (not (= lambda!303670 lambda!303630))))

(declare-fun bs!1313801 () Bool)

(assert (= bs!1313801 (and b!5648955 b!5648815)))

(assert (=> bs!1313801 (not (= lambda!303670 lambda!303660))))

(assert (=> bs!1313789 (not (= lambda!303670 lambda!303656))))

(declare-fun bs!1313802 () Bool)

(assert (= bs!1313802 (and b!5648955 d!1783793)))

(assert (=> bs!1313802 (not (= lambda!303670 lambda!303523))))

(assert (=> bs!1313800 (not (= lambda!303670 lambda!303631))))

(assert (=> bs!1313802 (not (= lambda!303670 lambda!303524))))

(declare-fun bs!1313803 () Bool)

(assert (= bs!1313803 (and b!5648955 b!5648777)))

(assert (=> bs!1313803 (not (= lambda!303670 lambda!303658))))

(declare-fun bs!1313804 () Bool)

(assert (= bs!1313804 (and b!5648955 d!1783781)))

(assert (=> bs!1313804 (not (= lambda!303670 lambda!303520))))

(assert (=> bs!1313786 (not (= lambda!303670 lambda!303512))))

(assert (=> bs!1313795 (not (= lambda!303670 lambda!303423))))

(declare-fun bs!1313805 () Bool)

(assert (= bs!1313805 (and b!5648955 b!5647354)))

(assert (=> bs!1313805 (not (= lambda!303670 lambda!303519))))

(declare-fun bs!1313806 () Bool)

(assert (= bs!1313806 (and b!5648955 b!5648923)))

(assert (=> bs!1313806 (= (and (= (reg!15960 (regTwo!31775 lt!2264222)) (reg!15960 (regOne!31775 lt!2264184))) (= (regTwo!31775 lt!2264222) (regOne!31775 lt!2264184))) (= lambda!303670 lambda!303663))))

(assert (=> b!5648955 true))

(assert (=> b!5648955 true))

(declare-fun bs!1313807 () Bool)

(declare-fun b!5648950 () Bool)

(assert (= bs!1313807 (and b!5648950 d!1783675)))

(declare-fun lambda!303671 () Int)

(assert (=> bs!1313807 (not (= lambda!303671 lambda!303489))))

(declare-fun bs!1313808 () Bool)

(assert (= bs!1313808 (and b!5648950 d!1783751)))

(assert (=> bs!1313808 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) lt!2264217)) (= lambda!303671 lambda!303513))))

(declare-fun bs!1313809 () Bool)

(assert (= bs!1313809 (and b!5648950 b!5646415)))

(assert (=> bs!1313809 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) lt!2264217)) (= lambda!303671 lambda!303429))))

(assert (=> bs!1313809 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) lt!2264184)) (= lambda!303671 lambda!303427))))

(declare-fun bs!1313810 () Bool)

(assert (= bs!1313810 (and b!5648950 b!5647372)))

(assert (=> bs!1313810 (not (= lambda!303671 lambda!303521))))

(declare-fun bs!1313811 () Bool)

(assert (= bs!1313811 (and b!5648950 d!1784481)))

(assert (=> bs!1313811 (not (= lambda!303671 lambda!303655))))

(assert (=> bs!1313809 (not (= lambda!303671 lambda!303426))))

(assert (=> bs!1313809 (not (= lambda!303671 lambda!303428))))

(declare-fun bs!1313812 () Bool)

(assert (= bs!1313812 (and b!5648950 b!5647367)))

(assert (=> bs!1313812 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 lt!2264184))) (= lambda!303671 lambda!303522))))

(declare-fun bs!1313813 () Bool)

(assert (= bs!1313813 (and b!5648950 b!5648820)))

(assert (=> bs!1313813 (not (= lambda!303671 lambda!303659))))

(declare-fun bs!1313814 () Bool)

(assert (= bs!1313814 (and b!5648950 b!5647087)))

(assert (=> bs!1313814 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303671 lambda!303501))))

(declare-fun bs!1313815 () Bool)

(assert (= bs!1313815 (and b!5648950 d!1783759)))

(assert (=> bs!1313815 (not (= lambda!303671 lambda!303514))))

(declare-fun bs!1313816 () Bool)

(assert (= bs!1313816 (and b!5648950 b!5648918)))

(assert (=> bs!1313816 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regOne!31775 lt!2264184))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 (regOne!31775 lt!2264184)))) (= lambda!303671 lambda!303664))))

(declare-fun bs!1313817 () Bool)

(assert (= bs!1313817 (and b!5648950 b!5646420)))

(assert (=> bs!1313817 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303671 lambda!303424))))

(declare-fun bs!1313818 () Bool)

(assert (= bs!1313818 (and b!5648950 d!1783677)))

(assert (=> bs!1313818 (not (= lambda!303671 lambda!303494))))

(declare-fun bs!1313819 () Bool)

(assert (= bs!1313819 (and b!5648950 b!5648782)))

(assert (=> bs!1313819 (not (= lambda!303671 lambda!303657))))

(declare-fun bs!1313820 () Bool)

(assert (= bs!1313820 (and b!5648950 b!5647359)))

(assert (=> bs!1313820 (not (= lambda!303671 lambda!303518))))

(declare-fun bs!1313821 () Bool)

(assert (= bs!1313821 (and b!5648950 b!5647092)))

(assert (=> bs!1313821 (not (= lambda!303671 lambda!303500))))

(assert (=> bs!1313818 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303671 lambda!303495))))

(declare-fun bs!1313822 () Bool)

(assert (= bs!1313822 (and b!5648950 d!1784359)))

(assert (=> bs!1313822 (not (= lambda!303671 lambda!303630))))

(declare-fun bs!1313823 () Bool)

(assert (= bs!1313823 (and b!5648950 b!5648955)))

(assert (=> bs!1313823 (not (= lambda!303671 lambda!303670))))

(declare-fun bs!1313824 () Bool)

(assert (= bs!1313824 (and b!5648950 b!5648815)))

(assert (=> bs!1313824 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regTwo!31775 lt!2264184))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 (regTwo!31775 lt!2264184)))) (= lambda!303671 lambda!303660))))

(assert (=> bs!1313811 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303671 lambda!303656))))

(declare-fun bs!1313825 () Bool)

(assert (= bs!1313825 (and b!5648950 d!1783793)))

(assert (=> bs!1313825 (not (= lambda!303671 lambda!303523))))

(assert (=> bs!1313822 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) lt!2264184)) (= lambda!303671 lambda!303631))))

(assert (=> bs!1313825 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) lt!2264184)) (= lambda!303671 lambda!303524))))

(declare-fun bs!1313826 () Bool)

(assert (= bs!1313826 (and b!5648950 b!5648777)))

(assert (=> bs!1313826 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 (regTwo!31775 r!7292))) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303671 lambda!303658))))

(declare-fun bs!1313827 () Bool)

(assert (= bs!1313827 (and b!5648950 d!1783781)))

(assert (=> bs!1313827 (not (= lambda!303671 lambda!303520))))

(assert (=> bs!1313808 (not (= lambda!303671 lambda!303512))))

(assert (=> bs!1313817 (not (= lambda!303671 lambda!303423))))

(declare-fun bs!1313828 () Bool)

(assert (= bs!1313828 (and b!5648950 b!5647354)))

(assert (=> bs!1313828 (= (and (= (regOne!31774 (regTwo!31775 lt!2264222)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regTwo!31775 lt!2264222)) (regTwo!31774 lt!2264222))) (= lambda!303671 lambda!303519))))

(declare-fun bs!1313829 () Bool)

(assert (= bs!1313829 (and b!5648950 b!5648923)))

(assert (=> bs!1313829 (not (= lambda!303671 lambda!303663))))

(assert (=> b!5648950 true))

(assert (=> b!5648950 true))

(declare-fun b!5648945 () Bool)

(declare-fun e!3479810 () Bool)

(assert (=> b!5648945 (= e!3479810 (= s!2326 (Cons!63069 (c!992159 (regTwo!31775 lt!2264222)) Nil!63069)))))

(declare-fun b!5648946 () Bool)

(declare-fun res!2389403 () Bool)

(declare-fun e!3479811 () Bool)

(assert (=> b!5648946 (=> res!2389403 e!3479811)))

(declare-fun call!427309 () Bool)

(assert (=> b!5648946 (= res!2389403 call!427309)))

(declare-fun e!3479814 () Bool)

(assert (=> b!5648946 (= e!3479814 e!3479811)))

(declare-fun bm!427304 () Bool)

(assert (=> bm!427304 (= call!427309 (isEmpty!34917 s!2326))))

(declare-fun b!5648947 () Bool)

(declare-fun c!992896 () Bool)

(assert (=> b!5648947 (= c!992896 ((_ is ElementMatch!15631) (regTwo!31775 lt!2264222)))))

(declare-fun e!3479815 () Bool)

(assert (=> b!5648947 (= e!3479815 e!3479810)))

(declare-fun b!5648948 () Bool)

(declare-fun e!3479812 () Bool)

(declare-fun e!3479813 () Bool)

(assert (=> b!5648948 (= e!3479812 e!3479813)))

(declare-fun res!2389404 () Bool)

(assert (=> b!5648948 (= res!2389404 (matchRSpec!2734 (regOne!31775 (regTwo!31775 lt!2264222)) s!2326))))

(assert (=> b!5648948 (=> res!2389404 e!3479813)))

(declare-fun d!1784587 () Bool)

(declare-fun c!992895 () Bool)

(assert (=> d!1784587 (= c!992895 ((_ is EmptyExpr!15631) (regTwo!31775 lt!2264222)))))

(declare-fun e!3479816 () Bool)

(assert (=> d!1784587 (= (matchRSpec!2734 (regTwo!31775 lt!2264222) s!2326) e!3479816)))

(declare-fun b!5648949 () Bool)

(declare-fun c!992894 () Bool)

(assert (=> b!5648949 (= c!992894 ((_ is Union!15631) (regTwo!31775 lt!2264222)))))

(assert (=> b!5648949 (= e!3479810 e!3479812)))

(declare-fun call!427310 () Bool)

(declare-fun bm!427305 () Bool)

(declare-fun c!992893 () Bool)

(assert (=> bm!427305 (= call!427310 (Exists!2731 (ite c!992893 lambda!303670 lambda!303671)))))

(assert (=> b!5648950 (= e!3479814 call!427310)))

(declare-fun b!5648951 () Bool)

(assert (=> b!5648951 (= e!3479812 e!3479814)))

(assert (=> b!5648951 (= c!992893 ((_ is Star!15631) (regTwo!31775 lt!2264222)))))

(declare-fun b!5648952 () Bool)

(assert (=> b!5648952 (= e!3479816 call!427309)))

(declare-fun b!5648953 () Bool)

(assert (=> b!5648953 (= e!3479816 e!3479815)))

(declare-fun res!2389405 () Bool)

(assert (=> b!5648953 (= res!2389405 (not ((_ is EmptyLang!15631) (regTwo!31775 lt!2264222))))))

(assert (=> b!5648953 (=> (not res!2389405) (not e!3479815))))

(declare-fun b!5648954 () Bool)

(assert (=> b!5648954 (= e!3479813 (matchRSpec!2734 (regTwo!31775 (regTwo!31775 lt!2264222)) s!2326))))

(assert (=> b!5648955 (= e!3479811 call!427310)))

(assert (= (and d!1784587 c!992895) b!5648952))

(assert (= (and d!1784587 (not c!992895)) b!5648953))

(assert (= (and b!5648953 res!2389405) b!5648947))

(assert (= (and b!5648947 c!992896) b!5648945))

(assert (= (and b!5648947 (not c!992896)) b!5648949))

(assert (= (and b!5648949 c!992894) b!5648948))

(assert (= (and b!5648949 (not c!992894)) b!5648951))

(assert (= (and b!5648948 (not res!2389404)) b!5648954))

(assert (= (and b!5648951 c!992893) b!5648946))

(assert (= (and b!5648951 (not c!992893)) b!5648950))

(assert (= (and b!5648946 (not res!2389403)) b!5648955))

(assert (= (or b!5648955 b!5648950) bm!427305))

(assert (= (or b!5648952 b!5648946) bm!427304))

(assert (=> bm!427304 m!6614382))

(declare-fun m!6616304 () Bool)

(assert (=> b!5648948 m!6616304))

(declare-fun m!6616306 () Bool)

(assert (=> bm!427305 m!6616306))

(declare-fun m!6616308 () Bool)

(assert (=> b!5648954 m!6616308))

(assert (=> b!5647358 d!1784587))

(declare-fun d!1784589 () Bool)

(assert (=> d!1784589 (= (isEmpty!34913 (t!376490 (unfocusZipperList!1059 zl!343))) ((_ is Nil!63068) (t!376490 (unfocusZipperList!1059 zl!343))))))

(assert (=> b!5647405 d!1784589))

(assert (=> d!1783717 d!1784295))

(assert (=> d!1783693 d!1783695))

(declare-fun d!1784591 () Bool)

(assert (=> d!1784591 (= (flatMap!1244 z!1189 lambda!303425) (dynLambda!24674 lambda!303425 (h!69518 zl!343)))))

(assert (=> d!1784591 true))

(declare-fun _$13!2287 () Unit!156056)

(assert (=> d!1784591 (= (choose!42757 z!1189 (h!69518 zl!343) lambda!303425) _$13!2287)))

(declare-fun b_lambda!213727 () Bool)

(assert (=> (not b_lambda!213727) (not d!1784591)))

(declare-fun bs!1313830 () Bool)

(assert (= bs!1313830 d!1784591))

(assert (=> bs!1313830 m!6613776))

(assert (=> bs!1313830 m!6614416))

(assert (=> d!1783693 d!1784591))

(declare-fun bs!1313831 () Bool)

(declare-fun d!1784593 () Bool)

(assert (= bs!1313831 (and d!1784593 d!1783769)))

(declare-fun lambda!303672 () Int)

(assert (=> bs!1313831 (= lambda!303672 lambda!303516)))

(declare-fun bs!1313832 () Bool)

(assert (= bs!1313832 (and d!1784593 d!1783799)))

(assert (=> bs!1313832 (= lambda!303672 lambda!303527)))

(declare-fun bs!1313833 () Bool)

(assert (= bs!1313833 (and d!1784593 d!1783713)))

(assert (=> bs!1313833 (= lambda!303672 lambda!303504)))

(declare-fun bs!1313834 () Bool)

(assert (= bs!1313834 (and d!1784593 d!1783801)))

(assert (=> bs!1313834 (= lambda!303672 lambda!303530)))

(declare-fun bs!1313835 () Bool)

(assert (= bs!1313835 (and d!1784593 b!5648658)))

(assert (=> bs!1313835 (not (= lambda!303672 lambda!303637))))

(declare-fun bs!1313836 () Bool)

(assert (= bs!1313836 (and d!1784593 b!5648656)))

(assert (=> bs!1313836 (not (= lambda!303672 lambda!303636))))

(declare-fun bs!1313837 () Bool)

(assert (= bs!1313837 (and d!1784593 d!1784443)))

(assert (=> bs!1313837 (= lambda!303672 lambda!303653)))

(declare-fun bs!1313838 () Bool)

(assert (= bs!1313838 (and d!1784593 d!1783761)))

(assert (=> bs!1313838 (= lambda!303672 lambda!303515)))

(declare-fun bs!1313839 () Bool)

(assert (= bs!1313839 (and d!1784593 b!5648688)))

(assert (=> bs!1313839 (not (= lambda!303672 lambda!303648))))

(declare-fun bs!1313840 () Bool)

(assert (= bs!1313840 (and d!1784593 d!1784583)))

(assert (=> bs!1313840 (= lambda!303672 lambda!303668)))

(declare-fun bs!1313841 () Bool)

(assert (= bs!1313841 (and d!1784593 d!1784577)))

(assert (=> bs!1313841 (= lambda!303672 lambda!303667)))

(declare-fun bs!1313842 () Bool)

(assert (= bs!1313842 (and d!1784593 d!1783775)))

(assert (=> bs!1313842 (= lambda!303672 lambda!303517)))

(declare-fun bs!1313843 () Bool)

(assert (= bs!1313843 (and d!1784593 b!5648686)))

(assert (=> bs!1313843 (not (= lambda!303672 lambda!303647))))

(declare-fun bs!1313844 () Bool)

(assert (= bs!1313844 (and d!1784593 d!1783741)))

(assert (=> bs!1313844 (= lambda!303672 lambda!303511)))

(declare-fun bs!1313845 () Bool)

(assert (= bs!1313845 (and d!1784593 d!1784301)))

(assert (=> bs!1313845 (= lambda!303672 lambda!303621)))

(declare-fun bs!1313846 () Bool)

(assert (= bs!1313846 (and d!1784593 d!1783727)))

(assert (=> bs!1313846 (= lambda!303672 lambda!303505)))

(declare-fun bs!1313847 () Bool)

(assert (= bs!1313847 (and d!1784593 d!1784585)))

(assert (=> bs!1313847 (= lambda!303672 lambda!303669)))

(declare-fun b!5648956 () Bool)

(declare-fun e!3479822 () Bool)

(assert (=> b!5648956 (= e!3479822 (isEmpty!34913 (t!376490 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648957 () Bool)

(declare-fun e!3479818 () Regex!15631)

(assert (=> b!5648957 (= e!3479818 (Concat!24476 (h!69516 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))) (generalisedConcat!1246 (t!376490 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))))

(declare-fun e!3479821 () Bool)

(assert (=> d!1784593 e!3479821))

(declare-fun res!2389407 () Bool)

(assert (=> d!1784593 (=> (not res!2389407) (not e!3479821))))

(declare-fun lt!2264541 () Regex!15631)

(assert (=> d!1784593 (= res!2389407 (validRegex!7367 lt!2264541))))

(declare-fun e!3479819 () Regex!15631)

(assert (=> d!1784593 (= lt!2264541 e!3479819)))

(declare-fun c!992899 () Bool)

(assert (=> d!1784593 (= c!992899 e!3479822)))

(declare-fun res!2389406 () Bool)

(assert (=> d!1784593 (=> (not res!2389406) (not e!3479822))))

(assert (=> d!1784593 (= res!2389406 ((_ is Cons!63068) (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(assert (=> d!1784593 (forall!14788 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))) lambda!303672)))

(assert (=> d!1784593 (= (generalisedConcat!1246 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))) lt!2264541)))

(declare-fun b!5648958 () Bool)

(assert (=> b!5648958 (= e!3479819 (h!69516 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5648959 () Bool)

(assert (=> b!5648959 (= e!3479819 e!3479818)))

(declare-fun c!992898 () Bool)

(assert (=> b!5648959 (= c!992898 ((_ is Cons!63068) (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5648960 () Bool)

(assert (=> b!5648960 (= e!3479818 EmptyExpr!15631)))

(declare-fun b!5648961 () Bool)

(declare-fun e!3479817 () Bool)

(assert (=> b!5648961 (= e!3479817 (isEmptyExpr!1172 lt!2264541))))

(declare-fun b!5648962 () Bool)

(declare-fun e!3479820 () Bool)

(assert (=> b!5648962 (= e!3479817 e!3479820)))

(declare-fun c!992897 () Bool)

(assert (=> b!5648962 (= c!992897 (isEmpty!34913 (tail!11102 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648963 () Bool)

(assert (=> b!5648963 (= e!3479821 e!3479817)))

(declare-fun c!992900 () Bool)

(assert (=> b!5648963 (= c!992900 (isEmpty!34913 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5648964 () Bool)

(assert (=> b!5648964 (= e!3479820 (= lt!2264541 (head!12007 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))))))))

(declare-fun b!5648965 () Bool)

(assert (=> b!5648965 (= e!3479820 (isConcat!695 lt!2264541))))

(assert (= (and d!1784593 res!2389406) b!5648956))

(assert (= (and d!1784593 c!992899) b!5648958))

(assert (= (and d!1784593 (not c!992899)) b!5648959))

(assert (= (and b!5648959 c!992898) b!5648957))

(assert (= (and b!5648959 (not c!992898)) b!5648960))

(assert (= (and d!1784593 res!2389407) b!5648963))

(assert (= (and b!5648963 c!992900) b!5648961))

(assert (= (and b!5648963 (not c!992900)) b!5648962))

(assert (= (and b!5648962 c!992897) b!5648964))

(assert (= (and b!5648962 (not c!992897)) b!5648965))

(declare-fun m!6616310 () Bool)

(assert (=> b!5648962 m!6616310))

(assert (=> b!5648962 m!6616310))

(declare-fun m!6616312 () Bool)

(assert (=> b!5648962 m!6616312))

(assert (=> b!5648963 m!6614590))

(declare-fun m!6616314 () Bool)

(assert (=> b!5648957 m!6616314))

(declare-fun m!6616316 () Bool)

(assert (=> b!5648961 m!6616316))

(declare-fun m!6616318 () Bool)

(assert (=> b!5648964 m!6616318))

(declare-fun m!6616320 () Bool)

(assert (=> b!5648956 m!6616320))

(declare-fun m!6616322 () Bool)

(assert (=> d!1784593 m!6616322))

(declare-fun m!6616324 () Bool)

(assert (=> d!1784593 m!6616324))

(declare-fun m!6616326 () Bool)

(assert (=> b!5648965 m!6616326))

(assert (=> b!5647298 d!1784593))

(assert (=> d!1783755 d!1784413))

(declare-fun bm!427306 () Bool)

(declare-fun call!427313 () Bool)

(declare-fun call!427312 () Bool)

(assert (=> bm!427306 (= call!427313 call!427312)))

(declare-fun b!5648966 () Bool)

(declare-fun res!2389411 () Bool)

(declare-fun e!3479824 () Bool)

(assert (=> b!5648966 (=> (not res!2389411) (not e!3479824))))

(assert (=> b!5648966 (= res!2389411 call!427313)))

(declare-fun e!3479826 () Bool)

(assert (=> b!5648966 (= e!3479826 e!3479824)))

(declare-fun b!5648967 () Bool)

(declare-fun res!2389412 () Bool)

(declare-fun e!3479827 () Bool)

(assert (=> b!5648967 (=> res!2389412 e!3479827)))

(assert (=> b!5648967 (= res!2389412 (not ((_ is Concat!24476) lt!2264222)))))

(assert (=> b!5648967 (= e!3479826 e!3479827)))

(declare-fun bm!427307 () Bool)

(declare-fun call!427311 () Bool)

(declare-fun c!992902 () Bool)

(assert (=> bm!427307 (= call!427311 (validRegex!7367 (ite c!992902 (regTwo!31775 lt!2264222) (regTwo!31774 lt!2264222))))))

(declare-fun d!1784595 () Bool)

(declare-fun res!2389410 () Bool)

(declare-fun e!3479829 () Bool)

(assert (=> d!1784595 (=> res!2389410 e!3479829)))

(assert (=> d!1784595 (= res!2389410 ((_ is ElementMatch!15631) lt!2264222))))

(assert (=> d!1784595 (= (validRegex!7367 lt!2264222) e!3479829)))

(declare-fun b!5648968 () Bool)

(declare-fun e!3479823 () Bool)

(assert (=> b!5648968 (= e!3479823 e!3479826)))

(assert (=> b!5648968 (= c!992902 ((_ is Union!15631) lt!2264222))))

(declare-fun b!5648969 () Bool)

(assert (=> b!5648969 (= e!3479829 e!3479823)))

(declare-fun c!992901 () Bool)

(assert (=> b!5648969 (= c!992901 ((_ is Star!15631) lt!2264222))))

(declare-fun bm!427308 () Bool)

(assert (=> bm!427308 (= call!427312 (validRegex!7367 (ite c!992901 (reg!15960 lt!2264222) (ite c!992902 (regOne!31775 lt!2264222) (regOne!31774 lt!2264222)))))))

(declare-fun b!5648970 () Bool)

(declare-fun e!3479828 () Bool)

(assert (=> b!5648970 (= e!3479828 call!427312)))

(declare-fun b!5648971 () Bool)

(declare-fun e!3479825 () Bool)

(assert (=> b!5648971 (= e!3479825 call!427311)))

(declare-fun b!5648972 () Bool)

(assert (=> b!5648972 (= e!3479827 e!3479825)))

(declare-fun res!2389409 () Bool)

(assert (=> b!5648972 (=> (not res!2389409) (not e!3479825))))

(assert (=> b!5648972 (= res!2389409 call!427313)))

(declare-fun b!5648973 () Bool)

(assert (=> b!5648973 (= e!3479824 call!427311)))

(declare-fun b!5648974 () Bool)

(assert (=> b!5648974 (= e!3479823 e!3479828)))

(declare-fun res!2389408 () Bool)

(assert (=> b!5648974 (= res!2389408 (not (nullable!5663 (reg!15960 lt!2264222))))))

(assert (=> b!5648974 (=> (not res!2389408) (not e!3479828))))

(assert (= (and d!1784595 (not res!2389410)) b!5648969))

(assert (= (and b!5648969 c!992901) b!5648974))

(assert (= (and b!5648969 (not c!992901)) b!5648968))

(assert (= (and b!5648974 res!2389408) b!5648970))

(assert (= (and b!5648968 c!992902) b!5648966))

(assert (= (and b!5648968 (not c!992902)) b!5648967))

(assert (= (and b!5648966 res!2389411) b!5648973))

(assert (= (and b!5648967 (not res!2389412)) b!5648972))

(assert (= (and b!5648972 res!2389409) b!5648971))

(assert (= (or b!5648973 b!5648971) bm!427307))

(assert (= (or b!5648966 b!5648972) bm!427306))

(assert (= (or b!5648970 bm!427306) bm!427308))

(declare-fun m!6616328 () Bool)

(assert (=> bm!427307 m!6616328))

(declare-fun m!6616330 () Bool)

(assert (=> bm!427308 m!6616330))

(declare-fun m!6616332 () Bool)

(assert (=> b!5648974 m!6616332))

(assert (=> d!1783755 d!1784595))

(assert (=> b!5647280 d!1784571))

(assert (=> b!5647280 d!1784469))

(declare-fun c!992907 () Bool)

(declare-fun c!992904 () Bool)

(declare-fun bm!427309 () Bool)

(declare-fun call!427317 () List!63192)

(assert (=> bm!427309 (= call!427317 ($colon$colon!1681 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))) (ite (or c!992907 c!992904) (regTwo!31774 (h!69516 (exprs!5515 lt!2264194))) (h!69516 (exprs!5515 lt!2264194)))))))

(declare-fun bm!427310 () Bool)

(declare-fun call!427318 () List!63192)

(assert (=> bm!427310 (= call!427318 call!427317)))

(declare-fun b!5648975 () Bool)

(declare-fun e!3479835 () (InoxSet Context!10030))

(assert (=> b!5648975 (= e!3479835 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5648976 () Bool)

(declare-fun e!3479831 () (InoxSet Context!10030))

(declare-fun call!427316 () (InoxSet Context!10030))

(assert (=> b!5648976 (= e!3479831 call!427316)))

(declare-fun d!1784597 () Bool)

(declare-fun c!992905 () Bool)

(assert (=> d!1784597 (= c!992905 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 lt!2264194))) (= (c!992159 (h!69516 (exprs!5515 lt!2264194))) (h!69517 s!2326))))))

(declare-fun e!3479832 () (InoxSet Context!10030))

(assert (=> d!1784597 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 lt!2264194)) (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (h!69517 s!2326)) e!3479832)))

(declare-fun call!427314 () (InoxSet Context!10030))

(declare-fun c!992906 () Bool)

(declare-fun bm!427311 () Bool)

(assert (=> bm!427311 (= call!427314 (derivationStepZipperDown!973 (ite c!992906 (regOne!31775 (h!69516 (exprs!5515 lt!2264194))) (regOne!31774 (h!69516 (exprs!5515 lt!2264194)))) (ite c!992906 (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (Context!10031 call!427317)) (h!69517 s!2326)))))

(declare-fun b!5648977 () Bool)

(declare-fun e!3479833 () (InoxSet Context!10030))

(assert (=> b!5648977 (= e!3479832 e!3479833)))

(assert (=> b!5648977 (= c!992906 ((_ is Union!15631) (h!69516 (exprs!5515 lt!2264194))))))

(declare-fun b!5648978 () Bool)

(declare-fun call!427315 () (InoxSet Context!10030))

(assert (=> b!5648978 (= e!3479833 ((_ map or) call!427314 call!427315))))

(declare-fun b!5648979 () Bool)

(declare-fun e!3479830 () (InoxSet Context!10030))

(declare-fun call!427319 () (InoxSet Context!10030))

(assert (=> b!5648979 (= e!3479830 ((_ map or) call!427314 call!427319))))

(declare-fun b!5648980 () Bool)

(assert (=> b!5648980 (= e!3479832 (store ((as const (Array Context!10030 Bool)) false) (Context!10031 (t!376490 (exprs!5515 lt!2264194))) true))))

(declare-fun b!5648981 () Bool)

(declare-fun e!3479834 () Bool)

(assert (=> b!5648981 (= e!3479834 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 lt!2264194)))))))

(declare-fun b!5648982 () Bool)

(declare-fun c!992903 () Bool)

(assert (=> b!5648982 (= c!992903 ((_ is Star!15631) (h!69516 (exprs!5515 lt!2264194))))))

(assert (=> b!5648982 (= e!3479831 e!3479835)))

(declare-fun b!5648983 () Bool)

(assert (=> b!5648983 (= e!3479835 call!427316)))

(declare-fun b!5648984 () Bool)

(assert (=> b!5648984 (= e!3479830 e!3479831)))

(assert (=> b!5648984 (= c!992904 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264194))))))

(declare-fun bm!427312 () Bool)

(assert (=> bm!427312 (= call!427316 call!427319)))

(declare-fun bm!427313 () Bool)

(assert (=> bm!427313 (= call!427319 call!427315)))

(declare-fun b!5648985 () Bool)

(assert (=> b!5648985 (= c!992907 e!3479834)))

(declare-fun res!2389413 () Bool)

(assert (=> b!5648985 (=> (not res!2389413) (not e!3479834))))

(assert (=> b!5648985 (= res!2389413 ((_ is Concat!24476) (h!69516 (exprs!5515 lt!2264194))))))

(assert (=> b!5648985 (= e!3479833 e!3479830)))

(declare-fun bm!427314 () Bool)

(assert (=> bm!427314 (= call!427315 (derivationStepZipperDown!973 (ite c!992906 (regTwo!31775 (h!69516 (exprs!5515 lt!2264194))) (ite c!992907 (regTwo!31774 (h!69516 (exprs!5515 lt!2264194))) (ite c!992904 (regOne!31774 (h!69516 (exprs!5515 lt!2264194))) (reg!15960 (h!69516 (exprs!5515 lt!2264194)))))) (ite (or c!992906 c!992907) (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (Context!10031 call!427318)) (h!69517 s!2326)))))

(assert (= (and d!1784597 c!992905) b!5648980))

(assert (= (and d!1784597 (not c!992905)) b!5648977))

(assert (= (and b!5648977 c!992906) b!5648978))

(assert (= (and b!5648977 (not c!992906)) b!5648985))

(assert (= (and b!5648985 res!2389413) b!5648981))

(assert (= (and b!5648985 c!992907) b!5648979))

(assert (= (and b!5648985 (not c!992907)) b!5648984))

(assert (= (and b!5648984 c!992904) b!5648976))

(assert (= (and b!5648984 (not c!992904)) b!5648982))

(assert (= (and b!5648982 c!992903) b!5648983))

(assert (= (and b!5648982 (not c!992903)) b!5648975))

(assert (= (or b!5648976 b!5648983) bm!427310))

(assert (= (or b!5648976 b!5648983) bm!427312))

(assert (= (or b!5648979 bm!427310) bm!427309))

(assert (= (or b!5648979 bm!427312) bm!427313))

(assert (= (or b!5648978 bm!427313) bm!427314))

(assert (= (or b!5648978 b!5648979) bm!427311))

(declare-fun m!6616334 () Bool)

(assert (=> bm!427309 m!6616334))

(declare-fun m!6616336 () Bool)

(assert (=> b!5648981 m!6616336))

(declare-fun m!6616338 () Bool)

(assert (=> bm!427311 m!6616338))

(declare-fun m!6616340 () Bool)

(assert (=> bm!427314 m!6616340))

(declare-fun m!6616342 () Bool)

(assert (=> b!5648980 m!6616342))

(assert (=> bm!427021 d!1784597))

(assert (=> b!5647141 d!1783711))

(declare-fun d!1784599 () Bool)

(declare-fun lt!2264542 () Int)

(assert (=> d!1784599 (>= lt!2264542 0)))

(declare-fun e!3479836 () Int)

(assert (=> d!1784599 (= lt!2264542 e!3479836)))

(declare-fun c!992908 () Bool)

(assert (=> d!1784599 (= c!992908 ((_ is Cons!63070) (t!376492 zl!343)))))

(assert (=> d!1784599 (= (zipperDepthTotal!240 (t!376492 zl!343)) lt!2264542)))

(declare-fun b!5648986 () Bool)

(assert (=> b!5648986 (= e!3479836 (+ (contextDepthTotal!216 (h!69518 (t!376492 zl!343))) (zipperDepthTotal!240 (t!376492 (t!376492 zl!343)))))))

(declare-fun b!5648987 () Bool)

(assert (=> b!5648987 (= e!3479836 0)))

(assert (= (and d!1784599 c!992908) b!5648986))

(assert (= (and d!1784599 (not c!992908)) b!5648987))

(declare-fun m!6616344 () Bool)

(assert (=> b!5648986 m!6616344))

(declare-fun m!6616346 () Bool)

(assert (=> b!5648986 m!6616346))

(assert (=> b!5647141 d!1784599))

(declare-fun b!5648989 () Bool)

(declare-fun e!3479838 () List!63193)

(assert (=> b!5648989 (= e!3479838 (Cons!63069 (h!69517 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))) (++!13847 (t!376491 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))) (t!376491 s!2326))))))

(declare-fun b!5648990 () Bool)

(declare-fun res!2389415 () Bool)

(declare-fun e!3479837 () Bool)

(assert (=> b!5648990 (=> (not res!2389415) (not e!3479837))))

(declare-fun lt!2264543 () List!63193)

(assert (=> b!5648990 (= res!2389415 (= (size!39985 lt!2264543) (+ (size!39985 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))) (size!39985 (t!376491 s!2326)))))))

(declare-fun d!1784601 () Bool)

(assert (=> d!1784601 e!3479837))

(declare-fun res!2389414 () Bool)

(assert (=> d!1784601 (=> (not res!2389414) (not e!3479837))))

(assert (=> d!1784601 (= res!2389414 (= (content!11413 lt!2264543) ((_ map or) (content!11413 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))) (content!11413 (t!376491 s!2326)))))))

(assert (=> d!1784601 (= lt!2264543 e!3479838)))

(declare-fun c!992909 () Bool)

(assert (=> d!1784601 (= c!992909 ((_ is Nil!63069) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))))))

(assert (=> d!1784601 (= (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326)) lt!2264543)))

(declare-fun b!5648991 () Bool)

(assert (=> b!5648991 (= e!3479837 (or (not (= (t!376491 s!2326) Nil!63069)) (= lt!2264543 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)))))))

(declare-fun b!5648988 () Bool)

(assert (=> b!5648988 (= e!3479838 (t!376491 s!2326))))

(assert (= (and d!1784601 c!992909) b!5648988))

(assert (= (and d!1784601 (not c!992909)) b!5648989))

(assert (= (and d!1784601 res!2389414) b!5648990))

(assert (= (and b!5648990 res!2389415) b!5648991))

(declare-fun m!6616348 () Bool)

(assert (=> b!5648989 m!6616348))

(declare-fun m!6616350 () Bool)

(assert (=> b!5648990 m!6616350))

(assert (=> b!5648990 m!6614354))

(declare-fun m!6616352 () Bool)

(assert (=> b!5648990 m!6616352))

(declare-fun m!6616354 () Bool)

(assert (=> b!5648990 m!6616354))

(declare-fun m!6616356 () Bool)

(assert (=> d!1784601 m!6616356))

(assert (=> d!1784601 m!6614354))

(declare-fun m!6616358 () Bool)

(assert (=> d!1784601 m!6616358))

(declare-fun m!6616360 () Bool)

(assert (=> d!1784601 m!6616360))

(assert (=> b!5647312 d!1784601))

(declare-fun b!5648993 () Bool)

(declare-fun e!3479840 () List!63193)

(assert (=> b!5648993 (= e!3479840 (Cons!63069 (h!69517 Nil!63069) (++!13847 (t!376491 Nil!63069) (Cons!63069 (h!69517 s!2326) Nil!63069))))))

(declare-fun b!5648994 () Bool)

(declare-fun res!2389417 () Bool)

(declare-fun e!3479839 () Bool)

(assert (=> b!5648994 (=> (not res!2389417) (not e!3479839))))

(declare-fun lt!2264544 () List!63193)

(assert (=> b!5648994 (= res!2389417 (= (size!39985 lt!2264544) (+ (size!39985 Nil!63069) (size!39985 (Cons!63069 (h!69517 s!2326) Nil!63069)))))))

(declare-fun d!1784603 () Bool)

(assert (=> d!1784603 e!3479839))

(declare-fun res!2389416 () Bool)

(assert (=> d!1784603 (=> (not res!2389416) (not e!3479839))))

(assert (=> d!1784603 (= res!2389416 (= (content!11413 lt!2264544) ((_ map or) (content!11413 Nil!63069) (content!11413 (Cons!63069 (h!69517 s!2326) Nil!63069)))))))

(assert (=> d!1784603 (= lt!2264544 e!3479840)))

(declare-fun c!992910 () Bool)

(assert (=> d!1784603 (= c!992910 ((_ is Nil!63069) Nil!63069))))

(assert (=> d!1784603 (= (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) lt!2264544)))

(declare-fun b!5648995 () Bool)

(assert (=> b!5648995 (= e!3479839 (or (not (= (Cons!63069 (h!69517 s!2326) Nil!63069) Nil!63069)) (= lt!2264544 Nil!63069)))))

(declare-fun b!5648992 () Bool)

(assert (=> b!5648992 (= e!3479840 (Cons!63069 (h!69517 s!2326) Nil!63069))))

(assert (= (and d!1784603 c!992910) b!5648992))

(assert (= (and d!1784603 (not c!992910)) b!5648993))

(assert (= (and d!1784603 res!2389416) b!5648994))

(assert (= (and b!5648994 res!2389417) b!5648995))

(declare-fun m!6616362 () Bool)

(assert (=> b!5648993 m!6616362))

(declare-fun m!6616364 () Bool)

(assert (=> b!5648994 m!6616364))

(declare-fun m!6616366 () Bool)

(assert (=> b!5648994 m!6616366))

(declare-fun m!6616368 () Bool)

(assert (=> b!5648994 m!6616368))

(declare-fun m!6616370 () Bool)

(assert (=> d!1784603 m!6616370))

(declare-fun m!6616372 () Bool)

(assert (=> d!1784603 m!6616372))

(declare-fun m!6616374 () Bool)

(assert (=> d!1784603 m!6616374))

(assert (=> b!5647312 d!1784603))

(declare-fun d!1784605 () Bool)

(assert (=> d!1784605 (= (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326)) s!2326)))

(declare-fun lt!2264547 () Unit!156056)

(declare-fun choose!42767 (List!63193 C!31532 List!63193 List!63193) Unit!156056)

(assert (=> d!1784605 (= lt!2264547 (choose!42767 Nil!63069 (h!69517 s!2326) (t!376491 s!2326) s!2326))))

(assert (=> d!1784605 (= (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) (t!376491 s!2326))) s!2326)))

(assert (=> d!1784605 (= (lemmaMoveElementToOtherListKeepsConcatEq!2016 Nil!63069 (h!69517 s!2326) (t!376491 s!2326) s!2326) lt!2264547)))

(declare-fun bs!1313848 () Bool)

(assert (= bs!1313848 d!1784605))

(assert (=> bs!1313848 m!6614354))

(assert (=> bs!1313848 m!6614354))

(assert (=> bs!1313848 m!6614356))

(declare-fun m!6616376 () Bool)

(assert (=> bs!1313848 m!6616376))

(declare-fun m!6616378 () Bool)

(assert (=> bs!1313848 m!6616378))

(assert (=> b!5647312 d!1784605))

(declare-fun b!5648996 () Bool)

(declare-fun e!3479845 () Bool)

(assert (=> b!5648996 (= e!3479845 (matchR!7816 lt!2264217 (t!376491 s!2326)))))

(declare-fun b!5648997 () Bool)

(declare-fun e!3479843 () Option!15640)

(assert (=> b!5648997 (= e!3479843 None!15639)))

(declare-fun d!1784607 () Bool)

(declare-fun e!3479842 () Bool)

(assert (=> d!1784607 e!3479842))

(declare-fun res!2389420 () Bool)

(assert (=> d!1784607 (=> res!2389420 e!3479842)))

(declare-fun e!3479841 () Bool)

(assert (=> d!1784607 (= res!2389420 e!3479841)))

(declare-fun res!2389418 () Bool)

(assert (=> d!1784607 (=> (not res!2389418) (not e!3479841))))

(declare-fun lt!2264549 () Option!15640)

(assert (=> d!1784607 (= res!2389418 (isDefined!12343 lt!2264549))))

(declare-fun e!3479844 () Option!15640)

(assert (=> d!1784607 (= lt!2264549 e!3479844)))

(declare-fun c!992912 () Bool)

(assert (=> d!1784607 (= c!992912 e!3479845)))

(declare-fun res!2389419 () Bool)

(assert (=> d!1784607 (=> (not res!2389419) (not e!3479845))))

(assert (=> d!1784607 (= res!2389419 (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))))))

(assert (=> d!1784607 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784607 (= (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326) lt!2264549)))

(declare-fun b!5648998 () Bool)

(assert (=> b!5648998 (= e!3479844 (Some!15639 (tuple2!65457 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326))))))

(declare-fun b!5648999 () Bool)

(declare-fun res!2389422 () Bool)

(assert (=> b!5648999 (=> (not res!2389422) (not e!3479841))))

(assert (=> b!5648999 (= res!2389422 (matchR!7816 lt!2264217 (_2!36031 (get!21730 lt!2264549))))))

(declare-fun b!5649000 () Bool)

(assert (=> b!5649000 (= e!3479842 (not (isDefined!12343 lt!2264549)))))

(declare-fun b!5649001 () Bool)

(declare-fun lt!2264550 () Unit!156056)

(declare-fun lt!2264548 () Unit!156056)

(assert (=> b!5649001 (= lt!2264550 lt!2264548)))

(assert (=> b!5649001 (= (++!13847 (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326))) s!2326)))

(assert (=> b!5649001 (= lt!2264548 (lemmaMoveElementToOtherListKeepsConcatEq!2016 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (h!69517 (t!376491 s!2326)) (t!376491 (t!376491 s!2326)) s!2326))))

(assert (=> b!5649001 (= e!3479843 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326)) s!2326))))

(declare-fun b!5649002 () Bool)

(assert (=> b!5649002 (= e!3479844 e!3479843)))

(declare-fun c!992911 () Bool)

(assert (=> b!5649002 (= c!992911 ((_ is Nil!63069) (t!376491 s!2326)))))

(declare-fun b!5649003 () Bool)

(assert (=> b!5649003 (= e!3479841 (= (++!13847 (_1!36031 (get!21730 lt!2264549)) (_2!36031 (get!21730 lt!2264549))) s!2326))))

(declare-fun b!5649004 () Bool)

(declare-fun res!2389421 () Bool)

(assert (=> b!5649004 (=> (not res!2389421) (not e!3479841))))

(assert (=> b!5649004 (= res!2389421 (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264549))))))

(assert (= (and d!1784607 res!2389419) b!5648996))

(assert (= (and d!1784607 c!992912) b!5648998))

(assert (= (and d!1784607 (not c!992912)) b!5649002))

(assert (= (and b!5649002 c!992911) b!5648997))

(assert (= (and b!5649002 (not c!992911)) b!5649001))

(assert (= (and d!1784607 res!2389418) b!5649004))

(assert (= (and b!5649004 res!2389421) b!5648999))

(assert (= (and b!5648999 res!2389422) b!5649003))

(assert (= (and d!1784607 (not res!2389420)) b!5649000))

(declare-fun m!6616380 () Bool)

(assert (=> b!5649000 m!6616380))

(declare-fun m!6616382 () Bool)

(assert (=> b!5648996 m!6616382))

(declare-fun m!6616384 () Bool)

(assert (=> b!5649003 m!6616384))

(declare-fun m!6616386 () Bool)

(assert (=> b!5649003 m!6616386))

(assert (=> d!1784607 m!6616380))

(assert (=> d!1784607 m!6614354))

(declare-fun m!6616388 () Bool)

(assert (=> d!1784607 m!6616388))

(assert (=> d!1784607 m!6614560))

(assert (=> b!5649001 m!6614354))

(declare-fun m!6616390 () Bool)

(assert (=> b!5649001 m!6616390))

(assert (=> b!5649001 m!6616390))

(declare-fun m!6616392 () Bool)

(assert (=> b!5649001 m!6616392))

(assert (=> b!5649001 m!6614354))

(declare-fun m!6616394 () Bool)

(assert (=> b!5649001 m!6616394))

(assert (=> b!5649001 m!6616390))

(declare-fun m!6616396 () Bool)

(assert (=> b!5649001 m!6616396))

(assert (=> b!5648999 m!6616384))

(declare-fun m!6616398 () Bool)

(assert (=> b!5648999 m!6616398))

(assert (=> b!5649004 m!6616384))

(declare-fun m!6616400 () Bool)

(assert (=> b!5649004 m!6616400))

(assert (=> b!5647312 d!1784607))

(declare-fun d!1784609 () Bool)

(declare-fun c!992913 () Bool)

(assert (=> d!1784609 (= c!992913 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479846 () Bool)

(assert (=> d!1784609 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264227 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479846)))

(declare-fun b!5649005 () Bool)

(assert (=> b!5649005 (= e!3479846 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264227 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649006 () Bool)

(assert (=> b!5649006 (= e!3479846 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264227 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784609 c!992913) b!5649005))

(assert (= (and d!1784609 (not c!992913)) b!5649006))

(assert (=> d!1784609 m!6614310))

(assert (=> d!1784609 m!6615792))

(assert (=> b!5649005 m!6614478))

(declare-fun m!6616402 () Bool)

(assert (=> b!5649005 m!6616402))

(assert (=> b!5649006 m!6614310))

(assert (=> b!5649006 m!6615796))

(assert (=> b!5649006 m!6614478))

(assert (=> b!5649006 m!6615796))

(declare-fun m!6616404 () Bool)

(assert (=> b!5649006 m!6616404))

(assert (=> b!5649006 m!6614310))

(assert (=> b!5649006 m!6615800))

(assert (=> b!5649006 m!6616404))

(assert (=> b!5649006 m!6615800))

(declare-fun m!6616406 () Bool)

(assert (=> b!5649006 m!6616406))

(assert (=> b!5647206 d!1784609))

(declare-fun bs!1313849 () Bool)

(declare-fun d!1784611 () Bool)

(assert (= bs!1313849 (and d!1784611 b!5646443)))

(declare-fun lambda!303673 () Int)

(assert (=> bs!1313849 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303673 lambda!303425))))

(declare-fun bs!1313850 () Bool)

(assert (= bs!1313850 (and d!1784611 d!1784467)))

(assert (=> bs!1313850 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303673 lambda!303654))))

(declare-fun bs!1313851 () Bool)

(assert (= bs!1313851 (and d!1784611 d!1784575)))

(assert (=> bs!1313851 (= lambda!303673 lambda!303666)))

(declare-fun bs!1313852 () Bool)

(assert (= bs!1313852 (and d!1784611 d!1784323)))

(assert (=> bs!1313852 (= lambda!303673 lambda!303624)))

(declare-fun bs!1313853 () Bool)

(assert (= bs!1313853 (and d!1784611 d!1783813)))

(assert (=> bs!1313853 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303673 lambda!303543))))

(declare-fun bs!1313854 () Bool)

(assert (= bs!1313854 (and d!1784611 d!1783735)))

(assert (=> bs!1313854 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303673 lambda!303508))))

(assert (=> d!1784611 true))

(assert (=> d!1784611 (= (derivationStepZipper!1718 lt!2264227 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264227 lambda!303673))))

(declare-fun bs!1313855 () Bool)

(assert (= bs!1313855 d!1784611))

(declare-fun m!6616408 () Bool)

(assert (=> bs!1313855 m!6616408))

(assert (=> b!5647206 d!1784611))

(assert (=> b!5647206 d!1784325))

(assert (=> b!5647206 d!1784327))

(declare-fun bs!1313856 () Bool)

(declare-fun b!5649017 () Bool)

(assert (= bs!1313856 (and b!5649017 d!1783675)))

(declare-fun lambda!303674 () Int)

(assert (=> bs!1313856 (not (= lambda!303674 lambda!303489))))

(declare-fun bs!1313857 () Bool)

(assert (= bs!1313857 (and b!5649017 d!1783751)))

(assert (=> bs!1313857 (not (= lambda!303674 lambda!303513))))

(declare-fun bs!1313858 () Bool)

(assert (= bs!1313858 (and b!5649017 b!5646415)))

(assert (=> bs!1313858 (not (= lambda!303674 lambda!303429))))

(assert (=> bs!1313858 (not (= lambda!303674 lambda!303427))))

(declare-fun bs!1313859 () Bool)

(assert (= bs!1313859 (and b!5649017 b!5647372)))

(assert (=> bs!1313859 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 lt!2264184)) (= (regOne!31775 r!7292) lt!2264184)) (= lambda!303674 lambda!303521))))

(declare-fun bs!1313860 () Bool)

(assert (= bs!1313860 (and b!5649017 d!1784481)))

(assert (=> bs!1313860 (not (= lambda!303674 lambda!303655))))

(assert (=> bs!1313858 (not (= lambda!303674 lambda!303426))))

(assert (=> bs!1313858 (not (= lambda!303674 lambda!303428))))

(declare-fun bs!1313861 () Bool)

(assert (= bs!1313861 (and b!5649017 b!5647367)))

(assert (=> bs!1313861 (not (= lambda!303674 lambda!303522))))

(declare-fun bs!1313862 () Bool)

(assert (= bs!1313862 (and b!5649017 b!5648820)))

(assert (=> bs!1313862 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 (regTwo!31775 lt!2264184))) (= (regOne!31775 r!7292) (regTwo!31775 lt!2264184))) (= lambda!303674 lambda!303659))))

(declare-fun bs!1313863 () Bool)

(assert (= bs!1313863 (and b!5649017 b!5647087)))

(assert (=> bs!1313863 (not (= lambda!303674 lambda!303501))))

(declare-fun bs!1313864 () Bool)

(assert (= bs!1313864 (and b!5649017 b!5648918)))

(assert (=> bs!1313864 (not (= lambda!303674 lambda!303664))))

(declare-fun bs!1313865 () Bool)

(assert (= bs!1313865 (and b!5649017 b!5646420)))

(assert (=> bs!1313865 (not (= lambda!303674 lambda!303424))))

(declare-fun bs!1313866 () Bool)

(assert (= bs!1313866 (and b!5649017 d!1783677)))

(assert (=> bs!1313866 (not (= lambda!303674 lambda!303494))))

(declare-fun bs!1313867 () Bool)

(assert (= bs!1313867 (and b!5649017 b!5648782)))

(assert (=> bs!1313867 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 (regTwo!31775 r!7292))) (= (regOne!31775 r!7292) (regTwo!31775 r!7292))) (= lambda!303674 lambda!303657))))

(declare-fun bs!1313868 () Bool)

(assert (= bs!1313868 (and b!5649017 b!5647359)))

(assert (=> bs!1313868 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 lt!2264222)) (= (regOne!31775 r!7292) lt!2264222)) (= lambda!303674 lambda!303518))))

(declare-fun bs!1313869 () Bool)

(assert (= bs!1313869 (and b!5649017 b!5647092)))

(assert (=> bs!1313869 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 r!7292)) (= (regOne!31775 r!7292) r!7292)) (= lambda!303674 lambda!303500))))

(assert (=> bs!1313866 (not (= lambda!303674 lambda!303495))))

(declare-fun bs!1313870 () Bool)

(assert (= bs!1313870 (and b!5649017 d!1784359)))

(assert (=> bs!1313870 (not (= lambda!303674 lambda!303630))))

(declare-fun bs!1313871 () Bool)

(assert (= bs!1313871 (and b!5649017 b!5648955)))

(assert (=> bs!1313871 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 (regTwo!31775 lt!2264222))) (= (regOne!31775 r!7292) (regTwo!31775 lt!2264222))) (= lambda!303674 lambda!303670))))

(declare-fun bs!1313872 () Bool)

(assert (= bs!1313872 (and b!5649017 b!5648815)))

(assert (=> bs!1313872 (not (= lambda!303674 lambda!303660))))

(assert (=> bs!1313860 (not (= lambda!303674 lambda!303656))))

(declare-fun bs!1313873 () Bool)

(assert (= bs!1313873 (and b!5649017 d!1783793)))

(assert (=> bs!1313873 (not (= lambda!303674 lambda!303523))))

(assert (=> bs!1313870 (not (= lambda!303674 lambda!303631))))

(assert (=> bs!1313873 (not (= lambda!303674 lambda!303524))))

(declare-fun bs!1313874 () Bool)

(assert (= bs!1313874 (and b!5649017 b!5648777)))

(assert (=> bs!1313874 (not (= lambda!303674 lambda!303658))))

(declare-fun bs!1313875 () Bool)

(assert (= bs!1313875 (and b!5649017 d!1783781)))

(assert (=> bs!1313875 (not (= lambda!303674 lambda!303520))))

(assert (=> bs!1313857 (not (= lambda!303674 lambda!303512))))

(assert (=> bs!1313865 (not (= lambda!303674 lambda!303423))))

(declare-fun bs!1313876 () Bool)

(assert (= bs!1313876 (and b!5649017 b!5647354)))

(assert (=> bs!1313876 (not (= lambda!303674 lambda!303519))))

(declare-fun bs!1313877 () Bool)

(assert (= bs!1313877 (and b!5649017 b!5648923)))

(assert (=> bs!1313877 (= (and (= (reg!15960 (regOne!31775 r!7292)) (reg!15960 (regOne!31775 lt!2264184))) (= (regOne!31775 r!7292) (regOne!31775 lt!2264184))) (= lambda!303674 lambda!303663))))

(declare-fun bs!1313878 () Bool)

(assert (= bs!1313878 (and b!5649017 b!5648950)))

(assert (=> bs!1313878 (not (= lambda!303674 lambda!303671))))

(declare-fun bs!1313879 () Bool)

(assert (= bs!1313879 (and b!5649017 d!1783759)))

(assert (=> bs!1313879 (not (= lambda!303674 lambda!303514))))

(assert (=> b!5649017 true))

(assert (=> b!5649017 true))

(declare-fun bs!1313880 () Bool)

(declare-fun b!5649012 () Bool)

(assert (= bs!1313880 (and b!5649012 d!1783675)))

(declare-fun lambda!303675 () Int)

(assert (=> bs!1313880 (not (= lambda!303675 lambda!303489))))

(declare-fun bs!1313881 () Bool)

(assert (= bs!1313881 (and b!5649012 d!1783751)))

(assert (=> bs!1313881 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) lt!2264217)) (= lambda!303675 lambda!303513))))

(declare-fun bs!1313882 () Bool)

(assert (= bs!1313882 (and b!5649012 b!5646415)))

(assert (=> bs!1313882 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) lt!2264217)) (= lambda!303675 lambda!303429))))

(assert (=> bs!1313882 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) lt!2264184)) (= lambda!303675 lambda!303427))))

(declare-fun bs!1313883 () Bool)

(assert (= bs!1313883 (and b!5649012 b!5647372)))

(assert (=> bs!1313883 (not (= lambda!303675 lambda!303521))))

(declare-fun bs!1313884 () Bool)

(assert (= bs!1313884 (and b!5649012 d!1784481)))

(assert (=> bs!1313884 (not (= lambda!303675 lambda!303655))))

(assert (=> bs!1313882 (not (= lambda!303675 lambda!303426))))

(assert (=> bs!1313882 (not (= lambda!303675 lambda!303428))))

(declare-fun bs!1313885 () Bool)

(assert (= bs!1313885 (and b!5649012 b!5647367)))

(assert (=> bs!1313885 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 lt!2264184))) (= lambda!303675 lambda!303522))))

(declare-fun bs!1313886 () Bool)

(assert (= bs!1313886 (and b!5649012 b!5648820)))

(assert (=> bs!1313886 (not (= lambda!303675 lambda!303659))))

(declare-fun bs!1313887 () Bool)

(assert (= bs!1313887 (and b!5649012 b!5647087)))

(assert (=> bs!1313887 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303675 lambda!303501))))

(declare-fun bs!1313888 () Bool)

(assert (= bs!1313888 (and b!5649012 b!5648918)))

(assert (=> bs!1313888 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regOne!31775 lt!2264184))) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 (regOne!31775 lt!2264184)))) (= lambda!303675 lambda!303664))))

(declare-fun bs!1313889 () Bool)

(assert (= bs!1313889 (and b!5649012 b!5646420)))

(assert (=> bs!1313889 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303675 lambda!303424))))

(declare-fun bs!1313890 () Bool)

(assert (= bs!1313890 (and b!5649012 d!1783677)))

(assert (=> bs!1313890 (not (= lambda!303675 lambda!303494))))

(declare-fun bs!1313891 () Bool)

(assert (= bs!1313891 (and b!5649012 b!5648782)))

(assert (=> bs!1313891 (not (= lambda!303675 lambda!303657))))

(declare-fun bs!1313892 () Bool)

(assert (= bs!1313892 (and b!5649012 b!5647359)))

(assert (=> bs!1313892 (not (= lambda!303675 lambda!303518))))

(declare-fun bs!1313893 () Bool)

(assert (= bs!1313893 (and b!5649012 b!5647092)))

(assert (=> bs!1313893 (not (= lambda!303675 lambda!303500))))

(assert (=> bs!1313890 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303675 lambda!303495))))

(declare-fun bs!1313894 () Bool)

(assert (= bs!1313894 (and b!5649012 d!1784359)))

(assert (=> bs!1313894 (not (= lambda!303675 lambda!303630))))

(declare-fun bs!1313895 () Bool)

(assert (= bs!1313895 (and b!5649012 b!5648955)))

(assert (=> bs!1313895 (not (= lambda!303675 lambda!303670))))

(declare-fun bs!1313896 () Bool)

(assert (= bs!1313896 (and b!5649012 b!5648815)))

(assert (=> bs!1313896 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regTwo!31775 lt!2264184))) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 (regTwo!31775 lt!2264184)))) (= lambda!303675 lambda!303660))))

(assert (=> bs!1313884 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 r!7292))) (= lambda!303675 lambda!303656))))

(declare-fun bs!1313897 () Bool)

(assert (= bs!1313897 (and b!5649012 d!1783793)))

(assert (=> bs!1313897 (not (= lambda!303675 lambda!303523))))

(assert (=> bs!1313894 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) lt!2264184)) (= lambda!303675 lambda!303631))))

(assert (=> bs!1313897 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) lt!2264184)) (= lambda!303675 lambda!303524))))

(declare-fun bs!1313898 () Bool)

(assert (= bs!1313898 (and b!5649012 b!5648777)))

(assert (=> bs!1313898 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regTwo!31775 r!7292))) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303675 lambda!303658))))

(declare-fun bs!1313899 () Bool)

(assert (= bs!1313899 (and b!5649012 d!1783781)))

(assert (=> bs!1313899 (not (= lambda!303675 lambda!303520))))

(assert (=> bs!1313881 (not (= lambda!303675 lambda!303512))))

(assert (=> bs!1313889 (not (= lambda!303675 lambda!303423))))

(declare-fun bs!1313900 () Bool)

(assert (= bs!1313900 (and b!5649012 b!5649017)))

(assert (=> bs!1313900 (not (= lambda!303675 lambda!303674))))

(declare-fun bs!1313901 () Bool)

(assert (= bs!1313901 (and b!5649012 b!5647354)))

(assert (=> bs!1313901 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 lt!2264222))) (= lambda!303675 lambda!303519))))

(declare-fun bs!1313902 () Bool)

(assert (= bs!1313902 (and b!5649012 b!5648923)))

(assert (=> bs!1313902 (not (= lambda!303675 lambda!303663))))

(declare-fun bs!1313903 () Bool)

(assert (= bs!1313903 (and b!5649012 b!5648950)))

(assert (=> bs!1313903 (= (and (= (regOne!31774 (regOne!31775 r!7292)) (regOne!31774 (regTwo!31775 lt!2264222))) (= (regTwo!31774 (regOne!31775 r!7292)) (regTwo!31774 (regTwo!31775 lt!2264222)))) (= lambda!303675 lambda!303671))))

(declare-fun bs!1313904 () Bool)

(assert (= bs!1313904 (and b!5649012 d!1783759)))

(assert (=> bs!1313904 (not (= lambda!303675 lambda!303514))))

(assert (=> b!5649012 true))

(assert (=> b!5649012 true))

(declare-fun b!5649007 () Bool)

(declare-fun e!3479847 () Bool)

(assert (=> b!5649007 (= e!3479847 (= s!2326 (Cons!63069 (c!992159 (regOne!31775 r!7292)) Nil!63069)))))

(declare-fun b!5649008 () Bool)

(declare-fun res!2389423 () Bool)

(declare-fun e!3479848 () Bool)

(assert (=> b!5649008 (=> res!2389423 e!3479848)))

(declare-fun call!427320 () Bool)

(assert (=> b!5649008 (= res!2389423 call!427320)))

(declare-fun e!3479851 () Bool)

(assert (=> b!5649008 (= e!3479851 e!3479848)))

(declare-fun bm!427315 () Bool)

(assert (=> bm!427315 (= call!427320 (isEmpty!34917 s!2326))))

(declare-fun b!5649009 () Bool)

(declare-fun c!992917 () Bool)

(assert (=> b!5649009 (= c!992917 ((_ is ElementMatch!15631) (regOne!31775 r!7292)))))

(declare-fun e!3479852 () Bool)

(assert (=> b!5649009 (= e!3479852 e!3479847)))

(declare-fun b!5649010 () Bool)

(declare-fun e!3479849 () Bool)

(declare-fun e!3479850 () Bool)

(assert (=> b!5649010 (= e!3479849 e!3479850)))

(declare-fun res!2389424 () Bool)

(assert (=> b!5649010 (= res!2389424 (matchRSpec!2734 (regOne!31775 (regOne!31775 r!7292)) s!2326))))

(assert (=> b!5649010 (=> res!2389424 e!3479850)))

(declare-fun d!1784613 () Bool)

(declare-fun c!992916 () Bool)

(assert (=> d!1784613 (= c!992916 ((_ is EmptyExpr!15631) (regOne!31775 r!7292)))))

(declare-fun e!3479853 () Bool)

(assert (=> d!1784613 (= (matchRSpec!2734 (regOne!31775 r!7292) s!2326) e!3479853)))

(declare-fun b!5649011 () Bool)

(declare-fun c!992915 () Bool)

(assert (=> b!5649011 (= c!992915 ((_ is Union!15631) (regOne!31775 r!7292)))))

(assert (=> b!5649011 (= e!3479847 e!3479849)))

(declare-fun bm!427316 () Bool)

(declare-fun c!992914 () Bool)

(declare-fun call!427321 () Bool)

(assert (=> bm!427316 (= call!427321 (Exists!2731 (ite c!992914 lambda!303674 lambda!303675)))))

(assert (=> b!5649012 (= e!3479851 call!427321)))

(declare-fun b!5649013 () Bool)

(assert (=> b!5649013 (= e!3479849 e!3479851)))

(assert (=> b!5649013 (= c!992914 ((_ is Star!15631) (regOne!31775 r!7292)))))

(declare-fun b!5649014 () Bool)

(assert (=> b!5649014 (= e!3479853 call!427320)))

(declare-fun b!5649015 () Bool)

(assert (=> b!5649015 (= e!3479853 e!3479852)))

(declare-fun res!2389425 () Bool)

(assert (=> b!5649015 (= res!2389425 (not ((_ is EmptyLang!15631) (regOne!31775 r!7292))))))

(assert (=> b!5649015 (=> (not res!2389425) (not e!3479852))))

(declare-fun b!5649016 () Bool)

(assert (=> b!5649016 (= e!3479850 (matchRSpec!2734 (regTwo!31775 (regOne!31775 r!7292)) s!2326))))

(assert (=> b!5649017 (= e!3479848 call!427321)))

(assert (= (and d!1784613 c!992916) b!5649014))

(assert (= (and d!1784613 (not c!992916)) b!5649015))

(assert (= (and b!5649015 res!2389425) b!5649009))

(assert (= (and b!5649009 c!992917) b!5649007))

(assert (= (and b!5649009 (not c!992917)) b!5649011))

(assert (= (and b!5649011 c!992915) b!5649010))

(assert (= (and b!5649011 (not c!992915)) b!5649013))

(assert (= (and b!5649010 (not res!2389424)) b!5649016))

(assert (= (and b!5649013 c!992914) b!5649008))

(assert (= (and b!5649013 (not c!992914)) b!5649012))

(assert (= (and b!5649008 (not res!2389423)) b!5649017))

(assert (= (or b!5649017 b!5649012) bm!427316))

(assert (= (or b!5649014 b!5649008) bm!427315))

(assert (=> bm!427315 m!6614382))

(declare-fun m!6616410 () Bool)

(assert (=> b!5649010 m!6616410))

(declare-fun m!6616412 () Bool)

(assert (=> bm!427316 m!6616412))

(declare-fun m!6616414 () Bool)

(assert (=> b!5649016 m!6616414))

(assert (=> b!5647085 d!1784613))

(declare-fun d!1784615 () Bool)

(assert (=> d!1784615 (= (isConcat!695 lt!2264379) ((_ is Concat!24476) lt!2264379))))

(assert (=> b!5647346 d!1784615))

(assert (=> b!5647333 d!1784601))

(assert (=> b!5647333 d!1784603))

(assert (=> b!5647333 d!1784605))

(declare-fun b!5649018 () Bool)

(declare-fun e!3479858 () Bool)

(assert (=> b!5649018 (= e!3479858 (matchR!7816 lt!2264184 (t!376491 s!2326)))))

(declare-fun b!5649019 () Bool)

(declare-fun e!3479856 () Option!15640)

(assert (=> b!5649019 (= e!3479856 None!15639)))

(declare-fun d!1784617 () Bool)

(declare-fun e!3479855 () Bool)

(assert (=> d!1784617 e!3479855))

(declare-fun res!2389428 () Bool)

(assert (=> d!1784617 (=> res!2389428 e!3479855)))

(declare-fun e!3479854 () Bool)

(assert (=> d!1784617 (= res!2389428 e!3479854)))

(declare-fun res!2389426 () Bool)

(assert (=> d!1784617 (=> (not res!2389426) (not e!3479854))))

(declare-fun lt!2264552 () Option!15640)

(assert (=> d!1784617 (= res!2389426 (isDefined!12343 lt!2264552))))

(declare-fun e!3479857 () Option!15640)

(assert (=> d!1784617 (= lt!2264552 e!3479857)))

(declare-fun c!992919 () Bool)

(assert (=> d!1784617 (= c!992919 e!3479858)))

(declare-fun res!2389427 () Bool)

(assert (=> d!1784617 (=> (not res!2389427) (not e!3479858))))

(assert (=> d!1784617 (= res!2389427 (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))))))

(assert (=> d!1784617 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784617 (= (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326) lt!2264552)))

(declare-fun b!5649020 () Bool)

(assert (=> b!5649020 (= e!3479857 (Some!15639 (tuple2!65457 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326))))))

(declare-fun b!5649021 () Bool)

(declare-fun res!2389430 () Bool)

(assert (=> b!5649021 (=> (not res!2389430) (not e!3479854))))

(assert (=> b!5649021 (= res!2389430 (matchR!7816 lt!2264184 (_2!36031 (get!21730 lt!2264552))))))

(declare-fun b!5649022 () Bool)

(assert (=> b!5649022 (= e!3479855 (not (isDefined!12343 lt!2264552)))))

(declare-fun b!5649023 () Bool)

(declare-fun lt!2264553 () Unit!156056)

(declare-fun lt!2264551 () Unit!156056)

(assert (=> b!5649023 (= lt!2264553 lt!2264551)))

(assert (=> b!5649023 (= (++!13847 (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326))) s!2326)))

(assert (=> b!5649023 (= lt!2264551 (lemmaMoveElementToOtherListKeepsConcatEq!2016 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (h!69517 (t!376491 s!2326)) (t!376491 (t!376491 s!2326)) s!2326))))

(assert (=> b!5649023 (= e!3479856 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326)) s!2326))))

(declare-fun b!5649024 () Bool)

(assert (=> b!5649024 (= e!3479857 e!3479856)))

(declare-fun c!992918 () Bool)

(assert (=> b!5649024 (= c!992918 ((_ is Nil!63069) (t!376491 s!2326)))))

(declare-fun b!5649025 () Bool)

(assert (=> b!5649025 (= e!3479854 (= (++!13847 (_1!36031 (get!21730 lt!2264552)) (_2!36031 (get!21730 lt!2264552))) s!2326))))

(declare-fun b!5649026 () Bool)

(declare-fun res!2389429 () Bool)

(assert (=> b!5649026 (=> (not res!2389429) (not e!3479854))))

(assert (=> b!5649026 (= res!2389429 (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264552))))))

(assert (= (and d!1784617 res!2389427) b!5649018))

(assert (= (and d!1784617 c!992919) b!5649020))

(assert (= (and d!1784617 (not c!992919)) b!5649024))

(assert (= (and b!5649024 c!992918) b!5649019))

(assert (= (and b!5649024 (not c!992918)) b!5649023))

(assert (= (and d!1784617 res!2389426) b!5649026))

(assert (= (and b!5649026 res!2389429) b!5649021))

(assert (= (and b!5649021 res!2389430) b!5649025))

(assert (= (and d!1784617 (not res!2389428)) b!5649022))

(declare-fun m!6616416 () Bool)

(assert (=> b!5649022 m!6616416))

(declare-fun m!6616418 () Bool)

(assert (=> b!5649018 m!6616418))

(declare-fun m!6616420 () Bool)

(assert (=> b!5649025 m!6616420))

(declare-fun m!6616422 () Bool)

(assert (=> b!5649025 m!6616422))

(assert (=> d!1784617 m!6616416))

(assert (=> d!1784617 m!6614354))

(declare-fun m!6616424 () Bool)

(assert (=> d!1784617 m!6616424))

(assert (=> d!1784617 m!6614578))

(assert (=> b!5649023 m!6614354))

(assert (=> b!5649023 m!6616390))

(assert (=> b!5649023 m!6616390))

(assert (=> b!5649023 m!6616392))

(assert (=> b!5649023 m!6614354))

(assert (=> b!5649023 m!6616394))

(assert (=> b!5649023 m!6616390))

(declare-fun m!6616426 () Bool)

(assert (=> b!5649023 m!6616426))

(assert (=> b!5649021 m!6616420))

(declare-fun m!6616428 () Bool)

(assert (=> b!5649021 m!6616428))

(assert (=> b!5649026 m!6616420))

(declare-fun m!6616430 () Bool)

(assert (=> b!5649026 m!6616430))

(assert (=> b!5647333 d!1784617))

(declare-fun d!1784619 () Bool)

(declare-fun c!992920 () Bool)

(assert (=> d!1784619 (= c!992920 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun e!3479859 () Bool)

(assert (=> d!1784619 (= (matchZipper!1769 (derivationStepZipper!1718 z!1189 (head!12006 s!2326)) (tail!11101 s!2326)) e!3479859)))

(declare-fun b!5649027 () Bool)

(assert (=> b!5649027 (= e!3479859 (nullableZipper!1613 (derivationStepZipper!1718 z!1189 (head!12006 s!2326))))))

(declare-fun b!5649028 () Bool)

(assert (=> b!5649028 (= e!3479859 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 z!1189 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(assert (= (and d!1784619 c!992920) b!5649027))

(assert (= (and d!1784619 (not c!992920)) b!5649028))

(assert (=> d!1784619 m!6614392))

(assert (=> d!1784619 m!6614394))

(assert (=> b!5649027 m!6614618))

(declare-fun m!6616432 () Bool)

(assert (=> b!5649027 m!6616432))

(assert (=> b!5649028 m!6614392))

(assert (=> b!5649028 m!6616068))

(assert (=> b!5649028 m!6614618))

(assert (=> b!5649028 m!6616068))

(declare-fun m!6616434 () Bool)

(assert (=> b!5649028 m!6616434))

(assert (=> b!5649028 m!6614392))

(assert (=> b!5649028 m!6616072))

(assert (=> b!5649028 m!6616434))

(assert (=> b!5649028 m!6616072))

(declare-fun m!6616436 () Bool)

(assert (=> b!5649028 m!6616436))

(assert (=> b!5647317 d!1784619))

(declare-fun bs!1313905 () Bool)

(declare-fun d!1784621 () Bool)

(assert (= bs!1313905 (and d!1784621 d!1784611)))

(declare-fun lambda!303676 () Int)

(assert (=> bs!1313905 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303676 lambda!303673))))

(declare-fun bs!1313906 () Bool)

(assert (= bs!1313906 (and d!1784621 b!5646443)))

(assert (=> bs!1313906 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303676 lambda!303425))))

(declare-fun bs!1313907 () Bool)

(assert (= bs!1313907 (and d!1784621 d!1784467)))

(assert (=> bs!1313907 (= lambda!303676 lambda!303654)))

(declare-fun bs!1313908 () Bool)

(assert (= bs!1313908 (and d!1784621 d!1784575)))

(assert (=> bs!1313908 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303676 lambda!303666))))

(declare-fun bs!1313909 () Bool)

(assert (= bs!1313909 (and d!1784621 d!1784323)))

(assert (=> bs!1313909 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303676 lambda!303624))))

(declare-fun bs!1313910 () Bool)

(assert (= bs!1313910 (and d!1784621 d!1783813)))

(assert (=> bs!1313910 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303676 lambda!303543))))

(declare-fun bs!1313911 () Bool)

(assert (= bs!1313911 (and d!1784621 d!1783735)))

(assert (=> bs!1313911 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303676 lambda!303508))))

(assert (=> d!1784621 true))

(assert (=> d!1784621 (= (derivationStepZipper!1718 z!1189 (head!12006 s!2326)) (flatMap!1244 z!1189 lambda!303676))))

(declare-fun bs!1313912 () Bool)

(assert (= bs!1313912 d!1784621))

(declare-fun m!6616438 () Bool)

(assert (=> bs!1313912 m!6616438))

(assert (=> b!5647317 d!1784621))

(assert (=> b!5647317 d!1784387))

(assert (=> b!5647317 d!1784469))

(declare-fun d!1784623 () Bool)

(assert (=> d!1784623 (= (isEmptyExpr!1172 lt!2264365) ((_ is EmptyExpr!15631) lt!2264365))))

(assert (=> b!5647264 d!1784623))

(assert (=> bs!1312413 d!1783815))

(declare-fun d!1784625 () Bool)

(assert (=> d!1784625 (= (isEmpty!34913 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))) ((_ is Nil!63068) (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(assert (=> b!5647297 d!1784625))

(declare-fun d!1784627 () Bool)

(declare-fun c!992922 () Bool)

(declare-fun e!3479862 () Bool)

(assert (=> d!1784627 (= c!992922 e!3479862)))

(declare-fun res!2389431 () Bool)

(assert (=> d!1784627 (=> (not res!2389431) (not e!3479862))))

(assert (=> d!1784627 (= res!2389431 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))))

(declare-fun e!3479861 () (InoxSet Context!10030))

(assert (=> d!1784627 (= (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (h!69517 s!2326)) e!3479861)))

(declare-fun b!5649029 () Bool)

(declare-fun e!3479860 () (InoxSet Context!10030))

(declare-fun call!427322 () (InoxSet Context!10030))

(assert (=> b!5649029 (= e!3479860 call!427322)))

(declare-fun b!5649030 () Bool)

(assert (=> b!5649030 (= e!3479861 e!3479860)))

(declare-fun c!992921 () Bool)

(assert (=> b!5649030 (= c!992921 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))))

(declare-fun bm!427317 () Bool)

(assert (=> bm!427317 (= call!427322 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))) (h!69517 s!2326)))))

(declare-fun b!5649031 () Bool)

(assert (=> b!5649031 (= e!3479860 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649032 () Bool)

(assert (=> b!5649032 (= e!3479861 ((_ map or) call!427322 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))) (h!69517 s!2326))))))

(declare-fun b!5649033 () Bool)

(assert (=> b!5649033 (= e!3479862 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))))))))))

(assert (= (and d!1784627 res!2389431) b!5649033))

(assert (= (and d!1784627 c!992922) b!5649032))

(assert (= (and d!1784627 (not c!992922)) b!5649030))

(assert (= (and b!5649030 c!992921) b!5649029))

(assert (= (and b!5649030 (not c!992921)) b!5649031))

(assert (= (or b!5649032 b!5649029) bm!427317))

(declare-fun m!6616440 () Bool)

(assert (=> bm!427317 m!6616440))

(declare-fun m!6616442 () Bool)

(assert (=> b!5649032 m!6616442))

(declare-fun m!6616444 () Bool)

(assert (=> b!5649033 m!6616444))

(assert (=> b!5647146 d!1784627))

(declare-fun bs!1313913 () Bool)

(declare-fun d!1784629 () Bool)

(assert (= bs!1313913 (and d!1784629 d!1784593)))

(declare-fun lambda!303677 () Int)

(assert (=> bs!1313913 (= lambda!303677 lambda!303672)))

(declare-fun bs!1313914 () Bool)

(assert (= bs!1313914 (and d!1784629 d!1783769)))

(assert (=> bs!1313914 (= lambda!303677 lambda!303516)))

(declare-fun bs!1313915 () Bool)

(assert (= bs!1313915 (and d!1784629 d!1783799)))

(assert (=> bs!1313915 (= lambda!303677 lambda!303527)))

(declare-fun bs!1313916 () Bool)

(assert (= bs!1313916 (and d!1784629 d!1783713)))

(assert (=> bs!1313916 (= lambda!303677 lambda!303504)))

(declare-fun bs!1313917 () Bool)

(assert (= bs!1313917 (and d!1784629 d!1783801)))

(assert (=> bs!1313917 (= lambda!303677 lambda!303530)))

(declare-fun bs!1313918 () Bool)

(assert (= bs!1313918 (and d!1784629 b!5648658)))

(assert (=> bs!1313918 (not (= lambda!303677 lambda!303637))))

(declare-fun bs!1313919 () Bool)

(assert (= bs!1313919 (and d!1784629 b!5648656)))

(assert (=> bs!1313919 (not (= lambda!303677 lambda!303636))))

(declare-fun bs!1313920 () Bool)

(assert (= bs!1313920 (and d!1784629 d!1784443)))

(assert (=> bs!1313920 (= lambda!303677 lambda!303653)))

(declare-fun bs!1313921 () Bool)

(assert (= bs!1313921 (and d!1784629 d!1783761)))

(assert (=> bs!1313921 (= lambda!303677 lambda!303515)))

(declare-fun bs!1313922 () Bool)

(assert (= bs!1313922 (and d!1784629 b!5648688)))

(assert (=> bs!1313922 (not (= lambda!303677 lambda!303648))))

(declare-fun bs!1313923 () Bool)

(assert (= bs!1313923 (and d!1784629 d!1784583)))

(assert (=> bs!1313923 (= lambda!303677 lambda!303668)))

(declare-fun bs!1313924 () Bool)

(assert (= bs!1313924 (and d!1784629 d!1784577)))

(assert (=> bs!1313924 (= lambda!303677 lambda!303667)))

(declare-fun bs!1313925 () Bool)

(assert (= bs!1313925 (and d!1784629 d!1783775)))

(assert (=> bs!1313925 (= lambda!303677 lambda!303517)))

(declare-fun bs!1313926 () Bool)

(assert (= bs!1313926 (and d!1784629 b!5648686)))

(assert (=> bs!1313926 (not (= lambda!303677 lambda!303647))))

(declare-fun bs!1313927 () Bool)

(assert (= bs!1313927 (and d!1784629 d!1783741)))

(assert (=> bs!1313927 (= lambda!303677 lambda!303511)))

(declare-fun bs!1313928 () Bool)

(assert (= bs!1313928 (and d!1784629 d!1784301)))

(assert (=> bs!1313928 (= lambda!303677 lambda!303621)))

(declare-fun bs!1313929 () Bool)

(assert (= bs!1313929 (and d!1784629 d!1783727)))

(assert (=> bs!1313929 (= lambda!303677 lambda!303505)))

(declare-fun bs!1313930 () Bool)

(assert (= bs!1313930 (and d!1784629 d!1784585)))

(assert (=> bs!1313930 (= lambda!303677 lambda!303669)))

(declare-fun b!5649034 () Bool)

(declare-fun e!3479863 () Regex!15631)

(assert (=> b!5649034 (= e!3479863 (Union!15631 (h!69516 (t!376490 (unfocusZipperList!1059 zl!343))) (generalisedUnion!1494 (t!376490 (t!376490 (unfocusZipperList!1059 zl!343))))))))

(declare-fun b!5649035 () Bool)

(declare-fun e!3479865 () Bool)

(declare-fun lt!2264554 () Regex!15631)

(assert (=> b!5649035 (= e!3479865 (= lt!2264554 (head!12007 (t!376490 (unfocusZipperList!1059 zl!343)))))))

(declare-fun b!5649036 () Bool)

(declare-fun e!3479866 () Regex!15631)

(assert (=> b!5649036 (= e!3479866 e!3479863)))

(declare-fun c!992923 () Bool)

(assert (=> b!5649036 (= c!992923 ((_ is Cons!63068) (t!376490 (unfocusZipperList!1059 zl!343))))))

(declare-fun b!5649037 () Bool)

(declare-fun e!3479868 () Bool)

(assert (=> b!5649037 (= e!3479868 (isEmptyLang!1182 lt!2264554))))

(declare-fun b!5649038 () Bool)

(assert (=> b!5649038 (= e!3479866 (h!69516 (t!376490 (unfocusZipperList!1059 zl!343))))))

(declare-fun e!3479864 () Bool)

(assert (=> d!1784629 e!3479864))

(declare-fun res!2389433 () Bool)

(assert (=> d!1784629 (=> (not res!2389433) (not e!3479864))))

(assert (=> d!1784629 (= res!2389433 (validRegex!7367 lt!2264554))))

(assert (=> d!1784629 (= lt!2264554 e!3479866)))

(declare-fun c!992926 () Bool)

(declare-fun e!3479867 () Bool)

(assert (=> d!1784629 (= c!992926 e!3479867)))

(declare-fun res!2389432 () Bool)

(assert (=> d!1784629 (=> (not res!2389432) (not e!3479867))))

(assert (=> d!1784629 (= res!2389432 ((_ is Cons!63068) (t!376490 (unfocusZipperList!1059 zl!343))))))

(assert (=> d!1784629 (forall!14788 (t!376490 (unfocusZipperList!1059 zl!343)) lambda!303677)))

(assert (=> d!1784629 (= (generalisedUnion!1494 (t!376490 (unfocusZipperList!1059 zl!343))) lt!2264554)))

(declare-fun b!5649039 () Bool)

(assert (=> b!5649039 (= e!3479865 (isUnion!612 lt!2264554))))

(declare-fun b!5649040 () Bool)

(assert (=> b!5649040 (= e!3479868 e!3479865)))

(declare-fun c!992924 () Bool)

(assert (=> b!5649040 (= c!992924 (isEmpty!34913 (tail!11102 (t!376490 (unfocusZipperList!1059 zl!343)))))))

(declare-fun b!5649041 () Bool)

(assert (=> b!5649041 (= e!3479864 e!3479868)))

(declare-fun c!992925 () Bool)

(assert (=> b!5649041 (= c!992925 (isEmpty!34913 (t!376490 (unfocusZipperList!1059 zl!343))))))

(declare-fun b!5649042 () Bool)

(assert (=> b!5649042 (= e!3479863 EmptyLang!15631)))

(declare-fun b!5649043 () Bool)

(assert (=> b!5649043 (= e!3479867 (isEmpty!34913 (t!376490 (t!376490 (unfocusZipperList!1059 zl!343)))))))

(assert (= (and d!1784629 res!2389432) b!5649043))

(assert (= (and d!1784629 c!992926) b!5649038))

(assert (= (and d!1784629 (not c!992926)) b!5649036))

(assert (= (and b!5649036 c!992923) b!5649034))

(assert (= (and b!5649036 (not c!992923)) b!5649042))

(assert (= (and d!1784629 res!2389433) b!5649041))

(assert (= (and b!5649041 c!992925) b!5649037))

(assert (= (and b!5649041 (not c!992925)) b!5649040))

(assert (= (and b!5649040 c!992924) b!5649035))

(assert (= (and b!5649040 (not c!992924)) b!5649039))

(declare-fun m!6616446 () Bool)

(assert (=> b!5649040 m!6616446))

(assert (=> b!5649040 m!6616446))

(declare-fun m!6616448 () Bool)

(assert (=> b!5649040 m!6616448))

(declare-fun m!6616450 () Bool)

(assert (=> b!5649034 m!6616450))

(declare-fun m!6616452 () Bool)

(assert (=> b!5649035 m!6616452))

(assert (=> b!5649041 m!6614744))

(declare-fun m!6616454 () Bool)

(assert (=> b!5649039 m!6616454))

(declare-fun m!6616456 () Bool)

(assert (=> b!5649037 m!6616456))

(declare-fun m!6616458 () Bool)

(assert (=> d!1784629 m!6616458))

(declare-fun m!6616460 () Bool)

(assert (=> d!1784629 m!6616460))

(declare-fun m!6616462 () Bool)

(assert (=> b!5649043 m!6616462))

(assert (=> b!5647396 d!1784629))

(declare-fun bs!1313931 () Bool)

(declare-fun d!1784631 () Bool)

(assert (= bs!1313931 (and d!1784631 d!1784407)))

(declare-fun lambda!303678 () Int)

(assert (=> bs!1313931 (not (= lambda!303678 lambda!303640))))

(declare-fun bs!1313932 () Bool)

(assert (= bs!1313932 (and d!1784631 b!5647418)))

(assert (=> bs!1313932 (not (= lambda!303678 lambda!303538))))

(declare-fun bs!1313933 () Bool)

(assert (= bs!1313933 (and d!1784631 d!1784545)))

(assert (=> bs!1313933 (= lambda!303678 lambda!303661)))

(declare-fun bs!1313934 () Bool)

(assert (= bs!1313934 (and d!1784631 b!5648691)))

(assert (=> bs!1313934 (not (= lambda!303678 lambda!303651))))

(declare-fun bs!1313935 () Bool)

(assert (= bs!1313935 (and d!1784631 b!5648672)))

(assert (=> bs!1313935 (not (= lambda!303678 lambda!303643))))

(declare-fun bs!1313936 () Bool)

(assert (= bs!1313936 (and d!1784631 b!5648689)))

(assert (=> bs!1313936 (not (= lambda!303678 lambda!303650))))

(declare-fun bs!1313937 () Bool)

(assert (= bs!1313937 (and d!1784631 d!1784569)))

(assert (=> bs!1313937 (= lambda!303678 lambda!303665)))

(declare-fun bs!1313938 () Bool)

(assert (= bs!1313938 (and d!1784631 d!1784425)))

(assert (=> bs!1313938 (= lambda!303678 lambda!303646)))

(declare-fun bs!1313939 () Bool)

(assert (= bs!1313939 (and d!1784631 d!1784549)))

(assert (=> bs!1313939 (= lambda!303678 lambda!303662)))

(declare-fun bs!1313940 () Bool)

(assert (= bs!1313940 (and d!1784631 d!1784435)))

(assert (=> bs!1313940 (not (= lambda!303678 lambda!303652))))

(declare-fun bs!1313941 () Bool)

(assert (= bs!1313941 (and d!1784631 b!5648670)))

(assert (=> bs!1313941 (not (= lambda!303678 lambda!303642))))

(declare-fun bs!1313942 () Bool)

(assert (= bs!1313942 (and d!1784631 b!5647423)))

(assert (=> bs!1313942 (not (= lambda!303678 lambda!303541))))

(declare-fun bs!1313943 () Bool)

(assert (= bs!1313943 (and d!1784631 b!5647425)))

(assert (=> bs!1313943 (not (= lambda!303678 lambda!303542))))

(declare-fun bs!1313944 () Bool)

(assert (= bs!1313944 (and d!1784631 b!5647420)))

(assert (=> bs!1313944 (not (= lambda!303678 lambda!303539))))

(assert (=> d!1784631 (= (nullableZipper!1613 lt!2264224) (exists!2194 lt!2264224 lambda!303678))))

(declare-fun bs!1313945 () Bool)

(assert (= bs!1313945 d!1784631))

(declare-fun m!6616464 () Bool)

(assert (=> bs!1313945 m!6616464))

(assert (=> b!5647201 d!1784631))

(assert (=> bm!427017 d!1784413))

(assert (=> b!5647294 d!1784571))

(assert (=> b!5647294 d!1784469))

(declare-fun d!1784633 () Bool)

(assert (=> d!1784633 (= (isDefined!12343 lt!2264335) (not (isEmpty!34918 lt!2264335)))))

(declare-fun bs!1313946 () Bool)

(assert (= bs!1313946 d!1784633))

(declare-fun m!6616466 () Bool)

(assert (=> bs!1313946 m!6616466))

(assert (=> d!1783669 d!1784633))

(declare-fun b!5649044 () Bool)

(declare-fun res!2389440 () Bool)

(declare-fun e!3479869 () Bool)

(assert (=> b!5649044 (=> (not res!2389440) (not e!3479869))))

(declare-fun call!427323 () Bool)

(assert (=> b!5649044 (= res!2389440 (not call!427323))))

(declare-fun b!5649045 () Bool)

(declare-fun e!3479870 () Bool)

(assert (=> b!5649045 (= e!3479870 (nullable!5663 (regOne!31774 r!7292)))))

(declare-fun b!5649046 () Bool)

(declare-fun e!3479872 () Bool)

(declare-fun e!3479874 () Bool)

(assert (=> b!5649046 (= e!3479872 e!3479874)))

(declare-fun res!2389441 () Bool)

(assert (=> b!5649046 (=> (not res!2389441) (not e!3479874))))

(declare-fun lt!2264555 () Bool)

(assert (=> b!5649046 (= res!2389441 (not lt!2264555))))

(declare-fun b!5649047 () Bool)

(declare-fun e!3479871 () Bool)

(assert (=> b!5649047 (= e!3479871 (not lt!2264555))))

(declare-fun b!5649048 () Bool)

(declare-fun res!2389438 () Bool)

(declare-fun e!3479873 () Bool)

(assert (=> b!5649048 (=> res!2389438 e!3479873)))

(assert (=> b!5649048 (= res!2389438 (not (isEmpty!34917 (tail!11101 Nil!63069))))))

(declare-fun b!5649050 () Bool)

(assert (=> b!5649050 (= e!3479874 e!3479873)))

(declare-fun res!2389437 () Bool)

(assert (=> b!5649050 (=> res!2389437 e!3479873)))

(assert (=> b!5649050 (= res!2389437 call!427323)))

(declare-fun b!5649051 () Bool)

(assert (=> b!5649051 (= e!3479869 (= (head!12006 Nil!63069) (c!992159 (regOne!31774 r!7292))))))

(declare-fun b!5649052 () Bool)

(declare-fun res!2389439 () Bool)

(assert (=> b!5649052 (=> res!2389439 e!3479872)))

(assert (=> b!5649052 (= res!2389439 (not ((_ is ElementMatch!15631) (regOne!31774 r!7292))))))

(assert (=> b!5649052 (= e!3479871 e!3479872)))

(declare-fun b!5649053 () Bool)

(declare-fun e!3479875 () Bool)

(assert (=> b!5649053 (= e!3479875 (= lt!2264555 call!427323))))

(declare-fun bm!427318 () Bool)

(assert (=> bm!427318 (= call!427323 (isEmpty!34917 Nil!63069))))

(declare-fun d!1784635 () Bool)

(assert (=> d!1784635 e!3479875))

(declare-fun c!992927 () Bool)

(assert (=> d!1784635 (= c!992927 ((_ is EmptyExpr!15631) (regOne!31774 r!7292)))))

(assert (=> d!1784635 (= lt!2264555 e!3479870)))

(declare-fun c!992928 () Bool)

(assert (=> d!1784635 (= c!992928 (isEmpty!34917 Nil!63069))))

(assert (=> d!1784635 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1784635 (= (matchR!7816 (regOne!31774 r!7292) Nil!63069) lt!2264555)))

(declare-fun b!5649049 () Bool)

(assert (=> b!5649049 (= e!3479870 (matchR!7816 (derivativeStep!4467 (regOne!31774 r!7292) (head!12006 Nil!63069)) (tail!11101 Nil!63069)))))

(declare-fun b!5649054 () Bool)

(declare-fun res!2389434 () Bool)

(assert (=> b!5649054 (=> res!2389434 e!3479872)))

(assert (=> b!5649054 (= res!2389434 e!3479869)))

(declare-fun res!2389436 () Bool)

(assert (=> b!5649054 (=> (not res!2389436) (not e!3479869))))

(assert (=> b!5649054 (= res!2389436 lt!2264555)))

(declare-fun b!5649055 () Bool)

(declare-fun res!2389435 () Bool)

(assert (=> b!5649055 (=> (not res!2389435) (not e!3479869))))

(assert (=> b!5649055 (= res!2389435 (isEmpty!34917 (tail!11101 Nil!63069)))))

(declare-fun b!5649056 () Bool)

(assert (=> b!5649056 (= e!3479875 e!3479871)))

(declare-fun c!992929 () Bool)

(assert (=> b!5649056 (= c!992929 ((_ is EmptyLang!15631) (regOne!31774 r!7292)))))

(declare-fun b!5649057 () Bool)

(assert (=> b!5649057 (= e!3479873 (not (= (head!12006 Nil!63069) (c!992159 (regOne!31774 r!7292)))))))

(assert (= (and d!1784635 c!992928) b!5649045))

(assert (= (and d!1784635 (not c!992928)) b!5649049))

(assert (= (and d!1784635 c!992927) b!5649053))

(assert (= (and d!1784635 (not c!992927)) b!5649056))

(assert (= (and b!5649056 c!992929) b!5649047))

(assert (= (and b!5649056 (not c!992929)) b!5649052))

(assert (= (and b!5649052 (not res!2389439)) b!5649054))

(assert (= (and b!5649054 res!2389436) b!5649044))

(assert (= (and b!5649044 res!2389440) b!5649055))

(assert (= (and b!5649055 res!2389435) b!5649051))

(assert (= (and b!5649054 (not res!2389434)) b!5649046))

(assert (= (and b!5649046 res!2389441) b!5649050))

(assert (= (and b!5649050 (not res!2389437)) b!5649048))

(assert (= (and b!5649048 (not res!2389438)) b!5649057))

(assert (= (or b!5649053 b!5649044 b!5649050) bm!427318))

(assert (=> d!1784635 m!6615814))

(assert (=> d!1784635 m!6614352))

(assert (=> b!5649057 m!6615816))

(assert (=> b!5649051 m!6615816))

(assert (=> bm!427318 m!6615814))

(assert (=> b!5649055 m!6615818))

(assert (=> b!5649055 m!6615818))

(assert (=> b!5649055 m!6615820))

(assert (=> b!5649048 m!6615818))

(assert (=> b!5649048 m!6615818))

(assert (=> b!5649048 m!6615820))

(assert (=> b!5649049 m!6615816))

(assert (=> b!5649049 m!6615816))

(declare-fun m!6616468 () Bool)

(assert (=> b!5649049 m!6616468))

(assert (=> b!5649049 m!6615818))

(assert (=> b!5649049 m!6616468))

(assert (=> b!5649049 m!6615818))

(declare-fun m!6616470 () Bool)

(assert (=> b!5649049 m!6616470))

(assert (=> b!5649045 m!6616098))

(assert (=> d!1783669 d!1784635))

(assert (=> d!1783669 d!1784483))

(declare-fun b!5649058 () Bool)

(declare-fun res!2389448 () Bool)

(declare-fun e!3479876 () Bool)

(assert (=> b!5649058 (=> (not res!2389448) (not e!3479876))))

(declare-fun call!427324 () Bool)

(assert (=> b!5649058 (= res!2389448 (not call!427324))))

(declare-fun b!5649059 () Bool)

(declare-fun e!3479877 () Bool)

(assert (=> b!5649059 (= e!3479877 (nullable!5663 (derivativeStep!4467 lt!2264222 (head!12006 s!2326))))))

(declare-fun b!5649060 () Bool)

(declare-fun e!3479879 () Bool)

(declare-fun e!3479881 () Bool)

(assert (=> b!5649060 (= e!3479879 e!3479881)))

(declare-fun res!2389449 () Bool)

(assert (=> b!5649060 (=> (not res!2389449) (not e!3479881))))

(declare-fun lt!2264556 () Bool)

(assert (=> b!5649060 (= res!2389449 (not lt!2264556))))

(declare-fun b!5649061 () Bool)

(declare-fun e!3479878 () Bool)

(assert (=> b!5649061 (= e!3479878 (not lt!2264556))))

(declare-fun b!5649062 () Bool)

(declare-fun res!2389446 () Bool)

(declare-fun e!3479880 () Bool)

(assert (=> b!5649062 (=> res!2389446 e!3479880)))

(assert (=> b!5649062 (= res!2389446 (not (isEmpty!34917 (tail!11101 (tail!11101 s!2326)))))))

(declare-fun b!5649064 () Bool)

(assert (=> b!5649064 (= e!3479881 e!3479880)))

(declare-fun res!2389445 () Bool)

(assert (=> b!5649064 (=> res!2389445 e!3479880)))

(assert (=> b!5649064 (= res!2389445 call!427324)))

(declare-fun b!5649065 () Bool)

(assert (=> b!5649065 (= e!3479876 (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 lt!2264222 (head!12006 s!2326)))))))

(declare-fun b!5649066 () Bool)

(declare-fun res!2389447 () Bool)

(assert (=> b!5649066 (=> res!2389447 e!3479879)))

(assert (=> b!5649066 (= res!2389447 (not ((_ is ElementMatch!15631) (derivativeStep!4467 lt!2264222 (head!12006 s!2326)))))))

(assert (=> b!5649066 (= e!3479878 e!3479879)))

(declare-fun b!5649067 () Bool)

(declare-fun e!3479882 () Bool)

(assert (=> b!5649067 (= e!3479882 (= lt!2264556 call!427324))))

(declare-fun bm!427319 () Bool)

(assert (=> bm!427319 (= call!427324 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun d!1784637 () Bool)

(assert (=> d!1784637 e!3479882))

(declare-fun c!992930 () Bool)

(assert (=> d!1784637 (= c!992930 ((_ is EmptyExpr!15631) (derivativeStep!4467 lt!2264222 (head!12006 s!2326))))))

(assert (=> d!1784637 (= lt!2264556 e!3479877)))

(declare-fun c!992931 () Bool)

(assert (=> d!1784637 (= c!992931 (isEmpty!34917 (tail!11101 s!2326)))))

(assert (=> d!1784637 (validRegex!7367 (derivativeStep!4467 lt!2264222 (head!12006 s!2326)))))

(assert (=> d!1784637 (= (matchR!7816 (derivativeStep!4467 lt!2264222 (head!12006 s!2326)) (tail!11101 s!2326)) lt!2264556)))

(declare-fun b!5649063 () Bool)

(assert (=> b!5649063 (= e!3479877 (matchR!7816 (derivativeStep!4467 (derivativeStep!4467 lt!2264222 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649068 () Bool)

(declare-fun res!2389442 () Bool)

(assert (=> b!5649068 (=> res!2389442 e!3479879)))

(assert (=> b!5649068 (= res!2389442 e!3479876)))

(declare-fun res!2389444 () Bool)

(assert (=> b!5649068 (=> (not res!2389444) (not e!3479876))))

(assert (=> b!5649068 (= res!2389444 lt!2264556)))

(declare-fun b!5649069 () Bool)

(declare-fun res!2389443 () Bool)

(assert (=> b!5649069 (=> (not res!2389443) (not e!3479876))))

(assert (=> b!5649069 (= res!2389443 (isEmpty!34917 (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649070 () Bool)

(assert (=> b!5649070 (= e!3479882 e!3479878)))

(declare-fun c!992932 () Bool)

(assert (=> b!5649070 (= c!992932 ((_ is EmptyLang!15631) (derivativeStep!4467 lt!2264222 (head!12006 s!2326))))))

(declare-fun b!5649071 () Bool)

(assert (=> b!5649071 (= e!3479880 (not (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 lt!2264222 (head!12006 s!2326))))))))

(assert (= (and d!1784637 c!992931) b!5649059))

(assert (= (and d!1784637 (not c!992931)) b!5649063))

(assert (= (and d!1784637 c!992930) b!5649067))

(assert (= (and d!1784637 (not c!992930)) b!5649070))

(assert (= (and b!5649070 c!992932) b!5649061))

(assert (= (and b!5649070 (not c!992932)) b!5649066))

(assert (= (and b!5649066 (not res!2389447)) b!5649068))

(assert (= (and b!5649068 res!2389444) b!5649058))

(assert (= (and b!5649058 res!2389448) b!5649069))

(assert (= (and b!5649069 res!2389443) b!5649065))

(assert (= (and b!5649068 (not res!2389442)) b!5649060))

(assert (= (and b!5649060 res!2389449) b!5649064))

(assert (= (and b!5649064 (not res!2389445)) b!5649062))

(assert (= (and b!5649062 (not res!2389446)) b!5649071))

(assert (= (or b!5649067 b!5649058 b!5649064) bm!427319))

(assert (=> d!1784637 m!6614392))

(assert (=> d!1784637 m!6614394))

(assert (=> d!1784637 m!6614566))

(declare-fun m!6616472 () Bool)

(assert (=> d!1784637 m!6616472))

(assert (=> b!5649071 m!6614392))

(assert (=> b!5649071 m!6616068))

(assert (=> b!5649065 m!6614392))

(assert (=> b!5649065 m!6616068))

(assert (=> bm!427319 m!6614392))

(assert (=> bm!427319 m!6614394))

(assert (=> b!5649069 m!6614392))

(assert (=> b!5649069 m!6616072))

(assert (=> b!5649069 m!6616072))

(declare-fun m!6616474 () Bool)

(assert (=> b!5649069 m!6616474))

(assert (=> b!5649062 m!6614392))

(assert (=> b!5649062 m!6616072))

(assert (=> b!5649062 m!6616072))

(assert (=> b!5649062 m!6616474))

(assert (=> b!5649063 m!6614392))

(assert (=> b!5649063 m!6616068))

(assert (=> b!5649063 m!6614566))

(assert (=> b!5649063 m!6616068))

(declare-fun m!6616476 () Bool)

(assert (=> b!5649063 m!6616476))

(assert (=> b!5649063 m!6614392))

(assert (=> b!5649063 m!6616072))

(assert (=> b!5649063 m!6616476))

(assert (=> b!5649063 m!6616072))

(declare-fun m!6616478 () Bool)

(assert (=> b!5649063 m!6616478))

(assert (=> b!5649059 m!6614566))

(declare-fun m!6616480 () Bool)

(assert (=> b!5649059 m!6616480))

(assert (=> b!5647288 d!1784637))

(declare-fun bm!427328 () Bool)

(declare-fun call!427335 () Regex!15631)

(declare-fun call!427333 () Regex!15631)

(assert (=> bm!427328 (= call!427335 call!427333)))

(declare-fun b!5649092 () Bool)

(declare-fun c!992943 () Bool)

(assert (=> b!5649092 (= c!992943 (nullable!5663 (regOne!31774 lt!2264222)))))

(declare-fun e!3479895 () Regex!15631)

(declare-fun e!3479897 () Regex!15631)

(assert (=> b!5649092 (= e!3479895 e!3479897)))

(declare-fun b!5649093 () Bool)

(declare-fun call!427336 () Regex!15631)

(assert (=> b!5649093 (= e!3479897 (Union!15631 (Concat!24476 call!427336 (regTwo!31774 lt!2264222)) EmptyLang!15631))))

(declare-fun b!5649094 () Bool)

(declare-fun c!992945 () Bool)

(assert (=> b!5649094 (= c!992945 ((_ is Union!15631) lt!2264222))))

(declare-fun e!3479893 () Regex!15631)

(declare-fun e!3479894 () Regex!15631)

(assert (=> b!5649094 (= e!3479893 e!3479894)))

(declare-fun d!1784639 () Bool)

(declare-fun lt!2264559 () Regex!15631)

(assert (=> d!1784639 (validRegex!7367 lt!2264559)))

(declare-fun e!3479896 () Regex!15631)

(assert (=> d!1784639 (= lt!2264559 e!3479896)))

(declare-fun c!992944 () Bool)

(assert (=> d!1784639 (= c!992944 (or ((_ is EmptyExpr!15631) lt!2264222) ((_ is EmptyLang!15631) lt!2264222)))))

(assert (=> d!1784639 (validRegex!7367 lt!2264222)))

(assert (=> d!1784639 (= (derivativeStep!4467 lt!2264222 (head!12006 s!2326)) lt!2264559)))

(declare-fun b!5649095 () Bool)

(assert (=> b!5649095 (= e!3479893 (ite (= (head!12006 s!2326) (c!992159 lt!2264222)) EmptyExpr!15631 EmptyLang!15631))))

(declare-fun b!5649096 () Bool)

(declare-fun call!427334 () Regex!15631)

(assert (=> b!5649096 (= e!3479894 (Union!15631 call!427333 call!427334))))

(declare-fun c!992947 () Bool)

(declare-fun bm!427329 () Bool)

(assert (=> bm!427329 (= call!427333 (derivativeStep!4467 (ite c!992945 (regOne!31775 lt!2264222) (ite c!992947 (reg!15960 lt!2264222) (ite c!992943 (regTwo!31774 lt!2264222) (regOne!31774 lt!2264222)))) (head!12006 s!2326)))))

(declare-fun bm!427330 () Bool)

(assert (=> bm!427330 (= call!427336 call!427335)))

(declare-fun b!5649097 () Bool)

(assert (=> b!5649097 (= e!3479895 (Concat!24476 call!427335 lt!2264222))))

(declare-fun b!5649098 () Bool)

(assert (=> b!5649098 (= e!3479896 EmptyLang!15631)))

(declare-fun b!5649099 () Bool)

(assert (=> b!5649099 (= e!3479896 e!3479893)))

(declare-fun c!992946 () Bool)

(assert (=> b!5649099 (= c!992946 ((_ is ElementMatch!15631) lt!2264222))))

(declare-fun b!5649100 () Bool)

(assert (=> b!5649100 (= e!3479894 e!3479895)))

(assert (=> b!5649100 (= c!992947 ((_ is Star!15631) lt!2264222))))

(declare-fun b!5649101 () Bool)

(assert (=> b!5649101 (= e!3479897 (Union!15631 (Concat!24476 call!427334 (regTwo!31774 lt!2264222)) call!427336))))

(declare-fun bm!427331 () Bool)

(assert (=> bm!427331 (= call!427334 (derivativeStep!4467 (ite c!992945 (regTwo!31775 lt!2264222) (regOne!31774 lt!2264222)) (head!12006 s!2326)))))

(assert (= (and d!1784639 c!992944) b!5649098))

(assert (= (and d!1784639 (not c!992944)) b!5649099))

(assert (= (and b!5649099 c!992946) b!5649095))

(assert (= (and b!5649099 (not c!992946)) b!5649094))

(assert (= (and b!5649094 c!992945) b!5649096))

(assert (= (and b!5649094 (not c!992945)) b!5649100))

(assert (= (and b!5649100 c!992947) b!5649097))

(assert (= (and b!5649100 (not c!992947)) b!5649092))

(assert (= (and b!5649092 c!992943) b!5649101))

(assert (= (and b!5649092 (not c!992943)) b!5649093))

(assert (= (or b!5649101 b!5649093) bm!427330))

(assert (= (or b!5649097 bm!427330) bm!427328))

(assert (= (or b!5649096 b!5649101) bm!427331))

(assert (= (or b!5649096 bm!427328) bm!427329))

(declare-fun m!6616482 () Bool)

(assert (=> b!5649092 m!6616482))

(declare-fun m!6616484 () Bool)

(assert (=> d!1784639 m!6616484))

(assert (=> d!1784639 m!6614564))

(assert (=> bm!427329 m!6614390))

(declare-fun m!6616486 () Bool)

(assert (=> bm!427329 m!6616486))

(assert (=> bm!427331 m!6614390))

(declare-fun m!6616488 () Bool)

(assert (=> bm!427331 m!6616488))

(assert (=> b!5647288 d!1784639))

(assert (=> b!5647288 d!1784387))

(assert (=> b!5647288 d!1784469))

(declare-fun d!1784641 () Bool)

(declare-fun res!2389454 () Bool)

(declare-fun e!3479902 () Bool)

(assert (=> d!1784641 (=> res!2389454 e!3479902)))

(assert (=> d!1784641 (= res!2389454 ((_ is Nil!63070) lt!2264389))))

(assert (=> d!1784641 (= (noDuplicate!1594 lt!2264389) e!3479902)))

(declare-fun b!5649106 () Bool)

(declare-fun e!3479903 () Bool)

(assert (=> b!5649106 (= e!3479902 e!3479903)))

(declare-fun res!2389455 () Bool)

(assert (=> b!5649106 (=> (not res!2389455) (not e!3479903))))

(declare-fun contains!19832 (List!63194 Context!10030) Bool)

(assert (=> b!5649106 (= res!2389455 (not (contains!19832 (t!376492 lt!2264389) (h!69518 lt!2264389))))))

(declare-fun b!5649107 () Bool)

(assert (=> b!5649107 (= e!3479903 (noDuplicate!1594 (t!376492 lt!2264389)))))

(assert (= (and d!1784641 (not res!2389454)) b!5649106))

(assert (= (and b!5649106 res!2389455) b!5649107))

(declare-fun m!6616490 () Bool)

(assert (=> b!5649106 m!6616490))

(declare-fun m!6616492 () Bool)

(assert (=> b!5649107 m!6616492))

(assert (=> d!1783797 d!1784641))

(declare-fun d!1784643 () Bool)

(declare-fun e!3479911 () Bool)

(assert (=> d!1784643 e!3479911))

(declare-fun res!2389460 () Bool)

(assert (=> d!1784643 (=> (not res!2389460) (not e!3479911))))

(declare-fun res!2389461 () List!63194)

(assert (=> d!1784643 (= res!2389460 (noDuplicate!1594 res!2389461))))

(declare-fun e!3479910 () Bool)

(assert (=> d!1784643 e!3479910))

(assert (=> d!1784643 (= (choose!42763 z!1189) res!2389461)))

(declare-fun b!5649115 () Bool)

(declare-fun e!3479912 () Bool)

(declare-fun tp!1565341 () Bool)

(assert (=> b!5649115 (= e!3479912 tp!1565341)))

(declare-fun b!5649114 () Bool)

(declare-fun tp!1565340 () Bool)

(assert (=> b!5649114 (= e!3479910 (and (inv!82324 (h!69518 res!2389461)) e!3479912 tp!1565340))))

(declare-fun b!5649116 () Bool)

(assert (=> b!5649116 (= e!3479911 (= (content!11411 res!2389461) z!1189))))

(assert (= b!5649114 b!5649115))

(assert (= (and d!1784643 ((_ is Cons!63070) res!2389461)) b!5649114))

(assert (= (and d!1784643 res!2389460) b!5649116))

(declare-fun m!6616494 () Bool)

(assert (=> d!1784643 m!6616494))

(declare-fun m!6616496 () Bool)

(assert (=> b!5649114 m!6616496))

(declare-fun m!6616498 () Bool)

(assert (=> b!5649116 m!6616498))

(assert (=> d!1783797 d!1784643))

(declare-fun call!427340 () List!63192)

(declare-fun c!992949 () Bool)

(declare-fun bm!427332 () Bool)

(declare-fun c!992952 () Bool)

(assert (=> bm!427332 (= call!427340 ($colon$colon!1681 (exprs!5515 (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012))) (ite (or c!992952 c!992949) (regTwo!31774 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))))))))

(declare-fun bm!427333 () Bool)

(declare-fun call!427341 () List!63192)

(assert (=> bm!427333 (= call!427341 call!427340)))

(declare-fun b!5649117 () Bool)

(declare-fun e!3479918 () (InoxSet Context!10030))

(assert (=> b!5649117 (= e!3479918 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649118 () Bool)

(declare-fun e!3479914 () (InoxSet Context!10030))

(declare-fun call!427339 () (InoxSet Context!10030))

(assert (=> b!5649118 (= e!3479914 call!427339)))

(declare-fun d!1784645 () Bool)

(declare-fun c!992950 () Bool)

(assert (=> d!1784645 (= c!992950 (and ((_ is ElementMatch!15631) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (= (c!992159 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (h!69517 s!2326))))))

(declare-fun e!3479915 () (InoxSet Context!10030))

(assert (=> d!1784645 (= (derivationStepZipperDown!973 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))) (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012)) (h!69517 s!2326)) e!3479915)))

(declare-fun c!992951 () Bool)

(declare-fun bm!427334 () Bool)

(declare-fun call!427337 () (InoxSet Context!10030))

(assert (=> bm!427334 (= call!427337 (derivationStepZipperDown!973 (ite c!992951 (regOne!31775 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (regOne!31774 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))))) (ite c!992951 (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012)) (Context!10031 call!427340)) (h!69517 s!2326)))))

(declare-fun b!5649119 () Bool)

(declare-fun e!3479916 () (InoxSet Context!10030))

(assert (=> b!5649119 (= e!3479915 e!3479916)))

(assert (=> b!5649119 (= c!992951 ((_ is Union!15631) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))))))

(declare-fun b!5649120 () Bool)

(declare-fun call!427338 () (InoxSet Context!10030))

(assert (=> b!5649120 (= e!3479916 ((_ map or) call!427337 call!427338))))

(declare-fun b!5649121 () Bool)

(declare-fun e!3479913 () (InoxSet Context!10030))

(declare-fun call!427342 () (InoxSet Context!10030))

(assert (=> b!5649121 (= e!3479913 ((_ map or) call!427337 call!427342))))

(declare-fun b!5649122 () Bool)

(assert (=> b!5649122 (= e!3479915 (store ((as const (Array Context!10030 Bool)) false) (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012)) true))))

(declare-fun b!5649123 () Bool)

(declare-fun e!3479917 () Bool)

(assert (=> b!5649123 (= e!3479917 (nullable!5663 (regOne!31774 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))))))))

(declare-fun c!992948 () Bool)

(declare-fun b!5649124 () Bool)

(assert (=> b!5649124 (= c!992948 ((_ is Star!15631) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))))))

(assert (=> b!5649124 (= e!3479914 e!3479918)))

(declare-fun b!5649125 () Bool)

(assert (=> b!5649125 (= e!3479918 call!427339)))

(declare-fun b!5649126 () Bool)

(assert (=> b!5649126 (= e!3479913 e!3479914)))

(assert (=> b!5649126 (= c!992949 ((_ is Concat!24476) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))))))

(declare-fun bm!427335 () Bool)

(assert (=> bm!427335 (= call!427339 call!427342)))

(declare-fun bm!427336 () Bool)

(assert (=> bm!427336 (= call!427342 call!427338)))

(declare-fun b!5649127 () Bool)

(assert (=> b!5649127 (= c!992952 e!3479917)))

(declare-fun res!2389462 () Bool)

(assert (=> b!5649127 (=> (not res!2389462) (not e!3479917))))

(assert (=> b!5649127 (= res!2389462 ((_ is Concat!24476) (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))))))

(assert (=> b!5649127 (= e!3479916 e!3479913)))

(declare-fun bm!427337 () Bool)

(assert (=> bm!427337 (= call!427338 (derivationStepZipperDown!973 (ite c!992951 (regTwo!31775 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (ite c!992952 (regTwo!31774 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (ite c!992949 (regOne!31774 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292))))))) (reg!15960 (ite c!992401 (regTwo!31775 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992402 (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (ite c!992399 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292))) (reg!15960 (regTwo!31774 (regOne!31774 r!7292)))))))))) (ite (or c!992951 c!992952) (ite (or c!992401 c!992402) lt!2264212 (Context!10031 call!427012)) (Context!10031 call!427341)) (h!69517 s!2326)))))

(assert (= (and d!1784645 c!992950) b!5649122))

(assert (= (and d!1784645 (not c!992950)) b!5649119))

(assert (= (and b!5649119 c!992951) b!5649120))

(assert (= (and b!5649119 (not c!992951)) b!5649127))

(assert (= (and b!5649127 res!2389462) b!5649123))

(assert (= (and b!5649127 c!992952) b!5649121))

(assert (= (and b!5649127 (not c!992952)) b!5649126))

(assert (= (and b!5649126 c!992949) b!5649118))

(assert (= (and b!5649126 (not c!992949)) b!5649124))

(assert (= (and b!5649124 c!992948) b!5649125))

(assert (= (and b!5649124 (not c!992948)) b!5649117))

(assert (= (or b!5649118 b!5649125) bm!427333))

(assert (= (or b!5649118 b!5649125) bm!427335))

(assert (= (or b!5649121 bm!427333) bm!427332))

(assert (= (or b!5649121 bm!427335) bm!427336))

(assert (= (or b!5649120 bm!427336) bm!427337))

(assert (= (or b!5649120 b!5649121) bm!427334))

(declare-fun m!6616500 () Bool)

(assert (=> bm!427332 m!6616500))

(declare-fun m!6616502 () Bool)

(assert (=> b!5649123 m!6616502))

(declare-fun m!6616504 () Bool)

(assert (=> bm!427334 m!6616504))

(declare-fun m!6616506 () Bool)

(assert (=> bm!427337 m!6616506))

(declare-fun m!6616508 () Bool)

(assert (=> b!5649122 m!6616508))

(assert (=> bm!427008 d!1784645))

(declare-fun d!1784647 () Bool)

(declare-fun res!2389463 () Bool)

(declare-fun e!3479919 () Bool)

(assert (=> d!1784647 (=> res!2389463 e!3479919)))

(assert (=> d!1784647 (= res!2389463 ((_ is Nil!63068) (exprs!5515 setElem!37712)))))

(assert (=> d!1784647 (= (forall!14788 (exprs!5515 setElem!37712) lambda!303505) e!3479919)))

(declare-fun b!5649128 () Bool)

(declare-fun e!3479920 () Bool)

(assert (=> b!5649128 (= e!3479919 e!3479920)))

(declare-fun res!2389464 () Bool)

(assert (=> b!5649128 (=> (not res!2389464) (not e!3479920))))

(assert (=> b!5649128 (= res!2389464 (dynLambda!24678 lambda!303505 (h!69516 (exprs!5515 setElem!37712))))))

(declare-fun b!5649129 () Bool)

(assert (=> b!5649129 (= e!3479920 (forall!14788 (t!376490 (exprs!5515 setElem!37712)) lambda!303505))))

(assert (= (and d!1784647 (not res!2389463)) b!5649128))

(assert (= (and b!5649128 res!2389464) b!5649129))

(declare-fun b_lambda!213729 () Bool)

(assert (=> (not b_lambda!213729) (not b!5649128)))

(declare-fun m!6616510 () Bool)

(assert (=> b!5649128 m!6616510))

(declare-fun m!6616512 () Bool)

(assert (=> b!5649129 m!6616512))

(assert (=> d!1783727 d!1784647))

(assert (=> d!1783759 d!1783771))

(assert (=> d!1783759 d!1784385))

(declare-fun bs!1313947 () Bool)

(declare-fun d!1784649 () Bool)

(assert (= bs!1313947 (and d!1784649 d!1783675)))

(declare-fun lambda!303681 () Int)

(assert (=> bs!1313947 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303681 lambda!303489))))

(declare-fun bs!1313948 () Bool)

(assert (= bs!1313948 (and d!1784649 d!1783751)))

(assert (=> bs!1313948 (not (= lambda!303681 lambda!303513))))

(declare-fun bs!1313949 () Bool)

(assert (= bs!1313949 (and d!1784649 b!5646415)))

(assert (=> bs!1313949 (not (= lambda!303681 lambda!303429))))

(assert (=> bs!1313949 (not (= lambda!303681 lambda!303427))))

(declare-fun bs!1313950 () Bool)

(assert (= bs!1313950 (and d!1784649 b!5647372)))

(assert (=> bs!1313950 (not (= lambda!303681 lambda!303521))))

(declare-fun bs!1313951 () Bool)

(assert (= bs!1313951 (and d!1784649 d!1784481)))

(assert (=> bs!1313951 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303681 lambda!303655))))

(assert (=> bs!1313949 (= lambda!303681 lambda!303426)))

(assert (=> bs!1313949 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303681 lambda!303428))))

(declare-fun bs!1313952 () Bool)

(assert (= bs!1313952 (and d!1784649 b!5647367)))

(assert (=> bs!1313952 (not (= lambda!303681 lambda!303522))))

(declare-fun bs!1313953 () Bool)

(assert (= bs!1313953 (and d!1784649 b!5647087)))

(assert (=> bs!1313953 (not (= lambda!303681 lambda!303501))))

(declare-fun bs!1313954 () Bool)

(assert (= bs!1313954 (and d!1784649 b!5648918)))

(assert (=> bs!1313954 (not (= lambda!303681 lambda!303664))))

(declare-fun bs!1313955 () Bool)

(assert (= bs!1313955 (and d!1784649 b!5646420)))

(assert (=> bs!1313955 (not (= lambda!303681 lambda!303424))))

(declare-fun bs!1313956 () Bool)

(assert (= bs!1313956 (and d!1784649 d!1783677)))

(assert (=> bs!1313956 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303681 lambda!303494))))

(declare-fun bs!1313957 () Bool)

(assert (= bs!1313957 (and d!1784649 b!5648782)))

(assert (=> bs!1313957 (not (= lambda!303681 lambda!303657))))

(declare-fun bs!1313958 () Bool)

(assert (= bs!1313958 (and d!1784649 b!5647359)))

(assert (=> bs!1313958 (not (= lambda!303681 lambda!303518))))

(declare-fun bs!1313959 () Bool)

(assert (= bs!1313959 (and d!1784649 b!5647092)))

(assert (=> bs!1313959 (not (= lambda!303681 lambda!303500))))

(assert (=> bs!1313956 (not (= lambda!303681 lambda!303495))))

(declare-fun bs!1313960 () Bool)

(assert (= bs!1313960 (and d!1784649 d!1784359)))

(assert (=> bs!1313960 (= lambda!303681 lambda!303630)))

(declare-fun bs!1313961 () Bool)

(assert (= bs!1313961 (and d!1784649 b!5648955)))

(assert (=> bs!1313961 (not (= lambda!303681 lambda!303670))))

(declare-fun bs!1313962 () Bool)

(assert (= bs!1313962 (and d!1784649 b!5648815)))

(assert (=> bs!1313962 (not (= lambda!303681 lambda!303660))))

(assert (=> bs!1313951 (not (= lambda!303681 lambda!303656))))

(declare-fun bs!1313963 () Bool)

(assert (= bs!1313963 (and d!1784649 d!1783793)))

(assert (=> bs!1313963 (= lambda!303681 lambda!303523)))

(assert (=> bs!1313960 (not (= lambda!303681 lambda!303631))))

(assert (=> bs!1313963 (not (= lambda!303681 lambda!303524))))

(declare-fun bs!1313964 () Bool)

(assert (= bs!1313964 (and d!1784649 b!5648777)))

(assert (=> bs!1313964 (not (= lambda!303681 lambda!303658))))

(declare-fun bs!1313965 () Bool)

(assert (= bs!1313965 (and d!1784649 d!1783781)))

(assert (=> bs!1313965 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303681 lambda!303520))))

(assert (=> bs!1313948 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regTwo!31774 (regOne!31774 r!7292))) (= lt!2264184 lt!2264217)) (= lambda!303681 lambda!303512))))

(assert (=> bs!1313955 (= (and (= (regOne!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264184 (regTwo!31774 r!7292))) (= lambda!303681 lambda!303423))))

(declare-fun bs!1313966 () Bool)

(assert (= bs!1313966 (and d!1784649 b!5649017)))

(assert (=> bs!1313966 (not (= lambda!303681 lambda!303674))))

(declare-fun bs!1313967 () Bool)

(assert (= bs!1313967 (and d!1784649 b!5647354)))

(assert (=> bs!1313967 (not (= lambda!303681 lambda!303519))))

(declare-fun bs!1313968 () Bool)

(assert (= bs!1313968 (and d!1784649 b!5648923)))

(assert (=> bs!1313968 (not (= lambda!303681 lambda!303663))))

(declare-fun bs!1313969 () Bool)

(assert (= bs!1313969 (and d!1784649 b!5649012)))

(assert (=> bs!1313969 (not (= lambda!303681 lambda!303675))))

(declare-fun bs!1313970 () Bool)

(assert (= bs!1313970 (and d!1784649 b!5648820)))

(assert (=> bs!1313970 (not (= lambda!303681 lambda!303659))))

(declare-fun bs!1313971 () Bool)

(assert (= bs!1313971 (and d!1784649 b!5648950)))

(assert (=> bs!1313971 (not (= lambda!303681 lambda!303671))))

(declare-fun bs!1313972 () Bool)

(assert (= bs!1313972 (and d!1784649 d!1783759)))

(assert (=> bs!1313972 (= lambda!303681 lambda!303514)))

(assert (=> d!1784649 true))

(assert (=> d!1784649 true))

(assert (=> d!1784649 true))

(assert (=> d!1784649 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303681))))

(assert (=> d!1784649 true))

(declare-fun _$89!1763 () Unit!156056)

(assert (=> d!1784649 (= (choose!42759 (regOne!31774 (regOne!31774 r!7292)) lt!2264184 s!2326) _$89!1763)))

(declare-fun bs!1313973 () Bool)

(assert (= bs!1313973 d!1784649))

(assert (=> bs!1313973 m!6613706))

(assert (=> bs!1313973 m!6613706))

(assert (=> bs!1313973 m!6613720))

(declare-fun m!6616514 () Bool)

(assert (=> bs!1313973 m!6616514))

(assert (=> d!1783759 d!1784649))

(assert (=> d!1783759 d!1783773))

(declare-fun d!1784651 () Bool)

(assert (=> d!1784651 (= (Exists!2731 lambda!303514) (choose!42758 lambda!303514))))

(declare-fun bs!1313974 () Bool)

(assert (= bs!1313974 d!1784651))

(declare-fun m!6616516 () Bool)

(assert (=> bs!1313974 m!6616516))

(assert (=> d!1783759 d!1784651))

(declare-fun d!1784653 () Bool)

(declare-fun c!992953 () Bool)

(assert (=> d!1784653 (= c!992953 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479923 () Bool)

(assert (=> d!1784653 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264207 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479923)))

(declare-fun b!5649134 () Bool)

(assert (=> b!5649134 (= e!3479923 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264207 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649135 () Bool)

(assert (=> b!5649135 (= e!3479923 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264207 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784653 c!992953) b!5649134))

(assert (= (and d!1784653 (not c!992953)) b!5649135))

(assert (=> d!1784653 m!6614310))

(assert (=> d!1784653 m!6615792))

(assert (=> b!5649134 m!6614488))

(declare-fun m!6616518 () Bool)

(assert (=> b!5649134 m!6616518))

(assert (=> b!5649135 m!6614310))

(assert (=> b!5649135 m!6615796))

(assert (=> b!5649135 m!6614488))

(assert (=> b!5649135 m!6615796))

(declare-fun m!6616520 () Bool)

(assert (=> b!5649135 m!6616520))

(assert (=> b!5649135 m!6614310))

(assert (=> b!5649135 m!6615800))

(assert (=> b!5649135 m!6616520))

(assert (=> b!5649135 m!6615800))

(declare-fun m!6616522 () Bool)

(assert (=> b!5649135 m!6616522))

(assert (=> b!5647209 d!1784653))

(declare-fun bs!1313975 () Bool)

(declare-fun d!1784655 () Bool)

(assert (= bs!1313975 (and d!1784655 d!1784611)))

(declare-fun lambda!303682 () Int)

(assert (=> bs!1313975 (= lambda!303682 lambda!303673)))

(declare-fun bs!1313976 () Bool)

(assert (= bs!1313976 (and d!1784655 b!5646443)))

(assert (=> bs!1313976 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303682 lambda!303425))))

(declare-fun bs!1313977 () Bool)

(assert (= bs!1313977 (and d!1784655 d!1784621)))

(assert (=> bs!1313977 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303682 lambda!303676))))

(declare-fun bs!1313978 () Bool)

(assert (= bs!1313978 (and d!1784655 d!1784467)))

(assert (=> bs!1313978 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303682 lambda!303654))))

(declare-fun bs!1313979 () Bool)

(assert (= bs!1313979 (and d!1784655 d!1784575)))

(assert (=> bs!1313979 (= lambda!303682 lambda!303666)))

(declare-fun bs!1313980 () Bool)

(assert (= bs!1313980 (and d!1784655 d!1784323)))

(assert (=> bs!1313980 (= lambda!303682 lambda!303624)))

(declare-fun bs!1313981 () Bool)

(assert (= bs!1313981 (and d!1784655 d!1783813)))

(assert (=> bs!1313981 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303682 lambda!303543))))

(declare-fun bs!1313982 () Bool)

(assert (= bs!1313982 (and d!1784655 d!1783735)))

(assert (=> bs!1313982 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303682 lambda!303508))))

(assert (=> d!1784655 true))

(assert (=> d!1784655 (= (derivationStepZipper!1718 lt!2264207 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264207 lambda!303682))))

(declare-fun bs!1313983 () Bool)

(assert (= bs!1313983 d!1784655))

(declare-fun m!6616524 () Bool)

(assert (=> bs!1313983 m!6616524))

(assert (=> b!5647209 d!1784655))

(assert (=> b!5647209 d!1784325))

(assert (=> b!5647209 d!1784327))

(declare-fun d!1784657 () Bool)

(assert (=> d!1784657 (= (isEmpty!34913 (exprs!5515 (h!69518 zl!343))) ((_ is Nil!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> b!5647266 d!1784657))

(declare-fun bs!1313984 () Bool)

(declare-fun d!1784659 () Bool)

(assert (= bs!1313984 (and d!1784659 d!1784407)))

(declare-fun lambda!303683 () Int)

(assert (=> bs!1313984 (not (= lambda!303683 lambda!303640))))

(declare-fun bs!1313985 () Bool)

(assert (= bs!1313985 (and d!1784659 b!5647418)))

(assert (=> bs!1313985 (not (= lambda!303683 lambda!303538))))

(declare-fun bs!1313986 () Bool)

(assert (= bs!1313986 (and d!1784659 d!1784545)))

(assert (=> bs!1313986 (= lambda!303683 lambda!303661)))

(declare-fun bs!1313987 () Bool)

(assert (= bs!1313987 (and d!1784659 b!5648691)))

(assert (=> bs!1313987 (not (= lambda!303683 lambda!303651))))

(declare-fun bs!1313988 () Bool)

(assert (= bs!1313988 (and d!1784659 b!5648672)))

(assert (=> bs!1313988 (not (= lambda!303683 lambda!303643))))

(declare-fun bs!1313989 () Bool)

(assert (= bs!1313989 (and d!1784659 b!5648689)))

(assert (=> bs!1313989 (not (= lambda!303683 lambda!303650))))

(declare-fun bs!1313990 () Bool)

(assert (= bs!1313990 (and d!1784659 d!1784569)))

(assert (=> bs!1313990 (= lambda!303683 lambda!303665)))

(declare-fun bs!1313991 () Bool)

(assert (= bs!1313991 (and d!1784659 d!1784425)))

(assert (=> bs!1313991 (= lambda!303683 lambda!303646)))

(declare-fun bs!1313992 () Bool)

(assert (= bs!1313992 (and d!1784659 d!1784549)))

(assert (=> bs!1313992 (= lambda!303683 lambda!303662)))

(declare-fun bs!1313993 () Bool)

(assert (= bs!1313993 (and d!1784659 d!1784435)))

(assert (=> bs!1313993 (not (= lambda!303683 lambda!303652))))

(declare-fun bs!1313994 () Bool)

(assert (= bs!1313994 (and d!1784659 b!5648670)))

(assert (=> bs!1313994 (not (= lambda!303683 lambda!303642))))

(declare-fun bs!1313995 () Bool)

(assert (= bs!1313995 (and d!1784659 d!1784631)))

(assert (=> bs!1313995 (= lambda!303683 lambda!303678)))

(declare-fun bs!1313996 () Bool)

(assert (= bs!1313996 (and d!1784659 b!5647423)))

(assert (=> bs!1313996 (not (= lambda!303683 lambda!303541))))

(declare-fun bs!1313997 () Bool)

(assert (= bs!1313997 (and d!1784659 b!5647425)))

(assert (=> bs!1313997 (not (= lambda!303683 lambda!303542))))

(declare-fun bs!1313998 () Bool)

(assert (= bs!1313998 (and d!1784659 b!5647420)))

(assert (=> bs!1313998 (not (= lambda!303683 lambda!303539))))

(assert (=> d!1784659 (= (nullableZipper!1613 ((_ map or) lt!2264224 lt!2264207)) (exists!2194 ((_ map or) lt!2264224 lt!2264207) lambda!303683))))

(declare-fun bs!1313999 () Bool)

(assert (= bs!1313999 d!1784659))

(declare-fun m!6616526 () Bool)

(assert (=> bs!1313999 m!6616526))

(assert (=> b!5647237 d!1784659))

(declare-fun d!1784661 () Bool)

(declare-fun c!992954 () Bool)

(assert (=> d!1784661 (= c!992954 (isEmpty!34917 (t!376491 s!2326)))))

(declare-fun e!3479924 () Bool)

(assert (=> d!1784661 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264228) (t!376491 s!2326)) e!3479924)))

(declare-fun b!5649136 () Bool)

(assert (=> b!5649136 (= e!3479924 (nullableZipper!1613 ((_ map or) lt!2264227 lt!2264228)))))

(declare-fun b!5649137 () Bool)

(assert (=> b!5649137 (= e!3479924 (matchZipper!1769 (derivationStepZipper!1718 ((_ map or) lt!2264227 lt!2264228) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))))))

(assert (= (and d!1784661 c!992954) b!5649136))

(assert (= (and d!1784661 (not c!992954)) b!5649137))

(assert (=> d!1784661 m!6614302))

(declare-fun m!6616528 () Bool)

(assert (=> b!5649136 m!6616528))

(assert (=> b!5649137 m!6614306))

(assert (=> b!5649137 m!6614306))

(declare-fun m!6616530 () Bool)

(assert (=> b!5649137 m!6616530))

(assert (=> b!5649137 m!6614310))

(assert (=> b!5649137 m!6616530))

(assert (=> b!5649137 m!6614310))

(declare-fun m!6616532 () Bool)

(assert (=> b!5649137 m!6616532))

(assert (=> d!1783659 d!1784661))

(assert (=> d!1783659 d!1783719))

(declare-fun e!3479925 () Bool)

(declare-fun d!1784663 () Bool)

(assert (=> d!1784663 (= (matchZipper!1769 ((_ map or) lt!2264227 lt!2264228) (t!376491 s!2326)) e!3479925)))

(declare-fun res!2389469 () Bool)

(assert (=> d!1784663 (=> res!2389469 e!3479925)))

(assert (=> d!1784663 (= res!2389469 (matchZipper!1769 lt!2264227 (t!376491 s!2326)))))

(assert (=> d!1784663 true))

(declare-fun _$48!1281 () Unit!156056)

(assert (=> d!1784663 (= (choose!42755 lt!2264227 lt!2264228 (t!376491 s!2326)) _$48!1281)))

(declare-fun b!5649138 () Bool)

(assert (=> b!5649138 (= e!3479925 (matchZipper!1769 lt!2264228 (t!376491 s!2326)))))

(assert (= (and d!1784663 (not res!2389469)) b!5649138))

(assert (=> d!1784663 m!6614320))

(assert (=> d!1784663 m!6613640))

(assert (=> b!5649138 m!6613772))

(assert (=> d!1783659 d!1784663))

(declare-fun bs!1314000 () Bool)

(declare-fun d!1784665 () Bool)

(assert (= bs!1314000 (and d!1784665 d!1784407)))

(declare-fun lambda!303684 () Int)

(assert (=> bs!1314000 (not (= lambda!303684 lambda!303640))))

(declare-fun bs!1314001 () Bool)

(assert (= bs!1314001 (and d!1784665 b!5647418)))

(assert (=> bs!1314001 (not (= lambda!303684 lambda!303538))))

(declare-fun bs!1314002 () Bool)

(assert (= bs!1314002 (and d!1784665 d!1784545)))

(assert (=> bs!1314002 (= lambda!303684 lambda!303661)))

(declare-fun bs!1314003 () Bool)

(assert (= bs!1314003 (and d!1784665 b!5648691)))

(assert (=> bs!1314003 (not (= lambda!303684 lambda!303651))))

(declare-fun bs!1314004 () Bool)

(assert (= bs!1314004 (and d!1784665 b!5648672)))

(assert (=> bs!1314004 (not (= lambda!303684 lambda!303643))))

(declare-fun bs!1314005 () Bool)

(assert (= bs!1314005 (and d!1784665 d!1784659)))

(assert (=> bs!1314005 (= lambda!303684 lambda!303683)))

(declare-fun bs!1314006 () Bool)

(assert (= bs!1314006 (and d!1784665 b!5648689)))

(assert (=> bs!1314006 (not (= lambda!303684 lambda!303650))))

(declare-fun bs!1314007 () Bool)

(assert (= bs!1314007 (and d!1784665 d!1784569)))

(assert (=> bs!1314007 (= lambda!303684 lambda!303665)))

(declare-fun bs!1314008 () Bool)

(assert (= bs!1314008 (and d!1784665 d!1784425)))

(assert (=> bs!1314008 (= lambda!303684 lambda!303646)))

(declare-fun bs!1314009 () Bool)

(assert (= bs!1314009 (and d!1784665 d!1784549)))

(assert (=> bs!1314009 (= lambda!303684 lambda!303662)))

(declare-fun bs!1314010 () Bool)

(assert (= bs!1314010 (and d!1784665 d!1784435)))

(assert (=> bs!1314010 (not (= lambda!303684 lambda!303652))))

(declare-fun bs!1314011 () Bool)

(assert (= bs!1314011 (and d!1784665 b!5648670)))

(assert (=> bs!1314011 (not (= lambda!303684 lambda!303642))))

(declare-fun bs!1314012 () Bool)

(assert (= bs!1314012 (and d!1784665 d!1784631)))

(assert (=> bs!1314012 (= lambda!303684 lambda!303678)))

(declare-fun bs!1314013 () Bool)

(assert (= bs!1314013 (and d!1784665 b!5647423)))

(assert (=> bs!1314013 (not (= lambda!303684 lambda!303541))))

(declare-fun bs!1314014 () Bool)

(assert (= bs!1314014 (and d!1784665 b!5647425)))

(assert (=> bs!1314014 (not (= lambda!303684 lambda!303542))))

(declare-fun bs!1314015 () Bool)

(assert (= bs!1314015 (and d!1784665 b!5647420)))

(assert (=> bs!1314015 (not (= lambda!303684 lambda!303539))))

(assert (=> d!1784665 (= (nullableZipper!1613 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326))) (exists!2194 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) lambda!303684))))

(declare-fun bs!1314016 () Bool)

(assert (= bs!1314016 d!1784665))

(assert (=> bs!1314016 m!6613670))

(declare-fun m!6616534 () Bool)

(assert (=> bs!1314016 m!6616534))

(assert (=> b!5647232 d!1784665))

(assert (=> b!5647132 d!1784571))

(assert (=> b!5647132 d!1784469))

(declare-fun b!5649139 () Bool)

(declare-fun res!2389476 () Bool)

(declare-fun e!3479926 () Bool)

(assert (=> b!5649139 (=> (not res!2389476) (not e!3479926))))

(declare-fun call!427343 () Bool)

(assert (=> b!5649139 (= res!2389476 (not call!427343))))

(declare-fun b!5649140 () Bool)

(declare-fun e!3479927 () Bool)

(assert (=> b!5649140 (= e!3479927 (nullable!5663 (regTwo!31774 r!7292)))))

(declare-fun b!5649141 () Bool)

(declare-fun e!3479929 () Bool)

(declare-fun e!3479931 () Bool)

(assert (=> b!5649141 (= e!3479929 e!3479931)))

(declare-fun res!2389477 () Bool)

(assert (=> b!5649141 (=> (not res!2389477) (not e!3479931))))

(declare-fun lt!2264560 () Bool)

(assert (=> b!5649141 (= res!2389477 (not lt!2264560))))

(declare-fun b!5649142 () Bool)

(declare-fun e!3479928 () Bool)

(assert (=> b!5649142 (= e!3479928 (not lt!2264560))))

(declare-fun b!5649143 () Bool)

(declare-fun res!2389474 () Bool)

(declare-fun e!3479930 () Bool)

(assert (=> b!5649143 (=> res!2389474 e!3479930)))

(assert (=> b!5649143 (= res!2389474 (not (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264335))))))))

(declare-fun b!5649145 () Bool)

(assert (=> b!5649145 (= e!3479931 e!3479930)))

(declare-fun res!2389473 () Bool)

(assert (=> b!5649145 (=> res!2389473 e!3479930)))

(assert (=> b!5649145 (= res!2389473 call!427343)))

(declare-fun b!5649146 () Bool)

(assert (=> b!5649146 (= e!3479926 (= (head!12006 (_2!36031 (get!21730 lt!2264335))) (c!992159 (regTwo!31774 r!7292))))))

(declare-fun b!5649147 () Bool)

(declare-fun res!2389475 () Bool)

(assert (=> b!5649147 (=> res!2389475 e!3479929)))

(assert (=> b!5649147 (= res!2389475 (not ((_ is ElementMatch!15631) (regTwo!31774 r!7292))))))

(assert (=> b!5649147 (= e!3479928 e!3479929)))

(declare-fun b!5649148 () Bool)

(declare-fun e!3479932 () Bool)

(assert (=> b!5649148 (= e!3479932 (= lt!2264560 call!427343))))

(declare-fun bm!427338 () Bool)

(assert (=> bm!427338 (= call!427343 (isEmpty!34917 (_2!36031 (get!21730 lt!2264335))))))

(declare-fun d!1784667 () Bool)

(assert (=> d!1784667 e!3479932))

(declare-fun c!992955 () Bool)

(assert (=> d!1784667 (= c!992955 ((_ is EmptyExpr!15631) (regTwo!31774 r!7292)))))

(assert (=> d!1784667 (= lt!2264560 e!3479927)))

(declare-fun c!992956 () Bool)

(assert (=> d!1784667 (= c!992956 (isEmpty!34917 (_2!36031 (get!21730 lt!2264335))))))

(assert (=> d!1784667 (validRegex!7367 (regTwo!31774 r!7292))))

(assert (=> d!1784667 (= (matchR!7816 (regTwo!31774 r!7292) (_2!36031 (get!21730 lt!2264335))) lt!2264560)))

(declare-fun b!5649144 () Bool)

(assert (=> b!5649144 (= e!3479927 (matchR!7816 (derivativeStep!4467 (regTwo!31774 r!7292) (head!12006 (_2!36031 (get!21730 lt!2264335)))) (tail!11101 (_2!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5649149 () Bool)

(declare-fun res!2389470 () Bool)

(assert (=> b!5649149 (=> res!2389470 e!3479929)))

(assert (=> b!5649149 (= res!2389470 e!3479926)))

(declare-fun res!2389472 () Bool)

(assert (=> b!5649149 (=> (not res!2389472) (not e!3479926))))

(assert (=> b!5649149 (= res!2389472 lt!2264560)))

(declare-fun b!5649150 () Bool)

(declare-fun res!2389471 () Bool)

(assert (=> b!5649150 (=> (not res!2389471) (not e!3479926))))

(assert (=> b!5649150 (= res!2389471 (isEmpty!34917 (tail!11101 (_2!36031 (get!21730 lt!2264335)))))))

(declare-fun b!5649151 () Bool)

(assert (=> b!5649151 (= e!3479932 e!3479928)))

(declare-fun c!992957 () Bool)

(assert (=> b!5649151 (= c!992957 ((_ is EmptyLang!15631) (regTwo!31774 r!7292)))))

(declare-fun b!5649152 () Bool)

(assert (=> b!5649152 (= e!3479930 (not (= (head!12006 (_2!36031 (get!21730 lt!2264335))) (c!992159 (regTwo!31774 r!7292)))))))

(assert (= (and d!1784667 c!992956) b!5649140))

(assert (= (and d!1784667 (not c!992956)) b!5649144))

(assert (= (and d!1784667 c!992955) b!5649148))

(assert (= (and d!1784667 (not c!992955)) b!5649151))

(assert (= (and b!5649151 c!992957) b!5649142))

(assert (= (and b!5649151 (not c!992957)) b!5649147))

(assert (= (and b!5649147 (not res!2389475)) b!5649149))

(assert (= (and b!5649149 res!2389472) b!5649139))

(assert (= (and b!5649139 res!2389476) b!5649150))

(assert (= (and b!5649150 res!2389471) b!5649146))

(assert (= (and b!5649149 (not res!2389470)) b!5649141))

(assert (= (and b!5649141 res!2389477) b!5649145))

(assert (= (and b!5649145 (not res!2389473)) b!5649143))

(assert (= (and b!5649143 (not res!2389474)) b!5649152))

(assert (= (or b!5649148 b!5649139 b!5649145) bm!427338))

(declare-fun m!6616536 () Bool)

(assert (=> d!1784667 m!6616536))

(assert (=> d!1784667 m!6616114))

(declare-fun m!6616538 () Bool)

(assert (=> b!5649152 m!6616538))

(assert (=> b!5649146 m!6616538))

(assert (=> bm!427338 m!6616536))

(declare-fun m!6616540 () Bool)

(assert (=> b!5649150 m!6616540))

(assert (=> b!5649150 m!6616540))

(declare-fun m!6616542 () Bool)

(assert (=> b!5649150 m!6616542))

(assert (=> b!5649143 m!6616540))

(assert (=> b!5649143 m!6616540))

(assert (=> b!5649143 m!6616542))

(assert (=> b!5649144 m!6616538))

(assert (=> b!5649144 m!6616538))

(declare-fun m!6616544 () Bool)

(assert (=> b!5649144 m!6616544))

(assert (=> b!5649144 m!6616540))

(assert (=> b!5649144 m!6616544))

(assert (=> b!5649144 m!6616540))

(declare-fun m!6616546 () Bool)

(assert (=> b!5649144 m!6616546))

(assert (=> b!5649140 m!6616120))

(assert (=> b!5647032 d!1784667))

(assert (=> b!5647032 d!1784439))

(declare-fun d!1784669 () Bool)

(assert (=> d!1784669 (= (isEmptyExpr!1172 lt!2264375) ((_ is EmptyExpr!15631) lt!2264375))))

(assert (=> b!5647323 d!1784669))

(assert (=> b!5647273 d!1784571))

(assert (=> b!5647273 d!1784469))

(declare-fun d!1784671 () Bool)

(assert (=> d!1784671 (= (Exists!2731 (ite c!992453 lambda!303521 lambda!303522)) (choose!42758 (ite c!992453 lambda!303521 lambda!303522)))))

(declare-fun bs!1314017 () Bool)

(assert (= bs!1314017 d!1784671))

(declare-fun m!6616548 () Bool)

(assert (=> bs!1314017 m!6616548))

(assert (=> bm!427020 d!1784671))

(assert (=> d!1783685 d!1783683))

(assert (=> d!1783685 d!1783681))

(declare-fun d!1784673 () Bool)

(assert (=> d!1784673 (= (matchR!7816 r!7292 s!2326) (matchRSpec!2734 r!7292 s!2326))))

(assert (=> d!1784673 true))

(declare-fun _$88!3933 () Unit!156056)

(assert (=> d!1784673 (= (choose!42761 r!7292 s!2326) _$88!3933)))

(declare-fun bs!1314018 () Bool)

(assert (= bs!1314018 d!1784673))

(assert (=> bs!1314018 m!6613790))

(assert (=> bs!1314018 m!6613788))

(assert (=> d!1783685 d!1784673))

(assert (=> d!1783685 d!1783817))

(declare-fun d!1784675 () Bool)

(assert (=> d!1784675 (= (Exists!2731 lambda!303512) (choose!42758 lambda!303512))))

(declare-fun bs!1314019 () Bool)

(assert (= bs!1314019 d!1784675))

(declare-fun m!6616550 () Bool)

(assert (=> bs!1314019 m!6616550))

(assert (=> d!1783751 d!1784675))

(declare-fun d!1784677 () Bool)

(assert (=> d!1784677 (= (Exists!2731 lambda!303513) (choose!42758 lambda!303513))))

(declare-fun bs!1314020 () Bool)

(assert (= bs!1314020 d!1784677))

(declare-fun m!6616552 () Bool)

(assert (=> bs!1314020 m!6616552))

(assert (=> d!1783751 d!1784677))

(declare-fun bs!1314021 () Bool)

(declare-fun d!1784679 () Bool)

(assert (= bs!1314021 (and d!1784679 d!1783675)))

(declare-fun lambda!303685 () Int)

(assert (=> bs!1314021 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303685 lambda!303489))))

(declare-fun bs!1314022 () Bool)

(assert (= bs!1314022 (and d!1784679 b!5646415)))

(assert (=> bs!1314022 (not (= lambda!303685 lambda!303429))))

(assert (=> bs!1314022 (not (= lambda!303685 lambda!303427))))

(declare-fun bs!1314023 () Bool)

(assert (= bs!1314023 (and d!1784679 b!5647372)))

(assert (=> bs!1314023 (not (= lambda!303685 lambda!303521))))

(declare-fun bs!1314024 () Bool)

(assert (= bs!1314024 (and d!1784679 d!1784481)))

(assert (=> bs!1314024 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303685 lambda!303655))))

(assert (=> bs!1314022 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303685 lambda!303426))))

(assert (=> bs!1314022 (= lambda!303685 lambda!303428)))

(declare-fun bs!1314025 () Bool)

(assert (= bs!1314025 (and d!1784679 b!5647367)))

(assert (=> bs!1314025 (not (= lambda!303685 lambda!303522))))

(declare-fun bs!1314026 () Bool)

(assert (= bs!1314026 (and d!1784679 b!5647087)))

(assert (=> bs!1314026 (not (= lambda!303685 lambda!303501))))

(declare-fun bs!1314027 () Bool)

(assert (= bs!1314027 (and d!1784679 d!1784649)))

(assert (=> bs!1314027 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303685 lambda!303681))))

(declare-fun bs!1314028 () Bool)

(assert (= bs!1314028 (and d!1784679 d!1783751)))

(assert (=> bs!1314028 (not (= lambda!303685 lambda!303513))))

(declare-fun bs!1314029 () Bool)

(assert (= bs!1314029 (and d!1784679 b!5648918)))

(assert (=> bs!1314029 (not (= lambda!303685 lambda!303664))))

(declare-fun bs!1314030 () Bool)

(assert (= bs!1314030 (and d!1784679 b!5646420)))

(assert (=> bs!1314030 (not (= lambda!303685 lambda!303424))))

(declare-fun bs!1314031 () Bool)

(assert (= bs!1314031 (and d!1784679 d!1783677)))

(assert (=> bs!1314031 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303685 lambda!303494))))

(declare-fun bs!1314032 () Bool)

(assert (= bs!1314032 (and d!1784679 b!5648782)))

(assert (=> bs!1314032 (not (= lambda!303685 lambda!303657))))

(declare-fun bs!1314033 () Bool)

(assert (= bs!1314033 (and d!1784679 b!5647359)))

(assert (=> bs!1314033 (not (= lambda!303685 lambda!303518))))

(declare-fun bs!1314034 () Bool)

(assert (= bs!1314034 (and d!1784679 b!5647092)))

(assert (=> bs!1314034 (not (= lambda!303685 lambda!303500))))

(assert (=> bs!1314031 (not (= lambda!303685 lambda!303495))))

(declare-fun bs!1314035 () Bool)

(assert (= bs!1314035 (and d!1784679 d!1784359)))

(assert (=> bs!1314035 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303685 lambda!303630))))

(declare-fun bs!1314036 () Bool)

(assert (= bs!1314036 (and d!1784679 b!5648955)))

(assert (=> bs!1314036 (not (= lambda!303685 lambda!303670))))

(declare-fun bs!1314037 () Bool)

(assert (= bs!1314037 (and d!1784679 b!5648815)))

(assert (=> bs!1314037 (not (= lambda!303685 lambda!303660))))

(assert (=> bs!1314024 (not (= lambda!303685 lambda!303656))))

(declare-fun bs!1314038 () Bool)

(assert (= bs!1314038 (and d!1784679 d!1783793)))

(assert (=> bs!1314038 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303685 lambda!303523))))

(assert (=> bs!1314035 (not (= lambda!303685 lambda!303631))))

(assert (=> bs!1314038 (not (= lambda!303685 lambda!303524))))

(declare-fun bs!1314039 () Bool)

(assert (= bs!1314039 (and d!1784679 b!5648777)))

(assert (=> bs!1314039 (not (= lambda!303685 lambda!303658))))

(declare-fun bs!1314040 () Bool)

(assert (= bs!1314040 (and d!1784679 d!1783781)))

(assert (=> bs!1314040 (= lambda!303685 lambda!303520)))

(assert (=> bs!1314028 (= lambda!303685 lambda!303512)))

(assert (=> bs!1314030 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303685 lambda!303423))))

(declare-fun bs!1314041 () Bool)

(assert (= bs!1314041 (and d!1784679 b!5649017)))

(assert (=> bs!1314041 (not (= lambda!303685 lambda!303674))))

(declare-fun bs!1314042 () Bool)

(assert (= bs!1314042 (and d!1784679 b!5647354)))

(assert (=> bs!1314042 (not (= lambda!303685 lambda!303519))))

(declare-fun bs!1314043 () Bool)

(assert (= bs!1314043 (and d!1784679 b!5648923)))

(assert (=> bs!1314043 (not (= lambda!303685 lambda!303663))))

(declare-fun bs!1314044 () Bool)

(assert (= bs!1314044 (and d!1784679 b!5649012)))

(assert (=> bs!1314044 (not (= lambda!303685 lambda!303675))))

(declare-fun bs!1314045 () Bool)

(assert (= bs!1314045 (and d!1784679 b!5648820)))

(assert (=> bs!1314045 (not (= lambda!303685 lambda!303659))))

(declare-fun bs!1314046 () Bool)

(assert (= bs!1314046 (and d!1784679 b!5648950)))

(assert (=> bs!1314046 (not (= lambda!303685 lambda!303671))))

(declare-fun bs!1314047 () Bool)

(assert (= bs!1314047 (and d!1784679 d!1783759)))

(assert (=> bs!1314047 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303685 lambda!303514))))

(assert (=> d!1784679 true))

(assert (=> d!1784679 true))

(assert (=> d!1784679 true))

(declare-fun lambda!303686 () Int)

(assert (=> bs!1314021 (not (= lambda!303686 lambda!303489))))

(assert (=> bs!1314022 (= lambda!303686 lambda!303429)))

(declare-fun bs!1314048 () Bool)

(assert (= bs!1314048 d!1784679))

(assert (=> bs!1314048 (not (= lambda!303686 lambda!303685))))

(assert (=> bs!1314022 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303686 lambda!303427))))

(assert (=> bs!1314023 (not (= lambda!303686 lambda!303521))))

(assert (=> bs!1314024 (not (= lambda!303686 lambda!303655))))

(assert (=> bs!1314022 (not (= lambda!303686 lambda!303426))))

(assert (=> bs!1314022 (not (= lambda!303686 lambda!303428))))

(assert (=> bs!1314025 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264184)) (= lt!2264217 (regTwo!31774 lt!2264184))) (= lambda!303686 lambda!303522))))

(assert (=> bs!1314026 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303686 lambda!303501))))

(assert (=> bs!1314027 (not (= lambda!303686 lambda!303681))))

(assert (=> bs!1314028 (= lambda!303686 lambda!303513)))

(assert (=> bs!1314029 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31775 lt!2264184))) (= lt!2264217 (regTwo!31774 (regOne!31775 lt!2264184)))) (= lambda!303686 lambda!303664))))

(assert (=> bs!1314030 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303686 lambda!303424))))

(assert (=> bs!1314031 (not (= lambda!303686 lambda!303494))))

(assert (=> bs!1314032 (not (= lambda!303686 lambda!303657))))

(assert (=> bs!1314033 (not (= lambda!303686 lambda!303518))))

(assert (=> bs!1314034 (not (= lambda!303686 lambda!303500))))

(assert (=> bs!1314031 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303686 lambda!303495))))

(assert (=> bs!1314035 (not (= lambda!303686 lambda!303630))))

(assert (=> bs!1314036 (not (= lambda!303686 lambda!303670))))

(assert (=> bs!1314037 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regTwo!31775 lt!2264184))) (= lt!2264217 (regTwo!31774 (regTwo!31775 lt!2264184)))) (= lambda!303686 lambda!303660))))

(assert (=> bs!1314024 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303686 lambda!303656))))

(assert (=> bs!1314038 (not (= lambda!303686 lambda!303523))))

(assert (=> bs!1314035 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303686 lambda!303631))))

(assert (=> bs!1314038 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303686 lambda!303524))))

(assert (=> bs!1314039 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regTwo!31775 r!7292))) (= lt!2264217 (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303686 lambda!303658))))

(assert (=> bs!1314040 (not (= lambda!303686 lambda!303520))))

(assert (=> bs!1314028 (not (= lambda!303686 lambda!303512))))

(assert (=> bs!1314030 (not (= lambda!303686 lambda!303423))))

(assert (=> bs!1314041 (not (= lambda!303686 lambda!303674))))

(assert (=> bs!1314042 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 lt!2264222)) (= lt!2264217 (regTwo!31774 lt!2264222))) (= lambda!303686 lambda!303519))))

(assert (=> bs!1314043 (not (= lambda!303686 lambda!303663))))

(assert (=> bs!1314044 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31775 r!7292))) (= lt!2264217 (regTwo!31774 (regOne!31775 r!7292)))) (= lambda!303686 lambda!303675))))

(assert (=> bs!1314045 (not (= lambda!303686 lambda!303659))))

(assert (=> bs!1314046 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regTwo!31775 lt!2264222))) (= lt!2264217 (regTwo!31774 (regTwo!31775 lt!2264222)))) (= lambda!303686 lambda!303671))))

(assert (=> bs!1314047 (not (= lambda!303686 lambda!303514))))

(assert (=> d!1784679 true))

(assert (=> d!1784679 true))

(assert (=> d!1784679 true))

(assert (=> d!1784679 (= (Exists!2731 lambda!303685) (Exists!2731 lambda!303686))))

(assert (=> d!1784679 true))

(declare-fun _$90!1389 () Unit!156056)

(assert (=> d!1784679 (= (choose!42760 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326) _$90!1389)))

(declare-fun m!6616554 () Bool)

(assert (=> bs!1314048 m!6616554))

(declare-fun m!6616556 () Bool)

(assert (=> bs!1314048 m!6616556))

(assert (=> d!1783751 d!1784679))

(assert (=> d!1783751 d!1784337))

(declare-fun d!1784681 () Bool)

(assert (=> d!1784681 (= (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))) (nullableFct!1760 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun bs!1314049 () Bool)

(assert (= bs!1314049 d!1784681))

(declare-fun m!6616558 () Bool)

(assert (=> bs!1314049 m!6616558))

(assert (=> b!5647186 d!1784681))

(declare-fun c!992959 () Bool)

(declare-fun bm!427339 () Bool)

(declare-fun call!427347 () List!63192)

(declare-fun c!992962 () Bool)

(assert (=> bm!427339 (= call!427347 ($colon$colon!1681 (exprs!5515 (ite c!992406 lt!2264221 (Context!10031 call!427017))) (ite (or c!992962 c!992959) (regTwo!31774 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))))

(declare-fun bm!427340 () Bool)

(declare-fun call!427348 () List!63192)

(assert (=> bm!427340 (= call!427348 call!427347)))

(declare-fun b!5649153 () Bool)

(declare-fun e!3479938 () (InoxSet Context!10030))

(assert (=> b!5649153 (= e!3479938 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649154 () Bool)

(declare-fun e!3479934 () (InoxSet Context!10030))

(declare-fun call!427346 () (InoxSet Context!10030))

(assert (=> b!5649154 (= e!3479934 call!427346)))

(declare-fun c!992960 () Bool)

(declare-fun d!1784683 () Bool)

(assert (=> d!1784683 (= c!992960 (and ((_ is ElementMatch!15631) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (= (c!992159 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (h!69517 s!2326))))))

(declare-fun e!3479935 () (InoxSet Context!10030))

(assert (=> d!1784683 (= (derivationStepZipperDown!973 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))) (ite c!992406 lt!2264221 (Context!10031 call!427017)) (h!69517 s!2326)) e!3479935)))

(declare-fun bm!427341 () Bool)

(declare-fun call!427344 () (InoxSet Context!10030))

(declare-fun c!992961 () Bool)

(assert (=> bm!427341 (= call!427344 (derivationStepZipperDown!973 (ite c!992961 (regOne!31775 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (regOne!31774 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))) (ite c!992961 (ite c!992406 lt!2264221 (Context!10031 call!427017)) (Context!10031 call!427347)) (h!69517 s!2326)))))

(declare-fun b!5649155 () Bool)

(declare-fun e!3479936 () (InoxSet Context!10030))

(assert (=> b!5649155 (= e!3479935 e!3479936)))

(assert (=> b!5649155 (= c!992961 ((_ is Union!15631) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun b!5649156 () Bool)

(declare-fun call!427345 () (InoxSet Context!10030))

(assert (=> b!5649156 (= e!3479936 ((_ map or) call!427344 call!427345))))

(declare-fun b!5649157 () Bool)

(declare-fun e!3479933 () (InoxSet Context!10030))

(declare-fun call!427349 () (InoxSet Context!10030))

(assert (=> b!5649157 (= e!3479933 ((_ map or) call!427344 call!427349))))

(declare-fun b!5649158 () Bool)

(assert (=> b!5649158 (= e!3479935 (store ((as const (Array Context!10030 Bool)) false) (ite c!992406 lt!2264221 (Context!10031 call!427017)) true))))

(declare-fun b!5649159 () Bool)

(declare-fun e!3479937 () Bool)

(assert (=> b!5649159 (= e!3479937 (nullable!5663 (regOne!31774 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))))

(declare-fun b!5649160 () Bool)

(declare-fun c!992958 () Bool)

(assert (=> b!5649160 (= c!992958 ((_ is Star!15631) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5649160 (= e!3479934 e!3479938)))

(declare-fun b!5649161 () Bool)

(assert (=> b!5649161 (= e!3479938 call!427346)))

(declare-fun b!5649162 () Bool)

(assert (=> b!5649162 (= e!3479933 e!3479934)))

(assert (=> b!5649162 (= c!992959 ((_ is Concat!24476) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(declare-fun bm!427342 () Bool)

(assert (=> bm!427342 (= call!427346 call!427349)))

(declare-fun bm!427343 () Bool)

(assert (=> bm!427343 (= call!427349 call!427345)))

(declare-fun b!5649163 () Bool)

(assert (=> b!5649163 (= c!992962 e!3479937)))

(declare-fun res!2389478 () Bool)

(assert (=> b!5649163 (=> (not res!2389478) (not e!3479937))))

(assert (=> b!5649163 (= res!2389478 ((_ is Concat!24476) (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))))))

(assert (=> b!5649163 (= e!3479936 e!3479933)))

(declare-fun bm!427344 () Bool)

(assert (=> bm!427344 (= call!427345 (derivationStepZipperDown!973 (ite c!992961 (regTwo!31775 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (ite c!992962 (regTwo!31774 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (ite c!992959 (regOne!31774 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292))))) (reg!15960 (ite c!992406 (regOne!31775 (regOne!31774 (regOne!31774 r!7292))) (regOne!31774 (regOne!31774 (regOne!31774 r!7292)))))))) (ite (or c!992961 c!992962) (ite c!992406 lt!2264221 (Context!10031 call!427017)) (Context!10031 call!427348)) (h!69517 s!2326)))))

(assert (= (and d!1784683 c!992960) b!5649158))

(assert (= (and d!1784683 (not c!992960)) b!5649155))

(assert (= (and b!5649155 c!992961) b!5649156))

(assert (= (and b!5649155 (not c!992961)) b!5649163))

(assert (= (and b!5649163 res!2389478) b!5649159))

(assert (= (and b!5649163 c!992962) b!5649157))

(assert (= (and b!5649163 (not c!992962)) b!5649162))

(assert (= (and b!5649162 c!992959) b!5649154))

(assert (= (and b!5649162 (not c!992959)) b!5649160))

(assert (= (and b!5649160 c!992958) b!5649161))

(assert (= (and b!5649160 (not c!992958)) b!5649153))

(assert (= (or b!5649154 b!5649161) bm!427340))

(assert (= (or b!5649154 b!5649161) bm!427342))

(assert (= (or b!5649157 bm!427340) bm!427339))

(assert (= (or b!5649157 bm!427342) bm!427343))

(assert (= (or b!5649156 bm!427343) bm!427344))

(assert (= (or b!5649156 b!5649157) bm!427341))

(declare-fun m!6616560 () Bool)

(assert (=> bm!427339 m!6616560))

(declare-fun m!6616562 () Bool)

(assert (=> b!5649159 m!6616562))

(declare-fun m!6616564 () Bool)

(assert (=> bm!427341 m!6616564))

(declare-fun m!6616566 () Bool)

(assert (=> bm!427344 m!6616566))

(declare-fun m!6616568 () Bool)

(assert (=> b!5649158 m!6616568))

(assert (=> bm!427011 d!1784683))

(declare-fun d!1784685 () Bool)

(assert (=> d!1784685 (= (nullable!5663 (reg!15960 r!7292)) (nullableFct!1760 (reg!15960 r!7292)))))

(declare-fun bs!1314050 () Bool)

(assert (= bs!1314050 d!1784685))

(declare-fun m!6616570 () Bool)

(assert (=> bs!1314050 m!6616570))

(assert (=> b!5647457 d!1784685))

(declare-fun d!1784687 () Bool)

(assert (=> d!1784687 (= (isEmpty!34913 (tail!11102 (exprs!5515 (h!69518 zl!343)))) ((_ is Nil!63068) (tail!11102 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5647265 d!1784687))

(declare-fun d!1784689 () Bool)

(assert (=> d!1784689 (= (tail!11102 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343))))))

(assert (=> b!5647265 d!1784689))

(declare-fun bs!1314051 () Bool)

(declare-fun d!1784691 () Bool)

(assert (= bs!1314051 (and d!1784691 d!1784407)))

(declare-fun lambda!303687 () Int)

(assert (=> bs!1314051 (not (= lambda!303687 lambda!303640))))

(declare-fun bs!1314052 () Bool)

(assert (= bs!1314052 (and d!1784691 b!5647418)))

(assert (=> bs!1314052 (not (= lambda!303687 lambda!303538))))

(declare-fun bs!1314053 () Bool)

(assert (= bs!1314053 (and d!1784691 d!1784545)))

(assert (=> bs!1314053 (= lambda!303687 lambda!303661)))

(declare-fun bs!1314054 () Bool)

(assert (= bs!1314054 (and d!1784691 b!5648691)))

(assert (=> bs!1314054 (not (= lambda!303687 lambda!303651))))

(declare-fun bs!1314055 () Bool)

(assert (= bs!1314055 (and d!1784691 d!1784665)))

(assert (=> bs!1314055 (= lambda!303687 lambda!303684)))

(declare-fun bs!1314056 () Bool)

(assert (= bs!1314056 (and d!1784691 b!5648672)))

(assert (=> bs!1314056 (not (= lambda!303687 lambda!303643))))

(declare-fun bs!1314057 () Bool)

(assert (= bs!1314057 (and d!1784691 d!1784659)))

(assert (=> bs!1314057 (= lambda!303687 lambda!303683)))

(declare-fun bs!1314058 () Bool)

(assert (= bs!1314058 (and d!1784691 b!5648689)))

(assert (=> bs!1314058 (not (= lambda!303687 lambda!303650))))

(declare-fun bs!1314059 () Bool)

(assert (= bs!1314059 (and d!1784691 d!1784569)))

(assert (=> bs!1314059 (= lambda!303687 lambda!303665)))

(declare-fun bs!1314060 () Bool)

(assert (= bs!1314060 (and d!1784691 d!1784425)))

(assert (=> bs!1314060 (= lambda!303687 lambda!303646)))

(declare-fun bs!1314061 () Bool)

(assert (= bs!1314061 (and d!1784691 d!1784549)))

(assert (=> bs!1314061 (= lambda!303687 lambda!303662)))

(declare-fun bs!1314062 () Bool)

(assert (= bs!1314062 (and d!1784691 d!1784435)))

(assert (=> bs!1314062 (not (= lambda!303687 lambda!303652))))

(declare-fun bs!1314063 () Bool)

(assert (= bs!1314063 (and d!1784691 b!5648670)))

(assert (=> bs!1314063 (not (= lambda!303687 lambda!303642))))

(declare-fun bs!1314064 () Bool)

(assert (= bs!1314064 (and d!1784691 d!1784631)))

(assert (=> bs!1314064 (= lambda!303687 lambda!303678)))

(declare-fun bs!1314065 () Bool)

(assert (= bs!1314065 (and d!1784691 b!5647423)))

(assert (=> bs!1314065 (not (= lambda!303687 lambda!303541))))

(declare-fun bs!1314066 () Bool)

(assert (= bs!1314066 (and d!1784691 b!5647425)))

(assert (=> bs!1314066 (not (= lambda!303687 lambda!303542))))

(declare-fun bs!1314067 () Bool)

(assert (= bs!1314067 (and d!1784691 b!5647420)))

(assert (=> bs!1314067 (not (= lambda!303687 lambda!303539))))

(assert (=> d!1784691 (= (nullableZipper!1613 lt!2264207) (exists!2194 lt!2264207 lambda!303687))))

(declare-fun bs!1314068 () Bool)

(assert (= bs!1314068 d!1784691))

(declare-fun m!6616572 () Bool)

(assert (=> bs!1314068 m!6616572))

(assert (=> b!5647208 d!1784691))

(assert (=> d!1783747 d!1784413))

(assert (=> d!1783747 d!1784509))

(declare-fun bm!427345 () Bool)

(declare-fun call!427352 () Bool)

(declare-fun call!427351 () Bool)

(assert (=> bm!427345 (= call!427352 call!427351)))

(declare-fun b!5649164 () Bool)

(declare-fun res!2389482 () Bool)

(declare-fun e!3479940 () Bool)

(assert (=> b!5649164 (=> (not res!2389482) (not e!3479940))))

(assert (=> b!5649164 (= res!2389482 call!427352)))

(declare-fun e!3479942 () Bool)

(assert (=> b!5649164 (= e!3479942 e!3479940)))

(declare-fun b!5649165 () Bool)

(declare-fun res!2389483 () Bool)

(declare-fun e!3479943 () Bool)

(assert (=> b!5649165 (=> res!2389483 e!3479943)))

(assert (=> b!5649165 (= res!2389483 (not ((_ is Concat!24476) (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292)))))))

(assert (=> b!5649165 (= e!3479942 e!3479943)))

(declare-fun bm!427346 () Bool)

(declare-fun c!992964 () Bool)

(declare-fun call!427350 () Bool)

(assert (=> bm!427346 (= call!427350 (validRegex!7367 (ite c!992964 (regTwo!31775 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))) (regTwo!31774 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))))

(declare-fun d!1784693 () Bool)

(declare-fun res!2389481 () Bool)

(declare-fun e!3479945 () Bool)

(assert (=> d!1784693 (=> res!2389481 e!3479945)))

(assert (=> d!1784693 (= res!2389481 ((_ is ElementMatch!15631) (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))

(assert (=> d!1784693 (= (validRegex!7367 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))) e!3479945)))

(declare-fun b!5649166 () Bool)

(declare-fun e!3479939 () Bool)

(assert (=> b!5649166 (= e!3479939 e!3479942)))

(assert (=> b!5649166 (= c!992964 ((_ is Union!15631) (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))

(declare-fun b!5649167 () Bool)

(assert (=> b!5649167 (= e!3479945 e!3479939)))

(declare-fun c!992963 () Bool)

(assert (=> b!5649167 (= c!992963 ((_ is Star!15631) (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))

(declare-fun bm!427347 () Bool)

(assert (=> bm!427347 (= call!427351 (validRegex!7367 (ite c!992963 (reg!15960 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))) (ite c!992964 (regOne!31775 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))) (regOne!31774 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292)))))))))

(declare-fun b!5649168 () Bool)

(declare-fun e!3479944 () Bool)

(assert (=> b!5649168 (= e!3479944 call!427351)))

(declare-fun b!5649169 () Bool)

(declare-fun e!3479941 () Bool)

(assert (=> b!5649169 (= e!3479941 call!427350)))

(declare-fun b!5649170 () Bool)

(assert (=> b!5649170 (= e!3479943 e!3479941)))

(declare-fun res!2389480 () Bool)

(assert (=> b!5649170 (=> (not res!2389480) (not e!3479941))))

(assert (=> b!5649170 (= res!2389480 call!427352)))

(declare-fun b!5649171 () Bool)

(assert (=> b!5649171 (= e!3479940 call!427350)))

(declare-fun b!5649172 () Bool)

(assert (=> b!5649172 (= e!3479939 e!3479944)))

(declare-fun res!2389479 () Bool)

(assert (=> b!5649172 (= res!2389479 (not (nullable!5663 (reg!15960 (ite c!992489 (regTwo!31775 r!7292) (regTwo!31774 r!7292))))))))

(assert (=> b!5649172 (=> (not res!2389479) (not e!3479944))))

(assert (= (and d!1784693 (not res!2389481)) b!5649167))

(assert (= (and b!5649167 c!992963) b!5649172))

(assert (= (and b!5649167 (not c!992963)) b!5649166))

(assert (= (and b!5649172 res!2389479) b!5649168))

(assert (= (and b!5649166 c!992964) b!5649164))

(assert (= (and b!5649166 (not c!992964)) b!5649165))

(assert (= (and b!5649164 res!2389482) b!5649171))

(assert (= (and b!5649165 (not res!2389483)) b!5649170))

(assert (= (and b!5649170 res!2389480) b!5649169))

(assert (= (or b!5649171 b!5649169) bm!427346))

(assert (= (or b!5649164 b!5649170) bm!427345))

(assert (= (or b!5649168 bm!427345) bm!427347))

(declare-fun m!6616574 () Bool)

(assert (=> bm!427346 m!6616574))

(declare-fun m!6616576 () Bool)

(assert (=> bm!427347 m!6616576))

(declare-fun m!6616578 () Bool)

(assert (=> b!5649172 m!6616578))

(assert (=> bm!427029 d!1784693))

(declare-fun d!1784695 () Bool)

(assert (=> d!1784695 (= (head!12007 (unfocusZipperList!1059 zl!343)) (h!69516 (unfocusZipperList!1059 zl!343)))))

(assert (=> b!5647397 d!1784695))

(declare-fun d!1784697 () Bool)

(declare-fun c!992965 () Bool)

(assert (=> d!1784697 (= c!992965 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479946 () Bool)

(assert (=> d!1784697 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264224 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479946)))

(declare-fun b!5649173 () Bool)

(assert (=> b!5649173 (= e!3479946 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264224 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649174 () Bool)

(assert (=> b!5649174 (= e!3479946 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264224 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784697 c!992965) b!5649173))

(assert (= (and d!1784697 (not c!992965)) b!5649174))

(assert (=> d!1784697 m!6614310))

(assert (=> d!1784697 m!6615792))

(assert (=> b!5649173 m!6614466))

(declare-fun m!6616580 () Bool)

(assert (=> b!5649173 m!6616580))

(assert (=> b!5649174 m!6614310))

(assert (=> b!5649174 m!6615796))

(assert (=> b!5649174 m!6614466))

(assert (=> b!5649174 m!6615796))

(declare-fun m!6616582 () Bool)

(assert (=> b!5649174 m!6616582))

(assert (=> b!5649174 m!6614310))

(assert (=> b!5649174 m!6615800))

(assert (=> b!5649174 m!6616582))

(assert (=> b!5649174 m!6615800))

(declare-fun m!6616584 () Bool)

(assert (=> b!5649174 m!6616584))

(assert (=> b!5647202 d!1784697))

(declare-fun bs!1314069 () Bool)

(declare-fun d!1784699 () Bool)

(assert (= bs!1314069 (and d!1784699 d!1784611)))

(declare-fun lambda!303688 () Int)

(assert (=> bs!1314069 (= lambda!303688 lambda!303673)))

(declare-fun bs!1314070 () Bool)

(assert (= bs!1314070 (and d!1784699 b!5646443)))

(assert (=> bs!1314070 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303688 lambda!303425))))

(declare-fun bs!1314071 () Bool)

(assert (= bs!1314071 (and d!1784699 d!1784621)))

(assert (=> bs!1314071 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303688 lambda!303676))))

(declare-fun bs!1314072 () Bool)

(assert (= bs!1314072 (and d!1784699 d!1784467)))

(assert (=> bs!1314072 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303688 lambda!303654))))

(declare-fun bs!1314073 () Bool)

(assert (= bs!1314073 (and d!1784699 d!1784575)))

(assert (=> bs!1314073 (= lambda!303688 lambda!303666)))

(declare-fun bs!1314074 () Bool)

(assert (= bs!1314074 (and d!1784699 d!1783813)))

(assert (=> bs!1314074 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303688 lambda!303543))))

(declare-fun bs!1314075 () Bool)

(assert (= bs!1314075 (and d!1784699 d!1783735)))

(assert (=> bs!1314075 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303688 lambda!303508))))

(declare-fun bs!1314076 () Bool)

(assert (= bs!1314076 (and d!1784699 d!1784655)))

(assert (=> bs!1314076 (= lambda!303688 lambda!303682)))

(declare-fun bs!1314077 () Bool)

(assert (= bs!1314077 (and d!1784699 d!1784323)))

(assert (=> bs!1314077 (= lambda!303688 lambda!303624)))

(assert (=> d!1784699 true))

(assert (=> d!1784699 (= (derivationStepZipper!1718 lt!2264224 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264224 lambda!303688))))

(declare-fun bs!1314078 () Bool)

(assert (= bs!1314078 d!1784699))

(declare-fun m!6616586 () Bool)

(assert (=> bs!1314078 m!6616586))

(assert (=> b!5647202 d!1784699))

(assert (=> b!5647202 d!1784325))

(assert (=> b!5647202 d!1784327))

(declare-fun d!1784701 () Bool)

(assert (=> d!1784701 (= (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))) (nullableFct!1760 (h!69516 (exprs!5515 (Context!10031 (Cons!63068 (h!69516 (exprs!5515 (h!69518 zl!343))) (t!376490 (exprs!5515 (h!69518 zl!343)))))))))))

(declare-fun bs!1314079 () Bool)

(assert (= bs!1314079 d!1784701))

(declare-fun m!6616588 () Bool)

(assert (=> bs!1314079 m!6616588))

(assert (=> b!5647147 d!1784701))

(assert (=> d!1783809 d!1783811))

(declare-fun d!1784703 () Bool)

(assert (=> d!1784703 (= (flatMap!1244 lt!2264195 lambda!303425) (dynLambda!24674 lambda!303425 lt!2264194))))

(assert (=> d!1784703 true))

(declare-fun _$13!2288 () Unit!156056)

(assert (=> d!1784703 (= (choose!42757 lt!2264195 lt!2264194 lambda!303425) _$13!2288)))

(declare-fun b_lambda!213731 () Bool)

(assert (=> (not b_lambda!213731) (not d!1784703)))

(declare-fun bs!1314080 () Bool)

(assert (= bs!1314080 d!1784703))

(assert (=> bs!1314080 m!6613660))

(assert (=> bs!1314080 m!6614776))

(assert (=> d!1783809 d!1784703))

(declare-fun d!1784705 () Bool)

(declare-fun c!992967 () Bool)

(declare-fun e!3479949 () Bool)

(assert (=> d!1784705 (= c!992967 e!3479949)))

(declare-fun res!2389484 () Bool)

(assert (=> d!1784705 (=> (not res!2389484) (not e!3479949))))

(assert (=> d!1784705 (= res!2389484 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221))))))))

(declare-fun e!3479948 () (InoxSet Context!10030))

(assert (=> d!1784705 (= (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264221))) (h!69517 s!2326)) e!3479948)))

(declare-fun b!5649175 () Bool)

(declare-fun e!3479947 () (InoxSet Context!10030))

(declare-fun call!427353 () (InoxSet Context!10030))

(assert (=> b!5649175 (= e!3479947 call!427353)))

(declare-fun b!5649176 () Bool)

(assert (=> b!5649176 (= e!3479948 e!3479947)))

(declare-fun c!992966 () Bool)

(assert (=> b!5649176 (= c!992966 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221))))))))

(declare-fun bm!427348 () Bool)

(assert (=> bm!427348 (= call!427353 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221)))))) (h!69517 s!2326)))))

(declare-fun b!5649177 () Bool)

(assert (=> b!5649177 (= e!3479947 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649178 () Bool)

(assert (=> b!5649178 (= e!3479948 ((_ map or) call!427353 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221)))))) (h!69517 s!2326))))))

(declare-fun b!5649179 () Bool)

(assert (=> b!5649179 (= e!3479949 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264221)))))))))

(assert (= (and d!1784705 res!2389484) b!5649179))

(assert (= (and d!1784705 c!992967) b!5649178))

(assert (= (and d!1784705 (not c!992967)) b!5649176))

(assert (= (and b!5649176 c!992966) b!5649175))

(assert (= (and b!5649176 (not c!992966)) b!5649177))

(assert (= (or b!5649178 b!5649175) bm!427348))

(declare-fun m!6616590 () Bool)

(assert (=> bm!427348 m!6616590))

(declare-fun m!6616592 () Bool)

(assert (=> b!5649178 m!6616592))

(declare-fun m!6616594 () Bool)

(assert (=> b!5649179 m!6616594))

(assert (=> b!5647002 d!1784705))

(assert (=> b!5647033 d!1784633))

(declare-fun bm!427349 () Bool)

(declare-fun c!992972 () Bool)

(declare-fun call!427357 () List!63192)

(declare-fun c!992969 () Bool)

(assert (=> bm!427349 (= call!427357 ($colon$colon!1681 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343))))) (ite (or c!992972 c!992969) (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69516 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun bm!427350 () Bool)

(declare-fun call!427358 () List!63192)

(assert (=> bm!427350 (= call!427358 call!427357)))

(declare-fun b!5649180 () Bool)

(declare-fun e!3479955 () (InoxSet Context!10030))

(assert (=> b!5649180 (= e!3479955 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649181 () Bool)

(declare-fun e!3479951 () (InoxSet Context!10030))

(declare-fun call!427356 () (InoxSet Context!10030))

(assert (=> b!5649181 (= e!3479951 call!427356)))

(declare-fun d!1784707 () Bool)

(declare-fun c!992970 () Bool)

(assert (=> d!1784707 (= c!992970 (and ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))) (= (c!992159 (h!69516 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326))))))

(declare-fun e!3479952 () (InoxSet Context!10030))

(assert (=> d!1784707 (= (derivationStepZipperDown!973 (h!69516 (exprs!5515 (h!69518 zl!343))) (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (h!69517 s!2326)) e!3479952)))

(declare-fun c!992971 () Bool)

(declare-fun bm!427351 () Bool)

(declare-fun call!427354 () (InoxSet Context!10030))

(assert (=> bm!427351 (= call!427354 (derivationStepZipperDown!973 (ite c!992971 (regOne!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))) (ite c!992971 (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (Context!10031 call!427357)) (h!69517 s!2326)))))

(declare-fun b!5649182 () Bool)

(declare-fun e!3479953 () (InoxSet Context!10030))

(assert (=> b!5649182 (= e!3479952 e!3479953)))

(assert (=> b!5649182 (= c!992971 ((_ is Union!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5649183 () Bool)

(declare-fun call!427355 () (InoxSet Context!10030))

(assert (=> b!5649183 (= e!3479953 ((_ map or) call!427354 call!427355))))

(declare-fun b!5649184 () Bool)

(declare-fun e!3479950 () (InoxSet Context!10030))

(declare-fun call!427359 () (InoxSet Context!10030))

(assert (=> b!5649184 (= e!3479950 ((_ map or) call!427354 call!427359))))

(declare-fun b!5649185 () Bool)

(assert (=> b!5649185 (= e!3479952 (store ((as const (Array Context!10030 Bool)) false) (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) true))))

(declare-fun b!5649186 () Bool)

(declare-fun e!3479954 () Bool)

(assert (=> b!5649186 (= e!3479954 (nullable!5663 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5649187 () Bool)

(declare-fun c!992968 () Bool)

(assert (=> b!5649187 (= c!992968 ((_ is Star!15631) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5649187 (= e!3479951 e!3479955)))

(declare-fun b!5649188 () Bool)

(assert (=> b!5649188 (= e!3479955 call!427356)))

(declare-fun b!5649189 () Bool)

(assert (=> b!5649189 (= e!3479950 e!3479951)))

(assert (=> b!5649189 (= c!992969 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun bm!427352 () Bool)

(assert (=> bm!427352 (= call!427356 call!427359)))

(declare-fun bm!427353 () Bool)

(assert (=> bm!427353 (= call!427359 call!427355)))

(declare-fun b!5649190 () Bool)

(assert (=> b!5649190 (= c!992972 e!3479954)))

(declare-fun res!2389485 () Bool)

(assert (=> b!5649190 (=> (not res!2389485) (not e!3479954))))

(assert (=> b!5649190 (= res!2389485 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> b!5649190 (= e!3479953 e!3479950)))

(declare-fun bm!427354 () Bool)

(assert (=> bm!427354 (= call!427355 (derivationStepZipperDown!973 (ite c!992971 (regTwo!31775 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992972 (regTwo!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (ite c!992969 (regOne!31774 (h!69516 (exprs!5515 (h!69518 zl!343)))) (reg!15960 (h!69516 (exprs!5515 (h!69518 zl!343))))))) (ite (or c!992971 c!992972) (Context!10031 (t!376490 (exprs!5515 (h!69518 zl!343)))) (Context!10031 call!427358)) (h!69517 s!2326)))))

(assert (= (and d!1784707 c!992970) b!5649185))

(assert (= (and d!1784707 (not c!992970)) b!5649182))

(assert (= (and b!5649182 c!992971) b!5649183))

(assert (= (and b!5649182 (not c!992971)) b!5649190))

(assert (= (and b!5649190 res!2389485) b!5649186))

(assert (= (and b!5649190 c!992972) b!5649184))

(assert (= (and b!5649190 (not c!992972)) b!5649189))

(assert (= (and b!5649189 c!992969) b!5649181))

(assert (= (and b!5649189 (not c!992969)) b!5649187))

(assert (= (and b!5649187 c!992968) b!5649188))

(assert (= (and b!5649187 (not c!992968)) b!5649180))

(assert (= (or b!5649181 b!5649188) bm!427350))

(assert (= (or b!5649181 b!5649188) bm!427352))

(assert (= (or b!5649184 bm!427350) bm!427349))

(assert (= (or b!5649184 bm!427352) bm!427353))

(assert (= (or b!5649183 bm!427353) bm!427354))

(assert (= (or b!5649183 b!5649184) bm!427351))

(declare-fun m!6616596 () Bool)

(assert (=> bm!427349 m!6616596))

(assert (=> b!5649186 m!6614438))

(declare-fun m!6616598 () Bool)

(assert (=> bm!427351 m!6616598))

(declare-fun m!6616600 () Bool)

(assert (=> bm!427354 m!6616600))

(declare-fun m!6616602 () Bool)

(assert (=> b!5649185 m!6616602))

(assert (=> bm!426983 d!1784707))

(declare-fun bs!1314081 () Bool)

(declare-fun d!1784709 () Bool)

(assert (= bs!1314081 (and d!1784709 d!1784407)))

(declare-fun lambda!303689 () Int)

(assert (=> bs!1314081 (not (= lambda!303689 lambda!303640))))

(declare-fun bs!1314082 () Bool)

(assert (= bs!1314082 (and d!1784709 b!5647418)))

(assert (=> bs!1314082 (not (= lambda!303689 lambda!303538))))

(declare-fun bs!1314083 () Bool)

(assert (= bs!1314083 (and d!1784709 d!1784545)))

(assert (=> bs!1314083 (= lambda!303689 lambda!303661)))

(declare-fun bs!1314084 () Bool)

(assert (= bs!1314084 (and d!1784709 b!5648691)))

(assert (=> bs!1314084 (not (= lambda!303689 lambda!303651))))

(declare-fun bs!1314085 () Bool)

(assert (= bs!1314085 (and d!1784709 d!1784665)))

(assert (=> bs!1314085 (= lambda!303689 lambda!303684)))

(declare-fun bs!1314086 () Bool)

(assert (= bs!1314086 (and d!1784709 b!5648672)))

(assert (=> bs!1314086 (not (= lambda!303689 lambda!303643))))

(declare-fun bs!1314087 () Bool)

(assert (= bs!1314087 (and d!1784709 d!1784659)))

(assert (=> bs!1314087 (= lambda!303689 lambda!303683)))

(declare-fun bs!1314088 () Bool)

(assert (= bs!1314088 (and d!1784709 b!5648689)))

(assert (=> bs!1314088 (not (= lambda!303689 lambda!303650))))

(declare-fun bs!1314089 () Bool)

(assert (= bs!1314089 (and d!1784709 d!1784569)))

(assert (=> bs!1314089 (= lambda!303689 lambda!303665)))

(declare-fun bs!1314090 () Bool)

(assert (= bs!1314090 (and d!1784709 d!1784425)))

(assert (=> bs!1314090 (= lambda!303689 lambda!303646)))

(declare-fun bs!1314091 () Bool)

(assert (= bs!1314091 (and d!1784709 d!1784549)))

(assert (=> bs!1314091 (= lambda!303689 lambda!303662)))

(declare-fun bs!1314092 () Bool)

(assert (= bs!1314092 (and d!1784709 d!1784435)))

(assert (=> bs!1314092 (not (= lambda!303689 lambda!303652))))

(declare-fun bs!1314093 () Bool)

(assert (= bs!1314093 (and d!1784709 d!1784691)))

(assert (=> bs!1314093 (= lambda!303689 lambda!303687)))

(declare-fun bs!1314094 () Bool)

(assert (= bs!1314094 (and d!1784709 b!5648670)))

(assert (=> bs!1314094 (not (= lambda!303689 lambda!303642))))

(declare-fun bs!1314095 () Bool)

(assert (= bs!1314095 (and d!1784709 d!1784631)))

(assert (=> bs!1314095 (= lambda!303689 lambda!303678)))

(declare-fun bs!1314096 () Bool)

(assert (= bs!1314096 (and d!1784709 b!5647423)))

(assert (=> bs!1314096 (not (= lambda!303689 lambda!303541))))

(declare-fun bs!1314097 () Bool)

(assert (= bs!1314097 (and d!1784709 b!5647425)))

(assert (=> bs!1314097 (not (= lambda!303689 lambda!303542))))

(declare-fun bs!1314098 () Bool)

(assert (= bs!1314098 (and d!1784709 b!5647420)))

(assert (=> bs!1314098 (not (= lambda!303689 lambda!303539))))

(assert (=> d!1784709 (= (nullableZipper!1613 lt!2264195) (exists!2194 lt!2264195 lambda!303689))))

(declare-fun bs!1314099 () Bool)

(assert (= bs!1314099 d!1784709))

(declare-fun m!6616604 () Bool)

(assert (=> bs!1314099 m!6616604))

(assert (=> b!5647360 d!1784709))

(declare-fun bm!427355 () Bool)

(declare-fun call!427362 () Bool)

(declare-fun call!427361 () Bool)

(assert (=> bm!427355 (= call!427362 call!427361)))

(declare-fun b!5649191 () Bool)

(declare-fun res!2389489 () Bool)

(declare-fun e!3479957 () Bool)

(assert (=> b!5649191 (=> (not res!2389489) (not e!3479957))))

(assert (=> b!5649191 (= res!2389489 call!427362)))

(declare-fun e!3479959 () Bool)

(assert (=> b!5649191 (= e!3479959 e!3479957)))

(declare-fun b!5649192 () Bool)

(declare-fun res!2389490 () Bool)

(declare-fun e!3479960 () Bool)

(assert (=> b!5649192 (=> res!2389490 e!3479960)))

(assert (=> b!5649192 (= res!2389490 (not ((_ is Concat!24476) lt!2264371)))))

(assert (=> b!5649192 (= e!3479959 e!3479960)))

(declare-fun bm!427356 () Bool)

(declare-fun call!427360 () Bool)

(declare-fun c!992974 () Bool)

(assert (=> bm!427356 (= call!427360 (validRegex!7367 (ite c!992974 (regTwo!31775 lt!2264371) (regTwo!31774 lt!2264371))))))

(declare-fun d!1784711 () Bool)

(declare-fun res!2389488 () Bool)

(declare-fun e!3479962 () Bool)

(assert (=> d!1784711 (=> res!2389488 e!3479962)))

(assert (=> d!1784711 (= res!2389488 ((_ is ElementMatch!15631) lt!2264371))))

(assert (=> d!1784711 (= (validRegex!7367 lt!2264371) e!3479962)))

(declare-fun b!5649193 () Bool)

(declare-fun e!3479956 () Bool)

(assert (=> b!5649193 (= e!3479956 e!3479959)))

(assert (=> b!5649193 (= c!992974 ((_ is Union!15631) lt!2264371))))

(declare-fun b!5649194 () Bool)

(assert (=> b!5649194 (= e!3479962 e!3479956)))

(declare-fun c!992973 () Bool)

(assert (=> b!5649194 (= c!992973 ((_ is Star!15631) lt!2264371))))

(declare-fun bm!427357 () Bool)

(assert (=> bm!427357 (= call!427361 (validRegex!7367 (ite c!992973 (reg!15960 lt!2264371) (ite c!992974 (regOne!31775 lt!2264371) (regOne!31774 lt!2264371)))))))

(declare-fun b!5649195 () Bool)

(declare-fun e!3479961 () Bool)

(assert (=> b!5649195 (= e!3479961 call!427361)))

(declare-fun b!5649196 () Bool)

(declare-fun e!3479958 () Bool)

(assert (=> b!5649196 (= e!3479958 call!427360)))

(declare-fun b!5649197 () Bool)

(assert (=> b!5649197 (= e!3479960 e!3479958)))

(declare-fun res!2389487 () Bool)

(assert (=> b!5649197 (=> (not res!2389487) (not e!3479958))))

(assert (=> b!5649197 (= res!2389487 call!427362)))

(declare-fun b!5649198 () Bool)

(assert (=> b!5649198 (= e!3479957 call!427360)))

(declare-fun b!5649199 () Bool)

(assert (=> b!5649199 (= e!3479956 e!3479961)))

(declare-fun res!2389486 () Bool)

(assert (=> b!5649199 (= res!2389486 (not (nullable!5663 (reg!15960 lt!2264371))))))

(assert (=> b!5649199 (=> (not res!2389486) (not e!3479961))))

(assert (= (and d!1784711 (not res!2389488)) b!5649194))

(assert (= (and b!5649194 c!992973) b!5649199))

(assert (= (and b!5649194 (not c!992973)) b!5649193))

(assert (= (and b!5649199 res!2389486) b!5649195))

(assert (= (and b!5649193 c!992974) b!5649191))

(assert (= (and b!5649193 (not c!992974)) b!5649192))

(assert (= (and b!5649191 res!2389489) b!5649198))

(assert (= (and b!5649192 (not res!2389490)) b!5649197))

(assert (= (and b!5649197 res!2389487) b!5649196))

(assert (= (or b!5649198 b!5649196) bm!427356))

(assert (= (or b!5649191 b!5649197) bm!427355))

(assert (= (or b!5649195 bm!427355) bm!427357))

(declare-fun m!6616606 () Bool)

(assert (=> bm!427356 m!6616606))

(declare-fun m!6616608 () Bool)

(assert (=> bm!427357 m!6616608))

(declare-fun m!6616610 () Bool)

(assert (=> b!5649199 m!6616610))

(assert (=> d!1783761 d!1784711))

(declare-fun d!1784713 () Bool)

(declare-fun res!2389491 () Bool)

(declare-fun e!3479963 () Bool)

(assert (=> d!1784713 (=> res!2389491 e!3479963)))

(assert (=> d!1784713 (= res!2389491 ((_ is Nil!63068) (t!376490 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> d!1784713 (= (forall!14788 (t!376490 (exprs!5515 (h!69518 zl!343))) lambda!303515) e!3479963)))

(declare-fun b!5649200 () Bool)

(declare-fun e!3479964 () Bool)

(assert (=> b!5649200 (= e!3479963 e!3479964)))

(declare-fun res!2389492 () Bool)

(assert (=> b!5649200 (=> (not res!2389492) (not e!3479964))))

(assert (=> b!5649200 (= res!2389492 (dynLambda!24678 lambda!303515 (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun b!5649201 () Bool)

(assert (=> b!5649201 (= e!3479964 (forall!14788 (t!376490 (t!376490 (exprs!5515 (h!69518 zl!343)))) lambda!303515))))

(assert (= (and d!1784713 (not res!2389491)) b!5649200))

(assert (= (and b!5649200 res!2389492) b!5649201))

(declare-fun b_lambda!213733 () Bool)

(assert (=> (not b_lambda!213733) (not b!5649200)))

(declare-fun m!6616612 () Bool)

(assert (=> b!5649200 m!6616612))

(declare-fun m!6616614 () Bool)

(assert (=> b!5649201 m!6616614))

(assert (=> d!1783761 d!1784713))

(declare-fun d!1784715 () Bool)

(declare-fun c!992976 () Bool)

(declare-fun e!3479967 () Bool)

(assert (=> d!1784715 (= c!992976 e!3479967)))

(declare-fun res!2389493 () Bool)

(assert (=> d!1784715 (=> (not res!2389493) (not e!3479967))))

(assert (=> d!1784715 (= res!2389493 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194))))))))

(declare-fun e!3479966 () (InoxSet Context!10030))

(assert (=> d!1784715 (= (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 lt!2264194))) (h!69517 s!2326)) e!3479966)))

(declare-fun b!5649202 () Bool)

(declare-fun e!3479965 () (InoxSet Context!10030))

(declare-fun call!427363 () (InoxSet Context!10030))

(assert (=> b!5649202 (= e!3479965 call!427363)))

(declare-fun b!5649203 () Bool)

(assert (=> b!5649203 (= e!3479966 e!3479965)))

(declare-fun c!992975 () Bool)

(assert (=> b!5649203 (= c!992975 ((_ is Cons!63068) (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194))))))))

(declare-fun bm!427358 () Bool)

(assert (=> bm!427358 (= call!427363 (derivationStepZipperDown!973 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194))))) (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))))) (h!69517 s!2326)))))

(declare-fun b!5649204 () Bool)

(assert (=> b!5649204 (= e!3479965 ((as const (Array Context!10030 Bool)) false))))

(declare-fun b!5649205 () Bool)

(assert (=> b!5649205 (= e!3479966 ((_ map or) call!427363 (derivationStepZipperUp!899 (Context!10031 (t!376490 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))))) (h!69517 s!2326))))))

(declare-fun b!5649206 () Bool)

(assert (=> b!5649206 (= e!3479967 (nullable!5663 (h!69516 (exprs!5515 (Context!10031 (t!376490 (exprs!5515 lt!2264194)))))))))

(assert (= (and d!1784715 res!2389493) b!5649206))

(assert (= (and d!1784715 c!992976) b!5649205))

(assert (= (and d!1784715 (not c!992976)) b!5649203))

(assert (= (and b!5649203 c!992975) b!5649202))

(assert (= (and b!5649203 (not c!992975)) b!5649204))

(assert (= (or b!5649205 b!5649202) bm!427358))

(declare-fun m!6616616 () Bool)

(assert (=> bm!427358 m!6616616))

(declare-fun m!6616618 () Bool)

(assert (=> b!5649205 m!6616618))

(declare-fun m!6616620 () Bool)

(assert (=> b!5649206 m!6616620))

(assert (=> b!5647429 d!1784715))

(declare-fun bs!1314100 () Bool)

(declare-fun d!1784717 () Bool)

(assert (= bs!1314100 (and d!1784717 d!1784407)))

(declare-fun lambda!303690 () Int)

(assert (=> bs!1314100 (not (= lambda!303690 lambda!303640))))

(declare-fun bs!1314101 () Bool)

(assert (= bs!1314101 (and d!1784717 b!5647418)))

(assert (=> bs!1314101 (not (= lambda!303690 lambda!303538))))

(declare-fun bs!1314102 () Bool)

(assert (= bs!1314102 (and d!1784717 d!1784709)))

(assert (=> bs!1314102 (= lambda!303690 lambda!303689)))

(declare-fun bs!1314103 () Bool)

(assert (= bs!1314103 (and d!1784717 d!1784545)))

(assert (=> bs!1314103 (= lambda!303690 lambda!303661)))

(declare-fun bs!1314104 () Bool)

(assert (= bs!1314104 (and d!1784717 b!5648691)))

(assert (=> bs!1314104 (not (= lambda!303690 lambda!303651))))

(declare-fun bs!1314105 () Bool)

(assert (= bs!1314105 (and d!1784717 d!1784665)))

(assert (=> bs!1314105 (= lambda!303690 lambda!303684)))

(declare-fun bs!1314106 () Bool)

(assert (= bs!1314106 (and d!1784717 b!5648672)))

(assert (=> bs!1314106 (not (= lambda!303690 lambda!303643))))

(declare-fun bs!1314107 () Bool)

(assert (= bs!1314107 (and d!1784717 d!1784659)))

(assert (=> bs!1314107 (= lambda!303690 lambda!303683)))

(declare-fun bs!1314108 () Bool)

(assert (= bs!1314108 (and d!1784717 b!5648689)))

(assert (=> bs!1314108 (not (= lambda!303690 lambda!303650))))

(declare-fun bs!1314109 () Bool)

(assert (= bs!1314109 (and d!1784717 d!1784569)))

(assert (=> bs!1314109 (= lambda!303690 lambda!303665)))

(declare-fun bs!1314110 () Bool)

(assert (= bs!1314110 (and d!1784717 d!1784425)))

(assert (=> bs!1314110 (= lambda!303690 lambda!303646)))

(declare-fun bs!1314111 () Bool)

(assert (= bs!1314111 (and d!1784717 d!1784549)))

(assert (=> bs!1314111 (= lambda!303690 lambda!303662)))

(declare-fun bs!1314112 () Bool)

(assert (= bs!1314112 (and d!1784717 d!1784435)))

(assert (=> bs!1314112 (not (= lambda!303690 lambda!303652))))

(declare-fun bs!1314113 () Bool)

(assert (= bs!1314113 (and d!1784717 d!1784691)))

(assert (=> bs!1314113 (= lambda!303690 lambda!303687)))

(declare-fun bs!1314114 () Bool)

(assert (= bs!1314114 (and d!1784717 b!5648670)))

(assert (=> bs!1314114 (not (= lambda!303690 lambda!303642))))

(declare-fun bs!1314115 () Bool)

(assert (= bs!1314115 (and d!1784717 d!1784631)))

(assert (=> bs!1314115 (= lambda!303690 lambda!303678)))

(declare-fun bs!1314116 () Bool)

(assert (= bs!1314116 (and d!1784717 b!5647423)))

(assert (=> bs!1314116 (not (= lambda!303690 lambda!303541))))

(declare-fun bs!1314117 () Bool)

(assert (= bs!1314117 (and d!1784717 b!5647425)))

(assert (=> bs!1314117 (not (= lambda!303690 lambda!303542))))

(declare-fun bs!1314118 () Bool)

(assert (= bs!1314118 (and d!1784717 b!5647420)))

(assert (=> bs!1314118 (not (= lambda!303690 lambda!303539))))

(assert (=> d!1784717 (= (nullableZipper!1613 lt!2264205) (exists!2194 lt!2264205 lambda!303690))))

(declare-fun bs!1314119 () Bool)

(assert (= bs!1314119 d!1784717))

(declare-fun m!6616622 () Bool)

(assert (=> bs!1314119 m!6616622))

(assert (=> b!5647007 d!1784717))

(assert (=> d!1783785 d!1783755))

(assert (=> d!1783785 d!1783787))

(declare-fun d!1784719 () Bool)

(assert (=> d!1784719 (= (matchR!7816 lt!2264222 s!2326) (matchZipper!1769 lt!2264195 s!2326))))

(assert (=> d!1784719 true))

(declare-fun _$44!1430 () Unit!156056)

(assert (=> d!1784719 (= (choose!42762 lt!2264195 lt!2264185 lt!2264222 s!2326) _$44!1430)))

(declare-fun bs!1314120 () Bool)

(assert (= bs!1314120 d!1784719))

(assert (=> bs!1314120 m!6613700))

(assert (=> bs!1314120 m!6613690))

(assert (=> d!1783785 d!1784719))

(assert (=> d!1783785 d!1784595))

(declare-fun b!5649207 () Bool)

(declare-fun res!2389500 () Bool)

(declare-fun e!3479968 () Bool)

(assert (=> b!5649207 (=> (not res!2389500) (not e!3479968))))

(declare-fun call!427364 () Bool)

(assert (=> b!5649207 (= res!2389500 (not call!427364))))

(declare-fun b!5649208 () Bool)

(declare-fun e!3479969 () Bool)

(assert (=> b!5649208 (= e!3479969 (nullable!5663 (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5649209 () Bool)

(declare-fun e!3479971 () Bool)

(declare-fun e!3479973 () Bool)

(assert (=> b!5649209 (= e!3479971 e!3479973)))

(declare-fun res!2389501 () Bool)

(assert (=> b!5649209 (=> (not res!2389501) (not e!3479973))))

(declare-fun lt!2264561 () Bool)

(assert (=> b!5649209 (= res!2389501 (not lt!2264561))))

(declare-fun b!5649210 () Bool)

(declare-fun e!3479970 () Bool)

(assert (=> b!5649210 (= e!3479970 (not lt!2264561))))

(declare-fun b!5649211 () Bool)

(declare-fun res!2389498 () Bool)

(declare-fun e!3479972 () Bool)

(assert (=> b!5649211 (=> res!2389498 e!3479972)))

(assert (=> b!5649211 (= res!2389498 (not (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264377))))))))

(declare-fun b!5649213 () Bool)

(assert (=> b!5649213 (= e!3479973 e!3479972)))

(declare-fun res!2389497 () Bool)

(assert (=> b!5649213 (=> res!2389497 e!3479972)))

(assert (=> b!5649213 (= res!2389497 call!427364)))

(declare-fun b!5649214 () Bool)

(assert (=> b!5649214 (= e!3479968 (= (head!12006 (_1!36031 (get!21730 lt!2264377))) (c!992159 (regOne!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5649215 () Bool)

(declare-fun res!2389499 () Bool)

(assert (=> b!5649215 (=> res!2389499 e!3479971)))

(assert (=> b!5649215 (= res!2389499 (not ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5649215 (= e!3479970 e!3479971)))

(declare-fun b!5649216 () Bool)

(declare-fun e!3479974 () Bool)

(assert (=> b!5649216 (= e!3479974 (= lt!2264561 call!427364))))

(declare-fun bm!427359 () Bool)

(assert (=> bm!427359 (= call!427364 (isEmpty!34917 (_1!36031 (get!21730 lt!2264377))))))

(declare-fun d!1784721 () Bool)

(assert (=> d!1784721 e!3479974))

(declare-fun c!992977 () Bool)

(assert (=> d!1784721 (= c!992977 ((_ is EmptyExpr!15631) (regOne!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784721 (= lt!2264561 e!3479969)))

(declare-fun c!992978 () Bool)

(assert (=> d!1784721 (= c!992978 (isEmpty!34917 (_1!36031 (get!21730 lt!2264377))))))

(assert (=> d!1784721 (validRegex!7367 (regOne!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784721 (= (matchR!7816 (regOne!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264377))) lt!2264561)))

(declare-fun b!5649212 () Bool)

(assert (=> b!5649212 (= e!3479969 (matchR!7816 (derivativeStep!4467 (regOne!31774 (regOne!31774 r!7292)) (head!12006 (_1!36031 (get!21730 lt!2264377)))) (tail!11101 (_1!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5649217 () Bool)

(declare-fun res!2389494 () Bool)

(assert (=> b!5649217 (=> res!2389494 e!3479971)))

(assert (=> b!5649217 (= res!2389494 e!3479968)))

(declare-fun res!2389496 () Bool)

(assert (=> b!5649217 (=> (not res!2389496) (not e!3479968))))

(assert (=> b!5649217 (= res!2389496 lt!2264561)))

(declare-fun b!5649218 () Bool)

(declare-fun res!2389495 () Bool)

(assert (=> b!5649218 (=> (not res!2389495) (not e!3479968))))

(assert (=> b!5649218 (= res!2389495 (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5649219 () Bool)

(assert (=> b!5649219 (= e!3479974 e!3479970)))

(declare-fun c!992979 () Bool)

(assert (=> b!5649219 (= c!992979 ((_ is EmptyLang!15631) (regOne!31774 (regOne!31774 r!7292))))))

(declare-fun b!5649220 () Bool)

(assert (=> b!5649220 (= e!3479972 (not (= (head!12006 (_1!36031 (get!21730 lt!2264377))) (c!992159 (regOne!31774 (regOne!31774 r!7292))))))))

(assert (= (and d!1784721 c!992978) b!5649208))

(assert (= (and d!1784721 (not c!992978)) b!5649212))

(assert (= (and d!1784721 c!992977) b!5649216))

(assert (= (and d!1784721 (not c!992977)) b!5649219))

(assert (= (and b!5649219 c!992979) b!5649210))

(assert (= (and b!5649219 (not c!992979)) b!5649215))

(assert (= (and b!5649215 (not res!2389499)) b!5649217))

(assert (= (and b!5649217 res!2389496) b!5649207))

(assert (= (and b!5649207 res!2389500) b!5649218))

(assert (= (and b!5649218 res!2389495) b!5649214))

(assert (= (and b!5649217 (not res!2389494)) b!5649209))

(assert (= (and b!5649209 res!2389501) b!5649213))

(assert (= (and b!5649213 (not res!2389497)) b!5649211))

(assert (= (and b!5649211 (not res!2389498)) b!5649220))

(assert (= (or b!5649216 b!5649207 b!5649213) bm!427359))

(declare-fun m!6616624 () Bool)

(assert (=> d!1784721 m!6616624))

(assert (=> d!1784721 m!6614578))

(declare-fun m!6616626 () Bool)

(assert (=> b!5649220 m!6616626))

(assert (=> b!5649214 m!6616626))

(assert (=> bm!427359 m!6616624))

(declare-fun m!6616628 () Bool)

(assert (=> b!5649218 m!6616628))

(assert (=> b!5649218 m!6616628))

(declare-fun m!6616630 () Bool)

(assert (=> b!5649218 m!6616630))

(assert (=> b!5649211 m!6616628))

(assert (=> b!5649211 m!6616628))

(assert (=> b!5649211 m!6616630))

(assert (=> b!5649212 m!6616626))

(assert (=> b!5649212 m!6616626))

(declare-fun m!6616632 () Bool)

(assert (=> b!5649212 m!6616632))

(assert (=> b!5649212 m!6616628))

(assert (=> b!5649212 m!6616632))

(assert (=> b!5649212 m!6616628))

(declare-fun m!6616634 () Bool)

(assert (=> b!5649212 m!6616634))

(assert (=> b!5649208 m!6613726))

(assert (=> b!5647336 d!1784721))

(assert (=> b!5647336 d!1784493))

(declare-fun d!1784723 () Bool)

(assert (=> d!1784723 (= (nullable!5663 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))) (nullableFct!1760 (regOne!31774 (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun bs!1314121 () Bool)

(assert (= bs!1314121 d!1784723))

(declare-fun m!6616636 () Bool)

(assert (=> bs!1314121 m!6616636))

(assert (=> b!5647216 d!1784723))

(declare-fun d!1784725 () Bool)

(assert (=> d!1784725 (= (head!12007 (exprs!5515 (h!69518 zl!343))) (h!69516 (exprs!5515 (h!69518 zl!343))))))

(assert (=> b!5647267 d!1784725))

(declare-fun bs!1314122 () Bool)

(declare-fun d!1784727 () Bool)

(assert (= bs!1314122 (and d!1784727 d!1784407)))

(declare-fun lambda!303691 () Int)

(assert (=> bs!1314122 (not (= lambda!303691 lambda!303640))))

(declare-fun bs!1314123 () Bool)

(assert (= bs!1314123 (and d!1784727 b!5647418)))

(assert (=> bs!1314123 (not (= lambda!303691 lambda!303538))))

(declare-fun bs!1314124 () Bool)

(assert (= bs!1314124 (and d!1784727 d!1784709)))

(assert (=> bs!1314124 (= lambda!303691 lambda!303689)))

(declare-fun bs!1314125 () Bool)

(assert (= bs!1314125 (and d!1784727 d!1784545)))

(assert (=> bs!1314125 (= lambda!303691 lambda!303661)))

(declare-fun bs!1314126 () Bool)

(assert (= bs!1314126 (and d!1784727 b!5648691)))

(assert (=> bs!1314126 (not (= lambda!303691 lambda!303651))))

(declare-fun bs!1314127 () Bool)

(assert (= bs!1314127 (and d!1784727 d!1784665)))

(assert (=> bs!1314127 (= lambda!303691 lambda!303684)))

(declare-fun bs!1314128 () Bool)

(assert (= bs!1314128 (and d!1784727 d!1784717)))

(assert (=> bs!1314128 (= lambda!303691 lambda!303690)))

(declare-fun bs!1314129 () Bool)

(assert (= bs!1314129 (and d!1784727 b!5648672)))

(assert (=> bs!1314129 (not (= lambda!303691 lambda!303643))))

(declare-fun bs!1314130 () Bool)

(assert (= bs!1314130 (and d!1784727 d!1784659)))

(assert (=> bs!1314130 (= lambda!303691 lambda!303683)))

(declare-fun bs!1314131 () Bool)

(assert (= bs!1314131 (and d!1784727 b!5648689)))

(assert (=> bs!1314131 (not (= lambda!303691 lambda!303650))))

(declare-fun bs!1314132 () Bool)

(assert (= bs!1314132 (and d!1784727 d!1784569)))

(assert (=> bs!1314132 (= lambda!303691 lambda!303665)))

(declare-fun bs!1314133 () Bool)

(assert (= bs!1314133 (and d!1784727 d!1784425)))

(assert (=> bs!1314133 (= lambda!303691 lambda!303646)))

(declare-fun bs!1314134 () Bool)

(assert (= bs!1314134 (and d!1784727 d!1784549)))

(assert (=> bs!1314134 (= lambda!303691 lambda!303662)))

(declare-fun bs!1314135 () Bool)

(assert (= bs!1314135 (and d!1784727 d!1784435)))

(assert (=> bs!1314135 (not (= lambda!303691 lambda!303652))))

(declare-fun bs!1314136 () Bool)

(assert (= bs!1314136 (and d!1784727 d!1784691)))

(assert (=> bs!1314136 (= lambda!303691 lambda!303687)))

(declare-fun bs!1314137 () Bool)

(assert (= bs!1314137 (and d!1784727 b!5648670)))

(assert (=> bs!1314137 (not (= lambda!303691 lambda!303642))))

(declare-fun bs!1314138 () Bool)

(assert (= bs!1314138 (and d!1784727 d!1784631)))

(assert (=> bs!1314138 (= lambda!303691 lambda!303678)))

(declare-fun bs!1314139 () Bool)

(assert (= bs!1314139 (and d!1784727 b!5647423)))

(assert (=> bs!1314139 (not (= lambda!303691 lambda!303541))))

(declare-fun bs!1314140 () Bool)

(assert (= bs!1314140 (and d!1784727 b!5647425)))

(assert (=> bs!1314140 (not (= lambda!303691 lambda!303542))))

(declare-fun bs!1314141 () Bool)

(assert (= bs!1314141 (and d!1784727 b!5647420)))

(assert (=> bs!1314141 (not (= lambda!303691 lambda!303539))))

(assert (=> d!1784727 (= (nullableZipper!1613 lt!2264223) (exists!2194 lt!2264223 lambda!303691))))

(declare-fun bs!1314142 () Bool)

(assert (= bs!1314142 d!1784727))

(declare-fun m!6616638 () Bool)

(assert (=> bs!1314142 m!6616638))

(assert (=> b!5646987 d!1784727))

(assert (=> bs!1312414 d!1783657))

(declare-fun d!1784729 () Bool)

(declare-fun c!992980 () Bool)

(assert (=> d!1784729 (= c!992980 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479975 () Bool)

(assert (=> d!1784729 (= (matchZipper!1769 (derivationStepZipper!1718 ((_ map or) lt!2264224 lt!2264207) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479975)))

(declare-fun b!5649221 () Bool)

(assert (=> b!5649221 (= e!3479975 (nullableZipper!1613 (derivationStepZipper!1718 ((_ map or) lt!2264224 lt!2264207) (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649222 () Bool)

(assert (=> b!5649222 (= e!3479975 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 ((_ map or) lt!2264224 lt!2264207) (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784729 c!992980) b!5649221))

(assert (= (and d!1784729 (not c!992980)) b!5649222))

(assert (=> d!1784729 m!6614310))

(assert (=> d!1784729 m!6615792))

(assert (=> b!5649221 m!6614522))

(declare-fun m!6616640 () Bool)

(assert (=> b!5649221 m!6616640))

(assert (=> b!5649222 m!6614310))

(assert (=> b!5649222 m!6615796))

(assert (=> b!5649222 m!6614522))

(assert (=> b!5649222 m!6615796))

(declare-fun m!6616642 () Bool)

(assert (=> b!5649222 m!6616642))

(assert (=> b!5649222 m!6614310))

(assert (=> b!5649222 m!6615800))

(assert (=> b!5649222 m!6616642))

(assert (=> b!5649222 m!6615800))

(declare-fun m!6616644 () Bool)

(assert (=> b!5649222 m!6616644))

(assert (=> b!5647238 d!1784729))

(declare-fun bs!1314143 () Bool)

(declare-fun d!1784731 () Bool)

(assert (= bs!1314143 (and d!1784731 d!1784699)))

(declare-fun lambda!303692 () Int)

(assert (=> bs!1314143 (= lambda!303692 lambda!303688)))

(declare-fun bs!1314144 () Bool)

(assert (= bs!1314144 (and d!1784731 d!1784611)))

(assert (=> bs!1314144 (= lambda!303692 lambda!303673)))

(declare-fun bs!1314145 () Bool)

(assert (= bs!1314145 (and d!1784731 b!5646443)))

(assert (=> bs!1314145 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303692 lambda!303425))))

(declare-fun bs!1314146 () Bool)

(assert (= bs!1314146 (and d!1784731 d!1784621)))

(assert (=> bs!1314146 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303692 lambda!303676))))

(declare-fun bs!1314147 () Bool)

(assert (= bs!1314147 (and d!1784731 d!1784467)))

(assert (=> bs!1314147 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303692 lambda!303654))))

(declare-fun bs!1314148 () Bool)

(assert (= bs!1314148 (and d!1784731 d!1784575)))

(assert (=> bs!1314148 (= lambda!303692 lambda!303666)))

(declare-fun bs!1314149 () Bool)

(assert (= bs!1314149 (and d!1784731 d!1783813)))

(assert (=> bs!1314149 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303692 lambda!303543))))

(declare-fun bs!1314150 () Bool)

(assert (= bs!1314150 (and d!1784731 d!1783735)))

(assert (=> bs!1314150 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303692 lambda!303508))))

(declare-fun bs!1314151 () Bool)

(assert (= bs!1314151 (and d!1784731 d!1784655)))

(assert (=> bs!1314151 (= lambda!303692 lambda!303682)))

(declare-fun bs!1314152 () Bool)

(assert (= bs!1314152 (and d!1784731 d!1784323)))

(assert (=> bs!1314152 (= lambda!303692 lambda!303624)))

(assert (=> d!1784731 true))

(assert (=> d!1784731 (= (derivationStepZipper!1718 ((_ map or) lt!2264224 lt!2264207) (head!12006 (t!376491 s!2326))) (flatMap!1244 ((_ map or) lt!2264224 lt!2264207) lambda!303692))))

(declare-fun bs!1314153 () Bool)

(assert (= bs!1314153 d!1784731))

(declare-fun m!6616646 () Bool)

(assert (=> bs!1314153 m!6616646))

(assert (=> b!5647238 d!1784731))

(assert (=> b!5647238 d!1784325))

(assert (=> b!5647238 d!1784327))

(assert (=> d!1783777 d!1784413))

(declare-fun d!1784733 () Bool)

(assert (=> d!1784733 true))

(declare-fun setRes!37728 () Bool)

(assert (=> d!1784733 setRes!37728))

(declare-fun condSetEmpty!37728 () Bool)

(declare-fun res!2389502 () (InoxSet Context!10030))

(assert (=> d!1784733 (= condSetEmpty!37728 (= res!2389502 ((as const (Array Context!10030 Bool)) false)))))

(assert (=> d!1784733 (= (choose!42756 lt!2264195 lambda!303425) res!2389502)))

(declare-fun setIsEmpty!37728 () Bool)

(assert (=> setIsEmpty!37728 setRes!37728))

(declare-fun setNonEmpty!37728 () Bool)

(declare-fun e!3479976 () Bool)

(declare-fun tp!1565343 () Bool)

(declare-fun setElem!37728 () Context!10030)

(assert (=> setNonEmpty!37728 (= setRes!37728 (and tp!1565343 (inv!82324 setElem!37728) e!3479976))))

(declare-fun setRest!37728 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37728 (= res!2389502 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37728 true) setRest!37728))))

(declare-fun b!5649223 () Bool)

(declare-fun tp!1565342 () Bool)

(assert (=> b!5649223 (= e!3479976 tp!1565342)))

(assert (= (and d!1784733 condSetEmpty!37728) setIsEmpty!37728))

(assert (= (and d!1784733 (not condSetEmpty!37728)) setNonEmpty!37728))

(assert (= setNonEmpty!37728 b!5649223))

(declare-fun m!6616648 () Bool)

(assert (=> setNonEmpty!37728 m!6616648))

(assert (=> d!1783811 d!1784733))

(declare-fun d!1784735 () Bool)

(declare-fun c!992981 () Bool)

(assert (=> d!1784735 (= c!992981 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3479977 () Bool)

(assert (=> d!1784735 (= (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3479977)))

(declare-fun b!5649224 () Bool)

(assert (=> b!5649224 (= e!3479977 (nullableZipper!1613 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649225 () Bool)

(assert (=> b!5649225 (= e!3479977 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784735 c!992981) b!5649224))

(assert (= (and d!1784735 (not c!992981)) b!5649225))

(assert (=> d!1784735 m!6614310))

(assert (=> d!1784735 m!6615792))

(assert (=> b!5649224 m!6614512))

(declare-fun m!6616650 () Bool)

(assert (=> b!5649224 m!6616650))

(assert (=> b!5649225 m!6614310))

(assert (=> b!5649225 m!6615796))

(assert (=> b!5649225 m!6614512))

(assert (=> b!5649225 m!6615796))

(declare-fun m!6616652 () Bool)

(assert (=> b!5649225 m!6616652))

(assert (=> b!5649225 m!6614310))

(assert (=> b!5649225 m!6615800))

(assert (=> b!5649225 m!6616652))

(assert (=> b!5649225 m!6615800))

(declare-fun m!6616654 () Bool)

(assert (=> b!5649225 m!6616654))

(assert (=> b!5647233 d!1784735))

(declare-fun bs!1314154 () Bool)

(declare-fun d!1784737 () Bool)

(assert (= bs!1314154 (and d!1784737 d!1784699)))

(declare-fun lambda!303693 () Int)

(assert (=> bs!1314154 (= lambda!303693 lambda!303688)))

(declare-fun bs!1314155 () Bool)

(assert (= bs!1314155 (and d!1784737 d!1784611)))

(assert (=> bs!1314155 (= lambda!303693 lambda!303673)))

(declare-fun bs!1314156 () Bool)

(assert (= bs!1314156 (and d!1784737 b!5646443)))

(assert (=> bs!1314156 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303693 lambda!303425))))

(declare-fun bs!1314157 () Bool)

(assert (= bs!1314157 (and d!1784737 d!1784621)))

(assert (=> bs!1314157 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303693 lambda!303676))))

(declare-fun bs!1314158 () Bool)

(assert (= bs!1314158 (and d!1784737 d!1784731)))

(assert (=> bs!1314158 (= lambda!303693 lambda!303692)))

(declare-fun bs!1314159 () Bool)

(assert (= bs!1314159 (and d!1784737 d!1784467)))

(assert (=> bs!1314159 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303693 lambda!303654))))

(declare-fun bs!1314160 () Bool)

(assert (= bs!1314160 (and d!1784737 d!1784575)))

(assert (=> bs!1314160 (= lambda!303693 lambda!303666)))

(declare-fun bs!1314161 () Bool)

(assert (= bs!1314161 (and d!1784737 d!1783813)))

(assert (=> bs!1314161 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303693 lambda!303543))))

(declare-fun bs!1314162 () Bool)

(assert (= bs!1314162 (and d!1784737 d!1783735)))

(assert (=> bs!1314162 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303693 lambda!303508))))

(declare-fun bs!1314163 () Bool)

(assert (= bs!1314163 (and d!1784737 d!1784655)))

(assert (=> bs!1314163 (= lambda!303693 lambda!303682)))

(declare-fun bs!1314164 () Bool)

(assert (= bs!1314164 (and d!1784737 d!1784323)))

(assert (=> bs!1314164 (= lambda!303693 lambda!303624)))

(assert (=> d!1784737 true))

(assert (=> d!1784737 (= (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) (head!12006 (t!376491 s!2326))) (flatMap!1244 (derivationStepZipper!1718 lt!2264191 (h!69517 s!2326)) lambda!303693))))

(declare-fun bs!1314165 () Bool)

(assert (= bs!1314165 d!1784737))

(assert (=> bs!1314165 m!6613670))

(declare-fun m!6616656 () Bool)

(assert (=> bs!1314165 m!6616656))

(assert (=> b!5647233 d!1784737))

(assert (=> b!5647233 d!1784325))

(assert (=> b!5647233 d!1784327))

(declare-fun d!1784739 () Bool)

(assert (=> d!1784739 (= (isEmpty!34913 (tail!11102 lt!2264230)) ((_ is Nil!63068) (tail!11102 lt!2264230)))))

(assert (=> b!5647324 d!1784739))

(declare-fun d!1784741 () Bool)

(assert (=> d!1784741 (= (tail!11102 lt!2264230) (t!376490 lt!2264230))))

(assert (=> b!5647324 d!1784741))

(assert (=> b!5647282 d!1784387))

(declare-fun d!1784743 () Bool)

(assert (=> d!1784743 (= (nullable!5663 (h!69516 (exprs!5515 lt!2264221))) (nullableFct!1760 (h!69516 (exprs!5515 lt!2264221))))))

(declare-fun bs!1314166 () Bool)

(assert (= bs!1314166 d!1784743))

(declare-fun m!6616658 () Bool)

(assert (=> bs!1314166 m!6616658))

(assert (=> b!5647003 d!1784743))

(declare-fun bm!427360 () Bool)

(declare-fun call!427367 () Bool)

(declare-fun call!427366 () Bool)

(assert (=> bm!427360 (= call!427367 call!427366)))

(declare-fun b!5649226 () Bool)

(declare-fun res!2389506 () Bool)

(declare-fun e!3479979 () Bool)

(assert (=> b!5649226 (=> (not res!2389506) (not e!3479979))))

(assert (=> b!5649226 (= res!2389506 call!427367)))

(declare-fun e!3479981 () Bool)

(assert (=> b!5649226 (= e!3479981 e!3479979)))

(declare-fun b!5649227 () Bool)

(declare-fun res!2389507 () Bool)

(declare-fun e!3479982 () Bool)

(assert (=> b!5649227 (=> res!2389507 e!3479982)))

(assert (=> b!5649227 (= res!2389507 (not ((_ is Concat!24476) lt!2264379)))))

(assert (=> b!5649227 (= e!3479981 e!3479982)))

(declare-fun bm!427361 () Bool)

(declare-fun call!427365 () Bool)

(declare-fun c!992983 () Bool)

(assert (=> bm!427361 (= call!427365 (validRegex!7367 (ite c!992983 (regTwo!31775 lt!2264379) (regTwo!31774 lt!2264379))))))

(declare-fun d!1784745 () Bool)

(declare-fun res!2389505 () Bool)

(declare-fun e!3479984 () Bool)

(assert (=> d!1784745 (=> res!2389505 e!3479984)))

(assert (=> d!1784745 (= res!2389505 ((_ is ElementMatch!15631) lt!2264379))))

(assert (=> d!1784745 (= (validRegex!7367 lt!2264379) e!3479984)))

(declare-fun b!5649228 () Bool)

(declare-fun e!3479978 () Bool)

(assert (=> b!5649228 (= e!3479978 e!3479981)))

(assert (=> b!5649228 (= c!992983 ((_ is Union!15631) lt!2264379))))

(declare-fun b!5649229 () Bool)

(assert (=> b!5649229 (= e!3479984 e!3479978)))

(declare-fun c!992982 () Bool)

(assert (=> b!5649229 (= c!992982 ((_ is Star!15631) lt!2264379))))

(declare-fun bm!427362 () Bool)

(assert (=> bm!427362 (= call!427366 (validRegex!7367 (ite c!992982 (reg!15960 lt!2264379) (ite c!992983 (regOne!31775 lt!2264379) (regOne!31774 lt!2264379)))))))

(declare-fun b!5649230 () Bool)

(declare-fun e!3479983 () Bool)

(assert (=> b!5649230 (= e!3479983 call!427366)))

(declare-fun b!5649231 () Bool)

(declare-fun e!3479980 () Bool)

(assert (=> b!5649231 (= e!3479980 call!427365)))

(declare-fun b!5649232 () Bool)

(assert (=> b!5649232 (= e!3479982 e!3479980)))

(declare-fun res!2389504 () Bool)

(assert (=> b!5649232 (=> (not res!2389504) (not e!3479980))))

(assert (=> b!5649232 (= res!2389504 call!427367)))

(declare-fun b!5649233 () Bool)

(assert (=> b!5649233 (= e!3479979 call!427365)))

(declare-fun b!5649234 () Bool)

(assert (=> b!5649234 (= e!3479978 e!3479983)))

(declare-fun res!2389503 () Bool)

(assert (=> b!5649234 (= res!2389503 (not (nullable!5663 (reg!15960 lt!2264379))))))

(assert (=> b!5649234 (=> (not res!2389503) (not e!3479983))))

(assert (= (and d!1784745 (not res!2389505)) b!5649229))

(assert (= (and b!5649229 c!992982) b!5649234))

(assert (= (and b!5649229 (not c!992982)) b!5649228))

(assert (= (and b!5649234 res!2389503) b!5649230))

(assert (= (and b!5649228 c!992983) b!5649226))

(assert (= (and b!5649228 (not c!992983)) b!5649227))

(assert (= (and b!5649226 res!2389506) b!5649233))

(assert (= (and b!5649227 (not res!2389507)) b!5649232))

(assert (= (and b!5649232 res!2389504) b!5649231))

(assert (= (or b!5649233 b!5649231) bm!427361))

(assert (= (or b!5649226 b!5649232) bm!427360))

(assert (= (or b!5649230 bm!427360) bm!427362))

(declare-fun m!6616660 () Bool)

(assert (=> bm!427361 m!6616660))

(declare-fun m!6616662 () Bool)

(assert (=> bm!427362 m!6616662))

(declare-fun m!6616664 () Bool)

(assert (=> b!5649234 m!6616664))

(assert (=> d!1783775 d!1784745))

(declare-fun d!1784747 () Bool)

(declare-fun res!2389508 () Bool)

(declare-fun e!3479985 () Bool)

(assert (=> d!1784747 (=> res!2389508 e!3479985)))

(assert (=> d!1784747 (= res!2389508 ((_ is Nil!63068) lt!2264211))))

(assert (=> d!1784747 (= (forall!14788 lt!2264211 lambda!303517) e!3479985)))

(declare-fun b!5649235 () Bool)

(declare-fun e!3479986 () Bool)

(assert (=> b!5649235 (= e!3479985 e!3479986)))

(declare-fun res!2389509 () Bool)

(assert (=> b!5649235 (=> (not res!2389509) (not e!3479986))))

(assert (=> b!5649235 (= res!2389509 (dynLambda!24678 lambda!303517 (h!69516 lt!2264211)))))

(declare-fun b!5649236 () Bool)

(assert (=> b!5649236 (= e!3479986 (forall!14788 (t!376490 lt!2264211) lambda!303517))))

(assert (= (and d!1784747 (not res!2389508)) b!5649235))

(assert (= (and b!5649235 res!2389509) b!5649236))

(declare-fun b_lambda!213735 () Bool)

(assert (=> (not b_lambda!213735) (not b!5649235)))

(declare-fun m!6616666 () Bool)

(assert (=> b!5649235 m!6616666))

(declare-fun m!6616668 () Bool)

(assert (=> b!5649236 m!6616668))

(assert (=> d!1783775 d!1784747))

(assert (=> b!5647125 d!1784571))

(assert (=> b!5647125 d!1784469))

(declare-fun b!5649237 () Bool)

(declare-fun res!2389516 () Bool)

(declare-fun e!3479987 () Bool)

(assert (=> b!5649237 (=> (not res!2389516) (not e!3479987))))

(declare-fun call!427368 () Bool)

(assert (=> b!5649237 (= res!2389516 (not call!427368))))

(declare-fun b!5649238 () Bool)

(declare-fun e!3479988 () Bool)

(assert (=> b!5649238 (= e!3479988 (nullable!5663 (derivativeStep!4467 lt!2264184 (head!12006 s!2326))))))

(declare-fun b!5649239 () Bool)

(declare-fun e!3479990 () Bool)

(declare-fun e!3479992 () Bool)

(assert (=> b!5649239 (= e!3479990 e!3479992)))

(declare-fun res!2389517 () Bool)

(assert (=> b!5649239 (=> (not res!2389517) (not e!3479992))))

(declare-fun lt!2264562 () Bool)

(assert (=> b!5649239 (= res!2389517 (not lt!2264562))))

(declare-fun b!5649240 () Bool)

(declare-fun e!3479989 () Bool)

(assert (=> b!5649240 (= e!3479989 (not lt!2264562))))

(declare-fun b!5649241 () Bool)

(declare-fun res!2389514 () Bool)

(declare-fun e!3479991 () Bool)

(assert (=> b!5649241 (=> res!2389514 e!3479991)))

(assert (=> b!5649241 (= res!2389514 (not (isEmpty!34917 (tail!11101 (tail!11101 s!2326)))))))

(declare-fun b!5649243 () Bool)

(assert (=> b!5649243 (= e!3479992 e!3479991)))

(declare-fun res!2389513 () Bool)

(assert (=> b!5649243 (=> res!2389513 e!3479991)))

(assert (=> b!5649243 (= res!2389513 call!427368)))

(declare-fun b!5649244 () Bool)

(assert (=> b!5649244 (= e!3479987 (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 lt!2264184 (head!12006 s!2326)))))))

(declare-fun b!5649245 () Bool)

(declare-fun res!2389515 () Bool)

(assert (=> b!5649245 (=> res!2389515 e!3479990)))

(assert (=> b!5649245 (= res!2389515 (not ((_ is ElementMatch!15631) (derivativeStep!4467 lt!2264184 (head!12006 s!2326)))))))

(assert (=> b!5649245 (= e!3479989 e!3479990)))

(declare-fun b!5649246 () Bool)

(declare-fun e!3479993 () Bool)

(assert (=> b!5649246 (= e!3479993 (= lt!2264562 call!427368))))

(declare-fun bm!427363 () Bool)

(assert (=> bm!427363 (= call!427368 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun d!1784749 () Bool)

(assert (=> d!1784749 e!3479993))

(declare-fun c!992984 () Bool)

(assert (=> d!1784749 (= c!992984 ((_ is EmptyExpr!15631) (derivativeStep!4467 lt!2264184 (head!12006 s!2326))))))

(assert (=> d!1784749 (= lt!2264562 e!3479988)))

(declare-fun c!992985 () Bool)

(assert (=> d!1784749 (= c!992985 (isEmpty!34917 (tail!11101 s!2326)))))

(assert (=> d!1784749 (validRegex!7367 (derivativeStep!4467 lt!2264184 (head!12006 s!2326)))))

(assert (=> d!1784749 (= (matchR!7816 (derivativeStep!4467 lt!2264184 (head!12006 s!2326)) (tail!11101 s!2326)) lt!2264562)))

(declare-fun b!5649242 () Bool)

(assert (=> b!5649242 (= e!3479988 (matchR!7816 (derivativeStep!4467 (derivativeStep!4467 lt!2264184 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649247 () Bool)

(declare-fun res!2389510 () Bool)

(assert (=> b!5649247 (=> res!2389510 e!3479990)))

(assert (=> b!5649247 (= res!2389510 e!3479987)))

(declare-fun res!2389512 () Bool)

(assert (=> b!5649247 (=> (not res!2389512) (not e!3479987))))

(assert (=> b!5649247 (= res!2389512 lt!2264562)))

(declare-fun b!5649248 () Bool)

(declare-fun res!2389511 () Bool)

(assert (=> b!5649248 (=> (not res!2389511) (not e!3479987))))

(assert (=> b!5649248 (= res!2389511 (isEmpty!34917 (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649249 () Bool)

(assert (=> b!5649249 (= e!3479993 e!3479989)))

(declare-fun c!992986 () Bool)

(assert (=> b!5649249 (= c!992986 ((_ is EmptyLang!15631) (derivativeStep!4467 lt!2264184 (head!12006 s!2326))))))

(declare-fun b!5649250 () Bool)

(assert (=> b!5649250 (= e!3479991 (not (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 lt!2264184 (head!12006 s!2326))))))))

(assert (= (and d!1784749 c!992985) b!5649238))

(assert (= (and d!1784749 (not c!992985)) b!5649242))

(assert (= (and d!1784749 c!992984) b!5649246))

(assert (= (and d!1784749 (not c!992984)) b!5649249))

(assert (= (and b!5649249 c!992986) b!5649240))

(assert (= (and b!5649249 (not c!992986)) b!5649245))

(assert (= (and b!5649245 (not res!2389515)) b!5649247))

(assert (= (and b!5649247 res!2389512) b!5649237))

(assert (= (and b!5649237 res!2389516) b!5649248))

(assert (= (and b!5649248 res!2389511) b!5649244))

(assert (= (and b!5649247 (not res!2389510)) b!5649239))

(assert (= (and b!5649239 res!2389517) b!5649243))

(assert (= (and b!5649243 (not res!2389513)) b!5649241))

(assert (= (and b!5649241 (not res!2389514)) b!5649250))

(assert (= (or b!5649246 b!5649237 b!5649243) bm!427363))

(assert (=> d!1784749 m!6614392))

(assert (=> d!1784749 m!6614394))

(assert (=> d!1784749 m!6614546))

(declare-fun m!6616670 () Bool)

(assert (=> d!1784749 m!6616670))

(assert (=> b!5649250 m!6614392))

(assert (=> b!5649250 m!6616068))

(assert (=> b!5649244 m!6614392))

(assert (=> b!5649244 m!6616068))

(assert (=> bm!427363 m!6614392))

(assert (=> bm!427363 m!6614394))

(assert (=> b!5649248 m!6614392))

(assert (=> b!5649248 m!6616072))

(assert (=> b!5649248 m!6616072))

(assert (=> b!5649248 m!6616474))

(assert (=> b!5649241 m!6614392))

(assert (=> b!5649241 m!6616072))

(assert (=> b!5649241 m!6616072))

(assert (=> b!5649241 m!6616474))

(assert (=> b!5649242 m!6614392))

(assert (=> b!5649242 m!6616068))

(assert (=> b!5649242 m!6614546))

(assert (=> b!5649242 m!6616068))

(declare-fun m!6616672 () Bool)

(assert (=> b!5649242 m!6616672))

(assert (=> b!5649242 m!6614392))

(assert (=> b!5649242 m!6616072))

(assert (=> b!5649242 m!6616672))

(assert (=> b!5649242 m!6616072))

(declare-fun m!6616674 () Bool)

(assert (=> b!5649242 m!6616674))

(assert (=> b!5649238 m!6614546))

(declare-fun m!6616676 () Bool)

(assert (=> b!5649238 m!6616676))

(assert (=> b!5647274 d!1784749))

(declare-fun bm!427364 () Bool)

(declare-fun call!427371 () Regex!15631)

(declare-fun call!427369 () Regex!15631)

(assert (=> bm!427364 (= call!427371 call!427369)))

(declare-fun b!5649251 () Bool)

(declare-fun c!992987 () Bool)

(assert (=> b!5649251 (= c!992987 (nullable!5663 (regOne!31774 lt!2264184)))))

(declare-fun e!3479996 () Regex!15631)

(declare-fun e!3479998 () Regex!15631)

(assert (=> b!5649251 (= e!3479996 e!3479998)))

(declare-fun b!5649252 () Bool)

(declare-fun call!427372 () Regex!15631)

(assert (=> b!5649252 (= e!3479998 (Union!15631 (Concat!24476 call!427372 (regTwo!31774 lt!2264184)) EmptyLang!15631))))

(declare-fun b!5649253 () Bool)

(declare-fun c!992989 () Bool)

(assert (=> b!5649253 (= c!992989 ((_ is Union!15631) lt!2264184))))

(declare-fun e!3479994 () Regex!15631)

(declare-fun e!3479995 () Regex!15631)

(assert (=> b!5649253 (= e!3479994 e!3479995)))

(declare-fun d!1784751 () Bool)

(declare-fun lt!2264563 () Regex!15631)

(assert (=> d!1784751 (validRegex!7367 lt!2264563)))

(declare-fun e!3479997 () Regex!15631)

(assert (=> d!1784751 (= lt!2264563 e!3479997)))

(declare-fun c!992988 () Bool)

(assert (=> d!1784751 (= c!992988 (or ((_ is EmptyExpr!15631) lt!2264184) ((_ is EmptyLang!15631) lt!2264184)))))

(assert (=> d!1784751 (validRegex!7367 lt!2264184)))

(assert (=> d!1784751 (= (derivativeStep!4467 lt!2264184 (head!12006 s!2326)) lt!2264563)))

(declare-fun b!5649254 () Bool)

(assert (=> b!5649254 (= e!3479994 (ite (= (head!12006 s!2326) (c!992159 lt!2264184)) EmptyExpr!15631 EmptyLang!15631))))

(declare-fun b!5649255 () Bool)

(declare-fun call!427370 () Regex!15631)

(assert (=> b!5649255 (= e!3479995 (Union!15631 call!427369 call!427370))))

(declare-fun bm!427365 () Bool)

(declare-fun c!992991 () Bool)

(assert (=> bm!427365 (= call!427369 (derivativeStep!4467 (ite c!992989 (regOne!31775 lt!2264184) (ite c!992991 (reg!15960 lt!2264184) (ite c!992987 (regTwo!31774 lt!2264184) (regOne!31774 lt!2264184)))) (head!12006 s!2326)))))

(declare-fun bm!427366 () Bool)

(assert (=> bm!427366 (= call!427372 call!427371)))

(declare-fun b!5649256 () Bool)

(assert (=> b!5649256 (= e!3479996 (Concat!24476 call!427371 lt!2264184))))

(declare-fun b!5649257 () Bool)

(assert (=> b!5649257 (= e!3479997 EmptyLang!15631)))

(declare-fun b!5649258 () Bool)

(assert (=> b!5649258 (= e!3479997 e!3479994)))

(declare-fun c!992990 () Bool)

(assert (=> b!5649258 (= c!992990 ((_ is ElementMatch!15631) lt!2264184))))

(declare-fun b!5649259 () Bool)

(assert (=> b!5649259 (= e!3479995 e!3479996)))

(assert (=> b!5649259 (= c!992991 ((_ is Star!15631) lt!2264184))))

(declare-fun b!5649260 () Bool)

(assert (=> b!5649260 (= e!3479998 (Union!15631 (Concat!24476 call!427370 (regTwo!31774 lt!2264184)) call!427372))))

(declare-fun bm!427367 () Bool)

(assert (=> bm!427367 (= call!427370 (derivativeStep!4467 (ite c!992989 (regTwo!31775 lt!2264184) (regOne!31774 lt!2264184)) (head!12006 s!2326)))))

(assert (= (and d!1784751 c!992988) b!5649257))

(assert (= (and d!1784751 (not c!992988)) b!5649258))

(assert (= (and b!5649258 c!992990) b!5649254))

(assert (= (and b!5649258 (not c!992990)) b!5649253))

(assert (= (and b!5649253 c!992989) b!5649255))

(assert (= (and b!5649253 (not c!992989)) b!5649259))

(assert (= (and b!5649259 c!992991) b!5649256))

(assert (= (and b!5649259 (not c!992991)) b!5649251))

(assert (= (and b!5649251 c!992987) b!5649260))

(assert (= (and b!5649251 (not c!992987)) b!5649252))

(assert (= (or b!5649260 b!5649252) bm!427366))

(assert (= (or b!5649256 bm!427366) bm!427364))

(assert (= (or b!5649255 b!5649260) bm!427367))

(assert (= (or b!5649255 bm!427364) bm!427365))

(declare-fun m!6616678 () Bool)

(assert (=> b!5649251 m!6616678))

(declare-fun m!6616680 () Bool)

(assert (=> d!1784751 m!6616680))

(assert (=> d!1784751 m!6614544))

(assert (=> bm!427365 m!6614390))

(declare-fun m!6616682 () Bool)

(assert (=> bm!427365 m!6616682))

(assert (=> bm!427367 m!6614390))

(declare-fun m!6616684 () Bool)

(assert (=> bm!427367 m!6616684))

(assert (=> b!5647274 d!1784751))

(assert (=> b!5647274 d!1784387))

(assert (=> b!5647274 d!1784469))

(declare-fun d!1784753 () Bool)

(assert (=> d!1784753 (= (Exists!2731 (ite c!992350 lambda!303500 lambda!303501)) (choose!42758 (ite c!992350 lambda!303500 lambda!303501)))))

(declare-fun bs!1314167 () Bool)

(assert (= bs!1314167 d!1784753))

(declare-fun m!6616686 () Bool)

(assert (=> bs!1314167 m!6616686))

(assert (=> bm!426978 d!1784753))

(declare-fun b!5649262 () Bool)

(declare-fun e!3480000 () List!63193)

(assert (=> b!5649262 (= e!3480000 (Cons!63069 (h!69517 (_1!36031 (get!21730 lt!2264373))) (++!13847 (t!376491 (_1!36031 (get!21730 lt!2264373))) (_2!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5649263 () Bool)

(declare-fun res!2389519 () Bool)

(declare-fun e!3479999 () Bool)

(assert (=> b!5649263 (=> (not res!2389519) (not e!3479999))))

(declare-fun lt!2264564 () List!63193)

(assert (=> b!5649263 (= res!2389519 (= (size!39985 lt!2264564) (+ (size!39985 (_1!36031 (get!21730 lt!2264373))) (size!39985 (_2!36031 (get!21730 lt!2264373))))))))

(declare-fun d!1784755 () Bool)

(assert (=> d!1784755 e!3479999))

(declare-fun res!2389518 () Bool)

(assert (=> d!1784755 (=> (not res!2389518) (not e!3479999))))

(assert (=> d!1784755 (= res!2389518 (= (content!11413 lt!2264564) ((_ map or) (content!11413 (_1!36031 (get!21730 lt!2264373))) (content!11413 (_2!36031 (get!21730 lt!2264373))))))))

(assert (=> d!1784755 (= lt!2264564 e!3480000)))

(declare-fun c!992992 () Bool)

(assert (=> d!1784755 (= c!992992 ((_ is Nil!63069) (_1!36031 (get!21730 lt!2264373))))))

(assert (=> d!1784755 (= (++!13847 (_1!36031 (get!21730 lt!2264373)) (_2!36031 (get!21730 lt!2264373))) lt!2264564)))

(declare-fun b!5649264 () Bool)

(assert (=> b!5649264 (= e!3479999 (or (not (= (_2!36031 (get!21730 lt!2264373)) Nil!63069)) (= lt!2264564 (_1!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5649261 () Bool)

(assert (=> b!5649261 (= e!3480000 (_2!36031 (get!21730 lt!2264373)))))

(assert (= (and d!1784755 c!992992) b!5649261))

(assert (= (and d!1784755 (not c!992992)) b!5649262))

(assert (= (and d!1784755 res!2389518) b!5649263))

(assert (= (and b!5649263 res!2389519) b!5649264))

(declare-fun m!6616688 () Bool)

(assert (=> b!5649262 m!6616688))

(declare-fun m!6616690 () Bool)

(assert (=> b!5649263 m!6616690))

(declare-fun m!6616692 () Bool)

(assert (=> b!5649263 m!6616692))

(declare-fun m!6616694 () Bool)

(assert (=> b!5649263 m!6616694))

(declare-fun m!6616696 () Bool)

(assert (=> d!1784755 m!6616696))

(declare-fun m!6616698 () Bool)

(assert (=> d!1784755 m!6616698))

(declare-fun m!6616700 () Bool)

(assert (=> d!1784755 m!6616700))

(assert (=> b!5647314 d!1784755))

(assert (=> b!5647314 d!1784515))

(declare-fun b!5649266 () Bool)

(declare-fun e!3480002 () List!63193)

(assert (=> b!5649266 (= e!3480002 (Cons!63069 (h!69517 (_1!36031 (get!21730 lt!2264377))) (++!13847 (t!376491 (_1!36031 (get!21730 lt!2264377))) (_2!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5649267 () Bool)

(declare-fun res!2389521 () Bool)

(declare-fun e!3480001 () Bool)

(assert (=> b!5649267 (=> (not res!2389521) (not e!3480001))))

(declare-fun lt!2264565 () List!63193)

(assert (=> b!5649267 (= res!2389521 (= (size!39985 lt!2264565) (+ (size!39985 (_1!36031 (get!21730 lt!2264377))) (size!39985 (_2!36031 (get!21730 lt!2264377))))))))

(declare-fun d!1784757 () Bool)

(assert (=> d!1784757 e!3480001))

(declare-fun res!2389520 () Bool)

(assert (=> d!1784757 (=> (not res!2389520) (not e!3480001))))

(assert (=> d!1784757 (= res!2389520 (= (content!11413 lt!2264565) ((_ map or) (content!11413 (_1!36031 (get!21730 lt!2264377))) (content!11413 (_2!36031 (get!21730 lt!2264377))))))))

(assert (=> d!1784757 (= lt!2264565 e!3480002)))

(declare-fun c!992993 () Bool)

(assert (=> d!1784757 (= c!992993 ((_ is Nil!63069) (_1!36031 (get!21730 lt!2264377))))))

(assert (=> d!1784757 (= (++!13847 (_1!36031 (get!21730 lt!2264377)) (_2!36031 (get!21730 lt!2264377))) lt!2264565)))

(declare-fun b!5649268 () Bool)

(assert (=> b!5649268 (= e!3480001 (or (not (= (_2!36031 (get!21730 lt!2264377)) Nil!63069)) (= lt!2264565 (_1!36031 (get!21730 lt!2264377)))))))

(declare-fun b!5649265 () Bool)

(assert (=> b!5649265 (= e!3480002 (_2!36031 (get!21730 lt!2264377)))))

(assert (= (and d!1784757 c!992993) b!5649265))

(assert (= (and d!1784757 (not c!992993)) b!5649266))

(assert (= (and d!1784757 res!2389520) b!5649267))

(assert (= (and b!5649267 res!2389521) b!5649268))

(declare-fun m!6616702 () Bool)

(assert (=> b!5649266 m!6616702))

(declare-fun m!6616704 () Bool)

(assert (=> b!5649267 m!6616704))

(declare-fun m!6616706 () Bool)

(assert (=> b!5649267 m!6616706))

(declare-fun m!6616708 () Bool)

(assert (=> b!5649267 m!6616708))

(declare-fun m!6616710 () Bool)

(assert (=> d!1784757 m!6616710))

(declare-fun m!6616712 () Bool)

(assert (=> d!1784757 m!6616712))

(declare-fun m!6616714 () Bool)

(assert (=> d!1784757 m!6616714))

(assert (=> b!5647335 d!1784757))

(assert (=> b!5647335 d!1784493))

(assert (=> b!5647006 d!1783707))

(declare-fun bs!1314168 () Bool)

(declare-fun d!1784759 () Bool)

(assert (= bs!1314168 (and d!1784759 d!1784407)))

(declare-fun lambda!303694 () Int)

(assert (=> bs!1314168 (not (= lambda!303694 lambda!303640))))

(declare-fun bs!1314169 () Bool)

(assert (= bs!1314169 (and d!1784759 b!5647418)))

(assert (=> bs!1314169 (not (= lambda!303694 lambda!303538))))

(declare-fun bs!1314170 () Bool)

(assert (= bs!1314170 (and d!1784759 d!1784709)))

(assert (=> bs!1314170 (= lambda!303694 lambda!303689)))

(declare-fun bs!1314171 () Bool)

(assert (= bs!1314171 (and d!1784759 d!1784545)))

(assert (=> bs!1314171 (= lambda!303694 lambda!303661)))

(declare-fun bs!1314172 () Bool)

(assert (= bs!1314172 (and d!1784759 b!5648691)))

(assert (=> bs!1314172 (not (= lambda!303694 lambda!303651))))

(declare-fun bs!1314173 () Bool)

(assert (= bs!1314173 (and d!1784759 d!1784665)))

(assert (=> bs!1314173 (= lambda!303694 lambda!303684)))

(declare-fun bs!1314174 () Bool)

(assert (= bs!1314174 (and d!1784759 d!1784717)))

(assert (=> bs!1314174 (= lambda!303694 lambda!303690)))

(declare-fun bs!1314175 () Bool)

(assert (= bs!1314175 (and d!1784759 b!5648672)))

(assert (=> bs!1314175 (not (= lambda!303694 lambda!303643))))

(declare-fun bs!1314176 () Bool)

(assert (= bs!1314176 (and d!1784759 d!1784659)))

(assert (=> bs!1314176 (= lambda!303694 lambda!303683)))

(declare-fun bs!1314177 () Bool)

(assert (= bs!1314177 (and d!1784759 b!5648689)))

(assert (=> bs!1314177 (not (= lambda!303694 lambda!303650))))

(declare-fun bs!1314178 () Bool)

(assert (= bs!1314178 (and d!1784759 d!1784569)))

(assert (=> bs!1314178 (= lambda!303694 lambda!303665)))

(declare-fun bs!1314179 () Bool)

(assert (= bs!1314179 (and d!1784759 d!1784425)))

(assert (=> bs!1314179 (= lambda!303694 lambda!303646)))

(declare-fun bs!1314180 () Bool)

(assert (= bs!1314180 (and d!1784759 d!1784549)))

(assert (=> bs!1314180 (= lambda!303694 lambda!303662)))

(declare-fun bs!1314181 () Bool)

(assert (= bs!1314181 (and d!1784759 d!1784435)))

(assert (=> bs!1314181 (not (= lambda!303694 lambda!303652))))

(declare-fun bs!1314182 () Bool)

(assert (= bs!1314182 (and d!1784759 d!1784691)))

(assert (=> bs!1314182 (= lambda!303694 lambda!303687)))

(declare-fun bs!1314183 () Bool)

(assert (= bs!1314183 (and d!1784759 b!5648670)))

(assert (=> bs!1314183 (not (= lambda!303694 lambda!303642))))

(declare-fun bs!1314184 () Bool)

(assert (= bs!1314184 (and d!1784759 b!5647423)))

(assert (=> bs!1314184 (not (= lambda!303694 lambda!303541))))

(declare-fun bs!1314185 () Bool)

(assert (= bs!1314185 (and d!1784759 b!5647425)))

(assert (=> bs!1314185 (not (= lambda!303694 lambda!303542))))

(declare-fun bs!1314186 () Bool)

(assert (= bs!1314186 (and d!1784759 b!5647420)))

(assert (=> bs!1314186 (not (= lambda!303694 lambda!303539))))

(declare-fun bs!1314187 () Bool)

(assert (= bs!1314187 (and d!1784759 d!1784727)))

(assert (=> bs!1314187 (= lambda!303694 lambda!303691)))

(declare-fun bs!1314188 () Bool)

(assert (= bs!1314188 (and d!1784759 d!1784631)))

(assert (=> bs!1314188 (= lambda!303694 lambda!303678)))

(assert (=> d!1784759 (= (nullableZipper!1613 lt!2264228) (exists!2194 lt!2264228 lambda!303694))))

(declare-fun bs!1314189 () Bool)

(assert (= bs!1314189 d!1784759))

(declare-fun m!6616716 () Bool)

(assert (=> bs!1314189 m!6616716))

(assert (=> b!5647191 d!1784759))

(declare-fun bm!427368 () Bool)

(declare-fun call!427375 () Bool)

(declare-fun call!427374 () Bool)

(assert (=> bm!427368 (= call!427375 call!427374)))

(declare-fun b!5649269 () Bool)

(declare-fun res!2389525 () Bool)

(declare-fun e!3480004 () Bool)

(assert (=> b!5649269 (=> (not res!2389525) (not e!3480004))))

(assert (=> b!5649269 (= res!2389525 call!427375)))

(declare-fun e!3480006 () Bool)

(assert (=> b!5649269 (= e!3480006 e!3480004)))

(declare-fun b!5649270 () Bool)

(declare-fun res!2389526 () Bool)

(declare-fun e!3480007 () Bool)

(assert (=> b!5649270 (=> res!2389526 e!3480007)))

(assert (=> b!5649270 (= res!2389526 (not ((_ is Concat!24476) lt!2264365)))))

(assert (=> b!5649270 (= e!3480006 e!3480007)))

(declare-fun bm!427369 () Bool)

(declare-fun call!427373 () Bool)

(declare-fun c!992995 () Bool)

(assert (=> bm!427369 (= call!427373 (validRegex!7367 (ite c!992995 (regTwo!31775 lt!2264365) (regTwo!31774 lt!2264365))))))

(declare-fun d!1784761 () Bool)

(declare-fun res!2389524 () Bool)

(declare-fun e!3480009 () Bool)

(assert (=> d!1784761 (=> res!2389524 e!3480009)))

(assert (=> d!1784761 (= res!2389524 ((_ is ElementMatch!15631) lt!2264365))))

(assert (=> d!1784761 (= (validRegex!7367 lt!2264365) e!3480009)))

(declare-fun b!5649271 () Bool)

(declare-fun e!3480003 () Bool)

(assert (=> b!5649271 (= e!3480003 e!3480006)))

(assert (=> b!5649271 (= c!992995 ((_ is Union!15631) lt!2264365))))

(declare-fun b!5649272 () Bool)

(assert (=> b!5649272 (= e!3480009 e!3480003)))

(declare-fun c!992994 () Bool)

(assert (=> b!5649272 (= c!992994 ((_ is Star!15631) lt!2264365))))

(declare-fun bm!427370 () Bool)

(assert (=> bm!427370 (= call!427374 (validRegex!7367 (ite c!992994 (reg!15960 lt!2264365) (ite c!992995 (regOne!31775 lt!2264365) (regOne!31774 lt!2264365)))))))

(declare-fun b!5649273 () Bool)

(declare-fun e!3480008 () Bool)

(assert (=> b!5649273 (= e!3480008 call!427374)))

(declare-fun b!5649274 () Bool)

(declare-fun e!3480005 () Bool)

(assert (=> b!5649274 (= e!3480005 call!427373)))

(declare-fun b!5649275 () Bool)

(assert (=> b!5649275 (= e!3480007 e!3480005)))

(declare-fun res!2389523 () Bool)

(assert (=> b!5649275 (=> (not res!2389523) (not e!3480005))))

(assert (=> b!5649275 (= res!2389523 call!427375)))

(declare-fun b!5649276 () Bool)

(assert (=> b!5649276 (= e!3480004 call!427373)))

(declare-fun b!5649277 () Bool)

(assert (=> b!5649277 (= e!3480003 e!3480008)))

(declare-fun res!2389522 () Bool)

(assert (=> b!5649277 (= res!2389522 (not (nullable!5663 (reg!15960 lt!2264365))))))

(assert (=> b!5649277 (=> (not res!2389522) (not e!3480008))))

(assert (= (and d!1784761 (not res!2389524)) b!5649272))

(assert (= (and b!5649272 c!992994) b!5649277))

(assert (= (and b!5649272 (not c!992994)) b!5649271))

(assert (= (and b!5649277 res!2389522) b!5649273))

(assert (= (and b!5649271 c!992995) b!5649269))

(assert (= (and b!5649271 (not c!992995)) b!5649270))

(assert (= (and b!5649269 res!2389525) b!5649276))

(assert (= (and b!5649270 (not res!2389526)) b!5649275))

(assert (= (and b!5649275 res!2389523) b!5649274))

(assert (= (or b!5649276 b!5649274) bm!427369))

(assert (= (or b!5649269 b!5649275) bm!427368))

(assert (= (or b!5649273 bm!427368) bm!427370))

(declare-fun m!6616718 () Bool)

(assert (=> bm!427369 m!6616718))

(declare-fun m!6616720 () Bool)

(assert (=> bm!427370 m!6616720))

(declare-fun m!6616722 () Bool)

(assert (=> b!5649277 m!6616722))

(assert (=> d!1783741 d!1784761))

(declare-fun d!1784763 () Bool)

(declare-fun res!2389527 () Bool)

(declare-fun e!3480010 () Bool)

(assert (=> d!1784763 (=> res!2389527 e!3480010)))

(assert (=> d!1784763 (= res!2389527 ((_ is Nil!63068) (exprs!5515 (h!69518 zl!343))))))

(assert (=> d!1784763 (= (forall!14788 (exprs!5515 (h!69518 zl!343)) lambda!303511) e!3480010)))

(declare-fun b!5649278 () Bool)

(declare-fun e!3480011 () Bool)

(assert (=> b!5649278 (= e!3480010 e!3480011)))

(declare-fun res!2389528 () Bool)

(assert (=> b!5649278 (=> (not res!2389528) (not e!3480011))))

(assert (=> b!5649278 (= res!2389528 (dynLambda!24678 lambda!303511 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun b!5649279 () Bool)

(assert (=> b!5649279 (= e!3480011 (forall!14788 (t!376490 (exprs!5515 (h!69518 zl!343))) lambda!303511))))

(assert (= (and d!1784763 (not res!2389527)) b!5649278))

(assert (= (and b!5649278 res!2389528) b!5649279))

(declare-fun b_lambda!213737 () Bool)

(assert (=> (not b_lambda!213737) (not b!5649278)))

(declare-fun m!6616724 () Bool)

(assert (=> b!5649278 m!6616724))

(declare-fun m!6616726 () Bool)

(assert (=> b!5649279 m!6616726))

(assert (=> d!1783741 d!1784763))

(declare-fun d!1784765 () Bool)

(assert (=> d!1784765 (= (flatMap!1244 lt!2264191 lambda!303508) (choose!42756 lt!2264191 lambda!303508))))

(declare-fun bs!1314190 () Bool)

(assert (= bs!1314190 d!1784765))

(declare-fun m!6616728 () Bool)

(assert (=> bs!1314190 m!6616728))

(assert (=> d!1783735 d!1784765))

(declare-fun d!1784767 () Bool)

(assert (=> d!1784767 (= ($colon$colon!1681 (exprs!5515 lt!2264212) (ite (or c!992402 c!992399) (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (regTwo!31774 (regOne!31774 r!7292)))) (Cons!63068 (ite (or c!992402 c!992399) (regTwo!31774 (regTwo!31774 (regOne!31774 r!7292))) (regTwo!31774 (regOne!31774 r!7292))) (exprs!5515 lt!2264212)))))

(assert (=> bm!427003 d!1784767))

(declare-fun bs!1314191 () Bool)

(declare-fun b!5649290 () Bool)

(assert (= bs!1314191 (and b!5649290 d!1783675)))

(declare-fun lambda!303695 () Int)

(assert (=> bs!1314191 (not (= lambda!303695 lambda!303489))))

(declare-fun bs!1314192 () Bool)

(assert (= bs!1314192 (and b!5649290 b!5646415)))

(assert (=> bs!1314192 (not (= lambda!303695 lambda!303429))))

(declare-fun bs!1314193 () Bool)

(assert (= bs!1314193 (and b!5649290 d!1784679)))

(assert (=> bs!1314193 (not (= lambda!303695 lambda!303685))))

(assert (=> bs!1314192 (not (= lambda!303695 lambda!303427))))

(declare-fun bs!1314194 () Bool)

(assert (= bs!1314194 (and b!5649290 b!5647372)))

(assert (=> bs!1314194 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 lt!2264184)) (= (regOne!31775 lt!2264222) lt!2264184)) (= lambda!303695 lambda!303521))))

(declare-fun bs!1314195 () Bool)

(assert (= bs!1314195 (and b!5649290 d!1784481)))

(assert (=> bs!1314195 (not (= lambda!303695 lambda!303655))))

(assert (=> bs!1314193 (not (= lambda!303695 lambda!303686))))

(assert (=> bs!1314192 (not (= lambda!303695 lambda!303426))))

(assert (=> bs!1314192 (not (= lambda!303695 lambda!303428))))

(declare-fun bs!1314196 () Bool)

(assert (= bs!1314196 (and b!5649290 b!5647367)))

(assert (=> bs!1314196 (not (= lambda!303695 lambda!303522))))

(declare-fun bs!1314197 () Bool)

(assert (= bs!1314197 (and b!5649290 b!5647087)))

(assert (=> bs!1314197 (not (= lambda!303695 lambda!303501))))

(declare-fun bs!1314198 () Bool)

(assert (= bs!1314198 (and b!5649290 d!1784649)))

(assert (=> bs!1314198 (not (= lambda!303695 lambda!303681))))

(declare-fun bs!1314199 () Bool)

(assert (= bs!1314199 (and b!5649290 d!1783751)))

(assert (=> bs!1314199 (not (= lambda!303695 lambda!303513))))

(declare-fun bs!1314200 () Bool)

(assert (= bs!1314200 (and b!5649290 b!5648918)))

(assert (=> bs!1314200 (not (= lambda!303695 lambda!303664))))

(declare-fun bs!1314201 () Bool)

(assert (= bs!1314201 (and b!5649290 b!5646420)))

(assert (=> bs!1314201 (not (= lambda!303695 lambda!303424))))

(declare-fun bs!1314202 () Bool)

(assert (= bs!1314202 (and b!5649290 d!1783677)))

(assert (=> bs!1314202 (not (= lambda!303695 lambda!303494))))

(declare-fun bs!1314203 () Bool)

(assert (= bs!1314203 (and b!5649290 b!5648782)))

(assert (=> bs!1314203 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 (regTwo!31775 r!7292))) (= (regOne!31775 lt!2264222) (regTwo!31775 r!7292))) (= lambda!303695 lambda!303657))))

(declare-fun bs!1314204 () Bool)

(assert (= bs!1314204 (and b!5649290 b!5647359)))

(assert (=> bs!1314204 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 lt!2264222)) (= (regOne!31775 lt!2264222) lt!2264222)) (= lambda!303695 lambda!303518))))

(declare-fun bs!1314205 () Bool)

(assert (= bs!1314205 (and b!5649290 b!5647092)))

(assert (=> bs!1314205 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 r!7292)) (= (regOne!31775 lt!2264222) r!7292)) (= lambda!303695 lambda!303500))))

(assert (=> bs!1314202 (not (= lambda!303695 lambda!303495))))

(declare-fun bs!1314206 () Bool)

(assert (= bs!1314206 (and b!5649290 d!1784359)))

(assert (=> bs!1314206 (not (= lambda!303695 lambda!303630))))

(declare-fun bs!1314207 () Bool)

(assert (= bs!1314207 (and b!5649290 b!5648955)))

(assert (=> bs!1314207 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 (regTwo!31775 lt!2264222))) (= (regOne!31775 lt!2264222) (regTwo!31775 lt!2264222))) (= lambda!303695 lambda!303670))))

(declare-fun bs!1314208 () Bool)

(assert (= bs!1314208 (and b!5649290 b!5648815)))

(assert (=> bs!1314208 (not (= lambda!303695 lambda!303660))))

(assert (=> bs!1314195 (not (= lambda!303695 lambda!303656))))

(declare-fun bs!1314209 () Bool)

(assert (= bs!1314209 (and b!5649290 d!1783793)))

(assert (=> bs!1314209 (not (= lambda!303695 lambda!303523))))

(assert (=> bs!1314206 (not (= lambda!303695 lambda!303631))))

(assert (=> bs!1314209 (not (= lambda!303695 lambda!303524))))

(declare-fun bs!1314210 () Bool)

(assert (= bs!1314210 (and b!5649290 b!5648777)))

(assert (=> bs!1314210 (not (= lambda!303695 lambda!303658))))

(declare-fun bs!1314211 () Bool)

(assert (= bs!1314211 (and b!5649290 d!1783781)))

(assert (=> bs!1314211 (not (= lambda!303695 lambda!303520))))

(assert (=> bs!1314199 (not (= lambda!303695 lambda!303512))))

(assert (=> bs!1314201 (not (= lambda!303695 lambda!303423))))

(declare-fun bs!1314212 () Bool)

(assert (= bs!1314212 (and b!5649290 b!5649017)))

(assert (=> bs!1314212 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 (regOne!31775 r!7292))) (= (regOne!31775 lt!2264222) (regOne!31775 r!7292))) (= lambda!303695 lambda!303674))))

(declare-fun bs!1314213 () Bool)

(assert (= bs!1314213 (and b!5649290 b!5647354)))

(assert (=> bs!1314213 (not (= lambda!303695 lambda!303519))))

(declare-fun bs!1314214 () Bool)

(assert (= bs!1314214 (and b!5649290 b!5648923)))

(assert (=> bs!1314214 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 (regOne!31775 lt!2264184))) (= (regOne!31775 lt!2264222) (regOne!31775 lt!2264184))) (= lambda!303695 lambda!303663))))

(declare-fun bs!1314215 () Bool)

(assert (= bs!1314215 (and b!5649290 b!5649012)))

(assert (=> bs!1314215 (not (= lambda!303695 lambda!303675))))

(declare-fun bs!1314216 () Bool)

(assert (= bs!1314216 (and b!5649290 b!5648820)))

(assert (=> bs!1314216 (= (and (= (reg!15960 (regOne!31775 lt!2264222)) (reg!15960 (regTwo!31775 lt!2264184))) (= (regOne!31775 lt!2264222) (regTwo!31775 lt!2264184))) (= lambda!303695 lambda!303659))))

(declare-fun bs!1314217 () Bool)

(assert (= bs!1314217 (and b!5649290 b!5648950)))

(assert (=> bs!1314217 (not (= lambda!303695 lambda!303671))))

(declare-fun bs!1314218 () Bool)

(assert (= bs!1314218 (and b!5649290 d!1783759)))

(assert (=> bs!1314218 (not (= lambda!303695 lambda!303514))))

(assert (=> b!5649290 true))

(assert (=> b!5649290 true))

(declare-fun bs!1314219 () Bool)

(declare-fun b!5649285 () Bool)

(assert (= bs!1314219 (and b!5649285 d!1783675)))

(declare-fun lambda!303696 () Int)

(assert (=> bs!1314219 (not (= lambda!303696 lambda!303489))))

(declare-fun bs!1314220 () Bool)

(assert (= bs!1314220 (and b!5649285 b!5646415)))

(assert (=> bs!1314220 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264217)) (= lambda!303696 lambda!303429))))

(declare-fun bs!1314221 () Bool)

(assert (= bs!1314221 (and b!5649285 d!1784679)))

(assert (=> bs!1314221 (not (= lambda!303696 lambda!303685))))

(assert (=> bs!1314220 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264184)) (= lambda!303696 lambda!303427))))

(declare-fun bs!1314222 () Bool)

(assert (= bs!1314222 (and b!5649285 b!5647372)))

(assert (=> bs!1314222 (not (= lambda!303696 lambda!303521))))

(declare-fun bs!1314223 () Bool)

(assert (= bs!1314223 (and b!5649285 d!1784481)))

(assert (=> bs!1314223 (not (= lambda!303696 lambda!303655))))

(assert (=> bs!1314221 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264217)) (= lambda!303696 lambda!303686))))

(assert (=> bs!1314220 (not (= lambda!303696 lambda!303426))))

(declare-fun bs!1314224 () Bool)

(assert (= bs!1314224 (and b!5649285 b!5649290)))

(assert (=> bs!1314224 (not (= lambda!303696 lambda!303695))))

(assert (=> bs!1314220 (not (= lambda!303696 lambda!303428))))

(declare-fun bs!1314225 () Bool)

(assert (= bs!1314225 (and b!5649285 b!5647367)))

(assert (=> bs!1314225 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 lt!2264184)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 lt!2264184))) (= lambda!303696 lambda!303522))))

(declare-fun bs!1314226 () Bool)

(assert (= bs!1314226 (and b!5649285 b!5647087)))

(assert (=> bs!1314226 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303696 lambda!303501))))

(declare-fun bs!1314227 () Bool)

(assert (= bs!1314227 (and b!5649285 d!1784649)))

(assert (=> bs!1314227 (not (= lambda!303696 lambda!303681))))

(declare-fun bs!1314228 () Bool)

(assert (= bs!1314228 (and b!5649285 d!1783751)))

(assert (=> bs!1314228 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264217)) (= lambda!303696 lambda!303513))))

(declare-fun bs!1314229 () Bool)

(assert (= bs!1314229 (and b!5649285 b!5648918)))

(assert (=> bs!1314229 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regOne!31775 lt!2264184))) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regOne!31775 lt!2264184)))) (= lambda!303696 lambda!303664))))

(declare-fun bs!1314230 () Bool)

(assert (= bs!1314230 (and b!5649285 b!5646420)))

(assert (=> bs!1314230 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303696 lambda!303424))))

(declare-fun bs!1314231 () Bool)

(assert (= bs!1314231 (and b!5649285 d!1783677)))

(assert (=> bs!1314231 (not (= lambda!303696 lambda!303494))))

(declare-fun bs!1314232 () Bool)

(assert (= bs!1314232 (and b!5649285 b!5648782)))

(assert (=> bs!1314232 (not (= lambda!303696 lambda!303657))))

(declare-fun bs!1314233 () Bool)

(assert (= bs!1314233 (and b!5649285 b!5647359)))

(assert (=> bs!1314233 (not (= lambda!303696 lambda!303518))))

(declare-fun bs!1314234 () Bool)

(assert (= bs!1314234 (and b!5649285 b!5647092)))

(assert (=> bs!1314234 (not (= lambda!303696 lambda!303500))))

(assert (=> bs!1314231 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303696 lambda!303495))))

(declare-fun bs!1314235 () Bool)

(assert (= bs!1314235 (and b!5649285 d!1784359)))

(assert (=> bs!1314235 (not (= lambda!303696 lambda!303630))))

(declare-fun bs!1314236 () Bool)

(assert (= bs!1314236 (and b!5649285 b!5648955)))

(assert (=> bs!1314236 (not (= lambda!303696 lambda!303670))))

(declare-fun bs!1314237 () Bool)

(assert (= bs!1314237 (and b!5649285 b!5648815)))

(assert (=> bs!1314237 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regTwo!31775 lt!2264184))) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regTwo!31775 lt!2264184)))) (= lambda!303696 lambda!303660))))

(assert (=> bs!1314223 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 r!7292)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 r!7292))) (= lambda!303696 lambda!303656))))

(declare-fun bs!1314238 () Bool)

(assert (= bs!1314238 (and b!5649285 d!1783793)))

(assert (=> bs!1314238 (not (= lambda!303696 lambda!303523))))

(assert (=> bs!1314235 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264184)) (= lambda!303696 lambda!303631))))

(assert (=> bs!1314238 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) lt!2264184)) (= lambda!303696 lambda!303524))))

(declare-fun bs!1314239 () Bool)

(assert (= bs!1314239 (and b!5649285 b!5648777)))

(assert (=> bs!1314239 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regTwo!31775 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regTwo!31775 r!7292)))) (= lambda!303696 lambda!303658))))

(declare-fun bs!1314240 () Bool)

(assert (= bs!1314240 (and b!5649285 d!1783781)))

(assert (=> bs!1314240 (not (= lambda!303696 lambda!303520))))

(assert (=> bs!1314228 (not (= lambda!303696 lambda!303512))))

(assert (=> bs!1314230 (not (= lambda!303696 lambda!303423))))

(declare-fun bs!1314241 () Bool)

(assert (= bs!1314241 (and b!5649285 b!5649017)))

(assert (=> bs!1314241 (not (= lambda!303696 lambda!303674))))

(declare-fun bs!1314242 () Bool)

(assert (= bs!1314242 (and b!5649285 b!5647354)))

(assert (=> bs!1314242 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 lt!2264222)) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 lt!2264222))) (= lambda!303696 lambda!303519))))

(declare-fun bs!1314243 () Bool)

(assert (= bs!1314243 (and b!5649285 b!5648923)))

(assert (=> bs!1314243 (not (= lambda!303696 lambda!303663))))

(declare-fun bs!1314244 () Bool)

(assert (= bs!1314244 (and b!5649285 b!5649012)))

(assert (=> bs!1314244 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regOne!31775 r!7292))) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regOne!31775 r!7292)))) (= lambda!303696 lambda!303675))))

(declare-fun bs!1314245 () Bool)

(assert (= bs!1314245 (and b!5649285 b!5648820)))

(assert (=> bs!1314245 (not (= lambda!303696 lambda!303659))))

(declare-fun bs!1314246 () Bool)

(assert (= bs!1314246 (and b!5649285 b!5648950)))

(assert (=> bs!1314246 (= (and (= (regOne!31774 (regOne!31775 lt!2264222)) (regOne!31774 (regTwo!31775 lt!2264222))) (= (regTwo!31774 (regOne!31775 lt!2264222)) (regTwo!31774 (regTwo!31775 lt!2264222)))) (= lambda!303696 lambda!303671))))

(declare-fun bs!1314247 () Bool)

(assert (= bs!1314247 (and b!5649285 d!1783759)))

(assert (=> bs!1314247 (not (= lambda!303696 lambda!303514))))

(assert (=> b!5649285 true))

(assert (=> b!5649285 true))

(declare-fun b!5649280 () Bool)

(declare-fun e!3480012 () Bool)

(assert (=> b!5649280 (= e!3480012 (= s!2326 (Cons!63069 (c!992159 (regOne!31775 lt!2264222)) Nil!63069)))))

(declare-fun b!5649281 () Bool)

(declare-fun res!2389529 () Bool)

(declare-fun e!3480013 () Bool)

(assert (=> b!5649281 (=> res!2389529 e!3480013)))

(declare-fun call!427376 () Bool)

(assert (=> b!5649281 (= res!2389529 call!427376)))

(declare-fun e!3480016 () Bool)

(assert (=> b!5649281 (= e!3480016 e!3480013)))

(declare-fun bm!427371 () Bool)

(assert (=> bm!427371 (= call!427376 (isEmpty!34917 s!2326))))

(declare-fun b!5649282 () Bool)

(declare-fun c!992999 () Bool)

(assert (=> b!5649282 (= c!992999 ((_ is ElementMatch!15631) (regOne!31775 lt!2264222)))))

(declare-fun e!3480017 () Bool)

(assert (=> b!5649282 (= e!3480017 e!3480012)))

(declare-fun b!5649283 () Bool)

(declare-fun e!3480014 () Bool)

(declare-fun e!3480015 () Bool)

(assert (=> b!5649283 (= e!3480014 e!3480015)))

(declare-fun res!2389530 () Bool)

(assert (=> b!5649283 (= res!2389530 (matchRSpec!2734 (regOne!31775 (regOne!31775 lt!2264222)) s!2326))))

(assert (=> b!5649283 (=> res!2389530 e!3480015)))

(declare-fun d!1784769 () Bool)

(declare-fun c!992998 () Bool)

(assert (=> d!1784769 (= c!992998 ((_ is EmptyExpr!15631) (regOne!31775 lt!2264222)))))

(declare-fun e!3480018 () Bool)

(assert (=> d!1784769 (= (matchRSpec!2734 (regOne!31775 lt!2264222) s!2326) e!3480018)))

(declare-fun b!5649284 () Bool)

(declare-fun c!992997 () Bool)

(assert (=> b!5649284 (= c!992997 ((_ is Union!15631) (regOne!31775 lt!2264222)))))

(assert (=> b!5649284 (= e!3480012 e!3480014)))

(declare-fun c!992996 () Bool)

(declare-fun bm!427372 () Bool)

(declare-fun call!427377 () Bool)

(assert (=> bm!427372 (= call!427377 (Exists!2731 (ite c!992996 lambda!303695 lambda!303696)))))

(assert (=> b!5649285 (= e!3480016 call!427377)))

(declare-fun b!5649286 () Bool)

(assert (=> b!5649286 (= e!3480014 e!3480016)))

(assert (=> b!5649286 (= c!992996 ((_ is Star!15631) (regOne!31775 lt!2264222)))))

(declare-fun b!5649287 () Bool)

(assert (=> b!5649287 (= e!3480018 call!427376)))

(declare-fun b!5649288 () Bool)

(assert (=> b!5649288 (= e!3480018 e!3480017)))

(declare-fun res!2389531 () Bool)

(assert (=> b!5649288 (= res!2389531 (not ((_ is EmptyLang!15631) (regOne!31775 lt!2264222))))))

(assert (=> b!5649288 (=> (not res!2389531) (not e!3480017))))

(declare-fun b!5649289 () Bool)

(assert (=> b!5649289 (= e!3480015 (matchRSpec!2734 (regTwo!31775 (regOne!31775 lt!2264222)) s!2326))))

(assert (=> b!5649290 (= e!3480013 call!427377)))

(assert (= (and d!1784769 c!992998) b!5649287))

(assert (= (and d!1784769 (not c!992998)) b!5649288))

(assert (= (and b!5649288 res!2389531) b!5649282))

(assert (= (and b!5649282 c!992999) b!5649280))

(assert (= (and b!5649282 (not c!992999)) b!5649284))

(assert (= (and b!5649284 c!992997) b!5649283))

(assert (= (and b!5649284 (not c!992997)) b!5649286))

(assert (= (and b!5649283 (not res!2389530)) b!5649289))

(assert (= (and b!5649286 c!992996) b!5649281))

(assert (= (and b!5649286 (not c!992996)) b!5649285))

(assert (= (and b!5649281 (not res!2389529)) b!5649290))

(assert (= (or b!5649290 b!5649285) bm!427372))

(assert (= (or b!5649287 b!5649281) bm!427371))

(assert (=> bm!427371 m!6614382))

(declare-fun m!6616730 () Bool)

(assert (=> b!5649283 m!6616730))

(declare-fun m!6616732 () Bool)

(assert (=> bm!427372 m!6616732))

(declare-fun m!6616734 () Bool)

(assert (=> b!5649289 m!6616734))

(assert (=> b!5647352 d!1784769))

(assert (=> b!5647296 d!1784387))

(assert (=> d!1783675 d!1783669))

(assert (=> d!1783675 d!1784483))

(assert (=> d!1783675 d!1783679))

(declare-fun d!1784771 () Bool)

(assert (=> d!1784771 (= (Exists!2731 lambda!303489) (choose!42758 lambda!303489))))

(declare-fun bs!1314248 () Bool)

(assert (= bs!1314248 d!1784771))

(declare-fun m!6616736 () Bool)

(assert (=> bs!1314248 m!6616736))

(assert (=> d!1783675 d!1784771))

(declare-fun bs!1314249 () Bool)

(declare-fun d!1784773 () Bool)

(assert (= bs!1314249 (and d!1784773 d!1783675)))

(declare-fun lambda!303697 () Int)

(assert (=> bs!1314249 (= lambda!303697 lambda!303489)))

(declare-fun bs!1314250 () Bool)

(assert (= bs!1314250 (and d!1784773 b!5646415)))

(assert (=> bs!1314250 (not (= lambda!303697 lambda!303429))))

(declare-fun bs!1314251 () Bool)

(assert (= bs!1314251 (and d!1784773 d!1784679)))

(assert (=> bs!1314251 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303697 lambda!303685))))

(assert (=> bs!1314250 (not (= lambda!303697 lambda!303427))))

(declare-fun bs!1314252 () Bool)

(assert (= bs!1314252 (and d!1784773 b!5647372)))

(assert (=> bs!1314252 (not (= lambda!303697 lambda!303521))))

(declare-fun bs!1314253 () Bool)

(assert (= bs!1314253 (and d!1784773 d!1784481)))

(assert (=> bs!1314253 (= lambda!303697 lambda!303655)))

(assert (=> bs!1314251 (not (= lambda!303697 lambda!303686))))

(assert (=> bs!1314250 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303697 lambda!303426))))

(declare-fun bs!1314254 () Bool)

(assert (= bs!1314254 (and d!1784773 b!5649290)))

(assert (=> bs!1314254 (not (= lambda!303697 lambda!303695))))

(assert (=> bs!1314250 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303697 lambda!303428))))

(declare-fun bs!1314255 () Bool)

(assert (= bs!1314255 (and d!1784773 b!5647367)))

(assert (=> bs!1314255 (not (= lambda!303697 lambda!303522))))

(declare-fun bs!1314256 () Bool)

(assert (= bs!1314256 (and d!1784773 b!5647087)))

(assert (=> bs!1314256 (not (= lambda!303697 lambda!303501))))

(declare-fun bs!1314257 () Bool)

(assert (= bs!1314257 (and d!1784773 d!1784649)))

(assert (=> bs!1314257 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303697 lambda!303681))))

(declare-fun bs!1314258 () Bool)

(assert (= bs!1314258 (and d!1784773 d!1783751)))

(assert (=> bs!1314258 (not (= lambda!303697 lambda!303513))))

(declare-fun bs!1314259 () Bool)

(assert (= bs!1314259 (and d!1784773 b!5648918)))

(assert (=> bs!1314259 (not (= lambda!303697 lambda!303664))))

(declare-fun bs!1314260 () Bool)

(assert (= bs!1314260 (and d!1784773 b!5646420)))

(assert (=> bs!1314260 (not (= lambda!303697 lambda!303424))))

(declare-fun bs!1314261 () Bool)

(assert (= bs!1314261 (and d!1784773 d!1783677)))

(assert (=> bs!1314261 (= lambda!303697 lambda!303494)))

(declare-fun bs!1314262 () Bool)

(assert (= bs!1314262 (and d!1784773 b!5648782)))

(assert (=> bs!1314262 (not (= lambda!303697 lambda!303657))))

(declare-fun bs!1314263 () Bool)

(assert (= bs!1314263 (and d!1784773 b!5647359)))

(assert (=> bs!1314263 (not (= lambda!303697 lambda!303518))))

(declare-fun bs!1314264 () Bool)

(assert (= bs!1314264 (and d!1784773 b!5647092)))

(assert (=> bs!1314264 (not (= lambda!303697 lambda!303500))))

(assert (=> bs!1314261 (not (= lambda!303697 lambda!303495))))

(declare-fun bs!1314265 () Bool)

(assert (= bs!1314265 (and d!1784773 d!1784359)))

(assert (=> bs!1314265 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303697 lambda!303630))))

(declare-fun bs!1314266 () Bool)

(assert (= bs!1314266 (and d!1784773 b!5648955)))

(assert (=> bs!1314266 (not (= lambda!303697 lambda!303670))))

(declare-fun bs!1314267 () Bool)

(assert (= bs!1314267 (and d!1784773 b!5648815)))

(assert (=> bs!1314267 (not (= lambda!303697 lambda!303660))))

(assert (=> bs!1314253 (not (= lambda!303697 lambda!303656))))

(declare-fun bs!1314268 () Bool)

(assert (= bs!1314268 (and d!1784773 b!5649285)))

(assert (=> bs!1314268 (not (= lambda!303697 lambda!303696))))

(declare-fun bs!1314269 () Bool)

(assert (= bs!1314269 (and d!1784773 d!1783793)))

(assert (=> bs!1314269 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303697 lambda!303523))))

(assert (=> bs!1314265 (not (= lambda!303697 lambda!303631))))

(assert (=> bs!1314269 (not (= lambda!303697 lambda!303524))))

(declare-fun bs!1314270 () Bool)

(assert (= bs!1314270 (and d!1784773 b!5648777)))

(assert (=> bs!1314270 (not (= lambda!303697 lambda!303658))))

(declare-fun bs!1314271 () Bool)

(assert (= bs!1314271 (and d!1784773 d!1783781)))

(assert (=> bs!1314271 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303697 lambda!303520))))

(assert (=> bs!1314258 (= (and (= (regOne!31774 r!7292) (regTwo!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264217)) (= lambda!303697 lambda!303512))))

(assert (=> bs!1314260 (= lambda!303697 lambda!303423)))

(declare-fun bs!1314272 () Bool)

(assert (= bs!1314272 (and d!1784773 b!5649017)))

(assert (=> bs!1314272 (not (= lambda!303697 lambda!303674))))

(declare-fun bs!1314273 () Bool)

(assert (= bs!1314273 (and d!1784773 b!5647354)))

(assert (=> bs!1314273 (not (= lambda!303697 lambda!303519))))

(declare-fun bs!1314274 () Bool)

(assert (= bs!1314274 (and d!1784773 b!5648923)))

(assert (=> bs!1314274 (not (= lambda!303697 lambda!303663))))

(declare-fun bs!1314275 () Bool)

(assert (= bs!1314275 (and d!1784773 b!5649012)))

(assert (=> bs!1314275 (not (= lambda!303697 lambda!303675))))

(declare-fun bs!1314276 () Bool)

(assert (= bs!1314276 (and d!1784773 b!5648820)))

(assert (=> bs!1314276 (not (= lambda!303697 lambda!303659))))

(declare-fun bs!1314277 () Bool)

(assert (= bs!1314277 (and d!1784773 b!5648950)))

(assert (=> bs!1314277 (not (= lambda!303697 lambda!303671))))

(declare-fun bs!1314278 () Bool)

(assert (= bs!1314278 (and d!1784773 d!1783759)))

(assert (=> bs!1314278 (= (and (= (regOne!31774 r!7292) (regOne!31774 (regOne!31774 r!7292))) (= (regTwo!31774 r!7292) lt!2264184)) (= lambda!303697 lambda!303514))))

(assert (=> d!1784773 true))

(assert (=> d!1784773 true))

(assert (=> d!1784773 true))

(assert (=> d!1784773 (= (isDefined!12343 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303697))))

(assert (=> d!1784773 true))

(declare-fun _$89!1764 () Unit!156056)

(assert (=> d!1784773 (= (choose!42759 (regOne!31774 r!7292) (regTwo!31774 r!7292) s!2326) _$89!1764)))

(declare-fun bs!1314279 () Bool)

(assert (= bs!1314279 d!1784773))

(assert (=> bs!1314279 m!6613748))

(assert (=> bs!1314279 m!6613748))

(assert (=> bs!1314279 m!6613750))

(declare-fun m!6616738 () Bool)

(assert (=> bs!1314279 m!6616738))

(assert (=> d!1783675 d!1784773))

(declare-fun d!1784775 () Bool)

(declare-fun c!993000 () Bool)

(assert (=> d!1784775 (= c!993000 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun e!3480019 () Bool)

(assert (=> d!1784775 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264195 (head!12006 s!2326)) (tail!11101 s!2326)) e!3480019)))

(declare-fun b!5649291 () Bool)

(assert (=> b!5649291 (= e!3480019 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264195 (head!12006 s!2326))))))

(declare-fun b!5649292 () Bool)

(assert (=> b!5649292 (= e!3480019 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264195 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(assert (= (and d!1784775 c!993000) b!5649291))

(assert (= (and d!1784775 (not c!993000)) b!5649292))

(assert (=> d!1784775 m!6614392))

(assert (=> d!1784775 m!6614394))

(assert (=> b!5649291 m!6614700))

(declare-fun m!6616740 () Bool)

(assert (=> b!5649291 m!6616740))

(assert (=> b!5649292 m!6614392))

(assert (=> b!5649292 m!6616068))

(assert (=> b!5649292 m!6614700))

(assert (=> b!5649292 m!6616068))

(declare-fun m!6616742 () Bool)

(assert (=> b!5649292 m!6616742))

(assert (=> b!5649292 m!6614392))

(assert (=> b!5649292 m!6616072))

(assert (=> b!5649292 m!6616742))

(assert (=> b!5649292 m!6616072))

(declare-fun m!6616744 () Bool)

(assert (=> b!5649292 m!6616744))

(assert (=> b!5647361 d!1784775))

(declare-fun bs!1314280 () Bool)

(declare-fun d!1784777 () Bool)

(assert (= bs!1314280 (and d!1784777 d!1784699)))

(declare-fun lambda!303698 () Int)

(assert (=> bs!1314280 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303688))))

(declare-fun bs!1314281 () Bool)

(assert (= bs!1314281 (and d!1784777 d!1784611)))

(assert (=> bs!1314281 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303673))))

(declare-fun bs!1314282 () Bool)

(assert (= bs!1314282 (and d!1784777 d!1784737)))

(assert (=> bs!1314282 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303693))))

(declare-fun bs!1314283 () Bool)

(assert (= bs!1314283 (and d!1784777 b!5646443)))

(assert (=> bs!1314283 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303698 lambda!303425))))

(declare-fun bs!1314284 () Bool)

(assert (= bs!1314284 (and d!1784777 d!1784621)))

(assert (=> bs!1314284 (= lambda!303698 lambda!303676)))

(declare-fun bs!1314285 () Bool)

(assert (= bs!1314285 (and d!1784777 d!1784731)))

(assert (=> bs!1314285 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303692))))

(declare-fun bs!1314286 () Bool)

(assert (= bs!1314286 (and d!1784777 d!1784467)))

(assert (=> bs!1314286 (= lambda!303698 lambda!303654)))

(declare-fun bs!1314287 () Bool)

(assert (= bs!1314287 (and d!1784777 d!1784575)))

(assert (=> bs!1314287 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303666))))

(declare-fun bs!1314288 () Bool)

(assert (= bs!1314288 (and d!1784777 d!1783813)))

(assert (=> bs!1314288 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303698 lambda!303543))))

(declare-fun bs!1314289 () Bool)

(assert (= bs!1314289 (and d!1784777 d!1783735)))

(assert (=> bs!1314289 (= (= (head!12006 s!2326) (h!69517 s!2326)) (= lambda!303698 lambda!303508))))

(declare-fun bs!1314290 () Bool)

(assert (= bs!1314290 (and d!1784777 d!1784655)))

(assert (=> bs!1314290 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303682))))

(declare-fun bs!1314291 () Bool)

(assert (= bs!1314291 (and d!1784777 d!1784323)))

(assert (=> bs!1314291 (= (= (head!12006 s!2326) (head!12006 (t!376491 s!2326))) (= lambda!303698 lambda!303624))))

(assert (=> d!1784777 true))

(assert (=> d!1784777 (= (derivationStepZipper!1718 lt!2264195 (head!12006 s!2326)) (flatMap!1244 lt!2264195 lambda!303698))))

(declare-fun bs!1314292 () Bool)

(assert (= bs!1314292 d!1784777))

(declare-fun m!6616746 () Bool)

(assert (=> bs!1314292 m!6616746))

(assert (=> b!5647361 d!1784777))

(assert (=> b!5647361 d!1784387))

(assert (=> b!5647361 d!1784469))

(declare-fun d!1784779 () Bool)

(assert (=> d!1784779 (= (isEmpty!34913 lt!2264230) ((_ is Nil!63068) lt!2264230))))

(assert (=> b!5647325 d!1784779))

(assert (=> d!1783781 d!1783765))

(assert (=> d!1783781 d!1784337))

(declare-fun bs!1314293 () Bool)

(declare-fun d!1784781 () Bool)

(assert (= bs!1314293 (and d!1784781 b!5646415)))

(declare-fun lambda!303699 () Int)

(assert (=> bs!1314293 (not (= lambda!303699 lambda!303429))))

(declare-fun bs!1314294 () Bool)

(assert (= bs!1314294 (and d!1784781 d!1784679)))

(assert (=> bs!1314294 (= lambda!303699 lambda!303685)))

(assert (=> bs!1314293 (not (= lambda!303699 lambda!303427))))

(declare-fun bs!1314295 () Bool)

(assert (= bs!1314295 (and d!1784781 b!5647372)))

(assert (=> bs!1314295 (not (= lambda!303699 lambda!303521))))

(declare-fun bs!1314296 () Bool)

(assert (= bs!1314296 (and d!1784781 d!1784481)))

(assert (=> bs!1314296 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303699 lambda!303655))))

(assert (=> bs!1314294 (not (= lambda!303699 lambda!303686))))

(assert (=> bs!1314293 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303699 lambda!303426))))

(declare-fun bs!1314297 () Bool)

(assert (= bs!1314297 (and d!1784781 b!5649290)))

(assert (=> bs!1314297 (not (= lambda!303699 lambda!303695))))

(assert (=> bs!1314293 (= lambda!303699 lambda!303428)))

(declare-fun bs!1314298 () Bool)

(assert (= bs!1314298 (and d!1784781 b!5647367)))

(assert (=> bs!1314298 (not (= lambda!303699 lambda!303522))))

(declare-fun bs!1314299 () Bool)

(assert (= bs!1314299 (and d!1784781 b!5647087)))

(assert (=> bs!1314299 (not (= lambda!303699 lambda!303501))))

(declare-fun bs!1314300 () Bool)

(assert (= bs!1314300 (and d!1784781 d!1784773)))

(assert (=> bs!1314300 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303699 lambda!303697))))

(declare-fun bs!1314301 () Bool)

(assert (= bs!1314301 (and d!1784781 d!1783675)))

(assert (=> bs!1314301 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303699 lambda!303489))))

(declare-fun bs!1314302 () Bool)

(assert (= bs!1314302 (and d!1784781 d!1784649)))

(assert (=> bs!1314302 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303699 lambda!303681))))

(declare-fun bs!1314303 () Bool)

(assert (= bs!1314303 (and d!1784781 d!1783751)))

(assert (=> bs!1314303 (not (= lambda!303699 lambda!303513))))

(declare-fun bs!1314304 () Bool)

(assert (= bs!1314304 (and d!1784781 b!5648918)))

(assert (=> bs!1314304 (not (= lambda!303699 lambda!303664))))

(declare-fun bs!1314305 () Bool)

(assert (= bs!1314305 (and d!1784781 b!5646420)))

(assert (=> bs!1314305 (not (= lambda!303699 lambda!303424))))

(declare-fun bs!1314306 () Bool)

(assert (= bs!1314306 (and d!1784781 d!1783677)))

(assert (=> bs!1314306 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303699 lambda!303494))))

(declare-fun bs!1314307 () Bool)

(assert (= bs!1314307 (and d!1784781 b!5648782)))

(assert (=> bs!1314307 (not (= lambda!303699 lambda!303657))))

(declare-fun bs!1314308 () Bool)

(assert (= bs!1314308 (and d!1784781 b!5647359)))

(assert (=> bs!1314308 (not (= lambda!303699 lambda!303518))))

(declare-fun bs!1314309 () Bool)

(assert (= bs!1314309 (and d!1784781 b!5647092)))

(assert (=> bs!1314309 (not (= lambda!303699 lambda!303500))))

(assert (=> bs!1314306 (not (= lambda!303699 lambda!303495))))

(declare-fun bs!1314310 () Bool)

(assert (= bs!1314310 (and d!1784781 d!1784359)))

(assert (=> bs!1314310 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303699 lambda!303630))))

(declare-fun bs!1314311 () Bool)

(assert (= bs!1314311 (and d!1784781 b!5648955)))

(assert (=> bs!1314311 (not (= lambda!303699 lambda!303670))))

(declare-fun bs!1314312 () Bool)

(assert (= bs!1314312 (and d!1784781 b!5648815)))

(assert (=> bs!1314312 (not (= lambda!303699 lambda!303660))))

(assert (=> bs!1314296 (not (= lambda!303699 lambda!303656))))

(declare-fun bs!1314313 () Bool)

(assert (= bs!1314313 (and d!1784781 b!5649285)))

(assert (=> bs!1314313 (not (= lambda!303699 lambda!303696))))

(declare-fun bs!1314314 () Bool)

(assert (= bs!1314314 (and d!1784781 d!1783793)))

(assert (=> bs!1314314 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303699 lambda!303523))))

(assert (=> bs!1314310 (not (= lambda!303699 lambda!303631))))

(assert (=> bs!1314314 (not (= lambda!303699 lambda!303524))))

(declare-fun bs!1314315 () Bool)

(assert (= bs!1314315 (and d!1784781 b!5648777)))

(assert (=> bs!1314315 (not (= lambda!303699 lambda!303658))))

(declare-fun bs!1314316 () Bool)

(assert (= bs!1314316 (and d!1784781 d!1783781)))

(assert (=> bs!1314316 (= lambda!303699 lambda!303520)))

(assert (=> bs!1314303 (= lambda!303699 lambda!303512)))

(assert (=> bs!1314305 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 r!7292)) (= lt!2264217 (regTwo!31774 r!7292))) (= lambda!303699 lambda!303423))))

(declare-fun bs!1314317 () Bool)

(assert (= bs!1314317 (and d!1784781 b!5649017)))

(assert (=> bs!1314317 (not (= lambda!303699 lambda!303674))))

(declare-fun bs!1314318 () Bool)

(assert (= bs!1314318 (and d!1784781 b!5647354)))

(assert (=> bs!1314318 (not (= lambda!303699 lambda!303519))))

(declare-fun bs!1314319 () Bool)

(assert (= bs!1314319 (and d!1784781 b!5648923)))

(assert (=> bs!1314319 (not (= lambda!303699 lambda!303663))))

(declare-fun bs!1314320 () Bool)

(assert (= bs!1314320 (and d!1784781 b!5649012)))

(assert (=> bs!1314320 (not (= lambda!303699 lambda!303675))))

(declare-fun bs!1314321 () Bool)

(assert (= bs!1314321 (and d!1784781 b!5648820)))

(assert (=> bs!1314321 (not (= lambda!303699 lambda!303659))))

(declare-fun bs!1314322 () Bool)

(assert (= bs!1314322 (and d!1784781 b!5648950)))

(assert (=> bs!1314322 (not (= lambda!303699 lambda!303671))))

(declare-fun bs!1314323 () Bool)

(assert (= bs!1314323 (and d!1784781 d!1783759)))

(assert (=> bs!1314323 (= (and (= (regTwo!31774 (regOne!31774 r!7292)) (regOne!31774 (regOne!31774 r!7292))) (= lt!2264217 lt!2264184)) (= lambda!303699 lambda!303514))))

(assert (=> d!1784781 true))

(assert (=> d!1784781 true))

(assert (=> d!1784781 true))

(assert (=> d!1784781 (= (isDefined!12343 (findConcatSeparation!2054 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 Nil!63069 s!2326 s!2326)) (Exists!2731 lambda!303699))))

(assert (=> d!1784781 true))

(declare-fun _$89!1765 () Unit!156056)

(assert (=> d!1784781 (= (choose!42759 (regTwo!31774 (regOne!31774 r!7292)) lt!2264217 s!2326) _$89!1765)))

(declare-fun bs!1314324 () Bool)

(assert (= bs!1314324 d!1784781))

(assert (=> bs!1314324 m!6613678))

(assert (=> bs!1314324 m!6613678))

(assert (=> bs!1314324 m!6613680))

(declare-fun m!6616748 () Bool)

(assert (=> bs!1314324 m!6616748))

(assert (=> d!1783781 d!1784781))

(assert (=> d!1783781 d!1783783))

(declare-fun d!1784783 () Bool)

(assert (=> d!1784783 (= (Exists!2731 lambda!303520) (choose!42758 lambda!303520))))

(declare-fun bs!1314325 () Bool)

(assert (= bs!1314325 d!1784783))

(declare-fun m!6616750 () Bool)

(assert (=> bs!1314325 m!6616750))

(assert (=> d!1783781 d!1784783))

(assert (=> b!5647207 d!1783655))

(assert (=> b!5647034 d!1784601))

(assert (=> b!5647034 d!1784603))

(assert (=> b!5647034 d!1784605))

(declare-fun b!5649293 () Bool)

(declare-fun e!3480024 () Bool)

(assert (=> b!5649293 (= e!3480024 (matchR!7816 (regTwo!31774 r!7292) (t!376491 s!2326)))))

(declare-fun b!5649294 () Bool)

(declare-fun e!3480022 () Option!15640)

(assert (=> b!5649294 (= e!3480022 None!15639)))

(declare-fun d!1784785 () Bool)

(declare-fun e!3480021 () Bool)

(assert (=> d!1784785 e!3480021))

(declare-fun res!2389534 () Bool)

(assert (=> d!1784785 (=> res!2389534 e!3480021)))

(declare-fun e!3480020 () Bool)

(assert (=> d!1784785 (= res!2389534 e!3480020)))

(declare-fun res!2389532 () Bool)

(assert (=> d!1784785 (=> (not res!2389532) (not e!3480020))))

(declare-fun lt!2264567 () Option!15640)

(assert (=> d!1784785 (= res!2389532 (isDefined!12343 lt!2264567))))

(declare-fun e!3480023 () Option!15640)

(assert (=> d!1784785 (= lt!2264567 e!3480023)))

(declare-fun c!993002 () Bool)

(assert (=> d!1784785 (= c!993002 e!3480024)))

(declare-fun res!2389533 () Bool)

(assert (=> d!1784785 (=> (not res!2389533) (not e!3480024))))

(assert (=> d!1784785 (= res!2389533 (matchR!7816 (regOne!31774 r!7292) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069))))))

(assert (=> d!1784785 (validRegex!7367 (regOne!31774 r!7292))))

(assert (=> d!1784785 (= (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326) s!2326) lt!2264567)))

(declare-fun b!5649295 () Bool)

(assert (=> b!5649295 (= e!3480023 (Some!15639 (tuple2!65457 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (t!376491 s!2326))))))

(declare-fun b!5649296 () Bool)

(declare-fun res!2389536 () Bool)

(assert (=> b!5649296 (=> (not res!2389536) (not e!3480020))))

(assert (=> b!5649296 (= res!2389536 (matchR!7816 (regTwo!31774 r!7292) (_2!36031 (get!21730 lt!2264567))))))

(declare-fun b!5649297 () Bool)

(assert (=> b!5649297 (= e!3480021 (not (isDefined!12343 lt!2264567)))))

(declare-fun b!5649298 () Bool)

(declare-fun lt!2264568 () Unit!156056)

(declare-fun lt!2264566 () Unit!156056)

(assert (=> b!5649298 (= lt!2264568 lt!2264566)))

(assert (=> b!5649298 (= (++!13847 (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326))) s!2326)))

(assert (=> b!5649298 (= lt!2264566 (lemmaMoveElementToOtherListKeepsConcatEq!2016 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (h!69517 (t!376491 s!2326)) (t!376491 (t!376491 s!2326)) s!2326))))

(assert (=> b!5649298 (= e!3480022 (findConcatSeparation!2054 (regOne!31774 r!7292) (regTwo!31774 r!7292) (++!13847 (++!13847 Nil!63069 (Cons!63069 (h!69517 s!2326) Nil!63069)) (Cons!63069 (h!69517 (t!376491 s!2326)) Nil!63069)) (t!376491 (t!376491 s!2326)) s!2326))))

(declare-fun b!5649299 () Bool)

(assert (=> b!5649299 (= e!3480023 e!3480022)))

(declare-fun c!993001 () Bool)

(assert (=> b!5649299 (= c!993001 ((_ is Nil!63069) (t!376491 s!2326)))))

(declare-fun b!5649300 () Bool)

(assert (=> b!5649300 (= e!3480020 (= (++!13847 (_1!36031 (get!21730 lt!2264567)) (_2!36031 (get!21730 lt!2264567))) s!2326))))

(declare-fun b!5649301 () Bool)

(declare-fun res!2389535 () Bool)

(assert (=> b!5649301 (=> (not res!2389535) (not e!3480020))))

(assert (=> b!5649301 (= res!2389535 (matchR!7816 (regOne!31774 r!7292) (_1!36031 (get!21730 lt!2264567))))))

(assert (= (and d!1784785 res!2389533) b!5649293))

(assert (= (and d!1784785 c!993002) b!5649295))

(assert (= (and d!1784785 (not c!993002)) b!5649299))

(assert (= (and b!5649299 c!993001) b!5649294))

(assert (= (and b!5649299 (not c!993001)) b!5649298))

(assert (= (and d!1784785 res!2389532) b!5649301))

(assert (= (and b!5649301 res!2389535) b!5649296))

(assert (= (and b!5649296 res!2389536) b!5649300))

(assert (= (and d!1784785 (not res!2389534)) b!5649297))

(declare-fun m!6616752 () Bool)

(assert (=> b!5649297 m!6616752))

(declare-fun m!6616754 () Bool)

(assert (=> b!5649293 m!6616754))

(declare-fun m!6616756 () Bool)

(assert (=> b!5649300 m!6616756))

(declare-fun m!6616758 () Bool)

(assert (=> b!5649300 m!6616758))

(assert (=> d!1784785 m!6616752))

(assert (=> d!1784785 m!6614354))

(declare-fun m!6616760 () Bool)

(assert (=> d!1784785 m!6616760))

(assert (=> d!1784785 m!6614352))

(assert (=> b!5649298 m!6614354))

(assert (=> b!5649298 m!6616390))

(assert (=> b!5649298 m!6616390))

(assert (=> b!5649298 m!6616392))

(assert (=> b!5649298 m!6614354))

(assert (=> b!5649298 m!6616394))

(assert (=> b!5649298 m!6616390))

(declare-fun m!6616762 () Bool)

(assert (=> b!5649298 m!6616762))

(assert (=> b!5649296 m!6616756))

(declare-fun m!6616764 () Bool)

(assert (=> b!5649296 m!6616764))

(assert (=> b!5649301 m!6616756))

(declare-fun m!6616766 () Bool)

(assert (=> b!5649301 m!6616766))

(assert (=> b!5647034 d!1784785))

(declare-fun d!1784787 () Bool)

(assert (=> d!1784787 (= (nullable!5663 (h!69516 (exprs!5515 lt!2264194))) (nullableFct!1760 (h!69516 (exprs!5515 lt!2264194))))))

(declare-fun bs!1314326 () Bool)

(assert (= bs!1314326 d!1784787))

(declare-fun m!6616768 () Bool)

(assert (=> bs!1314326 m!6616768))

(assert (=> b!5647430 d!1784787))

(declare-fun d!1784789 () Bool)

(declare-fun c!993003 () Bool)

(assert (=> d!1784789 (= c!993003 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3480025 () Bool)

(assert (=> d!1784789 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264205 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3480025)))

(declare-fun b!5649302 () Bool)

(assert (=> b!5649302 (= e!3480025 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264205 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649303 () Bool)

(assert (=> b!5649303 (= e!3480025 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264205 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784789 c!993003) b!5649302))

(assert (= (and d!1784789 (not c!993003)) b!5649303))

(assert (=> d!1784789 m!6614310))

(assert (=> d!1784789 m!6615792))

(assert (=> b!5649302 m!6614326))

(declare-fun m!6616770 () Bool)

(assert (=> b!5649302 m!6616770))

(assert (=> b!5649303 m!6614310))

(assert (=> b!5649303 m!6615796))

(assert (=> b!5649303 m!6614326))

(assert (=> b!5649303 m!6615796))

(declare-fun m!6616772 () Bool)

(assert (=> b!5649303 m!6616772))

(assert (=> b!5649303 m!6614310))

(assert (=> b!5649303 m!6615800))

(assert (=> b!5649303 m!6616772))

(assert (=> b!5649303 m!6615800))

(declare-fun m!6616774 () Bool)

(assert (=> b!5649303 m!6616774))

(assert (=> b!5647008 d!1784789))

(declare-fun bs!1314327 () Bool)

(declare-fun d!1784791 () Bool)

(assert (= bs!1314327 (and d!1784791 d!1784699)))

(declare-fun lambda!303700 () Int)

(assert (=> bs!1314327 (= lambda!303700 lambda!303688)))

(declare-fun bs!1314328 () Bool)

(assert (= bs!1314328 (and d!1784791 d!1784611)))

(assert (=> bs!1314328 (= lambda!303700 lambda!303673)))

(declare-fun bs!1314329 () Bool)

(assert (= bs!1314329 (and d!1784791 d!1784737)))

(assert (=> bs!1314329 (= lambda!303700 lambda!303693)))

(declare-fun bs!1314330 () Bool)

(assert (= bs!1314330 (and d!1784791 b!5646443)))

(assert (=> bs!1314330 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303700 lambda!303425))))

(declare-fun bs!1314331 () Bool)

(assert (= bs!1314331 (and d!1784791 d!1784621)))

(assert (=> bs!1314331 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303700 lambda!303676))))

(declare-fun bs!1314332 () Bool)

(assert (= bs!1314332 (and d!1784791 d!1784731)))

(assert (=> bs!1314332 (= lambda!303700 lambda!303692)))

(declare-fun bs!1314333 () Bool)

(assert (= bs!1314333 (and d!1784791 d!1784467)))

(assert (=> bs!1314333 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303700 lambda!303654))))

(declare-fun bs!1314334 () Bool)

(assert (= bs!1314334 (and d!1784791 d!1784575)))

(assert (=> bs!1314334 (= lambda!303700 lambda!303666)))

(declare-fun bs!1314335 () Bool)

(assert (= bs!1314335 (and d!1784791 d!1783813)))

(assert (=> bs!1314335 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303700 lambda!303543))))

(declare-fun bs!1314336 () Bool)

(assert (= bs!1314336 (and d!1784791 d!1784777)))

(assert (=> bs!1314336 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303700 lambda!303698))))

(declare-fun bs!1314337 () Bool)

(assert (= bs!1314337 (and d!1784791 d!1783735)))

(assert (=> bs!1314337 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303700 lambda!303508))))

(declare-fun bs!1314338 () Bool)

(assert (= bs!1314338 (and d!1784791 d!1784655)))

(assert (=> bs!1314338 (= lambda!303700 lambda!303682)))

(declare-fun bs!1314339 () Bool)

(assert (= bs!1314339 (and d!1784791 d!1784323)))

(assert (=> bs!1314339 (= lambda!303700 lambda!303624)))

(assert (=> d!1784791 true))

(assert (=> d!1784791 (= (derivationStepZipper!1718 lt!2264205 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264205 lambda!303700))))

(declare-fun bs!1314340 () Bool)

(assert (= bs!1314340 d!1784791))

(declare-fun m!6616776 () Bool)

(assert (=> bs!1314340 m!6616776))

(assert (=> b!5647008 d!1784791))

(assert (=> b!5647008 d!1784325))

(assert (=> b!5647008 d!1784327))

(assert (=> b!5647290 d!1784387))

(assert (=> d!1783795 d!1783747))

(assert (=> d!1783795 d!1783789))

(declare-fun d!1784793 () Bool)

(assert (=> d!1784793 (= (matchR!7816 lt!2264184 s!2326) (matchRSpec!2734 lt!2264184 s!2326))))

(assert (=> d!1784793 true))

(declare-fun _$88!3934 () Unit!156056)

(assert (=> d!1784793 (= (choose!42761 lt!2264184 s!2326) _$88!3934)))

(declare-fun bs!1314341 () Bool)

(assert (= bs!1314341 d!1784793))

(assert (=> bs!1314341 m!6613676))

(assert (=> bs!1314341 m!6613674))

(assert (=> d!1783795 d!1784793))

(assert (=> d!1783795 d!1784509))

(declare-fun d!1784795 () Bool)

(declare-fun c!993004 () Bool)

(assert (=> d!1784795 (= c!993004 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3480026 () Bool)

(assert (=> d!1784795 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264223 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3480026)))

(declare-fun b!5649304 () Bool)

(assert (=> b!5649304 (= e!3480026 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264223 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649305 () Bool)

(assert (=> b!5649305 (= e!3480026 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264223 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784795 c!993004) b!5649304))

(assert (= (and d!1784795 (not c!993004)) b!5649305))

(assert (=> d!1784795 m!6614310))

(assert (=> d!1784795 m!6615792))

(assert (=> b!5649304 m!6614308))

(declare-fun m!6616778 () Bool)

(assert (=> b!5649304 m!6616778))

(assert (=> b!5649305 m!6614310))

(assert (=> b!5649305 m!6615796))

(assert (=> b!5649305 m!6614308))

(assert (=> b!5649305 m!6615796))

(declare-fun m!6616780 () Bool)

(assert (=> b!5649305 m!6616780))

(assert (=> b!5649305 m!6614310))

(assert (=> b!5649305 m!6615800))

(assert (=> b!5649305 m!6616780))

(assert (=> b!5649305 m!6615800))

(declare-fun m!6616782 () Bool)

(assert (=> b!5649305 m!6616782))

(assert (=> b!5646988 d!1784795))

(declare-fun bs!1314342 () Bool)

(declare-fun d!1784797 () Bool)

(assert (= bs!1314342 (and d!1784797 d!1784699)))

(declare-fun lambda!303701 () Int)

(assert (=> bs!1314342 (= lambda!303701 lambda!303688)))

(declare-fun bs!1314343 () Bool)

(assert (= bs!1314343 (and d!1784797 d!1784737)))

(assert (=> bs!1314343 (= lambda!303701 lambda!303693)))

(declare-fun bs!1314344 () Bool)

(assert (= bs!1314344 (and d!1784797 b!5646443)))

(assert (=> bs!1314344 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303701 lambda!303425))))

(declare-fun bs!1314345 () Bool)

(assert (= bs!1314345 (and d!1784797 d!1784621)))

(assert (=> bs!1314345 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303701 lambda!303676))))

(declare-fun bs!1314346 () Bool)

(assert (= bs!1314346 (and d!1784797 d!1784731)))

(assert (=> bs!1314346 (= lambda!303701 lambda!303692)))

(declare-fun bs!1314347 () Bool)

(assert (= bs!1314347 (and d!1784797 d!1784467)))

(assert (=> bs!1314347 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303701 lambda!303654))))

(declare-fun bs!1314348 () Bool)

(assert (= bs!1314348 (and d!1784797 d!1784575)))

(assert (=> bs!1314348 (= lambda!303701 lambda!303666)))

(declare-fun bs!1314349 () Bool)

(assert (= bs!1314349 (and d!1784797 d!1783813)))

(assert (=> bs!1314349 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303701 lambda!303543))))

(declare-fun bs!1314350 () Bool)

(assert (= bs!1314350 (and d!1784797 d!1784777)))

(assert (=> bs!1314350 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303701 lambda!303698))))

(declare-fun bs!1314351 () Bool)

(assert (= bs!1314351 (and d!1784797 d!1783735)))

(assert (=> bs!1314351 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303701 lambda!303508))))

(declare-fun bs!1314352 () Bool)

(assert (= bs!1314352 (and d!1784797 d!1784611)))

(assert (=> bs!1314352 (= lambda!303701 lambda!303673)))

(declare-fun bs!1314353 () Bool)

(assert (= bs!1314353 (and d!1784797 d!1784791)))

(assert (=> bs!1314353 (= lambda!303701 lambda!303700)))

(declare-fun bs!1314354 () Bool)

(assert (= bs!1314354 (and d!1784797 d!1784655)))

(assert (=> bs!1314354 (= lambda!303701 lambda!303682)))

(declare-fun bs!1314355 () Bool)

(assert (= bs!1314355 (and d!1784797 d!1784323)))

(assert (=> bs!1314355 (= lambda!303701 lambda!303624)))

(assert (=> d!1784797 true))

(assert (=> d!1784797 (= (derivationStepZipper!1718 lt!2264223 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264223 lambda!303701))))

(declare-fun bs!1314356 () Bool)

(assert (= bs!1314356 d!1784797))

(declare-fun m!6616784 () Bool)

(assert (=> bs!1314356 m!6616784))

(assert (=> b!5646988 d!1784797))

(assert (=> b!5646988 d!1784325))

(assert (=> b!5646988 d!1784327))

(assert (=> d!1783683 d!1784413))

(assert (=> d!1783683 d!1783817))

(declare-fun d!1784799 () Bool)

(assert (=> d!1784799 (= (isConcat!695 lt!2264365) ((_ is Concat!24476) lt!2264365))))

(assert (=> b!5647268 d!1784799))

(declare-fun bs!1314357 () Bool)

(declare-fun d!1784801 () Bool)

(assert (= bs!1314357 (and d!1784801 d!1784407)))

(declare-fun lambda!303702 () Int)

(assert (=> bs!1314357 (not (= lambda!303702 lambda!303640))))

(declare-fun bs!1314358 () Bool)

(assert (= bs!1314358 (and d!1784801 b!5647418)))

(assert (=> bs!1314358 (not (= lambda!303702 lambda!303538))))

(declare-fun bs!1314359 () Bool)

(assert (= bs!1314359 (and d!1784801 d!1784709)))

(assert (=> bs!1314359 (= lambda!303702 lambda!303689)))

(declare-fun bs!1314360 () Bool)

(assert (= bs!1314360 (and d!1784801 d!1784759)))

(assert (=> bs!1314360 (= lambda!303702 lambda!303694)))

(declare-fun bs!1314361 () Bool)

(assert (= bs!1314361 (and d!1784801 d!1784545)))

(assert (=> bs!1314361 (= lambda!303702 lambda!303661)))

(declare-fun bs!1314362 () Bool)

(assert (= bs!1314362 (and d!1784801 b!5648691)))

(assert (=> bs!1314362 (not (= lambda!303702 lambda!303651))))

(declare-fun bs!1314363 () Bool)

(assert (= bs!1314363 (and d!1784801 d!1784665)))

(assert (=> bs!1314363 (= lambda!303702 lambda!303684)))

(declare-fun bs!1314364 () Bool)

(assert (= bs!1314364 (and d!1784801 d!1784717)))

(assert (=> bs!1314364 (= lambda!303702 lambda!303690)))

(declare-fun bs!1314365 () Bool)

(assert (= bs!1314365 (and d!1784801 b!5648672)))

(assert (=> bs!1314365 (not (= lambda!303702 lambda!303643))))

(declare-fun bs!1314366 () Bool)

(assert (= bs!1314366 (and d!1784801 d!1784659)))

(assert (=> bs!1314366 (= lambda!303702 lambda!303683)))

(declare-fun bs!1314367 () Bool)

(assert (= bs!1314367 (and d!1784801 b!5648689)))

(assert (=> bs!1314367 (not (= lambda!303702 lambda!303650))))

(declare-fun bs!1314368 () Bool)

(assert (= bs!1314368 (and d!1784801 d!1784569)))

(assert (=> bs!1314368 (= lambda!303702 lambda!303665)))

(declare-fun bs!1314369 () Bool)

(assert (= bs!1314369 (and d!1784801 d!1784425)))

(assert (=> bs!1314369 (= lambda!303702 lambda!303646)))

(declare-fun bs!1314370 () Bool)

(assert (= bs!1314370 (and d!1784801 d!1784549)))

(assert (=> bs!1314370 (= lambda!303702 lambda!303662)))

(declare-fun bs!1314371 () Bool)

(assert (= bs!1314371 (and d!1784801 d!1784435)))

(assert (=> bs!1314371 (not (= lambda!303702 lambda!303652))))

(declare-fun bs!1314372 () Bool)

(assert (= bs!1314372 (and d!1784801 d!1784691)))

(assert (=> bs!1314372 (= lambda!303702 lambda!303687)))

(declare-fun bs!1314373 () Bool)

(assert (= bs!1314373 (and d!1784801 b!5648670)))

(assert (=> bs!1314373 (not (= lambda!303702 lambda!303642))))

(declare-fun bs!1314374 () Bool)

(assert (= bs!1314374 (and d!1784801 b!5647423)))

(assert (=> bs!1314374 (not (= lambda!303702 lambda!303541))))

(declare-fun bs!1314375 () Bool)

(assert (= bs!1314375 (and d!1784801 b!5647425)))

(assert (=> bs!1314375 (not (= lambda!303702 lambda!303542))))

(declare-fun bs!1314376 () Bool)

(assert (= bs!1314376 (and d!1784801 b!5647420)))

(assert (=> bs!1314376 (not (= lambda!303702 lambda!303539))))

(declare-fun bs!1314377 () Bool)

(assert (= bs!1314377 (and d!1784801 d!1784727)))

(assert (=> bs!1314377 (= lambda!303702 lambda!303691)))

(declare-fun bs!1314378 () Bool)

(assert (= bs!1314378 (and d!1784801 d!1784631)))

(assert (=> bs!1314378 (= lambda!303702 lambda!303678)))

(assert (=> d!1784801 (= (nullableZipper!1613 lt!2264186) (exists!2194 lt!2264186 lambda!303702))))

(declare-fun bs!1314379 () Bool)

(assert (= bs!1314379 d!1784801))

(declare-fun m!6616786 () Bool)

(assert (=> bs!1314379 m!6616786))

(assert (=> b!5647203 d!1784801))

(assert (=> d!1783665 d!1783663))

(declare-fun d!1784803 () Bool)

(assert (=> d!1784803 (= (flatMap!1244 lt!2264191 lambda!303425) (dynLambda!24674 lambda!303425 lt!2264221))))

(assert (=> d!1784803 true))

(declare-fun _$13!2289 () Unit!156056)

(assert (=> d!1784803 (= (choose!42757 lt!2264191 lt!2264221 lambda!303425) _$13!2289)))

(declare-fun b_lambda!213739 () Bool)

(assert (=> (not b_lambda!213739) (not d!1784803)))

(declare-fun bs!1314380 () Bool)

(assert (= bs!1314380 d!1784803))

(assert (=> bs!1314380 m!6613730))

(assert (=> bs!1314380 m!6614332))

(assert (=> d!1783665 d!1784803))

(assert (=> b!5647134 d!1784387))

(assert (=> d!1783757 d!1783755))

(assert (=> d!1783757 d!1783779))

(declare-fun d!1784805 () Bool)

(assert (=> d!1784805 (= (matchR!7816 lt!2264222 s!2326) (matchRSpec!2734 lt!2264222 s!2326))))

(assert (=> d!1784805 true))

(declare-fun _$88!3935 () Unit!156056)

(assert (=> d!1784805 (= (choose!42761 lt!2264222 s!2326) _$88!3935)))

(declare-fun bs!1314381 () Bool)

(assert (= bs!1314381 d!1784805))

(assert (=> bs!1314381 m!6613700))

(assert (=> bs!1314381 m!6613698))

(assert (=> d!1783757 d!1784805))

(assert (=> d!1783757 d!1784595))

(declare-fun bm!427373 () Bool)

(declare-fun call!427380 () Bool)

(declare-fun call!427379 () Bool)

(assert (=> bm!427373 (= call!427380 call!427379)))

(declare-fun b!5649306 () Bool)

(declare-fun res!2389540 () Bool)

(declare-fun e!3480028 () Bool)

(assert (=> b!5649306 (=> (not res!2389540) (not e!3480028))))

(assert (=> b!5649306 (= res!2389540 call!427380)))

(declare-fun e!3480030 () Bool)

(assert (=> b!5649306 (= e!3480030 e!3480028)))

(declare-fun b!5649307 () Bool)

(declare-fun res!2389541 () Bool)

(declare-fun e!3480031 () Bool)

(assert (=> b!5649307 (=> res!2389541 e!3480031)))

(assert (=> b!5649307 (= res!2389541 (not ((_ is Concat!24476) lt!2264356)))))

(assert (=> b!5649307 (= e!3480030 e!3480031)))

(declare-fun bm!427374 () Bool)

(declare-fun call!427378 () Bool)

(declare-fun c!993006 () Bool)

(assert (=> bm!427374 (= call!427378 (validRegex!7367 (ite c!993006 (regTwo!31775 lt!2264356) (regTwo!31774 lt!2264356))))))

(declare-fun d!1784807 () Bool)

(declare-fun res!2389539 () Bool)

(declare-fun e!3480033 () Bool)

(assert (=> d!1784807 (=> res!2389539 e!3480033)))

(assert (=> d!1784807 (= res!2389539 ((_ is ElementMatch!15631) lt!2264356))))

(assert (=> d!1784807 (= (validRegex!7367 lt!2264356) e!3480033)))

(declare-fun b!5649308 () Bool)

(declare-fun e!3480027 () Bool)

(assert (=> b!5649308 (= e!3480027 e!3480030)))

(assert (=> b!5649308 (= c!993006 ((_ is Union!15631) lt!2264356))))

(declare-fun b!5649309 () Bool)

(assert (=> b!5649309 (= e!3480033 e!3480027)))

(declare-fun c!993005 () Bool)

(assert (=> b!5649309 (= c!993005 ((_ is Star!15631) lt!2264356))))

(declare-fun bm!427375 () Bool)

(assert (=> bm!427375 (= call!427379 (validRegex!7367 (ite c!993005 (reg!15960 lt!2264356) (ite c!993006 (regOne!31775 lt!2264356) (regOne!31774 lt!2264356)))))))

(declare-fun b!5649310 () Bool)

(declare-fun e!3480032 () Bool)

(assert (=> b!5649310 (= e!3480032 call!427379)))

(declare-fun b!5649311 () Bool)

(declare-fun e!3480029 () Bool)

(assert (=> b!5649311 (= e!3480029 call!427378)))

(declare-fun b!5649312 () Bool)

(assert (=> b!5649312 (= e!3480031 e!3480029)))

(declare-fun res!2389538 () Bool)

(assert (=> b!5649312 (=> (not res!2389538) (not e!3480029))))

(assert (=> b!5649312 (= res!2389538 call!427380)))

(declare-fun b!5649313 () Bool)

(assert (=> b!5649313 (= e!3480028 call!427378)))

(declare-fun b!5649314 () Bool)

(assert (=> b!5649314 (= e!3480027 e!3480032)))

(declare-fun res!2389537 () Bool)

(assert (=> b!5649314 (= res!2389537 (not (nullable!5663 (reg!15960 lt!2264356))))))

(assert (=> b!5649314 (=> (not res!2389537) (not e!3480032))))

(assert (= (and d!1784807 (not res!2389539)) b!5649309))

(assert (= (and b!5649309 c!993005) b!5649314))

(assert (= (and b!5649309 (not c!993005)) b!5649308))

(assert (= (and b!5649314 res!2389537) b!5649310))

(assert (= (and b!5649308 c!993006) b!5649306))

(assert (= (and b!5649308 (not c!993006)) b!5649307))

(assert (= (and b!5649306 res!2389540) b!5649313))

(assert (= (and b!5649307 (not res!2389541)) b!5649312))

(assert (= (and b!5649312 res!2389538) b!5649311))

(assert (= (or b!5649313 b!5649311) bm!427374))

(assert (= (or b!5649306 b!5649312) bm!427373))

(assert (= (or b!5649310 bm!427373) bm!427375))

(declare-fun m!6616788 () Bool)

(assert (=> bm!427374 m!6616788))

(declare-fun m!6616790 () Bool)

(assert (=> bm!427375 m!6616790))

(declare-fun m!6616792 () Bool)

(assert (=> b!5649314 m!6616792))

(assert (=> d!1783705 d!1784807))

(assert (=> d!1783705 d!1783799))

(assert (=> d!1783705 d!1783801))

(assert (=> b!5647236 d!1783725))

(declare-fun d!1784809 () Bool)

(assert (=> d!1784809 true))

(declare-fun setRes!37729 () Bool)

(assert (=> d!1784809 setRes!37729))

(declare-fun condSetEmpty!37729 () Bool)

(declare-fun res!2389542 () (InoxSet Context!10030))

(assert (=> d!1784809 (= condSetEmpty!37729 (= res!2389542 ((as const (Array Context!10030 Bool)) false)))))

(assert (=> d!1784809 (= (choose!42756 lt!2264191 lambda!303425) res!2389542)))

(declare-fun setIsEmpty!37729 () Bool)

(assert (=> setIsEmpty!37729 setRes!37729))

(declare-fun e!3480034 () Bool)

(declare-fun setNonEmpty!37729 () Bool)

(declare-fun setElem!37729 () Context!10030)

(declare-fun tp!1565345 () Bool)

(assert (=> setNonEmpty!37729 (= setRes!37729 (and tp!1565345 (inv!82324 setElem!37729) e!3480034))))

(declare-fun setRest!37729 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37729 (= res!2389542 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37729 true) setRest!37729))))

(declare-fun b!5649315 () Bool)

(declare-fun tp!1565344 () Bool)

(assert (=> b!5649315 (= e!3480034 tp!1565344)))

(assert (= (and d!1784809 condSetEmpty!37729) setIsEmpty!37729))

(assert (= (and d!1784809 (not condSetEmpty!37729)) setNonEmpty!37729))

(assert (= setNonEmpty!37729 b!5649315))

(declare-fun m!6616794 () Bool)

(assert (=> setNonEmpty!37729 m!6616794))

(assert (=> d!1783663 d!1784809))

(declare-fun b!5649316 () Bool)

(declare-fun res!2389549 () Bool)

(declare-fun e!3480035 () Bool)

(assert (=> b!5649316 (=> (not res!2389549) (not e!3480035))))

(declare-fun call!427381 () Bool)

(assert (=> b!5649316 (= res!2389549 (not call!427381))))

(declare-fun b!5649317 () Bool)

(declare-fun e!3480036 () Bool)

(assert (=> b!5649317 (= e!3480036 (nullable!5663 (derivativeStep!4467 r!7292 (head!12006 s!2326))))))

(declare-fun b!5649318 () Bool)

(declare-fun e!3480038 () Bool)

(declare-fun e!3480040 () Bool)

(assert (=> b!5649318 (= e!3480038 e!3480040)))

(declare-fun res!2389550 () Bool)

(assert (=> b!5649318 (=> (not res!2389550) (not e!3480040))))

(declare-fun lt!2264569 () Bool)

(assert (=> b!5649318 (= res!2389550 (not lt!2264569))))

(declare-fun b!5649319 () Bool)

(declare-fun e!3480037 () Bool)

(assert (=> b!5649319 (= e!3480037 (not lt!2264569))))

(declare-fun b!5649320 () Bool)

(declare-fun res!2389547 () Bool)

(declare-fun e!3480039 () Bool)

(assert (=> b!5649320 (=> res!2389547 e!3480039)))

(assert (=> b!5649320 (= res!2389547 (not (isEmpty!34917 (tail!11101 (tail!11101 s!2326)))))))

(declare-fun b!5649322 () Bool)

(assert (=> b!5649322 (= e!3480040 e!3480039)))

(declare-fun res!2389546 () Bool)

(assert (=> b!5649322 (=> res!2389546 e!3480039)))

(assert (=> b!5649322 (= res!2389546 call!427381)))

(declare-fun b!5649323 () Bool)

(assert (=> b!5649323 (= e!3480035 (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 r!7292 (head!12006 s!2326)))))))

(declare-fun b!5649324 () Bool)

(declare-fun res!2389548 () Bool)

(assert (=> b!5649324 (=> res!2389548 e!3480038)))

(assert (=> b!5649324 (= res!2389548 (not ((_ is ElementMatch!15631) (derivativeStep!4467 r!7292 (head!12006 s!2326)))))))

(assert (=> b!5649324 (= e!3480037 e!3480038)))

(declare-fun b!5649325 () Bool)

(declare-fun e!3480041 () Bool)

(assert (=> b!5649325 (= e!3480041 (= lt!2264569 call!427381))))

(declare-fun bm!427376 () Bool)

(assert (=> bm!427376 (= call!427381 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun d!1784811 () Bool)

(assert (=> d!1784811 e!3480041))

(declare-fun c!993007 () Bool)

(assert (=> d!1784811 (= c!993007 ((_ is EmptyExpr!15631) (derivativeStep!4467 r!7292 (head!12006 s!2326))))))

(assert (=> d!1784811 (= lt!2264569 e!3480036)))

(declare-fun c!993008 () Bool)

(assert (=> d!1784811 (= c!993008 (isEmpty!34917 (tail!11101 s!2326)))))

(assert (=> d!1784811 (validRegex!7367 (derivativeStep!4467 r!7292 (head!12006 s!2326)))))

(assert (=> d!1784811 (= (matchR!7816 (derivativeStep!4467 r!7292 (head!12006 s!2326)) (tail!11101 s!2326)) lt!2264569)))

(declare-fun b!5649321 () Bool)

(assert (=> b!5649321 (= e!3480036 (matchR!7816 (derivativeStep!4467 (derivativeStep!4467 r!7292 (head!12006 s!2326)) (head!12006 (tail!11101 s!2326))) (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649326 () Bool)

(declare-fun res!2389543 () Bool)

(assert (=> b!5649326 (=> res!2389543 e!3480038)))

(assert (=> b!5649326 (= res!2389543 e!3480035)))

(declare-fun res!2389545 () Bool)

(assert (=> b!5649326 (=> (not res!2389545) (not e!3480035))))

(assert (=> b!5649326 (= res!2389545 lt!2264569)))

(declare-fun b!5649327 () Bool)

(declare-fun res!2389544 () Bool)

(assert (=> b!5649327 (=> (not res!2389544) (not e!3480035))))

(assert (=> b!5649327 (= res!2389544 (isEmpty!34917 (tail!11101 (tail!11101 s!2326))))))

(declare-fun b!5649328 () Bool)

(assert (=> b!5649328 (= e!3480041 e!3480037)))

(declare-fun c!993009 () Bool)

(assert (=> b!5649328 (= c!993009 ((_ is EmptyLang!15631) (derivativeStep!4467 r!7292 (head!12006 s!2326))))))

(declare-fun b!5649329 () Bool)

(assert (=> b!5649329 (= e!3480039 (not (= (head!12006 (tail!11101 s!2326)) (c!992159 (derivativeStep!4467 r!7292 (head!12006 s!2326))))))))

(assert (= (and d!1784811 c!993008) b!5649317))

(assert (= (and d!1784811 (not c!993008)) b!5649321))

(assert (= (and d!1784811 c!993007) b!5649325))

(assert (= (and d!1784811 (not c!993007)) b!5649328))

(assert (= (and b!5649328 c!993009) b!5649319))

(assert (= (and b!5649328 (not c!993009)) b!5649324))

(assert (= (and b!5649324 (not res!2389548)) b!5649326))

(assert (= (and b!5649326 res!2389545) b!5649316))

(assert (= (and b!5649316 res!2389549) b!5649327))

(assert (= (and b!5649327 res!2389544) b!5649323))

(assert (= (and b!5649326 (not res!2389543)) b!5649318))

(assert (= (and b!5649318 res!2389550) b!5649322))

(assert (= (and b!5649322 (not res!2389546)) b!5649320))

(assert (= (and b!5649320 (not res!2389547)) b!5649329))

(assert (= (or b!5649325 b!5649316 b!5649322) bm!427376))

(assert (=> d!1784811 m!6614392))

(assert (=> d!1784811 m!6614394))

(assert (=> d!1784811 m!6614396))

(declare-fun m!6616796 () Bool)

(assert (=> d!1784811 m!6616796))

(assert (=> b!5649329 m!6614392))

(assert (=> b!5649329 m!6616068))

(assert (=> b!5649323 m!6614392))

(assert (=> b!5649323 m!6616068))

(assert (=> bm!427376 m!6614392))

(assert (=> bm!427376 m!6614394))

(assert (=> b!5649327 m!6614392))

(assert (=> b!5649327 m!6616072))

(assert (=> b!5649327 m!6616072))

(assert (=> b!5649327 m!6616474))

(assert (=> b!5649320 m!6614392))

(assert (=> b!5649320 m!6616072))

(assert (=> b!5649320 m!6616072))

(assert (=> b!5649320 m!6616474))

(assert (=> b!5649321 m!6614392))

(assert (=> b!5649321 m!6616068))

(assert (=> b!5649321 m!6614396))

(assert (=> b!5649321 m!6616068))

(declare-fun m!6616798 () Bool)

(assert (=> b!5649321 m!6616798))

(assert (=> b!5649321 m!6614392))

(assert (=> b!5649321 m!6616072))

(assert (=> b!5649321 m!6616798))

(assert (=> b!5649321 m!6616072))

(declare-fun m!6616800 () Bool)

(assert (=> b!5649321 m!6616800))

(assert (=> b!5649317 m!6614396))

(declare-fun m!6616802 () Bool)

(assert (=> b!5649317 m!6616802))

(assert (=> b!5647126 d!1784811))

(declare-fun bm!427377 () Bool)

(declare-fun call!427384 () Regex!15631)

(declare-fun call!427382 () Regex!15631)

(assert (=> bm!427377 (= call!427384 call!427382)))

(declare-fun b!5649330 () Bool)

(declare-fun c!993010 () Bool)

(assert (=> b!5649330 (= c!993010 (nullable!5663 (regOne!31774 r!7292)))))

(declare-fun e!3480044 () Regex!15631)

(declare-fun e!3480046 () Regex!15631)

(assert (=> b!5649330 (= e!3480044 e!3480046)))

(declare-fun b!5649331 () Bool)

(declare-fun call!427385 () Regex!15631)

(assert (=> b!5649331 (= e!3480046 (Union!15631 (Concat!24476 call!427385 (regTwo!31774 r!7292)) EmptyLang!15631))))

(declare-fun b!5649332 () Bool)

(declare-fun c!993012 () Bool)

(assert (=> b!5649332 (= c!993012 ((_ is Union!15631) r!7292))))

(declare-fun e!3480042 () Regex!15631)

(declare-fun e!3480043 () Regex!15631)

(assert (=> b!5649332 (= e!3480042 e!3480043)))

(declare-fun d!1784813 () Bool)

(declare-fun lt!2264570 () Regex!15631)

(assert (=> d!1784813 (validRegex!7367 lt!2264570)))

(declare-fun e!3480045 () Regex!15631)

(assert (=> d!1784813 (= lt!2264570 e!3480045)))

(declare-fun c!993011 () Bool)

(assert (=> d!1784813 (= c!993011 (or ((_ is EmptyExpr!15631) r!7292) ((_ is EmptyLang!15631) r!7292)))))

(assert (=> d!1784813 (validRegex!7367 r!7292)))

(assert (=> d!1784813 (= (derivativeStep!4467 r!7292 (head!12006 s!2326)) lt!2264570)))

(declare-fun b!5649333 () Bool)

(assert (=> b!5649333 (= e!3480042 (ite (= (head!12006 s!2326) (c!992159 r!7292)) EmptyExpr!15631 EmptyLang!15631))))

(declare-fun b!5649334 () Bool)

(declare-fun call!427383 () Regex!15631)

(assert (=> b!5649334 (= e!3480043 (Union!15631 call!427382 call!427383))))

(declare-fun bm!427378 () Bool)

(declare-fun c!993014 () Bool)

(assert (=> bm!427378 (= call!427382 (derivativeStep!4467 (ite c!993012 (regOne!31775 r!7292) (ite c!993014 (reg!15960 r!7292) (ite c!993010 (regTwo!31774 r!7292) (regOne!31774 r!7292)))) (head!12006 s!2326)))))

(declare-fun bm!427379 () Bool)

(assert (=> bm!427379 (= call!427385 call!427384)))

(declare-fun b!5649335 () Bool)

(assert (=> b!5649335 (= e!3480044 (Concat!24476 call!427384 r!7292))))

(declare-fun b!5649336 () Bool)

(assert (=> b!5649336 (= e!3480045 EmptyLang!15631)))

(declare-fun b!5649337 () Bool)

(assert (=> b!5649337 (= e!3480045 e!3480042)))

(declare-fun c!993013 () Bool)

(assert (=> b!5649337 (= c!993013 ((_ is ElementMatch!15631) r!7292))))

(declare-fun b!5649338 () Bool)

(assert (=> b!5649338 (= e!3480043 e!3480044)))

(assert (=> b!5649338 (= c!993014 ((_ is Star!15631) r!7292))))

(declare-fun b!5649339 () Bool)

(assert (=> b!5649339 (= e!3480046 (Union!15631 (Concat!24476 call!427383 (regTwo!31774 r!7292)) call!427385))))

(declare-fun bm!427380 () Bool)

(assert (=> bm!427380 (= call!427383 (derivativeStep!4467 (ite c!993012 (regTwo!31775 r!7292) (regOne!31774 r!7292)) (head!12006 s!2326)))))

(assert (= (and d!1784813 c!993011) b!5649336))

(assert (= (and d!1784813 (not c!993011)) b!5649337))

(assert (= (and b!5649337 c!993013) b!5649333))

(assert (= (and b!5649337 (not c!993013)) b!5649332))

(assert (= (and b!5649332 c!993012) b!5649334))

(assert (= (and b!5649332 (not c!993012)) b!5649338))

(assert (= (and b!5649338 c!993014) b!5649335))

(assert (= (and b!5649338 (not c!993014)) b!5649330))

(assert (= (and b!5649330 c!993010) b!5649339))

(assert (= (and b!5649330 (not c!993010)) b!5649331))

(assert (= (or b!5649339 b!5649331) bm!427379))

(assert (= (or b!5649335 bm!427379) bm!427377))

(assert (= (or b!5649334 b!5649339) bm!427380))

(assert (= (or b!5649334 bm!427377) bm!427378))

(assert (=> b!5649330 m!6616098))

(declare-fun m!6616804 () Bool)

(assert (=> d!1784813 m!6616804))

(assert (=> d!1784813 m!6613800))

(assert (=> bm!427378 m!6614390))

(declare-fun m!6616806 () Bool)

(assert (=> bm!427378 m!6616806))

(assert (=> bm!427380 m!6614390))

(declare-fun m!6616808 () Bool)

(assert (=> bm!427380 m!6616808))

(assert (=> b!5647126 d!1784813))

(assert (=> b!5647126 d!1784387))

(assert (=> b!5647126 d!1784469))

(declare-fun b!5649340 () Bool)

(declare-fun res!2389557 () Bool)

(declare-fun e!3480047 () Bool)

(assert (=> b!5649340 (=> (not res!2389557) (not e!3480047))))

(declare-fun call!427386 () Bool)

(assert (=> b!5649340 (= res!2389557 (not call!427386))))

(declare-fun b!5649341 () Bool)

(declare-fun e!3480048 () Bool)

(assert (=> b!5649341 (= e!3480048 (nullable!5663 (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5649342 () Bool)

(declare-fun e!3480050 () Bool)

(declare-fun e!3480052 () Bool)

(assert (=> b!5649342 (= e!3480050 e!3480052)))

(declare-fun res!2389558 () Bool)

(assert (=> b!5649342 (=> (not res!2389558) (not e!3480052))))

(declare-fun lt!2264571 () Bool)

(assert (=> b!5649342 (= res!2389558 (not lt!2264571))))

(declare-fun b!5649343 () Bool)

(declare-fun e!3480049 () Bool)

(assert (=> b!5649343 (= e!3480049 (not lt!2264571))))

(declare-fun b!5649344 () Bool)

(declare-fun res!2389555 () Bool)

(declare-fun e!3480051 () Bool)

(assert (=> b!5649344 (=> res!2389555 e!3480051)))

(assert (=> b!5649344 (= res!2389555 (not (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264373))))))))

(declare-fun b!5649346 () Bool)

(assert (=> b!5649346 (= e!3480052 e!3480051)))

(declare-fun res!2389554 () Bool)

(assert (=> b!5649346 (=> res!2389554 e!3480051)))

(assert (=> b!5649346 (= res!2389554 call!427386)))

(declare-fun b!5649347 () Bool)

(assert (=> b!5649347 (= e!3480047 (= (head!12006 (_1!36031 (get!21730 lt!2264373))) (c!992159 (regTwo!31774 (regOne!31774 r!7292)))))))

(declare-fun b!5649348 () Bool)

(declare-fun res!2389556 () Bool)

(assert (=> b!5649348 (=> res!2389556 e!3480050)))

(assert (=> b!5649348 (= res!2389556 (not ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31774 r!7292)))))))

(assert (=> b!5649348 (= e!3480049 e!3480050)))

(declare-fun b!5649349 () Bool)

(declare-fun e!3480053 () Bool)

(assert (=> b!5649349 (= e!3480053 (= lt!2264571 call!427386))))

(declare-fun bm!427381 () Bool)

(assert (=> bm!427381 (= call!427386 (isEmpty!34917 (_1!36031 (get!21730 lt!2264373))))))

(declare-fun d!1784815 () Bool)

(assert (=> d!1784815 e!3480053))

(declare-fun c!993015 () Bool)

(assert (=> d!1784815 (= c!993015 ((_ is EmptyExpr!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(assert (=> d!1784815 (= lt!2264571 e!3480048)))

(declare-fun c!993016 () Bool)

(assert (=> d!1784815 (= c!993016 (isEmpty!34917 (_1!36031 (get!21730 lt!2264373))))))

(assert (=> d!1784815 (validRegex!7367 (regTwo!31774 (regOne!31774 r!7292)))))

(assert (=> d!1784815 (= (matchR!7816 (regTwo!31774 (regOne!31774 r!7292)) (_1!36031 (get!21730 lt!2264373))) lt!2264571)))

(declare-fun b!5649345 () Bool)

(assert (=> b!5649345 (= e!3480048 (matchR!7816 (derivativeStep!4467 (regTwo!31774 (regOne!31774 r!7292)) (head!12006 (_1!36031 (get!21730 lt!2264373)))) (tail!11101 (_1!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5649350 () Bool)

(declare-fun res!2389551 () Bool)

(assert (=> b!5649350 (=> res!2389551 e!3480050)))

(assert (=> b!5649350 (= res!2389551 e!3480047)))

(declare-fun res!2389553 () Bool)

(assert (=> b!5649350 (=> (not res!2389553) (not e!3480047))))

(assert (=> b!5649350 (= res!2389553 lt!2264571)))

(declare-fun b!5649351 () Bool)

(declare-fun res!2389552 () Bool)

(assert (=> b!5649351 (=> (not res!2389552) (not e!3480047))))

(assert (=> b!5649351 (= res!2389552 (isEmpty!34917 (tail!11101 (_1!36031 (get!21730 lt!2264373)))))))

(declare-fun b!5649352 () Bool)

(assert (=> b!5649352 (= e!3480053 e!3480049)))

(declare-fun c!993017 () Bool)

(assert (=> b!5649352 (= c!993017 ((_ is EmptyLang!15631) (regTwo!31774 (regOne!31774 r!7292))))))

(declare-fun b!5649353 () Bool)

(assert (=> b!5649353 (= e!3480051 (not (= (head!12006 (_1!36031 (get!21730 lt!2264373))) (c!992159 (regTwo!31774 (regOne!31774 r!7292))))))))

(assert (= (and d!1784815 c!993016) b!5649341))

(assert (= (and d!1784815 (not c!993016)) b!5649345))

(assert (= (and d!1784815 c!993015) b!5649349))

(assert (= (and d!1784815 (not c!993015)) b!5649352))

(assert (= (and b!5649352 c!993017) b!5649343))

(assert (= (and b!5649352 (not c!993017)) b!5649348))

(assert (= (and b!5649348 (not res!2389556)) b!5649350))

(assert (= (and b!5649350 res!2389553) b!5649340))

(assert (= (and b!5649340 res!2389557) b!5649351))

(assert (= (and b!5649351 res!2389552) b!5649347))

(assert (= (and b!5649350 (not res!2389551)) b!5649342))

(assert (= (and b!5649342 res!2389558) b!5649346))

(assert (= (and b!5649346 (not res!2389554)) b!5649344))

(assert (= (and b!5649344 (not res!2389555)) b!5649353))

(assert (= (or b!5649349 b!5649340 b!5649346) bm!427381))

(declare-fun m!6616810 () Bool)

(assert (=> d!1784815 m!6616810))

(assert (=> d!1784815 m!6614560))

(declare-fun m!6616812 () Bool)

(assert (=> b!5649353 m!6616812))

(assert (=> b!5649347 m!6616812))

(assert (=> bm!427381 m!6616810))

(declare-fun m!6616814 () Bool)

(assert (=> b!5649351 m!6616814))

(assert (=> b!5649351 m!6616814))

(declare-fun m!6616816 () Bool)

(assert (=> b!5649351 m!6616816))

(assert (=> b!5649344 m!6616814))

(assert (=> b!5649344 m!6616814))

(assert (=> b!5649344 m!6616816))

(assert (=> b!5649345 m!6616812))

(assert (=> b!5649345 m!6616812))

(declare-fun m!6616818 () Bool)

(assert (=> b!5649345 m!6616818))

(assert (=> b!5649345 m!6616814))

(assert (=> b!5649345 m!6616818))

(assert (=> b!5649345 m!6616814))

(declare-fun m!6616820 () Bool)

(assert (=> b!5649345 m!6616820))

(assert (=> b!5649341 m!6615826))

(assert (=> b!5647315 d!1784815))

(assert (=> b!5647315 d!1784515))

(declare-fun b!5649354 () Bool)

(declare-fun res!2389565 () Bool)

(declare-fun e!3480054 () Bool)

(assert (=> b!5649354 (=> (not res!2389565) (not e!3480054))))

(declare-fun call!427387 () Bool)

(assert (=> b!5649354 (= res!2389565 (not call!427387))))

(declare-fun b!5649355 () Bool)

(declare-fun e!3480055 () Bool)

(assert (=> b!5649355 (= e!3480055 (nullable!5663 lt!2264217))))

(declare-fun b!5649356 () Bool)

(declare-fun e!3480057 () Bool)

(declare-fun e!3480059 () Bool)

(assert (=> b!5649356 (= e!3480057 e!3480059)))

(declare-fun res!2389566 () Bool)

(assert (=> b!5649356 (=> (not res!2389566) (not e!3480059))))

(declare-fun lt!2264572 () Bool)

(assert (=> b!5649356 (= res!2389566 (not lt!2264572))))

(declare-fun b!5649357 () Bool)

(declare-fun e!3480056 () Bool)

(assert (=> b!5649357 (= e!3480056 (not lt!2264572))))

(declare-fun b!5649358 () Bool)

(declare-fun res!2389563 () Bool)

(declare-fun e!3480058 () Bool)

(assert (=> b!5649358 (=> res!2389563 e!3480058)))

(assert (=> b!5649358 (= res!2389563 (not (isEmpty!34917 (tail!11101 s!2326))))))

(declare-fun b!5649360 () Bool)

(assert (=> b!5649360 (= e!3480059 e!3480058)))

(declare-fun res!2389562 () Bool)

(assert (=> b!5649360 (=> res!2389562 e!3480058)))

(assert (=> b!5649360 (= res!2389562 call!427387)))

(declare-fun b!5649361 () Bool)

(assert (=> b!5649361 (= e!3480054 (= (head!12006 s!2326) (c!992159 lt!2264217)))))

(declare-fun b!5649362 () Bool)

(declare-fun res!2389564 () Bool)

(assert (=> b!5649362 (=> res!2389564 e!3480057)))

(assert (=> b!5649362 (= res!2389564 (not ((_ is ElementMatch!15631) lt!2264217)))))

(assert (=> b!5649362 (= e!3480056 e!3480057)))

(declare-fun b!5649363 () Bool)

(declare-fun e!3480060 () Bool)

(assert (=> b!5649363 (= e!3480060 (= lt!2264572 call!427387))))

(declare-fun bm!427382 () Bool)

(assert (=> bm!427382 (= call!427387 (isEmpty!34917 s!2326))))

(declare-fun d!1784817 () Bool)

(assert (=> d!1784817 e!3480060))

(declare-fun c!993018 () Bool)

(assert (=> d!1784817 (= c!993018 ((_ is EmptyExpr!15631) lt!2264217))))

(assert (=> d!1784817 (= lt!2264572 e!3480055)))

(declare-fun c!993019 () Bool)

(assert (=> d!1784817 (= c!993019 (isEmpty!34917 s!2326))))

(assert (=> d!1784817 (validRegex!7367 lt!2264217)))

(assert (=> d!1784817 (= (matchR!7816 lt!2264217 s!2326) lt!2264572)))

(declare-fun b!5649359 () Bool)

(assert (=> b!5649359 (= e!3480055 (matchR!7816 (derivativeStep!4467 lt!2264217 (head!12006 s!2326)) (tail!11101 s!2326)))))

(declare-fun b!5649364 () Bool)

(declare-fun res!2389559 () Bool)

(assert (=> b!5649364 (=> res!2389559 e!3480057)))

(assert (=> b!5649364 (= res!2389559 e!3480054)))

(declare-fun res!2389561 () Bool)

(assert (=> b!5649364 (=> (not res!2389561) (not e!3480054))))

(assert (=> b!5649364 (= res!2389561 lt!2264572)))

(declare-fun b!5649365 () Bool)

(declare-fun res!2389560 () Bool)

(assert (=> b!5649365 (=> (not res!2389560) (not e!3480054))))

(assert (=> b!5649365 (= res!2389560 (isEmpty!34917 (tail!11101 s!2326)))))

(declare-fun b!5649366 () Bool)

(assert (=> b!5649366 (= e!3480060 e!3480056)))

(declare-fun c!993020 () Bool)

(assert (=> b!5649366 (= c!993020 ((_ is EmptyLang!15631) lt!2264217))))

(declare-fun b!5649367 () Bool)

(assert (=> b!5649367 (= e!3480058 (not (= (head!12006 s!2326) (c!992159 lt!2264217))))))

(assert (= (and d!1784817 c!993019) b!5649355))

(assert (= (and d!1784817 (not c!993019)) b!5649359))

(assert (= (and d!1784817 c!993018) b!5649363))

(assert (= (and d!1784817 (not c!993018)) b!5649366))

(assert (= (and b!5649366 c!993020) b!5649357))

(assert (= (and b!5649366 (not c!993020)) b!5649362))

(assert (= (and b!5649362 (not res!2389564)) b!5649364))

(assert (= (and b!5649364 res!2389561) b!5649354))

(assert (= (and b!5649354 res!2389565) b!5649365))

(assert (= (and b!5649365 res!2389560) b!5649361))

(assert (= (and b!5649364 (not res!2389559)) b!5649356))

(assert (= (and b!5649356 res!2389566) b!5649360))

(assert (= (and b!5649360 (not res!2389562)) b!5649358))

(assert (= (and b!5649358 (not res!2389563)) b!5649367))

(assert (= (or b!5649363 b!5649354 b!5649360) bm!427382))

(assert (=> d!1784817 m!6614382))

(assert (=> d!1784817 m!6616180))

(assert (=> b!5649367 m!6614390))

(assert (=> b!5649361 m!6614390))

(assert (=> bm!427382 m!6614382))

(assert (=> b!5649365 m!6614392))

(assert (=> b!5649365 m!6614392))

(assert (=> b!5649365 m!6614394))

(assert (=> b!5649358 m!6614392))

(assert (=> b!5649358 m!6614392))

(assert (=> b!5649358 m!6614394))

(assert (=> b!5649359 m!6614390))

(assert (=> b!5649359 m!6614390))

(declare-fun m!6616822 () Bool)

(assert (=> b!5649359 m!6616822))

(assert (=> b!5649359 m!6614392))

(assert (=> b!5649359 m!6616822))

(assert (=> b!5649359 m!6614392))

(declare-fun m!6616824 () Bool)

(assert (=> b!5649359 m!6616824))

(assert (=> b!5649355 m!6616192))

(assert (=> b!5647307 d!1784817))

(declare-fun d!1784819 () Bool)

(declare-fun c!993021 () Bool)

(assert (=> d!1784819 (= c!993021 (isEmpty!34917 (tail!11101 (t!376491 s!2326))))))

(declare-fun e!3480061 () Bool)

(assert (=> d!1784819 (= (matchZipper!1769 (derivationStepZipper!1718 lt!2264228 (head!12006 (t!376491 s!2326))) (tail!11101 (t!376491 s!2326))) e!3480061)))

(declare-fun b!5649368 () Bool)

(assert (=> b!5649368 (= e!3480061 (nullableZipper!1613 (derivationStepZipper!1718 lt!2264228 (head!12006 (t!376491 s!2326)))))))

(declare-fun b!5649369 () Bool)

(assert (=> b!5649369 (= e!3480061 (matchZipper!1769 (derivationStepZipper!1718 (derivationStepZipper!1718 lt!2264228 (head!12006 (t!376491 s!2326))) (head!12006 (tail!11101 (t!376491 s!2326)))) (tail!11101 (tail!11101 (t!376491 s!2326)))))))

(assert (= (and d!1784819 c!993021) b!5649368))

(assert (= (and d!1784819 (not c!993021)) b!5649369))

(assert (=> d!1784819 m!6614310))

(assert (=> d!1784819 m!6615792))

(assert (=> b!5649368 m!6614450))

(declare-fun m!6616826 () Bool)

(assert (=> b!5649368 m!6616826))

(assert (=> b!5649369 m!6614310))

(assert (=> b!5649369 m!6615796))

(assert (=> b!5649369 m!6614450))

(assert (=> b!5649369 m!6615796))

(declare-fun m!6616828 () Bool)

(assert (=> b!5649369 m!6616828))

(assert (=> b!5649369 m!6614310))

(assert (=> b!5649369 m!6615800))

(assert (=> b!5649369 m!6616828))

(assert (=> b!5649369 m!6615800))

(declare-fun m!6616830 () Bool)

(assert (=> b!5649369 m!6616830))

(assert (=> b!5647192 d!1784819))

(declare-fun bs!1314382 () Bool)

(declare-fun d!1784821 () Bool)

(assert (= bs!1314382 (and d!1784821 d!1784699)))

(declare-fun lambda!303703 () Int)

(assert (=> bs!1314382 (= lambda!303703 lambda!303688)))

(declare-fun bs!1314383 () Bool)

(assert (= bs!1314383 (and d!1784821 d!1784737)))

(assert (=> bs!1314383 (= lambda!303703 lambda!303693)))

(declare-fun bs!1314384 () Bool)

(assert (= bs!1314384 (and d!1784821 b!5646443)))

(assert (=> bs!1314384 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303703 lambda!303425))))

(declare-fun bs!1314385 () Bool)

(assert (= bs!1314385 (and d!1784821 d!1784621)))

(assert (=> bs!1314385 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303703 lambda!303676))))

(declare-fun bs!1314386 () Bool)

(assert (= bs!1314386 (and d!1784821 d!1784731)))

(assert (=> bs!1314386 (= lambda!303703 lambda!303692)))

(declare-fun bs!1314387 () Bool)

(assert (= bs!1314387 (and d!1784821 d!1784467)))

(assert (=> bs!1314387 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303703 lambda!303654))))

(declare-fun bs!1314388 () Bool)

(assert (= bs!1314388 (and d!1784821 d!1784575)))

(assert (=> bs!1314388 (= lambda!303703 lambda!303666)))

(declare-fun bs!1314389 () Bool)

(assert (= bs!1314389 (and d!1784821 d!1783813)))

(assert (=> bs!1314389 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303703 lambda!303543))))

(declare-fun bs!1314390 () Bool)

(assert (= bs!1314390 (and d!1784821 d!1784777)))

(assert (=> bs!1314390 (= (= (head!12006 (t!376491 s!2326)) (head!12006 s!2326)) (= lambda!303703 lambda!303698))))

(declare-fun bs!1314391 () Bool)

(assert (= bs!1314391 (and d!1784821 d!1783735)))

(assert (=> bs!1314391 (= (= (head!12006 (t!376491 s!2326)) (h!69517 s!2326)) (= lambda!303703 lambda!303508))))

(declare-fun bs!1314392 () Bool)

(assert (= bs!1314392 (and d!1784821 d!1784797)))

(assert (=> bs!1314392 (= lambda!303703 lambda!303701)))

(declare-fun bs!1314393 () Bool)

(assert (= bs!1314393 (and d!1784821 d!1784611)))

(assert (=> bs!1314393 (= lambda!303703 lambda!303673)))

(declare-fun bs!1314394 () Bool)

(assert (= bs!1314394 (and d!1784821 d!1784791)))

(assert (=> bs!1314394 (= lambda!303703 lambda!303700)))

(declare-fun bs!1314395 () Bool)

(assert (= bs!1314395 (and d!1784821 d!1784655)))

(assert (=> bs!1314395 (= lambda!303703 lambda!303682)))

(declare-fun bs!1314396 () Bool)

(assert (= bs!1314396 (and d!1784821 d!1784323)))

(assert (=> bs!1314396 (= lambda!303703 lambda!303624)))

(assert (=> d!1784821 true))

(assert (=> d!1784821 (= (derivationStepZipper!1718 lt!2264228 (head!12006 (t!376491 s!2326))) (flatMap!1244 lt!2264228 lambda!303703))))

(declare-fun bs!1314397 () Bool)

(assert (= bs!1314397 d!1784821))

(declare-fun m!6616832 () Bool)

(assert (=> bs!1314397 m!6616832))

(assert (=> b!5647192 d!1784821))

(assert (=> b!5647192 d!1784325))

(assert (=> b!5647192 d!1784327))

(assert (=> b!5647328 d!1783747))

(assert (=> b!5647259 d!1783743))

(declare-fun d!1784823 () Bool)

(assert (=> d!1784823 (= (isEmptyLang!1182 lt!2264392) ((_ is EmptyLang!15631) lt!2264392))))

(assert (=> b!5647399 d!1784823))

(declare-fun b!5649373 () Bool)

(declare-fun e!3480062 () Bool)

(declare-fun tp!1565347 () Bool)

(declare-fun tp!1565348 () Bool)

(assert (=> b!5649373 (= e!3480062 (and tp!1565347 tp!1565348))))

(declare-fun b!5649370 () Bool)

(assert (=> b!5649370 (= e!3480062 tp_is_empty!40515)))

(assert (=> b!5647502 (= tp!1565151 e!3480062)))

(declare-fun b!5649371 () Bool)

(declare-fun tp!1565350 () Bool)

(declare-fun tp!1565346 () Bool)

(assert (=> b!5649371 (= e!3480062 (and tp!1565350 tp!1565346))))

(declare-fun b!5649372 () Bool)

(declare-fun tp!1565349 () Bool)

(assert (=> b!5649372 (= e!3480062 tp!1565349)))

(assert (= (and b!5647502 ((_ is ElementMatch!15631) (regOne!31775 (regOne!31774 r!7292)))) b!5649370))

(assert (= (and b!5647502 ((_ is Concat!24476) (regOne!31775 (regOne!31774 r!7292)))) b!5649371))

(assert (= (and b!5647502 ((_ is Star!15631) (regOne!31775 (regOne!31774 r!7292)))) b!5649372))

(assert (= (and b!5647502 ((_ is Union!15631) (regOne!31775 (regOne!31774 r!7292)))) b!5649373))

(declare-fun b!5649377 () Bool)

(declare-fun e!3480063 () Bool)

(declare-fun tp!1565352 () Bool)

(declare-fun tp!1565353 () Bool)

(assert (=> b!5649377 (= e!3480063 (and tp!1565352 tp!1565353))))

(declare-fun b!5649374 () Bool)

(assert (=> b!5649374 (= e!3480063 tp_is_empty!40515)))

(assert (=> b!5647502 (= tp!1565152 e!3480063)))

(declare-fun b!5649375 () Bool)

(declare-fun tp!1565355 () Bool)

(declare-fun tp!1565351 () Bool)

(assert (=> b!5649375 (= e!3480063 (and tp!1565355 tp!1565351))))

(declare-fun b!5649376 () Bool)

(declare-fun tp!1565354 () Bool)

(assert (=> b!5649376 (= e!3480063 tp!1565354)))

(assert (= (and b!5647502 ((_ is ElementMatch!15631) (regTwo!31775 (regOne!31774 r!7292)))) b!5649374))

(assert (= (and b!5647502 ((_ is Concat!24476) (regTwo!31775 (regOne!31774 r!7292)))) b!5649375))

(assert (= (and b!5647502 ((_ is Star!15631) (regTwo!31775 (regOne!31774 r!7292)))) b!5649376))

(assert (= (and b!5647502 ((_ is Union!15631) (regTwo!31775 (regOne!31774 r!7292)))) b!5649377))

(declare-fun b!5649381 () Bool)

(declare-fun e!3480064 () Bool)

(declare-fun tp!1565357 () Bool)

(declare-fun tp!1565358 () Bool)

(assert (=> b!5649381 (= e!3480064 (and tp!1565357 tp!1565358))))

(declare-fun b!5649378 () Bool)

(assert (=> b!5649378 (= e!3480064 tp_is_empty!40515)))

(assert (=> b!5647473 (= tp!1565127 e!3480064)))

(declare-fun b!5649379 () Bool)

(declare-fun tp!1565360 () Bool)

(declare-fun tp!1565356 () Bool)

(assert (=> b!5649379 (= e!3480064 (and tp!1565360 tp!1565356))))

(declare-fun b!5649380 () Bool)

(declare-fun tp!1565359 () Bool)

(assert (=> b!5649380 (= e!3480064 tp!1565359)))

(assert (= (and b!5647473 ((_ is ElementMatch!15631) (regOne!31774 (regTwo!31775 r!7292)))) b!5649378))

(assert (= (and b!5647473 ((_ is Concat!24476) (regOne!31774 (regTwo!31775 r!7292)))) b!5649379))

(assert (= (and b!5647473 ((_ is Star!15631) (regOne!31774 (regTwo!31775 r!7292)))) b!5649380))

(assert (= (and b!5647473 ((_ is Union!15631) (regOne!31774 (regTwo!31775 r!7292)))) b!5649381))

(declare-fun b!5649385 () Bool)

(declare-fun e!3480065 () Bool)

(declare-fun tp!1565362 () Bool)

(declare-fun tp!1565363 () Bool)

(assert (=> b!5649385 (= e!3480065 (and tp!1565362 tp!1565363))))

(declare-fun b!5649382 () Bool)

(assert (=> b!5649382 (= e!3480065 tp_is_empty!40515)))

(assert (=> b!5647473 (= tp!1565123 e!3480065)))

(declare-fun b!5649383 () Bool)

(declare-fun tp!1565365 () Bool)

(declare-fun tp!1565361 () Bool)

(assert (=> b!5649383 (= e!3480065 (and tp!1565365 tp!1565361))))

(declare-fun b!5649384 () Bool)

(declare-fun tp!1565364 () Bool)

(assert (=> b!5649384 (= e!3480065 tp!1565364)))

(assert (= (and b!5647473 ((_ is ElementMatch!15631) (regTwo!31774 (regTwo!31775 r!7292)))) b!5649382))

(assert (= (and b!5647473 ((_ is Concat!24476) (regTwo!31774 (regTwo!31775 r!7292)))) b!5649383))

(assert (= (and b!5647473 ((_ is Star!15631) (regTwo!31774 (regTwo!31775 r!7292)))) b!5649384))

(assert (= (and b!5647473 ((_ is Union!15631) (regTwo!31774 (regTwo!31775 r!7292)))) b!5649385))

(declare-fun b!5649389 () Bool)

(declare-fun e!3480066 () Bool)

(declare-fun tp!1565367 () Bool)

(declare-fun tp!1565368 () Bool)

(assert (=> b!5649389 (= e!3480066 (and tp!1565367 tp!1565368))))

(declare-fun b!5649386 () Bool)

(assert (=> b!5649386 (= e!3480066 tp_is_empty!40515)))

(assert (=> b!5647474 (= tp!1565126 e!3480066)))

(declare-fun b!5649387 () Bool)

(declare-fun tp!1565370 () Bool)

(declare-fun tp!1565366 () Bool)

(assert (=> b!5649387 (= e!3480066 (and tp!1565370 tp!1565366))))

(declare-fun b!5649388 () Bool)

(declare-fun tp!1565369 () Bool)

(assert (=> b!5649388 (= e!3480066 tp!1565369)))

(assert (= (and b!5647474 ((_ is ElementMatch!15631) (reg!15960 (regTwo!31775 r!7292)))) b!5649386))

(assert (= (and b!5647474 ((_ is Concat!24476) (reg!15960 (regTwo!31775 r!7292)))) b!5649387))

(assert (= (and b!5647474 ((_ is Star!15631) (reg!15960 (regTwo!31775 r!7292)))) b!5649388))

(assert (= (and b!5647474 ((_ is Union!15631) (reg!15960 (regTwo!31775 r!7292)))) b!5649389))

(declare-fun b!5649393 () Bool)

(declare-fun e!3480067 () Bool)

(declare-fun tp!1565372 () Bool)

(declare-fun tp!1565373 () Bool)

(assert (=> b!5649393 (= e!3480067 (and tp!1565372 tp!1565373))))

(declare-fun b!5649390 () Bool)

(assert (=> b!5649390 (= e!3480067 tp_is_empty!40515)))

(assert (=> b!5647494 (= tp!1565143 e!3480067)))

(declare-fun b!5649391 () Bool)

(declare-fun tp!1565375 () Bool)

(declare-fun tp!1565371 () Bool)

(assert (=> b!5649391 (= e!3480067 (and tp!1565375 tp!1565371))))

(declare-fun b!5649392 () Bool)

(declare-fun tp!1565374 () Bool)

(assert (=> b!5649392 (= e!3480067 tp!1565374)))

(assert (= (and b!5647494 ((_ is ElementMatch!15631) (h!69516 (exprs!5515 setElem!37712)))) b!5649390))

(assert (= (and b!5647494 ((_ is Concat!24476) (h!69516 (exprs!5515 setElem!37712)))) b!5649391))

(assert (= (and b!5647494 ((_ is Star!15631) (h!69516 (exprs!5515 setElem!37712)))) b!5649392))

(assert (= (and b!5647494 ((_ is Union!15631) (h!69516 (exprs!5515 setElem!37712)))) b!5649393))

(declare-fun b!5649394 () Bool)

(declare-fun e!3480068 () Bool)

(declare-fun tp!1565376 () Bool)

(declare-fun tp!1565377 () Bool)

(assert (=> b!5649394 (= e!3480068 (and tp!1565376 tp!1565377))))

(assert (=> b!5647494 (= tp!1565144 e!3480068)))

(assert (= (and b!5647494 ((_ is Cons!63068) (t!376490 (exprs!5515 setElem!37712)))) b!5649394))

(declare-fun condSetEmpty!37730 () Bool)

(assert (=> setNonEmpty!37718 (= condSetEmpty!37730 (= setRest!37718 ((as const (Array Context!10030 Bool)) false)))))

(declare-fun setRes!37730 () Bool)

(assert (=> setNonEmpty!37718 (= tp!1565164 setRes!37730)))

(declare-fun setIsEmpty!37730 () Bool)

(assert (=> setIsEmpty!37730 setRes!37730))

(declare-fun e!3480069 () Bool)

(declare-fun setNonEmpty!37730 () Bool)

(declare-fun tp!1565378 () Bool)

(declare-fun setElem!37730 () Context!10030)

(assert (=> setNonEmpty!37730 (= setRes!37730 (and tp!1565378 (inv!82324 setElem!37730) e!3480069))))

(declare-fun setRest!37730 () (InoxSet Context!10030))

(assert (=> setNonEmpty!37730 (= setRest!37718 ((_ map or) (store ((as const (Array Context!10030 Bool)) false) setElem!37730 true) setRest!37730))))

(declare-fun b!5649395 () Bool)

(declare-fun tp!1565379 () Bool)

(assert (=> b!5649395 (= e!3480069 tp!1565379)))

(assert (= (and setNonEmpty!37718 condSetEmpty!37730) setIsEmpty!37730))

(assert (= (and setNonEmpty!37718 (not condSetEmpty!37730)) setNonEmpty!37730))

(assert (= setNonEmpty!37730 b!5649395))

(declare-fun m!6616834 () Bool)

(assert (=> setNonEmpty!37730 m!6616834))

(declare-fun b!5649399 () Bool)

(declare-fun e!3480070 () Bool)

(declare-fun tp!1565381 () Bool)

(declare-fun tp!1565382 () Bool)

(assert (=> b!5649399 (= e!3480070 (and tp!1565381 tp!1565382))))

(declare-fun b!5649396 () Bool)

(assert (=> b!5649396 (= e!3480070 tp_is_empty!40515)))

(assert (=> b!5647475 (= tp!1565124 e!3480070)))

(declare-fun b!5649397 () Bool)

(declare-fun tp!1565384 () Bool)

(declare-fun tp!1565380 () Bool)

(assert (=> b!5649397 (= e!3480070 (and tp!1565384 tp!1565380))))

(declare-fun b!5649398 () Bool)

(declare-fun tp!1565383 () Bool)

(assert (=> b!5649398 (= e!3480070 tp!1565383)))

(assert (= (and b!5647475 ((_ is ElementMatch!15631) (regOne!31775 (regTwo!31775 r!7292)))) b!5649396))

(assert (= (and b!5647475 ((_ is Concat!24476) (regOne!31775 (regTwo!31775 r!7292)))) b!5649397))

(assert (= (and b!5647475 ((_ is Star!15631) (regOne!31775 (regTwo!31775 r!7292)))) b!5649398))

(assert (= (and b!5647475 ((_ is Union!15631) (regOne!31775 (regTwo!31775 r!7292)))) b!5649399))

(declare-fun b!5649403 () Bool)

(declare-fun e!3480071 () Bool)

(declare-fun tp!1565386 () Bool)

(declare-fun tp!1565387 () Bool)

(assert (=> b!5649403 (= e!3480071 (and tp!1565386 tp!1565387))))

(declare-fun b!5649400 () Bool)

(assert (=> b!5649400 (= e!3480071 tp_is_empty!40515)))

(assert (=> b!5647475 (= tp!1565125 e!3480071)))

(declare-fun b!5649401 () Bool)

(declare-fun tp!1565389 () Bool)

(declare-fun tp!1565385 () Bool)

(assert (=> b!5649401 (= e!3480071 (and tp!1565389 tp!1565385))))

(declare-fun b!5649402 () Bool)

(declare-fun tp!1565388 () Bool)

(assert (=> b!5649402 (= e!3480071 tp!1565388)))

(assert (= (and b!5647475 ((_ is ElementMatch!15631) (regTwo!31775 (regTwo!31775 r!7292)))) b!5649400))

(assert (= (and b!5647475 ((_ is Concat!24476) (regTwo!31775 (regTwo!31775 r!7292)))) b!5649401))

(assert (= (and b!5647475 ((_ is Star!15631) (regTwo!31775 (regTwo!31775 r!7292)))) b!5649402))

(assert (= (and b!5647475 ((_ is Union!15631) (regTwo!31775 (regTwo!31775 r!7292)))) b!5649403))

(declare-fun b!5649404 () Bool)

(declare-fun e!3480072 () Bool)

(declare-fun tp!1565390 () Bool)

(declare-fun tp!1565391 () Bool)

(assert (=> b!5649404 (= e!3480072 (and tp!1565390 tp!1565391))))

(assert (=> b!5647511 (= tp!1565165 e!3480072)))

(assert (= (and b!5647511 ((_ is Cons!63068) (exprs!5515 setElem!37718))) b!5649404))

(declare-fun b!5649408 () Bool)

(declare-fun e!3480073 () Bool)

(declare-fun tp!1565393 () Bool)

(declare-fun tp!1565394 () Bool)

(assert (=> b!5649408 (= e!3480073 (and tp!1565393 tp!1565394))))

(declare-fun b!5649405 () Bool)

(assert (=> b!5649405 (= e!3480073 tp_is_empty!40515)))

(assert (=> b!5647488 (= tp!1565138 e!3480073)))

(declare-fun b!5649406 () Bool)

(declare-fun tp!1565396 () Bool)

(declare-fun tp!1565392 () Bool)

(assert (=> b!5649406 (= e!3480073 (and tp!1565396 tp!1565392))))

(declare-fun b!5649407 () Bool)

(declare-fun tp!1565395 () Bool)

(assert (=> b!5649407 (= e!3480073 tp!1565395)))

(assert (= (and b!5647488 ((_ is ElementMatch!15631) (h!69516 (exprs!5515 (h!69518 zl!343))))) b!5649405))

(assert (= (and b!5647488 ((_ is Concat!24476) (h!69516 (exprs!5515 (h!69518 zl!343))))) b!5649406))

(assert (= (and b!5647488 ((_ is Star!15631) (h!69516 (exprs!5515 (h!69518 zl!343))))) b!5649407))

(assert (= (and b!5647488 ((_ is Union!15631) (h!69516 (exprs!5515 (h!69518 zl!343))))) b!5649408))

(declare-fun b!5649409 () Bool)

(declare-fun e!3480074 () Bool)

(declare-fun tp!1565397 () Bool)

(declare-fun tp!1565398 () Bool)

(assert (=> b!5649409 (= e!3480074 (and tp!1565397 tp!1565398))))

(assert (=> b!5647488 (= tp!1565139 e!3480074)))

(assert (= (and b!5647488 ((_ is Cons!63068) (t!376490 (exprs!5515 (h!69518 zl!343))))) b!5649409))

(declare-fun b!5649411 () Bool)

(declare-fun e!3480076 () Bool)

(declare-fun tp!1565399 () Bool)

(assert (=> b!5649411 (= e!3480076 tp!1565399)))

(declare-fun e!3480075 () Bool)

(declare-fun tp!1565400 () Bool)

(declare-fun b!5649410 () Bool)

(assert (=> b!5649410 (= e!3480075 (and (inv!82324 (h!69518 (t!376492 (t!376492 zl!343)))) e!3480076 tp!1565400))))

(assert (=> b!5647482 (= tp!1565133 e!3480075)))

(assert (= b!5649410 b!5649411))

(assert (= (and b!5647482 ((_ is Cons!63070) (t!376492 (t!376492 zl!343)))) b!5649410))

(declare-fun m!6616836 () Bool)

(assert (=> b!5649410 m!6616836))

(declare-fun b!5649412 () Bool)

(declare-fun e!3480077 () Bool)

(declare-fun tp!1565401 () Bool)

(assert (=> b!5649412 (= e!3480077 (and tp_is_empty!40515 tp!1565401))))

(assert (=> b!5647493 (= tp!1565142 e!3480077)))

(assert (= (and b!5647493 ((_ is Cons!63069) (t!376491 (t!376491 s!2326)))) b!5649412))

(declare-fun b!5649416 () Bool)

(declare-fun e!3480078 () Bool)

(declare-fun tp!1565403 () Bool)

(declare-fun tp!1565404 () Bool)

(assert (=> b!5649416 (= e!3480078 (and tp!1565403 tp!1565404))))

(declare-fun b!5649413 () Bool)

(assert (=> b!5649413 (= e!3480078 tp_is_empty!40515)))

(assert (=> b!5647500 (= tp!1565154 e!3480078)))

(declare-fun b!5649414 () Bool)

(declare-fun tp!1565406 () Bool)

(declare-fun tp!1565402 () Bool)

(assert (=> b!5649414 (= e!3480078 (and tp!1565406 tp!1565402))))

(declare-fun b!5649415 () Bool)

(declare-fun tp!1565405 () Bool)

(assert (=> b!5649415 (= e!3480078 tp!1565405)))

(assert (= (and b!5647500 ((_ is ElementMatch!15631) (regOne!31774 (regOne!31774 r!7292)))) b!5649413))

(assert (= (and b!5647500 ((_ is Concat!24476) (regOne!31774 (regOne!31774 r!7292)))) b!5649414))

(assert (= (and b!5647500 ((_ is Star!15631) (regOne!31774 (regOne!31774 r!7292)))) b!5649415))

(assert (= (and b!5647500 ((_ is Union!15631) (regOne!31774 (regOne!31774 r!7292)))) b!5649416))

(declare-fun b!5649420 () Bool)

(declare-fun e!3480079 () Bool)

(declare-fun tp!1565408 () Bool)

(declare-fun tp!1565409 () Bool)

(assert (=> b!5649420 (= e!3480079 (and tp!1565408 tp!1565409))))

(declare-fun b!5649417 () Bool)

(assert (=> b!5649417 (= e!3480079 tp_is_empty!40515)))

(assert (=> b!5647500 (= tp!1565150 e!3480079)))

(declare-fun b!5649418 () Bool)

(declare-fun tp!1565411 () Bool)

(declare-fun tp!1565407 () Bool)

(assert (=> b!5649418 (= e!3480079 (and tp!1565411 tp!1565407))))

(declare-fun b!5649419 () Bool)

(declare-fun tp!1565410 () Bool)

(assert (=> b!5649419 (= e!3480079 tp!1565410)))

(assert (= (and b!5647500 ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31774 r!7292)))) b!5649417))

(assert (= (and b!5647500 ((_ is Concat!24476) (regTwo!31774 (regOne!31774 r!7292)))) b!5649418))

(assert (= (and b!5647500 ((_ is Star!15631) (regTwo!31774 (regOne!31774 r!7292)))) b!5649419))

(assert (= (and b!5647500 ((_ is Union!15631) (regTwo!31774 (regOne!31774 r!7292)))) b!5649420))

(declare-fun b!5649424 () Bool)

(declare-fun e!3480080 () Bool)

(declare-fun tp!1565413 () Bool)

(declare-fun tp!1565414 () Bool)

(assert (=> b!5649424 (= e!3480080 (and tp!1565413 tp!1565414))))

(declare-fun b!5649421 () Bool)

(assert (=> b!5649421 (= e!3480080 tp_is_empty!40515)))

(assert (=> b!5647501 (= tp!1565153 e!3480080)))

(declare-fun b!5649422 () Bool)

(declare-fun tp!1565416 () Bool)

(declare-fun tp!1565412 () Bool)

(assert (=> b!5649422 (= e!3480080 (and tp!1565416 tp!1565412))))

(declare-fun b!5649423 () Bool)

(declare-fun tp!1565415 () Bool)

(assert (=> b!5649423 (= e!3480080 tp!1565415)))

(assert (= (and b!5647501 ((_ is ElementMatch!15631) (reg!15960 (regOne!31774 r!7292)))) b!5649421))

(assert (= (and b!5647501 ((_ is Concat!24476) (reg!15960 (regOne!31774 r!7292)))) b!5649422))

(assert (= (and b!5647501 ((_ is Star!15631) (reg!15960 (regOne!31774 r!7292)))) b!5649423))

(assert (= (and b!5647501 ((_ is Union!15631) (reg!15960 (regOne!31774 r!7292)))) b!5649424))

(declare-fun b!5649428 () Bool)

(declare-fun e!3480081 () Bool)

(declare-fun tp!1565418 () Bool)

(declare-fun tp!1565419 () Bool)

(assert (=> b!5649428 (= e!3480081 (and tp!1565418 tp!1565419))))

(declare-fun b!5649425 () Bool)

(assert (=> b!5649425 (= e!3480081 tp_is_empty!40515)))

(assert (=> b!5647506 (= tp!1565156 e!3480081)))

(declare-fun b!5649426 () Bool)

(declare-fun tp!1565421 () Bool)

(declare-fun tp!1565417 () Bool)

(assert (=> b!5649426 (= e!3480081 (and tp!1565421 tp!1565417))))

(declare-fun b!5649427 () Bool)

(declare-fun tp!1565420 () Bool)

(assert (=> b!5649427 (= e!3480081 tp!1565420)))

(assert (= (and b!5647506 ((_ is ElementMatch!15631) (regOne!31775 (regTwo!31774 r!7292)))) b!5649425))

(assert (= (and b!5647506 ((_ is Concat!24476) (regOne!31775 (regTwo!31774 r!7292)))) b!5649426))

(assert (= (and b!5647506 ((_ is Star!15631) (regOne!31775 (regTwo!31774 r!7292)))) b!5649427))

(assert (= (and b!5647506 ((_ is Union!15631) (regOne!31775 (regTwo!31774 r!7292)))) b!5649428))

(declare-fun b!5649432 () Bool)

(declare-fun e!3480082 () Bool)

(declare-fun tp!1565423 () Bool)

(declare-fun tp!1565424 () Bool)

(assert (=> b!5649432 (= e!3480082 (and tp!1565423 tp!1565424))))

(declare-fun b!5649429 () Bool)

(assert (=> b!5649429 (= e!3480082 tp_is_empty!40515)))

(assert (=> b!5647506 (= tp!1565157 e!3480082)))

(declare-fun b!5649430 () Bool)

(declare-fun tp!1565426 () Bool)

(declare-fun tp!1565422 () Bool)

(assert (=> b!5649430 (= e!3480082 (and tp!1565426 tp!1565422))))

(declare-fun b!5649431 () Bool)

(declare-fun tp!1565425 () Bool)

(assert (=> b!5649431 (= e!3480082 tp!1565425)))

(assert (= (and b!5647506 ((_ is ElementMatch!15631) (regTwo!31775 (regTwo!31774 r!7292)))) b!5649429))

(assert (= (and b!5647506 ((_ is Concat!24476) (regTwo!31775 (regTwo!31774 r!7292)))) b!5649430))

(assert (= (and b!5647506 ((_ is Star!15631) (regTwo!31775 (regTwo!31774 r!7292)))) b!5649431))

(assert (= (and b!5647506 ((_ is Union!15631) (regTwo!31775 (regTwo!31774 r!7292)))) b!5649432))

(declare-fun b!5649436 () Bool)

(declare-fun e!3480083 () Bool)

(declare-fun tp!1565428 () Bool)

(declare-fun tp!1565429 () Bool)

(assert (=> b!5649436 (= e!3480083 (and tp!1565428 tp!1565429))))

(declare-fun b!5649433 () Bool)

(assert (=> b!5649433 (= e!3480083 tp_is_empty!40515)))

(assert (=> b!5647497 (= tp!1565148 e!3480083)))

(declare-fun b!5649434 () Bool)

(declare-fun tp!1565431 () Bool)

(declare-fun tp!1565427 () Bool)

(assert (=> b!5649434 (= e!3480083 (and tp!1565431 tp!1565427))))

(declare-fun b!5649435 () Bool)

(declare-fun tp!1565430 () Bool)

(assert (=> b!5649435 (= e!3480083 tp!1565430)))

(assert (= (and b!5647497 ((_ is ElementMatch!15631) (reg!15960 (reg!15960 r!7292)))) b!5649433))

(assert (= (and b!5647497 ((_ is Concat!24476) (reg!15960 (reg!15960 r!7292)))) b!5649434))

(assert (= (and b!5647497 ((_ is Star!15631) (reg!15960 (reg!15960 r!7292)))) b!5649435))

(assert (= (and b!5647497 ((_ is Union!15631) (reg!15960 (reg!15960 r!7292)))) b!5649436))

(declare-fun b!5649440 () Bool)

(declare-fun e!3480084 () Bool)

(declare-fun tp!1565433 () Bool)

(declare-fun tp!1565434 () Bool)

(assert (=> b!5649440 (= e!3480084 (and tp!1565433 tp!1565434))))

(declare-fun b!5649437 () Bool)

(assert (=> b!5649437 (= e!3480084 tp_is_empty!40515)))

(assert (=> b!5647498 (= tp!1565146 e!3480084)))

(declare-fun b!5649438 () Bool)

(declare-fun tp!1565436 () Bool)

(declare-fun tp!1565432 () Bool)

(assert (=> b!5649438 (= e!3480084 (and tp!1565436 tp!1565432))))

(declare-fun b!5649439 () Bool)

(declare-fun tp!1565435 () Bool)

(assert (=> b!5649439 (= e!3480084 tp!1565435)))

(assert (= (and b!5647498 ((_ is ElementMatch!15631) (regOne!31775 (reg!15960 r!7292)))) b!5649437))

(assert (= (and b!5647498 ((_ is Concat!24476) (regOne!31775 (reg!15960 r!7292)))) b!5649438))

(assert (= (and b!5647498 ((_ is Star!15631) (regOne!31775 (reg!15960 r!7292)))) b!5649439))

(assert (= (and b!5647498 ((_ is Union!15631) (regOne!31775 (reg!15960 r!7292)))) b!5649440))

(declare-fun b!5649444 () Bool)

(declare-fun e!3480085 () Bool)

(declare-fun tp!1565438 () Bool)

(declare-fun tp!1565439 () Bool)

(assert (=> b!5649444 (= e!3480085 (and tp!1565438 tp!1565439))))

(declare-fun b!5649441 () Bool)

(assert (=> b!5649441 (= e!3480085 tp_is_empty!40515)))

(assert (=> b!5647498 (= tp!1565147 e!3480085)))

(declare-fun b!5649442 () Bool)

(declare-fun tp!1565441 () Bool)

(declare-fun tp!1565437 () Bool)

(assert (=> b!5649442 (= e!3480085 (and tp!1565441 tp!1565437))))

(declare-fun b!5649443 () Bool)

(declare-fun tp!1565440 () Bool)

(assert (=> b!5649443 (= e!3480085 tp!1565440)))

(assert (= (and b!5647498 ((_ is ElementMatch!15631) (regTwo!31775 (reg!15960 r!7292)))) b!5649441))

(assert (= (and b!5647498 ((_ is Concat!24476) (regTwo!31775 (reg!15960 r!7292)))) b!5649442))

(assert (= (and b!5647498 ((_ is Star!15631) (regTwo!31775 (reg!15960 r!7292)))) b!5649443))

(assert (= (and b!5647498 ((_ is Union!15631) (regTwo!31775 (reg!15960 r!7292)))) b!5649444))

(declare-fun b!5649448 () Bool)

(declare-fun e!3480086 () Bool)

(declare-fun tp!1565443 () Bool)

(declare-fun tp!1565444 () Bool)

(assert (=> b!5649448 (= e!3480086 (and tp!1565443 tp!1565444))))

(declare-fun b!5649445 () Bool)

(assert (=> b!5649445 (= e!3480086 tp_is_empty!40515)))

(assert (=> b!5647469 (= tp!1565122 e!3480086)))

(declare-fun b!5649446 () Bool)

(declare-fun tp!1565446 () Bool)

(declare-fun tp!1565442 () Bool)

(assert (=> b!5649446 (= e!3480086 (and tp!1565446 tp!1565442))))

(declare-fun b!5649447 () Bool)

(declare-fun tp!1565445 () Bool)

(assert (=> b!5649447 (= e!3480086 tp!1565445)))

(assert (= (and b!5647469 ((_ is ElementMatch!15631) (regOne!31774 (regOne!31775 r!7292)))) b!5649445))

(assert (= (and b!5647469 ((_ is Concat!24476) (regOne!31774 (regOne!31775 r!7292)))) b!5649446))

(assert (= (and b!5647469 ((_ is Star!15631) (regOne!31774 (regOne!31775 r!7292)))) b!5649447))

(assert (= (and b!5647469 ((_ is Union!15631) (regOne!31774 (regOne!31775 r!7292)))) b!5649448))

(declare-fun b!5649452 () Bool)

(declare-fun e!3480087 () Bool)

(declare-fun tp!1565448 () Bool)

(declare-fun tp!1565449 () Bool)

(assert (=> b!5649452 (= e!3480087 (and tp!1565448 tp!1565449))))

(declare-fun b!5649449 () Bool)

(assert (=> b!5649449 (= e!3480087 tp_is_empty!40515)))

(assert (=> b!5647469 (= tp!1565118 e!3480087)))

(declare-fun b!5649450 () Bool)

(declare-fun tp!1565451 () Bool)

(declare-fun tp!1565447 () Bool)

(assert (=> b!5649450 (= e!3480087 (and tp!1565451 tp!1565447))))

(declare-fun b!5649451 () Bool)

(declare-fun tp!1565450 () Bool)

(assert (=> b!5649451 (= e!3480087 tp!1565450)))

(assert (= (and b!5647469 ((_ is ElementMatch!15631) (regTwo!31774 (regOne!31775 r!7292)))) b!5649449))

(assert (= (and b!5647469 ((_ is Concat!24476) (regTwo!31774 (regOne!31775 r!7292)))) b!5649450))

(assert (= (and b!5647469 ((_ is Star!15631) (regTwo!31774 (regOne!31775 r!7292)))) b!5649451))

(assert (= (and b!5647469 ((_ is Union!15631) (regTwo!31774 (regOne!31775 r!7292)))) b!5649452))

(declare-fun b!5649456 () Bool)

(declare-fun e!3480088 () Bool)

(declare-fun tp!1565453 () Bool)

(declare-fun tp!1565454 () Bool)

(assert (=> b!5649456 (= e!3480088 (and tp!1565453 tp!1565454))))

(declare-fun b!5649453 () Bool)

(assert (=> b!5649453 (= e!3480088 tp_is_empty!40515)))

(assert (=> b!5647470 (= tp!1565121 e!3480088)))

(declare-fun b!5649454 () Bool)

(declare-fun tp!1565456 () Bool)

(declare-fun tp!1565452 () Bool)

(assert (=> b!5649454 (= e!3480088 (and tp!1565456 tp!1565452))))

(declare-fun b!5649455 () Bool)

(declare-fun tp!1565455 () Bool)

(assert (=> b!5649455 (= e!3480088 tp!1565455)))

(assert (= (and b!5647470 ((_ is ElementMatch!15631) (reg!15960 (regOne!31775 r!7292)))) b!5649453))

(assert (= (and b!5647470 ((_ is Concat!24476) (reg!15960 (regOne!31775 r!7292)))) b!5649454))

(assert (= (and b!5647470 ((_ is Star!15631) (reg!15960 (regOne!31775 r!7292)))) b!5649455))

(assert (= (and b!5647470 ((_ is Union!15631) (reg!15960 (regOne!31775 r!7292)))) b!5649456))

(declare-fun b!5649460 () Bool)

(declare-fun e!3480089 () Bool)

(declare-fun tp!1565458 () Bool)

(declare-fun tp!1565459 () Bool)

(assert (=> b!5649460 (= e!3480089 (and tp!1565458 tp!1565459))))

(declare-fun b!5649457 () Bool)

(assert (=> b!5649457 (= e!3480089 tp_is_empty!40515)))

(assert (=> b!5647471 (= tp!1565119 e!3480089)))

(declare-fun b!5649458 () Bool)

(declare-fun tp!1565461 () Bool)

(declare-fun tp!1565457 () Bool)

(assert (=> b!5649458 (= e!3480089 (and tp!1565461 tp!1565457))))

(declare-fun b!5649459 () Bool)

(declare-fun tp!1565460 () Bool)

(assert (=> b!5649459 (= e!3480089 tp!1565460)))

(assert (= (and b!5647471 ((_ is ElementMatch!15631) (regOne!31775 (regOne!31775 r!7292)))) b!5649457))

(assert (= (and b!5647471 ((_ is Concat!24476) (regOne!31775 (regOne!31775 r!7292)))) b!5649458))

(assert (= (and b!5647471 ((_ is Star!15631) (regOne!31775 (regOne!31775 r!7292)))) b!5649459))

(assert (= (and b!5647471 ((_ is Union!15631) (regOne!31775 (regOne!31775 r!7292)))) b!5649460))

(declare-fun b!5649464 () Bool)

(declare-fun e!3480090 () Bool)

(declare-fun tp!1565463 () Bool)

(declare-fun tp!1565464 () Bool)

(assert (=> b!5649464 (= e!3480090 (and tp!1565463 tp!1565464))))

(declare-fun b!5649461 () Bool)

(assert (=> b!5649461 (= e!3480090 tp_is_empty!40515)))

(assert (=> b!5647471 (= tp!1565120 e!3480090)))

(declare-fun b!5649462 () Bool)

(declare-fun tp!1565466 () Bool)

(declare-fun tp!1565462 () Bool)

(assert (=> b!5649462 (= e!3480090 (and tp!1565466 tp!1565462))))

(declare-fun b!5649463 () Bool)

(declare-fun tp!1565465 () Bool)

(assert (=> b!5649463 (= e!3480090 tp!1565465)))

(assert (= (and b!5647471 ((_ is ElementMatch!15631) (regTwo!31775 (regOne!31775 r!7292)))) b!5649461))

(assert (= (and b!5647471 ((_ is Concat!24476) (regTwo!31775 (regOne!31775 r!7292)))) b!5649462))

(assert (= (and b!5647471 ((_ is Star!15631) (regTwo!31775 (regOne!31775 r!7292)))) b!5649463))

(assert (= (and b!5647471 ((_ is Union!15631) (regTwo!31775 (regOne!31775 r!7292)))) b!5649464))

(declare-fun b!5649465 () Bool)

(declare-fun e!3480091 () Bool)

(declare-fun tp!1565467 () Bool)

(declare-fun tp!1565468 () Bool)

(assert (=> b!5649465 (= e!3480091 (and tp!1565467 tp!1565468))))

(assert (=> b!5647483 (= tp!1565132 e!3480091)))

(assert (= (and b!5647483 ((_ is Cons!63068) (exprs!5515 (h!69518 (t!376492 zl!343))))) b!5649465))

(declare-fun b!5649469 () Bool)

(declare-fun e!3480092 () Bool)

(declare-fun tp!1565470 () Bool)

(declare-fun tp!1565471 () Bool)

(assert (=> b!5649469 (= e!3480092 (and tp!1565470 tp!1565471))))

(declare-fun b!5649466 () Bool)

(assert (=> b!5649466 (= e!3480092 tp_is_empty!40515)))

(assert (=> b!5647504 (= tp!1565159 e!3480092)))

(declare-fun b!5649467 () Bool)

(declare-fun tp!1565473 () Bool)

(declare-fun tp!1565469 () Bool)

(assert (=> b!5649467 (= e!3480092 (and tp!1565473 tp!1565469))))

(declare-fun b!5649468 () Bool)

(declare-fun tp!1565472 () Bool)

(assert (=> b!5649468 (= e!3480092 tp!1565472)))

(assert (= (and b!5647504 ((_ is ElementMatch!15631) (regOne!31774 (regTwo!31774 r!7292)))) b!5649466))

(assert (= (and b!5647504 ((_ is Concat!24476) (regOne!31774 (regTwo!31774 r!7292)))) b!5649467))

(assert (= (and b!5647504 ((_ is Star!15631) (regOne!31774 (regTwo!31774 r!7292)))) b!5649468))

(assert (= (and b!5647504 ((_ is Union!15631) (regOne!31774 (regTwo!31774 r!7292)))) b!5649469))

(declare-fun b!5649473 () Bool)

(declare-fun e!3480093 () Bool)

(declare-fun tp!1565475 () Bool)

(declare-fun tp!1565476 () Bool)

(assert (=> b!5649473 (= e!3480093 (and tp!1565475 tp!1565476))))

(declare-fun b!5649470 () Bool)

(assert (=> b!5649470 (= e!3480093 tp_is_empty!40515)))

(assert (=> b!5647504 (= tp!1565155 e!3480093)))

(declare-fun b!5649471 () Bool)

(declare-fun tp!1565478 () Bool)

(declare-fun tp!1565474 () Bool)

(assert (=> b!5649471 (= e!3480093 (and tp!1565478 tp!1565474))))

(declare-fun b!5649472 () Bool)

(declare-fun tp!1565477 () Bool)

(assert (=> b!5649472 (= e!3480093 tp!1565477)))

(assert (= (and b!5647504 ((_ is ElementMatch!15631) (regTwo!31774 (regTwo!31774 r!7292)))) b!5649470))

(assert (= (and b!5647504 ((_ is Concat!24476) (regTwo!31774 (regTwo!31774 r!7292)))) b!5649471))

(assert (= (and b!5647504 ((_ is Star!15631) (regTwo!31774 (regTwo!31774 r!7292)))) b!5649472))

(assert (= (and b!5647504 ((_ is Union!15631) (regTwo!31774 (regTwo!31774 r!7292)))) b!5649473))

(declare-fun b!5649477 () Bool)

(declare-fun e!3480094 () Bool)

(declare-fun tp!1565480 () Bool)

(declare-fun tp!1565481 () Bool)

(assert (=> b!5649477 (= e!3480094 (and tp!1565480 tp!1565481))))

(declare-fun b!5649474 () Bool)

(assert (=> b!5649474 (= e!3480094 tp_is_empty!40515)))

(assert (=> b!5647505 (= tp!1565158 e!3480094)))

(declare-fun b!5649475 () Bool)

(declare-fun tp!1565483 () Bool)

(declare-fun tp!1565479 () Bool)

(assert (=> b!5649475 (= e!3480094 (and tp!1565483 tp!1565479))))

(declare-fun b!5649476 () Bool)

(declare-fun tp!1565482 () Bool)

(assert (=> b!5649476 (= e!3480094 tp!1565482)))

(assert (= (and b!5647505 ((_ is ElementMatch!15631) (reg!15960 (regTwo!31774 r!7292)))) b!5649474))

(assert (= (and b!5647505 ((_ is Concat!24476) (reg!15960 (regTwo!31774 r!7292)))) b!5649475))

(assert (= (and b!5647505 ((_ is Star!15631) (reg!15960 (regTwo!31774 r!7292)))) b!5649476))

(assert (= (and b!5647505 ((_ is Union!15631) (reg!15960 (regTwo!31774 r!7292)))) b!5649477))

(declare-fun b!5649481 () Bool)

(declare-fun e!3480095 () Bool)

(declare-fun tp!1565485 () Bool)

(declare-fun tp!1565486 () Bool)

(assert (=> b!5649481 (= e!3480095 (and tp!1565485 tp!1565486))))

(declare-fun b!5649478 () Bool)

(assert (=> b!5649478 (= e!3480095 tp_is_empty!40515)))

(assert (=> b!5647496 (= tp!1565149 e!3480095)))

(declare-fun b!5649479 () Bool)

(declare-fun tp!1565488 () Bool)

(declare-fun tp!1565484 () Bool)

(assert (=> b!5649479 (= e!3480095 (and tp!1565488 tp!1565484))))

(declare-fun b!5649480 () Bool)

(declare-fun tp!1565487 () Bool)

(assert (=> b!5649480 (= e!3480095 tp!1565487)))

(assert (= (and b!5647496 ((_ is ElementMatch!15631) (regOne!31774 (reg!15960 r!7292)))) b!5649478))

(assert (= (and b!5647496 ((_ is Concat!24476) (regOne!31774 (reg!15960 r!7292)))) b!5649479))

(assert (= (and b!5647496 ((_ is Star!15631) (regOne!31774 (reg!15960 r!7292)))) b!5649480))

(assert (= (and b!5647496 ((_ is Union!15631) (regOne!31774 (reg!15960 r!7292)))) b!5649481))

(declare-fun b!5649485 () Bool)

(declare-fun e!3480096 () Bool)

(declare-fun tp!1565490 () Bool)

(declare-fun tp!1565491 () Bool)

(assert (=> b!5649485 (= e!3480096 (and tp!1565490 tp!1565491))))

(declare-fun b!5649482 () Bool)

(assert (=> b!5649482 (= e!3480096 tp_is_empty!40515)))

(assert (=> b!5647496 (= tp!1565145 e!3480096)))

(declare-fun b!5649483 () Bool)

(declare-fun tp!1565493 () Bool)

(declare-fun tp!1565489 () Bool)

(assert (=> b!5649483 (= e!3480096 (and tp!1565493 tp!1565489))))

(declare-fun b!5649484 () Bool)

(declare-fun tp!1565492 () Bool)

(assert (=> b!5649484 (= e!3480096 tp!1565492)))

(assert (= (and b!5647496 ((_ is ElementMatch!15631) (regTwo!31774 (reg!15960 r!7292)))) b!5649482))

(assert (= (and b!5647496 ((_ is Concat!24476) (regTwo!31774 (reg!15960 r!7292)))) b!5649483))

(assert (= (and b!5647496 ((_ is Star!15631) (regTwo!31774 (reg!15960 r!7292)))) b!5649484))

(assert (= (and b!5647496 ((_ is Union!15631) (regTwo!31774 (reg!15960 r!7292)))) b!5649485))

(declare-fun b_lambda!213741 () Bool)

(assert (= b_lambda!213731 (or b!5646443 b_lambda!213741)))

(assert (=> d!1784703 d!1783819))

(declare-fun b_lambda!213743 () Bool)

(assert (= b_lambda!213725 (or b!5647425 b_lambda!213743)))

(declare-fun bs!1314398 () Bool)

(declare-fun d!1784825 () Bool)

(assert (= bs!1314398 (and d!1784825 b!5647425)))

(assert (=> bs!1314398 (= (dynLambda!24680 lambda!303542 (h!69518 zl!343)) (>= lt!2264410 (contextDepth!119 (h!69518 zl!343))))))

(assert (=> bs!1314398 m!6614762))

(assert (=> b!5648877 d!1784825))

(declare-fun b_lambda!213745 () Bool)

(assert (= b_lambda!213735 (or d!1783775 b_lambda!213745)))

(declare-fun bs!1314399 () Bool)

(declare-fun d!1784827 () Bool)

(assert (= bs!1314399 (and d!1784827 d!1783775)))

(assert (=> bs!1314399 (= (dynLambda!24678 lambda!303517 (h!69516 lt!2264211)) (validRegex!7367 (h!69516 lt!2264211)))))

(declare-fun m!6616838 () Bool)

(assert (=> bs!1314399 m!6616838))

(assert (=> b!5649235 d!1784827))

(declare-fun b_lambda!213747 () Bool)

(assert (= b_lambda!213719 (or b!5647420 b_lambda!213747)))

(declare-fun bs!1314400 () Bool)

(declare-fun d!1784829 () Bool)

(assert (= bs!1314400 (and d!1784829 b!5647420)))

(assert (=> bs!1314400 (= (dynLambda!24680 lambda!303539 (h!69518 lt!2264185)) (>= lt!2264406 (contextDepth!119 (h!69518 lt!2264185))))))

(assert (=> bs!1314400 m!6614750))

(assert (=> b!5648797 d!1784829))

(declare-fun b_lambda!213749 () Bool)

(assert (= b_lambda!213739 (or b!5646443 b_lambda!213749)))

(assert (=> d!1784803 d!1783821))

(declare-fun b_lambda!213751 () Bool)

(assert (= b_lambda!213715 (or b!5647423 b_lambda!213751)))

(declare-fun bs!1314401 () Bool)

(declare-fun d!1784831 () Bool)

(assert (= bs!1314401 (and d!1784831 b!5647423)))

(assert (=> bs!1314401 (= (dynLambda!24680 lambda!303541 (h!69518 (t!376492 zl!343))) (>= lt!2264411 (contextDepth!119 (h!69518 (t!376492 zl!343)))))))

(assert (=> bs!1314401 m!6616000))

(assert (=> b!5648692 d!1784831))

(declare-fun b_lambda!213753 () Bool)

(assert (= b_lambda!213721 (or d!1783769 b_lambda!213753)))

(declare-fun bs!1314402 () Bool)

(declare-fun d!1784833 () Bool)

(assert (= bs!1314402 (and d!1784833 d!1783769)))

(assert (=> bs!1314402 (= (dynLambda!24678 lambda!303516 (h!69516 lt!2264230)) (validRegex!7367 (h!69516 lt!2264230)))))

(declare-fun m!6616840 () Bool)

(assert (=> bs!1314402 m!6616840))

(assert (=> b!5648864 d!1784833))

(declare-fun b_lambda!213755 () Bool)

(assert (= b_lambda!213717 (or d!1783713 b_lambda!213755)))

(declare-fun bs!1314403 () Bool)

(declare-fun d!1784835 () Bool)

(assert (= bs!1314403 (and d!1784835 d!1783713)))

(assert (=> bs!1314403 (= (dynLambda!24678 lambda!303504 (h!69516 (exprs!5515 (h!69518 zl!343)))) (validRegex!7367 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(declare-fun m!6616842 () Bool)

(assert (=> bs!1314403 m!6616842))

(assert (=> b!5648716 d!1784835))

(declare-fun b_lambda!213757 () Bool)

(assert (= b_lambda!213723 (or d!1783799 b_lambda!213757)))

(declare-fun bs!1314404 () Bool)

(declare-fun d!1784837 () Bool)

(assert (= bs!1314404 (and d!1784837 d!1783799)))

(assert (=> bs!1314404 (= (dynLambda!24678 lambda!303527 (h!69516 (unfocusZipperList!1059 zl!343))) (validRegex!7367 (h!69516 (unfocusZipperList!1059 zl!343))))))

(declare-fun m!6616844 () Bool)

(assert (=> bs!1314404 m!6616844))

(assert (=> b!5648875 d!1784837))

(declare-fun b_lambda!213759 () Bool)

(assert (= b_lambda!213677 (or d!1783801 b_lambda!213759)))

(declare-fun bs!1314405 () Bool)

(declare-fun d!1784839 () Bool)

(assert (= bs!1314405 (and d!1784839 d!1783801)))

(assert (=> bs!1314405 (= (dynLambda!24678 lambda!303530 (h!69516 lt!2264395)) (validRegex!7367 (h!69516 lt!2264395)))))

(declare-fun m!6616846 () Bool)

(assert (=> bs!1314405 m!6616846))

(assert (=> b!5648348 d!1784839))

(declare-fun b_lambda!213761 () Bool)

(assert (= b_lambda!213729 (or d!1783727 b_lambda!213761)))

(declare-fun bs!1314406 () Bool)

(declare-fun d!1784841 () Bool)

(assert (= bs!1314406 (and d!1784841 d!1783727)))

(assert (=> bs!1314406 (= (dynLambda!24678 lambda!303505 (h!69516 (exprs!5515 setElem!37712))) (validRegex!7367 (h!69516 (exprs!5515 setElem!37712))))))

(declare-fun m!6616848 () Bool)

(assert (=> bs!1314406 m!6616848))

(assert (=> b!5649128 d!1784841))

(declare-fun b_lambda!213763 () Bool)

(assert (= b_lambda!213727 (or b!5646443 b_lambda!213763)))

(assert (=> d!1784591 d!1783823))

(declare-fun b_lambda!213765 () Bool)

(assert (= b_lambda!213733 (or d!1783761 b_lambda!213765)))

(declare-fun bs!1314407 () Bool)

(declare-fun d!1784843 () Bool)

(assert (= bs!1314407 (and d!1784843 d!1783761)))

(assert (=> bs!1314407 (= (dynLambda!24678 lambda!303515 (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343))))) (validRegex!7367 (h!69516 (t!376490 (exprs!5515 (h!69518 zl!343))))))))

(declare-fun m!6616850 () Bool)

(assert (=> bs!1314407 m!6616850))

(assert (=> b!5649200 d!1784843))

(declare-fun b_lambda!213767 () Bool)

(assert (= b_lambda!213713 (or b!5647418 b_lambda!213767)))

(declare-fun bs!1314408 () Bool)

(declare-fun d!1784845 () Bool)

(assert (= bs!1314408 (and d!1784845 b!5647418)))

(assert (=> bs!1314408 (= (dynLambda!24680 lambda!303538 (h!69518 (t!376492 lt!2264185))) (>= lt!2264407 (contextDepth!119 (h!69518 (t!376492 lt!2264185)))))))

(assert (=> bs!1314408 m!6615960))

(assert (=> b!5648665 d!1784845))

(declare-fun b_lambda!213769 () Bool)

(assert (= b_lambda!213737 (or d!1783741 b_lambda!213769)))

(declare-fun bs!1314409 () Bool)

(declare-fun d!1784847 () Bool)

(assert (= bs!1314409 (and d!1784847 d!1783741)))

(assert (=> bs!1314409 (= (dynLambda!24678 lambda!303511 (h!69516 (exprs!5515 (h!69518 zl!343)))) (validRegex!7367 (h!69516 (exprs!5515 (h!69518 zl!343)))))))

(assert (=> bs!1314409 m!6616842))

(assert (=> b!5649278 d!1784847))

(check-sat (not bm!427259) (not b!5649464) (not d!1784437) (not b!5649351) (not d!1784447) (not b!5649144) (not b!5649409) (not b!5648790) (not d!1784555) (not b!5648999) (not b!5649055) (not b!5649430) (not d!1784481) (not d!1784467) (not b!5649481) (not b!5649150) (not d!1784813) (not d!1784663) (not b!5648419) (not b!5648957) (not bm!427341) (not bm!427219) (not bm!427270) (not b!5648813) (not b!5648931) (not b!5649368) (not bm!427357) (not b!5649028) (not b!5649146) (not b!5649220) (not d!1784783) (not b!5648916) (not b!5648941) (not d!1784585) (not b!5649380) (not bm!427334) (not b!5649475) (not b!5649345) (not d!1784737) (not b!5648721) (not d!1784789) (not b!5649267) (not b!5648628) (not b!5648784) (not d!1784797) (not b!5649152) (not b!5649114) (not d!1784785) (not d!1784671) (not b!5648896) (not b!5648940) (not bs!1314398) (not bm!427376) (not b!5649414) (not setNonEmpty!37730) (not d!1784723) (not bm!427315) (not bm!427305) (not d!1784479) (not b!5649402) (not bm!427228) (not bm!427361) (not bm!427237) (not bm!427299) (not b!5649389) (not b!5649140) (not b!5649410) (not b!5648954) (not setNonEmpty!37727) (not b!5648691) (not b!5649406) (not bm!427208) (not bm!427262) (not b!5649205) (not b!5649412) (not bm!427260) (not b!5649303) (not d!1784607) (not b!5649471) (not bm!427216) (not b!5649327) (not b!5649224) (not b!5649041) (not d!1784443) (not b!5648956) (not b!5649136) (not d!1784301) (not b!5649266) (not d!1784621) (not d!1784635) (not bm!427365) (not d!1784667) (not b!5648876) (not bm!427307) (not b!5649391) (not bm!427229) (not b!5649369) (not d!1784655) (not bm!427346) (not b!5649006) (not d!1784391) (not b!5649043) (not b!5649411) (not b!5649472) (not d!1784801) (not bm!427314) (not b!5649134) (not d!1784611) (not b!5649431) (not b!5648658) (not b!5648874) (not b!5648353) (not b!5648944) (not d!1784743) (not b!5649452) (not b!5648781) (not b!5649381) (not b!5648788) (not bm!427286) (not b!5649376) (not d!1784629) (not b!5649434) (not b!5649427) (not b!5648827) (not b!5649479) (not bm!427304) (not d!1784475) (not bm!427362) (not b!5648714) (not b!5648672) (not b!5649071) (not b!5648936) (not d!1784665) (not d!1784513) (not d!1784753) (not b!5649250) (not b!5648626) (not bm!427206) (not b!5649404) (not b_lambda!213747) (not b!5648712) (not bm!427349) (not d!1784507) (not bm!427329) (not bm!427302) (not b!5649407) (not b!5648703) (not b!5648964) (not b!5649201) (not b!5648706) (not b!5649179) (not b!5649314) (not b!5649106) (not b!5649263) (not b!5649300) tp_is_empty!40515 (not b!5649021) (not d!1784773) (not b!5649279) (not b!5648886) (not b!5648349) (not b!5649063) (not d!1784355) (not bs!1314400) (not b!5648848) (not b!5649399) (not bm!427300) (not b!5649123) (not bm!427332) (not b!5649372) (not d!1784811) (not d!1784787) (not b!5649016) (not d!1784721) (not b!5649236) (not d!1784659) (not b!5649251) (not b!5649212) (not b!5649444) (not b_lambda!213753) (not b!5648704) (not b!5649301) (not d!1784359) (not b!5649329) (not bm!427317) (not b!5649392) (not b!5648416) (not b!5648763) (not d!1784717) (not b!5649428) (not b!5648746) (not b!5649225) (not b!5649447) (not b!5648996) (not b!5649483) (not d!1784593) (not bm!427344) (not b!5649186) (not bm!427210) (not bs!1314405) (not b!5649359) (not bm!427303) (not b!5649438) (not bm!427236) (not b!5648990) (not b!5648423) (not d!1784775) (not b!5648682) (not bs!1314401) (not d!1784583) (not b!5648974) (not bm!427363) (not bm!427308) (not b!5648722) (not b!5649000) (not d!1784795) (not b_lambda!213755) (not d!1784569) (not b!5648943) (not b!5649361) (not b!5649208) (not b!5648885) (not b!5648620) (not b!5649436) (not d!1784727) (not b!5648908) (not b!5648644) (not b!5649476) (not bm!427251) (not b!5648819) (not bm!427337) (not b!5649418) (not b!5649443) (not b!5648411) (not bs!1314403) (not d!1784389) (not b!5649408) (not b!5649353) (not b!5648410) (not b!5648759) (not b!5648686) (not d!1784757) (not b!5649442) (not b!5649289) (not b!5648889) (not b!5649355) (not bm!427316) (not b!5649446) (not bm!427351) (not bs!1314402) (not d!1784633) (not b!5649415) (not b!5649027) (not bs!1314409) (not bm!427272) (not d!1784575) (not d!1784777) (not d!1784435) (not b!5648637) (not d!1784697) (not bm!427356) (not b!5649159) (not b!5648989) (not b!5649395) (not b!5649116) (not b_lambda!213741) (not b!5649465) (not b_lambda!213645) (not b!5649062) (not bm!427256) (not b!5648865) (not b!5649010) (not b!5649291) (not d!1784605) (not b_lambda!213743) (not b!5648840) (not d!1784643) (not d!1784815) (not bm!427245) (not b_lambda!213759) (not b!5649462) (not b!5648417) (not b!5648994) (not b!5649458) (not bm!427290) (not d!1784609) (not b!5648794) (not b!5649238) (not bm!427301) (not b!5649241) (not d!1784591) (not b!5649401) (not bm!427279) (not bm!427250) (not b!5648854) (not b!5648717) (not b!5649459) (not b!5649317) (not b!5649388) (not d!1784357) (not b!5648963) (not b!5648787) (not b!5649222) (not bs!1314408) (not bm!427374) (not d!1784709) (not b!5649051) (not d!1784523) (not b!5648681) (not d!1784639) (not b!5649439) (not b!5648736) (not b!5648922) (not d!1784735) (not d!1784751) (not b!5649323) (not b!5649432) (not b!5649477) (not b!5648684) (not b!5648993) (not bm!427369) (not bm!427339) (not b!5648733) (not b!5649296) (not b!5649039) (not d!1784333) (not d!1784407) (not b_lambda!213763) (not b!5649018) (not bs!1314407) (not b!5648878) (not bs!1314399) (not bm!427358) (not bm!427287) (not bm!427264) (not bm!427382) (not bm!427318) (not b!5649344) (not d!1784781) (not b_lambda!213769) (not b!5648948) (not bm!427348) (not d!1784601) (not bm!427281) (not b!5648625) (not b_lambda!213761) (not bm!427248) (not b!5649341) (not bm!427271) (not d!1784549) (not d!1784531) (not d!1784685) (not b!5648884) (not b!5648771) (not b!5649092) (not b!5649214) (not bm!427367) (not b!5648354) (not d!1784331) (not b!5649107) (not bs!1314406) (not d!1784673) (not bm!427309) (not bm!427261) (not b!5648622) (not b!5649048) (not d!1784321) (not d!1784803) (not bm!427240) (not b!5648656) (not b!5649419) (not bm!427294) (not b!5649379) (not b!5648724) (not b!5649371) (not b!5649059) (not b!5649298) (not d!1784637) (not bm!427380) (not bm!427253) (not b!5649262) (not d!1784545) (not b!5649373) (not b!5649367) (not b!5649178) (not b!5649420) (not b!5648762) (not b!5649467) (not b!5648689) (not b!5648693) (not b!5649455) (not setNonEmpty!37728) (not b!5649283) (not b!5649115) (not b!5648901) (not b!5648842) (not b!5649003) (not bm!427243) (not d!1784477) (not b!5648757) (not bm!427370) (not b!5649199) (not b!5648445) (not b!5649206) (not b_lambda!213647) (not b!5649315) (not b!5649005) (not bm!427252) (not b!5648933) (not d!1784631) (not b!5648775) (not b!5649032) (not b!5649454) (not b!5649347) (not b!5648739) (not bm!427375) (not b!5648942) (not b!5649456) (not b!5649377) (not b!5649473) (not b!5648394) (not b!5649248) (not b!5648796) (not b!5649045) (not b!5648715) (not d!1784759) (not b!5649485) (not b!5649129) (not b!5648805) (not b_lambda!213765) (not b!5648688) (not bm!427338) (not bm!427331) (not b!5649244) (not b!5649435) (not b!5649065) (not b!5649320) (not d!1784651) (not d!1784819) (not b!5649223) (not bm!427371) (not bm!427277) (not b!5648845) (not bm!427381) (not d!1784539) (not b!5649423) (not b!5648962) (not b!5649001) (not d!1784771) (not b!5649330) (not d!1784791) (not d!1784691) (not b!5648740) (not b!5649025) (not d!1784805) (not b!5649451) (not b_lambda!213751) (not b!5648748) (not b!5649440) (not b!5648965) (not b!5649304) (not b!5649023) (not b!5648666) (not b!5649034) (not b!5649022) (not d!1784821) (not b!5649463) (not d!1784511) (not b!5649135) (not d!1784729) (not b!5649049) (not b!5649384) (not d!1784465) (not b!5648634) (not bm!427284) (not d!1784793) (not bm!427280) (not b!5648765) (not d!1784817) (not d!1784485) (not d!1784323) (not b!5649173) (not b!5649480) (not bm!427241) (not b!5648670) (not b!5649057) (not bm!427293) (not b_lambda!213767) (not b!5649004) (not bm!427296) (not b!5649277) (not d!1784679) (not b!5649416) (not b!5649137) (not bm!427242) (not b_lambda!213757) (not d!1784681) (not b!5648511) (not d!1784765) (not b!5649398) (not bm!427258) (not bm!427354) (not bm!427207) (not b!5649385) (not d!1784557) (not d!1784425) (not b!5649143) (not b!5649397) (not b!5649424) (not b!5649484) (not bm!427214) (not b!5649305) (not bm!427274) (not b!5649211) (not b!5649468) (not b!5648769) (not bs!1314404) (not b!5649365) (not bm!427269) (not b!5648711) (not bm!427266) (not b!5649422) (not d!1784541) (not b!5648632) (not b!5648863) (not d!1784649) (not bm!427213) (not b!5649426) (not b!5648935) (not b!5649138) (not b!5649292) (not d!1784749) (not b!5649403) (not d!1784677) (not b!5649218) (not b!5648425) (not b!5649293) (not d!1784653) (not b!5648405) (not b!5649375) (not b!5649394) (not b!5649234) (not d!1784577) (not b!5649358) (not d!1784491) (not b!5648961) (not bm!427288) (not setNonEmpty!37729) (not b!5649069) (not bm!427347) (not bm!427199) (not bm!427378) (not b!5648742) (not d!1784603) (not b_lambda!213749) (not b!5649033) (not b!5649037) (not b!5648981) (not d!1784719) (not d!1784619) (not d!1784755) (not b!5648932) (not b!5648798) (not bm!427311) (not d!1784731) (not bm!427372) (not d!1784675) (not d!1784617) (not bm!427359) (not d!1784573) (not bm!427254) (not d!1784701) (not b!5649040) (not b!5649172) (not b!5648707) (not b!5649387) (not b!5649302) (not d!1784351) (not b!5648852) (not bm!427319) (not b!5649469) (not b!5649221) (not bm!427263) (not d!1784445) (not b!5649448) (not b!5649321) (not bm!427220) (not b!5649174) (not d!1784699) (not b!5649297) (not b!5649450) (not b!5649393) (not bm!427283) (not b!5648713) (not b!5649383) (not b_lambda!213649) (not d!1784703) (not b!5648986) (not b!5649035) (not b!5648846) (not b!5648723) (not b!5649460) (not d!1784661) (not b!5649242) (not b_lambda!213745) (not b!5649026) (not b!5648413))
(check-sat)
