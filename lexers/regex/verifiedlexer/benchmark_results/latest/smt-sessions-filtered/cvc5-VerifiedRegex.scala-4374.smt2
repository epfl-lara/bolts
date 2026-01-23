; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232522 () Bool)

(assert start!232522)

(declare-fun b!2369280 () Bool)

(assert (=> b!2369280 true))

(assert (=> b!2369280 true))

(declare-fun lambda!87620 () Int)

(declare-fun lambda!87619 () Int)

(assert (=> b!2369280 (not (= lambda!87620 lambda!87619))))

(assert (=> b!2369280 true))

(assert (=> b!2369280 true))

(declare-fun b!2369275 () Bool)

(declare-fun e!1512366 () Bool)

(declare-fun tp!757494 () Bool)

(declare-fun tp!757499 () Bool)

(assert (=> b!2369275 (= e!1512366 (and tp!757494 tp!757499))))

(declare-fun b!2369276 () Bool)

(declare-fun tp!757495 () Bool)

(declare-fun tp!757496 () Bool)

(assert (=> b!2369276 (= e!1512366 (and tp!757495 tp!757496))))

(declare-fun b!2369277 () Bool)

(declare-fun res!1005588 () Bool)

(declare-fun e!1512363 () Bool)

(assert (=> b!2369277 (=> res!1005588 e!1512363)))

(declare-datatypes ((C!14038 0))(
  ( (C!14039 (val!8261 Int)) )
))
(declare-datatypes ((Regex!6940 0))(
  ( (ElementMatch!6940 (c!376576 C!14038)) (Concat!11576 (regOne!14392 Regex!6940) (regTwo!14392 Regex!6940)) (EmptyExpr!6940) (Star!6940 (reg!7269 Regex!6940)) (EmptyLang!6940) (Union!6940 (regOne!14393 Regex!6940) (regTwo!14393 Regex!6940)) )
))
(declare-datatypes ((List!28118 0))(
  ( (Nil!28020) (Cons!28020 (h!33421 Regex!6940) (t!208095 List!28118)) )
))
(declare-fun lt!865736 () List!28118)

(declare-fun generalisedConcat!41 (List!28118) Regex!6940)

(assert (=> b!2369277 (= res!1005588 (not (= (generalisedConcat!41 lt!865736) EmptyExpr!6940)))))

(declare-fun b!2369278 () Bool)

(declare-fun e!1512361 () Bool)

(assert (=> b!2369278 (= e!1512363 e!1512361)))

(declare-fun res!1005591 () Bool)

(assert (=> b!2369278 (=> res!1005591 e!1512361)))

(declare-fun lt!865730 () Regex!6940)

(declare-datatypes ((List!28119 0))(
  ( (Nil!28021) (Cons!28021 (h!33422 C!14038) (t!208096 List!28119)) )
))
(declare-fun s!9460 () List!28119)

(declare-fun matchR!3057 (Regex!6940 List!28119) Bool)

(assert (=> b!2369278 (= res!1005591 (not (matchR!3057 lt!865730 s!9460)))))

(declare-fun l!9164 () List!28118)

(declare-fun head!5121 (List!28118) Regex!6940)

(assert (=> b!2369278 (= lt!865730 (head!5121 l!9164))))

(declare-fun b!2369279 () Bool)

(declare-fun lt!865733 () Regex!6940)

(declare-fun validRegex!2669 (Regex!6940) Bool)

(assert (=> b!2369279 (= e!1512361 (validRegex!2669 lt!865733))))

(declare-fun ++!6900 (List!28119 List!28119) List!28119)

(assert (=> b!2369279 (matchR!3057 lt!865733 (++!6900 s!9460 Nil!28021))))

(assert (=> b!2369279 (= lt!865733 (Concat!11576 lt!865730 EmptyExpr!6940))))

(declare-datatypes ((Unit!40915 0))(
  ( (Unit!40916) )
))
(declare-fun lt!865727 () Unit!40915)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!13 (Regex!6940 Regex!6940 List!28119 List!28119) Unit!40915)

(assert (=> b!2369279 (= lt!865727 (lemmaTwoRegexMatchThenConcatMatchesConcatString!13 lt!865730 EmptyExpr!6940 s!9460 Nil!28021))))

(declare-fun e!1512365 () Bool)

(declare-fun e!1512362 () Bool)

(assert (=> b!2369280 (= e!1512365 e!1512362)))

(declare-fun res!1005592 () Bool)

(assert (=> b!2369280 (=> res!1005592 e!1512362)))

(declare-fun lt!865735 () Bool)

(declare-fun lt!865728 () Bool)

(assert (=> b!2369280 (= res!1005592 (not (= lt!865735 lt!865728)))))

(declare-fun Exists!1002 (Int) Bool)

(assert (=> b!2369280 (= (Exists!1002 lambda!87619) (Exists!1002 lambda!87620))))

(declare-fun lt!865734 () Unit!40915)

(declare-fun r!13927 () Regex!6940)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!341 (Regex!6940 Regex!6940 List!28119) Unit!40915)

(assert (=> b!2369280 (= lt!865734 (lemmaExistCutMatchRandMatchRSpecEquivalent!341 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460))))

(assert (=> b!2369280 (= lt!865728 (Exists!1002 lambda!87619))))

(declare-datatypes ((tuple2!27744 0))(
  ( (tuple2!27745 (_1!16413 List!28119) (_2!16413 List!28119)) )
))
(declare-datatypes ((Option!5483 0))(
  ( (None!5482) (Some!5482 (v!30890 tuple2!27744)) )
))
(declare-fun isDefined!4311 (Option!5483) Bool)

(declare-fun findConcatSeparation!591 (Regex!6940 Regex!6940 List!28119 List!28119 List!28119) Option!5483)

(assert (=> b!2369280 (= lt!865728 (isDefined!4311 (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) Nil!28021 s!9460 s!9460)))))

(declare-fun lt!865731 () Unit!40915)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!591 (Regex!6940 Regex!6940 List!28119) Unit!40915)

(assert (=> b!2369280 (= lt!865731 (lemmaFindConcatSeparationEquivalentToExists!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460))))

(declare-fun b!2369282 () Bool)

(declare-fun e!1512364 () Bool)

(assert (=> b!2369282 (= e!1512364 (not e!1512365))))

(declare-fun res!1005590 () Bool)

(assert (=> b!2369282 (=> res!1005590 e!1512365)))

(assert (=> b!2369282 (= res!1005590 (not (is-Concat!11576 r!13927)))))

(declare-fun lt!865729 () Bool)

(assert (=> b!2369282 (= lt!865729 lt!865735)))

(declare-fun matchRSpec!789 (Regex!6940 List!28119) Bool)

(assert (=> b!2369282 (= lt!865735 (matchRSpec!789 r!13927 s!9460))))

(assert (=> b!2369282 (= lt!865729 (matchR!3057 r!13927 s!9460))))

(declare-fun lt!865732 () Unit!40915)

(declare-fun mainMatchTheorem!789 (Regex!6940 List!28119) Unit!40915)

(assert (=> b!2369282 (= lt!865732 (mainMatchTheorem!789 r!13927 s!9460))))

(declare-fun b!2369283 () Bool)

(declare-fun tp_is_empty!11293 () Bool)

(assert (=> b!2369283 (= e!1512366 tp_is_empty!11293)))

(declare-fun b!2369284 () Bool)

(declare-fun e!1512368 () Bool)

(declare-fun tp!757493 () Bool)

(declare-fun tp!757497 () Bool)

(assert (=> b!2369284 (= e!1512368 (and tp!757493 tp!757497))))

(declare-fun b!2369285 () Bool)

(assert (=> b!2369285 (= e!1512362 e!1512363)))

(declare-fun res!1005586 () Bool)

(assert (=> b!2369285 (=> res!1005586 e!1512363)))

(declare-fun isEmpty!15947 (List!28118) Bool)

(assert (=> b!2369285 (= res!1005586 (not (isEmpty!15947 lt!865736)))))

(declare-fun tail!3391 (List!28118) List!28118)

(assert (=> b!2369285 (= lt!865736 (tail!3391 l!9164))))

(declare-fun b!2369286 () Bool)

(declare-fun res!1005585 () Bool)

(assert (=> b!2369286 (=> (not res!1005585) (not e!1512364))))

(assert (=> b!2369286 (= res!1005585 (= r!13927 (generalisedConcat!41 l!9164)))))

(declare-fun b!2369287 () Bool)

(declare-fun res!1005589 () Bool)

(assert (=> b!2369287 (=> res!1005589 e!1512362)))

(assert (=> b!2369287 (= res!1005589 (isEmpty!15947 l!9164))))

(declare-fun b!2369288 () Bool)

(declare-fun tp!757498 () Bool)

(assert (=> b!2369288 (= e!1512366 tp!757498)))

(declare-fun b!2369281 () Bool)

(declare-fun e!1512367 () Bool)

(declare-fun tp!757492 () Bool)

(assert (=> b!2369281 (= e!1512367 (and tp_is_empty!11293 tp!757492))))

(declare-fun res!1005587 () Bool)

(assert (=> start!232522 (=> (not res!1005587) (not e!1512364))))

(declare-fun lambda!87618 () Int)

(declare-fun forall!5574 (List!28118 Int) Bool)

(assert (=> start!232522 (= res!1005587 (forall!5574 l!9164 lambda!87618))))

(assert (=> start!232522 e!1512364))

(assert (=> start!232522 e!1512368))

(assert (=> start!232522 e!1512366))

(assert (=> start!232522 e!1512367))

(assert (= (and start!232522 res!1005587) b!2369286))

(assert (= (and b!2369286 res!1005585) b!2369282))

(assert (= (and b!2369282 (not res!1005590)) b!2369280))

(assert (= (and b!2369280 (not res!1005592)) b!2369287))

(assert (= (and b!2369287 (not res!1005589)) b!2369285))

(assert (= (and b!2369285 (not res!1005586)) b!2369277))

(assert (= (and b!2369277 (not res!1005588)) b!2369278))

(assert (= (and b!2369278 (not res!1005591)) b!2369279))

(assert (= (and start!232522 (is-Cons!28020 l!9164)) b!2369284))

(assert (= (and start!232522 (is-ElementMatch!6940 r!13927)) b!2369283))

(assert (= (and start!232522 (is-Concat!11576 r!13927)) b!2369275))

(assert (= (and start!232522 (is-Star!6940 r!13927)) b!2369288))

(assert (= (and start!232522 (is-Union!6940 r!13927)) b!2369276))

(assert (= (and start!232522 (is-Cons!28021 s!9460)) b!2369281))

(declare-fun m!2777759 () Bool)

(assert (=> b!2369279 m!2777759))

