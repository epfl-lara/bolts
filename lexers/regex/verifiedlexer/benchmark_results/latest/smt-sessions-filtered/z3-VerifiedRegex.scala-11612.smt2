; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645658 () Bool)

(assert start!645658)

(declare-fun b!6603482 () Bool)

(assert (=> b!6603482 true))

(assert (=> b!6603482 true))

(declare-fun lambda!368230 () Int)

(declare-fun lambda!368229 () Int)

(assert (=> b!6603482 (not (= lambda!368230 lambda!368229))))

(assert (=> b!6603482 true))

(assert (=> b!6603482 true))

(declare-fun b!6603471 () Bool)

(assert (=> b!6603471 true))

(declare-fun bs!1692775 () Bool)

(declare-fun b!6603463 () Bool)

(assert (= bs!1692775 (and b!6603463 b!6603482)))

(declare-datatypes ((C!33212 0))(
  ( (C!33213 (val!26308 Int)) )
))
(declare-datatypes ((Regex!16471 0))(
  ( (ElementMatch!16471 (c!1216570 C!33212)) (Concat!25316 (regOne!33454 Regex!16471) (regTwo!33454 Regex!16471)) (EmptyExpr!16471) (Star!16471 (reg!16800 Regex!16471)) (EmptyLang!16471) (Union!16471 (regOne!33455 Regex!16471) (regTwo!33455 Regex!16471)) )
))
(declare-fun r!7292 () Regex!16471)

(declare-datatypes ((List!65712 0))(
  ( (Nil!65588) (Cons!65588 (h!72036 C!33212) (t!379364 List!65712)) )
))
(declare-fun s!2326 () List!65712)

(declare-fun lt!2414262 () Regex!16471)

(declare-fun lambda!368232 () Int)

(assert (=> bs!1692775 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 r!7292)) (= lt!2414262 (regTwo!33454 r!7292))) (= lambda!368232 lambda!368229))))

(assert (=> bs!1692775 (not (= lambda!368232 lambda!368230))))

(assert (=> b!6603463 true))

(assert (=> b!6603463 true))

(declare-fun lambda!368233 () Int)

(assert (=> bs!1692775 (not (= lambda!368233 lambda!368229))))

(assert (=> bs!1692775 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 r!7292)) (= lt!2414262 (regTwo!33454 r!7292))) (= lambda!368233 lambda!368230))))

(assert (=> b!6603463 (not (= lambda!368233 lambda!368232))))

(assert (=> b!6603463 true))

(assert (=> b!6603463 true))

(declare-fun b!6603451 () Bool)

(declare-fun e!3995552 () Bool)

(declare-fun e!3995529 () Bool)

(assert (=> b!6603451 (= e!3995552 e!3995529)))

(declare-fun res!2707738 () Bool)

(assert (=> b!6603451 (=> res!2707738 e!3995529)))

(declare-fun lt!2414252 () Bool)

(assert (=> b!6603451 (= res!2707738 lt!2414252)))

(declare-fun lt!2414284 () Regex!16471)

(declare-fun matchR!8654 (Regex!16471 List!65712) Bool)

(declare-fun matchRSpec!3572 (Regex!16471 List!65712) Bool)

(assert (=> b!6603451 (= (matchR!8654 lt!2414284 s!2326) (matchRSpec!3572 lt!2414284 s!2326))))

(declare-datatypes ((Unit!159219 0))(
  ( (Unit!159220) )
))
(declare-fun lt!2414276 () Unit!159219)

(declare-fun mainMatchTheorem!3572 (Regex!16471 List!65712) Unit!159219)

(assert (=> b!6603451 (= lt!2414276 (mainMatchTheorem!3572 lt!2414284 s!2326))))

(declare-fun b!6603452 () Bool)

(declare-fun res!2707736 () Bool)

(declare-fun e!3995533 () Bool)

(assert (=> b!6603452 (=> res!2707736 e!3995533)))

(declare-datatypes ((List!65713 0))(
  ( (Nil!65589) (Cons!65589 (h!72037 Regex!16471) (t!379365 List!65713)) )
))
(declare-datatypes ((Context!11710 0))(
  ( (Context!11711 (exprs!6355 List!65713)) )
))
(declare-datatypes ((List!65714 0))(
  ( (Nil!65590) (Cons!65590 (h!72038 Context!11710) (t!379366 List!65714)) )
))
(declare-fun zl!343 () List!65714)

(declare-fun generalisedUnion!2315 (List!65713) Regex!16471)

(declare-fun unfocusZipperList!1892 (List!65714) List!65713)

(assert (=> b!6603452 (= res!2707736 (not (= r!7292 (generalisedUnion!2315 (unfocusZipperList!1892 zl!343)))))))

(declare-fun b!6603453 () Bool)

(declare-fun e!3995544 () Bool)

(declare-fun tp!1820130 () Bool)

(declare-fun tp!1820133 () Bool)

(assert (=> b!6603453 (= e!3995544 (and tp!1820130 tp!1820133))))

(declare-fun b!6603454 () Bool)

(declare-fun res!2707730 () Bool)

(declare-fun e!3995550 () Bool)

(assert (=> b!6603454 (=> res!2707730 e!3995550)))

(declare-fun lt!2414277 () Regex!16471)

(assert (=> b!6603454 (= res!2707730 (not (= lt!2414277 r!7292)))))

(declare-fun b!6603455 () Bool)

(declare-fun res!2707707 () Bool)

(assert (=> b!6603455 (=> res!2707707 e!3995533)))

(get-info :version)

(assert (=> b!6603455 (= res!2707707 (or ((_ is EmptyExpr!16471) r!7292) ((_ is EmptyLang!16471) r!7292) ((_ is ElementMatch!16471) r!7292) ((_ is Union!16471) r!7292) (not ((_ is Concat!25316) r!7292))))))

(declare-fun b!6603456 () Bool)

(declare-fun e!3995542 () Bool)

(declare-fun e!3995549 () Bool)

(assert (=> b!6603456 (= e!3995542 e!3995549)))

(declare-fun res!2707739 () Bool)

(assert (=> b!6603456 (=> res!2707739 e!3995549)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2414249 () (InoxSet Context!11710))

(declare-fun lt!2414273 () (InoxSet Context!11710))

(declare-fun derivationStepZipper!2437 ((InoxSet Context!11710) C!33212) (InoxSet Context!11710))

(assert (=> b!6603456 (= res!2707739 (not (= lt!2414249 (derivationStepZipper!2437 lt!2414273 (h!72036 s!2326)))))))

(declare-fun lambda!368231 () Int)

(declare-fun lt!2414258 () Context!11710)

(declare-fun flatMap!1976 ((InoxSet Context!11710) Int) (InoxSet Context!11710))

(declare-fun derivationStepZipperUp!1645 (Context!11710 C!33212) (InoxSet Context!11710))

(assert (=> b!6603456 (= (flatMap!1976 lt!2414273 lambda!368231) (derivationStepZipperUp!1645 lt!2414258 (h!72036 s!2326)))))

(declare-fun lt!2414281 () Unit!159219)

(declare-fun lemmaFlatMapOnSingletonSet!1502 ((InoxSet Context!11710) Context!11710 Int) Unit!159219)

(assert (=> b!6603456 (= lt!2414281 (lemmaFlatMapOnSingletonSet!1502 lt!2414273 lt!2414258 lambda!368231))))

(assert (=> b!6603456 (= lt!2414273 (store ((as const (Array Context!11710 Bool)) false) lt!2414258 true))))

(declare-fun b!6603457 () Bool)

(declare-fun res!2707709 () Bool)

(declare-fun e!3995551 () Bool)

(assert (=> b!6603457 (=> res!2707709 e!3995551)))

(assert (=> b!6603457 (= res!2707709 (or ((_ is Concat!25316) (regOne!33454 r!7292)) (not ((_ is Star!16471) (regOne!33454 r!7292)))))))

(declare-fun b!6603458 () Bool)

(declare-fun e!3995545 () Bool)

(declare-fun nullable!6464 (Regex!16471) Bool)

(assert (=> b!6603458 (= e!3995545 (not (nullable!6464 (reg!16800 (regOne!33454 r!7292)))))))

(declare-fun b!6603459 () Bool)

(declare-fun e!3995548 () Bool)

(declare-fun matchZipper!2483 ((InoxSet Context!11710) List!65712) Bool)

(assert (=> b!6603459 (= e!3995548 (not (matchZipper!2483 lt!2414249 (t!379364 s!2326))))))

(declare-fun b!6603460 () Bool)

(declare-fun e!3995540 () Bool)

(declare-fun e!3995530 () Bool)

(assert (=> b!6603460 (= e!3995540 e!3995530)))

(declare-fun res!2707741 () Bool)

(assert (=> b!6603460 (=> (not res!2707741) (not e!3995530))))

(assert (=> b!6603460 (= res!2707741 (= r!7292 lt!2414277))))

(declare-fun unfocusZipper!2213 (List!65714) Regex!16471)

(assert (=> b!6603460 (= lt!2414277 (unfocusZipper!2213 zl!343))))

(declare-fun setIsEmpty!45096 () Bool)

(declare-fun setRes!45096 () Bool)

(assert (=> setIsEmpty!45096 setRes!45096))

(declare-fun b!6603461 () Bool)

(declare-fun e!3995539 () Bool)

(assert (=> b!6603461 (= e!3995549 e!3995539)))

(declare-fun res!2707731 () Bool)

(assert (=> b!6603461 (=> res!2707731 e!3995539)))

(declare-fun lt!2414270 () Regex!16471)

(declare-fun regexDepth!368 (Regex!16471) Int)

(assert (=> b!6603461 (= res!2707731 (< (regexDepth!368 r!7292) (regexDepth!368 lt!2414270)))))

(declare-fun generalisedConcat!2068 (List!65713) Regex!16471)

(assert (=> b!6603461 (= lt!2414270 (generalisedConcat!2068 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6603462 () Bool)

(assert (=> b!6603462 (= e!3995529 e!3995542)))

(declare-fun res!2707740 () Bool)

(assert (=> b!6603462 (=> res!2707740 e!3995542)))

(assert (=> b!6603462 (= res!2707740 e!3995548)))

(declare-fun res!2707716 () Bool)

(assert (=> b!6603462 (=> (not res!2707716) (not e!3995548))))

(declare-fun lt!2414266 () Bool)

(assert (=> b!6603462 (= res!2707716 (not lt!2414266))))

(declare-fun lt!2414274 () (InoxSet Context!11710))

(assert (=> b!6603462 (= lt!2414266 (matchZipper!2483 lt!2414274 (t!379364 s!2326)))))

(declare-fun e!3995536 () Bool)

(assert (=> b!6603463 (= e!3995536 e!3995545)))

(declare-fun res!2707720 () Bool)

(assert (=> b!6603463 (=> res!2707720 e!3995545)))

(declare-fun validRegex!8207 (Regex!16471) Bool)

(assert (=> b!6603463 (= res!2707720 (not (validRegex!8207 (reg!16800 (regOne!33454 r!7292)))))))

(declare-fun Exists!3541 (Int) Bool)

(assert (=> b!6603463 (= (Exists!3541 lambda!368232) (Exists!3541 lambda!368233))))

(declare-fun lt!2414290 () Unit!159219)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2078 (Regex!16471 Regex!16471 List!65712) Unit!159219)

(assert (=> b!6603463 (= lt!2414290 (lemmaExistCutMatchRandMatchRSpecEquivalent!2078 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588))))

(declare-datatypes ((tuple2!66900 0))(
  ( (tuple2!66901 (_1!36753 List!65712) (_2!36753 List!65712)) )
))
(declare-datatypes ((Option!16362 0))(
  ( (None!16361) (Some!16361 (v!52550 tuple2!66900)) )
))
(declare-fun isDefined!13065 (Option!16362) Bool)

(declare-fun findConcatSeparation!2776 (Regex!16471 Regex!16471 List!65712 List!65712 List!65712) Option!16362)

(assert (=> b!6603463 (= (isDefined!13065 (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588 Nil!65588 Nil!65588)) (Exists!3541 lambda!368232))))

(declare-fun lt!2414269 () Unit!159219)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2540 (Regex!16471 Regex!16471 List!65712) Unit!159219)

(assert (=> b!6603463 (= lt!2414269 (lemmaFindConcatSeparationEquivalentToExists!2540 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588))))

(assert (=> b!6603463 (= (matchR!8654 lt!2414262 Nil!65588) (matchRSpec!3572 lt!2414262 Nil!65588))))

(declare-fun lt!2414267 () Unit!159219)

(assert (=> b!6603463 (= lt!2414267 (mainMatchTheorem!3572 lt!2414262 Nil!65588))))

(declare-fun b!6603464 () Bool)

(declare-fun res!2707708 () Bool)

(assert (=> b!6603464 (=> res!2707708 e!3995529)))

(declare-fun lt!2414279 () Bool)

(assert (=> b!6603464 (= res!2707708 (not lt!2414279))))

(declare-fun b!6603465 () Bool)

(declare-fun e!3995538 () Bool)

(declare-fun e!3995532 () Bool)

(assert (=> b!6603465 (= e!3995538 e!3995532)))

(declare-fun res!2707733 () Bool)

(assert (=> b!6603465 (=> res!2707733 e!3995532)))

(declare-fun lt!2414288 () Context!11710)

(assert (=> b!6603465 (= res!2707733 (not (= (unfocusZipper!2213 (Cons!65590 lt!2414288 Nil!65590)) lt!2414284)))))

(declare-fun lt!2414254 () Regex!16471)

(assert (=> b!6603465 (= lt!2414284 (Concat!25316 (reg!16800 (regOne!33454 r!7292)) lt!2414254))))

(declare-fun b!6603466 () Bool)

(declare-fun e!3995553 () Bool)

(assert (=> b!6603466 (= e!3995551 e!3995553)))

(declare-fun res!2707742 () Bool)

(assert (=> b!6603466 (=> res!2707742 e!3995553)))

(declare-fun lt!2414268 () (InoxSet Context!11710))

(assert (=> b!6603466 (= res!2707742 (not (= lt!2414274 lt!2414268)))))

(declare-fun lt!2414256 () Context!11710)

(declare-fun derivationStepZipperDown!1719 (Regex!16471 Context!11710 C!33212) (InoxSet Context!11710))

(assert (=> b!6603466 (= lt!2414268 (derivationStepZipperDown!1719 (reg!16800 (regOne!33454 r!7292)) lt!2414256 (h!72036 s!2326)))))

(declare-fun lt!2414257 () List!65713)

(assert (=> b!6603466 (= lt!2414256 (Context!11711 lt!2414257))))

(assert (=> b!6603466 (= lt!2414257 (Cons!65589 lt!2414262 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(assert (=> b!6603466 (= lt!2414262 (Star!16471 (reg!16800 (regOne!33454 r!7292))))))

(declare-fun b!6603467 () Bool)

(declare-fun e!3995541 () Bool)

(assert (=> b!6603467 (= e!3995541 e!3995536)))

(declare-fun res!2707732 () Bool)

(assert (=> b!6603467 (=> res!2707732 e!3995536)))

(assert (=> b!6603467 (= res!2707732 (not (matchR!8654 (regTwo!33454 r!7292) s!2326)))))

(assert (=> b!6603467 (= (matchR!8654 lt!2414270 s!2326) (matchZipper!2483 lt!2414273 s!2326))))

(declare-fun lt!2414271 () List!65714)

(declare-fun lt!2414289 () Unit!159219)

(declare-fun theoremZipperRegexEquiv!893 ((InoxSet Context!11710) List!65714 Regex!16471 List!65712) Unit!159219)

(assert (=> b!6603467 (= lt!2414289 (theoremZipperRegexEquiv!893 lt!2414273 lt!2414271 lt!2414270 s!2326))))

(declare-fun b!6603468 () Bool)

(declare-fun res!2707723 () Bool)

(assert (=> b!6603468 (=> res!2707723 e!3995551)))

(declare-fun e!3995543 () Bool)

(assert (=> b!6603468 (= res!2707723 e!3995543)))

(declare-fun res!2707714 () Bool)

(assert (=> b!6603468 (=> (not res!2707714) (not e!3995543))))

(assert (=> b!6603468 (= res!2707714 ((_ is Concat!25316) (regOne!33454 r!7292)))))

(declare-fun b!6603469 () Bool)

(declare-fun tp!1820127 () Bool)

(assert (=> b!6603469 (= e!3995544 tp!1820127)))

(declare-fun b!6603470 () Bool)

(declare-fun res!2707713 () Bool)

(assert (=> b!6603470 (=> res!2707713 e!3995533)))

(assert (=> b!6603470 (= res!2707713 (not (= r!7292 (generalisedConcat!2068 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun e!3995537 () Bool)

(assert (=> b!6603471 (= e!3995537 e!3995551)))

(declare-fun res!2707729 () Bool)

(assert (=> b!6603471 (=> res!2707729 e!3995551)))

(assert (=> b!6603471 (= res!2707729 (or (and ((_ is ElementMatch!16471) (regOne!33454 r!7292)) (= (c!1216570 (regOne!33454 r!7292)) (h!72036 s!2326))) ((_ is Union!16471) (regOne!33454 r!7292))))))

(declare-fun lt!2414280 () Unit!159219)

(declare-fun e!3995546 () Unit!159219)

(assert (=> b!6603471 (= lt!2414280 e!3995546)))

(declare-fun c!1216569 () Bool)

(assert (=> b!6603471 (= c!1216569 lt!2414279)))

(assert (=> b!6603471 (= lt!2414279 (nullable!6464 (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11710))

(assert (=> b!6603471 (= (flatMap!1976 z!1189 lambda!368231) (derivationStepZipperUp!1645 (h!72038 zl!343) (h!72036 s!2326)))))

(declare-fun lt!2414259 () Unit!159219)

(assert (=> b!6603471 (= lt!2414259 (lemmaFlatMapOnSingletonSet!1502 z!1189 (h!72038 zl!343) lambda!368231))))

(assert (=> b!6603471 (= lt!2414249 (derivationStepZipperUp!1645 lt!2414258 (h!72036 s!2326)))))

(assert (=> b!6603471 (= lt!2414274 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 (h!72038 zl!343))) lt!2414258 (h!72036 s!2326)))))

(assert (=> b!6603471 (= lt!2414258 (Context!11711 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun lt!2414265 () (InoxSet Context!11710))

(assert (=> b!6603471 (= lt!2414265 (derivationStepZipperUp!1645 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343))))) (h!72036 s!2326)))))

(declare-fun b!6603472 () Bool)

(assert (=> b!6603472 (= e!3995553 e!3995550)))

(declare-fun res!2707724 () Bool)

(assert (=> b!6603472 (=> res!2707724 e!3995550)))

(declare-fun lt!2414264 () (InoxSet Context!11710))

(assert (=> b!6603472 (= res!2707724 (not (= lt!2414264 lt!2414268)))))

(declare-fun lt!2414283 () (InoxSet Context!11710))

(assert (=> b!6603472 (= (flatMap!1976 lt!2414283 lambda!368231) (derivationStepZipperUp!1645 lt!2414288 (h!72036 s!2326)))))

(declare-fun lt!2414253 () Unit!159219)

(assert (=> b!6603472 (= lt!2414253 (lemmaFlatMapOnSingletonSet!1502 lt!2414283 lt!2414288 lambda!368231))))

(declare-fun lt!2414285 () (InoxSet Context!11710))

(assert (=> b!6603472 (= lt!2414285 (derivationStepZipperUp!1645 lt!2414288 (h!72036 s!2326)))))

(assert (=> b!6603472 (= lt!2414264 (derivationStepZipper!2437 lt!2414283 (h!72036 s!2326)))))

(assert (=> b!6603472 (= lt!2414283 (store ((as const (Array Context!11710 Bool)) false) lt!2414288 true))))

(assert (=> b!6603472 (= lt!2414288 (Context!11711 (Cons!65589 (reg!16800 (regOne!33454 r!7292)) lt!2414257)))))

(declare-fun res!2707711 () Bool)

(assert (=> start!645658 (=> (not res!2707711) (not e!3995540))))

(assert (=> start!645658 (= res!2707711 (validRegex!8207 r!7292))))

(assert (=> start!645658 e!3995540))

(assert (=> start!645658 e!3995544))

(declare-fun condSetEmpty!45096 () Bool)

(assert (=> start!645658 (= condSetEmpty!45096 (= z!1189 ((as const (Array Context!11710 Bool)) false)))))

(assert (=> start!645658 setRes!45096))

(declare-fun e!3995534 () Bool)

(assert (=> start!645658 e!3995534))

(declare-fun e!3995531 () Bool)

(assert (=> start!645658 e!3995531))

(declare-fun b!6603473 () Bool)

(declare-fun tp_is_empty!42195 () Bool)

(declare-fun tp!1820126 () Bool)

(assert (=> b!6603473 (= e!3995531 (and tp_is_empty!42195 tp!1820126))))

(declare-fun b!6603474 () Bool)

(declare-fun res!2707715 () Bool)

(assert (=> b!6603474 (=> (not res!2707715) (not e!3995540))))

(declare-fun toList!10255 ((InoxSet Context!11710)) List!65714)

(assert (=> b!6603474 (= res!2707715 (= (toList!10255 z!1189) zl!343))))

(declare-fun b!6603475 () Bool)

(assert (=> b!6603475 (= e!3995539 e!3995541)))

(declare-fun res!2707710 () Bool)

(assert (=> b!6603475 (=> res!2707710 e!3995541)))

(declare-fun zipperDepth!408 (List!65714) Int)

(assert (=> b!6603475 (= res!2707710 (< (zipperDepth!408 zl!343) (zipperDepth!408 lt!2414271)))))

(assert (=> b!6603475 (= lt!2414271 (Cons!65590 lt!2414258 Nil!65590))))

(declare-fun b!6603476 () Bool)

(assert (=> b!6603476 (= e!3995530 (not e!3995533))))

(declare-fun res!2707712 () Bool)

(assert (=> b!6603476 (=> res!2707712 e!3995533)))

(assert (=> b!6603476 (= res!2707712 (not ((_ is Cons!65590) zl!343)))))

(assert (=> b!6603476 (= lt!2414252 (matchRSpec!3572 r!7292 s!2326))))

(assert (=> b!6603476 (= lt!2414252 (matchR!8654 r!7292 s!2326))))

(declare-fun lt!2414255 () Unit!159219)

(assert (=> b!6603476 (= lt!2414255 (mainMatchTheorem!3572 r!7292 s!2326))))

(declare-fun b!6603477 () Bool)

(declare-fun e!3995554 () Bool)

(declare-fun tp!1820129 () Bool)

(assert (=> b!6603477 (= e!3995554 tp!1820129)))

(declare-fun b!6603478 () Bool)

(declare-fun res!2707719 () Bool)

(assert (=> b!6603478 (=> res!2707719 e!3995529)))

(assert (=> b!6603478 (= res!2707719 (not (matchZipper!2483 z!1189 s!2326)))))

(declare-fun b!6603479 () Bool)

(declare-fun res!2707727 () Bool)

(assert (=> b!6603479 (=> res!2707727 e!3995542)))

(assert (=> b!6603479 (= res!2707727 (not (matchZipper!2483 lt!2414249 (t!379364 s!2326))))))

(declare-fun b!6603480 () Bool)

(declare-fun res!2707726 () Bool)

(assert (=> b!6603480 (=> res!2707726 e!3995542)))

(assert (=> b!6603480 (= res!2707726 lt!2414266)))

(declare-fun b!6603481 () Bool)

(assert (=> b!6603481 (= e!3995543 (nullable!6464 (regOne!33454 (regOne!33454 r!7292))))))

(assert (=> b!6603482 (= e!3995533 e!3995537)))

(declare-fun res!2707721 () Bool)

(assert (=> b!6603482 (=> res!2707721 e!3995537)))

(declare-fun lt!2414286 () Bool)

(assert (=> b!6603482 (= res!2707721 (or (not (= lt!2414252 lt!2414286)) ((_ is Nil!65588) s!2326)))))

(assert (=> b!6603482 (= (Exists!3541 lambda!368229) (Exists!3541 lambda!368230))))

(declare-fun lt!2414261 () Unit!159219)

(assert (=> b!6603482 (= lt!2414261 (lemmaExistCutMatchRandMatchRSpecEquivalent!2078 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326))))

(assert (=> b!6603482 (= lt!2414286 (Exists!3541 lambda!368229))))

(assert (=> b!6603482 (= lt!2414286 (isDefined!13065 (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) Nil!65588 s!2326 s!2326)))))

(declare-fun lt!2414282 () Unit!159219)

(assert (=> b!6603482 (= lt!2414282 (lemmaFindConcatSeparationEquivalentToExists!2540 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326))))

(declare-fun b!6603483 () Bool)

(assert (=> b!6603483 (= e!3995550 e!3995538)))

(declare-fun res!2707718 () Bool)

(assert (=> b!6603483 (=> res!2707718 e!3995538)))

(assert (=> b!6603483 (= res!2707718 (not (= r!7292 lt!2414254)))))

(assert (=> b!6603483 (= lt!2414254 (Concat!25316 lt!2414262 (regTwo!33454 r!7292)))))

(declare-fun b!6603484 () Bool)

(declare-fun res!2707734 () Bool)

(assert (=> b!6603484 (=> res!2707734 e!3995533)))

(declare-fun isEmpty!37861 (List!65714) Bool)

(assert (=> b!6603484 (= res!2707734 (not (isEmpty!37861 (t!379366 zl!343))))))

(declare-fun b!6603485 () Bool)

(declare-fun res!2707735 () Bool)

(assert (=> b!6603485 (=> res!2707735 e!3995550)))

(assert (=> b!6603485 (= res!2707735 (not (= (matchZipper!2483 lt!2414283 s!2326) (matchZipper!2483 lt!2414264 (t!379364 s!2326)))))))

(declare-fun b!6603486 () Bool)

(declare-fun Unit!159221 () Unit!159219)

(assert (=> b!6603486 (= e!3995546 Unit!159221)))

(declare-fun tp!1820134 () Bool)

(declare-fun b!6603487 () Bool)

(declare-fun inv!84424 (Context!11710) Bool)

(assert (=> b!6603487 (= e!3995534 (and (inv!84424 (h!72038 zl!343)) e!3995554 tp!1820134))))

(declare-fun b!6603488 () Bool)

(declare-fun res!2707725 () Bool)

(assert (=> b!6603488 (=> res!2707725 e!3995533)))

(assert (=> b!6603488 (= res!2707725 (not ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343)))))))

(declare-fun setNonEmpty!45096 () Bool)

(declare-fun setElem!45096 () Context!11710)

(declare-fun e!3995547 () Bool)

(declare-fun tp!1820135 () Bool)

(assert (=> setNonEmpty!45096 (= setRes!45096 (and tp!1820135 (inv!84424 setElem!45096) e!3995547))))

(declare-fun setRest!45096 () (InoxSet Context!11710))

(assert (=> setNonEmpty!45096 (= z!1189 ((_ map or) (store ((as const (Array Context!11710 Bool)) false) setElem!45096 true) setRest!45096))))

(declare-fun b!6603489 () Bool)

(declare-fun tp!1820131 () Bool)

(declare-fun tp!1820128 () Bool)

(assert (=> b!6603489 (= e!3995544 (and tp!1820131 tp!1820128))))

(declare-fun b!6603490 () Bool)

(declare-fun Unit!159222 () Unit!159219)

(assert (=> b!6603490 (= e!3995546 Unit!159222)))

(declare-fun lt!2414250 () Unit!159219)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1302 ((InoxSet Context!11710) (InoxSet Context!11710) List!65712) Unit!159219)

(assert (=> b!6603490 (= lt!2414250 (lemmaZipperConcatMatchesSameAsBothZippers!1302 lt!2414274 lt!2414249 (t!379364 s!2326)))))

(declare-fun res!2707722 () Bool)

(assert (=> b!6603490 (= res!2707722 (matchZipper!2483 lt!2414274 (t!379364 s!2326)))))

(declare-fun e!3995535 () Bool)

(assert (=> b!6603490 (=> res!2707722 e!3995535)))

(assert (=> b!6603490 (= (matchZipper!2483 ((_ map or) lt!2414274 lt!2414249) (t!379364 s!2326)) e!3995535)))

(declare-fun b!6603491 () Bool)

(assert (=> b!6603491 (= e!3995535 (matchZipper!2483 lt!2414249 (t!379364 s!2326)))))

(declare-fun b!6603492 () Bool)

(assert (=> b!6603492 (= e!3995532 e!3995552)))

(declare-fun res!2707717 () Bool)

(assert (=> b!6603492 (=> res!2707717 e!3995552)))

(declare-fun lt!2414251 () Context!11710)

(assert (=> b!6603492 (= res!2707717 (not (= (unfocusZipper!2213 (Cons!65590 lt!2414251 Nil!65590)) (reg!16800 (regOne!33454 r!7292)))))))

(declare-fun lt!2414260 () (InoxSet Context!11710))

(assert (=> b!6603492 (= (flatMap!1976 lt!2414260 lambda!368231) (derivationStepZipperUp!1645 lt!2414256 (h!72036 s!2326)))))

(declare-fun lt!2414275 () Unit!159219)

(assert (=> b!6603492 (= lt!2414275 (lemmaFlatMapOnSingletonSet!1502 lt!2414260 lt!2414256 lambda!368231))))

(declare-fun lt!2414287 () (InoxSet Context!11710))

(assert (=> b!6603492 (= (flatMap!1976 lt!2414287 lambda!368231) (derivationStepZipperUp!1645 lt!2414251 (h!72036 s!2326)))))

(declare-fun lt!2414278 () Unit!159219)

(assert (=> b!6603492 (= lt!2414278 (lemmaFlatMapOnSingletonSet!1502 lt!2414287 lt!2414251 lambda!368231))))

(declare-fun lt!2414272 () (InoxSet Context!11710))

(assert (=> b!6603492 (= lt!2414272 (derivationStepZipperUp!1645 lt!2414256 (h!72036 s!2326)))))

(declare-fun lt!2414263 () (InoxSet Context!11710))

(assert (=> b!6603492 (= lt!2414263 (derivationStepZipperUp!1645 lt!2414251 (h!72036 s!2326)))))

(assert (=> b!6603492 (= lt!2414260 (store ((as const (Array Context!11710 Bool)) false) lt!2414256 true))))

(assert (=> b!6603492 (= lt!2414287 (store ((as const (Array Context!11710 Bool)) false) lt!2414251 true))))

(assert (=> b!6603492 (= lt!2414251 (Context!11711 (Cons!65589 (reg!16800 (regOne!33454 r!7292)) Nil!65589)))))

(declare-fun b!6603493 () Bool)

(declare-fun res!2707728 () Bool)

(assert (=> b!6603493 (=> res!2707728 e!3995537)))

(declare-fun isEmpty!37862 (List!65713) Bool)

(assert (=> b!6603493 (= res!2707728 (isEmpty!37862 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6603494 () Bool)

(declare-fun tp!1820132 () Bool)

(assert (=> b!6603494 (= e!3995547 tp!1820132)))

(declare-fun b!6603495 () Bool)

(declare-fun res!2707737 () Bool)

(assert (=> b!6603495 (=> res!2707737 e!3995552)))

(assert (=> b!6603495 (= res!2707737 (not (= (unfocusZipper!2213 (Cons!65590 lt!2414256 Nil!65590)) lt!2414254)))))

(declare-fun b!6603496 () Bool)

(assert (=> b!6603496 (= e!3995544 tp_is_empty!42195)))

(assert (= (and start!645658 res!2707711) b!6603474))

(assert (= (and b!6603474 res!2707715) b!6603460))

(assert (= (and b!6603460 res!2707741) b!6603476))

(assert (= (and b!6603476 (not res!2707712)) b!6603484))

(assert (= (and b!6603484 (not res!2707734)) b!6603470))

(assert (= (and b!6603470 (not res!2707713)) b!6603488))

(assert (= (and b!6603488 (not res!2707725)) b!6603452))

(assert (= (and b!6603452 (not res!2707736)) b!6603455))

(assert (= (and b!6603455 (not res!2707707)) b!6603482))

(assert (= (and b!6603482 (not res!2707721)) b!6603493))

(assert (= (and b!6603493 (not res!2707728)) b!6603471))

(assert (= (and b!6603471 c!1216569) b!6603490))

(assert (= (and b!6603471 (not c!1216569)) b!6603486))

(assert (= (and b!6603490 (not res!2707722)) b!6603491))

(assert (= (and b!6603471 (not res!2707729)) b!6603468))

(assert (= (and b!6603468 res!2707714) b!6603481))

(assert (= (and b!6603468 (not res!2707723)) b!6603457))

(assert (= (and b!6603457 (not res!2707709)) b!6603466))

(assert (= (and b!6603466 (not res!2707742)) b!6603472))

(assert (= (and b!6603472 (not res!2707724)) b!6603485))

(assert (= (and b!6603485 (not res!2707735)) b!6603454))

(assert (= (and b!6603454 (not res!2707730)) b!6603483))

(assert (= (and b!6603483 (not res!2707718)) b!6603465))

(assert (= (and b!6603465 (not res!2707733)) b!6603492))

(assert (= (and b!6603492 (not res!2707717)) b!6603495))

(assert (= (and b!6603495 (not res!2707737)) b!6603451))

(assert (= (and b!6603451 (not res!2707738)) b!6603478))

(assert (= (and b!6603478 (not res!2707719)) b!6603464))

(assert (= (and b!6603464 (not res!2707708)) b!6603462))

(assert (= (and b!6603462 res!2707716) b!6603459))

(assert (= (and b!6603462 (not res!2707740)) b!6603480))

(assert (= (and b!6603480 (not res!2707726)) b!6603479))

(assert (= (and b!6603479 (not res!2707727)) b!6603456))

(assert (= (and b!6603456 (not res!2707739)) b!6603461))

(assert (= (and b!6603461 (not res!2707731)) b!6603475))

(assert (= (and b!6603475 (not res!2707710)) b!6603467))

(assert (= (and b!6603467 (not res!2707732)) b!6603463))

(assert (= (and b!6603463 (not res!2707720)) b!6603458))

(assert (= (and start!645658 ((_ is ElementMatch!16471) r!7292)) b!6603496))

(assert (= (and start!645658 ((_ is Concat!25316) r!7292)) b!6603489))

(assert (= (and start!645658 ((_ is Star!16471) r!7292)) b!6603469))

(assert (= (and start!645658 ((_ is Union!16471) r!7292)) b!6603453))

(assert (= (and start!645658 condSetEmpty!45096) setIsEmpty!45096))

(assert (= (and start!645658 (not condSetEmpty!45096)) setNonEmpty!45096))

(assert (= setNonEmpty!45096 b!6603494))

(assert (= b!6603487 b!6603477))

(assert (= (and start!645658 ((_ is Cons!65590) zl!343)) b!6603487))

(assert (= (and start!645658 ((_ is Cons!65588) s!2326)) b!6603473))

(declare-fun m!7379140 () Bool)

(assert (=> b!6603491 m!7379140))

(declare-fun m!7379142 () Bool)

(assert (=> b!6603485 m!7379142))

(declare-fun m!7379144 () Bool)

(assert (=> b!6603485 m!7379144))

(assert (=> b!6603479 m!7379140))

(declare-fun m!7379146 () Bool)

(assert (=> b!6603465 m!7379146))

(declare-fun m!7379148 () Bool)

(assert (=> b!6603471 m!7379148))

(declare-fun m!7379150 () Bool)

(assert (=> b!6603471 m!7379150))

(declare-fun m!7379152 () Bool)

(assert (=> b!6603471 m!7379152))

(declare-fun m!7379154 () Bool)

(assert (=> b!6603471 m!7379154))

(declare-fun m!7379156 () Bool)

(assert (=> b!6603471 m!7379156))

(declare-fun m!7379158 () Bool)

(assert (=> b!6603471 m!7379158))

(declare-fun m!7379160 () Bool)

(assert (=> b!6603471 m!7379160))

(assert (=> b!6603459 m!7379140))

(declare-fun m!7379162 () Bool)

(assert (=> b!6603490 m!7379162))

(declare-fun m!7379164 () Bool)

(assert (=> b!6603490 m!7379164))

(declare-fun m!7379166 () Bool)

(assert (=> b!6603490 m!7379166))

(declare-fun m!7379168 () Bool)

(assert (=> start!645658 m!7379168))

(assert (=> b!6603462 m!7379164))

(declare-fun m!7379170 () Bool)

(assert (=> b!6603493 m!7379170))

(declare-fun m!7379172 () Bool)

(assert (=> b!6603475 m!7379172))

(declare-fun m!7379174 () Bool)

(assert (=> b!6603475 m!7379174))

(declare-fun m!7379176 () Bool)

(assert (=> b!6603495 m!7379176))

(declare-fun m!7379178 () Bool)

(assert (=> b!6603463 m!7379178))

(declare-fun m!7379180 () Bool)

(assert (=> b!6603463 m!7379180))

(declare-fun m!7379182 () Bool)

(assert (=> b!6603463 m!7379182))

(declare-fun m!7379184 () Bool)

(assert (=> b!6603463 m!7379184))

(declare-fun m!7379186 () Bool)

(assert (=> b!6603463 m!7379186))

(declare-fun m!7379188 () Bool)

(assert (=> b!6603463 m!7379188))

(assert (=> b!6603463 m!7379188))

(declare-fun m!7379190 () Bool)

(assert (=> b!6603463 m!7379190))

(declare-fun m!7379192 () Bool)

(assert (=> b!6603463 m!7379192))

(declare-fun m!7379194 () Bool)

(assert (=> b!6603463 m!7379194))

(assert (=> b!6603463 m!7379192))

(declare-fun m!7379196 () Bool)

(assert (=> b!6603463 m!7379196))

(declare-fun m!7379198 () Bool)

(assert (=> b!6603452 m!7379198))

(assert (=> b!6603452 m!7379198))

(declare-fun m!7379200 () Bool)

(assert (=> b!6603452 m!7379200))

(declare-fun m!7379202 () Bool)

(assert (=> b!6603466 m!7379202))

(declare-fun m!7379204 () Bool)

(assert (=> b!6603484 m!7379204))

(declare-fun m!7379206 () Bool)

(assert (=> b!6603467 m!7379206))

(declare-fun m!7379208 () Bool)

(assert (=> b!6603467 m!7379208))

(declare-fun m!7379210 () Bool)

(assert (=> b!6603467 m!7379210))

(declare-fun m!7379212 () Bool)

(assert (=> b!6603467 m!7379212))

(declare-fun m!7379214 () Bool)

(assert (=> b!6603456 m!7379214))

(declare-fun m!7379216 () Bool)

(assert (=> b!6603456 m!7379216))

(declare-fun m!7379218 () Bool)

(assert (=> b!6603456 m!7379218))

(declare-fun m!7379220 () Bool)

(assert (=> b!6603456 m!7379220))

(assert (=> b!6603456 m!7379156))

(declare-fun m!7379222 () Bool)

(assert (=> b!6603476 m!7379222))

(declare-fun m!7379224 () Bool)

(assert (=> b!6603476 m!7379224))

(declare-fun m!7379226 () Bool)

(assert (=> b!6603476 m!7379226))

(declare-fun m!7379228 () Bool)

(assert (=> b!6603481 m!7379228))

(declare-fun m!7379230 () Bool)

(assert (=> b!6603482 m!7379230))

(declare-fun m!7379232 () Bool)

(assert (=> b!6603482 m!7379232))

(declare-fun m!7379234 () Bool)

(assert (=> b!6603482 m!7379234))

(declare-fun m!7379236 () Bool)

(assert (=> b!6603482 m!7379236))

(assert (=> b!6603482 m!7379236))

(declare-fun m!7379238 () Bool)

(assert (=> b!6603482 m!7379238))

(assert (=> b!6603482 m!7379230))

(declare-fun m!7379240 () Bool)

(assert (=> b!6603482 m!7379240))

(declare-fun m!7379242 () Bool)

(assert (=> b!6603474 m!7379242))

(declare-fun m!7379244 () Bool)

(assert (=> b!6603460 m!7379244))

(declare-fun m!7379246 () Bool)

(assert (=> b!6603478 m!7379246))

(declare-fun m!7379248 () Bool)

(assert (=> b!6603458 m!7379248))

(declare-fun m!7379250 () Bool)

(assert (=> b!6603470 m!7379250))

(declare-fun m!7379252 () Bool)

(assert (=> b!6603492 m!7379252))

(declare-fun m!7379254 () Bool)

(assert (=> b!6603492 m!7379254))

(declare-fun m!7379256 () Bool)

(assert (=> b!6603492 m!7379256))

(declare-fun m!7379258 () Bool)

(assert (=> b!6603492 m!7379258))

(declare-fun m!7379260 () Bool)

(assert (=> b!6603492 m!7379260))

(declare-fun m!7379262 () Bool)

(assert (=> b!6603492 m!7379262))

(declare-fun m!7379264 () Bool)

(assert (=> b!6603492 m!7379264))

(declare-fun m!7379266 () Bool)

(assert (=> b!6603492 m!7379266))

(declare-fun m!7379268 () Bool)

(assert (=> b!6603492 m!7379268))

(declare-fun m!7379270 () Bool)

(assert (=> b!6603472 m!7379270))

(declare-fun m!7379272 () Bool)

(assert (=> b!6603472 m!7379272))

(declare-fun m!7379274 () Bool)

(assert (=> b!6603472 m!7379274))

(declare-fun m!7379276 () Bool)

(assert (=> b!6603472 m!7379276))

(declare-fun m!7379278 () Bool)

(assert (=> b!6603472 m!7379278))

(declare-fun m!7379280 () Bool)

(assert (=> b!6603461 m!7379280))

(declare-fun m!7379282 () Bool)

(assert (=> b!6603461 m!7379282))

(declare-fun m!7379284 () Bool)

(assert (=> b!6603461 m!7379284))

(declare-fun m!7379286 () Bool)

(assert (=> b!6603451 m!7379286))

(declare-fun m!7379288 () Bool)

(assert (=> b!6603451 m!7379288))

(declare-fun m!7379290 () Bool)

(assert (=> b!6603451 m!7379290))

(declare-fun m!7379292 () Bool)

(assert (=> setNonEmpty!45096 m!7379292))

(declare-fun m!7379294 () Bool)

(assert (=> b!6603487 m!7379294))

(check-sat (not b!6603472) (not b!6603491) (not setNonEmpty!45096) (not b!6603470) (not b!6603492) (not b!6603475) (not b!6603494) (not b!6603477) (not b!6603478) (not b!6603458) (not b!6603485) (not b!6603451) (not b!6603474) (not b!6603460) (not b!6603487) (not b!6603471) (not b!6603481) (not b!6603473) tp_is_empty!42195 (not b!6603466) (not b!6603456) (not b!6603461) (not b!6603465) (not b!6603459) (not b!6603467) (not b!6603452) (not b!6603490) (not b!6603484) (not b!6603489) (not b!6603453) (not b!6603479) (not start!645658) (not b!6603493) (not b!6603476) (not b!6603482) (not b!6603463) (not b!6603462) (not b!6603469) (not b!6603495))
(check-sat)
(get-model)

(declare-fun d!2071053 () Bool)

(declare-fun lambda!368284 () Int)

(declare-fun forall!15665 (List!65713 Int) Bool)

(assert (=> d!2071053 (= (inv!84424 setElem!45096) (forall!15665 (exprs!6355 setElem!45096) lambda!368284))))

(declare-fun bs!1692859 () Bool)

(assert (= bs!1692859 d!2071053))

(declare-fun m!7379636 () Bool)

(assert (=> bs!1692859 m!7379636))

(assert (=> setNonEmpty!45096 d!2071053))

(declare-fun e!3995831 () Bool)

(declare-fun d!2071063 () Bool)

(assert (=> d!2071063 (= (matchZipper!2483 ((_ map or) lt!2414274 lt!2414249) (t!379364 s!2326)) e!3995831)))

(declare-fun res!2707910 () Bool)

(assert (=> d!2071063 (=> res!2707910 e!3995831)))

(assert (=> d!2071063 (= res!2707910 (matchZipper!2483 lt!2414274 (t!379364 s!2326)))))

(declare-fun lt!2414369 () Unit!159219)

(declare-fun choose!49307 ((InoxSet Context!11710) (InoxSet Context!11710) List!65712) Unit!159219)

(assert (=> d!2071063 (= lt!2414369 (choose!49307 lt!2414274 lt!2414249 (t!379364 s!2326)))))

(assert (=> d!2071063 (= (lemmaZipperConcatMatchesSameAsBothZippers!1302 lt!2414274 lt!2414249 (t!379364 s!2326)) lt!2414369)))

(declare-fun b!6603980 () Bool)

(assert (=> b!6603980 (= e!3995831 (matchZipper!2483 lt!2414249 (t!379364 s!2326)))))

(assert (= (and d!2071063 (not res!2707910)) b!6603980))

(assert (=> d!2071063 m!7379166))

(assert (=> d!2071063 m!7379164))

(declare-fun m!7379684 () Bool)

(assert (=> d!2071063 m!7379684))

(assert (=> b!6603980 m!7379140))

(assert (=> b!6603490 d!2071063))

(declare-fun d!2071085 () Bool)

(declare-fun c!1216742 () Bool)

(declare-fun isEmpty!37865 (List!65712) Bool)

(assert (=> d!2071085 (= c!1216742 (isEmpty!37865 (t!379364 s!2326)))))

(declare-fun e!3995852 () Bool)

(assert (=> d!2071085 (= (matchZipper!2483 lt!2414274 (t!379364 s!2326)) e!3995852)))

(declare-fun b!6604015 () Bool)

(declare-fun nullableZipper!2216 ((InoxSet Context!11710)) Bool)

(assert (=> b!6604015 (= e!3995852 (nullableZipper!2216 lt!2414274))))

(declare-fun b!6604016 () Bool)

(declare-fun head!13393 (List!65712) C!33212)

(declare-fun tail!12478 (List!65712) List!65712)

(assert (=> b!6604016 (= e!3995852 (matchZipper!2483 (derivationStepZipper!2437 lt!2414274 (head!13393 (t!379364 s!2326))) (tail!12478 (t!379364 s!2326))))))

(assert (= (and d!2071085 c!1216742) b!6604015))

(assert (= (and d!2071085 (not c!1216742)) b!6604016))

(declare-fun m!7379702 () Bool)

(assert (=> d!2071085 m!7379702))

(declare-fun m!7379704 () Bool)

(assert (=> b!6604015 m!7379704))

(declare-fun m!7379706 () Bool)

(assert (=> b!6604016 m!7379706))

(assert (=> b!6604016 m!7379706))

(declare-fun m!7379708 () Bool)

(assert (=> b!6604016 m!7379708))

(declare-fun m!7379710 () Bool)

(assert (=> b!6604016 m!7379710))

(assert (=> b!6604016 m!7379708))

(assert (=> b!6604016 m!7379710))

(declare-fun m!7379712 () Bool)

(assert (=> b!6604016 m!7379712))

(assert (=> b!6603490 d!2071085))

(declare-fun d!2071093 () Bool)

(declare-fun c!1216743 () Bool)

(assert (=> d!2071093 (= c!1216743 (isEmpty!37865 (t!379364 s!2326)))))

(declare-fun e!3995853 () Bool)

(assert (=> d!2071093 (= (matchZipper!2483 ((_ map or) lt!2414274 lt!2414249) (t!379364 s!2326)) e!3995853)))

(declare-fun b!6604017 () Bool)

(assert (=> b!6604017 (= e!3995853 (nullableZipper!2216 ((_ map or) lt!2414274 lt!2414249)))))

(declare-fun b!6604018 () Bool)

(assert (=> b!6604018 (= e!3995853 (matchZipper!2483 (derivationStepZipper!2437 ((_ map or) lt!2414274 lt!2414249) (head!13393 (t!379364 s!2326))) (tail!12478 (t!379364 s!2326))))))

(assert (= (and d!2071093 c!1216743) b!6604017))

(assert (= (and d!2071093 (not c!1216743)) b!6604018))

(assert (=> d!2071093 m!7379702))

(declare-fun m!7379714 () Bool)

(assert (=> b!6604017 m!7379714))

(assert (=> b!6604018 m!7379706))

(assert (=> b!6604018 m!7379706))

(declare-fun m!7379716 () Bool)

(assert (=> b!6604018 m!7379716))

(assert (=> b!6604018 m!7379710))

(assert (=> b!6604018 m!7379716))

(assert (=> b!6604018 m!7379710))

(declare-fun m!7379718 () Bool)

(assert (=> b!6604018 m!7379718))

(assert (=> b!6603490 d!2071093))

(declare-fun bs!1692906 () Bool)

(declare-fun d!2071095 () Bool)

(assert (= bs!1692906 (and d!2071095 d!2071053)))

(declare-fun lambda!368291 () Int)

(assert (=> bs!1692906 (= lambda!368291 lambda!368284)))

(declare-fun b!6604103 () Bool)

(declare-fun e!3995895 () Bool)

(declare-fun lt!2414380 () Regex!16471)

(declare-fun isConcat!1372 (Regex!16471) Bool)

(assert (=> b!6604103 (= e!3995895 (isConcat!1372 lt!2414380))))

(declare-fun b!6604104 () Bool)

(declare-fun e!3995898 () Bool)

(declare-fun e!3995896 () Bool)

(assert (=> b!6604104 (= e!3995898 e!3995896)))

(declare-fun c!1216759 () Bool)

(assert (=> b!6604104 (= c!1216759 (isEmpty!37862 (exprs!6355 (h!72038 zl!343))))))

(declare-fun b!6604105 () Bool)

(declare-fun e!3995897 () Regex!16471)

(assert (=> b!6604105 (= e!3995897 EmptyExpr!16471)))

(declare-fun b!6604106 () Bool)

(declare-fun e!3995900 () Regex!16471)

(assert (=> b!6604106 (= e!3995900 e!3995897)))

(declare-fun c!1216756 () Bool)

(assert (=> b!6604106 (= c!1216756 ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343))))))

(assert (=> d!2071095 e!3995898))

(declare-fun res!2707931 () Bool)

(assert (=> d!2071095 (=> (not res!2707931) (not e!3995898))))

(assert (=> d!2071095 (= res!2707931 (validRegex!8207 lt!2414380))))

(assert (=> d!2071095 (= lt!2414380 e!3995900)))

(declare-fun c!1216757 () Bool)

(declare-fun e!3995899 () Bool)

(assert (=> d!2071095 (= c!1216757 e!3995899)))

(declare-fun res!2707932 () Bool)

(assert (=> d!2071095 (=> (not res!2707932) (not e!3995899))))

(assert (=> d!2071095 (= res!2707932 ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343))))))

(assert (=> d!2071095 (forall!15665 (exprs!6355 (h!72038 zl!343)) lambda!368291)))

(assert (=> d!2071095 (= (generalisedConcat!2068 (exprs!6355 (h!72038 zl!343))) lt!2414380)))

(declare-fun b!6604107 () Bool)

(declare-fun head!13394 (List!65713) Regex!16471)

(assert (=> b!6604107 (= e!3995895 (= lt!2414380 (head!13394 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604108 () Bool)

(assert (=> b!6604108 (= e!3995896 e!3995895)))

(declare-fun c!1216758 () Bool)

(declare-fun tail!12479 (List!65713) List!65713)

(assert (=> b!6604108 (= c!1216758 (isEmpty!37862 (tail!12479 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604109 () Bool)

(assert (=> b!6604109 (= e!3995900 (h!72037 (exprs!6355 (h!72038 zl!343))))))

(declare-fun b!6604110 () Bool)

(assert (=> b!6604110 (= e!3995899 (isEmpty!37862 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604111 () Bool)

(declare-fun isEmptyExpr!1849 (Regex!16471) Bool)

(assert (=> b!6604111 (= e!3995896 (isEmptyExpr!1849 lt!2414380))))

(declare-fun b!6604112 () Bool)

(assert (=> b!6604112 (= e!3995897 (Concat!25316 (h!72037 (exprs!6355 (h!72038 zl!343))) (generalisedConcat!2068 (t!379365 (exprs!6355 (h!72038 zl!343))))))))

(assert (= (and d!2071095 res!2707932) b!6604110))

(assert (= (and d!2071095 c!1216757) b!6604109))

(assert (= (and d!2071095 (not c!1216757)) b!6604106))

(assert (= (and b!6604106 c!1216756) b!6604112))

(assert (= (and b!6604106 (not c!1216756)) b!6604105))

(assert (= (and d!2071095 res!2707931) b!6604104))

(assert (= (and b!6604104 c!1216759) b!6604111))

(assert (= (and b!6604104 (not c!1216759)) b!6604108))

(assert (= (and b!6604108 c!1216758) b!6604107))

(assert (= (and b!6604108 (not c!1216758)) b!6604103))

(declare-fun m!7379762 () Bool)

(assert (=> b!6604103 m!7379762))

(declare-fun m!7379764 () Bool)

(assert (=> b!6604107 m!7379764))

(declare-fun m!7379766 () Bool)

(assert (=> b!6604108 m!7379766))

(assert (=> b!6604108 m!7379766))

(declare-fun m!7379768 () Bool)

(assert (=> b!6604108 m!7379768))

(declare-fun m!7379770 () Bool)

(assert (=> b!6604104 m!7379770))

(declare-fun m!7379772 () Bool)

(assert (=> b!6604111 m!7379772))

(assert (=> b!6604110 m!7379170))

(assert (=> b!6604112 m!7379284))

(declare-fun m!7379774 () Bool)

(assert (=> d!2071095 m!7379774))

(declare-fun m!7379776 () Bool)

(assert (=> d!2071095 m!7379776))

(assert (=> b!6603470 d!2071095))

(declare-fun d!2071123 () Bool)

(declare-fun c!1216760 () Bool)

(assert (=> d!2071123 (= c!1216760 (isEmpty!37865 (t!379364 s!2326)))))

(declare-fun e!3995901 () Bool)

(assert (=> d!2071123 (= (matchZipper!2483 lt!2414249 (t!379364 s!2326)) e!3995901)))

(declare-fun b!6604113 () Bool)

(assert (=> b!6604113 (= e!3995901 (nullableZipper!2216 lt!2414249))))

(declare-fun b!6604114 () Bool)

(assert (=> b!6604114 (= e!3995901 (matchZipper!2483 (derivationStepZipper!2437 lt!2414249 (head!13393 (t!379364 s!2326))) (tail!12478 (t!379364 s!2326))))))

(assert (= (and d!2071123 c!1216760) b!6604113))

(assert (= (and d!2071123 (not c!1216760)) b!6604114))

(assert (=> d!2071123 m!7379702))

(declare-fun m!7379778 () Bool)

(assert (=> b!6604113 m!7379778))

(assert (=> b!6604114 m!7379706))

(assert (=> b!6604114 m!7379706))

(declare-fun m!7379780 () Bool)

(assert (=> b!6604114 m!7379780))

(assert (=> b!6604114 m!7379710))

(assert (=> b!6604114 m!7379780))

(assert (=> b!6604114 m!7379710))

(declare-fun m!7379782 () Bool)

(assert (=> b!6604114 m!7379782))

(assert (=> b!6603491 d!2071123))

(declare-fun d!2071125 () Bool)

(declare-fun choose!49308 ((InoxSet Context!11710) Int) (InoxSet Context!11710))

(assert (=> d!2071125 (= (flatMap!1976 z!1189 lambda!368231) (choose!49308 z!1189 lambda!368231))))

(declare-fun bs!1692907 () Bool)

(assert (= bs!1692907 d!2071125))

(declare-fun m!7379784 () Bool)

(assert (=> bs!1692907 m!7379784))

(assert (=> b!6603471 d!2071125))

(declare-fun b!6604125 () Bool)

(declare-fun e!3995909 () (InoxSet Context!11710))

(declare-fun e!3995910 () (InoxSet Context!11710))

(assert (=> b!6604125 (= e!3995909 e!3995910)))

(declare-fun c!1216765 () Bool)

(assert (=> b!6604125 (= c!1216765 ((_ is Cons!65589) (exprs!6355 lt!2414258)))))

(declare-fun b!6604126 () Bool)

(declare-fun e!3995908 () Bool)

(assert (=> b!6604126 (= e!3995908 (nullable!6464 (h!72037 (exprs!6355 lt!2414258))))))

(declare-fun call!577667 () (InoxSet Context!11710))

(declare-fun b!6604127 () Bool)

(assert (=> b!6604127 (= e!3995909 ((_ map or) call!577667 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 lt!2414258))) (h!72036 s!2326))))))

(declare-fun b!6604128 () Bool)

(assert (=> b!6604128 (= e!3995910 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071127 () Bool)

(declare-fun c!1216766 () Bool)

(assert (=> d!2071127 (= c!1216766 e!3995908)))

(declare-fun res!2707935 () Bool)

(assert (=> d!2071127 (=> (not res!2707935) (not e!3995908))))

(assert (=> d!2071127 (= res!2707935 ((_ is Cons!65589) (exprs!6355 lt!2414258)))))

(assert (=> d!2071127 (= (derivationStepZipperUp!1645 lt!2414258 (h!72036 s!2326)) e!3995909)))

(declare-fun bm!577662 () Bool)

(assert (=> bm!577662 (= call!577667 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 lt!2414258)) (Context!11711 (t!379365 (exprs!6355 lt!2414258))) (h!72036 s!2326)))))

(declare-fun b!6604129 () Bool)

(assert (=> b!6604129 (= e!3995910 call!577667)))

(assert (= (and d!2071127 res!2707935) b!6604126))

(assert (= (and d!2071127 c!1216766) b!6604127))

(assert (= (and d!2071127 (not c!1216766)) b!6604125))

(assert (= (and b!6604125 c!1216765) b!6604129))

(assert (= (and b!6604125 (not c!1216765)) b!6604128))

(assert (= (or b!6604127 b!6604129) bm!577662))

(declare-fun m!7379786 () Bool)

(assert (=> b!6604126 m!7379786))

(declare-fun m!7379788 () Bool)

(assert (=> b!6604127 m!7379788))

(declare-fun m!7379790 () Bool)

(assert (=> bm!577662 m!7379790))

(assert (=> b!6603471 d!2071127))

(declare-fun b!6604130 () Bool)

(declare-fun e!3995912 () (InoxSet Context!11710))

(declare-fun e!3995913 () (InoxSet Context!11710))

(assert (=> b!6604130 (= e!3995912 e!3995913)))

(declare-fun c!1216767 () Bool)

(assert (=> b!6604130 (= c!1216767 ((_ is Cons!65589) (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343))))))))))

(declare-fun b!6604131 () Bool)

(declare-fun e!3995911 () Bool)

(assert (=> b!6604131 (= e!3995911 (nullable!6464 (h!72037 (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343)))))))))))

