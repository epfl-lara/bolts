; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637286 () Bool)

(assert start!637286)

(declare-fun b!6483143 () Bool)

(assert (=> b!6483143 true))

(assert (=> b!6483143 true))

(declare-fun lambda!358665 () Int)

(declare-fun lambda!358664 () Int)

(assert (=> b!6483143 (not (= lambda!358665 lambda!358664))))

(assert (=> b!6483143 true))

(assert (=> b!6483143 true))

(declare-fun b!6483162 () Bool)

(assert (=> b!6483162 true))

(declare-fun bs!1644833 () Bool)

(declare-fun b!6483135 () Bool)

(assert (= bs!1644833 (and b!6483135 b!6483143)))

(declare-datatypes ((C!32992 0))(
  ( (C!32993 (val!26198 Int)) )
))
(declare-datatypes ((Regex!16361 0))(
  ( (ElementMatch!16361 (c!1187689 C!32992)) (Concat!25206 (regOne!33234 Regex!16361) (regTwo!33234 Regex!16361)) (EmptyExpr!16361) (Star!16361 (reg!16690 Regex!16361)) (EmptyLang!16361) (Union!16361 (regOne!33235 Regex!16361) (regTwo!33235 Regex!16361)) )
))
(declare-fun r!7292 () Regex!16361)

(declare-fun lt!2387424 () Regex!16361)

(declare-fun lambda!358667 () Int)

(assert (=> bs!1644833 (= (= lt!2387424 (regOne!33234 r!7292)) (= lambda!358667 lambda!358664))))

(assert (=> bs!1644833 (not (= lambda!358667 lambda!358665))))

(assert (=> b!6483135 true))

(assert (=> b!6483135 true))

(assert (=> b!6483135 true))

(declare-fun lambda!358668 () Int)

(assert (=> bs!1644833 (not (= lambda!358668 lambda!358664))))

(assert (=> bs!1644833 (= (= lt!2387424 (regOne!33234 r!7292)) (= lambda!358668 lambda!358665))))

(assert (=> b!6483135 (not (= lambda!358668 lambda!358667))))

(assert (=> b!6483135 true))

(assert (=> b!6483135 true))

(assert (=> b!6483135 true))

(declare-fun bs!1644834 () Bool)

(declare-fun b!6483152 () Bool)

(assert (= bs!1644834 (and b!6483152 b!6483143)))

(declare-datatypes ((List!65382 0))(
  ( (Nil!65258) (Cons!65258 (h!71706 C!32992) (t!379008 List!65382)) )
))
(declare-fun s!2326 () List!65382)

(declare-fun lambda!358669 () Int)

(declare-datatypes ((tuple2!66680 0))(
  ( (tuple2!66681 (_1!36643 List!65382) (_2!36643 List!65382)) )
))
(declare-fun lt!2387429 () tuple2!66680)

(assert (=> bs!1644834 (= (and (= (_1!36643 lt!2387429) s!2326) (= (reg!16690 (regOne!33234 r!7292)) (regOne!33234 r!7292)) (= lt!2387424 (regTwo!33234 r!7292))) (= lambda!358669 lambda!358664))))

(assert (=> bs!1644834 (not (= lambda!358669 lambda!358665))))

(declare-fun bs!1644835 () Bool)

(assert (= bs!1644835 (and b!6483152 b!6483135)))

(assert (=> bs!1644835 (= (and (= (_1!36643 lt!2387429) s!2326) (= (reg!16690 (regOne!33234 r!7292)) lt!2387424) (= lt!2387424 (regTwo!33234 r!7292))) (= lambda!358669 lambda!358667))))

(assert (=> bs!1644835 (not (= lambda!358669 lambda!358668))))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(declare-fun lambda!358670 () Int)

(assert (=> bs!1644834 (not (= lambda!358670 lambda!358664))))

(assert (=> bs!1644835 (not (= lambda!358670 lambda!358668))))

(assert (=> bs!1644835 (not (= lambda!358670 lambda!358667))))

(assert (=> bs!1644834 (not (= lambda!358670 lambda!358665))))

(assert (=> b!6483152 (not (= lambda!358670 lambda!358669))))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(declare-fun lambda!358671 () Int)

(assert (=> bs!1644834 (not (= lambda!358671 lambda!358664))))

(assert (=> bs!1644835 (= (and (= (_1!36643 lt!2387429) s!2326) (= (reg!16690 (regOne!33234 r!7292)) lt!2387424) (= lt!2387424 (regTwo!33234 r!7292))) (= lambda!358671 lambda!358668))))

(assert (=> b!6483152 (not (= lambda!358671 lambda!358670))))

(assert (=> bs!1644835 (not (= lambda!358671 lambda!358667))))

(assert (=> bs!1644834 (= (and (= (_1!36643 lt!2387429) s!2326) (= (reg!16690 (regOne!33234 r!7292)) (regOne!33234 r!7292)) (= lt!2387424 (regTwo!33234 r!7292))) (= lambda!358671 lambda!358665))))

(assert (=> b!6483152 (not (= lambda!358671 lambda!358669))))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(assert (=> b!6483152 true))

(declare-fun b!6483124 () Bool)

(declare-fun e!3929456 () Bool)

(declare-fun tp_is_empty!41975 () Bool)

(declare-fun tp!1795769 () Bool)

(assert (=> b!6483124 (= e!3929456 (and tp_is_empty!41975 tp!1795769))))

(declare-fun b!6483125 () Bool)

(declare-fun res!2662253 () Bool)

(declare-fun e!3929453 () Bool)

(assert (=> b!6483125 (=> res!2662253 e!3929453)))

(declare-datatypes ((List!65383 0))(
  ( (Nil!65259) (Cons!65259 (h!71707 Regex!16361) (t!379009 List!65383)) )
))
(declare-datatypes ((Context!11490 0))(
  ( (Context!11491 (exprs!6245 List!65383)) )
))
(declare-datatypes ((List!65384 0))(
  ( (Nil!65260) (Cons!65260 (h!71708 Context!11490) (t!379010 List!65384)) )
))
(declare-fun zl!343 () List!65384)

(declare-fun generalisedUnion!2205 (List!65383) Regex!16361)

(declare-fun unfocusZipperList!1782 (List!65384) List!65383)

(assert (=> b!6483125 (= res!2662253 (not (= r!7292 (generalisedUnion!2205 (unfocusZipperList!1782 zl!343)))))))

(declare-fun b!6483126 () Bool)

(declare-fun e!3929461 () Bool)

(declare-fun e!3929459 () Bool)

(assert (=> b!6483126 (= e!3929461 e!3929459)))

(declare-fun res!2662251 () Bool)

(assert (=> b!6483126 (=> res!2662251 e!3929459)))