(declare-fun m!2777761 () Bool)

(assert (=> b!2369279 m!2777761))

(assert (=> b!2369279 m!2777761))

(declare-fun m!2777763 () Bool)

(assert (=> b!2369279 m!2777763))

(declare-fun m!2777765 () Bool)

(assert (=> b!2369279 m!2777765))

(declare-fun m!2777767 () Bool)

(assert (=> b!2369287 m!2777767))

(declare-fun m!2777769 () Bool)

(assert (=> b!2369286 m!2777769))

(declare-fun m!2777771 () Bool)

(assert (=> b!2369285 m!2777771))

(declare-fun m!2777773 () Bool)

(assert (=> b!2369285 m!2777773))

(declare-fun m!2777775 () Bool)

(assert (=> b!2369277 m!2777775))

(declare-fun m!2777777 () Bool)

(assert (=> b!2369282 m!2777777))

(declare-fun m!2777779 () Bool)

(assert (=> b!2369282 m!2777779))

(declare-fun m!2777781 () Bool)

(assert (=> b!2369282 m!2777781))

(declare-fun m!2777783 () Bool)

(assert (=> start!232522 m!2777783))

(declare-fun m!2777785 () Bool)

(assert (=> b!2369278 m!2777785))

(declare-fun m!2777787 () Bool)

(assert (=> b!2369278 m!2777787))

(declare-fun m!2777789 () Bool)

(assert (=> b!2369280 m!2777789))

(declare-fun m!2777791 () Bool)

(assert (=> b!2369280 m!2777791))

(declare-fun m!2777793 () Bool)

(assert (=> b!2369280 m!2777793))

(assert (=> b!2369280 m!2777789))

(declare-fun m!2777795 () Bool)

(assert (=> b!2369280 m!2777795))

(declare-fun m!2777797 () Bool)

(assert (=> b!2369280 m!2777797))

(declare-fun m!2777799 () Bool)

(assert (=> b!2369280 m!2777799))

(assert (=> b!2369280 m!2777795))

(push 1)

(assert (not b!2369282))

(assert (not b!2369275))

(assert (not b!2369281))

(assert (not b!2369277))

(assert (not b!2369280))

(assert (not b!2369288))

(assert (not b!2369284))

(assert tp_is_empty!11293)

(assert (not b!2369278))

(assert (not b!2369276))

(assert (not b!2369287))

(assert (not b!2369285))

(assert (not b!2369286))

(assert (not b!2369279))