(declare-fun b!6604132 () Bool)

(declare-fun call!577668 () (InoxSet Context!11710))

(assert (=> b!6604132 (= e!3995912 ((_ map or) call!577668 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343)))))))) (h!72036 s!2326))))))

(declare-fun b!6604133 () Bool)

(assert (=> b!6604133 (= e!3995913 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071129 () Bool)

(declare-fun c!1216768 () Bool)

(assert (=> d!2071129 (= c!1216768 e!3995911)))

(declare-fun res!2707936 () Bool)

(assert (=> d!2071129 (=> (not res!2707936) (not e!3995911))))

(assert (=> d!2071129 (= res!2707936 ((_ is Cons!65589) (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343))))))))))

(assert (=> d!2071129 (= (derivationStepZipperUp!1645 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343))))) (h!72036 s!2326)) e!3995912)))

(declare-fun bm!577663 () Bool)

(assert (=> bm!577663 (= call!577668 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343))))))) (Context!11711 (t!379365 (exprs!6355 (Context!11711 (Cons!65589 (h!72037 (exprs!6355 (h!72038 zl!343))) (t!379365 (exprs!6355 (h!72038 zl!343)))))))) (h!72036 s!2326)))))

(declare-fun b!6604134 () Bool)

(assert (=> b!6604134 (= e!3995913 call!577668)))

(assert (= (and d!2071129 res!2707936) b!6604131))

(assert (= (and d!2071129 c!1216768) b!6604132))

(assert (= (and d!2071129 (not c!1216768)) b!6604130))

(assert (= (and b!6604130 c!1216767) b!6604134))

(assert (= (and b!6604130 (not c!1216767)) b!6604133))

(assert (= (or b!6604132 b!6604134) bm!577663))

(declare-fun m!7379792 () Bool)

(assert (=> b!6604131 m!7379792))

(declare-fun m!7379794 () Bool)

(assert (=> b!6604132 m!7379794))

(declare-fun m!7379796 () Bool)

(assert (=> bm!577663 m!7379796))

(assert (=> b!6603471 d!2071129))

(declare-fun b!6604157 () Bool)

(declare-fun e!3995929 () (InoxSet Context!11710))

(declare-fun call!577683 () (InoxSet Context!11710))

(declare-fun call!577685 () (InoxSet Context!11710))

(assert (=> b!6604157 (= e!3995929 ((_ map or) call!577683 call!577685))))

(declare-fun bm!577676 () Bool)

(declare-fun call!577684 () (InoxSet Context!11710))

(assert (=> bm!577676 (= call!577684 call!577683)))

(declare-fun bm!577677 () Bool)

(declare-fun call!577682 () List!65713)

(declare-fun c!1216779 () Bool)

(assert (=> bm!577677 (= call!577685 (derivationStepZipperDown!1719 (ite c!1216779 (regTwo!33455 (h!72037 (exprs!6355 (h!72038 zl!343)))) (regOne!33454 (h!72037 (exprs!6355 (h!72038 zl!343))))) (ite c!1216779 lt!2414258 (Context!11711 call!577682)) (h!72036 s!2326)))))

(declare-fun call!577686 () List!65713)

(declare-fun c!1216781 () Bool)

(declare-fun c!1216782 () Bool)

(declare-fun bm!577678 () Bool)

(assert (=> bm!577678 (= call!577683 (derivationStepZipperDown!1719 (ite c!1216779 (regOne!33455 (h!72037 (exprs!6355 (h!72038 zl!343)))) (ite c!1216782 (regTwo!33454 (h!72037 (exprs!6355 (h!72038 zl!343)))) (ite c!1216781 (regOne!33454 (h!72037 (exprs!6355 (h!72038 zl!343)))) (reg!16800 (h!72037 (exprs!6355 (h!72038 zl!343))))))) (ite (or c!1216779 c!1216782) lt!2414258 (Context!11711 call!577686)) (h!72036 s!2326)))))

(declare-fun b!6604158 () Bool)

(declare-fun e!3995931 () (InoxSet Context!11710))

(assert (=> b!6604158 (= e!3995931 ((_ map or) call!577685 call!577684))))

(declare-fun bm!577679 () Bool)

(declare-fun $colon$colon!2312 (List!65713 Regex!16471) List!65713)