(declare-fun lt!2387378 () List!65384)

(declare-fun lt!2387425 () Regex!16361)

(declare-fun unfocusZipper!2103 (List!65384) Regex!16361)

(assert (=> b!6483126 (= res!2662251 (not (= (unfocusZipper!2103 lt!2387378) lt!2387425)))))

(declare-fun lt!2387393 () Context!11490)

(assert (=> b!6483126 (= lt!2387378 (Cons!65260 lt!2387393 Nil!65260))))

(declare-fun b!6483127 () Bool)

(declare-fun e!3929448 () Bool)

(declare-fun e!3929464 () Bool)

(assert (=> b!6483127 (= e!3929448 e!3929464)))

(declare-fun res!2662276 () Bool)

(assert (=> b!6483127 (=> (not res!2662276) (not e!3929464))))

(declare-fun lt!2387411 () Regex!16361)

(assert (=> b!6483127 (= res!2662276 (= r!7292 lt!2387411))))

(assert (=> b!6483127 (= lt!2387411 (unfocusZipper!2103 zl!343))))

(declare-fun b!6483128 () Bool)

(declare-fun e!3929449 () Bool)

(assert (=> b!6483128 (= e!3929449 e!3929461)))

(declare-fun res!2662282 () Bool)

(assert (=> b!6483128 (=> res!2662282 e!3929461)))

(declare-fun lt!2387381 () List!65384)

(assert (=> b!6483128 (= res!2662282 (not (= (unfocusZipper!2103 lt!2387381) (reg!16690 (regOne!33234 r!7292)))))))

(declare-fun lt!2387404 () Context!11490)

(assert (=> b!6483128 (= lt!2387381 (Cons!65260 lt!2387404 Nil!65260))))

(declare-fun lambda!358666 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2387385 () (InoxSet Context!11490))

(declare-fun flatMap!1866 ((InoxSet Context!11490) Int) (InoxSet Context!11490))

(declare-fun derivationStepZipperUp!1535 (Context!11490 C!32992) (InoxSet Context!11490))

(assert (=> b!6483128 (= (flatMap!1866 lt!2387385 lambda!358666) (derivationStepZipperUp!1535 lt!2387393 (h!71706 s!2326)))))

(declare-datatypes ((Unit!158775 0))(
  ( (Unit!158776) )
))
(declare-fun lt!2387430 () Unit!158775)

(declare-fun lemmaFlatMapOnSingletonSet!1392 ((InoxSet Context!11490) Context!11490 Int) Unit!158775)

(assert (=> b!6483128 (= lt!2387430 (lemmaFlatMapOnSingletonSet!1392 lt!2387385 lt!2387393 lambda!358666))))

(declare-fun lt!2387408 () (InoxSet Context!11490))

(assert (=> b!6483128 (= (flatMap!1866 lt!2387408 lambda!358666) (derivationStepZipperUp!1535 lt!2387404 (h!71706 s!2326)))))

(declare-fun lt!2387418 () Unit!158775)

(assert (=> b!6483128 (= lt!2387418 (lemmaFlatMapOnSingletonSet!1392 lt!2387408 lt!2387404 lambda!358666))))

(declare-fun lt!2387414 () (InoxSet Context!11490))

(assert (=> b!6483128 (= lt!2387414 (derivationStepZipperUp!1535 lt!2387393 (h!71706 s!2326)))))

(declare-fun lt!2387426 () (InoxSet Context!11490))

(assert (=> b!6483128 (= lt!2387426 (derivationStepZipperUp!1535 lt!2387404 (h!71706 s!2326)))))

(assert (=> b!6483128 (= lt!2387385 (store ((as const (Array Context!11490 Bool)) false) lt!2387393 true))))

(assert (=> b!6483128 (= lt!2387408 (store ((as const (Array Context!11490 Bool)) false) lt!2387404 true))))

(declare-fun lt!2387374 () List!65383)

(assert (=> b!6483128 (= lt!2387404 (Context!11491 lt!2387374))))

(assert (=> b!6483128 (= lt!2387374 (Cons!65259 (reg!16690 (regOne!33234 r!7292)) Nil!65259))))

(declare-fun b!6483129 () Bool)

(declare-fun e!3929462 () Bool)

(assert (=> b!6483129 (= e!3929462 e!3929449)))

(declare-fun res!2662268 () Bool)

(assert (=> b!6483129 (=> res!2662268 e!3929449)))

(declare-fun lt!2387379 () Context!11490)

(declare-fun lt!2387382 () Regex!16361)

(assert (=> b!6483129 (= res!2662268 (not (= (unfocusZipper!2103 (Cons!65260 lt!2387379 Nil!65260)) lt!2387382)))))

(assert (=> b!6483129 (= lt!2387382 (Concat!25206 (reg!16690 (regOne!33234 r!7292)) lt!2387425))))

(declare-fun b!6483130 () Bool)

(declare-fun e!3929444 () Bool)

(declare-fun tp!1795776 () Bool)

(declare-fun tp!1795773 () Bool)

(assert (=> b!6483130 (= e!3929444 (and tp!1795776 tp!1795773))))

(declare-fun b!6483131 () Bool)

(declare-fun res!2662272 () Bool)

(declare-fun e!3929455 () Bool)

(assert (=> b!6483131 (=> res!2662272 e!3929455)))

(declare-fun lt!2387377 () tuple2!66680)

(declare-fun matchR!8544 (Regex!16361 List!65382) Bool)

(assert (=> b!6483131 (= res!2662272 (not (matchR!8544 lt!2387424 (_2!36643 lt!2387377))))))

(declare-fun b!6483132 () Bool)

(declare-fun e!3929451 () Bool)

(declare-fun nullable!6354 (Regex!16361) Bool)

(assert (=> b!6483132 (= e!3929451 (nullable!6354 (regOne!33234 (regOne!33234 r!7292))))))

(declare-fun b!6483133 () Bool)

(declare-fun tp!1795772 () Bool)

(assert (=> b!6483133 (= e!3929444 tp!1795772)))

(declare-fun e!3929443 () Bool)

(declare-fun tp!1795775 () Bool)

(declare-fun b!6483134 () Bool)

(declare-fun e!3929466 () Bool)

(declare-fun inv!84149 (Context!11490) Bool)

(assert (=> b!6483134 (= e!3929443 (and (inv!84149 (h!71708 zl!343)) e!3929466 tp!1795775))))

(declare-fun e!3929460 () Bool)

(declare-fun e!3929447 () Bool)

(assert (=> b!6483135 (= e!3929460 e!3929447)))

(declare-fun res!2662273 () Bool)

(assert (=> b!6483135 (=> res!2662273 e!3929447)))

(declare-fun ++!14432 (List!65382 List!65382) List!65382)

