; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!658026 () Bool)

(assert start!658026)

(declare-fun b!6798444 () Bool)

(assert (=> b!6798444 true))

(assert (=> b!6798444 true))

(declare-fun lambda!383321 () Int)

(declare-fun lambda!383320 () Int)

(assert (=> b!6798444 (not (= lambda!383321 lambda!383320))))

(assert (=> b!6798444 true))

(assert (=> b!6798444 true))

(declare-fun lambda!383322 () Int)

(assert (=> b!6798444 (not (= lambda!383322 lambda!383320))))

(assert (=> b!6798444 (not (= lambda!383322 lambda!383321))))

(assert (=> b!6798444 true))

(assert (=> b!6798444 true))

(declare-fun b!6798467 () Bool)

(assert (=> b!6798467 true))

(declare-fun b!6798465 () Bool)

(assert (=> b!6798465 true))

(declare-fun b!6798442 () Bool)

(declare-fun e!4102987 () Bool)

(declare-fun tp!1861558 () Bool)

(declare-fun tp!1861563 () Bool)

(assert (=> b!6798442 (= e!4102987 (and tp!1861558 tp!1861563))))

(declare-fun b!6798443 () Bool)

(declare-fun res!2778253 () Bool)

(declare-fun e!4102985 () Bool)

(assert (=> b!6798443 (=> res!2778253 e!4102985)))

(declare-datatypes ((C!33506 0))(
  ( (C!33507 (val!26455 Int)) )
))
(declare-datatypes ((Regex!16618 0))(
  ( (ElementMatch!16618 (c!1263993 C!33506)) (Concat!25463 (regOne!33748 Regex!16618) (regTwo!33748 Regex!16618)) (EmptyExpr!16618) (Star!16618 (reg!16947 Regex!16618)) (EmptyLang!16618) (Union!16618 (regOne!33749 Regex!16618) (regTwo!33749 Regex!16618)) )
))
(declare-datatypes ((List!66153 0))(
  ( (Nil!66029) (Cons!66029 (h!72477 Regex!16618) (t!379882 List!66153)) )
))
(declare-datatypes ((Context!12004 0))(
  ( (Context!12005 (exprs!6502 List!66153)) )
))
(declare-fun lt!2447560 () (Set Context!12004))

(declare-datatypes ((List!66154 0))(
  ( (Nil!66030) (Cons!66030 (h!72478 C!33506) (t!379883 List!66154)) )
))
(declare-fun s!2326 () List!66154)

(declare-fun matchZipper!2604 ((Set Context!12004) List!66154) Bool)

(declare-fun derivationStepZipper!2562 ((Set Context!12004) C!33506) (Set Context!12004))

(assert (=> b!6798443 (= res!2778253 (not (= (matchZipper!2604 lt!2447560 s!2326) (matchZipper!2604 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (t!379883 s!2326)))))))

(declare-fun res!2778265 () Bool)

(declare-fun e!4102988 () Bool)

(assert (=> start!658026 (=> (not res!2778265) (not e!4102988))))

(declare-fun r!7292 () Regex!16618)

(declare-fun validRegex!8354 (Regex!16618) Bool)

(assert (=> start!658026 (= res!2778265 (validRegex!8354 r!7292))))

(assert (=> start!658026 e!4102988))

(assert (=> start!658026 e!4102987))

(declare-fun condSetEmpty!46586 () Bool)

(declare-fun z!1189 () (Set Context!12004))

(assert (=> start!658026 (= condSetEmpty!46586 (= z!1189 (as set.empty (Set Context!12004))))))

(declare-fun setRes!46586 () Bool)

(assert (=> start!658026 setRes!46586))

(declare-fun e!4102996 () Bool)

(assert (=> start!658026 e!4102996))

(declare-fun e!4102998 () Bool)

(assert (=> start!658026 e!4102998))

(declare-fun e!4102993 () Bool)

(declare-fun e!4102995 () Bool)

(assert (=> b!6798444 (= e!4102993 e!4102995)))

(declare-fun res!2778257 () Bool)

(assert (=> b!6798444 (=> res!2778257 e!4102995)))

(declare-fun lt!2447566 () Bool)

(declare-fun e!4102992 () Bool)

(assert (=> b!6798444 (= res!2778257 (not (= lt!2447566 e!4102992)))))

(declare-fun res!2778255 () Bool)

(assert (=> b!6798444 (=> res!2778255 e!4102992)))

(declare-fun isEmpty!38407 (List!66154) Bool)

(assert (=> b!6798444 (= res!2778255 (isEmpty!38407 s!2326))))

(declare-fun Exists!3686 (Int) Bool)

(assert (=> b!6798444 (= (Exists!3686 lambda!383320) (Exists!3686 lambda!383322))))

(declare-datatypes ((Unit!159927 0))(
  ( (Unit!159928) )
))
(declare-fun lt!2447553 () Unit!159927)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2213 (Regex!16618 Regex!16618 List!66154) Unit!159927)

(assert (=> b!6798444 (= lt!2447553 (lemmaExistCutMatchRandMatchRSpecEquivalent!2213 (reg!16947 r!7292) r!7292 s!2326))))

(assert (=> b!6798444 (= (Exists!3686 lambda!383320) (Exists!3686 lambda!383321))))

(declare-fun lt!2447554 () Unit!159927)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!777 (Regex!16618 List!66154) Unit!159927)

(assert (=> b!6798444 (= lt!2447554 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!777 (reg!16947 r!7292) s!2326))))

(declare-fun lt!2447551 () Bool)

(assert (=> b!6798444 (= lt!2447551 (Exists!3686 lambda!383320))))

(declare-datatypes ((tuple2!67186 0))(
  ( (tuple2!67187 (_1!36896 List!66154) (_2!36896 List!66154)) )
))
(declare-datatypes ((Option!16505 0))(
  ( (None!16504) (Some!16504 (v!52710 tuple2!67186)) )
))
(declare-fun isDefined!13208 (Option!16505) Bool)

(declare-fun findConcatSeparation!2919 (Regex!16618 Regex!16618 List!66154 List!66154 List!66154) Option!16505)

(assert (=> b!6798444 (= lt!2447551 (isDefined!13208 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326)))))

(declare-fun lt!2447546 () Unit!159927)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2683 (Regex!16618 Regex!16618 List!66154) Unit!159927)

(assert (=> b!6798444 (= lt!2447546 (lemmaFindConcatSeparationEquivalentToExists!2683 (reg!16947 r!7292) r!7292 s!2326))))

(declare-fun b!6798445 () Bool)

(declare-fun res!2778259 () Bool)

(declare-fun e!4103000 () Bool)

(assert (=> b!6798445 (=> res!2778259 e!4103000)))

(declare-fun lt!2447565 () Context!12004)

(declare-datatypes ((List!66155 0))(
  ( (Nil!66031) (Cons!66031 (h!72479 Context!12004) (t!379884 List!66155)) )
))
(declare-fun unfocusZipper!2360 (List!66155) Regex!16618)

(assert (=> b!6798445 (= res!2778259 (not (= (unfocusZipper!2360 (Cons!66031 lt!2447565 Nil!66031)) r!7292)))))

(declare-fun b!6798446 () Bool)

(declare-fun res!2778248 () Bool)

(assert (=> b!6798446 (=> (not res!2778248) (not e!4102988))))

(declare-fun zl!343 () List!66155)

(declare-fun toList!10402 ((Set Context!12004)) List!66155)

(assert (=> b!6798446 (= res!2778248 (= (toList!10402 z!1189) zl!343))))

(declare-fun b!6798447 () Bool)

(declare-fun res!2778256 () Bool)

(assert (=> b!6798447 (=> res!2778256 e!4102993)))

(declare-fun generalisedConcat!2215 (List!66153) Regex!16618)

(assert (=> b!6798447 (= res!2778256 (not (= r!7292 (generalisedConcat!2215 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun b!6798448 () Bool)

(declare-fun res!2778245 () Bool)

(declare-fun e!4102991 () Bool)

(assert (=> b!6798448 (=> res!2778245 e!4102991)))

(assert (=> b!6798448 (= res!2778245 (not (matchZipper!2604 z!1189 s!2326)))))

(declare-fun b!6798449 () Bool)

(declare-fun e!4103001 () Bool)

(assert (=> b!6798449 (= e!4102988 e!4103001)))

(declare-fun res!2778250 () Bool)

(assert (=> b!6798449 (=> (not res!2778250) (not e!4103001))))

(declare-fun lt!2447548 () Regex!16618)

(assert (=> b!6798449 (= res!2778250 (= r!7292 lt!2447548))))

(assert (=> b!6798449 (= lt!2447548 (unfocusZipper!2360 zl!343))))

(declare-fun b!6798450 () Bool)

(declare-fun res!2778266 () Bool)

(assert (=> b!6798450 (=> res!2778266 e!4102993)))

(declare-fun isEmpty!38408 (List!66155) Bool)

(assert (=> b!6798450 (= res!2778266 (not (isEmpty!38408 (t!379884 zl!343))))))

(declare-fun setIsEmpty!46586 () Bool)

(assert (=> setIsEmpty!46586 setRes!46586))

(declare-fun setElem!46586 () Context!12004)

(declare-fun e!4102999 () Bool)

(declare-fun setNonEmpty!46586 () Bool)

(declare-fun tp!1861556 () Bool)

(declare-fun inv!84793 (Context!12004) Bool)

(assert (=> setNonEmpty!46586 (= setRes!46586 (and tp!1861556 (inv!84793 setElem!46586) e!4102999))))

(declare-fun setRest!46586 () (Set Context!12004))

(assert (=> setNonEmpty!46586 (= z!1189 (set.union (set.insert setElem!46586 (as set.empty (Set Context!12004))) setRest!46586))))

(declare-fun b!6798451 () Bool)

(declare-fun e!4102994 () Bool)

(assert (=> b!6798451 (= e!4102985 e!4102994)))

(declare-fun res!2778268 () Bool)

(assert (=> b!6798451 (=> res!2778268 e!4102994)))

(declare-fun lt!2447568 () Context!12004)

(declare-fun lt!2447563 () Regex!16618)

(assert (=> b!6798451 (= res!2778268 (not (= (unfocusZipper!2360 (Cons!66031 lt!2447568 Nil!66031)) lt!2447563)))))

(assert (=> b!6798451 (= lt!2447563 (Concat!25463 (reg!16947 r!7292) r!7292))))

(declare-fun b!6798452 () Bool)

(declare-fun res!2778246 () Bool)

(assert (=> b!6798452 (=> res!2778246 e!4102993)))

(assert (=> b!6798452 (= res!2778246 (not (is-Cons!66029 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6798453 () Bool)

(declare-fun res!2778261 () Bool)

(assert (=> b!6798453 (=> res!2778261 e!4102993)))

(assert (=> b!6798453 (= res!2778261 (or (is-EmptyExpr!16618 r!7292) (is-EmptyLang!16618 r!7292) (is-ElementMatch!16618 r!7292) (is-Union!16618 r!7292) (is-Concat!25463 r!7292)))))

(declare-fun b!6798454 () Bool)

(assert (=> b!6798454 (= e!4103001 (not e!4102993))))

(declare-fun res!2778262 () Bool)

(assert (=> b!6798454 (=> res!2778262 e!4102993)))

(assert (=> b!6798454 (= res!2778262 (not (is-Cons!66031 zl!343)))))

(declare-fun matchRSpec!3719 (Regex!16618 List!66154) Bool)

(assert (=> b!6798454 (= lt!2447566 (matchRSpec!3719 r!7292 s!2326))))

(declare-fun matchR!8801 (Regex!16618 List!66154) Bool)

(assert (=> b!6798454 (= lt!2447566 (matchR!8801 r!7292 s!2326))))

(declare-fun lt!2447570 () Unit!159927)

(declare-fun mainMatchTheorem!3719 (Regex!16618 List!66154) Unit!159927)

(assert (=> b!6798454 (= lt!2447570 (mainMatchTheorem!3719 r!7292 s!2326))))

(declare-fun b!6798455 () Bool)

(assert (=> b!6798455 (= e!4103000 e!4102991)))

(declare-fun res!2778252 () Bool)

(assert (=> b!6798455 (=> res!2778252 e!4102991)))

(declare-fun lt!2447556 () Bool)

(assert (=> b!6798455 (= res!2778252 lt!2447556)))

(assert (=> b!6798455 (= lt!2447556 (matchRSpec!3719 lt!2447563 s!2326))))

(assert (=> b!6798455 (= lt!2447556 (matchR!8801 lt!2447563 s!2326))))

(declare-fun lt!2447569 () Unit!159927)

(assert (=> b!6798455 (= lt!2447569 (mainMatchTheorem!3719 lt!2447563 s!2326))))

(declare-fun b!6798456 () Bool)

(declare-fun e!4102997 () Bool)

(assert (=> b!6798456 (= e!4102997 e!4102985)))

(declare-fun res!2778264 () Bool)

(assert (=> b!6798456 (=> res!2778264 e!4102985)))

(declare-fun lt!2447564 () (Set Context!12004))

(declare-fun derivationStepZipperDown!1846 (Regex!16618 Context!12004 C!33506) (Set Context!12004))

(assert (=> b!6798456 (= res!2778264 (not (= lt!2447564 (derivationStepZipperDown!1846 (reg!16947 r!7292) lt!2447565 (h!72478 s!2326)))))))

(declare-fun lt!2447567 () List!66153)

(assert (=> b!6798456 (= lt!2447565 (Context!12005 lt!2447567))))

(declare-fun lambda!383323 () Int)

(declare-fun flatMap!2099 ((Set Context!12004) Int) (Set Context!12004))

(declare-fun derivationStepZipperUp!1772 (Context!12004 C!33506) (Set Context!12004))

(assert (=> b!6798456 (= (flatMap!2099 lt!2447560 lambda!383323) (derivationStepZipperUp!1772 lt!2447568 (h!72478 s!2326)))))

(declare-fun lt!2447555 () Unit!159927)

(declare-fun lemmaFlatMapOnSingletonSet!1625 ((Set Context!12004) Context!12004 Int) Unit!159927)

(assert (=> b!6798456 (= lt!2447555 (lemmaFlatMapOnSingletonSet!1625 lt!2447560 lt!2447568 lambda!383323))))

(declare-fun lt!2447550 () (Set Context!12004))

(assert (=> b!6798456 (= lt!2447550 (derivationStepZipperUp!1772 lt!2447568 (h!72478 s!2326)))))

(assert (=> b!6798456 (= lt!2447560 (set.insert lt!2447568 (as set.empty (Set Context!12004))))))

(assert (=> b!6798456 (= lt!2447568 (Context!12005 (Cons!66029 (reg!16947 r!7292) lt!2447567)))))

(assert (=> b!6798456 (= lt!2447567 (Cons!66029 r!7292 Nil!66029))))

(declare-fun b!6798457 () Bool)

(declare-fun tp!1861564 () Bool)

(assert (=> b!6798457 (= e!4102999 tp!1861564)))

(declare-fun b!6798458 () Bool)

(declare-fun res!2778247 () Bool)

(assert (=> b!6798458 (=> res!2778247 e!4102995)))

(assert (=> b!6798458 (= res!2778247 (is-Nil!66030 s!2326))))

(declare-fun b!6798459 () Bool)

(declare-fun tp_is_empty!42489 () Bool)

(assert (=> b!6798459 (= e!4102987 tp_is_empty!42489)))

(declare-fun b!6798460 () Bool)

(declare-fun tp!1861565 () Bool)

(assert (=> b!6798460 (= e!4102998 (and tp_is_empty!42489 tp!1861565))))

(declare-fun b!6798461 () Bool)

(assert (=> b!6798461 (= e!4102992 lt!2447551)))

(declare-fun b!6798462 () Bool)

(declare-fun tp!1861559 () Bool)

(declare-fun tp!1861557 () Bool)

(assert (=> b!6798462 (= e!4102987 (and tp!1861559 tp!1861557))))

(declare-fun tp!1861561 () Bool)

(declare-fun e!4102990 () Bool)

(declare-fun b!6798463 () Bool)

(assert (=> b!6798463 (= e!4102996 (and (inv!84793 (h!72479 zl!343)) e!4102990 tp!1861561))))

(declare-fun b!6798464 () Bool)

(declare-fun res!2778251 () Bool)

(assert (=> b!6798464 (=> res!2778251 e!4102993)))

(declare-fun generalisedUnion!2462 (List!66153) Regex!16618)

(declare-fun unfocusZipperList!2039 (List!66155) List!66153)

(assert (=> b!6798464 (= res!2778251 (not (= r!7292 (generalisedUnion!2462 (unfocusZipperList!2039 zl!343)))))))

(declare-fun e!4102989 () Bool)

(assert (=> b!6798465 (= e!4102991 e!4102989)))

(declare-fun res!2778249 () Bool)

(assert (=> b!6798465 (=> res!2778249 e!4102989)))

(declare-fun lt!2447549 () (Set Context!12004))

(assert (=> b!6798465 (= res!2778249 (not (= lt!2447549 lt!2447560)))))

(declare-fun lt!2447561 () (Set Context!12004))

(declare-fun appendTo!223 ((Set Context!12004) Context!12004) (Set Context!12004))

(assert (=> b!6798465 (= lt!2447549 (appendTo!223 lt!2447561 lt!2447565))))

(declare-fun lambda!383324 () Int)

(declare-fun map!15088 ((Set Context!12004) Int) (Set Context!12004))

(declare-fun ++!14782 (List!66153 List!66153) List!66153)

(assert (=> b!6798465 (= (map!15088 lt!2447561 lambda!383324) (set.insert (Context!12005 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567)) (as set.empty (Set Context!12004))))))

(declare-fun lambda!383325 () Int)

(declare-fun lt!2447543 () Unit!159927)

(declare-fun lemmaConcatPreservesForall!447 (List!66153 List!66153 Int) Unit!159927)

(assert (=> b!6798465 (= lt!2447543 (lemmaConcatPreservesForall!447 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567 lambda!383325))))

(declare-fun lt!2447547 () Context!12004)

(declare-fun lt!2447562 () Unit!159927)

(declare-fun lemmaMapOnSingletonSet!253 ((Set Context!12004) Context!12004 Int) Unit!159927)

(assert (=> b!6798465 (= lt!2447562 (lemmaMapOnSingletonSet!253 lt!2447561 lt!2447547 lambda!383324))))

(declare-fun b!6798466 () Bool)

(assert (=> b!6798466 (= e!4102994 e!4103000)))

(declare-fun res!2778260 () Bool)

(assert (=> b!6798466 (=> res!2778260 e!4103000)))

(declare-fun lt!2447558 () (Set Context!12004))

(assert (=> b!6798466 (= res!2778260 (not (= lt!2447564 (derivationStepZipper!2562 lt!2447558 (h!72478 s!2326)))))))

(assert (=> b!6798466 (= (flatMap!2099 lt!2447558 lambda!383323) (derivationStepZipperUp!1772 lt!2447565 (h!72478 s!2326)))))

(declare-fun lt!2447557 () Unit!159927)

(assert (=> b!6798466 (= lt!2447557 (lemmaFlatMapOnSingletonSet!1625 lt!2447558 lt!2447565 lambda!383323))))

(assert (=> b!6798466 (= (flatMap!2099 lt!2447561 lambda!383323) (derivationStepZipperUp!1772 lt!2447547 (h!72478 s!2326)))))

(declare-fun lt!2447572 () Unit!159927)

(assert (=> b!6798466 (= lt!2447572 (lemmaFlatMapOnSingletonSet!1625 lt!2447561 lt!2447547 lambda!383323))))

(declare-fun lt!2447559 () (Set Context!12004))

(assert (=> b!6798466 (= lt!2447559 (derivationStepZipperUp!1772 lt!2447565 (h!72478 s!2326)))))

(declare-fun lt!2447545 () (Set Context!12004))

(assert (=> b!6798466 (= lt!2447545 (derivationStepZipperUp!1772 lt!2447547 (h!72478 s!2326)))))

(assert (=> b!6798466 (= lt!2447558 (set.insert lt!2447565 (as set.empty (Set Context!12004))))))

(assert (=> b!6798466 (= lt!2447561 (set.insert lt!2447547 (as set.empty (Set Context!12004))))))

(assert (=> b!6798466 (= lt!2447547 (Context!12005 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))

(declare-fun e!4102986 () Bool)

(assert (=> b!6798467 (= e!4102986 e!4102997)))

(declare-fun res!2778263 () Bool)

(assert (=> b!6798467 (=> res!2778263 e!4102997)))

(declare-fun lt!2447571 () (Set Context!12004))

(assert (=> b!6798467 (= res!2778263 (not (= lt!2447564 lt!2447571)))))

(assert (=> b!6798467 (= (flatMap!2099 z!1189 lambda!383323) (derivationStepZipperUp!1772 (h!72479 zl!343) (h!72478 s!2326)))))

(declare-fun lt!2447544 () Unit!159927)

(assert (=> b!6798467 (= lt!2447544 (lemmaFlatMapOnSingletonSet!1625 z!1189 (h!72479 zl!343) lambda!383323))))

(declare-fun b!6798468 () Bool)

(declare-fun tp!1861562 () Bool)

(assert (=> b!6798468 (= e!4102990 tp!1861562)))

(declare-fun b!6798469 () Bool)

(declare-fun res!2778267 () Bool)

(assert (=> b!6798469 (=> res!2778267 e!4103000)))

(assert (=> b!6798469 (= res!2778267 (not (= (unfocusZipper!2360 (Cons!66031 lt!2447547 Nil!66031)) (reg!16947 r!7292))))))

(declare-fun b!6798470 () Bool)

(declare-fun tp!1861560 () Bool)

(assert (=> b!6798470 (= e!4102987 tp!1861560)))

(declare-fun b!6798471 () Bool)

(assert (=> b!6798471 (= e!4102989 (matchZipper!2604 lt!2447549 s!2326))))

(declare-fun b!6798472 () Bool)

(declare-fun res!2778258 () Bool)

(assert (=> b!6798472 (=> res!2778258 e!4102985)))

(assert (=> b!6798472 (= res!2778258 (or (not (= lt!2447548 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6798473 () Bool)

(assert (=> b!6798473 (= e!4102995 e!4102986)))

(declare-fun res!2778254 () Bool)

(assert (=> b!6798473 (=> res!2778254 e!4102986)))

(declare-fun lt!2447552 () (Set Context!12004))

(assert (=> b!6798473 (= res!2778254 (not (= lt!2447552 lt!2447571)))))

(assert (=> b!6798473 (= lt!2447571 (derivationStepZipperDown!1846 r!7292 (Context!12005 Nil!66029) (h!72478 s!2326)))))

(assert (=> b!6798473 (= lt!2447552 (derivationStepZipperUp!1772 (Context!12005 (Cons!66029 r!7292 Nil!66029)) (h!72478 s!2326)))))

(assert (=> b!6798473 (= lt!2447564 (derivationStepZipper!2562 z!1189 (h!72478 s!2326)))))

(assert (= (and start!658026 res!2778265) b!6798446))

(assert (= (and b!6798446 res!2778248) b!6798449))

(assert (= (and b!6798449 res!2778250) b!6798454))

(assert (= (and b!6798454 (not res!2778262)) b!6798450))

(assert (= (and b!6798450 (not res!2778266)) b!6798447))

(assert (= (and b!6798447 (not res!2778256)) b!6798452))

(assert (= (and b!6798452 (not res!2778246)) b!6798464))

(assert (= (and b!6798464 (not res!2778251)) b!6798453))

(assert (= (and b!6798453 (not res!2778261)) b!6798444))

(assert (= (and b!6798444 (not res!2778255)) b!6798461))

(assert (= (and b!6798444 (not res!2778257)) b!6798458))

(assert (= (and b!6798458 (not res!2778247)) b!6798473))

(assert (= (and b!6798473 (not res!2778254)) b!6798467))

(assert (= (and b!6798467 (not res!2778263)) b!6798456))

(assert (= (and b!6798456 (not res!2778264)) b!6798443))

(assert (= (and b!6798443 (not res!2778253)) b!6798472))

(assert (= (and b!6798472 (not res!2778258)) b!6798451))

(assert (= (and b!6798451 (not res!2778268)) b!6798466))

(assert (= (and b!6798466 (not res!2778260)) b!6798469))

(assert (= (and b!6798469 (not res!2778267)) b!6798445))

(assert (= (and b!6798445 (not res!2778259)) b!6798455))

(assert (= (and b!6798455 (not res!2778252)) b!6798448))

(assert (= (and b!6798448 (not res!2778245)) b!6798465))

(assert (= (and b!6798465 (not res!2778249)) b!6798471))

(assert (= (and start!658026 (is-ElementMatch!16618 r!7292)) b!6798459))

(assert (= (and start!658026 (is-Concat!25463 r!7292)) b!6798442))

(assert (= (and start!658026 (is-Star!16618 r!7292)) b!6798470))

(assert (= (and start!658026 (is-Union!16618 r!7292)) b!6798462))

(assert (= (and start!658026 condSetEmpty!46586) setIsEmpty!46586))

(assert (= (and start!658026 (not condSetEmpty!46586)) setNonEmpty!46586))

(assert (= setNonEmpty!46586 b!6798457))

(assert (= b!6798463 b!6798468))

(assert (= (and start!658026 (is-Cons!66031 zl!343)) b!6798463))

(assert (= (and start!658026 (is-Cons!66030 s!2326)) b!6798460))

(declare-fun m!7545080 () Bool)

(assert (=> b!6798447 m!7545080))

(declare-fun m!7545082 () Bool)

(assert (=> b!6798467 m!7545082))

(declare-fun m!7545084 () Bool)

(assert (=> b!6798467 m!7545084))

(declare-fun m!7545086 () Bool)

(assert (=> b!6798467 m!7545086))

(declare-fun m!7545088 () Bool)

(assert (=> b!6798465 m!7545088))

(declare-fun m!7545090 () Bool)

(assert (=> b!6798465 m!7545090))

(declare-fun m!7545092 () Bool)

(assert (=> b!6798465 m!7545092))

(declare-fun m!7545094 () Bool)

(assert (=> b!6798465 m!7545094))

(declare-fun m!7545096 () Bool)

(assert (=> b!6798465 m!7545096))

(declare-fun m!7545098 () Bool)

(assert (=> b!6798465 m!7545098))

(declare-fun m!7545100 () Bool)

(assert (=> b!6798463 m!7545100))

(declare-fun m!7545102 () Bool)

(assert (=> b!6798454 m!7545102))

(declare-fun m!7545104 () Bool)

(assert (=> b!6798454 m!7545104))

(declare-fun m!7545106 () Bool)

(assert (=> b!6798454 m!7545106))

(declare-fun m!7545108 () Bool)

(assert (=> b!6798445 m!7545108))

(declare-fun m!7545110 () Bool)

(assert (=> b!6798443 m!7545110))

(declare-fun m!7545112 () Bool)

(assert (=> b!6798443 m!7545112))

(assert (=> b!6798443 m!7545112))

(declare-fun m!7545114 () Bool)

(assert (=> b!6798443 m!7545114))

(declare-fun m!7545116 () Bool)

(assert (=> b!6798446 m!7545116))

(declare-fun m!7545118 () Bool)

(assert (=> b!6798471 m!7545118))

(declare-fun m!7545120 () Bool)

(assert (=> b!6798449 m!7545120))

(declare-fun m!7545122 () Bool)

(assert (=> b!6798444 m!7545122))

(declare-fun m!7545124 () Bool)

(assert (=> b!6798444 m!7545124))

(assert (=> b!6798444 m!7545122))

(declare-fun m!7545126 () Bool)

(assert (=> b!6798444 m!7545126))

(assert (=> b!6798444 m!7545122))

(declare-fun m!7545128 () Bool)

(assert (=> b!6798444 m!7545128))

(declare-fun m!7545130 () Bool)

(assert (=> b!6798444 m!7545130))

(declare-fun m!7545132 () Bool)

(assert (=> b!6798444 m!7545132))

(declare-fun m!7545134 () Bool)

(assert (=> b!6798444 m!7545134))

(assert (=> b!6798444 m!7545132))

(declare-fun m!7545136 () Bool)

(assert (=> b!6798444 m!7545136))

(declare-fun m!7545138 () Bool)

(assert (=> b!6798444 m!7545138))

(declare-fun m!7545140 () Bool)

(assert (=> b!6798469 m!7545140))

(declare-fun m!7545142 () Bool)

(assert (=> b!6798455 m!7545142))

(declare-fun m!7545144 () Bool)

(assert (=> b!6798455 m!7545144))

(declare-fun m!7545146 () Bool)

(assert (=> b!6798455 m!7545146))

(declare-fun m!7545148 () Bool)

(assert (=> start!658026 m!7545148))

(declare-fun m!7545150 () Bool)

(assert (=> b!6798464 m!7545150))

(assert (=> b!6798464 m!7545150))

(declare-fun m!7545152 () Bool)

(assert (=> b!6798464 m!7545152))

(declare-fun m!7545154 () Bool)

(assert (=> b!6798466 m!7545154))

(declare-fun m!7545156 () Bool)

(assert (=> b!6798466 m!7545156))

(declare-fun m!7545158 () Bool)

(assert (=> b!6798466 m!7545158))

(declare-fun m!7545160 () Bool)

(assert (=> b!6798466 m!7545160))

(declare-fun m!7545162 () Bool)

(assert (=> b!6798466 m!7545162))

(declare-fun m!7545164 () Bool)

(assert (=> b!6798466 m!7545164))

(declare-fun m!7545166 () Bool)

(assert (=> b!6798466 m!7545166))

(declare-fun m!7545168 () Bool)

(assert (=> b!6798466 m!7545168))

(declare-fun m!7545170 () Bool)

(assert (=> b!6798466 m!7545170))

(declare-fun m!7545172 () Bool)

(assert (=> setNonEmpty!46586 m!7545172))

(declare-fun m!7545174 () Bool)

(assert (=> b!6798473 m!7545174))

(declare-fun m!7545176 () Bool)

(assert (=> b!6798473 m!7545176))

(declare-fun m!7545178 () Bool)

(assert (=> b!6798473 m!7545178))

(declare-fun m!7545180 () Bool)

(assert (=> b!6798456 m!7545180))

(declare-fun m!7545182 () Bool)

(assert (=> b!6798456 m!7545182))

(declare-fun m!7545184 () Bool)

(assert (=> b!6798456 m!7545184))

(declare-fun m!7545186 () Bool)

(assert (=> b!6798456 m!7545186))

(declare-fun m!7545188 () Bool)

(assert (=> b!6798456 m!7545188))

(declare-fun m!7545190 () Bool)

(assert (=> b!6798450 m!7545190))

(declare-fun m!7545192 () Bool)

(assert (=> b!6798448 m!7545192))

(declare-fun m!7545194 () Bool)

(assert (=> b!6798451 m!7545194))

(push 1)

(assert (not b!6798471))

(assert (not b!6798467))

(assert (not b!6798445))

(assert tp_is_empty!42489)

(assert (not setNonEmpty!46586))

(assert (not b!6798464))

(assert (not b!6798447))

(assert (not start!658026))

(assert (not b!6798465))

(assert (not b!6798470))

(assert (not b!6798468))

(assert (not b!6798446))

(assert (not b!6798463))

(assert (not b!6798449))

(assert (not b!6798454))

(assert (not b!6798455))

(assert (not b!6798448))

(assert (not b!6798443))

(assert (not b!6798473))

(assert (not b!6798466))

(assert (not b!6798444))

(assert (not b!6798451))

(assert (not b!6798469))

(assert (not b!6798457))

(assert (not b!6798450))

(assert (not b!6798456))

(assert (not b!6798462))

(assert (not b!6798442))

(assert (not b!6798460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2136303 () Bool)

(declare-fun c!1264008 () Bool)

(assert (=> d!2136303 (= c!1264008 (isEmpty!38407 s!2326))))

(declare-fun e!4103065 () Bool)

(assert (=> d!2136303 (= (matchZipper!2604 lt!2447549 s!2326) e!4103065)))

(declare-fun b!6798612 () Bool)

(declare-fun nullableZipper!2325 ((Set Context!12004)) Bool)

(assert (=> b!6798612 (= e!4103065 (nullableZipper!2325 lt!2447549))))

(declare-fun b!6798613 () Bool)

(declare-fun head!13647 (List!66154) C!33506)

(declare-fun tail!12732 (List!66154) List!66154)

(assert (=> b!6798613 (= e!4103065 (matchZipper!2604 (derivationStepZipper!2562 lt!2447549 (head!13647 s!2326)) (tail!12732 s!2326)))))

(assert (= (and d!2136303 c!1264008) b!6798612))

(assert (= (and d!2136303 (not c!1264008)) b!6798613))

(assert (=> d!2136303 m!7545124))

(declare-fun m!7545312 () Bool)

(assert (=> b!6798612 m!7545312))

(declare-fun m!7545314 () Bool)

(assert (=> b!6798613 m!7545314))

(assert (=> b!6798613 m!7545314))

(declare-fun m!7545316 () Bool)

(assert (=> b!6798613 m!7545316))

(declare-fun m!7545318 () Bool)

(assert (=> b!6798613 m!7545318))

(assert (=> b!6798613 m!7545316))

(assert (=> b!6798613 m!7545318))

(declare-fun m!7545320 () Bool)

(assert (=> b!6798613 m!7545320))

(assert (=> b!6798471 d!2136303))

(declare-fun d!2136305 () Bool)

(assert (=> d!2136305 (= (isEmpty!38408 (t!379884 zl!343)) (is-Nil!66031 (t!379884 zl!343)))))

(assert (=> b!6798450 d!2136305))

(declare-fun d!2136307 () Bool)

(declare-fun lt!2447667 () Regex!16618)

(assert (=> d!2136307 (validRegex!8354 lt!2447667)))

(assert (=> d!2136307 (= lt!2447667 (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))

(assert (=> d!2136307 (= (unfocusZipper!2360 (Cons!66031 lt!2447547 Nil!66031)) lt!2447667)))

(declare-fun bs!1812044 () Bool)

(assert (= bs!1812044 d!2136307))

(declare-fun m!7545322 () Bool)

(assert (=> bs!1812044 m!7545322))

(declare-fun m!7545324 () Bool)

(assert (=> bs!1812044 m!7545324))

(assert (=> bs!1812044 m!7545324))

(declare-fun m!7545326 () Bool)

(assert (=> bs!1812044 m!7545326))

(assert (=> b!6798469 d!2136307))

(declare-fun bs!1812045 () Bool)

(declare-fun d!2136309 () Bool)

(assert (= bs!1812045 (and d!2136309 b!6798465)))

(declare-fun lambda!383358 () Int)

(assert (=> bs!1812045 (= lambda!383358 lambda!383325)))

(declare-fun forall!15810 (List!66153 Int) Bool)

(assert (=> d!2136309 (= (inv!84793 (h!72479 zl!343)) (forall!15810 (exprs!6502 (h!72479 zl!343)) lambda!383358))))

(declare-fun bs!1812046 () Bool)

(assert (= bs!1812046 d!2136309))

(declare-fun m!7545328 () Bool)

(assert (=> bs!1812046 m!7545328))

(assert (=> b!6798463 d!2136309))

(declare-fun d!2136311 () Bool)

(declare-fun c!1264009 () Bool)

(assert (=> d!2136311 (= c!1264009 (isEmpty!38407 s!2326))))

(declare-fun e!4103066 () Bool)

(assert (=> d!2136311 (= (matchZipper!2604 lt!2447560 s!2326) e!4103066)))

(declare-fun b!6798614 () Bool)

(assert (=> b!6798614 (= e!4103066 (nullableZipper!2325 lt!2447560))))

(declare-fun b!6798615 () Bool)

(assert (=> b!6798615 (= e!4103066 (matchZipper!2604 (derivationStepZipper!2562 lt!2447560 (head!13647 s!2326)) (tail!12732 s!2326)))))

(assert (= (and d!2136311 c!1264009) b!6798614))

(assert (= (and d!2136311 (not c!1264009)) b!6798615))

(assert (=> d!2136311 m!7545124))

(declare-fun m!7545330 () Bool)

(assert (=> b!6798614 m!7545330))

(assert (=> b!6798615 m!7545314))

(assert (=> b!6798615 m!7545314))

(declare-fun m!7545332 () Bool)

(assert (=> b!6798615 m!7545332))

(assert (=> b!6798615 m!7545318))

(assert (=> b!6798615 m!7545332))

(assert (=> b!6798615 m!7545318))

(declare-fun m!7545334 () Bool)

(assert (=> b!6798615 m!7545334))

(assert (=> b!6798443 d!2136311))

(declare-fun d!2136313 () Bool)

(declare-fun c!1264010 () Bool)

(assert (=> d!2136313 (= c!1264010 (isEmpty!38407 (t!379883 s!2326)))))

(declare-fun e!4103067 () Bool)

(assert (=> d!2136313 (= (matchZipper!2604 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (t!379883 s!2326)) e!4103067)))

(declare-fun b!6798616 () Bool)

(assert (=> b!6798616 (= e!4103067 (nullableZipper!2325 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326))))))

(declare-fun b!6798617 () Bool)

(assert (=> b!6798617 (= e!4103067 (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (head!13647 (t!379883 s!2326))) (tail!12732 (t!379883 s!2326))))))

(assert (= (and d!2136313 c!1264010) b!6798616))

(assert (= (and d!2136313 (not c!1264010)) b!6798617))

(declare-fun m!7545336 () Bool)

(assert (=> d!2136313 m!7545336))

(assert (=> b!6798616 m!7545112))

(declare-fun m!7545338 () Bool)

(assert (=> b!6798616 m!7545338))

(declare-fun m!7545340 () Bool)

(assert (=> b!6798617 m!7545340))

(assert (=> b!6798617 m!7545112))

(assert (=> b!6798617 m!7545340))

(declare-fun m!7545342 () Bool)

(assert (=> b!6798617 m!7545342))

(declare-fun m!7545344 () Bool)

(assert (=> b!6798617 m!7545344))

(assert (=> b!6798617 m!7545342))

(assert (=> b!6798617 m!7545344))

(declare-fun m!7545346 () Bool)

(assert (=> b!6798617 m!7545346))

(assert (=> b!6798443 d!2136313))

(declare-fun bs!1812047 () Bool)

(declare-fun d!2136315 () Bool)

(assert (= bs!1812047 (and d!2136315 b!6798467)))

(declare-fun lambda!383361 () Int)

(assert (=> bs!1812047 (= lambda!383361 lambda!383323)))

(assert (=> d!2136315 true))

(assert (=> d!2136315 (= (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (flatMap!2099 lt!2447560 lambda!383361))))

(declare-fun bs!1812048 () Bool)

(assert (= bs!1812048 d!2136315))

(declare-fun m!7545348 () Bool)

(assert (=> bs!1812048 m!7545348))

(assert (=> b!6798443 d!2136315))

(declare-fun b!6798642 () Bool)

(declare-fun e!4103084 () (Set Context!12004))

(assert (=> b!6798642 (= e!4103084 (set.insert (Context!12005 Nil!66029) (as set.empty (Set Context!12004))))))

(declare-fun b!6798643 () Bool)

(declare-fun c!1264024 () Bool)

(declare-fun e!4103083 () Bool)

(assert (=> b!6798643 (= c!1264024 e!4103083)))

(declare-fun res!2778367 () Bool)

(assert (=> b!6798643 (=> (not res!2778367) (not e!4103083))))

(assert (=> b!6798643 (= res!2778367 (is-Concat!25463 r!7292))))

(declare-fun e!4103081 () (Set Context!12004))

(declare-fun e!4103080 () (Set Context!12004))

(assert (=> b!6798643 (= e!4103081 e!4103080)))

(declare-fun b!6798644 () Bool)

(assert (=> b!6798644 (= e!4103084 e!4103081)))

(declare-fun c!1264025 () Bool)

(assert (=> b!6798644 (= c!1264025 (is-Union!16618 r!7292))))

(declare-fun b!6798645 () Bool)

(declare-fun e!4103082 () (Set Context!12004))

(declare-fun call!617647 () (Set Context!12004))

(assert (=> b!6798645 (= e!4103082 call!617647)))

(declare-fun c!1264027 () Bool)

(declare-fun call!617646 () (Set Context!12004))

(declare-fun call!617649 () List!66153)

(declare-fun bm!617641 () Bool)

(assert (=> bm!617641 (= call!617646 (derivationStepZipperDown!1846 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))) (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649)) (h!72478 s!2326)))))

(declare-fun b!6798646 () Bool)

(declare-fun e!4103085 () (Set Context!12004))

(assert (=> b!6798646 (= e!4103085 call!617647)))

(declare-fun d!2136317 () Bool)

(declare-fun c!1264023 () Bool)

(assert (=> d!2136317 (= c!1264023 (and (is-ElementMatch!16618 r!7292) (= (c!1263993 r!7292) (h!72478 s!2326))))))

(assert (=> d!2136317 (= (derivationStepZipperDown!1846 r!7292 (Context!12005 Nil!66029) (h!72478 s!2326)) e!4103084)))

(declare-fun bm!617642 () Bool)

(declare-fun call!617651 () List!66153)

(assert (=> bm!617642 (= call!617649 call!617651)))

(declare-fun call!617648 () (Set Context!12004))

(declare-fun bm!617643 () Bool)

(assert (=> bm!617643 (= call!617648 (derivationStepZipperDown!1846 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)) (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651)) (h!72478 s!2326)))))

(declare-fun b!6798647 () Bool)

(assert (=> b!6798647 (= e!4103080 e!4103085)))

(assert (=> b!6798647 (= c!1264027 (is-Concat!25463 r!7292))))

(declare-fun b!6798648 () Bool)

(assert (=> b!6798648 (= e!4103081 (set.union call!617646 call!617648))))

(declare-fun bm!617644 () Bool)

(declare-fun call!617650 () (Set Context!12004))

(assert (=> bm!617644 (= call!617650 call!617646)))

(declare-fun bm!617645 () Bool)

(assert (=> bm!617645 (= call!617647 call!617650)))

(declare-fun b!6798649 () Bool)

(declare-fun nullable!6597 (Regex!16618) Bool)

(assert (=> b!6798649 (= e!4103083 (nullable!6597 (regOne!33748 r!7292)))))

(declare-fun bm!617646 () Bool)

(declare-fun $colon$colon!2427 (List!66153 Regex!16618) List!66153)

(assert (=> bm!617646 (= call!617651 ($colon$colon!2427 (exprs!6502 (Context!12005 Nil!66029)) (ite (or c!1264024 c!1264027) (regTwo!33748 r!7292) r!7292)))))

(declare-fun b!6798650 () Bool)

(declare-fun c!1264026 () Bool)

(assert (=> b!6798650 (= c!1264026 (is-Star!16618 r!7292))))

(assert (=> b!6798650 (= e!4103085 e!4103082)))

(declare-fun b!6798651 () Bool)

(assert (=> b!6798651 (= e!4103082 (as set.empty (Set Context!12004)))))

(declare-fun b!6798652 () Bool)

(assert (=> b!6798652 (= e!4103080 (set.union call!617648 call!617650))))

(assert (= (and d!2136317 c!1264023) b!6798642))

(assert (= (and d!2136317 (not c!1264023)) b!6798644))

(assert (= (and b!6798644 c!1264025) b!6798648))

(assert (= (and b!6798644 (not c!1264025)) b!6798643))

(assert (= (and b!6798643 res!2778367) b!6798649))

(assert (= (and b!6798643 c!1264024) b!6798652))

(assert (= (and b!6798643 (not c!1264024)) b!6798647))

(assert (= (and b!6798647 c!1264027) b!6798646))

(assert (= (and b!6798647 (not c!1264027)) b!6798650))

(assert (= (and b!6798650 c!1264026) b!6798645))

(assert (= (and b!6798650 (not c!1264026)) b!6798651))

(assert (= (or b!6798646 b!6798645) bm!617642))

(assert (= (or b!6798646 b!6798645) bm!617645))

(assert (= (or b!6798652 bm!617642) bm!617646))

(assert (= (or b!6798652 bm!617645) bm!617644))

(assert (= (or b!6798648 b!6798652) bm!617643))

(assert (= (or b!6798648 bm!617644) bm!617641))

(declare-fun m!7545350 () Bool)

(assert (=> bm!617643 m!7545350))

(declare-fun m!7545352 () Bool)

(assert (=> b!6798642 m!7545352))

(declare-fun m!7545354 () Bool)

(assert (=> b!6798649 m!7545354))

(declare-fun m!7545356 () Bool)

(assert (=> bm!617646 m!7545356))

(declare-fun m!7545358 () Bool)

(assert (=> bm!617641 m!7545358))

(assert (=> b!6798473 d!2136317))

(declare-fun e!4103093 () (Set Context!12004))

(declare-fun call!617654 () (Set Context!12004))

(declare-fun b!6798663 () Bool)

(assert (=> b!6798663 (= e!4103093 (set.union call!617654 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72478 s!2326))))))

(declare-fun b!6798664 () Bool)

(declare-fun e!4103092 () (Set Context!12004))

(assert (=> b!6798664 (= e!4103093 e!4103092)))

(declare-fun c!1264033 () Bool)

(assert (=> b!6798664 (= c!1264033 (is-Cons!66029 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))

(declare-fun b!6798665 () Bool)

(assert (=> b!6798665 (= e!4103092 call!617654)))

(declare-fun b!6798666 () Bool)

(assert (=> b!6798666 (= e!4103092 (as set.empty (Set Context!12004)))))

(declare-fun b!6798667 () Bool)

(declare-fun e!4103094 () Bool)

(assert (=> b!6798667 (= e!4103094 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(declare-fun d!2136319 () Bool)

(declare-fun c!1264032 () Bool)

(assert (=> d!2136319 (= c!1264032 e!4103094)))

(declare-fun res!2778370 () Bool)

(assert (=> d!2136319 (=> (not res!2778370) (not e!4103094))))

(assert (=> d!2136319 (= res!2778370 (is-Cons!66029 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))

(assert (=> d!2136319 (= (derivationStepZipperUp!1772 (Context!12005 (Cons!66029 r!7292 Nil!66029)) (h!72478 s!2326)) e!4103093)))

(declare-fun bm!617649 () Bool)

(assert (=> bm!617649 (= call!617654 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72478 s!2326)))))

(assert (= (and d!2136319 res!2778370) b!6798667))

(assert (= (and d!2136319 c!1264032) b!6798663))

(assert (= (and d!2136319 (not c!1264032)) b!6798664))

(assert (= (and b!6798664 c!1264033) b!6798665))

(assert (= (and b!6798664 (not c!1264033)) b!6798666))

(assert (= (or b!6798663 b!6798665) bm!617649))

(declare-fun m!7545360 () Bool)

(assert (=> b!6798663 m!7545360))

(declare-fun m!7545362 () Bool)

(assert (=> b!6798667 m!7545362))

(declare-fun m!7545364 () Bool)

(assert (=> bm!617649 m!7545364))

(assert (=> b!6798473 d!2136319))

(declare-fun bs!1812049 () Bool)

(declare-fun d!2136321 () Bool)

(assert (= bs!1812049 (and d!2136321 b!6798467)))

(declare-fun lambda!383362 () Int)

(assert (=> bs!1812049 (= lambda!383362 lambda!383323)))

(declare-fun bs!1812050 () Bool)

(assert (= bs!1812050 (and d!2136321 d!2136315)))

(assert (=> bs!1812050 (= lambda!383362 lambda!383361)))

(assert (=> d!2136321 true))

(assert (=> d!2136321 (= (derivationStepZipper!2562 z!1189 (h!72478 s!2326)) (flatMap!2099 z!1189 lambda!383362))))

(declare-fun bs!1812051 () Bool)

(assert (= bs!1812051 d!2136321))

(declare-fun m!7545366 () Bool)

(assert (=> bs!1812051 m!7545366))

(assert (=> b!6798473 d!2136321))

(declare-fun d!2136323 () Bool)

(declare-fun lt!2447668 () Regex!16618)

(assert (=> d!2136323 (validRegex!8354 lt!2447668)))

(assert (=> d!2136323 (= lt!2447668 (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))

(assert (=> d!2136323 (= (unfocusZipper!2360 (Cons!66031 lt!2447568 Nil!66031)) lt!2447668)))

(declare-fun bs!1812052 () Bool)

(assert (= bs!1812052 d!2136323))

(declare-fun m!7545368 () Bool)

(assert (=> bs!1812052 m!7545368))

(declare-fun m!7545370 () Bool)

(assert (=> bs!1812052 m!7545370))

(assert (=> bs!1812052 m!7545370))

(declare-fun m!7545372 () Bool)

(assert (=> bs!1812052 m!7545372))

(assert (=> b!6798451 d!2136323))

(declare-fun bs!1812053 () Bool)

(declare-fun d!2136325 () Bool)

(assert (= bs!1812053 (and d!2136325 b!6798465)))

(declare-fun lambda!383363 () Int)

(assert (=> bs!1812053 (= lambda!383363 lambda!383325)))

(declare-fun bs!1812054 () Bool)

(assert (= bs!1812054 (and d!2136325 d!2136309)))

(assert (=> bs!1812054 (= lambda!383363 lambda!383358)))

(assert (=> d!2136325 (= (inv!84793 setElem!46586) (forall!15810 (exprs!6502 setElem!46586) lambda!383363))))

(declare-fun bs!1812055 () Bool)

(assert (= bs!1812055 d!2136325))

(declare-fun m!7545374 () Bool)

(assert (=> bs!1812055 m!7545374))

(assert (=> setNonEmpty!46586 d!2136325))

(declare-fun b!6798686 () Bool)

(declare-fun e!4103110 () Bool)

(declare-fun call!617663 () Bool)

(assert (=> b!6798686 (= e!4103110 call!617663)))

(declare-fun b!6798687 () Bool)

(declare-fun res!2778385 () Bool)

(declare-fun e!4103113 () Bool)

(assert (=> b!6798687 (=> (not res!2778385) (not e!4103113))))

(declare-fun call!617661 () Bool)

(assert (=> b!6798687 (= res!2778385 call!617661)))

(declare-fun e!4103109 () Bool)

(assert (=> b!6798687 (= e!4103109 e!4103113)))

(declare-fun b!6798688 () Bool)

(declare-fun e!4103111 () Bool)

(declare-fun e!4103115 () Bool)

(assert (=> b!6798688 (= e!4103111 e!4103115)))

(declare-fun c!1264039 () Bool)

(assert (=> b!6798688 (= c!1264039 (is-Star!16618 r!7292))))

(declare-fun b!6798689 () Bool)

(declare-fun res!2778381 () Bool)

(declare-fun e!4103114 () Bool)

(assert (=> b!6798689 (=> res!2778381 e!4103114)))

(assert (=> b!6798689 (= res!2778381 (not (is-Concat!25463 r!7292)))))

(assert (=> b!6798689 (= e!4103109 e!4103114)))

(declare-fun d!2136327 () Bool)

(declare-fun res!2778382 () Bool)

(assert (=> d!2136327 (=> res!2778382 e!4103111)))

(assert (=> d!2136327 (= res!2778382 (is-ElementMatch!16618 r!7292))))

(assert (=> d!2136327 (= (validRegex!8354 r!7292) e!4103111)))

(declare-fun bm!617656 () Bool)

(declare-fun call!617662 () Bool)

(declare-fun c!1264038 () Bool)

(assert (=> bm!617656 (= call!617662 (validRegex!8354 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))

(declare-fun bm!617657 () Bool)

(assert (=> bm!617657 (= call!617663 (validRegex!8354 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))

(declare-fun b!6798690 () Bool)

(declare-fun e!4103112 () Bool)

(assert (=> b!6798690 (= e!4103112 call!617662)))

(declare-fun b!6798691 () Bool)

(assert (=> b!6798691 (= e!4103115 e!4103110)))

(declare-fun res!2778384 () Bool)

(assert (=> b!6798691 (= res!2778384 (not (nullable!6597 (reg!16947 r!7292))))))

(assert (=> b!6798691 (=> (not res!2778384) (not e!4103110))))

(declare-fun b!6798692 () Bool)

(assert (=> b!6798692 (= e!4103114 e!4103112)))

(declare-fun res!2778383 () Bool)

(assert (=> b!6798692 (=> (not res!2778383) (not e!4103112))))

(assert (=> b!6798692 (= res!2778383 call!617661)))

(declare-fun b!6798693 () Bool)

(assert (=> b!6798693 (= e!4103115 e!4103109)))

(assert (=> b!6798693 (= c!1264038 (is-Union!16618 r!7292))))

(declare-fun b!6798694 () Bool)

(assert (=> b!6798694 (= e!4103113 call!617662)))

(declare-fun bm!617658 () Bool)

(assert (=> bm!617658 (= call!617661 call!617663)))

(assert (= (and d!2136327 (not res!2778382)) b!6798688))

(assert (= (and b!6798688 c!1264039) b!6798691))

(assert (= (and b!6798688 (not c!1264039)) b!6798693))

(assert (= (and b!6798691 res!2778384) b!6798686))

(assert (= (and b!6798693 c!1264038) b!6798687))

(assert (= (and b!6798693 (not c!1264038)) b!6798689))

(assert (= (and b!6798687 res!2778385) b!6798694))

(assert (= (and b!6798689 (not res!2778381)) b!6798692))

(assert (= (and b!6798692 res!2778383) b!6798690))

(assert (= (or b!6798694 b!6798690) bm!617656))

(assert (= (or b!6798687 b!6798692) bm!617658))

(assert (= (or b!6798686 bm!617658) bm!617657))

(declare-fun m!7545376 () Bool)

(assert (=> bm!617656 m!7545376))

(declare-fun m!7545378 () Bool)

(assert (=> bm!617657 m!7545378))

(declare-fun m!7545380 () Bool)

(assert (=> b!6798691 m!7545380))

(assert (=> start!658026 d!2136327))

(declare-fun d!2136329 () Bool)

(declare-fun e!4103118 () Bool)

(assert (=> d!2136329 e!4103118))

(declare-fun res!2778388 () Bool)

(assert (=> d!2136329 (=> (not res!2778388) (not e!4103118))))

(declare-fun lt!2447671 () List!66155)

(declare-fun noDuplicate!2403 (List!66155) Bool)

(assert (=> d!2136329 (= res!2778388 (noDuplicate!2403 lt!2447671))))

(declare-fun choose!50660 ((Set Context!12004)) List!66155)

(assert (=> d!2136329 (= lt!2447671 (choose!50660 z!1189))))

(assert (=> d!2136329 (= (toList!10402 z!1189) lt!2447671)))

(declare-fun b!6798697 () Bool)

(declare-fun content!12890 (List!66155) (Set Context!12004))

(assert (=> b!6798697 (= e!4103118 (= (content!12890 lt!2447671) z!1189))))

(assert (= (and d!2136329 res!2778388) b!6798697))

(declare-fun m!7545382 () Bool)

(assert (=> d!2136329 m!7545382))

(declare-fun m!7545384 () Bool)

(assert (=> d!2136329 m!7545384))

(declare-fun m!7545386 () Bool)

(assert (=> b!6798697 m!7545386))

(assert (=> b!6798446 d!2136329))

(declare-fun bs!1812056 () Bool)

(declare-fun b!6798734 () Bool)

(assert (= bs!1812056 (and b!6798734 b!6798444)))

(declare-fun lambda!383368 () Int)

(assert (=> bs!1812056 (not (= lambda!383368 lambda!383320))))

(assert (=> bs!1812056 (= (and (= (reg!16947 lt!2447563) (reg!16947 r!7292)) (= lt!2447563 r!7292)) (= lambda!383368 lambda!383321))))

(assert (=> bs!1812056 (not (= lambda!383368 lambda!383322))))

(assert (=> b!6798734 true))

(assert (=> b!6798734 true))

(declare-fun bs!1812057 () Bool)

(declare-fun b!6798731 () Bool)

(assert (= bs!1812057 (and b!6798731 b!6798444)))

(declare-fun lambda!383369 () Int)

(assert (=> bs!1812057 (not (= lambda!383369 lambda!383320))))

(assert (=> bs!1812057 (not (= lambda!383369 lambda!383321))))

(assert (=> bs!1812057 (= (and (= (regOne!33748 lt!2447563) (reg!16947 r!7292)) (= (regTwo!33748 lt!2447563) r!7292)) (= lambda!383369 lambda!383322))))

(declare-fun bs!1812058 () Bool)

(assert (= bs!1812058 (and b!6798731 b!6798734)))

(assert (=> bs!1812058 (not (= lambda!383369 lambda!383368))))

(assert (=> b!6798731 true))

(assert (=> b!6798731 true))

(declare-fun b!6798730 () Bool)

(declare-fun e!4103143 () Bool)

(declare-fun e!4103139 () Bool)

(assert (=> b!6798730 (= e!4103143 e!4103139)))

(declare-fun res!2778405 () Bool)

(assert (=> b!6798730 (= res!2778405 (not (is-EmptyLang!16618 lt!2447563)))))

(assert (=> b!6798730 (=> (not res!2778405) (not e!4103139))))

(declare-fun e!4103137 () Bool)

(declare-fun call!617668 () Bool)

(assert (=> b!6798731 (= e!4103137 call!617668)))

(declare-fun b!6798732 () Bool)

(declare-fun e!4103141 () Bool)

(assert (=> b!6798732 (= e!4103141 (matchRSpec!3719 (regTwo!33749 lt!2447563) s!2326))))

(declare-fun b!6798733 () Bool)

(declare-fun call!617669 () Bool)

(assert (=> b!6798733 (= e!4103143 call!617669)))

(declare-fun e!4103138 () Bool)

(assert (=> b!6798734 (= e!4103138 call!617668)))

(declare-fun b!6798735 () Bool)

(declare-fun e!4103142 () Bool)

(assert (=> b!6798735 (= e!4103142 e!4103141)))

(declare-fun res!2778406 () Bool)

(assert (=> b!6798735 (= res!2778406 (matchRSpec!3719 (regOne!33749 lt!2447563) s!2326))))

(assert (=> b!6798735 (=> res!2778406 e!4103141)))

(declare-fun b!6798736 () Bool)

(declare-fun e!4103140 () Bool)

(assert (=> b!6798736 (= e!4103140 (= s!2326 (Cons!66030 (c!1263993 lt!2447563) Nil!66030)))))

(declare-fun b!6798737 () Bool)

(declare-fun c!1264048 () Bool)

(assert (=> b!6798737 (= c!1264048 (is-Union!16618 lt!2447563))))

(assert (=> b!6798737 (= e!4103140 e!4103142)))

(declare-fun bm!617663 () Bool)

(assert (=> bm!617663 (= call!617669 (isEmpty!38407 s!2326))))

(declare-fun b!6798738 () Bool)

(declare-fun c!1264050 () Bool)

(assert (=> b!6798738 (= c!1264050 (is-ElementMatch!16618 lt!2447563))))

(assert (=> b!6798738 (= e!4103139 e!4103140)))

(declare-fun d!2136331 () Bool)

(declare-fun c!1264049 () Bool)

(assert (=> d!2136331 (= c!1264049 (is-EmptyExpr!16618 lt!2447563))))

(assert (=> d!2136331 (= (matchRSpec!3719 lt!2447563 s!2326) e!4103143)))

(declare-fun b!6798739 () Bool)

(assert (=> b!6798739 (= e!4103142 e!4103137)))

(declare-fun c!1264051 () Bool)

(assert (=> b!6798739 (= c!1264051 (is-Star!16618 lt!2447563))))

(declare-fun bm!617664 () Bool)

(assert (=> bm!617664 (= call!617668 (Exists!3686 (ite c!1264051 lambda!383368 lambda!383369)))))

(declare-fun b!6798740 () Bool)

(declare-fun res!2778407 () Bool)

(assert (=> b!6798740 (=> res!2778407 e!4103138)))

(assert (=> b!6798740 (= res!2778407 call!617669)))

(assert (=> b!6798740 (= e!4103137 e!4103138)))

(assert (= (and d!2136331 c!1264049) b!6798733))

(assert (= (and d!2136331 (not c!1264049)) b!6798730))

(assert (= (and b!6798730 res!2778405) b!6798738))

(assert (= (and b!6798738 c!1264050) b!6798736))

(assert (= (and b!6798738 (not c!1264050)) b!6798737))

(assert (= (and b!6798737 c!1264048) b!6798735))

(assert (= (and b!6798737 (not c!1264048)) b!6798739))

(assert (= (and b!6798735 (not res!2778406)) b!6798732))

(assert (= (and b!6798739 c!1264051) b!6798740))

(assert (= (and b!6798739 (not c!1264051)) b!6798731))

(assert (= (and b!6798740 (not res!2778407)) b!6798734))

(assert (= (or b!6798734 b!6798731) bm!617664))

(assert (= (or b!6798733 b!6798740) bm!617663))

(declare-fun m!7545388 () Bool)

(assert (=> b!6798732 m!7545388))

(declare-fun m!7545390 () Bool)

(assert (=> b!6798735 m!7545390))

(assert (=> bm!617663 m!7545124))

(declare-fun m!7545392 () Bool)

(assert (=> bm!617664 m!7545392))

(assert (=> b!6798455 d!2136331))

(declare-fun bm!617667 () Bool)

(declare-fun call!617672 () Bool)

(assert (=> bm!617667 (= call!617672 (isEmpty!38407 s!2326))))

(declare-fun b!6798777 () Bool)

(declare-fun res!2778425 () Bool)

(declare-fun e!4103163 () Bool)

(assert (=> b!6798777 (=> res!2778425 e!4103163)))

(assert (=> b!6798777 (= res!2778425 (not (isEmpty!38407 (tail!12732 s!2326))))))

(declare-fun b!6798778 () Bool)

(declare-fun e!4103164 () Bool)

(assert (=> b!6798778 (= e!4103164 (= (head!13647 s!2326) (c!1263993 lt!2447563)))))

(declare-fun b!6798779 () Bool)

(declare-fun e!4103165 () Bool)

(declare-fun e!4103167 () Bool)

(assert (=> b!6798779 (= e!4103165 e!4103167)))

(declare-fun c!1264062 () Bool)

(assert (=> b!6798779 (= c!1264062 (is-EmptyLang!16618 lt!2447563))))

(declare-fun b!6798780 () Bool)

(declare-fun res!2778429 () Bool)

(declare-fun e!4103168 () Bool)

(assert (=> b!6798780 (=> res!2778429 e!4103168)))

(assert (=> b!6798780 (= res!2778429 e!4103164)))

(declare-fun res!2778431 () Bool)

(assert (=> b!6798780 (=> (not res!2778431) (not e!4103164))))

(declare-fun lt!2447674 () Bool)

(assert (=> b!6798780 (= res!2778431 lt!2447674)))

(declare-fun b!6798781 () Bool)

(assert (=> b!6798781 (= e!4103163 (not (= (head!13647 s!2326) (c!1263993 lt!2447563))))))

(declare-fun b!6798782 () Bool)

(declare-fun res!2778426 () Bool)

(assert (=> b!6798782 (=> (not res!2778426) (not e!4103164))))

(assert (=> b!6798782 (= res!2778426 (not call!617672))))

(declare-fun d!2136335 () Bool)

(assert (=> d!2136335 e!4103165))

(declare-fun c!1264064 () Bool)

(assert (=> d!2136335 (= c!1264064 (is-EmptyExpr!16618 lt!2447563))))

(declare-fun e!4103162 () Bool)

(assert (=> d!2136335 (= lt!2447674 e!4103162)))

(declare-fun c!1264063 () Bool)

(assert (=> d!2136335 (= c!1264063 (isEmpty!38407 s!2326))))

(assert (=> d!2136335 (validRegex!8354 lt!2447563)))

(assert (=> d!2136335 (= (matchR!8801 lt!2447563 s!2326) lt!2447674)))

(declare-fun b!6798783 () Bool)

(declare-fun e!4103166 () Bool)

(assert (=> b!6798783 (= e!4103166 e!4103163)))

(declare-fun res!2778427 () Bool)

(assert (=> b!6798783 (=> res!2778427 e!4103163)))

(assert (=> b!6798783 (= res!2778427 call!617672)))

(declare-fun b!6798784 () Bool)

(assert (=> b!6798784 (= e!4103162 (nullable!6597 lt!2447563))))

(declare-fun b!6798785 () Bool)

(assert (=> b!6798785 (= e!4103165 (= lt!2447674 call!617672))))

(declare-fun b!6798786 () Bool)

(declare-fun res!2778424 () Bool)

(assert (=> b!6798786 (=> res!2778424 e!4103168)))

(assert (=> b!6798786 (= res!2778424 (not (is-ElementMatch!16618 lt!2447563)))))

(assert (=> b!6798786 (= e!4103167 e!4103168)))

(declare-fun b!6798787 () Bool)

(assert (=> b!6798787 (= e!4103167 (not lt!2447674))))

(declare-fun b!6798788 () Bool)

(declare-fun res!2778430 () Bool)

(assert (=> b!6798788 (=> (not res!2778430) (not e!4103164))))

(assert (=> b!6798788 (= res!2778430 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun b!6798789 () Bool)

(assert (=> b!6798789 (= e!4103168 e!4103166)))

(declare-fun res!2778428 () Bool)

(assert (=> b!6798789 (=> (not res!2778428) (not e!4103166))))

(assert (=> b!6798789 (= res!2778428 (not lt!2447674))))

(declare-fun b!6798790 () Bool)

(declare-fun derivativeStep!5282 (Regex!16618 C!33506) Regex!16618)

(assert (=> b!6798790 (= e!4103162 (matchR!8801 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)) (tail!12732 s!2326)))))

(assert (= (and d!2136335 c!1264063) b!6798784))

(assert (= (and d!2136335 (not c!1264063)) b!6798790))

(assert (= (and d!2136335 c!1264064) b!6798785))

(assert (= (and d!2136335 (not c!1264064)) b!6798779))

(assert (= (and b!6798779 c!1264062) b!6798787))

(assert (= (and b!6798779 (not c!1264062)) b!6798786))

(assert (= (and b!6798786 (not res!2778424)) b!6798780))

(assert (= (and b!6798780 res!2778431) b!6798782))

(assert (= (and b!6798782 res!2778426) b!6798788))

(assert (= (and b!6798788 res!2778430) b!6798778))

(assert (= (and b!6798780 (not res!2778429)) b!6798789))

(assert (= (and b!6798789 res!2778428) b!6798783))

(assert (= (and b!6798783 (not res!2778427)) b!6798777))

(assert (= (and b!6798777 (not res!2778425)) b!6798781))

(assert (= (or b!6798785 b!6798782 b!6798783) bm!617667))

(assert (=> b!6798777 m!7545318))

(assert (=> b!6798777 m!7545318))

(declare-fun m!7545416 () Bool)

(assert (=> b!6798777 m!7545416))

(declare-fun m!7545418 () Bool)

(assert (=> b!6798784 m!7545418))

(assert (=> b!6798778 m!7545314))

(assert (=> b!6798790 m!7545314))

(assert (=> b!6798790 m!7545314))

(declare-fun m!7545420 () Bool)

(assert (=> b!6798790 m!7545420))

(assert (=> b!6798790 m!7545318))

(assert (=> b!6798790 m!7545420))

(assert (=> b!6798790 m!7545318))

(declare-fun m!7545422 () Bool)

(assert (=> b!6798790 m!7545422))

(assert (=> bm!617667 m!7545124))

(assert (=> b!6798788 m!7545318))

(assert (=> b!6798788 m!7545318))

(assert (=> b!6798788 m!7545416))

(assert (=> b!6798781 m!7545314))

(assert (=> d!2136335 m!7545124))

(declare-fun m!7545424 () Bool)

(assert (=> d!2136335 m!7545424))

(assert (=> b!6798455 d!2136335))

(declare-fun d!2136341 () Bool)

(assert (=> d!2136341 (= (matchR!8801 lt!2447563 s!2326) (matchRSpec!3719 lt!2447563 s!2326))))

(declare-fun lt!2447677 () Unit!159927)

(declare-fun choose!50661 (Regex!16618 List!66154) Unit!159927)

(assert (=> d!2136341 (= lt!2447677 (choose!50661 lt!2447563 s!2326))))

(assert (=> d!2136341 (validRegex!8354 lt!2447563)))

(assert (=> d!2136341 (= (mainMatchTheorem!3719 lt!2447563 s!2326) lt!2447677)))

(declare-fun bs!1812060 () Bool)

(assert (= bs!1812060 d!2136341))

(assert (=> bs!1812060 m!7545144))

(assert (=> bs!1812060 m!7545142))

(declare-fun m!7545428 () Bool)

(assert (=> bs!1812060 m!7545428))

(assert (=> bs!1812060 m!7545424))

(assert (=> b!6798455 d!2136341))

(declare-fun bs!1812062 () Bool)

(declare-fun b!6798797 () Bool)

(assert (= bs!1812062 (and b!6798797 b!6798731)))

(declare-fun lambda!383373 () Int)

(assert (=> bs!1812062 (not (= lambda!383373 lambda!383369))))

(declare-fun bs!1812063 () Bool)

(assert (= bs!1812063 (and b!6798797 b!6798444)))

(assert (=> bs!1812063 (= lambda!383373 lambda!383321)))

(assert (=> bs!1812063 (not (= lambda!383373 lambda!383322))))

(assert (=> bs!1812063 (not (= lambda!383373 lambda!383320))))

(declare-fun bs!1812064 () Bool)

(assert (= bs!1812064 (and b!6798797 b!6798734)))

(assert (=> bs!1812064 (= (and (= (reg!16947 r!7292) (reg!16947 lt!2447563)) (= r!7292 lt!2447563)) (= lambda!383373 lambda!383368))))

(assert (=> b!6798797 true))

(assert (=> b!6798797 true))

(declare-fun bs!1812065 () Bool)

(declare-fun b!6798794 () Bool)

(assert (= bs!1812065 (and b!6798794 b!6798731)))

(declare-fun lambda!383374 () Int)

(assert (=> bs!1812065 (= (and (= (regOne!33748 r!7292) (regOne!33748 lt!2447563)) (= (regTwo!33748 r!7292) (regTwo!33748 lt!2447563))) (= lambda!383374 lambda!383369))))

(declare-fun bs!1812066 () Bool)

(assert (= bs!1812066 (and b!6798794 b!6798444)))

(assert (=> bs!1812066 (not (= lambda!383374 lambda!383321))))

(assert (=> bs!1812066 (= (and (= (regOne!33748 r!7292) (reg!16947 r!7292)) (= (regTwo!33748 r!7292) r!7292)) (= lambda!383374 lambda!383322))))

(assert (=> bs!1812066 (not (= lambda!383374 lambda!383320))))

(declare-fun bs!1812067 () Bool)

(assert (= bs!1812067 (and b!6798794 b!6798734)))

(assert (=> bs!1812067 (not (= lambda!383374 lambda!383368))))

(declare-fun bs!1812068 () Bool)

(assert (= bs!1812068 (and b!6798794 b!6798797)))

(assert (=> bs!1812068 (not (= lambda!383374 lambda!383373))))

(assert (=> b!6798794 true))

(assert (=> b!6798794 true))

(declare-fun b!6798793 () Bool)

(declare-fun e!4103175 () Bool)

(declare-fun e!4103171 () Bool)

(assert (=> b!6798793 (= e!4103175 e!4103171)))

(declare-fun res!2778432 () Bool)

(assert (=> b!6798793 (= res!2778432 (not (is-EmptyLang!16618 r!7292)))))

(assert (=> b!6798793 (=> (not res!2778432) (not e!4103171))))

(declare-fun e!4103169 () Bool)

(declare-fun call!617673 () Bool)

(assert (=> b!6798794 (= e!4103169 call!617673)))

(declare-fun b!6798795 () Bool)

(declare-fun e!4103173 () Bool)

(assert (=> b!6798795 (= e!4103173 (matchRSpec!3719 (regTwo!33749 r!7292) s!2326))))

(declare-fun b!6798796 () Bool)

(declare-fun call!617674 () Bool)

(assert (=> b!6798796 (= e!4103175 call!617674)))

(declare-fun e!4103170 () Bool)

(assert (=> b!6798797 (= e!4103170 call!617673)))

(declare-fun b!6798798 () Bool)

(declare-fun e!4103174 () Bool)

(assert (=> b!6798798 (= e!4103174 e!4103173)))

(declare-fun res!2778433 () Bool)

(assert (=> b!6798798 (= res!2778433 (matchRSpec!3719 (regOne!33749 r!7292) s!2326))))

(assert (=> b!6798798 (=> res!2778433 e!4103173)))

(declare-fun b!6798799 () Bool)

(declare-fun e!4103172 () Bool)

(assert (=> b!6798799 (= e!4103172 (= s!2326 (Cons!66030 (c!1263993 r!7292) Nil!66030)))))

(declare-fun b!6798800 () Bool)

(declare-fun c!1264067 () Bool)

(assert (=> b!6798800 (= c!1264067 (is-Union!16618 r!7292))))

(assert (=> b!6798800 (= e!4103172 e!4103174)))

(declare-fun bm!617668 () Bool)

(assert (=> bm!617668 (= call!617674 (isEmpty!38407 s!2326))))

(declare-fun b!6798801 () Bool)

(declare-fun c!1264069 () Bool)

(assert (=> b!6798801 (= c!1264069 (is-ElementMatch!16618 r!7292))))

(assert (=> b!6798801 (= e!4103171 e!4103172)))

(declare-fun d!2136343 () Bool)

(declare-fun c!1264068 () Bool)

(assert (=> d!2136343 (= c!1264068 (is-EmptyExpr!16618 r!7292))))

(assert (=> d!2136343 (= (matchRSpec!3719 r!7292 s!2326) e!4103175)))

(declare-fun b!6798802 () Bool)

(assert (=> b!6798802 (= e!4103174 e!4103169)))

(declare-fun c!1264070 () Bool)

(assert (=> b!6798802 (= c!1264070 (is-Star!16618 r!7292))))

(declare-fun bm!617669 () Bool)

(assert (=> bm!617669 (= call!617673 (Exists!3686 (ite c!1264070 lambda!383373 lambda!383374)))))

(declare-fun b!6798803 () Bool)

(declare-fun res!2778434 () Bool)

(assert (=> b!6798803 (=> res!2778434 e!4103170)))

(assert (=> b!6798803 (= res!2778434 call!617674)))

(assert (=> b!6798803 (= e!4103169 e!4103170)))

(assert (= (and d!2136343 c!1264068) b!6798796))

(assert (= (and d!2136343 (not c!1264068)) b!6798793))

(assert (= (and b!6798793 res!2778432) b!6798801))

(assert (= (and b!6798801 c!1264069) b!6798799))

(assert (= (and b!6798801 (not c!1264069)) b!6798800))

(assert (= (and b!6798800 c!1264067) b!6798798))

(assert (= (and b!6798800 (not c!1264067)) b!6798802))

(assert (= (and b!6798798 (not res!2778433)) b!6798795))

(assert (= (and b!6798802 c!1264070) b!6798803))

(assert (= (and b!6798802 (not c!1264070)) b!6798794))

(assert (= (and b!6798803 (not res!2778434)) b!6798797))

(assert (= (or b!6798797 b!6798794) bm!617669))

(assert (= (or b!6798796 b!6798803) bm!617668))

(declare-fun m!7545430 () Bool)

(assert (=> b!6798795 m!7545430))

(declare-fun m!7545432 () Bool)

(assert (=> b!6798798 m!7545432))

(assert (=> bm!617668 m!7545124))

(declare-fun m!7545434 () Bool)

(assert (=> bm!617669 m!7545434))

(assert (=> b!6798454 d!2136343))

(declare-fun bm!617670 () Bool)

(declare-fun call!617675 () Bool)

(assert (=> bm!617670 (= call!617675 (isEmpty!38407 s!2326))))

(declare-fun b!6798804 () Bool)

(declare-fun res!2778436 () Bool)

(declare-fun e!4103177 () Bool)

(assert (=> b!6798804 (=> res!2778436 e!4103177)))

(assert (=> b!6798804 (= res!2778436 (not (isEmpty!38407 (tail!12732 s!2326))))))

(declare-fun b!6798805 () Bool)

(declare-fun e!4103178 () Bool)

(assert (=> b!6798805 (= e!4103178 (= (head!13647 s!2326) (c!1263993 r!7292)))))

(declare-fun b!6798806 () Bool)

(declare-fun e!4103179 () Bool)

(declare-fun e!4103181 () Bool)

(assert (=> b!6798806 (= e!4103179 e!4103181)))

(declare-fun c!1264071 () Bool)

(assert (=> b!6798806 (= c!1264071 (is-EmptyLang!16618 r!7292))))

(declare-fun b!6798807 () Bool)

(declare-fun res!2778440 () Bool)

(declare-fun e!4103182 () Bool)

(assert (=> b!6798807 (=> res!2778440 e!4103182)))

(assert (=> b!6798807 (= res!2778440 e!4103178)))

(declare-fun res!2778442 () Bool)

(assert (=> b!6798807 (=> (not res!2778442) (not e!4103178))))

(declare-fun lt!2447678 () Bool)

(assert (=> b!6798807 (= res!2778442 lt!2447678)))

(declare-fun b!6798808 () Bool)

(assert (=> b!6798808 (= e!4103177 (not (= (head!13647 s!2326) (c!1263993 r!7292))))))

(declare-fun b!6798809 () Bool)

(declare-fun res!2778437 () Bool)

(assert (=> b!6798809 (=> (not res!2778437) (not e!4103178))))

(assert (=> b!6798809 (= res!2778437 (not call!617675))))

(declare-fun d!2136349 () Bool)

(assert (=> d!2136349 e!4103179))

(declare-fun c!1264073 () Bool)

(assert (=> d!2136349 (= c!1264073 (is-EmptyExpr!16618 r!7292))))

(declare-fun e!4103176 () Bool)

(assert (=> d!2136349 (= lt!2447678 e!4103176)))

(declare-fun c!1264072 () Bool)

(assert (=> d!2136349 (= c!1264072 (isEmpty!38407 s!2326))))

(assert (=> d!2136349 (validRegex!8354 r!7292)))

(assert (=> d!2136349 (= (matchR!8801 r!7292 s!2326) lt!2447678)))

(declare-fun b!6798810 () Bool)

(declare-fun e!4103180 () Bool)

(assert (=> b!6798810 (= e!4103180 e!4103177)))

(declare-fun res!2778438 () Bool)

(assert (=> b!6798810 (=> res!2778438 e!4103177)))

(assert (=> b!6798810 (= res!2778438 call!617675)))

(declare-fun b!6798811 () Bool)

(assert (=> b!6798811 (= e!4103176 (nullable!6597 r!7292))))

(declare-fun b!6798812 () Bool)

(assert (=> b!6798812 (= e!4103179 (= lt!2447678 call!617675))))

(declare-fun b!6798813 () Bool)

(declare-fun res!2778435 () Bool)

(assert (=> b!6798813 (=> res!2778435 e!4103182)))

(assert (=> b!6798813 (= res!2778435 (not (is-ElementMatch!16618 r!7292)))))

(assert (=> b!6798813 (= e!4103181 e!4103182)))

(declare-fun b!6798814 () Bool)

(assert (=> b!6798814 (= e!4103181 (not lt!2447678))))

(declare-fun b!6798815 () Bool)

(declare-fun res!2778441 () Bool)

(assert (=> b!6798815 (=> (not res!2778441) (not e!4103178))))

(assert (=> b!6798815 (= res!2778441 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun b!6798816 () Bool)

(assert (=> b!6798816 (= e!4103182 e!4103180)))

(declare-fun res!2778439 () Bool)

(assert (=> b!6798816 (=> (not res!2778439) (not e!4103180))))

(assert (=> b!6798816 (= res!2778439 (not lt!2447678))))

(declare-fun b!6798817 () Bool)

(assert (=> b!6798817 (= e!4103176 (matchR!8801 (derivativeStep!5282 r!7292 (head!13647 s!2326)) (tail!12732 s!2326)))))

(assert (= (and d!2136349 c!1264072) b!6798811))

(assert (= (and d!2136349 (not c!1264072)) b!6798817))

(assert (= (and d!2136349 c!1264073) b!6798812))

(assert (= (and d!2136349 (not c!1264073)) b!6798806))

(assert (= (and b!6798806 c!1264071) b!6798814))

(assert (= (and b!6798806 (not c!1264071)) b!6798813))

(assert (= (and b!6798813 (not res!2778435)) b!6798807))

(assert (= (and b!6798807 res!2778442) b!6798809))

(assert (= (and b!6798809 res!2778437) b!6798815))

(assert (= (and b!6798815 res!2778441) b!6798805))

(assert (= (and b!6798807 (not res!2778440)) b!6798816))

(assert (= (and b!6798816 res!2778439) b!6798810))

(assert (= (and b!6798810 (not res!2778438)) b!6798804))

(assert (= (and b!6798804 (not res!2778436)) b!6798808))

(assert (= (or b!6798812 b!6798809 b!6798810) bm!617670))

(assert (=> b!6798804 m!7545318))

(assert (=> b!6798804 m!7545318))

(assert (=> b!6798804 m!7545416))

(declare-fun m!7545436 () Bool)

(assert (=> b!6798811 m!7545436))

(assert (=> b!6798805 m!7545314))

(assert (=> b!6798817 m!7545314))

(assert (=> b!6798817 m!7545314))

(declare-fun m!7545438 () Bool)

(assert (=> b!6798817 m!7545438))

(assert (=> b!6798817 m!7545318))

(assert (=> b!6798817 m!7545438))

(assert (=> b!6798817 m!7545318))

(declare-fun m!7545440 () Bool)

(assert (=> b!6798817 m!7545440))

(assert (=> bm!617670 m!7545124))

(assert (=> b!6798815 m!7545318))

(assert (=> b!6798815 m!7545318))

(assert (=> b!6798815 m!7545416))

(assert (=> b!6798808 m!7545314))

(assert (=> d!2136349 m!7545124))

(assert (=> d!2136349 m!7545148))

(assert (=> b!6798454 d!2136349))

(declare-fun d!2136351 () Bool)

(assert (=> d!2136351 (= (matchR!8801 r!7292 s!2326) (matchRSpec!3719 r!7292 s!2326))))

(declare-fun lt!2447679 () Unit!159927)

(assert (=> d!2136351 (= lt!2447679 (choose!50661 r!7292 s!2326))))

(assert (=> d!2136351 (validRegex!8354 r!7292)))

(assert (=> d!2136351 (= (mainMatchTheorem!3719 r!7292 s!2326) lt!2447679)))

(declare-fun bs!1812069 () Bool)

(assert (= bs!1812069 d!2136351))

(assert (=> bs!1812069 m!7545104))

(assert (=> bs!1812069 m!7545102))

(declare-fun m!7545442 () Bool)

(assert (=> bs!1812069 m!7545442))

(assert (=> bs!1812069 m!7545148))

(assert (=> b!6798454 d!2136351))

(declare-fun d!2136353 () Bool)

(declare-fun dynLambda!26365 (Int Context!12004) Context!12004)

(assert (=> d!2136353 (= (map!15088 lt!2447561 lambda!383324) (set.insert (dynLambda!26365 lambda!383324 lt!2447547) (as set.empty (Set Context!12004))))))

(declare-fun lt!2447682 () Unit!159927)

(declare-fun choose!50662 ((Set Context!12004) Context!12004 Int) Unit!159927)

(assert (=> d!2136353 (= lt!2447682 (choose!50662 lt!2447561 lt!2447547 lambda!383324))))

(assert (=> d!2136353 (= lt!2447561 (set.insert lt!2447547 (as set.empty (Set Context!12004))))))

(assert (=> d!2136353 (= (lemmaMapOnSingletonSet!253 lt!2447561 lt!2447547 lambda!383324) lt!2447682)))

(declare-fun b_lambda!256227 () Bool)

(assert (=> (not b_lambda!256227) (not d!2136353)))

(declare-fun bs!1812072 () Bool)

(assert (= bs!1812072 d!2136353))

(assert (=> bs!1812072 m!7545098))

(assert (=> bs!1812072 m!7545168))

(declare-fun m!7545452 () Bool)

(assert (=> bs!1812072 m!7545452))

(declare-fun m!7545454 () Bool)

(assert (=> bs!1812072 m!7545454))

(assert (=> bs!1812072 m!7545454))

(declare-fun m!7545456 () Bool)

(assert (=> bs!1812072 m!7545456))

(assert (=> b!6798465 d!2136353))

(declare-fun b!6798828 () Bool)

(declare-fun e!4103188 () List!66153)

(assert (=> b!6798828 (= e!4103188 lt!2447567)))

(declare-fun b!6798829 () Bool)

(assert (=> b!6798829 (= e!4103188 (Cons!66029 (h!72477 (Cons!66029 (reg!16947 r!7292) Nil!66029)) (++!14782 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)) lt!2447567)))))

(declare-fun b!6798831 () Bool)

(declare-fun lt!2447685 () List!66153)

(declare-fun e!4103189 () Bool)

(assert (=> b!6798831 (= e!4103189 (or (not (= lt!2447567 Nil!66029)) (= lt!2447685 (Cons!66029 (reg!16947 r!7292) Nil!66029))))))

(declare-fun d!2136359 () Bool)

(assert (=> d!2136359 e!4103189))

(declare-fun res!2778448 () Bool)

(assert (=> d!2136359 (=> (not res!2778448) (not e!4103189))))

(declare-fun content!12891 (List!66153) (Set Regex!16618))

(assert (=> d!2136359 (= res!2778448 (= (content!12891 lt!2447685) (set.union (content!12891 (Cons!66029 (reg!16947 r!7292) Nil!66029)) (content!12891 lt!2447567))))))

(assert (=> d!2136359 (= lt!2447685 e!4103188)))

(declare-fun c!1264077 () Bool)

(assert (=> d!2136359 (= c!1264077 (is-Nil!66029 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))

(assert (=> d!2136359 (= (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567) lt!2447685)))

(declare-fun b!6798830 () Bool)

(declare-fun res!2778447 () Bool)

(assert (=> b!6798830 (=> (not res!2778447) (not e!4103189))))

(declare-fun size!40660 (List!66153) Int)

(assert (=> b!6798830 (= res!2778447 (= (size!40660 lt!2447685) (+ (size!40660 (Cons!66029 (reg!16947 r!7292) Nil!66029)) (size!40660 lt!2447567))))))

(assert (= (and d!2136359 c!1264077) b!6798828))

(assert (= (and d!2136359 (not c!1264077)) b!6798829))

(assert (= (and d!2136359 res!2778448) b!6798830))

(assert (= (and b!6798830 res!2778447) b!6798831))

(declare-fun m!7545458 () Bool)

(assert (=> b!6798829 m!7545458))

(declare-fun m!7545460 () Bool)

(assert (=> d!2136359 m!7545460))

(declare-fun m!7545462 () Bool)

(assert (=> d!2136359 m!7545462))

(declare-fun m!7545464 () Bool)

(assert (=> d!2136359 m!7545464))

(declare-fun m!7545466 () Bool)

(assert (=> b!6798830 m!7545466))

(declare-fun m!7545468 () Bool)

(assert (=> b!6798830 m!7545468))

(declare-fun m!7545470 () Bool)

(assert (=> b!6798830 m!7545470))

(assert (=> b!6798465 d!2136359))

(declare-fun d!2136361 () Bool)

(assert (=> d!2136361 (forall!15810 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567) lambda!383325)))

(declare-fun lt!2447688 () Unit!159927)

(declare-fun choose!50663 (List!66153 List!66153 Int) Unit!159927)

(assert (=> d!2136361 (= lt!2447688 (choose!50663 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567 lambda!383325))))

(assert (=> d!2136361 (forall!15810 (Cons!66029 (reg!16947 r!7292) Nil!66029) lambda!383325)))

(assert (=> d!2136361 (= (lemmaConcatPreservesForall!447 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567 lambda!383325) lt!2447688)))

(declare-fun bs!1812073 () Bool)

(assert (= bs!1812073 d!2136361))

(assert (=> bs!1812073 m!7545096))

(assert (=> bs!1812073 m!7545096))

(declare-fun m!7545472 () Bool)

(assert (=> bs!1812073 m!7545472))

(declare-fun m!7545474 () Bool)

(assert (=> bs!1812073 m!7545474))

(declare-fun m!7545476 () Bool)

(assert (=> bs!1812073 m!7545476))

(assert (=> b!6798465 d!2136361))

(declare-fun d!2136363 () Bool)

(declare-fun choose!50664 ((Set Context!12004) Int) (Set Context!12004))

(assert (=> d!2136363 (= (map!15088 lt!2447561 lambda!383324) (choose!50664 lt!2447561 lambda!383324))))

(declare-fun bs!1812074 () Bool)

(assert (= bs!1812074 d!2136363))

(declare-fun m!7545478 () Bool)

(assert (=> bs!1812074 m!7545478))

(assert (=> b!6798465 d!2136363))

(declare-fun bs!1812075 () Bool)

(declare-fun d!2136365 () Bool)

(assert (= bs!1812075 (and d!2136365 b!6798465)))

(declare-fun lambda!383384 () Int)

(assert (=> bs!1812075 (= (= (exprs!6502 lt!2447565) lt!2447567) (= lambda!383384 lambda!383324))))

(assert (=> d!2136365 true))

(assert (=> d!2136365 (= (appendTo!223 lt!2447561 lt!2447565) (map!15088 lt!2447561 lambda!383384))))

(declare-fun bs!1812076 () Bool)

(assert (= bs!1812076 d!2136365))

(declare-fun m!7545480 () Bool)

(assert (=> bs!1812076 m!7545480))

(assert (=> b!6798465 d!2136365))

(declare-fun bs!1812079 () Bool)

(declare-fun d!2136367 () Bool)

(assert (= bs!1812079 (and d!2136367 b!6798465)))

(declare-fun lambda!383388 () Int)

(assert (=> bs!1812079 (= lambda!383388 lambda!383325)))

(declare-fun bs!1812080 () Bool)

(assert (= bs!1812080 (and d!2136367 d!2136309)))

(assert (=> bs!1812080 (= lambda!383388 lambda!383358)))

(declare-fun bs!1812081 () Bool)

(assert (= bs!1812081 (and d!2136367 d!2136325)))

(assert (=> bs!1812081 (= lambda!383388 lambda!383363)))

(declare-fun b!6798884 () Bool)

(declare-fun e!4103225 () Bool)

(declare-fun isEmpty!38411 (List!66153) Bool)

(assert (=> b!6798884 (= e!4103225 (isEmpty!38411 (t!379882 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6798885 () Bool)

(declare-fun e!4103224 () Bool)

(declare-fun e!4103220 () Bool)

(assert (=> b!6798885 (= e!4103224 e!4103220)))

(declare-fun c!1264101 () Bool)

(assert (=> b!6798885 (= c!1264101 (isEmpty!38411 (unfocusZipperList!2039 zl!343)))))

(declare-fun b!6798886 () Bool)

(declare-fun e!4103221 () Regex!16618)

(assert (=> b!6798886 (= e!4103221 EmptyLang!16618)))

(declare-fun b!6798887 () Bool)

(declare-fun e!4103223 () Regex!16618)

(assert (=> b!6798887 (= e!4103223 (h!72477 (unfocusZipperList!2039 zl!343)))))

(declare-fun b!6798888 () Bool)

(declare-fun lt!2447696 () Regex!16618)

(declare-fun isEmptyLang!1984 (Regex!16618) Bool)

(assert (=> b!6798888 (= e!4103220 (isEmptyLang!1984 lt!2447696))))

(assert (=> d!2136367 e!4103224))

(declare-fun res!2778459 () Bool)

(assert (=> d!2136367 (=> (not res!2778459) (not e!4103224))))

(assert (=> d!2136367 (= res!2778459 (validRegex!8354 lt!2447696))))

(assert (=> d!2136367 (= lt!2447696 e!4103223)))

(declare-fun c!1264100 () Bool)

(assert (=> d!2136367 (= c!1264100 e!4103225)))

(declare-fun res!2778460 () Bool)

(assert (=> d!2136367 (=> (not res!2778460) (not e!4103225))))

(assert (=> d!2136367 (= res!2778460 (is-Cons!66029 (unfocusZipperList!2039 zl!343)))))

(assert (=> d!2136367 (forall!15810 (unfocusZipperList!2039 zl!343) lambda!383388)))

(assert (=> d!2136367 (= (generalisedUnion!2462 (unfocusZipperList!2039 zl!343)) lt!2447696)))

(declare-fun b!6798889 () Bool)

(declare-fun e!4103222 () Bool)

(assert (=> b!6798889 (= e!4103220 e!4103222)))

(declare-fun c!1264099 () Bool)

(declare-fun tail!12733 (List!66153) List!66153)

(assert (=> b!6798889 (= c!1264099 (isEmpty!38411 (tail!12733 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6798890 () Bool)

(assert (=> b!6798890 (= e!4103223 e!4103221)))

(declare-fun c!1264102 () Bool)

(assert (=> b!6798890 (= c!1264102 (is-Cons!66029 (unfocusZipperList!2039 zl!343)))))

(declare-fun b!6798891 () Bool)

(declare-fun head!13648 (List!66153) Regex!16618)

(assert (=> b!6798891 (= e!4103222 (= lt!2447696 (head!13648 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6798892 () Bool)

(assert (=> b!6798892 (= e!4103221 (Union!16618 (h!72477 (unfocusZipperList!2039 zl!343)) (generalisedUnion!2462 (t!379882 (unfocusZipperList!2039 zl!343)))))))

(declare-fun b!6798893 () Bool)

(declare-fun isUnion!1414 (Regex!16618) Bool)

(assert (=> b!6798893 (= e!4103222 (isUnion!1414 lt!2447696))))

(assert (= (and d!2136367 res!2778460) b!6798884))

(assert (= (and d!2136367 c!1264100) b!6798887))

(assert (= (and d!2136367 (not c!1264100)) b!6798890))

(assert (= (and b!6798890 c!1264102) b!6798892))

(assert (= (and b!6798890 (not c!1264102)) b!6798886))

(assert (= (and d!2136367 res!2778459) b!6798885))

(assert (= (and b!6798885 c!1264101) b!6798888))

(assert (= (and b!6798885 (not c!1264101)) b!6798889))

(assert (= (and b!6798889 c!1264099) b!6798891))

(assert (= (and b!6798889 (not c!1264099)) b!6798893))

(declare-fun m!7545502 () Bool)

(assert (=> d!2136367 m!7545502))

(assert (=> d!2136367 m!7545150))

(declare-fun m!7545504 () Bool)

(assert (=> d!2136367 m!7545504))

(declare-fun m!7545506 () Bool)

(assert (=> b!6798892 m!7545506))

(assert (=> b!6798891 m!7545150))

(declare-fun m!7545508 () Bool)

(assert (=> b!6798891 m!7545508))

(assert (=> b!6798885 m!7545150))

(declare-fun m!7545510 () Bool)

(assert (=> b!6798885 m!7545510))

(declare-fun m!7545512 () Bool)

(assert (=> b!6798884 m!7545512))

(declare-fun m!7545514 () Bool)

(assert (=> b!6798893 m!7545514))

(assert (=> b!6798889 m!7545150))

(declare-fun m!7545516 () Bool)

(assert (=> b!6798889 m!7545516))

(assert (=> b!6798889 m!7545516))

(declare-fun m!7545518 () Bool)

(assert (=> b!6798889 m!7545518))

(declare-fun m!7545520 () Bool)

(assert (=> b!6798888 m!7545520))

(assert (=> b!6798464 d!2136367))

(declare-fun bs!1812084 () Bool)

(declare-fun d!2136371 () Bool)

(assert (= bs!1812084 (and d!2136371 b!6798465)))

(declare-fun lambda!383391 () Int)

(assert (=> bs!1812084 (= lambda!383391 lambda!383325)))

(declare-fun bs!1812085 () Bool)

(assert (= bs!1812085 (and d!2136371 d!2136309)))

(assert (=> bs!1812085 (= lambda!383391 lambda!383358)))

(declare-fun bs!1812086 () Bool)

(assert (= bs!1812086 (and d!2136371 d!2136325)))

(assert (=> bs!1812086 (= lambda!383391 lambda!383363)))

(declare-fun bs!1812087 () Bool)

(assert (= bs!1812087 (and d!2136371 d!2136367)))

(assert (=> bs!1812087 (= lambda!383391 lambda!383388)))

(declare-fun lt!2447703 () List!66153)

(assert (=> d!2136371 (forall!15810 lt!2447703 lambda!383391)))

(declare-fun e!4103228 () List!66153)

(assert (=> d!2136371 (= lt!2447703 e!4103228)))

(declare-fun c!1264105 () Bool)

(assert (=> d!2136371 (= c!1264105 (is-Cons!66031 zl!343))))

(assert (=> d!2136371 (= (unfocusZipperList!2039 zl!343) lt!2447703)))

(declare-fun b!6798898 () Bool)

(assert (=> b!6798898 (= e!4103228 (Cons!66029 (generalisedConcat!2215 (exprs!6502 (h!72479 zl!343))) (unfocusZipperList!2039 (t!379884 zl!343))))))

(declare-fun b!6798899 () Bool)

(assert (=> b!6798899 (= e!4103228 Nil!66029)))

(assert (= (and d!2136371 c!1264105) b!6798898))

(assert (= (and d!2136371 (not c!1264105)) b!6798899))

(declare-fun m!7545530 () Bool)

(assert (=> d!2136371 m!7545530))

(assert (=> b!6798898 m!7545080))

(declare-fun m!7545532 () Bool)

(assert (=> b!6798898 m!7545532))

(assert (=> b!6798464 d!2136371))

(declare-fun d!2136377 () Bool)

(declare-fun lt!2447704 () Regex!16618)

(assert (=> d!2136377 (validRegex!8354 lt!2447704)))

(assert (=> d!2136377 (= lt!2447704 (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))

(assert (=> d!2136377 (= (unfocusZipper!2360 (Cons!66031 lt!2447565 Nil!66031)) lt!2447704)))

(declare-fun bs!1812088 () Bool)

(assert (= bs!1812088 d!2136377))

(declare-fun m!7545534 () Bool)

(assert (=> bs!1812088 m!7545534))

(declare-fun m!7545536 () Bool)

(assert (=> bs!1812088 m!7545536))

(assert (=> bs!1812088 m!7545536))

(declare-fun m!7545538 () Bool)

(assert (=> bs!1812088 m!7545538))

(assert (=> b!6798445 d!2136377))

(declare-fun d!2136379 () Bool)

(declare-fun choose!50665 (Int) Bool)

(assert (=> d!2136379 (= (Exists!3686 lambda!383321) (choose!50665 lambda!383321))))

(declare-fun bs!1812089 () Bool)

(assert (= bs!1812089 d!2136379))

(declare-fun m!7545540 () Bool)

(assert (=> bs!1812089 m!7545540))

(assert (=> b!6798444 d!2136379))

(declare-fun d!2136381 () Bool)

(declare-fun isEmpty!38412 (Option!16505) Bool)

(assert (=> d!2136381 (= (isDefined!13208 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326)) (not (isEmpty!38412 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326))))))

(declare-fun bs!1812090 () Bool)

(assert (= bs!1812090 d!2136381))

(assert (=> bs!1812090 m!7545132))

(declare-fun m!7545542 () Bool)

(assert (=> bs!1812090 m!7545542))

(assert (=> b!6798444 d!2136381))

(declare-fun bs!1812091 () Bool)

(declare-fun d!2136383 () Bool)

(assert (= bs!1812091 (and d!2136383 b!6798731)))

(declare-fun lambda!383396 () Int)

(assert (=> bs!1812091 (not (= lambda!383396 lambda!383369))))

(declare-fun bs!1812092 () Bool)

(assert (= bs!1812092 (and d!2136383 b!6798444)))

(assert (=> bs!1812092 (not (= lambda!383396 lambda!383321))))

(assert (=> bs!1812092 (not (= lambda!383396 lambda!383322))))

(assert (=> bs!1812092 (= lambda!383396 lambda!383320)))

(declare-fun bs!1812094 () Bool)

(assert (= bs!1812094 (and d!2136383 b!6798734)))

(assert (=> bs!1812094 (not (= lambda!383396 lambda!383368))))

(declare-fun bs!1812096 () Bool)

(assert (= bs!1812096 (and d!2136383 b!6798794)))

(assert (=> bs!1812096 (not (= lambda!383396 lambda!383374))))

(declare-fun bs!1812097 () Bool)

(assert (= bs!1812097 (and d!2136383 b!6798797)))

(assert (=> bs!1812097 (not (= lambda!383396 lambda!383373))))

(assert (=> d!2136383 true))

(assert (=> d!2136383 true))

(assert (=> d!2136383 true))

(declare-fun lambda!383397 () Int)

(assert (=> bs!1812091 (= (and (= (reg!16947 r!7292) (regOne!33748 lt!2447563)) (= r!7292 (regTwo!33748 lt!2447563))) (= lambda!383397 lambda!383369))))

(assert (=> bs!1812092 (not (= lambda!383397 lambda!383321))))

(assert (=> bs!1812092 (= lambda!383397 lambda!383322)))

(assert (=> bs!1812092 (not (= lambda!383397 lambda!383320))))

(declare-fun bs!1812098 () Bool)

(assert (= bs!1812098 d!2136383))

(assert (=> bs!1812098 (not (= lambda!383397 lambda!383396))))

(assert (=> bs!1812094 (not (= lambda!383397 lambda!383368))))

(assert (=> bs!1812096 (= (and (= (reg!16947 r!7292) (regOne!33748 r!7292)) (= r!7292 (regTwo!33748 r!7292))) (= lambda!383397 lambda!383374))))

(assert (=> bs!1812097 (not (= lambda!383397 lambda!383373))))

(assert (=> d!2136383 true))

(assert (=> d!2136383 true))

(assert (=> d!2136383 true))

(assert (=> d!2136383 (= (Exists!3686 lambda!383396) (Exists!3686 lambda!383397))))

(declare-fun lt!2447707 () Unit!159927)

(declare-fun choose!50666 (Regex!16618 Regex!16618 List!66154) Unit!159927)

(assert (=> d!2136383 (= lt!2447707 (choose!50666 (reg!16947 r!7292) r!7292 s!2326))))

(assert (=> d!2136383 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136383 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2213 (reg!16947 r!7292) r!7292 s!2326) lt!2447707)))

(declare-fun m!7545560 () Bool)

(assert (=> bs!1812098 m!7545560))

(declare-fun m!7545562 () Bool)

(assert (=> bs!1812098 m!7545562))

(declare-fun m!7545564 () Bool)

(assert (=> bs!1812098 m!7545564))

(declare-fun m!7545566 () Bool)

(assert (=> bs!1812098 m!7545566))

(assert (=> b!6798444 d!2136383))

(declare-fun bs!1812104 () Bool)

(declare-fun d!2136393 () Bool)

(assert (= bs!1812104 (and d!2136393 b!6798731)))

(declare-fun lambda!383403 () Int)

(assert (=> bs!1812104 (not (= lambda!383403 lambda!383369))))

(declare-fun bs!1812105 () Bool)

(assert (= bs!1812105 (and d!2136393 b!6798444)))

(assert (=> bs!1812105 (not (= lambda!383403 lambda!383321))))

(assert (=> bs!1812105 (not (= lambda!383403 lambda!383322))))

(assert (=> bs!1812105 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383403 lambda!383320))))

(declare-fun bs!1812106 () Bool)

(assert (= bs!1812106 (and d!2136393 d!2136383)))

(assert (=> bs!1812106 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383403 lambda!383396))))

(declare-fun bs!1812107 () Bool)

(assert (= bs!1812107 (and d!2136393 b!6798734)))

(assert (=> bs!1812107 (not (= lambda!383403 lambda!383368))))

(assert (=> bs!1812106 (not (= lambda!383403 lambda!383397))))

(declare-fun bs!1812108 () Bool)

(assert (= bs!1812108 (and d!2136393 b!6798794)))

(assert (=> bs!1812108 (not (= lambda!383403 lambda!383374))))

(declare-fun bs!1812109 () Bool)

(assert (= bs!1812109 (and d!2136393 b!6798797)))

(assert (=> bs!1812109 (not (= lambda!383403 lambda!383373))))

(assert (=> d!2136393 true))

(assert (=> d!2136393 true))

(declare-fun lambda!383404 () Int)

(assert (=> bs!1812104 (not (= lambda!383404 lambda!383369))))

(assert (=> bs!1812105 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383404 lambda!383321))))

(assert (=> bs!1812105 (not (= lambda!383404 lambda!383322))))

(assert (=> bs!1812105 (not (= lambda!383404 lambda!383320))))

(assert (=> bs!1812106 (not (= lambda!383404 lambda!383396))))

(assert (=> bs!1812107 (= (and (= (reg!16947 r!7292) (reg!16947 lt!2447563)) (= (Star!16618 (reg!16947 r!7292)) lt!2447563)) (= lambda!383404 lambda!383368))))

(assert (=> bs!1812106 (not (= lambda!383404 lambda!383397))))

(assert (=> bs!1812109 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383404 lambda!383373))))

(assert (=> bs!1812108 (not (= lambda!383404 lambda!383374))))

(declare-fun bs!1812110 () Bool)

(assert (= bs!1812110 d!2136393))

(assert (=> bs!1812110 (not (= lambda!383404 lambda!383403))))

(assert (=> d!2136393 true))

(assert (=> d!2136393 true))

(assert (=> d!2136393 (= (Exists!3686 lambda!383403) (Exists!3686 lambda!383404))))

(declare-fun lt!2447714 () Unit!159927)

(declare-fun choose!50667 (Regex!16618 List!66154) Unit!159927)

(assert (=> d!2136393 (= lt!2447714 (choose!50667 (reg!16947 r!7292) s!2326))))

(assert (=> d!2136393 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136393 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!777 (reg!16947 r!7292) s!2326) lt!2447714)))

(declare-fun m!7545578 () Bool)

(assert (=> bs!1812110 m!7545578))

(declare-fun m!7545580 () Bool)

(assert (=> bs!1812110 m!7545580))

(declare-fun m!7545582 () Bool)

(assert (=> bs!1812110 m!7545582))

(assert (=> bs!1812110 m!7545566))

(assert (=> b!6798444 d!2136393))

(declare-fun d!2136401 () Bool)

(assert (=> d!2136401 (= (Exists!3686 lambda!383320) (choose!50665 lambda!383320))))

(declare-fun bs!1812111 () Bool)

(assert (= bs!1812111 d!2136401))

(declare-fun m!7545584 () Bool)

(assert (=> bs!1812111 m!7545584))

(assert (=> b!6798444 d!2136401))

(declare-fun d!2136403 () Bool)

(assert (=> d!2136403 (= (isEmpty!38407 s!2326) (is-Nil!66030 s!2326))))

(assert (=> b!6798444 d!2136403))

(declare-fun d!2136405 () Bool)

(assert (=> d!2136405 (= (Exists!3686 lambda!383322) (choose!50665 lambda!383322))))

(declare-fun bs!1812112 () Bool)

(assert (= bs!1812112 d!2136405))

(declare-fun m!7545586 () Bool)

(assert (=> bs!1812112 m!7545586))

(assert (=> b!6798444 d!2136405))

(declare-fun d!2136407 () Bool)

(declare-fun e!4103271 () Bool)

(assert (=> d!2136407 e!4103271))

(declare-fun res!2778497 () Bool)

(assert (=> d!2136407 (=> res!2778497 e!4103271)))

(declare-fun e!4103275 () Bool)

(assert (=> d!2136407 (= res!2778497 e!4103275)))

(declare-fun res!2778496 () Bool)

(assert (=> d!2136407 (=> (not res!2778496) (not e!4103275))))

(declare-fun lt!2447723 () Option!16505)

(assert (=> d!2136407 (= res!2778496 (isDefined!13208 lt!2447723))))

(declare-fun e!4103274 () Option!16505)

(assert (=> d!2136407 (= lt!2447723 e!4103274)))

(declare-fun c!1264129 () Bool)

(declare-fun e!4103272 () Bool)

(assert (=> d!2136407 (= c!1264129 e!4103272)))

(declare-fun res!2778498 () Bool)

(assert (=> d!2136407 (=> (not res!2778498) (not e!4103272))))

(assert (=> d!2136407 (= res!2778498 (matchR!8801 (reg!16947 r!7292) Nil!66030))))

(assert (=> d!2136407 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136407 (= (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326) lt!2447723)))

(declare-fun b!6798978 () Bool)

(declare-fun ++!14784 (List!66154 List!66154) List!66154)

(declare-fun get!22997 (Option!16505) tuple2!67186)

(assert (=> b!6798978 (= e!4103275 (= (++!14784 (_1!36896 (get!22997 lt!2447723)) (_2!36896 (get!22997 lt!2447723))) s!2326))))

(declare-fun b!6798979 () Bool)

(assert (=> b!6798979 (= e!4103274 (Some!16504 (tuple2!67187 Nil!66030 s!2326)))))

(declare-fun b!6798980 () Bool)

(declare-fun lt!2447722 () Unit!159927)

(declare-fun lt!2447721 () Unit!159927)

(assert (=> b!6798980 (= lt!2447722 lt!2447721)))

(assert (=> b!6798980 (= (++!14784 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2739 (List!66154 C!33506 List!66154 List!66154) Unit!159927)

(assert (=> b!6798980 (= lt!2447721 (lemmaMoveElementToOtherListKeepsConcatEq!2739 Nil!66030 (h!72478 s!2326) (t!379883 s!2326) s!2326))))

(declare-fun e!4103273 () Option!16505)

(assert (=> b!6798980 (= e!4103273 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326) s!2326))))

(declare-fun b!6798981 () Bool)

(assert (=> b!6798981 (= e!4103272 (matchR!8801 r!7292 s!2326))))

(declare-fun b!6798982 () Bool)

(declare-fun res!2778499 () Bool)

(assert (=> b!6798982 (=> (not res!2778499) (not e!4103275))))

(assert (=> b!6798982 (= res!2778499 (matchR!8801 r!7292 (_2!36896 (get!22997 lt!2447723))))))

(declare-fun b!6798983 () Bool)

(declare-fun res!2778495 () Bool)

(assert (=> b!6798983 (=> (not res!2778495) (not e!4103275))))

(assert (=> b!6798983 (= res!2778495 (matchR!8801 (reg!16947 r!7292) (_1!36896 (get!22997 lt!2447723))))))

(declare-fun b!6798984 () Bool)

(assert (=> b!6798984 (= e!4103274 e!4103273)))

(declare-fun c!1264128 () Bool)

(assert (=> b!6798984 (= c!1264128 (is-Nil!66030 s!2326))))

(declare-fun b!6798985 () Bool)

(assert (=> b!6798985 (= e!4103273 None!16504)))

(declare-fun b!6798986 () Bool)

(assert (=> b!6798986 (= e!4103271 (not (isDefined!13208 lt!2447723)))))

(assert (= (and d!2136407 res!2778498) b!6798981))

(assert (= (and d!2136407 c!1264129) b!6798979))

(assert (= (and d!2136407 (not c!1264129)) b!6798984))

(assert (= (and b!6798984 c!1264128) b!6798985))

(assert (= (and b!6798984 (not c!1264128)) b!6798980))

(assert (= (and d!2136407 res!2778496) b!6798983))

(assert (= (and b!6798983 res!2778495) b!6798982))

(assert (= (and b!6798982 res!2778499) b!6798978))

(assert (= (and d!2136407 (not res!2778497)) b!6798986))

(declare-fun m!7545588 () Bool)

(assert (=> b!6798978 m!7545588))

(declare-fun m!7545590 () Bool)

(assert (=> b!6798978 m!7545590))

(assert (=> b!6798981 m!7545104))

(assert (=> b!6798982 m!7545588))

(declare-fun m!7545592 () Bool)

(assert (=> b!6798982 m!7545592))

(declare-fun m!7545594 () Bool)

(assert (=> b!6798980 m!7545594))

(assert (=> b!6798980 m!7545594))

(declare-fun m!7545596 () Bool)

(assert (=> b!6798980 m!7545596))

(declare-fun m!7545598 () Bool)

(assert (=> b!6798980 m!7545598))

(assert (=> b!6798980 m!7545594))

(declare-fun m!7545600 () Bool)

(assert (=> b!6798980 m!7545600))

(assert (=> b!6798983 m!7545588))

(declare-fun m!7545602 () Bool)

(assert (=> b!6798983 m!7545602))

(declare-fun m!7545604 () Bool)

(assert (=> b!6798986 m!7545604))

(assert (=> d!2136407 m!7545604))

(declare-fun m!7545606 () Bool)

(assert (=> d!2136407 m!7545606))

(assert (=> d!2136407 m!7545566))

(assert (=> b!6798444 d!2136407))

(declare-fun bs!1812120 () Bool)

(declare-fun d!2136409 () Bool)

(assert (= bs!1812120 (and d!2136409 b!6798731)))

(declare-fun lambda!383407 () Int)

(assert (=> bs!1812120 (not (= lambda!383407 lambda!383369))))

(declare-fun bs!1812121 () Bool)

(assert (= bs!1812121 (and d!2136409 b!6798444)))

(assert (=> bs!1812121 (not (= lambda!383407 lambda!383321))))

(assert (=> bs!1812121 (not (= lambda!383407 lambda!383322))))

(declare-fun bs!1812122 () Bool)

(assert (= bs!1812122 (and d!2136409 d!2136383)))

(assert (=> bs!1812122 (= lambda!383407 lambda!383396)))

(declare-fun bs!1812123 () Bool)

(assert (= bs!1812123 (and d!2136409 b!6798734)))

(assert (=> bs!1812123 (not (= lambda!383407 lambda!383368))))

(assert (=> bs!1812122 (not (= lambda!383407 lambda!383397))))

(declare-fun bs!1812124 () Bool)

(assert (= bs!1812124 (and d!2136409 b!6798797)))

(assert (=> bs!1812124 (not (= lambda!383407 lambda!383373))))

(declare-fun bs!1812125 () Bool)

(assert (= bs!1812125 (and d!2136409 d!2136393)))

(assert (=> bs!1812125 (not (= lambda!383407 lambda!383404))))

(assert (=> bs!1812121 (= lambda!383407 lambda!383320)))

(declare-fun bs!1812127 () Bool)

(assert (= bs!1812127 (and d!2136409 b!6798794)))

(assert (=> bs!1812127 (not (= lambda!383407 lambda!383374))))

(assert (=> bs!1812125 (= (= r!7292 (Star!16618 (reg!16947 r!7292))) (= lambda!383407 lambda!383403))))

(assert (=> d!2136409 true))

(assert (=> d!2136409 true))

(assert (=> d!2136409 true))

(assert (=> d!2136409 (= (isDefined!13208 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326)) (Exists!3686 lambda!383407))))

(declare-fun lt!2447729 () Unit!159927)

(declare-fun choose!50668 (Regex!16618 Regex!16618 List!66154) Unit!159927)

(assert (=> d!2136409 (= lt!2447729 (choose!50668 (reg!16947 r!7292) r!7292 s!2326))))

(assert (=> d!2136409 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136409 (= (lemmaFindConcatSeparationEquivalentToExists!2683 (reg!16947 r!7292) r!7292 s!2326) lt!2447729)))

(declare-fun bs!1812128 () Bool)

(assert (= bs!1812128 d!2136409))

(declare-fun m!7545654 () Bool)

(assert (=> bs!1812128 m!7545654))

(assert (=> bs!1812128 m!7545132))

(assert (=> bs!1812128 m!7545566))

(declare-fun m!7545656 () Bool)

(assert (=> bs!1812128 m!7545656))

(assert (=> bs!1812128 m!7545132))

(assert (=> bs!1812128 m!7545136))

(assert (=> b!6798444 d!2136409))

(declare-fun d!2136433 () Bool)

(declare-fun lt!2447730 () Regex!16618)

(assert (=> d!2136433 (validRegex!8354 lt!2447730)))

(assert (=> d!2136433 (= lt!2447730 (generalisedUnion!2462 (unfocusZipperList!2039 zl!343)))))

(assert (=> d!2136433 (= (unfocusZipper!2360 zl!343) lt!2447730)))

(declare-fun bs!1812129 () Bool)

(assert (= bs!1812129 d!2136433))

(declare-fun m!7545658 () Bool)

(assert (=> bs!1812129 m!7545658))

(assert (=> bs!1812129 m!7545150))

(assert (=> bs!1812129 m!7545150))

(assert (=> bs!1812129 m!7545152))

(assert (=> b!6798449 d!2136433))

(declare-fun d!2136435 () Bool)

(declare-fun c!1264139 () Bool)

(assert (=> d!2136435 (= c!1264139 (isEmpty!38407 s!2326))))

(declare-fun e!4103290 () Bool)

(assert (=> d!2136435 (= (matchZipper!2604 z!1189 s!2326) e!4103290)))

(declare-fun b!6799012 () Bool)

(assert (=> b!6799012 (= e!4103290 (nullableZipper!2325 z!1189))))

(declare-fun b!6799013 () Bool)

(assert (=> b!6799013 (= e!4103290 (matchZipper!2604 (derivationStepZipper!2562 z!1189 (head!13647 s!2326)) (tail!12732 s!2326)))))

(assert (= (and d!2136435 c!1264139) b!6799012))

(assert (= (and d!2136435 (not c!1264139)) b!6799013))

(assert (=> d!2136435 m!7545124))

(declare-fun m!7545660 () Bool)

(assert (=> b!6799012 m!7545660))

(assert (=> b!6799013 m!7545314))

(assert (=> b!6799013 m!7545314))

(declare-fun m!7545662 () Bool)

(assert (=> b!6799013 m!7545662))

(assert (=> b!6799013 m!7545318))

(assert (=> b!6799013 m!7545662))

(assert (=> b!6799013 m!7545318))

(declare-fun m!7545664 () Bool)

(assert (=> b!6799013 m!7545664))

(assert (=> b!6798448 d!2136435))

(declare-fun b!6799014 () Bool)

(declare-fun e!4103295 () (Set Context!12004))

(assert (=> b!6799014 (= e!4103295 (set.insert lt!2447565 (as set.empty (Set Context!12004))))))

(declare-fun b!6799015 () Bool)

(declare-fun c!1264141 () Bool)

(declare-fun e!4103294 () Bool)

(assert (=> b!6799015 (= c!1264141 e!4103294)))

(declare-fun res!2778507 () Bool)

(assert (=> b!6799015 (=> (not res!2778507) (not e!4103294))))

(assert (=> b!6799015 (= res!2778507 (is-Concat!25463 (reg!16947 r!7292)))))

(declare-fun e!4103292 () (Set Context!12004))

(declare-fun e!4103291 () (Set Context!12004))

(assert (=> b!6799015 (= e!4103292 e!4103291)))

(declare-fun b!6799016 () Bool)

(assert (=> b!6799016 (= e!4103295 e!4103292)))

(declare-fun c!1264142 () Bool)

(assert (=> b!6799016 (= c!1264142 (is-Union!16618 (reg!16947 r!7292)))))

(declare-fun b!6799017 () Bool)

(declare-fun e!4103293 () (Set Context!12004))

(declare-fun call!617701 () (Set Context!12004))

(assert (=> b!6799017 (= e!4103293 call!617701)))

(declare-fun call!617700 () (Set Context!12004))

(declare-fun call!617703 () List!66153)

(declare-fun c!1264144 () Bool)

(declare-fun bm!617695 () Bool)

(assert (=> bm!617695 (= call!617700 (derivationStepZipperDown!1846 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))) (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703)) (h!72478 s!2326)))))

(declare-fun b!6799018 () Bool)

(declare-fun e!4103296 () (Set Context!12004))

(assert (=> b!6799018 (= e!4103296 call!617701)))

(declare-fun d!2136437 () Bool)

(declare-fun c!1264140 () Bool)

(assert (=> d!2136437 (= c!1264140 (and (is-ElementMatch!16618 (reg!16947 r!7292)) (= (c!1263993 (reg!16947 r!7292)) (h!72478 s!2326))))))

(assert (=> d!2136437 (= (derivationStepZipperDown!1846 (reg!16947 r!7292) lt!2447565 (h!72478 s!2326)) e!4103295)))

(declare-fun bm!617696 () Bool)

(declare-fun call!617705 () List!66153)

(assert (=> bm!617696 (= call!617703 call!617705)))

(declare-fun call!617702 () (Set Context!12004))

(declare-fun bm!617697 () Bool)

(assert (=> bm!617697 (= call!617702 (derivationStepZipperDown!1846 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))) (ite c!1264142 lt!2447565 (Context!12005 call!617705)) (h!72478 s!2326)))))

(declare-fun b!6799019 () Bool)

(assert (=> b!6799019 (= e!4103291 e!4103296)))

(assert (=> b!6799019 (= c!1264144 (is-Concat!25463 (reg!16947 r!7292)))))

(declare-fun b!6799020 () Bool)

(assert (=> b!6799020 (= e!4103292 (set.union call!617700 call!617702))))

(declare-fun bm!617698 () Bool)

(declare-fun call!617704 () (Set Context!12004))

(assert (=> bm!617698 (= call!617704 call!617700)))

(declare-fun bm!617699 () Bool)

(assert (=> bm!617699 (= call!617701 call!617704)))

(declare-fun b!6799021 () Bool)

(assert (=> b!6799021 (= e!4103294 (nullable!6597 (regOne!33748 (reg!16947 r!7292))))))

(declare-fun bm!617700 () Bool)

(assert (=> bm!617700 (= call!617705 ($colon$colon!2427 (exprs!6502 lt!2447565) (ite (or c!1264141 c!1264144) (regTwo!33748 (reg!16947 r!7292)) (reg!16947 r!7292))))))

(declare-fun b!6799022 () Bool)

(declare-fun c!1264143 () Bool)

(assert (=> b!6799022 (= c!1264143 (is-Star!16618 (reg!16947 r!7292)))))

(assert (=> b!6799022 (= e!4103296 e!4103293)))

(declare-fun b!6799023 () Bool)

(assert (=> b!6799023 (= e!4103293 (as set.empty (Set Context!12004)))))

(declare-fun b!6799024 () Bool)

(assert (=> b!6799024 (= e!4103291 (set.union call!617702 call!617704))))

(assert (= (and d!2136437 c!1264140) b!6799014))

(assert (= (and d!2136437 (not c!1264140)) b!6799016))

(assert (= (and b!6799016 c!1264142) b!6799020))

(assert (= (and b!6799016 (not c!1264142)) b!6799015))

(assert (= (and b!6799015 res!2778507) b!6799021))

(assert (= (and b!6799015 c!1264141) b!6799024))

(assert (= (and b!6799015 (not c!1264141)) b!6799019))

(assert (= (and b!6799019 c!1264144) b!6799018))

(assert (= (and b!6799019 (not c!1264144)) b!6799022))

(assert (= (and b!6799022 c!1264143) b!6799017))

(assert (= (and b!6799022 (not c!1264143)) b!6799023))

(assert (= (or b!6799018 b!6799017) bm!617696))

(assert (= (or b!6799018 b!6799017) bm!617699))

(assert (= (or b!6799024 bm!617696) bm!617700))

(assert (= (or b!6799024 bm!617699) bm!617698))

(assert (= (or b!6799020 b!6799024) bm!617697))

(assert (= (or b!6799020 bm!617698) bm!617695))

(declare-fun m!7545666 () Bool)

(assert (=> bm!617697 m!7545666))

(assert (=> b!6799014 m!7545160))

(declare-fun m!7545668 () Bool)

(assert (=> b!6799021 m!7545668))

(declare-fun m!7545670 () Bool)

(assert (=> bm!617700 m!7545670))

(declare-fun m!7545672 () Bool)

(assert (=> bm!617695 m!7545672))

(assert (=> b!6798456 d!2136437))

(declare-fun d!2136439 () Bool)

(declare-fun choose!50669 ((Set Context!12004) Int) (Set Context!12004))

(assert (=> d!2136439 (= (flatMap!2099 lt!2447560 lambda!383323) (choose!50669 lt!2447560 lambda!383323))))

(declare-fun bs!1812130 () Bool)

(assert (= bs!1812130 d!2136439))

(declare-fun m!7545674 () Bool)

(assert (=> bs!1812130 m!7545674))

(assert (=> b!6798456 d!2136439))

(declare-fun e!4103298 () (Set Context!12004))

(declare-fun b!6799025 () Bool)

(declare-fun call!617706 () (Set Context!12004))

(assert (=> b!6799025 (= e!4103298 (set.union call!617706 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (h!72478 s!2326))))))

(declare-fun b!6799026 () Bool)

(declare-fun e!4103297 () (Set Context!12004))

(assert (=> b!6799026 (= e!4103298 e!4103297)))

(declare-fun c!1264146 () Bool)

(assert (=> b!6799026 (= c!1264146 (is-Cons!66029 (exprs!6502 lt!2447568)))))

(declare-fun b!6799027 () Bool)

(assert (=> b!6799027 (= e!4103297 call!617706)))

(declare-fun b!6799028 () Bool)

(assert (=> b!6799028 (= e!4103297 (as set.empty (Set Context!12004)))))

(declare-fun b!6799029 () Bool)

(declare-fun e!4103299 () Bool)

(assert (=> b!6799029 (= e!4103299 (nullable!6597 (h!72477 (exprs!6502 lt!2447568))))))

(declare-fun d!2136441 () Bool)

(declare-fun c!1264145 () Bool)

(assert (=> d!2136441 (= c!1264145 e!4103299)))

(declare-fun res!2778508 () Bool)

(assert (=> d!2136441 (=> (not res!2778508) (not e!4103299))))

(assert (=> d!2136441 (= res!2778508 (is-Cons!66029 (exprs!6502 lt!2447568)))))

(assert (=> d!2136441 (= (derivationStepZipperUp!1772 lt!2447568 (h!72478 s!2326)) e!4103298)))

(declare-fun bm!617701 () Bool)

(assert (=> bm!617701 (= call!617706 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447568)) (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (h!72478 s!2326)))))

(assert (= (and d!2136441 res!2778508) b!6799029))

(assert (= (and d!2136441 c!1264145) b!6799025))

(assert (= (and d!2136441 (not c!1264145)) b!6799026))

(assert (= (and b!6799026 c!1264146) b!6799027))

(assert (= (and b!6799026 (not c!1264146)) b!6799028))

(assert (= (or b!6799025 b!6799027) bm!617701))

(declare-fun m!7545676 () Bool)

(assert (=> b!6799025 m!7545676))

(declare-fun m!7545678 () Bool)

(assert (=> b!6799029 m!7545678))

(declare-fun m!7545680 () Bool)

(assert (=> bm!617701 m!7545680))

(assert (=> b!6798456 d!2136441))

(declare-fun d!2136443 () Bool)

(declare-fun dynLambda!26366 (Int Context!12004) (Set Context!12004))

(assert (=> d!2136443 (= (flatMap!2099 lt!2447560 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447568))))

(declare-fun lt!2447733 () Unit!159927)

(declare-fun choose!50670 ((Set Context!12004) Context!12004 Int) Unit!159927)

(assert (=> d!2136443 (= lt!2447733 (choose!50670 lt!2447560 lt!2447568 lambda!383323))))

(assert (=> d!2136443 (= lt!2447560 (set.insert lt!2447568 (as set.empty (Set Context!12004))))))

(assert (=> d!2136443 (= (lemmaFlatMapOnSingletonSet!1625 lt!2447560 lt!2447568 lambda!383323) lt!2447733)))

(declare-fun b_lambda!256237 () Bool)

(assert (=> (not b_lambda!256237) (not d!2136443)))

(declare-fun bs!1812131 () Bool)

(assert (= bs!1812131 d!2136443))

(assert (=> bs!1812131 m!7545182))

(declare-fun m!7545682 () Bool)

(assert (=> bs!1812131 m!7545682))

(declare-fun m!7545684 () Bool)

(assert (=> bs!1812131 m!7545684))

(assert (=> bs!1812131 m!7545188))

(assert (=> b!6798456 d!2136443))

(declare-fun d!2136445 () Bool)

(assert (=> d!2136445 (= (flatMap!2099 z!1189 lambda!383323) (choose!50669 z!1189 lambda!383323))))

(declare-fun bs!1812132 () Bool)

(assert (= bs!1812132 d!2136445))

(declare-fun m!7545686 () Bool)

(assert (=> bs!1812132 m!7545686))

(assert (=> b!6798467 d!2136445))

(declare-fun call!617707 () (Set Context!12004))

(declare-fun b!6799030 () Bool)

(declare-fun e!4103301 () (Set Context!12004))

(assert (=> b!6799030 (= e!4103301 (set.union call!617707 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (h!72478 s!2326))))))

(declare-fun b!6799031 () Bool)

(declare-fun e!4103300 () (Set Context!12004))

(assert (=> b!6799031 (= e!4103301 e!4103300)))

(declare-fun c!1264148 () Bool)

(assert (=> b!6799031 (= c!1264148 (is-Cons!66029 (exprs!6502 (h!72479 zl!343))))))

(declare-fun b!6799032 () Bool)

(assert (=> b!6799032 (= e!4103300 call!617707)))

(declare-fun b!6799033 () Bool)

(assert (=> b!6799033 (= e!4103300 (as set.empty (Set Context!12004)))))

(declare-fun b!6799034 () Bool)

(declare-fun e!4103302 () Bool)

(assert (=> b!6799034 (= e!4103302 (nullable!6597 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun d!2136447 () Bool)

(declare-fun c!1264147 () Bool)

(assert (=> d!2136447 (= c!1264147 e!4103302)))

(declare-fun res!2778509 () Bool)

(assert (=> d!2136447 (=> (not res!2778509) (not e!4103302))))

(assert (=> d!2136447 (= res!2778509 (is-Cons!66029 (exprs!6502 (h!72479 zl!343))))))

(assert (=> d!2136447 (= (derivationStepZipperUp!1772 (h!72479 zl!343) (h!72478 s!2326)) e!4103301)))

(declare-fun bm!617702 () Bool)

(assert (=> bm!617702 (= call!617707 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (h!72479 zl!343))) (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (h!72478 s!2326)))))

(assert (= (and d!2136447 res!2778509) b!6799034))

(assert (= (and d!2136447 c!1264147) b!6799030))

(assert (= (and d!2136447 (not c!1264147)) b!6799031))

(assert (= (and b!6799031 c!1264148) b!6799032))

(assert (= (and b!6799031 (not c!1264148)) b!6799033))

(assert (= (or b!6799030 b!6799032) bm!617702))

(declare-fun m!7545688 () Bool)

(assert (=> b!6799030 m!7545688))

(declare-fun m!7545690 () Bool)

(assert (=> b!6799034 m!7545690))

(declare-fun m!7545692 () Bool)

(assert (=> bm!617702 m!7545692))

(assert (=> b!6798467 d!2136447))

(declare-fun d!2136449 () Bool)

(assert (=> d!2136449 (= (flatMap!2099 z!1189 lambda!383323) (dynLambda!26366 lambda!383323 (h!72479 zl!343)))))

(declare-fun lt!2447734 () Unit!159927)

(assert (=> d!2136449 (= lt!2447734 (choose!50670 z!1189 (h!72479 zl!343) lambda!383323))))

(assert (=> d!2136449 (= z!1189 (set.insert (h!72479 zl!343) (as set.empty (Set Context!12004))))))

(assert (=> d!2136449 (= (lemmaFlatMapOnSingletonSet!1625 z!1189 (h!72479 zl!343) lambda!383323) lt!2447734)))

(declare-fun b_lambda!256239 () Bool)

(assert (=> (not b_lambda!256239) (not d!2136449)))

(declare-fun bs!1812133 () Bool)

(assert (= bs!1812133 d!2136449))

(assert (=> bs!1812133 m!7545082))

(declare-fun m!7545694 () Bool)

(assert (=> bs!1812133 m!7545694))

(declare-fun m!7545696 () Bool)

(assert (=> bs!1812133 m!7545696))

(declare-fun m!7545698 () Bool)

(assert (=> bs!1812133 m!7545698))

(assert (=> b!6798467 d!2136449))

(declare-fun d!2136451 () Bool)

(assert (=> d!2136451 (= (flatMap!2099 lt!2447558 lambda!383323) (choose!50669 lt!2447558 lambda!383323))))

(declare-fun bs!1812134 () Bool)

(assert (= bs!1812134 d!2136451))

(declare-fun m!7545700 () Bool)

(assert (=> bs!1812134 m!7545700))

(assert (=> b!6798466 d!2136451))

(declare-fun bs!1812135 () Bool)

(declare-fun d!2136453 () Bool)

(assert (= bs!1812135 (and d!2136453 b!6798467)))

(declare-fun lambda!383408 () Int)

(assert (=> bs!1812135 (= lambda!383408 lambda!383323)))

(declare-fun bs!1812136 () Bool)

(assert (= bs!1812136 (and d!2136453 d!2136315)))

(assert (=> bs!1812136 (= lambda!383408 lambda!383361)))

(declare-fun bs!1812137 () Bool)

(assert (= bs!1812137 (and d!2136453 d!2136321)))

(assert (=> bs!1812137 (= lambda!383408 lambda!383362)))

(assert (=> d!2136453 true))

(assert (=> d!2136453 (= (derivationStepZipper!2562 lt!2447558 (h!72478 s!2326)) (flatMap!2099 lt!2447558 lambda!383408))))

(declare-fun bs!1812138 () Bool)

(assert (= bs!1812138 d!2136453))

(declare-fun m!7545702 () Bool)

(assert (=> bs!1812138 m!7545702))

(assert (=> b!6798466 d!2136453))

(declare-fun d!2136455 () Bool)

(assert (=> d!2136455 (= (flatMap!2099 lt!2447561 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447547))))

(declare-fun lt!2447735 () Unit!159927)

(assert (=> d!2136455 (= lt!2447735 (choose!50670 lt!2447561 lt!2447547 lambda!383323))))

(assert (=> d!2136455 (= lt!2447561 (set.insert lt!2447547 (as set.empty (Set Context!12004))))))

(assert (=> d!2136455 (= (lemmaFlatMapOnSingletonSet!1625 lt!2447561 lt!2447547 lambda!383323) lt!2447735)))

(declare-fun b_lambda!256241 () Bool)

(assert (=> (not b_lambda!256241) (not d!2136455)))

(declare-fun bs!1812139 () Bool)

(assert (= bs!1812139 d!2136455))

(assert (=> bs!1812139 m!7545164))

(declare-fun m!7545704 () Bool)

(assert (=> bs!1812139 m!7545704))

(declare-fun m!7545706 () Bool)

(assert (=> bs!1812139 m!7545706))

(assert (=> bs!1812139 m!7545168))

(assert (=> b!6798466 d!2136455))

(declare-fun b!6799035 () Bool)

(declare-fun call!617708 () (Set Context!12004))

(declare-fun e!4103304 () (Set Context!12004))

(assert (=> b!6799035 (= e!4103304 (set.union call!617708 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (h!72478 s!2326))))))

(declare-fun b!6799036 () Bool)

(declare-fun e!4103303 () (Set Context!12004))

(assert (=> b!6799036 (= e!4103304 e!4103303)))

(declare-fun c!1264150 () Bool)

(assert (=> b!6799036 (= c!1264150 (is-Cons!66029 (exprs!6502 lt!2447547)))))

(declare-fun b!6799037 () Bool)

(assert (=> b!6799037 (= e!4103303 call!617708)))

(declare-fun b!6799038 () Bool)

(assert (=> b!6799038 (= e!4103303 (as set.empty (Set Context!12004)))))

(declare-fun b!6799039 () Bool)

(declare-fun e!4103305 () Bool)

(assert (=> b!6799039 (= e!4103305 (nullable!6597 (h!72477 (exprs!6502 lt!2447547))))))

(declare-fun d!2136457 () Bool)

(declare-fun c!1264149 () Bool)

(assert (=> d!2136457 (= c!1264149 e!4103305)))

(declare-fun res!2778510 () Bool)

(assert (=> d!2136457 (=> (not res!2778510) (not e!4103305))))

(assert (=> d!2136457 (= res!2778510 (is-Cons!66029 (exprs!6502 lt!2447547)))))

(assert (=> d!2136457 (= (derivationStepZipperUp!1772 lt!2447547 (h!72478 s!2326)) e!4103304)))

(declare-fun bm!617703 () Bool)

(assert (=> bm!617703 (= call!617708 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447547)) (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (h!72478 s!2326)))))

(assert (= (and d!2136457 res!2778510) b!6799039))

(assert (= (and d!2136457 c!1264149) b!6799035))

(assert (= (and d!2136457 (not c!1264149)) b!6799036))

(assert (= (and b!6799036 c!1264150) b!6799037))

(assert (= (and b!6799036 (not c!1264150)) b!6799038))

(assert (= (or b!6799035 b!6799037) bm!617703))

(declare-fun m!7545708 () Bool)

(assert (=> b!6799035 m!7545708))

(declare-fun m!7545710 () Bool)

(assert (=> b!6799039 m!7545710))

(declare-fun m!7545712 () Bool)

(assert (=> bm!617703 m!7545712))

(assert (=> b!6798466 d!2136457))

(declare-fun e!4103307 () (Set Context!12004))

(declare-fun call!617709 () (Set Context!12004))

(declare-fun b!6799040 () Bool)

(assert (=> b!6799040 (= e!4103307 (set.union call!617709 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (h!72478 s!2326))))))

(declare-fun b!6799041 () Bool)

(declare-fun e!4103306 () (Set Context!12004))

(assert (=> b!6799041 (= e!4103307 e!4103306)))

(declare-fun c!1264152 () Bool)

(assert (=> b!6799041 (= c!1264152 (is-Cons!66029 (exprs!6502 lt!2447565)))))

(declare-fun b!6799042 () Bool)

(assert (=> b!6799042 (= e!4103306 call!617709)))

(declare-fun b!6799043 () Bool)

(assert (=> b!6799043 (= e!4103306 (as set.empty (Set Context!12004)))))

(declare-fun b!6799044 () Bool)

(declare-fun e!4103308 () Bool)

(assert (=> b!6799044 (= e!4103308 (nullable!6597 (h!72477 (exprs!6502 lt!2447565))))))

(declare-fun d!2136459 () Bool)

(declare-fun c!1264151 () Bool)

(assert (=> d!2136459 (= c!1264151 e!4103308)))

(declare-fun res!2778511 () Bool)

(assert (=> d!2136459 (=> (not res!2778511) (not e!4103308))))

(assert (=> d!2136459 (= res!2778511 (is-Cons!66029 (exprs!6502 lt!2447565)))))

(assert (=> d!2136459 (= (derivationStepZipperUp!1772 lt!2447565 (h!72478 s!2326)) e!4103307)))

(declare-fun bm!617704 () Bool)

(assert (=> bm!617704 (= call!617709 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447565)) (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (h!72478 s!2326)))))

(assert (= (and d!2136459 res!2778511) b!6799044))

(assert (= (and d!2136459 c!1264151) b!6799040))

(assert (= (and d!2136459 (not c!1264151)) b!6799041))

(assert (= (and b!6799041 c!1264152) b!6799042))

(assert (= (and b!6799041 (not c!1264152)) b!6799043))

(assert (= (or b!6799040 b!6799042) bm!617704))

(declare-fun m!7545714 () Bool)

(assert (=> b!6799040 m!7545714))

(declare-fun m!7545716 () Bool)

(assert (=> b!6799044 m!7545716))

(declare-fun m!7545718 () Bool)

(assert (=> bm!617704 m!7545718))

(assert (=> b!6798466 d!2136459))

(declare-fun d!2136461 () Bool)

(assert (=> d!2136461 (= (flatMap!2099 lt!2447558 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447565))))

(declare-fun lt!2447738 () Unit!159927)

(assert (=> d!2136461 (= lt!2447738 (choose!50670 lt!2447558 lt!2447565 lambda!383323))))

(assert (=> d!2136461 (= lt!2447558 (set.insert lt!2447565 (as set.empty (Set Context!12004))))))

(assert (=> d!2136461 (= (lemmaFlatMapOnSingletonSet!1625 lt!2447558 lt!2447565 lambda!383323) lt!2447738)))

(declare-fun b_lambda!256243 () Bool)

(assert (=> (not b_lambda!256243) (not d!2136461)))

(declare-fun bs!1812140 () Bool)

(assert (= bs!1812140 d!2136461))

(assert (=> bs!1812140 m!7545156))

(declare-fun m!7545720 () Bool)

(assert (=> bs!1812140 m!7545720))

(declare-fun m!7545722 () Bool)

(assert (=> bs!1812140 m!7545722))

(assert (=> bs!1812140 m!7545160))

(assert (=> b!6798466 d!2136461))

(declare-fun d!2136463 () Bool)

(assert (=> d!2136463 (= (flatMap!2099 lt!2447561 lambda!383323) (choose!50669 lt!2447561 lambda!383323))))

(declare-fun bs!1812141 () Bool)

(assert (= bs!1812141 d!2136463))

(declare-fun m!7545724 () Bool)

(assert (=> bs!1812141 m!7545724))

(assert (=> b!6798466 d!2136463))

(declare-fun bs!1812142 () Bool)

(declare-fun d!2136465 () Bool)

(assert (= bs!1812142 (and d!2136465 d!2136325)))

(declare-fun lambda!383415 () Int)

(assert (=> bs!1812142 (= lambda!383415 lambda!383363)))

(declare-fun bs!1812143 () Bool)

(assert (= bs!1812143 (and d!2136465 d!2136309)))

(assert (=> bs!1812143 (= lambda!383415 lambda!383358)))

(declare-fun bs!1812144 () Bool)

(assert (= bs!1812144 (and d!2136465 d!2136371)))

(assert (=> bs!1812144 (= lambda!383415 lambda!383391)))

(declare-fun bs!1812145 () Bool)

(assert (= bs!1812145 (and d!2136465 b!6798465)))

(assert (=> bs!1812145 (= lambda!383415 lambda!383325)))

(declare-fun bs!1812146 () Bool)

(assert (= bs!1812146 (and d!2136465 d!2136367)))

(assert (=> bs!1812146 (= lambda!383415 lambda!383388)))

(declare-fun b!6799073 () Bool)

(declare-fun e!4103327 () Regex!16618)

(assert (=> b!6799073 (= e!4103327 (h!72477 (exprs!6502 (h!72479 zl!343))))))

(declare-fun b!6799075 () Bool)

(declare-fun e!4103330 () Bool)

(assert (=> b!6799075 (= e!4103330 (isEmpty!38411 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799076 () Bool)

(declare-fun e!4103328 () Regex!16618)

(assert (=> b!6799076 (= e!4103327 e!4103328)))

(declare-fun c!1264164 () Bool)

(assert (=> b!6799076 (= c!1264164 (is-Cons!66029 (exprs!6502 (h!72479 zl!343))))))

(declare-fun b!6799077 () Bool)

(declare-fun e!4103326 () Bool)

(declare-fun lt!2447742 () Regex!16618)

(declare-fun isEmptyExpr!1977 (Regex!16618) Bool)

(assert (=> b!6799077 (= e!4103326 (isEmptyExpr!1977 lt!2447742))))

(declare-fun b!6799078 () Bool)

(assert (=> b!6799078 (= e!4103328 EmptyExpr!16618)))

(declare-fun b!6799079 () Bool)

(declare-fun e!4103329 () Bool)

(assert (=> b!6799079 (= e!4103326 e!4103329)))

(declare-fun c!1264162 () Bool)

(assert (=> b!6799079 (= c!1264162 (isEmpty!38411 (tail!12733 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799080 () Bool)

(assert (=> b!6799080 (= e!4103328 (Concat!25463 (h!72477 (exprs!6502 (h!72479 zl!343))) (generalisedConcat!2215 (t!379882 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun e!4103325 () Bool)

(assert (=> d!2136465 e!4103325))

(declare-fun res!2778524 () Bool)

(assert (=> d!2136465 (=> (not res!2778524) (not e!4103325))))

(assert (=> d!2136465 (= res!2778524 (validRegex!8354 lt!2447742))))

(assert (=> d!2136465 (= lt!2447742 e!4103327)))

(declare-fun c!1264163 () Bool)

(assert (=> d!2136465 (= c!1264163 e!4103330)))

(declare-fun res!2778525 () Bool)

(assert (=> d!2136465 (=> (not res!2778525) (not e!4103330))))

(assert (=> d!2136465 (= res!2778525 (is-Cons!66029 (exprs!6502 (h!72479 zl!343))))))

(assert (=> d!2136465 (forall!15810 (exprs!6502 (h!72479 zl!343)) lambda!383415)))

(assert (=> d!2136465 (= (generalisedConcat!2215 (exprs!6502 (h!72479 zl!343))) lt!2447742)))

(declare-fun b!6799074 () Bool)

(assert (=> b!6799074 (= e!4103329 (= lt!2447742 (head!13648 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799081 () Bool)

(assert (=> b!6799081 (= e!4103325 e!4103326)))

(declare-fun c!1264161 () Bool)

(assert (=> b!6799081 (= c!1264161 (isEmpty!38411 (exprs!6502 (h!72479 zl!343))))))

(declare-fun b!6799082 () Bool)

(declare-fun isConcat!1500 (Regex!16618) Bool)

(assert (=> b!6799082 (= e!4103329 (isConcat!1500 lt!2447742))))

(assert (= (and d!2136465 res!2778525) b!6799075))

(assert (= (and d!2136465 c!1264163) b!6799073))

(assert (= (and d!2136465 (not c!1264163)) b!6799076))

(assert (= (and b!6799076 c!1264164) b!6799080))

(assert (= (and b!6799076 (not c!1264164)) b!6799078))

(assert (= (and d!2136465 res!2778524) b!6799081))

(assert (= (and b!6799081 c!1264161) b!6799077))

(assert (= (and b!6799081 (not c!1264161)) b!6799079))

(assert (= (and b!6799079 c!1264162) b!6799074))

(assert (= (and b!6799079 (not c!1264162)) b!6799082))

(declare-fun m!7545726 () Bool)

(assert (=> b!6799080 m!7545726))

(declare-fun m!7545728 () Bool)

(assert (=> b!6799081 m!7545728))

(declare-fun m!7545730 () Bool)

(assert (=> b!6799079 m!7545730))

(assert (=> b!6799079 m!7545730))

(declare-fun m!7545732 () Bool)

(assert (=> b!6799079 m!7545732))

(declare-fun m!7545734 () Bool)

(assert (=> b!6799077 m!7545734))

(declare-fun m!7545736 () Bool)

(assert (=> d!2136465 m!7545736))

(declare-fun m!7545738 () Bool)

(assert (=> d!2136465 m!7545738))

(declare-fun m!7545740 () Bool)

(assert (=> b!6799082 m!7545740))

(declare-fun m!7545742 () Bool)

(assert (=> b!6799074 m!7545742))

(declare-fun m!7545744 () Bool)

(assert (=> b!6799075 m!7545744))

(assert (=> b!6798447 d!2136465))

(declare-fun b!6799087 () Bool)

(declare-fun e!4103333 () Bool)

(declare-fun tp!1861598 () Bool)

(assert (=> b!6799087 (= e!4103333 (and tp_is_empty!42489 tp!1861598))))

(assert (=> b!6798460 (= tp!1861565 e!4103333)))

(assert (= (and b!6798460 (is-Cons!66030 (t!379883 s!2326))) b!6799087))

(declare-fun b!6799099 () Bool)

(declare-fun e!4103336 () Bool)

(declare-fun tp!1861609 () Bool)

(declare-fun tp!1861610 () Bool)

(assert (=> b!6799099 (= e!4103336 (and tp!1861609 tp!1861610))))

(declare-fun b!6799098 () Bool)

(assert (=> b!6799098 (= e!4103336 tp_is_empty!42489)))

(declare-fun b!6799100 () Bool)

(declare-fun tp!1861613 () Bool)

(assert (=> b!6799100 (= e!4103336 tp!1861613)))

(assert (=> b!6798470 (= tp!1861560 e!4103336)))

(declare-fun b!6799101 () Bool)

(declare-fun tp!1861611 () Bool)

(declare-fun tp!1861612 () Bool)

(assert (=> b!6799101 (= e!4103336 (and tp!1861611 tp!1861612))))

(assert (= (and b!6798470 (is-ElementMatch!16618 (reg!16947 r!7292))) b!6799098))

(assert (= (and b!6798470 (is-Concat!25463 (reg!16947 r!7292))) b!6799099))

(assert (= (and b!6798470 (is-Star!16618 (reg!16947 r!7292))) b!6799100))

(assert (= (and b!6798470 (is-Union!16618 (reg!16947 r!7292))) b!6799101))

(declare-fun b!6799106 () Bool)

(declare-fun e!4103339 () Bool)

(declare-fun tp!1861618 () Bool)

(declare-fun tp!1861619 () Bool)

(assert (=> b!6799106 (= e!4103339 (and tp!1861618 tp!1861619))))

(assert (=> b!6798468 (= tp!1861562 e!4103339)))

(assert (= (and b!6798468 (is-Cons!66029 (exprs!6502 (h!72479 zl!343)))) b!6799106))

(declare-fun b!6799114 () Bool)

(declare-fun e!4103345 () Bool)

(declare-fun tp!1861624 () Bool)

(assert (=> b!6799114 (= e!4103345 tp!1861624)))

(declare-fun tp!1861625 () Bool)

(declare-fun e!4103344 () Bool)

(declare-fun b!6799113 () Bool)

(assert (=> b!6799113 (= e!4103344 (and (inv!84793 (h!72479 (t!379884 zl!343))) e!4103345 tp!1861625))))

(assert (=> b!6798463 (= tp!1861561 e!4103344)))

(assert (= b!6799113 b!6799114))

(assert (= (and b!6798463 (is-Cons!66031 (t!379884 zl!343))) b!6799113))

(declare-fun m!7545754 () Bool)

(assert (=> b!6799113 m!7545754))

(declare-fun b!6799116 () Bool)

(declare-fun e!4103346 () Bool)

(declare-fun tp!1861626 () Bool)

(declare-fun tp!1861627 () Bool)

(assert (=> b!6799116 (= e!4103346 (and tp!1861626 tp!1861627))))

(declare-fun b!6799115 () Bool)

(assert (=> b!6799115 (= e!4103346 tp_is_empty!42489)))

(declare-fun b!6799117 () Bool)

(declare-fun tp!1861630 () Bool)

(assert (=> b!6799117 (= e!4103346 tp!1861630)))

(assert (=> b!6798462 (= tp!1861559 e!4103346)))

(declare-fun b!6799118 () Bool)

(declare-fun tp!1861628 () Bool)

(declare-fun tp!1861629 () Bool)

(assert (=> b!6799118 (= e!4103346 (and tp!1861628 tp!1861629))))

(assert (= (and b!6798462 (is-ElementMatch!16618 (regOne!33749 r!7292))) b!6799115))

(assert (= (and b!6798462 (is-Concat!25463 (regOne!33749 r!7292))) b!6799116))

(assert (= (and b!6798462 (is-Star!16618 (regOne!33749 r!7292))) b!6799117))

(assert (= (and b!6798462 (is-Union!16618 (regOne!33749 r!7292))) b!6799118))

(declare-fun b!6799120 () Bool)

(declare-fun e!4103347 () Bool)

(declare-fun tp!1861631 () Bool)

(declare-fun tp!1861632 () Bool)

(assert (=> b!6799120 (= e!4103347 (and tp!1861631 tp!1861632))))

(declare-fun b!6799119 () Bool)

(assert (=> b!6799119 (= e!4103347 tp_is_empty!42489)))

(declare-fun b!6799121 () Bool)

(declare-fun tp!1861635 () Bool)

(assert (=> b!6799121 (= e!4103347 tp!1861635)))

(assert (=> b!6798462 (= tp!1861557 e!4103347)))

(declare-fun b!6799122 () Bool)

(declare-fun tp!1861633 () Bool)

(declare-fun tp!1861634 () Bool)

(assert (=> b!6799122 (= e!4103347 (and tp!1861633 tp!1861634))))

(assert (= (and b!6798462 (is-ElementMatch!16618 (regTwo!33749 r!7292))) b!6799119))

(assert (= (and b!6798462 (is-Concat!25463 (regTwo!33749 r!7292))) b!6799120))

(assert (= (and b!6798462 (is-Star!16618 (regTwo!33749 r!7292))) b!6799121))

(assert (= (and b!6798462 (is-Union!16618 (regTwo!33749 r!7292))) b!6799122))

(declare-fun b!6799123 () Bool)

(declare-fun e!4103348 () Bool)

(declare-fun tp!1861636 () Bool)

(declare-fun tp!1861637 () Bool)

(assert (=> b!6799123 (= e!4103348 (and tp!1861636 tp!1861637))))

(assert (=> b!6798457 (= tp!1861564 e!4103348)))

(assert (= (and b!6798457 (is-Cons!66029 (exprs!6502 setElem!46586))) b!6799123))

(declare-fun b!6799125 () Bool)

(declare-fun e!4103349 () Bool)

(declare-fun tp!1861638 () Bool)

(declare-fun tp!1861639 () Bool)

(assert (=> b!6799125 (= e!4103349 (and tp!1861638 tp!1861639))))

(declare-fun b!6799124 () Bool)

(assert (=> b!6799124 (= e!4103349 tp_is_empty!42489)))

(declare-fun b!6799126 () Bool)

(declare-fun tp!1861642 () Bool)

(assert (=> b!6799126 (= e!4103349 tp!1861642)))

(assert (=> b!6798442 (= tp!1861558 e!4103349)))

(declare-fun b!6799127 () Bool)

(declare-fun tp!1861640 () Bool)

(declare-fun tp!1861641 () Bool)

(assert (=> b!6799127 (= e!4103349 (and tp!1861640 tp!1861641))))

(assert (= (and b!6798442 (is-ElementMatch!16618 (regOne!33748 r!7292))) b!6799124))

(assert (= (and b!6798442 (is-Concat!25463 (regOne!33748 r!7292))) b!6799125))

(assert (= (and b!6798442 (is-Star!16618 (regOne!33748 r!7292))) b!6799126))

(assert (= (and b!6798442 (is-Union!16618 (regOne!33748 r!7292))) b!6799127))

(declare-fun b!6799129 () Bool)

(declare-fun e!4103350 () Bool)

(declare-fun tp!1861643 () Bool)

(declare-fun tp!1861644 () Bool)

(assert (=> b!6799129 (= e!4103350 (and tp!1861643 tp!1861644))))

(declare-fun b!6799128 () Bool)

(assert (=> b!6799128 (= e!4103350 tp_is_empty!42489)))

(declare-fun b!6799130 () Bool)

(declare-fun tp!1861647 () Bool)

(assert (=> b!6799130 (= e!4103350 tp!1861647)))

(assert (=> b!6798442 (= tp!1861563 e!4103350)))

(declare-fun b!6799131 () Bool)

(declare-fun tp!1861645 () Bool)

(declare-fun tp!1861646 () Bool)

(assert (=> b!6799131 (= e!4103350 (and tp!1861645 tp!1861646))))

(assert (= (and b!6798442 (is-ElementMatch!16618 (regTwo!33748 r!7292))) b!6799128))

(assert (= (and b!6798442 (is-Concat!25463 (regTwo!33748 r!7292))) b!6799129))

(assert (= (and b!6798442 (is-Star!16618 (regTwo!33748 r!7292))) b!6799130))

(assert (= (and b!6798442 (is-Union!16618 (regTwo!33748 r!7292))) b!6799131))

(declare-fun condSetEmpty!46592 () Bool)

(assert (=> setNonEmpty!46586 (= condSetEmpty!46592 (= setRest!46586 (as set.empty (Set Context!12004))))))

(declare-fun setRes!46592 () Bool)

(assert (=> setNonEmpty!46586 (= tp!1861556 setRes!46592)))

(declare-fun setIsEmpty!46592 () Bool)

(assert (=> setIsEmpty!46592 setRes!46592))

(declare-fun setNonEmpty!46592 () Bool)

(declare-fun setElem!46592 () Context!12004)

(declare-fun tp!1861653 () Bool)

(declare-fun e!4103353 () Bool)

(assert (=> setNonEmpty!46592 (= setRes!46592 (and tp!1861653 (inv!84793 setElem!46592) e!4103353))))

(declare-fun setRest!46592 () (Set Context!12004))

(assert (=> setNonEmpty!46592 (= setRest!46586 (set.union (set.insert setElem!46592 (as set.empty (Set Context!12004))) setRest!46592))))

(declare-fun b!6799136 () Bool)

(declare-fun tp!1861652 () Bool)

(assert (=> b!6799136 (= e!4103353 tp!1861652)))

(assert (= (and setNonEmpty!46586 condSetEmpty!46592) setIsEmpty!46592))

(assert (= (and setNonEmpty!46586 (not condSetEmpty!46592)) setNonEmpty!46592))

(assert (= setNonEmpty!46592 b!6799136))

(declare-fun m!7545756 () Bool)

(assert (=> setNonEmpty!46592 m!7545756))

(declare-fun b_lambda!256245 () Bool)

(assert (= b_lambda!256241 (or b!6798467 b_lambda!256245)))

(declare-fun bs!1812149 () Bool)

(declare-fun d!2136469 () Bool)

(assert (= bs!1812149 (and d!2136469 b!6798467)))

(assert (=> bs!1812149 (= (dynLambda!26366 lambda!383323 lt!2447547) (derivationStepZipperUp!1772 lt!2447547 (h!72478 s!2326)))))

(assert (=> bs!1812149 m!7545158))

(assert (=> d!2136455 d!2136469))

(declare-fun b_lambda!256247 () Bool)

(assert (= b_lambda!256227 (or b!6798465 b_lambda!256247)))

(declare-fun bs!1812150 () Bool)

(declare-fun d!2136471 () Bool)

(assert (= bs!1812150 (and d!2136471 b!6798465)))

(declare-fun lt!2447743 () Unit!159927)

(assert (=> bs!1812150 (= lt!2447743 (lemmaConcatPreservesForall!447 (exprs!6502 lt!2447547) lt!2447567 lambda!383325))))

(assert (=> bs!1812150 (= (dynLambda!26365 lambda!383324 lt!2447547) (Context!12005 (++!14782 (exprs!6502 lt!2447547) lt!2447567)))))

(declare-fun m!7545758 () Bool)

(assert (=> bs!1812150 m!7545758))

(declare-fun m!7545760 () Bool)

(assert (=> bs!1812150 m!7545760))

(assert (=> d!2136353 d!2136471))

(declare-fun b_lambda!256249 () Bool)

(assert (= b_lambda!256243 (or b!6798467 b_lambda!256249)))

(declare-fun bs!1812151 () Bool)

(declare-fun d!2136473 () Bool)

(assert (= bs!1812151 (and d!2136473 b!6798467)))

(assert (=> bs!1812151 (= (dynLambda!26366 lambda!383323 lt!2447565) (derivationStepZipperUp!1772 lt!2447565 (h!72478 s!2326)))))

(assert (=> bs!1812151 m!7545162))

(assert (=> d!2136461 d!2136473))

(declare-fun b_lambda!256251 () Bool)

(assert (= b_lambda!256239 (or b!6798467 b_lambda!256251)))

(declare-fun bs!1812152 () Bool)

(declare-fun d!2136475 () Bool)

(assert (= bs!1812152 (and d!2136475 b!6798467)))

(assert (=> bs!1812152 (= (dynLambda!26366 lambda!383323 (h!72479 zl!343)) (derivationStepZipperUp!1772 (h!72479 zl!343) (h!72478 s!2326)))))

(assert (=> bs!1812152 m!7545084))

(assert (=> d!2136449 d!2136475))

(declare-fun b_lambda!256253 () Bool)

(assert (= b_lambda!256237 (or b!6798467 b_lambda!256253)))

(declare-fun bs!1812153 () Bool)

(declare-fun d!2136477 () Bool)

(assert (= bs!1812153 (and d!2136477 b!6798467)))

(assert (=> bs!1812153 (= (dynLambda!26366 lambda!383323 lt!2447568) (derivationStepZipperUp!1772 lt!2447568 (h!72478 s!2326)))))

(assert (=> bs!1812153 m!7545186))

(assert (=> d!2136443 d!2136477))

(push 1)

(assert (not b!6798784))

(assert (not bm!617667))

(assert (not b!6798830))

(assert (not b!6798817))

(assert (not b!6799122))

(assert (not b!6798617))

(assert (not b!6799021))

(assert (not bm!617702))

(assert (not b!6798885))

(assert (not d!2136351))

(assert (not d!2136321))

(assert (not b!6799075))

(assert (not b!6798982))

(assert (not b!6798732))

(assert (not d!2136377))

(assert (not b!6799044))

(assert (not b_lambda!256253))

(assert (not b!6799079))

(assert (not b!6798986))

(assert (not d!2136405))

(assert (not b!6798811))

(assert (not b!6798889))

(assert (not bs!1812152))

(assert (not d!2136349))

(assert (not d!2136365))

(assert (not d!2136455))

(assert (not bm!617695))

(assert (not d!2136311))

(assert (not d!2136363))

(assert (not d!2136463))

(assert (not bm!617697))

(assert (not d!2136367))

(assert (not bm!617663))

(assert (not b!6799118))

(assert (not b!6799126))

(assert (not b!6798892))

(assert (not b!6799082))

(assert (not b!6799030))

(assert (not d!2136383))

(assert (not d!2136335))

(assert (not d!2136451))

(assert (not b!6798649))

(assert (not b!6798815))

(assert (not b!6798615))

(assert (not b!6799136))

(assert (not d!2136453))

(assert (not b!6799113))

(assert (not b!6798980))

(assert (not d!2136461))

(assert (not b!6799029))

(assert (not b!6798893))

(assert (not b!6798805))

(assert tp_is_empty!42489)

(assert (not b!6799130))

(assert (not b!6798790))

(assert (not d!2136361))

(assert (not d!2136433))

(assert (not b!6799127))

(assert (not b!6798983))

(assert (not d!2136381))

(assert (not b!6798613))

(assert (not bm!617649))

(assert (not b!6799116))

(assert (not bm!617643))

(assert (not b!6799125))

(assert (not d!2136439))

(assert (not b!6799114))

(assert (not bm!617704))

(assert (not d!2136309))

(assert (not b_lambda!256249))

(assert (not d!2136323))

(assert (not d!2136303))

(assert (not b!6799012))

(assert (not b!6798781))

(assert (not b!6798735))

(assert (not b!6799035))

(assert (not b!6798898))

(assert (not d!2136329))

(assert (not bm!617657))

(assert (not d!2136359))

(assert (not bm!617656))

(assert (not b!6798808))

(assert (not setNonEmpty!46592))

(assert (not b_lambda!256247))

(assert (not d!2136313))

(assert (not bs!1812149))

(assert (not d!2136307))

(assert (not b!6799087))

(assert (not d!2136445))

(assert (not b!6798981))

(assert (not b!6799039))

(assert (not b!6799100))

(assert (not b!6798778))

(assert (not bm!617641))

(assert (not b!6798978))

(assert (not d!2136409))

(assert (not b!6798795))

(assert (not b!6798691))

(assert (not b!6798888))

(assert (not d!2136371))

(assert (not b!6799117))

(assert (not b!6799025))

(assert (not b!6799080))

(assert (not b!6798884))

(assert (not b!6799129))

(assert (not b!6799123))

(assert (not bm!617664))

(assert (not b!6799106))

(assert (not d!2136401))

(assert (not d!2136353))

(assert (not b!6798663))

(assert (not b!6798798))

(assert (not d!2136379))

(assert (not bm!617701))

(assert (not d!2136449))

(assert (not bm!617668))

(assert (not b!6799099))

(assert (not b!6798891))

(assert (not d!2136435))

(assert (not bm!617700))

(assert (not b!6799131))

(assert (not d!2136465))

(assert (not d!2136315))

(assert (not b!6799101))

(assert (not b!6798788))

(assert (not b_lambda!256245))

(assert (not bs!1812150))

(assert (not b!6799034))

(assert (not b!6799077))

(assert (not b!6798667))

(assert (not b!6799081))

(assert (not bs!1812151))

(assert (not b!6798612))

(assert (not b_lambda!256251))

(assert (not bm!617703))

(assert (not b!6798829))

(assert (not b!6798777))

(assert (not d!2136443))

(assert (not b!6798804))

(assert (not d!2136341))

(assert (not b!6798697))

(assert (not b!6799013))

(assert (not b!6799121))

(assert (not bs!1812153))

(assert (not b!6799120))

(assert (not bm!617669))

(assert (not b!6799040))

(assert (not d!2136393))

(assert (not b!6799074))

(assert (not b!6798614))

(assert (not d!2136407))

(assert (not bm!617670))

(assert (not bm!617646))

(assert (not b!6798616))

(assert (not d!2136325))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2136539 () Bool)

(assert (=> d!2136539 true))

(assert (=> d!2136539 true))

(declare-fun res!2778643 () Bool)

(assert (=> d!2136539 (= (choose!50665 lambda!383320) res!2778643)))

(assert (=> d!2136401 d!2136539))

(declare-fun d!2136541 () Bool)

(assert (=> d!2136541 (= (isEmpty!38407 (t!379883 s!2326)) (is-Nil!66030 (t!379883 s!2326)))))

(assert (=> d!2136313 d!2136541))

(declare-fun d!2136543 () Bool)

(assert (=> d!2136543 (forall!15810 (++!14782 (exprs!6502 lt!2447547) lt!2447567) lambda!383325)))

(declare-fun lt!2447789 () Unit!159927)

(assert (=> d!2136543 (= lt!2447789 (choose!50663 (exprs!6502 lt!2447547) lt!2447567 lambda!383325))))

(assert (=> d!2136543 (forall!15810 (exprs!6502 lt!2447547) lambda!383325)))

(assert (=> d!2136543 (= (lemmaConcatPreservesForall!447 (exprs!6502 lt!2447547) lt!2447567 lambda!383325) lt!2447789)))

(declare-fun bs!1812214 () Bool)

(assert (= bs!1812214 d!2136543))

(assert (=> bs!1812214 m!7545760))

(assert (=> bs!1812214 m!7545760))

(declare-fun m!7545932 () Bool)

(assert (=> bs!1812214 m!7545932))

(declare-fun m!7545934 () Bool)

(assert (=> bs!1812214 m!7545934))

(declare-fun m!7545936 () Bool)

(assert (=> bs!1812214 m!7545936))

(assert (=> bs!1812150 d!2136543))

(declare-fun b!6799440 () Bool)

(declare-fun e!4103519 () List!66153)

(assert (=> b!6799440 (= e!4103519 lt!2447567)))

(declare-fun b!6799441 () Bool)

(assert (=> b!6799441 (= e!4103519 (Cons!66029 (h!72477 (exprs!6502 lt!2447547)) (++!14782 (t!379882 (exprs!6502 lt!2447547)) lt!2447567)))))

(declare-fun e!4103520 () Bool)

(declare-fun b!6799443 () Bool)

(declare-fun lt!2447790 () List!66153)

(assert (=> b!6799443 (= e!4103520 (or (not (= lt!2447567 Nil!66029)) (= lt!2447790 (exprs!6502 lt!2447547))))))

(declare-fun d!2136545 () Bool)

(assert (=> d!2136545 e!4103520))

(declare-fun res!2778645 () Bool)

(assert (=> d!2136545 (=> (not res!2778645) (not e!4103520))))

(assert (=> d!2136545 (= res!2778645 (= (content!12891 lt!2447790) (set.union (content!12891 (exprs!6502 lt!2447547)) (content!12891 lt!2447567))))))

(assert (=> d!2136545 (= lt!2447790 e!4103519)))

(declare-fun c!1264232 () Bool)

(assert (=> d!2136545 (= c!1264232 (is-Nil!66029 (exprs!6502 lt!2447547)))))

(assert (=> d!2136545 (= (++!14782 (exprs!6502 lt!2447547) lt!2447567) lt!2447790)))

(declare-fun b!6799442 () Bool)

(declare-fun res!2778644 () Bool)

(assert (=> b!6799442 (=> (not res!2778644) (not e!4103520))))

(assert (=> b!6799442 (= res!2778644 (= (size!40660 lt!2447790) (+ (size!40660 (exprs!6502 lt!2447547)) (size!40660 lt!2447567))))))

(assert (= (and d!2136545 c!1264232) b!6799440))

(assert (= (and d!2136545 (not c!1264232)) b!6799441))

(assert (= (and d!2136545 res!2778645) b!6799442))

(assert (= (and b!6799442 res!2778644) b!6799443))

(declare-fun m!7545938 () Bool)

(assert (=> b!6799441 m!7545938))

(declare-fun m!7545940 () Bool)

(assert (=> d!2136545 m!7545940))

(declare-fun m!7545942 () Bool)

(assert (=> d!2136545 m!7545942))

(assert (=> d!2136545 m!7545464))

(declare-fun m!7545944 () Bool)

(assert (=> b!6799442 m!7545944))

(declare-fun m!7545946 () Bool)

(assert (=> b!6799442 m!7545946))

(assert (=> b!6799442 m!7545470))

(assert (=> bs!1812150 d!2136545))

(declare-fun bs!1812215 () Bool)

(declare-fun d!2136547 () Bool)

(assert (= bs!1812215 (and d!2136547 d!2136325)))

(declare-fun lambda!383448 () Int)

(assert (=> bs!1812215 (= lambda!383448 lambda!383363)))

(declare-fun bs!1812216 () Bool)

(assert (= bs!1812216 (and d!2136547 d!2136309)))

(assert (=> bs!1812216 (= lambda!383448 lambda!383358)))

(declare-fun bs!1812217 () Bool)

(assert (= bs!1812217 (and d!2136547 d!2136371)))

(assert (=> bs!1812217 (= lambda!383448 lambda!383391)))

(declare-fun bs!1812218 () Bool)

(assert (= bs!1812218 (and d!2136547 b!6798465)))

(assert (=> bs!1812218 (= lambda!383448 lambda!383325)))

(declare-fun bs!1812219 () Bool)

(assert (= bs!1812219 (and d!2136547 d!2136367)))

(assert (=> bs!1812219 (= lambda!383448 lambda!383388)))

(declare-fun bs!1812220 () Bool)

(assert (= bs!1812220 (and d!2136547 d!2136465)))

(assert (=> bs!1812220 (= lambda!383448 lambda!383415)))

(declare-fun b!6799444 () Bool)

(declare-fun e!4103523 () Regex!16618)

(assert (=> b!6799444 (= e!4103523 (h!72477 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799446 () Bool)

(declare-fun e!4103526 () Bool)

(assert (=> b!6799446 (= e!4103526 (isEmpty!38411 (t!379882 (t!379882 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun b!6799447 () Bool)

(declare-fun e!4103524 () Regex!16618)

(assert (=> b!6799447 (= e!4103523 e!4103524)))

(declare-fun c!1264236 () Bool)

(assert (=> b!6799447 (= c!1264236 (is-Cons!66029 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799448 () Bool)

(declare-fun e!4103522 () Bool)

(declare-fun lt!2447791 () Regex!16618)

(assert (=> b!6799448 (= e!4103522 (isEmptyExpr!1977 lt!2447791))))

(declare-fun b!6799449 () Bool)

(assert (=> b!6799449 (= e!4103524 EmptyExpr!16618)))

(declare-fun b!6799450 () Bool)

(declare-fun e!4103525 () Bool)

(assert (=> b!6799450 (= e!4103522 e!4103525)))

(declare-fun c!1264234 () Bool)

(assert (=> b!6799450 (= c!1264234 (isEmpty!38411 (tail!12733 (t!379882 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun b!6799451 () Bool)

(assert (=> b!6799451 (= e!4103524 (Concat!25463 (h!72477 (t!379882 (exprs!6502 (h!72479 zl!343)))) (generalisedConcat!2215 (t!379882 (t!379882 (exprs!6502 (h!72479 zl!343)))))))))

(declare-fun e!4103521 () Bool)

(assert (=> d!2136547 e!4103521))

(declare-fun res!2778646 () Bool)

(assert (=> d!2136547 (=> (not res!2778646) (not e!4103521))))

(assert (=> d!2136547 (= res!2778646 (validRegex!8354 lt!2447791))))

(assert (=> d!2136547 (= lt!2447791 e!4103523)))

(declare-fun c!1264235 () Bool)

(assert (=> d!2136547 (= c!1264235 e!4103526)))

(declare-fun res!2778647 () Bool)

(assert (=> d!2136547 (=> (not res!2778647) (not e!4103526))))

(assert (=> d!2136547 (= res!2778647 (is-Cons!66029 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(assert (=> d!2136547 (forall!15810 (t!379882 (exprs!6502 (h!72479 zl!343))) lambda!383448)))

(assert (=> d!2136547 (= (generalisedConcat!2215 (t!379882 (exprs!6502 (h!72479 zl!343)))) lt!2447791)))

(declare-fun b!6799445 () Bool)

(assert (=> b!6799445 (= e!4103525 (= lt!2447791 (head!13648 (t!379882 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun b!6799452 () Bool)

(assert (=> b!6799452 (= e!4103521 e!4103522)))

(declare-fun c!1264233 () Bool)

(assert (=> b!6799452 (= c!1264233 (isEmpty!38411 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799453 () Bool)

(assert (=> b!6799453 (= e!4103525 (isConcat!1500 lt!2447791))))

(assert (= (and d!2136547 res!2778647) b!6799446))

(assert (= (and d!2136547 c!1264235) b!6799444))

(assert (= (and d!2136547 (not c!1264235)) b!6799447))

(assert (= (and b!6799447 c!1264236) b!6799451))

(assert (= (and b!6799447 (not c!1264236)) b!6799449))

(assert (= (and d!2136547 res!2778646) b!6799452))

(assert (= (and b!6799452 c!1264233) b!6799448))

(assert (= (and b!6799452 (not c!1264233)) b!6799450))

(assert (= (and b!6799450 c!1264234) b!6799445))

(assert (= (and b!6799450 (not c!1264234)) b!6799453))

(declare-fun m!7545948 () Bool)

(assert (=> b!6799451 m!7545948))

(assert (=> b!6799452 m!7545744))

(declare-fun m!7545950 () Bool)

(assert (=> b!6799450 m!7545950))

(assert (=> b!6799450 m!7545950))

(declare-fun m!7545952 () Bool)

(assert (=> b!6799450 m!7545952))

(declare-fun m!7545954 () Bool)

(assert (=> b!6799448 m!7545954))

(declare-fun m!7545956 () Bool)

(assert (=> d!2136547 m!7545956))

(declare-fun m!7545958 () Bool)

(assert (=> d!2136547 m!7545958))

(declare-fun m!7545960 () Bool)

(assert (=> b!6799453 m!7545960))

(declare-fun m!7545962 () Bool)

(assert (=> b!6799445 m!7545962))

(declare-fun m!7545964 () Bool)

(assert (=> b!6799446 m!7545964))

(assert (=> b!6799080 d!2136547))

(declare-fun d!2136549 () Bool)

(assert (=> d!2136549 true))

(declare-fun setRes!46598 () Bool)

(assert (=> d!2136549 setRes!46598))

(declare-fun condSetEmpty!46598 () Bool)

(declare-fun res!2778650 () (Set Context!12004))

(assert (=> d!2136549 (= condSetEmpty!46598 (= res!2778650 (as set.empty (Set Context!12004))))))

(assert (=> d!2136549 (= (choose!50669 z!1189 lambda!383323) res!2778650)))

(declare-fun setIsEmpty!46598 () Bool)

(assert (=> setIsEmpty!46598 setRes!46598))

(declare-fun setNonEmpty!46598 () Bool)

(declare-fun setElem!46598 () Context!12004)

(declare-fun tp!1861716 () Bool)

(declare-fun e!4103529 () Bool)

(assert (=> setNonEmpty!46598 (= setRes!46598 (and tp!1861716 (inv!84793 setElem!46598) e!4103529))))

(declare-fun setRest!46598 () (Set Context!12004))

(assert (=> setNonEmpty!46598 (= res!2778650 (set.union (set.insert setElem!46598 (as set.empty (Set Context!12004))) setRest!46598))))

(declare-fun b!6799456 () Bool)

(declare-fun tp!1861717 () Bool)

(assert (=> b!6799456 (= e!4103529 tp!1861717)))

(assert (= (and d!2136549 condSetEmpty!46598) setIsEmpty!46598))

(assert (= (and d!2136549 (not condSetEmpty!46598)) setNonEmpty!46598))

(assert (= setNonEmpty!46598 b!6799456))

(declare-fun m!7545966 () Bool)

(assert (=> setNonEmpty!46598 m!7545966))

(assert (=> d!2136445 d!2136549))

(declare-fun b!6799457 () Bool)

(declare-fun e!4103534 () (Set Context!12004))

(assert (=> b!6799457 (= e!4103534 (set.insert (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649)) (as set.empty (Set Context!12004))))))

(declare-fun b!6799458 () Bool)

(declare-fun c!1264238 () Bool)

(declare-fun e!4103533 () Bool)

(assert (=> b!6799458 (= c!1264238 e!4103533)))

(declare-fun res!2778651 () Bool)

(assert (=> b!6799458 (=> (not res!2778651) (not e!4103533))))

(assert (=> b!6799458 (= res!2778651 (is-Concat!25463 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))))))

(declare-fun e!4103531 () (Set Context!12004))

(declare-fun e!4103530 () (Set Context!12004))

(assert (=> b!6799458 (= e!4103531 e!4103530)))

(declare-fun b!6799459 () Bool)

(assert (=> b!6799459 (= e!4103534 e!4103531)))

(declare-fun c!1264239 () Bool)

(assert (=> b!6799459 (= c!1264239 (is-Union!16618 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))))))

(declare-fun b!6799460 () Bool)

(declare-fun e!4103532 () (Set Context!12004))

(declare-fun call!617739 () (Set Context!12004))

(assert (=> b!6799460 (= e!4103532 call!617739)))

(declare-fun c!1264241 () Bool)

(declare-fun call!617741 () List!66153)

(declare-fun bm!617733 () Bool)

(declare-fun call!617738 () (Set Context!12004))

(assert (=> bm!617733 (= call!617738 (derivationStepZipperDown!1846 (ite c!1264239 (regOne!33749 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (ite c!1264238 (regTwo!33748 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (ite c!1264241 (regOne!33748 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (reg!16947 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))))))) (ite (or c!1264239 c!1264238) (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649)) (Context!12005 call!617741)) (h!72478 s!2326)))))

(declare-fun b!6799461 () Bool)

(declare-fun e!4103535 () (Set Context!12004))

(assert (=> b!6799461 (= e!4103535 call!617739)))

(declare-fun d!2136551 () Bool)

(declare-fun c!1264237 () Bool)

(assert (=> d!2136551 (= c!1264237 (and (is-ElementMatch!16618 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (= (c!1263993 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (h!72478 s!2326))))))

(assert (=> d!2136551 (= (derivationStepZipperDown!1846 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))) (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649)) (h!72478 s!2326)) e!4103534)))

(declare-fun bm!617734 () Bool)

(declare-fun call!617743 () List!66153)

(assert (=> bm!617734 (= call!617741 call!617743)))

(declare-fun call!617740 () (Set Context!12004))

(declare-fun bm!617735 () Bool)

(assert (=> bm!617735 (= call!617740 (derivationStepZipperDown!1846 (ite c!1264239 (regTwo!33749 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (regOne!33748 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))))) (ite c!1264239 (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649)) (Context!12005 call!617743)) (h!72478 s!2326)))))

(declare-fun b!6799462 () Bool)

(assert (=> b!6799462 (= e!4103530 e!4103535)))

(assert (=> b!6799462 (= c!1264241 (is-Concat!25463 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))))))

(declare-fun b!6799463 () Bool)

(assert (=> b!6799463 (= e!4103531 (set.union call!617738 call!617740))))

(declare-fun bm!617736 () Bool)

(declare-fun call!617742 () (Set Context!12004))

(assert (=> bm!617736 (= call!617742 call!617738)))

(declare-fun bm!617737 () Bool)

(assert (=> bm!617737 (= call!617739 call!617742)))

(declare-fun b!6799464 () Bool)

(assert (=> b!6799464 (= e!4103533 (nullable!6597 (regOne!33748 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))))))))

(declare-fun bm!617738 () Bool)

(assert (=> bm!617738 (= call!617743 ($colon$colon!2427 (exprs!6502 (ite (or c!1264025 c!1264024) (Context!12005 Nil!66029) (Context!12005 call!617649))) (ite (or c!1264238 c!1264241) (regTwo!33748 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))) (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292)))))))))

(declare-fun c!1264240 () Bool)

(declare-fun b!6799465 () Bool)

(assert (=> b!6799465 (= c!1264240 (is-Star!16618 (ite c!1264025 (regOne!33749 r!7292) (ite c!1264024 (regTwo!33748 r!7292) (ite c!1264027 (regOne!33748 r!7292) (reg!16947 r!7292))))))))

(assert (=> b!6799465 (= e!4103535 e!4103532)))

(declare-fun b!6799466 () Bool)

(assert (=> b!6799466 (= e!4103532 (as set.empty (Set Context!12004)))))

(declare-fun b!6799467 () Bool)

(assert (=> b!6799467 (= e!4103530 (set.union call!617740 call!617742))))

(assert (= (and d!2136551 c!1264237) b!6799457))

(assert (= (and d!2136551 (not c!1264237)) b!6799459))

(assert (= (and b!6799459 c!1264239) b!6799463))

(assert (= (and b!6799459 (not c!1264239)) b!6799458))

(assert (= (and b!6799458 res!2778651) b!6799464))

(assert (= (and b!6799458 c!1264238) b!6799467))

(assert (= (and b!6799458 (not c!1264238)) b!6799462))

(assert (= (and b!6799462 c!1264241) b!6799461))

(assert (= (and b!6799462 (not c!1264241)) b!6799465))

(assert (= (and b!6799465 c!1264240) b!6799460))

(assert (= (and b!6799465 (not c!1264240)) b!6799466))

(assert (= (or b!6799461 b!6799460) bm!617734))

(assert (= (or b!6799461 b!6799460) bm!617737))

(assert (= (or b!6799467 bm!617734) bm!617738))

(assert (= (or b!6799467 bm!617737) bm!617736))

(assert (= (or b!6799463 b!6799467) bm!617735))

(assert (= (or b!6799463 bm!617736) bm!617733))

(declare-fun m!7545968 () Bool)

(assert (=> bm!617735 m!7545968))

(declare-fun m!7545970 () Bool)

(assert (=> b!6799457 m!7545970))

(declare-fun m!7545972 () Bool)

(assert (=> b!6799464 m!7545972))

(declare-fun m!7545974 () Bool)

(assert (=> bm!617738 m!7545974))

(declare-fun m!7545976 () Bool)

(assert (=> bm!617733 m!7545976))

(assert (=> bm!617641 d!2136551))

(declare-fun d!2136553 () Bool)

(assert (=> d!2136553 (= (isEmpty!38411 (unfocusZipperList!2039 zl!343)) (is-Nil!66029 (unfocusZipperList!2039 zl!343)))))

(assert (=> b!6798885 d!2136553))

(assert (=> d!2136443 d!2136439))

(declare-fun d!2136555 () Bool)

(assert (=> d!2136555 (= (flatMap!2099 lt!2447560 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447568))))

(assert (=> d!2136555 true))

(declare-fun _$13!4268 () Unit!159927)

(assert (=> d!2136555 (= (choose!50670 lt!2447560 lt!2447568 lambda!383323) _$13!4268)))

(declare-fun b_lambda!256267 () Bool)

(assert (=> (not b_lambda!256267) (not d!2136555)))

(declare-fun bs!1812221 () Bool)

(assert (= bs!1812221 d!2136555))

(assert (=> bs!1812221 m!7545182))

(assert (=> bs!1812221 m!7545682))

(assert (=> d!2136443 d!2136555))

(declare-fun d!2136557 () Bool)

(declare-fun c!1264242 () Bool)

(assert (=> d!2136557 (= c!1264242 (isEmpty!38407 (tail!12732 (t!379883 s!2326))))))

(declare-fun e!4103536 () Bool)

(assert (=> d!2136557 (= (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (head!13647 (t!379883 s!2326))) (tail!12732 (t!379883 s!2326))) e!4103536)))

(declare-fun b!6799468 () Bool)

(assert (=> b!6799468 (= e!4103536 (nullableZipper!2325 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (head!13647 (t!379883 s!2326)))))))

(declare-fun b!6799469 () Bool)

(assert (=> b!6799469 (= e!4103536 (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (head!13647 (t!379883 s!2326))) (head!13647 (tail!12732 (t!379883 s!2326)))) (tail!12732 (tail!12732 (t!379883 s!2326)))))))

(assert (= (and d!2136557 c!1264242) b!6799468))

(assert (= (and d!2136557 (not c!1264242)) b!6799469))

(assert (=> d!2136557 m!7545344))

(declare-fun m!7545978 () Bool)

(assert (=> d!2136557 m!7545978))

(assert (=> b!6799468 m!7545342))

(declare-fun m!7545980 () Bool)

(assert (=> b!6799468 m!7545980))

(assert (=> b!6799469 m!7545344))

(declare-fun m!7545982 () Bool)

(assert (=> b!6799469 m!7545982))

(assert (=> b!6799469 m!7545342))

(assert (=> b!6799469 m!7545982))

(declare-fun m!7545984 () Bool)

(assert (=> b!6799469 m!7545984))

(assert (=> b!6799469 m!7545344))

(declare-fun m!7545986 () Bool)

(assert (=> b!6799469 m!7545986))

(assert (=> b!6799469 m!7545984))

(assert (=> b!6799469 m!7545986))

(declare-fun m!7545988 () Bool)

(assert (=> b!6799469 m!7545988))

(assert (=> b!6798617 d!2136557))

(declare-fun bs!1812222 () Bool)

(declare-fun d!2136559 () Bool)

(assert (= bs!1812222 (and d!2136559 b!6798467)))

(declare-fun lambda!383449 () Int)

(assert (=> bs!1812222 (= (= (head!13647 (t!379883 s!2326)) (h!72478 s!2326)) (= lambda!383449 lambda!383323))))

(declare-fun bs!1812223 () Bool)

(assert (= bs!1812223 (and d!2136559 d!2136315)))

(assert (=> bs!1812223 (= (= (head!13647 (t!379883 s!2326)) (h!72478 s!2326)) (= lambda!383449 lambda!383361))))

(declare-fun bs!1812224 () Bool)

(assert (= bs!1812224 (and d!2136559 d!2136321)))

(assert (=> bs!1812224 (= (= (head!13647 (t!379883 s!2326)) (h!72478 s!2326)) (= lambda!383449 lambda!383362))))

(declare-fun bs!1812225 () Bool)

(assert (= bs!1812225 (and d!2136559 d!2136453)))

(assert (=> bs!1812225 (= (= (head!13647 (t!379883 s!2326)) (h!72478 s!2326)) (= lambda!383449 lambda!383408))))

(assert (=> d!2136559 true))

(assert (=> d!2136559 (= (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) (head!13647 (t!379883 s!2326))) (flatMap!2099 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) lambda!383449))))

(declare-fun bs!1812226 () Bool)

(assert (= bs!1812226 d!2136559))

(assert (=> bs!1812226 m!7545112))

(declare-fun m!7545990 () Bool)

(assert (=> bs!1812226 m!7545990))

(assert (=> b!6798617 d!2136559))

(declare-fun d!2136561 () Bool)

(assert (=> d!2136561 (= (head!13647 (t!379883 s!2326)) (h!72478 (t!379883 s!2326)))))

(assert (=> b!6798617 d!2136561))

(declare-fun d!2136563 () Bool)

(assert (=> d!2136563 (= (tail!12732 (t!379883 s!2326)) (t!379883 (t!379883 s!2326)))))

(assert (=> b!6798617 d!2136563))

(declare-fun d!2136565 () Bool)

(declare-fun res!2778656 () Bool)

(declare-fun e!4103541 () Bool)

(assert (=> d!2136565 (=> res!2778656 e!4103541)))

(assert (=> d!2136565 (= res!2778656 (is-Nil!66029 (exprs!6502 setElem!46586)))))

(assert (=> d!2136565 (= (forall!15810 (exprs!6502 setElem!46586) lambda!383363) e!4103541)))

(declare-fun b!6799474 () Bool)

(declare-fun e!4103542 () Bool)

(assert (=> b!6799474 (= e!4103541 e!4103542)))

(declare-fun res!2778657 () Bool)

(assert (=> b!6799474 (=> (not res!2778657) (not e!4103542))))

(declare-fun dynLambda!26369 (Int Regex!16618) Bool)

(assert (=> b!6799474 (= res!2778657 (dynLambda!26369 lambda!383363 (h!72477 (exprs!6502 setElem!46586))))))

(declare-fun b!6799475 () Bool)

(assert (=> b!6799475 (= e!4103542 (forall!15810 (t!379882 (exprs!6502 setElem!46586)) lambda!383363))))

(assert (= (and d!2136565 (not res!2778656)) b!6799474))

(assert (= (and b!6799474 res!2778657) b!6799475))

(declare-fun b_lambda!256269 () Bool)

(assert (=> (not b_lambda!256269) (not b!6799474)))

(declare-fun m!7545992 () Bool)

(assert (=> b!6799474 m!7545992))

(declare-fun m!7545994 () Bool)

(assert (=> b!6799475 m!7545994))

(assert (=> d!2136325 d!2136565))

(declare-fun d!2136567 () Bool)

(declare-fun lambda!383452 () Int)

(declare-fun exists!2738 ((Set Context!12004) Int) Bool)

(assert (=> d!2136567 (= (nullableZipper!2325 z!1189) (exists!2738 z!1189 lambda!383452))))

(declare-fun bs!1812227 () Bool)

(assert (= bs!1812227 d!2136567))

(declare-fun m!7545996 () Bool)

(assert (=> bs!1812227 m!7545996))

(assert (=> b!6799012 d!2136567))

(declare-fun bs!1812228 () Bool)

(declare-fun d!2136569 () Bool)

(assert (= bs!1812228 (and d!2136569 d!2136567)))

(declare-fun lambda!383453 () Int)

(assert (=> bs!1812228 (= lambda!383453 lambda!383452)))

(assert (=> d!2136569 (= (nullableZipper!2325 lt!2447549) (exists!2738 lt!2447549 lambda!383453))))

(declare-fun bs!1812229 () Bool)

(assert (= bs!1812229 d!2136569))

(declare-fun m!7545998 () Bool)

(assert (=> bs!1812229 m!7545998))

(assert (=> b!6798612 d!2136569))

(declare-fun b!6799476 () Bool)

(declare-fun e!4103544 () Bool)

(declare-fun call!617746 () Bool)

(assert (=> b!6799476 (= e!4103544 call!617746)))

(declare-fun b!6799477 () Bool)

(declare-fun res!2778662 () Bool)

(declare-fun e!4103547 () Bool)

(assert (=> b!6799477 (=> (not res!2778662) (not e!4103547))))

(declare-fun call!617744 () Bool)

(assert (=> b!6799477 (= res!2778662 call!617744)))

(declare-fun e!4103543 () Bool)

(assert (=> b!6799477 (= e!4103543 e!4103547)))

(declare-fun b!6799478 () Bool)

(declare-fun e!4103545 () Bool)

(declare-fun e!4103549 () Bool)

(assert (=> b!6799478 (= e!4103545 e!4103549)))

(declare-fun c!1264246 () Bool)

(assert (=> b!6799478 (= c!1264246 (is-Star!16618 lt!2447704))))

(declare-fun b!6799479 () Bool)

(declare-fun res!2778658 () Bool)

(declare-fun e!4103548 () Bool)

(assert (=> b!6799479 (=> res!2778658 e!4103548)))

(assert (=> b!6799479 (= res!2778658 (not (is-Concat!25463 lt!2447704)))))

(assert (=> b!6799479 (= e!4103543 e!4103548)))

(declare-fun d!2136571 () Bool)

(declare-fun res!2778659 () Bool)

(assert (=> d!2136571 (=> res!2778659 e!4103545)))

(assert (=> d!2136571 (= res!2778659 (is-ElementMatch!16618 lt!2447704))))

(assert (=> d!2136571 (= (validRegex!8354 lt!2447704) e!4103545)))

(declare-fun bm!617739 () Bool)

(declare-fun call!617745 () Bool)

(declare-fun c!1264245 () Bool)

(assert (=> bm!617739 (= call!617745 (validRegex!8354 (ite c!1264245 (regTwo!33749 lt!2447704) (regTwo!33748 lt!2447704))))))

(declare-fun bm!617740 () Bool)

(assert (=> bm!617740 (= call!617746 (validRegex!8354 (ite c!1264246 (reg!16947 lt!2447704) (ite c!1264245 (regOne!33749 lt!2447704) (regOne!33748 lt!2447704)))))))

(declare-fun b!6799480 () Bool)

(declare-fun e!4103546 () Bool)

(assert (=> b!6799480 (= e!4103546 call!617745)))

(declare-fun b!6799481 () Bool)

(assert (=> b!6799481 (= e!4103549 e!4103544)))

(declare-fun res!2778661 () Bool)

(assert (=> b!6799481 (= res!2778661 (not (nullable!6597 (reg!16947 lt!2447704))))))

(assert (=> b!6799481 (=> (not res!2778661) (not e!4103544))))

(declare-fun b!6799482 () Bool)

(assert (=> b!6799482 (= e!4103548 e!4103546)))

(declare-fun res!2778660 () Bool)

(assert (=> b!6799482 (=> (not res!2778660) (not e!4103546))))

(assert (=> b!6799482 (= res!2778660 call!617744)))

(declare-fun b!6799483 () Bool)

(assert (=> b!6799483 (= e!4103549 e!4103543)))

(assert (=> b!6799483 (= c!1264245 (is-Union!16618 lt!2447704))))

(declare-fun b!6799484 () Bool)

(assert (=> b!6799484 (= e!4103547 call!617745)))

(declare-fun bm!617741 () Bool)

(assert (=> bm!617741 (= call!617744 call!617746)))

(assert (= (and d!2136571 (not res!2778659)) b!6799478))

(assert (= (and b!6799478 c!1264246) b!6799481))

(assert (= (and b!6799478 (not c!1264246)) b!6799483))

(assert (= (and b!6799481 res!2778661) b!6799476))

(assert (= (and b!6799483 c!1264245) b!6799477))

(assert (= (and b!6799483 (not c!1264245)) b!6799479))

(assert (= (and b!6799477 res!2778662) b!6799484))

(assert (= (and b!6799479 (not res!2778658)) b!6799482))

(assert (= (and b!6799482 res!2778660) b!6799480))

(assert (= (or b!6799484 b!6799480) bm!617739))

(assert (= (or b!6799477 b!6799482) bm!617741))

(assert (= (or b!6799476 bm!617741) bm!617740))

(declare-fun m!7546000 () Bool)

(assert (=> bm!617739 m!7546000))

(declare-fun m!7546002 () Bool)

(assert (=> bm!617740 m!7546002))

(declare-fun m!7546004 () Bool)

(assert (=> b!6799481 m!7546004))

(assert (=> d!2136377 d!2136571))

(declare-fun bs!1812230 () Bool)

(declare-fun d!2136573 () Bool)

(assert (= bs!1812230 (and d!2136573 d!2136325)))

(declare-fun lambda!383454 () Int)

(assert (=> bs!1812230 (= lambda!383454 lambda!383363)))

(declare-fun bs!1812231 () Bool)

(assert (= bs!1812231 (and d!2136573 d!2136309)))

(assert (=> bs!1812231 (= lambda!383454 lambda!383358)))

(declare-fun bs!1812232 () Bool)

(assert (= bs!1812232 (and d!2136573 d!2136371)))

(assert (=> bs!1812232 (= lambda!383454 lambda!383391)))

(declare-fun bs!1812233 () Bool)

(assert (= bs!1812233 (and d!2136573 b!6798465)))

(assert (=> bs!1812233 (= lambda!383454 lambda!383325)))

(declare-fun bs!1812234 () Bool)

(assert (= bs!1812234 (and d!2136573 d!2136367)))

(assert (=> bs!1812234 (= lambda!383454 lambda!383388)))

(declare-fun bs!1812235 () Bool)

(assert (= bs!1812235 (and d!2136573 d!2136547)))

(assert (=> bs!1812235 (= lambda!383454 lambda!383448)))

(declare-fun bs!1812236 () Bool)

(assert (= bs!1812236 (and d!2136573 d!2136465)))

(assert (=> bs!1812236 (= lambda!383454 lambda!383415)))

(declare-fun b!6799485 () Bool)

(declare-fun e!4103555 () Bool)

(assert (=> b!6799485 (= e!4103555 (isEmpty!38411 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031)))))))

(declare-fun b!6799486 () Bool)

(declare-fun e!4103554 () Bool)

(declare-fun e!4103550 () Bool)

(assert (=> b!6799486 (= e!4103554 e!4103550)))

(declare-fun c!1264249 () Bool)

(assert (=> b!6799486 (= c!1264249 (isEmpty!38411 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))

(declare-fun b!6799487 () Bool)

(declare-fun e!4103551 () Regex!16618)

(assert (=> b!6799487 (= e!4103551 EmptyLang!16618)))

(declare-fun b!6799488 () Bool)

(declare-fun e!4103553 () Regex!16618)

(assert (=> b!6799488 (= e!4103553 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))

(declare-fun b!6799489 () Bool)

(declare-fun lt!2447792 () Regex!16618)

(assert (=> b!6799489 (= e!4103550 (isEmptyLang!1984 lt!2447792))))

(assert (=> d!2136573 e!4103554))

(declare-fun res!2778663 () Bool)

(assert (=> d!2136573 (=> (not res!2778663) (not e!4103554))))

(assert (=> d!2136573 (= res!2778663 (validRegex!8354 lt!2447792))))

(assert (=> d!2136573 (= lt!2447792 e!4103553)))

(declare-fun c!1264248 () Bool)

(assert (=> d!2136573 (= c!1264248 e!4103555)))

(declare-fun res!2778664 () Bool)

(assert (=> d!2136573 (=> (not res!2778664) (not e!4103555))))

(assert (=> d!2136573 (= res!2778664 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))

(assert (=> d!2136573 (forall!15810 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031)) lambda!383454)))

(assert (=> d!2136573 (= (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))) lt!2447792)))

(declare-fun b!6799490 () Bool)

(declare-fun e!4103552 () Bool)

(assert (=> b!6799490 (= e!4103550 e!4103552)))

(declare-fun c!1264247 () Bool)

(assert (=> b!6799490 (= c!1264247 (isEmpty!38411 (tail!12733 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031)))))))

(declare-fun b!6799491 () Bool)

(assert (=> b!6799491 (= e!4103553 e!4103551)))

(declare-fun c!1264250 () Bool)

(assert (=> b!6799491 (= c!1264250 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))

(declare-fun b!6799492 () Bool)

(assert (=> b!6799492 (= e!4103552 (= lt!2447792 (head!13648 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031)))))))

(declare-fun b!6799493 () Bool)

(assert (=> b!6799493 (= e!4103551 (Union!16618 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))) (generalisedUnion!2462 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031))))))))

(declare-fun b!6799494 () Bool)

(assert (=> b!6799494 (= e!4103552 (isUnion!1414 lt!2447792))))

(assert (= (and d!2136573 res!2778664) b!6799485))

(assert (= (and d!2136573 c!1264248) b!6799488))

(assert (= (and d!2136573 (not c!1264248)) b!6799491))

(assert (= (and b!6799491 c!1264250) b!6799493))

(assert (= (and b!6799491 (not c!1264250)) b!6799487))

(assert (= (and d!2136573 res!2778663) b!6799486))

(assert (= (and b!6799486 c!1264249) b!6799489))

(assert (= (and b!6799486 (not c!1264249)) b!6799490))

(assert (= (and b!6799490 c!1264247) b!6799492))

(assert (= (and b!6799490 (not c!1264247)) b!6799494))

(declare-fun m!7546006 () Bool)

(assert (=> d!2136573 m!7546006))

(assert (=> d!2136573 m!7545536))

(declare-fun m!7546008 () Bool)

(assert (=> d!2136573 m!7546008))

(declare-fun m!7546010 () Bool)

(assert (=> b!6799493 m!7546010))

(assert (=> b!6799492 m!7545536))

(declare-fun m!7546012 () Bool)

(assert (=> b!6799492 m!7546012))

(assert (=> b!6799486 m!7545536))

(declare-fun m!7546014 () Bool)

(assert (=> b!6799486 m!7546014))

(declare-fun m!7546016 () Bool)

(assert (=> b!6799485 m!7546016))

(declare-fun m!7546018 () Bool)

(assert (=> b!6799494 m!7546018))

(assert (=> b!6799490 m!7545536))

(declare-fun m!7546020 () Bool)

(assert (=> b!6799490 m!7546020))

(assert (=> b!6799490 m!7546020))

(declare-fun m!7546022 () Bool)

(assert (=> b!6799490 m!7546022))

(declare-fun m!7546024 () Bool)

(assert (=> b!6799489 m!7546024))

(assert (=> d!2136377 d!2136573))

(declare-fun bs!1812237 () Bool)

(declare-fun d!2136575 () Bool)

(assert (= bs!1812237 (and d!2136575 d!2136325)))

(declare-fun lambda!383455 () Int)

(assert (=> bs!1812237 (= lambda!383455 lambda!383363)))

(declare-fun bs!1812238 () Bool)

(assert (= bs!1812238 (and d!2136575 d!2136309)))

(assert (=> bs!1812238 (= lambda!383455 lambda!383358)))

(declare-fun bs!1812239 () Bool)

(assert (= bs!1812239 (and d!2136575 d!2136371)))

(assert (=> bs!1812239 (= lambda!383455 lambda!383391)))

(declare-fun bs!1812240 () Bool)

(assert (= bs!1812240 (and d!2136575 b!6798465)))

(assert (=> bs!1812240 (= lambda!383455 lambda!383325)))

(declare-fun bs!1812241 () Bool)

(assert (= bs!1812241 (and d!2136575 d!2136367)))

(assert (=> bs!1812241 (= lambda!383455 lambda!383388)))

(declare-fun bs!1812242 () Bool)

(assert (= bs!1812242 (and d!2136575 d!2136547)))

(assert (=> bs!1812242 (= lambda!383455 lambda!383448)))

(declare-fun bs!1812243 () Bool)

(assert (= bs!1812243 (and d!2136575 d!2136573)))

(assert (=> bs!1812243 (= lambda!383455 lambda!383454)))

(declare-fun bs!1812244 () Bool)

(assert (= bs!1812244 (and d!2136575 d!2136465)))

(assert (=> bs!1812244 (= lambda!383455 lambda!383415)))

(declare-fun lt!2447793 () List!66153)

(assert (=> d!2136575 (forall!15810 lt!2447793 lambda!383455)))

(declare-fun e!4103556 () List!66153)

(assert (=> d!2136575 (= lt!2447793 e!4103556)))

(declare-fun c!1264251 () Bool)

(assert (=> d!2136575 (= c!1264251 (is-Cons!66031 (Cons!66031 lt!2447565 Nil!66031)))))

(assert (=> d!2136575 (= (unfocusZipperList!2039 (Cons!66031 lt!2447565 Nil!66031)) lt!2447793)))

(declare-fun b!6799495 () Bool)

(assert (=> b!6799495 (= e!4103556 (Cons!66029 (generalisedConcat!2215 (exprs!6502 (h!72479 (Cons!66031 lt!2447565 Nil!66031)))) (unfocusZipperList!2039 (t!379884 (Cons!66031 lt!2447565 Nil!66031)))))))

(declare-fun b!6799496 () Bool)

(assert (=> b!6799496 (= e!4103556 Nil!66029)))

(assert (= (and d!2136575 c!1264251) b!6799495))

(assert (= (and d!2136575 (not c!1264251)) b!6799496))

(declare-fun m!7546026 () Bool)

(assert (=> d!2136575 m!7546026))

(declare-fun m!7546028 () Bool)

(assert (=> b!6799495 m!7546028))

(declare-fun m!7546030 () Bool)

(assert (=> b!6799495 m!7546030))

(assert (=> d!2136377 d!2136575))

(assert (=> d!2136461 d!2136451))

(declare-fun d!2136577 () Bool)

(assert (=> d!2136577 (= (flatMap!2099 lt!2447558 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447565))))

(assert (=> d!2136577 true))

(declare-fun _$13!4269 () Unit!159927)

(assert (=> d!2136577 (= (choose!50670 lt!2447558 lt!2447565 lambda!383323) _$13!4269)))

(declare-fun b_lambda!256271 () Bool)

(assert (=> (not b_lambda!256271) (not d!2136577)))

(declare-fun bs!1812245 () Bool)

(assert (= bs!1812245 d!2136577))

(assert (=> bs!1812245 m!7545156))

(assert (=> bs!1812245 m!7545720))

(assert (=> d!2136461 d!2136577))

(declare-fun bs!1812246 () Bool)

(declare-fun d!2136579 () Bool)

(assert (= bs!1812246 (and d!2136579 d!2136325)))

(declare-fun lambda!383456 () Int)

(assert (=> bs!1812246 (= lambda!383456 lambda!383363)))

(declare-fun bs!1812247 () Bool)

(assert (= bs!1812247 (and d!2136579 d!2136309)))

(assert (=> bs!1812247 (= lambda!383456 lambda!383358)))

(declare-fun bs!1812248 () Bool)

(assert (= bs!1812248 (and d!2136579 d!2136371)))

(assert (=> bs!1812248 (= lambda!383456 lambda!383391)))

(declare-fun bs!1812249 () Bool)

(assert (= bs!1812249 (and d!2136579 b!6798465)))

(assert (=> bs!1812249 (= lambda!383456 lambda!383325)))

(declare-fun bs!1812250 () Bool)

(assert (= bs!1812250 (and d!2136579 d!2136367)))

(assert (=> bs!1812250 (= lambda!383456 lambda!383388)))

(declare-fun bs!1812251 () Bool)

(assert (= bs!1812251 (and d!2136579 d!2136547)))

(assert (=> bs!1812251 (= lambda!383456 lambda!383448)))

(declare-fun bs!1812252 () Bool)

(assert (= bs!1812252 (and d!2136579 d!2136573)))

(assert (=> bs!1812252 (= lambda!383456 lambda!383454)))

(declare-fun bs!1812253 () Bool)

(assert (= bs!1812253 (and d!2136579 d!2136465)))

(assert (=> bs!1812253 (= lambda!383456 lambda!383415)))

(declare-fun bs!1812254 () Bool)

(assert (= bs!1812254 (and d!2136579 d!2136575)))

(assert (=> bs!1812254 (= lambda!383456 lambda!383455)))

(assert (=> d!2136579 (= (inv!84793 (h!72479 (t!379884 zl!343))) (forall!15810 (exprs!6502 (h!72479 (t!379884 zl!343))) lambda!383456))))

(declare-fun bs!1812255 () Bool)

(assert (= bs!1812255 d!2136579))

(declare-fun m!7546032 () Bool)

(assert (=> bs!1812255 m!7546032))

(assert (=> b!6799113 d!2136579))

(assert (=> bs!1812151 d!2136459))

(declare-fun d!2136581 () Bool)

(assert (=> d!2136581 (= (head!13647 s!2326) (h!72478 s!2326))))

(assert (=> b!6798805 d!2136581))

(declare-fun d!2136583 () Bool)

(assert (=> d!2136583 (= (Exists!3686 (ite c!1264051 lambda!383368 lambda!383369)) (choose!50665 (ite c!1264051 lambda!383368 lambda!383369)))))

(declare-fun bs!1812256 () Bool)

(assert (= bs!1812256 d!2136583))

(declare-fun m!7546034 () Bool)

(assert (=> bs!1812256 m!7546034))

(assert (=> bm!617664 d!2136583))

(declare-fun b!6799497 () Bool)

(declare-fun e!4103558 () Bool)

(declare-fun call!617749 () Bool)

(assert (=> b!6799497 (= e!4103558 call!617749)))

(declare-fun b!6799498 () Bool)

(declare-fun res!2778669 () Bool)

(declare-fun e!4103561 () Bool)

(assert (=> b!6799498 (=> (not res!2778669) (not e!4103561))))

(declare-fun call!617747 () Bool)

(assert (=> b!6799498 (= res!2778669 call!617747)))

(declare-fun e!4103557 () Bool)

(assert (=> b!6799498 (= e!4103557 e!4103561)))

(declare-fun b!6799499 () Bool)

(declare-fun e!4103559 () Bool)

(declare-fun e!4103563 () Bool)

(assert (=> b!6799499 (= e!4103559 e!4103563)))

(declare-fun c!1264253 () Bool)

(assert (=> b!6799499 (= c!1264253 (is-Star!16618 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))

(declare-fun b!6799500 () Bool)

(declare-fun res!2778665 () Bool)

(declare-fun e!4103562 () Bool)

(assert (=> b!6799500 (=> res!2778665 e!4103562)))

(assert (=> b!6799500 (= res!2778665 (not (is-Concat!25463 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292)))))))

(assert (=> b!6799500 (= e!4103557 e!4103562)))

(declare-fun d!2136585 () Bool)

(declare-fun res!2778666 () Bool)

(assert (=> d!2136585 (=> res!2778666 e!4103559)))

(assert (=> d!2136585 (= res!2778666 (is-ElementMatch!16618 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))

(assert (=> d!2136585 (= (validRegex!8354 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))) e!4103559)))

(declare-fun c!1264252 () Bool)

(declare-fun bm!617742 () Bool)

(declare-fun call!617748 () Bool)

(assert (=> bm!617742 (= call!617748 (validRegex!8354 (ite c!1264252 (regTwo!33749 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))) (regTwo!33748 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))))

(declare-fun bm!617743 () Bool)

(assert (=> bm!617743 (= call!617749 (validRegex!8354 (ite c!1264253 (reg!16947 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))) (ite c!1264252 (regOne!33749 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))) (regOne!33748 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292)))))))))

(declare-fun b!6799501 () Bool)

(declare-fun e!4103560 () Bool)

(assert (=> b!6799501 (= e!4103560 call!617748)))

(declare-fun b!6799502 () Bool)

(assert (=> b!6799502 (= e!4103563 e!4103558)))

(declare-fun res!2778668 () Bool)

(assert (=> b!6799502 (= res!2778668 (not (nullable!6597 (reg!16947 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))))

(assert (=> b!6799502 (=> (not res!2778668) (not e!4103558))))

(declare-fun b!6799503 () Bool)

(assert (=> b!6799503 (= e!4103562 e!4103560)))

(declare-fun res!2778667 () Bool)

(assert (=> b!6799503 (=> (not res!2778667) (not e!4103560))))

(assert (=> b!6799503 (= res!2778667 call!617747)))

(declare-fun b!6799504 () Bool)

(assert (=> b!6799504 (= e!4103563 e!4103557)))

(assert (=> b!6799504 (= c!1264252 (is-Union!16618 (ite c!1264038 (regTwo!33749 r!7292) (regTwo!33748 r!7292))))))

(declare-fun b!6799505 () Bool)

(assert (=> b!6799505 (= e!4103561 call!617748)))

(declare-fun bm!617744 () Bool)

(assert (=> bm!617744 (= call!617747 call!617749)))

(assert (= (and d!2136585 (not res!2778666)) b!6799499))

(assert (= (and b!6799499 c!1264253) b!6799502))

(assert (= (and b!6799499 (not c!1264253)) b!6799504))

(assert (= (and b!6799502 res!2778668) b!6799497))

(assert (= (and b!6799504 c!1264252) b!6799498))

(assert (= (and b!6799504 (not c!1264252)) b!6799500))

(assert (= (and b!6799498 res!2778669) b!6799505))

(assert (= (and b!6799500 (not res!2778665)) b!6799503))

(assert (= (and b!6799503 res!2778667) b!6799501))

(assert (= (or b!6799505 b!6799501) bm!617742))

(assert (= (or b!6799498 b!6799503) bm!617744))

(assert (= (or b!6799497 bm!617744) bm!617743))

(declare-fun m!7546036 () Bool)

(assert (=> bm!617742 m!7546036))

(declare-fun m!7546038 () Bool)

(assert (=> bm!617743 m!7546038))

(declare-fun m!7546040 () Bool)

(assert (=> b!6799502 m!7546040))

(assert (=> bm!617656 d!2136585))

(assert (=> d!2136311 d!2136403))

(declare-fun d!2136587 () Bool)

(assert (=> d!2136587 true))

(declare-fun setRes!46601 () Bool)

(assert (=> d!2136587 setRes!46601))

(declare-fun condSetEmpty!46601 () Bool)

(declare-fun res!2778672 () (Set Context!12004))

(assert (=> d!2136587 (= condSetEmpty!46601 (= res!2778672 (as set.empty (Set Context!12004))))))

(assert (=> d!2136587 (= (choose!50664 lt!2447561 lambda!383324) res!2778672)))

(declare-fun setIsEmpty!46601 () Bool)

(assert (=> setIsEmpty!46601 setRes!46601))

(declare-fun setElem!46601 () Context!12004)

(declare-fun e!4103566 () Bool)

(declare-fun setNonEmpty!46601 () Bool)

(declare-fun tp!1861723 () Bool)

(assert (=> setNonEmpty!46601 (= setRes!46601 (and tp!1861723 (inv!84793 setElem!46601) e!4103566))))

(declare-fun setRest!46601 () (Set Context!12004))

(assert (=> setNonEmpty!46601 (= res!2778672 (set.union (set.insert setElem!46601 (as set.empty (Set Context!12004))) setRest!46601))))

(declare-fun b!6799508 () Bool)

(declare-fun tp!1861722 () Bool)

(assert (=> b!6799508 (= e!4103566 tp!1861722)))

(assert (= (and d!2136587 condSetEmpty!46601) setIsEmpty!46601))

(assert (= (and d!2136587 (not condSetEmpty!46601)) setNonEmpty!46601))

(assert (= setNonEmpty!46601 b!6799508))

(declare-fun m!7546042 () Bool)

(assert (=> setNonEmpty!46601 m!7546042))

(assert (=> d!2136363 d!2136587))

(declare-fun d!2136589 () Bool)

(declare-fun c!1264254 () Bool)

(assert (=> d!2136589 (= c!1264254 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun e!4103567 () Bool)

(assert (=> d!2136589 (= (matchZipper!2604 (derivationStepZipper!2562 lt!2447560 (head!13647 s!2326)) (tail!12732 s!2326)) e!4103567)))

(declare-fun b!6799509 () Bool)

(assert (=> b!6799509 (= e!4103567 (nullableZipper!2325 (derivationStepZipper!2562 lt!2447560 (head!13647 s!2326))))))

(declare-fun b!6799510 () Bool)

(assert (=> b!6799510 (= e!4103567 (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447560 (head!13647 s!2326)) (head!13647 (tail!12732 s!2326))) (tail!12732 (tail!12732 s!2326))))))

(assert (= (and d!2136589 c!1264254) b!6799509))

(assert (= (and d!2136589 (not c!1264254)) b!6799510))

(assert (=> d!2136589 m!7545318))

(assert (=> d!2136589 m!7545416))

(assert (=> b!6799509 m!7545332))

(declare-fun m!7546044 () Bool)

(assert (=> b!6799509 m!7546044))

(assert (=> b!6799510 m!7545318))

(declare-fun m!7546046 () Bool)

(assert (=> b!6799510 m!7546046))

(assert (=> b!6799510 m!7545332))

(assert (=> b!6799510 m!7546046))

(declare-fun m!7546048 () Bool)

(assert (=> b!6799510 m!7546048))

(assert (=> b!6799510 m!7545318))

(declare-fun m!7546050 () Bool)

(assert (=> b!6799510 m!7546050))

(assert (=> b!6799510 m!7546048))

(assert (=> b!6799510 m!7546050))

(declare-fun m!7546052 () Bool)

(assert (=> b!6799510 m!7546052))

(assert (=> b!6798615 d!2136589))

(declare-fun bs!1812257 () Bool)

(declare-fun d!2136591 () Bool)

(assert (= bs!1812257 (and d!2136591 b!6798467)))

(declare-fun lambda!383457 () Int)

(assert (=> bs!1812257 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383457 lambda!383323))))

(declare-fun bs!1812258 () Bool)

(assert (= bs!1812258 (and d!2136591 d!2136453)))

(assert (=> bs!1812258 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383457 lambda!383408))))

(declare-fun bs!1812259 () Bool)

(assert (= bs!1812259 (and d!2136591 d!2136315)))

(assert (=> bs!1812259 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383457 lambda!383361))))

(declare-fun bs!1812260 () Bool)

(assert (= bs!1812260 (and d!2136591 d!2136321)))

(assert (=> bs!1812260 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383457 lambda!383362))))

(declare-fun bs!1812261 () Bool)

(assert (= bs!1812261 (and d!2136591 d!2136559)))

(assert (=> bs!1812261 (= (= (head!13647 s!2326) (head!13647 (t!379883 s!2326))) (= lambda!383457 lambda!383449))))

(assert (=> d!2136591 true))

(assert (=> d!2136591 (= (derivationStepZipper!2562 lt!2447560 (head!13647 s!2326)) (flatMap!2099 lt!2447560 lambda!383457))))

(declare-fun bs!1812262 () Bool)

(assert (= bs!1812262 d!2136591))

(declare-fun m!7546054 () Bool)

(assert (=> bs!1812262 m!7546054))

(assert (=> b!6798615 d!2136591))

(assert (=> b!6798615 d!2136581))

(declare-fun d!2136593 () Bool)

(assert (=> d!2136593 (= (tail!12732 s!2326) (t!379883 s!2326))))

(assert (=> b!6798615 d!2136593))

(declare-fun d!2136595 () Bool)

(declare-fun res!2778673 () Bool)

(declare-fun e!4103568 () Bool)

(assert (=> d!2136595 (=> res!2778673 e!4103568)))

(assert (=> d!2136595 (= res!2778673 (is-Nil!66029 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567)))))

(assert (=> d!2136595 (= (forall!15810 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567) lambda!383325) e!4103568)))

(declare-fun b!6799511 () Bool)

(declare-fun e!4103569 () Bool)

(assert (=> b!6799511 (= e!4103568 e!4103569)))

(declare-fun res!2778674 () Bool)

(assert (=> b!6799511 (=> (not res!2778674) (not e!4103569))))

(assert (=> b!6799511 (= res!2778674 (dynLambda!26369 lambda!383325 (h!72477 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567))))))

(declare-fun b!6799512 () Bool)

(assert (=> b!6799512 (= e!4103569 (forall!15810 (t!379882 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567)) lambda!383325))))

(assert (= (and d!2136595 (not res!2778673)) b!6799511))

(assert (= (and b!6799511 res!2778674) b!6799512))

(declare-fun b_lambda!256273 () Bool)

(assert (=> (not b_lambda!256273) (not b!6799511)))

(declare-fun m!7546056 () Bool)

(assert (=> b!6799511 m!7546056))

(declare-fun m!7546058 () Bool)

(assert (=> b!6799512 m!7546058))

(assert (=> d!2136361 d!2136595))

(assert (=> d!2136361 d!2136359))

(declare-fun d!2136597 () Bool)

(assert (=> d!2136597 (forall!15810 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567) lambda!383325)))

(assert (=> d!2136597 true))

(declare-fun _$78!411 () Unit!159927)

(assert (=> d!2136597 (= (choose!50663 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567 lambda!383325) _$78!411)))

(declare-fun bs!1812263 () Bool)

(assert (= bs!1812263 d!2136597))

(assert (=> bs!1812263 m!7545096))

(assert (=> bs!1812263 m!7545096))

(assert (=> bs!1812263 m!7545472))

(assert (=> d!2136361 d!2136597))

(declare-fun d!2136599 () Bool)

(declare-fun res!2778675 () Bool)

(declare-fun e!4103570 () Bool)

(assert (=> d!2136599 (=> res!2778675 e!4103570)))

(assert (=> d!2136599 (= res!2778675 (is-Nil!66029 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))

(assert (=> d!2136599 (= (forall!15810 (Cons!66029 (reg!16947 r!7292) Nil!66029) lambda!383325) e!4103570)))

(declare-fun b!6799513 () Bool)

(declare-fun e!4103571 () Bool)

(assert (=> b!6799513 (= e!4103570 e!4103571)))

(declare-fun res!2778676 () Bool)

(assert (=> b!6799513 (=> (not res!2778676) (not e!4103571))))

(assert (=> b!6799513 (= res!2778676 (dynLambda!26369 lambda!383325 (h!72477 (Cons!66029 (reg!16947 r!7292) Nil!66029))))))

(declare-fun b!6799514 () Bool)

(assert (=> b!6799514 (= e!4103571 (forall!15810 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)) lambda!383325))))

(assert (= (and d!2136599 (not res!2778675)) b!6799513))

(assert (= (and b!6799513 res!2778676) b!6799514))

(declare-fun b_lambda!256275 () Bool)

(assert (=> (not b_lambda!256275) (not b!6799513)))

(declare-fun m!7546060 () Bool)

(assert (=> b!6799513 m!7546060))

(declare-fun m!7546062 () Bool)

(assert (=> b!6799514 m!7546062))

(assert (=> d!2136361 d!2136599))

(declare-fun d!2136601 () Bool)

(assert (=> d!2136601 (= (Exists!3686 lambda!383396) (choose!50665 lambda!383396))))

(declare-fun bs!1812264 () Bool)

(assert (= bs!1812264 d!2136601))

(declare-fun m!7546064 () Bool)

(assert (=> bs!1812264 m!7546064))

(assert (=> d!2136383 d!2136601))

(declare-fun d!2136603 () Bool)

(assert (=> d!2136603 (= (Exists!3686 lambda!383397) (choose!50665 lambda!383397))))

(declare-fun bs!1812265 () Bool)

(assert (= bs!1812265 d!2136603))

(declare-fun m!7546066 () Bool)

(assert (=> bs!1812265 m!7546066))

(assert (=> d!2136383 d!2136603))

(declare-fun bs!1812266 () Bool)

(declare-fun d!2136605 () Bool)

(assert (= bs!1812266 (and d!2136605 b!6798731)))

(declare-fun lambda!383462 () Int)

(assert (=> bs!1812266 (not (= lambda!383462 lambda!383369))))

(declare-fun bs!1812267 () Bool)

(assert (= bs!1812267 (and d!2136605 b!6798444)))

(assert (=> bs!1812267 (not (= lambda!383462 lambda!383321))))

(assert (=> bs!1812267 (not (= lambda!383462 lambda!383322))))

(declare-fun bs!1812268 () Bool)

(assert (= bs!1812268 (and d!2136605 d!2136383)))

(assert (=> bs!1812268 (= lambda!383462 lambda!383396)))

(declare-fun bs!1812269 () Bool)

(assert (= bs!1812269 (and d!2136605 b!6798734)))

(assert (=> bs!1812269 (not (= lambda!383462 lambda!383368))))

(assert (=> bs!1812268 (not (= lambda!383462 lambda!383397))))

(declare-fun bs!1812270 () Bool)

(assert (= bs!1812270 (and d!2136605 d!2136409)))

(assert (=> bs!1812270 (= lambda!383462 lambda!383407)))

(declare-fun bs!1812271 () Bool)

(assert (= bs!1812271 (and d!2136605 b!6798797)))

(assert (=> bs!1812271 (not (= lambda!383462 lambda!383373))))

(declare-fun bs!1812272 () Bool)

(assert (= bs!1812272 (and d!2136605 d!2136393)))

(assert (=> bs!1812272 (not (= lambda!383462 lambda!383404))))

(assert (=> bs!1812267 (= lambda!383462 lambda!383320)))

(declare-fun bs!1812273 () Bool)

(assert (= bs!1812273 (and d!2136605 b!6798794)))

(assert (=> bs!1812273 (not (= lambda!383462 lambda!383374))))

(assert (=> bs!1812272 (= (= r!7292 (Star!16618 (reg!16947 r!7292))) (= lambda!383462 lambda!383403))))

(assert (=> d!2136605 true))

(assert (=> d!2136605 true))

(assert (=> d!2136605 true))

(declare-fun lambda!383463 () Int)

(assert (=> bs!1812266 (= (and (= (reg!16947 r!7292) (regOne!33748 lt!2447563)) (= r!7292 (regTwo!33748 lt!2447563))) (= lambda!383463 lambda!383369))))

(assert (=> bs!1812267 (not (= lambda!383463 lambda!383321))))

(assert (=> bs!1812267 (= lambda!383463 lambda!383322)))

(declare-fun bs!1812274 () Bool)

(assert (= bs!1812274 d!2136605))

(assert (=> bs!1812274 (not (= lambda!383463 lambda!383462))))

(assert (=> bs!1812268 (not (= lambda!383463 lambda!383396))))

(assert (=> bs!1812269 (not (= lambda!383463 lambda!383368))))

(assert (=> bs!1812268 (= lambda!383463 lambda!383397)))

(assert (=> bs!1812270 (not (= lambda!383463 lambda!383407))))

(assert (=> bs!1812271 (not (= lambda!383463 lambda!383373))))

(assert (=> bs!1812272 (not (= lambda!383463 lambda!383404))))

(assert (=> bs!1812267 (not (= lambda!383463 lambda!383320))))

(assert (=> bs!1812273 (= (and (= (reg!16947 r!7292) (regOne!33748 r!7292)) (= r!7292 (regTwo!33748 r!7292))) (= lambda!383463 lambda!383374))))

(assert (=> bs!1812272 (not (= lambda!383463 lambda!383403))))

(assert (=> d!2136605 true))

(assert (=> d!2136605 true))

(assert (=> d!2136605 true))

(assert (=> d!2136605 (= (Exists!3686 lambda!383462) (Exists!3686 lambda!383463))))

(assert (=> d!2136605 true))

(declare-fun _$90!2695 () Unit!159927)

(assert (=> d!2136605 (= (choose!50666 (reg!16947 r!7292) r!7292 s!2326) _$90!2695)))

(declare-fun m!7546068 () Bool)

(assert (=> bs!1812274 m!7546068))

(declare-fun m!7546070 () Bool)

(assert (=> bs!1812274 m!7546070))

(assert (=> d!2136383 d!2136605))

(declare-fun b!6799523 () Bool)

(declare-fun e!4103577 () Bool)

(declare-fun call!617752 () Bool)

(assert (=> b!6799523 (= e!4103577 call!617752)))

(declare-fun b!6799524 () Bool)

(declare-fun res!2778689 () Bool)

(declare-fun e!4103580 () Bool)

(assert (=> b!6799524 (=> (not res!2778689) (not e!4103580))))

(declare-fun call!617750 () Bool)

(assert (=> b!6799524 (= res!2778689 call!617750)))

(declare-fun e!4103576 () Bool)

(assert (=> b!6799524 (= e!4103576 e!4103580)))

(declare-fun b!6799525 () Bool)

(declare-fun e!4103578 () Bool)

(declare-fun e!4103582 () Bool)

(assert (=> b!6799525 (= e!4103578 e!4103582)))

(declare-fun c!1264256 () Bool)

(assert (=> b!6799525 (= c!1264256 (is-Star!16618 (reg!16947 r!7292)))))

(declare-fun b!6799526 () Bool)

(declare-fun res!2778685 () Bool)

(declare-fun e!4103581 () Bool)

(assert (=> b!6799526 (=> res!2778685 e!4103581)))

(assert (=> b!6799526 (= res!2778685 (not (is-Concat!25463 (reg!16947 r!7292))))))

(assert (=> b!6799526 (= e!4103576 e!4103581)))

(declare-fun d!2136607 () Bool)

(declare-fun res!2778686 () Bool)

(assert (=> d!2136607 (=> res!2778686 e!4103578)))

(assert (=> d!2136607 (= res!2778686 (is-ElementMatch!16618 (reg!16947 r!7292)))))

(assert (=> d!2136607 (= (validRegex!8354 (reg!16947 r!7292)) e!4103578)))

(declare-fun bm!617745 () Bool)

(declare-fun call!617751 () Bool)

(declare-fun c!1264255 () Bool)

(assert (=> bm!617745 (= call!617751 (validRegex!8354 (ite c!1264255 (regTwo!33749 (reg!16947 r!7292)) (regTwo!33748 (reg!16947 r!7292)))))))

(declare-fun bm!617746 () Bool)

(assert (=> bm!617746 (= call!617752 (validRegex!8354 (ite c!1264256 (reg!16947 (reg!16947 r!7292)) (ite c!1264255 (regOne!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))))))))

(declare-fun b!6799527 () Bool)

(declare-fun e!4103579 () Bool)

(assert (=> b!6799527 (= e!4103579 call!617751)))

(declare-fun b!6799528 () Bool)

(assert (=> b!6799528 (= e!4103582 e!4103577)))

(declare-fun res!2778688 () Bool)

(assert (=> b!6799528 (= res!2778688 (not (nullable!6597 (reg!16947 (reg!16947 r!7292)))))))

(assert (=> b!6799528 (=> (not res!2778688) (not e!4103577))))

(declare-fun b!6799529 () Bool)

(assert (=> b!6799529 (= e!4103581 e!4103579)))

(declare-fun res!2778687 () Bool)

(assert (=> b!6799529 (=> (not res!2778687) (not e!4103579))))

(assert (=> b!6799529 (= res!2778687 call!617750)))

(declare-fun b!6799530 () Bool)

(assert (=> b!6799530 (= e!4103582 e!4103576)))

(assert (=> b!6799530 (= c!1264255 (is-Union!16618 (reg!16947 r!7292)))))

(declare-fun b!6799531 () Bool)

(assert (=> b!6799531 (= e!4103580 call!617751)))

(declare-fun bm!617747 () Bool)

(assert (=> bm!617747 (= call!617750 call!617752)))

(assert (= (and d!2136607 (not res!2778686)) b!6799525))

(assert (= (and b!6799525 c!1264256) b!6799528))

(assert (= (and b!6799525 (not c!1264256)) b!6799530))

(assert (= (and b!6799528 res!2778688) b!6799523))

(assert (= (and b!6799530 c!1264255) b!6799524))

(assert (= (and b!6799530 (not c!1264255)) b!6799526))

(assert (= (and b!6799524 res!2778689) b!6799531))

(assert (= (and b!6799526 (not res!2778685)) b!6799529))

(assert (= (and b!6799529 res!2778687) b!6799527))

(assert (= (or b!6799531 b!6799527) bm!617745))

(assert (= (or b!6799524 b!6799529) bm!617747))

(assert (= (or b!6799523 bm!617747) bm!617746))

(declare-fun m!7546072 () Bool)

(assert (=> bm!617745 m!7546072))

(declare-fun m!7546074 () Bool)

(assert (=> bm!617746 m!7546074))

(declare-fun m!7546076 () Bool)

(assert (=> b!6799528 m!7546076))

(assert (=> d!2136383 d!2136607))

(declare-fun b!6799532 () Bool)

(declare-fun call!617753 () (Set Context!12004))

(declare-fun e!4103584 () (Set Context!12004))

(assert (=> b!6799532 (= e!4103584 (set.union call!617753 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343))))))) (h!72478 s!2326))))))

(declare-fun b!6799533 () Bool)

(declare-fun e!4103583 () (Set Context!12004))

(assert (=> b!6799533 (= e!4103584 e!4103583)))

(declare-fun c!1264258 () Bool)

(assert (=> b!6799533 (= c!1264258 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))))))))

(declare-fun b!6799534 () Bool)

(assert (=> b!6799534 (= e!4103583 call!617753)))

(declare-fun b!6799535 () Bool)

(assert (=> b!6799535 (= e!4103583 (as set.empty (Set Context!12004)))))

(declare-fun b!6799536 () Bool)

(declare-fun e!4103585 () Bool)

(assert (=> b!6799536 (= e!4103585 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343))))))))))

(declare-fun d!2136609 () Bool)

(declare-fun c!1264257 () Bool)

(assert (=> d!2136609 (= c!1264257 e!4103585)))

(declare-fun res!2778690 () Bool)

(assert (=> d!2136609 (=> (not res!2778690) (not e!4103585))))

(assert (=> d!2136609 (= res!2778690 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))))))))

(assert (=> d!2136609 (= (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (h!72478 s!2326)) e!4103584)))

(declare-fun bm!617748 () Bool)

(assert (=> bm!617748 (= call!617753 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343))))))) (h!72478 s!2326)))))

(assert (= (and d!2136609 res!2778690) b!6799536))

(assert (= (and d!2136609 c!1264257) b!6799532))

(assert (= (and d!2136609 (not c!1264257)) b!6799533))

(assert (= (and b!6799533 c!1264258) b!6799534))

(assert (= (and b!6799533 (not c!1264258)) b!6799535))

(assert (= (or b!6799532 b!6799534) bm!617748))

(declare-fun m!7546078 () Bool)

(assert (=> b!6799532 m!7546078))

(declare-fun m!7546080 () Bool)

(assert (=> b!6799536 m!7546080))

(declare-fun m!7546082 () Bool)

(assert (=> bm!617748 m!7546082))

(assert (=> b!6799030 d!2136609))

(assert (=> b!6798981 d!2136349))

(declare-fun d!2136611 () Bool)

(assert (=> d!2136611 true))

(declare-fun setRes!46602 () Bool)

(assert (=> d!2136611 setRes!46602))

(declare-fun condSetEmpty!46602 () Bool)

(declare-fun res!2778691 () (Set Context!12004))

(assert (=> d!2136611 (= condSetEmpty!46602 (= res!2778691 (as set.empty (Set Context!12004))))))

(assert (=> d!2136611 (= (choose!50669 lt!2447558 lambda!383323) res!2778691)))

(declare-fun setIsEmpty!46602 () Bool)

(assert (=> setIsEmpty!46602 setRes!46602))

(declare-fun setElem!46602 () Context!12004)

(declare-fun e!4103586 () Bool)

(declare-fun setNonEmpty!46602 () Bool)

(declare-fun tp!1861724 () Bool)

(assert (=> setNonEmpty!46602 (= setRes!46602 (and tp!1861724 (inv!84793 setElem!46602) e!4103586))))

(declare-fun setRest!46602 () (Set Context!12004))

(assert (=> setNonEmpty!46602 (= res!2778691 (set.union (set.insert setElem!46602 (as set.empty (Set Context!12004))) setRest!46602))))

(declare-fun b!6799537 () Bool)

(declare-fun tp!1861725 () Bool)

(assert (=> b!6799537 (= e!4103586 tp!1861725)))

(assert (= (and d!2136611 condSetEmpty!46602) setIsEmpty!46602))

(assert (= (and d!2136611 (not condSetEmpty!46602)) setNonEmpty!46602))

(assert (= setNonEmpty!46602 b!6799537))

(declare-fun m!7546084 () Bool)

(assert (=> setNonEmpty!46602 m!7546084))

(assert (=> d!2136451 d!2136611))

(declare-fun d!2136613 () Bool)

(assert (=> d!2136613 (= ($colon$colon!2427 (exprs!6502 (Context!12005 Nil!66029)) (ite (or c!1264024 c!1264027) (regTwo!33748 r!7292) r!7292)) (Cons!66029 (ite (or c!1264024 c!1264027) (regTwo!33748 r!7292) r!7292) (exprs!6502 (Context!12005 Nil!66029))))))

(assert (=> bm!617646 d!2136613))

(declare-fun d!2136615 () Bool)

(declare-fun lt!2447796 () Int)

(assert (=> d!2136615 (>= lt!2447796 0)))

(declare-fun e!4103589 () Int)

(assert (=> d!2136615 (= lt!2447796 e!4103589)))

(declare-fun c!1264261 () Bool)

(assert (=> d!2136615 (= c!1264261 (is-Nil!66029 lt!2447685))))

(assert (=> d!2136615 (= (size!40660 lt!2447685) lt!2447796)))

(declare-fun b!6799542 () Bool)

(assert (=> b!6799542 (= e!4103589 0)))

(declare-fun b!6799543 () Bool)

(assert (=> b!6799543 (= e!4103589 (+ 1 (size!40660 (t!379882 lt!2447685))))))

(assert (= (and d!2136615 c!1264261) b!6799542))

(assert (= (and d!2136615 (not c!1264261)) b!6799543))

(declare-fun m!7546086 () Bool)

(assert (=> b!6799543 m!7546086))

(assert (=> b!6798830 d!2136615))

(declare-fun d!2136617 () Bool)

(declare-fun lt!2447797 () Int)

(assert (=> d!2136617 (>= lt!2447797 0)))

(declare-fun e!4103590 () Int)

(assert (=> d!2136617 (= lt!2447797 e!4103590)))

(declare-fun c!1264262 () Bool)

(assert (=> d!2136617 (= c!1264262 (is-Nil!66029 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))

(assert (=> d!2136617 (= (size!40660 (Cons!66029 (reg!16947 r!7292) Nil!66029)) lt!2447797)))

(declare-fun b!6799544 () Bool)

(assert (=> b!6799544 (= e!4103590 0)))

(declare-fun b!6799545 () Bool)

(assert (=> b!6799545 (= e!4103590 (+ 1 (size!40660 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))))

(assert (= (and d!2136617 c!1264262) b!6799544))

(assert (= (and d!2136617 (not c!1264262)) b!6799545))

(declare-fun m!7546088 () Bool)

(assert (=> b!6799545 m!7546088))

(assert (=> b!6798830 d!2136617))

(declare-fun d!2136619 () Bool)

(declare-fun lt!2447798 () Int)

(assert (=> d!2136619 (>= lt!2447798 0)))

(declare-fun e!4103591 () Int)

(assert (=> d!2136619 (= lt!2447798 e!4103591)))

(declare-fun c!1264263 () Bool)

(assert (=> d!2136619 (= c!1264263 (is-Nil!66029 lt!2447567))))

(assert (=> d!2136619 (= (size!40660 lt!2447567) lt!2447798)))

(declare-fun b!6799546 () Bool)

(assert (=> b!6799546 (= e!4103591 0)))

(declare-fun b!6799547 () Bool)

(assert (=> b!6799547 (= e!4103591 (+ 1 (size!40660 (t!379882 lt!2447567))))))

(assert (= (and d!2136619 c!1264263) b!6799546))

(assert (= (and d!2136619 (not c!1264263)) b!6799547))

(declare-fun m!7546090 () Bool)

(assert (=> b!6799547 m!7546090))

(assert (=> b!6798830 d!2136619))

(declare-fun b!6799548 () Bool)

(declare-fun e!4103596 () (Set Context!12004))

(assert (=> b!6799548 (= e!4103596 (set.insert (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (as set.empty (Set Context!12004))))))

(declare-fun b!6799549 () Bool)

(declare-fun c!1264265 () Bool)

(declare-fun e!4103595 () Bool)

(assert (=> b!6799549 (= c!1264265 e!4103595)))

(declare-fun res!2778692 () Bool)

(assert (=> b!6799549 (=> (not res!2778692) (not e!4103595))))

(assert (=> b!6799549 (= res!2778692 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447568))))))

(declare-fun e!4103593 () (Set Context!12004))

(declare-fun e!4103592 () (Set Context!12004))

(assert (=> b!6799549 (= e!4103593 e!4103592)))

(declare-fun b!6799550 () Bool)

(assert (=> b!6799550 (= e!4103596 e!4103593)))

(declare-fun c!1264266 () Bool)

(assert (=> b!6799550 (= c!1264266 (is-Union!16618 (h!72477 (exprs!6502 lt!2447568))))))

(declare-fun b!6799551 () Bool)

(declare-fun e!4103594 () (Set Context!12004))

(declare-fun call!617755 () (Set Context!12004))

(assert (=> b!6799551 (= e!4103594 call!617755)))

(declare-fun c!1264268 () Bool)

(declare-fun call!617754 () (Set Context!12004))

(declare-fun bm!617749 () Bool)

(declare-fun call!617757 () List!66153)

(assert (=> bm!617749 (= call!617754 (derivationStepZipperDown!1846 (ite c!1264266 (regOne!33749 (h!72477 (exprs!6502 lt!2447568))) (ite c!1264265 (regTwo!33748 (h!72477 (exprs!6502 lt!2447568))) (ite c!1264268 (regOne!33748 (h!72477 (exprs!6502 lt!2447568))) (reg!16947 (h!72477 (exprs!6502 lt!2447568)))))) (ite (or c!1264266 c!1264265) (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (Context!12005 call!617757)) (h!72478 s!2326)))))

(declare-fun b!6799552 () Bool)

(declare-fun e!4103597 () (Set Context!12004))

(assert (=> b!6799552 (= e!4103597 call!617755)))

(declare-fun d!2136621 () Bool)

(declare-fun c!1264264 () Bool)

(assert (=> d!2136621 (= c!1264264 (and (is-ElementMatch!16618 (h!72477 (exprs!6502 lt!2447568))) (= (c!1263993 (h!72477 (exprs!6502 lt!2447568))) (h!72478 s!2326))))))

(assert (=> d!2136621 (= (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447568)) (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (h!72478 s!2326)) e!4103596)))

(declare-fun bm!617750 () Bool)

(declare-fun call!617759 () List!66153)

(assert (=> bm!617750 (= call!617757 call!617759)))

(declare-fun bm!617751 () Bool)

(declare-fun call!617756 () (Set Context!12004))

(assert (=> bm!617751 (= call!617756 (derivationStepZipperDown!1846 (ite c!1264266 (regTwo!33749 (h!72477 (exprs!6502 lt!2447568))) (regOne!33748 (h!72477 (exprs!6502 lt!2447568)))) (ite c!1264266 (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (Context!12005 call!617759)) (h!72478 s!2326)))))

(declare-fun b!6799553 () Bool)

(assert (=> b!6799553 (= e!4103592 e!4103597)))

(assert (=> b!6799553 (= c!1264268 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447568))))))

(declare-fun b!6799554 () Bool)

(assert (=> b!6799554 (= e!4103593 (set.union call!617754 call!617756))))

(declare-fun bm!617752 () Bool)

(declare-fun call!617758 () (Set Context!12004))

(assert (=> bm!617752 (= call!617758 call!617754)))

(declare-fun bm!617753 () Bool)

(assert (=> bm!617753 (= call!617755 call!617758)))

(declare-fun b!6799555 () Bool)

(assert (=> b!6799555 (= e!4103595 (nullable!6597 (regOne!33748 (h!72477 (exprs!6502 lt!2447568)))))))

(declare-fun bm!617754 () Bool)

(assert (=> bm!617754 (= call!617759 ($colon$colon!2427 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568)))) (ite (or c!1264265 c!1264268) (regTwo!33748 (h!72477 (exprs!6502 lt!2447568))) (h!72477 (exprs!6502 lt!2447568)))))))

(declare-fun b!6799556 () Bool)

(declare-fun c!1264267 () Bool)

(assert (=> b!6799556 (= c!1264267 (is-Star!16618 (h!72477 (exprs!6502 lt!2447568))))))

(assert (=> b!6799556 (= e!4103597 e!4103594)))

(declare-fun b!6799557 () Bool)

(assert (=> b!6799557 (= e!4103594 (as set.empty (Set Context!12004)))))

(declare-fun b!6799558 () Bool)

(assert (=> b!6799558 (= e!4103592 (set.union call!617756 call!617758))))

(assert (= (and d!2136621 c!1264264) b!6799548))

(assert (= (and d!2136621 (not c!1264264)) b!6799550))

(assert (= (and b!6799550 c!1264266) b!6799554))

(assert (= (and b!6799550 (not c!1264266)) b!6799549))

(assert (= (and b!6799549 res!2778692) b!6799555))

(assert (= (and b!6799549 c!1264265) b!6799558))

(assert (= (and b!6799549 (not c!1264265)) b!6799553))

(assert (= (and b!6799553 c!1264268) b!6799552))

(assert (= (and b!6799553 (not c!1264268)) b!6799556))

(assert (= (and b!6799556 c!1264267) b!6799551))

(assert (= (and b!6799556 (not c!1264267)) b!6799557))

(assert (= (or b!6799552 b!6799551) bm!617750))

(assert (= (or b!6799552 b!6799551) bm!617753))

(assert (= (or b!6799558 bm!617750) bm!617754))

(assert (= (or b!6799558 bm!617753) bm!617752))

(assert (= (or b!6799554 b!6799558) bm!617751))

(assert (= (or b!6799554 bm!617752) bm!617749))

(declare-fun m!7546092 () Bool)

(assert (=> bm!617751 m!7546092))

(declare-fun m!7546094 () Bool)

(assert (=> b!6799548 m!7546094))

(declare-fun m!7546096 () Bool)

(assert (=> b!6799555 m!7546096))

(declare-fun m!7546098 () Bool)

(assert (=> bm!617754 m!7546098))

(declare-fun m!7546100 () Bool)

(assert (=> bm!617749 m!7546100))

(assert (=> bm!617701 d!2136621))

(declare-fun d!2136623 () Bool)

(declare-fun nullableFct!2501 (Regex!16618) Bool)

(assert (=> d!2136623 (= (nullable!6597 (h!72477 (exprs!6502 (h!72479 zl!343)))) (nullableFct!2501 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun bs!1812275 () Bool)

(assert (= bs!1812275 d!2136623))

(declare-fun m!7546102 () Bool)

(assert (=> bs!1812275 m!7546102))

(assert (=> b!6799034 d!2136623))

(assert (=> b!6798898 d!2136465))

(declare-fun bs!1812276 () Bool)

(declare-fun d!2136625 () Bool)

(assert (= bs!1812276 (and d!2136625 d!2136325)))

(declare-fun lambda!383464 () Int)

(assert (=> bs!1812276 (= lambda!383464 lambda!383363)))

(declare-fun bs!1812277 () Bool)

(assert (= bs!1812277 (and d!2136625 d!2136309)))

(assert (=> bs!1812277 (= lambda!383464 lambda!383358)))

(declare-fun bs!1812278 () Bool)

(assert (= bs!1812278 (and d!2136625 d!2136371)))

(assert (=> bs!1812278 (= lambda!383464 lambda!383391)))

(declare-fun bs!1812279 () Bool)

(assert (= bs!1812279 (and d!2136625 b!6798465)))

(assert (=> bs!1812279 (= lambda!383464 lambda!383325)))

(declare-fun bs!1812280 () Bool)

(assert (= bs!1812280 (and d!2136625 d!2136367)))

(assert (=> bs!1812280 (= lambda!383464 lambda!383388)))

(declare-fun bs!1812281 () Bool)

(assert (= bs!1812281 (and d!2136625 d!2136547)))

(assert (=> bs!1812281 (= lambda!383464 lambda!383448)))

(declare-fun bs!1812282 () Bool)

(assert (= bs!1812282 (and d!2136625 d!2136579)))

(assert (=> bs!1812282 (= lambda!383464 lambda!383456)))

(declare-fun bs!1812283 () Bool)

(assert (= bs!1812283 (and d!2136625 d!2136573)))

(assert (=> bs!1812283 (= lambda!383464 lambda!383454)))

(declare-fun bs!1812284 () Bool)

(assert (= bs!1812284 (and d!2136625 d!2136465)))

(assert (=> bs!1812284 (= lambda!383464 lambda!383415)))

(declare-fun bs!1812285 () Bool)

(assert (= bs!1812285 (and d!2136625 d!2136575)))

(assert (=> bs!1812285 (= lambda!383464 lambda!383455)))

(declare-fun lt!2447799 () List!66153)

(assert (=> d!2136625 (forall!15810 lt!2447799 lambda!383464)))

(declare-fun e!4103598 () List!66153)

(assert (=> d!2136625 (= lt!2447799 e!4103598)))

(declare-fun c!1264269 () Bool)

(assert (=> d!2136625 (= c!1264269 (is-Cons!66031 (t!379884 zl!343)))))

(assert (=> d!2136625 (= (unfocusZipperList!2039 (t!379884 zl!343)) lt!2447799)))

(declare-fun b!6799559 () Bool)

(assert (=> b!6799559 (= e!4103598 (Cons!66029 (generalisedConcat!2215 (exprs!6502 (h!72479 (t!379884 zl!343)))) (unfocusZipperList!2039 (t!379884 (t!379884 zl!343)))))))

(declare-fun b!6799560 () Bool)

(assert (=> b!6799560 (= e!4103598 Nil!66029)))

(assert (= (and d!2136625 c!1264269) b!6799559))

(assert (= (and d!2136625 (not c!1264269)) b!6799560))

(declare-fun m!7546104 () Bool)

(assert (=> d!2136625 m!7546104))

(declare-fun m!7546106 () Bool)

(assert (=> b!6799559 m!7546106))

(declare-fun m!7546108 () Bool)

(assert (=> b!6799559 m!7546108))

(assert (=> b!6798898 d!2136625))

(declare-fun d!2136627 () Bool)

(declare-fun res!2778693 () Bool)

(declare-fun e!4103599 () Bool)

(assert (=> d!2136627 (=> res!2778693 e!4103599)))

(assert (=> d!2136627 (= res!2778693 (is-Nil!66029 lt!2447703))))

(assert (=> d!2136627 (= (forall!15810 lt!2447703 lambda!383391) e!4103599)))

(declare-fun b!6799561 () Bool)

(declare-fun e!4103600 () Bool)

(assert (=> b!6799561 (= e!4103599 e!4103600)))

(declare-fun res!2778694 () Bool)

(assert (=> b!6799561 (=> (not res!2778694) (not e!4103600))))

(assert (=> b!6799561 (= res!2778694 (dynLambda!26369 lambda!383391 (h!72477 lt!2447703)))))

(declare-fun b!6799562 () Bool)

(assert (=> b!6799562 (= e!4103600 (forall!15810 (t!379882 lt!2447703) lambda!383391))))

(assert (= (and d!2136627 (not res!2778693)) b!6799561))

(assert (= (and b!6799561 res!2778694) b!6799562))

(declare-fun b_lambda!256277 () Bool)

(assert (=> (not b_lambda!256277) (not b!6799561)))

(declare-fun m!7546110 () Bool)

(assert (=> b!6799561 m!7546110))

(declare-fun m!7546112 () Bool)

(assert (=> b!6799562 m!7546112))

(assert (=> d!2136371 d!2136627))

(declare-fun d!2136629 () Bool)

(assert (=> d!2136629 (= (flatMap!2099 lt!2447558 lambda!383408) (choose!50669 lt!2447558 lambda!383408))))

(declare-fun bs!1812286 () Bool)

(assert (= bs!1812286 d!2136629))

(declare-fun m!7546114 () Bool)

(assert (=> bs!1812286 m!7546114))

(assert (=> d!2136453 d!2136629))

(declare-fun d!2136631 () Bool)

(declare-fun c!1264272 () Bool)

(assert (=> d!2136631 (= c!1264272 (is-Nil!66031 lt!2447671))))

(declare-fun e!4103603 () (Set Context!12004))

(assert (=> d!2136631 (= (content!12890 lt!2447671) e!4103603)))

(declare-fun b!6799567 () Bool)

(assert (=> b!6799567 (= e!4103603 (as set.empty (Set Context!12004)))))

(declare-fun b!6799568 () Bool)

(assert (=> b!6799568 (= e!4103603 (set.union (set.insert (h!72479 lt!2447671) (as set.empty (Set Context!12004))) (content!12890 (t!379884 lt!2447671))))))

(assert (= (and d!2136631 c!1264272) b!6799567))

(assert (= (and d!2136631 (not c!1264272)) b!6799568))

(declare-fun m!7546116 () Bool)

(assert (=> b!6799568 m!7546116))

(declare-fun m!7546118 () Bool)

(assert (=> b!6799568 m!7546118))

(assert (=> b!6798697 d!2136631))

(declare-fun d!2136633 () Bool)

(assert (=> d!2136633 (= (isEmpty!38411 (exprs!6502 (h!72479 zl!343))) (is-Nil!66029 (exprs!6502 (h!72479 zl!343))))))

(assert (=> b!6799081 d!2136633))

(declare-fun b!6799569 () Bool)

(declare-fun e!4103605 () Bool)

(declare-fun call!617762 () Bool)

(assert (=> b!6799569 (= e!4103605 call!617762)))

(declare-fun b!6799570 () Bool)

(declare-fun res!2778699 () Bool)

(declare-fun e!4103608 () Bool)

(assert (=> b!6799570 (=> (not res!2778699) (not e!4103608))))

(declare-fun call!617760 () Bool)

(assert (=> b!6799570 (= res!2778699 call!617760)))

(declare-fun e!4103604 () Bool)

(assert (=> b!6799570 (= e!4103604 e!4103608)))

(declare-fun b!6799571 () Bool)

(declare-fun e!4103606 () Bool)

(declare-fun e!4103610 () Bool)

(assert (=> b!6799571 (= e!4103606 e!4103610)))

(declare-fun c!1264274 () Bool)

(assert (=> b!6799571 (= c!1264274 (is-Star!16618 lt!2447667))))

(declare-fun b!6799572 () Bool)

(declare-fun res!2778695 () Bool)

(declare-fun e!4103609 () Bool)

(assert (=> b!6799572 (=> res!2778695 e!4103609)))

(assert (=> b!6799572 (= res!2778695 (not (is-Concat!25463 lt!2447667)))))

(assert (=> b!6799572 (= e!4103604 e!4103609)))

(declare-fun d!2136635 () Bool)

(declare-fun res!2778696 () Bool)

(assert (=> d!2136635 (=> res!2778696 e!4103606)))

(assert (=> d!2136635 (= res!2778696 (is-ElementMatch!16618 lt!2447667))))

(assert (=> d!2136635 (= (validRegex!8354 lt!2447667) e!4103606)))

(declare-fun bm!617755 () Bool)

(declare-fun call!617761 () Bool)

(declare-fun c!1264273 () Bool)

(assert (=> bm!617755 (= call!617761 (validRegex!8354 (ite c!1264273 (regTwo!33749 lt!2447667) (regTwo!33748 lt!2447667))))))

(declare-fun bm!617756 () Bool)

(assert (=> bm!617756 (= call!617762 (validRegex!8354 (ite c!1264274 (reg!16947 lt!2447667) (ite c!1264273 (regOne!33749 lt!2447667) (regOne!33748 lt!2447667)))))))

(declare-fun b!6799573 () Bool)

(declare-fun e!4103607 () Bool)

(assert (=> b!6799573 (= e!4103607 call!617761)))

(declare-fun b!6799574 () Bool)

(assert (=> b!6799574 (= e!4103610 e!4103605)))

(declare-fun res!2778698 () Bool)

(assert (=> b!6799574 (= res!2778698 (not (nullable!6597 (reg!16947 lt!2447667))))))

(assert (=> b!6799574 (=> (not res!2778698) (not e!4103605))))

(declare-fun b!6799575 () Bool)

(assert (=> b!6799575 (= e!4103609 e!4103607)))

(declare-fun res!2778697 () Bool)

(assert (=> b!6799575 (=> (not res!2778697) (not e!4103607))))

(assert (=> b!6799575 (= res!2778697 call!617760)))

(declare-fun b!6799576 () Bool)

(assert (=> b!6799576 (= e!4103610 e!4103604)))

(assert (=> b!6799576 (= c!1264273 (is-Union!16618 lt!2447667))))

(declare-fun b!6799577 () Bool)

(assert (=> b!6799577 (= e!4103608 call!617761)))

(declare-fun bm!617757 () Bool)

(assert (=> bm!617757 (= call!617760 call!617762)))

(assert (= (and d!2136635 (not res!2778696)) b!6799571))

(assert (= (and b!6799571 c!1264274) b!6799574))

(assert (= (and b!6799571 (not c!1264274)) b!6799576))

(assert (= (and b!6799574 res!2778698) b!6799569))

(assert (= (and b!6799576 c!1264273) b!6799570))

(assert (= (and b!6799576 (not c!1264273)) b!6799572))

(assert (= (and b!6799570 res!2778699) b!6799577))

(assert (= (and b!6799572 (not res!2778695)) b!6799575))

(assert (= (and b!6799575 res!2778697) b!6799573))

(assert (= (or b!6799577 b!6799573) bm!617755))

(assert (= (or b!6799570 b!6799575) bm!617757))

(assert (= (or b!6799569 bm!617757) bm!617756))

(declare-fun m!7546120 () Bool)

(assert (=> bm!617755 m!7546120))

(declare-fun m!7546122 () Bool)

(assert (=> bm!617756 m!7546122))

(declare-fun m!7546124 () Bool)

(assert (=> b!6799574 m!7546124))

(assert (=> d!2136307 d!2136635))

(declare-fun bs!1812287 () Bool)

(declare-fun d!2136637 () Bool)

(assert (= bs!1812287 (and d!2136637 d!2136325)))

(declare-fun lambda!383465 () Int)

(assert (=> bs!1812287 (= lambda!383465 lambda!383363)))

(declare-fun bs!1812288 () Bool)

(assert (= bs!1812288 (and d!2136637 d!2136309)))

(assert (=> bs!1812288 (= lambda!383465 lambda!383358)))

(declare-fun bs!1812289 () Bool)

(assert (= bs!1812289 (and d!2136637 d!2136371)))

(assert (=> bs!1812289 (= lambda!383465 lambda!383391)))

(declare-fun bs!1812290 () Bool)

(assert (= bs!1812290 (and d!2136637 b!6798465)))

(assert (=> bs!1812290 (= lambda!383465 lambda!383325)))

(declare-fun bs!1812291 () Bool)

(assert (= bs!1812291 (and d!2136637 d!2136367)))

(assert (=> bs!1812291 (= lambda!383465 lambda!383388)))

(declare-fun bs!1812292 () Bool)

(assert (= bs!1812292 (and d!2136637 d!2136625)))

(assert (=> bs!1812292 (= lambda!383465 lambda!383464)))

(declare-fun bs!1812293 () Bool)

(assert (= bs!1812293 (and d!2136637 d!2136547)))

(assert (=> bs!1812293 (= lambda!383465 lambda!383448)))

(declare-fun bs!1812294 () Bool)

(assert (= bs!1812294 (and d!2136637 d!2136579)))

(assert (=> bs!1812294 (= lambda!383465 lambda!383456)))

(declare-fun bs!1812295 () Bool)

(assert (= bs!1812295 (and d!2136637 d!2136573)))

(assert (=> bs!1812295 (= lambda!383465 lambda!383454)))

(declare-fun bs!1812296 () Bool)

(assert (= bs!1812296 (and d!2136637 d!2136465)))

(assert (=> bs!1812296 (= lambda!383465 lambda!383415)))

(declare-fun bs!1812297 () Bool)

(assert (= bs!1812297 (and d!2136637 d!2136575)))

(assert (=> bs!1812297 (= lambda!383465 lambda!383455)))

(declare-fun b!6799578 () Bool)

(declare-fun e!4103616 () Bool)

(assert (=> b!6799578 (= e!4103616 (isEmpty!38411 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031)))))))

(declare-fun b!6799579 () Bool)

(declare-fun e!4103615 () Bool)

(declare-fun e!4103611 () Bool)

(assert (=> b!6799579 (= e!4103615 e!4103611)))

(declare-fun c!1264277 () Bool)

(assert (=> b!6799579 (= c!1264277 (isEmpty!38411 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))

(declare-fun b!6799580 () Bool)

(declare-fun e!4103612 () Regex!16618)

(assert (=> b!6799580 (= e!4103612 EmptyLang!16618)))

(declare-fun b!6799581 () Bool)

(declare-fun e!4103614 () Regex!16618)

(assert (=> b!6799581 (= e!4103614 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))

(declare-fun b!6799582 () Bool)

(declare-fun lt!2447800 () Regex!16618)

(assert (=> b!6799582 (= e!4103611 (isEmptyLang!1984 lt!2447800))))

(assert (=> d!2136637 e!4103615))

(declare-fun res!2778700 () Bool)

(assert (=> d!2136637 (=> (not res!2778700) (not e!4103615))))

(assert (=> d!2136637 (= res!2778700 (validRegex!8354 lt!2447800))))

(assert (=> d!2136637 (= lt!2447800 e!4103614)))

(declare-fun c!1264276 () Bool)

(assert (=> d!2136637 (= c!1264276 e!4103616)))

(declare-fun res!2778701 () Bool)

(assert (=> d!2136637 (=> (not res!2778701) (not e!4103616))))

(assert (=> d!2136637 (= res!2778701 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))

(assert (=> d!2136637 (forall!15810 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031)) lambda!383465)))

(assert (=> d!2136637 (= (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))) lt!2447800)))

(declare-fun b!6799583 () Bool)

(declare-fun e!4103613 () Bool)

(assert (=> b!6799583 (= e!4103611 e!4103613)))

(declare-fun c!1264275 () Bool)

(assert (=> b!6799583 (= c!1264275 (isEmpty!38411 (tail!12733 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031)))))))

(declare-fun b!6799584 () Bool)

(assert (=> b!6799584 (= e!4103614 e!4103612)))

(declare-fun c!1264278 () Bool)

(assert (=> b!6799584 (= c!1264278 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))

(declare-fun b!6799585 () Bool)

(assert (=> b!6799585 (= e!4103613 (= lt!2447800 (head!13648 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031)))))))

(declare-fun b!6799586 () Bool)

(assert (=> b!6799586 (= e!4103612 (Union!16618 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))) (generalisedUnion!2462 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031))))))))

(declare-fun b!6799587 () Bool)

(assert (=> b!6799587 (= e!4103613 (isUnion!1414 lt!2447800))))

(assert (= (and d!2136637 res!2778701) b!6799578))

(assert (= (and d!2136637 c!1264276) b!6799581))

(assert (= (and d!2136637 (not c!1264276)) b!6799584))

(assert (= (and b!6799584 c!1264278) b!6799586))

(assert (= (and b!6799584 (not c!1264278)) b!6799580))

(assert (= (and d!2136637 res!2778700) b!6799579))

(assert (= (and b!6799579 c!1264277) b!6799582))

(assert (= (and b!6799579 (not c!1264277)) b!6799583))

(assert (= (and b!6799583 c!1264275) b!6799585))

(assert (= (and b!6799583 (not c!1264275)) b!6799587))

(declare-fun m!7546126 () Bool)

(assert (=> d!2136637 m!7546126))

(assert (=> d!2136637 m!7545324))

(declare-fun m!7546128 () Bool)

(assert (=> d!2136637 m!7546128))

(declare-fun m!7546130 () Bool)

(assert (=> b!6799586 m!7546130))

(assert (=> b!6799585 m!7545324))

(declare-fun m!7546132 () Bool)

(assert (=> b!6799585 m!7546132))

(assert (=> b!6799579 m!7545324))

(declare-fun m!7546134 () Bool)

(assert (=> b!6799579 m!7546134))

(declare-fun m!7546136 () Bool)

(assert (=> b!6799578 m!7546136))

(declare-fun m!7546138 () Bool)

(assert (=> b!6799587 m!7546138))

(assert (=> b!6799583 m!7545324))

(declare-fun m!7546140 () Bool)

(assert (=> b!6799583 m!7546140))

(assert (=> b!6799583 m!7546140))

(declare-fun m!7546142 () Bool)

(assert (=> b!6799583 m!7546142))

(declare-fun m!7546144 () Bool)

(assert (=> b!6799582 m!7546144))

(assert (=> d!2136307 d!2136637))

(declare-fun bs!1812298 () Bool)

(declare-fun d!2136639 () Bool)

(assert (= bs!1812298 (and d!2136639 d!2136325)))

(declare-fun lambda!383466 () Int)

(assert (=> bs!1812298 (= lambda!383466 lambda!383363)))

(declare-fun bs!1812299 () Bool)

(assert (= bs!1812299 (and d!2136639 d!2136309)))

(assert (=> bs!1812299 (= lambda!383466 lambda!383358)))

(declare-fun bs!1812300 () Bool)

(assert (= bs!1812300 (and d!2136639 d!2136371)))

(assert (=> bs!1812300 (= lambda!383466 lambda!383391)))

(declare-fun bs!1812301 () Bool)

(assert (= bs!1812301 (and d!2136639 d!2136637)))

(assert (=> bs!1812301 (= lambda!383466 lambda!383465)))

(declare-fun bs!1812302 () Bool)

(assert (= bs!1812302 (and d!2136639 b!6798465)))

(assert (=> bs!1812302 (= lambda!383466 lambda!383325)))

(declare-fun bs!1812303 () Bool)

(assert (= bs!1812303 (and d!2136639 d!2136367)))

(assert (=> bs!1812303 (= lambda!383466 lambda!383388)))

(declare-fun bs!1812304 () Bool)

(assert (= bs!1812304 (and d!2136639 d!2136625)))

(assert (=> bs!1812304 (= lambda!383466 lambda!383464)))

(declare-fun bs!1812305 () Bool)

(assert (= bs!1812305 (and d!2136639 d!2136547)))

(assert (=> bs!1812305 (= lambda!383466 lambda!383448)))

(declare-fun bs!1812306 () Bool)

(assert (= bs!1812306 (and d!2136639 d!2136579)))

(assert (=> bs!1812306 (= lambda!383466 lambda!383456)))

(declare-fun bs!1812307 () Bool)

(assert (= bs!1812307 (and d!2136639 d!2136573)))

(assert (=> bs!1812307 (= lambda!383466 lambda!383454)))

(declare-fun bs!1812308 () Bool)

(assert (= bs!1812308 (and d!2136639 d!2136465)))

(assert (=> bs!1812308 (= lambda!383466 lambda!383415)))

(declare-fun bs!1812309 () Bool)

(assert (= bs!1812309 (and d!2136639 d!2136575)))

(assert (=> bs!1812309 (= lambda!383466 lambda!383455)))

(declare-fun lt!2447801 () List!66153)

(assert (=> d!2136639 (forall!15810 lt!2447801 lambda!383466)))

(declare-fun e!4103617 () List!66153)

(assert (=> d!2136639 (= lt!2447801 e!4103617)))

(declare-fun c!1264279 () Bool)

(assert (=> d!2136639 (= c!1264279 (is-Cons!66031 (Cons!66031 lt!2447547 Nil!66031)))))

(assert (=> d!2136639 (= (unfocusZipperList!2039 (Cons!66031 lt!2447547 Nil!66031)) lt!2447801)))

(declare-fun b!6799588 () Bool)

(assert (=> b!6799588 (= e!4103617 (Cons!66029 (generalisedConcat!2215 (exprs!6502 (h!72479 (Cons!66031 lt!2447547 Nil!66031)))) (unfocusZipperList!2039 (t!379884 (Cons!66031 lt!2447547 Nil!66031)))))))

(declare-fun b!6799589 () Bool)

(assert (=> b!6799589 (= e!4103617 Nil!66029)))

(assert (= (and d!2136639 c!1264279) b!6799588))

(assert (= (and d!2136639 (not c!1264279)) b!6799589))

(declare-fun m!7546146 () Bool)

(assert (=> d!2136639 m!7546146))

(declare-fun m!7546148 () Bool)

(assert (=> b!6799588 m!7546148))

(declare-fun m!7546150 () Bool)

(assert (=> b!6799588 m!7546150))

(assert (=> d!2136307 d!2136639))

(declare-fun d!2136641 () Bool)

(assert (=> d!2136641 (= (nullable!6597 lt!2447563) (nullableFct!2501 lt!2447563))))

(declare-fun bs!1812310 () Bool)

(assert (= bs!1812310 d!2136641))

(declare-fun m!7546152 () Bool)

(assert (=> bs!1812310 m!7546152))

(assert (=> b!6798784 d!2136641))

(assert (=> d!2136435 d!2136403))

(assert (=> d!2136449 d!2136445))

(declare-fun d!2136643 () Bool)

(assert (=> d!2136643 (= (flatMap!2099 z!1189 lambda!383323) (dynLambda!26366 lambda!383323 (h!72479 zl!343)))))

(assert (=> d!2136643 true))

(declare-fun _$13!4270 () Unit!159927)

(assert (=> d!2136643 (= (choose!50670 z!1189 (h!72479 zl!343) lambda!383323) _$13!4270)))

(declare-fun b_lambda!256279 () Bool)

(assert (=> (not b_lambda!256279) (not d!2136643)))

(declare-fun bs!1812311 () Bool)

(assert (= bs!1812311 d!2136643))

(assert (=> bs!1812311 m!7545082))

(assert (=> bs!1812311 m!7545694))

(assert (=> d!2136449 d!2136643))

(declare-fun d!2136645 () Bool)

(assert (=> d!2136645 (= (isEmpty!38407 (tail!12732 s!2326)) (is-Nil!66030 (tail!12732 s!2326)))))

(assert (=> b!6798788 d!2136645))

(assert (=> b!6798788 d!2136593))

(declare-fun d!2136647 () Bool)

(declare-fun c!1264280 () Bool)

(assert (=> d!2136647 (= c!1264280 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun e!4103618 () Bool)

(assert (=> d!2136647 (= (matchZipper!2604 (derivationStepZipper!2562 lt!2447549 (head!13647 s!2326)) (tail!12732 s!2326)) e!4103618)))

(declare-fun b!6799590 () Bool)

(assert (=> b!6799590 (= e!4103618 (nullableZipper!2325 (derivationStepZipper!2562 lt!2447549 (head!13647 s!2326))))))

(declare-fun b!6799591 () Bool)

(assert (=> b!6799591 (= e!4103618 (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 lt!2447549 (head!13647 s!2326)) (head!13647 (tail!12732 s!2326))) (tail!12732 (tail!12732 s!2326))))))

(assert (= (and d!2136647 c!1264280) b!6799590))

(assert (= (and d!2136647 (not c!1264280)) b!6799591))

(assert (=> d!2136647 m!7545318))

(assert (=> d!2136647 m!7545416))

(assert (=> b!6799590 m!7545316))

(declare-fun m!7546154 () Bool)

(assert (=> b!6799590 m!7546154))

(assert (=> b!6799591 m!7545318))

(assert (=> b!6799591 m!7546046))

(assert (=> b!6799591 m!7545316))

(assert (=> b!6799591 m!7546046))

(declare-fun m!7546156 () Bool)

(assert (=> b!6799591 m!7546156))

(assert (=> b!6799591 m!7545318))

(assert (=> b!6799591 m!7546050))

(assert (=> b!6799591 m!7546156))

(assert (=> b!6799591 m!7546050))

(declare-fun m!7546158 () Bool)

(assert (=> b!6799591 m!7546158))

(assert (=> b!6798613 d!2136647))

(declare-fun bs!1812312 () Bool)

(declare-fun d!2136649 () Bool)

(assert (= bs!1812312 (and d!2136649 b!6798467)))

(declare-fun lambda!383467 () Int)

(assert (=> bs!1812312 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383467 lambda!383323))))

(declare-fun bs!1812313 () Bool)

(assert (= bs!1812313 (and d!2136649 d!2136453)))

(assert (=> bs!1812313 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383467 lambda!383408))))

(declare-fun bs!1812314 () Bool)

(assert (= bs!1812314 (and d!2136649 d!2136315)))

(assert (=> bs!1812314 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383467 lambda!383361))))

(declare-fun bs!1812315 () Bool)

(assert (= bs!1812315 (and d!2136649 d!2136321)))

(assert (=> bs!1812315 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383467 lambda!383362))))

(declare-fun bs!1812316 () Bool)

(assert (= bs!1812316 (and d!2136649 d!2136559)))

(assert (=> bs!1812316 (= (= (head!13647 s!2326) (head!13647 (t!379883 s!2326))) (= lambda!383467 lambda!383449))))

(declare-fun bs!1812317 () Bool)

(assert (= bs!1812317 (and d!2136649 d!2136591)))

(assert (=> bs!1812317 (= lambda!383467 lambda!383457)))

(assert (=> d!2136649 true))

(assert (=> d!2136649 (= (derivationStepZipper!2562 lt!2447549 (head!13647 s!2326)) (flatMap!2099 lt!2447549 lambda!383467))))

(declare-fun bs!1812318 () Bool)

(assert (= bs!1812318 d!2136649))

(declare-fun m!7546160 () Bool)

(assert (=> bs!1812318 m!7546160))

(assert (=> b!6798613 d!2136649))

(assert (=> b!6798613 d!2136581))

(assert (=> b!6798613 d!2136593))

(declare-fun d!2136651 () Bool)

(assert (=> d!2136651 (= (isEmpty!38412 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326)) (not (is-Some!16504 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326))))))

(assert (=> d!2136381 d!2136651))

(declare-fun d!2136653 () Bool)

(declare-fun c!1264281 () Bool)

(assert (=> d!2136653 (= c!1264281 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun e!4103619 () Bool)

(assert (=> d!2136653 (= (matchZipper!2604 (derivationStepZipper!2562 z!1189 (head!13647 s!2326)) (tail!12732 s!2326)) e!4103619)))

(declare-fun b!6799592 () Bool)

(assert (=> b!6799592 (= e!4103619 (nullableZipper!2325 (derivationStepZipper!2562 z!1189 (head!13647 s!2326))))))

(declare-fun b!6799593 () Bool)

(assert (=> b!6799593 (= e!4103619 (matchZipper!2604 (derivationStepZipper!2562 (derivationStepZipper!2562 z!1189 (head!13647 s!2326)) (head!13647 (tail!12732 s!2326))) (tail!12732 (tail!12732 s!2326))))))

(assert (= (and d!2136653 c!1264281) b!6799592))

(assert (= (and d!2136653 (not c!1264281)) b!6799593))

(assert (=> d!2136653 m!7545318))

(assert (=> d!2136653 m!7545416))

(assert (=> b!6799592 m!7545662))

(declare-fun m!7546162 () Bool)

(assert (=> b!6799592 m!7546162))

(assert (=> b!6799593 m!7545318))

(assert (=> b!6799593 m!7546046))

(assert (=> b!6799593 m!7545662))

(assert (=> b!6799593 m!7546046))

(declare-fun m!7546164 () Bool)

(assert (=> b!6799593 m!7546164))

(assert (=> b!6799593 m!7545318))

(assert (=> b!6799593 m!7546050))

(assert (=> b!6799593 m!7546164))

(assert (=> b!6799593 m!7546050))

(declare-fun m!7546166 () Bool)

(assert (=> b!6799593 m!7546166))

(assert (=> b!6799013 d!2136653))

(declare-fun bs!1812319 () Bool)

(declare-fun d!2136655 () Bool)

(assert (= bs!1812319 (and d!2136655 b!6798467)))

(declare-fun lambda!383468 () Int)

(assert (=> bs!1812319 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383468 lambda!383323))))

(declare-fun bs!1812320 () Bool)

(assert (= bs!1812320 (and d!2136655 d!2136453)))

(assert (=> bs!1812320 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383468 lambda!383408))))

(declare-fun bs!1812321 () Bool)

(assert (= bs!1812321 (and d!2136655 d!2136315)))

(assert (=> bs!1812321 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383468 lambda!383361))))

(declare-fun bs!1812322 () Bool)

(assert (= bs!1812322 (and d!2136655 d!2136559)))

(assert (=> bs!1812322 (= (= (head!13647 s!2326) (head!13647 (t!379883 s!2326))) (= lambda!383468 lambda!383449))))

(declare-fun bs!1812323 () Bool)

(assert (= bs!1812323 (and d!2136655 d!2136591)))

(assert (=> bs!1812323 (= lambda!383468 lambda!383457)))

(declare-fun bs!1812324 () Bool)

(assert (= bs!1812324 (and d!2136655 d!2136649)))

(assert (=> bs!1812324 (= lambda!383468 lambda!383467)))

(declare-fun bs!1812325 () Bool)

(assert (= bs!1812325 (and d!2136655 d!2136321)))

(assert (=> bs!1812325 (= (= (head!13647 s!2326) (h!72478 s!2326)) (= lambda!383468 lambda!383362))))

(assert (=> d!2136655 true))

(assert (=> d!2136655 (= (derivationStepZipper!2562 z!1189 (head!13647 s!2326)) (flatMap!2099 z!1189 lambda!383468))))

(declare-fun bs!1812326 () Bool)

(assert (= bs!1812326 d!2136655))

(declare-fun m!7546168 () Bool)

(assert (=> bs!1812326 m!7546168))

(assert (=> b!6799013 d!2136655))

(assert (=> b!6799013 d!2136581))

(assert (=> b!6799013 d!2136593))

(declare-fun bs!1812327 () Bool)

(declare-fun b!6799598 () Bool)

(assert (= bs!1812327 (and b!6799598 b!6798731)))

(declare-fun lambda!383469 () Int)

(assert (=> bs!1812327 (not (= lambda!383469 lambda!383369))))

(declare-fun bs!1812328 () Bool)

(assert (= bs!1812328 (and b!6799598 b!6798444)))

(assert (=> bs!1812328 (= (and (= (reg!16947 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33749 r!7292) r!7292)) (= lambda!383469 lambda!383321))))

(assert (=> bs!1812328 (not (= lambda!383469 lambda!383322))))

(declare-fun bs!1812329 () Bool)

(assert (= bs!1812329 (and b!6799598 d!2136383)))

(assert (=> bs!1812329 (not (= lambda!383469 lambda!383396))))

(declare-fun bs!1812330 () Bool)

(assert (= bs!1812330 (and b!6799598 b!6798734)))

(assert (=> bs!1812330 (= (and (= (reg!16947 (regTwo!33749 r!7292)) (reg!16947 lt!2447563)) (= (regTwo!33749 r!7292) lt!2447563)) (= lambda!383469 lambda!383368))))

(assert (=> bs!1812329 (not (= lambda!383469 lambda!383397))))

(declare-fun bs!1812331 () Bool)

(assert (= bs!1812331 (and b!6799598 d!2136409)))

(assert (=> bs!1812331 (not (= lambda!383469 lambda!383407))))

(declare-fun bs!1812332 () Bool)

(assert (= bs!1812332 (and b!6799598 b!6798797)))

(assert (=> bs!1812332 (= (and (= (reg!16947 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33749 r!7292) r!7292)) (= lambda!383469 lambda!383373))))

(declare-fun bs!1812333 () Bool)

(assert (= bs!1812333 (and b!6799598 d!2136605)))

(assert (=> bs!1812333 (not (= lambda!383469 lambda!383463))))

(assert (=> bs!1812333 (not (= lambda!383469 lambda!383462))))

(declare-fun bs!1812334 () Bool)

(assert (= bs!1812334 (and b!6799598 d!2136393)))

(assert (=> bs!1812334 (= (and (= (reg!16947 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33749 r!7292) (Star!16618 (reg!16947 r!7292)))) (= lambda!383469 lambda!383404))))

(assert (=> bs!1812328 (not (= lambda!383469 lambda!383320))))

(declare-fun bs!1812335 () Bool)

(assert (= bs!1812335 (and b!6799598 b!6798794)))

(assert (=> bs!1812335 (not (= lambda!383469 lambda!383374))))

(assert (=> bs!1812334 (not (= lambda!383469 lambda!383403))))

(assert (=> b!6799598 true))

(assert (=> b!6799598 true))

(declare-fun bs!1812336 () Bool)

(declare-fun b!6799595 () Bool)

(assert (= bs!1812336 (and b!6799595 b!6798731)))

(declare-fun lambda!383470 () Int)

(assert (=> bs!1812336 (= (and (= (regOne!33748 (regTwo!33749 r!7292)) (regOne!33748 lt!2447563)) (= (regTwo!33748 (regTwo!33749 r!7292)) (regTwo!33748 lt!2447563))) (= lambda!383470 lambda!383369))))

(declare-fun bs!1812337 () Bool)

(assert (= bs!1812337 (and b!6799595 b!6799598)))

(assert (=> bs!1812337 (not (= lambda!383470 lambda!383469))))

(declare-fun bs!1812338 () Bool)

(assert (= bs!1812338 (and b!6799595 b!6798444)))

(assert (=> bs!1812338 (not (= lambda!383470 lambda!383321))))

(assert (=> bs!1812338 (= (and (= (regOne!33748 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 r!7292)) r!7292)) (= lambda!383470 lambda!383322))))

(declare-fun bs!1812339 () Bool)

(assert (= bs!1812339 (and b!6799595 d!2136383)))

(assert (=> bs!1812339 (not (= lambda!383470 lambda!383396))))

(declare-fun bs!1812340 () Bool)

(assert (= bs!1812340 (and b!6799595 b!6798734)))

(assert (=> bs!1812340 (not (= lambda!383470 lambda!383368))))

(assert (=> bs!1812339 (= (and (= (regOne!33748 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 r!7292)) r!7292)) (= lambda!383470 lambda!383397))))

(declare-fun bs!1812341 () Bool)

(assert (= bs!1812341 (and b!6799595 d!2136409)))

(assert (=> bs!1812341 (not (= lambda!383470 lambda!383407))))

(declare-fun bs!1812342 () Bool)

(assert (= bs!1812342 (and b!6799595 b!6798797)))

(assert (=> bs!1812342 (not (= lambda!383470 lambda!383373))))

(declare-fun bs!1812343 () Bool)

(assert (= bs!1812343 (and b!6799595 d!2136605)))

(assert (=> bs!1812343 (= (and (= (regOne!33748 (regTwo!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 r!7292)) r!7292)) (= lambda!383470 lambda!383463))))

(assert (=> bs!1812343 (not (= lambda!383470 lambda!383462))))

(declare-fun bs!1812344 () Bool)

(assert (= bs!1812344 (and b!6799595 d!2136393)))

(assert (=> bs!1812344 (not (= lambda!383470 lambda!383404))))

(assert (=> bs!1812338 (not (= lambda!383470 lambda!383320))))

(declare-fun bs!1812345 () Bool)

(assert (= bs!1812345 (and b!6799595 b!6798794)))

(assert (=> bs!1812345 (= (and (= (regOne!33748 (regTwo!33749 r!7292)) (regOne!33748 r!7292)) (= (regTwo!33748 (regTwo!33749 r!7292)) (regTwo!33748 r!7292))) (= lambda!383470 lambda!383374))))

(assert (=> bs!1812344 (not (= lambda!383470 lambda!383403))))

(assert (=> b!6799595 true))

(assert (=> b!6799595 true))

(declare-fun b!6799594 () Bool)

(declare-fun e!4103626 () Bool)

(declare-fun e!4103622 () Bool)

(assert (=> b!6799594 (= e!4103626 e!4103622)))

(declare-fun res!2778702 () Bool)

(assert (=> b!6799594 (= res!2778702 (not (is-EmptyLang!16618 (regTwo!33749 r!7292))))))

(assert (=> b!6799594 (=> (not res!2778702) (not e!4103622))))

(declare-fun e!4103620 () Bool)

(declare-fun call!617763 () Bool)

(assert (=> b!6799595 (= e!4103620 call!617763)))

(declare-fun b!6799596 () Bool)

(declare-fun e!4103624 () Bool)

(assert (=> b!6799596 (= e!4103624 (matchRSpec!3719 (regTwo!33749 (regTwo!33749 r!7292)) s!2326))))

(declare-fun b!6799597 () Bool)

(declare-fun call!617764 () Bool)

(assert (=> b!6799597 (= e!4103626 call!617764)))

(declare-fun e!4103621 () Bool)

(assert (=> b!6799598 (= e!4103621 call!617763)))

(declare-fun b!6799599 () Bool)

(declare-fun e!4103625 () Bool)

(assert (=> b!6799599 (= e!4103625 e!4103624)))

(declare-fun res!2778703 () Bool)

(assert (=> b!6799599 (= res!2778703 (matchRSpec!3719 (regOne!33749 (regTwo!33749 r!7292)) s!2326))))

(assert (=> b!6799599 (=> res!2778703 e!4103624)))

(declare-fun b!6799600 () Bool)

(declare-fun e!4103623 () Bool)

(assert (=> b!6799600 (= e!4103623 (= s!2326 (Cons!66030 (c!1263993 (regTwo!33749 r!7292)) Nil!66030)))))

(declare-fun b!6799601 () Bool)

(declare-fun c!1264282 () Bool)

(assert (=> b!6799601 (= c!1264282 (is-Union!16618 (regTwo!33749 r!7292)))))

(assert (=> b!6799601 (= e!4103623 e!4103625)))

(declare-fun bm!617758 () Bool)

(assert (=> bm!617758 (= call!617764 (isEmpty!38407 s!2326))))

(declare-fun b!6799602 () Bool)

(declare-fun c!1264284 () Bool)

(assert (=> b!6799602 (= c!1264284 (is-ElementMatch!16618 (regTwo!33749 r!7292)))))

(assert (=> b!6799602 (= e!4103622 e!4103623)))

(declare-fun d!2136657 () Bool)

(declare-fun c!1264283 () Bool)

(assert (=> d!2136657 (= c!1264283 (is-EmptyExpr!16618 (regTwo!33749 r!7292)))))

(assert (=> d!2136657 (= (matchRSpec!3719 (regTwo!33749 r!7292) s!2326) e!4103626)))

(declare-fun b!6799603 () Bool)

(assert (=> b!6799603 (= e!4103625 e!4103620)))

(declare-fun c!1264285 () Bool)

(assert (=> b!6799603 (= c!1264285 (is-Star!16618 (regTwo!33749 r!7292)))))

(declare-fun bm!617759 () Bool)

(assert (=> bm!617759 (= call!617763 (Exists!3686 (ite c!1264285 lambda!383469 lambda!383470)))))

(declare-fun b!6799604 () Bool)

(declare-fun res!2778704 () Bool)

(assert (=> b!6799604 (=> res!2778704 e!4103621)))

(assert (=> b!6799604 (= res!2778704 call!617764)))

(assert (=> b!6799604 (= e!4103620 e!4103621)))

(assert (= (and d!2136657 c!1264283) b!6799597))

(assert (= (and d!2136657 (not c!1264283)) b!6799594))

(assert (= (and b!6799594 res!2778702) b!6799602))

(assert (= (and b!6799602 c!1264284) b!6799600))

(assert (= (and b!6799602 (not c!1264284)) b!6799601))

(assert (= (and b!6799601 c!1264282) b!6799599))

(assert (= (and b!6799601 (not c!1264282)) b!6799603))

(assert (= (and b!6799599 (not res!2778703)) b!6799596))

(assert (= (and b!6799603 c!1264285) b!6799604))

(assert (= (and b!6799603 (not c!1264285)) b!6799595))

(assert (= (and b!6799604 (not res!2778704)) b!6799598))

(assert (= (or b!6799598 b!6799595) bm!617759))

(assert (= (or b!6799597 b!6799604) bm!617758))

(declare-fun m!7546170 () Bool)

(assert (=> b!6799596 m!7546170))

(declare-fun m!7546172 () Bool)

(assert (=> b!6799599 m!7546172))

(assert (=> bm!617758 m!7545124))

(declare-fun m!7546174 () Bool)

(assert (=> bm!617759 m!7546174))

(assert (=> b!6798795 d!2136657))

(declare-fun d!2136659 () Bool)

(declare-fun c!1264288 () Bool)

(assert (=> d!2136659 (= c!1264288 (is-Nil!66029 lt!2447685))))

(declare-fun e!4103629 () (Set Regex!16618))

(assert (=> d!2136659 (= (content!12891 lt!2447685) e!4103629)))

(declare-fun b!6799609 () Bool)

(assert (=> b!6799609 (= e!4103629 (as set.empty (Set Regex!16618)))))

(declare-fun b!6799610 () Bool)

(assert (=> b!6799610 (= e!4103629 (set.union (set.insert (h!72477 lt!2447685) (as set.empty (Set Regex!16618))) (content!12891 (t!379882 lt!2447685))))))

(assert (= (and d!2136659 c!1264288) b!6799609))

(assert (= (and d!2136659 (not c!1264288)) b!6799610))

(declare-fun m!7546176 () Bool)

(assert (=> b!6799610 m!7546176))

(declare-fun m!7546178 () Bool)

(assert (=> b!6799610 m!7546178))

(assert (=> d!2136359 d!2136659))

(declare-fun d!2136661 () Bool)

(declare-fun c!1264289 () Bool)

(assert (=> d!2136661 (= c!1264289 (is-Nil!66029 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))

(declare-fun e!4103630 () (Set Regex!16618))

(assert (=> d!2136661 (= (content!12891 (Cons!66029 (reg!16947 r!7292) Nil!66029)) e!4103630)))

(declare-fun b!6799611 () Bool)

(assert (=> b!6799611 (= e!4103630 (as set.empty (Set Regex!16618)))))

(declare-fun b!6799612 () Bool)

(assert (=> b!6799612 (= e!4103630 (set.union (set.insert (h!72477 (Cons!66029 (reg!16947 r!7292) Nil!66029)) (as set.empty (Set Regex!16618))) (content!12891 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))))

(assert (= (and d!2136661 c!1264289) b!6799611))

(assert (= (and d!2136661 (not c!1264289)) b!6799612))

(declare-fun m!7546180 () Bool)

(assert (=> b!6799612 m!7546180))

(declare-fun m!7546182 () Bool)

(assert (=> b!6799612 m!7546182))

(assert (=> d!2136359 d!2136661))

(declare-fun d!2136663 () Bool)

(declare-fun c!1264290 () Bool)

(assert (=> d!2136663 (= c!1264290 (is-Nil!66029 lt!2447567))))

(declare-fun e!4103631 () (Set Regex!16618))

(assert (=> d!2136663 (= (content!12891 lt!2447567) e!4103631)))

(declare-fun b!6799613 () Bool)

(assert (=> b!6799613 (= e!4103631 (as set.empty (Set Regex!16618)))))

(declare-fun b!6799614 () Bool)

(assert (=> b!6799614 (= e!4103631 (set.union (set.insert (h!72477 lt!2447567) (as set.empty (Set Regex!16618))) (content!12891 (t!379882 lt!2447567))))))

(assert (= (and d!2136663 c!1264290) b!6799613))

(assert (= (and d!2136663 (not c!1264290)) b!6799614))

(declare-fun m!7546184 () Bool)

(assert (=> b!6799614 m!7546184))

(declare-fun m!7546186 () Bool)

(assert (=> b!6799614 m!7546186))

(assert (=> d!2136359 d!2136663))

(declare-fun d!2136665 () Bool)

(declare-fun res!2778709 () Bool)

(declare-fun e!4103636 () Bool)

(assert (=> d!2136665 (=> res!2778709 e!4103636)))

(assert (=> d!2136665 (= res!2778709 (is-Nil!66031 lt!2447671))))

(assert (=> d!2136665 (= (noDuplicate!2403 lt!2447671) e!4103636)))

(declare-fun b!6799619 () Bool)

(declare-fun e!4103637 () Bool)

(assert (=> b!6799619 (= e!4103636 e!4103637)))

(declare-fun res!2778710 () Bool)

(assert (=> b!6799619 (=> (not res!2778710) (not e!4103637))))

(declare-fun contains!20296 (List!66155 Context!12004) Bool)

(assert (=> b!6799619 (= res!2778710 (not (contains!20296 (t!379884 lt!2447671) (h!72479 lt!2447671))))))

(declare-fun b!6799620 () Bool)

(assert (=> b!6799620 (= e!4103637 (noDuplicate!2403 (t!379884 lt!2447671)))))

(assert (= (and d!2136665 (not res!2778709)) b!6799619))

(assert (= (and b!6799619 res!2778710) b!6799620))

(declare-fun m!7546188 () Bool)

(assert (=> b!6799619 m!7546188))

(declare-fun m!7546190 () Bool)

(assert (=> b!6799620 m!7546190))

(assert (=> d!2136329 d!2136665))

(declare-fun d!2136667 () Bool)

(declare-fun e!4103644 () Bool)

(assert (=> d!2136667 e!4103644))

(declare-fun res!2778715 () Bool)

(assert (=> d!2136667 (=> (not res!2778715) (not e!4103644))))

(declare-fun res!2778716 () List!66155)

(assert (=> d!2136667 (= res!2778715 (noDuplicate!2403 res!2778716))))

(declare-fun e!4103646 () Bool)

(assert (=> d!2136667 e!4103646))

(assert (=> d!2136667 (= (choose!50660 z!1189) res!2778716)))

(declare-fun b!6799628 () Bool)

(declare-fun e!4103645 () Bool)

(declare-fun tp!1861730 () Bool)

(assert (=> b!6799628 (= e!4103645 tp!1861730)))

(declare-fun tp!1861731 () Bool)

(declare-fun b!6799627 () Bool)

(assert (=> b!6799627 (= e!4103646 (and (inv!84793 (h!72479 res!2778716)) e!4103645 tp!1861731))))

(declare-fun b!6799629 () Bool)

(assert (=> b!6799629 (= e!4103644 (= (content!12890 res!2778716) z!1189))))

(assert (= b!6799627 b!6799628))

(assert (= (and d!2136667 (is-Cons!66031 res!2778716)) b!6799627))

(assert (= (and d!2136667 res!2778715) b!6799629))

(declare-fun m!7546192 () Bool)

(assert (=> d!2136667 m!7546192))

(declare-fun m!7546194 () Bool)

(assert (=> b!6799627 m!7546194))

(declare-fun m!7546196 () Bool)

(assert (=> b!6799629 m!7546196))

(assert (=> d!2136329 d!2136667))

(assert (=> d!2136455 d!2136463))

(declare-fun d!2136669 () Bool)

(assert (=> d!2136669 (= (flatMap!2099 lt!2447561 lambda!383323) (dynLambda!26366 lambda!383323 lt!2447547))))

(assert (=> d!2136669 true))

(declare-fun _$13!4271 () Unit!159927)

(assert (=> d!2136669 (= (choose!50670 lt!2447561 lt!2447547 lambda!383323) _$13!4271)))

(declare-fun b_lambda!256281 () Bool)

(assert (=> (not b_lambda!256281) (not d!2136669)))

(declare-fun bs!1812346 () Bool)

(assert (= bs!1812346 d!2136669))

(assert (=> bs!1812346 m!7545164))

(assert (=> bs!1812346 m!7545704))

(assert (=> d!2136455 d!2136669))

(assert (=> d!2136303 d!2136403))

(declare-fun d!2136671 () Bool)

(assert (=> d!2136671 (= (head!13648 (unfocusZipperList!2039 zl!343)) (h!72477 (unfocusZipperList!2039 zl!343)))))

(assert (=> b!6798891 d!2136671))

(declare-fun b!6799641 () Bool)

(declare-fun e!4103651 () Bool)

(declare-fun lt!2447804 () List!66154)

(assert (=> b!6799641 (= e!4103651 (or (not (= (_2!36896 (get!22997 lt!2447723)) Nil!66030)) (= lt!2447804 (_1!36896 (get!22997 lt!2447723)))))))

(declare-fun b!6799639 () Bool)

(declare-fun e!4103652 () List!66154)

(assert (=> b!6799639 (= e!4103652 (Cons!66030 (h!72478 (_1!36896 (get!22997 lt!2447723))) (++!14784 (t!379883 (_1!36896 (get!22997 lt!2447723))) (_2!36896 (get!22997 lt!2447723)))))))

(declare-fun d!2136673 () Bool)

(assert (=> d!2136673 e!4103651))

(declare-fun res!2778721 () Bool)

(assert (=> d!2136673 (=> (not res!2778721) (not e!4103651))))

(declare-fun content!12894 (List!66154) (Set C!33506))

(assert (=> d!2136673 (= res!2778721 (= (content!12894 lt!2447804) (set.union (content!12894 (_1!36896 (get!22997 lt!2447723))) (content!12894 (_2!36896 (get!22997 lt!2447723))))))))

(assert (=> d!2136673 (= lt!2447804 e!4103652)))

(declare-fun c!1264293 () Bool)

(assert (=> d!2136673 (= c!1264293 (is-Nil!66030 (_1!36896 (get!22997 lt!2447723))))))

(assert (=> d!2136673 (= (++!14784 (_1!36896 (get!22997 lt!2447723)) (_2!36896 (get!22997 lt!2447723))) lt!2447804)))

(declare-fun b!6799638 () Bool)

(assert (=> b!6799638 (= e!4103652 (_2!36896 (get!22997 lt!2447723)))))

(declare-fun b!6799640 () Bool)

(declare-fun res!2778722 () Bool)

(assert (=> b!6799640 (=> (not res!2778722) (not e!4103651))))

(declare-fun size!40662 (List!66154) Int)

(assert (=> b!6799640 (= res!2778722 (= (size!40662 lt!2447804) (+ (size!40662 (_1!36896 (get!22997 lt!2447723))) (size!40662 (_2!36896 (get!22997 lt!2447723))))))))

(assert (= (and d!2136673 c!1264293) b!6799638))

(assert (= (and d!2136673 (not c!1264293)) b!6799639))

(assert (= (and d!2136673 res!2778721) b!6799640))

(assert (= (and b!6799640 res!2778722) b!6799641))

(declare-fun m!7546198 () Bool)

(assert (=> b!6799639 m!7546198))

(declare-fun m!7546200 () Bool)

(assert (=> d!2136673 m!7546200))

(declare-fun m!7546202 () Bool)

(assert (=> d!2136673 m!7546202))

(declare-fun m!7546204 () Bool)

(assert (=> d!2136673 m!7546204))

(declare-fun m!7546206 () Bool)

(assert (=> b!6799640 m!7546206))

(declare-fun m!7546208 () Bool)

(assert (=> b!6799640 m!7546208))

(declare-fun m!7546210 () Bool)

(assert (=> b!6799640 m!7546210))

(assert (=> b!6798978 d!2136673))

(declare-fun d!2136675 () Bool)

(assert (=> d!2136675 (= (get!22997 lt!2447723) (v!52710 lt!2447723))))

(assert (=> b!6798978 d!2136675))

(declare-fun d!2136677 () Bool)

(assert (=> d!2136677 true))

(assert (=> d!2136677 true))

(declare-fun res!2778723 () Bool)

(assert (=> d!2136677 (= (choose!50665 lambda!383322) res!2778723)))

(assert (=> d!2136405 d!2136677))

(declare-fun call!617765 () (Set Context!12004))

(declare-fun b!6799642 () Bool)

(declare-fun e!4103654 () (Set Context!12004))

(assert (=> b!6799642 (= e!4103654 (set.union call!617765 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565)))))) (h!72478 s!2326))))))

(declare-fun b!6799643 () Bool)

(declare-fun e!4103653 () (Set Context!12004))

(assert (=> b!6799643 (= e!4103654 e!4103653)))

(declare-fun c!1264295 () Bool)

(assert (=> b!6799643 (= c!1264295 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565))))))))

(declare-fun b!6799644 () Bool)

(assert (=> b!6799644 (= e!4103653 call!617765)))

(declare-fun b!6799645 () Bool)

(assert (=> b!6799645 (= e!4103653 (as set.empty (Set Context!12004)))))

(declare-fun b!6799646 () Bool)

(declare-fun e!4103655 () Bool)

(assert (=> b!6799646 (= e!4103655 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565)))))))))

(declare-fun d!2136679 () Bool)

(declare-fun c!1264294 () Bool)

(assert (=> d!2136679 (= c!1264294 e!4103655)))

(declare-fun res!2778724 () Bool)

(assert (=> d!2136679 (=> (not res!2778724) (not e!4103655))))

(assert (=> d!2136679 (= res!2778724 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565))))))))

(assert (=> d!2136679 (= (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (h!72478 s!2326)) e!4103654)))

(declare-fun bm!617760 () Bool)

(assert (=> bm!617760 (= call!617765 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565))))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565)))))) (h!72478 s!2326)))))

(assert (= (and d!2136679 res!2778724) b!6799646))

(assert (= (and d!2136679 c!1264294) b!6799642))

(assert (= (and d!2136679 (not c!1264294)) b!6799643))

(assert (= (and b!6799643 c!1264295) b!6799644))

(assert (= (and b!6799643 (not c!1264295)) b!6799645))

(assert (= (or b!6799642 b!6799644) bm!617760))

(declare-fun m!7546212 () Bool)

(assert (=> b!6799642 m!7546212))

(declare-fun m!7546214 () Bool)

(assert (=> b!6799646 m!7546214))

(declare-fun m!7546216 () Bool)

(assert (=> bm!617760 m!7546216))

(assert (=> b!6799040 d!2136679))

(declare-fun b!6799647 () Bool)

(declare-fun e!4103657 () Bool)

(declare-fun call!617768 () Bool)

(assert (=> b!6799647 (= e!4103657 call!617768)))

(declare-fun b!6799648 () Bool)

(declare-fun res!2778729 () Bool)

(declare-fun e!4103660 () Bool)

(assert (=> b!6799648 (=> (not res!2778729) (not e!4103660))))

(declare-fun call!617766 () Bool)

(assert (=> b!6799648 (= res!2778729 call!617766)))

(declare-fun e!4103656 () Bool)

(assert (=> b!6799648 (= e!4103656 e!4103660)))

(declare-fun b!6799649 () Bool)

(declare-fun e!4103658 () Bool)

(declare-fun e!4103662 () Bool)

(assert (=> b!6799649 (= e!4103658 e!4103662)))

(declare-fun c!1264297 () Bool)

(assert (=> b!6799649 (= c!1264297 (is-Star!16618 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))

(declare-fun b!6799650 () Bool)

(declare-fun res!2778725 () Bool)

(declare-fun e!4103661 () Bool)

(assert (=> b!6799650 (=> res!2778725 e!4103661)))

(assert (=> b!6799650 (= res!2778725 (not (is-Concat!25463 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292))))))))

(assert (=> b!6799650 (= e!4103656 e!4103661)))

(declare-fun d!2136681 () Bool)

(declare-fun res!2778726 () Bool)

(assert (=> d!2136681 (=> res!2778726 e!4103658)))

(assert (=> d!2136681 (= res!2778726 (is-ElementMatch!16618 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))

(assert (=> d!2136681 (= (validRegex!8354 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))) e!4103658)))

(declare-fun c!1264296 () Bool)

(declare-fun call!617767 () Bool)

(declare-fun bm!617761 () Bool)

(assert (=> bm!617761 (= call!617767 (validRegex!8354 (ite c!1264296 (regTwo!33749 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))) (regTwo!33748 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))))

(declare-fun bm!617762 () Bool)

(assert (=> bm!617762 (= call!617768 (validRegex!8354 (ite c!1264297 (reg!16947 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))) (ite c!1264296 (regOne!33749 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))) (regOne!33748 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292))))))))))

(declare-fun b!6799651 () Bool)

(declare-fun e!4103659 () Bool)

(assert (=> b!6799651 (= e!4103659 call!617767)))

(declare-fun b!6799652 () Bool)

(assert (=> b!6799652 (= e!4103662 e!4103657)))

(declare-fun res!2778728 () Bool)

(assert (=> b!6799652 (= res!2778728 (not (nullable!6597 (reg!16947 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))))

(assert (=> b!6799652 (=> (not res!2778728) (not e!4103657))))

(declare-fun b!6799653 () Bool)

(assert (=> b!6799653 (= e!4103661 e!4103659)))

(declare-fun res!2778727 () Bool)

(assert (=> b!6799653 (=> (not res!2778727) (not e!4103659))))

(assert (=> b!6799653 (= res!2778727 call!617766)))

(declare-fun b!6799654 () Bool)

(assert (=> b!6799654 (= e!4103662 e!4103656)))

(assert (=> b!6799654 (= c!1264296 (is-Union!16618 (ite c!1264039 (reg!16947 r!7292) (ite c!1264038 (regOne!33749 r!7292) (regOne!33748 r!7292)))))))

(declare-fun b!6799655 () Bool)

(assert (=> b!6799655 (= e!4103660 call!617767)))

(declare-fun bm!617763 () Bool)

(assert (=> bm!617763 (= call!617766 call!617768)))

(assert (= (and d!2136681 (not res!2778726)) b!6799649))

(assert (= (and b!6799649 c!1264297) b!6799652))

(assert (= (and b!6799649 (not c!1264297)) b!6799654))

(assert (= (and b!6799652 res!2778728) b!6799647))

(assert (= (and b!6799654 c!1264296) b!6799648))

(assert (= (and b!6799654 (not c!1264296)) b!6799650))

(assert (= (and b!6799648 res!2778729) b!6799655))

(assert (= (and b!6799650 (not res!2778725)) b!6799653))

(assert (= (and b!6799653 res!2778727) b!6799651))

(assert (= (or b!6799655 b!6799651) bm!617761))

(assert (= (or b!6799648 b!6799653) bm!617763))

(assert (= (or b!6799647 bm!617763) bm!617762))

(declare-fun m!7546218 () Bool)

(assert (=> bm!617761 m!7546218))

(declare-fun m!7546220 () Bool)

(assert (=> bm!617762 m!7546220))

(declare-fun m!7546222 () Bool)

(assert (=> b!6799652 m!7546222))

(assert (=> bm!617657 d!2136681))

(declare-fun d!2136683 () Bool)

(assert (=> d!2136683 (= (nullable!6597 r!7292) (nullableFct!2501 r!7292))))

(declare-fun bs!1812347 () Bool)

(assert (= bs!1812347 d!2136683))

(declare-fun m!7546224 () Bool)

(assert (=> bs!1812347 m!7546224))

(assert (=> b!6798811 d!2136683))

(declare-fun bm!617764 () Bool)

(declare-fun call!617769 () Bool)

(assert (=> bm!617764 (= call!617769 (isEmpty!38407 (_2!36896 (get!22997 lt!2447723))))))

(declare-fun b!6799656 () Bool)

(declare-fun res!2778731 () Bool)

(declare-fun e!4103664 () Bool)

(assert (=> b!6799656 (=> res!2778731 e!4103664)))

(assert (=> b!6799656 (= res!2778731 (not (isEmpty!38407 (tail!12732 (_2!36896 (get!22997 lt!2447723))))))))

(declare-fun b!6799657 () Bool)

(declare-fun e!4103665 () Bool)

(assert (=> b!6799657 (= e!4103665 (= (head!13647 (_2!36896 (get!22997 lt!2447723))) (c!1263993 r!7292)))))

(declare-fun b!6799658 () Bool)

(declare-fun e!4103666 () Bool)

(declare-fun e!4103668 () Bool)

(assert (=> b!6799658 (= e!4103666 e!4103668)))

(declare-fun c!1264298 () Bool)

(assert (=> b!6799658 (= c!1264298 (is-EmptyLang!16618 r!7292))))

(declare-fun b!6799659 () Bool)

(declare-fun res!2778735 () Bool)

(declare-fun e!4103669 () Bool)

(assert (=> b!6799659 (=> res!2778735 e!4103669)))

(assert (=> b!6799659 (= res!2778735 e!4103665)))

(declare-fun res!2778737 () Bool)

(assert (=> b!6799659 (=> (not res!2778737) (not e!4103665))))

(declare-fun lt!2447805 () Bool)

(assert (=> b!6799659 (= res!2778737 lt!2447805)))

(declare-fun b!6799660 () Bool)

(assert (=> b!6799660 (= e!4103664 (not (= (head!13647 (_2!36896 (get!22997 lt!2447723))) (c!1263993 r!7292))))))

(declare-fun b!6799661 () Bool)

(declare-fun res!2778732 () Bool)

(assert (=> b!6799661 (=> (not res!2778732) (not e!4103665))))

(assert (=> b!6799661 (= res!2778732 (not call!617769))))

(declare-fun d!2136685 () Bool)

(assert (=> d!2136685 e!4103666))

(declare-fun c!1264300 () Bool)

(assert (=> d!2136685 (= c!1264300 (is-EmptyExpr!16618 r!7292))))

(declare-fun e!4103663 () Bool)

(assert (=> d!2136685 (= lt!2447805 e!4103663)))

(declare-fun c!1264299 () Bool)

(assert (=> d!2136685 (= c!1264299 (isEmpty!38407 (_2!36896 (get!22997 lt!2447723))))))

(assert (=> d!2136685 (validRegex!8354 r!7292)))

(assert (=> d!2136685 (= (matchR!8801 r!7292 (_2!36896 (get!22997 lt!2447723))) lt!2447805)))

(declare-fun b!6799662 () Bool)

(declare-fun e!4103667 () Bool)

(assert (=> b!6799662 (= e!4103667 e!4103664)))

(declare-fun res!2778733 () Bool)

(assert (=> b!6799662 (=> res!2778733 e!4103664)))

(assert (=> b!6799662 (= res!2778733 call!617769)))

(declare-fun b!6799663 () Bool)

(assert (=> b!6799663 (= e!4103663 (nullable!6597 r!7292))))

(declare-fun b!6799664 () Bool)

(assert (=> b!6799664 (= e!4103666 (= lt!2447805 call!617769))))

(declare-fun b!6799665 () Bool)

(declare-fun res!2778730 () Bool)

(assert (=> b!6799665 (=> res!2778730 e!4103669)))

(assert (=> b!6799665 (= res!2778730 (not (is-ElementMatch!16618 r!7292)))))

(assert (=> b!6799665 (= e!4103668 e!4103669)))

(declare-fun b!6799666 () Bool)

(assert (=> b!6799666 (= e!4103668 (not lt!2447805))))

(declare-fun b!6799667 () Bool)

(declare-fun res!2778736 () Bool)

(assert (=> b!6799667 (=> (not res!2778736) (not e!4103665))))

(assert (=> b!6799667 (= res!2778736 (isEmpty!38407 (tail!12732 (_2!36896 (get!22997 lt!2447723)))))))

(declare-fun b!6799668 () Bool)

(assert (=> b!6799668 (= e!4103669 e!4103667)))

(declare-fun res!2778734 () Bool)

(assert (=> b!6799668 (=> (not res!2778734) (not e!4103667))))

(assert (=> b!6799668 (= res!2778734 (not lt!2447805))))

(declare-fun b!6799669 () Bool)

(assert (=> b!6799669 (= e!4103663 (matchR!8801 (derivativeStep!5282 r!7292 (head!13647 (_2!36896 (get!22997 lt!2447723)))) (tail!12732 (_2!36896 (get!22997 lt!2447723)))))))

(assert (= (and d!2136685 c!1264299) b!6799663))

(assert (= (and d!2136685 (not c!1264299)) b!6799669))

(assert (= (and d!2136685 c!1264300) b!6799664))

(assert (= (and d!2136685 (not c!1264300)) b!6799658))

(assert (= (and b!6799658 c!1264298) b!6799666))

(assert (= (and b!6799658 (not c!1264298)) b!6799665))

(assert (= (and b!6799665 (not res!2778730)) b!6799659))

(assert (= (and b!6799659 res!2778737) b!6799661))

(assert (= (and b!6799661 res!2778732) b!6799667))

(assert (= (and b!6799667 res!2778736) b!6799657))

(assert (= (and b!6799659 (not res!2778735)) b!6799668))

(assert (= (and b!6799668 res!2778734) b!6799662))

(assert (= (and b!6799662 (not res!2778733)) b!6799656))

(assert (= (and b!6799656 (not res!2778731)) b!6799660))

(assert (= (or b!6799664 b!6799661 b!6799662) bm!617764))

(declare-fun m!7546226 () Bool)

(assert (=> b!6799656 m!7546226))

(assert (=> b!6799656 m!7546226))

(declare-fun m!7546228 () Bool)

(assert (=> b!6799656 m!7546228))

(assert (=> b!6799663 m!7545436))

(declare-fun m!7546230 () Bool)

(assert (=> b!6799657 m!7546230))

(assert (=> b!6799669 m!7546230))

(assert (=> b!6799669 m!7546230))

(declare-fun m!7546232 () Bool)

(assert (=> b!6799669 m!7546232))

(assert (=> b!6799669 m!7546226))

(assert (=> b!6799669 m!7546232))

(assert (=> b!6799669 m!7546226))

(declare-fun m!7546234 () Bool)

(assert (=> b!6799669 m!7546234))

(declare-fun m!7546236 () Bool)

(assert (=> bm!617764 m!7546236))

(assert (=> b!6799667 m!7546226))

(assert (=> b!6799667 m!7546226))

(assert (=> b!6799667 m!7546228))

(assert (=> b!6799660 m!7546230))

(assert (=> d!2136685 m!7546236))

(assert (=> d!2136685 m!7545148))

(assert (=> b!6798982 d!2136685))

(assert (=> b!6798982 d!2136675))

(assert (=> bs!1812153 d!2136441))

(assert (=> b!6798815 d!2136645))

(assert (=> b!6798815 d!2136593))

(declare-fun d!2136687 () Bool)

(assert (=> d!2136687 (= (nullable!6597 (h!72477 (exprs!6502 lt!2447565))) (nullableFct!2501 (h!72477 (exprs!6502 lt!2447565))))))

(declare-fun bs!1812348 () Bool)

(assert (= bs!1812348 d!2136687))

(declare-fun m!7546238 () Bool)

(assert (=> bs!1812348 m!7546238))

(assert (=> b!6799044 d!2136687))

(declare-fun d!2136689 () Bool)

(assert (=> d!2136689 true))

(declare-fun setRes!46603 () Bool)

(assert (=> d!2136689 setRes!46603))

(declare-fun condSetEmpty!46603 () Bool)

(declare-fun res!2778738 () (Set Context!12004))

(assert (=> d!2136689 (= condSetEmpty!46603 (= res!2778738 (as set.empty (Set Context!12004))))))

(assert (=> d!2136689 (= (choose!50669 lt!2447561 lambda!383323) res!2778738)))

(declare-fun setIsEmpty!46603 () Bool)

(assert (=> setIsEmpty!46603 setRes!46603))

(declare-fun tp!1861732 () Bool)

(declare-fun e!4103670 () Bool)

(declare-fun setElem!46603 () Context!12004)

(declare-fun setNonEmpty!46603 () Bool)

(assert (=> setNonEmpty!46603 (= setRes!46603 (and tp!1861732 (inv!84793 setElem!46603) e!4103670))))

(declare-fun setRest!46603 () (Set Context!12004))

(assert (=> setNonEmpty!46603 (= res!2778738 (set.union (set.insert setElem!46603 (as set.empty (Set Context!12004))) setRest!46603))))

(declare-fun b!6799670 () Bool)

(declare-fun tp!1861733 () Bool)

(assert (=> b!6799670 (= e!4103670 tp!1861733)))

(assert (= (and d!2136689 condSetEmpty!46603) setIsEmpty!46603))

(assert (= (and d!2136689 (not condSetEmpty!46603)) setNonEmpty!46603))

(assert (= setNonEmpty!46603 b!6799670))

(declare-fun m!7546240 () Bool)

(assert (=> setNonEmpty!46603 m!7546240))

(assert (=> d!2136463 d!2136689))

(assert (=> bm!617667 d!2136403))

(declare-fun b!6799671 () Bool)

(declare-fun e!4103675 () (Set Context!12004))

(assert (=> b!6799671 (= e!4103675 (set.insert (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (as set.empty (Set Context!12004))))))

(declare-fun b!6799672 () Bool)

(declare-fun c!1264302 () Bool)

(declare-fun e!4103674 () Bool)

(assert (=> b!6799672 (= c!1264302 e!4103674)))

(declare-fun res!2778739 () Bool)

(assert (=> b!6799672 (=> (not res!2778739) (not e!4103674))))

(assert (=> b!6799672 (= res!2778739 (is-Concat!25463 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun e!4103672 () (Set Context!12004))

(declare-fun e!4103671 () (Set Context!12004))

(assert (=> b!6799672 (= e!4103672 e!4103671)))

(declare-fun b!6799673 () Bool)

(assert (=> b!6799673 (= e!4103675 e!4103672)))

(declare-fun c!1264303 () Bool)

(assert (=> b!6799673 (= c!1264303 (is-Union!16618 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799674 () Bool)

(declare-fun e!4103673 () (Set Context!12004))

(declare-fun call!617771 () (Set Context!12004))

(assert (=> b!6799674 (= e!4103673 call!617771)))

(declare-fun c!1264305 () Bool)

(declare-fun call!617770 () (Set Context!12004))

(declare-fun call!617773 () List!66153)

(declare-fun bm!617765 () Bool)

(assert (=> bm!617765 (= call!617770 (derivationStepZipperDown!1846 (ite c!1264303 (regOne!33749 (h!72477 (exprs!6502 (h!72479 zl!343)))) (ite c!1264302 (regTwo!33748 (h!72477 (exprs!6502 (h!72479 zl!343)))) (ite c!1264305 (regOne!33748 (h!72477 (exprs!6502 (h!72479 zl!343)))) (reg!16947 (h!72477 (exprs!6502 (h!72479 zl!343))))))) (ite (or c!1264303 c!1264302) (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (Context!12005 call!617773)) (h!72478 s!2326)))))

(declare-fun b!6799675 () Bool)

(declare-fun e!4103676 () (Set Context!12004))

(assert (=> b!6799675 (= e!4103676 call!617771)))

(declare-fun d!2136691 () Bool)

(declare-fun c!1264301 () Bool)

(assert (=> d!2136691 (= c!1264301 (and (is-ElementMatch!16618 (h!72477 (exprs!6502 (h!72479 zl!343)))) (= (c!1263993 (h!72477 (exprs!6502 (h!72479 zl!343)))) (h!72478 s!2326))))))

(assert (=> d!2136691 (= (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (h!72479 zl!343))) (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (h!72478 s!2326)) e!4103675)))

(declare-fun bm!617766 () Bool)

(declare-fun call!617775 () List!66153)

(assert (=> bm!617766 (= call!617773 call!617775)))

(declare-fun call!617772 () (Set Context!12004))

(declare-fun bm!617767 () Bool)

(assert (=> bm!617767 (= call!617772 (derivationStepZipperDown!1846 (ite c!1264303 (regTwo!33749 (h!72477 (exprs!6502 (h!72479 zl!343)))) (regOne!33748 (h!72477 (exprs!6502 (h!72479 zl!343))))) (ite c!1264303 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343)))) (Context!12005 call!617775)) (h!72478 s!2326)))))

(declare-fun b!6799676 () Bool)

(assert (=> b!6799676 (= e!4103671 e!4103676)))

(assert (=> b!6799676 (= c!1264305 (is-Concat!25463 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799677 () Bool)

(assert (=> b!6799677 (= e!4103672 (set.union call!617770 call!617772))))

(declare-fun bm!617768 () Bool)

(declare-fun call!617774 () (Set Context!12004))

(assert (=> bm!617768 (= call!617774 call!617770)))

(declare-fun bm!617769 () Bool)

(assert (=> bm!617769 (= call!617771 call!617774)))

(declare-fun b!6799678 () Bool)

(assert (=> b!6799678 (= e!4103674 (nullable!6597 (regOne!33748 (h!72477 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun bm!617770 () Bool)

(assert (=> bm!617770 (= call!617775 ($colon$colon!2427 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (h!72479 zl!343))))) (ite (or c!1264302 c!1264305) (regTwo!33748 (h!72477 (exprs!6502 (h!72479 zl!343)))) (h!72477 (exprs!6502 (h!72479 zl!343))))))))

(declare-fun b!6799679 () Bool)

(declare-fun c!1264304 () Bool)

(assert (=> b!6799679 (= c!1264304 (is-Star!16618 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(assert (=> b!6799679 (= e!4103676 e!4103673)))

(declare-fun b!6799680 () Bool)

(assert (=> b!6799680 (= e!4103673 (as set.empty (Set Context!12004)))))

(declare-fun b!6799681 () Bool)

(assert (=> b!6799681 (= e!4103671 (set.union call!617772 call!617774))))

(assert (= (and d!2136691 c!1264301) b!6799671))

(assert (= (and d!2136691 (not c!1264301)) b!6799673))

(assert (= (and b!6799673 c!1264303) b!6799677))

(assert (= (and b!6799673 (not c!1264303)) b!6799672))

(assert (= (and b!6799672 res!2778739) b!6799678))

(assert (= (and b!6799672 c!1264302) b!6799681))

(assert (= (and b!6799672 (not c!1264302)) b!6799676))

(assert (= (and b!6799676 c!1264305) b!6799675))

(assert (= (and b!6799676 (not c!1264305)) b!6799679))

(assert (= (and b!6799679 c!1264304) b!6799674))

(assert (= (and b!6799679 (not c!1264304)) b!6799680))

(assert (= (or b!6799675 b!6799674) bm!617766))

(assert (= (or b!6799675 b!6799674) bm!617769))

(assert (= (or b!6799681 bm!617766) bm!617770))

(assert (= (or b!6799681 bm!617769) bm!617768))

(assert (= (or b!6799677 b!6799681) bm!617767))

(assert (= (or b!6799677 bm!617768) bm!617765))

(declare-fun m!7546242 () Bool)

(assert (=> bm!617767 m!7546242))

(declare-fun m!7546244 () Bool)

(assert (=> b!6799671 m!7546244))

(declare-fun m!7546246 () Bool)

(assert (=> b!6799678 m!7546246))

(declare-fun m!7546248 () Bool)

(assert (=> bm!617770 m!7546248))

(declare-fun m!7546250 () Bool)

(assert (=> bm!617765 m!7546250))

(assert (=> bm!617702 d!2136691))

(declare-fun d!2136693 () Bool)

(assert (=> d!2136693 (= (isDefined!13208 lt!2447723) (not (isEmpty!38412 lt!2447723)))))

(declare-fun bs!1812349 () Bool)

(assert (= bs!1812349 d!2136693))

(declare-fun m!7546252 () Bool)

(assert (=> bs!1812349 m!7546252))

(assert (=> b!6798986 d!2136693))

(declare-fun e!4103681 () (Set Context!12004))

(declare-fun b!6799682 () Bool)

(assert (=> b!6799682 (= e!4103681 (set.insert (ite c!1264142 lt!2447565 (Context!12005 call!617705)) (as set.empty (Set Context!12004))))))

(declare-fun b!6799683 () Bool)

(declare-fun c!1264307 () Bool)

(declare-fun e!4103680 () Bool)

(assert (=> b!6799683 (= c!1264307 e!4103680)))

(declare-fun res!2778740 () Bool)

(assert (=> b!6799683 (=> (not res!2778740) (not e!4103680))))

(assert (=> b!6799683 (= res!2778740 (is-Concat!25463 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))))))

(declare-fun e!4103678 () (Set Context!12004))

(declare-fun e!4103677 () (Set Context!12004))

(assert (=> b!6799683 (= e!4103678 e!4103677)))

(declare-fun b!6799684 () Bool)

(assert (=> b!6799684 (= e!4103681 e!4103678)))

(declare-fun c!1264308 () Bool)

(assert (=> b!6799684 (= c!1264308 (is-Union!16618 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))))))

(declare-fun b!6799685 () Bool)

(declare-fun e!4103679 () (Set Context!12004))

(declare-fun call!617777 () (Set Context!12004))

(assert (=> b!6799685 (= e!4103679 call!617777)))

(declare-fun bm!617771 () Bool)

(declare-fun call!617779 () List!66153)

(declare-fun c!1264310 () Bool)

(declare-fun call!617776 () (Set Context!12004))

(assert (=> bm!617771 (= call!617776 (derivationStepZipperDown!1846 (ite c!1264308 (regOne!33749 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (ite c!1264307 (regTwo!33748 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (ite c!1264310 (regOne!33748 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (reg!16947 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))))))) (ite (or c!1264308 c!1264307) (ite c!1264142 lt!2447565 (Context!12005 call!617705)) (Context!12005 call!617779)) (h!72478 s!2326)))))

(declare-fun b!6799686 () Bool)

(declare-fun e!4103682 () (Set Context!12004))

(assert (=> b!6799686 (= e!4103682 call!617777)))

(declare-fun d!2136695 () Bool)

(declare-fun c!1264306 () Bool)

(assert (=> d!2136695 (= c!1264306 (and (is-ElementMatch!16618 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (= (c!1263993 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (h!72478 s!2326))))))

(assert (=> d!2136695 (= (derivationStepZipperDown!1846 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))) (ite c!1264142 lt!2447565 (Context!12005 call!617705)) (h!72478 s!2326)) e!4103681)))

(declare-fun bm!617772 () Bool)

(declare-fun call!617781 () List!66153)

(assert (=> bm!617772 (= call!617779 call!617781)))

(declare-fun call!617778 () (Set Context!12004))

(declare-fun bm!617773 () Bool)

(assert (=> bm!617773 (= call!617778 (derivationStepZipperDown!1846 (ite c!1264308 (regTwo!33749 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (regOne!33748 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))))) (ite c!1264308 (ite c!1264142 lt!2447565 (Context!12005 call!617705)) (Context!12005 call!617781)) (h!72478 s!2326)))))

(declare-fun b!6799687 () Bool)

(assert (=> b!6799687 (= e!4103677 e!4103682)))

(assert (=> b!6799687 (= c!1264310 (is-Concat!25463 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))))))

(declare-fun b!6799688 () Bool)

(assert (=> b!6799688 (= e!4103678 (set.union call!617776 call!617778))))

(declare-fun bm!617774 () Bool)

(declare-fun call!617780 () (Set Context!12004))

(assert (=> bm!617774 (= call!617780 call!617776)))

(declare-fun bm!617775 () Bool)

(assert (=> bm!617775 (= call!617777 call!617780)))

(declare-fun b!6799689 () Bool)

(assert (=> b!6799689 (= e!4103680 (nullable!6597 (regOne!33748 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))))))))

(declare-fun bm!617776 () Bool)

(assert (=> bm!617776 (= call!617781 ($colon$colon!2427 (exprs!6502 (ite c!1264142 lt!2447565 (Context!12005 call!617705))) (ite (or c!1264307 c!1264310) (regTwo!33748 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))) (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292))))))))

(declare-fun b!6799690 () Bool)

(declare-fun c!1264309 () Bool)

(assert (=> b!6799690 (= c!1264309 (is-Star!16618 (ite c!1264142 (regTwo!33749 (reg!16947 r!7292)) (regOne!33748 (reg!16947 r!7292)))))))

(assert (=> b!6799690 (= e!4103682 e!4103679)))

(declare-fun b!6799691 () Bool)

(assert (=> b!6799691 (= e!4103679 (as set.empty (Set Context!12004)))))

(declare-fun b!6799692 () Bool)

(assert (=> b!6799692 (= e!4103677 (set.union call!617778 call!617780))))

(assert (= (and d!2136695 c!1264306) b!6799682))

(assert (= (and d!2136695 (not c!1264306)) b!6799684))

(assert (= (and b!6799684 c!1264308) b!6799688))

(assert (= (and b!6799684 (not c!1264308)) b!6799683))

(assert (= (and b!6799683 res!2778740) b!6799689))

(assert (= (and b!6799683 c!1264307) b!6799692))

(assert (= (and b!6799683 (not c!1264307)) b!6799687))

(assert (= (and b!6799687 c!1264310) b!6799686))

(assert (= (and b!6799687 (not c!1264310)) b!6799690))

(assert (= (and b!6799690 c!1264309) b!6799685))

(assert (= (and b!6799690 (not c!1264309)) b!6799691))

(assert (= (or b!6799686 b!6799685) bm!617772))

(assert (= (or b!6799686 b!6799685) bm!617775))

(assert (= (or b!6799692 bm!617772) bm!617776))

(assert (= (or b!6799692 bm!617775) bm!617774))

(assert (= (or b!6799688 b!6799692) bm!617773))

(assert (= (or b!6799688 bm!617774) bm!617771))

(declare-fun m!7546254 () Bool)

(assert (=> bm!617773 m!7546254))

(declare-fun m!7546256 () Bool)

(assert (=> b!6799682 m!7546256))

(declare-fun m!7546258 () Bool)

(assert (=> b!6799689 m!7546258))

(declare-fun m!7546260 () Bool)

(assert (=> bm!617776 m!7546260))

(declare-fun m!7546262 () Bool)

(assert (=> bm!617771 m!7546262))

(assert (=> bm!617697 d!2136695))

(declare-fun b!6799693 () Bool)

(declare-fun e!4103684 () Bool)

(declare-fun call!617784 () Bool)

(assert (=> b!6799693 (= e!4103684 call!617784)))

(declare-fun b!6799694 () Bool)

(declare-fun res!2778745 () Bool)

(declare-fun e!4103687 () Bool)

(assert (=> b!6799694 (=> (not res!2778745) (not e!4103687))))

(declare-fun call!617782 () Bool)

(assert (=> b!6799694 (= res!2778745 call!617782)))

(declare-fun e!4103683 () Bool)

(assert (=> b!6799694 (= e!4103683 e!4103687)))

(declare-fun b!6799695 () Bool)

(declare-fun e!4103685 () Bool)

(declare-fun e!4103689 () Bool)

(assert (=> b!6799695 (= e!4103685 e!4103689)))

(declare-fun c!1264312 () Bool)

(assert (=> b!6799695 (= c!1264312 (is-Star!16618 lt!2447696))))

(declare-fun b!6799696 () Bool)

(declare-fun res!2778741 () Bool)

(declare-fun e!4103688 () Bool)

(assert (=> b!6799696 (=> res!2778741 e!4103688)))

(assert (=> b!6799696 (= res!2778741 (not (is-Concat!25463 lt!2447696)))))

(assert (=> b!6799696 (= e!4103683 e!4103688)))

(declare-fun d!2136697 () Bool)

(declare-fun res!2778742 () Bool)

(assert (=> d!2136697 (=> res!2778742 e!4103685)))

(assert (=> d!2136697 (= res!2778742 (is-ElementMatch!16618 lt!2447696))))

(assert (=> d!2136697 (= (validRegex!8354 lt!2447696) e!4103685)))

(declare-fun bm!617777 () Bool)

(declare-fun call!617783 () Bool)

(declare-fun c!1264311 () Bool)

(assert (=> bm!617777 (= call!617783 (validRegex!8354 (ite c!1264311 (regTwo!33749 lt!2447696) (regTwo!33748 lt!2447696))))))

(declare-fun bm!617778 () Bool)

(assert (=> bm!617778 (= call!617784 (validRegex!8354 (ite c!1264312 (reg!16947 lt!2447696) (ite c!1264311 (regOne!33749 lt!2447696) (regOne!33748 lt!2447696)))))))

(declare-fun b!6799697 () Bool)

(declare-fun e!4103686 () Bool)

(assert (=> b!6799697 (= e!4103686 call!617783)))

(declare-fun b!6799698 () Bool)

(assert (=> b!6799698 (= e!4103689 e!4103684)))

(declare-fun res!2778744 () Bool)

(assert (=> b!6799698 (= res!2778744 (not (nullable!6597 (reg!16947 lt!2447696))))))

(assert (=> b!6799698 (=> (not res!2778744) (not e!4103684))))

(declare-fun b!6799699 () Bool)

(assert (=> b!6799699 (= e!4103688 e!4103686)))

(declare-fun res!2778743 () Bool)

(assert (=> b!6799699 (=> (not res!2778743) (not e!4103686))))

(assert (=> b!6799699 (= res!2778743 call!617782)))

(declare-fun b!6799700 () Bool)

(assert (=> b!6799700 (= e!4103689 e!4103683)))

(assert (=> b!6799700 (= c!1264311 (is-Union!16618 lt!2447696))))

(declare-fun b!6799701 () Bool)

(assert (=> b!6799701 (= e!4103687 call!617783)))

(declare-fun bm!617779 () Bool)

(assert (=> bm!617779 (= call!617782 call!617784)))

(assert (= (and d!2136697 (not res!2778742)) b!6799695))

(assert (= (and b!6799695 c!1264312) b!6799698))

(assert (= (and b!6799695 (not c!1264312)) b!6799700))

(assert (= (and b!6799698 res!2778744) b!6799693))

(assert (= (and b!6799700 c!1264311) b!6799694))

(assert (= (and b!6799700 (not c!1264311)) b!6799696))

(assert (= (and b!6799694 res!2778745) b!6799701))

(assert (= (and b!6799696 (not res!2778741)) b!6799699))

(assert (= (and b!6799699 res!2778743) b!6799697))

(assert (= (or b!6799701 b!6799697) bm!617777))

(assert (= (or b!6799694 b!6799699) bm!617779))

(assert (= (or b!6799693 bm!617779) bm!617778))

(declare-fun m!7546264 () Bool)

(assert (=> bm!617777 m!7546264))

(declare-fun m!7546266 () Bool)

(assert (=> bm!617778 m!7546266))

(declare-fun m!7546268 () Bool)

(assert (=> b!6799698 m!7546268))

(assert (=> d!2136367 d!2136697))

(declare-fun d!2136699 () Bool)

(declare-fun res!2778746 () Bool)

(declare-fun e!4103690 () Bool)

(assert (=> d!2136699 (=> res!2778746 e!4103690)))

(assert (=> d!2136699 (= res!2778746 (is-Nil!66029 (unfocusZipperList!2039 zl!343)))))

(assert (=> d!2136699 (= (forall!15810 (unfocusZipperList!2039 zl!343) lambda!383388) e!4103690)))

(declare-fun b!6799702 () Bool)

(declare-fun e!4103691 () Bool)

(assert (=> b!6799702 (= e!4103690 e!4103691)))

(declare-fun res!2778747 () Bool)

(assert (=> b!6799702 (=> (not res!2778747) (not e!4103691))))

(assert (=> b!6799702 (= res!2778747 (dynLambda!26369 lambda!383388 (h!72477 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6799703 () Bool)

(assert (=> b!6799703 (= e!4103691 (forall!15810 (t!379882 (unfocusZipperList!2039 zl!343)) lambda!383388))))

(assert (= (and d!2136699 (not res!2778746)) b!6799702))

(assert (= (and b!6799702 res!2778747) b!6799703))

(declare-fun b_lambda!256283 () Bool)

(assert (=> (not b_lambda!256283) (not b!6799702)))

(declare-fun m!7546270 () Bool)

(assert (=> b!6799702 m!7546270))

(declare-fun m!7546272 () Bool)

(assert (=> b!6799703 m!7546272))

(assert (=> d!2136367 d!2136699))

(assert (=> bs!1812149 d!2136457))

(declare-fun d!2136701 () Bool)

(assert (=> d!2136701 (= (Exists!3686 (ite c!1264070 lambda!383373 lambda!383374)) (choose!50665 (ite c!1264070 lambda!383373 lambda!383374)))))

(declare-fun bs!1812350 () Bool)

(assert (= bs!1812350 d!2136701))

(declare-fun m!7546274 () Bool)

(assert (=> bs!1812350 m!7546274))

(assert (=> bm!617669 d!2136701))

(declare-fun d!2136703 () Bool)

(assert (=> d!2136703 (= (isEmptyExpr!1977 lt!2447742) (is-EmptyExpr!16618 lt!2447742))))

(assert (=> b!6799077 d!2136703))

(declare-fun d!2136705 () Bool)

(assert (=> d!2136705 (= (flatMap!2099 lt!2447560 lambda!383361) (choose!50669 lt!2447560 lambda!383361))))

(declare-fun bs!1812351 () Bool)

(assert (= bs!1812351 d!2136705))

(declare-fun m!7546276 () Bool)

(assert (=> bs!1812351 m!7546276))

(assert (=> d!2136315 d!2136705))

(declare-fun d!2136707 () Bool)

(assert (=> d!2136707 true))

(assert (=> d!2136707 true))

(declare-fun res!2778748 () Bool)

(assert (=> d!2136707 (= (choose!50665 lambda!383321) res!2778748)))

(assert (=> d!2136379 d!2136707))

(assert (=> d!2136341 d!2136335))

(assert (=> d!2136341 d!2136331))

(declare-fun d!2136709 () Bool)

(assert (=> d!2136709 (= (matchR!8801 lt!2447563 s!2326) (matchRSpec!3719 lt!2447563 s!2326))))

(assert (=> d!2136709 true))

(declare-fun _$88!5625 () Unit!159927)

(assert (=> d!2136709 (= (choose!50661 lt!2447563 s!2326) _$88!5625)))

(declare-fun bs!1812352 () Bool)

(assert (= bs!1812352 d!2136709))

(assert (=> bs!1812352 m!7545144))

(assert (=> bs!1812352 m!7545142))

(assert (=> d!2136341 d!2136709))

(declare-fun b!6799704 () Bool)

(declare-fun e!4103693 () Bool)

(declare-fun call!617787 () Bool)

(assert (=> b!6799704 (= e!4103693 call!617787)))

(declare-fun b!6799705 () Bool)

(declare-fun res!2778753 () Bool)

(declare-fun e!4103696 () Bool)

(assert (=> b!6799705 (=> (not res!2778753) (not e!4103696))))

(declare-fun call!617785 () Bool)

(assert (=> b!6799705 (= res!2778753 call!617785)))

(declare-fun e!4103692 () Bool)

(assert (=> b!6799705 (= e!4103692 e!4103696)))

(declare-fun b!6799706 () Bool)

(declare-fun e!4103694 () Bool)

(declare-fun e!4103698 () Bool)

(assert (=> b!6799706 (= e!4103694 e!4103698)))

(declare-fun c!1264314 () Bool)

(assert (=> b!6799706 (= c!1264314 (is-Star!16618 lt!2447563))))

(declare-fun b!6799707 () Bool)

(declare-fun res!2778749 () Bool)

(declare-fun e!4103697 () Bool)

(assert (=> b!6799707 (=> res!2778749 e!4103697)))

(assert (=> b!6799707 (= res!2778749 (not (is-Concat!25463 lt!2447563)))))

(assert (=> b!6799707 (= e!4103692 e!4103697)))

(declare-fun d!2136711 () Bool)

(declare-fun res!2778750 () Bool)

(assert (=> d!2136711 (=> res!2778750 e!4103694)))

(assert (=> d!2136711 (= res!2778750 (is-ElementMatch!16618 lt!2447563))))

(assert (=> d!2136711 (= (validRegex!8354 lt!2447563) e!4103694)))

(declare-fun bm!617780 () Bool)

(declare-fun call!617786 () Bool)

(declare-fun c!1264313 () Bool)

(assert (=> bm!617780 (= call!617786 (validRegex!8354 (ite c!1264313 (regTwo!33749 lt!2447563) (regTwo!33748 lt!2447563))))))

(declare-fun bm!617781 () Bool)

(assert (=> bm!617781 (= call!617787 (validRegex!8354 (ite c!1264314 (reg!16947 lt!2447563) (ite c!1264313 (regOne!33749 lt!2447563) (regOne!33748 lt!2447563)))))))

(declare-fun b!6799708 () Bool)

(declare-fun e!4103695 () Bool)

(assert (=> b!6799708 (= e!4103695 call!617786)))

(declare-fun b!6799709 () Bool)

(assert (=> b!6799709 (= e!4103698 e!4103693)))

(declare-fun res!2778752 () Bool)

(assert (=> b!6799709 (= res!2778752 (not (nullable!6597 (reg!16947 lt!2447563))))))

(assert (=> b!6799709 (=> (not res!2778752) (not e!4103693))))

(declare-fun b!6799710 () Bool)

(assert (=> b!6799710 (= e!4103697 e!4103695)))

(declare-fun res!2778751 () Bool)

(assert (=> b!6799710 (=> (not res!2778751) (not e!4103695))))

(assert (=> b!6799710 (= res!2778751 call!617785)))

(declare-fun b!6799711 () Bool)

(assert (=> b!6799711 (= e!4103698 e!4103692)))

(assert (=> b!6799711 (= c!1264313 (is-Union!16618 lt!2447563))))

(declare-fun b!6799712 () Bool)

(assert (=> b!6799712 (= e!4103696 call!617786)))

(declare-fun bm!617782 () Bool)

(assert (=> bm!617782 (= call!617785 call!617787)))

(assert (= (and d!2136711 (not res!2778750)) b!6799706))

(assert (= (and b!6799706 c!1264314) b!6799709))

(assert (= (and b!6799706 (not c!1264314)) b!6799711))

(assert (= (and b!6799709 res!2778752) b!6799704))

(assert (= (and b!6799711 c!1264313) b!6799705))

(assert (= (and b!6799711 (not c!1264313)) b!6799707))

(assert (= (and b!6799705 res!2778753) b!6799712))

(assert (= (and b!6799707 (not res!2778749)) b!6799710))

(assert (= (and b!6799710 res!2778751) b!6799708))

(assert (= (or b!6799712 b!6799708) bm!617780))

(assert (= (or b!6799705 b!6799710) bm!617782))

(assert (= (or b!6799704 bm!617782) bm!617781))

(declare-fun m!7546278 () Bool)

(assert (=> bm!617780 m!7546278))

(declare-fun m!7546280 () Bool)

(assert (=> bm!617781 m!7546280))

(declare-fun m!7546282 () Bool)

(assert (=> b!6799709 m!7546282))

(assert (=> d!2136341 d!2136711))

(assert (=> b!6798781 d!2136581))

(declare-fun b!6799713 () Bool)

(declare-fun e!4103700 () Bool)

(declare-fun call!617790 () Bool)

(assert (=> b!6799713 (= e!4103700 call!617790)))

(declare-fun b!6799714 () Bool)

(declare-fun res!2778758 () Bool)

(declare-fun e!4103703 () Bool)

(assert (=> b!6799714 (=> (not res!2778758) (not e!4103703))))

(declare-fun call!617788 () Bool)

(assert (=> b!6799714 (= res!2778758 call!617788)))

(declare-fun e!4103699 () Bool)

(assert (=> b!6799714 (= e!4103699 e!4103703)))

(declare-fun b!6799715 () Bool)

(declare-fun e!4103701 () Bool)

(declare-fun e!4103705 () Bool)

(assert (=> b!6799715 (= e!4103701 e!4103705)))

(declare-fun c!1264316 () Bool)

(assert (=> b!6799715 (= c!1264316 (is-Star!16618 lt!2447742))))

(declare-fun b!6799716 () Bool)

(declare-fun res!2778754 () Bool)

(declare-fun e!4103704 () Bool)

(assert (=> b!6799716 (=> res!2778754 e!4103704)))

(assert (=> b!6799716 (= res!2778754 (not (is-Concat!25463 lt!2447742)))))

(assert (=> b!6799716 (= e!4103699 e!4103704)))

(declare-fun d!2136713 () Bool)

(declare-fun res!2778755 () Bool)

(assert (=> d!2136713 (=> res!2778755 e!4103701)))

(assert (=> d!2136713 (= res!2778755 (is-ElementMatch!16618 lt!2447742))))

(assert (=> d!2136713 (= (validRegex!8354 lt!2447742) e!4103701)))

(declare-fun bm!617783 () Bool)

(declare-fun call!617789 () Bool)

(declare-fun c!1264315 () Bool)

(assert (=> bm!617783 (= call!617789 (validRegex!8354 (ite c!1264315 (regTwo!33749 lt!2447742) (regTwo!33748 lt!2447742))))))

(declare-fun bm!617784 () Bool)

(assert (=> bm!617784 (= call!617790 (validRegex!8354 (ite c!1264316 (reg!16947 lt!2447742) (ite c!1264315 (regOne!33749 lt!2447742) (regOne!33748 lt!2447742)))))))

(declare-fun b!6799717 () Bool)

(declare-fun e!4103702 () Bool)

(assert (=> b!6799717 (= e!4103702 call!617789)))

(declare-fun b!6799718 () Bool)

(assert (=> b!6799718 (= e!4103705 e!4103700)))

(declare-fun res!2778757 () Bool)

(assert (=> b!6799718 (= res!2778757 (not (nullable!6597 (reg!16947 lt!2447742))))))

(assert (=> b!6799718 (=> (not res!2778757) (not e!4103700))))

(declare-fun b!6799719 () Bool)

(assert (=> b!6799719 (= e!4103704 e!4103702)))

(declare-fun res!2778756 () Bool)

(assert (=> b!6799719 (=> (not res!2778756) (not e!4103702))))

(assert (=> b!6799719 (= res!2778756 call!617788)))

(declare-fun b!6799720 () Bool)

(assert (=> b!6799720 (= e!4103705 e!4103699)))

(assert (=> b!6799720 (= c!1264315 (is-Union!16618 lt!2447742))))

(declare-fun b!6799721 () Bool)

(assert (=> b!6799721 (= e!4103703 call!617789)))

(declare-fun bm!617785 () Bool)

(assert (=> bm!617785 (= call!617788 call!617790)))

(assert (= (and d!2136713 (not res!2778755)) b!6799715))

(assert (= (and b!6799715 c!1264316) b!6799718))

(assert (= (and b!6799715 (not c!1264316)) b!6799720))

(assert (= (and b!6799718 res!2778757) b!6799713))

(assert (= (and b!6799720 c!1264315) b!6799714))

(assert (= (and b!6799720 (not c!1264315)) b!6799716))

(assert (= (and b!6799714 res!2778758) b!6799721))

(assert (= (and b!6799716 (not res!2778754)) b!6799719))

(assert (= (and b!6799719 res!2778756) b!6799717))

(assert (= (or b!6799721 b!6799717) bm!617783))

(assert (= (or b!6799714 b!6799719) bm!617785))

(assert (= (or b!6799713 bm!617785) bm!617784))

(declare-fun m!7546284 () Bool)

(assert (=> bm!617783 m!7546284))

(declare-fun m!7546286 () Bool)

(assert (=> bm!617784 m!7546286))

(declare-fun m!7546288 () Bool)

(assert (=> b!6799718 m!7546288))

(assert (=> d!2136465 d!2136713))

(declare-fun d!2136715 () Bool)

(declare-fun res!2778759 () Bool)

(declare-fun e!4103706 () Bool)

(assert (=> d!2136715 (=> res!2778759 e!4103706)))

(assert (=> d!2136715 (= res!2778759 (is-Nil!66029 (exprs!6502 (h!72479 zl!343))))))

(assert (=> d!2136715 (= (forall!15810 (exprs!6502 (h!72479 zl!343)) lambda!383415) e!4103706)))

(declare-fun b!6799722 () Bool)

(declare-fun e!4103707 () Bool)

(assert (=> b!6799722 (= e!4103706 e!4103707)))

(declare-fun res!2778760 () Bool)

(assert (=> b!6799722 (=> (not res!2778760) (not e!4103707))))

(assert (=> b!6799722 (= res!2778760 (dynLambda!26369 lambda!383415 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799723 () Bool)

(assert (=> b!6799723 (= e!4103707 (forall!15810 (t!379882 (exprs!6502 (h!72479 zl!343))) lambda!383415))))

(assert (= (and d!2136715 (not res!2778759)) b!6799722))

(assert (= (and b!6799722 res!2778760) b!6799723))

(declare-fun b_lambda!256285 () Bool)

(assert (=> (not b_lambda!256285) (not b!6799722)))

(declare-fun m!7546290 () Bool)

(assert (=> b!6799722 m!7546290))

(declare-fun m!7546292 () Bool)

(assert (=> b!6799723 m!7546292))

(assert (=> d!2136465 d!2136715))

(declare-fun d!2136717 () Bool)

(assert (=> d!2136717 (= (map!15088 lt!2447561 lambda!383384) (choose!50664 lt!2447561 lambda!383384))))

(declare-fun bs!1812353 () Bool)

(assert (= bs!1812353 d!2136717))

(declare-fun m!7546294 () Bool)

(assert (=> bs!1812353 m!7546294))

(assert (=> d!2136365 d!2136717))

(declare-fun bs!1812354 () Bool)

(declare-fun b!6799728 () Bool)

(assert (= bs!1812354 (and b!6799728 b!6798731)))

(declare-fun lambda!383471 () Int)

(assert (=> bs!1812354 (not (= lambda!383471 lambda!383369))))

(declare-fun bs!1812355 () Bool)

(assert (= bs!1812355 (and b!6799728 b!6799598)))

(assert (=> bs!1812355 (= (and (= (reg!16947 (regOne!33749 lt!2447563)) (reg!16947 (regTwo!33749 r!7292))) (= (regOne!33749 lt!2447563) (regTwo!33749 r!7292))) (= lambda!383471 lambda!383469))))

(declare-fun bs!1812356 () Bool)

(assert (= bs!1812356 (and b!6799728 b!6798444)))

(assert (=> bs!1812356 (not (= lambda!383471 lambda!383322))))

(declare-fun bs!1812357 () Bool)

(assert (= bs!1812357 (and b!6799728 d!2136383)))

(assert (=> bs!1812357 (not (= lambda!383471 lambda!383396))))

(declare-fun bs!1812358 () Bool)

(assert (= bs!1812358 (and b!6799728 b!6798734)))

(assert (=> bs!1812358 (= (and (= (reg!16947 (regOne!33749 lt!2447563)) (reg!16947 lt!2447563)) (= (regOne!33749 lt!2447563) lt!2447563)) (= lambda!383471 lambda!383368))))

(assert (=> bs!1812357 (not (= lambda!383471 lambda!383397))))

(declare-fun bs!1812359 () Bool)

(assert (= bs!1812359 (and b!6799728 d!2136409)))

(assert (=> bs!1812359 (not (= lambda!383471 lambda!383407))))

(declare-fun bs!1812360 () Bool)

(assert (= bs!1812360 (and b!6799728 b!6798797)))

(assert (=> bs!1812360 (= (and (= (reg!16947 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regOne!33749 lt!2447563) r!7292)) (= lambda!383471 lambda!383373))))

(assert (=> bs!1812356 (= (and (= (reg!16947 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regOne!33749 lt!2447563) r!7292)) (= lambda!383471 lambda!383321))))

(declare-fun bs!1812361 () Bool)

(assert (= bs!1812361 (and b!6799728 b!6799595)))

(assert (=> bs!1812361 (not (= lambda!383471 lambda!383470))))

(declare-fun bs!1812362 () Bool)

(assert (= bs!1812362 (and b!6799728 d!2136605)))

(assert (=> bs!1812362 (not (= lambda!383471 lambda!383463))))

(assert (=> bs!1812362 (not (= lambda!383471 lambda!383462))))

(declare-fun bs!1812363 () Bool)

(assert (= bs!1812363 (and b!6799728 d!2136393)))

(assert (=> bs!1812363 (= (and (= (reg!16947 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regOne!33749 lt!2447563) (Star!16618 (reg!16947 r!7292)))) (= lambda!383471 lambda!383404))))

(assert (=> bs!1812356 (not (= lambda!383471 lambda!383320))))

(declare-fun bs!1812364 () Bool)

(assert (= bs!1812364 (and b!6799728 b!6798794)))

(assert (=> bs!1812364 (not (= lambda!383471 lambda!383374))))

(assert (=> bs!1812363 (not (= lambda!383471 lambda!383403))))

(assert (=> b!6799728 true))

(assert (=> b!6799728 true))

(declare-fun bs!1812365 () Bool)

(declare-fun b!6799725 () Bool)

(assert (= bs!1812365 (and b!6799725 b!6798731)))

(declare-fun lambda!383472 () Int)

(assert (=> bs!1812365 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (regOne!33748 lt!2447563)) (= (regTwo!33748 (regOne!33749 lt!2447563)) (regTwo!33748 lt!2447563))) (= lambda!383472 lambda!383369))))

(declare-fun bs!1812366 () Bool)

(assert (= bs!1812366 (and b!6799725 b!6799598)))

(assert (=> bs!1812366 (not (= lambda!383472 lambda!383469))))

(declare-fun bs!1812367 () Bool)

(assert (= bs!1812367 (and b!6799725 b!6798444)))

(assert (=> bs!1812367 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 lt!2447563)) r!7292)) (= lambda!383472 lambda!383322))))

(declare-fun bs!1812368 () Bool)

(assert (= bs!1812368 (and b!6799725 d!2136383)))

(assert (=> bs!1812368 (not (= lambda!383472 lambda!383396))))

(declare-fun bs!1812369 () Bool)

(assert (= bs!1812369 (and b!6799725 b!6798734)))

(assert (=> bs!1812369 (not (= lambda!383472 lambda!383368))))

(assert (=> bs!1812368 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 lt!2447563)) r!7292)) (= lambda!383472 lambda!383397))))

(declare-fun bs!1812370 () Bool)

(assert (= bs!1812370 (and b!6799725 d!2136409)))

(assert (=> bs!1812370 (not (= lambda!383472 lambda!383407))))

(declare-fun bs!1812371 () Bool)

(assert (= bs!1812371 (and b!6799725 b!6798797)))

(assert (=> bs!1812371 (not (= lambda!383472 lambda!383373))))

(declare-fun bs!1812372 () Bool)

(assert (= bs!1812372 (and b!6799725 b!6799728)))

(assert (=> bs!1812372 (not (= lambda!383472 lambda!383471))))

(assert (=> bs!1812367 (not (= lambda!383472 lambda!383321))))

(declare-fun bs!1812373 () Bool)

(assert (= bs!1812373 (and b!6799725 b!6799595)))

(assert (=> bs!1812373 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (regOne!33748 (regTwo!33749 r!7292))) (= (regTwo!33748 (regOne!33749 lt!2447563)) (regTwo!33748 (regTwo!33749 r!7292)))) (= lambda!383472 lambda!383470))))

(declare-fun bs!1812374 () Bool)

(assert (= bs!1812374 (and b!6799725 d!2136605)))

(assert (=> bs!1812374 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 lt!2447563)) r!7292)) (= lambda!383472 lambda!383463))))

(assert (=> bs!1812374 (not (= lambda!383472 lambda!383462))))

(declare-fun bs!1812375 () Bool)

(assert (= bs!1812375 (and b!6799725 d!2136393)))

(assert (=> bs!1812375 (not (= lambda!383472 lambda!383404))))

(assert (=> bs!1812367 (not (= lambda!383472 lambda!383320))))

(declare-fun bs!1812376 () Bool)

(assert (= bs!1812376 (and b!6799725 b!6798794)))

(assert (=> bs!1812376 (= (and (= (regOne!33748 (regOne!33749 lt!2447563)) (regOne!33748 r!7292)) (= (regTwo!33748 (regOne!33749 lt!2447563)) (regTwo!33748 r!7292))) (= lambda!383472 lambda!383374))))

(assert (=> bs!1812375 (not (= lambda!383472 lambda!383403))))

(assert (=> b!6799725 true))

(assert (=> b!6799725 true))

(declare-fun b!6799724 () Bool)

(declare-fun e!4103714 () Bool)

(declare-fun e!4103710 () Bool)

(assert (=> b!6799724 (= e!4103714 e!4103710)))

(declare-fun res!2778761 () Bool)

(assert (=> b!6799724 (= res!2778761 (not (is-EmptyLang!16618 (regOne!33749 lt!2447563))))))

(assert (=> b!6799724 (=> (not res!2778761) (not e!4103710))))

(declare-fun e!4103708 () Bool)

(declare-fun call!617791 () Bool)

(assert (=> b!6799725 (= e!4103708 call!617791)))

(declare-fun b!6799726 () Bool)

(declare-fun e!4103712 () Bool)

(assert (=> b!6799726 (= e!4103712 (matchRSpec!3719 (regTwo!33749 (regOne!33749 lt!2447563)) s!2326))))

(declare-fun b!6799727 () Bool)

(declare-fun call!617792 () Bool)

(assert (=> b!6799727 (= e!4103714 call!617792)))

(declare-fun e!4103709 () Bool)

(assert (=> b!6799728 (= e!4103709 call!617791)))

(declare-fun b!6799729 () Bool)

(declare-fun e!4103713 () Bool)

(assert (=> b!6799729 (= e!4103713 e!4103712)))

(declare-fun res!2778762 () Bool)

(assert (=> b!6799729 (= res!2778762 (matchRSpec!3719 (regOne!33749 (regOne!33749 lt!2447563)) s!2326))))

(assert (=> b!6799729 (=> res!2778762 e!4103712)))

(declare-fun b!6799730 () Bool)

(declare-fun e!4103711 () Bool)

(assert (=> b!6799730 (= e!4103711 (= s!2326 (Cons!66030 (c!1263993 (regOne!33749 lt!2447563)) Nil!66030)))))

(declare-fun b!6799731 () Bool)

(declare-fun c!1264317 () Bool)

(assert (=> b!6799731 (= c!1264317 (is-Union!16618 (regOne!33749 lt!2447563)))))

(assert (=> b!6799731 (= e!4103711 e!4103713)))

(declare-fun bm!617786 () Bool)

(assert (=> bm!617786 (= call!617792 (isEmpty!38407 s!2326))))

(declare-fun b!6799732 () Bool)

(declare-fun c!1264319 () Bool)

(assert (=> b!6799732 (= c!1264319 (is-ElementMatch!16618 (regOne!33749 lt!2447563)))))

(assert (=> b!6799732 (= e!4103710 e!4103711)))

(declare-fun d!2136719 () Bool)

(declare-fun c!1264318 () Bool)

(assert (=> d!2136719 (= c!1264318 (is-EmptyExpr!16618 (regOne!33749 lt!2447563)))))

(assert (=> d!2136719 (= (matchRSpec!3719 (regOne!33749 lt!2447563) s!2326) e!4103714)))

(declare-fun b!6799733 () Bool)

(assert (=> b!6799733 (= e!4103713 e!4103708)))

(declare-fun c!1264320 () Bool)

(assert (=> b!6799733 (= c!1264320 (is-Star!16618 (regOne!33749 lt!2447563)))))

(declare-fun bm!617787 () Bool)

(assert (=> bm!617787 (= call!617791 (Exists!3686 (ite c!1264320 lambda!383471 lambda!383472)))))

(declare-fun b!6799734 () Bool)

(declare-fun res!2778763 () Bool)

(assert (=> b!6799734 (=> res!2778763 e!4103709)))

(assert (=> b!6799734 (= res!2778763 call!617792)))

(assert (=> b!6799734 (= e!4103708 e!4103709)))

(assert (= (and d!2136719 c!1264318) b!6799727))

(assert (= (and d!2136719 (not c!1264318)) b!6799724))

(assert (= (and b!6799724 res!2778761) b!6799732))

(assert (= (and b!6799732 c!1264319) b!6799730))

(assert (= (and b!6799732 (not c!1264319)) b!6799731))

(assert (= (and b!6799731 c!1264317) b!6799729))

(assert (= (and b!6799731 (not c!1264317)) b!6799733))

(assert (= (and b!6799729 (not res!2778762)) b!6799726))

(assert (= (and b!6799733 c!1264320) b!6799734))

(assert (= (and b!6799733 (not c!1264320)) b!6799725))

(assert (= (and b!6799734 (not res!2778763)) b!6799728))

(assert (= (or b!6799728 b!6799725) bm!617787))

(assert (= (or b!6799727 b!6799734) bm!617786))

(declare-fun m!7546296 () Bool)

(assert (=> b!6799726 m!7546296))

(declare-fun m!7546298 () Bool)

(assert (=> b!6799729 m!7546298))

(assert (=> bm!617786 m!7545124))

(declare-fun m!7546300 () Bool)

(assert (=> bm!617787 m!7546300))

(assert (=> b!6798735 d!2136719))

(declare-fun bs!1812377 () Bool)

(declare-fun d!2136721 () Bool)

(assert (= bs!1812377 (and d!2136721 d!2136325)))

(declare-fun lambda!383473 () Int)

(assert (=> bs!1812377 (= lambda!383473 lambda!383363)))

(declare-fun bs!1812378 () Bool)

(assert (= bs!1812378 (and d!2136721 d!2136309)))

(assert (=> bs!1812378 (= lambda!383473 lambda!383358)))

(declare-fun bs!1812379 () Bool)

(assert (= bs!1812379 (and d!2136721 d!2136371)))

(assert (=> bs!1812379 (= lambda!383473 lambda!383391)))

(declare-fun bs!1812380 () Bool)

(assert (= bs!1812380 (and d!2136721 d!2136637)))

(assert (=> bs!1812380 (= lambda!383473 lambda!383465)))

(declare-fun bs!1812381 () Bool)

(assert (= bs!1812381 (and d!2136721 b!6798465)))

(assert (=> bs!1812381 (= lambda!383473 lambda!383325)))

(declare-fun bs!1812382 () Bool)

(assert (= bs!1812382 (and d!2136721 d!2136367)))

(assert (=> bs!1812382 (= lambda!383473 lambda!383388)))

(declare-fun bs!1812383 () Bool)

(assert (= bs!1812383 (and d!2136721 d!2136625)))

(assert (=> bs!1812383 (= lambda!383473 lambda!383464)))

(declare-fun bs!1812384 () Bool)

(assert (= bs!1812384 (and d!2136721 d!2136547)))

(assert (=> bs!1812384 (= lambda!383473 lambda!383448)))

(declare-fun bs!1812385 () Bool)

(assert (= bs!1812385 (and d!2136721 d!2136579)))

(assert (=> bs!1812385 (= lambda!383473 lambda!383456)))

(declare-fun bs!1812386 () Bool)

(assert (= bs!1812386 (and d!2136721 d!2136573)))

(assert (=> bs!1812386 (= lambda!383473 lambda!383454)))

(declare-fun bs!1812387 () Bool)

(assert (= bs!1812387 (and d!2136721 d!2136465)))

(assert (=> bs!1812387 (= lambda!383473 lambda!383415)))

(declare-fun bs!1812388 () Bool)

(assert (= bs!1812388 (and d!2136721 d!2136575)))

(assert (=> bs!1812388 (= lambda!383473 lambda!383455)))

(declare-fun bs!1812389 () Bool)

(assert (= bs!1812389 (and d!2136721 d!2136639)))

(assert (=> bs!1812389 (= lambda!383473 lambda!383466)))

(assert (=> d!2136721 (= (inv!84793 setElem!46592) (forall!15810 (exprs!6502 setElem!46592) lambda!383473))))

(declare-fun bs!1812390 () Bool)

(assert (= bs!1812390 d!2136721))

(declare-fun m!7546302 () Bool)

(assert (=> bs!1812390 m!7546302))

(assert (=> setNonEmpty!46592 d!2136721))

(declare-fun d!2136723 () Bool)

(assert (=> d!2136723 (= (nullable!6597 (regOne!33748 (reg!16947 r!7292))) (nullableFct!2501 (regOne!33748 (reg!16947 r!7292))))))

(declare-fun bs!1812391 () Bool)

(assert (= bs!1812391 d!2136723))

(declare-fun m!7546304 () Bool)

(assert (=> bs!1812391 m!7546304))

(assert (=> b!6799021 d!2136723))

(declare-fun d!2136725 () Bool)

(assert (=> d!2136725 (= (isConcat!1500 lt!2447742) (is-Concat!25463 lt!2447742))))

(assert (=> b!6799082 d!2136725))

(assert (=> d!2136349 d!2136403))

(assert (=> d!2136349 d!2136327))

(assert (=> bm!617663 d!2136403))

(assert (=> bm!617670 d!2136403))

(declare-fun d!2136727 () Bool)

(assert (=> d!2136727 (= (nullable!6597 (h!72477 (exprs!6502 lt!2447547))) (nullableFct!2501 (h!72477 (exprs!6502 lt!2447547))))))

(declare-fun bs!1812392 () Bool)

(assert (= bs!1812392 d!2136727))

(declare-fun m!7546306 () Bool)

(assert (=> bs!1812392 m!7546306))

(assert (=> b!6799039 d!2136727))

(assert (=> b!6798808 d!2136581))

(assert (=> d!2136353 d!2136363))

(declare-fun d!2136729 () Bool)

(assert (=> d!2136729 (= (map!15088 lt!2447561 lambda!383324) (set.insert (dynLambda!26365 lambda!383324 lt!2447547) (as set.empty (Set Context!12004))))))

(assert (=> d!2136729 true))

(declare-fun _$12!1726 () Unit!159927)

(assert (=> d!2136729 (= (choose!50662 lt!2447561 lt!2447547 lambda!383324) _$12!1726)))

(declare-fun b_lambda!256287 () Bool)

(assert (=> (not b_lambda!256287) (not d!2136729)))

(declare-fun bs!1812393 () Bool)

(assert (= bs!1812393 d!2136729))

(assert (=> bs!1812393 m!7545098))

(assert (=> bs!1812393 m!7545454))

(assert (=> bs!1812393 m!7545454))

(assert (=> bs!1812393 m!7545456))

(assert (=> d!2136353 d!2136729))

(assert (=> bs!1812152 d!2136447))

(declare-fun bs!1812394 () Bool)

(declare-fun d!2136731 () Bool)

(assert (= bs!1812394 (and d!2136731 d!2136325)))

(declare-fun lambda!383474 () Int)

(assert (=> bs!1812394 (= lambda!383474 lambda!383363)))

(declare-fun bs!1812395 () Bool)

(assert (= bs!1812395 (and d!2136731 d!2136309)))

(assert (=> bs!1812395 (= lambda!383474 lambda!383358)))

(declare-fun bs!1812396 () Bool)

(assert (= bs!1812396 (and d!2136731 d!2136371)))

(assert (=> bs!1812396 (= lambda!383474 lambda!383391)))

(declare-fun bs!1812397 () Bool)

(assert (= bs!1812397 (and d!2136731 d!2136637)))

(assert (=> bs!1812397 (= lambda!383474 lambda!383465)))

(declare-fun bs!1812398 () Bool)

(assert (= bs!1812398 (and d!2136731 b!6798465)))

(assert (=> bs!1812398 (= lambda!383474 lambda!383325)))

(declare-fun bs!1812399 () Bool)

(assert (= bs!1812399 (and d!2136731 d!2136367)))

(assert (=> bs!1812399 (= lambda!383474 lambda!383388)))

(declare-fun bs!1812400 () Bool)

(assert (= bs!1812400 (and d!2136731 d!2136547)))

(assert (=> bs!1812400 (= lambda!383474 lambda!383448)))

(declare-fun bs!1812401 () Bool)

(assert (= bs!1812401 (and d!2136731 d!2136579)))

(assert (=> bs!1812401 (= lambda!383474 lambda!383456)))

(declare-fun bs!1812402 () Bool)

(assert (= bs!1812402 (and d!2136731 d!2136573)))

(assert (=> bs!1812402 (= lambda!383474 lambda!383454)))

(declare-fun bs!1812403 () Bool)

(assert (= bs!1812403 (and d!2136731 d!2136465)))

(assert (=> bs!1812403 (= lambda!383474 lambda!383415)))

(declare-fun bs!1812404 () Bool)

(assert (= bs!1812404 (and d!2136731 d!2136575)))

(assert (=> bs!1812404 (= lambda!383474 lambda!383455)))

(declare-fun bs!1812405 () Bool)

(assert (= bs!1812405 (and d!2136731 d!2136639)))

(assert (=> bs!1812405 (= lambda!383474 lambda!383466)))

(declare-fun bs!1812406 () Bool)

(assert (= bs!1812406 (and d!2136731 d!2136721)))

(assert (=> bs!1812406 (= lambda!383474 lambda!383473)))

(declare-fun bs!1812407 () Bool)

(assert (= bs!1812407 (and d!2136731 d!2136625)))

(assert (=> bs!1812407 (= lambda!383474 lambda!383464)))

(declare-fun b!6799735 () Bool)

(declare-fun e!4103720 () Bool)

(assert (=> b!6799735 (= e!4103720 (isEmpty!38411 (t!379882 (t!379882 (unfocusZipperList!2039 zl!343)))))))

(declare-fun b!6799736 () Bool)

(declare-fun e!4103719 () Bool)

(declare-fun e!4103715 () Bool)

(assert (=> b!6799736 (= e!4103719 e!4103715)))

(declare-fun c!1264323 () Bool)

(assert (=> b!6799736 (= c!1264323 (isEmpty!38411 (t!379882 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6799737 () Bool)

(declare-fun e!4103716 () Regex!16618)

(assert (=> b!6799737 (= e!4103716 EmptyLang!16618)))

(declare-fun b!6799738 () Bool)

(declare-fun e!4103718 () Regex!16618)

(assert (=> b!6799738 (= e!4103718 (h!72477 (t!379882 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6799739 () Bool)

(declare-fun lt!2447806 () Regex!16618)

(assert (=> b!6799739 (= e!4103715 (isEmptyLang!1984 lt!2447806))))

(assert (=> d!2136731 e!4103719))

(declare-fun res!2778764 () Bool)

(assert (=> d!2136731 (=> (not res!2778764) (not e!4103719))))

(assert (=> d!2136731 (= res!2778764 (validRegex!8354 lt!2447806))))

(assert (=> d!2136731 (= lt!2447806 e!4103718)))

(declare-fun c!1264322 () Bool)

(assert (=> d!2136731 (= c!1264322 e!4103720)))

(declare-fun res!2778765 () Bool)

(assert (=> d!2136731 (=> (not res!2778765) (not e!4103720))))

(assert (=> d!2136731 (= res!2778765 (is-Cons!66029 (t!379882 (unfocusZipperList!2039 zl!343))))))

(assert (=> d!2136731 (forall!15810 (t!379882 (unfocusZipperList!2039 zl!343)) lambda!383474)))

(assert (=> d!2136731 (= (generalisedUnion!2462 (t!379882 (unfocusZipperList!2039 zl!343))) lt!2447806)))

(declare-fun b!6799740 () Bool)

(declare-fun e!4103717 () Bool)

(assert (=> b!6799740 (= e!4103715 e!4103717)))

(declare-fun c!1264321 () Bool)

(assert (=> b!6799740 (= c!1264321 (isEmpty!38411 (tail!12733 (t!379882 (unfocusZipperList!2039 zl!343)))))))

(declare-fun b!6799741 () Bool)

(assert (=> b!6799741 (= e!4103718 e!4103716)))

(declare-fun c!1264324 () Bool)

(assert (=> b!6799741 (= c!1264324 (is-Cons!66029 (t!379882 (unfocusZipperList!2039 zl!343))))))

(declare-fun b!6799742 () Bool)

(assert (=> b!6799742 (= e!4103717 (= lt!2447806 (head!13648 (t!379882 (unfocusZipperList!2039 zl!343)))))))

(declare-fun b!6799743 () Bool)

(assert (=> b!6799743 (= e!4103716 (Union!16618 (h!72477 (t!379882 (unfocusZipperList!2039 zl!343))) (generalisedUnion!2462 (t!379882 (t!379882 (unfocusZipperList!2039 zl!343))))))))

(declare-fun b!6799744 () Bool)

(assert (=> b!6799744 (= e!4103717 (isUnion!1414 lt!2447806))))

(assert (= (and d!2136731 res!2778765) b!6799735))

(assert (= (and d!2136731 c!1264322) b!6799738))

(assert (= (and d!2136731 (not c!1264322)) b!6799741))

(assert (= (and b!6799741 c!1264324) b!6799743))

(assert (= (and b!6799741 (not c!1264324)) b!6799737))

(assert (= (and d!2136731 res!2778764) b!6799736))

(assert (= (and b!6799736 c!1264323) b!6799739))

(assert (= (and b!6799736 (not c!1264323)) b!6799740))

(assert (= (and b!6799740 c!1264321) b!6799742))

(assert (= (and b!6799740 (not c!1264321)) b!6799744))

(declare-fun m!7546308 () Bool)

(assert (=> d!2136731 m!7546308))

(declare-fun m!7546310 () Bool)

(assert (=> d!2136731 m!7546310))

(declare-fun m!7546312 () Bool)

(assert (=> b!6799743 m!7546312))

(declare-fun m!7546314 () Bool)

(assert (=> b!6799742 m!7546314))

(assert (=> b!6799736 m!7545512))

(declare-fun m!7546316 () Bool)

(assert (=> b!6799735 m!7546316))

(declare-fun m!7546318 () Bool)

(assert (=> b!6799744 m!7546318))

(declare-fun m!7546320 () Bool)

(assert (=> b!6799740 m!7546320))

(assert (=> b!6799740 m!7546320))

(declare-fun m!7546322 () Bool)

(assert (=> b!6799740 m!7546322))

(declare-fun m!7546324 () Bool)

(assert (=> b!6799739 m!7546324))

(assert (=> b!6798892 d!2136731))

(assert (=> b!6798777 d!2136645))

(assert (=> b!6798777 d!2136593))

(assert (=> d!2136407 d!2136693))

(declare-fun bm!617788 () Bool)

(declare-fun call!617793 () Bool)

(assert (=> bm!617788 (= call!617793 (isEmpty!38407 Nil!66030))))

(declare-fun b!6799745 () Bool)

(declare-fun res!2778767 () Bool)

(declare-fun e!4103722 () Bool)

(assert (=> b!6799745 (=> res!2778767 e!4103722)))

(assert (=> b!6799745 (= res!2778767 (not (isEmpty!38407 (tail!12732 Nil!66030))))))

(declare-fun b!6799746 () Bool)

(declare-fun e!4103723 () Bool)

(assert (=> b!6799746 (= e!4103723 (= (head!13647 Nil!66030) (c!1263993 (reg!16947 r!7292))))))

(declare-fun b!6799747 () Bool)

(declare-fun e!4103724 () Bool)

(declare-fun e!4103726 () Bool)

(assert (=> b!6799747 (= e!4103724 e!4103726)))

(declare-fun c!1264325 () Bool)

(assert (=> b!6799747 (= c!1264325 (is-EmptyLang!16618 (reg!16947 r!7292)))))

(declare-fun b!6799748 () Bool)

(declare-fun res!2778771 () Bool)

(declare-fun e!4103727 () Bool)

(assert (=> b!6799748 (=> res!2778771 e!4103727)))

(assert (=> b!6799748 (= res!2778771 e!4103723)))

(declare-fun res!2778773 () Bool)

(assert (=> b!6799748 (=> (not res!2778773) (not e!4103723))))

(declare-fun lt!2447807 () Bool)

(assert (=> b!6799748 (= res!2778773 lt!2447807)))

(declare-fun b!6799749 () Bool)

(assert (=> b!6799749 (= e!4103722 (not (= (head!13647 Nil!66030) (c!1263993 (reg!16947 r!7292)))))))

(declare-fun b!6799750 () Bool)

(declare-fun res!2778768 () Bool)

(assert (=> b!6799750 (=> (not res!2778768) (not e!4103723))))

(assert (=> b!6799750 (= res!2778768 (not call!617793))))

(declare-fun d!2136733 () Bool)

(assert (=> d!2136733 e!4103724))

(declare-fun c!1264327 () Bool)

(assert (=> d!2136733 (= c!1264327 (is-EmptyExpr!16618 (reg!16947 r!7292)))))

(declare-fun e!4103721 () Bool)

(assert (=> d!2136733 (= lt!2447807 e!4103721)))

(declare-fun c!1264326 () Bool)

(assert (=> d!2136733 (= c!1264326 (isEmpty!38407 Nil!66030))))

(assert (=> d!2136733 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136733 (= (matchR!8801 (reg!16947 r!7292) Nil!66030) lt!2447807)))

(declare-fun b!6799751 () Bool)

(declare-fun e!4103725 () Bool)

(assert (=> b!6799751 (= e!4103725 e!4103722)))

(declare-fun res!2778769 () Bool)

(assert (=> b!6799751 (=> res!2778769 e!4103722)))

(assert (=> b!6799751 (= res!2778769 call!617793)))

(declare-fun b!6799752 () Bool)

(assert (=> b!6799752 (= e!4103721 (nullable!6597 (reg!16947 r!7292)))))

(declare-fun b!6799753 () Bool)

(assert (=> b!6799753 (= e!4103724 (= lt!2447807 call!617793))))

(declare-fun b!6799754 () Bool)

(declare-fun res!2778766 () Bool)

(assert (=> b!6799754 (=> res!2778766 e!4103727)))

(assert (=> b!6799754 (= res!2778766 (not (is-ElementMatch!16618 (reg!16947 r!7292))))))

(assert (=> b!6799754 (= e!4103726 e!4103727)))

(declare-fun b!6799755 () Bool)

(assert (=> b!6799755 (= e!4103726 (not lt!2447807))))

(declare-fun b!6799756 () Bool)

(declare-fun res!2778772 () Bool)

(assert (=> b!6799756 (=> (not res!2778772) (not e!4103723))))

(assert (=> b!6799756 (= res!2778772 (isEmpty!38407 (tail!12732 Nil!66030)))))

(declare-fun b!6799757 () Bool)

(assert (=> b!6799757 (= e!4103727 e!4103725)))

(declare-fun res!2778770 () Bool)

(assert (=> b!6799757 (=> (not res!2778770) (not e!4103725))))

(assert (=> b!6799757 (= res!2778770 (not lt!2447807))))

(declare-fun b!6799758 () Bool)

(assert (=> b!6799758 (= e!4103721 (matchR!8801 (derivativeStep!5282 (reg!16947 r!7292) (head!13647 Nil!66030)) (tail!12732 Nil!66030)))))

(assert (= (and d!2136733 c!1264326) b!6799752))

(assert (= (and d!2136733 (not c!1264326)) b!6799758))

(assert (= (and d!2136733 c!1264327) b!6799753))

(assert (= (and d!2136733 (not c!1264327)) b!6799747))

(assert (= (and b!6799747 c!1264325) b!6799755))

(assert (= (and b!6799747 (not c!1264325)) b!6799754))

(assert (= (and b!6799754 (not res!2778766)) b!6799748))

(assert (= (and b!6799748 res!2778773) b!6799750))

(assert (= (and b!6799750 res!2778768) b!6799756))

(assert (= (and b!6799756 res!2778772) b!6799746))

(assert (= (and b!6799748 (not res!2778771)) b!6799757))

(assert (= (and b!6799757 res!2778770) b!6799751))

(assert (= (and b!6799751 (not res!2778769)) b!6799745))

(assert (= (and b!6799745 (not res!2778767)) b!6799749))

(assert (= (or b!6799753 b!6799750 b!6799751) bm!617788))

(declare-fun m!7546326 () Bool)

(assert (=> b!6799745 m!7546326))

(assert (=> b!6799745 m!7546326))

(declare-fun m!7546328 () Bool)

(assert (=> b!6799745 m!7546328))

(assert (=> b!6799752 m!7545380))

(declare-fun m!7546330 () Bool)

(assert (=> b!6799746 m!7546330))

(assert (=> b!6799758 m!7546330))

(assert (=> b!6799758 m!7546330))

(declare-fun m!7546332 () Bool)

(assert (=> b!6799758 m!7546332))

(assert (=> b!6799758 m!7546326))

(assert (=> b!6799758 m!7546332))

(assert (=> b!6799758 m!7546326))

(declare-fun m!7546334 () Bool)

(assert (=> b!6799758 m!7546334))

(declare-fun m!7546336 () Bool)

(assert (=> bm!617788 m!7546336))

(assert (=> b!6799756 m!7546326))

(assert (=> b!6799756 m!7546326))

(assert (=> b!6799756 m!7546328))

(assert (=> b!6799749 m!7546330))

(assert (=> d!2136733 m!7546336))

(assert (=> d!2136733 m!7545566))

(assert (=> d!2136407 d!2136733))

(assert (=> d!2136407 d!2136607))

(declare-fun bm!617789 () Bool)

(declare-fun call!617794 () Bool)

(assert (=> bm!617789 (= call!617794 (isEmpty!38407 (_1!36896 (get!22997 lt!2447723))))))

(declare-fun b!6799759 () Bool)

(declare-fun res!2778775 () Bool)

(declare-fun e!4103729 () Bool)

(assert (=> b!6799759 (=> res!2778775 e!4103729)))

(assert (=> b!6799759 (= res!2778775 (not (isEmpty!38407 (tail!12732 (_1!36896 (get!22997 lt!2447723))))))))

(declare-fun b!6799760 () Bool)

(declare-fun e!4103730 () Bool)

(assert (=> b!6799760 (= e!4103730 (= (head!13647 (_1!36896 (get!22997 lt!2447723))) (c!1263993 (reg!16947 r!7292))))))

(declare-fun b!6799761 () Bool)

(declare-fun e!4103731 () Bool)

(declare-fun e!4103733 () Bool)

(assert (=> b!6799761 (= e!4103731 e!4103733)))

(declare-fun c!1264328 () Bool)

(assert (=> b!6799761 (= c!1264328 (is-EmptyLang!16618 (reg!16947 r!7292)))))

(declare-fun b!6799762 () Bool)

(declare-fun res!2778779 () Bool)

(declare-fun e!4103734 () Bool)

(assert (=> b!6799762 (=> res!2778779 e!4103734)))

(assert (=> b!6799762 (= res!2778779 e!4103730)))

(declare-fun res!2778781 () Bool)

(assert (=> b!6799762 (=> (not res!2778781) (not e!4103730))))

(declare-fun lt!2447808 () Bool)

(assert (=> b!6799762 (= res!2778781 lt!2447808)))

(declare-fun b!6799763 () Bool)

(assert (=> b!6799763 (= e!4103729 (not (= (head!13647 (_1!36896 (get!22997 lt!2447723))) (c!1263993 (reg!16947 r!7292)))))))

(declare-fun b!6799764 () Bool)

(declare-fun res!2778776 () Bool)

(assert (=> b!6799764 (=> (not res!2778776) (not e!4103730))))

(assert (=> b!6799764 (= res!2778776 (not call!617794))))

(declare-fun d!2136735 () Bool)

(assert (=> d!2136735 e!4103731))

(declare-fun c!1264330 () Bool)

(assert (=> d!2136735 (= c!1264330 (is-EmptyExpr!16618 (reg!16947 r!7292)))))

(declare-fun e!4103728 () Bool)

(assert (=> d!2136735 (= lt!2447808 e!4103728)))

(declare-fun c!1264329 () Bool)

(assert (=> d!2136735 (= c!1264329 (isEmpty!38407 (_1!36896 (get!22997 lt!2447723))))))

(assert (=> d!2136735 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136735 (= (matchR!8801 (reg!16947 r!7292) (_1!36896 (get!22997 lt!2447723))) lt!2447808)))

(declare-fun b!6799765 () Bool)

(declare-fun e!4103732 () Bool)

(assert (=> b!6799765 (= e!4103732 e!4103729)))

(declare-fun res!2778777 () Bool)

(assert (=> b!6799765 (=> res!2778777 e!4103729)))

(assert (=> b!6799765 (= res!2778777 call!617794)))

(declare-fun b!6799766 () Bool)

(assert (=> b!6799766 (= e!4103728 (nullable!6597 (reg!16947 r!7292)))))

(declare-fun b!6799767 () Bool)

(assert (=> b!6799767 (= e!4103731 (= lt!2447808 call!617794))))

(declare-fun b!6799768 () Bool)

(declare-fun res!2778774 () Bool)

(assert (=> b!6799768 (=> res!2778774 e!4103734)))

(assert (=> b!6799768 (= res!2778774 (not (is-ElementMatch!16618 (reg!16947 r!7292))))))

(assert (=> b!6799768 (= e!4103733 e!4103734)))

(declare-fun b!6799769 () Bool)

(assert (=> b!6799769 (= e!4103733 (not lt!2447808))))

(declare-fun b!6799770 () Bool)

(declare-fun res!2778780 () Bool)

(assert (=> b!6799770 (=> (not res!2778780) (not e!4103730))))

(assert (=> b!6799770 (= res!2778780 (isEmpty!38407 (tail!12732 (_1!36896 (get!22997 lt!2447723)))))))

(declare-fun b!6799771 () Bool)

(assert (=> b!6799771 (= e!4103734 e!4103732)))

(declare-fun res!2778778 () Bool)

(assert (=> b!6799771 (=> (not res!2778778) (not e!4103732))))

(assert (=> b!6799771 (= res!2778778 (not lt!2447808))))

(declare-fun b!6799772 () Bool)

(assert (=> b!6799772 (= e!4103728 (matchR!8801 (derivativeStep!5282 (reg!16947 r!7292) (head!13647 (_1!36896 (get!22997 lt!2447723)))) (tail!12732 (_1!36896 (get!22997 lt!2447723)))))))

(assert (= (and d!2136735 c!1264329) b!6799766))

(assert (= (and d!2136735 (not c!1264329)) b!6799772))

(assert (= (and d!2136735 c!1264330) b!6799767))

(assert (= (and d!2136735 (not c!1264330)) b!6799761))

(assert (= (and b!6799761 c!1264328) b!6799769))

(assert (= (and b!6799761 (not c!1264328)) b!6799768))

(assert (= (and b!6799768 (not res!2778774)) b!6799762))

(assert (= (and b!6799762 res!2778781) b!6799764))

(assert (= (and b!6799764 res!2778776) b!6799770))

(assert (= (and b!6799770 res!2778780) b!6799760))

(assert (= (and b!6799762 (not res!2778779)) b!6799771))

(assert (= (and b!6799771 res!2778778) b!6799765))

(assert (= (and b!6799765 (not res!2778777)) b!6799759))

(assert (= (and b!6799759 (not res!2778775)) b!6799763))

(assert (= (or b!6799767 b!6799764 b!6799765) bm!617789))

(declare-fun m!7546338 () Bool)

(assert (=> b!6799759 m!7546338))

(assert (=> b!6799759 m!7546338))

(declare-fun m!7546340 () Bool)

(assert (=> b!6799759 m!7546340))

(assert (=> b!6799766 m!7545380))

(declare-fun m!7546342 () Bool)

(assert (=> b!6799760 m!7546342))

(assert (=> b!6799772 m!7546342))

(assert (=> b!6799772 m!7546342))

(declare-fun m!7546344 () Bool)

(assert (=> b!6799772 m!7546344))

(assert (=> b!6799772 m!7546338))

(assert (=> b!6799772 m!7546344))

(assert (=> b!6799772 m!7546338))

(declare-fun m!7546346 () Bool)

(assert (=> b!6799772 m!7546346))

(declare-fun m!7546348 () Bool)

(assert (=> bm!617789 m!7546348))

(assert (=> b!6799770 m!7546338))

(assert (=> b!6799770 m!7546338))

(assert (=> b!6799770 m!7546340))

(assert (=> b!6799763 m!7546342))

(assert (=> d!2136735 m!7546348))

(assert (=> d!2136735 m!7545566))

(assert (=> b!6798983 d!2136735))

(assert (=> b!6798983 d!2136675))

(declare-fun e!4103739 () (Set Context!12004))

(declare-fun b!6799773 () Bool)

(assert (=> b!6799773 (= e!4103739 (set.insert (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703)) (as set.empty (Set Context!12004))))))

(declare-fun b!6799774 () Bool)

(declare-fun c!1264332 () Bool)

(declare-fun e!4103738 () Bool)

(assert (=> b!6799774 (= c!1264332 e!4103738)))

(declare-fun res!2778782 () Bool)

(assert (=> b!6799774 (=> (not res!2778782) (not e!4103738))))

(assert (=> b!6799774 (= res!2778782 (is-Concat!25463 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))))))

(declare-fun e!4103736 () (Set Context!12004))

(declare-fun e!4103735 () (Set Context!12004))

(assert (=> b!6799774 (= e!4103736 e!4103735)))

(declare-fun b!6799775 () Bool)

(assert (=> b!6799775 (= e!4103739 e!4103736)))

(declare-fun c!1264333 () Bool)

(assert (=> b!6799775 (= c!1264333 (is-Union!16618 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))))))

(declare-fun b!6799776 () Bool)

(declare-fun e!4103737 () (Set Context!12004))

(declare-fun call!617796 () (Set Context!12004))

(assert (=> b!6799776 (= e!4103737 call!617796)))

(declare-fun call!617795 () (Set Context!12004))

(declare-fun c!1264335 () Bool)

(declare-fun call!617798 () List!66153)

(declare-fun bm!617790 () Bool)

(assert (=> bm!617790 (= call!617795 (derivationStepZipperDown!1846 (ite c!1264333 (regOne!33749 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (ite c!1264332 (regTwo!33748 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (ite c!1264335 (regOne!33748 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (reg!16947 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))))))) (ite (or c!1264333 c!1264332) (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703)) (Context!12005 call!617798)) (h!72478 s!2326)))))

(declare-fun b!6799777 () Bool)

(declare-fun e!4103740 () (Set Context!12004))

(assert (=> b!6799777 (= e!4103740 call!617796)))

(declare-fun d!2136737 () Bool)

(declare-fun c!1264331 () Bool)

(assert (=> d!2136737 (= c!1264331 (and (is-ElementMatch!16618 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (= (c!1263993 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (h!72478 s!2326))))))

(assert (=> d!2136737 (= (derivationStepZipperDown!1846 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))) (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703)) (h!72478 s!2326)) e!4103739)))

(declare-fun bm!617791 () Bool)

(declare-fun call!617800 () List!66153)

(assert (=> bm!617791 (= call!617798 call!617800)))

(declare-fun call!617797 () (Set Context!12004))

(declare-fun bm!617792 () Bool)

(assert (=> bm!617792 (= call!617797 (derivationStepZipperDown!1846 (ite c!1264333 (regTwo!33749 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (regOne!33748 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))))) (ite c!1264333 (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703)) (Context!12005 call!617800)) (h!72478 s!2326)))))

(declare-fun b!6799778 () Bool)

(assert (=> b!6799778 (= e!4103735 e!4103740)))

(assert (=> b!6799778 (= c!1264335 (is-Concat!25463 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))))))

(declare-fun b!6799779 () Bool)

(assert (=> b!6799779 (= e!4103736 (set.union call!617795 call!617797))))

(declare-fun bm!617793 () Bool)

(declare-fun call!617799 () (Set Context!12004))

(assert (=> bm!617793 (= call!617799 call!617795)))

(declare-fun bm!617794 () Bool)

(assert (=> bm!617794 (= call!617796 call!617799)))

(declare-fun b!6799780 () Bool)

(assert (=> b!6799780 (= e!4103738 (nullable!6597 (regOne!33748 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))))))))

(declare-fun bm!617795 () Bool)

(assert (=> bm!617795 (= call!617800 ($colon$colon!2427 (exprs!6502 (ite (or c!1264142 c!1264141) lt!2447565 (Context!12005 call!617703))) (ite (or c!1264332 c!1264335) (regTwo!33748 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))) (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292))))))))))

(declare-fun b!6799781 () Bool)

(declare-fun c!1264334 () Bool)

(assert (=> b!6799781 (= c!1264334 (is-Star!16618 (ite c!1264142 (regOne!33749 (reg!16947 r!7292)) (ite c!1264141 (regTwo!33748 (reg!16947 r!7292)) (ite c!1264144 (regOne!33748 (reg!16947 r!7292)) (reg!16947 (reg!16947 r!7292)))))))))

(assert (=> b!6799781 (= e!4103740 e!4103737)))

(declare-fun b!6799782 () Bool)

(assert (=> b!6799782 (= e!4103737 (as set.empty (Set Context!12004)))))

(declare-fun b!6799783 () Bool)

(assert (=> b!6799783 (= e!4103735 (set.union call!617797 call!617799))))

(assert (= (and d!2136737 c!1264331) b!6799773))

(assert (= (and d!2136737 (not c!1264331)) b!6799775))

(assert (= (and b!6799775 c!1264333) b!6799779))

(assert (= (and b!6799775 (not c!1264333)) b!6799774))

(assert (= (and b!6799774 res!2778782) b!6799780))

(assert (= (and b!6799774 c!1264332) b!6799783))

(assert (= (and b!6799774 (not c!1264332)) b!6799778))

(assert (= (and b!6799778 c!1264335) b!6799777))

(assert (= (and b!6799778 (not c!1264335)) b!6799781))

(assert (= (and b!6799781 c!1264334) b!6799776))

(assert (= (and b!6799781 (not c!1264334)) b!6799782))

(assert (= (or b!6799777 b!6799776) bm!617791))

(assert (= (or b!6799777 b!6799776) bm!617794))

(assert (= (or b!6799783 bm!617791) bm!617795))

(assert (= (or b!6799783 bm!617794) bm!617793))

(assert (= (or b!6799779 b!6799783) bm!617792))

(assert (= (or b!6799779 bm!617793) bm!617790))

(declare-fun m!7546350 () Bool)

(assert (=> bm!617792 m!7546350))

(declare-fun m!7546352 () Bool)

(assert (=> b!6799773 m!7546352))

(declare-fun m!7546354 () Bool)

(assert (=> b!6799780 m!7546354))

(declare-fun m!7546356 () Bool)

(assert (=> bm!617795 m!7546356))

(declare-fun m!7546358 () Bool)

(assert (=> bm!617790 m!7546358))

(assert (=> bm!617695 d!2136737))

(declare-fun call!617801 () (Set Context!12004))

(declare-fun b!6799784 () Bool)

(declare-fun e!4103742 () (Set Context!12004))

(assert (=> b!6799784 (= e!4103742 (set.union call!617801 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))) (h!72478 s!2326))))))

(declare-fun b!6799785 () Bool)

(declare-fun e!4103741 () (Set Context!12004))

(assert (=> b!6799785 (= e!4103742 e!4103741)))

(declare-fun c!1264337 () Bool)

(assert (=> b!6799785 (= c!1264337 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))))

(declare-fun b!6799786 () Bool)

(assert (=> b!6799786 (= e!4103741 call!617801)))

(declare-fun b!6799787 () Bool)

(assert (=> b!6799787 (= e!4103741 (as set.empty (Set Context!12004)))))

(declare-fun b!6799788 () Bool)

(declare-fun e!4103743 () Bool)

(assert (=> b!6799788 (= e!4103743 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))))))

(declare-fun d!2136739 () Bool)

(declare-fun c!1264336 () Bool)

(assert (=> d!2136739 (= c!1264336 e!4103743)))

(declare-fun res!2778783 () Bool)

(assert (=> d!2136739 (=> (not res!2778783) (not e!4103743))))

(assert (=> d!2136739 (= res!2778783 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))))

(assert (=> d!2136739 (= (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72478 s!2326)) e!4103742)))

(declare-fun bm!617796 () Bool)

(assert (=> bm!617796 (= call!617801 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))) (h!72478 s!2326)))))

(assert (= (and d!2136739 res!2778783) b!6799788))

(assert (= (and d!2136739 c!1264336) b!6799784))

(assert (= (and d!2136739 (not c!1264336)) b!6799785))

(assert (= (and b!6799785 c!1264337) b!6799786))

(assert (= (and b!6799785 (not c!1264337)) b!6799787))

(assert (= (or b!6799784 b!6799786) bm!617796))

(declare-fun m!7546360 () Bool)

(assert (=> b!6799784 m!7546360))

(declare-fun m!7546362 () Bool)

(assert (=> b!6799788 m!7546362))

(declare-fun m!7546364 () Bool)

(assert (=> bm!617796 m!7546364))

(assert (=> b!6798663 d!2136739))

(declare-fun b!6799789 () Bool)

(declare-fun e!4103745 () Bool)

(declare-fun call!617804 () Bool)

(assert (=> b!6799789 (= e!4103745 call!617804)))

(declare-fun b!6799790 () Bool)

(declare-fun res!2778788 () Bool)

(declare-fun e!4103748 () Bool)

(assert (=> b!6799790 (=> (not res!2778788) (not e!4103748))))

(declare-fun call!617802 () Bool)

(assert (=> b!6799790 (= res!2778788 call!617802)))

(declare-fun e!4103744 () Bool)

(assert (=> b!6799790 (= e!4103744 e!4103748)))

(declare-fun b!6799791 () Bool)

(declare-fun e!4103746 () Bool)

(declare-fun e!4103750 () Bool)

(assert (=> b!6799791 (= e!4103746 e!4103750)))

(declare-fun c!1264339 () Bool)

(assert (=> b!6799791 (= c!1264339 (is-Star!16618 lt!2447668))))

(declare-fun b!6799792 () Bool)

(declare-fun res!2778784 () Bool)

(declare-fun e!4103749 () Bool)

(assert (=> b!6799792 (=> res!2778784 e!4103749)))

(assert (=> b!6799792 (= res!2778784 (not (is-Concat!25463 lt!2447668)))))

(assert (=> b!6799792 (= e!4103744 e!4103749)))

(declare-fun d!2136741 () Bool)

(declare-fun res!2778785 () Bool)

(assert (=> d!2136741 (=> res!2778785 e!4103746)))

(assert (=> d!2136741 (= res!2778785 (is-ElementMatch!16618 lt!2447668))))

(assert (=> d!2136741 (= (validRegex!8354 lt!2447668) e!4103746)))

(declare-fun bm!617797 () Bool)

(declare-fun call!617803 () Bool)

(declare-fun c!1264338 () Bool)

(assert (=> bm!617797 (= call!617803 (validRegex!8354 (ite c!1264338 (regTwo!33749 lt!2447668) (regTwo!33748 lt!2447668))))))

(declare-fun bm!617798 () Bool)

(assert (=> bm!617798 (= call!617804 (validRegex!8354 (ite c!1264339 (reg!16947 lt!2447668) (ite c!1264338 (regOne!33749 lt!2447668) (regOne!33748 lt!2447668)))))))

(declare-fun b!6799793 () Bool)

(declare-fun e!4103747 () Bool)

(assert (=> b!6799793 (= e!4103747 call!617803)))

(declare-fun b!6799794 () Bool)

(assert (=> b!6799794 (= e!4103750 e!4103745)))

(declare-fun res!2778787 () Bool)

(assert (=> b!6799794 (= res!2778787 (not (nullable!6597 (reg!16947 lt!2447668))))))

(assert (=> b!6799794 (=> (not res!2778787) (not e!4103745))))

(declare-fun b!6799795 () Bool)

(assert (=> b!6799795 (= e!4103749 e!4103747)))

(declare-fun res!2778786 () Bool)

(assert (=> b!6799795 (=> (not res!2778786) (not e!4103747))))

(assert (=> b!6799795 (= res!2778786 call!617802)))

(declare-fun b!6799796 () Bool)

(assert (=> b!6799796 (= e!4103750 e!4103744)))

(assert (=> b!6799796 (= c!1264338 (is-Union!16618 lt!2447668))))

(declare-fun b!6799797 () Bool)

(assert (=> b!6799797 (= e!4103748 call!617803)))

(declare-fun bm!617799 () Bool)

(assert (=> bm!617799 (= call!617802 call!617804)))

(assert (= (and d!2136741 (not res!2778785)) b!6799791))

(assert (= (and b!6799791 c!1264339) b!6799794))

(assert (= (and b!6799791 (not c!1264339)) b!6799796))

(assert (= (and b!6799794 res!2778787) b!6799789))

(assert (= (and b!6799796 c!1264338) b!6799790))

(assert (= (and b!6799796 (not c!1264338)) b!6799792))

(assert (= (and b!6799790 res!2778788) b!6799797))

(assert (= (and b!6799792 (not res!2778784)) b!6799795))

(assert (= (and b!6799795 res!2778786) b!6799793))

(assert (= (or b!6799797 b!6799793) bm!617797))

(assert (= (or b!6799790 b!6799795) bm!617799))

(assert (= (or b!6799789 bm!617799) bm!617798))

(declare-fun m!7546366 () Bool)

(assert (=> bm!617797 m!7546366))

(declare-fun m!7546368 () Bool)

(assert (=> bm!617798 m!7546368))

(declare-fun m!7546370 () Bool)

(assert (=> b!6799794 m!7546370))

(assert (=> d!2136323 d!2136741))

(declare-fun bs!1812408 () Bool)

(declare-fun d!2136743 () Bool)

(assert (= bs!1812408 (and d!2136743 d!2136325)))

(declare-fun lambda!383475 () Int)

(assert (=> bs!1812408 (= lambda!383475 lambda!383363)))

(declare-fun bs!1812409 () Bool)

(assert (= bs!1812409 (and d!2136743 d!2136309)))

(assert (=> bs!1812409 (= lambda!383475 lambda!383358)))

(declare-fun bs!1812410 () Bool)

(assert (= bs!1812410 (and d!2136743 d!2136371)))

(assert (=> bs!1812410 (= lambda!383475 lambda!383391)))

(declare-fun bs!1812411 () Bool)

(assert (= bs!1812411 (and d!2136743 d!2136637)))

(assert (=> bs!1812411 (= lambda!383475 lambda!383465)))

(declare-fun bs!1812412 () Bool)

(assert (= bs!1812412 (and d!2136743 b!6798465)))

(assert (=> bs!1812412 (= lambda!383475 lambda!383325)))

(declare-fun bs!1812413 () Bool)

(assert (= bs!1812413 (and d!2136743 d!2136367)))

(assert (=> bs!1812413 (= lambda!383475 lambda!383388)))

(declare-fun bs!1812414 () Bool)

(assert (= bs!1812414 (and d!2136743 d!2136547)))

(assert (=> bs!1812414 (= lambda!383475 lambda!383448)))

(declare-fun bs!1812415 () Bool)

(assert (= bs!1812415 (and d!2136743 d!2136579)))

(assert (=> bs!1812415 (= lambda!383475 lambda!383456)))

(declare-fun bs!1812416 () Bool)

(assert (= bs!1812416 (and d!2136743 d!2136573)))

(assert (=> bs!1812416 (= lambda!383475 lambda!383454)))

(declare-fun bs!1812417 () Bool)

(assert (= bs!1812417 (and d!2136743 d!2136575)))

(assert (=> bs!1812417 (= lambda!383475 lambda!383455)))

(declare-fun bs!1812418 () Bool)

(assert (= bs!1812418 (and d!2136743 d!2136639)))

(assert (=> bs!1812418 (= lambda!383475 lambda!383466)))

(declare-fun bs!1812419 () Bool)

(assert (= bs!1812419 (and d!2136743 d!2136721)))

(assert (=> bs!1812419 (= lambda!383475 lambda!383473)))

(declare-fun bs!1812420 () Bool)

(assert (= bs!1812420 (and d!2136743 d!2136625)))

(assert (=> bs!1812420 (= lambda!383475 lambda!383464)))

(declare-fun bs!1812421 () Bool)

(assert (= bs!1812421 (and d!2136743 d!2136731)))

(assert (=> bs!1812421 (= lambda!383475 lambda!383474)))

(declare-fun bs!1812422 () Bool)

(assert (= bs!1812422 (and d!2136743 d!2136465)))

(assert (=> bs!1812422 (= lambda!383475 lambda!383415)))

(declare-fun b!6799798 () Bool)

(declare-fun e!4103756 () Bool)

(assert (=> b!6799798 (= e!4103756 (isEmpty!38411 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031)))))))

(declare-fun b!6799799 () Bool)

(declare-fun e!4103755 () Bool)

(declare-fun e!4103751 () Bool)

(assert (=> b!6799799 (= e!4103755 e!4103751)))

(declare-fun c!1264342 () Bool)

(assert (=> b!6799799 (= c!1264342 (isEmpty!38411 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))

(declare-fun b!6799800 () Bool)

(declare-fun e!4103752 () Regex!16618)

(assert (=> b!6799800 (= e!4103752 EmptyLang!16618)))

(declare-fun b!6799801 () Bool)

(declare-fun e!4103754 () Regex!16618)

(assert (=> b!6799801 (= e!4103754 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))

(declare-fun b!6799802 () Bool)

(declare-fun lt!2447809 () Regex!16618)

(assert (=> b!6799802 (= e!4103751 (isEmptyLang!1984 lt!2447809))))

(assert (=> d!2136743 e!4103755))

(declare-fun res!2778789 () Bool)

(assert (=> d!2136743 (=> (not res!2778789) (not e!4103755))))

(assert (=> d!2136743 (= res!2778789 (validRegex!8354 lt!2447809))))

(assert (=> d!2136743 (= lt!2447809 e!4103754)))

(declare-fun c!1264341 () Bool)

(assert (=> d!2136743 (= c!1264341 e!4103756)))

(declare-fun res!2778790 () Bool)

(assert (=> d!2136743 (=> (not res!2778790) (not e!4103756))))

(assert (=> d!2136743 (= res!2778790 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))

(assert (=> d!2136743 (forall!15810 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031)) lambda!383475)))

(assert (=> d!2136743 (= (generalisedUnion!2462 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))) lt!2447809)))

(declare-fun b!6799803 () Bool)

(declare-fun e!4103753 () Bool)

(assert (=> b!6799803 (= e!4103751 e!4103753)))

(declare-fun c!1264340 () Bool)

(assert (=> b!6799803 (= c!1264340 (isEmpty!38411 (tail!12733 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031)))))))

(declare-fun b!6799804 () Bool)

(assert (=> b!6799804 (= e!4103754 e!4103752)))

(declare-fun c!1264343 () Bool)

(assert (=> b!6799804 (= c!1264343 (is-Cons!66029 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))

(declare-fun b!6799805 () Bool)

(assert (=> b!6799805 (= e!4103753 (= lt!2447809 (head!13648 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031)))))))

(declare-fun b!6799806 () Bool)

(assert (=> b!6799806 (= e!4103752 (Union!16618 (h!72477 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))) (generalisedUnion!2462 (t!379882 (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031))))))))

(declare-fun b!6799807 () Bool)

(assert (=> b!6799807 (= e!4103753 (isUnion!1414 lt!2447809))))

(assert (= (and d!2136743 res!2778790) b!6799798))

(assert (= (and d!2136743 c!1264341) b!6799801))

(assert (= (and d!2136743 (not c!1264341)) b!6799804))

(assert (= (and b!6799804 c!1264343) b!6799806))

(assert (= (and b!6799804 (not c!1264343)) b!6799800))

(assert (= (and d!2136743 res!2778789) b!6799799))

(assert (= (and b!6799799 c!1264342) b!6799802))

(assert (= (and b!6799799 (not c!1264342)) b!6799803))

(assert (= (and b!6799803 c!1264340) b!6799805))

(assert (= (and b!6799803 (not c!1264340)) b!6799807))

(declare-fun m!7546372 () Bool)

(assert (=> d!2136743 m!7546372))

(assert (=> d!2136743 m!7545370))

(declare-fun m!7546374 () Bool)

(assert (=> d!2136743 m!7546374))

(declare-fun m!7546376 () Bool)

(assert (=> b!6799806 m!7546376))

(assert (=> b!6799805 m!7545370))

(declare-fun m!7546378 () Bool)

(assert (=> b!6799805 m!7546378))

(assert (=> b!6799799 m!7545370))

(declare-fun m!7546380 () Bool)

(assert (=> b!6799799 m!7546380))

(declare-fun m!7546382 () Bool)

(assert (=> b!6799798 m!7546382))

(declare-fun m!7546384 () Bool)

(assert (=> b!6799807 m!7546384))

(assert (=> b!6799803 m!7545370))

(declare-fun m!7546386 () Bool)

(assert (=> b!6799803 m!7546386))

(assert (=> b!6799803 m!7546386))

(declare-fun m!7546388 () Bool)

(assert (=> b!6799803 m!7546388))

(declare-fun m!7546390 () Bool)

(assert (=> b!6799802 m!7546390))

(assert (=> d!2136323 d!2136743))

(declare-fun bs!1812423 () Bool)

(declare-fun d!2136745 () Bool)

(assert (= bs!1812423 (and d!2136745 d!2136325)))

(declare-fun lambda!383476 () Int)

(assert (=> bs!1812423 (= lambda!383476 lambda!383363)))

(declare-fun bs!1812424 () Bool)

(assert (= bs!1812424 (and d!2136745 d!2136371)))

(assert (=> bs!1812424 (= lambda!383476 lambda!383391)))

(declare-fun bs!1812425 () Bool)

(assert (= bs!1812425 (and d!2136745 d!2136637)))

(assert (=> bs!1812425 (= lambda!383476 lambda!383465)))

(declare-fun bs!1812426 () Bool)

(assert (= bs!1812426 (and d!2136745 b!6798465)))

(assert (=> bs!1812426 (= lambda!383476 lambda!383325)))

(declare-fun bs!1812427 () Bool)

(assert (= bs!1812427 (and d!2136745 d!2136367)))

(assert (=> bs!1812427 (= lambda!383476 lambda!383388)))

(declare-fun bs!1812428 () Bool)

(assert (= bs!1812428 (and d!2136745 d!2136547)))

(assert (=> bs!1812428 (= lambda!383476 lambda!383448)))

(declare-fun bs!1812429 () Bool)

(assert (= bs!1812429 (and d!2136745 d!2136579)))

(assert (=> bs!1812429 (= lambda!383476 lambda!383456)))

(declare-fun bs!1812430 () Bool)

(assert (= bs!1812430 (and d!2136745 d!2136573)))

(assert (=> bs!1812430 (= lambda!383476 lambda!383454)))

(declare-fun bs!1812431 () Bool)

(assert (= bs!1812431 (and d!2136745 d!2136575)))

(assert (=> bs!1812431 (= lambda!383476 lambda!383455)))

(declare-fun bs!1812432 () Bool)

(assert (= bs!1812432 (and d!2136745 d!2136639)))

(assert (=> bs!1812432 (= lambda!383476 lambda!383466)))

(declare-fun bs!1812433 () Bool)

(assert (= bs!1812433 (and d!2136745 d!2136309)))

(assert (=> bs!1812433 (= lambda!383476 lambda!383358)))

(declare-fun bs!1812434 () Bool)

(assert (= bs!1812434 (and d!2136745 d!2136743)))

(assert (=> bs!1812434 (= lambda!383476 lambda!383475)))

(declare-fun bs!1812435 () Bool)

(assert (= bs!1812435 (and d!2136745 d!2136721)))

(assert (=> bs!1812435 (= lambda!383476 lambda!383473)))

(declare-fun bs!1812436 () Bool)

(assert (= bs!1812436 (and d!2136745 d!2136625)))

(assert (=> bs!1812436 (= lambda!383476 lambda!383464)))

(declare-fun bs!1812437 () Bool)

(assert (= bs!1812437 (and d!2136745 d!2136731)))

(assert (=> bs!1812437 (= lambda!383476 lambda!383474)))

(declare-fun bs!1812438 () Bool)

(assert (= bs!1812438 (and d!2136745 d!2136465)))

(assert (=> bs!1812438 (= lambda!383476 lambda!383415)))

(declare-fun lt!2447810 () List!66153)

(assert (=> d!2136745 (forall!15810 lt!2447810 lambda!383476)))

(declare-fun e!4103757 () List!66153)

(assert (=> d!2136745 (= lt!2447810 e!4103757)))

(declare-fun c!1264344 () Bool)

(assert (=> d!2136745 (= c!1264344 (is-Cons!66031 (Cons!66031 lt!2447568 Nil!66031)))))

(assert (=> d!2136745 (= (unfocusZipperList!2039 (Cons!66031 lt!2447568 Nil!66031)) lt!2447810)))

(declare-fun b!6799808 () Bool)

(assert (=> b!6799808 (= e!4103757 (Cons!66029 (generalisedConcat!2215 (exprs!6502 (h!72479 (Cons!66031 lt!2447568 Nil!66031)))) (unfocusZipperList!2039 (t!379884 (Cons!66031 lt!2447568 Nil!66031)))))))

(declare-fun b!6799809 () Bool)

(assert (=> b!6799809 (= e!4103757 Nil!66029)))

(assert (= (and d!2136745 c!1264344) b!6799808))

(assert (= (and d!2136745 (not c!1264344)) b!6799809))

(declare-fun m!7546392 () Bool)

(assert (=> d!2136745 m!7546392))

(declare-fun m!7546394 () Bool)

(assert (=> b!6799808 m!7546394))

(declare-fun m!7546396 () Bool)

(assert (=> b!6799808 m!7546396))

(assert (=> d!2136323 d!2136745))

(declare-fun d!2136747 () Bool)

(assert (=> d!2136747 (= (head!13648 (exprs!6502 (h!72479 zl!343))) (h!72477 (exprs!6502 (h!72479 zl!343))))))

(assert (=> b!6799074 d!2136747))

(declare-fun b!6799810 () Bool)

(declare-fun e!4103762 () (Set Context!12004))

(assert (=> b!6799810 (= e!4103762 (set.insert (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (as set.empty (Set Context!12004))))))

(declare-fun b!6799811 () Bool)

(declare-fun c!1264346 () Bool)

(declare-fun e!4103761 () Bool)

(assert (=> b!6799811 (= c!1264346 e!4103761)))

(declare-fun res!2778791 () Bool)

(assert (=> b!6799811 (=> (not res!2778791) (not e!4103761))))

(assert (=> b!6799811 (= res!2778791 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447565))))))

(declare-fun e!4103759 () (Set Context!12004))

(declare-fun e!4103758 () (Set Context!12004))

(assert (=> b!6799811 (= e!4103759 e!4103758)))

(declare-fun b!6799812 () Bool)

(assert (=> b!6799812 (= e!4103762 e!4103759)))

(declare-fun c!1264347 () Bool)

(assert (=> b!6799812 (= c!1264347 (is-Union!16618 (h!72477 (exprs!6502 lt!2447565))))))

(declare-fun b!6799813 () Bool)

(declare-fun e!4103760 () (Set Context!12004))

(declare-fun call!617806 () (Set Context!12004))

(assert (=> b!6799813 (= e!4103760 call!617806)))

(declare-fun bm!617800 () Bool)

(declare-fun c!1264349 () Bool)

(declare-fun call!617805 () (Set Context!12004))

(declare-fun call!617808 () List!66153)

(assert (=> bm!617800 (= call!617805 (derivationStepZipperDown!1846 (ite c!1264347 (regOne!33749 (h!72477 (exprs!6502 lt!2447565))) (ite c!1264346 (regTwo!33748 (h!72477 (exprs!6502 lt!2447565))) (ite c!1264349 (regOne!33748 (h!72477 (exprs!6502 lt!2447565))) (reg!16947 (h!72477 (exprs!6502 lt!2447565)))))) (ite (or c!1264347 c!1264346) (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (Context!12005 call!617808)) (h!72478 s!2326)))))

(declare-fun b!6799814 () Bool)

(declare-fun e!4103763 () (Set Context!12004))

(assert (=> b!6799814 (= e!4103763 call!617806)))

(declare-fun d!2136749 () Bool)

(declare-fun c!1264345 () Bool)

(assert (=> d!2136749 (= c!1264345 (and (is-ElementMatch!16618 (h!72477 (exprs!6502 lt!2447565))) (= (c!1263993 (h!72477 (exprs!6502 lt!2447565))) (h!72478 s!2326))))))

(assert (=> d!2136749 (= (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447565)) (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (h!72478 s!2326)) e!4103762)))

(declare-fun bm!617801 () Bool)

(declare-fun call!617810 () List!66153)

(assert (=> bm!617801 (= call!617808 call!617810)))

(declare-fun call!617807 () (Set Context!12004))

(declare-fun bm!617802 () Bool)

(assert (=> bm!617802 (= call!617807 (derivationStepZipperDown!1846 (ite c!1264347 (regTwo!33749 (h!72477 (exprs!6502 lt!2447565))) (regOne!33748 (h!72477 (exprs!6502 lt!2447565)))) (ite c!1264347 (Context!12005 (t!379882 (exprs!6502 lt!2447565))) (Context!12005 call!617810)) (h!72478 s!2326)))))

(declare-fun b!6799815 () Bool)

(assert (=> b!6799815 (= e!4103758 e!4103763)))

(assert (=> b!6799815 (= c!1264349 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447565))))))

(declare-fun b!6799816 () Bool)

(assert (=> b!6799816 (= e!4103759 (set.union call!617805 call!617807))))

(declare-fun bm!617803 () Bool)

(declare-fun call!617809 () (Set Context!12004))

(assert (=> bm!617803 (= call!617809 call!617805)))

(declare-fun bm!617804 () Bool)

(assert (=> bm!617804 (= call!617806 call!617809)))

(declare-fun b!6799817 () Bool)

(assert (=> b!6799817 (= e!4103761 (nullable!6597 (regOne!33748 (h!72477 (exprs!6502 lt!2447565)))))))

(declare-fun bm!617805 () Bool)

(assert (=> bm!617805 (= call!617810 ($colon$colon!2427 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447565)))) (ite (or c!1264346 c!1264349) (regTwo!33748 (h!72477 (exprs!6502 lt!2447565))) (h!72477 (exprs!6502 lt!2447565)))))))

(declare-fun b!6799818 () Bool)

(declare-fun c!1264348 () Bool)

(assert (=> b!6799818 (= c!1264348 (is-Star!16618 (h!72477 (exprs!6502 lt!2447565))))))

(assert (=> b!6799818 (= e!4103763 e!4103760)))

(declare-fun b!6799819 () Bool)

(assert (=> b!6799819 (= e!4103760 (as set.empty (Set Context!12004)))))

(declare-fun b!6799820 () Bool)

(assert (=> b!6799820 (= e!4103758 (set.union call!617807 call!617809))))

(assert (= (and d!2136749 c!1264345) b!6799810))

(assert (= (and d!2136749 (not c!1264345)) b!6799812))

(assert (= (and b!6799812 c!1264347) b!6799816))

(assert (= (and b!6799812 (not c!1264347)) b!6799811))

(assert (= (and b!6799811 res!2778791) b!6799817))

(assert (= (and b!6799811 c!1264346) b!6799820))

(assert (= (and b!6799811 (not c!1264346)) b!6799815))

(assert (= (and b!6799815 c!1264349) b!6799814))

(assert (= (and b!6799815 (not c!1264349)) b!6799818))

(assert (= (and b!6799818 c!1264348) b!6799813))

(assert (= (and b!6799818 (not c!1264348)) b!6799819))

(assert (= (or b!6799814 b!6799813) bm!617801))

(assert (= (or b!6799814 b!6799813) bm!617804))

(assert (= (or b!6799820 bm!617801) bm!617805))

(assert (= (or b!6799820 bm!617804) bm!617803))

(assert (= (or b!6799816 b!6799820) bm!617802))

(assert (= (or b!6799816 bm!617803) bm!617800))

(declare-fun m!7546398 () Bool)

(assert (=> bm!617802 m!7546398))

(declare-fun m!7546400 () Bool)

(assert (=> b!6799810 m!7546400))

(declare-fun m!7546402 () Bool)

(assert (=> b!6799817 m!7546402))

(declare-fun m!7546404 () Bool)

(assert (=> bm!617805 m!7546404))

(declare-fun m!7546406 () Bool)

(assert (=> bm!617800 m!7546406))

(assert (=> bm!617704 d!2136749))

(declare-fun d!2136751 () Bool)

(assert (=> d!2136751 (= (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (nullableFct!2501 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(declare-fun bs!1812439 () Bool)

(assert (= bs!1812439 d!2136751))

(declare-fun m!7546408 () Bool)

(assert (=> bs!1812439 m!7546408))

(assert (=> b!6798667 d!2136751))

(declare-fun d!2136753 () Bool)

(assert (=> d!2136753 (= (isEmpty!38411 (tail!12733 (exprs!6502 (h!72479 zl!343)))) (is-Nil!66029 (tail!12733 (exprs!6502 (h!72479 zl!343)))))))

(assert (=> b!6799079 d!2136753))

(declare-fun d!2136755 () Bool)

(assert (=> d!2136755 (= (tail!12733 (exprs!6502 (h!72479 zl!343))) (t!379882 (exprs!6502 (h!72479 zl!343))))))

(assert (=> b!6799079 d!2136755))

(declare-fun bs!1812440 () Bool)

(declare-fun b!6799825 () Bool)

(assert (= bs!1812440 (and b!6799825 b!6798731)))

(declare-fun lambda!383477 () Int)

(assert (=> bs!1812440 (not (= lambda!383477 lambda!383369))))

(declare-fun bs!1812441 () Bool)

(assert (= bs!1812441 (and b!6799825 b!6799598)))

(assert (=> bs!1812441 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 (regTwo!33749 r!7292))) (= (regTwo!33749 lt!2447563) (regTwo!33749 r!7292))) (= lambda!383477 lambda!383469))))

(declare-fun bs!1812442 () Bool)

(assert (= bs!1812442 (and b!6799825 b!6799725)))

(assert (=> bs!1812442 (not (= lambda!383477 lambda!383472))))

(declare-fun bs!1812443 () Bool)

(assert (= bs!1812443 (and b!6799825 b!6798444)))

(assert (=> bs!1812443 (not (= lambda!383477 lambda!383322))))

(declare-fun bs!1812444 () Bool)

(assert (= bs!1812444 (and b!6799825 d!2136383)))

(assert (=> bs!1812444 (not (= lambda!383477 lambda!383396))))

(declare-fun bs!1812445 () Bool)

(assert (= bs!1812445 (and b!6799825 b!6798734)))

(assert (=> bs!1812445 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 lt!2447563)) (= (regTwo!33749 lt!2447563) lt!2447563)) (= lambda!383477 lambda!383368))))

(assert (=> bs!1812444 (not (= lambda!383477 lambda!383397))))

(declare-fun bs!1812446 () Bool)

(assert (= bs!1812446 (and b!6799825 d!2136409)))

(assert (=> bs!1812446 (not (= lambda!383477 lambda!383407))))

(declare-fun bs!1812447 () Bool)

(assert (= bs!1812447 (and b!6799825 b!6798797)))

(assert (=> bs!1812447 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33749 lt!2447563) r!7292)) (= lambda!383477 lambda!383373))))

(declare-fun bs!1812448 () Bool)

(assert (= bs!1812448 (and b!6799825 b!6799728)))

(assert (=> bs!1812448 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 (regOne!33749 lt!2447563))) (= (regTwo!33749 lt!2447563) (regOne!33749 lt!2447563))) (= lambda!383477 lambda!383471))))

(assert (=> bs!1812443 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33749 lt!2447563) r!7292)) (= lambda!383477 lambda!383321))))

(declare-fun bs!1812449 () Bool)

(assert (= bs!1812449 (and b!6799825 b!6799595)))

(assert (=> bs!1812449 (not (= lambda!383477 lambda!383470))))

(declare-fun bs!1812450 () Bool)

(assert (= bs!1812450 (and b!6799825 d!2136605)))

(assert (=> bs!1812450 (not (= lambda!383477 lambda!383463))))

(assert (=> bs!1812450 (not (= lambda!383477 lambda!383462))))

(declare-fun bs!1812451 () Bool)

(assert (= bs!1812451 (and b!6799825 d!2136393)))

(assert (=> bs!1812451 (= (and (= (reg!16947 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33749 lt!2447563) (Star!16618 (reg!16947 r!7292)))) (= lambda!383477 lambda!383404))))

(assert (=> bs!1812443 (not (= lambda!383477 lambda!383320))))

(declare-fun bs!1812452 () Bool)

(assert (= bs!1812452 (and b!6799825 b!6798794)))

(assert (=> bs!1812452 (not (= lambda!383477 lambda!383374))))

(assert (=> bs!1812451 (not (= lambda!383477 lambda!383403))))

(assert (=> b!6799825 true))

(assert (=> b!6799825 true))

(declare-fun bs!1812453 () Bool)

(declare-fun b!6799822 () Bool)

(assert (= bs!1812453 (and b!6799822 b!6798731)))

(declare-fun lambda!383478 () Int)

(assert (=> bs!1812453 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (regOne!33748 lt!2447563)) (= (regTwo!33748 (regTwo!33749 lt!2447563)) (regTwo!33748 lt!2447563))) (= lambda!383478 lambda!383369))))

(declare-fun bs!1812454 () Bool)

(assert (= bs!1812454 (and b!6799822 b!6799598)))

(assert (=> bs!1812454 (not (= lambda!383478 lambda!383469))))

(declare-fun bs!1812455 () Bool)

(assert (= bs!1812455 (and b!6799822 b!6799725)))

(assert (=> bs!1812455 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (regOne!33748 (regOne!33749 lt!2447563))) (= (regTwo!33748 (regTwo!33749 lt!2447563)) (regTwo!33748 (regOne!33749 lt!2447563)))) (= lambda!383478 lambda!383472))))

(declare-fun bs!1812456 () Bool)

(assert (= bs!1812456 (and b!6799822 b!6798444)))

(assert (=> bs!1812456 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 lt!2447563)) r!7292)) (= lambda!383478 lambda!383322))))

(declare-fun bs!1812457 () Bool)

(assert (= bs!1812457 (and b!6799822 b!6799825)))

(assert (=> bs!1812457 (not (= lambda!383478 lambda!383477))))

(declare-fun bs!1812458 () Bool)

(assert (= bs!1812458 (and b!6799822 d!2136383)))

(assert (=> bs!1812458 (not (= lambda!383478 lambda!383396))))

(declare-fun bs!1812459 () Bool)

(assert (= bs!1812459 (and b!6799822 b!6798734)))

(assert (=> bs!1812459 (not (= lambda!383478 lambda!383368))))

(assert (=> bs!1812458 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 lt!2447563)) r!7292)) (= lambda!383478 lambda!383397))))

(declare-fun bs!1812460 () Bool)

(assert (= bs!1812460 (and b!6799822 d!2136409)))

(assert (=> bs!1812460 (not (= lambda!383478 lambda!383407))))

(declare-fun bs!1812461 () Bool)

(assert (= bs!1812461 (and b!6799822 b!6798797)))

(assert (=> bs!1812461 (not (= lambda!383478 lambda!383373))))

(declare-fun bs!1812462 () Bool)

(assert (= bs!1812462 (and b!6799822 b!6799728)))

(assert (=> bs!1812462 (not (= lambda!383478 lambda!383471))))

(assert (=> bs!1812456 (not (= lambda!383478 lambda!383321))))

(declare-fun bs!1812463 () Bool)

(assert (= bs!1812463 (and b!6799822 b!6799595)))

(assert (=> bs!1812463 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (regOne!33748 (regTwo!33749 r!7292))) (= (regTwo!33748 (regTwo!33749 lt!2447563)) (regTwo!33748 (regTwo!33749 r!7292)))) (= lambda!383478 lambda!383470))))

(declare-fun bs!1812464 () Bool)

(assert (= bs!1812464 (and b!6799822 d!2136605)))

(assert (=> bs!1812464 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (reg!16947 r!7292)) (= (regTwo!33748 (regTwo!33749 lt!2447563)) r!7292)) (= lambda!383478 lambda!383463))))

(assert (=> bs!1812464 (not (= lambda!383478 lambda!383462))))

(declare-fun bs!1812465 () Bool)

(assert (= bs!1812465 (and b!6799822 d!2136393)))

(assert (=> bs!1812465 (not (= lambda!383478 lambda!383404))))

(assert (=> bs!1812456 (not (= lambda!383478 lambda!383320))))

(declare-fun bs!1812466 () Bool)

(assert (= bs!1812466 (and b!6799822 b!6798794)))

(assert (=> bs!1812466 (= (and (= (regOne!33748 (regTwo!33749 lt!2447563)) (regOne!33748 r!7292)) (= (regTwo!33748 (regTwo!33749 lt!2447563)) (regTwo!33748 r!7292))) (= lambda!383478 lambda!383374))))

(assert (=> bs!1812465 (not (= lambda!383478 lambda!383403))))

(assert (=> b!6799822 true))

(assert (=> b!6799822 true))

(declare-fun b!6799821 () Bool)

(declare-fun e!4103770 () Bool)

(declare-fun e!4103766 () Bool)

(assert (=> b!6799821 (= e!4103770 e!4103766)))

(declare-fun res!2778792 () Bool)

(assert (=> b!6799821 (= res!2778792 (not (is-EmptyLang!16618 (regTwo!33749 lt!2447563))))))

(assert (=> b!6799821 (=> (not res!2778792) (not e!4103766))))

(declare-fun e!4103764 () Bool)

(declare-fun call!617811 () Bool)

(assert (=> b!6799822 (= e!4103764 call!617811)))

(declare-fun b!6799823 () Bool)

(declare-fun e!4103768 () Bool)

(assert (=> b!6799823 (= e!4103768 (matchRSpec!3719 (regTwo!33749 (regTwo!33749 lt!2447563)) s!2326))))

(declare-fun b!6799824 () Bool)

(declare-fun call!617812 () Bool)

(assert (=> b!6799824 (= e!4103770 call!617812)))

(declare-fun e!4103765 () Bool)

(assert (=> b!6799825 (= e!4103765 call!617811)))

(declare-fun b!6799826 () Bool)

(declare-fun e!4103769 () Bool)

(assert (=> b!6799826 (= e!4103769 e!4103768)))

(declare-fun res!2778793 () Bool)

(assert (=> b!6799826 (= res!2778793 (matchRSpec!3719 (regOne!33749 (regTwo!33749 lt!2447563)) s!2326))))

(assert (=> b!6799826 (=> res!2778793 e!4103768)))

(declare-fun b!6799827 () Bool)

(declare-fun e!4103767 () Bool)

(assert (=> b!6799827 (= e!4103767 (= s!2326 (Cons!66030 (c!1263993 (regTwo!33749 lt!2447563)) Nil!66030)))))

(declare-fun b!6799828 () Bool)

(declare-fun c!1264350 () Bool)

(assert (=> b!6799828 (= c!1264350 (is-Union!16618 (regTwo!33749 lt!2447563)))))

(assert (=> b!6799828 (= e!4103767 e!4103769)))

(declare-fun bm!617806 () Bool)

(assert (=> bm!617806 (= call!617812 (isEmpty!38407 s!2326))))

(declare-fun b!6799829 () Bool)

(declare-fun c!1264352 () Bool)

(assert (=> b!6799829 (= c!1264352 (is-ElementMatch!16618 (regTwo!33749 lt!2447563)))))

(assert (=> b!6799829 (= e!4103766 e!4103767)))

(declare-fun d!2136757 () Bool)

(declare-fun c!1264351 () Bool)

(assert (=> d!2136757 (= c!1264351 (is-EmptyExpr!16618 (regTwo!33749 lt!2447563)))))

(assert (=> d!2136757 (= (matchRSpec!3719 (regTwo!33749 lt!2447563) s!2326) e!4103770)))

(declare-fun b!6799830 () Bool)

(assert (=> b!6799830 (= e!4103769 e!4103764)))

(declare-fun c!1264353 () Bool)

(assert (=> b!6799830 (= c!1264353 (is-Star!16618 (regTwo!33749 lt!2447563)))))

(declare-fun bm!617807 () Bool)

(assert (=> bm!617807 (= call!617811 (Exists!3686 (ite c!1264353 lambda!383477 lambda!383478)))))

(declare-fun b!6799831 () Bool)

(declare-fun res!2778794 () Bool)

(assert (=> b!6799831 (=> res!2778794 e!4103765)))

(assert (=> b!6799831 (= res!2778794 call!617812)))

(assert (=> b!6799831 (= e!4103764 e!4103765)))

(assert (= (and d!2136757 c!1264351) b!6799824))

(assert (= (and d!2136757 (not c!1264351)) b!6799821))

(assert (= (and b!6799821 res!2778792) b!6799829))

(assert (= (and b!6799829 c!1264352) b!6799827))

(assert (= (and b!6799829 (not c!1264352)) b!6799828))

(assert (= (and b!6799828 c!1264350) b!6799826))

(assert (= (and b!6799828 (not c!1264350)) b!6799830))

(assert (= (and b!6799826 (not res!2778793)) b!6799823))

(assert (= (and b!6799830 c!1264353) b!6799831))

(assert (= (and b!6799830 (not c!1264353)) b!6799822))

(assert (= (and b!6799831 (not res!2778794)) b!6799825))

(assert (= (or b!6799825 b!6799822) bm!617807))

(assert (= (or b!6799824 b!6799831) bm!617806))

(declare-fun m!7546410 () Bool)

(assert (=> b!6799823 m!7546410))

(declare-fun m!7546412 () Bool)

(assert (=> b!6799826 m!7546412))

(assert (=> bm!617806 m!7545124))

(declare-fun m!7546414 () Bool)

(assert (=> bm!617807 m!7546414))

(assert (=> b!6798732 d!2136757))

(declare-fun b!6799832 () Bool)

(declare-fun e!4103775 () (Set Context!12004))

(assert (=> b!6799832 (= e!4103775 (set.insert (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (as set.empty (Set Context!12004))))))

(declare-fun b!6799833 () Bool)

(declare-fun c!1264355 () Bool)

(declare-fun e!4103774 () Bool)

(assert (=> b!6799833 (= c!1264355 e!4103774)))

(declare-fun res!2778795 () Bool)

(assert (=> b!6799833 (=> (not res!2778795) (not e!4103774))))

(assert (=> b!6799833 (= res!2778795 (is-Concat!25463 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(declare-fun e!4103772 () (Set Context!12004))

(declare-fun e!4103771 () (Set Context!12004))

(assert (=> b!6799833 (= e!4103772 e!4103771)))

(declare-fun b!6799834 () Bool)

(assert (=> b!6799834 (= e!4103775 e!4103772)))

(declare-fun c!1264356 () Bool)

(assert (=> b!6799834 (= c!1264356 (is-Union!16618 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(declare-fun b!6799835 () Bool)

(declare-fun e!4103773 () (Set Context!12004))

(declare-fun call!617814 () (Set Context!12004))

(assert (=> b!6799835 (= e!4103773 call!617814)))

(declare-fun c!1264358 () Bool)

(declare-fun call!617816 () List!66153)

(declare-fun bm!617808 () Bool)

(declare-fun call!617813 () (Set Context!12004))

(assert (=> bm!617808 (= call!617813 (derivationStepZipperDown!1846 (ite c!1264356 (regOne!33749 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (ite c!1264355 (regTwo!33748 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (ite c!1264358 (regOne!33748 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (reg!16947 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))) (ite (or c!1264356 c!1264355) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (Context!12005 call!617816)) (h!72478 s!2326)))))

(declare-fun b!6799836 () Bool)

(declare-fun e!4103776 () (Set Context!12004))

(assert (=> b!6799836 (= e!4103776 call!617814)))

(declare-fun d!2136759 () Bool)

(declare-fun c!1264354 () Bool)

(assert (=> d!2136759 (= c!1264354 (and (is-ElementMatch!16618 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (= (c!1263993 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72478 s!2326))))))

(assert (=> d!2136759 (= (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72478 s!2326)) e!4103775)))

(declare-fun bm!617809 () Bool)

(declare-fun call!617818 () List!66153)

(assert (=> bm!617809 (= call!617816 call!617818)))

(declare-fun bm!617810 () Bool)

(declare-fun call!617815 () (Set Context!12004))

(assert (=> bm!617810 (= call!617815 (derivationStepZipperDown!1846 (ite c!1264356 (regTwo!33749 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (regOne!33748 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))) (ite c!1264356 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (Context!12005 call!617818)) (h!72478 s!2326)))))

(declare-fun b!6799837 () Bool)

(assert (=> b!6799837 (= e!4103771 e!4103776)))

(assert (=> b!6799837 (= c!1264358 (is-Concat!25463 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(declare-fun b!6799838 () Bool)

(assert (=> b!6799838 (= e!4103772 (set.union call!617813 call!617815))))

(declare-fun bm!617811 () Bool)

(declare-fun call!617817 () (Set Context!12004))

(assert (=> bm!617811 (= call!617817 call!617813)))

(declare-fun bm!617812 () Bool)

(assert (=> bm!617812 (= call!617814 call!617817)))

(declare-fun b!6799839 () Bool)

(assert (=> b!6799839 (= e!4103774 (nullable!6597 (regOne!33748 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))))

(declare-fun bm!617813 () Bool)

(assert (=> bm!617813 (= call!617818 ($colon$colon!2427 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))) (ite (or c!1264355 c!1264358) (regTwo!33748 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))) (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029)))))))))

(declare-fun b!6799840 () Bool)

(declare-fun c!1264357 () Bool)

(assert (=> b!6799840 (= c!1264357 (is-Star!16618 (h!72477 (exprs!6502 (Context!12005 (Cons!66029 r!7292 Nil!66029))))))))

(assert (=> b!6799840 (= e!4103776 e!4103773)))

(declare-fun b!6799841 () Bool)

(assert (=> b!6799841 (= e!4103773 (as set.empty (Set Context!12004)))))

(declare-fun b!6799842 () Bool)

(assert (=> b!6799842 (= e!4103771 (set.union call!617815 call!617817))))

(assert (= (and d!2136759 c!1264354) b!6799832))

(assert (= (and d!2136759 (not c!1264354)) b!6799834))

(assert (= (and b!6799834 c!1264356) b!6799838))

(assert (= (and b!6799834 (not c!1264356)) b!6799833))

(assert (= (and b!6799833 res!2778795) b!6799839))

(assert (= (and b!6799833 c!1264355) b!6799842))

(assert (= (and b!6799833 (not c!1264355)) b!6799837))

(assert (= (and b!6799837 c!1264358) b!6799836))

(assert (= (and b!6799837 (not c!1264358)) b!6799840))

(assert (= (and b!6799840 c!1264357) b!6799835))

(assert (= (and b!6799840 (not c!1264357)) b!6799841))

(assert (= (or b!6799836 b!6799835) bm!617809))

(assert (= (or b!6799836 b!6799835) bm!617812))

(assert (= (or b!6799842 bm!617809) bm!617813))

(assert (= (or b!6799842 bm!617812) bm!617811))

(assert (= (or b!6799838 b!6799842) bm!617810))

(assert (= (or b!6799838 bm!617811) bm!617808))

(declare-fun m!7546416 () Bool)

(assert (=> bm!617810 m!7546416))

(declare-fun m!7546418 () Bool)

(assert (=> b!6799832 m!7546418))

(declare-fun m!7546420 () Bool)

(assert (=> b!6799839 m!7546420))

(declare-fun m!7546422 () Bool)

(assert (=> bm!617813 m!7546422))

(declare-fun m!7546424 () Bool)

(assert (=> bm!617808 m!7546424))

(assert (=> bm!617649 d!2136759))

(declare-fun bs!1812467 () Bool)

(declare-fun d!2136761 () Bool)

(assert (= bs!1812467 (and d!2136761 d!2136567)))

(declare-fun lambda!383479 () Int)

(assert (=> bs!1812467 (= lambda!383479 lambda!383452)))

(declare-fun bs!1812468 () Bool)

(assert (= bs!1812468 (and d!2136761 d!2136569)))

(assert (=> bs!1812468 (= lambda!383479 lambda!383453)))

(assert (=> d!2136761 (= (nullableZipper!2325 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326))) (exists!2738 (derivationStepZipper!2562 lt!2447560 (h!72478 s!2326)) lambda!383479))))

(declare-fun bs!1812469 () Bool)

(assert (= bs!1812469 d!2136761))

(assert (=> bs!1812469 m!7545112))

(declare-fun m!7546426 () Bool)

(assert (=> bs!1812469 m!7546426))

(assert (=> b!6798616 d!2136761))

(assert (=> d!2136335 d!2136403))

(assert (=> d!2136335 d!2136711))

(assert (=> d!2136351 d!2136349))

(assert (=> d!2136351 d!2136343))

(declare-fun d!2136763 () Bool)

(assert (=> d!2136763 (= (matchR!8801 r!7292 s!2326) (matchRSpec!3719 r!7292 s!2326))))

(assert (=> d!2136763 true))

(declare-fun _$88!5626 () Unit!159927)

(assert (=> d!2136763 (= (choose!50661 r!7292 s!2326) _$88!5626)))

(declare-fun bs!1812470 () Bool)

(assert (= bs!1812470 d!2136763))

(assert (=> bs!1812470 m!7545104))

(assert (=> bs!1812470 m!7545102))

(assert (=> d!2136351 d!2136763))

(assert (=> d!2136351 d!2136327))

(assert (=> b!6798804 d!2136645))

(assert (=> b!6798804 d!2136593))

(declare-fun d!2136765 () Bool)

(assert (=> d!2136765 (= ($colon$colon!2427 (exprs!6502 lt!2447565) (ite (or c!1264141 c!1264144) (regTwo!33748 (reg!16947 r!7292)) (reg!16947 r!7292))) (Cons!66029 (ite (or c!1264141 c!1264144) (regTwo!33748 (reg!16947 r!7292)) (reg!16947 r!7292)) (exprs!6502 lt!2447565)))))

(assert (=> bm!617700 d!2136765))

(declare-fun e!4103778 () (Set Context!12004))

(declare-fun call!617819 () (Set Context!12004))

(declare-fun b!6799843 () Bool)

(assert (=> b!6799843 (= e!4103778 (set.union call!617819 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547)))))) (h!72478 s!2326))))))

(declare-fun b!6799844 () Bool)

(declare-fun e!4103777 () (Set Context!12004))

(assert (=> b!6799844 (= e!4103778 e!4103777)))

(declare-fun c!1264360 () Bool)

(assert (=> b!6799844 (= c!1264360 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547))))))))

(declare-fun b!6799845 () Bool)

(assert (=> b!6799845 (= e!4103777 call!617819)))

(declare-fun b!6799846 () Bool)

(assert (=> b!6799846 (= e!4103777 (as set.empty (Set Context!12004)))))

(declare-fun b!6799847 () Bool)

(declare-fun e!4103779 () Bool)

(assert (=> b!6799847 (= e!4103779 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547)))))))))

(declare-fun d!2136767 () Bool)

(declare-fun c!1264359 () Bool)

(assert (=> d!2136767 (= c!1264359 e!4103779)))

(declare-fun res!2778796 () Bool)

(assert (=> d!2136767 (=> (not res!2778796) (not e!4103779))))

(assert (=> d!2136767 (= res!2778796 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547))))))))

(assert (=> d!2136767 (= (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (h!72478 s!2326)) e!4103778)))

(declare-fun bm!617814 () Bool)

(assert (=> bm!617814 (= call!617819 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547))))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547)))))) (h!72478 s!2326)))))

(assert (= (and d!2136767 res!2778796) b!6799847))

(assert (= (and d!2136767 c!1264359) b!6799843))

(assert (= (and d!2136767 (not c!1264359)) b!6799844))

(assert (= (and b!6799844 c!1264360) b!6799845))

(assert (= (and b!6799844 (not c!1264360)) b!6799846))

(assert (= (or b!6799843 b!6799845) bm!617814))

(declare-fun m!7546428 () Bool)

(assert (=> b!6799843 m!7546428))

(declare-fun m!7546430 () Bool)

(assert (=> b!6799847 m!7546430))

(declare-fun m!7546432 () Bool)

(assert (=> bm!617814 m!7546432))

(assert (=> b!6799035 d!2136767))

(declare-fun d!2136769 () Bool)

(assert (=> d!2136769 (= (isEmpty!38411 (t!379882 (unfocusZipperList!2039 zl!343))) (is-Nil!66029 (t!379882 (unfocusZipperList!2039 zl!343))))))

(assert (=> b!6798884 d!2136769))

(declare-fun bm!617815 () Bool)

(declare-fun call!617820 () Bool)

(assert (=> bm!617815 (= call!617820 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun b!6799848 () Bool)

(declare-fun res!2778798 () Bool)

(declare-fun e!4103781 () Bool)

(assert (=> b!6799848 (=> res!2778798 e!4103781)))

(assert (=> b!6799848 (= res!2778798 (not (isEmpty!38407 (tail!12732 (tail!12732 s!2326)))))))

(declare-fun b!6799849 () Bool)

(declare-fun e!4103782 () Bool)

(assert (=> b!6799849 (= e!4103782 (= (head!13647 (tail!12732 s!2326)) (c!1263993 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)))))))

(declare-fun b!6799850 () Bool)

(declare-fun e!4103783 () Bool)

(declare-fun e!4103785 () Bool)

(assert (=> b!6799850 (= e!4103783 e!4103785)))

(declare-fun c!1264361 () Bool)

(assert (=> b!6799850 (= c!1264361 (is-EmptyLang!16618 (derivativeStep!5282 lt!2447563 (head!13647 s!2326))))))

(declare-fun b!6799851 () Bool)

(declare-fun res!2778802 () Bool)

(declare-fun e!4103786 () Bool)

(assert (=> b!6799851 (=> res!2778802 e!4103786)))

(assert (=> b!6799851 (= res!2778802 e!4103782)))

(declare-fun res!2778804 () Bool)

(assert (=> b!6799851 (=> (not res!2778804) (not e!4103782))))

(declare-fun lt!2447811 () Bool)

(assert (=> b!6799851 (= res!2778804 lt!2447811)))

(declare-fun b!6799852 () Bool)

(assert (=> b!6799852 (= e!4103781 (not (= (head!13647 (tail!12732 s!2326)) (c!1263993 (derivativeStep!5282 lt!2447563 (head!13647 s!2326))))))))

(declare-fun b!6799853 () Bool)

(declare-fun res!2778799 () Bool)

(assert (=> b!6799853 (=> (not res!2778799) (not e!4103782))))

(assert (=> b!6799853 (= res!2778799 (not call!617820))))

(declare-fun d!2136771 () Bool)

(assert (=> d!2136771 e!4103783))

(declare-fun c!1264363 () Bool)

(assert (=> d!2136771 (= c!1264363 (is-EmptyExpr!16618 (derivativeStep!5282 lt!2447563 (head!13647 s!2326))))))

(declare-fun e!4103780 () Bool)

(assert (=> d!2136771 (= lt!2447811 e!4103780)))

(declare-fun c!1264362 () Bool)

(assert (=> d!2136771 (= c!1264362 (isEmpty!38407 (tail!12732 s!2326)))))

(assert (=> d!2136771 (validRegex!8354 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)))))

(assert (=> d!2136771 (= (matchR!8801 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)) (tail!12732 s!2326)) lt!2447811)))

(declare-fun b!6799854 () Bool)

(declare-fun e!4103784 () Bool)

(assert (=> b!6799854 (= e!4103784 e!4103781)))

(declare-fun res!2778800 () Bool)

(assert (=> b!6799854 (=> res!2778800 e!4103781)))

(assert (=> b!6799854 (= res!2778800 call!617820)))

(declare-fun b!6799855 () Bool)

(assert (=> b!6799855 (= e!4103780 (nullable!6597 (derivativeStep!5282 lt!2447563 (head!13647 s!2326))))))

(declare-fun b!6799856 () Bool)

(assert (=> b!6799856 (= e!4103783 (= lt!2447811 call!617820))))

(declare-fun b!6799857 () Bool)

(declare-fun res!2778797 () Bool)

(assert (=> b!6799857 (=> res!2778797 e!4103786)))

(assert (=> b!6799857 (= res!2778797 (not (is-ElementMatch!16618 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)))))))

(assert (=> b!6799857 (= e!4103785 e!4103786)))

(declare-fun b!6799858 () Bool)

(assert (=> b!6799858 (= e!4103785 (not lt!2447811))))

(declare-fun b!6799859 () Bool)

(declare-fun res!2778803 () Bool)

(assert (=> b!6799859 (=> (not res!2778803) (not e!4103782))))

(assert (=> b!6799859 (= res!2778803 (isEmpty!38407 (tail!12732 (tail!12732 s!2326))))))

(declare-fun b!6799860 () Bool)

(assert (=> b!6799860 (= e!4103786 e!4103784)))

(declare-fun res!2778801 () Bool)

(assert (=> b!6799860 (=> (not res!2778801) (not e!4103784))))

(assert (=> b!6799860 (= res!2778801 (not lt!2447811))))

(declare-fun b!6799861 () Bool)

(assert (=> b!6799861 (= e!4103780 (matchR!8801 (derivativeStep!5282 (derivativeStep!5282 lt!2447563 (head!13647 s!2326)) (head!13647 (tail!12732 s!2326))) (tail!12732 (tail!12732 s!2326))))))

(assert (= (and d!2136771 c!1264362) b!6799855))

(assert (= (and d!2136771 (not c!1264362)) b!6799861))

(assert (= (and d!2136771 c!1264363) b!6799856))

(assert (= (and d!2136771 (not c!1264363)) b!6799850))

(assert (= (and b!6799850 c!1264361) b!6799858))

(assert (= (and b!6799850 (not c!1264361)) b!6799857))

(assert (= (and b!6799857 (not res!2778797)) b!6799851))

(assert (= (and b!6799851 res!2778804) b!6799853))

(assert (= (and b!6799853 res!2778799) b!6799859))

(assert (= (and b!6799859 res!2778803) b!6799849))

(assert (= (and b!6799851 (not res!2778802)) b!6799860))

(assert (= (and b!6799860 res!2778801) b!6799854))

(assert (= (and b!6799854 (not res!2778800)) b!6799848))

(assert (= (and b!6799848 (not res!2778798)) b!6799852))

(assert (= (or b!6799856 b!6799853 b!6799854) bm!617815))

(assert (=> b!6799848 m!7545318))

(assert (=> b!6799848 m!7546050))

(assert (=> b!6799848 m!7546050))

(declare-fun m!7546434 () Bool)

(assert (=> b!6799848 m!7546434))

(assert (=> b!6799855 m!7545420))

(declare-fun m!7546436 () Bool)

(assert (=> b!6799855 m!7546436))

(assert (=> b!6799849 m!7545318))

(assert (=> b!6799849 m!7546046))

(assert (=> b!6799861 m!7545318))

(assert (=> b!6799861 m!7546046))

(assert (=> b!6799861 m!7545420))

(assert (=> b!6799861 m!7546046))

(declare-fun m!7546438 () Bool)

(assert (=> b!6799861 m!7546438))

(assert (=> b!6799861 m!7545318))

(assert (=> b!6799861 m!7546050))

(assert (=> b!6799861 m!7546438))

(assert (=> b!6799861 m!7546050))

(declare-fun m!7546440 () Bool)

(assert (=> b!6799861 m!7546440))

(assert (=> bm!617815 m!7545318))

(assert (=> bm!617815 m!7545416))

(assert (=> b!6799859 m!7545318))

(assert (=> b!6799859 m!7546050))

(assert (=> b!6799859 m!7546050))

(assert (=> b!6799859 m!7546434))

(assert (=> b!6799852 m!7545318))

(assert (=> b!6799852 m!7546046))

(assert (=> d!2136771 m!7545318))

(assert (=> d!2136771 m!7545416))

(assert (=> d!2136771 m!7545420))

(declare-fun m!7546442 () Bool)

(assert (=> d!2136771 m!7546442))

(assert (=> b!6798790 d!2136771))

(declare-fun call!617831 () Regex!16618)

(declare-fun c!1264376 () Bool)

(declare-fun c!1264378 () Bool)

(declare-fun bm!617824 () Bool)

(assert (=> bm!617824 (= call!617831 (derivativeStep!5282 (ite c!1264376 (regTwo!33749 lt!2447563) (ite c!1264378 (reg!16947 lt!2447563) (regOne!33748 lt!2447563))) (head!13647 s!2326)))))

(declare-fun bm!617825 () Bool)

(declare-fun call!617832 () Regex!16618)

(assert (=> bm!617825 (= call!617832 call!617831)))

(declare-fun b!6799882 () Bool)

(declare-fun e!4103797 () Regex!16618)

(assert (=> b!6799882 (= e!4103797 (ite (= (head!13647 s!2326) (c!1263993 lt!2447563)) EmptyExpr!16618 EmptyLang!16618))))

(declare-fun b!6799883 () Bool)

(declare-fun e!4103798 () Regex!16618)

(assert (=> b!6799883 (= e!4103798 e!4103797)))

(declare-fun c!1264374 () Bool)

(assert (=> b!6799883 (= c!1264374 (is-ElementMatch!16618 lt!2447563))))

(declare-fun b!6799884 () Bool)

(declare-fun e!4103801 () Regex!16618)

(declare-fun e!4103799 () Regex!16618)

(assert (=> b!6799884 (= e!4103801 e!4103799)))

(assert (=> b!6799884 (= c!1264378 (is-Star!16618 lt!2447563))))

(declare-fun call!617829 () Regex!16618)

(declare-fun b!6799886 () Bool)

(declare-fun e!4103800 () Regex!16618)

(assert (=> b!6799886 (= e!4103800 (Union!16618 (Concat!25463 call!617832 (regTwo!33748 lt!2447563)) call!617829))))

(declare-fun b!6799887 () Bool)

(assert (=> b!6799887 (= c!1264376 (is-Union!16618 lt!2447563))))

(assert (=> b!6799887 (= e!4103797 e!4103801)))

(declare-fun call!617830 () Regex!16618)

(declare-fun bm!617826 () Bool)

(declare-fun c!1264377 () Bool)

(assert (=> bm!617826 (= call!617830 (derivativeStep!5282 (ite c!1264376 (regOne!33749 lt!2447563) (ite c!1264377 (regTwo!33748 lt!2447563) (regOne!33748 lt!2447563))) (head!13647 s!2326)))))

(declare-fun b!6799888 () Bool)

(assert (=> b!6799888 (= e!4103801 (Union!16618 call!617830 call!617831))))

(declare-fun bm!617827 () Bool)

(assert (=> bm!617827 (= call!617829 call!617830)))

(declare-fun b!6799889 () Bool)

(assert (=> b!6799889 (= e!4103798 EmptyLang!16618)))

(declare-fun b!6799885 () Bool)

(assert (=> b!6799885 (= e!4103799 (Concat!25463 call!617832 lt!2447563))))

(declare-fun d!2136773 () Bool)

(declare-fun lt!2447814 () Regex!16618)

(assert (=> d!2136773 (validRegex!8354 lt!2447814)))

(assert (=> d!2136773 (= lt!2447814 e!4103798)))

(declare-fun c!1264375 () Bool)

(assert (=> d!2136773 (= c!1264375 (or (is-EmptyExpr!16618 lt!2447563) (is-EmptyLang!16618 lt!2447563)))))

(assert (=> d!2136773 (validRegex!8354 lt!2447563)))

(assert (=> d!2136773 (= (derivativeStep!5282 lt!2447563 (head!13647 s!2326)) lt!2447814)))

(declare-fun b!6799890 () Bool)

(assert (=> b!6799890 (= c!1264377 (nullable!6597 (regOne!33748 lt!2447563)))))

(assert (=> b!6799890 (= e!4103799 e!4103800)))

(declare-fun b!6799891 () Bool)

(assert (=> b!6799891 (= e!4103800 (Union!16618 (Concat!25463 call!617829 (regTwo!33748 lt!2447563)) EmptyLang!16618))))

(assert (= (and d!2136773 c!1264375) b!6799889))

(assert (= (and d!2136773 (not c!1264375)) b!6799883))

(assert (= (and b!6799883 c!1264374) b!6799882))

(assert (= (and b!6799883 (not c!1264374)) b!6799887))

(assert (= (and b!6799887 c!1264376) b!6799888))

(assert (= (and b!6799887 (not c!1264376)) b!6799884))

(assert (= (and b!6799884 c!1264378) b!6799885))

(assert (= (and b!6799884 (not c!1264378)) b!6799890))

(assert (= (and b!6799890 c!1264377) b!6799886))

(assert (= (and b!6799890 (not c!1264377)) b!6799891))

(assert (= (or b!6799886 b!6799891) bm!617827))

(assert (= (or b!6799885 b!6799886) bm!617825))

(assert (= (or b!6799888 bm!617825) bm!617824))

(assert (= (or b!6799888 bm!617827) bm!617826))

(assert (=> bm!617824 m!7545314))

(declare-fun m!7546444 () Bool)

(assert (=> bm!617824 m!7546444))

(assert (=> bm!617826 m!7545314))

(declare-fun m!7546446 () Bool)

(assert (=> bm!617826 m!7546446))

(declare-fun m!7546448 () Bool)

(assert (=> d!2136773 m!7546448))

(assert (=> d!2136773 m!7545424))

(declare-fun m!7546450 () Bool)

(assert (=> b!6799890 m!7546450))

(assert (=> b!6798790 d!2136773))

(assert (=> b!6798790 d!2136581))

(assert (=> b!6798790 d!2136593))

(declare-fun d!2136775 () Bool)

(assert (=> d!2136775 (= (isEmptyLang!1984 lt!2447696) (is-EmptyLang!16618 lt!2447696))))

(assert (=> b!6798888 d!2136775))

(declare-fun b!6799892 () Bool)

(declare-fun e!4103806 () (Set Context!12004))

(assert (=> b!6799892 (= e!4103806 (set.insert (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651)) (as set.empty (Set Context!12004))))))

(declare-fun b!6799893 () Bool)

(declare-fun c!1264380 () Bool)

(declare-fun e!4103805 () Bool)

(assert (=> b!6799893 (= c!1264380 e!4103805)))

(declare-fun res!2778805 () Bool)

(assert (=> b!6799893 (=> (not res!2778805) (not e!4103805))))

(assert (=> b!6799893 (= res!2778805 (is-Concat!25463 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))))))

(declare-fun e!4103803 () (Set Context!12004))

(declare-fun e!4103802 () (Set Context!12004))

(assert (=> b!6799893 (= e!4103803 e!4103802)))

(declare-fun b!6799894 () Bool)

(assert (=> b!6799894 (= e!4103806 e!4103803)))

(declare-fun c!1264381 () Bool)

(assert (=> b!6799894 (= c!1264381 (is-Union!16618 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))))))

(declare-fun b!6799895 () Bool)

(declare-fun e!4103804 () (Set Context!12004))

(declare-fun call!617834 () (Set Context!12004))

(assert (=> b!6799895 (= e!4103804 call!617834)))

(declare-fun c!1264383 () Bool)

(declare-fun call!617833 () (Set Context!12004))

(declare-fun bm!617828 () Bool)

(declare-fun call!617836 () List!66153)

(assert (=> bm!617828 (= call!617833 (derivationStepZipperDown!1846 (ite c!1264381 (regOne!33749 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (ite c!1264380 (regTwo!33748 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (ite c!1264383 (regOne!33748 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (reg!16947 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)))))) (ite (or c!1264381 c!1264380) (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651)) (Context!12005 call!617836)) (h!72478 s!2326)))))

(declare-fun b!6799896 () Bool)

(declare-fun e!4103807 () (Set Context!12004))

(assert (=> b!6799896 (= e!4103807 call!617834)))

(declare-fun d!2136777 () Bool)

(declare-fun c!1264379 () Bool)

(assert (=> d!2136777 (= c!1264379 (and (is-ElementMatch!16618 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (= (c!1263993 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (h!72478 s!2326))))))

(assert (=> d!2136777 (= (derivationStepZipperDown!1846 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)) (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651)) (h!72478 s!2326)) e!4103806)))

(declare-fun bm!617829 () Bool)

(declare-fun call!617838 () List!66153)

(assert (=> bm!617829 (= call!617836 call!617838)))

(declare-fun bm!617830 () Bool)

(declare-fun call!617835 () (Set Context!12004))

(assert (=> bm!617830 (= call!617835 (derivationStepZipperDown!1846 (ite c!1264381 (regTwo!33749 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (regOne!33748 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)))) (ite c!1264381 (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651)) (Context!12005 call!617838)) (h!72478 s!2326)))))

(declare-fun b!6799897 () Bool)

(assert (=> b!6799897 (= e!4103802 e!4103807)))

(assert (=> b!6799897 (= c!1264383 (is-Concat!25463 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))))))

(declare-fun b!6799898 () Bool)

(assert (=> b!6799898 (= e!4103803 (set.union call!617833 call!617835))))

(declare-fun bm!617831 () Bool)

(declare-fun call!617837 () (Set Context!12004))

(assert (=> bm!617831 (= call!617837 call!617833)))

(declare-fun bm!617832 () Bool)

(assert (=> bm!617832 (= call!617834 call!617837)))

(declare-fun b!6799899 () Bool)

(assert (=> b!6799899 (= e!4103805 (nullable!6597 (regOne!33748 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)))))))

(declare-fun bm!617833 () Bool)

(assert (=> bm!617833 (= call!617838 ($colon$colon!2427 (exprs!6502 (ite c!1264025 (Context!12005 Nil!66029) (Context!12005 call!617651))) (ite (or c!1264380 c!1264383) (regTwo!33748 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))) (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292)))))))

(declare-fun b!6799900 () Bool)

(declare-fun c!1264382 () Bool)

(assert (=> b!6799900 (= c!1264382 (is-Star!16618 (ite c!1264025 (regTwo!33749 r!7292) (regOne!33748 r!7292))))))

(assert (=> b!6799900 (= e!4103807 e!4103804)))

(declare-fun b!6799901 () Bool)

(assert (=> b!6799901 (= e!4103804 (as set.empty (Set Context!12004)))))

(declare-fun b!6799902 () Bool)

(assert (=> b!6799902 (= e!4103802 (set.union call!617835 call!617837))))

(assert (= (and d!2136777 c!1264379) b!6799892))

(assert (= (and d!2136777 (not c!1264379)) b!6799894))

(assert (= (and b!6799894 c!1264381) b!6799898))

(assert (= (and b!6799894 (not c!1264381)) b!6799893))

(assert (= (and b!6799893 res!2778805) b!6799899))

(assert (= (and b!6799893 c!1264380) b!6799902))

(assert (= (and b!6799893 (not c!1264380)) b!6799897))

(assert (= (and b!6799897 c!1264383) b!6799896))

(assert (= (and b!6799897 (not c!1264383)) b!6799900))

(assert (= (and b!6799900 c!1264382) b!6799895))

(assert (= (and b!6799900 (not c!1264382)) b!6799901))

(assert (= (or b!6799896 b!6799895) bm!617829))

(assert (= (or b!6799896 b!6799895) bm!617832))

(assert (= (or b!6799902 bm!617829) bm!617833))

(assert (= (or b!6799902 bm!617832) bm!617831))

(assert (= (or b!6799898 b!6799902) bm!617830))

(assert (= (or b!6799898 bm!617831) bm!617828))

(declare-fun m!7546452 () Bool)

(assert (=> bm!617830 m!7546452))

(declare-fun m!7546454 () Bool)

(assert (=> b!6799892 m!7546454))

(declare-fun m!7546456 () Bool)

(assert (=> b!6799899 m!7546456))

(declare-fun m!7546458 () Bool)

(assert (=> bm!617833 m!7546458))

(declare-fun m!7546460 () Bool)

(assert (=> bm!617828 m!7546460))

(assert (=> bm!617643 d!2136777))

(declare-fun d!2136779 () Bool)

(assert (=> d!2136779 (= (flatMap!2099 z!1189 lambda!383362) (choose!50669 z!1189 lambda!383362))))

(declare-fun bs!1812471 () Bool)

(assert (= bs!1812471 d!2136779))

(declare-fun m!7546462 () Bool)

(assert (=> bs!1812471 m!7546462))

(assert (=> d!2136321 d!2136779))

(declare-fun d!2136781 () Bool)

(assert (=> d!2136781 (= (isEmpty!38411 (tail!12733 (unfocusZipperList!2039 zl!343))) (is-Nil!66029 (tail!12733 (unfocusZipperList!2039 zl!343))))))

(assert (=> b!6798889 d!2136781))

(declare-fun d!2136783 () Bool)

(assert (=> d!2136783 (= (tail!12733 (unfocusZipperList!2039 zl!343)) (t!379882 (unfocusZipperList!2039 zl!343)))))

(assert (=> b!6798889 d!2136783))

(declare-fun d!2136785 () Bool)

(assert (=> d!2136785 (= (Exists!3686 lambda!383403) (choose!50665 lambda!383403))))

(declare-fun bs!1812472 () Bool)

(assert (= bs!1812472 d!2136785))

(declare-fun m!7546464 () Bool)

(assert (=> bs!1812472 m!7546464))

(assert (=> d!2136393 d!2136785))

(declare-fun d!2136787 () Bool)

(assert (=> d!2136787 (= (Exists!3686 lambda!383404) (choose!50665 lambda!383404))))

(declare-fun bs!1812473 () Bool)

(assert (= bs!1812473 d!2136787))

(declare-fun m!7546466 () Bool)

(assert (=> bs!1812473 m!7546466))

(assert (=> d!2136393 d!2136787))

(declare-fun bs!1812474 () Bool)

(declare-fun d!2136789 () Bool)

(assert (= bs!1812474 (and d!2136789 b!6799822)))

(declare-fun lambda!383484 () Int)

(assert (=> bs!1812474 (not (= lambda!383484 lambda!383478))))

(declare-fun bs!1812475 () Bool)

(assert (= bs!1812475 (and d!2136789 b!6798731)))

(assert (=> bs!1812475 (not (= lambda!383484 lambda!383369))))

(declare-fun bs!1812476 () Bool)

(assert (= bs!1812476 (and d!2136789 b!6799598)))

(assert (=> bs!1812476 (not (= lambda!383484 lambda!383469))))

(declare-fun bs!1812477 () Bool)

(assert (= bs!1812477 (and d!2136789 b!6799725)))

(assert (=> bs!1812477 (not (= lambda!383484 lambda!383472))))

(declare-fun bs!1812478 () Bool)

(assert (= bs!1812478 (and d!2136789 b!6798444)))

(assert (=> bs!1812478 (not (= lambda!383484 lambda!383322))))

(declare-fun bs!1812479 () Bool)

(assert (= bs!1812479 (and d!2136789 b!6799825)))

(assert (=> bs!1812479 (not (= lambda!383484 lambda!383477))))

(declare-fun bs!1812480 () Bool)

(assert (= bs!1812480 (and d!2136789 d!2136383)))

(assert (=> bs!1812480 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383484 lambda!383396))))

(declare-fun bs!1812481 () Bool)

(assert (= bs!1812481 (and d!2136789 b!6798734)))

(assert (=> bs!1812481 (not (= lambda!383484 lambda!383368))))

(assert (=> bs!1812480 (not (= lambda!383484 lambda!383397))))

(declare-fun bs!1812482 () Bool)

(assert (= bs!1812482 (and d!2136789 d!2136409)))

(assert (=> bs!1812482 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383484 lambda!383407))))

(declare-fun bs!1812483 () Bool)

(assert (= bs!1812483 (and d!2136789 b!6798797)))

(assert (=> bs!1812483 (not (= lambda!383484 lambda!383373))))

(declare-fun bs!1812484 () Bool)

(assert (= bs!1812484 (and d!2136789 b!6799728)))

(assert (=> bs!1812484 (not (= lambda!383484 lambda!383471))))

(assert (=> bs!1812478 (not (= lambda!383484 lambda!383321))))

(declare-fun bs!1812485 () Bool)

(assert (= bs!1812485 (and d!2136789 b!6799595)))

(assert (=> bs!1812485 (not (= lambda!383484 lambda!383470))))

(declare-fun bs!1812486 () Bool)

(assert (= bs!1812486 (and d!2136789 d!2136605)))

(assert (=> bs!1812486 (not (= lambda!383484 lambda!383463))))

(assert (=> bs!1812486 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383484 lambda!383462))))

(declare-fun bs!1812487 () Bool)

(assert (= bs!1812487 (and d!2136789 d!2136393)))

(assert (=> bs!1812487 (not (= lambda!383484 lambda!383404))))

(assert (=> bs!1812478 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383484 lambda!383320))))

(declare-fun bs!1812488 () Bool)

(assert (= bs!1812488 (and d!2136789 b!6798794)))

(assert (=> bs!1812488 (not (= lambda!383484 lambda!383374))))

(assert (=> bs!1812487 (= lambda!383484 lambda!383403)))

(assert (=> d!2136789 true))

(assert (=> d!2136789 true))

(declare-fun lambda!383485 () Int)

(assert (=> bs!1812474 (not (= lambda!383485 lambda!383478))))

(assert (=> bs!1812475 (not (= lambda!383485 lambda!383369))))

(assert (=> bs!1812476 (= (and (= (reg!16947 r!7292) (reg!16947 (regTwo!33749 r!7292))) (= (Star!16618 (reg!16947 r!7292)) (regTwo!33749 r!7292))) (= lambda!383485 lambda!383469))))

(assert (=> bs!1812477 (not (= lambda!383485 lambda!383472))))

(assert (=> bs!1812478 (not (= lambda!383485 lambda!383322))))

(assert (=> bs!1812479 (= (and (= (reg!16947 r!7292) (reg!16947 (regTwo!33749 lt!2447563))) (= (Star!16618 (reg!16947 r!7292)) (regTwo!33749 lt!2447563))) (= lambda!383485 lambda!383477))))

(assert (=> bs!1812480 (not (= lambda!383485 lambda!383396))))

(assert (=> bs!1812481 (= (and (= (reg!16947 r!7292) (reg!16947 lt!2447563)) (= (Star!16618 (reg!16947 r!7292)) lt!2447563)) (= lambda!383485 lambda!383368))))

(assert (=> bs!1812480 (not (= lambda!383485 lambda!383397))))

(assert (=> bs!1812483 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383485 lambda!383373))))

(assert (=> bs!1812484 (= (and (= (reg!16947 r!7292) (reg!16947 (regOne!33749 lt!2447563))) (= (Star!16618 (reg!16947 r!7292)) (regOne!33749 lt!2447563))) (= lambda!383485 lambda!383471))))

(assert (=> bs!1812478 (= (= (Star!16618 (reg!16947 r!7292)) r!7292) (= lambda!383485 lambda!383321))))

(assert (=> bs!1812485 (not (= lambda!383485 lambda!383470))))

(assert (=> bs!1812486 (not (= lambda!383485 lambda!383463))))

(assert (=> bs!1812486 (not (= lambda!383485 lambda!383462))))

(assert (=> bs!1812487 (= lambda!383485 lambda!383404)))

(assert (=> bs!1812478 (not (= lambda!383485 lambda!383320))))

(declare-fun bs!1812489 () Bool)

(assert (= bs!1812489 d!2136789))

(assert (=> bs!1812489 (not (= lambda!383485 lambda!383484))))

(assert (=> bs!1812482 (not (= lambda!383485 lambda!383407))))

(assert (=> bs!1812488 (not (= lambda!383485 lambda!383374))))

(assert (=> bs!1812487 (not (= lambda!383485 lambda!383403))))

(assert (=> d!2136789 true))

(assert (=> d!2136789 true))

(assert (=> d!2136789 (= (Exists!3686 lambda!383484) (Exists!3686 lambda!383485))))

(assert (=> d!2136789 true))

(declare-fun _$91!815 () Unit!159927)

(assert (=> d!2136789 (= (choose!50667 (reg!16947 r!7292) s!2326) _$91!815)))

(declare-fun m!7546468 () Bool)

(assert (=> bs!1812489 m!7546468))

(declare-fun m!7546470 () Bool)

(assert (=> bs!1812489 m!7546470))

(assert (=> d!2136393 d!2136789))

(assert (=> d!2136393 d!2136607))

(declare-fun b!6799913 () Bool)

(declare-fun e!4103816 () (Set Context!12004))

(assert (=> b!6799913 (= e!4103816 (set.insert (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (as set.empty (Set Context!12004))))))

(declare-fun b!6799914 () Bool)

(declare-fun c!1264385 () Bool)

(declare-fun e!4103815 () Bool)

(assert (=> b!6799914 (= c!1264385 e!4103815)))

(declare-fun res!2778816 () Bool)

(assert (=> b!6799914 (=> (not res!2778816) (not e!4103815))))

(assert (=> b!6799914 (= res!2778816 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447547))))))

(declare-fun e!4103813 () (Set Context!12004))

(declare-fun e!4103812 () (Set Context!12004))

(assert (=> b!6799914 (= e!4103813 e!4103812)))

(declare-fun b!6799915 () Bool)

(assert (=> b!6799915 (= e!4103816 e!4103813)))

(declare-fun c!1264386 () Bool)

(assert (=> b!6799915 (= c!1264386 (is-Union!16618 (h!72477 (exprs!6502 lt!2447547))))))

(declare-fun b!6799916 () Bool)

(declare-fun e!4103814 () (Set Context!12004))

(declare-fun call!617840 () (Set Context!12004))

(assert (=> b!6799916 (= e!4103814 call!617840)))

(declare-fun c!1264388 () Bool)

(declare-fun call!617842 () List!66153)

(declare-fun bm!617834 () Bool)

(declare-fun call!617839 () (Set Context!12004))

(assert (=> bm!617834 (= call!617839 (derivationStepZipperDown!1846 (ite c!1264386 (regOne!33749 (h!72477 (exprs!6502 lt!2447547))) (ite c!1264385 (regTwo!33748 (h!72477 (exprs!6502 lt!2447547))) (ite c!1264388 (regOne!33748 (h!72477 (exprs!6502 lt!2447547))) (reg!16947 (h!72477 (exprs!6502 lt!2447547)))))) (ite (or c!1264386 c!1264385) (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (Context!12005 call!617842)) (h!72478 s!2326)))))

(declare-fun b!6799917 () Bool)

(declare-fun e!4103817 () (Set Context!12004))

(assert (=> b!6799917 (= e!4103817 call!617840)))

(declare-fun d!2136791 () Bool)

(declare-fun c!1264384 () Bool)

(assert (=> d!2136791 (= c!1264384 (and (is-ElementMatch!16618 (h!72477 (exprs!6502 lt!2447547))) (= (c!1263993 (h!72477 (exprs!6502 lt!2447547))) (h!72478 s!2326))))))

(assert (=> d!2136791 (= (derivationStepZipperDown!1846 (h!72477 (exprs!6502 lt!2447547)) (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (h!72478 s!2326)) e!4103816)))

(declare-fun bm!617835 () Bool)

(declare-fun call!617844 () List!66153)

(assert (=> bm!617835 (= call!617842 call!617844)))

(declare-fun call!617841 () (Set Context!12004))

(declare-fun bm!617836 () Bool)

(assert (=> bm!617836 (= call!617841 (derivationStepZipperDown!1846 (ite c!1264386 (regTwo!33749 (h!72477 (exprs!6502 lt!2447547))) (regOne!33748 (h!72477 (exprs!6502 lt!2447547)))) (ite c!1264386 (Context!12005 (t!379882 (exprs!6502 lt!2447547))) (Context!12005 call!617844)) (h!72478 s!2326)))))

(declare-fun b!6799918 () Bool)

(assert (=> b!6799918 (= e!4103812 e!4103817)))

(assert (=> b!6799918 (= c!1264388 (is-Concat!25463 (h!72477 (exprs!6502 lt!2447547))))))

(declare-fun b!6799919 () Bool)

(assert (=> b!6799919 (= e!4103813 (set.union call!617839 call!617841))))

(declare-fun bm!617837 () Bool)

(declare-fun call!617843 () (Set Context!12004))

(assert (=> bm!617837 (= call!617843 call!617839)))

(declare-fun bm!617838 () Bool)

(assert (=> bm!617838 (= call!617840 call!617843)))

(declare-fun b!6799920 () Bool)

(assert (=> b!6799920 (= e!4103815 (nullable!6597 (regOne!33748 (h!72477 (exprs!6502 lt!2447547)))))))

(declare-fun bm!617839 () Bool)

(assert (=> bm!617839 (= call!617844 ($colon$colon!2427 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447547)))) (ite (or c!1264385 c!1264388) (regTwo!33748 (h!72477 (exprs!6502 lt!2447547))) (h!72477 (exprs!6502 lt!2447547)))))))

(declare-fun b!6799921 () Bool)

(declare-fun c!1264387 () Bool)

(assert (=> b!6799921 (= c!1264387 (is-Star!16618 (h!72477 (exprs!6502 lt!2447547))))))

(assert (=> b!6799921 (= e!4103817 e!4103814)))

(declare-fun b!6799922 () Bool)

(assert (=> b!6799922 (= e!4103814 (as set.empty (Set Context!12004)))))

(declare-fun b!6799923 () Bool)

(assert (=> b!6799923 (= e!4103812 (set.union call!617841 call!617843))))

(assert (= (and d!2136791 c!1264384) b!6799913))

(assert (= (and d!2136791 (not c!1264384)) b!6799915))

(assert (= (and b!6799915 c!1264386) b!6799919))

(assert (= (and b!6799915 (not c!1264386)) b!6799914))

(assert (= (and b!6799914 res!2778816) b!6799920))

(assert (= (and b!6799914 c!1264385) b!6799923))

(assert (= (and b!6799914 (not c!1264385)) b!6799918))

(assert (= (and b!6799918 c!1264388) b!6799917))

(assert (= (and b!6799918 (not c!1264388)) b!6799921))

(assert (= (and b!6799921 c!1264387) b!6799916))

(assert (= (and b!6799921 (not c!1264387)) b!6799922))

(assert (= (or b!6799917 b!6799916) bm!617835))

(assert (= (or b!6799917 b!6799916) bm!617838))

(assert (= (or b!6799923 bm!617835) bm!617839))

(assert (= (or b!6799923 bm!617838) bm!617837))

(assert (= (or b!6799919 b!6799923) bm!617836))

(assert (= (or b!6799919 bm!617837) bm!617834))

(declare-fun m!7546472 () Bool)

(assert (=> bm!617836 m!7546472))

(declare-fun m!7546474 () Bool)

(assert (=> b!6799913 m!7546474))

(declare-fun m!7546476 () Bool)

(assert (=> b!6799920 m!7546476))

(declare-fun m!7546478 () Bool)

(assert (=> bm!617839 m!7546478))

(declare-fun m!7546480 () Bool)

(assert (=> bm!617834 m!7546480))

(assert (=> bm!617703 d!2136791))

(declare-fun d!2136793 () Bool)

(assert (=> d!2136793 (= (nullable!6597 (regOne!33748 r!7292)) (nullableFct!2501 (regOne!33748 r!7292)))))

(declare-fun bs!1812490 () Bool)

(assert (= bs!1812490 d!2136793))

(declare-fun m!7546482 () Bool)

(assert (=> bs!1812490 m!7546482))

(assert (=> b!6798649 d!2136793))

(declare-fun b!6799924 () Bool)

(declare-fun call!617845 () (Set Context!12004))

(declare-fun e!4103819 () (Set Context!12004))

(assert (=> b!6799924 (= e!4103819 (set.union call!617845 (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568)))))) (h!72478 s!2326))))))

(declare-fun b!6799925 () Bool)

(declare-fun e!4103818 () (Set Context!12004))

(assert (=> b!6799925 (= e!4103819 e!4103818)))

(declare-fun c!1264390 () Bool)

(assert (=> b!6799925 (= c!1264390 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568))))))))

(declare-fun b!6799926 () Bool)

(assert (=> b!6799926 (= e!4103818 call!617845)))

(declare-fun b!6799927 () Bool)

(assert (=> b!6799927 (= e!4103818 (as set.empty (Set Context!12004)))))

(declare-fun b!6799928 () Bool)

(declare-fun e!4103820 () Bool)

(assert (=> b!6799928 (= e!4103820 (nullable!6597 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568)))))))))

(declare-fun d!2136795 () Bool)

(declare-fun c!1264389 () Bool)

(assert (=> d!2136795 (= c!1264389 e!4103820)))

(declare-fun res!2778817 () Bool)

(assert (=> d!2136795 (=> (not res!2778817) (not e!4103820))))

(assert (=> d!2136795 (= res!2778817 (is-Cons!66029 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568))))))))

(assert (=> d!2136795 (= (derivationStepZipperUp!1772 (Context!12005 (t!379882 (exprs!6502 lt!2447568))) (h!72478 s!2326)) e!4103819)))

(declare-fun bm!617840 () Bool)

(assert (=> bm!617840 (= call!617845 (derivationStepZipperDown!1846 (h!72477 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568))))) (Context!12005 (t!379882 (exprs!6502 (Context!12005 (t!379882 (exprs!6502 lt!2447568)))))) (h!72478 s!2326)))))

(assert (= (and d!2136795 res!2778817) b!6799928))

(assert (= (and d!2136795 c!1264389) b!6799924))

(assert (= (and d!2136795 (not c!1264389)) b!6799925))

(assert (= (and b!6799925 c!1264390) b!6799926))

(assert (= (and b!6799925 (not c!1264390)) b!6799927))

(assert (= (or b!6799924 b!6799926) bm!617840))

(declare-fun m!7546484 () Bool)

(assert (=> b!6799924 m!7546484))

(declare-fun m!7546486 () Bool)

(assert (=> b!6799928 m!7546486))

(declare-fun m!7546488 () Bool)

(assert (=> bm!617840 m!7546488))

(assert (=> b!6799025 d!2136795))

(declare-fun d!2136797 () Bool)

(assert (=> d!2136797 (= (isUnion!1414 lt!2447696) (is-Union!16618 lt!2447696))))

(assert (=> b!6798893 d!2136797))

(assert (=> d!2136409 d!2136381))

(declare-fun bs!1812491 () Bool)

(declare-fun d!2136799 () Bool)

(assert (= bs!1812491 (and d!2136799 b!6799822)))

(declare-fun lambda!383488 () Int)

(assert (=> bs!1812491 (not (= lambda!383488 lambda!383478))))

(declare-fun bs!1812492 () Bool)

(assert (= bs!1812492 (and d!2136799 b!6798731)))

(assert (=> bs!1812492 (not (= lambda!383488 lambda!383369))))

(declare-fun bs!1812493 () Bool)

(assert (= bs!1812493 (and d!2136799 b!6799598)))

(assert (=> bs!1812493 (not (= lambda!383488 lambda!383469))))

(declare-fun bs!1812494 () Bool)

(assert (= bs!1812494 (and d!2136799 b!6799725)))

(assert (=> bs!1812494 (not (= lambda!383488 lambda!383472))))

(declare-fun bs!1812495 () Bool)

(assert (= bs!1812495 (and d!2136799 b!6798444)))

(assert (=> bs!1812495 (not (= lambda!383488 lambda!383322))))

(declare-fun bs!1812496 () Bool)

(assert (= bs!1812496 (and d!2136799 d!2136789)))

(assert (=> bs!1812496 (not (= lambda!383488 lambda!383485))))

(declare-fun bs!1812497 () Bool)

(assert (= bs!1812497 (and d!2136799 b!6799825)))

(assert (=> bs!1812497 (not (= lambda!383488 lambda!383477))))

(declare-fun bs!1812498 () Bool)

(assert (= bs!1812498 (and d!2136799 d!2136383)))

(assert (=> bs!1812498 (= lambda!383488 lambda!383396)))

(declare-fun bs!1812499 () Bool)

(assert (= bs!1812499 (and d!2136799 b!6798734)))

(assert (=> bs!1812499 (not (= lambda!383488 lambda!383368))))

(assert (=> bs!1812498 (not (= lambda!383488 lambda!383397))))

(declare-fun bs!1812500 () Bool)

(assert (= bs!1812500 (and d!2136799 b!6798797)))

(assert (=> bs!1812500 (not (= lambda!383488 lambda!383373))))

(declare-fun bs!1812501 () Bool)

(assert (= bs!1812501 (and d!2136799 b!6799728)))

(assert (=> bs!1812501 (not (= lambda!383488 lambda!383471))))

(assert (=> bs!1812495 (not (= lambda!383488 lambda!383321))))

(declare-fun bs!1812502 () Bool)

(assert (= bs!1812502 (and d!2136799 b!6799595)))

(assert (=> bs!1812502 (not (= lambda!383488 lambda!383470))))

(declare-fun bs!1812503 () Bool)

(assert (= bs!1812503 (and d!2136799 d!2136605)))

(assert (=> bs!1812503 (not (= lambda!383488 lambda!383463))))

(assert (=> bs!1812503 (= lambda!383488 lambda!383462)))

(declare-fun bs!1812504 () Bool)

(assert (= bs!1812504 (and d!2136799 d!2136393)))

(assert (=> bs!1812504 (not (= lambda!383488 lambda!383404))))

(assert (=> bs!1812495 (= lambda!383488 lambda!383320)))

(assert (=> bs!1812496 (= (= r!7292 (Star!16618 (reg!16947 r!7292))) (= lambda!383488 lambda!383484))))

(declare-fun bs!1812505 () Bool)

(assert (= bs!1812505 (and d!2136799 d!2136409)))

(assert (=> bs!1812505 (= lambda!383488 lambda!383407)))

(declare-fun bs!1812506 () Bool)

(assert (= bs!1812506 (and d!2136799 b!6798794)))

(assert (=> bs!1812506 (not (= lambda!383488 lambda!383374))))

(assert (=> bs!1812504 (= (= r!7292 (Star!16618 (reg!16947 r!7292))) (= lambda!383488 lambda!383403))))

(assert (=> d!2136799 true))

(assert (=> d!2136799 true))

(assert (=> d!2136799 true))

(assert (=> d!2136799 (= (isDefined!13208 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 Nil!66030 s!2326 s!2326)) (Exists!3686 lambda!383488))))

(assert (=> d!2136799 true))

(declare-fun _$89!3073 () Unit!159927)

(assert (=> d!2136799 (= (choose!50668 (reg!16947 r!7292) r!7292 s!2326) _$89!3073)))

(declare-fun bs!1812507 () Bool)

(assert (= bs!1812507 d!2136799))

(assert (=> bs!1812507 m!7545132))

(assert (=> bs!1812507 m!7545132))

(assert (=> bs!1812507 m!7545136))

(declare-fun m!7546490 () Bool)

(assert (=> bs!1812507 m!7546490))

(assert (=> d!2136409 d!2136799))

(declare-fun d!2136801 () Bool)

(assert (=> d!2136801 (= (Exists!3686 lambda!383407) (choose!50665 lambda!383407))))

(declare-fun bs!1812508 () Bool)

(assert (= bs!1812508 d!2136801))

(declare-fun m!7546492 () Bool)

(assert (=> bs!1812508 m!7546492))

(assert (=> d!2136409 d!2136801))

(assert (=> d!2136409 d!2136407))

(assert (=> d!2136409 d!2136607))

(declare-fun bs!1812509 () Bool)

(declare-fun d!2136803 () Bool)

(assert (= bs!1812509 (and d!2136803 d!2136567)))

(declare-fun lambda!383489 () Int)

(assert (=> bs!1812509 (= lambda!383489 lambda!383452)))

(declare-fun bs!1812510 () Bool)

(assert (= bs!1812510 (and d!2136803 d!2136569)))

(assert (=> bs!1812510 (= lambda!383489 lambda!383453)))

(declare-fun bs!1812511 () Bool)

(assert (= bs!1812511 (and d!2136803 d!2136761)))

(assert (=> bs!1812511 (= lambda!383489 lambda!383479)))

(assert (=> d!2136803 (= (nullableZipper!2325 lt!2447560) (exists!2738 lt!2447560 lambda!383489))))

(declare-fun bs!1812512 () Bool)

(assert (= bs!1812512 d!2136803))

(declare-fun m!7546494 () Bool)

(assert (=> bs!1812512 m!7546494))

(assert (=> b!6798614 d!2136803))

(declare-fun bs!1812513 () Bool)

(declare-fun b!6799937 () Bool)

(assert (= bs!1812513 (and b!6799937 b!6799822)))

(declare-fun lambda!383490 () Int)

(assert (=> bs!1812513 (not (= lambda!383490 lambda!383478))))

(declare-fun bs!1812514 () Bool)

(assert (= bs!1812514 (and b!6799937 b!6798731)))

(assert (=> bs!1812514 (not (= lambda!383490 lambda!383369))))

(declare-fun bs!1812515 () Bool)

(assert (= bs!1812515 (and b!6799937 b!6799598)))

(assert (=> bs!1812515 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 (regTwo!33749 r!7292))) (= (regOne!33749 r!7292) (regTwo!33749 r!7292))) (= lambda!383490 lambda!383469))))

(declare-fun bs!1812516 () Bool)

(assert (= bs!1812516 (and b!6799937 b!6799725)))

(assert (=> bs!1812516 (not (= lambda!383490 lambda!383472))))

(declare-fun bs!1812517 () Bool)

(assert (= bs!1812517 (and b!6799937 d!2136789)))

(assert (=> bs!1812517 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regOne!33749 r!7292) (Star!16618 (reg!16947 r!7292)))) (= lambda!383490 lambda!383485))))

(declare-fun bs!1812518 () Bool)

(assert (= bs!1812518 (and b!6799937 b!6799825)))

(assert (=> bs!1812518 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 (regTwo!33749 lt!2447563))) (= (regOne!33749 r!7292) (regTwo!33749 lt!2447563))) (= lambda!383490 lambda!383477))))

(declare-fun bs!1812519 () Bool)

(assert (= bs!1812519 (and b!6799937 d!2136383)))

(assert (=> bs!1812519 (not (= lambda!383490 lambda!383396))))

(declare-fun bs!1812520 () Bool)

(assert (= bs!1812520 (and b!6799937 b!6798734)))

(assert (=> bs!1812520 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 lt!2447563)) (= (regOne!33749 r!7292) lt!2447563)) (= lambda!383490 lambda!383368))))

(assert (=> bs!1812519 (not (= lambda!383490 lambda!383397))))

(declare-fun bs!1812521 () Bool)

(assert (= bs!1812521 (and b!6799937 b!6798797)))

(assert (=> bs!1812521 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regOne!33749 r!7292) r!7292)) (= lambda!383490 lambda!383373))))

(declare-fun bs!1812522 () Bool)

(assert (= bs!1812522 (and b!6799937 b!6799728)))

(assert (=> bs!1812522 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 (regOne!33749 lt!2447563))) (= (regOne!33749 r!7292) (regOne!33749 lt!2447563))) (= lambda!383490 lambda!383471))))

(declare-fun bs!1812523 () Bool)

(assert (= bs!1812523 (and b!6799937 b!6798444)))

(assert (=> bs!1812523 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regOne!33749 r!7292) r!7292)) (= lambda!383490 lambda!383321))))

(declare-fun bs!1812524 () Bool)

(assert (= bs!1812524 (and b!6799937 b!6799595)))

(assert (=> bs!1812524 (not (= lambda!383490 lambda!383470))))

(assert (=> bs!1812523 (not (= lambda!383490 lambda!383322))))

(declare-fun bs!1812525 () Bool)

(assert (= bs!1812525 (and b!6799937 d!2136799)))

(assert (=> bs!1812525 (not (= lambda!383490 lambda!383488))))

(declare-fun bs!1812526 () Bool)

(assert (= bs!1812526 (and b!6799937 d!2136605)))

(assert (=> bs!1812526 (not (= lambda!383490 lambda!383463))))

(assert (=> bs!1812526 (not (= lambda!383490 lambda!383462))))

(declare-fun bs!1812527 () Bool)

(assert (= bs!1812527 (and b!6799937 d!2136393)))

(assert (=> bs!1812527 (= (and (= (reg!16947 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regOne!33749 r!7292) (Star!16618 (reg!16947 r!7292)))) (= lambda!383490 lambda!383404))))

(assert (=> bs!1812523 (not (= lambda!383490 lambda!383320))))

(assert (=> bs!1812517 (not (= lambda!383490 lambda!383484))))

(declare-fun bs!1812528 () Bool)

(assert (= bs!1812528 (and b!6799937 d!2136409)))

(assert (=> bs!1812528 (not (= lambda!383490 lambda!383407))))

(declare-fun bs!1812529 () Bool)

(assert (= bs!1812529 (and b!6799937 b!6798794)))

(assert (=> bs!1812529 (not (= lambda!383490 lambda!383374))))

(assert (=> bs!1812527 (not (= lambda!383490 lambda!383403))))

(assert (=> b!6799937 true))

(assert (=> b!6799937 true))

(declare-fun bs!1812530 () Bool)

(declare-fun b!6799934 () Bool)

(assert (= bs!1812530 (and b!6799934 b!6799822)))

(declare-fun lambda!383491 () Int)

(assert (=> bs!1812530 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (regOne!33748 (regTwo!33749 lt!2447563))) (= (regTwo!33748 (regOne!33749 r!7292)) (regTwo!33748 (regTwo!33749 lt!2447563)))) (= lambda!383491 lambda!383478))))

(declare-fun bs!1812531 () Bool)

(assert (= bs!1812531 (and b!6799934 b!6798731)))

(assert (=> bs!1812531 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (regOne!33748 lt!2447563)) (= (regTwo!33748 (regOne!33749 r!7292)) (regTwo!33748 lt!2447563))) (= lambda!383491 lambda!383369))))

(declare-fun bs!1812532 () Bool)

(assert (= bs!1812532 (and b!6799934 b!6799598)))

(assert (=> bs!1812532 (not (= lambda!383491 lambda!383469))))

(declare-fun bs!1812533 () Bool)

(assert (= bs!1812533 (and b!6799934 b!6799725)))

(assert (=> bs!1812533 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (regOne!33748 (regOne!33749 lt!2447563))) (= (regTwo!33748 (regOne!33749 r!7292)) (regTwo!33748 (regOne!33749 lt!2447563)))) (= lambda!383491 lambda!383472))))

(declare-fun bs!1812534 () Bool)

(assert (= bs!1812534 (and b!6799934 d!2136789)))

(assert (=> bs!1812534 (not (= lambda!383491 lambda!383485))))

(declare-fun bs!1812535 () Bool)

(assert (= bs!1812535 (and b!6799934 b!6799825)))

(assert (=> bs!1812535 (not (= lambda!383491 lambda!383477))))

(declare-fun bs!1812536 () Bool)

(assert (= bs!1812536 (and b!6799934 d!2136383)))

(assert (=> bs!1812536 (not (= lambda!383491 lambda!383396))))

(declare-fun bs!1812537 () Bool)

(assert (= bs!1812537 (and b!6799934 b!6798734)))

(assert (=> bs!1812537 (not (= lambda!383491 lambda!383368))))

(assert (=> bs!1812536 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 r!7292)) r!7292)) (= lambda!383491 lambda!383397))))

(declare-fun bs!1812538 () Bool)

(assert (= bs!1812538 (and b!6799934 b!6799937)))

(assert (=> bs!1812538 (not (= lambda!383491 lambda!383490))))

(declare-fun bs!1812539 () Bool)

(assert (= bs!1812539 (and b!6799934 b!6798797)))

(assert (=> bs!1812539 (not (= lambda!383491 lambda!383373))))

(declare-fun bs!1812540 () Bool)

(assert (= bs!1812540 (and b!6799934 b!6799728)))

(assert (=> bs!1812540 (not (= lambda!383491 lambda!383471))))

(declare-fun bs!1812541 () Bool)

(assert (= bs!1812541 (and b!6799934 b!6798444)))

(assert (=> bs!1812541 (not (= lambda!383491 lambda!383321))))

(declare-fun bs!1812542 () Bool)

(assert (= bs!1812542 (and b!6799934 b!6799595)))

(assert (=> bs!1812542 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (regOne!33748 (regTwo!33749 r!7292))) (= (regTwo!33748 (regOne!33749 r!7292)) (regTwo!33748 (regTwo!33749 r!7292)))) (= lambda!383491 lambda!383470))))

(assert (=> bs!1812541 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 r!7292)) r!7292)) (= lambda!383491 lambda!383322))))

(declare-fun bs!1812543 () Bool)

(assert (= bs!1812543 (and b!6799934 d!2136799)))

(assert (=> bs!1812543 (not (= lambda!383491 lambda!383488))))

(declare-fun bs!1812544 () Bool)

(assert (= bs!1812544 (and b!6799934 d!2136605)))

(assert (=> bs!1812544 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (reg!16947 r!7292)) (= (regTwo!33748 (regOne!33749 r!7292)) r!7292)) (= lambda!383491 lambda!383463))))

(assert (=> bs!1812544 (not (= lambda!383491 lambda!383462))))

(declare-fun bs!1812545 () Bool)

(assert (= bs!1812545 (and b!6799934 d!2136393)))

(assert (=> bs!1812545 (not (= lambda!383491 lambda!383404))))

(assert (=> bs!1812541 (not (= lambda!383491 lambda!383320))))

(assert (=> bs!1812534 (not (= lambda!383491 lambda!383484))))

(declare-fun bs!1812546 () Bool)

(assert (= bs!1812546 (and b!6799934 d!2136409)))

(assert (=> bs!1812546 (not (= lambda!383491 lambda!383407))))

(declare-fun bs!1812547 () Bool)

(assert (= bs!1812547 (and b!6799934 b!6798794)))

(assert (=> bs!1812547 (= (and (= (regOne!33748 (regOne!33749 r!7292)) (regOne!33748 r!7292)) (= (regTwo!33748 (regOne!33749 r!7292)) (regTwo!33748 r!7292))) (= lambda!383491 lambda!383374))))

(assert (=> bs!1812545 (not (= lambda!383491 lambda!383403))))

(assert (=> b!6799934 true))

(assert (=> b!6799934 true))

(declare-fun b!6799933 () Bool)

(declare-fun e!4103829 () Bool)

(declare-fun e!4103825 () Bool)

(assert (=> b!6799933 (= e!4103829 e!4103825)))

(declare-fun res!2778822 () Bool)

(assert (=> b!6799933 (= res!2778822 (not (is-EmptyLang!16618 (regOne!33749 r!7292))))))

(assert (=> b!6799933 (=> (not res!2778822) (not e!4103825))))

(declare-fun e!4103823 () Bool)

(declare-fun call!617846 () Bool)

(assert (=> b!6799934 (= e!4103823 call!617846)))

(declare-fun b!6799935 () Bool)

(declare-fun e!4103827 () Bool)

(assert (=> b!6799935 (= e!4103827 (matchRSpec!3719 (regTwo!33749 (regOne!33749 r!7292)) s!2326))))

(declare-fun b!6799936 () Bool)

(declare-fun call!617847 () Bool)

(assert (=> b!6799936 (= e!4103829 call!617847)))

(declare-fun e!4103824 () Bool)

(assert (=> b!6799937 (= e!4103824 call!617846)))

(declare-fun b!6799938 () Bool)

(declare-fun e!4103828 () Bool)

(assert (=> b!6799938 (= e!4103828 e!4103827)))

(declare-fun res!2778823 () Bool)

(assert (=> b!6799938 (= res!2778823 (matchRSpec!3719 (regOne!33749 (regOne!33749 r!7292)) s!2326))))

(assert (=> b!6799938 (=> res!2778823 e!4103827)))

(declare-fun b!6799939 () Bool)

(declare-fun e!4103826 () Bool)

(assert (=> b!6799939 (= e!4103826 (= s!2326 (Cons!66030 (c!1263993 (regOne!33749 r!7292)) Nil!66030)))))

(declare-fun b!6799940 () Bool)

(declare-fun c!1264391 () Bool)

(assert (=> b!6799940 (= c!1264391 (is-Union!16618 (regOne!33749 r!7292)))))

(assert (=> b!6799940 (= e!4103826 e!4103828)))

(declare-fun bm!617841 () Bool)

(assert (=> bm!617841 (= call!617847 (isEmpty!38407 s!2326))))

(declare-fun b!6799941 () Bool)

(declare-fun c!1264393 () Bool)

(assert (=> b!6799941 (= c!1264393 (is-ElementMatch!16618 (regOne!33749 r!7292)))))

(assert (=> b!6799941 (= e!4103825 e!4103826)))

(declare-fun d!2136805 () Bool)

(declare-fun c!1264392 () Bool)

(assert (=> d!2136805 (= c!1264392 (is-EmptyExpr!16618 (regOne!33749 r!7292)))))

(assert (=> d!2136805 (= (matchRSpec!3719 (regOne!33749 r!7292) s!2326) e!4103829)))

(declare-fun b!6799942 () Bool)

(assert (=> b!6799942 (= e!4103828 e!4103823)))

(declare-fun c!1264394 () Bool)

(assert (=> b!6799942 (= c!1264394 (is-Star!16618 (regOne!33749 r!7292)))))

(declare-fun bm!617842 () Bool)

(assert (=> bm!617842 (= call!617846 (Exists!3686 (ite c!1264394 lambda!383490 lambda!383491)))))

(declare-fun b!6799943 () Bool)

(declare-fun res!2778824 () Bool)

(assert (=> b!6799943 (=> res!2778824 e!4103824)))

(assert (=> b!6799943 (= res!2778824 call!617847)))

(assert (=> b!6799943 (= e!4103823 e!4103824)))

(assert (= (and d!2136805 c!1264392) b!6799936))

(assert (= (and d!2136805 (not c!1264392)) b!6799933))

(assert (= (and b!6799933 res!2778822) b!6799941))

(assert (= (and b!6799941 c!1264393) b!6799939))

(assert (= (and b!6799941 (not c!1264393)) b!6799940))

(assert (= (and b!6799940 c!1264391) b!6799938))

(assert (= (and b!6799940 (not c!1264391)) b!6799942))

(assert (= (and b!6799938 (not res!2778823)) b!6799935))

(assert (= (and b!6799942 c!1264394) b!6799943))

(assert (= (and b!6799942 (not c!1264394)) b!6799934))

(assert (= (and b!6799943 (not res!2778824)) b!6799937))

(assert (= (or b!6799937 b!6799934) bm!617842))

(assert (= (or b!6799936 b!6799943) bm!617841))

(declare-fun m!7546496 () Bool)

(assert (=> b!6799935 m!7546496))

(declare-fun m!7546498 () Bool)

(assert (=> b!6799938 m!7546498))

(assert (=> bm!617841 m!7545124))

(declare-fun m!7546500 () Bool)

(assert (=> bm!617842 m!7546500))

(assert (=> b!6798798 d!2136805))

(declare-fun b!6799947 () Bool)

(declare-fun e!4103830 () Bool)

(declare-fun lt!2447815 () List!66154)

(assert (=> b!6799947 (= e!4103830 (or (not (= (t!379883 s!2326) Nil!66030)) (= lt!2447815 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)))))))

(declare-fun b!6799945 () Bool)

(declare-fun e!4103831 () List!66154)

(assert (=> b!6799945 (= e!4103831 (Cons!66030 (h!72478 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))) (++!14784 (t!379883 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))) (t!379883 s!2326))))))

(declare-fun d!2136807 () Bool)

(assert (=> d!2136807 e!4103830))

(declare-fun res!2778825 () Bool)

(assert (=> d!2136807 (=> (not res!2778825) (not e!4103830))))

(assert (=> d!2136807 (= res!2778825 (= (content!12894 lt!2447815) (set.union (content!12894 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))) (content!12894 (t!379883 s!2326)))))))

(assert (=> d!2136807 (= lt!2447815 e!4103831)))

(declare-fun c!1264395 () Bool)

(assert (=> d!2136807 (= c!1264395 (is-Nil!66030 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))))))

(assert (=> d!2136807 (= (++!14784 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326)) lt!2447815)))

(declare-fun b!6799944 () Bool)

(assert (=> b!6799944 (= e!4103831 (t!379883 s!2326))))

(declare-fun b!6799946 () Bool)

(declare-fun res!2778826 () Bool)

(assert (=> b!6799946 (=> (not res!2778826) (not e!4103830))))

(assert (=> b!6799946 (= res!2778826 (= (size!40662 lt!2447815) (+ (size!40662 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))) (size!40662 (t!379883 s!2326)))))))

(assert (= (and d!2136807 c!1264395) b!6799944))

(assert (= (and d!2136807 (not c!1264395)) b!6799945))

(assert (= (and d!2136807 res!2778825) b!6799946))

(assert (= (and b!6799946 res!2778826) b!6799947))

(declare-fun m!7546502 () Bool)

(assert (=> b!6799945 m!7546502))

(declare-fun m!7546504 () Bool)

(assert (=> d!2136807 m!7546504))

(assert (=> d!2136807 m!7545594))

(declare-fun m!7546506 () Bool)

(assert (=> d!2136807 m!7546506))

(declare-fun m!7546508 () Bool)

(assert (=> d!2136807 m!7546508))

(declare-fun m!7546510 () Bool)

(assert (=> b!6799946 m!7546510))

(assert (=> b!6799946 m!7545594))

(declare-fun m!7546512 () Bool)

(assert (=> b!6799946 m!7546512))

(declare-fun m!7546514 () Bool)

(assert (=> b!6799946 m!7546514))

(assert (=> b!6798980 d!2136807))

(declare-fun b!6799951 () Bool)

(declare-fun e!4103832 () Bool)

(declare-fun lt!2447816 () List!66154)

(assert (=> b!6799951 (= e!4103832 (or (not (= (Cons!66030 (h!72478 s!2326) Nil!66030) Nil!66030)) (= lt!2447816 Nil!66030)))))

(declare-fun b!6799949 () Bool)

(declare-fun e!4103833 () List!66154)

(assert (=> b!6799949 (= e!4103833 (Cons!66030 (h!72478 Nil!66030) (++!14784 (t!379883 Nil!66030) (Cons!66030 (h!72478 s!2326) Nil!66030))))))

(declare-fun d!2136809 () Bool)

(assert (=> d!2136809 e!4103832))

(declare-fun res!2778827 () Bool)

(assert (=> d!2136809 (=> (not res!2778827) (not e!4103832))))

(assert (=> d!2136809 (= res!2778827 (= (content!12894 lt!2447816) (set.union (content!12894 Nil!66030) (content!12894 (Cons!66030 (h!72478 s!2326) Nil!66030)))))))

(assert (=> d!2136809 (= lt!2447816 e!4103833)))

(declare-fun c!1264396 () Bool)

(assert (=> d!2136809 (= c!1264396 (is-Nil!66030 Nil!66030))))

(assert (=> d!2136809 (= (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) lt!2447816)))

(declare-fun b!6799948 () Bool)

(assert (=> b!6799948 (= e!4103833 (Cons!66030 (h!72478 s!2326) Nil!66030))))

(declare-fun b!6799950 () Bool)

(declare-fun res!2778828 () Bool)

(assert (=> b!6799950 (=> (not res!2778828) (not e!4103832))))

(assert (=> b!6799950 (= res!2778828 (= (size!40662 lt!2447816) (+ (size!40662 Nil!66030) (size!40662 (Cons!66030 (h!72478 s!2326) Nil!66030)))))))

(assert (= (and d!2136809 c!1264396) b!6799948))

(assert (= (and d!2136809 (not c!1264396)) b!6799949))

(assert (= (and d!2136809 res!2778827) b!6799950))

(assert (= (and b!6799950 res!2778828) b!6799951))

(declare-fun m!7546516 () Bool)

(assert (=> b!6799949 m!7546516))

(declare-fun m!7546518 () Bool)

(assert (=> d!2136809 m!7546518))

(declare-fun m!7546520 () Bool)

(assert (=> d!2136809 m!7546520))

(declare-fun m!7546522 () Bool)

(assert (=> d!2136809 m!7546522))

(declare-fun m!7546524 () Bool)

(assert (=> b!6799950 m!7546524))

(declare-fun m!7546526 () Bool)

(assert (=> b!6799950 m!7546526))

(declare-fun m!7546528 () Bool)

(assert (=> b!6799950 m!7546528))

(assert (=> b!6798980 d!2136809))

(declare-fun d!2136811 () Bool)

(assert (=> d!2136811 (= (++!14784 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326)) s!2326)))

(declare-fun lt!2447819 () Unit!159927)

(declare-fun choose!50682 (List!66154 C!33506 List!66154 List!66154) Unit!159927)

(assert (=> d!2136811 (= lt!2447819 (choose!50682 Nil!66030 (h!72478 s!2326) (t!379883 s!2326) s!2326))))

(assert (=> d!2136811 (= (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) (t!379883 s!2326))) s!2326)))

(assert (=> d!2136811 (= (lemmaMoveElementToOtherListKeepsConcatEq!2739 Nil!66030 (h!72478 s!2326) (t!379883 s!2326) s!2326) lt!2447819)))

(declare-fun bs!1812548 () Bool)

(assert (= bs!1812548 d!2136811))

(assert (=> bs!1812548 m!7545594))

(assert (=> bs!1812548 m!7545594))

(assert (=> bs!1812548 m!7545596))

(declare-fun m!7546530 () Bool)

(assert (=> bs!1812548 m!7546530))

(declare-fun m!7546532 () Bool)

(assert (=> bs!1812548 m!7546532))

(assert (=> b!6798980 d!2136811))

(declare-fun d!2136813 () Bool)

(declare-fun e!4103834 () Bool)

(assert (=> d!2136813 e!4103834))

(declare-fun res!2778831 () Bool)

(assert (=> d!2136813 (=> res!2778831 e!4103834)))

(declare-fun e!4103838 () Bool)

(assert (=> d!2136813 (= res!2778831 e!4103838)))

(declare-fun res!2778830 () Bool)

(assert (=> d!2136813 (=> (not res!2778830) (not e!4103838))))

(declare-fun lt!2447822 () Option!16505)

(assert (=> d!2136813 (= res!2778830 (isDefined!13208 lt!2447822))))

(declare-fun e!4103837 () Option!16505)

(assert (=> d!2136813 (= lt!2447822 e!4103837)))

(declare-fun c!1264398 () Bool)

(declare-fun e!4103835 () Bool)

(assert (=> d!2136813 (= c!1264398 e!4103835)))

(declare-fun res!2778832 () Bool)

(assert (=> d!2136813 (=> (not res!2778832) (not e!4103835))))

(assert (=> d!2136813 (= res!2778832 (matchR!8801 (reg!16947 r!7292) (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030))))))

(assert (=> d!2136813 (validRegex!8354 (reg!16947 r!7292))))

(assert (=> d!2136813 (= (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326) s!2326) lt!2447822)))

(declare-fun b!6799952 () Bool)

(assert (=> b!6799952 (= e!4103838 (= (++!14784 (_1!36896 (get!22997 lt!2447822)) (_2!36896 (get!22997 lt!2447822))) s!2326))))

(declare-fun b!6799953 () Bool)

(assert (=> b!6799953 (= e!4103837 (Some!16504 (tuple2!67187 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (t!379883 s!2326))))))

(declare-fun b!6799954 () Bool)

(declare-fun lt!2447821 () Unit!159927)

(declare-fun lt!2447820 () Unit!159927)

(assert (=> b!6799954 (= lt!2447821 lt!2447820)))

(assert (=> b!6799954 (= (++!14784 (++!14784 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (Cons!66030 (h!72478 (t!379883 s!2326)) Nil!66030)) (t!379883 (t!379883 s!2326))) s!2326)))

(assert (=> b!6799954 (= lt!2447820 (lemmaMoveElementToOtherListKeepsConcatEq!2739 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (h!72478 (t!379883 s!2326)) (t!379883 (t!379883 s!2326)) s!2326))))

(declare-fun e!4103836 () Option!16505)

(assert (=> b!6799954 (= e!4103836 (findConcatSeparation!2919 (reg!16947 r!7292) r!7292 (++!14784 (++!14784 Nil!66030 (Cons!66030 (h!72478 s!2326) Nil!66030)) (Cons!66030 (h!72478 (t!379883 s!2326)) Nil!66030)) (t!379883 (t!379883 s!2326)) s!2326))))

(declare-fun b!6799955 () Bool)

(assert (=> b!6799955 (= e!4103835 (matchR!8801 r!7292 (t!379883 s!2326)))))

(declare-fun b!6799956 () Bool)

(declare-fun res!2778833 () Bool)

(assert (=> b!6799956 (=> (not res!2778833) (not e!4103838))))

(assert (=> b!6799956 (= res!2778833 (matchR!8801 r!7292 (_2!36896 (get!22997 lt!2447822))))))

(declare-fun b!6799957 () Bool)

(declare-fun res!2778829 () Bool)

(assert (=> b!6799957 (=> (not res!2778829) (not e!4103838))))

(assert (=> b!6799957 (= res!2778829 (matchR!8801 (reg!16947 r!7292) (_1!36896 (get!22997 lt!2447822))))))

(declare-fun b!6799958 () Bool)

(assert (=> b!6799958 (= e!4103837 e!4103836)))

(declare-fun c!1264397 () Bool)

(assert (=> b!6799958 (= c!1264397 (is-Nil!66030 (t!379883 s!2326)))))

(declare-fun b!6799959 () Bool)

(assert (=> b!6799959 (= e!4103836 None!16504)))

(declare-fun b!6799960 () Bool)

(assert (=> b!6799960 (= e!4103834 (not (isDefined!13208 lt!2447822)))))

(assert (= (and d!2136813 res!2778832) b!6799955))

(assert (= (and d!2136813 c!1264398) b!6799953))

(assert (= (and d!2136813 (not c!1264398)) b!6799958))

(assert (= (and b!6799958 c!1264397) b!6799959))

(assert (= (and b!6799958 (not c!1264397)) b!6799954))

(assert (= (and d!2136813 res!2778830) b!6799957))

(assert (= (and b!6799957 res!2778829) b!6799956))

(assert (= (and b!6799956 res!2778833) b!6799952))

(assert (= (and d!2136813 (not res!2778831)) b!6799960))

(declare-fun m!7546534 () Bool)

(assert (=> b!6799952 m!7546534))

(declare-fun m!7546536 () Bool)

(assert (=> b!6799952 m!7546536))

(declare-fun m!7546538 () Bool)

(assert (=> b!6799955 m!7546538))

(assert (=> b!6799956 m!7546534))

(declare-fun m!7546540 () Bool)

(assert (=> b!6799956 m!7546540))

(assert (=> b!6799954 m!7545594))

(declare-fun m!7546542 () Bool)

(assert (=> b!6799954 m!7546542))

(assert (=> b!6799954 m!7546542))

(declare-fun m!7546544 () Bool)

(assert (=> b!6799954 m!7546544))

(assert (=> b!6799954 m!7545594))

(declare-fun m!7546546 () Bool)

(assert (=> b!6799954 m!7546546))

(assert (=> b!6799954 m!7546542))

(declare-fun m!7546548 () Bool)

(assert (=> b!6799954 m!7546548))

(assert (=> b!6799957 m!7546534))

(declare-fun m!7546550 () Bool)

(assert (=> b!6799957 m!7546550))

(declare-fun m!7546552 () Bool)

(assert (=> b!6799960 m!7546552))

(assert (=> d!2136813 m!7546552))

(assert (=> d!2136813 m!7545594))

(declare-fun m!7546554 () Bool)

(assert (=> d!2136813 m!7546554))

(assert (=> d!2136813 m!7545566))

(assert (=> b!6798980 d!2136813))

(assert (=> bm!617668 d!2136403))

(declare-fun d!2136815 () Bool)

(declare-fun res!2778834 () Bool)

(declare-fun e!4103839 () Bool)

(assert (=> d!2136815 (=> res!2778834 e!4103839)))

(assert (=> d!2136815 (= res!2778834 (is-Nil!66029 (exprs!6502 (h!72479 zl!343))))))

(assert (=> d!2136815 (= (forall!15810 (exprs!6502 (h!72479 zl!343)) lambda!383358) e!4103839)))

(declare-fun b!6799961 () Bool)

(declare-fun e!4103840 () Bool)

(assert (=> b!6799961 (= e!4103839 e!4103840)))

(declare-fun res!2778835 () Bool)

(assert (=> b!6799961 (=> (not res!2778835) (not e!4103840))))

(assert (=> b!6799961 (= res!2778835 (dynLambda!26369 lambda!383358 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun b!6799962 () Bool)

(assert (=> b!6799962 (= e!4103840 (forall!15810 (t!379882 (exprs!6502 (h!72479 zl!343))) lambda!383358))))

(assert (= (and d!2136815 (not res!2778834)) b!6799961))

(assert (= (and b!6799961 res!2778835) b!6799962))

(declare-fun b_lambda!256289 () Bool)

(assert (=> (not b_lambda!256289) (not b!6799961)))

(declare-fun m!7546556 () Bool)

(assert (=> b!6799961 m!7546556))

(declare-fun m!7546558 () Bool)

(assert (=> b!6799962 m!7546558))

(assert (=> d!2136309 d!2136815))

(declare-fun d!2136817 () Bool)

(assert (=> d!2136817 (= (isEmpty!38411 (t!379882 (exprs!6502 (h!72479 zl!343)))) (is-Nil!66029 (t!379882 (exprs!6502 (h!72479 zl!343)))))))

(assert (=> b!6799075 d!2136817))

(declare-fun d!2136819 () Bool)

(assert (=> d!2136819 (= (nullable!6597 (h!72477 (exprs!6502 lt!2447568))) (nullableFct!2501 (h!72477 (exprs!6502 lt!2447568))))))

(declare-fun bs!1812549 () Bool)

(assert (= bs!1812549 d!2136819))

(declare-fun m!7546560 () Bool)

(assert (=> bs!1812549 m!7546560))

(assert (=> b!6799029 d!2136819))

(declare-fun d!2136821 () Bool)

(assert (=> d!2136821 (= (nullable!6597 (reg!16947 r!7292)) (nullableFct!2501 (reg!16947 r!7292)))))

(declare-fun bs!1812550 () Bool)

(assert (= bs!1812550 d!2136821))

(declare-fun m!7546562 () Bool)

(assert (=> bs!1812550 m!7546562))

(assert (=> b!6798691 d!2136821))

(declare-fun b!6799963 () Bool)

(declare-fun e!4103842 () Bool)

(declare-fun call!617850 () Bool)

(assert (=> b!6799963 (= e!4103842 call!617850)))

(declare-fun b!6799964 () Bool)

(declare-fun res!2778840 () Bool)

(declare-fun e!4103845 () Bool)

(assert (=> b!6799964 (=> (not res!2778840) (not e!4103845))))

(declare-fun call!617848 () Bool)

(assert (=> b!6799964 (= res!2778840 call!617848)))

(declare-fun e!4103841 () Bool)

(assert (=> b!6799964 (= e!4103841 e!4103845)))

(declare-fun b!6799965 () Bool)

(declare-fun e!4103843 () Bool)

(declare-fun e!4103847 () Bool)

(assert (=> b!6799965 (= e!4103843 e!4103847)))

(declare-fun c!1264400 () Bool)

(assert (=> b!6799965 (= c!1264400 (is-Star!16618 lt!2447730))))

(declare-fun b!6799966 () Bool)

(declare-fun res!2778836 () Bool)

(declare-fun e!4103846 () Bool)

(assert (=> b!6799966 (=> res!2778836 e!4103846)))

(assert (=> b!6799966 (= res!2778836 (not (is-Concat!25463 lt!2447730)))))

(assert (=> b!6799966 (= e!4103841 e!4103846)))

(declare-fun d!2136823 () Bool)

(declare-fun res!2778837 () Bool)

(assert (=> d!2136823 (=> res!2778837 e!4103843)))

(assert (=> d!2136823 (= res!2778837 (is-ElementMatch!16618 lt!2447730))))

(assert (=> d!2136823 (= (validRegex!8354 lt!2447730) e!4103843)))

(declare-fun bm!617843 () Bool)

(declare-fun call!617849 () Bool)

(declare-fun c!1264399 () Bool)

(assert (=> bm!617843 (= call!617849 (validRegex!8354 (ite c!1264399 (regTwo!33749 lt!2447730) (regTwo!33748 lt!2447730))))))

(declare-fun bm!617844 () Bool)

(assert (=> bm!617844 (= call!617850 (validRegex!8354 (ite c!1264400 (reg!16947 lt!2447730) (ite c!1264399 (regOne!33749 lt!2447730) (regOne!33748 lt!2447730)))))))

(declare-fun b!6799967 () Bool)

(declare-fun e!4103844 () Bool)

(assert (=> b!6799967 (= e!4103844 call!617849)))

(declare-fun b!6799968 () Bool)

(assert (=> b!6799968 (= e!4103847 e!4103842)))

(declare-fun res!2778839 () Bool)

(assert (=> b!6799968 (= res!2778839 (not (nullable!6597 (reg!16947 lt!2447730))))))

(assert (=> b!6799968 (=> (not res!2778839) (not e!4103842))))

(declare-fun b!6799969 () Bool)

(assert (=> b!6799969 (= e!4103846 e!4103844)))

(declare-fun res!2778838 () Bool)

(assert (=> b!6799969 (=> (not res!2778838) (not e!4103844))))

(assert (=> b!6799969 (= res!2778838 call!617848)))

(declare-fun b!6799970 () Bool)

(assert (=> b!6799970 (= e!4103847 e!4103841)))

(assert (=> b!6799970 (= c!1264399 (is-Union!16618 lt!2447730))))

(declare-fun b!6799971 () Bool)

(assert (=> b!6799971 (= e!4103845 call!617849)))

(declare-fun bm!617845 () Bool)

(assert (=> bm!617845 (= call!617848 call!617850)))

(assert (= (and d!2136823 (not res!2778837)) b!6799965))

(assert (= (and b!6799965 c!1264400) b!6799968))

(assert (= (and b!6799965 (not c!1264400)) b!6799970))

(assert (= (and b!6799968 res!2778839) b!6799963))

(assert (= (and b!6799970 c!1264399) b!6799964))

(assert (= (and b!6799970 (not c!1264399)) b!6799966))

(assert (= (and b!6799964 res!2778840) b!6799971))

(assert (= (and b!6799966 (not res!2778836)) b!6799969))

(assert (= (and b!6799969 res!2778838) b!6799967))

(assert (= (or b!6799971 b!6799967) bm!617843))

(assert (= (or b!6799964 b!6799969) bm!617845))

(assert (= (or b!6799963 bm!617845) bm!617844))

(declare-fun m!7546564 () Bool)

(assert (=> bm!617843 m!7546564))

(declare-fun m!7546566 () Bool)

(assert (=> bm!617844 m!7546566))

(declare-fun m!7546568 () Bool)

(assert (=> b!6799968 m!7546568))

(assert (=> d!2136433 d!2136823))

(assert (=> d!2136433 d!2136367))

(assert (=> d!2136433 d!2136371))

(declare-fun bm!617846 () Bool)

(declare-fun call!617851 () Bool)

(assert (=> bm!617846 (= call!617851 (isEmpty!38407 (tail!12732 s!2326)))))

(declare-fun b!6799972 () Bool)

(declare-fun res!2778842 () Bool)

(declare-fun e!4103849 () Bool)

(assert (=> b!6799972 (=> res!2778842 e!4103849)))

(assert (=> b!6799972 (= res!2778842 (not (isEmpty!38407 (tail!12732 (tail!12732 s!2326)))))))

(declare-fun b!6799973 () Bool)

(declare-fun e!4103850 () Bool)

(assert (=> b!6799973 (= e!4103850 (= (head!13647 (tail!12732 s!2326)) (c!1263993 (derivativeStep!5282 r!7292 (head!13647 s!2326)))))))

(declare-fun b!6799974 () Bool)

(declare-fun e!4103851 () Bool)

(declare-fun e!4103853 () Bool)

(assert (=> b!6799974 (= e!4103851 e!4103853)))

(declare-fun c!1264401 () Bool)

(assert (=> b!6799974 (= c!1264401 (is-EmptyLang!16618 (derivativeStep!5282 r!7292 (head!13647 s!2326))))))

(declare-fun b!6799975 () Bool)

(declare-fun res!2778846 () Bool)

(declare-fun e!4103854 () Bool)

(assert (=> b!6799975 (=> res!2778846 e!4103854)))

(assert (=> b!6799975 (= res!2778846 e!4103850)))

(declare-fun res!2778848 () Bool)

(assert (=> b!6799975 (=> (not res!2778848) (not e!4103850))))

(declare-fun lt!2447823 () Bool)

(assert (=> b!6799975 (= res!2778848 lt!2447823)))

(declare-fun b!6799976 () Bool)

(assert (=> b!6799976 (= e!4103849 (not (= (head!13647 (tail!12732 s!2326)) (c!1263993 (derivativeStep!5282 r!7292 (head!13647 s!2326))))))))

(declare-fun b!6799977 () Bool)

(declare-fun res!2778843 () Bool)

(assert (=> b!6799977 (=> (not res!2778843) (not e!4103850))))

(assert (=> b!6799977 (= res!2778843 (not call!617851))))

(declare-fun d!2136825 () Bool)

(assert (=> d!2136825 e!4103851))

(declare-fun c!1264403 () Bool)

(assert (=> d!2136825 (= c!1264403 (is-EmptyExpr!16618 (derivativeStep!5282 r!7292 (head!13647 s!2326))))))

(declare-fun e!4103848 () Bool)

(assert (=> d!2136825 (= lt!2447823 e!4103848)))

(declare-fun c!1264402 () Bool)

(assert (=> d!2136825 (= c!1264402 (isEmpty!38407 (tail!12732 s!2326)))))

(assert (=> d!2136825 (validRegex!8354 (derivativeStep!5282 r!7292 (head!13647 s!2326)))))

(assert (=> d!2136825 (= (matchR!8801 (derivativeStep!5282 r!7292 (head!13647 s!2326)) (tail!12732 s!2326)) lt!2447823)))

(declare-fun b!6799978 () Bool)

(declare-fun e!4103852 () Bool)

(assert (=> b!6799978 (= e!4103852 e!4103849)))

(declare-fun res!2778844 () Bool)

(assert (=> b!6799978 (=> res!2778844 e!4103849)))

(assert (=> b!6799978 (= res!2778844 call!617851)))

(declare-fun b!6799979 () Bool)

(assert (=> b!6799979 (= e!4103848 (nullable!6597 (derivativeStep!5282 r!7292 (head!13647 s!2326))))))

(declare-fun b!6799980 () Bool)

(assert (=> b!6799980 (= e!4103851 (= lt!2447823 call!617851))))

(declare-fun b!6799981 () Bool)

(declare-fun res!2778841 () Bool)

(assert (=> b!6799981 (=> res!2778841 e!4103854)))

(assert (=> b!6799981 (= res!2778841 (not (is-ElementMatch!16618 (derivativeStep!5282 r!7292 (head!13647 s!2326)))))))

(assert (=> b!6799981 (= e!4103853 e!4103854)))

(declare-fun b!6799982 () Bool)

(assert (=> b!6799982 (= e!4103853 (not lt!2447823))))

(declare-fun b!6799983 () Bool)

(declare-fun res!2778847 () Bool)

(assert (=> b!6799983 (=> (not res!2778847) (not e!4103850))))

(assert (=> b!6799983 (= res!2778847 (isEmpty!38407 (tail!12732 (tail!12732 s!2326))))))

(declare-fun b!6799984 () Bool)

(assert (=> b!6799984 (= e!4103854 e!4103852)))

(declare-fun res!2778845 () Bool)

(assert (=> b!6799984 (=> (not res!2778845) (not e!4103852))))

(assert (=> b!6799984 (= res!2778845 (not lt!2447823))))

(declare-fun b!6799985 () Bool)

(assert (=> b!6799985 (= e!4103848 (matchR!8801 (derivativeStep!5282 (derivativeStep!5282 r!7292 (head!13647 s!2326)) (head!13647 (tail!12732 s!2326))) (tail!12732 (tail!12732 s!2326))))))

(assert (= (and d!2136825 c!1264402) b!6799979))

(assert (= (and d!2136825 (not c!1264402)) b!6799985))

(assert (= (and d!2136825 c!1264403) b!6799980))

(assert (= (and d!2136825 (not c!1264403)) b!6799974))

(assert (= (and b!6799974 c!1264401) b!6799982))

(assert (= (and b!6799974 (not c!1264401)) b!6799981))

(assert (= (and b!6799981 (not res!2778841)) b!6799975))

(assert (= (and b!6799975 res!2778848) b!6799977))

(assert (= (and b!6799977 res!2778843) b!6799983))

(assert (= (and b!6799983 res!2778847) b!6799973))

(assert (= (and b!6799975 (not res!2778846)) b!6799984))

(assert (= (and b!6799984 res!2778845) b!6799978))

(assert (= (and b!6799978 (not res!2778844)) b!6799972))

(assert (= (and b!6799972 (not res!2778842)) b!6799976))

(assert (= (or b!6799980 b!6799977 b!6799978) bm!617846))

(assert (=> b!6799972 m!7545318))

(assert (=> b!6799972 m!7546050))

(assert (=> b!6799972 m!7546050))

(assert (=> b!6799972 m!7546434))

(assert (=> b!6799979 m!7545438))

(declare-fun m!7546570 () Bool)

(assert (=> b!6799979 m!7546570))

(assert (=> b!6799973 m!7545318))

(assert (=> b!6799973 m!7546046))

(assert (=> b!6799985 m!7545318))

(assert (=> b!6799985 m!7546046))

(assert (=> b!6799985 m!7545438))

(assert (=> b!6799985 m!7546046))

(declare-fun m!7546572 () Bool)

(assert (=> b!6799985 m!7546572))

(assert (=> b!6799985 m!7545318))

(assert (=> b!6799985 m!7546050))

(assert (=> b!6799985 m!7546572))

(assert (=> b!6799985 m!7546050))

(declare-fun m!7546574 () Bool)

(assert (=> b!6799985 m!7546574))

(assert (=> bm!617846 m!7545318))

(assert (=> bm!617846 m!7545416))

(assert (=> b!6799983 m!7545318))

(assert (=> b!6799983 m!7546050))

(assert (=> b!6799983 m!7546050))

(assert (=> b!6799983 m!7546434))

(assert (=> b!6799976 m!7545318))

(assert (=> b!6799976 m!7546046))

(assert (=> d!2136825 m!7545318))

(assert (=> d!2136825 m!7545416))

(assert (=> d!2136825 m!7545438))

(declare-fun m!7546576 () Bool)

(assert (=> d!2136825 m!7546576))

(assert (=> b!6798817 d!2136825))

(declare-fun c!1264406 () Bool)

(declare-fun c!1264408 () Bool)

(declare-fun call!617854 () Regex!16618)

(declare-fun bm!617847 () Bool)

(assert (=> bm!617847 (= call!617854 (derivativeStep!5282 (ite c!1264406 (regTwo!33749 r!7292) (ite c!1264408 (reg!16947 r!7292) (regOne!33748 r!7292))) (head!13647 s!2326)))))

(declare-fun bm!617848 () Bool)

(declare-fun call!617855 () Regex!16618)

(assert (=> bm!617848 (= call!617855 call!617854)))

(declare-fun b!6799986 () Bool)

(declare-fun e!4103855 () Regex!16618)

(assert (=> b!6799986 (= e!4103855 (ite (= (head!13647 s!2326) (c!1263993 r!7292)) EmptyExpr!16618 EmptyLang!16618))))

(declare-fun b!6799987 () Bool)

(declare-fun e!4103856 () Regex!16618)

(assert (=> b!6799987 (= e!4103856 e!4103855)))

(declare-fun c!1264404 () Bool)

(assert (=> b!6799987 (= c!1264404 (is-ElementMatch!16618 r!7292))))

(declare-fun b!6799988 () Bool)

(declare-fun e!4103859 () Regex!16618)

(declare-fun e!4103857 () Regex!16618)

(assert (=> b!6799988 (= e!4103859 e!4103857)))

(assert (=> b!6799988 (= c!1264408 (is-Star!16618 r!7292))))

(declare-fun b!6799990 () Bool)

(declare-fun call!617852 () Regex!16618)

(declare-fun e!4103858 () Regex!16618)

(assert (=> b!6799990 (= e!4103858 (Union!16618 (Concat!25463 call!617855 (regTwo!33748 r!7292)) call!617852))))

(declare-fun b!6799991 () Bool)

(assert (=> b!6799991 (= c!1264406 (is-Union!16618 r!7292))))

(assert (=> b!6799991 (= e!4103855 e!4103859)))

(declare-fun c!1264407 () Bool)

(declare-fun bm!617849 () Bool)

(declare-fun call!617853 () Regex!16618)

(assert (=> bm!617849 (= call!617853 (derivativeStep!5282 (ite c!1264406 (regOne!33749 r!7292) (ite c!1264407 (regTwo!33748 r!7292) (regOne!33748 r!7292))) (head!13647 s!2326)))))

(declare-fun b!6799992 () Bool)

(assert (=> b!6799992 (= e!4103859 (Union!16618 call!617853 call!617854))))

(declare-fun bm!617850 () Bool)

(assert (=> bm!617850 (= call!617852 call!617853)))

(declare-fun b!6799993 () Bool)

(assert (=> b!6799993 (= e!4103856 EmptyLang!16618)))

(declare-fun b!6799989 () Bool)

(assert (=> b!6799989 (= e!4103857 (Concat!25463 call!617855 r!7292))))

(declare-fun d!2136827 () Bool)

(declare-fun lt!2447824 () Regex!16618)

(assert (=> d!2136827 (validRegex!8354 lt!2447824)))

(assert (=> d!2136827 (= lt!2447824 e!4103856)))

(declare-fun c!1264405 () Bool)

(assert (=> d!2136827 (= c!1264405 (or (is-EmptyExpr!16618 r!7292) (is-EmptyLang!16618 r!7292)))))

(assert (=> d!2136827 (validRegex!8354 r!7292)))

(assert (=> d!2136827 (= (derivativeStep!5282 r!7292 (head!13647 s!2326)) lt!2447824)))

(declare-fun b!6799994 () Bool)

(assert (=> b!6799994 (= c!1264407 (nullable!6597 (regOne!33748 r!7292)))))

(assert (=> b!6799994 (= e!4103857 e!4103858)))

(declare-fun b!6799995 () Bool)

(assert (=> b!6799995 (= e!4103858 (Union!16618 (Concat!25463 call!617852 (regTwo!33748 r!7292)) EmptyLang!16618))))

(assert (= (and d!2136827 c!1264405) b!6799993))

(assert (= (and d!2136827 (not c!1264405)) b!6799987))

(assert (= (and b!6799987 c!1264404) b!6799986))

(assert (= (and b!6799987 (not c!1264404)) b!6799991))

(assert (= (and b!6799991 c!1264406) b!6799992))

(assert (= (and b!6799991 (not c!1264406)) b!6799988))

(assert (= (and b!6799988 c!1264408) b!6799989))

(assert (= (and b!6799988 (not c!1264408)) b!6799994))

(assert (= (and b!6799994 c!1264407) b!6799990))

(assert (= (and b!6799994 (not c!1264407)) b!6799995))

(assert (= (or b!6799990 b!6799995) bm!617850))

(assert (= (or b!6799989 b!6799990) bm!617848))

(assert (= (or b!6799992 bm!617848) bm!617847))

(assert (= (or b!6799992 bm!617850) bm!617849))

(assert (=> bm!617847 m!7545314))

(declare-fun m!7546578 () Bool)

(assert (=> bm!617847 m!7546578))

(assert (=> bm!617849 m!7545314))

(declare-fun m!7546580 () Bool)

(assert (=> bm!617849 m!7546580))

(declare-fun m!7546582 () Bool)

(assert (=> d!2136827 m!7546582))

(assert (=> d!2136827 m!7545148))

(assert (=> b!6799994 m!7545354))

(assert (=> b!6798817 d!2136827))

(assert (=> b!6798817 d!2136581))

(assert (=> b!6798817 d!2136593))

(declare-fun d!2136829 () Bool)

(assert (=> d!2136829 true))

(declare-fun setRes!46604 () Bool)

(assert (=> d!2136829 setRes!46604))

(declare-fun condSetEmpty!46604 () Bool)

(declare-fun res!2778849 () (Set Context!12004))

(assert (=> d!2136829 (= condSetEmpty!46604 (= res!2778849 (as set.empty (Set Context!12004))))))

(assert (=> d!2136829 (= (choose!50669 lt!2447560 lambda!383323) res!2778849)))

(declare-fun setIsEmpty!46604 () Bool)

(assert (=> setIsEmpty!46604 setRes!46604))

(declare-fun setNonEmpty!46604 () Bool)

(declare-fun e!4103860 () Bool)

(declare-fun setElem!46604 () Context!12004)

(declare-fun tp!1861734 () Bool)

(assert (=> setNonEmpty!46604 (= setRes!46604 (and tp!1861734 (inv!84793 setElem!46604) e!4103860))))

(declare-fun setRest!46604 () (Set Context!12004))

(assert (=> setNonEmpty!46604 (= res!2778849 (set.union (set.insert setElem!46604 (as set.empty (Set Context!12004))) setRest!46604))))

(declare-fun b!6799996 () Bool)

(declare-fun tp!1861735 () Bool)

(assert (=> b!6799996 (= e!4103860 tp!1861735)))

(assert (= (and d!2136829 condSetEmpty!46604) setIsEmpty!46604))

(assert (= (and d!2136829 (not condSetEmpty!46604)) setNonEmpty!46604))

(assert (= setNonEmpty!46604 b!6799996))

(declare-fun m!7546584 () Bool)

(assert (=> setNonEmpty!46604 m!7546584))

(assert (=> d!2136439 d!2136829))

(assert (=> b!6798778 d!2136581))

(declare-fun b!6799997 () Bool)

(declare-fun e!4103861 () List!66153)

(assert (=> b!6799997 (= e!4103861 lt!2447567)))

(declare-fun b!6799998 () Bool)

(assert (=> b!6799998 (= e!4103861 (Cons!66029 (h!72477 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029))) (++!14782 (t!379882 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029))) lt!2447567)))))

(declare-fun b!6800000 () Bool)

(declare-fun lt!2447825 () List!66153)

(declare-fun e!4103862 () Bool)

(assert (=> b!6800000 (= e!4103862 (or (not (= lt!2447567 Nil!66029)) (= lt!2447825 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)))))))

(declare-fun d!2136831 () Bool)

(assert (=> d!2136831 e!4103862))

(declare-fun res!2778851 () Bool)

(assert (=> d!2136831 (=> (not res!2778851) (not e!4103862))))

(assert (=> d!2136831 (= res!2778851 (= (content!12891 lt!2447825) (set.union (content!12891 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029))) (content!12891 lt!2447567))))))

(assert (=> d!2136831 (= lt!2447825 e!4103861)))

(declare-fun c!1264409 () Bool)

(assert (=> d!2136831 (= c!1264409 (is-Nil!66029 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029))))))

(assert (=> d!2136831 (= (++!14782 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029)) lt!2447567) lt!2447825)))

(declare-fun b!6799999 () Bool)

(declare-fun res!2778850 () Bool)

(assert (=> b!6799999 (=> (not res!2778850) (not e!4103862))))

(assert (=> b!6799999 (= res!2778850 (= (size!40660 lt!2447825) (+ (size!40660 (t!379882 (Cons!66029 (reg!16947 r!7292) Nil!66029))) (size!40660 lt!2447567))))))

(assert (= (and d!2136831 c!1264409) b!6799997))

(assert (= (and d!2136831 (not c!1264409)) b!6799998))

(assert (= (and d!2136831 res!2778851) b!6799999))

(assert (= (and b!6799999 res!2778850) b!6800000))

(declare-fun m!7546586 () Bool)

(assert (=> b!6799998 m!7546586))

(declare-fun m!7546588 () Bool)

(assert (=> d!2136831 m!7546588))

(assert (=> d!2136831 m!7546182))

(assert (=> d!2136831 m!7545464))

(declare-fun m!7546590 () Bool)

(assert (=> b!6799999 m!7546590))

(assert (=> b!6799999 m!7546088))

(assert (=> b!6799999 m!7545470))

(assert (=> b!6798829 d!2136831))

(declare-fun b!6800002 () Bool)

(declare-fun e!4103863 () Bool)

(declare-fun tp!1861736 () Bool)

(declare-fun tp!1861737 () Bool)

(assert (=> b!6800002 (= e!4103863 (and tp!1861736 tp!1861737))))

(declare-fun b!6800001 () Bool)

(assert (=> b!6800001 (= e!4103863 tp_is_empty!42489)))

(declare-fun b!6800003 () Bool)

(declare-fun tp!1861740 () Bool)

(assert (=> b!6800003 (= e!4103863 tp!1861740)))

(assert (=> b!6799125 (= tp!1861638 e!4103863)))

(declare-fun b!6800004 () Bool)

(declare-fun tp!1861738 () Bool)

(declare-fun tp!1861739 () Bool)

(assert (=> b!6800004 (= e!4103863 (and tp!1861738 tp!1861739))))

(assert (= (and b!6799125 (is-ElementMatch!16618 (regOne!33748 (regOne!33748 r!7292)))) b!6800001))

(assert (= (and b!6799125 (is-Concat!25463 (regOne!33748 (regOne!33748 r!7292)))) b!6800002))

(assert (= (and b!6799125 (is-Star!16618 (regOne!33748 (regOne!33748 r!7292)))) b!6800003))

(assert (= (and b!6799125 (is-Union!16618 (regOne!33748 (regOne!33748 r!7292)))) b!6800004))

(declare-fun b!6800006 () Bool)

(declare-fun e!4103864 () Bool)

(declare-fun tp!1861741 () Bool)

(declare-fun tp!1861742 () Bool)

(assert (=> b!6800006 (= e!4103864 (and tp!1861741 tp!1861742))))

(declare-fun b!6800005 () Bool)

(assert (=> b!6800005 (= e!4103864 tp_is_empty!42489)))

(declare-fun b!6800007 () Bool)

(declare-fun tp!1861745 () Bool)

(assert (=> b!6800007 (= e!4103864 tp!1861745)))

(assert (=> b!6799125 (= tp!1861639 e!4103864)))

(declare-fun b!6800008 () Bool)

(declare-fun tp!1861743 () Bool)

(declare-fun tp!1861744 () Bool)

(assert (=> b!6800008 (= e!4103864 (and tp!1861743 tp!1861744))))

(assert (= (and b!6799125 (is-ElementMatch!16618 (regTwo!33748 (regOne!33748 r!7292)))) b!6800005))

(assert (= (and b!6799125 (is-Concat!25463 (regTwo!33748 (regOne!33748 r!7292)))) b!6800006))

(assert (= (and b!6799125 (is-Star!16618 (regTwo!33748 (regOne!33748 r!7292)))) b!6800007))

(assert (= (and b!6799125 (is-Union!16618 (regTwo!33748 (regOne!33748 r!7292)))) b!6800008))

(declare-fun b!6800010 () Bool)

(declare-fun e!4103865 () Bool)

(declare-fun tp!1861746 () Bool)

(declare-fun tp!1861747 () Bool)

(assert (=> b!6800010 (= e!4103865 (and tp!1861746 tp!1861747))))

(declare-fun b!6800009 () Bool)

(assert (=> b!6800009 (= e!4103865 tp_is_empty!42489)))

(declare-fun b!6800011 () Bool)

(declare-fun tp!1861750 () Bool)

(assert (=> b!6800011 (= e!4103865 tp!1861750)))

(assert (=> b!6799127 (= tp!1861640 e!4103865)))

(declare-fun b!6800012 () Bool)

(declare-fun tp!1861748 () Bool)

(declare-fun tp!1861749 () Bool)

(assert (=> b!6800012 (= e!4103865 (and tp!1861748 tp!1861749))))

(assert (= (and b!6799127 (is-ElementMatch!16618 (regOne!33749 (regOne!33748 r!7292)))) b!6800009))

(assert (= (and b!6799127 (is-Concat!25463 (regOne!33749 (regOne!33748 r!7292)))) b!6800010))

(assert (= (and b!6799127 (is-Star!16618 (regOne!33749 (regOne!33748 r!7292)))) b!6800011))

(assert (= (and b!6799127 (is-Union!16618 (regOne!33749 (regOne!33748 r!7292)))) b!6800012))

(declare-fun b!6800014 () Bool)

(declare-fun e!4103866 () Bool)

(declare-fun tp!1861751 () Bool)

(declare-fun tp!1861752 () Bool)

(assert (=> b!6800014 (= e!4103866 (and tp!1861751 tp!1861752))))

(declare-fun b!6800013 () Bool)

(assert (=> b!6800013 (= e!4103866 tp_is_empty!42489)))

(declare-fun b!6800015 () Bool)

(declare-fun tp!1861755 () Bool)

(assert (=> b!6800015 (= e!4103866 tp!1861755)))

(assert (=> b!6799127 (= tp!1861641 e!4103866)))

(declare-fun b!6800016 () Bool)

(declare-fun tp!1861753 () Bool)

(declare-fun tp!1861754 () Bool)

(assert (=> b!6800016 (= e!4103866 (and tp!1861753 tp!1861754))))

(assert (= (and b!6799127 (is-ElementMatch!16618 (regTwo!33749 (regOne!33748 r!7292)))) b!6800013))

(assert (= (and b!6799127 (is-Concat!25463 (regTwo!33749 (regOne!33748 r!7292)))) b!6800014))

(assert (= (and b!6799127 (is-Star!16618 (regTwo!33749 (regOne!33748 r!7292)))) b!6800015))

(assert (= (and b!6799127 (is-Union!16618 (regTwo!33749 (regOne!33748 r!7292)))) b!6800016))

(declare-fun b!6800018 () Bool)

(declare-fun e!4103867 () Bool)

(declare-fun tp!1861756 () Bool)

(declare-fun tp!1861757 () Bool)

(assert (=> b!6800018 (= e!4103867 (and tp!1861756 tp!1861757))))

(declare-fun b!6800017 () Bool)

(assert (=> b!6800017 (= e!4103867 tp_is_empty!42489)))

(declare-fun b!6800019 () Bool)

(declare-fun tp!1861760 () Bool)

(assert (=> b!6800019 (= e!4103867 tp!1861760)))

(assert (=> b!6799126 (= tp!1861642 e!4103867)))

(declare-fun b!6800020 () Bool)

(declare-fun tp!1861758 () Bool)

(declare-fun tp!1861759 () Bool)

(assert (=> b!6800020 (= e!4103867 (and tp!1861758 tp!1861759))))

(assert (= (and b!6799126 (is-ElementMatch!16618 (reg!16947 (regOne!33748 r!7292)))) b!6800017))

(assert (= (and b!6799126 (is-Concat!25463 (reg!16947 (regOne!33748 r!7292)))) b!6800018))

(assert (= (and b!6799126 (is-Star!16618 (reg!16947 (regOne!33748 r!7292)))) b!6800019))

(assert (= (and b!6799126 (is-Union!16618 (reg!16947 (regOne!33748 r!7292)))) b!6800020))

(declare-fun condSetEmpty!46605 () Bool)

(assert (=> setNonEmpty!46592 (= condSetEmpty!46605 (= setRest!46592 (as set.empty (Set Context!12004))))))

(declare-fun setRes!46605 () Bool)

(assert (=> setNonEmpty!46592 (= tp!1861653 setRes!46605)))

(declare-fun setIsEmpty!46605 () Bool)

(assert (=> setIsEmpty!46605 setRes!46605))

(declare-fun tp!1861762 () Bool)

(declare-fun setElem!46605 () Context!12004)

(declare-fun setNonEmpty!46605 () Bool)

(declare-fun e!4103868 () Bool)

(assert (=> setNonEmpty!46605 (= setRes!46605 (and tp!1861762 (inv!84793 setElem!46605) e!4103868))))

(declare-fun setRest!46605 () (Set Context!12004))

(assert (=> setNonEmpty!46605 (= setRest!46592 (set.union (set.insert setElem!46605 (as set.empty (Set Context!12004))) setRest!46605))))

(declare-fun b!6800021 () Bool)

(declare-fun tp!1861761 () Bool)

(assert (=> b!6800021 (= e!4103868 tp!1861761)))

(assert (= (and setNonEmpty!46592 condSetEmpty!46605) setIsEmpty!46605))

(assert (= (and setNonEmpty!46592 (not condSetEmpty!46605)) setNonEmpty!46605))

(assert (= setNonEmpty!46605 b!6800021))

(declare-fun m!7546592 () Bool)

(assert (=> setNonEmpty!46605 m!7546592))

(declare-fun b!6800022 () Bool)

(declare-fun e!4103869 () Bool)

(declare-fun tp!1861763 () Bool)

(assert (=> b!6800022 (= e!4103869 (and tp_is_empty!42489 tp!1861763))))

(assert (=> b!6799087 (= tp!1861598 e!4103869)))

(assert (= (and b!6799087 (is-Cons!66030 (t!379883 (t!379883 s!2326)))) b!6800022))

(declare-fun b!6800023 () Bool)

(declare-fun e!4103870 () Bool)

(declare-fun tp!1861764 () Bool)

(declare-fun tp!1861765 () Bool)

(assert (=> b!6800023 (= e!4103870 (and tp!1861764 tp!1861765))))

(assert (=> b!6799136 (= tp!1861652 e!4103870)))

(assert (= (and b!6799136 (is-Cons!66029 (exprs!6502 setElem!46592))) b!6800023))

(declare-fun b!6800025 () Bool)

(declare-fun e!4103871 () Bool)

(declare-fun tp!1861766 () Bool)

(declare-fun tp!1861767 () Bool)

(assert (=> b!6800025 (= e!4103871 (and tp!1861766 tp!1861767))))

(declare-fun b!6800024 () Bool)

(assert (=> b!6800024 (= e!4103871 tp_is_empty!42489)))

(declare-fun b!6800026 () Bool)

(declare-fun tp!1861770 () Bool)

(assert (=> b!6800026 (= e!4103871 tp!1861770)))

(assert (=> b!6799120 (= tp!1861631 e!4103871)))

(declare-fun b!6800027 () Bool)

(declare-fun tp!1861768 () Bool)

(declare-fun tp!1861769 () Bool)

(assert (=> b!6800027 (= e!4103871 (and tp!1861768 tp!1861769))))

(assert (= (and b!6799120 (is-ElementMatch!16618 (regOne!33748 (regTwo!33749 r!7292)))) b!6800024))

(assert (= (and b!6799120 (is-Concat!25463 (regOne!33748 (regTwo!33749 r!7292)))) b!6800025))

(assert (= (and b!6799120 (is-Star!16618 (regOne!33748 (regTwo!33749 r!7292)))) b!6800026))

(assert (= (and b!6799120 (is-Union!16618 (regOne!33748 (regTwo!33749 r!7292)))) b!6800027))

(declare-fun b!6800029 () Bool)

(declare-fun e!4103872 () Bool)

(declare-fun tp!1861771 () Bool)

(declare-fun tp!1861772 () Bool)

(assert (=> b!6800029 (= e!4103872 (and tp!1861771 tp!1861772))))

(declare-fun b!6800028 () Bool)

(assert (=> b!6800028 (= e!4103872 tp_is_empty!42489)))

(declare-fun b!6800030 () Bool)

(declare-fun tp!1861775 () Bool)

(assert (=> b!6800030 (= e!4103872 tp!1861775)))

(assert (=> b!6799120 (= tp!1861632 e!4103872)))

(declare-fun b!6800031 () Bool)

(declare-fun tp!1861773 () Bool)

(declare-fun tp!1861774 () Bool)

(assert (=> b!6800031 (= e!4103872 (and tp!1861773 tp!1861774))))

(assert (= (and b!6799120 (is-ElementMatch!16618 (regTwo!33748 (regTwo!33749 r!7292)))) b!6800028))

(assert (= (and b!6799120 (is-Concat!25463 (regTwo!33748 (regTwo!33749 r!7292)))) b!6800029))

(assert (= (and b!6799120 (is-Star!16618 (regTwo!33748 (regTwo!33749 r!7292)))) b!6800030))

(assert (= (and b!6799120 (is-Union!16618 (regTwo!33748 (regTwo!33749 r!7292)))) b!6800031))

(declare-fun b!6800032 () Bool)

(declare-fun e!4103873 () Bool)

(declare-fun tp!1861776 () Bool)

(declare-fun tp!1861777 () Bool)

(assert (=> b!6800032 (= e!4103873 (and tp!1861776 tp!1861777))))

(assert (=> b!6799114 (= tp!1861624 e!4103873)))

(assert (= (and b!6799114 (is-Cons!66029 (exprs!6502 (h!72479 (t!379884 zl!343))))) b!6800032))

(declare-fun b!6800034 () Bool)

(declare-fun e!4103874 () Bool)

(declare-fun tp!1861778 () Bool)

(declare-fun tp!1861779 () Bool)

(assert (=> b!6800034 (= e!4103874 (and tp!1861778 tp!1861779))))

(declare-fun b!6800033 () Bool)

(assert (=> b!6800033 (= e!4103874 tp_is_empty!42489)))

(declare-fun b!6800035 () Bool)

(declare-fun tp!1861782 () Bool)

(assert (=> b!6800035 (= e!4103874 tp!1861782)))

(assert (=> b!6799121 (= tp!1861635 e!4103874)))

(declare-fun b!6800036 () Bool)

(declare-fun tp!1861780 () Bool)

(declare-fun tp!1861781 () Bool)

(assert (=> b!6800036 (= e!4103874 (and tp!1861780 tp!1861781))))

(assert (= (and b!6799121 (is-ElementMatch!16618 (reg!16947 (regTwo!33749 r!7292)))) b!6800033))

(assert (= (and b!6799121 (is-Concat!25463 (reg!16947 (regTwo!33749 r!7292)))) b!6800034))

(assert (= (and b!6799121 (is-Star!16618 (reg!16947 (regTwo!33749 r!7292)))) b!6800035))

(assert (= (and b!6799121 (is-Union!16618 (reg!16947 (regTwo!33749 r!7292)))) b!6800036))

(declare-fun b!6800038 () Bool)

(declare-fun e!4103876 () Bool)

(declare-fun tp!1861783 () Bool)

(assert (=> b!6800038 (= e!4103876 tp!1861783)))

(declare-fun e!4103875 () Bool)

(declare-fun b!6800037 () Bool)

(declare-fun tp!1861784 () Bool)

(assert (=> b!6800037 (= e!4103875 (and (inv!84793 (h!72479 (t!379884 (t!379884 zl!343)))) e!4103876 tp!1861784))))

(assert (=> b!6799113 (= tp!1861625 e!4103875)))

(assert (= b!6800037 b!6800038))

(assert (= (and b!6799113 (is-Cons!66031 (t!379884 (t!379884 zl!343)))) b!6800037))

(declare-fun m!7546594 () Bool)

(assert (=> b!6800037 m!7546594))

(declare-fun b!6800040 () Bool)

(declare-fun e!4103877 () Bool)

(declare-fun tp!1861785 () Bool)

(declare-fun tp!1861786 () Bool)

(assert (=> b!6800040 (= e!4103877 (and tp!1861785 tp!1861786))))

(declare-fun b!6800039 () Bool)

(assert (=> b!6800039 (= e!4103877 tp_is_empty!42489)))

(declare-fun b!6800041 () Bool)

(declare-fun tp!1861789 () Bool)

(assert (=> b!6800041 (= e!4103877 tp!1861789)))

(assert (=> b!6799129 (= tp!1861643 e!4103877)))

(declare-fun b!6800042 () Bool)

(declare-fun tp!1861787 () Bool)

(declare-fun tp!1861788 () Bool)

(assert (=> b!6800042 (= e!4103877 (and tp!1861787 tp!1861788))))

(assert (= (and b!6799129 (is-ElementMatch!16618 (regOne!33748 (regTwo!33748 r!7292)))) b!6800039))

(assert (= (and b!6799129 (is-Concat!25463 (regOne!33748 (regTwo!33748 r!7292)))) b!6800040))

(assert (= (and b!6799129 (is-Star!16618 (regOne!33748 (regTwo!33748 r!7292)))) b!6800041))

(assert (= (and b!6799129 (is-Union!16618 (regOne!33748 (regTwo!33748 r!7292)))) b!6800042))

(declare-fun b!6800044 () Bool)

(declare-fun e!4103878 () Bool)

(declare-fun tp!1861790 () Bool)

(declare-fun tp!1861791 () Bool)

(assert (=> b!6800044 (= e!4103878 (and tp!1861790 tp!1861791))))

(declare-fun b!6800043 () Bool)

(assert (=> b!6800043 (= e!4103878 tp_is_empty!42489)))

(declare-fun b!6800045 () Bool)

(declare-fun tp!1861794 () Bool)

(assert (=> b!6800045 (= e!4103878 tp!1861794)))

(assert (=> b!6799129 (= tp!1861644 e!4103878)))

(declare-fun b!6800046 () Bool)

(declare-fun tp!1861792 () Bool)

(declare-fun tp!1861793 () Bool)

(assert (=> b!6800046 (= e!4103878 (and tp!1861792 tp!1861793))))

(assert (= (and b!6799129 (is-ElementMatch!16618 (regTwo!33748 (regTwo!33748 r!7292)))) b!6800043))

(assert (= (and b!6799129 (is-Concat!25463 (regTwo!33748 (regTwo!33748 r!7292)))) b!6800044))

(assert (= (and b!6799129 (is-Star!16618 (regTwo!33748 (regTwo!33748 r!7292)))) b!6800045))

(assert (= (and b!6799129 (is-Union!16618 (regTwo!33748 (regTwo!33748 r!7292)))) b!6800046))

(declare-fun b!6800048 () Bool)

(declare-fun e!4103879 () Bool)

(declare-fun tp!1861795 () Bool)

(declare-fun tp!1861796 () Bool)

(assert (=> b!6800048 (= e!4103879 (and tp!1861795 tp!1861796))))

(declare-fun b!6800047 () Bool)

(assert (=> b!6800047 (= e!4103879 tp_is_empty!42489)))

(declare-fun b!6800049 () Bool)

(declare-fun tp!1861799 () Bool)

(assert (=> b!6800049 (= e!4103879 tp!1861799)))

(assert (=> b!6799122 (= tp!1861633 e!4103879)))

(declare-fun b!6800050 () Bool)

(declare-fun tp!1861797 () Bool)

(declare-fun tp!1861798 () Bool)

(assert (=> b!6800050 (= e!4103879 (and tp!1861797 tp!1861798))))

(assert (= (and b!6799122 (is-ElementMatch!16618 (regOne!33749 (regTwo!33749 r!7292)))) b!6800047))

(assert (= (and b!6799122 (is-Concat!25463 (regOne!33749 (regTwo!33749 r!7292)))) b!6800048))

(assert (= (and b!6799122 (is-Star!16618 (regOne!33749 (regTwo!33749 r!7292)))) b!6800049))

(assert (= (and b!6799122 (is-Union!16618 (regOne!33749 (regTwo!33749 r!7292)))) b!6800050))

(declare-fun b!6800052 () Bool)

(declare-fun e!4103880 () Bool)

(declare-fun tp!1861800 () Bool)

(declare-fun tp!1861801 () Bool)

(assert (=> b!6800052 (= e!4103880 (and tp!1861800 tp!1861801))))

(declare-fun b!6800051 () Bool)

(assert (=> b!6800051 (= e!4103880 tp_is_empty!42489)))

(declare-fun b!6800053 () Bool)

(declare-fun tp!1861804 () Bool)

(assert (=> b!6800053 (= e!4103880 tp!1861804)))

(assert (=> b!6799122 (= tp!1861634 e!4103880)))

(declare-fun b!6800054 () Bool)

(declare-fun tp!1861802 () Bool)

(declare-fun tp!1861803 () Bool)

(assert (=> b!6800054 (= e!4103880 (and tp!1861802 tp!1861803))))

(assert (= (and b!6799122 (is-ElementMatch!16618 (regTwo!33749 (regTwo!33749 r!7292)))) b!6800051))

(assert (= (and b!6799122 (is-Concat!25463 (regTwo!33749 (regTwo!33749 r!7292)))) b!6800052))

(assert (= (and b!6799122 (is-Star!16618 (regTwo!33749 (regTwo!33749 r!7292)))) b!6800053))

(assert (= (and b!6799122 (is-Union!16618 (regTwo!33749 (regTwo!33749 r!7292)))) b!6800054))

(declare-fun b!6800056 () Bool)

(declare-fun e!4103881 () Bool)

(declare-fun tp!1861805 () Bool)

(declare-fun tp!1861806 () Bool)

(assert (=> b!6800056 (= e!4103881 (and tp!1861805 tp!1861806))))

(declare-fun b!6800055 () Bool)

(assert (=> b!6800055 (= e!4103881 tp_is_empty!42489)))

(declare-fun b!6800057 () Bool)

(declare-fun tp!1861809 () Bool)

(assert (=> b!6800057 (= e!4103881 tp!1861809)))

(assert (=> b!6799130 (= tp!1861647 e!4103881)))

(declare-fun b!6800058 () Bool)

(declare-fun tp!1861807 () Bool)

(declare-fun tp!1861808 () Bool)

(assert (=> b!6800058 (= e!4103881 (and tp!1861807 tp!1861808))))

(assert (= (and b!6799130 (is-ElementMatch!16618 (reg!16947 (regTwo!33748 r!7292)))) b!6800055))

(assert (= (and b!6799130 (is-Concat!25463 (reg!16947 (regTwo!33748 r!7292)))) b!6800056))

(assert (= (and b!6799130 (is-Star!16618 (reg!16947 (regTwo!33748 r!7292)))) b!6800057))

(assert (= (and b!6799130 (is-Union!16618 (reg!16947 (regTwo!33748 r!7292)))) b!6800058))

(declare-fun b!6800060 () Bool)

(declare-fun e!4103882 () Bool)

(declare-fun tp!1861810 () Bool)

(declare-fun tp!1861811 () Bool)

(assert (=> b!6800060 (= e!4103882 (and tp!1861810 tp!1861811))))

(declare-fun b!6800059 () Bool)

(assert (=> b!6800059 (= e!4103882 tp_is_empty!42489)))

(declare-fun b!6800061 () Bool)

(declare-fun tp!1861814 () Bool)

(assert (=> b!6800061 (= e!4103882 tp!1861814)))

(assert (=> b!6799131 (= tp!1861645 e!4103882)))

(declare-fun b!6800062 () Bool)

(declare-fun tp!1861812 () Bool)

(declare-fun tp!1861813 () Bool)

(assert (=> b!6800062 (= e!4103882 (and tp!1861812 tp!1861813))))

(assert (= (and b!6799131 (is-ElementMatch!16618 (regOne!33749 (regTwo!33748 r!7292)))) b!6800059))

(assert (= (and b!6799131 (is-Concat!25463 (regOne!33749 (regTwo!33748 r!7292)))) b!6800060))

(assert (= (and b!6799131 (is-Star!16618 (regOne!33749 (regTwo!33748 r!7292)))) b!6800061))

(assert (= (and b!6799131 (is-Union!16618 (regOne!33749 (regTwo!33748 r!7292)))) b!6800062))

(declare-fun b!6800064 () Bool)

(declare-fun e!4103883 () Bool)

(declare-fun tp!1861815 () Bool)

(declare-fun tp!1861816 () Bool)

(assert (=> b!6800064 (= e!4103883 (and tp!1861815 tp!1861816))))

(declare-fun b!6800063 () Bool)

(assert (=> b!6800063 (= e!4103883 tp_is_empty!42489)))

(declare-fun b!6800065 () Bool)

(declare-fun tp!1861819 () Bool)

(assert (=> b!6800065 (= e!4103883 tp!1861819)))

(assert (=> b!6799131 (= tp!1861646 e!4103883)))

(declare-fun b!6800066 () Bool)

(declare-fun tp!1861817 () Bool)

(declare-fun tp!1861818 () Bool)

(assert (=> b!6800066 (= e!4103883 (and tp!1861817 tp!1861818))))

(assert (= (and b!6799131 (is-ElementMatch!16618 (regTwo!33749 (regTwo!33748 r!7292)))) b!6800063))

(assert (= (and b!6799131 (is-Concat!25463 (regTwo!33749 (regTwo!33748 r!7292)))) b!6800064))

(assert (= (and b!6799131 (is-Star!16618 (regTwo!33749 (regTwo!33748 r!7292)))) b!6800065))

(assert (= (and b!6799131 (is-Union!16618 (regTwo!33749 (regTwo!33748 r!7292)))) b!6800066))

(declare-fun b!6800068 () Bool)

(declare-fun e!4103884 () Bool)

(declare-fun tp!1861820 () Bool)

(declare-fun tp!1861821 () Bool)

(assert (=> b!6800068 (= e!4103884 (and tp!1861820 tp!1861821))))

(declare-fun b!6800067 () Bool)

(assert (=> b!6800067 (= e!4103884 tp_is_empty!42489)))

(declare-fun b!6800069 () Bool)

(declare-fun tp!1861824 () Bool)

(assert (=> b!6800069 (= e!4103884 tp!1861824)))

(assert (=> b!6799123 (= tp!1861636 e!4103884)))

(declare-fun b!6800070 () Bool)

(declare-fun tp!1861822 () Bool)

(declare-fun tp!1861823 () Bool)

(assert (=> b!6800070 (= e!4103884 (and tp!1861822 tp!1861823))))

(assert (= (and b!6799123 (is-ElementMatch!16618 (h!72477 (exprs!6502 setElem!46586)))) b!6800067))

(assert (= (and b!6799123 (is-Concat!25463 (h!72477 (exprs!6502 setElem!46586)))) b!6800068))

(assert (= (and b!6799123 (is-Star!16618 (h!72477 (exprs!6502 setElem!46586)))) b!6800069))

(assert (= (and b!6799123 (is-Union!16618 (h!72477 (exprs!6502 setElem!46586)))) b!6800070))

(declare-fun b!6800071 () Bool)

(declare-fun e!4103885 () Bool)

(declare-fun tp!1861825 () Bool)

(declare-fun tp!1861826 () Bool)

(assert (=> b!6800071 (= e!4103885 (and tp!1861825 tp!1861826))))

(assert (=> b!6799123 (= tp!1861637 e!4103885)))

(assert (= (and b!6799123 (is-Cons!66029 (t!379882 (exprs!6502 setElem!46586)))) b!6800071))

(declare-fun b!6800073 () Bool)

(declare-fun e!4103886 () Bool)

(declare-fun tp!1861827 () Bool)

(declare-fun tp!1861828 () Bool)

(assert (=> b!6800073 (= e!4103886 (and tp!1861827 tp!1861828))))

(declare-fun b!6800072 () Bool)

(assert (=> b!6800072 (= e!4103886 tp_is_empty!42489)))

(declare-fun b!6800074 () Bool)

(declare-fun tp!1861831 () Bool)

(assert (=> b!6800074 (= e!4103886 tp!1861831)))

(assert (=> b!6799099 (= tp!1861609 e!4103886)))

(declare-fun b!6800075 () Bool)

(declare-fun tp!1861829 () Bool)

(declare-fun tp!1861830 () Bool)

(assert (=> b!6800075 (= e!4103886 (and tp!1861829 tp!1861830))))

(assert (= (and b!6799099 (is-ElementMatch!16618 (regOne!33748 (reg!16947 r!7292)))) b!6800072))

(assert (= (and b!6799099 (is-Concat!25463 (regOne!33748 (reg!16947 r!7292)))) b!6800073))

(assert (= (and b!6799099 (is-Star!16618 (regOne!33748 (reg!16947 r!7292)))) b!6800074))

(assert (= (and b!6799099 (is-Union!16618 (regOne!33748 (reg!16947 r!7292)))) b!6800075))

(declare-fun b!6800077 () Bool)

(declare-fun e!4103887 () Bool)

(declare-fun tp!1861832 () Bool)

(declare-fun tp!1861833 () Bool)

(assert (=> b!6800077 (= e!4103887 (and tp!1861832 tp!1861833))))

(declare-fun b!6800076 () Bool)

(assert (=> b!6800076 (= e!4103887 tp_is_empty!42489)))

(declare-fun b!6800078 () Bool)

(declare-fun tp!1861836 () Bool)

(assert (=> b!6800078 (= e!4103887 tp!1861836)))

(assert (=> b!6799099 (= tp!1861610 e!4103887)))

(declare-fun b!6800079 () Bool)

(declare-fun tp!1861834 () Bool)

(declare-fun tp!1861835 () Bool)

(assert (=> b!6800079 (= e!4103887 (and tp!1861834 tp!1861835))))

(assert (= (and b!6799099 (is-ElementMatch!16618 (regTwo!33748 (reg!16947 r!7292)))) b!6800076))

(assert (= (and b!6799099 (is-Concat!25463 (regTwo!33748 (reg!16947 r!7292)))) b!6800077))

(assert (= (and b!6799099 (is-Star!16618 (regTwo!33748 (reg!16947 r!7292)))) b!6800078))

(assert (= (and b!6799099 (is-Union!16618 (regTwo!33748 (reg!16947 r!7292)))) b!6800079))

(declare-fun b!6800081 () Bool)

(declare-fun e!4103888 () Bool)

(declare-fun tp!1861837 () Bool)

(declare-fun tp!1861838 () Bool)

(assert (=> b!6800081 (= e!4103888 (and tp!1861837 tp!1861838))))

(declare-fun b!6800080 () Bool)

(assert (=> b!6800080 (= e!4103888 tp_is_empty!42489)))

(declare-fun b!6800082 () Bool)

(declare-fun tp!1861841 () Bool)

(assert (=> b!6800082 (= e!4103888 tp!1861841)))

(assert (=> b!6799106 (= tp!1861618 e!4103888)))

(declare-fun b!6800083 () Bool)

(declare-fun tp!1861839 () Bool)

(declare-fun tp!1861840 () Bool)

(assert (=> b!6800083 (= e!4103888 (and tp!1861839 tp!1861840))))

(assert (= (and b!6799106 (is-ElementMatch!16618 (h!72477 (exprs!6502 (h!72479 zl!343))))) b!6800080))

(assert (= (and b!6799106 (is-Concat!25463 (h!72477 (exprs!6502 (h!72479 zl!343))))) b!6800081))

(assert (= (and b!6799106 (is-Star!16618 (h!72477 (exprs!6502 (h!72479 zl!343))))) b!6800082))

(assert (= (and b!6799106 (is-Union!16618 (h!72477 (exprs!6502 (h!72479 zl!343))))) b!6800083))

(declare-fun b!6800084 () Bool)

(declare-fun e!4103889 () Bool)

(declare-fun tp!1861842 () Bool)

(declare-fun tp!1861843 () Bool)

(assert (=> b!6800084 (= e!4103889 (and tp!1861842 tp!1861843))))

(assert (=> b!6799106 (= tp!1861619 e!4103889)))

(assert (= (and b!6799106 (is-Cons!66029 (t!379882 (exprs!6502 (h!72479 zl!343))))) b!6800084))

(declare-fun b!6800086 () Bool)

(declare-fun e!4103890 () Bool)

(declare-fun tp!1861844 () Bool)

(declare-fun tp!1861845 () Bool)

(assert (=> b!6800086 (= e!4103890 (and tp!1861844 tp!1861845))))

(declare-fun b!6800085 () Bool)

(assert (=> b!6800085 (= e!4103890 tp_is_empty!42489)))

(declare-fun b!6800087 () Bool)

(declare-fun tp!1861848 () Bool)

(assert (=> b!6800087 (= e!4103890 tp!1861848)))

(assert (=> b!6799100 (= tp!1861613 e!4103890)))

(declare-fun b!6800088 () Bool)

(declare-fun tp!1861846 () Bool)

(declare-fun tp!1861847 () Bool)

(assert (=> b!6800088 (= e!4103890 (and tp!1861846 tp!1861847))))

(assert (= (and b!6799100 (is-ElementMatch!16618 (reg!16947 (reg!16947 r!7292)))) b!6800085))

(assert (= (and b!6799100 (is-Concat!25463 (reg!16947 (reg!16947 r!7292)))) b!6800086))

(assert (= (and b!6799100 (is-Star!16618 (reg!16947 (reg!16947 r!7292)))) b!6800087))

(assert (= (and b!6799100 (is-Union!16618 (reg!16947 (reg!16947 r!7292)))) b!6800088))

(declare-fun b!6800090 () Bool)

(declare-fun e!4103891 () Bool)

(declare-fun tp!1861849 () Bool)

(declare-fun tp!1861850 () Bool)

(assert (=> b!6800090 (= e!4103891 (and tp!1861849 tp!1861850))))

(declare-fun b!6800089 () Bool)

(assert (=> b!6800089 (= e!4103891 tp_is_empty!42489)))

(declare-fun b!6800091 () Bool)

(declare-fun tp!1861853 () Bool)

(assert (=> b!6800091 (= e!4103891 tp!1861853)))

(assert (=> b!6799116 (= tp!1861626 e!4103891)))

(declare-fun b!6800092 () Bool)

(declare-fun tp!1861851 () Bool)

(declare-fun tp!1861852 () Bool)

(assert (=> b!6800092 (= e!4103891 (and tp!1861851 tp!1861852))))

(assert (= (and b!6799116 (is-ElementMatch!16618 (regOne!33748 (regOne!33749 r!7292)))) b!6800089))

(assert (= (and b!6799116 (is-Concat!25463 (regOne!33748 (regOne!33749 r!7292)))) b!6800090))

(assert (= (and b!6799116 (is-Star!16618 (regOne!33748 (regOne!33749 r!7292)))) b!6800091))

(assert (= (and b!6799116 (is-Union!16618 (regOne!33748 (regOne!33749 r!7292)))) b!6800092))

(declare-fun b!6800094 () Bool)

(declare-fun e!4103892 () Bool)

(declare-fun tp!1861854 () Bool)

(declare-fun tp!1861855 () Bool)

(assert (=> b!6800094 (= e!4103892 (and tp!1861854 tp!1861855))))

(declare-fun b!6800093 () Bool)

(assert (=> b!6800093 (= e!4103892 tp_is_empty!42489)))

(declare-fun b!6800095 () Bool)

(declare-fun tp!1861858 () Bool)

(assert (=> b!6800095 (= e!4103892 tp!1861858)))

(assert (=> b!6799116 (= tp!1861627 e!4103892)))

(declare-fun b!6800096 () Bool)

(declare-fun tp!1861856 () Bool)

(declare-fun tp!1861857 () Bool)

(assert (=> b!6800096 (= e!4103892 (and tp!1861856 tp!1861857))))

(assert (= (and b!6799116 (is-ElementMatch!16618 (regTwo!33748 (regOne!33749 r!7292)))) b!6800093))

(assert (= (and b!6799116 (is-Concat!25463 (regTwo!33748 (regOne!33749 r!7292)))) b!6800094))

(assert (= (and b!6799116 (is-Star!16618 (regTwo!33748 (regOne!33749 r!7292)))) b!6800095))

(assert (= (and b!6799116 (is-Union!16618 (regTwo!33748 (regOne!33749 r!7292)))) b!6800096))

(declare-fun b!6800098 () Bool)

(declare-fun e!4103893 () Bool)

(declare-fun tp!1861859 () Bool)

(declare-fun tp!1861860 () Bool)

(assert (=> b!6800098 (= e!4103893 (and tp!1861859 tp!1861860))))

(declare-fun b!6800097 () Bool)

(assert (=> b!6800097 (= e!4103893 tp_is_empty!42489)))

(declare-fun b!6800099 () Bool)

(declare-fun tp!1861863 () Bool)

(assert (=> b!6800099 (= e!4103893 tp!1861863)))

(assert (=> b!6799118 (= tp!1861628 e!4103893)))

(declare-fun b!6800100 () Bool)

(declare-fun tp!1861861 () Bool)

(declare-fun tp!1861862 () Bool)

(assert (=> b!6800100 (= e!4103893 (and tp!1861861 tp!1861862))))

(assert (= (and b!6799118 (is-ElementMatch!16618 (regOne!33749 (regOne!33749 r!7292)))) b!6800097))

(assert (= (and b!6799118 (is-Concat!25463 (regOne!33749 (regOne!33749 r!7292)))) b!6800098))

(assert (= (and b!6799118 (is-Star!16618 (regOne!33749 (regOne!33749 r!7292)))) b!6800099))

(assert (= (and b!6799118 (is-Union!16618 (regOne!33749 (regOne!33749 r!7292)))) b!6800100))

(declare-fun b!6800102 () Bool)

(declare-fun e!4103894 () Bool)

(declare-fun tp!1861864 () Bool)

(declare-fun tp!1861865 () Bool)

(assert (=> b!6800102 (= e!4103894 (and tp!1861864 tp!1861865))))

(declare-fun b!6800101 () Bool)

(assert (=> b!6800101 (= e!4103894 tp_is_empty!42489)))

(declare-fun b!6800103 () Bool)

(declare-fun tp!1861868 () Bool)

(assert (=> b!6800103 (= e!4103894 tp!1861868)))

(assert (=> b!6799118 (= tp!1861629 e!4103894)))

(declare-fun b!6800104 () Bool)

(declare-fun tp!1861866 () Bool)

(declare-fun tp!1861867 () Bool)

(assert (=> b!6800104 (= e!4103894 (and tp!1861866 tp!1861867))))

(assert (= (and b!6799118 (is-ElementMatch!16618 (regTwo!33749 (regOne!33749 r!7292)))) b!6800101))

(assert (= (and b!6799118 (is-Concat!25463 (regTwo!33749 (regOne!33749 r!7292)))) b!6800102))

(assert (= (and b!6799118 (is-Star!16618 (regTwo!33749 (regOne!33749 r!7292)))) b!6800103))

(assert (= (and b!6799118 (is-Union!16618 (regTwo!33749 (regOne!33749 r!7292)))) b!6800104))

(declare-fun b!6800106 () Bool)

(declare-fun e!4103895 () Bool)

(declare-fun tp!1861869 () Bool)

(declare-fun tp!1861870 () Bool)

(assert (=> b!6800106 (= e!4103895 (and tp!1861869 tp!1861870))))

(declare-fun b!6800105 () Bool)

(assert (=> b!6800105 (= e!4103895 tp_is_empty!42489)))

(declare-fun b!6800107 () Bool)

(declare-fun tp!1861873 () Bool)

(assert (=> b!6800107 (= e!4103895 tp!1861873)))

(assert (=> b!6799101 (= tp!1861611 e!4103895)))

(declare-fun b!6800108 () Bool)

(declare-fun tp!1861871 () Bool)

(declare-fun tp!1861872 () Bool)

(assert (=> b!6800108 (= e!4103895 (and tp!1861871 tp!1861872))))

(assert (= (and b!6799101 (is-ElementMatch!16618 (regOne!33749 (reg!16947 r!7292)))) b!6800105))

(assert (= (and b!6799101 (is-Concat!25463 (regOne!33749 (reg!16947 r!7292)))) b!6800106))

(assert (= (and b!6799101 (is-Star!16618 (regOne!33749 (reg!16947 r!7292)))) b!6800107))

(assert (= (and b!6799101 (is-Union!16618 (regOne!33749 (reg!16947 r!7292)))) b!6800108))

(declare-fun b!6800110 () Bool)

(declare-fun e!4103896 () Bool)

(declare-fun tp!1861874 () Bool)

(declare-fun tp!1861875 () Bool)

(assert (=> b!6800110 (= e!4103896 (and tp!1861874 tp!1861875))))

(declare-fun b!6800109 () Bool)

(assert (=> b!6800109 (= e!4103896 tp_is_empty!42489)))

(declare-fun b!6800111 () Bool)

(declare-fun tp!1861878 () Bool)

(assert (=> b!6800111 (= e!4103896 tp!1861878)))

(assert (=> b!6799101 (= tp!1861612 e!4103896)))

(declare-fun b!6800112 () Bool)

(declare-fun tp!1861876 () Bool)

(declare-fun tp!1861877 () Bool)

(assert (=> b!6800112 (= e!4103896 (and tp!1861876 tp!1861877))))

(assert (= (and b!6799101 (is-ElementMatch!16618 (regTwo!33749 (reg!16947 r!7292)))) b!6800109))

(assert (= (and b!6799101 (is-Concat!25463 (regTwo!33749 (reg!16947 r!7292)))) b!6800110))

(assert (= (and b!6799101 (is-Star!16618 (regTwo!33749 (reg!16947 r!7292)))) b!6800111))

(assert (= (and b!6799101 (is-Union!16618 (regTwo!33749 (reg!16947 r!7292)))) b!6800112))

(declare-fun b!6800114 () Bool)

(declare-fun e!4103897 () Bool)

(declare-fun tp!1861879 () Bool)

(declare-fun tp!1861880 () Bool)

(assert (=> b!6800114 (= e!4103897 (and tp!1861879 tp!1861880))))

(declare-fun b!6800113 () Bool)

(assert (=> b!6800113 (= e!4103897 tp_is_empty!42489)))

(declare-fun b!6800115 () Bool)

(declare-fun tp!1861883 () Bool)

(assert (=> b!6800115 (= e!4103897 tp!1861883)))

(assert (=> b!6799117 (= tp!1861630 e!4103897)))

(declare-fun b!6800116 () Bool)

(declare-fun tp!1861881 () Bool)

(declare-fun tp!1861882 () Bool)

(assert (=> b!6800116 (= e!4103897 (and tp!1861881 tp!1861882))))

(assert (= (and b!6799117 (is-ElementMatch!16618 (reg!16947 (regOne!33749 r!7292)))) b!6800113))

(assert (= (and b!6799117 (is-Concat!25463 (reg!16947 (regOne!33749 r!7292)))) b!6800114))

(assert (= (and b!6799117 (is-Star!16618 (reg!16947 (regOne!33749 r!7292)))) b!6800115))

(assert (= (and b!6799117 (is-Union!16618 (reg!16947 (regOne!33749 r!7292)))) b!6800116))

(declare-fun b_lambda!256291 () Bool)

(assert (= b_lambda!256281 (or b!6798467 b_lambda!256291)))

(assert (=> d!2136669 d!2136469))

(declare-fun b_lambda!256293 () Bool)

(assert (= b_lambda!256275 (or b!6798465 b_lambda!256293)))

(declare-fun bs!1812551 () Bool)

(declare-fun d!2136833 () Bool)

(assert (= bs!1812551 (and d!2136833 b!6798465)))

(assert (=> bs!1812551 (= (dynLambda!26369 lambda!383325 (h!72477 (Cons!66029 (reg!16947 r!7292) Nil!66029))) (validRegex!8354 (h!72477 (Cons!66029 (reg!16947 r!7292) Nil!66029))))))

(declare-fun m!7546596 () Bool)

(assert (=> bs!1812551 m!7546596))

(assert (=> b!6799513 d!2136833))

(declare-fun b_lambda!256295 () Bool)

(assert (= b_lambda!256271 (or b!6798467 b_lambda!256295)))

(assert (=> d!2136577 d!2136473))

(declare-fun b_lambda!256297 () Bool)

(assert (= b_lambda!256287 (or b!6798465 b_lambda!256297)))

(assert (=> d!2136729 d!2136471))

(declare-fun b_lambda!256299 () Bool)

(assert (= b_lambda!256277 (or d!2136371 b_lambda!256299)))

(declare-fun bs!1812552 () Bool)

(declare-fun d!2136835 () Bool)

(assert (= bs!1812552 (and d!2136835 d!2136371)))

(assert (=> bs!1812552 (= (dynLambda!26369 lambda!383391 (h!72477 lt!2447703)) (validRegex!8354 (h!72477 lt!2447703)))))

(declare-fun m!7546598 () Bool)

(assert (=> bs!1812552 m!7546598))

(assert (=> b!6799561 d!2136835))

(declare-fun b_lambda!256301 () Bool)

(assert (= b_lambda!256289 (or d!2136309 b_lambda!256301)))

(declare-fun bs!1812553 () Bool)

(declare-fun d!2136837 () Bool)

(assert (= bs!1812553 (and d!2136837 d!2136309)))

(assert (=> bs!1812553 (= (dynLambda!26369 lambda!383358 (h!72477 (exprs!6502 (h!72479 zl!343)))) (validRegex!8354 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(declare-fun m!7546600 () Bool)

(assert (=> bs!1812553 m!7546600))

(assert (=> b!6799961 d!2136837))

(declare-fun b_lambda!256303 () Bool)

(assert (= b_lambda!256279 (or b!6798467 b_lambda!256303)))

(assert (=> d!2136643 d!2136475))

(declare-fun b_lambda!256305 () Bool)

(assert (= b_lambda!256285 (or d!2136465 b_lambda!256305)))

(declare-fun bs!1812554 () Bool)

(declare-fun d!2136839 () Bool)

(assert (= bs!1812554 (and d!2136839 d!2136465)))

(assert (=> bs!1812554 (= (dynLambda!26369 lambda!383415 (h!72477 (exprs!6502 (h!72479 zl!343)))) (validRegex!8354 (h!72477 (exprs!6502 (h!72479 zl!343)))))))

(assert (=> bs!1812554 m!7546600))

(assert (=> b!6799722 d!2136839))

(declare-fun b_lambda!256307 () Bool)

(assert (= b_lambda!256283 (or d!2136367 b_lambda!256307)))

(declare-fun bs!1812555 () Bool)

(declare-fun d!2136841 () Bool)

(assert (= bs!1812555 (and d!2136841 d!2136367)))

(assert (=> bs!1812555 (= (dynLambda!26369 lambda!383388 (h!72477 (unfocusZipperList!2039 zl!343))) (validRegex!8354 (h!72477 (unfocusZipperList!2039 zl!343))))))

(declare-fun m!7546602 () Bool)

(assert (=> bs!1812555 m!7546602))

(assert (=> b!6799702 d!2136841))

(declare-fun b_lambda!256309 () Bool)

(assert (= b_lambda!256273 (or b!6798465 b_lambda!256309)))

(declare-fun bs!1812556 () Bool)

(declare-fun d!2136843 () Bool)

(assert (= bs!1812556 (and d!2136843 b!6798465)))

(assert (=> bs!1812556 (= (dynLambda!26369 lambda!383325 (h!72477 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567))) (validRegex!8354 (h!72477 (++!14782 (Cons!66029 (reg!16947 r!7292) Nil!66029) lt!2447567))))))

(declare-fun m!7546604 () Bool)

(assert (=> bs!1812556 m!7546604))

(assert (=> b!6799511 d!2136843))

(declare-fun b_lambda!256311 () Bool)

(assert (= b_lambda!256267 (or b!6798467 b_lambda!256311)))

(assert (=> d!2136555 d!2136477))

(declare-fun b_lambda!256313 () Bool)

(assert (= b_lambda!256269 (or d!2136325 b_lambda!256313)))

(declare-fun bs!1812557 () Bool)

(declare-fun d!2136845 () Bool)

(assert (= bs!1812557 (and d!2136845 d!2136325)))

(assert (=> bs!1812557 (= (dynLambda!26369 lambda!383363 (h!72477 (exprs!6502 setElem!46586))) (validRegex!8354 (h!72477 (exprs!6502 setElem!46586))))))

(declare-fun m!7546606 () Bool)

(assert (=> bs!1812557 m!7546606))

(assert (=> b!6799474 d!2136845))

(push 1)

(assert (not bm!617754))

(assert (not b!6799545))

(assert (not b_lambda!256303))

(assert (not d!2136731))

(assert (not bm!617733))

(assert (not d!2136673))

(assert (not bm!617834))

(assert (not b!6799509))

(assert (not b!6799726))

(assert (not d!2136733))

(assert (not bm!617847))

(assert (not bs!1812553))

(assert (not bm!617800))

(assert (not bm!617748))

(assert (not bm!617749))

(assert (not d!2136751))

(assert (not b!6799568))

(assert (not bm!617742))

(assert (not b!6800094))

(assert (not b!6799806))

(assert (not setNonEmpty!46603))

(assert (not b!6799742))

(assert (not bs!1812556))

(assert (not b!6799996))

(assert (not b!6800060))

(assert (not b!6800111))

(assert (not d!2136597))

(assert (not b!6799935))

(assert (not bm!617841))

(assert (not b!6799619))

(assert (not bm!617792))

(assert (not b!6799698))

(assert (not b!6799956))

(assert (not b!6799920))

(assert (not b!6799593))

(assert (not bm!617746))

(assert (not b!6800026))

(assert (not b!6799855))

(assert (not d!2136779))

(assert (not bm!617797))

(assert (not b!6799512))

(assert (not bm!617771))

(assert (not bm!617751))

(assert (not b_lambda!256307))

(assert (not d!2136649))

(assert (not b!6799839))

(assert (not b!6800065))

(assert (not b!6799451))

(assert (not d!2136729))

(assert (not b!6800002))

(assert (not b_lambda!256253))

(assert (not bm!617840))

(assert (not b!6799587))

(assert (not b!6800086))

(assert (not b!6800062))

(assert (not b!6800106))

(assert (not bm!617833))

(assert (not b!6799849))

(assert (not bm!617839))

(assert (not b!6799663))

(assert (not b!6799445))

(assert (not d!2136773))

(assert (not b!6800077))

(assert (not d!2136583))

(assert (not d!2136601))

(assert (not b_lambda!256299))

(assert (not bm!617739))

(assert (not b!6799582))

(assert (not b!6799962))

(assert (not b!6800073))

(assert (not d!2136785))

(assert (not b!6799586))

(assert (not d!2136701))

(assert (not b!6799972))

(assert (not b!6799585))

(assert (not b!6799495))

(assert (not b!6799555))

(assert (not d!2136589))

(assert (not d!2136683))

(assert (not d!2136721))

(assert (not b!6800083))

(assert (not bm!617815))

(assert (not b!6799610))

(assert (not b!6800099))

(assert (not bm!617836))

(assert (not d!2136825))

(assert (not bm!617780))

(assert (not d!2136811))

(assert (not setNonEmpty!46601))

(assert (not b!6799646))

(assert (not b_lambda!256311))

(assert (not bm!617770))

(assert (not b!6800092))

(assert (not b!6800029))

(assert (not b!6799703))

(assert (not b!6800058))

(assert (not b!6800057))

(assert (not bm!617735))

(assert (not d!2136687))

(assert (not bm!617760))

(assert (not b!6800088))

(assert (not b!6800087))

(assert (not b!6799583))

(assert (not b!6799847))

(assert (not bm!617802))

(assert (not b!6799949))

(assert (not d!2136591))

(assert (not b!6800098))

(assert (not b!6800040))

(assert (not d!2136717))

(assert (not b!6800036))

(assert (not setNonEmpty!46602))

(assert (not b_lambda!256293))

(assert (not b!6799528))

(assert (not bm!617745))

(assert (not d!2136809))

(assert (not setNonEmpty!46598))

(assert tp_is_empty!42489)

(assert (not b!6799591))

(assert (not b!6800006))

(assert (not b!6799689))

(assert (not bm!617798))

(assert (not bs!1812555))

(assert (not b!6800015))

(assert (not bm!617776))

(assert (not b!6799456))

(assert (not d!2136603))

(assert (not b!6799670))

(assert (not b!6799656))

(assert (not b!6799614))

(assert (not bs!1812554))

(assert (not b!6799788))

(assert (not d!2136793))

(assert (not b!6800016))

(assert (not b!6799736))

(assert (not bm!617778))

(assert (not b!6799596))

(assert (not bs!1812552))

(assert (not b!6799452))

(assert (not b!6800061))

(assert (not b!6799475))

(assert (not b!6799848))

(assert (not b!6799746))

(assert (not bm!617784))

(assert (not b!6799492))

(assert (not b!6799803))

(assert (not b!6799510))

(assert (not b!6799817))

(assert (not b!6799489))

(assert (not b!6799976))

(assert (not b!6799612))

(assert (not d!2136653))

(assert (not d!2136639))

(assert (not d!2136789))

(assert (not b_lambda!256249))

(assert (not b!6799954))

(assert (not b!6800078))

(assert (not bm!617759))

(assert (not b!6799739))

(assert (not b!6800020))

(assert (not b!6800011))

(assert (not bm!617830))

(assert (not b!6800110))

(assert (not b!6799543))

(assert (not bm!617789))

(assert (not bm!617767))

(assert (not b!6800052))

(assert (not d!2136543))

(assert (not b!6800091))

(assert (not b!6799807))

(assert (not b!6799743))

(assert (not bm!617762))

(assert (not b!6799772))

(assert (not b!6799759))

(assert (not b!6799629))

(assert (not d!2136655))

(assert (not b!6800066))

(assert (not b!6799938))

(assert (not b!6800010))

(assert (not b!6799448))

(assert (not b!6799562))

(assert (not bm!617844))

(assert (not d!2136685))

(assert (not bm!617756))

(assert (not d!2136801))

(assert (not b!6800054))

(assert (not setNonEmpty!46605))

(assert (not d!2136787))

(assert (not bm!617765))

(assert (not d!2136557))

(assert (not b!6799968))

(assert (not b!6799486))

(assert (not b!6799985))

(assert (not d!2136629))

(assert (not d!2136709))

(assert (not b!6799574))

(assert (not b!6800027))

(assert (not b!6799547))

(assert (not b!6799799))

(assert (not b!6800112))

(assert (not d!2136575))

(assert (not d!2136745))

(assert (not b!6800037))

(assert (not b!6800007))

(assert (not b!6800012))

(assert (not b!6800116))

(assert (not b!6799532))

(assert (not d!2136693))

(assert (not b!6799464))

(assert (not b_lambda!256247))

(assert (not bm!617773))

(assert (not b!6800090))

(assert (not b!6799798))

(assert (not b!6799718))

(assert (not b!6800019))

(assert (not b!6799536))

(assert (not b!6799994))

(assert (not bm!617781))

(assert (not b!6800075))

(assert (not b!6799802))

(assert (not bm!617743))

(assert (not b!6799749))

(assert (not b!6800079))

(assert (not b!6800034))

(assert (not bm!617777))

(assert (not b!6799481))

(assert (not b!6799446))

(assert (not b!6800025))

(assert (not b!6799957))

(assert (not b!6800071))

(assert (not b!6800042))

(assert (not bm!617761))

(assert (not b!6799729))

(assert (not bm!617807))

(assert (not b!6799590))

(assert (not b!6800048))

(assert (not b!6800003))

(assert (not b!6800004))

(assert (not b_lambda!256297))

(assert (not b!6800102))

(assert (not b!6800108))

(assert (not b!6800056))

(assert (not bm!617786))

(assert (not b!6800103))

(assert (not d!2136827))

(assert (not b!6799770))

(assert (not d!2136667))

(assert (not bm!617806))

(assert (not b!6799709))

(assert (not bm!617813))

(assert (not d!2136577))

(assert (not b!6800050))

(assert (not bm!617796))

(assert (not bm!617805))

(assert (not b!6799740))

(assert (not d!2136637))

(assert (not b_lambda!256309))

(assert (not b!6799537))

(assert (not bm!617846))

(assert (not b!6799805))

(assert (not d!2136623))

(assert (not b!6799794))

(assert (not b!6799620))

(assert (not d!2136545))

(assert (not b!6799485))

(assert (not b!6800107))

(assert (not bm!617826))

(assert (not bm!617808))

(assert (not b!6799928))

(assert (not d!2136625))

(assert (not b!6799760))

(assert (not b!6800031))

(assert (not d!2136641))

(assert (not b!6800070))

(assert (not b_lambda!256301))

(assert (not b!6799756))

(assert (not bm!617810))

(assert (not b!6799955))

(assert (not b!6800064))

(assert (not b!6800104))

(assert (not d!2136605))

(assert (not b!6800074))

(assert (not setNonEmpty!46604))

(assert (not b!6800008))

(assert (not b!6800021))

(assert (not b!6799468))

(assert (not bm!617824))

(assert (not b!6799899))

(assert (not b!6799493))

(assert (not bm!617842))

(assert (not bm!617849))

(assert (not d!2136573))

(assert (not bm!617783))

(assert (not b!6799852))

(assert (not b!6799628))

(assert (not b!6800100))

(assert (not bm!617740))

(assert (not b!6799960))

(assert (not bm!617828))

(assert (not b!6799752))

(assert (not b!6800095))

(assert (not d!2136723))

(assert (not b!6799599))

(assert (not b!6800069))

(assert (not b_lambda!256295))

(assert (not d!2136813))

(assert (not d!2136705))

(assert (not b!6799890))

(assert (not b!6799450))

(assert (not b!6799508))

(assert (not b_lambda!256245))

(assert (not d!2136567))

(assert (not b!6799490))

(assert (not b!6800014))

(assert (not b!6799592))

(assert (not d!2136669))

(assert (not b!6800041))

(assert (not b!6800045))

(assert (not bm!617764))

(assert (not b!6799627))

(assert (not bm!617814))

(assert (not b!6799657))

(assert (not b!6800018))

(assert (not b!6800053))

(assert (not b!6800114))

(assert (not b!6799745))

(assert (not b!6799453))

(assert (not d!2136819))

(assert (not b!6800082))

(assert (not b!6800081))

(assert (not b!6799640))

(assert (not b!6799642))

(assert (not b_lambda!256305))

(assert (not b!6799735))

(assert (not b!6799758))

(assert (not bm!617758))

(assert (not b!6799588))

(assert (not b!6799469))

(assert (not b!6800044))

(assert (not b!6800022))

(assert (not b!6799950))

(assert (not d!2136761))

(assert (not b!6799667))

(assert (not b!6799924))

(assert (not bm!617787))

(assert (not b!6799723))

(assert (not b!6800032))

(assert (not d!2136831))

(assert (not b_lambda!256251))

(assert (not b!6799669))

(assert (not b!6799559))

(assert (not d!2136579))

(assert (not b!6800049))

(assert (not b!6799766))

(assert (not d!2136555))

(assert (not b!6799973))

(assert (not b!6799826))

(assert (not b!6799999))

(assert (not b!6800023))

(assert (not b!6800084))

(assert (not d!2136559))

(assert (not b!6800038))

(assert (not bm!617843))

(assert (not b!6799808))

(assert (not b!6799514))

(assert (not d!2136807))

(assert (not bm!617755))

(assert (not d!2136547))

(assert (not d!2136803))

(assert (not b!6799502))

(assert (not b!6800030))

(assert (not d!2136643))

(assert (not b!6800115))

(assert (not bm!617788))

(assert (not d!2136771))

(assert (not d!2136735))

(assert (not d!2136821))

(assert (not d!2136647))

(assert (not b!6799979))

(assert (not b!6800096))

(assert (not b!6799639))

(assert (not b!6799861))

(assert (not b!6799442))

(assert (not b!6799946))

(assert (not b!6799945))

(assert (not bs!1812557))

(assert (not b!6799859))

(assert (not b!6799660))

(assert (not b!6800068))

(assert (not b!6799780))

(assert (not bm!617795))

(assert (not b!6799578))

(assert (not b!6799579))

(assert (not b_lambda!256291))

(assert (not d!2136763))

(assert (not b!6799652))

(assert (not b_lambda!256313))

(assert (not b!6799744))

(assert (not bm!617790))

(assert (not bs!1812551))

(assert (not b!6799983))

(assert (not bm!617738))

(assert (not b!6800046))

(assert (not b!6799952))

(assert (not b!6799763))

(assert (not b!6799441))

(assert (not b!6799494))

(assert (not d!2136727))

(assert (not b!6799823))

(assert (not d!2136743))

(assert (not b!6799843))

(assert (not b!6800035))

(assert (not d!2136569))

(assert (not b!6799678))

(assert (not b!6799998))

(assert (not d!2136799))

(assert (not b!6799784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

