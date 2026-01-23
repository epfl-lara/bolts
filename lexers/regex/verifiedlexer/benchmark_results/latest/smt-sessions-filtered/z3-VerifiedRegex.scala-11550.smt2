; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!636306 () Bool)

(assert start!636306)

(declare-fun b!6464472 () Bool)

(assert (=> b!6464472 true))

(assert (=> b!6464472 true))

(declare-fun lambda!357292 () Int)

(declare-fun lambda!357291 () Int)

(assert (=> b!6464472 (not (= lambda!357292 lambda!357291))))

(assert (=> b!6464472 true))

(assert (=> b!6464472 true))

(declare-fun b!6464480 () Bool)

(assert (=> b!6464480 true))

(declare-fun bs!1636347 () Bool)

(declare-fun b!6464476 () Bool)

(assert (= bs!1636347 (and b!6464476 b!6464472)))

(declare-datatypes ((C!32964 0))(
  ( (C!32965 (val!26184 Int)) )
))
(declare-datatypes ((Regex!16347 0))(
  ( (ElementMatch!16347 (c!1183245 C!32964)) (Concat!25192 (regOne!33206 Regex!16347) (regTwo!33206 Regex!16347)) (EmptyExpr!16347) (Star!16347 (reg!16676 Regex!16347)) (EmptyLang!16347) (Union!16347 (regOne!33207 Regex!16347) (regTwo!33207 Regex!16347)) )
))
(declare-fun r!7292 () Regex!16347)

(declare-fun lambda!357294 () Int)

(declare-fun lt!2383491 () Regex!16347)

(assert (=> bs!1636347 (= (= lt!2383491 (regOne!33206 r!7292)) (= lambda!357294 lambda!357291))))

(assert (=> bs!1636347 (not (= lambda!357294 lambda!357292))))

(assert (=> b!6464476 true))

(assert (=> b!6464476 true))

(assert (=> b!6464476 true))

(declare-fun lambda!357295 () Int)

(assert (=> bs!1636347 (not (= lambda!357295 lambda!357291))))

(assert (=> bs!1636347 (= (= lt!2383491 (regOne!33206 r!7292)) (= lambda!357295 lambda!357292))))

(assert (=> b!6464476 (not (= lambda!357295 lambda!357294))))

(assert (=> b!6464476 true))

(assert (=> b!6464476 true))

(assert (=> b!6464476 true))

(declare-fun bs!1636348 () Bool)

(declare-fun b!6464445 () Bool)

(assert (= bs!1636348 (and b!6464445 b!6464472)))

(declare-datatypes ((List!65340 0))(
  ( (Nil!65216) (Cons!65216 (h!71664 C!32964) (t!378962 List!65340)) )
))
(declare-fun s!2326 () List!65340)

(declare-fun lambda!357296 () Int)

(declare-datatypes ((tuple2!66652 0))(
  ( (tuple2!66653 (_1!36629 List!65340) (_2!36629 List!65340)) )
))
(declare-fun lt!2383480 () tuple2!66652)

(assert (=> bs!1636348 (= (and (= (_1!36629 lt!2383480) s!2326) (= (reg!16676 (regOne!33206 r!7292)) (regOne!33206 r!7292)) (= lt!2383491 (regTwo!33206 r!7292))) (= lambda!357296 lambda!357291))))

(assert (=> bs!1636348 (not (= lambda!357296 lambda!357292))))

(declare-fun bs!1636349 () Bool)

(assert (= bs!1636349 (and b!6464445 b!6464476)))

(assert (=> bs!1636349 (= (and (= (_1!36629 lt!2383480) s!2326) (= (reg!16676 (regOne!33206 r!7292)) lt!2383491) (= lt!2383491 (regTwo!33206 r!7292))) (= lambda!357296 lambda!357294))))

(assert (=> bs!1636349 (not (= lambda!357296 lambda!357295))))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(declare-fun lambda!357297 () Int)

(assert (=> bs!1636349 (not (= lambda!357297 lambda!357294))))

(assert (=> bs!1636348 (not (= lambda!357297 lambda!357292))))

(assert (=> b!6464445 (not (= lambda!357297 lambda!357296))))

(assert (=> bs!1636349 (not (= lambda!357297 lambda!357295))))

(assert (=> bs!1636348 (not (= lambda!357297 lambda!357291))))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(declare-fun lambda!357298 () Int)

(assert (=> bs!1636349 (not (= lambda!357298 lambda!357294))))

(assert (=> bs!1636348 (= (and (= (_1!36629 lt!2383480) s!2326) (= (reg!16676 (regOne!33206 r!7292)) (regOne!33206 r!7292)) (= lt!2383491 (regTwo!33206 r!7292))) (= lambda!357298 lambda!357292))))

(assert (=> b!6464445 (not (= lambda!357298 lambda!357297))))

(assert (=> b!6464445 (not (= lambda!357298 lambda!357296))))

(assert (=> bs!1636349 (= (and (= (_1!36629 lt!2383480) s!2326) (= (reg!16676 (regOne!33206 r!7292)) lt!2383491) (= lt!2383491 (regTwo!33206 r!7292))) (= lambda!357298 lambda!357295))))

(assert (=> bs!1636348 (not (= lambda!357298 lambda!357291))))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(assert (=> b!6464445 true))

(declare-fun b!6464440 () Bool)

(declare-fun res!2654718 () Bool)

(declare-fun e!3919274 () Bool)

(assert (=> b!6464440 (=> res!2654718 e!3919274)))

(declare-datatypes ((List!65341 0))(
  ( (Nil!65217) (Cons!65217 (h!71665 Regex!16347) (t!378963 List!65341)) )
))
(declare-datatypes ((Context!11462 0))(
  ( (Context!11463 (exprs!6231 List!65341)) )
))
(declare-datatypes ((List!65342 0))(
  ( (Nil!65218) (Cons!65218 (h!71666 Context!11462) (t!378964 List!65342)) )
))
(declare-fun zl!343 () List!65342)

(declare-fun generalisedConcat!1944 (List!65341) Regex!16347)

(assert (=> b!6464440 (= res!2654718 (not (= r!7292 (generalisedConcat!1944 (exprs!6231 (h!71666 zl!343))))))))

(declare-fun b!6464441 () Bool)

(declare-fun res!2654720 () Bool)

(declare-fun e!3919277 () Bool)