(assert (=> b!6483135 (= res!2662273 (not (= (++!14432 (_1!36643 lt!2387429) (_2!36643 lt!2387429)) s!2326)))))

(declare-datatypes ((Option!16252 0))(
  ( (None!16251) (Some!16251 (v!52430 tuple2!66680)) )
))
(declare-fun lt!2387387 () Option!16252)

(declare-fun get!22625 (Option!16252) tuple2!66680)

(assert (=> b!6483135 (= lt!2387429 (get!22625 lt!2387387))))

(declare-fun Exists!3431 (Int) Bool)

(assert (=> b!6483135 (= (Exists!3431 lambda!358667) (Exists!3431 lambda!358668))))

(declare-fun lt!2387396 () Unit!158775)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1968 (Regex!16361 Regex!16361 List!65382) Unit!158775)

(assert (=> b!6483135 (= lt!2387396 (lemmaExistCutMatchRandMatchRSpecEquivalent!1968 lt!2387424 (regTwo!33234 r!7292) s!2326))))

(declare-fun isDefined!12955 (Option!16252) Bool)

(assert (=> b!6483135 (= (isDefined!12955 lt!2387387) (Exists!3431 lambda!358667))))

(declare-fun findConcatSeparation!2666 (Regex!16361 Regex!16361 List!65382 List!65382 List!65382) Option!16252)

(assert (=> b!6483135 (= lt!2387387 (findConcatSeparation!2666 lt!2387424 (regTwo!33234 r!7292) Nil!65258 s!2326 s!2326))))

(declare-fun lt!2387406 () Unit!158775)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2430 (Regex!16361 Regex!16361 List!65382) Unit!158775)

(assert (=> b!6483135 (= lt!2387406 (lemmaFindConcatSeparationEquivalentToExists!2430 lt!2387424 (regTwo!33234 r!7292) s!2326))))

(declare-fun b!6483136 () Bool)

(assert (=> b!6483136 (= e!3929459 e!3929460)))

(declare-fun res!2662260 () Bool)

(assert (=> b!6483136 (=> res!2662260 e!3929460)))

(declare-fun lt!2387392 () Bool)

(assert (=> b!6483136 (= res!2662260 (not lt!2387392))))

(declare-fun e!3929457 () Bool)

(assert (=> b!6483136 e!3929457))

(declare-fun res!2662258 () Bool)

(assert (=> b!6483136 (=> (not res!2662258) (not e!3929457))))

(declare-fun lt!2387372 () Bool)

(declare-fun matchRSpec!3462 (Regex!16361 List!65382) Bool)

(assert (=> b!6483136 (= res!2662258 (= lt!2387372 (matchRSpec!3462 lt!2387382 s!2326)))))

(assert (=> b!6483136 (= lt!2387372 (matchR!8544 lt!2387382 s!2326))))

(declare-fun lt!2387389 () Unit!158775)

(declare-fun mainMatchTheorem!3462 (Regex!16361 List!65382) Unit!158775)

(assert (=> b!6483136 (= lt!2387389 (mainMatchTheorem!3462 lt!2387382 s!2326))))

(declare-fun b!6483137 () Bool)

(declare-fun res!2662261 () Bool)

(declare-fun e!3929450 () Bool)

(assert (=> b!6483137 (=> res!2662261 e!3929450)))

(assert (=> b!6483137 (= res!2662261 e!3929451)))

(declare-fun res!2662259 () Bool)

(assert (=> b!6483137 (=> (not res!2662259) (not e!3929451))))

(get-info :version)

(assert (=> b!6483137 (= res!2662259 ((_ is Concat!25206) (regOne!33234 r!7292)))))

(declare-fun b!6483138 () Bool)

(declare-fun e!3929454 () Bool)

(declare-fun e!3929458 () Bool)

(assert (=> b!6483138 (= e!3929454 e!3929458)))

(declare-fun res!2662265 () Bool)

(assert (=> b!6483138 (=> res!2662265 e!3929458)))

(declare-fun lt!2387407 () (InoxSet Context!11490))

(declare-fun lt!2387373 () (InoxSet Context!11490))

(assert (=> b!6483138 (= res!2662265 (not (= lt!2387407 lt!2387373)))))

(declare-fun lt!2387428 () (InoxSet Context!11490))

(assert (=> b!6483138 (= (flatMap!1866 lt!2387428 lambda!358666) (derivationStepZipperUp!1535 lt!2387379 (h!71706 s!2326)))))

(declare-fun lt!2387409 () Unit!158775)

(assert (=> b!6483138 (= lt!2387409 (lemmaFlatMapOnSingletonSet!1392 lt!2387428 lt!2387379 lambda!358666))))

(declare-fun lt!2387398 () (InoxSet Context!11490))

(assert (=> b!6483138 (= lt!2387398 (derivationStepZipperUp!1535 lt!2387379 (h!71706 s!2326)))))

(declare-fun derivationStepZipper!2327 ((InoxSet Context!11490) C!32992) (InoxSet Context!11490))

(assert (=> b!6483138 (= lt!2387407 (derivationStepZipper!2327 lt!2387428 (h!71706 s!2326)))))

(assert (=> b!6483138 (= lt!2387428 (store ((as const (Array Context!11490 Bool)) false) lt!2387379 true))))

(declare-fun lt!2387401 () List!65383)

(assert (=> b!6483138 (= lt!2387379 (Context!11491 (Cons!65259 (reg!16690 (regOne!33234 r!7292)) lt!2387401)))))

(declare-fun b!6483139 () Bool)

(assert (=> b!6483139 (= e!3929444 tp_is_empty!41975)))

(declare-fun b!6483140 () Bool)

(declare-fun res!2662274 () Bool)

(assert (=> b!6483140 (=> res!2662274 e!3929447)))

(assert (=> b!6483140 (= res!2662274 (not (matchR!8544 lt!2387424 (_1!36643 lt!2387429))))))

(declare-fun b!6483141 () Bool)

(declare-fun e!3929465 () Bool)

(declare-fun lt!2387410 () (InoxSet Context!11490))

(declare-fun matchZipper!2373 ((InoxSet Context!11490) List!65382) Bool)

(assert (=> b!6483141 (= e!3929465 (matchZipper!2373 lt!2387410 (t!379008 s!2326)))))

(declare-fun b!6483142 () Bool)

(declare-fun res!2662250 () Bool)

(assert (=> b!6483142 (=> res!2662250 e!3929458)))

(assert (=> b!6483142 (= res!2662250 (not (= (matchZipper!2373 lt!2387428 s!2326) (matchZipper!2373 lt!2387407 (t!379008 s!2326)))))))

(declare-fun e!3929463 () Bool)

(assert (=> b!6483143 (= e!3929453 e!3929463)))