(assert (not start!232522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461137 () Bool)

(declare-fun b!2369390 () Bool)

(assert (= bs!461137 (and b!2369390 b!2369280)))

(declare-fun lambda!87636 () Int)

(assert (=> bs!461137 (not (= lambda!87636 lambda!87619))))

(assert (=> bs!461137 (not (= lambda!87636 lambda!87620))))

(assert (=> b!2369390 true))

(assert (=> b!2369390 true))

(declare-fun bs!461138 () Bool)

(declare-fun b!2369392 () Bool)

(assert (= bs!461138 (and b!2369392 b!2369280)))

(declare-fun lambda!87637 () Int)

(assert (=> bs!461138 (not (= lambda!87637 lambda!87619))))

(assert (=> bs!461138 (= lambda!87637 lambda!87620)))

(declare-fun bs!461139 () Bool)

(assert (= bs!461139 (and b!2369392 b!2369390)))

(assert (=> bs!461139 (not (= lambda!87637 lambda!87636))))

(assert (=> b!2369392 true))

(assert (=> b!2369392 true))

(declare-fun b!2369383 () Bool)

(declare-fun e!1512422 () Bool)

(assert (=> b!2369383 (= e!1512422 (matchRSpec!789 (regTwo!14393 r!13927) s!9460))))

(declare-fun b!2369384 () Bool)

(declare-fun e!1512418 () Bool)

(assert (=> b!2369384 (= e!1512418 e!1512422)))

(declare-fun res!1005645 () Bool)

(assert (=> b!2369384 (= res!1005645 (matchRSpec!789 (regOne!14393 r!13927) s!9460))))

(assert (=> b!2369384 (=> res!1005645 e!1512422)))

(declare-fun b!2369385 () Bool)

(declare-fun e!1512420 () Bool)

(assert (=> b!2369385 (= e!1512418 e!1512420)))

(declare-fun c!376588 () Bool)

(assert (=> b!2369385 (= c!376588 (is-Star!6940 r!13927))))

(declare-fun b!2369386 () Bool)

(declare-fun e!1512417 () Bool)

(declare-fun call!144077 () Bool)

(assert (=> b!2369386 (= e!1512417 call!144077)))

(declare-fun b!2369387 () Bool)

(declare-fun e!1512423 () Bool)

(assert (=> b!2369387 (= e!1512417 e!1512423)))

(declare-fun res!1005646 () Bool)

(assert (=> b!2369387 (= res!1005646 (not (is-EmptyLang!6940 r!13927)))))

(assert (=> b!2369387 (=> (not res!1005646) (not e!1512423))))

(declare-fun b!2369388 () Bool)

(declare-fun c!376587 () Bool)

(assert (=> b!2369388 (= c!376587 (is-ElementMatch!6940 r!13927))))

(declare-fun e!1512419 () Bool)

(assert (=> b!2369388 (= e!1512423 e!1512419)))

(declare-fun b!2369389 () Bool)

(declare-fun c!376586 () Bool)

(assert (=> b!2369389 (= c!376586 (is-Union!6940 r!13927))))

(assert (=> b!2369389 (= e!1512419 e!1512418)))

(declare-fun e!1512421 () Bool)

(declare-fun call!144078 () Bool)

(assert (=> b!2369390 (= e!1512421 call!144078)))

(declare-fun d!695123 () Bool)

(declare-fun c!376589 () Bool)

(assert (=> d!695123 (= c!376589 (is-EmptyExpr!6940 r!13927))))

(assert (=> d!695123 (= (matchRSpec!789 r!13927 s!9460) e!1512417)))

(declare-fun b!2369391 () Bool)

(declare-fun res!1005647 () Bool)

(assert (=> b!2369391 (=> res!1005647 e!1512421)))

(assert (=> b!2369391 (= res!1005647 call!144077)))

(assert (=> b!2369391 (= e!1512420 e!1512421)))

(assert (=> b!2369392 (= e!1512420 call!144078)))

(declare-fun bm!144072 () Bool)

(assert (=> bm!144072 (= call!144078 (Exists!1002 (ite c!376588 lambda!87636 lambda!87637)))))

(declare-fun b!2369393 () Bool)

(assert (=> b!2369393 (= e!1512419 (= s!9460 (Cons!28021 (c!376576 r!13927) Nil!28021)))))

(declare-fun bm!144073 () Bool)

(declare-fun isEmpty!15949 (List!28119) Bool)

(assert (=> bm!144073 (= call!144077 (isEmpty!15949 s!9460))))

(assert (= (and d!695123 c!376589) b!2369386))

(assert (= (and d!695123 (not c!376589)) b!2369387))

(assert (= (and b!2369387 res!1005646) b!2369388))

(assert (= (and b!2369388 c!376587) b!2369393))

(assert (= (and b!2369388 (not c!376587)) b!2369389))

(assert (= (and b!2369389 c!376586) b!2369384))

(assert (= (and b!2369389 (not c!376586)) b!2369385))

(assert (= (and b!2369384 (not res!1005645)) b!2369383))

(assert (= (and b!2369385 c!376588) b!2369391))

(assert (= (and b!2369385 (not c!376588)) b!2369392))

(assert (= (and b!2369391 (not res!1005647)) b!2369390))

(assert (= (or b!2369390 b!2369392) bm!144072))

(assert (= (or b!2369386 b!2369391) bm!144073))

(declare-fun m!2777843 () Bool)

(assert (=> b!2369383 m!2777843))

(declare-fun m!2777845 () Bool)

(assert (=> b!2369384 m!2777845))

(declare-fun m!2777847 () Bool)

(assert (=> bm!144072 m!2777847))

(declare-fun m!2777849 () Bool)

(assert (=> bm!144073 m!2777849))

(assert (=> b!2369282 d!695123))

(declare-fun b!2369422 () Bool)

(declare-fun res!1005664 () Bool)

(declare-fun e!1512442 () Bool)

(assert (=> b!2369422 (=> res!1005664 e!1512442)))

(declare-fun tail!3393 (List!28119) List!28119)

(assert (=> b!2369422 (= res!1005664 (not (isEmpty!15949 (tail!3393 s!9460))))))

(declare-fun b!2369423 () Bool)

(declare-fun res!1005666 () Bool)

(declare-fun e!1512439 () Bool)

(assert (=> b!2369423 (=> (not res!1005666) (not e!1512439))))

(assert (=> b!2369423 (= res!1005666 (isEmpty!15949 (tail!3393 s!9460)))))

(declare-fun b!2369424 () Bool)

(declare-fun e!1512440 () Bool)

(declare-fun lt!865769 () Bool)

(declare-fun call!144081 () Bool)

(assert (=> b!2369424 (= e!1512440 (= lt!865769 call!144081))))

(declare-fun b!2369425 () Bool)

(declare-fun head!5123 (List!28119) C!14038)

(assert (=> b!2369425 (= e!1512439 (= (head!5123 s!9460) (c!376576 r!13927)))))

(declare-fun b!2369426 () Bool)

(declare-fun e!1512438 () Bool)

(declare-fun e!1512443 () Bool)

(assert (=> b!2369426 (= e!1512438 e!1512443)))

(declare-fun res!1005671 () Bool)

(assert (=> b!2369426 (=> (not res!1005671) (not e!1512443))))

(assert (=> b!2369426 (= res!1005671 (not lt!865769))))

(declare-fun b!2369427 () Bool)

(declare-fun res!1005665 () Bool)

(assert (=> b!2369427 (=> res!1005665 e!1512438)))

(assert (=> b!2369427 (= res!1005665 e!1512439)))

(declare-fun res!1005667 () Bool)

(assert (=> b!2369427 (=> (not res!1005667) (not e!1512439))))

(assert (=> b!2369427 (= res!1005667 lt!865769)))

(declare-fun d!695125 () Bool)

(assert (=> d!695125 e!1512440))

(declare-fun c!376597 () Bool)

(assert (=> d!695125 (= c!376597 (is-EmptyExpr!6940 r!13927))))

(declare-fun e!1512441 () Bool)

(assert (=> d!695125 (= lt!865769 e!1512441)))

(declare-fun c!376598 () Bool)

(assert (=> d!695125 (= c!376598 (isEmpty!15949 s!9460))))

(assert (=> d!695125 (validRegex!2669 r!13927)))

(assert (=> d!695125 (= (matchR!3057 r!13927 s!9460) lt!865769)))

(declare-fun b!2369428 () Bool)

(declare-fun res!1005670 () Bool)

(assert (=> b!2369428 (=> res!1005670 e!1512438)))

(assert (=> b!2369428 (= res!1005670 (not (is-ElementMatch!6940 r!13927)))))

(declare-fun e!1512444 () Bool)

(assert (=> b!2369428 (= e!1512444 e!1512438)))

(declare-fun b!2369429 () Bool)

(assert (=> b!2369429 (= e!1512440 e!1512444)))

(declare-fun c!376596 () Bool)

(assert (=> b!2369429 (= c!376596 (is-EmptyLang!6940 r!13927))))

(declare-fun b!2369430 () Bool)

(assert (=> b!2369430 (= e!1512444 (not lt!865769))))

(declare-fun b!2369431 () Bool)

(assert (=> b!2369431 (= e!1512443 e!1512442)))

(declare-fun res!1005668 () Bool)

(assert (=> b!2369431 (=> res!1005668 e!1512442)))

(assert (=> b!2369431 (= res!1005668 call!144081)))

(declare-fun bm!144076 () Bool)

(assert (=> bm!144076 (= call!144081 (isEmpty!15949 s!9460))))

(declare-fun b!2369432 () Bool)

(declare-fun res!1005669 () Bool)

(assert (=> b!2369432 (=> (not res!1005669) (not e!1512439))))

(assert (=> b!2369432 (= res!1005669 (not call!144081))))

(declare-fun b!2369433 () Bool)

(declare-fun derivativeStep!1657 (Regex!6940 C!14038) Regex!6940)

(assert (=> b!2369433 (= e!1512441 (matchR!3057 (derivativeStep!1657 r!13927 (head!5123 s!9460)) (tail!3393 s!9460)))))

(declare-fun b!2369434 () Bool)

(assert (=> b!2369434 (= e!1512442 (not (= (head!5123 s!9460) (c!376576 r!13927))))))

(declare-fun b!2369435 () Bool)

(declare-fun nullable!1999 (Regex!6940) Bool)

(assert (=> b!2369435 (= e!1512441 (nullable!1999 r!13927))))

(assert (= (and d!695125 c!376598) b!2369435))

(assert (= (and d!695125 (not c!376598)) b!2369433))

(assert (= (and d!695125 c!376597) b!2369424))

(assert (= (and d!695125 (not c!376597)) b!2369429))

(assert (= (and b!2369429 c!376596) b!2369430))

(assert (= (and b!2369429 (not c!376596)) b!2369428))

(assert (= (and b!2369428 (not res!1005670)) b!2369427))

(assert (= (and b!2369427 res!1005667) b!2369432))

(assert (= (and b!2369432 res!1005669) b!2369423))

(assert (= (and b!2369423 res!1005666) b!2369425))

(assert (= (and b!2369427 (not res!1005665)) b!2369426))

(assert (= (and b!2369426 res!1005671) b!2369431))

(assert (= (and b!2369431 (not res!1005668)) b!2369422))

(assert (= (and b!2369422 (not res!1005664)) b!2369434))

(assert (= (or b!2369424 b!2369432 b!2369431) bm!144076))

(declare-fun m!2777853 () Bool)

(assert (=> b!2369423 m!2777853))

(assert (=> b!2369423 m!2777853))

(declare-fun m!2777855 () Bool)

(assert (=> b!2369423 m!2777855))

(declare-fun m!2777857 () Bool)

(assert (=> b!2369435 m!2777857))

(declare-fun m!2777859 () Bool)

(assert (=> b!2369425 m!2777859))

(assert (=> b!2369433 m!2777859))

(assert (=> b!2369433 m!2777859))

(declare-fun m!2777861 () Bool)

(assert (=> b!2369433 m!2777861))

(assert (=> b!2369433 m!2777853))

(assert (=> b!2369433 m!2777861))

(assert (=> b!2369433 m!2777853))

(declare-fun m!2777863 () Bool)

(assert (=> b!2369433 m!2777863))

(assert (=> bm!144076 m!2777849))

(assert (=> b!2369422 m!2777853))

(assert (=> b!2369422 m!2777853))

(assert (=> b!2369422 m!2777855))

(assert (=> b!2369434 m!2777859))

(assert (=> d!695125 m!2777849))

(declare-fun m!2777865 () Bool)

(assert (=> d!695125 m!2777865))

(assert (=> b!2369282 d!695125))

(declare-fun d!695131 () Bool)

(assert (=> d!695131 (= (matchR!3057 r!13927 s!9460) (matchRSpec!789 r!13927 s!9460))))

(declare-fun lt!865772 () Unit!40915)

(declare-fun choose!13773 (Regex!6940 List!28119) Unit!40915)

(assert (=> d!695131 (= lt!865772 (choose!13773 r!13927 s!9460))))

(assert (=> d!695131 (validRegex!2669 r!13927)))

(assert (=> d!695131 (= (mainMatchTheorem!789 r!13927 s!9460) lt!865772)))

(declare-fun bs!461141 () Bool)

(assert (= bs!461141 d!695131))

(assert (=> bs!461141 m!2777779))

(assert (=> bs!461141 m!2777777))

(declare-fun m!2777867 () Bool)

(assert (=> bs!461141 m!2777867))

(assert (=> bs!461141 m!2777865))

(assert (=> b!2369282 d!695131))

(declare-fun bs!461142 () Bool)

(declare-fun d!695133 () Bool)

(assert (= bs!461142 (and d!695133 start!232522)))

(declare-fun lambda!87643 () Int)

(assert (=> bs!461142 (= lambda!87643 lambda!87618)))

(declare-fun b!2369460 () Bool)

(declare-fun e!1512462 () Bool)

(declare-fun e!1512464 () Bool)

(assert (=> b!2369460 (= e!1512462 e!1512464)))

(declare-fun c!376607 () Bool)

(assert (=> b!2369460 (= c!376607 (isEmpty!15947 (tail!3391 lt!865736)))))

(declare-fun b!2369462 () Bool)

(declare-fun lt!865778 () Regex!6940)

(declare-fun isConcat!22 (Regex!6940) Bool)

(assert (=> b!2369462 (= e!1512464 (isConcat!22 lt!865778))))

(declare-fun b!2369463 () Bool)

(declare-fun e!1512463 () Regex!6940)

(declare-fun e!1512461 () Regex!6940)

(assert (=> b!2369463 (= e!1512463 e!1512461)))

(declare-fun c!376609 () Bool)

(assert (=> b!2369463 (= c!376609 (is-Cons!28020 lt!865736))))

(declare-fun b!2369464 () Bool)

(assert (=> b!2369464 (= e!1512461 (Concat!11576 (h!33421 lt!865736) (generalisedConcat!41 (t!208095 lt!865736))))))

(declare-fun b!2369465 () Bool)

(assert (=> b!2369465 (= e!1512463 (h!33421 lt!865736))))

(declare-fun b!2369466 () Bool)

(assert (=> b!2369466 (= e!1512464 (= lt!865778 (head!5121 lt!865736)))))

(declare-fun b!2369467 () Bool)

(declare-fun e!1512459 () Bool)

(assert (=> b!2369467 (= e!1512459 e!1512462)))

(declare-fun c!376610 () Bool)

(assert (=> b!2369467 (= c!376610 (isEmpty!15947 lt!865736))))

(declare-fun b!2369461 () Bool)

(declare-fun isEmptyExpr!22 (Regex!6940) Bool)

(assert (=> b!2369461 (= e!1512462 (isEmptyExpr!22 lt!865778))))

(assert (=> d!695133 e!1512459))

(declare-fun res!1005680 () Bool)

(assert (=> d!695133 (=> (not res!1005680) (not e!1512459))))

(assert (=> d!695133 (= res!1005680 (validRegex!2669 lt!865778))))

(assert (=> d!695133 (= lt!865778 e!1512463)))

(declare-fun c!376608 () Bool)

(declare-fun e!1512460 () Bool)

(assert (=> d!695133 (= c!376608 e!1512460)))

(declare-fun res!1005681 () Bool)

(assert (=> d!695133 (=> (not res!1005681) (not e!1512460))))

(assert (=> d!695133 (= res!1005681 (is-Cons!28020 lt!865736))))

(assert (=> d!695133 (forall!5574 lt!865736 lambda!87643)))

(assert (=> d!695133 (= (generalisedConcat!41 lt!865736) lt!865778)))

(declare-fun b!2369468 () Bool)

(assert (=> b!2369468 (= e!1512460 (isEmpty!15947 (t!208095 lt!865736)))))

(declare-fun b!2369469 () Bool)

(assert (=> b!2369469 (= e!1512461 EmptyExpr!6940)))

(assert (= (and d!695133 res!1005681) b!2369468))

(assert (= (and d!695133 c!376608) b!2369465))

(assert (= (and d!695133 (not c!376608)) b!2369463))

(assert (= (and b!2369463 c!376609) b!2369464))

(assert (= (and b!2369463 (not c!376609)) b!2369469))

(assert (= (and d!695133 res!1005680) b!2369467))

(assert (= (and b!2369467 c!376610) b!2369461))

(assert (= (and b!2369467 (not c!376610)) b!2369460))

(assert (= (and b!2369460 c!376607) b!2369466))

(assert (= (and b!2369460 (not c!376607)) b!2369462))

(declare-fun m!2777869 () Bool)

(assert (=> b!2369464 m!2777869))

(declare-fun m!2777871 () Bool)

(assert (=> b!2369466 m!2777871))

(declare-fun m!2777873 () Bool)

(assert (=> b!2369461 m!2777873))

(declare-fun m!2777875 () Bool)

(assert (=> b!2369460 m!2777875))

(assert (=> b!2369460 m!2777875))

(declare-fun m!2777877 () Bool)

(assert (=> b!2369460 m!2777877))

(assert (=> b!2369467 m!2777771))

(declare-fun m!2777879 () Bool)

(assert (=> b!2369462 m!2777879))

(declare-fun m!2777881 () Bool)

(assert (=> b!2369468 m!2777881))

(declare-fun m!2777883 () Bool)

(assert (=> d!695133 m!2777883))

(declare-fun m!2777885 () Bool)

(assert (=> d!695133 m!2777885))

(assert (=> b!2369277 d!695133))

(declare-fun bs!461144 () Bool)

(declare-fun d!695135 () Bool)

(assert (= bs!461144 (and d!695135 start!232522)))

(declare-fun lambda!87644 () Int)

(assert (=> bs!461144 (= lambda!87644 lambda!87618)))

(declare-fun bs!461145 () Bool)

(assert (= bs!461145 (and d!695135 d!695133)))

(assert (=> bs!461145 (= lambda!87644 lambda!87643)))

(declare-fun b!2369470 () Bool)

(declare-fun e!1512468 () Bool)

(declare-fun e!1512470 () Bool)

(assert (=> b!2369470 (= e!1512468 e!1512470)))

(declare-fun c!376611 () Bool)

(assert (=> b!2369470 (= c!376611 (isEmpty!15947 (tail!3391 l!9164)))))

(declare-fun b!2369472 () Bool)

(declare-fun lt!865779 () Regex!6940)

(assert (=> b!2369472 (= e!1512470 (isConcat!22 lt!865779))))

(declare-fun b!2369473 () Bool)

(declare-fun e!1512469 () Regex!6940)

(declare-fun e!1512467 () Regex!6940)

(assert (=> b!2369473 (= e!1512469 e!1512467)))

(declare-fun c!376613 () Bool)

(assert (=> b!2369473 (= c!376613 (is-Cons!28020 l!9164))))

(declare-fun b!2369474 () Bool)

(assert (=> b!2369474 (= e!1512467 (Concat!11576 (h!33421 l!9164) (generalisedConcat!41 (t!208095 l!9164))))))

(declare-fun b!2369475 () Bool)

(assert (=> b!2369475 (= e!1512469 (h!33421 l!9164))))

(declare-fun b!2369476 () Bool)

(assert (=> b!2369476 (= e!1512470 (= lt!865779 (head!5121 l!9164)))))

(declare-fun b!2369477 () Bool)

(declare-fun e!1512465 () Bool)

(assert (=> b!2369477 (= e!1512465 e!1512468)))

(declare-fun c!376614 () Bool)

(assert (=> b!2369477 (= c!376614 (isEmpty!15947 l!9164))))

(declare-fun b!2369471 () Bool)

(assert (=> b!2369471 (= e!1512468 (isEmptyExpr!22 lt!865779))))

(assert (=> d!695135 e!1512465))

(declare-fun res!1005682 () Bool)

(assert (=> d!695135 (=> (not res!1005682) (not e!1512465))))

(assert (=> d!695135 (= res!1005682 (validRegex!2669 lt!865779))))

(assert (=> d!695135 (= lt!865779 e!1512469)))

(declare-fun c!376612 () Bool)

(declare-fun e!1512466 () Bool)

(assert (=> d!695135 (= c!376612 e!1512466)))

(declare-fun res!1005683 () Bool)

(assert (=> d!695135 (=> (not res!1005683) (not e!1512466))))

(assert (=> d!695135 (= res!1005683 (is-Cons!28020 l!9164))))

(assert (=> d!695135 (forall!5574 l!9164 lambda!87644)))

(assert (=> d!695135 (= (generalisedConcat!41 l!9164) lt!865779)))

(declare-fun b!2369478 () Bool)

(assert (=> b!2369478 (= e!1512466 (isEmpty!15947 (t!208095 l!9164)))))

(declare-fun b!2369479 () Bool)

(assert (=> b!2369479 (= e!1512467 EmptyExpr!6940)))

(assert (= (and d!695135 res!1005683) b!2369478))

(assert (= (and d!695135 c!376612) b!2369475))

(assert (= (and d!695135 (not c!376612)) b!2369473))

(assert (= (and b!2369473 c!376613) b!2369474))

(assert (= (and b!2369473 (not c!376613)) b!2369479))

(assert (= (and d!695135 res!1005682) b!2369477))

(assert (= (and b!2369477 c!376614) b!2369471))

(assert (= (and b!2369477 (not c!376614)) b!2369470))

(assert (= (and b!2369470 c!376611) b!2369476))

(assert (= (and b!2369470 (not c!376611)) b!2369472))

(declare-fun m!2777891 () Bool)

(assert (=> b!2369474 m!2777891))

(assert (=> b!2369476 m!2777787))

(declare-fun m!2777893 () Bool)

(assert (=> b!2369471 m!2777893))

(assert (=> b!2369470 m!2777773))

(assert (=> b!2369470 m!2777773))

(declare-fun m!2777897 () Bool)

(assert (=> b!2369470 m!2777897))

(assert (=> b!2369477 m!2777767))

(declare-fun m!2777899 () Bool)

(assert (=> b!2369472 m!2777899))

(declare-fun m!2777901 () Bool)

(assert (=> b!2369478 m!2777901))

(declare-fun m!2777903 () Bool)

(assert (=> d!695135 m!2777903))

(declare-fun m!2777905 () Bool)

(assert (=> d!695135 m!2777905))

(assert (=> b!2369286 d!695135))

(declare-fun d!695139 () Bool)

(declare-fun res!1005688 () Bool)

(declare-fun e!1512475 () Bool)

(assert (=> d!695139 (=> res!1005688 e!1512475)))

(assert (=> d!695139 (= res!1005688 (is-Nil!28020 l!9164))))

(assert (=> d!695139 (= (forall!5574 l!9164 lambda!87618) e!1512475)))

(declare-fun b!2369484 () Bool)

(declare-fun e!1512476 () Bool)

(assert (=> b!2369484 (= e!1512475 e!1512476)))

(declare-fun res!1005689 () Bool)

(assert (=> b!2369484 (=> (not res!1005689) (not e!1512476))))

(declare-fun dynLambda!12068 (Int Regex!6940) Bool)

(assert (=> b!2369484 (= res!1005689 (dynLambda!12068 lambda!87618 (h!33421 l!9164)))))

(declare-fun b!2369485 () Bool)

(assert (=> b!2369485 (= e!1512476 (forall!5574 (t!208095 l!9164) lambda!87618))))

(assert (= (and d!695139 (not res!1005688)) b!2369484))

(assert (= (and b!2369484 res!1005689) b!2369485))

(declare-fun b_lambda!73915 () Bool)

(assert (=> (not b_lambda!73915) (not b!2369484)))

(declare-fun m!2777907 () Bool)

(assert (=> b!2369484 m!2777907))

(declare-fun m!2777909 () Bool)

(assert (=> b!2369485 m!2777909))

(assert (=> start!232522 d!695139))

(declare-fun d!695141 () Bool)

(assert (=> d!695141 (= (isEmpty!15947 l!9164) (is-Nil!28020 l!9164))))

(assert (=> b!2369287 d!695141))

(declare-fun d!695143 () Bool)

(assert (=> d!695143 (= (isEmpty!15947 lt!865736) (is-Nil!28020 lt!865736))))

(assert (=> b!2369285 d!695143))

(declare-fun d!695145 () Bool)

(assert (=> d!695145 (= (tail!3391 l!9164) (t!208095 l!9164))))

(assert (=> b!2369285 d!695145))

(declare-fun d!695147 () Bool)

(declare-fun choose!13774 (Int) Bool)

(assert (=> d!695147 (= (Exists!1002 lambda!87620) (choose!13774 lambda!87620))))

(declare-fun bs!461147 () Bool)

(assert (= bs!461147 d!695147))

(declare-fun m!2777911 () Bool)

(assert (=> bs!461147 m!2777911))

(assert (=> b!2369280 d!695147))

(declare-fun d!695149 () Bool)

(declare-fun isEmpty!15950 (Option!5483) Bool)

(assert (=> d!695149 (= (isDefined!4311 (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) Nil!28021 s!9460 s!9460)) (not (isEmpty!15950 (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) Nil!28021 s!9460 s!9460))))))