(assert (=> bm!577679 (= call!577682 ($colon$colon!2312 (exprs!6355 lt!2414258) (ite (or c!1216782 c!1216781) (regTwo!33454 (h!72037 (exprs!6355 (h!72038 zl!343)))) (h!72037 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun bm!577680 () Bool)

(assert (=> bm!577680 (= call!577686 call!577682)))

(declare-fun d!2071131 () Bool)

(declare-fun c!1216780 () Bool)

(assert (=> d!2071131 (= c!1216780 (and ((_ is ElementMatch!16471) (h!72037 (exprs!6355 (h!72038 zl!343)))) (= (c!1216570 (h!72037 (exprs!6355 (h!72038 zl!343)))) (h!72036 s!2326))))))

(declare-fun e!3995927 () (InoxSet Context!11710))

(assert (=> d!2071131 (= (derivationStepZipperDown!1719 (h!72037 (exprs!6355 (h!72038 zl!343))) lt!2414258 (h!72036 s!2326)) e!3995927)))

(declare-fun b!6604159 () Bool)

(declare-fun c!1216783 () Bool)

(assert (=> b!6604159 (= c!1216783 ((_ is Star!16471) (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun e!3995930 () (InoxSet Context!11710))

(declare-fun e!3995926 () (InoxSet Context!11710))

(assert (=> b!6604159 (= e!3995930 e!3995926)))

(declare-fun b!6604160 () Bool)

(declare-fun e!3995928 () Bool)

(assert (=> b!6604160 (= e!3995928 (nullable!6464 (regOne!33454 (h!72037 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun b!6604161 () Bool)

(declare-fun call!577681 () (InoxSet Context!11710))

(assert (=> b!6604161 (= e!3995930 call!577681)))

(declare-fun b!6604162 () Bool)

(assert (=> b!6604162 (= e!3995926 call!577681)))

(declare-fun b!6604163 () Bool)

(assert (=> b!6604163 (= e!3995927 e!3995929)))

(assert (=> b!6604163 (= c!1216779 ((_ is Union!16471) (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604164 () Bool)

(assert (=> b!6604164 (= e!3995926 ((as const (Array Context!11710 Bool)) false))))

(declare-fun b!6604165 () Bool)

(assert (=> b!6604165 (= e!3995927 (store ((as const (Array Context!11710 Bool)) false) lt!2414258 true))))

(declare-fun bm!577681 () Bool)

(assert (=> bm!577681 (= call!577681 call!577684)))

(declare-fun b!6604166 () Bool)

(assert (=> b!6604166 (= c!1216782 e!3995928)))

(declare-fun res!2707939 () Bool)

(assert (=> b!6604166 (=> (not res!2707939) (not e!3995928))))

(assert (=> b!6604166 (= res!2707939 ((_ is Concat!25316) (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(assert (=> b!6604166 (= e!3995929 e!3995931)))

(declare-fun b!6604167 () Bool)

(assert (=> b!6604167 (= e!3995931 e!3995930)))

(assert (=> b!6604167 (= c!1216781 ((_ is Concat!25316) (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(assert (= (and d!2071131 c!1216780) b!6604165))

(assert (= (and d!2071131 (not c!1216780)) b!6604163))

(assert (= (and b!6604163 c!1216779) b!6604157))

(assert (= (and b!6604163 (not c!1216779)) b!6604166))

(assert (= (and b!6604166 res!2707939) b!6604160))

(assert (= (and b!6604166 c!1216782) b!6604158))

(assert (= (and b!6604166 (not c!1216782)) b!6604167))

(assert (= (and b!6604167 c!1216781) b!6604161))

(assert (= (and b!6604167 (not c!1216781)) b!6604159))

(assert (= (and b!6604159 c!1216783) b!6604162))

(assert (= (and b!6604159 (not c!1216783)) b!6604164))

(assert (= (or b!6604161 b!6604162) bm!577680))

(assert (= (or b!6604161 b!6604162) bm!577681))

(assert (= (or b!6604158 bm!577680) bm!577679))

(assert (= (or b!6604158 bm!577681) bm!577676))

(assert (= (or b!6604157 b!6604158) bm!577677))

(assert (= (or b!6604157 bm!577676) bm!577678))

(declare-fun m!7379798 () Bool)

(assert (=> bm!577679 m!7379798))

(declare-fun m!7379800 () Bool)

(assert (=> bm!577677 m!7379800))

(assert (=> b!6604165 m!7379220))

(declare-fun m!7379802 () Bool)

(assert (=> b!6604160 m!7379802))

(declare-fun m!7379804 () Bool)

(assert (=> bm!577678 m!7379804))

(assert (=> b!6603471 d!2071131))

(declare-fun b!6604168 () Bool)

(declare-fun e!3995933 () (InoxSet Context!11710))

(declare-fun e!3995934 () (InoxSet Context!11710))

(assert (=> b!6604168 (= e!3995933 e!3995934)))

(declare-fun c!1216784 () Bool)

(assert (=> b!6604168 (= c!1216784 ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343))))))

(declare-fun b!6604169 () Bool)

(declare-fun e!3995932 () Bool)

(assert (=> b!6604169 (= e!3995932 (nullable!6464 (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604170 () Bool)

(declare-fun call!577687 () (InoxSet Context!11710))

(assert (=> b!6604170 (= e!3995933 ((_ map or) call!577687 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 (h!72038 zl!343)))) (h!72036 s!2326))))))

(declare-fun b!6604171 () Bool)

(assert (=> b!6604171 (= e!3995934 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071133 () Bool)

(declare-fun c!1216785 () Bool)

(assert (=> d!2071133 (= c!1216785 e!3995932)))

(declare-fun res!2707940 () Bool)

(assert (=> d!2071133 (=> (not res!2707940) (not e!3995932))))

(assert (=> d!2071133 (= res!2707940 ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343))))))

(assert (=> d!2071133 (= (derivationStepZipperUp!1645 (h!72038 zl!343) (h!72036 s!2326)) e!3995933)))

(declare-fun bm!577682 () Bool)

(assert (=> bm!577682 (= call!577687 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 (h!72038 zl!343))) (Context!11711 (t!379365 (exprs!6355 (h!72038 zl!343)))) (h!72036 s!2326)))))

(declare-fun b!6604172 () Bool)

(assert (=> b!6604172 (= e!3995934 call!577687)))

(assert (= (and d!2071133 res!2707940) b!6604169))

(assert (= (and d!2071133 c!1216785) b!6604170))

(assert (= (and d!2071133 (not c!1216785)) b!6604168))

(assert (= (and b!6604168 c!1216784) b!6604172))

(assert (= (and b!6604168 (not c!1216784)) b!6604171))

(assert (= (or b!6604170 b!6604172) bm!577682))

(assert (=> b!6604169 m!7379154))

(declare-fun m!7379806 () Bool)

(assert (=> b!6604170 m!7379806))

(declare-fun m!7379808 () Bool)

(assert (=> bm!577682 m!7379808))

(assert (=> b!6603471 d!2071133))

(declare-fun d!2071135 () Bool)

(declare-fun nullableFct!2390 (Regex!16471) Bool)

(assert (=> d!2071135 (= (nullable!6464 (h!72037 (exprs!6355 (h!72038 zl!343)))) (nullableFct!2390 (h!72037 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun bs!1692908 () Bool)

(assert (= bs!1692908 d!2071135))

(declare-fun m!7379810 () Bool)

(assert (=> bs!1692908 m!7379810))

(assert (=> b!6603471 d!2071135))

(declare-fun d!2071137 () Bool)

(declare-fun dynLambda!26117 (Int Context!11710) (InoxSet Context!11710))

(assert (=> d!2071137 (= (flatMap!1976 z!1189 lambda!368231) (dynLambda!26117 lambda!368231 (h!72038 zl!343)))))

(declare-fun lt!2414383 () Unit!159219)

(declare-fun choose!49309 ((InoxSet Context!11710) Context!11710 Int) Unit!159219)

(assert (=> d!2071137 (= lt!2414383 (choose!49309 z!1189 (h!72038 zl!343) lambda!368231))))

(assert (=> d!2071137 (= z!1189 (store ((as const (Array Context!11710 Bool)) false) (h!72038 zl!343) true))))

(assert (=> d!2071137 (= (lemmaFlatMapOnSingletonSet!1502 z!1189 (h!72038 zl!343) lambda!368231) lt!2414383)))

(declare-fun b_lambda!249917 () Bool)

(assert (=> (not b_lambda!249917) (not d!2071137)))

(declare-fun bs!1692909 () Bool)

(assert (= bs!1692909 d!2071137))

(assert (=> bs!1692909 m!7379158))

(declare-fun m!7379812 () Bool)

(assert (=> bs!1692909 m!7379812))

(declare-fun m!7379814 () Bool)

(assert (=> bs!1692909 m!7379814))

(declare-fun m!7379816 () Bool)

(assert (=> bs!1692909 m!7379816))

(assert (=> b!6603471 d!2071137))

(declare-fun b!6604201 () Bool)

(declare-fun e!3995949 () Bool)

(assert (=> b!6604201 (= e!3995949 (= (head!13393 s!2326) (c!1216570 lt!2414284)))))

(declare-fun b!6604202 () Bool)

(declare-fun e!3995952 () Bool)

(declare-fun derivativeStep!5155 (Regex!16471 C!33212) Regex!16471)

(assert (=> b!6604202 (= e!3995952 (matchR!8654 (derivativeStep!5155 lt!2414284 (head!13393 s!2326)) (tail!12478 s!2326)))))

(declare-fun b!6604203 () Bool)

(assert (=> b!6604203 (= e!3995952 (nullable!6464 lt!2414284))))

(declare-fun b!6604204 () Bool)

(declare-fun res!2707959 () Bool)

(declare-fun e!3995951 () Bool)

(assert (=> b!6604204 (=> res!2707959 e!3995951)))

(assert (=> b!6604204 (= res!2707959 (not ((_ is ElementMatch!16471) lt!2414284)))))

(declare-fun e!3995955 () Bool)

(assert (=> b!6604204 (= e!3995955 e!3995951)))

(declare-fun b!6604205 () Bool)

(declare-fun e!3995950 () Bool)

(assert (=> b!6604205 (= e!3995951 e!3995950)))

(declare-fun res!2707960 () Bool)

(assert (=> b!6604205 (=> (not res!2707960) (not e!3995950))))

(declare-fun lt!2414386 () Bool)

(assert (=> b!6604205 (= res!2707960 (not lt!2414386))))

(declare-fun b!6604206 () Bool)

(declare-fun e!3995954 () Bool)

(assert (=> b!6604206 (= e!3995950 e!3995954)))

(declare-fun res!2707963 () Bool)

(assert (=> b!6604206 (=> res!2707963 e!3995954)))

(declare-fun call!577690 () Bool)

(assert (=> b!6604206 (= res!2707963 call!577690)))

(declare-fun b!6604207 () Bool)

(declare-fun e!3995953 () Bool)

(assert (=> b!6604207 (= e!3995953 e!3995955)))

(declare-fun c!1216793 () Bool)

(assert (=> b!6604207 (= c!1216793 ((_ is EmptyLang!16471) lt!2414284))))

(declare-fun b!6604208 () Bool)

(declare-fun res!2707957 () Bool)

(assert (=> b!6604208 (=> res!2707957 e!3995954)))

(assert (=> b!6604208 (= res!2707957 (not (isEmpty!37865 (tail!12478 s!2326))))))

(declare-fun d!2071139 () Bool)

(assert (=> d!2071139 e!3995953))

(declare-fun c!1216794 () Bool)

(assert (=> d!2071139 (= c!1216794 ((_ is EmptyExpr!16471) lt!2414284))))

(assert (=> d!2071139 (= lt!2414386 e!3995952)))

(declare-fun c!1216792 () Bool)

(assert (=> d!2071139 (= c!1216792 (isEmpty!37865 s!2326))))

(assert (=> d!2071139 (validRegex!8207 lt!2414284)))

(assert (=> d!2071139 (= (matchR!8654 lt!2414284 s!2326) lt!2414386)))

(declare-fun b!6604209 () Bool)

(assert (=> b!6604209 (= e!3995955 (not lt!2414386))))

(declare-fun b!6604210 () Bool)

(declare-fun res!2707964 () Bool)

(assert (=> b!6604210 (=> (not res!2707964) (not e!3995949))))

(assert (=> b!6604210 (= res!2707964 (not call!577690))))

(declare-fun b!6604211 () Bool)

(declare-fun res!2707961 () Bool)

(assert (=> b!6604211 (=> res!2707961 e!3995951)))

(assert (=> b!6604211 (= res!2707961 e!3995949)))

(declare-fun res!2707962 () Bool)

(assert (=> b!6604211 (=> (not res!2707962) (not e!3995949))))

(assert (=> b!6604211 (= res!2707962 lt!2414386)))

(declare-fun b!6604212 () Bool)

(assert (=> b!6604212 (= e!3995953 (= lt!2414386 call!577690))))

(declare-fun bm!577685 () Bool)

(assert (=> bm!577685 (= call!577690 (isEmpty!37865 s!2326))))

(declare-fun b!6604213 () Bool)

(declare-fun res!2707958 () Bool)

(assert (=> b!6604213 (=> (not res!2707958) (not e!3995949))))

(assert (=> b!6604213 (= res!2707958 (isEmpty!37865 (tail!12478 s!2326)))))

(declare-fun b!6604214 () Bool)

(assert (=> b!6604214 (= e!3995954 (not (= (head!13393 s!2326) (c!1216570 lt!2414284))))))

(assert (= (and d!2071139 c!1216792) b!6604203))

(assert (= (and d!2071139 (not c!1216792)) b!6604202))

(assert (= (and d!2071139 c!1216794) b!6604212))

(assert (= (and d!2071139 (not c!1216794)) b!6604207))

(assert (= (and b!6604207 c!1216793) b!6604209))

(assert (= (and b!6604207 (not c!1216793)) b!6604204))

(assert (= (and b!6604204 (not res!2707959)) b!6604211))

(assert (= (and b!6604211 res!2707962) b!6604210))

(assert (= (and b!6604210 res!2707964) b!6604213))

(assert (= (and b!6604213 res!2707958) b!6604201))

(assert (= (and b!6604211 (not res!2707961)) b!6604205))

(assert (= (and b!6604205 res!2707960) b!6604206))

(assert (= (and b!6604206 (not res!2707963)) b!6604208))

(assert (= (and b!6604208 (not res!2707957)) b!6604214))

(assert (= (or b!6604212 b!6604206 b!6604210) bm!577685))

(declare-fun m!7379818 () Bool)

(assert (=> b!6604201 m!7379818))

(declare-fun m!7379820 () Bool)

(assert (=> bm!577685 m!7379820))

(assert (=> b!6604202 m!7379818))

(assert (=> b!6604202 m!7379818))

(declare-fun m!7379822 () Bool)

(assert (=> b!6604202 m!7379822))

(declare-fun m!7379824 () Bool)

(assert (=> b!6604202 m!7379824))

(assert (=> b!6604202 m!7379822))

(assert (=> b!6604202 m!7379824))

(declare-fun m!7379826 () Bool)

(assert (=> b!6604202 m!7379826))

(assert (=> b!6604208 m!7379824))

(assert (=> b!6604208 m!7379824))

(declare-fun m!7379828 () Bool)

(assert (=> b!6604208 m!7379828))

(declare-fun m!7379830 () Bool)

(assert (=> b!6604203 m!7379830))

(assert (=> d!2071139 m!7379820))

(declare-fun m!7379832 () Bool)

(assert (=> d!2071139 m!7379832))

(assert (=> b!6604214 m!7379818))

(assert (=> b!6604213 m!7379824))

(assert (=> b!6604213 m!7379824))

(assert (=> b!6604213 m!7379828))

(assert (=> b!6603451 d!2071139))

(declare-fun bs!1692910 () Bool)

(declare-fun b!6604251 () Bool)

(assert (= bs!1692910 (and b!6604251 b!6603482)))

(declare-fun lambda!368296 () Int)

(assert (=> bs!1692910 (not (= lambda!368296 lambda!368229))))

(assert (=> bs!1692910 (not (= lambda!368296 lambda!368230))))

(declare-fun bs!1692911 () Bool)

(assert (= bs!1692911 (and b!6604251 b!6603463)))

(assert (=> bs!1692911 (not (= lambda!368296 lambda!368232))))

(assert (=> bs!1692911 (not (= lambda!368296 lambda!368233))))

(assert (=> b!6604251 true))

(assert (=> b!6604251 true))

(declare-fun bs!1692912 () Bool)

(declare-fun b!6604247 () Bool)

(assert (= bs!1692912 (and b!6604247 b!6603463)))

(declare-fun lambda!368297 () Int)

(assert (=> bs!1692912 (= (and (= s!2326 Nil!65588) (= (regOne!33454 lt!2414284) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 lt!2414284) lt!2414262)) (= lambda!368297 lambda!368233))))

(declare-fun bs!1692913 () Bool)

(assert (= bs!1692913 (and b!6604247 b!6603482)))

(assert (=> bs!1692913 (not (= lambda!368297 lambda!368229))))

(assert (=> bs!1692913 (= (and (= (regOne!33454 lt!2414284) (regOne!33454 r!7292)) (= (regTwo!33454 lt!2414284) (regTwo!33454 r!7292))) (= lambda!368297 lambda!368230))))

(assert (=> bs!1692912 (not (= lambda!368297 lambda!368232))))

(declare-fun bs!1692914 () Bool)

(assert (= bs!1692914 (and b!6604247 b!6604251)))

(assert (=> bs!1692914 (not (= lambda!368297 lambda!368296))))

(assert (=> b!6604247 true))

(assert (=> b!6604247 true))

(declare-fun d!2071141 () Bool)

(declare-fun c!1216804 () Bool)

(assert (=> d!2071141 (= c!1216804 ((_ is EmptyExpr!16471) lt!2414284))))

(declare-fun e!3995976 () Bool)

(assert (=> d!2071141 (= (matchRSpec!3572 lt!2414284 s!2326) e!3995976)))

(declare-fun e!3995978 () Bool)

(declare-fun call!577695 () Bool)

(assert (=> b!6604247 (= e!3995978 call!577695)))

(declare-fun b!6604248 () Bool)

(declare-fun e!3995977 () Bool)

(declare-fun e!3995975 () Bool)

(assert (=> b!6604248 (= e!3995977 e!3995975)))

(declare-fun res!2707983 () Bool)

(assert (=> b!6604248 (= res!2707983 (matchRSpec!3572 (regOne!33455 lt!2414284) s!2326))))

(assert (=> b!6604248 (=> res!2707983 e!3995975)))

(declare-fun b!6604249 () Bool)

(declare-fun res!2707981 () Bool)

(declare-fun e!3995980 () Bool)

(assert (=> b!6604249 (=> res!2707981 e!3995980)))

(declare-fun call!577696 () Bool)

(assert (=> b!6604249 (= res!2707981 call!577696)))

(assert (=> b!6604249 (= e!3995978 e!3995980)))

(declare-fun b!6604250 () Bool)

(assert (=> b!6604250 (= e!3995976 call!577696)))

(assert (=> b!6604251 (= e!3995980 call!577695)))

(declare-fun bm!577690 () Bool)

(declare-fun c!1216805 () Bool)

(assert (=> bm!577690 (= call!577695 (Exists!3541 (ite c!1216805 lambda!368296 lambda!368297)))))

(declare-fun b!6604252 () Bool)

(assert (=> b!6604252 (= e!3995975 (matchRSpec!3572 (regTwo!33455 lt!2414284) s!2326))))

(declare-fun b!6604253 () Bool)

(declare-fun e!3995974 () Bool)

(assert (=> b!6604253 (= e!3995976 e!3995974)))

(declare-fun res!2707982 () Bool)

(assert (=> b!6604253 (= res!2707982 (not ((_ is EmptyLang!16471) lt!2414284)))))

(assert (=> b!6604253 (=> (not res!2707982) (not e!3995974))))

(declare-fun b!6604254 () Bool)

(declare-fun c!1216806 () Bool)

(assert (=> b!6604254 (= c!1216806 ((_ is Union!16471) lt!2414284))))

(declare-fun e!3995979 () Bool)

(assert (=> b!6604254 (= e!3995979 e!3995977)))

(declare-fun b!6604255 () Bool)

(assert (=> b!6604255 (= e!3995977 e!3995978)))

(assert (=> b!6604255 (= c!1216805 ((_ is Star!16471) lt!2414284))))

(declare-fun b!6604256 () Bool)

(assert (=> b!6604256 (= e!3995979 (= s!2326 (Cons!65588 (c!1216570 lt!2414284) Nil!65588)))))

(declare-fun b!6604257 () Bool)

(declare-fun c!1216803 () Bool)

(assert (=> b!6604257 (= c!1216803 ((_ is ElementMatch!16471) lt!2414284))))

(assert (=> b!6604257 (= e!3995974 e!3995979)))

(declare-fun bm!577691 () Bool)

(assert (=> bm!577691 (= call!577696 (isEmpty!37865 s!2326))))

(assert (= (and d!2071141 c!1216804) b!6604250))

(assert (= (and d!2071141 (not c!1216804)) b!6604253))

(assert (= (and b!6604253 res!2707982) b!6604257))

(assert (= (and b!6604257 c!1216803) b!6604256))

(assert (= (and b!6604257 (not c!1216803)) b!6604254))

(assert (= (and b!6604254 c!1216806) b!6604248))

(assert (= (and b!6604254 (not c!1216806)) b!6604255))

(assert (= (and b!6604248 (not res!2707983)) b!6604252))

(assert (= (and b!6604255 c!1216805) b!6604249))

(assert (= (and b!6604255 (not c!1216805)) b!6604247))

(assert (= (and b!6604249 (not res!2707981)) b!6604251))

(assert (= (or b!6604251 b!6604247) bm!577690))

(assert (= (or b!6604250 b!6604249) bm!577691))

(declare-fun m!7379834 () Bool)

(assert (=> b!6604248 m!7379834))

(declare-fun m!7379836 () Bool)

(assert (=> bm!577690 m!7379836))

(declare-fun m!7379838 () Bool)

(assert (=> b!6604252 m!7379838))

(assert (=> bm!577691 m!7379820))

(assert (=> b!6603451 d!2071141))

(declare-fun d!2071143 () Bool)

(assert (=> d!2071143 (= (matchR!8654 lt!2414284 s!2326) (matchRSpec!3572 lt!2414284 s!2326))))

(declare-fun lt!2414389 () Unit!159219)

(declare-fun choose!49312 (Regex!16471 List!65712) Unit!159219)

(assert (=> d!2071143 (= lt!2414389 (choose!49312 lt!2414284 s!2326))))

(assert (=> d!2071143 (validRegex!8207 lt!2414284)))

(assert (=> d!2071143 (= (mainMatchTheorem!3572 lt!2414284 s!2326) lt!2414389)))

(declare-fun bs!1692915 () Bool)

(assert (= bs!1692915 d!2071143))

(assert (=> bs!1692915 m!7379286))

(assert (=> bs!1692915 m!7379288))

(declare-fun m!7379840 () Bool)

(assert (=> bs!1692915 m!7379840))

(assert (=> bs!1692915 m!7379832))

(assert (=> b!6603451 d!2071143))

(declare-fun b!6604258 () Bool)

(declare-fun e!3995982 () (InoxSet Context!11710))

(declare-fun e!3995983 () (InoxSet Context!11710))

(assert (=> b!6604258 (= e!3995982 e!3995983)))

(declare-fun c!1216807 () Bool)

(assert (=> b!6604258 (= c!1216807 ((_ is Cons!65589) (exprs!6355 lt!2414251)))))

(declare-fun b!6604259 () Bool)

(declare-fun e!3995981 () Bool)

(assert (=> b!6604259 (= e!3995981 (nullable!6464 (h!72037 (exprs!6355 lt!2414251))))))

(declare-fun b!6604260 () Bool)

(declare-fun call!577697 () (InoxSet Context!11710))

(assert (=> b!6604260 (= e!3995982 ((_ map or) call!577697 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 lt!2414251))) (h!72036 s!2326))))))

(declare-fun b!6604261 () Bool)

(assert (=> b!6604261 (= e!3995983 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071145 () Bool)

(declare-fun c!1216808 () Bool)

(assert (=> d!2071145 (= c!1216808 e!3995981)))

(declare-fun res!2707984 () Bool)

(assert (=> d!2071145 (=> (not res!2707984) (not e!3995981))))

(assert (=> d!2071145 (= res!2707984 ((_ is Cons!65589) (exprs!6355 lt!2414251)))))

(assert (=> d!2071145 (= (derivationStepZipperUp!1645 lt!2414251 (h!72036 s!2326)) e!3995982)))

(declare-fun bm!577692 () Bool)

(assert (=> bm!577692 (= call!577697 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 lt!2414251)) (Context!11711 (t!379365 (exprs!6355 lt!2414251))) (h!72036 s!2326)))))

(declare-fun b!6604262 () Bool)

(assert (=> b!6604262 (= e!3995983 call!577697)))

(assert (= (and d!2071145 res!2707984) b!6604259))

(assert (= (and d!2071145 c!1216808) b!6604260))

(assert (= (and d!2071145 (not c!1216808)) b!6604258))

(assert (= (and b!6604258 c!1216807) b!6604262))

(assert (= (and b!6604258 (not c!1216807)) b!6604261))

(assert (= (or b!6604260 b!6604262) bm!577692))

(declare-fun m!7379842 () Bool)

(assert (=> b!6604259 m!7379842))

(declare-fun m!7379844 () Bool)

(assert (=> b!6604260 m!7379844))

(declare-fun m!7379846 () Bool)

(assert (=> bm!577692 m!7379846))

(assert (=> b!6603492 d!2071145))

(declare-fun d!2071147 () Bool)

(assert (=> d!2071147 (= (flatMap!1976 lt!2414260 lambda!368231) (dynLambda!26117 lambda!368231 lt!2414256))))

(declare-fun lt!2414390 () Unit!159219)

(assert (=> d!2071147 (= lt!2414390 (choose!49309 lt!2414260 lt!2414256 lambda!368231))))

(assert (=> d!2071147 (= lt!2414260 (store ((as const (Array Context!11710 Bool)) false) lt!2414256 true))))

(assert (=> d!2071147 (= (lemmaFlatMapOnSingletonSet!1502 lt!2414260 lt!2414256 lambda!368231) lt!2414390)))

(declare-fun b_lambda!249919 () Bool)

(assert (=> (not b_lambda!249919) (not d!2071147)))

(declare-fun bs!1692916 () Bool)

(assert (= bs!1692916 d!2071147))

(assert (=> bs!1692916 m!7379254))

(declare-fun m!7379848 () Bool)

(assert (=> bs!1692916 m!7379848))

(declare-fun m!7379850 () Bool)

(assert (=> bs!1692916 m!7379850))

(assert (=> bs!1692916 m!7379258))

(assert (=> b!6603492 d!2071147))

(declare-fun d!2071149 () Bool)

(assert (=> d!2071149 (= (flatMap!1976 lt!2414287 lambda!368231) (choose!49308 lt!2414287 lambda!368231))))

(declare-fun bs!1692917 () Bool)

(assert (= bs!1692917 d!2071149))

(declare-fun m!7379852 () Bool)

(assert (=> bs!1692917 m!7379852))

(assert (=> b!6603492 d!2071149))

(declare-fun d!2071151 () Bool)

(assert (=> d!2071151 (= (flatMap!1976 lt!2414287 lambda!368231) (dynLambda!26117 lambda!368231 lt!2414251))))

(declare-fun lt!2414391 () Unit!159219)

(assert (=> d!2071151 (= lt!2414391 (choose!49309 lt!2414287 lt!2414251 lambda!368231))))

(assert (=> d!2071151 (= lt!2414287 (store ((as const (Array Context!11710 Bool)) false) lt!2414251 true))))

(assert (=> d!2071151 (= (lemmaFlatMapOnSingletonSet!1502 lt!2414287 lt!2414251 lambda!368231) lt!2414391)))

(declare-fun b_lambda!249921 () Bool)

(assert (=> (not b_lambda!249921) (not d!2071151)))

(declare-fun bs!1692918 () Bool)

(assert (= bs!1692918 d!2071151))

(assert (=> bs!1692918 m!7379262))

(declare-fun m!7379854 () Bool)

(assert (=> bs!1692918 m!7379854))

(declare-fun m!7379856 () Bool)

(assert (=> bs!1692918 m!7379856))

(assert (=> bs!1692918 m!7379264))

(assert (=> b!6603492 d!2071151))

(declare-fun d!2071153 () Bool)

(assert (=> d!2071153 (= (flatMap!1976 lt!2414260 lambda!368231) (choose!49308 lt!2414260 lambda!368231))))

(declare-fun bs!1692919 () Bool)

(assert (= bs!1692919 d!2071153))

(declare-fun m!7379858 () Bool)

(assert (=> bs!1692919 m!7379858))

(assert (=> b!6603492 d!2071153))

(declare-fun b!6604263 () Bool)

(declare-fun e!3995985 () (InoxSet Context!11710))

(declare-fun e!3995986 () (InoxSet Context!11710))

(assert (=> b!6604263 (= e!3995985 e!3995986)))

(declare-fun c!1216809 () Bool)

(assert (=> b!6604263 (= c!1216809 ((_ is Cons!65589) (exprs!6355 lt!2414256)))))

(declare-fun b!6604264 () Bool)

(declare-fun e!3995984 () Bool)

(assert (=> b!6604264 (= e!3995984 (nullable!6464 (h!72037 (exprs!6355 lt!2414256))))))

(declare-fun call!577698 () (InoxSet Context!11710))

(declare-fun b!6604265 () Bool)

(assert (=> b!6604265 (= e!3995985 ((_ map or) call!577698 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 lt!2414256))) (h!72036 s!2326))))))

(declare-fun b!6604266 () Bool)

(assert (=> b!6604266 (= e!3995986 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071155 () Bool)

(declare-fun c!1216810 () Bool)

(assert (=> d!2071155 (= c!1216810 e!3995984)))

(declare-fun res!2707985 () Bool)

(assert (=> d!2071155 (=> (not res!2707985) (not e!3995984))))

(assert (=> d!2071155 (= res!2707985 ((_ is Cons!65589) (exprs!6355 lt!2414256)))))

(assert (=> d!2071155 (= (derivationStepZipperUp!1645 lt!2414256 (h!72036 s!2326)) e!3995985)))

(declare-fun bm!577693 () Bool)

(assert (=> bm!577693 (= call!577698 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 lt!2414256)) (Context!11711 (t!379365 (exprs!6355 lt!2414256))) (h!72036 s!2326)))))

(declare-fun b!6604267 () Bool)

(assert (=> b!6604267 (= e!3995986 call!577698)))

(assert (= (and d!2071155 res!2707985) b!6604264))

(assert (= (and d!2071155 c!1216810) b!6604265))

(assert (= (and d!2071155 (not c!1216810)) b!6604263))

(assert (= (and b!6604263 c!1216809) b!6604267))

(assert (= (and b!6604263 (not c!1216809)) b!6604266))

(assert (= (or b!6604265 b!6604267) bm!577693))

(declare-fun m!7379860 () Bool)

(assert (=> b!6604264 m!7379860))

(declare-fun m!7379862 () Bool)

(assert (=> b!6604265 m!7379862))

(declare-fun m!7379864 () Bool)

(assert (=> bm!577693 m!7379864))

(assert (=> b!6603492 d!2071155))

(declare-fun d!2071157 () Bool)

(declare-fun lt!2414394 () Regex!16471)

(assert (=> d!2071157 (validRegex!8207 lt!2414394)))

(assert (=> d!2071157 (= lt!2414394 (generalisedUnion!2315 (unfocusZipperList!1892 (Cons!65590 lt!2414251 Nil!65590))))))

(assert (=> d!2071157 (= (unfocusZipper!2213 (Cons!65590 lt!2414251 Nil!65590)) lt!2414394)))

(declare-fun bs!1692920 () Bool)

(assert (= bs!1692920 d!2071157))

(declare-fun m!7379866 () Bool)

(assert (=> bs!1692920 m!7379866))

(declare-fun m!7379868 () Bool)

(assert (=> bs!1692920 m!7379868))

(assert (=> bs!1692920 m!7379868))

(declare-fun m!7379870 () Bool)

(assert (=> bs!1692920 m!7379870))

(assert (=> b!6603492 d!2071157))

(declare-fun d!2071159 () Bool)

(assert (=> d!2071159 (= (flatMap!1976 lt!2414283 lambda!368231) (choose!49308 lt!2414283 lambda!368231))))

(declare-fun bs!1692921 () Bool)

(assert (= bs!1692921 d!2071159))

(declare-fun m!7379872 () Bool)

(assert (=> bs!1692921 m!7379872))

(assert (=> b!6603472 d!2071159))

(declare-fun b!6604268 () Bool)

(declare-fun e!3995988 () (InoxSet Context!11710))

(declare-fun e!3995989 () (InoxSet Context!11710))

(assert (=> b!6604268 (= e!3995988 e!3995989)))

(declare-fun c!1216811 () Bool)

(assert (=> b!6604268 (= c!1216811 ((_ is Cons!65589) (exprs!6355 lt!2414288)))))

(declare-fun b!6604269 () Bool)

(declare-fun e!3995987 () Bool)

(assert (=> b!6604269 (= e!3995987 (nullable!6464 (h!72037 (exprs!6355 lt!2414288))))))

(declare-fun b!6604270 () Bool)

(declare-fun call!577699 () (InoxSet Context!11710))

(assert (=> b!6604270 (= e!3995988 ((_ map or) call!577699 (derivationStepZipperUp!1645 (Context!11711 (t!379365 (exprs!6355 lt!2414288))) (h!72036 s!2326))))))

(declare-fun b!6604271 () Bool)

(assert (=> b!6604271 (= e!3995989 ((as const (Array Context!11710 Bool)) false))))

(declare-fun d!2071161 () Bool)

(declare-fun c!1216812 () Bool)

(assert (=> d!2071161 (= c!1216812 e!3995987)))

(declare-fun res!2707986 () Bool)

(assert (=> d!2071161 (=> (not res!2707986) (not e!3995987))))

(assert (=> d!2071161 (= res!2707986 ((_ is Cons!65589) (exprs!6355 lt!2414288)))))

(assert (=> d!2071161 (= (derivationStepZipperUp!1645 lt!2414288 (h!72036 s!2326)) e!3995988)))

(declare-fun bm!577694 () Bool)

(assert (=> bm!577694 (= call!577699 (derivationStepZipperDown!1719 (h!72037 (exprs!6355 lt!2414288)) (Context!11711 (t!379365 (exprs!6355 lt!2414288))) (h!72036 s!2326)))))

(declare-fun b!6604272 () Bool)

(assert (=> b!6604272 (= e!3995989 call!577699)))

(assert (= (and d!2071161 res!2707986) b!6604269))

(assert (= (and d!2071161 c!1216812) b!6604270))

(assert (= (and d!2071161 (not c!1216812)) b!6604268))

(assert (= (and b!6604268 c!1216811) b!6604272))

(assert (= (and b!6604268 (not c!1216811)) b!6604271))

(assert (= (or b!6604270 b!6604272) bm!577694))

(declare-fun m!7379874 () Bool)

(assert (=> b!6604269 m!7379874))

(declare-fun m!7379876 () Bool)

(assert (=> b!6604270 m!7379876))

(declare-fun m!7379878 () Bool)

(assert (=> bm!577694 m!7379878))

(assert (=> b!6603472 d!2071161))

(declare-fun d!2071163 () Bool)

(assert (=> d!2071163 (= (flatMap!1976 lt!2414283 lambda!368231) (dynLambda!26117 lambda!368231 lt!2414288))))

(declare-fun lt!2414395 () Unit!159219)

(assert (=> d!2071163 (= lt!2414395 (choose!49309 lt!2414283 lt!2414288 lambda!368231))))

(assert (=> d!2071163 (= lt!2414283 (store ((as const (Array Context!11710 Bool)) false) lt!2414288 true))))

(assert (=> d!2071163 (= (lemmaFlatMapOnSingletonSet!1502 lt!2414283 lt!2414288 lambda!368231) lt!2414395)))

(declare-fun b_lambda!249923 () Bool)

(assert (=> (not b_lambda!249923) (not d!2071163)))

(declare-fun bs!1692922 () Bool)

(assert (= bs!1692922 d!2071163))

(assert (=> bs!1692922 m!7379276))

(declare-fun m!7379880 () Bool)

(assert (=> bs!1692922 m!7379880))

(declare-fun m!7379882 () Bool)

(assert (=> bs!1692922 m!7379882))

(assert (=> bs!1692922 m!7379270))

(assert (=> b!6603472 d!2071163))

(declare-fun bs!1692923 () Bool)

(declare-fun d!2071165 () Bool)

(assert (= bs!1692923 (and d!2071165 b!6603471)))

(declare-fun lambda!368300 () Int)

(assert (=> bs!1692923 (= lambda!368300 lambda!368231)))

(assert (=> d!2071165 true))

(assert (=> d!2071165 (= (derivationStepZipper!2437 lt!2414283 (h!72036 s!2326)) (flatMap!1976 lt!2414283 lambda!368300))))

(declare-fun bs!1692924 () Bool)

(assert (= bs!1692924 d!2071165))

(declare-fun m!7379884 () Bool)

(assert (=> bs!1692924 m!7379884))

(assert (=> b!6603472 d!2071165))

(declare-fun bs!1692925 () Bool)

(declare-fun d!2071167 () Bool)

(assert (= bs!1692925 (and d!2071167 d!2071053)))

(declare-fun lambda!368303 () Int)

(assert (=> bs!1692925 (= lambda!368303 lambda!368284)))

(declare-fun bs!1692926 () Bool)

(assert (= bs!1692926 (and d!2071167 d!2071095)))

(assert (=> bs!1692926 (= lambda!368303 lambda!368291)))

(declare-fun b!6604295 () Bool)

(declare-fun e!3996006 () Bool)

(declare-fun e!3996005 () Bool)

(assert (=> b!6604295 (= e!3996006 e!3996005)))

(declare-fun c!1216825 () Bool)

(assert (=> b!6604295 (= c!1216825 (isEmpty!37862 (tail!12479 (unfocusZipperList!1892 zl!343))))))

(declare-fun b!6604296 () Bool)

(declare-fun lt!2414398 () Regex!16471)

(assert (=> b!6604296 (= e!3996005 (= lt!2414398 (head!13394 (unfocusZipperList!1892 zl!343))))))

(declare-fun b!6604297 () Bool)

(declare-fun e!3996003 () Regex!16471)

(assert (=> b!6604297 (= e!3996003 (Union!16471 (h!72037 (unfocusZipperList!1892 zl!343)) (generalisedUnion!2315 (t!379365 (unfocusZipperList!1892 zl!343)))))))

(declare-fun b!6604298 () Bool)

(declare-fun e!3996002 () Regex!16471)

(assert (=> b!6604298 (= e!3996002 e!3996003)))

(declare-fun c!1216823 () Bool)

(assert (=> b!6604298 (= c!1216823 ((_ is Cons!65589) (unfocusZipperList!1892 zl!343)))))

(declare-fun e!3996004 () Bool)

(assert (=> d!2071167 e!3996004))

(declare-fun res!2707992 () Bool)

(assert (=> d!2071167 (=> (not res!2707992) (not e!3996004))))

(assert (=> d!2071167 (= res!2707992 (validRegex!8207 lt!2414398))))

(assert (=> d!2071167 (= lt!2414398 e!3996002)))

(declare-fun c!1216824 () Bool)

(declare-fun e!3996007 () Bool)

(assert (=> d!2071167 (= c!1216824 e!3996007)))

(declare-fun res!2707991 () Bool)

(assert (=> d!2071167 (=> (not res!2707991) (not e!3996007))))

(assert (=> d!2071167 (= res!2707991 ((_ is Cons!65589) (unfocusZipperList!1892 zl!343)))))

(assert (=> d!2071167 (forall!15665 (unfocusZipperList!1892 zl!343) lambda!368303)))

(assert (=> d!2071167 (= (generalisedUnion!2315 (unfocusZipperList!1892 zl!343)) lt!2414398)))

(declare-fun b!6604299 () Bool)

(declare-fun isUnion!1288 (Regex!16471) Bool)

(assert (=> b!6604299 (= e!3996005 (isUnion!1288 lt!2414398))))

(declare-fun b!6604300 () Bool)

(assert (=> b!6604300 (= e!3996004 e!3996006)))

(declare-fun c!1216826 () Bool)

(assert (=> b!6604300 (= c!1216826 (isEmpty!37862 (unfocusZipperList!1892 zl!343)))))

(declare-fun b!6604301 () Bool)

(assert (=> b!6604301 (= e!3996007 (isEmpty!37862 (t!379365 (unfocusZipperList!1892 zl!343))))))

(declare-fun b!6604302 () Bool)

(assert (=> b!6604302 (= e!3996002 (h!72037 (unfocusZipperList!1892 zl!343)))))

(declare-fun b!6604303 () Bool)

(declare-fun isEmptyLang!1858 (Regex!16471) Bool)

(assert (=> b!6604303 (= e!3996006 (isEmptyLang!1858 lt!2414398))))

(declare-fun b!6604304 () Bool)

(assert (=> b!6604304 (= e!3996003 EmptyLang!16471)))

(assert (= (and d!2071167 res!2707991) b!6604301))

(assert (= (and d!2071167 c!1216824) b!6604302))

(assert (= (and d!2071167 (not c!1216824)) b!6604298))

(assert (= (and b!6604298 c!1216823) b!6604297))

(assert (= (and b!6604298 (not c!1216823)) b!6604304))

(assert (= (and d!2071167 res!2707992) b!6604300))

(assert (= (and b!6604300 c!1216826) b!6604303))

(assert (= (and b!6604300 (not c!1216826)) b!6604295))

(assert (= (and b!6604295 c!1216825) b!6604296))

(assert (= (and b!6604295 (not c!1216825)) b!6604299))

(assert (=> b!6604295 m!7379198))

(declare-fun m!7379886 () Bool)

(assert (=> b!6604295 m!7379886))

(assert (=> b!6604295 m!7379886))

(declare-fun m!7379888 () Bool)

(assert (=> b!6604295 m!7379888))

(declare-fun m!7379890 () Bool)

(assert (=> b!6604297 m!7379890))

(assert (=> b!6604300 m!7379198))

(declare-fun m!7379892 () Bool)

(assert (=> b!6604300 m!7379892))

(declare-fun m!7379894 () Bool)

(assert (=> b!6604299 m!7379894))

(declare-fun m!7379896 () Bool)

(assert (=> b!6604301 m!7379896))

(declare-fun m!7379898 () Bool)

(assert (=> b!6604303 m!7379898))

(declare-fun m!7379900 () Bool)

(assert (=> d!2071167 m!7379900))

(assert (=> d!2071167 m!7379198))

(declare-fun m!7379902 () Bool)

(assert (=> d!2071167 m!7379902))

(assert (=> b!6604296 m!7379198))

(declare-fun m!7379904 () Bool)

(assert (=> b!6604296 m!7379904))

(assert (=> b!6603452 d!2071167))

(declare-fun bs!1692927 () Bool)

(declare-fun d!2071169 () Bool)

(assert (= bs!1692927 (and d!2071169 d!2071053)))

(declare-fun lambda!368306 () Int)

(assert (=> bs!1692927 (= lambda!368306 lambda!368284)))

(declare-fun bs!1692928 () Bool)

(assert (= bs!1692928 (and d!2071169 d!2071095)))

(assert (=> bs!1692928 (= lambda!368306 lambda!368291)))

(declare-fun bs!1692929 () Bool)

(assert (= bs!1692929 (and d!2071169 d!2071167)))

(assert (=> bs!1692929 (= lambda!368306 lambda!368303)))

(declare-fun lt!2414401 () List!65713)

(assert (=> d!2071169 (forall!15665 lt!2414401 lambda!368306)))

(declare-fun e!3996010 () List!65713)

(assert (=> d!2071169 (= lt!2414401 e!3996010)))

(declare-fun c!1216829 () Bool)

(assert (=> d!2071169 (= c!1216829 ((_ is Cons!65590) zl!343))))

(assert (=> d!2071169 (= (unfocusZipperList!1892 zl!343) lt!2414401)))

(declare-fun b!6604309 () Bool)

(assert (=> b!6604309 (= e!3996010 (Cons!65589 (generalisedConcat!2068 (exprs!6355 (h!72038 zl!343))) (unfocusZipperList!1892 (t!379366 zl!343))))))

(declare-fun b!6604310 () Bool)

(assert (=> b!6604310 (= e!3996010 Nil!65589)))

(assert (= (and d!2071169 c!1216829) b!6604309))

(assert (= (and d!2071169 (not c!1216829)) b!6604310))

(declare-fun m!7379906 () Bool)

(assert (=> d!2071169 m!7379906))

(assert (=> b!6604309 m!7379250))

(declare-fun m!7379908 () Bool)

(assert (=> b!6604309 m!7379908))

(assert (=> b!6603452 d!2071169))

(declare-fun d!2071171 () Bool)

(assert (=> d!2071171 (= (isEmpty!37862 (t!379365 (exprs!6355 (h!72038 zl!343)))) ((_ is Nil!65589) (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(assert (=> b!6603493 d!2071171))

(declare-fun d!2071173 () Bool)

(assert (=> d!2071173 (= (isEmpty!37861 (t!379366 zl!343)) ((_ is Nil!65590) (t!379366 zl!343)))))

(assert (=> b!6603484 d!2071173))

(declare-fun b!6604329 () Bool)

(declare-fun res!2708004 () Bool)

(declare-fun e!3996025 () Bool)

(assert (=> b!6604329 (=> (not res!2708004) (not e!3996025))))

(declare-fun call!577707 () Bool)

(assert (=> b!6604329 (= res!2708004 call!577707)))

(declare-fun e!3996029 () Bool)

(assert (=> b!6604329 (= e!3996029 e!3996025)))

(declare-fun b!6604330 () Bool)

(declare-fun call!577706 () Bool)

(assert (=> b!6604330 (= e!3996025 call!577706)))

(declare-fun bm!577701 () Bool)

(declare-fun call!577708 () Bool)

(assert (=> bm!577701 (= call!577707 call!577708)))

(declare-fun b!6604331 () Bool)

(declare-fun e!3996026 () Bool)

(declare-fun e!3996027 () Bool)

(assert (=> b!6604331 (= e!3996026 e!3996027)))

(declare-fun res!2708003 () Bool)

(assert (=> b!6604331 (= res!2708003 (not (nullable!6464 (reg!16800 (reg!16800 (regOne!33454 r!7292))))))))

(assert (=> b!6604331 (=> (not res!2708003) (not e!3996027))))

(declare-fun b!6604332 () Bool)

(assert (=> b!6604332 (= e!3996027 call!577708)))

(declare-fun b!6604333 () Bool)

(declare-fun e!3996031 () Bool)

(assert (=> b!6604333 (= e!3996031 e!3996026)))

(declare-fun c!1216835 () Bool)

(assert (=> b!6604333 (= c!1216835 ((_ is Star!16471) (reg!16800 (regOne!33454 r!7292))))))

(declare-fun bm!577702 () Bool)

(declare-fun c!1216834 () Bool)

(assert (=> bm!577702 (= call!577706 (validRegex!8207 (ite c!1216834 (regTwo!33455 (reg!16800 (regOne!33454 r!7292))) (regTwo!33454 (reg!16800 (regOne!33454 r!7292))))))))

(declare-fun bm!577703 () Bool)

(assert (=> bm!577703 (= call!577708 (validRegex!8207 (ite c!1216835 (reg!16800 (reg!16800 (regOne!33454 r!7292))) (ite c!1216834 (regOne!33455 (reg!16800 (regOne!33454 r!7292))) (regOne!33454 (reg!16800 (regOne!33454 r!7292)))))))))

(declare-fun b!6604334 () Bool)

(assert (=> b!6604334 (= e!3996026 e!3996029)))

(assert (=> b!6604334 (= c!1216834 ((_ is Union!16471) (reg!16800 (regOne!33454 r!7292))))))

(declare-fun b!6604335 () Bool)

(declare-fun e!3996030 () Bool)

(declare-fun e!3996028 () Bool)

(assert (=> b!6604335 (= e!3996030 e!3996028)))

(declare-fun res!2708005 () Bool)

(assert (=> b!6604335 (=> (not res!2708005) (not e!3996028))))

(assert (=> b!6604335 (= res!2708005 call!577707)))

(declare-fun d!2071175 () Bool)

(declare-fun res!2708006 () Bool)

(assert (=> d!2071175 (=> res!2708006 e!3996031)))

(assert (=> d!2071175 (= res!2708006 ((_ is ElementMatch!16471) (reg!16800 (regOne!33454 r!7292))))))

(assert (=> d!2071175 (= (validRegex!8207 (reg!16800 (regOne!33454 r!7292))) e!3996031)))

(declare-fun b!6604336 () Bool)

(assert (=> b!6604336 (= e!3996028 call!577706)))

(declare-fun b!6604337 () Bool)

(declare-fun res!2708007 () Bool)

(assert (=> b!6604337 (=> res!2708007 e!3996030)))

(assert (=> b!6604337 (= res!2708007 (not ((_ is Concat!25316) (reg!16800 (regOne!33454 r!7292)))))))

(assert (=> b!6604337 (= e!3996029 e!3996030)))

(assert (= (and d!2071175 (not res!2708006)) b!6604333))

(assert (= (and b!6604333 c!1216835) b!6604331))

(assert (= (and b!6604333 (not c!1216835)) b!6604334))

(assert (= (and b!6604331 res!2708003) b!6604332))

(assert (= (and b!6604334 c!1216834) b!6604329))

(assert (= (and b!6604334 (not c!1216834)) b!6604337))

(assert (= (and b!6604329 res!2708004) b!6604330))

(assert (= (and b!6604337 (not res!2708007)) b!6604335))

(assert (= (and b!6604335 res!2708005) b!6604336))

(assert (= (or b!6604330 b!6604336) bm!577702))

(assert (= (or b!6604329 b!6604335) bm!577701))

(assert (= (or b!6604332 bm!577701) bm!577703))

(declare-fun m!7379910 () Bool)

(assert (=> b!6604331 m!7379910))

(declare-fun m!7379912 () Bool)

(assert (=> bm!577702 m!7379912))

(declare-fun m!7379914 () Bool)

(assert (=> bm!577703 m!7379914))

(assert (=> b!6603463 d!2071175))

(declare-fun d!2071177 () Bool)

(assert (=> d!2071177 (= (matchR!8654 lt!2414262 Nil!65588) (matchRSpec!3572 lt!2414262 Nil!65588))))

(declare-fun lt!2414402 () Unit!159219)

(assert (=> d!2071177 (= lt!2414402 (choose!49312 lt!2414262 Nil!65588))))

(assert (=> d!2071177 (validRegex!8207 lt!2414262)))

(assert (=> d!2071177 (= (mainMatchTheorem!3572 lt!2414262 Nil!65588) lt!2414402)))

(declare-fun bs!1692930 () Bool)

(assert (= bs!1692930 d!2071177))

(assert (=> bs!1692930 m!7379180))

(assert (=> bs!1692930 m!7379184))

(declare-fun m!7379916 () Bool)

(assert (=> bs!1692930 m!7379916))

(declare-fun m!7379918 () Bool)

(assert (=> bs!1692930 m!7379918))

(assert (=> b!6603463 d!2071177))

(declare-fun bs!1692931 () Bool)

(declare-fun b!6604342 () Bool)

(assert (= bs!1692931 (and b!6604342 b!6604247)))

(declare-fun lambda!368307 () Int)

(assert (=> bs!1692931 (not (= lambda!368307 lambda!368297))))

(declare-fun bs!1692932 () Bool)

(assert (= bs!1692932 (and b!6604342 b!6603463)))

(assert (=> bs!1692932 (not (= lambda!368307 lambda!368233))))

(declare-fun bs!1692933 () Bool)

(assert (= bs!1692933 (and b!6604342 b!6603482)))

(assert (=> bs!1692933 (not (= lambda!368307 lambda!368229))))

(assert (=> bs!1692933 (not (= lambda!368307 lambda!368230))))

(assert (=> bs!1692932 (not (= lambda!368307 lambda!368232))))

(declare-fun bs!1692934 () Bool)

(assert (= bs!1692934 (and b!6604342 b!6604251)))

(assert (=> bs!1692934 (= (and (= Nil!65588 s!2326) (= (reg!16800 lt!2414262) (reg!16800 lt!2414284)) (= lt!2414262 lt!2414284)) (= lambda!368307 lambda!368296))))

(assert (=> b!6604342 true))

(assert (=> b!6604342 true))

(declare-fun bs!1692935 () Bool)

(declare-fun b!6604338 () Bool)

(assert (= bs!1692935 (and b!6604338 b!6604247)))

(declare-fun lambda!368308 () Int)

(assert (=> bs!1692935 (= (and (= Nil!65588 s!2326) (= (regOne!33454 lt!2414262) (regOne!33454 lt!2414284)) (= (regTwo!33454 lt!2414262) (regTwo!33454 lt!2414284))) (= lambda!368308 lambda!368297))))

(declare-fun bs!1692936 () Bool)

(assert (= bs!1692936 (and b!6604338 b!6603482)))

(assert (=> bs!1692936 (not (= lambda!368308 lambda!368229))))

(assert (=> bs!1692936 (= (and (= Nil!65588 s!2326) (= (regOne!33454 lt!2414262) (regOne!33454 r!7292)) (= (regTwo!33454 lt!2414262) (regTwo!33454 r!7292))) (= lambda!368308 lambda!368230))))

(declare-fun bs!1692937 () Bool)

(assert (= bs!1692937 (and b!6604338 b!6603463)))

(assert (=> bs!1692937 (not (= lambda!368308 lambda!368232))))

(declare-fun bs!1692938 () Bool)

(assert (= bs!1692938 (and b!6604338 b!6604251)))

(assert (=> bs!1692938 (not (= lambda!368308 lambda!368296))))

(declare-fun bs!1692939 () Bool)

(assert (= bs!1692939 (and b!6604338 b!6604342)))

(assert (=> bs!1692939 (not (= lambda!368308 lambda!368307))))

(assert (=> bs!1692937 (= (and (= (regOne!33454 lt!2414262) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 lt!2414262) lt!2414262)) (= lambda!368308 lambda!368233))))

(assert (=> b!6604338 true))

(assert (=> b!6604338 true))

(declare-fun d!2071179 () Bool)

(declare-fun c!1216837 () Bool)

(assert (=> d!2071179 (= c!1216837 ((_ is EmptyExpr!16471) lt!2414262))))

(declare-fun e!3996034 () Bool)

(assert (=> d!2071179 (= (matchRSpec!3572 lt!2414262 Nil!65588) e!3996034)))

(declare-fun e!3996036 () Bool)

(declare-fun call!577709 () Bool)

(assert (=> b!6604338 (= e!3996036 call!577709)))

(declare-fun b!6604339 () Bool)

(declare-fun e!3996035 () Bool)

(declare-fun e!3996033 () Bool)

(assert (=> b!6604339 (= e!3996035 e!3996033)))

(declare-fun res!2708010 () Bool)

(assert (=> b!6604339 (= res!2708010 (matchRSpec!3572 (regOne!33455 lt!2414262) Nil!65588))))

(assert (=> b!6604339 (=> res!2708010 e!3996033)))

(declare-fun b!6604340 () Bool)

(declare-fun res!2708008 () Bool)

(declare-fun e!3996038 () Bool)

(assert (=> b!6604340 (=> res!2708008 e!3996038)))

(declare-fun call!577710 () Bool)

(assert (=> b!6604340 (= res!2708008 call!577710)))

(assert (=> b!6604340 (= e!3996036 e!3996038)))

(declare-fun b!6604341 () Bool)

(assert (=> b!6604341 (= e!3996034 call!577710)))

(assert (=> b!6604342 (= e!3996038 call!577709)))

(declare-fun c!1216838 () Bool)

(declare-fun bm!577704 () Bool)

(assert (=> bm!577704 (= call!577709 (Exists!3541 (ite c!1216838 lambda!368307 lambda!368308)))))

(declare-fun b!6604343 () Bool)

(assert (=> b!6604343 (= e!3996033 (matchRSpec!3572 (regTwo!33455 lt!2414262) Nil!65588))))

(declare-fun b!6604344 () Bool)

(declare-fun e!3996032 () Bool)

(assert (=> b!6604344 (= e!3996034 e!3996032)))

(declare-fun res!2708009 () Bool)

(assert (=> b!6604344 (= res!2708009 (not ((_ is EmptyLang!16471) lt!2414262)))))

(assert (=> b!6604344 (=> (not res!2708009) (not e!3996032))))

(declare-fun b!6604345 () Bool)

(declare-fun c!1216839 () Bool)

(assert (=> b!6604345 (= c!1216839 ((_ is Union!16471) lt!2414262))))

(declare-fun e!3996037 () Bool)

(assert (=> b!6604345 (= e!3996037 e!3996035)))

(declare-fun b!6604346 () Bool)

(assert (=> b!6604346 (= e!3996035 e!3996036)))

(assert (=> b!6604346 (= c!1216838 ((_ is Star!16471) lt!2414262))))

(declare-fun b!6604347 () Bool)

(assert (=> b!6604347 (= e!3996037 (= Nil!65588 (Cons!65588 (c!1216570 lt!2414262) Nil!65588)))))

(declare-fun b!6604348 () Bool)

(declare-fun c!1216836 () Bool)

(assert (=> b!6604348 (= c!1216836 ((_ is ElementMatch!16471) lt!2414262))))

(assert (=> b!6604348 (= e!3996032 e!3996037)))

(declare-fun bm!577705 () Bool)

(assert (=> bm!577705 (= call!577710 (isEmpty!37865 Nil!65588))))

(assert (= (and d!2071179 c!1216837) b!6604341))

(assert (= (and d!2071179 (not c!1216837)) b!6604344))

(assert (= (and b!6604344 res!2708009) b!6604348))

(assert (= (and b!6604348 c!1216836) b!6604347))

(assert (= (and b!6604348 (not c!1216836)) b!6604345))

(assert (= (and b!6604345 c!1216839) b!6604339))

(assert (= (and b!6604345 (not c!1216839)) b!6604346))

(assert (= (and b!6604339 (not res!2708010)) b!6604343))

(assert (= (and b!6604346 c!1216838) b!6604340))

(assert (= (and b!6604346 (not c!1216838)) b!6604338))

(assert (= (and b!6604340 (not res!2708008)) b!6604342))

(assert (= (or b!6604342 b!6604338) bm!577704))

(assert (= (or b!6604341 b!6604340) bm!577705))

(declare-fun m!7379920 () Bool)

(assert (=> b!6604339 m!7379920))

(declare-fun m!7379922 () Bool)

(assert (=> bm!577704 m!7379922))

(declare-fun m!7379924 () Bool)

(assert (=> b!6604343 m!7379924))

(declare-fun m!7379926 () Bool)

(assert (=> bm!577705 m!7379926))

(assert (=> b!6603463 d!2071179))

(declare-fun d!2071181 () Bool)

(declare-fun isEmpty!37866 (Option!16362) Bool)

(assert (=> d!2071181 (= (isDefined!13065 (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588 Nil!65588 Nil!65588)) (not (isEmpty!37866 (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588 Nil!65588 Nil!65588))))))

(declare-fun bs!1692940 () Bool)

(assert (= bs!1692940 d!2071181))

(assert (=> bs!1692940 m!7379192))

(declare-fun m!7379928 () Bool)

(assert (=> bs!1692940 m!7379928))

(assert (=> b!6603463 d!2071181))

(declare-fun d!2071183 () Bool)

(declare-fun choose!49313 (Int) Bool)

(assert (=> d!2071183 (= (Exists!3541 lambda!368233) (choose!49313 lambda!368233))))

(declare-fun bs!1692941 () Bool)

(assert (= bs!1692941 d!2071183))

(declare-fun m!7379930 () Bool)

(assert (=> bs!1692941 m!7379930))

(assert (=> b!6603463 d!2071183))

(declare-fun b!6604367 () Bool)

(declare-fun res!2708025 () Bool)

(declare-fun e!3996049 () Bool)

(assert (=> b!6604367 (=> (not res!2708025) (not e!3996049))))

(declare-fun lt!2414409 () Option!16362)

(declare-fun get!22788 (Option!16362) tuple2!66900)

(assert (=> b!6604367 (= res!2708025 (matchR!8654 (reg!16800 (regOne!33454 r!7292)) (_1!36753 (get!22788 lt!2414409))))))

(declare-fun b!6604368 () Bool)

(declare-fun e!3996051 () Bool)

(assert (=> b!6604368 (= e!3996051 (not (isDefined!13065 lt!2414409)))))

(declare-fun b!6604369 () Bool)

(declare-fun ++!14617 (List!65712 List!65712) List!65712)

(assert (=> b!6604369 (= e!3996049 (= (++!14617 (_1!36753 (get!22788 lt!2414409)) (_2!36753 (get!22788 lt!2414409))) Nil!65588))))

(declare-fun d!2071185 () Bool)

(assert (=> d!2071185 e!3996051))

(declare-fun res!2708023 () Bool)

(assert (=> d!2071185 (=> res!2708023 e!3996051)))

(assert (=> d!2071185 (= res!2708023 e!3996049)))

(declare-fun res!2708022 () Bool)

(assert (=> d!2071185 (=> (not res!2708022) (not e!3996049))))

(assert (=> d!2071185 (= res!2708022 (isDefined!13065 lt!2414409))))

(declare-fun e!3996053 () Option!16362)

(assert (=> d!2071185 (= lt!2414409 e!3996053)))

(declare-fun c!1216845 () Bool)

(declare-fun e!3996052 () Bool)

(assert (=> d!2071185 (= c!1216845 e!3996052)))

(declare-fun res!2708021 () Bool)

(assert (=> d!2071185 (=> (not res!2708021) (not e!3996052))))

(assert (=> d!2071185 (= res!2708021 (matchR!8654 (reg!16800 (regOne!33454 r!7292)) Nil!65588))))

(assert (=> d!2071185 (validRegex!8207 (reg!16800 (regOne!33454 r!7292)))))

(assert (=> d!2071185 (= (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588 Nil!65588 Nil!65588) lt!2414409)))

(declare-fun b!6604370 () Bool)

(assert (=> b!6604370 (= e!3996053 (Some!16361 (tuple2!66901 Nil!65588 Nil!65588)))))

(declare-fun b!6604371 () Bool)

(declare-fun res!2708024 () Bool)

(assert (=> b!6604371 (=> (not res!2708024) (not e!3996049))))

(assert (=> b!6604371 (= res!2708024 (matchR!8654 lt!2414262 (_2!36753 (get!22788 lt!2414409))))))

(declare-fun b!6604372 () Bool)

(declare-fun lt!2414410 () Unit!159219)

(declare-fun lt!2414411 () Unit!159219)

(assert (=> b!6604372 (= lt!2414410 lt!2414411)))

(assert (=> b!6604372 (= (++!14617 (++!14617 Nil!65588 (Cons!65588 (h!72036 Nil!65588) Nil!65588)) (t!379364 Nil!65588)) Nil!65588)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2614 (List!65712 C!33212 List!65712 List!65712) Unit!159219)

(assert (=> b!6604372 (= lt!2414411 (lemmaMoveElementToOtherListKeepsConcatEq!2614 Nil!65588 (h!72036 Nil!65588) (t!379364 Nil!65588) Nil!65588))))

(declare-fun e!3996050 () Option!16362)

(assert (=> b!6604372 (= e!3996050 (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 (++!14617 Nil!65588 (Cons!65588 (h!72036 Nil!65588) Nil!65588)) (t!379364 Nil!65588) Nil!65588))))

(declare-fun b!6604373 () Bool)

(assert (=> b!6604373 (= e!3996052 (matchR!8654 lt!2414262 Nil!65588))))

(declare-fun b!6604374 () Bool)

(assert (=> b!6604374 (= e!3996053 e!3996050)))

(declare-fun c!1216844 () Bool)

(assert (=> b!6604374 (= c!1216844 ((_ is Nil!65588) Nil!65588))))

(declare-fun b!6604375 () Bool)

(assert (=> b!6604375 (= e!3996050 None!16361)))

(assert (= (and d!2071185 res!2708021) b!6604373))

(assert (= (and d!2071185 c!1216845) b!6604370))

(assert (= (and d!2071185 (not c!1216845)) b!6604374))

(assert (= (and b!6604374 c!1216844) b!6604375))

(assert (= (and b!6604374 (not c!1216844)) b!6604372))

(assert (= (and d!2071185 res!2708022) b!6604367))

(assert (= (and b!6604367 res!2708025) b!6604371))

(assert (= (and b!6604371 res!2708024) b!6604369))

(assert (= (and d!2071185 (not res!2708023)) b!6604368))

(declare-fun m!7379932 () Bool)

(assert (=> d!2071185 m!7379932))

(declare-fun m!7379934 () Bool)

(assert (=> d!2071185 m!7379934))

(assert (=> d!2071185 m!7379178))

(declare-fun m!7379936 () Bool)

(assert (=> b!6604371 m!7379936))

(declare-fun m!7379938 () Bool)

(assert (=> b!6604371 m!7379938))

(assert (=> b!6604367 m!7379936))

(declare-fun m!7379940 () Bool)

(assert (=> b!6604367 m!7379940))

(assert (=> b!6604368 m!7379932))

(assert (=> b!6604373 m!7379180))

(assert (=> b!6604369 m!7379936))

(declare-fun m!7379942 () Bool)

(assert (=> b!6604369 m!7379942))

(declare-fun m!7379944 () Bool)

(assert (=> b!6604372 m!7379944))

(assert (=> b!6604372 m!7379944))

(declare-fun m!7379946 () Bool)

(assert (=> b!6604372 m!7379946))

(declare-fun m!7379948 () Bool)

(assert (=> b!6604372 m!7379948))

(assert (=> b!6604372 m!7379944))

(declare-fun m!7379950 () Bool)

(assert (=> b!6604372 m!7379950))

(assert (=> b!6603463 d!2071185))

(declare-fun d!2071187 () Bool)

(assert (=> d!2071187 (= (Exists!3541 lambda!368232) (choose!49313 lambda!368232))))

(declare-fun bs!1692942 () Bool)

(assert (= bs!1692942 d!2071187))

(declare-fun m!7379952 () Bool)

(assert (=> bs!1692942 m!7379952))

(assert (=> b!6603463 d!2071187))

(declare-fun b!6604376 () Bool)

(declare-fun e!3996054 () Bool)

(assert (=> b!6604376 (= e!3996054 (= (head!13393 Nil!65588) (c!1216570 lt!2414262)))))

(declare-fun b!6604377 () Bool)

(declare-fun e!3996057 () Bool)

(assert (=> b!6604377 (= e!3996057 (matchR!8654 (derivativeStep!5155 lt!2414262 (head!13393 Nil!65588)) (tail!12478 Nil!65588)))))

(declare-fun b!6604378 () Bool)

(assert (=> b!6604378 (= e!3996057 (nullable!6464 lt!2414262))))

(declare-fun b!6604379 () Bool)

(declare-fun res!2708028 () Bool)

(declare-fun e!3996056 () Bool)

(assert (=> b!6604379 (=> res!2708028 e!3996056)))

(assert (=> b!6604379 (= res!2708028 (not ((_ is ElementMatch!16471) lt!2414262)))))

(declare-fun e!3996060 () Bool)

(assert (=> b!6604379 (= e!3996060 e!3996056)))

(declare-fun b!6604380 () Bool)

(declare-fun e!3996055 () Bool)

(assert (=> b!6604380 (= e!3996056 e!3996055)))

(declare-fun res!2708029 () Bool)

(assert (=> b!6604380 (=> (not res!2708029) (not e!3996055))))

(declare-fun lt!2414412 () Bool)

(assert (=> b!6604380 (= res!2708029 (not lt!2414412))))

(declare-fun b!6604381 () Bool)

(declare-fun e!3996059 () Bool)

(assert (=> b!6604381 (= e!3996055 e!3996059)))

(declare-fun res!2708032 () Bool)

(assert (=> b!6604381 (=> res!2708032 e!3996059)))

(declare-fun call!577711 () Bool)

(assert (=> b!6604381 (= res!2708032 call!577711)))

(declare-fun b!6604382 () Bool)

(declare-fun e!3996058 () Bool)

(assert (=> b!6604382 (= e!3996058 e!3996060)))

(declare-fun c!1216847 () Bool)

(assert (=> b!6604382 (= c!1216847 ((_ is EmptyLang!16471) lt!2414262))))

(declare-fun b!6604383 () Bool)

(declare-fun res!2708026 () Bool)

(assert (=> b!6604383 (=> res!2708026 e!3996059)))

(assert (=> b!6604383 (= res!2708026 (not (isEmpty!37865 (tail!12478 Nil!65588))))))

(declare-fun d!2071189 () Bool)

(assert (=> d!2071189 e!3996058))

(declare-fun c!1216848 () Bool)

(assert (=> d!2071189 (= c!1216848 ((_ is EmptyExpr!16471) lt!2414262))))

(assert (=> d!2071189 (= lt!2414412 e!3996057)))

(declare-fun c!1216846 () Bool)

(assert (=> d!2071189 (= c!1216846 (isEmpty!37865 Nil!65588))))

(assert (=> d!2071189 (validRegex!8207 lt!2414262)))

(assert (=> d!2071189 (= (matchR!8654 lt!2414262 Nil!65588) lt!2414412)))

(declare-fun b!6604384 () Bool)

(assert (=> b!6604384 (= e!3996060 (not lt!2414412))))

(declare-fun b!6604385 () Bool)

(declare-fun res!2708033 () Bool)

(assert (=> b!6604385 (=> (not res!2708033) (not e!3996054))))

(assert (=> b!6604385 (= res!2708033 (not call!577711))))

(declare-fun b!6604386 () Bool)

(declare-fun res!2708030 () Bool)

(assert (=> b!6604386 (=> res!2708030 e!3996056)))

(assert (=> b!6604386 (= res!2708030 e!3996054)))

(declare-fun res!2708031 () Bool)

(assert (=> b!6604386 (=> (not res!2708031) (not e!3996054))))

(assert (=> b!6604386 (= res!2708031 lt!2414412)))

(declare-fun b!6604387 () Bool)

(assert (=> b!6604387 (= e!3996058 (= lt!2414412 call!577711))))

(declare-fun bm!577706 () Bool)

(assert (=> bm!577706 (= call!577711 (isEmpty!37865 Nil!65588))))

(declare-fun b!6604388 () Bool)

(declare-fun res!2708027 () Bool)

(assert (=> b!6604388 (=> (not res!2708027) (not e!3996054))))

(assert (=> b!6604388 (= res!2708027 (isEmpty!37865 (tail!12478 Nil!65588)))))

(declare-fun b!6604389 () Bool)

(assert (=> b!6604389 (= e!3996059 (not (= (head!13393 Nil!65588) (c!1216570 lt!2414262))))))

(assert (= (and d!2071189 c!1216846) b!6604378))

(assert (= (and d!2071189 (not c!1216846)) b!6604377))

(assert (= (and d!2071189 c!1216848) b!6604387))

(assert (= (and d!2071189 (not c!1216848)) b!6604382))

(assert (= (and b!6604382 c!1216847) b!6604384))

(assert (= (and b!6604382 (not c!1216847)) b!6604379))

(assert (= (and b!6604379 (not res!2708028)) b!6604386))

(assert (= (and b!6604386 res!2708031) b!6604385))

(assert (= (and b!6604385 res!2708033) b!6604388))

(assert (= (and b!6604388 res!2708027) b!6604376))

(assert (= (and b!6604386 (not res!2708030)) b!6604380))

(assert (= (and b!6604380 res!2708029) b!6604381))

(assert (= (and b!6604381 (not res!2708032)) b!6604383))

(assert (= (and b!6604383 (not res!2708026)) b!6604389))

(assert (= (or b!6604387 b!6604381 b!6604385) bm!577706))

(declare-fun m!7379954 () Bool)

(assert (=> b!6604376 m!7379954))

(assert (=> bm!577706 m!7379926))

(assert (=> b!6604377 m!7379954))

(assert (=> b!6604377 m!7379954))

(declare-fun m!7379956 () Bool)

(assert (=> b!6604377 m!7379956))

(declare-fun m!7379958 () Bool)

(assert (=> b!6604377 m!7379958))

(assert (=> b!6604377 m!7379956))

(assert (=> b!6604377 m!7379958))

(declare-fun m!7379960 () Bool)

(assert (=> b!6604377 m!7379960))

(assert (=> b!6604383 m!7379958))

(assert (=> b!6604383 m!7379958))

(declare-fun m!7379962 () Bool)

(assert (=> b!6604383 m!7379962))

(declare-fun m!7379964 () Bool)

(assert (=> b!6604378 m!7379964))

(assert (=> d!2071189 m!7379926))

(assert (=> d!2071189 m!7379918))

(assert (=> b!6604389 m!7379954))

(assert (=> b!6604388 m!7379958))

(assert (=> b!6604388 m!7379958))

(assert (=> b!6604388 m!7379962))

(assert (=> b!6603463 d!2071189))

(declare-fun bs!1692943 () Bool)

(declare-fun d!2071191 () Bool)

(assert (= bs!1692943 (and d!2071191 b!6604247)))

(declare-fun lambda!368311 () Int)

(assert (=> bs!1692943 (not (= lambda!368311 lambda!368297))))

(declare-fun bs!1692944 () Bool)

(assert (= bs!1692944 (and d!2071191 b!6603482)))

(assert (=> bs!1692944 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 r!7292)) (= lt!2414262 (regTwo!33454 r!7292))) (= lambda!368311 lambda!368229))))

(assert (=> bs!1692944 (not (= lambda!368311 lambda!368230))))

(declare-fun bs!1692945 () Bool)

(assert (= bs!1692945 (and d!2071191 b!6603463)))

(assert (=> bs!1692945 (= lambda!368311 lambda!368232)))

(declare-fun bs!1692946 () Bool)

(assert (= bs!1692946 (and d!2071191 b!6604338)))

(assert (=> bs!1692946 (not (= lambda!368311 lambda!368308))))

(declare-fun bs!1692947 () Bool)

(assert (= bs!1692947 (and d!2071191 b!6604251)))

(assert (=> bs!1692947 (not (= lambda!368311 lambda!368296))))

(declare-fun bs!1692948 () Bool)

(assert (= bs!1692948 (and d!2071191 b!6604342)))

(assert (=> bs!1692948 (not (= lambda!368311 lambda!368307))))

(assert (=> bs!1692945 (not (= lambda!368311 lambda!368233))))

(assert (=> d!2071191 true))

(assert (=> d!2071191 true))

(assert (=> d!2071191 true))

(assert (=> d!2071191 (= (isDefined!13065 (findConcatSeparation!2776 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588 Nil!65588 Nil!65588)) (Exists!3541 lambda!368311))))

(declare-fun lt!2414415 () Unit!159219)

(declare-fun choose!49315 (Regex!16471 Regex!16471 List!65712) Unit!159219)

(assert (=> d!2071191 (= lt!2414415 (choose!49315 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588))))

(assert (=> d!2071191 (validRegex!8207 (reg!16800 (regOne!33454 r!7292)))))

(assert (=> d!2071191 (= (lemmaFindConcatSeparationEquivalentToExists!2540 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588) lt!2414415)))

(declare-fun bs!1692949 () Bool)

(assert (= bs!1692949 d!2071191))

(assert (=> bs!1692949 m!7379192))

(assert (=> bs!1692949 m!7379194))

(assert (=> bs!1692949 m!7379192))

(assert (=> bs!1692949 m!7379178))

(declare-fun m!7379966 () Bool)

(assert (=> bs!1692949 m!7379966))

(declare-fun m!7379968 () Bool)

(assert (=> bs!1692949 m!7379968))

(assert (=> b!6603463 d!2071191))

(declare-fun bs!1692950 () Bool)

(declare-fun d!2071193 () Bool)

(assert (= bs!1692950 (and d!2071193 b!6604247)))

(declare-fun lambda!368316 () Int)

(assert (=> bs!1692950 (not (= lambda!368316 lambda!368297))))

(declare-fun bs!1692951 () Bool)

(assert (= bs!1692951 (and d!2071193 b!6603482)))

(assert (=> bs!1692951 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 r!7292)) (= lt!2414262 (regTwo!33454 r!7292))) (= lambda!368316 lambda!368229))))

(assert (=> bs!1692951 (not (= lambda!368316 lambda!368230))))

(declare-fun bs!1692952 () Bool)

(assert (= bs!1692952 (and d!2071193 b!6603463)))

(assert (=> bs!1692952 (= lambda!368316 lambda!368232)))

(declare-fun bs!1692953 () Bool)

(assert (= bs!1692953 (and d!2071193 b!6604338)))

(assert (=> bs!1692953 (not (= lambda!368316 lambda!368308))))

(declare-fun bs!1692954 () Bool)

(assert (= bs!1692954 (and d!2071193 b!6604251)))

(assert (=> bs!1692954 (not (= lambda!368316 lambda!368296))))

(declare-fun bs!1692955 () Bool)

(assert (= bs!1692955 (and d!2071193 d!2071191)))

(assert (=> bs!1692955 (= lambda!368316 lambda!368311)))

(declare-fun bs!1692956 () Bool)

(assert (= bs!1692956 (and d!2071193 b!6604342)))

(assert (=> bs!1692956 (not (= lambda!368316 lambda!368307))))

(assert (=> bs!1692952 (not (= lambda!368316 lambda!368233))))

(assert (=> d!2071193 true))

(assert (=> d!2071193 true))

(assert (=> d!2071193 true))

(declare-fun lambda!368317 () Int)

(assert (=> bs!1692950 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 lt!2414284)) (= lt!2414262 (regTwo!33454 lt!2414284))) (= lambda!368317 lambda!368297))))

(assert (=> bs!1692951 (not (= lambda!368317 lambda!368229))))

(assert (=> bs!1692951 (= (and (= Nil!65588 s!2326) (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 r!7292)) (= lt!2414262 (regTwo!33454 r!7292))) (= lambda!368317 lambda!368230))))

(assert (=> bs!1692952 (not (= lambda!368317 lambda!368232))))

(declare-fun bs!1692957 () Bool)

(assert (= bs!1692957 d!2071193))

(assert (=> bs!1692957 (not (= lambda!368317 lambda!368316))))

(assert (=> bs!1692953 (= (and (= (reg!16800 (regOne!33454 r!7292)) (regOne!33454 lt!2414262)) (= lt!2414262 (regTwo!33454 lt!2414262))) (= lambda!368317 lambda!368308))))

(assert (=> bs!1692954 (not (= lambda!368317 lambda!368296))))

(assert (=> bs!1692955 (not (= lambda!368317 lambda!368311))))

(assert (=> bs!1692956 (not (= lambda!368317 lambda!368307))))

(assert (=> bs!1692952 (= lambda!368317 lambda!368233)))

(assert (=> d!2071193 true))

(assert (=> d!2071193 true))

(assert (=> d!2071193 true))

(assert (=> d!2071193 (= (Exists!3541 lambda!368316) (Exists!3541 lambda!368317))))

(declare-fun lt!2414418 () Unit!159219)

(declare-fun choose!49316 (Regex!16471 Regex!16471 List!65712) Unit!159219)

(assert (=> d!2071193 (= lt!2414418 (choose!49316 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588))))

(assert (=> d!2071193 (validRegex!8207 (reg!16800 (regOne!33454 r!7292)))))

(assert (=> d!2071193 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2078 (reg!16800 (regOne!33454 r!7292)) lt!2414262 Nil!65588) lt!2414418)))

(declare-fun m!7379970 () Bool)

(assert (=> bs!1692957 m!7379970))

(declare-fun m!7379972 () Bool)

(assert (=> bs!1692957 m!7379972))

(declare-fun m!7379974 () Bool)

(assert (=> bs!1692957 m!7379974))

(assert (=> bs!1692957 m!7379178))

(assert (=> b!6603463 d!2071193))

(declare-fun d!2071195 () Bool)

(declare-fun c!1216849 () Bool)

(assert (=> d!2071195 (= c!1216849 (isEmpty!37865 s!2326))))

(declare-fun e!3996067 () Bool)

(assert (=> d!2071195 (= (matchZipper!2483 lt!2414283 s!2326) e!3996067)))

(declare-fun b!6604402 () Bool)

(assert (=> b!6604402 (= e!3996067 (nullableZipper!2216 lt!2414283))))

(declare-fun b!6604403 () Bool)

(assert (=> b!6604403 (= e!3996067 (matchZipper!2483 (derivationStepZipper!2437 lt!2414283 (head!13393 s!2326)) (tail!12478 s!2326)))))

(assert (= (and d!2071195 c!1216849) b!6604402))

(assert (= (and d!2071195 (not c!1216849)) b!6604403))

(assert (=> d!2071195 m!7379820))

(declare-fun m!7379976 () Bool)

(assert (=> b!6604402 m!7379976))

(assert (=> b!6604403 m!7379818))

(assert (=> b!6604403 m!7379818))

(declare-fun m!7379978 () Bool)

(assert (=> b!6604403 m!7379978))

(assert (=> b!6604403 m!7379824))

(assert (=> b!6604403 m!7379978))

(assert (=> b!6604403 m!7379824))

(declare-fun m!7379980 () Bool)

(assert (=> b!6604403 m!7379980))

(assert (=> b!6603485 d!2071195))

(declare-fun d!2071197 () Bool)

(declare-fun c!1216850 () Bool)

(assert (=> d!2071197 (= c!1216850 (isEmpty!37865 (t!379364 s!2326)))))

(declare-fun e!3996068 () Bool)

(assert (=> d!2071197 (= (matchZipper!2483 lt!2414264 (t!379364 s!2326)) e!3996068)))

(declare-fun b!6604404 () Bool)

(assert (=> b!6604404 (= e!3996068 (nullableZipper!2216 lt!2414264))))

(declare-fun b!6604405 () Bool)

(assert (=> b!6604405 (= e!3996068 (matchZipper!2483 (derivationStepZipper!2437 lt!2414264 (head!13393 (t!379364 s!2326))) (tail!12478 (t!379364 s!2326))))))

(assert (= (and d!2071197 c!1216850) b!6604404))

(assert (= (and d!2071197 (not c!1216850)) b!6604405))

(assert (=> d!2071197 m!7379702))

(declare-fun m!7379982 () Bool)

(assert (=> b!6604404 m!7379982))

(assert (=> b!6604405 m!7379706))

(assert (=> b!6604405 m!7379706))

(declare-fun m!7379984 () Bool)

(assert (=> b!6604405 m!7379984))

(assert (=> b!6604405 m!7379710))

(assert (=> b!6604405 m!7379984))

(assert (=> b!6604405 m!7379710))

(declare-fun m!7379986 () Bool)

(assert (=> b!6604405 m!7379986))

(assert (=> b!6603485 d!2071197))

(declare-fun d!2071199 () Bool)

(declare-fun lt!2414419 () Regex!16471)

(assert (=> d!2071199 (validRegex!8207 lt!2414419)))

(assert (=> d!2071199 (= lt!2414419 (generalisedUnion!2315 (unfocusZipperList!1892 (Cons!65590 lt!2414288 Nil!65590))))))

(assert (=> d!2071199 (= (unfocusZipper!2213 (Cons!65590 lt!2414288 Nil!65590)) lt!2414419)))

(declare-fun bs!1692958 () Bool)

(assert (= bs!1692958 d!2071199))

(declare-fun m!7379988 () Bool)

(assert (=> bs!1692958 m!7379988))

(declare-fun m!7379990 () Bool)

(assert (=> bs!1692958 m!7379990))

(assert (=> bs!1692958 m!7379990))

(declare-fun m!7379992 () Bool)

(assert (=> bs!1692958 m!7379992))

(assert (=> b!6603465 d!2071199))

(declare-fun bs!1692959 () Bool)

(declare-fun d!2071201 () Bool)

(assert (= bs!1692959 (and d!2071201 d!2071053)))

(declare-fun lambda!368318 () Int)

(assert (=> bs!1692959 (= lambda!368318 lambda!368284)))

(declare-fun bs!1692960 () Bool)

(assert (= bs!1692960 (and d!2071201 d!2071095)))

(assert (=> bs!1692960 (= lambda!368318 lambda!368291)))

(declare-fun bs!1692961 () Bool)

(assert (= bs!1692961 (and d!2071201 d!2071167)))

(assert (=> bs!1692961 (= lambda!368318 lambda!368303)))

(declare-fun bs!1692962 () Bool)

(assert (= bs!1692962 (and d!2071201 d!2071169)))

(assert (=> bs!1692962 (= lambda!368318 lambda!368306)))

(assert (=> d!2071201 (= (inv!84424 (h!72038 zl!343)) (forall!15665 (exprs!6355 (h!72038 zl!343)) lambda!368318))))

(declare-fun bs!1692963 () Bool)

(assert (= bs!1692963 d!2071201))

(declare-fun m!7379994 () Bool)

(assert (=> bs!1692963 m!7379994))

(assert (=> b!6603487 d!2071201))

(declare-fun b!6604406 () Bool)

(declare-fun e!3996072 () (InoxSet Context!11710))

(declare-fun call!577714 () (InoxSet Context!11710))

(declare-fun call!577716 () (InoxSet Context!11710))

(assert (=> b!6604406 (= e!3996072 ((_ map or) call!577714 call!577716))))

(declare-fun bm!577707 () Bool)

(declare-fun call!577715 () (InoxSet Context!11710))

(assert (=> bm!577707 (= call!577715 call!577714)))

(declare-fun c!1216851 () Bool)

(declare-fun call!577713 () List!65713)

(declare-fun bm!577708 () Bool)

(assert (=> bm!577708 (= call!577716 (derivationStepZipperDown!1719 (ite c!1216851 (regTwo!33455 (reg!16800 (regOne!33454 r!7292))) (regOne!33454 (reg!16800 (regOne!33454 r!7292)))) (ite c!1216851 lt!2414256 (Context!11711 call!577713)) (h!72036 s!2326)))))

(declare-fun c!1216853 () Bool)

(declare-fun bm!577709 () Bool)

(declare-fun call!577717 () List!65713)

(declare-fun c!1216854 () Bool)

(assert (=> bm!577709 (= call!577714 (derivationStepZipperDown!1719 (ite c!1216851 (regOne!33455 (reg!16800 (regOne!33454 r!7292))) (ite c!1216854 (regTwo!33454 (reg!16800 (regOne!33454 r!7292))) (ite c!1216853 (regOne!33454 (reg!16800 (regOne!33454 r!7292))) (reg!16800 (reg!16800 (regOne!33454 r!7292)))))) (ite (or c!1216851 c!1216854) lt!2414256 (Context!11711 call!577717)) (h!72036 s!2326)))))

(declare-fun b!6604407 () Bool)

(declare-fun e!3996074 () (InoxSet Context!11710))

(assert (=> b!6604407 (= e!3996074 ((_ map or) call!577716 call!577715))))

(declare-fun bm!577710 () Bool)

(assert (=> bm!577710 (= call!577713 ($colon$colon!2312 (exprs!6355 lt!2414256) (ite (or c!1216854 c!1216853) (regTwo!33454 (reg!16800 (regOne!33454 r!7292))) (reg!16800 (regOne!33454 r!7292)))))))

(declare-fun bm!577711 () Bool)

(assert (=> bm!577711 (= call!577717 call!577713)))

(declare-fun d!2071203 () Bool)

(declare-fun c!1216852 () Bool)

(assert (=> d!2071203 (= c!1216852 (and ((_ is ElementMatch!16471) (reg!16800 (regOne!33454 r!7292))) (= (c!1216570 (reg!16800 (regOne!33454 r!7292))) (h!72036 s!2326))))))

(declare-fun e!3996070 () (InoxSet Context!11710))

(assert (=> d!2071203 (= (derivationStepZipperDown!1719 (reg!16800 (regOne!33454 r!7292)) lt!2414256 (h!72036 s!2326)) e!3996070)))

(declare-fun b!6604408 () Bool)

(declare-fun c!1216855 () Bool)

(assert (=> b!6604408 (= c!1216855 ((_ is Star!16471) (reg!16800 (regOne!33454 r!7292))))))

(declare-fun e!3996073 () (InoxSet Context!11710))

(declare-fun e!3996069 () (InoxSet Context!11710))

(assert (=> b!6604408 (= e!3996073 e!3996069)))

(declare-fun b!6604409 () Bool)

(declare-fun e!3996071 () Bool)

(assert (=> b!6604409 (= e!3996071 (nullable!6464 (regOne!33454 (reg!16800 (regOne!33454 r!7292)))))))

(declare-fun b!6604410 () Bool)

(declare-fun call!577712 () (InoxSet Context!11710))

(assert (=> b!6604410 (= e!3996073 call!577712)))

(declare-fun b!6604411 () Bool)

(assert (=> b!6604411 (= e!3996069 call!577712)))

(declare-fun b!6604412 () Bool)

(assert (=> b!6604412 (= e!3996070 e!3996072)))

(assert (=> b!6604412 (= c!1216851 ((_ is Union!16471) (reg!16800 (regOne!33454 r!7292))))))

(declare-fun b!6604413 () Bool)

(assert (=> b!6604413 (= e!3996069 ((as const (Array Context!11710 Bool)) false))))

(declare-fun b!6604414 () Bool)

(assert (=> b!6604414 (= e!3996070 (store ((as const (Array Context!11710 Bool)) false) lt!2414256 true))))

(declare-fun bm!577712 () Bool)

(assert (=> bm!577712 (= call!577712 call!577715)))

(declare-fun b!6604415 () Bool)

(assert (=> b!6604415 (= c!1216854 e!3996071)))

(declare-fun res!2708046 () Bool)

(assert (=> b!6604415 (=> (not res!2708046) (not e!3996071))))

(assert (=> b!6604415 (= res!2708046 ((_ is Concat!25316) (reg!16800 (regOne!33454 r!7292))))))

(assert (=> b!6604415 (= e!3996072 e!3996074)))

(declare-fun b!6604416 () Bool)

(assert (=> b!6604416 (= e!3996074 e!3996073)))

(assert (=> b!6604416 (= c!1216853 ((_ is Concat!25316) (reg!16800 (regOne!33454 r!7292))))))

(assert (= (and d!2071203 c!1216852) b!6604414))

(assert (= (and d!2071203 (not c!1216852)) b!6604412))

(assert (= (and b!6604412 c!1216851) b!6604406))

(assert (= (and b!6604412 (not c!1216851)) b!6604415))

(assert (= (and b!6604415 res!2708046) b!6604409))

(assert (= (and b!6604415 c!1216854) b!6604407))

(assert (= (and b!6604415 (not c!1216854)) b!6604416))

(assert (= (and b!6604416 c!1216853) b!6604410))

(assert (= (and b!6604416 (not c!1216853)) b!6604408))

(assert (= (and b!6604408 c!1216855) b!6604411))

(assert (= (and b!6604408 (not c!1216855)) b!6604413))

(assert (= (or b!6604410 b!6604411) bm!577711))

(assert (= (or b!6604410 b!6604411) bm!577712))

(assert (= (or b!6604407 bm!577711) bm!577710))

(assert (= (or b!6604407 bm!577712) bm!577707))

(assert (= (or b!6604406 b!6604407) bm!577708))

(assert (= (or b!6604406 bm!577707) bm!577709))

(declare-fun m!7379996 () Bool)

(assert (=> bm!577710 m!7379996))

(declare-fun m!7379998 () Bool)

(assert (=> bm!577708 m!7379998))

(assert (=> b!6604414 m!7379258))

(declare-fun m!7380000 () Bool)

(assert (=> b!6604409 m!7380000))

(declare-fun m!7380002 () Bool)

(assert (=> bm!577709 m!7380002))

(assert (=> b!6603466 d!2071203))

(declare-fun b!6604417 () Bool)

(declare-fun e!3996075 () Bool)

(assert (=> b!6604417 (= e!3996075 (= (head!13393 s!2326) (c!1216570 (regTwo!33454 r!7292))))))

(declare-fun b!6604418 () Bool)

(declare-fun e!3996078 () Bool)

(assert (=> b!6604418 (= e!3996078 (matchR!8654 (derivativeStep!5155 (regTwo!33454 r!7292) (head!13393 s!2326)) (tail!12478 s!2326)))))

(declare-fun b!6604419 () Bool)

(assert (=> b!6604419 (= e!3996078 (nullable!6464 (regTwo!33454 r!7292)))))

(declare-fun b!6604420 () Bool)

(declare-fun res!2708049 () Bool)

(declare-fun e!3996077 () Bool)

(assert (=> b!6604420 (=> res!2708049 e!3996077)))

(assert (=> b!6604420 (= res!2708049 (not ((_ is ElementMatch!16471) (regTwo!33454 r!7292))))))

(declare-fun e!3996081 () Bool)

(assert (=> b!6604420 (= e!3996081 e!3996077)))

(declare-fun b!6604421 () Bool)

(declare-fun e!3996076 () Bool)

(assert (=> b!6604421 (= e!3996077 e!3996076)))

(declare-fun res!2708050 () Bool)

(assert (=> b!6604421 (=> (not res!2708050) (not e!3996076))))

(declare-fun lt!2414420 () Bool)

(assert (=> b!6604421 (= res!2708050 (not lt!2414420))))

(declare-fun b!6604422 () Bool)

(declare-fun e!3996080 () Bool)

(assert (=> b!6604422 (= e!3996076 e!3996080)))

(declare-fun res!2708053 () Bool)

(assert (=> b!6604422 (=> res!2708053 e!3996080)))

(declare-fun call!577718 () Bool)

(assert (=> b!6604422 (= res!2708053 call!577718)))

(declare-fun b!6604423 () Bool)

(declare-fun e!3996079 () Bool)

(assert (=> b!6604423 (= e!3996079 e!3996081)))

(declare-fun c!1216857 () Bool)

(assert (=> b!6604423 (= c!1216857 ((_ is EmptyLang!16471) (regTwo!33454 r!7292)))))

(declare-fun b!6604424 () Bool)

(declare-fun res!2708047 () Bool)

(assert (=> b!6604424 (=> res!2708047 e!3996080)))

(assert (=> b!6604424 (= res!2708047 (not (isEmpty!37865 (tail!12478 s!2326))))))

(declare-fun d!2071205 () Bool)

(assert (=> d!2071205 e!3996079))

(declare-fun c!1216858 () Bool)

(assert (=> d!2071205 (= c!1216858 ((_ is EmptyExpr!16471) (regTwo!33454 r!7292)))))

(assert (=> d!2071205 (= lt!2414420 e!3996078)))

(declare-fun c!1216856 () Bool)

(assert (=> d!2071205 (= c!1216856 (isEmpty!37865 s!2326))))

(assert (=> d!2071205 (validRegex!8207 (regTwo!33454 r!7292))))

(assert (=> d!2071205 (= (matchR!8654 (regTwo!33454 r!7292) s!2326) lt!2414420)))

(declare-fun b!6604425 () Bool)

(assert (=> b!6604425 (= e!3996081 (not lt!2414420))))

(declare-fun b!6604426 () Bool)

(declare-fun res!2708054 () Bool)

(assert (=> b!6604426 (=> (not res!2708054) (not e!3996075))))

(assert (=> b!6604426 (= res!2708054 (not call!577718))))

(declare-fun b!6604427 () Bool)

(declare-fun res!2708051 () Bool)

(assert (=> b!6604427 (=> res!2708051 e!3996077)))

(assert (=> b!6604427 (= res!2708051 e!3996075)))

(declare-fun res!2708052 () Bool)

(assert (=> b!6604427 (=> (not res!2708052) (not e!3996075))))

(assert (=> b!6604427 (= res!2708052 lt!2414420)))

(declare-fun b!6604428 () Bool)

(assert (=> b!6604428 (= e!3996079 (= lt!2414420 call!577718))))

(declare-fun bm!577713 () Bool)

(assert (=> bm!577713 (= call!577718 (isEmpty!37865 s!2326))))

(declare-fun b!6604429 () Bool)

(declare-fun res!2708048 () Bool)

(assert (=> b!6604429 (=> (not res!2708048) (not e!3996075))))

(assert (=> b!6604429 (= res!2708048 (isEmpty!37865 (tail!12478 s!2326)))))

(declare-fun b!6604430 () Bool)

(assert (=> b!6604430 (= e!3996080 (not (= (head!13393 s!2326) (c!1216570 (regTwo!33454 r!7292)))))))

(assert (= (and d!2071205 c!1216856) b!6604419))

(assert (= (and d!2071205 (not c!1216856)) b!6604418))

(assert (= (and d!2071205 c!1216858) b!6604428))

(assert (= (and d!2071205 (not c!1216858)) b!6604423))

(assert (= (and b!6604423 c!1216857) b!6604425))

(assert (= (and b!6604423 (not c!1216857)) b!6604420))

(assert (= (and b!6604420 (not res!2708049)) b!6604427))

(assert (= (and b!6604427 res!2708052) b!6604426))

(assert (= (and b!6604426 res!2708054) b!6604429))

(assert (= (and b!6604429 res!2708048) b!6604417))

(assert (= (and b!6604427 (not res!2708051)) b!6604421))

(assert (= (and b!6604421 res!2708050) b!6604422))

(assert (= (and b!6604422 (not res!2708053)) b!6604424))

(assert (= (and b!6604424 (not res!2708047)) b!6604430))

(assert (= (or b!6604428 b!6604422 b!6604426) bm!577713))

(assert (=> b!6604417 m!7379818))

(assert (=> bm!577713 m!7379820))

(assert (=> b!6604418 m!7379818))

(assert (=> b!6604418 m!7379818))

(declare-fun m!7380004 () Bool)

(assert (=> b!6604418 m!7380004))

(assert (=> b!6604418 m!7379824))

(assert (=> b!6604418 m!7380004))

(assert (=> b!6604418 m!7379824))

(declare-fun m!7380006 () Bool)

(assert (=> b!6604418 m!7380006))

(assert (=> b!6604424 m!7379824))

(assert (=> b!6604424 m!7379824))

(assert (=> b!6604424 m!7379828))

(declare-fun m!7380008 () Bool)

(assert (=> b!6604419 m!7380008))

(assert (=> d!2071205 m!7379820))

(declare-fun m!7380010 () Bool)

(assert (=> d!2071205 m!7380010))

(assert (=> b!6604430 m!7379818))

(assert (=> b!6604429 m!7379824))

(assert (=> b!6604429 m!7379824))

(assert (=> b!6604429 m!7379828))

(assert (=> b!6603467 d!2071205))

(declare-fun b!6604431 () Bool)

(declare-fun e!3996082 () Bool)

(assert (=> b!6604431 (= e!3996082 (= (head!13393 s!2326) (c!1216570 lt!2414270)))))

(declare-fun b!6604432 () Bool)

(declare-fun e!3996085 () Bool)

(assert (=> b!6604432 (= e!3996085 (matchR!8654 (derivativeStep!5155 lt!2414270 (head!13393 s!2326)) (tail!12478 s!2326)))))

(declare-fun b!6604433 () Bool)

(assert (=> b!6604433 (= e!3996085 (nullable!6464 lt!2414270))))

(declare-fun b!6604434 () Bool)

(declare-fun res!2708057 () Bool)

(declare-fun e!3996084 () Bool)

(assert (=> b!6604434 (=> res!2708057 e!3996084)))

(assert (=> b!6604434 (= res!2708057 (not ((_ is ElementMatch!16471) lt!2414270)))))

(declare-fun e!3996088 () Bool)

(assert (=> b!6604434 (= e!3996088 e!3996084)))

(declare-fun b!6604435 () Bool)

(declare-fun e!3996083 () Bool)

(assert (=> b!6604435 (= e!3996084 e!3996083)))

(declare-fun res!2708058 () Bool)

(assert (=> b!6604435 (=> (not res!2708058) (not e!3996083))))

(declare-fun lt!2414421 () Bool)

(assert (=> b!6604435 (= res!2708058 (not lt!2414421))))

(declare-fun b!6604436 () Bool)

(declare-fun e!3996087 () Bool)

(assert (=> b!6604436 (= e!3996083 e!3996087)))

(declare-fun res!2708061 () Bool)

(assert (=> b!6604436 (=> res!2708061 e!3996087)))

(declare-fun call!577719 () Bool)

(assert (=> b!6604436 (= res!2708061 call!577719)))

(declare-fun b!6604437 () Bool)

(declare-fun e!3996086 () Bool)

(assert (=> b!6604437 (= e!3996086 e!3996088)))

(declare-fun c!1216860 () Bool)

(assert (=> b!6604437 (= c!1216860 ((_ is EmptyLang!16471) lt!2414270))))

(declare-fun b!6604438 () Bool)

(declare-fun res!2708055 () Bool)

(assert (=> b!6604438 (=> res!2708055 e!3996087)))

(assert (=> b!6604438 (= res!2708055 (not (isEmpty!37865 (tail!12478 s!2326))))))

(declare-fun d!2071207 () Bool)

(assert (=> d!2071207 e!3996086))

(declare-fun c!1216861 () Bool)

(assert (=> d!2071207 (= c!1216861 ((_ is EmptyExpr!16471) lt!2414270))))

(assert (=> d!2071207 (= lt!2414421 e!3996085)))

(declare-fun c!1216859 () Bool)

(assert (=> d!2071207 (= c!1216859 (isEmpty!37865 s!2326))))

(assert (=> d!2071207 (validRegex!8207 lt!2414270)))

(assert (=> d!2071207 (= (matchR!8654 lt!2414270 s!2326) lt!2414421)))

(declare-fun b!6604439 () Bool)

(assert (=> b!6604439 (= e!3996088 (not lt!2414421))))

(declare-fun b!6604440 () Bool)

(declare-fun res!2708062 () Bool)

(assert (=> b!6604440 (=> (not res!2708062) (not e!3996082))))

(assert (=> b!6604440 (= res!2708062 (not call!577719))))

(declare-fun b!6604441 () Bool)

(declare-fun res!2708059 () Bool)

(assert (=> b!6604441 (=> res!2708059 e!3996084)))

(assert (=> b!6604441 (= res!2708059 e!3996082)))

(declare-fun res!2708060 () Bool)

(assert (=> b!6604441 (=> (not res!2708060) (not e!3996082))))

(assert (=> b!6604441 (= res!2708060 lt!2414421)))

(declare-fun b!6604442 () Bool)

(assert (=> b!6604442 (= e!3996086 (= lt!2414421 call!577719))))

(declare-fun bm!577714 () Bool)

(assert (=> bm!577714 (= call!577719 (isEmpty!37865 s!2326))))

(declare-fun b!6604443 () Bool)

(declare-fun res!2708056 () Bool)

(assert (=> b!6604443 (=> (not res!2708056) (not e!3996082))))

(assert (=> b!6604443 (= res!2708056 (isEmpty!37865 (tail!12478 s!2326)))))

(declare-fun b!6604444 () Bool)

(assert (=> b!6604444 (= e!3996087 (not (= (head!13393 s!2326) (c!1216570 lt!2414270))))))

(assert (= (and d!2071207 c!1216859) b!6604433))

(assert (= (and d!2071207 (not c!1216859)) b!6604432))

(assert (= (and d!2071207 c!1216861) b!6604442))

(assert (= (and d!2071207 (not c!1216861)) b!6604437))

(assert (= (and b!6604437 c!1216860) b!6604439))

(assert (= (and b!6604437 (not c!1216860)) b!6604434))

(assert (= (and b!6604434 (not res!2708057)) b!6604441))

(assert (= (and b!6604441 res!2708060) b!6604440))

(assert (= (and b!6604440 res!2708062) b!6604443))

(assert (= (and b!6604443 res!2708056) b!6604431))

(assert (= (and b!6604441 (not res!2708059)) b!6604435))

(assert (= (and b!6604435 res!2708058) b!6604436))

(assert (= (and b!6604436 (not res!2708061)) b!6604438))

(assert (= (and b!6604438 (not res!2708055)) b!6604444))

(assert (= (or b!6604442 b!6604436 b!6604440) bm!577714))

(assert (=> b!6604431 m!7379818))

(assert (=> bm!577714 m!7379820))

(assert (=> b!6604432 m!7379818))

(assert (=> b!6604432 m!7379818))

(declare-fun m!7380012 () Bool)

(assert (=> b!6604432 m!7380012))

(assert (=> b!6604432 m!7379824))

(assert (=> b!6604432 m!7380012))

(assert (=> b!6604432 m!7379824))

(declare-fun m!7380014 () Bool)

(assert (=> b!6604432 m!7380014))

(assert (=> b!6604438 m!7379824))

(assert (=> b!6604438 m!7379824))

(assert (=> b!6604438 m!7379828))

(declare-fun m!7380016 () Bool)

(assert (=> b!6604433 m!7380016))

(assert (=> d!2071207 m!7379820))

(declare-fun m!7380018 () Bool)

(assert (=> d!2071207 m!7380018))

(assert (=> b!6604444 m!7379818))

(assert (=> b!6604443 m!7379824))

(assert (=> b!6604443 m!7379824))

(assert (=> b!6604443 m!7379828))

(assert (=> b!6603467 d!2071207))

(declare-fun d!2071209 () Bool)

(declare-fun c!1216862 () Bool)

(assert (=> d!2071209 (= c!1216862 (isEmpty!37865 s!2326))))

(declare-fun e!3996089 () Bool)

(assert (=> d!2071209 (= (matchZipper!2483 lt!2414273 s!2326) e!3996089)))

(declare-fun b!6604445 () Bool)

(assert (=> b!6604445 (= e!3996089 (nullableZipper!2216 lt!2414273))))

(declare-fun b!6604446 () Bool)

(assert (=> b!6604446 (= e!3996089 (matchZipper!2483 (derivationStepZipper!2437 lt!2414273 (head!13393 s!2326)) (tail!12478 s!2326)))))

(assert (= (and d!2071209 c!1216862) b!6604445))

(assert (= (and d!2071209 (not c!1216862)) b!6604446))

(assert (=> d!2071209 m!7379820))

(declare-fun m!7380020 () Bool)

(assert (=> b!6604445 m!7380020))

(assert (=> b!6604446 m!7379818))

(assert (=> b!6604446 m!7379818))

(declare-fun m!7380022 () Bool)

(assert (=> b!6604446 m!7380022))

(assert (=> b!6604446 m!7379824))

(assert (=> b!6604446 m!7380022))

(assert (=> b!6604446 m!7379824))

(declare-fun m!7380024 () Bool)

(assert (=> b!6604446 m!7380024))

(assert (=> b!6603467 d!2071209))

(declare-fun d!2071211 () Bool)

(assert (=> d!2071211 (= (matchR!8654 lt!2414270 s!2326) (matchZipper!2483 lt!2414273 s!2326))))

(declare-fun lt!2414424 () Unit!159219)

(declare-fun choose!49317 ((InoxSet Context!11710) List!65714 Regex!16471 List!65712) Unit!159219)

(assert (=> d!2071211 (= lt!2414424 (choose!49317 lt!2414273 lt!2414271 lt!2414270 s!2326))))

(assert (=> d!2071211 (validRegex!8207 lt!2414270)))

(assert (=> d!2071211 (= (theoremZipperRegexEquiv!893 lt!2414273 lt!2414271 lt!2414270 s!2326) lt!2414424)))

(declare-fun bs!1692964 () Bool)

(assert (= bs!1692964 d!2071211))

(assert (=> bs!1692964 m!7379208))

(assert (=> bs!1692964 m!7379210))

(declare-fun m!7380026 () Bool)

(assert (=> bs!1692964 m!7380026))

(assert (=> bs!1692964 m!7380018))

(assert (=> b!6603467 d!2071211))

(declare-fun d!2071213 () Bool)

(assert (=> d!2071213 (= (nullable!6464 (reg!16800 (regOne!33454 r!7292))) (nullableFct!2390 (reg!16800 (regOne!33454 r!7292))))))

(declare-fun bs!1692965 () Bool)

(assert (= bs!1692965 d!2071213))

(declare-fun m!7380028 () Bool)

(assert (=> bs!1692965 m!7380028))

(assert (=> b!6603458 d!2071213))

(assert (=> b!6603479 d!2071123))

(assert (=> b!6603459 d!2071123))

(declare-fun d!2071215 () Bool)

(declare-fun lt!2414425 () Regex!16471)

(assert (=> d!2071215 (validRegex!8207 lt!2414425)))

(assert (=> d!2071215 (= lt!2414425 (generalisedUnion!2315 (unfocusZipperList!1892 zl!343)))))

(assert (=> d!2071215 (= (unfocusZipper!2213 zl!343) lt!2414425)))

(declare-fun bs!1692966 () Bool)

(assert (= bs!1692966 d!2071215))

(declare-fun m!7380030 () Bool)

(assert (=> bs!1692966 m!7380030))

(assert (=> bs!1692966 m!7379198))

(assert (=> bs!1692966 m!7379198))

(assert (=> bs!1692966 m!7379200))

(assert (=> b!6603460 d!2071215))

(declare-fun d!2071217 () Bool)

(assert (=> d!2071217 (= (nullable!6464 (regOne!33454 (regOne!33454 r!7292))) (nullableFct!2390 (regOne!33454 (regOne!33454 r!7292))))))

(declare-fun bs!1692967 () Bool)

(assert (= bs!1692967 d!2071217))

(declare-fun m!7380032 () Bool)

(assert (=> bs!1692967 m!7380032))

(assert (=> b!6603481 d!2071217))

(declare-fun b!6604447 () Bool)

(declare-fun res!2708067 () Bool)

(declare-fun e!3996090 () Bool)

(assert (=> b!6604447 (=> (not res!2708067) (not e!3996090))))

(declare-fun lt!2414426 () Option!16362)

(assert (=> b!6604447 (= res!2708067 (matchR!8654 (regOne!33454 r!7292) (_1!36753 (get!22788 lt!2414426))))))

(declare-fun b!6604448 () Bool)

(declare-fun e!3996092 () Bool)

(assert (=> b!6604448 (= e!3996092 (not (isDefined!13065 lt!2414426)))))

(declare-fun b!6604449 () Bool)

(assert (=> b!6604449 (= e!3996090 (= (++!14617 (_1!36753 (get!22788 lt!2414426)) (_2!36753 (get!22788 lt!2414426))) s!2326))))

(declare-fun d!2071219 () Bool)

(assert (=> d!2071219 e!3996092))

(declare-fun res!2708065 () Bool)

(assert (=> d!2071219 (=> res!2708065 e!3996092)))

(assert (=> d!2071219 (= res!2708065 e!3996090)))

(declare-fun res!2708064 () Bool)

(assert (=> d!2071219 (=> (not res!2708064) (not e!3996090))))

(assert (=> d!2071219 (= res!2708064 (isDefined!13065 lt!2414426))))

(declare-fun e!3996094 () Option!16362)

(assert (=> d!2071219 (= lt!2414426 e!3996094)))

(declare-fun c!1216864 () Bool)

(declare-fun e!3996093 () Bool)

(assert (=> d!2071219 (= c!1216864 e!3996093)))

(declare-fun res!2708063 () Bool)

(assert (=> d!2071219 (=> (not res!2708063) (not e!3996093))))

(assert (=> d!2071219 (= res!2708063 (matchR!8654 (regOne!33454 r!7292) Nil!65588))))

(assert (=> d!2071219 (validRegex!8207 (regOne!33454 r!7292))))

(assert (=> d!2071219 (= (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) Nil!65588 s!2326 s!2326) lt!2414426)))

(declare-fun b!6604450 () Bool)

(assert (=> b!6604450 (= e!3996094 (Some!16361 (tuple2!66901 Nil!65588 s!2326)))))

(declare-fun b!6604451 () Bool)

(declare-fun res!2708066 () Bool)

(assert (=> b!6604451 (=> (not res!2708066) (not e!3996090))))

(assert (=> b!6604451 (= res!2708066 (matchR!8654 (regTwo!33454 r!7292) (_2!36753 (get!22788 lt!2414426))))))

(declare-fun b!6604452 () Bool)

(declare-fun lt!2414427 () Unit!159219)

(declare-fun lt!2414428 () Unit!159219)

(assert (=> b!6604452 (= lt!2414427 lt!2414428)))

(assert (=> b!6604452 (= (++!14617 (++!14617 Nil!65588 (Cons!65588 (h!72036 s!2326) Nil!65588)) (t!379364 s!2326)) s!2326)))

(assert (=> b!6604452 (= lt!2414428 (lemmaMoveElementToOtherListKeepsConcatEq!2614 Nil!65588 (h!72036 s!2326) (t!379364 s!2326) s!2326))))

(declare-fun e!3996091 () Option!16362)

(assert (=> b!6604452 (= e!3996091 (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) (++!14617 Nil!65588 (Cons!65588 (h!72036 s!2326) Nil!65588)) (t!379364 s!2326) s!2326))))

(declare-fun b!6604453 () Bool)

(assert (=> b!6604453 (= e!3996093 (matchR!8654 (regTwo!33454 r!7292) s!2326))))

(declare-fun b!6604454 () Bool)

(assert (=> b!6604454 (= e!3996094 e!3996091)))

(declare-fun c!1216863 () Bool)

(assert (=> b!6604454 (= c!1216863 ((_ is Nil!65588) s!2326))))

(declare-fun b!6604455 () Bool)

(assert (=> b!6604455 (= e!3996091 None!16361)))

(assert (= (and d!2071219 res!2708063) b!6604453))

(assert (= (and d!2071219 c!1216864) b!6604450))

(assert (= (and d!2071219 (not c!1216864)) b!6604454))

(assert (= (and b!6604454 c!1216863) b!6604455))

(assert (= (and b!6604454 (not c!1216863)) b!6604452))

(assert (= (and d!2071219 res!2708064) b!6604447))

(assert (= (and b!6604447 res!2708067) b!6604451))

(assert (= (and b!6604451 res!2708066) b!6604449))

(assert (= (and d!2071219 (not res!2708065)) b!6604448))

(declare-fun m!7380034 () Bool)

(assert (=> d!2071219 m!7380034))

(declare-fun m!7380036 () Bool)

(assert (=> d!2071219 m!7380036))

(declare-fun m!7380038 () Bool)

(assert (=> d!2071219 m!7380038))

(declare-fun m!7380040 () Bool)

(assert (=> b!6604451 m!7380040))

(declare-fun m!7380042 () Bool)

(assert (=> b!6604451 m!7380042))

(assert (=> b!6604447 m!7380040))

(declare-fun m!7380044 () Bool)

(assert (=> b!6604447 m!7380044))

(assert (=> b!6604448 m!7380034))

(assert (=> b!6604453 m!7379206))

(assert (=> b!6604449 m!7380040))

(declare-fun m!7380046 () Bool)

(assert (=> b!6604449 m!7380046))

(declare-fun m!7380048 () Bool)

(assert (=> b!6604452 m!7380048))

(assert (=> b!6604452 m!7380048))

(declare-fun m!7380050 () Bool)

(assert (=> b!6604452 m!7380050))

(declare-fun m!7380052 () Bool)

(assert (=> b!6604452 m!7380052))

(assert (=> b!6604452 m!7380048))

(declare-fun m!7380054 () Bool)

(assert (=> b!6604452 m!7380054))

(assert (=> b!6603482 d!2071219))

(declare-fun d!2071221 () Bool)

(assert (=> d!2071221 (= (Exists!3541 lambda!368229) (choose!49313 lambda!368229))))

(declare-fun bs!1692968 () Bool)

(assert (= bs!1692968 d!2071221))

(declare-fun m!7380056 () Bool)

(assert (=> bs!1692968 m!7380056))

(assert (=> b!6603482 d!2071221))

(declare-fun d!2071223 () Bool)

(assert (=> d!2071223 (= (Exists!3541 lambda!368230) (choose!49313 lambda!368230))))

(declare-fun bs!1692969 () Bool)

(assert (= bs!1692969 d!2071223))

(declare-fun m!7380058 () Bool)

(assert (=> bs!1692969 m!7380058))

(assert (=> b!6603482 d!2071223))

(declare-fun bs!1692970 () Bool)

(declare-fun d!2071225 () Bool)

(assert (= bs!1692970 (and d!2071225 b!6604247)))

(declare-fun lambda!368319 () Int)

(assert (=> bs!1692970 (not (= lambda!368319 lambda!368297))))

(declare-fun bs!1692971 () Bool)

(assert (= bs!1692971 (and d!2071225 b!6603482)))

(assert (=> bs!1692971 (= lambda!368319 lambda!368229)))

(assert (=> bs!1692971 (not (= lambda!368319 lambda!368230))))

(declare-fun bs!1692972 () Bool)

(assert (= bs!1692972 (and d!2071225 b!6603463)))

(assert (=> bs!1692972 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368319 lambda!368232))))