(declare-fun res!2662269 () Bool)

(assert (=> b!6483143 (=> res!2662269 e!3929463)))

(declare-fun lt!2387417 () Bool)

(assert (=> b!6483143 (= res!2662269 (or (not (= lt!2387392 lt!2387417)) ((_ is Nil!65258) s!2326)))))

(assert (=> b!6483143 (= (Exists!3431 lambda!358664) (Exists!3431 lambda!358665))))

(declare-fun lt!2387415 () Unit!158775)

(assert (=> b!6483143 (= lt!2387415 (lemmaExistCutMatchRandMatchRSpecEquivalent!1968 (regOne!33234 r!7292) (regTwo!33234 r!7292) s!2326))))

(assert (=> b!6483143 (= lt!2387417 (Exists!3431 lambda!358664))))

(assert (=> b!6483143 (= lt!2387417 (isDefined!12955 (findConcatSeparation!2666 (regOne!33234 r!7292) (regTwo!33234 r!7292) Nil!65258 s!2326 s!2326)))))

(declare-fun lt!2387375 () Unit!158775)

(assert (=> b!6483143 (= lt!2387375 (lemmaFindConcatSeparationEquivalentToExists!2430 (regOne!33234 r!7292) (regTwo!33234 r!7292) s!2326))))

(declare-fun b!6483144 () Bool)

(declare-fun res!2662270 () Bool)

(assert (=> b!6483144 (=> res!2662270 e!3929453)))

(assert (=> b!6483144 (= res!2662270 (or ((_ is EmptyExpr!16361) r!7292) ((_ is EmptyLang!16361) r!7292) ((_ is ElementMatch!16361) r!7292) ((_ is Union!16361) r!7292) (not ((_ is Concat!25206) r!7292))))))

(declare-fun b!6483145 () Bool)

(declare-fun res!2662256 () Bool)

(assert (=> b!6483145 (=> res!2662256 e!3929453)))

(declare-fun isEmpty!37446 (List!65384) Bool)

(assert (=> b!6483145 (= res!2662256 (not (isEmpty!37446 (t!379010 zl!343))))))

(declare-fun b!6483146 () Bool)

(declare-fun res!2662264 () Bool)

(assert (=> b!6483146 (=> res!2662264 e!3929458)))

(assert (=> b!6483146 (= res!2662264 (not (= lt!2387411 r!7292)))))

(declare-fun b!6483147 () Bool)

(declare-fun lt!2387420 () Bool)

(assert (=> b!6483147 (= e!3929457 (or (not lt!2387392) lt!2387420))))

(declare-fun setIsEmpty!44163 () Bool)

(declare-fun setRes!44163 () Bool)

(assert (=> setIsEmpty!44163 setRes!44163))

(declare-fun b!6483148 () Bool)

(assert (=> b!6483148 (= e!3929455 lt!2387372)))

(declare-fun lt!2387419 () List!65382)

(assert (=> b!6483148 (matchR!8544 lt!2387382 lt!2387419)))

(declare-fun lt!2387386 () List!65382)

(declare-fun lt!2387422 () Unit!158775)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!324 (Regex!16361 Regex!16361 List!65382 List!65382) Unit!158775)

(assert (=> b!6483148 (= lt!2387422 (lemmaTwoRegexMatchThenConcatMatchesConcatString!324 (reg!16690 (regOne!33234 r!7292)) lt!2387425 (_1!36643 lt!2387377) lt!2387386))))

(declare-fun ++!14433 (List!65383 List!65383) List!65383)

(assert (=> b!6483148 (matchZipper!2373 (store ((as const (Array Context!11490 Bool)) false) (Context!11491 (++!14433 lt!2387374 lt!2387401)) true) lt!2387419)))

(declare-fun lt!2387416 () Unit!158775)

(declare-fun lambda!358672 () Int)

(declare-fun lemmaConcatPreservesForall!340 (List!65383 List!65383 Int) Unit!158775)

(assert (=> b!6483148 (= lt!2387416 (lemmaConcatPreservesForall!340 lt!2387374 lt!2387401 lambda!358672))))

(declare-fun lt!2387395 () Unit!158775)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!162 (Context!11490 Context!11490 List!65382 List!65382) Unit!158775)

(assert (=> b!6483148 (= lt!2387395 (lemmaConcatenateContextMatchesConcatOfStrings!162 lt!2387404 lt!2387393 (_1!36643 lt!2387377) lt!2387386))))

(assert (=> b!6483148 (matchZipper!2373 lt!2387385 lt!2387386)))

(declare-fun lt!2387403 () Unit!158775)

(declare-fun theoremZipperRegexEquiv!827 ((InoxSet Context!11490) List!65384 Regex!16361 List!65382) Unit!158775)

(assert (=> b!6483148 (= lt!2387403 (theoremZipperRegexEquiv!827 lt!2387385 lt!2387378 lt!2387425 lt!2387386))))

(assert (=> b!6483148 (matchZipper!2373 lt!2387408 (_1!36643 lt!2387377))))

(declare-fun lt!2387390 () Unit!158775)

(assert (=> b!6483148 (= lt!2387390 (theoremZipperRegexEquiv!827 lt!2387408 lt!2387381 (reg!16690 (regOne!33234 r!7292)) (_1!36643 lt!2387377)))))

(assert (=> b!6483148 (matchR!8544 lt!2387425 lt!2387386)))

(declare-fun lt!2387394 () Unit!158775)

(assert (=> b!6483148 (= lt!2387394 (lemmaTwoRegexMatchThenConcatMatchesConcatString!324 lt!2387424 (regTwo!33234 r!7292) (_2!36643 lt!2387377) (_2!36643 lt!2387429)))))

(declare-fun lt!2387388 () List!65382)

(assert (=> b!6483148 (matchR!8544 lt!2387424 lt!2387388)))

(declare-fun lt!2387397 () Unit!158775)

(declare-fun lemmaStarApp!138 (Regex!16361 List!65382 List!65382) Unit!158775)

(assert (=> b!6483148 (= lt!2387397 (lemmaStarApp!138 (reg!16690 (regOne!33234 r!7292)) (_1!36643 lt!2387377) (_2!36643 lt!2387377)))))

(declare-fun b!6483149 () Bool)

(assert (=> b!6483149 (= e!3929464 (not e!3929453))))

(declare-fun res!2662281 () Bool)

(assert (=> b!6483149 (=> res!2662281 e!3929453)))

(assert (=> b!6483149 (= res!2662281 (not ((_ is Cons!65260) zl!343)))))

(assert (=> b!6483149 (= lt!2387392 lt!2387420)))

(assert (=> b!6483149 (= lt!2387420 (matchRSpec!3462 r!7292 s!2326))))