(declare-fun bs!461148 () Bool)

(assert (= bs!461148 d!695149))

(assert (=> bs!461148 m!2777789))

(declare-fun m!2777913 () Bool)

(assert (=> bs!461148 m!2777913))

(assert (=> b!2369280 d!695149))

(declare-fun bs!461149 () Bool)

(declare-fun d!695151 () Bool)

(assert (= bs!461149 (and d!695151 b!2369280)))

(declare-fun lambda!87647 () Int)

(assert (=> bs!461149 (= lambda!87647 lambda!87619)))

(assert (=> bs!461149 (not (= lambda!87647 lambda!87620))))

(declare-fun bs!461150 () Bool)

(assert (= bs!461150 (and d!695151 b!2369390)))

(assert (=> bs!461150 (not (= lambda!87647 lambda!87636))))

(declare-fun bs!461151 () Bool)

(assert (= bs!461151 (and d!695151 b!2369392)))

(assert (=> bs!461151 (not (= lambda!87647 lambda!87637))))

(assert (=> d!695151 true))

(assert (=> d!695151 true))

(assert (=> d!695151 true))

(assert (=> d!695151 (= (isDefined!4311 (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) Nil!28021 s!9460 s!9460)) (Exists!1002 lambda!87647))))

(declare-fun lt!865784 () Unit!40915)

(declare-fun choose!13775 (Regex!6940 Regex!6940 List!28119) Unit!40915)

(assert (=> d!695151 (= lt!865784 (choose!13775 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460))))

(assert (=> d!695151 (validRegex!2669 (regOne!14392 r!13927))))

(assert (=> d!695151 (= (lemmaFindConcatSeparationEquivalentToExists!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460) lt!865784)))

(declare-fun bs!461152 () Bool)

(assert (= bs!461152 d!695151))

(assert (=> bs!461152 m!2777789))

(declare-fun m!2777915 () Bool)

(assert (=> bs!461152 m!2777915))

(declare-fun m!2777917 () Bool)

(assert (=> bs!461152 m!2777917))

(assert (=> bs!461152 m!2777789))

(assert (=> bs!461152 m!2777791))

(declare-fun m!2777919 () Bool)

(assert (=> bs!461152 m!2777919))

(assert (=> b!2369280 d!695151))

(declare-fun d!695153 () Bool)

(declare-fun e!1512496 () Bool)

(assert (=> d!695153 e!1512496))

(declare-fun res!1005712 () Bool)

(assert (=> d!695153 (=> res!1005712 e!1512496)))

(declare-fun e!1512497 () Bool)

(assert (=> d!695153 (= res!1005712 e!1512497)))

(declare-fun res!1005715 () Bool)

(assert (=> d!695153 (=> (not res!1005715) (not e!1512497))))

(declare-fun lt!865794 () Option!5483)

(assert (=> d!695153 (= res!1005715 (isDefined!4311 lt!865794))))

(declare-fun e!1512494 () Option!5483)

(assert (=> d!695153 (= lt!865794 e!1512494)))

(declare-fun c!376620 () Bool)

(declare-fun e!1512495 () Bool)

(assert (=> d!695153 (= c!376620 e!1512495)))

(declare-fun res!1005716 () Bool)

(assert (=> d!695153 (=> (not res!1005716) (not e!1512495))))

(assert (=> d!695153 (= res!1005716 (matchR!3057 (regOne!14392 r!13927) Nil!28021))))