(declare-fun bs!1692973 () Bool)

(assert (= bs!1692973 (and d!2071225 d!2071193)))

(assert (=> bs!1692973 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368319 lambda!368316))))

(declare-fun bs!1692974 () Bool)

(assert (= bs!1692974 (and d!2071225 b!6604251)))

(assert (=> bs!1692974 (not (= lambda!368319 lambda!368296))))

(declare-fun bs!1692975 () Bool)

(assert (= bs!1692975 (and d!2071225 d!2071191)))

(assert (=> bs!1692975 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368319 lambda!368311))))

(declare-fun bs!1692976 () Bool)

(assert (= bs!1692976 (and d!2071225 b!6604342)))

(assert (=> bs!1692976 (not (= lambda!368319 lambda!368307))))

(assert (=> bs!1692972 (not (= lambda!368319 lambda!368233))))

(declare-fun bs!1692977 () Bool)

(assert (= bs!1692977 (and d!2071225 b!6604338)))

(assert (=> bs!1692977 (not (= lambda!368319 lambda!368308))))

(assert (=> bs!1692973 (not (= lambda!368319 lambda!368317))))

(assert (=> d!2071225 true))

(assert (=> d!2071225 true))

(assert (=> d!2071225 true))

(assert (=> d!2071225 (= (isDefined!13065 (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) Nil!65588 s!2326 s!2326)) (Exists!3541 lambda!368319))))