(assert (=> b!6483149 (= lt!2387392 (matchR!8544 r!7292 s!2326))))

(declare-fun lt!2387383 () Unit!158775)

(assert (=> b!6483149 (= lt!2387383 (mainMatchTheorem!3462 r!7292 s!2326))))

(declare-fun b!6483150 () Bool)

(declare-fun res!2662266 () Bool)

(assert (=> b!6483150 (=> res!2662266 e!3929447)))

(assert (=> b!6483150 (= res!2662266 (not (matchR!8544 (regTwo!33234 r!7292) (_2!36643 lt!2387429))))))

(declare-fun b!6483151 () Bool)

(declare-fun e!3929452 () Bool)

(declare-fun tp!1795774 () Bool)

(assert (=> b!6483151 (= e!3929452 tp!1795774)))

(declare-fun tp!1795768 () Bool)

(declare-fun setNonEmpty!44163 () Bool)

(declare-fun setElem!44163 () Context!11490)

(assert (=> setNonEmpty!44163 (= setRes!44163 (and tp!1795768 (inv!84149 setElem!44163) e!3929452))))

(declare-fun z!1189 () (InoxSet Context!11490))

(declare-fun setRest!44163 () (InoxSet Context!11490))

(assert (=> setNonEmpty!44163 (= z!1189 ((_ map or) (store ((as const (Array Context!11490 Bool)) false) setElem!44163 true) setRest!44163))))

(declare-fun e!3929445 () Bool)

(assert (=> b!6483152 (= e!3929447 e!3929445)))

(declare-fun res!2662271 () Bool)

(assert (=> b!6483152 (=> res!2662271 e!3929445)))

(assert (=> b!6483152 (= res!2662271 (not (= (_1!36643 lt!2387429) lt!2387388)))))

(assert (=> b!6483152 (= lt!2387388 (++!14432 (_1!36643 lt!2387377) (_2!36643 lt!2387377)))))

(declare-fun lt!2387399 () Option!16252)

(assert (=> b!6483152 (= lt!2387377 (get!22625 lt!2387399))))

(assert (=> b!6483152 (= (Exists!3431 lambda!358669) (Exists!3431 lambda!358671))))

(declare-fun lt!2387391 () Unit!158775)

(assert (=> b!6483152 (= lt!2387391 (lemmaExistCutMatchRandMatchRSpecEquivalent!1968 (reg!16690 (regOne!33234 r!7292)) lt!2387424 (_1!36643 lt!2387429)))))

(assert (=> b!6483152 (= (Exists!3431 lambda!358669) (Exists!3431 lambda!358670))))

(declare-fun lt!2387413 () Unit!158775)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!652 (Regex!16361 List!65382) Unit!158775)

(assert (=> b!6483152 (= lt!2387413 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!652 (reg!16690 (regOne!33234 r!7292)) (_1!36643 lt!2387429)))))

(assert (=> b!6483152 (= (isDefined!12955 lt!2387399) (Exists!3431 lambda!358669))))

(assert (=> b!6483152 (= lt!2387399 (findConcatSeparation!2666 (reg!16690 (regOne!33234 r!7292)) lt!2387424 Nil!65258 (_1!36643 lt!2387429) (_1!36643 lt!2387429)))))

(declare-fun lt!2387400 () Unit!158775)

(assert (=> b!6483152 (= lt!2387400 (lemmaFindConcatSeparationEquivalentToExists!2430 (reg!16690 (regOne!33234 r!7292)) lt!2387424 (_1!36643 lt!2387429)))))

(assert (=> b!6483152 (matchRSpec!3462 lt!2387424 (_1!36643 lt!2387429))))

(declare-fun lt!2387380 () Unit!158775)

(assert (=> b!6483152 (= lt!2387380 (mainMatchTheorem!3462 lt!2387424 (_1!36643 lt!2387429)))))

(declare-fun b!6483153 () Bool)

(declare-fun res!2662278 () Bool)

(assert (=> b!6483153 (=> res!2662278 e!3929453)))

(assert (=> b!6483153 (= res!2662278 (not ((_ is Cons!65259) (exprs!6245 (h!71708 zl!343)))))))

(declare-fun b!6483154 () Bool)

(declare-fun res!2662279 () Bool)

(assert (=> b!6483154 (=> res!2662279 e!3929455)))

(assert (=> b!6483154 (= res!2662279 (not (matchR!8544 (reg!16690 (regOne!33234 r!7292)) (_1!36643 lt!2387377))))))

(declare-fun b!6483155 () Bool)

(declare-fun res!2662263 () Bool)

(assert (=> b!6483155 (=> res!2662263 e!3929453)))

(declare-fun generalisedConcat!1958 (List!65383) Regex!16361)

(assert (=> b!6483155 (= res!2662263 (not (= r!7292 (generalisedConcat!1958 (exprs!6245 (h!71708 zl!343))))))))

(declare-fun b!6483156 () Bool)

(declare-fun e!3929446 () Unit!158775)

(declare-fun Unit!158777 () Unit!158775)

(assert (=> b!6483156 (= e!3929446 Unit!158777)))

(declare-fun b!6483157 () Bool)

(declare-fun tp!1795767 () Bool)

(declare-fun tp!1795770 () Bool)

(assert (=> b!6483157 (= e!3929444 (and tp!1795767 tp!1795770))))

(declare-fun b!6483158 () Bool)

(declare-fun res!2662280 () Bool)

(assert (=> b!6483158 (=> res!2662280 e!3929463)))

(declare-fun isEmpty!37447 (List!65383) Bool)

(assert (=> b!6483158 (= res!2662280 (isEmpty!37447 (t!379009 (exprs!6245 (h!71708 zl!343)))))))

(declare-fun b!6483159 () Bool)

(assert (=> b!6483159 (= e!3929458 e!3929462)))

(declare-fun res!2662275 () Bool)

(assert (=> b!6483159 (=> res!2662275 e!3929462)))

(assert (=> b!6483159 (= res!2662275 (not (= r!7292 lt!2387425)))))

(assert (=> b!6483159 (= lt!2387425 (Concat!25206 lt!2387424 (regTwo!33234 r!7292)))))

(declare-fun b!6483160 () Bool)

(assert (=> b!6483160 (= e!3929450 e!3929454)))

(declare-fun res!2662257 () Bool)

(assert (=> b!6483160 (=> res!2662257 e!3929454)))

(declare-fun lt!2387427 () (InoxSet Context!11490))

(assert (=> b!6483160 (= res!2662257 (not (= lt!2387427 lt!2387373)))))

(declare-fun derivationStepZipperDown!1609 (Regex!16361 Context!11490 C!32992) (InoxSet Context!11490))