(assert (=> b!6464441 (=> res!2654720 e!3919277)))

(declare-fun lt!2383498 () Context!11462)

(declare-fun lt!2383503 () Regex!16347)

(declare-fun unfocusZipper!2089 (List!65342) Regex!16347)

(assert (=> b!6464441 (= res!2654720 (not (= (unfocusZipper!2089 (Cons!65218 lt!2383498 Nil!65218)) lt!2383503)))))

(declare-fun b!6464442 () Bool)

(declare-fun e!3919283 () Bool)

(declare-fun e!3919288 () Bool)

(assert (=> b!6464442 (= e!3919283 e!3919288)))

(declare-fun res!2654727 () Bool)

(assert (=> b!6464442 (=> res!2654727 e!3919288)))

(assert (=> b!6464442 (= res!2654727 (not (= r!7292 lt!2383503)))))

(assert (=> b!6464442 (= lt!2383503 (Concat!25192 lt!2383491 (regTwo!33206 r!7292)))))

(declare-fun b!6464443 () Bool)

(declare-fun e!3919285 () Bool)

(declare-fun e!3919281 () Bool)

(assert (=> b!6464443 (= e!3919285 e!3919281)))

(declare-fun res!2654695 () Bool)

(assert (=> b!6464443 (=> res!2654695 e!3919281)))

(declare-fun lt!2383518 () List!65340)

(assert (=> b!6464443 (= res!2654695 (not (= lt!2383518 s!2326)))))

(declare-fun lt!2383493 () tuple2!66652)

(declare-fun lt!2383487 () List!65340)

(declare-fun ++!14415 (List!65340 List!65340) List!65340)

(assert (=> b!6464443 (= lt!2383518 (++!14415 (_1!36629 lt!2383493) lt!2383487))))

(declare-fun lt!2383517 () List!65340)

(assert (=> b!6464443 (= lt!2383518 (++!14415 lt!2383517 (_2!36629 lt!2383480)))))

(assert (=> b!6464443 (= lt!2383487 (++!14415 (_2!36629 lt!2383493) (_2!36629 lt!2383480)))))

(declare-datatypes ((Unit!158719 0))(
  ( (Unit!158720) )
))
(declare-fun lt!2383477 () Unit!158719)

(declare-fun lemmaConcatAssociativity!2918 (List!65340 List!65340 List!65340) Unit!158719)

(assert (=> b!6464443 (= lt!2383477 (lemmaConcatAssociativity!2918 (_1!36629 lt!2383493) (_2!36629 lt!2383493) (_2!36629 lt!2383480)))))

(declare-fun b!6464444 () Bool)

(declare-fun res!2654697 () Bool)

(declare-fun e!3919271 () Bool)

(assert (=> b!6464444 (=> res!2654697 e!3919271)))

(declare-fun isEmpty!37394 (List!65340) Bool)

(assert (=> b!6464444 (= res!2654697 (isEmpty!37394 (_1!36629 lt!2383480)))))

(assert (=> b!6464445 (= e!3919271 e!3919285)))

(declare-fun res!2654706 () Bool)

(assert (=> b!6464445 (=> res!2654706 e!3919285)))

(assert (=> b!6464445 (= res!2654706 (not (= (_1!36629 lt!2383480) lt!2383517)))))

(assert (=> b!6464445 (= lt!2383517 (++!14415 (_1!36629 lt!2383493) (_2!36629 lt!2383493)))))

(declare-datatypes ((Option!16238 0))(
  ( (None!16237) (Some!16237 (v!52414 tuple2!66652)) )
))
(declare-fun lt!2383524 () Option!16238)

(declare-fun get!22604 (Option!16238) tuple2!66652)

(assert (=> b!6464445 (= lt!2383493 (get!22604 lt!2383524))))

(declare-fun Exists!3417 (Int) Bool)

(assert (=> b!6464445 (= (Exists!3417 lambda!357296) (Exists!3417 lambda!357298))))

(declare-fun lt!2383509 () Unit!158719)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1954 (Regex!16347 Regex!16347 List!65340) Unit!158719)

(assert (=> b!6464445 (= lt!2383509 (lemmaExistCutMatchRandMatchRSpecEquivalent!1954 (reg!16676 (regOne!33206 r!7292)) lt!2383491 (_1!36629 lt!2383480)))))

(assert (=> b!6464445 (= (Exists!3417 lambda!357296) (Exists!3417 lambda!357297))))

(declare-fun lt!2383523 () Unit!158719)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!638 (Regex!16347 List!65340) Unit!158719)

(assert (=> b!6464445 (= lt!2383523 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!638 (reg!16676 (regOne!33206 r!7292)) (_1!36629 lt!2383480)))))

(declare-fun isDefined!12941 (Option!16238) Bool)

(assert (=> b!6464445 (= (isDefined!12941 lt!2383524) (Exists!3417 lambda!357296))))

(declare-fun findConcatSeparation!2652 (Regex!16347 Regex!16347 List!65340 List!65340 List!65340) Option!16238)

(assert (=> b!6464445 (= lt!2383524 (findConcatSeparation!2652 (reg!16676 (regOne!33206 r!7292)) lt!2383491 Nil!65216 (_1!36629 lt!2383480) (_1!36629 lt!2383480)))))

(declare-fun lt!2383499 () Unit!158719)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2416 (Regex!16347 Regex!16347 List!65340) Unit!158719)

(assert (=> b!6464445 (= lt!2383499 (lemmaFindConcatSeparationEquivalentToExists!2416 (reg!16676 (regOne!33206 r!7292)) lt!2383491 (_1!36629 lt!2383480)))))

(declare-fun matchRSpec!3448 (Regex!16347 List!65340) Bool)

(assert (=> b!6464445 (matchRSpec!3448 lt!2383491 (_1!36629 lt!2383480))))

(declare-fun lt!2383513 () Unit!158719)

(declare-fun mainMatchTheorem!3448 (Regex!16347 List!65340) Unit!158719)

(assert (=> b!6464445 (= lt!2383513 (mainMatchTheorem!3448 lt!2383491 (_1!36629 lt!2383480)))))

(declare-fun setIsEmpty!44051 () Bool)

(declare-fun setRes!44051 () Bool)

(assert (=> setIsEmpty!44051 setRes!44051))

(declare-fun b!6464446 () Bool)

(declare-fun res!2654704 () Bool)

(declare-fun e!3919269 () Bool)