(declare-fun lt!2414429 () Unit!159219)

(assert (=> d!2071225 (= lt!2414429 (choose!49315 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326))))

(assert (=> d!2071225 (validRegex!8207 (regOne!33454 r!7292))))

(assert (=> d!2071225 (= (lemmaFindConcatSeparationEquivalentToExists!2540 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326) lt!2414429)))

(declare-fun bs!1692978 () Bool)

(assert (= bs!1692978 d!2071225))

(assert (=> bs!1692978 m!7379230))

(assert (=> bs!1692978 m!7379232))

(assert (=> bs!1692978 m!7379230))

(assert (=> bs!1692978 m!7380038))

(declare-fun m!7380060 () Bool)

(assert (=> bs!1692978 m!7380060))

(declare-fun m!7380062 () Bool)

(assert (=> bs!1692978 m!7380062))

(assert (=> b!6603482 d!2071225))

(declare-fun bs!1692979 () Bool)

(declare-fun d!2071227 () Bool)

(assert (= bs!1692979 (and d!2071227 b!6604247)))

(declare-fun lambda!368320 () Int)

(assert (=> bs!1692979 (not (= lambda!368320 lambda!368297))))

(declare-fun bs!1692980 () Bool)

(assert (= bs!1692980 (and d!2071227 b!6603482)))