(assert (=> b!6483160 (= lt!2387373 (derivationStepZipperDown!1609 (reg!16690 (regOne!33234 r!7292)) lt!2387393 (h!71706 s!2326)))))

(assert (=> b!6483160 (= lt!2387393 (Context!11491 lt!2387401))))

(assert (=> b!6483160 (= lt!2387401 (Cons!65259 lt!2387424 (t!379009 (exprs!6245 (h!71708 zl!343)))))))

(assert (=> b!6483160 (= lt!2387424 (Star!16361 (reg!16690 (regOne!33234 r!7292))))))

(declare-fun b!6483161 () Bool)

(assert (=> b!6483161 (= e!3929445 e!3929455)))

(declare-fun res!2662267 () Bool)

(assert (=> b!6483161 (=> res!2662267 e!3929455)))

(declare-fun lt!2387412 () List!65382)

(assert (=> b!6483161 (= res!2662267 (not (= lt!2387412 s!2326)))))

(assert (=> b!6483161 (= lt!2387412 lt!2387419)))

(assert (=> b!6483161 (= lt!2387419 (++!14432 (_1!36643 lt!2387377) lt!2387386))))

(assert (=> b!6483161 (= lt!2387412 (++!14432 lt!2387388 (_2!36643 lt!2387429)))))

(assert (=> b!6483161 (= lt!2387386 (++!14432 (_2!36643 lt!2387377) (_2!36643 lt!2387429)))))

(declare-fun lt!2387421 () Unit!158775)

(declare-fun lemmaConcatAssociativity!2932 (List!65382 List!65382 List!65382) Unit!158775)

(assert (=> b!6483161 (= lt!2387421 (lemmaConcatAssociativity!2932 (_1!36643 lt!2387377) (_2!36643 lt!2387377) (_2!36643 lt!2387429)))))

(assert (=> b!6483162 (= e!3929463 e!3929450)))

(declare-fun res!2662252 () Bool)

(assert (=> b!6483162 (=> res!2662252 e!3929450)))

(assert (=> b!6483162 (= res!2662252 (or (and ((_ is ElementMatch!16361) (regOne!33234 r!7292)) (= (c!1187689 (regOne!33234 r!7292)) (h!71706 s!2326))) ((_ is Union!16361) (regOne!33234 r!7292))))))

(declare-fun lt!2387384 () Unit!158775)

(assert (=> b!6483162 (= lt!2387384 e!3929446)))

(declare-fun c!1187688 () Bool)

(assert (=> b!6483162 (= c!1187688 (nullable!6354 (h!71707 (exprs!6245 (h!71708 zl!343)))))))

(assert (=> b!6483162 (= (flatMap!1866 z!1189 lambda!358666) (derivationStepZipperUp!1535 (h!71708 zl!343) (h!71706 s!2326)))))

(declare-fun lt!2387423 () Unit!158775)

(assert (=> b!6483162 (= lt!2387423 (lemmaFlatMapOnSingletonSet!1392 z!1189 (h!71708 zl!343) lambda!358666))))

(declare-fun lt!2387402 () Context!11490)

(assert (=> b!6483162 (= lt!2387410 (derivationStepZipperUp!1535 lt!2387402 (h!71706 s!2326)))))

(assert (=> b!6483162 (= lt!2387427 (derivationStepZipperDown!1609 (h!71707 (exprs!6245 (h!71708 zl!343))) lt!2387402 (h!71706 s!2326)))))

(assert (=> b!6483162 (= lt!2387402 (Context!11491 (t!379009 (exprs!6245 (h!71708 zl!343)))))))

(declare-fun lt!2387376 () (InoxSet Context!11490))

(assert (=> b!6483162 (= lt!2387376 (derivationStepZipperUp!1535 (Context!11491 (Cons!65259 (h!71707 (exprs!6245 (h!71708 zl!343))) (t!379009 (exprs!6245 (h!71708 zl!343))))) (h!71706 s!2326)))))

(declare-fun b!6483163 () Bool)

(declare-fun tp!1795771 () Bool)

(assert (=> b!6483163 (= e!3929466 tp!1795771)))

(declare-fun res!2662254 () Bool)

(assert (=> start!637286 (=> (not res!2662254) (not e!3929448))))

(declare-fun validRegex!8097 (Regex!16361) Bool)

(assert (=> start!637286 (= res!2662254 (validRegex!8097 r!7292))))

(assert (=> start!637286 e!3929448))

(assert (=> start!637286 e!3929444))

(declare-fun condSetEmpty!44163 () Bool)

(assert (=> start!637286 (= condSetEmpty!44163 (= z!1189 ((as const (Array Context!11490 Bool)) false)))))

(assert (=> start!637286 setRes!44163))

(assert (=> start!637286 e!3929443))

(assert (=> start!637286 e!3929456))

(declare-fun b!6483164 () Bool)

(declare-fun res!2662255 () Bool)

(assert (=> b!6483164 (=> res!2662255 e!3929450)))

(assert (=> b!6483164 (= res!2662255 (or ((_ is Concat!25206) (regOne!33234 r!7292)) (not ((_ is Star!16361) (regOne!33234 r!7292)))))))

(declare-fun b!6483165 () Bool)

(declare-fun res!2662249 () Bool)

(assert (=> b!6483165 (=> (not res!2662249) (not e!3929448))))

(declare-fun toList!10145 ((InoxSet Context!11490)) List!65384)

(assert (=> b!6483165 (= res!2662249 (= (toList!10145 z!1189) zl!343))))

(declare-fun b!6483166 () Bool)

(declare-fun res!2662277 () Bool)

(assert (=> b!6483166 (=> res!2662277 e!3929447)))

(declare-fun isEmpty!37448 (List!65382) Bool)

(assert (=> b!6483166 (= res!2662277 (isEmpty!37448 (_1!36643 lt!2387429)))))

(declare-fun b!6483167 () Bool)

(declare-fun Unit!158778 () Unit!158775)

(assert (=> b!6483167 (= e!3929446 Unit!158778)))

(declare-fun lt!2387405 () Unit!158775)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1192 ((InoxSet Context!11490) (InoxSet Context!11490) List!65382) Unit!158775)

(assert (=> b!6483167 (= lt!2387405 (lemmaZipperConcatMatchesSameAsBothZippers!1192 lt!2387427 lt!2387410 (t!379008 s!2326)))))

(declare-fun res!2662262 () Bool)

(assert (=> b!6483167 (= res!2662262 (matchZipper!2373 lt!2387427 (t!379008 s!2326)))))

(assert (=> b!6483167 (=> res!2662262 e!3929465)))

(assert (=> b!6483167 (= (matchZipper!2373 ((_ map or) lt!2387427 lt!2387410) (t!379008 s!2326)) e!3929465)))

(assert (= (and start!637286 res!2662254) b!6483165))