(assert (=> b!6464446 (=> res!2654704 e!3919269)))

(declare-fun isEmpty!37395 (List!65341) Bool)

(assert (=> b!6464446 (= res!2654704 (isEmpty!37395 (t!378963 (exprs!6231 (h!71666 zl!343)))))))

(declare-fun b!6464447 () Bool)

(declare-fun res!2654713 () Bool)

(declare-fun e!3919289 () Bool)

(assert (=> b!6464447 (=> (not res!2654713) (not e!3919289))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11462))

(declare-fun toList!10131 ((InoxSet Context!11462)) List!65342)

(assert (=> b!6464447 (= res!2654713 (= (toList!10131 z!1189) zl!343))))

(declare-fun b!6464448 () Bool)

(declare-fun res!2654707 () Bool)

(assert (=> b!6464448 (=> res!2654707 e!3919283)))

(declare-fun lt!2383505 () Regex!16347)

(assert (=> b!6464448 (= res!2654707 (not (= lt!2383505 r!7292)))))

(declare-fun b!6464449 () Bool)

(declare-fun res!2654725 () Bool)

(assert (=> b!6464449 (=> res!2654725 e!3919281)))

(declare-fun matchR!8530 (Regex!16347 List!65340) Bool)

(assert (=> b!6464449 (= res!2654725 (not (matchR!8530 lt!2383491 (_2!36629 lt!2383493))))))

(declare-fun b!6464450 () Bool)

(declare-fun validRegex!8083 (Regex!16347) Bool)

(assert (=> b!6464450 (= e!3919281 (validRegex!8083 lt!2383503))))

(declare-fun lt!2383483 () (InoxSet Context!11462))

(declare-fun matchZipper!2359 ((InoxSet Context!11462) List!65340) Bool)

(assert (=> b!6464450 (matchZipper!2359 lt!2383483 (_1!36629 lt!2383493))))

(declare-fun lt!2383500 () List!65342)

(declare-fun lt!2383494 () Unit!158719)

(declare-fun theoremZipperRegexEquiv!813 ((InoxSet Context!11462) List!65342 Regex!16347 List!65340) Unit!158719)

(assert (=> b!6464450 (= lt!2383494 (theoremZipperRegexEquiv!813 lt!2383483 lt!2383500 (reg!16676 (regOne!33206 r!7292)) (_1!36629 lt!2383493)))))

(assert (=> b!6464450 (matchR!8530 lt!2383503 lt!2383487)))

(declare-fun lt!2383489 () Unit!158719)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!310 (Regex!16347 Regex!16347 List!65340 List!65340) Unit!158719)

(assert (=> b!6464450 (= lt!2383489 (lemmaTwoRegexMatchThenConcatMatchesConcatString!310 lt!2383491 (regTwo!33206 r!7292) (_2!36629 lt!2383493) (_2!36629 lt!2383480)))))

(assert (=> b!6464450 (matchR!8530 lt!2383491 lt!2383517)))

(declare-fun lt!2383496 () Unit!158719)

(declare-fun lemmaStarApp!124 (Regex!16347 List!65340 List!65340) Unit!158719)

(assert (=> b!6464450 (= lt!2383496 (lemmaStarApp!124 (reg!16676 (regOne!33206 r!7292)) (_1!36629 lt!2383493) (_2!36629 lt!2383493)))))

(declare-fun b!6464451 () Bool)

(declare-fun e!3919268 () Bool)

(declare-fun tp!1792624 () Bool)

(declare-fun tp!1792630 () Bool)

(assert (=> b!6464451 (= e!3919268 (and tp!1792624 tp!1792630))))

(declare-fun b!6464452 () Bool)

(declare-fun res!2654722 () Bool)

(assert (=> b!6464452 (=> res!2654722 e!3919274)))

(declare-fun isEmpty!37396 (List!65342) Bool)

(assert (=> b!6464452 (= res!2654722 (not (isEmpty!37396 (t!378964 zl!343))))))

(declare-fun b!6464453 () Bool)

(declare-fun e!3919287 () Bool)

(assert (=> b!6464453 (= e!3919277 e!3919287)))

(declare-fun res!2654703 () Bool)

(assert (=> b!6464453 (=> res!2654703 e!3919287)))

(declare-fun lt!2383504 () Bool)

(assert (=> b!6464453 (= res!2654703 (not lt!2383504))))

(declare-fun e!3919279 () Bool)

(assert (=> b!6464453 e!3919279))

(declare-fun res!2654717 () Bool)

(assert (=> b!6464453 (=> (not res!2654717) (not e!3919279))))

(declare-fun lt!2383521 () Regex!16347)

(assert (=> b!6464453 (= res!2654717 (= (matchR!8530 lt!2383521 s!2326) (matchRSpec!3448 lt!2383521 s!2326)))))

(declare-fun lt!2383482 () Unit!158719)

(assert (=> b!6464453 (= lt!2383482 (mainMatchTheorem!3448 lt!2383521 s!2326))))

(declare-fun b!6464454 () Bool)

(declare-fun e!3919273 () Bool)

(assert (=> b!6464454 (= e!3919289 e!3919273)))

(declare-fun res!2654716 () Bool)

(assert (=> b!6464454 (=> (not res!2654716) (not e!3919273))))

(assert (=> b!6464454 (= res!2654716 (= r!7292 lt!2383505))))

(assert (=> b!6464454 (= lt!2383505 (unfocusZipper!2089 zl!343))))

(declare-fun b!6464455 () Bool)

(assert (=> b!6464455 (= e!3919273 (not e!3919274))))

(declare-fun res!2654724 () Bool)

(assert (=> b!6464455 (=> res!2654724 e!3919274)))

(get-info :version)

(assert (=> b!6464455 (= res!2654724 (not ((_ is Cons!65218) zl!343)))))

(declare-fun lt!2383492 () Bool)

(assert (=> b!6464455 (= lt!2383504 lt!2383492)))

(assert (=> b!6464455 (= lt!2383492 (matchRSpec!3448 r!7292 s!2326))))

(assert (=> b!6464455 (= lt!2383504 (matchR!8530 r!7292 s!2326))))

(declare-fun lt!2383507 () Unit!158719)

(assert (=> b!6464455 (= lt!2383507 (mainMatchTheorem!3448 r!7292 s!2326))))

(declare-fun tp!1792631 () Bool)

(declare-fun e!3919276 () Bool)