(assert (=> bs!1692980 (= lambda!368320 lambda!368229)))

(assert (=> bs!1692980 (not (= lambda!368320 lambda!368230))))

(declare-fun bs!1692981 () Bool)

(assert (= bs!1692981 (and d!2071227 b!6603463)))

(assert (=> bs!1692981 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368320 lambda!368232))))

(declare-fun bs!1692982 () Bool)

(assert (= bs!1692982 (and d!2071227 d!2071193)))

(assert (=> bs!1692982 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368320 lambda!368316))))

(declare-fun bs!1692983 () Bool)

(assert (= bs!1692983 (and d!2071227 d!2071225)))

(assert (=> bs!1692983 (= lambda!368320 lambda!368319)))

(declare-fun bs!1692984 () Bool)

(assert (= bs!1692984 (and d!2071227 b!6604251)))

(assert (=> bs!1692984 (not (= lambda!368320 lambda!368296))))

(declare-fun bs!1692985 () Bool)

(assert (= bs!1692985 (and d!2071227 d!2071191)))

(assert (=> bs!1692985 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368320 lambda!368311))))

(declare-fun bs!1692986 () Bool)

(assert (= bs!1692986 (and d!2071227 b!6604342)))

(assert (=> bs!1692986 (not (= lambda!368320 lambda!368307))))

(assert (=> bs!1692981 (not (= lambda!368320 lambda!368233))))

(declare-fun bs!1692987 () Bool)

(assert (= bs!1692987 (and d!2071227 b!6604338)))

(assert (=> bs!1692987 (not (= lambda!368320 lambda!368308))))

(assert (=> bs!1692982 (not (= lambda!368320 lambda!368317))))

(assert (=> d!2071227 true))

(assert (=> d!2071227 true))

(assert (=> d!2071227 true))

(declare-fun lambda!368321 () Int)

(assert (=> bs!1692979 (= (and (= (regOne!33454 r!7292) (regOne!33454 lt!2414284)) (= (regTwo!33454 r!7292) (regTwo!33454 lt!2414284))) (= lambda!368321 lambda!368297))))

(assert (=> bs!1692980 (= lambda!368321 lambda!368230)))

(assert (=> bs!1692981 (not (= lambda!368321 lambda!368232))))

(assert (=> bs!1692982 (not (= lambda!368321 lambda!368316))))

(assert (=> bs!1692983 (not (= lambda!368321 lambda!368319))))

(assert (=> bs!1692984 (not (= lambda!368321 lambda!368296))))

(assert (=> bs!1692985 (not (= lambda!368321 lambda!368311))))

(assert (=> bs!1692986 (not (= lambda!368321 lambda!368307))))

(assert (=> bs!1692981 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368321 lambda!368233))))

(assert (=> bs!1692980 (not (= lambda!368321 lambda!368229))))

(declare-fun bs!1692988 () Bool)

(assert (= bs!1692988 d!2071227))

(assert (=> bs!1692988 (not (= lambda!368321 lambda!368320))))

(assert (=> bs!1692987 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (regOne!33454 lt!2414262)) (= (regTwo!33454 r!7292) (regTwo!33454 lt!2414262))) (= lambda!368321 lambda!368308))))

(assert (=> bs!1692982 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368321 lambda!368317))))

(assert (=> d!2071227 true))

(assert (=> d!2071227 true))

(assert (=> d!2071227 true))

(assert (=> d!2071227 (= (Exists!3541 lambda!368320) (Exists!3541 lambda!368321))))

(declare-fun lt!2414430 () Unit!159219)

(assert (=> d!2071227 (= lt!2414430 (choose!49316 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326))))

(assert (=> d!2071227 (validRegex!8207 (regOne!33454 r!7292))))

(assert (=> d!2071227 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2078 (regOne!33454 r!7292) (regTwo!33454 r!7292) s!2326) lt!2414430)))

(declare-fun m!7380064 () Bool)

(assert (=> bs!1692988 m!7380064))

(declare-fun m!7380066 () Bool)

(assert (=> bs!1692988 m!7380066))

(declare-fun m!7380068 () Bool)

(assert (=> bs!1692988 m!7380068))

(assert (=> bs!1692988 m!7380038))

(assert (=> b!6603482 d!2071227))

(declare-fun d!2071229 () Bool)

(assert (=> d!2071229 (= (isDefined!13065 (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) Nil!65588 s!2326 s!2326)) (not (isEmpty!37866 (findConcatSeparation!2776 (regOne!33454 r!7292) (regTwo!33454 r!7292) Nil!65588 s!2326 s!2326))))))

(declare-fun bs!1692989 () Bool)

(assert (= bs!1692989 d!2071229))

(assert (=> bs!1692989 m!7379230))

(declare-fun m!7380070 () Bool)

(assert (=> bs!1692989 m!7380070))

(assert (=> b!6603482 d!2071229))

(declare-fun bm!577729 () Bool)

(declare-fun call!577739 () Int)

(declare-fun c!1216884 () Bool)

(declare-fun c!1216882 () Bool)

(assert (=> bm!577729 (= call!577739 (regexDepth!368 (ite c!1216884 (reg!16800 r!7292) (ite c!1216882 (regOne!33455 r!7292) (regTwo!33454 r!7292)))))))

(declare-fun b!6604490 () Bool)

(declare-fun e!3996117 () Bool)

(declare-fun lt!2414433 () Int)

(declare-fun call!577736 () Int)

(assert (=> b!6604490 (= e!3996117 (> lt!2414433 call!577736))))

(declare-fun b!6604491 () Bool)

(assert (=> b!6604491 (= c!1216882 ((_ is Union!16471) r!7292))))

(declare-fun e!3996115 () Int)

(declare-fun e!3996116 () Int)

(assert (=> b!6604491 (= e!3996115 e!3996116)))

(declare-fun b!6604492 () Bool)

(declare-fun e!3996123 () Int)

(declare-fun call!577738 () Int)

(assert (=> b!6604492 (= e!3996123 (+ 1 call!577738))))

(declare-fun b!6604493 () Bool)

(declare-fun e!3996118 () Bool)

(declare-fun e!3996119 () Bool)

(assert (=> b!6604493 (= e!3996118 e!3996119)))

(declare-fun c!1216885 () Bool)

(assert (=> b!6604493 (= c!1216885 ((_ is Concat!25316) r!7292))))

(declare-fun b!6604494 () Bool)

(declare-fun e!3996124 () Bool)

(assert (=> b!6604494 (= e!3996124 e!3996118)))

(declare-fun c!1216879 () Bool)

(assert (=> b!6604494 (= c!1216879 ((_ is Union!16471) r!7292))))

(declare-fun b!6604496 () Bool)

(assert (=> b!6604496 (= e!3996123 1)))

(declare-fun bm!577730 () Bool)

(declare-fun call!577734 () Int)

(assert (=> bm!577730 (= call!577736 call!577734)))

(declare-fun b!6604497 () Bool)

(declare-fun e!3996121 () Int)

(assert (=> b!6604497 (= e!3996121 1)))

(declare-fun b!6604498 () Bool)

(declare-fun e!3996122 () Bool)

(assert (=> b!6604498 (= e!3996122 (> lt!2414433 call!577734))))

(declare-fun b!6604499 () Bool)

(assert (=> b!6604499 (= e!3996121 e!3996115)))

(assert (=> b!6604499 (= c!1216884 ((_ is Star!16471) r!7292))))

(declare-fun bm!577731 () Bool)

(declare-fun call!577740 () Int)

(assert (=> bm!577731 (= call!577740 (regexDepth!368 (ite c!1216882 (regTwo!33455 r!7292) (regOne!33454 r!7292))))))

(declare-fun b!6604500 () Bool)

(declare-fun c!1216881 () Bool)

(assert (=> b!6604500 (= c!1216881 ((_ is Star!16471) r!7292))))

(assert (=> b!6604500 (= e!3996119 e!3996117)))

(declare-fun bm!577732 () Bool)

(assert (=> bm!577732 (= call!577734 (regexDepth!368 (ite c!1216879 (regTwo!33455 r!7292) (ite c!1216885 (regOne!33454 r!7292) (reg!16800 r!7292)))))))

(declare-fun b!6604501 () Bool)

(assert (=> b!6604501 (= e!3996117 (= lt!2414433 1))))

(declare-fun b!6604495 () Bool)

(assert (=> b!6604495 (= e!3996116 e!3996123)))

(declare-fun c!1216880 () Bool)

(assert (=> b!6604495 (= c!1216880 ((_ is Concat!25316) r!7292))))

(declare-fun d!2071231 () Bool)

(assert (=> d!2071231 e!3996124))

(declare-fun res!2708075 () Bool)

(assert (=> d!2071231 (=> (not res!2708075) (not e!3996124))))

(assert (=> d!2071231 (= res!2708075 (> lt!2414433 0))))

(assert (=> d!2071231 (= lt!2414433 e!3996121)))

(declare-fun c!1216883 () Bool)

(assert (=> d!2071231 (= c!1216883 ((_ is ElementMatch!16471) r!7292))))

(assert (=> d!2071231 (= (regexDepth!368 r!7292) lt!2414433)))

(declare-fun b!6604502 () Bool)

(declare-fun res!2708076 () Bool)

(declare-fun e!3996120 () Bool)

(assert (=> b!6604502 (=> (not res!2708076) (not e!3996120))))

(assert (=> b!6604502 (= res!2708076 (> lt!2414433 call!577736))))

(assert (=> b!6604502 (= e!3996119 e!3996120)))

(declare-fun bm!577733 () Bool)

(declare-fun call!577737 () Int)

(assert (=> bm!577733 (= call!577737 (regexDepth!368 (ite c!1216879 (regOne!33455 r!7292) (regTwo!33454 r!7292))))))

(declare-fun call!577735 () Int)

(declare-fun bm!577734 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!577734 (= call!577738 (maxBigInt!0 (ite c!1216882 call!577735 call!577740) (ite c!1216882 call!577740 call!577735)))))

(declare-fun b!6604503 () Bool)

(assert (=> b!6604503 (= e!3996115 (+ 1 call!577739))))

(declare-fun b!6604504 () Bool)

(assert (=> b!6604504 (= e!3996120 (> lt!2414433 call!577737))))

(declare-fun b!6604505 () Bool)

(assert (=> b!6604505 (= e!3996118 e!3996122)))

(declare-fun res!2708074 () Bool)

(assert (=> b!6604505 (= res!2708074 (> lt!2414433 call!577737))))

(assert (=> b!6604505 (=> (not res!2708074) (not e!3996122))))

(declare-fun bm!577735 () Bool)

(assert (=> bm!577735 (= call!577735 call!577739)))

(declare-fun b!6604506 () Bool)

(assert (=> b!6604506 (= e!3996116 (+ 1 call!577738))))

(assert (= (and d!2071231 c!1216883) b!6604497))

(assert (= (and d!2071231 (not c!1216883)) b!6604499))

(assert (= (and b!6604499 c!1216884) b!6604503))

(assert (= (and b!6604499 (not c!1216884)) b!6604491))

(assert (= (and b!6604491 c!1216882) b!6604506))

(assert (= (and b!6604491 (not c!1216882)) b!6604495))

(assert (= (and b!6604495 c!1216880) b!6604492))

(assert (= (and b!6604495 (not c!1216880)) b!6604496))

(assert (= (or b!6604506 b!6604492) bm!577731))

(assert (= (or b!6604506 b!6604492) bm!577735))

(assert (= (or b!6604506 b!6604492) bm!577734))

(assert (= (or b!6604503 bm!577735) bm!577729))

(assert (= (and d!2071231 res!2708075) b!6604494))

(assert (= (and b!6604494 c!1216879) b!6604505))

(assert (= (and b!6604494 (not c!1216879)) b!6604493))

(assert (= (and b!6604505 res!2708074) b!6604498))

(assert (= (and b!6604493 c!1216885) b!6604502))

(assert (= (and b!6604493 (not c!1216885)) b!6604500))

(assert (= (and b!6604502 res!2708076) b!6604504))

(assert (= (and b!6604500 c!1216881) b!6604490))

(assert (= (and b!6604500 (not c!1216881)) b!6604501))

(assert (= (or b!6604502 b!6604490) bm!577730))

(assert (= (or b!6604498 bm!577730) bm!577732))

(assert (= (or b!6604505 b!6604504) bm!577733))

(declare-fun m!7380072 () Bool)

(assert (=> bm!577731 m!7380072))

(declare-fun m!7380074 () Bool)

(assert (=> bm!577734 m!7380074))

(declare-fun m!7380076 () Bool)

(assert (=> bm!577733 m!7380076))

(declare-fun m!7380078 () Bool)

(assert (=> bm!577729 m!7380078))

(declare-fun m!7380080 () Bool)

(assert (=> bm!577732 m!7380080))

(assert (=> b!6603461 d!2071231))

(declare-fun bm!577736 () Bool)

(declare-fun c!1216891 () Bool)

(declare-fun call!577746 () Int)

(declare-fun c!1216889 () Bool)

(assert (=> bm!577736 (= call!577746 (regexDepth!368 (ite c!1216891 (reg!16800 lt!2414270) (ite c!1216889 (regOne!33455 lt!2414270) (regTwo!33454 lt!2414270)))))))

(declare-fun b!6604507 () Bool)

(declare-fun e!3996127 () Bool)

(declare-fun lt!2414434 () Int)

(declare-fun call!577743 () Int)

(assert (=> b!6604507 (= e!3996127 (> lt!2414434 call!577743))))

(declare-fun b!6604508 () Bool)

(assert (=> b!6604508 (= c!1216889 ((_ is Union!16471) lt!2414270))))

(declare-fun e!3996125 () Int)

(declare-fun e!3996126 () Int)

(assert (=> b!6604508 (= e!3996125 e!3996126)))

(declare-fun b!6604509 () Bool)

(declare-fun e!3996133 () Int)

(declare-fun call!577745 () Int)

(assert (=> b!6604509 (= e!3996133 (+ 1 call!577745))))

(declare-fun b!6604510 () Bool)

(declare-fun e!3996128 () Bool)

(declare-fun e!3996129 () Bool)

(assert (=> b!6604510 (= e!3996128 e!3996129)))

(declare-fun c!1216892 () Bool)

(assert (=> b!6604510 (= c!1216892 ((_ is Concat!25316) lt!2414270))))

(declare-fun b!6604511 () Bool)

(declare-fun e!3996134 () Bool)

(assert (=> b!6604511 (= e!3996134 e!3996128)))

(declare-fun c!1216886 () Bool)

(assert (=> b!6604511 (= c!1216886 ((_ is Union!16471) lt!2414270))))

(declare-fun b!6604513 () Bool)

(assert (=> b!6604513 (= e!3996133 1)))

(declare-fun bm!577737 () Bool)