(assert (= (and b!6483165 res!2662249) b!6483127))

(assert (= (and b!6483127 res!2662276) b!6483149))

(assert (= (and b!6483149 (not res!2662281)) b!6483145))

(assert (= (and b!6483145 (not res!2662256)) b!6483155))

(assert (= (and b!6483155 (not res!2662263)) b!6483153))

(assert (= (and b!6483153 (not res!2662278)) b!6483125))

(assert (= (and b!6483125 (not res!2662253)) b!6483144))

(assert (= (and b!6483144 (not res!2662270)) b!6483143))

(assert (= (and b!6483143 (not res!2662269)) b!6483158))

(assert (= (and b!6483158 (not res!2662280)) b!6483162))

(assert (= (and b!6483162 c!1187688) b!6483167))

(assert (= (and b!6483162 (not c!1187688)) b!6483156))

(assert (= (and b!6483167 (not res!2662262)) b!6483141))

(assert (= (and b!6483162 (not res!2662252)) b!6483137))

(assert (= (and b!6483137 res!2662259) b!6483132))

(assert (= (and b!6483137 (not res!2662261)) b!6483164))

(assert (= (and b!6483164 (not res!2662255)) b!6483160))

(assert (= (and b!6483160 (not res!2662257)) b!6483138))

(assert (= (and b!6483138 (not res!2662265)) b!6483142))

(assert (= (and b!6483142 (not res!2662250)) b!6483146))

(assert (= (and b!6483146 (not res!2662264)) b!6483159))

(assert (= (and b!6483159 (not res!2662275)) b!6483129))

(assert (= (and b!6483129 (not res!2662268)) b!6483128))

(assert (= (and b!6483128 (not res!2662282)) b!6483126))

(assert (= (and b!6483126 (not res!2662251)) b!6483136))

(assert (= (and b!6483136 res!2662258) b!6483147))

(assert (= (and b!6483136 (not res!2662260)) b!6483135))

(assert (= (and b!6483135 (not res!2662273)) b!6483140))

(assert (= (and b!6483140 (not res!2662274)) b!6483150))

(assert (= (and b!6483150 (not res!2662266)) b!6483166))

(assert (= (and b!6483166 (not res!2662277)) b!6483152))

(assert (= (and b!6483152 (not res!2662271)) b!6483161))

(assert (= (and b!6483161 (not res!2662267)) b!6483154))

(assert (= (and b!6483154 (not res!2662279)) b!6483131))

(assert (= (and b!6483131 (not res!2662272)) b!6483148))

(assert (= (and start!637286 ((_ is ElementMatch!16361) r!7292)) b!6483139))

(assert (= (and start!637286 ((_ is Concat!25206) r!7292)) b!6483157))

(assert (= (and start!637286 ((_ is Star!16361) r!7292)) b!6483133))

(assert (= (and start!637286 ((_ is Union!16361) r!7292)) b!6483130))

(assert (= (and start!637286 condSetEmpty!44163) setIsEmpty!44163))

(assert (= (and start!637286 (not condSetEmpty!44163)) setNonEmpty!44163))

(assert (= setNonEmpty!44163 b!6483151))

(assert (= b!6483134 b!6483163))

(assert (= (and start!637286 ((_ is Cons!65260) zl!343)) b!6483134))

(assert (= (and start!637286 ((_ is Cons!65258) s!2326)) b!6483124))

(declare-fun m!7271340 () Bool)

(assert (=> b!6483167 m!7271340))

(declare-fun m!7271342 () Bool)

(assert (=> b!6483167 m!7271342))

(declare-fun m!7271344 () Bool)

(assert (=> b!6483167 m!7271344))

(declare-fun m!7271346 () Bool)

(assert (=> b!6483138 m!7271346))

(declare-fun m!7271348 () Bool)

(assert (=> b!6483138 m!7271348))

(declare-fun m!7271350 () Bool)

(assert (=> b!6483138 m!7271350))

(declare-fun m!7271352 () Bool)

(assert (=> b!6483138 m!7271352))

(declare-fun m!7271354 () Bool)

(assert (=> b!6483138 m!7271354))

(declare-fun m!7271356 () Bool)

(assert (=> b!6483166 m!7271356))

(declare-fun m!7271358 () Bool)

(assert (=> b!6483143 m!7271358))

(declare-fun m!7271360 () Bool)

(assert (=> b!6483143 m!7271360))

(declare-fun m!7271362 () Bool)

(assert (=> b!6483143 m!7271362))

(assert (=> b!6483143 m!7271362))

(declare-fun m!7271364 () Bool)

(assert (=> b!6483143 m!7271364))

(declare-fun m!7271366 () Bool)

(assert (=> b!6483143 m!7271366))

(assert (=> b!6483143 m!7271358))

(declare-fun m!7271368 () Bool)

(assert (=> b!6483143 m!7271368))

(declare-fun m!7271370 () Bool)

(assert (=> b!6483150 m!7271370))

(declare-fun m!7271372 () Bool)

(assert (=> b!6483132 m!7271372))

(declare-fun m!7271374 () Bool)

(assert (=> b!6483129 m!7271374))

(declare-fun m!7271376 () Bool)

(assert (=> b!6483161 m!7271376))

(declare-fun m!7271378 () Bool)

(assert (=> b!6483161 m!7271378))

(declare-fun m!7271380 () Bool)

(assert (=> b!6483161 m!7271380))

(declare-fun m!7271382 () Bool)

(assert (=> b!6483161 m!7271382))

(declare-fun m!7271384 () Bool)

(assert (=> b!6483160 m!7271384))

(declare-fun m!7271386 () Bool)

(assert (=> b!6483158 m!7271386))

(declare-fun m!7271388 () Bool)

(assert (=> b!6483141 m!7271388))

(declare-fun m!7271390 () Bool)

(assert (=> b!6483131 m!7271390))

(declare-fun m!7271392 () Bool)

(assert (=> b!6483125 m!7271392))

(assert (=> b!6483125 m!7271392))

(declare-fun m!7271394 () Bool)

(assert (=> b!6483125 m!7271394))

(declare-fun m!7271396 () Bool)

(assert (=> b!6483152 m!7271396))

(declare-fun m!7271398 () Bool)

(assert (=> b!6483152 m!7271398))

(declare-fun m!7271400 () Bool)

(assert (=> b!6483152 m!7271400))

(declare-fun m!7271402 () Bool)

(assert (=> b!6483152 m!7271402))

(declare-fun m!7271404 () Bool)

(assert (=> b!6483152 m!7271404))

(declare-fun m!7271406 () Bool)

(assert (=> b!6483152 m!7271406))

(declare-fun m!7271408 () Bool)

(assert (=> b!6483152 m!7271408))