(declare-fun e!3919278 () Bool)

(declare-fun b!6464456 () Bool)

(declare-fun inv!84114 (Context!11462) Bool)

(assert (=> b!6464456 (= e!3919278 (and (inv!84114 (h!71666 zl!343)) e!3919276 tp!1792631))))

(declare-fun b!6464457 () Bool)

(declare-fun e!3919280 () Bool)

(declare-fun tp_is_empty!41947 () Bool)

(declare-fun tp!1792632 () Bool)

(assert (=> b!6464457 (= e!3919280 (and tp_is_empty!41947 tp!1792632))))

(declare-fun b!6464458 () Bool)

(declare-fun tp!1792628 () Bool)

(assert (=> b!6464458 (= e!3919276 tp!1792628)))

(declare-fun res!2654710 () Bool)

(assert (=> start!636306 (=> (not res!2654710) (not e!3919289))))

(assert (=> start!636306 (= res!2654710 (validRegex!8083 r!7292))))

(assert (=> start!636306 e!3919289))

(assert (=> start!636306 e!3919268))

(declare-fun condSetEmpty!44051 () Bool)

(assert (=> start!636306 (= condSetEmpty!44051 (= z!1189 ((as const (Array Context!11462 Bool)) false)))))

(assert (=> start!636306 setRes!44051))

(assert (=> start!636306 e!3919278))

(assert (=> start!636306 e!3919280))

(declare-fun b!6464459 () Bool)

(declare-fun res!2654696 () Bool)

(assert (=> b!6464459 (=> res!2654696 e!3919281)))

(assert (=> b!6464459 (= res!2654696 (not (matchR!8530 (reg!16676 (regOne!33206 r!7292)) (_1!36629 lt!2383493))))))

(declare-fun b!6464460 () Bool)

(assert (=> b!6464460 (= e!3919268 tp_is_empty!41947)))

(declare-fun b!6464461 () Bool)

(declare-fun e!3919284 () Unit!158719)

(declare-fun Unit!158721 () Unit!158719)

(assert (=> b!6464461 (= e!3919284 Unit!158721)))

(declare-fun b!6464462 () Bool)

(declare-fun e!3919282 () Bool)

(assert (=> b!6464462 (= e!3919282 e!3919277)))

(declare-fun res!2654701 () Bool)

(assert (=> b!6464462 (=> res!2654701 e!3919277)))

(assert (=> b!6464462 (= res!2654701 (not (= (unfocusZipper!2089 lt!2383500) (reg!16676 (regOne!33206 r!7292)))))))

(declare-fun lt!2383488 () Context!11462)

(assert (=> b!6464462 (= lt!2383500 (Cons!65218 lt!2383488 Nil!65218))))

(declare-fun lambda!357293 () Int)

(declare-fun lt!2383506 () (InoxSet Context!11462))

(declare-fun flatMap!1852 ((InoxSet Context!11462) Int) (InoxSet Context!11462))

(declare-fun derivationStepZipperUp!1521 (Context!11462 C!32964) (InoxSet Context!11462))

(assert (=> b!6464462 (= (flatMap!1852 lt!2383506 lambda!357293) (derivationStepZipperUp!1521 lt!2383498 (h!71664 s!2326)))))

(declare-fun lt!2383511 () Unit!158719)

(declare-fun lemmaFlatMapOnSingletonSet!1378 ((InoxSet Context!11462) Context!11462 Int) Unit!158719)

(assert (=> b!6464462 (= lt!2383511 (lemmaFlatMapOnSingletonSet!1378 lt!2383506 lt!2383498 lambda!357293))))

(assert (=> b!6464462 (= (flatMap!1852 lt!2383483 lambda!357293) (derivationStepZipperUp!1521 lt!2383488 (h!71664 s!2326)))))

(declare-fun lt!2383484 () Unit!158719)

(assert (=> b!6464462 (= lt!2383484 (lemmaFlatMapOnSingletonSet!1378 lt!2383483 lt!2383488 lambda!357293))))

(declare-fun lt!2383502 () (InoxSet Context!11462))

(assert (=> b!6464462 (= lt!2383502 (derivationStepZipperUp!1521 lt!2383498 (h!71664 s!2326)))))

(declare-fun lt!2383520 () (InoxSet Context!11462))

(assert (=> b!6464462 (= lt!2383520 (derivationStepZipperUp!1521 lt!2383488 (h!71664 s!2326)))))

(assert (=> b!6464462 (= lt!2383506 (store ((as const (Array Context!11462 Bool)) false) lt!2383498 true))))

(assert (=> b!6464462 (= lt!2383483 (store ((as const (Array Context!11462 Bool)) false) lt!2383488 true))))

(assert (=> b!6464462 (= lt!2383488 (Context!11463 (Cons!65217 (reg!16676 (regOne!33206 r!7292)) Nil!65217)))))

(declare-fun b!6464463 () Bool)

(declare-fun res!2654728 () Bool)

(assert (=> b!6464463 (=> res!2654728 e!3919271)))

(assert (=> b!6464463 (= res!2654728 (not (matchR!8530 lt!2383491 (_1!36629 lt!2383480))))))

(declare-fun b!6464464 () Bool)

(declare-fun tp!1792629 () Bool)

(assert (=> b!6464464 (= e!3919268 tp!1792629)))

(declare-fun b!6464465 () Bool)

(declare-fun e!3919272 () Bool)

(declare-fun e!3919290 () Bool)

(assert (=> b!6464465 (= e!3919272 e!3919290)))

(declare-fun res!2654698 () Bool)

(assert (=> b!6464465 (=> res!2654698 e!3919290)))

(declare-fun lt!2383486 () (InoxSet Context!11462))

(declare-fun lt!2383490 () (InoxSet Context!11462))

(assert (=> b!6464465 (= res!2654698 (not (= lt!2383486 lt!2383490)))))

(declare-fun derivationStepZipperDown!1595 (Regex!16347 Context!11462 C!32964) (InoxSet Context!11462))

(assert (=> b!6464465 (= lt!2383490 (derivationStepZipperDown!1595 (reg!16676 (regOne!33206 r!7292)) lt!2383498 (h!71664 s!2326)))))

(declare-fun lt!2383478 () List!65341)

(assert (=> b!6464465 (= lt!2383498 (Context!11463 lt!2383478))))