(assert (=> d!695153 (validRegex!2669 (regOne!14392 r!13927))))

(assert (=> d!695153 (= (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) Nil!28021 s!9460 s!9460) lt!865794)))

(declare-fun b!2369516 () Bool)

(declare-fun res!1005713 () Bool)

(assert (=> b!2369516 (=> (not res!1005713) (not e!1512497))))

(declare-fun get!8516 (Option!5483) tuple2!27744)

(assert (=> b!2369516 (= res!1005713 (matchR!3057 (regTwo!14392 r!13927) (_2!16413 (get!8516 lt!865794))))))

(declare-fun b!2369517 () Bool)

(assert (=> b!2369517 (= e!1512495 (matchR!3057 (regTwo!14392 r!13927) s!9460))))

(declare-fun b!2369518 () Bool)

(assert (=> b!2369518 (= e!1512496 (not (isDefined!4311 lt!865794)))))

(declare-fun b!2369519 () Bool)

(declare-fun lt!865792 () Unit!40915)

(declare-fun lt!865793 () Unit!40915)

(assert (=> b!2369519 (= lt!865792 lt!865793)))

(assert (=> b!2369519 (= (++!6900 (++!6900 Nil!28021 (Cons!28021 (h!33422 s!9460) Nil!28021)) (t!208096 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!546 (List!28119 C!14038 List!28119 List!28119) Unit!40915)

(assert (=> b!2369519 (= lt!865793 (lemmaMoveElementToOtherListKeepsConcatEq!546 Nil!28021 (h!33422 s!9460) (t!208096 s!9460) s!9460))))

(declare-fun e!1512493 () Option!5483)

(assert (=> b!2369519 (= e!1512493 (findConcatSeparation!591 (regOne!14392 r!13927) (regTwo!14392 r!13927) (++!6900 Nil!28021 (Cons!28021 (h!33422 s!9460) Nil!28021)) (t!208096 s!9460) s!9460))))

(declare-fun b!2369520 () Bool)

(assert (=> b!2369520 (= e!1512494 (Some!5482 (tuple2!27745 Nil!28021 s!9460)))))

(declare-fun b!2369521 () Bool)

(declare-fun res!1005714 () Bool)

(assert (=> b!2369521 (=> (not res!1005714) (not e!1512497))))

(assert (=> b!2369521 (= res!1005714 (matchR!3057 (regOne!14392 r!13927) (_1!16413 (get!8516 lt!865794))))))

(declare-fun b!2369522 () Bool)

(assert (=> b!2369522 (= e!1512493 None!5482)))

(declare-fun b!2369523 () Bool)

(assert (=> b!2369523 (= e!1512497 (= (++!6900 (_1!16413 (get!8516 lt!865794)) (_2!16413 (get!8516 lt!865794))) s!9460))))

(declare-fun b!2369524 () Bool)

(assert (=> b!2369524 (= e!1512494 e!1512493)))

(declare-fun c!376619 () Bool)

(assert (=> b!2369524 (= c!376619 (is-Nil!28021 s!9460))))

(assert (= (and d!695153 res!1005716) b!2369517))

(assert (= (and d!695153 c!376620) b!2369520))

(assert (= (and d!695153 (not c!376620)) b!2369524))

(assert (= (and b!2369524 c!376619) b!2369522))

(assert (= (and b!2369524 (not c!376619)) b!2369519))

(assert (= (and d!695153 res!1005715) b!2369521))

(assert (= (and b!2369521 res!1005714) b!2369516))

(assert (= (and b!2369516 res!1005713) b!2369523))

(assert (= (and d!695153 (not res!1005712)) b!2369518))

(declare-fun m!2777927 () Bool)

(assert (=> b!2369518 m!2777927))

(declare-fun m!2777929 () Bool)

(assert (=> b!2369517 m!2777929))

(declare-fun m!2777931 () Bool)

(assert (=> b!2369521 m!2777931))

(declare-fun m!2777933 () Bool)

(assert (=> b!2369521 m!2777933))

(declare-fun m!2777935 () Bool)

(assert (=> b!2369519 m!2777935))

(assert (=> b!2369519 m!2777935))

(declare-fun m!2777937 () Bool)

(assert (=> b!2369519 m!2777937))

(declare-fun m!2777939 () Bool)

(assert (=> b!2369519 m!2777939))

(assert (=> b!2369519 m!2777935))

(declare-fun m!2777941 () Bool)

(assert (=> b!2369519 m!2777941))

(assert (=> d!695153 m!2777927))

(declare-fun m!2777943 () Bool)

(assert (=> d!695153 m!2777943))

(assert (=> d!695153 m!2777915))

(assert (=> b!2369516 m!2777931))

(declare-fun m!2777945 () Bool)

(assert (=> b!2369516 m!2777945))

(assert (=> b!2369523 m!2777931))

(declare-fun m!2777947 () Bool)

(assert (=> b!2369523 m!2777947))

(assert (=> b!2369280 d!695153))

(declare-fun bs!461156 () Bool)

(declare-fun d!695157 () Bool)

(assert (= bs!461156 (and d!695157 b!2369280)))

(declare-fun lambda!87658 () Int)

(assert (=> bs!461156 (not (= lambda!87658 lambda!87620))))

(declare-fun bs!461157 () Bool)

(assert (= bs!461157 (and d!695157 b!2369392)))

(assert (=> bs!461157 (not (= lambda!87658 lambda!87637))))

(declare-fun bs!461158 () Bool)

(assert (= bs!461158 (and d!695157 b!2369390)))

(assert (=> bs!461158 (not (= lambda!87658 lambda!87636))))

(declare-fun bs!461159 () Bool)

(assert (= bs!461159 (and d!695157 d!695151)))

(assert (=> bs!461159 (= lambda!87658 lambda!87647)))

(assert (=> bs!461156 (= lambda!87658 lambda!87619)))

(assert (=> d!695157 true))

(assert (=> d!695157 true))

(assert (=> d!695157 true))

(declare-fun lambda!87659 () Int)

(assert (=> bs!461156 (= lambda!87659 lambda!87620)))

(assert (=> bs!461157 (= lambda!87659 lambda!87637)))

(assert (=> bs!461158 (not (= lambda!87659 lambda!87636))))

(declare-fun bs!461160 () Bool)

(assert (= bs!461160 d!695157))

(assert (=> bs!461160 (not (= lambda!87659 lambda!87658))))

(assert (=> bs!461159 (not (= lambda!87659 lambda!87647))))

(assert (=> bs!461156 (not (= lambda!87659 lambda!87619))))

(assert (=> d!695157 true))

(assert (=> d!695157 true))

(assert (=> d!695157 true))

(assert (=> d!695157 (= (Exists!1002 lambda!87658) (Exists!1002 lambda!87659))))

(declare-fun lt!865797 () Unit!40915)

(declare-fun choose!13776 (Regex!6940 Regex!6940 List!28119) Unit!40915)

(assert (=> d!695157 (= lt!865797 (choose!13776 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460))))

(assert (=> d!695157 (validRegex!2669 (regOne!14392 r!13927))))

(assert (=> d!695157 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!341 (regOne!14392 r!13927) (regTwo!14392 r!13927) s!9460) lt!865797)))

(declare-fun m!2777949 () Bool)

(assert (=> bs!461160 m!2777949))

(declare-fun m!2777951 () Bool)

(assert (=> bs!461160 m!2777951))

(declare-fun m!2777953 () Bool)

(assert (=> bs!461160 m!2777953))

(assert (=> bs!461160 m!2777915))

(assert (=> b!2369280 d!695157))

(declare-fun d!695159 () Bool)

(assert (=> d!695159 (= (Exists!1002 lambda!87619) (choose!13774 lambda!87619))))

(declare-fun bs!461161 () Bool)

(assert (= bs!461161 d!695159))

(declare-fun m!2777955 () Bool)

(assert (=> bs!461161 m!2777955))

(assert (=> b!2369280 d!695159))

(declare-fun b!2369533 () Bool)

(declare-fun res!1005725 () Bool)

(declare-fun e!1512506 () Bool)

(assert (=> b!2369533 (=> res!1005725 e!1512506)))

(assert (=> b!2369533 (= res!1005725 (not (isEmpty!15949 (tail!3393 s!9460))))))

(declare-fun b!2369534 () Bool)

(declare-fun res!1005727 () Bool)

(declare-fun e!1512503 () Bool)

(assert (=> b!2369534 (=> (not res!1005727) (not e!1512503))))

(assert (=> b!2369534 (= res!1005727 (isEmpty!15949 (tail!3393 s!9460)))))

(declare-fun b!2369535 () Bool)

(declare-fun e!1512504 () Bool)

(declare-fun lt!865798 () Bool)

(declare-fun call!144082 () Bool)

(assert (=> b!2369535 (= e!1512504 (= lt!865798 call!144082))))

(declare-fun b!2369536 () Bool)

(assert (=> b!2369536 (= e!1512503 (= (head!5123 s!9460) (c!376576 lt!865730)))))

(declare-fun b!2369537 () Bool)

(declare-fun e!1512502 () Bool)

(declare-fun e!1512507 () Bool)

(assert (=> b!2369537 (= e!1512502 e!1512507)))

(declare-fun res!1005732 () Bool)

(assert (=> b!2369537 (=> (not res!1005732) (not e!1512507))))

(assert (=> b!2369537 (= res!1005732 (not lt!865798))))

(declare-fun b!2369538 () Bool)

(declare-fun res!1005726 () Bool)

(assert (=> b!2369538 (=> res!1005726 e!1512502)))

(assert (=> b!2369538 (= res!1005726 e!1512503)))

(declare-fun res!1005728 () Bool)

(assert (=> b!2369538 (=> (not res!1005728) (not e!1512503))))

(assert (=> b!2369538 (= res!1005728 lt!865798)))

(declare-fun d!695161 () Bool)

(assert (=> d!695161 e!1512504))

(declare-fun c!376622 () Bool)

(assert (=> d!695161 (= c!376622 (is-EmptyExpr!6940 lt!865730))))

(declare-fun e!1512505 () Bool)

(assert (=> d!695161 (= lt!865798 e!1512505)))

(declare-fun c!376623 () Bool)

(assert (=> d!695161 (= c!376623 (isEmpty!15949 s!9460))))

(assert (=> d!695161 (validRegex!2669 lt!865730)))

(assert (=> d!695161 (= (matchR!3057 lt!865730 s!9460) lt!865798)))

(declare-fun b!2369539 () Bool)

(declare-fun res!1005731 () Bool)

(assert (=> b!2369539 (=> res!1005731 e!1512502)))

(assert (=> b!2369539 (= res!1005731 (not (is-ElementMatch!6940 lt!865730)))))

(declare-fun e!1512508 () Bool)

(assert (=> b!2369539 (= e!1512508 e!1512502)))

(declare-fun b!2369540 () Bool)

(assert (=> b!2369540 (= e!1512504 e!1512508)))

(declare-fun c!376621 () Bool)

(assert (=> b!2369540 (= c!376621 (is-EmptyLang!6940 lt!865730))))

(declare-fun b!2369541 () Bool)

(assert (=> b!2369541 (= e!1512508 (not lt!865798))))

(declare-fun b!2369542 () Bool)

(assert (=> b!2369542 (= e!1512507 e!1512506)))

(declare-fun res!1005729 () Bool)

(assert (=> b!2369542 (=> res!1005729 e!1512506)))

(assert (=> b!2369542 (= res!1005729 call!144082)))

(declare-fun bm!144077 () Bool)

(assert (=> bm!144077 (= call!144082 (isEmpty!15949 s!9460))))

(declare-fun b!2369543 () Bool)

(declare-fun res!1005730 () Bool)

(assert (=> b!2369543 (=> (not res!1005730) (not e!1512503))))

(assert (=> b!2369543 (= res!1005730 (not call!144082))))

(declare-fun b!2369544 () Bool)

(assert (=> b!2369544 (= e!1512505 (matchR!3057 (derivativeStep!1657 lt!865730 (head!5123 s!9460)) (tail!3393 s!9460)))))

(declare-fun b!2369545 () Bool)

(assert (=> b!2369545 (= e!1512506 (not (= (head!5123 s!9460) (c!376576 lt!865730))))))

(declare-fun b!2369546 () Bool)

(assert (=> b!2369546 (= e!1512505 (nullable!1999 lt!865730))))

(assert (= (and d!695161 c!376623) b!2369546))

(assert (= (and d!695161 (not c!376623)) b!2369544))

(assert (= (and d!695161 c!376622) b!2369535))

(assert (= (and d!695161 (not c!376622)) b!2369540))

(assert (= (and b!2369540 c!376621) b!2369541))

(assert (= (and b!2369540 (not c!376621)) b!2369539))

(assert (= (and b!2369539 (not res!1005731)) b!2369538))

(assert (= (and b!2369538 res!1005728) b!2369543))

(assert (= (and b!2369543 res!1005730) b!2369534))

(assert (= (and b!2369534 res!1005727) b!2369536))

(assert (= (and b!2369538 (not res!1005726)) b!2369537))

(assert (= (and b!2369537 res!1005732) b!2369542))

(assert (= (and b!2369542 (not res!1005729)) b!2369533))

(assert (= (and b!2369533 (not res!1005725)) b!2369545))

(assert (= (or b!2369535 b!2369543 b!2369542) bm!144077))

(assert (=> b!2369534 m!2777853))

(assert (=> b!2369534 m!2777853))

(assert (=> b!2369534 m!2777855))

(declare-fun m!2777957 () Bool)

(assert (=> b!2369546 m!2777957))

(assert (=> b!2369536 m!2777859))

(assert (=> b!2369544 m!2777859))

(assert (=> b!2369544 m!2777859))

(declare-fun m!2777959 () Bool)

(assert (=> b!2369544 m!2777959))

(assert (=> b!2369544 m!2777853))

(assert (=> b!2369544 m!2777959))

(assert (=> b!2369544 m!2777853))

(declare-fun m!2777961 () Bool)

(assert (=> b!2369544 m!2777961))

(assert (=> bm!144077 m!2777849))

(assert (=> b!2369533 m!2777853))

(assert (=> b!2369533 m!2777853))

(assert (=> b!2369533 m!2777855))

(assert (=> b!2369545 m!2777859))

(assert (=> d!695161 m!2777849))

(declare-fun m!2777963 () Bool)

(assert (=> d!695161 m!2777963))

(assert (=> b!2369278 d!695161))

(declare-fun d!695163 () Bool)

(assert (=> d!695163 (= (head!5121 l!9164) (h!33421 l!9164))))

(assert (=> b!2369278 d!695163))

(declare-fun b!2369565 () Bool)

(declare-fun e!1512527 () Bool)

(declare-fun call!144090 () Bool)

(assert (=> b!2369565 (= e!1512527 call!144090)))

(declare-fun b!2369566 () Bool)

(declare-fun res!1005746 () Bool)

(declare-fun e!1512524 () Bool)

(assert (=> b!2369566 (=> res!1005746 e!1512524)))

(assert (=> b!2369566 (= res!1005746 (not (is-Concat!11576 lt!865733)))))

(declare-fun e!1512529 () Bool)

(assert (=> b!2369566 (= e!1512529 e!1512524)))

(declare-fun bm!144084 () Bool)

(declare-fun call!144091 () Bool)

(assert (=> bm!144084 (= call!144090 call!144091)))

(declare-fun d!695165 () Bool)

(declare-fun res!1005745 () Bool)

(declare-fun e!1512528 () Bool)

(assert (=> d!695165 (=> res!1005745 e!1512528)))

(assert (=> d!695165 (= res!1005745 (is-ElementMatch!6940 lt!865733))))

(assert (=> d!695165 (= (validRegex!2669 lt!865733) e!1512528)))

(declare-fun b!2369567 () Bool)

(declare-fun e!1512523 () Bool)

(assert (=> b!2369567 (= e!1512523 call!144091)))

(declare-fun b!2369568 () Bool)

(declare-fun e!1512525 () Bool)

(assert (=> b!2369568 (= e!1512525 e!1512523)))

(declare-fun res!1005744 () Bool)

(assert (=> b!2369568 (= res!1005744 (not (nullable!1999 (reg!7269 lt!865733))))))

(assert (=> b!2369568 (=> (not res!1005744) (not e!1512523))))

(declare-fun b!2369569 () Bool)

(assert (=> b!2369569 (= e!1512524 e!1512527)))

(declare-fun res!1005747 () Bool)

(assert (=> b!2369569 (=> (not res!1005747) (not e!1512527))))

(declare-fun call!144089 () Bool)

(assert (=> b!2369569 (= res!1005747 call!144089)))

(declare-fun bm!144085 () Bool)

(declare-fun c!376629 () Bool)

(assert (=> bm!144085 (= call!144089 (validRegex!2669 (ite c!376629 (regTwo!14393 lt!865733) (regOne!14392 lt!865733))))))

(declare-fun b!2369570 () Bool)

(assert (=> b!2369570 (= e!1512525 e!1512529)))

(assert (=> b!2369570 (= c!376629 (is-Union!6940 lt!865733))))

(declare-fun b!2369571 () Bool)

(declare-fun e!1512526 () Bool)

(assert (=> b!2369571 (= e!1512526 call!144089)))

(declare-fun b!2369572 () Bool)

(declare-fun res!1005743 () Bool)

(assert (=> b!2369572 (=> (not res!1005743) (not e!1512526))))

(assert (=> b!2369572 (= res!1005743 call!144090)))

(assert (=> b!2369572 (= e!1512529 e!1512526)))

(declare-fun bm!144086 () Bool)

(declare-fun c!376628 () Bool)

(assert (=> bm!144086 (= call!144091 (validRegex!2669 (ite c!376628 (reg!7269 lt!865733) (ite c!376629 (regOne!14393 lt!865733) (regTwo!14392 lt!865733)))))))

(declare-fun b!2369573 () Bool)

(assert (=> b!2369573 (= e!1512528 e!1512525)))

(assert (=> b!2369573 (= c!376628 (is-Star!6940 lt!865733))))

(assert (= (and d!695165 (not res!1005745)) b!2369573))

(assert (= (and b!2369573 c!376628) b!2369568))

(assert (= (and b!2369573 (not c!376628)) b!2369570))

(assert (= (and b!2369568 res!1005744) b!2369567))

(assert (= (and b!2369570 c!376629) b!2369572))

(assert (= (and b!2369570 (not c!376629)) b!2369566))

(assert (= (and b!2369572 res!1005743) b!2369571))

(assert (= (and b!2369566 (not res!1005746)) b!2369569))

(assert (= (and b!2369569 res!1005747) b!2369565))

(assert (= (or b!2369572 b!2369565) bm!144084))

(assert (= (or b!2369571 b!2369569) bm!144085))

(assert (= (or b!2369567 bm!144084) bm!144086))

(declare-fun m!2777965 () Bool)

(assert (=> b!2369568 m!2777965))

(declare-fun m!2777967 () Bool)

(assert (=> bm!144085 m!2777967))

(declare-fun m!2777969 () Bool)

(assert (=> bm!144086 m!2777969))

(assert (=> b!2369279 d!695165))

(declare-fun b!2369580 () Bool)

(declare-fun res!1005750 () Bool)

(declare-fun e!1512538 () Bool)

(assert (=> b!2369580 (=> res!1005750 e!1512538)))

(assert (=> b!2369580 (= res!1005750 (not (isEmpty!15949 (tail!3393 (++!6900 s!9460 Nil!28021)))))))

(declare-fun b!2369581 () Bool)

(declare-fun res!1005752 () Bool)

(declare-fun e!1512535 () Bool)

(assert (=> b!2369581 (=> (not res!1005752) (not e!1512535))))

(assert (=> b!2369581 (= res!1005752 (isEmpty!15949 (tail!3393 (++!6900 s!9460 Nil!28021))))))

(declare-fun b!2369582 () Bool)

(declare-fun e!1512536 () Bool)

(declare-fun lt!865801 () Bool)

(declare-fun call!144092 () Bool)

(assert (=> b!2369582 (= e!1512536 (= lt!865801 call!144092))))

(declare-fun b!2369583 () Bool)

(assert (=> b!2369583 (= e!1512535 (= (head!5123 (++!6900 s!9460 Nil!28021)) (c!376576 lt!865733)))))

(declare-fun b!2369584 () Bool)

(declare-fun e!1512534 () Bool)

(declare-fun e!1512539 () Bool)

(assert (=> b!2369584 (= e!1512534 e!1512539)))

(declare-fun res!1005757 () Bool)

(assert (=> b!2369584 (=> (not res!1005757) (not e!1512539))))

(assert (=> b!2369584 (= res!1005757 (not lt!865801))))

(declare-fun b!2369585 () Bool)

(declare-fun res!1005751 () Bool)

(assert (=> b!2369585 (=> res!1005751 e!1512534)))

(assert (=> b!2369585 (= res!1005751 e!1512535)))

(declare-fun res!1005753 () Bool)

(assert (=> b!2369585 (=> (not res!1005753) (not e!1512535))))

(assert (=> b!2369585 (= res!1005753 lt!865801)))

(declare-fun d!695167 () Bool)

(assert (=> d!695167 e!1512536))

(declare-fun c!376633 () Bool)

(assert (=> d!695167 (= c!376633 (is-EmptyExpr!6940 lt!865733))))

(declare-fun e!1512537 () Bool)

(assert (=> d!695167 (= lt!865801 e!1512537)))

(declare-fun c!376634 () Bool)

(assert (=> d!695167 (= c!376634 (isEmpty!15949 (++!6900 s!9460 Nil!28021)))))

(assert (=> d!695167 (validRegex!2669 lt!865733)))

(assert (=> d!695167 (= (matchR!3057 lt!865733 (++!6900 s!9460 Nil!28021)) lt!865801)))

(declare-fun b!2369586 () Bool)

(declare-fun res!1005756 () Bool)

(assert (=> b!2369586 (=> res!1005756 e!1512534)))

(assert (=> b!2369586 (= res!1005756 (not (is-ElementMatch!6940 lt!865733)))))

(declare-fun e!1512540 () Bool)

(assert (=> b!2369586 (= e!1512540 e!1512534)))

(declare-fun b!2369587 () Bool)

(assert (=> b!2369587 (= e!1512536 e!1512540)))

(declare-fun c!376632 () Bool)

(assert (=> b!2369587 (= c!376632 (is-EmptyLang!6940 lt!865733))))

(declare-fun b!2369588 () Bool)

(assert (=> b!2369588 (= e!1512540 (not lt!865801))))

(declare-fun b!2369589 () Bool)

(assert (=> b!2369589 (= e!1512539 e!1512538)))

(declare-fun res!1005754 () Bool)

(assert (=> b!2369589 (=> res!1005754 e!1512538)))

(assert (=> b!2369589 (= res!1005754 call!144092)))

(declare-fun bm!144087 () Bool)

(assert (=> bm!144087 (= call!144092 (isEmpty!15949 (++!6900 s!9460 Nil!28021)))))

(declare-fun b!2369590 () Bool)

(declare-fun res!1005755 () Bool)

(assert (=> b!2369590 (=> (not res!1005755) (not e!1512535))))

(assert (=> b!2369590 (= res!1005755 (not call!144092))))

(declare-fun b!2369591 () Bool)

(assert (=> b!2369591 (= e!1512537 (matchR!3057 (derivativeStep!1657 lt!865733 (head!5123 (++!6900 s!9460 Nil!28021))) (tail!3393 (++!6900 s!9460 Nil!28021))))))

(declare-fun b!2369592 () Bool)

(assert (=> b!2369592 (= e!1512538 (not (= (head!5123 (++!6900 s!9460 Nil!28021)) (c!376576 lt!865733))))))

(declare-fun b!2369593 () Bool)

(assert (=> b!2369593 (= e!1512537 (nullable!1999 lt!865733))))

(assert (= (and d!695167 c!376634) b!2369593))

(assert (= (and d!695167 (not c!376634)) b!2369591))

(assert (= (and d!695167 c!376633) b!2369582))

(assert (= (and d!695167 (not c!376633)) b!2369587))

(assert (= (and b!2369587 c!376632) b!2369588))

(assert (= (and b!2369587 (not c!376632)) b!2369586))

(assert (= (and b!2369586 (not res!1005756)) b!2369585))

(assert (= (and b!2369585 res!1005753) b!2369590))

(assert (= (and b!2369590 res!1005755) b!2369581))

(assert (= (and b!2369581 res!1005752) b!2369583))

(assert (= (and b!2369585 (not res!1005751)) b!2369584))

(assert (= (and b!2369584 res!1005757) b!2369589))

(assert (= (and b!2369589 (not res!1005754)) b!2369580))

(assert (= (and b!2369580 (not res!1005750)) b!2369592))

(assert (= (or b!2369582 b!2369590 b!2369589) bm!144087))

(assert (=> b!2369581 m!2777761))

(declare-fun m!2777971 () Bool)

(assert (=> b!2369581 m!2777971))

(assert (=> b!2369581 m!2777971))

(declare-fun m!2777973 () Bool)

(assert (=> b!2369581 m!2777973))

(declare-fun m!2777975 () Bool)

(assert (=> b!2369593 m!2777975))

(assert (=> b!2369583 m!2777761))

(declare-fun m!2777977 () Bool)

(assert (=> b!2369583 m!2777977))

(assert (=> b!2369591 m!2777761))

(assert (=> b!2369591 m!2777977))

(assert (=> b!2369591 m!2777977))

(declare-fun m!2777979 () Bool)

(assert (=> b!2369591 m!2777979))

(assert (=> b!2369591 m!2777761))

(assert (=> b!2369591 m!2777971))

(assert (=> b!2369591 m!2777979))

(assert (=> b!2369591 m!2777971))

(declare-fun m!2777981 () Bool)

(assert (=> b!2369591 m!2777981))

(assert (=> bm!144087 m!2777761))

(declare-fun m!2777983 () Bool)

(assert (=> bm!144087 m!2777983))

(assert (=> b!2369580 m!2777761))

(assert (=> b!2369580 m!2777971))

(assert (=> b!2369580 m!2777971))

(assert (=> b!2369580 m!2777973))

(assert (=> b!2369592 m!2777761))

(assert (=> b!2369592 m!2777977))

(assert (=> d!695167 m!2777761))

(assert (=> d!695167 m!2777983))

(assert (=> d!695167 m!2777759))

(assert (=> b!2369279 d!695167))

(declare-fun d!695169 () Bool)

(declare-fun e!1512552 () Bool)

(assert (=> d!695169 e!1512552))

(declare-fun res!1005771 () Bool)

(assert (=> d!695169 (=> (not res!1005771) (not e!1512552))))

(declare-fun lt!865808 () List!28119)

(declare-fun content!3806 (List!28119) (Set C!14038))

(assert (=> d!695169 (= res!1005771 (= (content!3806 lt!865808) (set.union (content!3806 s!9460) (content!3806 Nil!28021))))))

(declare-fun e!1512551 () List!28119)

(assert (=> d!695169 (= lt!865808 e!1512551)))

(declare-fun c!376639 () Bool)

(assert (=> d!695169 (= c!376639 (is-Nil!28021 s!9460))))

(assert (=> d!695169 (= (++!6900 s!9460 Nil!28021) lt!865808)))

(declare-fun b!2369615 () Bool)

(assert (=> b!2369615 (= e!1512551 (Cons!28021 (h!33422 s!9460) (++!6900 (t!208096 s!9460) Nil!28021)))))

(declare-fun b!2369614 () Bool)

(assert (=> b!2369614 (= e!1512551 Nil!28021)))

(declare-fun b!2369616 () Bool)

(declare-fun res!1005770 () Bool)

(assert (=> b!2369616 (=> (not res!1005770) (not e!1512552))))

(declare-fun size!22144 (List!28119) Int)

(assert (=> b!2369616 (= res!1005770 (= (size!22144 lt!865808) (+ (size!22144 s!9460) (size!22144 Nil!28021))))))

(declare-fun b!2369617 () Bool)

(assert (=> b!2369617 (= e!1512552 (or (not (= Nil!28021 Nil!28021)) (= lt!865808 s!9460)))))

(assert (= (and d!695169 c!376639) b!2369614))

(assert (= (and d!695169 (not c!376639)) b!2369615))

(assert (= (and d!695169 res!1005771) b!2369616))

(assert (= (and b!2369616 res!1005770) b!2369617))

(declare-fun m!2777985 () Bool)

(assert (=> d!695169 m!2777985))

(declare-fun m!2777987 () Bool)

(assert (=> d!695169 m!2777987))

(declare-fun m!2777989 () Bool)

(assert (=> d!695169 m!2777989))

(declare-fun m!2777991 () Bool)

(assert (=> b!2369615 m!2777991))

(declare-fun m!2777993 () Bool)

(assert (=> b!2369616 m!2777993))

(declare-fun m!2777995 () Bool)

(assert (=> b!2369616 m!2777995))

(declare-fun m!2777997 () Bool)

(assert (=> b!2369616 m!2777997))

(assert (=> b!2369279 d!695169))

(declare-fun d!695171 () Bool)

(assert (=> d!695171 (matchR!3057 (Concat!11576 lt!865730 EmptyExpr!6940) (++!6900 s!9460 Nil!28021))))

(declare-fun lt!865811 () Unit!40915)

(declare-fun choose!13777 (Regex!6940 Regex!6940 List!28119 List!28119) Unit!40915)

(assert (=> d!695171 (= lt!865811 (choose!13777 lt!865730 EmptyExpr!6940 s!9460 Nil!28021))))

(declare-fun e!1512555 () Bool)

(assert (=> d!695171 e!1512555))

(declare-fun res!1005774 () Bool)

(assert (=> d!695171 (=> (not res!1005774) (not e!1512555))))

(assert (=> d!695171 (= res!1005774 (validRegex!2669 lt!865730))))

(assert (=> d!695171 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!13 lt!865730 EmptyExpr!6940 s!9460 Nil!28021) lt!865811)))