(declare-fun call!577741 () Int)

(assert (=> bm!577737 (= call!577743 call!577741)))

(declare-fun b!6604514 () Bool)

(declare-fun e!3996131 () Int)

(assert (=> b!6604514 (= e!3996131 1)))

(declare-fun b!6604515 () Bool)

(declare-fun e!3996132 () Bool)

(assert (=> b!6604515 (= e!3996132 (> lt!2414434 call!577741))))

(declare-fun b!6604516 () Bool)

(assert (=> b!6604516 (= e!3996131 e!3996125)))

(assert (=> b!6604516 (= c!1216891 ((_ is Star!16471) lt!2414270))))

(declare-fun bm!577738 () Bool)

(declare-fun call!577747 () Int)

(assert (=> bm!577738 (= call!577747 (regexDepth!368 (ite c!1216889 (regTwo!33455 lt!2414270) (regOne!33454 lt!2414270))))))

(declare-fun b!6604517 () Bool)

(declare-fun c!1216888 () Bool)

(assert (=> b!6604517 (= c!1216888 ((_ is Star!16471) lt!2414270))))

(assert (=> b!6604517 (= e!3996129 e!3996127)))

(declare-fun bm!577739 () Bool)

(assert (=> bm!577739 (= call!577741 (regexDepth!368 (ite c!1216886 (regTwo!33455 lt!2414270) (ite c!1216892 (regOne!33454 lt!2414270) (reg!16800 lt!2414270)))))))

(declare-fun b!6604518 () Bool)

(assert (=> b!6604518 (= e!3996127 (= lt!2414434 1))))

(declare-fun b!6604512 () Bool)

(assert (=> b!6604512 (= e!3996126 e!3996133)))

(declare-fun c!1216887 () Bool)

(assert (=> b!6604512 (= c!1216887 ((_ is Concat!25316) lt!2414270))))

(declare-fun d!2071233 () Bool)

(assert (=> d!2071233 e!3996134))

(declare-fun res!2708078 () Bool)

(assert (=> d!2071233 (=> (not res!2708078) (not e!3996134))))

(assert (=> d!2071233 (= res!2708078 (> lt!2414434 0))))

(assert (=> d!2071233 (= lt!2414434 e!3996131)))

(declare-fun c!1216890 () Bool)

(assert (=> d!2071233 (= c!1216890 ((_ is ElementMatch!16471) lt!2414270))))

(assert (=> d!2071233 (= (regexDepth!368 lt!2414270) lt!2414434)))

(declare-fun b!6604519 () Bool)

(declare-fun res!2708079 () Bool)

(declare-fun e!3996130 () Bool)

(assert (=> b!6604519 (=> (not res!2708079) (not e!3996130))))

(assert (=> b!6604519 (= res!2708079 (> lt!2414434 call!577743))))

(assert (=> b!6604519 (= e!3996129 e!3996130)))

(declare-fun bm!577740 () Bool)

(declare-fun call!577744 () Int)

(assert (=> bm!577740 (= call!577744 (regexDepth!368 (ite c!1216886 (regOne!33455 lt!2414270) (regTwo!33454 lt!2414270))))))

(declare-fun bm!577741 () Bool)

(declare-fun call!577742 () Int)

(assert (=> bm!577741 (= call!577745 (maxBigInt!0 (ite c!1216889 call!577742 call!577747) (ite c!1216889 call!577747 call!577742)))))

(declare-fun b!6604520 () Bool)

(assert (=> b!6604520 (= e!3996125 (+ 1 call!577746))))

(declare-fun b!6604521 () Bool)

(assert (=> b!6604521 (= e!3996130 (> lt!2414434 call!577744))))

(declare-fun b!6604522 () Bool)

(assert (=> b!6604522 (= e!3996128 e!3996132)))

(declare-fun res!2708077 () Bool)

(assert (=> b!6604522 (= res!2708077 (> lt!2414434 call!577744))))

(assert (=> b!6604522 (=> (not res!2708077) (not e!3996132))))

(declare-fun bm!577742 () Bool)

(assert (=> bm!577742 (= call!577742 call!577746)))

(declare-fun b!6604523 () Bool)

(assert (=> b!6604523 (= e!3996126 (+ 1 call!577745))))

(assert (= (and d!2071233 c!1216890) b!6604514))

(assert (= (and d!2071233 (not c!1216890)) b!6604516))

(assert (= (and b!6604516 c!1216891) b!6604520))

(assert (= (and b!6604516 (not c!1216891)) b!6604508))

(assert (= (and b!6604508 c!1216889) b!6604523))

(assert (= (and b!6604508 (not c!1216889)) b!6604512))

(assert (= (and b!6604512 c!1216887) b!6604509))

(assert (= (and b!6604512 (not c!1216887)) b!6604513))

(assert (= (or b!6604523 b!6604509) bm!577738))

(assert (= (or b!6604523 b!6604509) bm!577742))

(assert (= (or b!6604523 b!6604509) bm!577741))

(assert (= (or b!6604520 bm!577742) bm!577736))

(assert (= (and d!2071233 res!2708078) b!6604511))

(assert (= (and b!6604511 c!1216886) b!6604522))

(assert (= (and b!6604511 (not c!1216886)) b!6604510))

(assert (= (and b!6604522 res!2708077) b!6604515))

(assert (= (and b!6604510 c!1216892) b!6604519))

(assert (= (and b!6604510 (not c!1216892)) b!6604517))

(assert (= (and b!6604519 res!2708079) b!6604521))

(assert (= (and b!6604517 c!1216888) b!6604507))

(assert (= (and b!6604517 (not c!1216888)) b!6604518))

(assert (= (or b!6604519 b!6604507) bm!577737))

(assert (= (or b!6604515 bm!577737) bm!577739))

(assert (= (or b!6604522 b!6604521) bm!577740))

(declare-fun m!7380082 () Bool)

(assert (=> bm!577738 m!7380082))

(declare-fun m!7380084 () Bool)

(assert (=> bm!577741 m!7380084))

(declare-fun m!7380086 () Bool)

(assert (=> bm!577740 m!7380086))

(declare-fun m!7380088 () Bool)

(assert (=> bm!577736 m!7380088))

(declare-fun m!7380090 () Bool)

(assert (=> bm!577739 m!7380090))

(assert (=> b!6603461 d!2071233))

(declare-fun bs!1692990 () Bool)

(declare-fun d!2071235 () Bool)

(assert (= bs!1692990 (and d!2071235 d!2071201)))

(declare-fun lambda!368322 () Int)

(assert (=> bs!1692990 (= lambda!368322 lambda!368318)))

(declare-fun bs!1692991 () Bool)

(assert (= bs!1692991 (and d!2071235 d!2071095)))

(assert (=> bs!1692991 (= lambda!368322 lambda!368291)))

(declare-fun bs!1692992 () Bool)

(assert (= bs!1692992 (and d!2071235 d!2071169)))

(assert (=> bs!1692992 (= lambda!368322 lambda!368306)))

(declare-fun bs!1692993 () Bool)

(assert (= bs!1692993 (and d!2071235 d!2071167)))

(assert (=> bs!1692993 (= lambda!368322 lambda!368303)))

(declare-fun bs!1692994 () Bool)

(assert (= bs!1692994 (and d!2071235 d!2071053)))

(assert (=> bs!1692994 (= lambda!368322 lambda!368284)))

(declare-fun b!6604524 () Bool)

(declare-fun e!3996135 () Bool)

(declare-fun lt!2414435 () Regex!16471)

(assert (=> b!6604524 (= e!3996135 (isConcat!1372 lt!2414435))))

(declare-fun b!6604525 () Bool)

(declare-fun e!3996138 () Bool)

(declare-fun e!3996136 () Bool)

(assert (=> b!6604525 (= e!3996138 e!3996136)))

(declare-fun c!1216896 () Bool)