(declare-fun m!7271410 () Bool)

(assert (=> b!6483152 m!7271410))

(declare-fun m!7271412 () Bool)

(assert (=> b!6483152 m!7271412))

(declare-fun m!7271414 () Bool)

(assert (=> b!6483152 m!7271414))

(declare-fun m!7271416 () Bool)

(assert (=> b!6483152 m!7271416))

(declare-fun m!7271418 () Bool)

(assert (=> b!6483152 m!7271418))

(assert (=> b!6483152 m!7271400))

(assert (=> b!6483152 m!7271400))

(declare-fun m!7271420 () Bool)

(assert (=> setNonEmpty!44163 m!7271420))

(declare-fun m!7271422 () Bool)

(assert (=> b!6483134 m!7271422))

(declare-fun m!7271424 () Bool)

(assert (=> start!637286 m!7271424))

(declare-fun m!7271426 () Bool)

(assert (=> b!6483162 m!7271426))

(declare-fun m!7271428 () Bool)

(assert (=> b!6483162 m!7271428))

(declare-fun m!7271430 () Bool)

(assert (=> b!6483162 m!7271430))

(declare-fun m!7271432 () Bool)

(assert (=> b!6483162 m!7271432))

(declare-fun m!7271434 () Bool)

(assert (=> b!6483162 m!7271434))

(declare-fun m!7271436 () Bool)

(assert (=> b!6483162 m!7271436))

(declare-fun m!7271438 () Bool)

(assert (=> b!6483162 m!7271438))

(declare-fun m!7271440 () Bool)

(assert (=> b!6483154 m!7271440))

(declare-fun m!7271442 () Bool)

(assert (=> b!6483128 m!7271442))

(declare-fun m!7271444 () Bool)

(assert (=> b!6483128 m!7271444))

(declare-fun m!7271446 () Bool)

(assert (=> b!6483128 m!7271446))

(declare-fun m!7271448 () Bool)

(assert (=> b!6483128 m!7271448))

(declare-fun m!7271450 () Bool)

(assert (=> b!6483128 m!7271450))

(declare-fun m!7271452 () Bool)

(assert (=> b!6483128 m!7271452))

(declare-fun m!7271454 () Bool)

(assert (=> b!6483128 m!7271454))

(declare-fun m!7271456 () Bool)

(assert (=> b!6483128 m!7271456))

(declare-fun m!7271458 () Bool)

(assert (=> b!6483128 m!7271458))

(declare-fun m!7271460 () Bool)

(assert (=> b!6483127 m!7271460))

(declare-fun m!7271462 () Bool)

(assert (=> b!6483135 m!7271462))

(declare-fun m!7271464 () Bool)

(assert (=> b!6483135 m!7271464))

(declare-fun m!7271466 () Bool)

(assert (=> b!6483135 m!7271466))

(declare-fun m!7271468 () Bool)

(assert (=> b!6483135 m!7271468))

(assert (=> b!6483135 m!7271468))

(declare-fun m!7271470 () Bool)

(assert (=> b!6483135 m!7271470))

(declare-fun m!7271472 () Bool)

(assert (=> b!6483135 m!7271472))

(declare-fun m!7271474 () Bool)

(assert (=> b!6483135 m!7271474))

(declare-fun m!7271476 () Bool)

(assert (=> b!6483135 m!7271476))

(declare-fun m!7271478 () Bool)

(assert (=> b!6483136 m!7271478))

(declare-fun m!7271480 () Bool)

(assert (=> b!6483136 m!7271480))

(declare-fun m!7271482 () Bool)

(assert (=> b!6483136 m!7271482))

(declare-fun m!7271484 () Bool)

(assert (=> b!6483142 m!7271484))

(declare-fun m!7271486 () Bool)

(assert (=> b!6483142 m!7271486))

(declare-fun m!7271488 () Bool)

(assert (=> b!6483155 m!7271488))

(declare-fun m!7271490 () Bool)

(assert (=> b!6483126 m!7271490))

(declare-fun m!7271492 () Bool)

(assert (=> b!6483148 m!7271492))

(declare-fun m!7271494 () Bool)

(assert (=> b!6483148 m!7271494))

(declare-fun m!7271496 () Bool)

(assert (=> b!6483148 m!7271496))

(declare-fun m!7271498 () Bool)

(assert (=> b!6483148 m!7271498))

(declare-fun m!7271500 () Bool)

(assert (=> b!6483148 m!7271500))

(declare-fun m!7271502 () Bool)

(assert (=> b!6483148 m!7271502))

(declare-fun m!7271504 () Bool)

(assert (=> b!6483148 m!7271504))

(declare-fun m!7271506 () Bool)

(assert (=> b!6483148 m!7271506))

(declare-fun m!7271508 () Bool)

(assert (=> b!6483148 m!7271508))

(declare-fun m!7271510 () Bool)

(assert (=> b!6483148 m!7271510))

(assert (=> b!6483148 m!7271498))

(declare-fun m!7271512 () Bool)

(assert (=> b!6483148 m!7271512))

(declare-fun m!7271514 () Bool)

(assert (=> b!6483148 m!7271514))

(declare-fun m!7271516 () Bool)

(assert (=> b!6483148 m!7271516))

(declare-fun m!7271518 () Bool)

(assert (=> b!6483148 m!7271518))

(declare-fun m!7271520 () Bool)

(assert (=> b!6483148 m!7271520))

(declare-fun m!7271522 () Bool)

(assert (=> b!6483165 m!7271522))

(declare-fun m!7271524 () Bool)

(assert (=> b!6483145 m!7271524))

(declare-fun m!7271526 () Bool)

(assert (=> b!6483149 m!7271526))

(declare-fun m!7271528 () Bool)

(assert (=> b!6483149 m!7271528))

(declare-fun m!7271530 () Bool)

(assert (=> b!6483149 m!7271530))

(declare-fun m!7271532 () Bool)

(assert (=> b!6483140 m!7271532))

(check-sat (not b!6483133) (not b!6483130) (not b!6483152) (not b!6483151) (not b!6483127) (not b!6483138) (not b!6483145) (not b!6483154) (not b!6483160) (not b!6483158) (not b!6483165) tp_is_empty!41975 (not b!6483150) (not b!6483125) (not b!6483136) (not b!6483157) (not b!6483134) (not b!6483128) (not setNonEmpty!44163) (not b!6483161) (not b!6483166) (not b!6483140) (not b!6483131) (not b!6483129) (not b!6483148) (not b!6483141) (not b!6483163) (not b!6483135) (not b!6483143) (not b!6483124) (not b!6483162) (not b!6483126) (not b!6483142) (not b!6483149) (not b!6483155) (not start!637286) (not b!6483167) (not b!6483132))
(check-sat)