(declare-fun b!2369620 () Bool)

(assert (=> b!2369620 (= e!1512555 (validRegex!2669 EmptyExpr!6940))))

(assert (= (and d!695171 res!1005774) b!2369620))

(assert (=> d!695171 m!2777761))

(assert (=> d!695171 m!2777761))

(declare-fun m!2777999 () Bool)

(assert (=> d!695171 m!2777999))

(declare-fun m!2778001 () Bool)

(assert (=> d!695171 m!2778001))

(assert (=> d!695171 m!2777963))

(declare-fun m!2778003 () Bool)

(assert (=> b!2369620 m!2778003))

(assert (=> b!2369279 d!695171))

(declare-fun b!2369641 () Bool)

(declare-fun e!1512563 () Bool)

(declare-fun tp!757534 () Bool)

(declare-fun tp!757538 () Bool)

(assert (=> b!2369641 (= e!1512563 (and tp!757534 tp!757538))))

(declare-fun b!2369643 () Bool)

(declare-fun tp!757536 () Bool)

(declare-fun tp!757537 () Bool)

(assert (=> b!2369643 (= e!1512563 (and tp!757536 tp!757537))))

(assert (=> b!2369288 (= tp!757498 e!1512563)))

(declare-fun b!2369640 () Bool)

(assert (=> b!2369640 (= e!1512563 tp_is_empty!11293)))