(assert (=> b!6604525 (= c!1216896 (isEmpty!37862 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604526 () Bool)

(declare-fun e!3996137 () Regex!16471)

(assert (=> b!6604526 (= e!3996137 EmptyExpr!16471)))

(declare-fun b!6604527 () Bool)

(declare-fun e!3996140 () Regex!16471)

(assert (=> b!6604527 (= e!3996140 e!3996137)))

(declare-fun c!1216893 () Bool)

(assert (=> b!6604527 (= c!1216893 ((_ is Cons!65589) (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(assert (=> d!2071235 e!3996138))

(declare-fun res!2708080 () Bool)

(assert (=> d!2071235 (=> (not res!2708080) (not e!3996138))))

(assert (=> d!2071235 (= res!2708080 (validRegex!8207 lt!2414435))))

(assert (=> d!2071235 (= lt!2414435 e!3996140)))

(declare-fun c!1216894 () Bool)

(declare-fun e!3996139 () Bool)

(assert (=> d!2071235 (= c!1216894 e!3996139)))

(declare-fun res!2708081 () Bool)

(assert (=> d!2071235 (=> (not res!2708081) (not e!3996139))))

(assert (=> d!2071235 (= res!2708081 ((_ is Cons!65589) (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(assert (=> d!2071235 (forall!15665 (t!379365 (exprs!6355 (h!72038 zl!343))) lambda!368322)))

(assert (=> d!2071235 (= (generalisedConcat!2068 (t!379365 (exprs!6355 (h!72038 zl!343)))) lt!2414435)))

(declare-fun b!6604528 () Bool)

(assert (=> b!6604528 (= e!3996135 (= lt!2414435 (head!13394 (t!379365 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun b!6604529 () Bool)

(assert (=> b!6604529 (= e!3996136 e!3996135)))

(declare-fun c!1216895 () Bool)

(assert (=> b!6604529 (= c!1216895 (isEmpty!37862 (tail!12479 (t!379365 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun b!6604530 () Bool)

(assert (=> b!6604530 (= e!3996140 (h!72037 (t!379365 (exprs!6355 (h!72038 zl!343)))))))

(declare-fun b!6604531 () Bool)

(assert (=> b!6604531 (= e!3996139 (isEmpty!37862 (t!379365 (t!379365 (exprs!6355 (h!72038 zl!343))))))))

(declare-fun b!6604532 () Bool)

(assert (=> b!6604532 (= e!3996136 (isEmptyExpr!1849 lt!2414435))))

(declare-fun b!6604533 () Bool)

(assert (=> b!6604533 (= e!3996137 (Concat!25316 (h!72037 (t!379365 (exprs!6355 (h!72038 zl!343)))) (generalisedConcat!2068 (t!379365 (t!379365 (exprs!6355 (h!72038 zl!343)))))))))

(assert (= (and d!2071235 res!2708081) b!6604531))

(assert (= (and d!2071235 c!1216894) b!6604530))

(assert (= (and d!2071235 (not c!1216894)) b!6604527))

(assert (= (and b!6604527 c!1216893) b!6604533))

(assert (= (and b!6604527 (not c!1216893)) b!6604526))

(assert (= (and d!2071235 res!2708080) b!6604525))

(assert (= (and b!6604525 c!1216896) b!6604532))

(assert (= (and b!6604525 (not c!1216896)) b!6604529))

(assert (= (and b!6604529 c!1216895) b!6604528))

(assert (= (and b!6604529 (not c!1216895)) b!6604524))

(declare-fun m!7380092 () Bool)

(assert (=> b!6604524 m!7380092))

(declare-fun m!7380094 () Bool)

(assert (=> b!6604528 m!7380094))

(declare-fun m!7380096 () Bool)

(assert (=> b!6604529 m!7380096))

(assert (=> b!6604529 m!7380096))

(declare-fun m!7380098 () Bool)

(assert (=> b!6604529 m!7380098))

(assert (=> b!6604525 m!7379170))

(declare-fun m!7380100 () Bool)

(assert (=> b!6604532 m!7380100))

(declare-fun m!7380102 () Bool)

(assert (=> b!6604531 m!7380102))

(declare-fun m!7380104 () Bool)

(assert (=> b!6604533 m!7380104))

(declare-fun m!7380106 () Bool)

(assert (=> d!2071235 m!7380106))

(declare-fun m!7380108 () Bool)

(assert (=> d!2071235 m!7380108))

(assert (=> b!6603461 d!2071235))

(assert (=> b!6603462 d!2071085))

(declare-fun d!2071237 () Bool)

(declare-fun e!3996143 () Bool)

(assert (=> d!2071237 e!3996143))

(declare-fun res!2708084 () Bool)

(assert (=> d!2071237 (=> (not res!2708084) (not e!3996143))))

(declare-fun lt!2414438 () List!65714)

(declare-fun noDuplicate!2276 (List!65714) Bool)

(assert (=> d!2071237 (= res!2708084 (noDuplicate!2276 lt!2414438))))

(declare-fun choose!49318 ((InoxSet Context!11710)) List!65714)

(assert (=> d!2071237 (= lt!2414438 (choose!49318 z!1189))))

(assert (=> d!2071237 (= (toList!10255 z!1189) lt!2414438)))

(declare-fun b!6604536 () Bool)

(declare-fun content!12648 (List!65714) (InoxSet Context!11710))

(assert (=> b!6604536 (= e!3996143 (= (content!12648 lt!2414438) z!1189))))

(assert (= (and d!2071237 res!2708084) b!6604536))

(declare-fun m!7380110 () Bool)

(assert (=> d!2071237 m!7380110))

(declare-fun m!7380112 () Bool)

(assert (=> d!2071237 m!7380112))

(declare-fun m!7380114 () Bool)

(assert (=> b!6604536 m!7380114))

(assert (=> b!6603474 d!2071237))

(declare-fun d!2071239 () Bool)

(declare-fun lt!2414439 () Regex!16471)

(assert (=> d!2071239 (validRegex!8207 lt!2414439)))

(assert (=> d!2071239 (= lt!2414439 (generalisedUnion!2315 (unfocusZipperList!1892 (Cons!65590 lt!2414256 Nil!65590))))))

(assert (=> d!2071239 (= (unfocusZipper!2213 (Cons!65590 lt!2414256 Nil!65590)) lt!2414439)))

(declare-fun bs!1692995 () Bool)

(assert (= bs!1692995 d!2071239))

(declare-fun m!7380116 () Bool)

(assert (=> bs!1692995 m!7380116))

(declare-fun m!7380118 () Bool)

(assert (=> bs!1692995 m!7380118))

(assert (=> bs!1692995 m!7380118))

(declare-fun m!7380120 () Bool)

(assert (=> bs!1692995 m!7380120))

(assert (=> b!6603495 d!2071239))

(declare-fun b!6604543 () Bool)

(assert (=> b!6604543 true))

(declare-fun bs!1692996 () Bool)

(declare-fun b!6604545 () Bool)

(assert (= bs!1692996 (and b!6604545 b!6604543)))

(declare-fun lambda!368330 () Int)

(declare-fun lt!2414448 () Int)

(declare-fun lambda!368331 () Int)

(declare-fun lt!2414451 () Int)

(assert (=> bs!1692996 (= (= lt!2414451 lt!2414448) (= lambda!368331 lambda!368330))))

(assert (=> b!6604545 true))

(declare-fun d!2071241 () Bool)

(declare-fun e!3996148 () Bool)

(assert (=> d!2071241 e!3996148))

(declare-fun res!2708087 () Bool)

(assert (=> d!2071241 (=> (not res!2708087) (not e!3996148))))

(assert (=> d!2071241 (= res!2708087 (>= lt!2414451 0))))

(declare-fun e!3996149 () Int)

(assert (=> d!2071241 (= lt!2414451 e!3996149)))

(declare-fun c!1216905 () Bool)

(assert (=> d!2071241 (= c!1216905 ((_ is Cons!65590) zl!343))))

(assert (=> d!2071241 (= (zipperDepth!408 zl!343) lt!2414451)))

(assert (=> b!6604543 (= e!3996149 lt!2414448)))

(declare-fun contextDepth!297 (Context!11710) Int)

(assert (=> b!6604543 (= lt!2414448 (maxBigInt!0 (contextDepth!297 (h!72038 zl!343)) (zipperDepth!408 (t!379366 zl!343))))))

(declare-fun lambda!368329 () Int)

(declare-fun lt!2414450 () Unit!159219)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!281 (List!65714 Int Int Int) Unit!159219)

(assert (=> b!6604543 (= lt!2414450 (lemmaForallContextDepthBiggerThanTransitive!281 (t!379366 zl!343) lt!2414448 (zipperDepth!408 (t!379366 zl!343)) lambda!368329))))

(declare-fun forall!15667 (List!65714 Int) Bool)

(assert (=> b!6604543 (forall!15667 (t!379366 zl!343) lambda!368330)))

(declare-fun lt!2414449 () Unit!159219)

(assert (=> b!6604543 (= lt!2414449 lt!2414450)))

(declare-fun b!6604544 () Bool)

(assert (=> b!6604544 (= e!3996149 0)))

(assert (=> b!6604545 (= e!3996148 (forall!15667 zl!343 lambda!368331))))

(assert (= (and d!2071241 c!1216905) b!6604543))

(assert (= (and d!2071241 (not c!1216905)) b!6604544))

(assert (= (and d!2071241 res!2708087) b!6604545))

(declare-fun m!7380122 () Bool)

(assert (=> b!6604543 m!7380122))

(declare-fun m!7380124 () Bool)

(assert (=> b!6604543 m!7380124))

(declare-fun m!7380126 () Bool)

(assert (=> b!6604543 m!7380126))

(assert (=> b!6604543 m!7380122))

(assert (=> b!6604543 m!7380124))

(declare-fun m!7380128 () Bool)

(assert (=> b!6604543 m!7380128))

(assert (=> b!6604543 m!7380124))

(declare-fun m!7380130 () Bool)

(assert (=> b!6604543 m!7380130))

(declare-fun m!7380132 () Bool)

(assert (=> b!6604545 m!7380132))

(assert (=> b!6603475 d!2071241))

(declare-fun bs!1692997 () Bool)

(declare-fun b!6604548 () Bool)

(assert (= bs!1692997 (and b!6604548 b!6604543)))

(declare-fun lambda!368332 () Int)

(assert (=> bs!1692997 (= lambda!368332 lambda!368329)))

(declare-fun lambda!368333 () Int)

(declare-fun lt!2414452 () Int)

(assert (=> bs!1692997 (= (= lt!2414452 lt!2414448) (= lambda!368333 lambda!368330))))

(declare-fun bs!1692998 () Bool)

(assert (= bs!1692998 (and b!6604548 b!6604545)))

(assert (=> bs!1692998 (= (= lt!2414452 lt!2414451) (= lambda!368333 lambda!368331))))

(assert (=> b!6604548 true))

(declare-fun bs!1692999 () Bool)

(declare-fun b!6604550 () Bool)

(assert (= bs!1692999 (and b!6604550 b!6604543)))

(declare-fun lt!2414455 () Int)

(declare-fun lambda!368334 () Int)

(assert (=> bs!1692999 (= (= lt!2414455 lt!2414448) (= lambda!368334 lambda!368330))))

(declare-fun bs!1693000 () Bool)

(assert (= bs!1693000 (and b!6604550 b!6604545)))

(assert (=> bs!1693000 (= (= lt!2414455 lt!2414451) (= lambda!368334 lambda!368331))))

(declare-fun bs!1693001 () Bool)

(assert (= bs!1693001 (and b!6604550 b!6604548)))

(assert (=> bs!1693001 (= (= lt!2414455 lt!2414452) (= lambda!368334 lambda!368333))))

(assert (=> b!6604550 true))

(declare-fun d!2071243 () Bool)

(declare-fun e!3996150 () Bool)

(assert (=> d!2071243 e!3996150))

(declare-fun res!2708088 () Bool)

(assert (=> d!2071243 (=> (not res!2708088) (not e!3996150))))

(assert (=> d!2071243 (= res!2708088 (>= lt!2414455 0))))

(declare-fun e!3996151 () Int)

(assert (=> d!2071243 (= lt!2414455 e!3996151)))

(declare-fun c!1216906 () Bool)

(assert (=> d!2071243 (= c!1216906 ((_ is Cons!65590) lt!2414271))))

(assert (=> d!2071243 (= (zipperDepth!408 lt!2414271) lt!2414455)))

(assert (=> b!6604548 (= e!3996151 lt!2414452)))

(assert (=> b!6604548 (= lt!2414452 (maxBigInt!0 (contextDepth!297 (h!72038 lt!2414271)) (zipperDepth!408 (t!379366 lt!2414271))))))

(declare-fun lt!2414454 () Unit!159219)

(assert (=> b!6604548 (= lt!2414454 (lemmaForallContextDepthBiggerThanTransitive!281 (t!379366 lt!2414271) lt!2414452 (zipperDepth!408 (t!379366 lt!2414271)) lambda!368332))))

(assert (=> b!6604548 (forall!15667 (t!379366 lt!2414271) lambda!368333)))

(declare-fun lt!2414453 () Unit!159219)

(assert (=> b!6604548 (= lt!2414453 lt!2414454)))

(declare-fun b!6604549 () Bool)

(assert (=> b!6604549 (= e!3996151 0)))

(assert (=> b!6604550 (= e!3996150 (forall!15667 lt!2414271 lambda!368334))))

(assert (= (and d!2071243 c!1216906) b!6604548))

(assert (= (and d!2071243 (not c!1216906)) b!6604549))

(assert (= (and d!2071243 res!2708088) b!6604550))

(declare-fun m!7380134 () Bool)

(assert (=> b!6604548 m!7380134))

(declare-fun m!7380136 () Bool)

(assert (=> b!6604548 m!7380136))

(declare-fun m!7380138 () Bool)

(assert (=> b!6604548 m!7380138))

(assert (=> b!6604548 m!7380134))

(assert (=> b!6604548 m!7380136))

(declare-fun m!7380140 () Bool)

(assert (=> b!6604548 m!7380140))

(assert (=> b!6604548 m!7380136))

(declare-fun m!7380142 () Bool)

(assert (=> b!6604548 m!7380142))

(declare-fun m!7380144 () Bool)

(assert (=> b!6604550 m!7380144))

(assert (=> b!6603475 d!2071243))

(declare-fun bs!1693002 () Bool)

(declare-fun b!6604555 () Bool)

(assert (= bs!1693002 (and b!6604555 b!6604247)))

(declare-fun lambda!368335 () Int)

(assert (=> bs!1693002 (not (= lambda!368335 lambda!368297))))

(declare-fun bs!1693003 () Bool)

(assert (= bs!1693003 (and b!6604555 b!6603482)))

(assert (=> bs!1693003 (not (= lambda!368335 lambda!368230))))

(declare-fun bs!1693004 () Bool)

(assert (= bs!1693004 (and b!6604555 b!6603463)))

(assert (=> bs!1693004 (not (= lambda!368335 lambda!368232))))

(declare-fun bs!1693005 () Bool)

(assert (= bs!1693005 (and b!6604555 d!2071227)))

(assert (=> bs!1693005 (not (= lambda!368335 lambda!368321))))

(declare-fun bs!1693006 () Bool)

(assert (= bs!1693006 (and b!6604555 d!2071193)))

(assert (=> bs!1693006 (not (= lambda!368335 lambda!368316))))

(declare-fun bs!1693007 () Bool)

(assert (= bs!1693007 (and b!6604555 d!2071225)))

(assert (=> bs!1693007 (not (= lambda!368335 lambda!368319))))

(declare-fun bs!1693008 () Bool)

(assert (= bs!1693008 (and b!6604555 b!6604251)))

(assert (=> bs!1693008 (= (and (= (reg!16800 r!7292) (reg!16800 lt!2414284)) (= r!7292 lt!2414284)) (= lambda!368335 lambda!368296))))

(declare-fun bs!1693009 () Bool)

(assert (= bs!1693009 (and b!6604555 d!2071191)))

(assert (=> bs!1693009 (not (= lambda!368335 lambda!368311))))

(declare-fun bs!1693010 () Bool)

(assert (= bs!1693010 (and b!6604555 b!6604342)))

(assert (=> bs!1693010 (= (and (= s!2326 Nil!65588) (= (reg!16800 r!7292) (reg!16800 lt!2414262)) (= r!7292 lt!2414262)) (= lambda!368335 lambda!368307))))

(assert (=> bs!1693004 (not (= lambda!368335 lambda!368233))))

(assert (=> bs!1693003 (not (= lambda!368335 lambda!368229))))

(assert (=> bs!1693005 (not (= lambda!368335 lambda!368320))))

(declare-fun bs!1693011 () Bool)

(assert (= bs!1693011 (and b!6604555 b!6604338)))

(assert (=> bs!1693011 (not (= lambda!368335 lambda!368308))))

(assert (=> bs!1693006 (not (= lambda!368335 lambda!368317))))

(assert (=> b!6604555 true))

(assert (=> b!6604555 true))

(declare-fun bs!1693012 () Bool)

(declare-fun b!6604551 () Bool)

(assert (= bs!1693012 (and b!6604551 b!6604247)))

(declare-fun lambda!368336 () Int)

(assert (=> bs!1693012 (= (and (= (regOne!33454 r!7292) (regOne!33454 lt!2414284)) (= (regTwo!33454 r!7292) (regTwo!33454 lt!2414284))) (= lambda!368336 lambda!368297))))

(declare-fun bs!1693013 () Bool)

(assert (= bs!1693013 (and b!6604551 b!6603482)))

(assert (=> bs!1693013 (= lambda!368336 lambda!368230)))

(declare-fun bs!1693014 () Bool)

(assert (= bs!1693014 (and b!6604551 d!2071227)))

(assert (=> bs!1693014 (= lambda!368336 lambda!368321)))

(declare-fun bs!1693015 () Bool)

(assert (= bs!1693015 (and b!6604551 d!2071193)))

(assert (=> bs!1693015 (not (= lambda!368336 lambda!368316))))

(declare-fun bs!1693016 () Bool)

(assert (= bs!1693016 (and b!6604551 d!2071225)))

(assert (=> bs!1693016 (not (= lambda!368336 lambda!368319))))

(declare-fun bs!1693017 () Bool)

(assert (= bs!1693017 (and b!6604551 b!6604251)))

(assert (=> bs!1693017 (not (= lambda!368336 lambda!368296))))

(declare-fun bs!1693018 () Bool)

(assert (= bs!1693018 (and b!6604551 d!2071191)))

(assert (=> bs!1693018 (not (= lambda!368336 lambda!368311))))

(declare-fun bs!1693019 () Bool)

(assert (= bs!1693019 (and b!6604551 b!6604342)))

(assert (=> bs!1693019 (not (= lambda!368336 lambda!368307))))

(declare-fun bs!1693020 () Bool)

(assert (= bs!1693020 (and b!6604551 b!6603463)))

(assert (=> bs!1693020 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368336 lambda!368233))))

(assert (=> bs!1693013 (not (= lambda!368336 lambda!368229))))

(assert (=> bs!1693014 (not (= lambda!368336 lambda!368320))))

(assert (=> bs!1693020 (not (= lambda!368336 lambda!368232))))

(declare-fun bs!1693021 () Bool)

(assert (= bs!1693021 (and b!6604551 b!6604555)))

(assert (=> bs!1693021 (not (= lambda!368336 lambda!368335))))

(declare-fun bs!1693022 () Bool)

(assert (= bs!1693022 (and b!6604551 b!6604338)))

(assert (=> bs!1693022 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (regOne!33454 lt!2414262)) (= (regTwo!33454 r!7292) (regTwo!33454 lt!2414262))) (= lambda!368336 lambda!368308))))

(assert (=> bs!1693015 (= (and (= s!2326 Nil!65588) (= (regOne!33454 r!7292) (reg!16800 (regOne!33454 r!7292))) (= (regTwo!33454 r!7292) lt!2414262)) (= lambda!368336 lambda!368317))))

(assert (=> b!6604551 true))

(assert (=> b!6604551 true))

(declare-fun d!2071245 () Bool)

(declare-fun c!1216908 () Bool)

(assert (=> d!2071245 (= c!1216908 ((_ is EmptyExpr!16471) r!7292))))

(declare-fun e!3996154 () Bool)

(assert (=> d!2071245 (= (matchRSpec!3572 r!7292 s!2326) e!3996154)))

(declare-fun e!3996156 () Bool)

(declare-fun call!577748 () Bool)

(assert (=> b!6604551 (= e!3996156 call!577748)))

(declare-fun b!6604552 () Bool)

(declare-fun e!3996155 () Bool)

(declare-fun e!3996153 () Bool)

(assert (=> b!6604552 (= e!3996155 e!3996153)))

(declare-fun res!2708091 () Bool)

(assert (=> b!6604552 (= res!2708091 (matchRSpec!3572 (regOne!33455 r!7292) s!2326))))

(assert (=> b!6604552 (=> res!2708091 e!3996153)))

(declare-fun b!6604553 () Bool)

(declare-fun res!2708089 () Bool)

(declare-fun e!3996158 () Bool)

(assert (=> b!6604553 (=> res!2708089 e!3996158)))

(declare-fun call!577749 () Bool)

(assert (=> b!6604553 (= res!2708089 call!577749)))

(assert (=> b!6604553 (= e!3996156 e!3996158)))

(declare-fun b!6604554 () Bool)

(assert (=> b!6604554 (= e!3996154 call!577749)))

(assert (=> b!6604555 (= e!3996158 call!577748)))

(declare-fun c!1216909 () Bool)

(declare-fun bm!577743 () Bool)

(assert (=> bm!577743 (= call!577748 (Exists!3541 (ite c!1216909 lambda!368335 lambda!368336)))))

(declare-fun b!6604556 () Bool)

(assert (=> b!6604556 (= e!3996153 (matchRSpec!3572 (regTwo!33455 r!7292) s!2326))))

(declare-fun b!6604557 () Bool)

(declare-fun e!3996152 () Bool)

(assert (=> b!6604557 (= e!3996154 e!3996152)))

(declare-fun res!2708090 () Bool)

(assert (=> b!6604557 (= res!2708090 (not ((_ is EmptyLang!16471) r!7292)))))

(assert (=> b!6604557 (=> (not res!2708090) (not e!3996152))))

(declare-fun b!6604558 () Bool)

(declare-fun c!1216910 () Bool)

(assert (=> b!6604558 (= c!1216910 ((_ is Union!16471) r!7292))))

(declare-fun e!3996157 () Bool)

(assert (=> b!6604558 (= e!3996157 e!3996155)))

(declare-fun b!6604559 () Bool)

(assert (=> b!6604559 (= e!3996155 e!3996156)))

(assert (=> b!6604559 (= c!1216909 ((_ is Star!16471) r!7292))))

(declare-fun b!6604560 () Bool)

(assert (=> b!6604560 (= e!3996157 (= s!2326 (Cons!65588 (c!1216570 r!7292) Nil!65588)))))

(declare-fun b!6604561 () Bool)

(declare-fun c!1216907 () Bool)

(assert (=> b!6604561 (= c!1216907 ((_ is ElementMatch!16471) r!7292))))

(assert (=> b!6604561 (= e!3996152 e!3996157)))

(declare-fun bm!577744 () Bool)

(assert (=> bm!577744 (= call!577749 (isEmpty!37865 s!2326))))

(assert (= (and d!2071245 c!1216908) b!6604554))

(assert (= (and d!2071245 (not c!1216908)) b!6604557))

(assert (= (and b!6604557 res!2708090) b!6604561))

(assert (= (and b!6604561 c!1216907) b!6604560))

(assert (= (and b!6604561 (not c!1216907)) b!6604558))

(assert (= (and b!6604558 c!1216910) b!6604552))

(assert (= (and b!6604558 (not c!1216910)) b!6604559))

(assert (= (and b!6604552 (not res!2708091)) b!6604556))

(assert (= (and b!6604559 c!1216909) b!6604553))

(assert (= (and b!6604559 (not c!1216909)) b!6604551))

(assert (= (and b!6604553 (not res!2708089)) b!6604555))

(assert (= (or b!6604555 b!6604551) bm!577743))

(assert (= (or b!6604554 b!6604553) bm!577744))

(declare-fun m!7380146 () Bool)

(assert (=> b!6604552 m!7380146))

(declare-fun m!7380148 () Bool)

(assert (=> bm!577743 m!7380148))

(declare-fun m!7380150 () Bool)

(assert (=> b!6604556 m!7380150))

(assert (=> bm!577744 m!7379820))

(assert (=> b!6603476 d!2071245))

(declare-fun b!6604562 () Bool)

(declare-fun e!3996159 () Bool)

(assert (=> b!6604562 (= e!3996159 (= (head!13393 s!2326) (c!1216570 r!7292)))))

(declare-fun b!6604563 () Bool)

(declare-fun e!3996162 () Bool)

(assert (=> b!6604563 (= e!3996162 (matchR!8654 (derivativeStep!5155 r!7292 (head!13393 s!2326)) (tail!12478 s!2326)))))

(declare-fun b!6604564 () Bool)

(assert (=> b!6604564 (= e!3996162 (nullable!6464 r!7292))))

(declare-fun b!6604565 () Bool)

(declare-fun res!2708094 () Bool)

(declare-fun e!3996161 () Bool)

(assert (=> b!6604565 (=> res!2708094 e!3996161)))

(assert (=> b!6604565 (= res!2708094 (not ((_ is ElementMatch!16471) r!7292)))))

(declare-fun e!3996165 () Bool)

(assert (=> b!6604565 (= e!3996165 e!3996161)))

(declare-fun b!6604566 () Bool)

(declare-fun e!3996160 () Bool)

(assert (=> b!6604566 (= e!3996161 e!3996160)))

(declare-fun res!2708095 () Bool)

(assert (=> b!6604566 (=> (not res!2708095) (not e!3996160))))

(declare-fun lt!2414456 () Bool)

(assert (=> b!6604566 (= res!2708095 (not lt!2414456))))

(declare-fun b!6604567 () Bool)

(declare-fun e!3996164 () Bool)

(assert (=> b!6604567 (= e!3996160 e!3996164)))

(declare-fun res!2708098 () Bool)

(assert (=> b!6604567 (=> res!2708098 e!3996164)))

(declare-fun call!577750 () Bool)

(assert (=> b!6604567 (= res!2708098 call!577750)))

(declare-fun b!6604568 () Bool)

(declare-fun e!3996163 () Bool)

(assert (=> b!6604568 (= e!3996163 e!3996165)))

(declare-fun c!1216912 () Bool)

(assert (=> b!6604568 (= c!1216912 ((_ is EmptyLang!16471) r!7292))))

(declare-fun b!6604569 () Bool)

(declare-fun res!2708092 () Bool)

(assert (=> b!6604569 (=> res!2708092 e!3996164)))

(assert (=> b!6604569 (= res!2708092 (not (isEmpty!37865 (tail!12478 s!2326))))))

(declare-fun d!2071247 () Bool)

(assert (=> d!2071247 e!3996163))

(declare-fun c!1216913 () Bool)

(assert (=> d!2071247 (= c!1216913 ((_ is EmptyExpr!16471) r!7292))))

(assert (=> d!2071247 (= lt!2414456 e!3996162)))

(declare-fun c!1216911 () Bool)

(assert (=> d!2071247 (= c!1216911 (isEmpty!37865 s!2326))))

(assert (=> d!2071247 (validRegex!8207 r!7292)))

(assert (=> d!2071247 (= (matchR!8654 r!7292 s!2326) lt!2414456)))

(declare-fun b!6604570 () Bool)

(assert (=> b!6604570 (= e!3996165 (not lt!2414456))))

(declare-fun b!6604571 () Bool)

(declare-fun res!2708099 () Bool)

(assert (=> b!6604571 (=> (not res!2708099) (not e!3996159))))

(assert (=> b!6604571 (= res!2708099 (not call!577750))))

(declare-fun b!6604572 () Bool)

(declare-fun res!2708096 () Bool)

(assert (=> b!6604572 (=> res!2708096 e!3996161)))

(assert (=> b!6604572 (= res!2708096 e!3996159)))

(declare-fun res!2708097 () Bool)

(assert (=> b!6604572 (=> (not res!2708097) (not e!3996159))))

(assert (=> b!6604572 (= res!2708097 lt!2414456)))

(declare-fun b!6604573 () Bool)

(assert (=> b!6604573 (= e!3996163 (= lt!2414456 call!577750))))

(declare-fun bm!577745 () Bool)

(assert (=> bm!577745 (= call!577750 (isEmpty!37865 s!2326))))

(declare-fun b!6604574 () Bool)

(declare-fun res!2708093 () Bool)

(assert (=> b!6604574 (=> (not res!2708093) (not e!3996159))))

(assert (=> b!6604574 (= res!2708093 (isEmpty!37865 (tail!12478 s!2326)))))

(declare-fun b!6604575 () Bool)

(assert (=> b!6604575 (= e!3996164 (not (= (head!13393 s!2326) (c!1216570 r!7292))))))

(assert (= (and d!2071247 c!1216911) b!6604564))

(assert (= (and d!2071247 (not c!1216911)) b!6604563))

(assert (= (and d!2071247 c!1216913) b!6604573))

(assert (= (and d!2071247 (not c!1216913)) b!6604568))

(assert (= (and b!6604568 c!1216912) b!6604570))

(assert (= (and b!6604568 (not c!1216912)) b!6604565))

(assert (= (and b!6604565 (not res!2708094)) b!6604572))

(assert (= (and b!6604572 res!2708097) b!6604571))

(assert (= (and b!6604571 res!2708099) b!6604574))

(assert (= (and b!6604574 res!2708093) b!6604562))

(assert (= (and b!6604572 (not res!2708096)) b!6604566))

(assert (= (and b!6604566 res!2708095) b!6604567))

(assert (= (and b!6604567 (not res!2708098)) b!6604569))

(assert (= (and b!6604569 (not res!2708092)) b!6604575))

(assert (= (or b!6604573 b!6604567 b!6604571) bm!577745))

(assert (=> b!6604562 m!7379818))

(assert (=> bm!577745 m!7379820))

(assert (=> b!6604563 m!7379818))

(assert (=> b!6604563 m!7379818))

(declare-fun m!7380152 () Bool)

(assert (=> b!6604563 m!7380152))

(assert (=> b!6604563 m!7379824))

(assert (=> b!6604563 m!7380152))

(assert (=> b!6604563 m!7379824))

(declare-fun m!7380154 () Bool)

(assert (=> b!6604563 m!7380154))

(assert (=> b!6604569 m!7379824))

(assert (=> b!6604569 m!7379824))

(assert (=> b!6604569 m!7379828))

(declare-fun m!7380156 () Bool)

(assert (=> b!6604564 m!7380156))

(assert (=> d!2071247 m!7379820))

(assert (=> d!2071247 m!7379168))

(assert (=> b!6604575 m!7379818))

(assert (=> b!6604574 m!7379824))

(assert (=> b!6604574 m!7379824))

(assert (=> b!6604574 m!7379828))

(assert (=> b!6603476 d!2071247))

(declare-fun d!2071249 () Bool)

(assert (=> d!2071249 (= (matchR!8654 r!7292 s!2326) (matchRSpec!3572 r!7292 s!2326))))

(declare-fun lt!2414457 () Unit!159219)

(assert (=> d!2071249 (= lt!2414457 (choose!49312 r!7292 s!2326))))

(assert (=> d!2071249 (validRegex!8207 r!7292)))

(assert (=> d!2071249 (= (mainMatchTheorem!3572 r!7292 s!2326) lt!2414457)))

(declare-fun bs!1693023 () Bool)

(assert (= bs!1693023 d!2071249))

(assert (=> bs!1693023 m!7379224))

(assert (=> bs!1693023 m!7379222))

(declare-fun m!7380158 () Bool)

(assert (=> bs!1693023 m!7380158))

(assert (=> bs!1693023 m!7379168))

(assert (=> b!6603476 d!2071249))

(declare-fun bs!1693024 () Bool)

(declare-fun d!2071251 () Bool)

(assert (= bs!1693024 (and d!2071251 b!6603471)))

(declare-fun lambda!368337 () Int)

(assert (=> bs!1693024 (= lambda!368337 lambda!368231)))

(declare-fun bs!1693025 () Bool)

(assert (= bs!1693025 (and d!2071251 d!2071165)))

(assert (=> bs!1693025 (= lambda!368337 lambda!368300)))

(assert (=> d!2071251 true))

(assert (=> d!2071251 (= (derivationStepZipper!2437 lt!2414273 (h!72036 s!2326)) (flatMap!1976 lt!2414273 lambda!368337))))

(declare-fun bs!1693026 () Bool)

(assert (= bs!1693026 d!2071251))

(declare-fun m!7380160 () Bool)

(assert (=> bs!1693026 m!7380160))

(assert (=> b!6603456 d!2071251))

(declare-fun d!2071253 () Bool)

(assert (=> d!2071253 (= (flatMap!1976 lt!2414273 lambda!368231) (choose!49308 lt!2414273 lambda!368231))))

(declare-fun bs!1693027 () Bool)

(assert (= bs!1693027 d!2071253))

(declare-fun m!7380162 () Bool)

(assert (=> bs!1693027 m!7380162))

(assert (=> b!6603456 d!2071253))

(assert (=> b!6603456 d!2071127))

(declare-fun d!2071255 () Bool)

(assert (=> d!2071255 (= (flatMap!1976 lt!2414273 lambda!368231) (dynLambda!26117 lambda!368231 lt!2414258))))

(declare-fun lt!2414458 () Unit!159219)

(assert (=> d!2071255 (= lt!2414458 (choose!49309 lt!2414273 lt!2414258 lambda!368231))))

(assert (=> d!2071255 (= lt!2414273 (store ((as const (Array Context!11710 Bool)) false) lt!2414258 true))))

(assert (=> d!2071255 (= (lemmaFlatMapOnSingletonSet!1502 lt!2414273 lt!2414258 lambda!368231) lt!2414458)))

(declare-fun b_lambda!249925 () Bool)

(assert (=> (not b_lambda!249925) (not d!2071255)))

(declare-fun bs!1693028 () Bool)

(assert (= bs!1693028 d!2071255))

(assert (=> bs!1693028 m!7379214))

(declare-fun m!7380164 () Bool)

(assert (=> bs!1693028 m!7380164))

(declare-fun m!7380166 () Bool)

(assert (=> bs!1693028 m!7380166))

(assert (=> bs!1693028 m!7379220))

(assert (=> b!6603456 d!2071255))

(declare-fun b!6604576 () Bool)

(declare-fun res!2708101 () Bool)

(declare-fun e!3996166 () Bool)

(assert (=> b!6604576 (=> (not res!2708101) (not e!3996166))))

(declare-fun call!577752 () Bool)

(assert (=> b!6604576 (= res!2708101 call!577752)))

(declare-fun e!3996170 () Bool)

(assert (=> b!6604576 (= e!3996170 e!3996166)))

(declare-fun b!6604577 () Bool)

(declare-fun call!577751 () Bool)

(assert (=> b!6604577 (= e!3996166 call!577751)))

(declare-fun bm!577746 () Bool)

(declare-fun call!577753 () Bool)

(assert (=> bm!577746 (= call!577752 call!577753)))

(declare-fun b!6604578 () Bool)

(declare-fun e!3996167 () Bool)

(declare-fun e!3996168 () Bool)

(assert (=> b!6604578 (= e!3996167 e!3996168)))

(declare-fun res!2708100 () Bool)

(assert (=> b!6604578 (= res!2708100 (not (nullable!6464 (reg!16800 r!7292))))))

(assert (=> b!6604578 (=> (not res!2708100) (not e!3996168))))

(declare-fun b!6604579 () Bool)

(assert (=> b!6604579 (= e!3996168 call!577753)))

(declare-fun b!6604580 () Bool)

(declare-fun e!3996172 () Bool)

(assert (=> b!6604580 (= e!3996172 e!3996167)))

(declare-fun c!1216915 () Bool)

(assert (=> b!6604580 (= c!1216915 ((_ is Star!16471) r!7292))))

(declare-fun bm!577747 () Bool)

(declare-fun c!1216914 () Bool)

(assert (=> bm!577747 (= call!577751 (validRegex!8207 (ite c!1216914 (regTwo!33455 r!7292) (regTwo!33454 r!7292))))))

(declare-fun bm!577748 () Bool)

(assert (=> bm!577748 (= call!577753 (validRegex!8207 (ite c!1216915 (reg!16800 r!7292) (ite c!1216914 (regOne!33455 r!7292) (regOne!33454 r!7292)))))))

(declare-fun b!6604581 () Bool)

(assert (=> b!6604581 (= e!3996167 e!3996170)))

(assert (=> b!6604581 (= c!1216914 ((_ is Union!16471) r!7292))))

(declare-fun b!6604582 () Bool)

(declare-fun e!3996171 () Bool)

(declare-fun e!3996169 () Bool)

(assert (=> b!6604582 (= e!3996171 e!3996169)))

(declare-fun res!2708102 () Bool)

(assert (=> b!6604582 (=> (not res!2708102) (not e!3996169))))

(assert (=> b!6604582 (= res!2708102 call!577752)))

(declare-fun d!2071257 () Bool)

(declare-fun res!2708103 () Bool)

(assert (=> d!2071257 (=> res!2708103 e!3996172)))

(assert (=> d!2071257 (= res!2708103 ((_ is ElementMatch!16471) r!7292))))

(assert (=> d!2071257 (= (validRegex!8207 r!7292) e!3996172)))

(declare-fun b!6604583 () Bool)

(assert (=> b!6604583 (= e!3996169 call!577751)))

(declare-fun b!6604584 () Bool)

(declare-fun res!2708104 () Bool)

(assert (=> b!6604584 (=> res!2708104 e!3996171)))

(assert (=> b!6604584 (= res!2708104 (not ((_ is Concat!25316) r!7292)))))

(assert (=> b!6604584 (= e!3996170 e!3996171)))

(assert (= (and d!2071257 (not res!2708103)) b!6604580))

(assert (= (and b!6604580 c!1216915) b!6604578))

(assert (= (and b!6604580 (not c!1216915)) b!6604581))

(assert (= (and b!6604578 res!2708100) b!6604579))

(assert (= (and b!6604581 c!1216914) b!6604576))

(assert (= (and b!6604581 (not c!1216914)) b!6604584))

(assert (= (and b!6604576 res!2708101) b!6604577))

(assert (= (and b!6604584 (not res!2708104)) b!6604582))

(assert (= (and b!6604582 res!2708102) b!6604583))

(assert (= (or b!6604577 b!6604583) bm!577747))

(assert (= (or b!6604576 b!6604582) bm!577746))

(assert (= (or b!6604579 bm!577746) bm!577748))

(declare-fun m!7380168 () Bool)

(assert (=> b!6604578 m!7380168))

(declare-fun m!7380170 () Bool)

(assert (=> bm!577747 m!7380170))

(declare-fun m!7380172 () Bool)

(assert (=> bm!577748 m!7380172))

(assert (=> start!645658 d!2071257))

(declare-fun d!2071259 () Bool)

(declare-fun c!1216916 () Bool)

(assert (=> d!2071259 (= c!1216916 (isEmpty!37865 s!2326))))

(declare-fun e!3996173 () Bool)

(assert (=> d!2071259 (= (matchZipper!2483 z!1189 s!2326) e!3996173)))

(declare-fun b!6604585 () Bool)

(assert (=> b!6604585 (= e!3996173 (nullableZipper!2216 z!1189))))

(declare-fun b!6604586 () Bool)

(assert (=> b!6604586 (= e!3996173 (matchZipper!2483 (derivationStepZipper!2437 z!1189 (head!13393 s!2326)) (tail!12478 s!2326)))))

(assert (= (and d!2071259 c!1216916) b!6604585))

(assert (= (and d!2071259 (not c!1216916)) b!6604586))

(assert (=> d!2071259 m!7379820))

(declare-fun m!7380174 () Bool)

(assert (=> b!6604585 m!7380174))

(assert (=> b!6604586 m!7379818))

(assert (=> b!6604586 m!7379818))

(declare-fun m!7380176 () Bool)

(assert (=> b!6604586 m!7380176))

(assert (=> b!6604586 m!7379824))

(assert (=> b!6604586 m!7380176))

(assert (=> b!6604586 m!7379824))

(declare-fun m!7380178 () Bool)

(assert (=> b!6604586 m!7380178))

(assert (=> b!6603478 d!2071259))

(declare-fun b!6604591 () Bool)

(declare-fun e!3996176 () Bool)

(declare-fun tp!1820196 () Bool)

(assert (=> b!6604591 (= e!3996176 (and tp_is_empty!42195 tp!1820196))))

(assert (=> b!6603473 (= tp!1820126 e!3996176)))

(assert (= (and b!6603473 ((_ is Cons!65588) (t!379364 s!2326))) b!6604591))

(declare-fun condSetEmpty!45102 () Bool)

(assert (=> setNonEmpty!45096 (= condSetEmpty!45102 (= setRest!45096 ((as const (Array Context!11710 Bool)) false)))))

(declare-fun setRes!45102 () Bool)

(assert (=> setNonEmpty!45096 (= tp!1820135 setRes!45102)))

(declare-fun setIsEmpty!45102 () Bool)

(assert (=> setIsEmpty!45102 setRes!45102))

(declare-fun setElem!45102 () Context!11710)

(declare-fun tp!1820201 () Bool)

(declare-fun e!3996179 () Bool)

(declare-fun setNonEmpty!45102 () Bool)

(assert (=> setNonEmpty!45102 (= setRes!45102 (and tp!1820201 (inv!84424 setElem!45102) e!3996179))))

(declare-fun setRest!45102 () (InoxSet Context!11710))

(assert (=> setNonEmpty!45102 (= setRest!45096 ((_ map or) (store ((as const (Array Context!11710 Bool)) false) setElem!45102 true) setRest!45102))))

(declare-fun b!6604596 () Bool)

(declare-fun tp!1820202 () Bool)

(assert (=> b!6604596 (= e!3996179 tp!1820202)))

(assert (= (and setNonEmpty!45096 condSetEmpty!45102) setIsEmpty!45102))

(assert (= (and setNonEmpty!45096 (not condSetEmpty!45102)) setNonEmpty!45102))

(assert (= setNonEmpty!45102 b!6604596))

(declare-fun m!7380180 () Bool)

(assert (=> setNonEmpty!45102 m!7380180))

(declare-fun b!6604610 () Bool)

(declare-fun e!3996182 () Bool)

(declare-fun tp!1820216 () Bool)

(declare-fun tp!1820213 () Bool)

(assert (=> b!6604610 (= e!3996182 (and tp!1820216 tp!1820213))))

(assert (=> b!6603453 (= tp!1820130 e!3996182)))

(declare-fun b!6604608 () Bool)

(declare-fun tp!1820215 () Bool)

(declare-fun tp!1820217 () Bool)

(assert (=> b!6604608 (= e!3996182 (and tp!1820215 tp!1820217))))

(declare-fun b!6604609 () Bool)

(declare-fun tp!1820214 () Bool)

(assert (=> b!6604609 (= e!3996182 tp!1820214)))

(declare-fun b!6604607 () Bool)

(assert (=> b!6604607 (= e!3996182 tp_is_empty!42195)))

(assert (= (and b!6603453 ((_ is ElementMatch!16471) (regOne!33455 r!7292))) b!6604607))

(assert (= (and b!6603453 ((_ is Concat!25316) (regOne!33455 r!7292))) b!6604608))

(assert (= (and b!6603453 ((_ is Star!16471) (regOne!33455 r!7292))) b!6604609))

(assert (= (and b!6603453 ((_ is Union!16471) (regOne!33455 r!7292))) b!6604610))

(declare-fun b!6604614 () Bool)

(declare-fun e!3996183 () Bool)

(declare-fun tp!1820221 () Bool)

(declare-fun tp!1820218 () Bool)

(assert (=> b!6604614 (= e!3996183 (and tp!1820221 tp!1820218))))

(assert (=> b!6603453 (= tp!1820133 e!3996183)))

(declare-fun b!6604612 () Bool)

(declare-fun tp!1820220 () Bool)

(declare-fun tp!1820222 () Bool)

(assert (=> b!6604612 (= e!3996183 (and tp!1820220 tp!1820222))))

(declare-fun b!6604613 () Bool)

(declare-fun tp!1820219 () Bool)

(assert (=> b!6604613 (= e!3996183 tp!1820219)))

(declare-fun b!6604611 () Bool)

(assert (=> b!6604611 (= e!3996183 tp_is_empty!42195)))

(assert (= (and b!6603453 ((_ is ElementMatch!16471) (regTwo!33455 r!7292))) b!6604611))

(assert (= (and b!6603453 ((_ is Concat!25316) (regTwo!33455 r!7292))) b!6604612))

(assert (= (and b!6603453 ((_ is Star!16471) (regTwo!33455 r!7292))) b!6604613))

(assert (= (and b!6603453 ((_ is Union!16471) (regTwo!33455 r!7292))) b!6604614))

(declare-fun b!6604619 () Bool)

(declare-fun e!3996186 () Bool)

(declare-fun tp!1820227 () Bool)

(declare-fun tp!1820228 () Bool)

(assert (=> b!6604619 (= e!3996186 (and tp!1820227 tp!1820228))))

(assert (=> b!6603494 (= tp!1820132 e!3996186)))

(assert (= (and b!6603494 ((_ is Cons!65589) (exprs!6355 setElem!45096))) b!6604619))

(declare-fun b!6604623 () Bool)

(declare-fun e!3996187 () Bool)

(declare-fun tp!1820232 () Bool)

(declare-fun tp!1820229 () Bool)

(assert (=> b!6604623 (= e!3996187 (and tp!1820232 tp!1820229))))

(assert (=> b!6603489 (= tp!1820131 e!3996187)))

(declare-fun b!6604621 () Bool)

(declare-fun tp!1820231 () Bool)

(declare-fun tp!1820233 () Bool)

(assert (=> b!6604621 (= e!3996187 (and tp!1820231 tp!1820233))))

(declare-fun b!6604622 () Bool)

(declare-fun tp!1820230 () Bool)

(assert (=> b!6604622 (= e!3996187 tp!1820230)))

(declare-fun b!6604620 () Bool)

(assert (=> b!6604620 (= e!3996187 tp_is_empty!42195)))

(assert (= (and b!6603489 ((_ is ElementMatch!16471) (regOne!33454 r!7292))) b!6604620))

(assert (= (and b!6603489 ((_ is Concat!25316) (regOne!33454 r!7292))) b!6604621))

(assert (= (and b!6603489 ((_ is Star!16471) (regOne!33454 r!7292))) b!6604622))

(assert (= (and b!6603489 ((_ is Union!16471) (regOne!33454 r!7292))) b!6604623))

(declare-fun b!6604627 () Bool)

(declare-fun e!3996188 () Bool)

(declare-fun tp!1820237 () Bool)

(declare-fun tp!1820234 () Bool)

(assert (=> b!6604627 (= e!3996188 (and tp!1820237 tp!1820234))))

(assert (=> b!6603489 (= tp!1820128 e!3996188)))

(declare-fun b!6604625 () Bool)

(declare-fun tp!1820236 () Bool)

(declare-fun tp!1820238 () Bool)

(assert (=> b!6604625 (= e!3996188 (and tp!1820236 tp!1820238))))

(declare-fun b!6604626 () Bool)

(declare-fun tp!1820235 () Bool)

(assert (=> b!6604626 (= e!3996188 tp!1820235)))

(declare-fun b!6604624 () Bool)

(assert (=> b!6604624 (= e!3996188 tp_is_empty!42195)))

(assert (= (and b!6603489 ((_ is ElementMatch!16471) (regTwo!33454 r!7292))) b!6604624))

(assert (= (and b!6603489 ((_ is Concat!25316) (regTwo!33454 r!7292))) b!6604625))

(assert (= (and b!6603489 ((_ is Star!16471) (regTwo!33454 r!7292))) b!6604626))

(assert (= (and b!6603489 ((_ is Union!16471) (regTwo!33454 r!7292))) b!6604627))

(declare-fun b!6604631 () Bool)

(declare-fun e!3996189 () Bool)

(declare-fun tp!1820242 () Bool)

(declare-fun tp!1820239 () Bool)

(assert (=> b!6604631 (= e!3996189 (and tp!1820242 tp!1820239))))

(assert (=> b!6603469 (= tp!1820127 e!3996189)))

(declare-fun b!6604629 () Bool)

(declare-fun tp!1820241 () Bool)

(declare-fun tp!1820243 () Bool)

(assert (=> b!6604629 (= e!3996189 (and tp!1820241 tp!1820243))))

(declare-fun b!6604630 () Bool)

(declare-fun tp!1820240 () Bool)

(assert (=> b!6604630 (= e!3996189 tp!1820240)))

(declare-fun b!6604628 () Bool)

(assert (=> b!6604628 (= e!3996189 tp_is_empty!42195)))

(assert (= (and b!6603469 ((_ is ElementMatch!16471) (reg!16800 r!7292))) b!6604628))

(assert (= (and b!6603469 ((_ is Concat!25316) (reg!16800 r!7292))) b!6604629))

(assert (= (and b!6603469 ((_ is Star!16471) (reg!16800 r!7292))) b!6604630))

(assert (= (and b!6603469 ((_ is Union!16471) (reg!16800 r!7292))) b!6604631))

(declare-fun b!6604639 () Bool)

(declare-fun e!3996195 () Bool)

(declare-fun tp!1820248 () Bool)

(assert (=> b!6604639 (= e!3996195 tp!1820248)))

(declare-fun b!6604638 () Bool)

(declare-fun tp!1820249 () Bool)

(declare-fun e!3996194 () Bool)

(assert (=> b!6604638 (= e!3996194 (and (inv!84424 (h!72038 (t!379366 zl!343))) e!3996195 tp!1820249))))

(assert (=> b!6603487 (= tp!1820134 e!3996194)))

(assert (= b!6604638 b!6604639))

(assert (= (and b!6603487 ((_ is Cons!65590) (t!379366 zl!343))) b!6604638))

(declare-fun m!7380182 () Bool)

(assert (=> b!6604638 m!7380182))

(declare-fun b!6604640 () Bool)

(declare-fun e!3996196 () Bool)

(declare-fun tp!1820250 () Bool)

(declare-fun tp!1820251 () Bool)

(assert (=> b!6604640 (= e!3996196 (and tp!1820250 tp!1820251))))

(assert (=> b!6603477 (= tp!1820129 e!3996196)))

(assert (= (and b!6603477 ((_ is Cons!65589) (exprs!6355 (h!72038 zl!343)))) b!6604640))

(declare-fun b_lambda!249927 () Bool)

(assert (= b_lambda!249923 (or b!6603471 b_lambda!249927)))

(declare-fun bs!1693029 () Bool)

(declare-fun d!2071261 () Bool)

(assert (= bs!1693029 (and d!2071261 b!6603471)))

(assert (=> bs!1693029 (= (dynLambda!26117 lambda!368231 lt!2414288) (derivationStepZipperUp!1645 lt!2414288 (h!72036 s!2326)))))

(assert (=> bs!1693029 m!7379274))

(assert (=> d!2071163 d!2071261))

(declare-fun b_lambda!249929 () Bool)

(assert (= b_lambda!249921 (or b!6603471 b_lambda!249929)))

(declare-fun bs!1693030 () Bool)

(declare-fun d!2071263 () Bool)

(assert (= bs!1693030 (and d!2071263 b!6603471)))

(assert (=> bs!1693030 (= (dynLambda!26117 lambda!368231 lt!2414251) (derivationStepZipperUp!1645 lt!2414251 (h!72036 s!2326)))))

(assert (=> bs!1693030 m!7379260))

(assert (=> d!2071151 d!2071263))

(declare-fun b_lambda!249931 () Bool)

(assert (= b_lambda!249925 (or b!6603471 b_lambda!249931)))

(declare-fun bs!1693031 () Bool)

(declare-fun d!2071265 () Bool)

(assert (= bs!1693031 (and d!2071265 b!6603471)))

(assert (=> bs!1693031 (= (dynLambda!26117 lambda!368231 lt!2414258) (derivationStepZipperUp!1645 lt!2414258 (h!72036 s!2326)))))

(assert (=> bs!1693031 m!7379156))

(assert (=> d!2071255 d!2071265))

(declare-fun b_lambda!249933 () Bool)

(assert (= b_lambda!249919 (or b!6603471 b_lambda!249933)))

(declare-fun bs!1693032 () Bool)

(declare-fun d!2071267 () Bool)

(assert (= bs!1693032 (and d!2071267 b!6603471)))

(assert (=> bs!1693032 (= (dynLambda!26117 lambda!368231 lt!2414256) (derivationStepZipperUp!1645 lt!2414256 (h!72036 s!2326)))))

(assert (=> bs!1693032 m!7379266))

(assert (=> d!2071147 d!2071267))

(declare-fun b_lambda!249935 () Bool)

(assert (= b_lambda!249917 (or b!6603471 b_lambda!249935)))

(declare-fun bs!1693033 () Bool)

(declare-fun d!2071269 () Bool)

(assert (= bs!1693033 (and d!2071269 b!6603471)))

(assert (=> bs!1693033 (= (dynLambda!26117 lambda!368231 (h!72038 zl!343)) (derivationStepZipperUp!1645 (h!72038 zl!343) (h!72036 s!2326)))))

(assert (=> bs!1693033 m!7379152))

(assert (=> d!2071137 d!2071269))

(check-sat (not b_lambda!249933) (not b!6604170) (not d!2071227) (not b!6604299) (not bm!577734) (not d!2071053) (not b!6604339) (not d!2071195) (not b!6604404) (not d!2071157) (not b!6604452) (not b!6604160) (not bm!577682) (not bs!1693029) (not b!6604424) (not b!6604574) (not b!6604295) (not b!6604431) (not d!2071125) (not b!6604625) (not bm!577702) (not b!6604373) (not b!6604545) (not bm!577708) (not b!6604532) (not b_lambda!249927) (not bm!577677) (not b!6604446) (not d!2071237) (not d!2071193) (not b!6604108) (not b!6604112) (not d!2071235) (not b!6604536) (not bs!1693031) (not d!2071199) (not b!6604443) (not d!2071197) (not b!6604525) (not d!2071139) (not b!6604627) (not b!6604018) (not d!2071167) (not b!6604418) (not bm!577705) tp_is_empty!42195 (not b!6604622) (not bm!577679) (not bm!577745) (not b!6604631) (not b!6604017) (not d!2071181) (not d!2071255) (not b!6604556) (not b!6604585) (not d!2071229) (not b!6604586) (not bm!577744) (not b!6604612) (not b!6604453) (not b!6604548) (not b!6604111) (not b!6604562) (not b!6604214) (not b!6604638) (not b!6604131) (not b!6604552) (not b!6604639) (not d!2071151) (not d!2071123) (not b!6604533) (not b!6603980) (not b!6604367) (not d!2071165) (not d!2071169) (not b!6604213) (not b!6604104) (not b!6604296) (not d!2071177) (not b!6604377) (not b!6604259) (not b!6604550) (not b!6604303) (not b!6604417) (not b!6604376) (not b!6604430) (not b!6604343) (not b!6604629) (not bm!577694) (not b!6604429) (not d!2071135) (not b!6604203) (not bm!577743) (not b!6604528) (not b!6604619) (not d!2071093) (not b!6604630) (not b_lambda!249929) (not b!6604563) (not b!6604208) (not b!6604300) (not d!2071223) (not b!6604265) (not b!6604252) (not bm!577704) (not b!6604433) (not b!6604016) (not b!6604301) (not b!6604608) (not bm!577662) (not bm!577739) (not b!6604614) (not b!6604447) (not b!6604640) (not b!6604438) (not bm!577714) (not d!2071213) (not d!2071221) (not b!6604114) (not bm!577736) (not bm!577710) (not d!2071217) (not b!6604383) (not d!2071215) (not b!6604448) (not b!6604110) (not b!6604613) (not d!2071239) (not b!6604524) (not b!6604260) (not b!6604127) (not d!2071211) (not d!2071143) (not b!6604409) (not b!6604297) (not d!2071249) (not d!2071147) (not b!6604531) (not d!2071095) (not d!2071063) (not b!6604405) (not b!6604569) (not bm!577663) (not bm!577692) (not b!6604270) (not b!6604451) (not d!2071149) (not b!6604372) (not b!6604378) (not b!6604126) (not d!2071259) (not bs!1693030) (not bm!577741) (not d!2071225) (not b!6604449) (not d!2071191) (not d!2071185) (not b!6604113) (not bm!577740) (not bm!577732) (not b!6604264) (not d!2071159) (not bm!577690) (not b!6604103) (not d!2071207) (not d!2071137) (not bm!577693) (not b!6604388) (not b!6604575) (not bs!1693032) (not d!2071201) (not b!6604419) (not b!6604201) (not b!6604578) (not d!2071183) (not b!6604444) (not b!6604591) (not b!6604609) (not b_lambda!249931) (not d!2071153) (not b!6604368) (not b!6604402) (not b!6604015) (not bm!577729) (not d!2071085) (not b!6604107) (not b_lambda!249935) (not b!6604610) (not d!2071219) (not bm!577703) (not bm!577678) (not bm!577748) (not b!6604623) (not b!6604369) (not b!6604132) (not b!6604248) (not bs!1693033) (not b!6604389) (not setNonEmpty!45102) (not d!2071189) (not bm!577747) (not d!2071209) (not d!2071247) (not b!6604596) (not d!2071251) (not d!2071187) (not b!6604331) (not bm!577706) (not b!6604169) (not b!6604626) (not b!6604564) (not bm!577691) (not b!6604202) (not bm!577738) (not d!2071253) (not b!6604371) (not b!6604432) (not b!6604445) (not b!6604621) (not b!6604269) (not b!6604529) (not b!6604309) (not b!6604403) (not bm!577713) (not d!2071163) (not bm!577685) (not b!6604543) (not bm!577731) (not bm!577733) (not bm!577709) (not d!2071205))
(check-sat)