(assert (=> b!6464465 (= lt!2383478 (Cons!65217 lt!2383491 (t!378963 (exprs!6231 (h!71666 zl!343)))))))

(assert (=> b!6464465 (= lt!2383491 (Star!16347 (reg!16676 (regOne!33206 r!7292))))))

(declare-fun b!6464466 () Bool)

(declare-fun res!2654711 () Bool)

(assert (=> b!6464466 (=> res!2654711 e!3919274)))

(assert (=> b!6464466 (= res!2654711 (or ((_ is EmptyExpr!16347) r!7292) ((_ is EmptyLang!16347) r!7292) ((_ is ElementMatch!16347) r!7292) ((_ is Union!16347) r!7292) (not ((_ is Concat!25192) r!7292))))))

(declare-fun b!6464467 () Bool)

(declare-fun e!3919275 () Bool)

(declare-fun lt!2383508 () (InoxSet Context!11462))

(assert (=> b!6464467 (= e!3919275 (matchZipper!2359 lt!2383508 (t!378962 s!2326)))))

(declare-fun b!6464468 () Bool)

(declare-fun res!2654723 () Bool)

(assert (=> b!6464468 (=> res!2654723 e!3919283)))

(declare-fun lt!2383514 () (InoxSet Context!11462))

(declare-fun lt!2383497 () (InoxSet Context!11462))

(assert (=> b!6464468 (= res!2654723 (not (= (matchZipper!2359 lt!2383497 s!2326) (matchZipper!2359 lt!2383514 (t!378962 s!2326)))))))

(declare-fun b!6464469 () Bool)

(assert (=> b!6464469 (= e!3919290 e!3919283)))

(declare-fun res!2654721 () Bool)

(assert (=> b!6464469 (=> res!2654721 e!3919283)))

(assert (=> b!6464469 (= res!2654721 (not (= lt!2383514 lt!2383490)))))

(declare-fun lt!2383515 () Context!11462)

(assert (=> b!6464469 (= (flatMap!1852 lt!2383497 lambda!357293) (derivationStepZipperUp!1521 lt!2383515 (h!71664 s!2326)))))

(declare-fun lt!2383485 () Unit!158719)

(assert (=> b!6464469 (= lt!2383485 (lemmaFlatMapOnSingletonSet!1378 lt!2383497 lt!2383515 lambda!357293))))

(declare-fun lt!2383481 () (InoxSet Context!11462))

(assert (=> b!6464469 (= lt!2383481 (derivationStepZipperUp!1521 lt!2383515 (h!71664 s!2326)))))

(declare-fun derivationStepZipper!2313 ((InoxSet Context!11462) C!32964) (InoxSet Context!11462))

(assert (=> b!6464469 (= lt!2383514 (derivationStepZipper!2313 lt!2383497 (h!71664 s!2326)))))

(assert (=> b!6464469 (= lt!2383497 (store ((as const (Array Context!11462 Bool)) false) lt!2383515 true))))

(assert (=> b!6464469 (= lt!2383515 (Context!11463 (Cons!65217 (reg!16676 (regOne!33206 r!7292)) lt!2383478)))))

(declare-fun b!6464470 () Bool)

(assert (=> b!6464470 (= e!3919279 (or (not lt!2383504) lt!2383492))))

(declare-fun b!6464471 () Bool)

(declare-fun e!3919286 () Bool)

(declare-fun nullable!6340 (Regex!16347) Bool)

(assert (=> b!6464471 (= e!3919286 (nullable!6340 (regOne!33206 (regOne!33206 r!7292))))))

(assert (=> b!6464472 (= e!3919274 e!3919269)))

(declare-fun res!2654699 () Bool)

(assert (=> b!6464472 (=> res!2654699 e!3919269)))

(declare-fun lt!2383525 () Bool)

(assert (=> b!6464472 (= res!2654699 (or (not (= lt!2383504 lt!2383525)) ((_ is Nil!65216) s!2326)))))

(assert (=> b!6464472 (= (Exists!3417 lambda!357291) (Exists!3417 lambda!357292))))

(declare-fun lt!2383522 () Unit!158719)

(assert (=> b!6464472 (= lt!2383522 (lemmaExistCutMatchRandMatchRSpecEquivalent!1954 (regOne!33206 r!7292) (regTwo!33206 r!7292) s!2326))))

(assert (=> b!6464472 (= lt!2383525 (Exists!3417 lambda!357291))))

(assert (=> b!6464472 (= lt!2383525 (isDefined!12941 (findConcatSeparation!2652 (regOne!33206 r!7292) (regTwo!33206 r!7292) Nil!65216 s!2326 s!2326)))))

(declare-fun lt!2383510 () Unit!158719)

(assert (=> b!6464472 (= lt!2383510 (lemmaFindConcatSeparationEquivalentToExists!2416 (regOne!33206 r!7292) (regTwo!33206 r!7292) s!2326))))

(declare-fun b!6464473 () Bool)

(declare-fun res!2654719 () Bool)

(assert (=> b!6464473 (=> res!2654719 e!3919274)))

(declare-fun generalisedUnion!2191 (List!65341) Regex!16347)

(declare-fun unfocusZipperList!1768 (List!65342) List!65341)

(assert (=> b!6464473 (= res!2654719 (not (= r!7292 (generalisedUnion!2191 (unfocusZipperList!1768 zl!343)))))))

(declare-fun b!6464474 () Bool)

(declare-fun res!2654712 () Bool)

(assert (=> b!6464474 (=> res!2654712 e!3919271)))

(assert (=> b!6464474 (= res!2654712 (not (matchR!8530 (regTwo!33206 r!7292) (_2!36629 lt!2383480))))))

(declare-fun b!6464475 () Bool)

(declare-fun Unit!158722 () Unit!158719)

(assert (=> b!6464475 (= e!3919284 Unit!158722)))

(declare-fun lt!2383519 () Unit!158719)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1178 ((InoxSet Context!11462) (InoxSet Context!11462) List!65340) Unit!158719)

(assert (=> b!6464475 (= lt!2383519 (lemmaZipperConcatMatchesSameAsBothZippers!1178 lt!2383486 lt!2383508 (t!378962 s!2326)))))

(declare-fun res!2654714 () Bool)

(assert (=> b!6464475 (= res!2654714 (matchZipper!2359 lt!2383486 (t!378962 s!2326)))))

(assert (=> b!6464475 (=> res!2654714 e!3919275)))