(declare-fun b!2369642 () Bool)

(declare-fun tp!757535 () Bool)

(assert (=> b!2369642 (= e!1512563 tp!757535)))

(assert (= (and b!2369288 (is-ElementMatch!6940 (reg!7269 r!13927))) b!2369640))

(assert (= (and b!2369288 (is-Concat!11576 (reg!7269 r!13927))) b!2369641))

(assert (= (and b!2369288 (is-Star!6940 (reg!7269 r!13927))) b!2369642))

(assert (= (and b!2369288 (is-Union!6940 (reg!7269 r!13927))) b!2369643))

(declare-fun b!2369648 () Bool)

(declare-fun e!1512566 () Bool)

(declare-fun tp!757541 () Bool)

(assert (=> b!2369648 (= e!1512566 (and tp_is_empty!11293 tp!757541))))

(assert (=> b!2369281 (= tp!757492 e!1512566)))

(assert (= (and b!2369281 (is-Cons!28021 (t!208096 s!9460))) b!2369648))

(declare-fun b!2369650 () Bool)

(declare-fun e!1512567 () Bool)

(declare-fun tp!757542 () Bool)

(declare-fun tp!757546 () Bool)

(assert (=> b!2369650 (= e!1512567 (and tp!757542 tp!757546))))

(declare-fun b!2369652 () Bool)

(declare-fun tp!757544 () Bool)

(declare-fun tp!757545 () Bool)

(assert (=> b!2369652 (= e!1512567 (and tp!757544 tp!757545))))

(assert (=> b!2369276 (= tp!757495 e!1512567)))

(declare-fun b!2369649 () Bool)

(assert (=> b!2369649 (= e!1512567 tp_is_empty!11293)))

(declare-fun b!2369651 () Bool)

(declare-fun tp!757543 () Bool)

(assert (=> b!2369651 (= e!1512567 tp!757543)))

(assert (= (and b!2369276 (is-ElementMatch!6940 (regOne!14393 r!13927))) b!2369649))

(assert (= (and b!2369276 (is-Concat!11576 (regOne!14393 r!13927))) b!2369650))

(assert (= (and b!2369276 (is-Star!6940 (regOne!14393 r!13927))) b!2369651))

(assert (= (and b!2369276 (is-Union!6940 (regOne!14393 r!13927))) b!2369652))

(declare-fun b!2369654 () Bool)

(declare-fun e!1512568 () Bool)

(declare-fun tp!757547 () Bool)

(declare-fun tp!757551 () Bool)

(assert (=> b!2369654 (= e!1512568 (and tp!757547 tp!757551))))

(declare-fun b!2369656 () Bool)

(declare-fun tp!757549 () Bool)

(declare-fun tp!757550 () Bool)

(assert (=> b!2369656 (= e!1512568 (and tp!757549 tp!757550))))

(assert (=> b!2369276 (= tp!757496 e!1512568)))

(declare-fun b!2369653 () Bool)

(assert (=> b!2369653 (= e!1512568 tp_is_empty!11293)))

(declare-fun b!2369655 () Bool)

(declare-fun tp!757548 () Bool)

(assert (=> b!2369655 (= e!1512568 tp!757548)))

(assert (= (and b!2369276 (is-ElementMatch!6940 (regTwo!14393 r!13927))) b!2369653))

(assert (= (and b!2369276 (is-Concat!11576 (regTwo!14393 r!13927))) b!2369654))

(assert (= (and b!2369276 (is-Star!6940 (regTwo!14393 r!13927))) b!2369655))

(assert (= (and b!2369276 (is-Union!6940 (regTwo!14393 r!13927))) b!2369656))

(declare-fun b!2369658 () Bool)

(declare-fun e!1512569 () Bool)

(declare-fun tp!757552 () Bool)

(declare-fun tp!757556 () Bool)

(assert (=> b!2369658 (= e!1512569 (and tp!757552 tp!757556))))

(declare-fun b!2369660 () Bool)

(declare-fun tp!757554 () Bool)

(declare-fun tp!757555 () Bool)

(assert (=> b!2369660 (= e!1512569 (and tp!757554 tp!757555))))

(assert (=> b!2369275 (= tp!757494 e!1512569)))

(declare-fun b!2369657 () Bool)

(assert (=> b!2369657 (= e!1512569 tp_is_empty!11293)))

(declare-fun b!2369659 () Bool)

(declare-fun tp!757553 () Bool)

(assert (=> b!2369659 (= e!1512569 tp!757553)))

(assert (= (and b!2369275 (is-ElementMatch!6940 (regOne!14392 r!13927))) b!2369657))

(assert (= (and b!2369275 (is-Concat!11576 (regOne!14392 r!13927))) b!2369658))

(assert (= (and b!2369275 (is-Star!6940 (regOne!14392 r!13927))) b!2369659))

(assert (= (and b!2369275 (is-Union!6940 (regOne!14392 r!13927))) b!2369660))

(declare-fun b!2369662 () Bool)

(declare-fun e!1512570 () Bool)

(declare-fun tp!757557 () Bool)

(declare-fun tp!757561 () Bool)

(assert (=> b!2369662 (= e!1512570 (and tp!757557 tp!757561))))

(declare-fun b!2369664 () Bool)

(declare-fun tp!757559 () Bool)

(declare-fun tp!757560 () Bool)

(assert (=> b!2369664 (= e!1512570 (and tp!757559 tp!757560))))

(assert (=> b!2369275 (= tp!757499 e!1512570)))

(declare-fun b!2369661 () Bool)

(assert (=> b!2369661 (= e!1512570 tp_is_empty!11293)))

(declare-fun b!2369663 () Bool)

(declare-fun tp!757558 () Bool)

(assert (=> b!2369663 (= e!1512570 tp!757558)))

(assert (= (and b!2369275 (is-ElementMatch!6940 (regTwo!14392 r!13927))) b!2369661))

(assert (= (and b!2369275 (is-Concat!11576 (regTwo!14392 r!13927))) b!2369662))

(assert (= (and b!2369275 (is-Star!6940 (regTwo!14392 r!13927))) b!2369663))

(assert (= (and b!2369275 (is-Union!6940 (regTwo!14392 r!13927))) b!2369664))

(declare-fun b!2369666 () Bool)

(declare-fun e!1512571 () Bool)

(declare-fun tp!757562 () Bool)

(declare-fun tp!757566 () Bool)

(assert (=> b!2369666 (= e!1512571 (and tp!757562 tp!757566))))

(declare-fun b!2369668 () Bool)

(declare-fun tp!757564 () Bool)

(declare-fun tp!757565 () Bool)

(assert (=> b!2369668 (= e!1512571 (and tp!757564 tp!757565))))

(assert (=> b!2369284 (= tp!757493 e!1512571)))

(declare-fun b!2369665 () Bool)

(assert (=> b!2369665 (= e!1512571 tp_is_empty!11293)))

(declare-fun b!2369667 () Bool)

(declare-fun tp!757563 () Bool)

(assert (=> b!2369667 (= e!1512571 tp!757563)))

(assert (= (and b!2369284 (is-ElementMatch!6940 (h!33421 l!9164))) b!2369665))

(assert (= (and b!2369284 (is-Concat!11576 (h!33421 l!9164))) b!2369666))

(assert (= (and b!2369284 (is-Star!6940 (h!33421 l!9164))) b!2369667))

(assert (= (and b!2369284 (is-Union!6940 (h!33421 l!9164))) b!2369668))

(declare-fun b!2369673 () Bool)

(declare-fun e!1512574 () Bool)

(declare-fun tp!757571 () Bool)

(declare-fun tp!757572 () Bool)

(assert (=> b!2369673 (= e!1512574 (and tp!757571 tp!757572))))

(assert (=> b!2369284 (= tp!757497 e!1512574)))

(assert (= (and b!2369284 (is-Cons!28020 (t!208095 l!9164))) b!2369673))

(declare-fun b_lambda!73917 () Bool)

(assert (= b_lambda!73915 (or start!232522 b_lambda!73917)))

(declare-fun bs!461162 () Bool)

(declare-fun d!695173 () Bool)

(assert (= bs!461162 (and d!695173 start!232522)))

(assert (=> bs!461162 (= (dynLambda!12068 lambda!87618 (h!33421 l!9164)) (validRegex!2669 (h!33421 l!9164)))))

(declare-fun m!2778005 () Bool)

(assert (=> bs!461162 m!2778005))

(assert (=> b!2369484 d!695173))

(push 1)

(assert (not b!2369620))

(assert (not b!2369592))

(assert (not bs!461162))

(assert (not d!695153))

(assert (not b!2369467))

(assert (not b!2369474))

(assert (not b!2369580))

(assert (not b!2369472))

(assert (not b!2369533))

(assert (not b!2369485))

(assert (not b!2369422))

(assert (not b!2369434))

(assert (not b!2369651))

(assert (not b!2369460))

(assert (not b!2369662))

(assert (not d!695159))

(assert (not b!2369652))

(assert (not bm!144076))

(assert (not b!2369643))

(assert (not b!2369521))

(assert (not b!2369658))

(assert (not b!2369581))

(assert (not b!2369478))

(assert (not b!2369534))

(assert (not b!2369544))

(assert (not b!2369656))

(assert (not b!2369583))

(assert (not b!2369591))

(assert (not b!2369384))

(assert (not b!2369659))

(assert (not d!695157))

(assert (not b!2369518))

(assert (not d!695133))

(assert (not d!695151))

(assert (not b!2369461))

(assert (not b!2369642))

(assert (not b!2369648))

(assert (not bm!144085))

(assert (not b!2369616))

(assert (not d!695171))

(assert (not d!695131))

(assert (not bm!144086))

(assert (not b!2369546))

(assert (not d!695149))

(assert (not b!2369477))

(assert (not b!2369470))

(assert (not b!2369519))

(assert (not d!695147))

(assert (not b!2369523))

(assert (not b!2369435))

(assert (not bm!144073))

(assert (not b!2369464))

(assert (not b!2369471))

(assert (not b!2369423))

(assert (not b!2369462))

(assert tp_is_empty!11293)

(assert (not b!2369663))

(assert (not d!695135))

(assert (not b!2369425))

(assert (not b!2369655))

(assert (not b!2369545))

(assert (not b!2369673))

(assert (not b!2369593))

(assert (not b!2369667))

(assert (not bm!144087))

(assert (not b!2369568))

(assert (not b!2369660))

(assert (not b!2369516))

(assert (not d!695161))

(assert (not b!2369517))

(assert (not b!2369476))

(assert (not b!2369650))

(assert (not b!2369615))

(assert (not b!2369664))

(assert (not b_lambda!73917))

(assert (not b!2369536))

(assert (not b!2369433))

(assert (not d!695169))

(assert (not b!2369666))

(assert (not d!695125))

(assert (not b!2369668))

(assert (not bm!144072))

(assert (not bm!144077))

(assert (not b!2369383))

(assert (not b!2369654))

(assert (not b!2369466))

(assert (not b!2369468))

(assert (not b!2369641))

(assert (not d!695167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