(assert (=> b!6464475 (= (matchZipper!2359 ((_ map or) lt!2383486 lt!2383508) (t!378962 s!2326)) e!3919275)))

(assert (=> b!6464476 (= e!3919287 e!3919271)))

(declare-fun res!2654726 () Bool)

(assert (=> b!6464476 (=> res!2654726 e!3919271)))

(assert (=> b!6464476 (= res!2654726 (not (= (++!14415 (_1!36629 lt!2383480) (_2!36629 lt!2383480)) s!2326)))))

(declare-fun lt!2383479 () Option!16238)

(assert (=> b!6464476 (= lt!2383480 (get!22604 lt!2383479))))

(assert (=> b!6464476 (= (Exists!3417 lambda!357294) (Exists!3417 lambda!357295))))

(declare-fun lt!2383501 () Unit!158719)

(assert (=> b!6464476 (= lt!2383501 (lemmaExistCutMatchRandMatchRSpecEquivalent!1954 lt!2383491 (regTwo!33206 r!7292) s!2326))))

(assert (=> b!6464476 (= (isDefined!12941 lt!2383479) (Exists!3417 lambda!357294))))

(assert (=> b!6464476 (= lt!2383479 (findConcatSeparation!2652 lt!2383491 (regTwo!33206 r!7292) Nil!65216 s!2326 s!2326))))

(declare-fun lt!2383495 () Unit!158719)

(assert (=> b!6464476 (= lt!2383495 (lemmaFindConcatSeparationEquivalentToExists!2416 lt!2383491 (regTwo!33206 r!7292) s!2326))))

(declare-fun b!6464477 () Bool)

(declare-fun res!2654702 () Bool)

(assert (=> b!6464477 (=> res!2654702 e!3919272)))

(assert (=> b!6464477 (= res!2654702 e!3919286)))

(declare-fun res!2654709 () Bool)

(assert (=> b!6464477 (=> (not res!2654709) (not e!3919286))))

(assert (=> b!6464477 (= res!2654709 ((_ is Concat!25192) (regOne!33206 r!7292)))))

(declare-fun setNonEmpty!44051 () Bool)

(declare-fun e!3919270 () Bool)

(declare-fun setElem!44051 () Context!11462)

(declare-fun tp!1792625 () Bool)

(assert (=> setNonEmpty!44051 (= setRes!44051 (and tp!1792625 (inv!84114 setElem!44051) e!3919270))))

(declare-fun setRest!44051 () (InoxSet Context!11462))

(assert (=> setNonEmpty!44051 (= z!1189 ((_ map or) (store ((as const (Array Context!11462 Bool)) false) setElem!44051 true) setRest!44051))))

(declare-fun b!6464478 () Bool)

(declare-fun tp!1792627 () Bool)

(assert (=> b!6464478 (= e!3919270 tp!1792627)))

(declare-fun b!6464479 () Bool)

(declare-fun res!2654715 () Bool)

(assert (=> b!6464479 (=> res!2654715 e!3919274)))

(assert (=> b!6464479 (= res!2654715 (not ((_ is Cons!65217) (exprs!6231 (h!71666 zl!343)))))))

(assert (=> b!6464480 (= e!3919269 e!3919272)))

(declare-fun res!2654700 () Bool)

(assert (=> b!6464480 (=> res!2654700 e!3919272)))

(assert (=> b!6464480 (= res!2654700 (or (and ((_ is ElementMatch!16347) (regOne!33206 r!7292)) (= (c!1183245 (regOne!33206 r!7292)) (h!71664 s!2326))) ((_ is Union!16347) (regOne!33206 r!7292))))))

(declare-fun lt!2383512 () Unit!158719)

(assert (=> b!6464480 (= lt!2383512 e!3919284)))

(declare-fun c!1183244 () Bool)

(assert (=> b!6464480 (= c!1183244 (nullable!6340 (h!71665 (exprs!6231 (h!71666 zl!343)))))))

(assert (=> b!6464480 (= (flatMap!1852 z!1189 lambda!357293) (derivationStepZipperUp!1521 (h!71666 zl!343) (h!71664 s!2326)))))

(declare-fun lt!2383476 () Unit!158719)

(assert (=> b!6464480 (= lt!2383476 (lemmaFlatMapOnSingletonSet!1378 z!1189 (h!71666 zl!343) lambda!357293))))

(declare-fun lt!2383526 () Context!11462)

(assert (=> b!6464480 (= lt!2383508 (derivationStepZipperUp!1521 lt!2383526 (h!71664 s!2326)))))

(assert (=> b!6464480 (= lt!2383486 (derivationStepZipperDown!1595 (h!71665 (exprs!6231 (h!71666 zl!343))) lt!2383526 (h!71664 s!2326)))))

(assert (=> b!6464480 (= lt!2383526 (Context!11463 (t!378963 (exprs!6231 (h!71666 zl!343)))))))

(declare-fun lt!2383516 () (InoxSet Context!11462))

(assert (=> b!6464480 (= lt!2383516 (derivationStepZipperUp!1521 (Context!11463 (Cons!65217 (h!71665 (exprs!6231 (h!71666 zl!343))) (t!378963 (exprs!6231 (h!71666 zl!343))))) (h!71664 s!2326)))))

(declare-fun b!6464481 () Bool)

(declare-fun tp!1792623 () Bool)

(declare-fun tp!1792626 () Bool)

(assert (=> b!6464481 (= e!3919268 (and tp!1792623 tp!1792626))))

(declare-fun b!6464482 () Bool)

(declare-fun res!2654708 () Bool)

(assert (=> b!6464482 (=> res!2654708 e!3919272)))

(assert (=> b!6464482 (= res!2654708 (or ((_ is Concat!25192) (regOne!33206 r!7292)) (not ((_ is Star!16347) (regOne!33206 r!7292)))))))

(declare-fun b!6464483 () Bool)

(assert (=> b!6464483 (= e!3919288 e!3919282)))

(declare-fun res!2654705 () Bool)

(assert (=> b!6464483 (=> res!2654705 e!3919282)))

(assert (=> b!6464483 (= res!2654705 (not (= (unfocusZipper!2089 (Cons!65218 lt!2383515 Nil!65218)) lt!2383521)))))

(assert (=> b!6464483 (= lt!2383521 (Concat!25192 (reg!16676 (regOne!33206 r!7292)) lt!2383503))))

(assert (= (and start!636306 res!2654710) b!6464447))

(assert (= (and b!6464447 res!2654713) b!6464454))

(assert (= (and b!6464454 res!2654716) b!6464455))

(assert (= (and b!6464455 (not res!2654724)) b!6464452))

(assert (= (and b!6464452 (not res!2654722)) b!6464440))

(assert (= (and b!6464440 (not res!2654718)) b!6464479))

(assert (= (and b!6464479 (not res!2654715)) b!6464473))

(assert (= (and b!6464473 (not res!2654719)) b!6464466))

(assert (= (and b!6464466 (not res!2654711)) b!6464472))

(assert (= (and b!6464472 (not res!2654699)) b!6464446))

(assert (= (and b!6464446 (not res!2654704)) b!6464480))

(assert (= (and b!6464480 c!1183244) b!6464475))

(assert (= (and b!6464480 (not c!1183244)) b!6464461))

(assert (= (and b!6464475 (not res!2654714)) b!6464467))

(assert (= (and b!6464480 (not res!2654700)) b!6464477))

(assert (= (and b!6464477 res!2654709) b!6464471))

(assert (= (and b!6464477 (not res!2654702)) b!6464482))

(assert (= (and b!6464482 (not res!2654708)) b!6464465))

(assert (= (and b!6464465 (not res!2654698)) b!6464469))

(assert (= (and b!6464469 (not res!2654721)) b!6464468))

(assert (= (and b!6464468 (not res!2654723)) b!6464448))

(assert (= (and b!6464448 (not res!2654707)) b!6464442))

(assert (= (and b!6464442 (not res!2654727)) b!6464483))

(assert (= (and b!6464483 (not res!2654705)) b!6464462))

(assert (= (and b!6464462 (not res!2654701)) b!6464441))

(assert (= (and b!6464441 (not res!2654720)) b!6464453))

(assert (= (and b!6464453 res!2654717) b!6464470))

(assert (= (and b!6464453 (not res!2654703)) b!6464476))

(assert (= (and b!6464476 (not res!2654726)) b!6464463))

(assert (= (and b!6464463 (not res!2654728)) b!6464474))

(assert (= (and b!6464474 (not res!2654712)) b!6464444))

(assert (= (and b!6464444 (not res!2654697)) b!6464445))

(assert (= (and b!6464445 (not res!2654706)) b!6464443))

(assert (= (and b!6464443 (not res!2654695)) b!6464459))

(assert (= (and b!6464459 (not res!2654696)) b!6464449))

(assert (= (and b!6464449 (not res!2654725)) b!6464450))

(assert (= (and start!636306 ((_ is ElementMatch!16347) r!7292)) b!6464460))

(assert (= (and start!636306 ((_ is Concat!25192) r!7292)) b!6464451))

(assert (= (and start!636306 ((_ is Star!16347) r!7292)) b!6464464))

(assert (= (and start!636306 ((_ is Union!16347) r!7292)) b!6464481))

(assert (= (and start!636306 condSetEmpty!44051) setIsEmpty!44051))

(assert (= (and start!636306 (not condSetEmpty!44051)) setNonEmpty!44051))

(assert (= setNonEmpty!44051 b!6464478))

(assert (= b!6464456 b!6464458))

(assert (= (and start!636306 ((_ is Cons!65218) zl!343)) b!6464456))

(assert (= (and start!636306 ((_ is Cons!65216) s!2326)) b!6464457))

(declare-fun m!7253436 () Bool)

(assert (=> b!6464471 m!7253436))

(declare-fun m!7253438 () Bool)

(assert (=> b!6464483 m!7253438))

(declare-fun m!7253440 () Bool)

(assert (=> b!6464463 m!7253440))

(declare-fun m!7253442 () Bool)

(assert (=> b!6464447 m!7253442))

(declare-fun m!7253444 () Bool)

(assert (=> b!6464440 m!7253444))

(declare-fun m!7253446 () Bool)

(assert (=> b!6464449 m!7253446))

(declare-fun m!7253448 () Bool)

(assert (=> b!6464467 m!7253448))

(declare-fun m!7253450 () Bool)

(assert (=> b!6464476 m!7253450))

(declare-fun m!7253452 () Bool)

(assert (=> b!6464476 m!7253452))

(declare-fun m!7253454 () Bool)

(assert (=> b!6464476 m!7253454))

(declare-fun m!7253456 () Bool)

(assert (=> b!6464476 m!7253456))

(declare-fun m!7253458 () Bool)

(assert (=> b!6464476 m!7253458))

(declare-fun m!7253460 () Bool)

(assert (=> b!6464476 m!7253460))

(declare-fun m!7253462 () Bool)

(assert (=> b!6464476 m!7253462))

(assert (=> b!6464476 m!7253456))

(declare-fun m!7253464 () Bool)

(assert (=> b!6464476 m!7253464))

(declare-fun m!7253466 () Bool)

(assert (=> b!6464472 m!7253466))

(declare-fun m!7253468 () Bool)

(assert (=> b!6464472 m!7253468))

(declare-fun m!7253470 () Bool)

(assert (=> b!6464472 m!7253470))

(assert (=> b!6464472 m!7253470))

(declare-fun m!7253472 () Bool)

(assert (=> b!6464472 m!7253472))

(declare-fun m!7253474 () Bool)

(assert (=> b!6464472 m!7253474))

(assert (=> b!6464472 m!7253466))

(declare-fun m!7253476 () Bool)

(assert (=> b!6464472 m!7253476))

(declare-fun m!7253478 () Bool)

(assert (=> start!636306 m!7253478))

(declare-fun m!7253480 () Bool)

(assert (=> b!6464459 m!7253480))

(declare-fun m!7253482 () Bool)

(assert (=> b!6464474 m!7253482))

(declare-fun m!7253484 () Bool)

(assert (=> b!6464445 m!7253484))

(declare-fun m!7253486 () Bool)

(assert (=> b!6464445 m!7253486))

(declare-fun m!7253488 () Bool)

(assert (=> b!6464445 m!7253488))

(declare-fun m!7253490 () Bool)

(assert (=> b!6464445 m!7253490))

(declare-fun m!7253492 () Bool)

(assert (=> b!6464445 m!7253492))

(declare-fun m!7253494 () Bool)

(assert (=> b!6464445 m!7253494))

(assert (=> b!6464445 m!7253488))

(declare-fun m!7253496 () Bool)

(assert (=> b!6464445 m!7253496))

(declare-fun m!7253498 () Bool)

(assert (=> b!6464445 m!7253498))

(declare-fun m!7253500 () Bool)

(assert (=> b!6464445 m!7253500))

(declare-fun m!7253502 () Bool)

(assert (=> b!6464445 m!7253502))

(declare-fun m!7253504 () Bool)

(assert (=> b!6464445 m!7253504))

(declare-fun m!7253506 () Bool)

(assert (=> b!6464445 m!7253506))

(assert (=> b!6464445 m!7253488))

(declare-fun m!7253508 () Bool)

(assert (=> b!6464480 m!7253508))

(declare-fun m!7253510 () Bool)

(assert (=> b!6464480 m!7253510))

(declare-fun m!7253512 () Bool)

(assert (=> b!6464480 m!7253512))

(declare-fun m!7253514 () Bool)

(assert (=> b!6464480 m!7253514))

(declare-fun m!7253516 () Bool)

(assert (=> b!6464480 m!7253516))

(declare-fun m!7253518 () Bool)

(assert (=> b!6464480 m!7253518))

(declare-fun m!7253520 () Bool)

(assert (=> b!6464480 m!7253520))

(declare-fun m!7253522 () Bool)

(assert (=> b!6464465 m!7253522))

(declare-fun m!7253524 () Bool)

(assert (=> b!6464455 m!7253524))

(declare-fun m!7253526 () Bool)

(assert (=> b!6464455 m!7253526))

(declare-fun m!7253528 () Bool)

(assert (=> b!6464455 m!7253528))

(declare-fun m!7253530 () Bool)

(assert (=> b!6464450 m!7253530))

(declare-fun m!7253532 () Bool)

(assert (=> b!6464450 m!7253532))

(declare-fun m!7253534 () Bool)

(assert (=> b!6464450 m!7253534))

(declare-fun m!7253536 () Bool)

(assert (=> b!6464450 m!7253536))

(declare-fun m!7253538 () Bool)

(assert (=> b!6464450 m!7253538))

(declare-fun m!7253540 () Bool)

(assert (=> b!6464450 m!7253540))

(declare-fun m!7253542 () Bool)

(assert (=> b!6464450 m!7253542))

(declare-fun m!7253544 () Bool)

(assert (=> setNonEmpty!44051 m!7253544))

(declare-fun m!7253546 () Bool)

(assert (=> b!6464443 m!7253546))

(declare-fun m!7253548 () Bool)

(assert (=> b!6464443 m!7253548))

(declare-fun m!7253550 () Bool)

(assert (=> b!6464443 m!7253550))

(declare-fun m!7253552 () Bool)

(assert (=> b!6464443 m!7253552))

(declare-fun m!7253554 () Bool)

(assert (=> b!6464454 m!7253554))

(declare-fun m!7253556 () Bool)

(assert (=> b!6464462 m!7253556))

(declare-fun m!7253558 () Bool)

(assert (=> b!6464462 m!7253558))

(declare-fun m!7253560 () Bool)

(assert (=> b!6464462 m!7253560))

(declare-fun m!7253562 () Bool)

(assert (=> b!6464462 m!7253562))

(declare-fun m!7253564 () Bool)

(assert (=> b!6464462 m!7253564))

(declare-fun m!7253566 () Bool)

(assert (=> b!6464462 m!7253566))

(declare-fun m!7253568 () Bool)

(assert (=> b!6464462 m!7253568))

(declare-fun m!7253570 () Bool)

(assert (=> b!6464462 m!7253570))

(declare-fun m!7253572 () Bool)

(assert (=> b!6464462 m!7253572))

(declare-fun m!7253574 () Bool)

(assert (=> b!6464444 m!7253574))

(declare-fun m!7253576 () Bool)

(assert (=> b!6464446 m!7253576))

(declare-fun m!7253578 () Bool)

(assert (=> b!6464473 m!7253578))

(assert (=> b!6464473 m!7253578))

(declare-fun m!7253580 () Bool)

(assert (=> b!6464473 m!7253580))

(declare-fun m!7253582 () Bool)

(assert (=> b!6464453 m!7253582))

(declare-fun m!7253584 () Bool)

(assert (=> b!6464453 m!7253584))

(declare-fun m!7253586 () Bool)

(assert (=> b!6464453 m!7253586))

(declare-fun m!7253588 () Bool)

(assert (=> b!6464452 m!7253588))

(declare-fun m!7253590 () Bool)

(assert (=> b!6464468 m!7253590))

(declare-fun m!7253592 () Bool)

(assert (=> b!6464468 m!7253592))

(declare-fun m!7253594 () Bool)

(assert (=> b!6464469 m!7253594))

(declare-fun m!7253596 () Bool)

(assert (=> b!6464469 m!7253596))

(declare-fun m!7253598 () Bool)

(assert (=> b!6464469 m!7253598))

(declare-fun m!7253600 () Bool)

(assert (=> b!6464469 m!7253600))

(declare-fun m!7253602 () Bool)

(assert (=> b!6464469 m!7253602))

(declare-fun m!7253604 () Bool)

(assert (=> b!6464441 m!7253604))

(declare-fun m!7253606 () Bool)

(assert (=> b!6464475 m!7253606))

(declare-fun m!7253608 () Bool)

(assert (=> b!6464475 m!7253608))

(declare-fun m!7253610 () Bool)

(assert (=> b!6464475 m!7253610))

(declare-fun m!7253612 () Bool)

(assert (=> b!6464456 m!7253612))

(check-sat (not b!6464453) (not b!6464473) (not b!6464446) (not b!6464441) (not b!6464476) (not b!6464467) (not b!6464455) tp_is_empty!41947 (not b!6464481) (not b!6464465) (not b!6464459) (not b!6464443) (not b!6464474) (not b!6464464) (not b!6464471) (not b!6464468) (not b!6464458) (not setNonEmpty!44051) (not b!6464444) (not b!6464456) (not b!6464454) (not b!6464463) (not b!6464452) (not b!6464447) (not b!6464449) (not b!6464451) (not b!6464480) (not b!6464469) (not b!6464462) (not b!6464483) (not b!6464475) (not b!6464457) (not b!6464445) (not b!6464450) (not start!636306) (not b!6464472) (not b!6464478) (not b!6464440))
(check-sat)
