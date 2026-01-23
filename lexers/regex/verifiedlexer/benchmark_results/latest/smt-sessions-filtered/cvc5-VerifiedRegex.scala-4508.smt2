; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239392 () Bool)

(assert start!239392)

(declare-fun b!2452413 () Bool)

(declare-fun e!1556411 () Bool)

(declare-fun tp!780136 () Bool)

(declare-fun tp!780134 () Bool)

(assert (=> b!2452413 (= e!1556411 (and tp!780136 tp!780134))))

(declare-fun b!2452414 () Bool)

(declare-fun res!1039898 () Bool)

(declare-fun e!1556409 () Bool)

(assert (=> b!2452414 (=> (not res!1039898) (not e!1556409))))

(declare-datatypes ((C!14574 0))(
  ( (C!14575 (val!8529 Int)) )
))
(declare-datatypes ((Regex!7208 0))(
  ( (ElementMatch!7208 (c!391358 C!14574)) (Concat!11844 (regOne!14928 Regex!7208) (regTwo!14928 Regex!7208)) (EmptyExpr!7208) (Star!7208 (reg!7537 Regex!7208)) (EmptyLang!7208) (Union!7208 (regOne!14929 Regex!7208) (regTwo!14929 Regex!7208)) )
))
(declare-fun r!13927 () Regex!7208)

(declare-datatypes ((List!28652 0))(
  ( (Nil!28554) (Cons!28554 (h!33955 Regex!7208) (t!208629 List!28652)) )
))
(declare-fun l!9164 () List!28652)

(declare-fun generalisedConcat!309 (List!28652) Regex!7208)

(assert (=> b!2452414 (= res!1039898 (= r!13927 (generalisedConcat!309 l!9164)))))

(declare-fun b!2452415 () Bool)

(declare-fun e!1556407 () Bool)

(declare-fun tp_is_empty!11829 () Bool)

(assert (=> b!2452415 (= e!1556407 tp_is_empty!11829)))

(declare-fun b!2452416 () Bool)

(declare-fun tp!780141 () Bool)

(assert (=> b!2452416 (= e!1556407 tp!780141)))

(declare-fun b!2452417 () Bool)

(declare-fun res!1039895 () Bool)

(declare-fun e!1556405 () Bool)

(assert (=> b!2452417 (=> res!1039895 e!1556405)))

(declare-fun isEmpty!16587 (List!28652) Bool)

(assert (=> b!2452417 (= res!1039895 (isEmpty!16587 l!9164))))

(declare-fun b!2452418 () Bool)

(declare-fun e!1556410 () Bool)

(assert (=> b!2452418 (= e!1556405 e!1556410)))

(declare-fun res!1039901 () Bool)

(assert (=> b!2452418 (=> res!1039901 e!1556410)))

(declare-fun lt!879834 () List!28652)

(assert (=> b!2452418 (= res!1039901 (not (isEmpty!16587 lt!879834)))))

(declare-fun tail!3853 (List!28652) List!28652)

(assert (=> b!2452418 (= lt!879834 (tail!3853 l!9164))))

(declare-fun b!2452419 () Bool)

(declare-fun res!1039900 () Bool)

(assert (=> b!2452419 (=> res!1039900 e!1556410)))

(assert (=> b!2452419 (= res!1039900 (not (= (generalisedConcat!309 lt!879834) EmptyExpr!7208)))))

(declare-fun b!2452420 () Bool)

(declare-fun e!1556406 () Bool)

(assert (=> b!2452420 (= e!1556410 e!1556406)))

(declare-fun res!1039896 () Bool)

(assert (=> b!2452420 (=> res!1039896 e!1556406)))

(declare-fun lt!879837 () Regex!7208)

(declare-datatypes ((List!28653 0))(
  ( (Nil!28555) (Cons!28555 (h!33956 C!14574) (t!208630 List!28653)) )
))
(declare-fun s!9460 () List!28653)

(declare-fun matchR!3323 (Regex!7208 List!28653) Bool)

(assert (=> b!2452420 (= res!1039896 (not (matchR!3323 lt!879837 s!9460)))))

(declare-fun head!5580 (List!28652) Regex!7208)

(assert (=> b!2452420 (= lt!879837 (head!5580 l!9164))))

(declare-fun b!2452421 () Bool)

(assert (=> b!2452421 (= e!1556409 (not e!1556405))))

(declare-fun res!1039899 () Bool)

(assert (=> b!2452421 (=> res!1039899 e!1556405)))

(assert (=> b!2452421 (= res!1039899 (or (is-Concat!11844 r!13927) (is-EmptyExpr!7208 r!13927)))))

(declare-fun matchRSpec!1055 (Regex!7208 List!28653) Bool)

(assert (=> b!2452421 (= (matchR!3323 r!13927 s!9460) (matchRSpec!1055 r!13927 s!9460))))

(declare-datatypes ((Unit!41871 0))(
  ( (Unit!41872) )
))
(declare-fun lt!879835 () Unit!41871)

(declare-fun mainMatchTheorem!1055 (Regex!7208 List!28653) Unit!41871)

(assert (=> b!2452421 (= lt!879835 (mainMatchTheorem!1055 r!13927 s!9460))))

(declare-fun b!2452422 () Bool)

(declare-fun tp!780138 () Bool)

(declare-fun tp!780137 () Bool)

(assert (=> b!2452422 (= e!1556407 (and tp!780138 tp!780137))))

(declare-fun b!2452424 () Bool)

(declare-fun tp!780140 () Bool)

(declare-fun tp!780135 () Bool)

(assert (=> b!2452424 (= e!1556407 (and tp!780140 tp!780135))))

(declare-fun b!2452425 () Bool)

(declare-fun e!1556408 () Bool)

(declare-fun tp!780139 () Bool)

(assert (=> b!2452425 (= e!1556408 (and tp_is_empty!11829 tp!780139))))

(declare-fun b!2452423 () Bool)

(declare-fun lt!879836 () Regex!7208)

(assert (=> b!2452423 (= e!1556406 (matchR!3323 lt!879836 s!9460))))

(declare-fun ++!7099 (List!28653 List!28653) List!28653)

(assert (=> b!2452423 (matchR!3323 lt!879836 (++!7099 s!9460 Nil!28555))))

(assert (=> b!2452423 (= lt!879836 (Concat!11844 lt!879837 EmptyExpr!7208))))

(declare-fun lt!879833 () Unit!41871)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!125 (Regex!7208 Regex!7208 List!28653 List!28653) Unit!41871)

(assert (=> b!2452423 (= lt!879833 (lemmaTwoRegexMatchThenConcatMatchesConcatString!125 lt!879837 EmptyExpr!7208 s!9460 Nil!28555))))

(declare-fun res!1039897 () Bool)

(assert (=> start!239392 (=> (not res!1039897) (not e!1556409))))

(declare-fun lambda!92884 () Int)

(declare-fun forall!5842 (List!28652 Int) Bool)

(assert (=> start!239392 (= res!1039897 (forall!5842 l!9164 lambda!92884))))

(assert (=> start!239392 e!1556409))

(assert (=> start!239392 e!1556411))

(assert (=> start!239392 e!1556407))

(assert (=> start!239392 e!1556408))

(assert (= (and start!239392 res!1039897) b!2452414))

(assert (= (and b!2452414 res!1039898) b!2452421))

(assert (= (and b!2452421 (not res!1039899)) b!2452417))

(assert (= (and b!2452417 (not res!1039895)) b!2452418))

(assert (= (and b!2452418 (not res!1039901)) b!2452419))

(assert (= (and b!2452419 (not res!1039900)) b!2452420))

(assert (= (and b!2452420 (not res!1039896)) b!2452423))

(assert (= (and start!239392 (is-Cons!28554 l!9164)) b!2452413))

(assert (= (and start!239392 (is-ElementMatch!7208 r!13927)) b!2452415))

(assert (= (and start!239392 (is-Concat!11844 r!13927)) b!2452422))

(assert (= (and start!239392 (is-Star!7208 r!13927)) b!2452416))

(assert (= (and start!239392 (is-Union!7208 r!13927)) b!2452424))

(assert (= (and start!239392 (is-Cons!28555 s!9460)) b!2452425))

(declare-fun m!2825315 () Bool)

(assert (=> b!2452414 m!2825315))

(declare-fun m!2825317 () Bool)

(assert (=> b!2452420 m!2825317))

(declare-fun m!2825319 () Bool)

(assert (=> b!2452420 m!2825319))

(declare-fun m!2825321 () Bool)

(assert (=> start!239392 m!2825321))

(declare-fun m!2825323 () Bool)

(assert (=> b!2452423 m!2825323))

(declare-fun m!2825325 () Bool)

(assert (=> b!2452423 m!2825325))

(assert (=> b!2452423 m!2825325))

(declare-fun m!2825327 () Bool)

(assert (=> b!2452423 m!2825327))

(declare-fun m!2825329 () Bool)

(assert (=> b!2452423 m!2825329))

(declare-fun m!2825331 () Bool)

(assert (=> b!2452418 m!2825331))

(declare-fun m!2825333 () Bool)

(assert (=> b!2452418 m!2825333))

(declare-fun m!2825335 () Bool)

(assert (=> b!2452421 m!2825335))

(declare-fun m!2825337 () Bool)

(assert (=> b!2452421 m!2825337))

(declare-fun m!2825339 () Bool)

(assert (=> b!2452421 m!2825339))

(declare-fun m!2825341 () Bool)

(assert (=> b!2452417 m!2825341))

(declare-fun m!2825343 () Bool)

(assert (=> b!2452419 m!2825343))

(push 1)

(assert (not b!2452423))

(assert (not b!2452414))

(assert (not b!2452425))

(assert (not b!2452424))

(assert (not b!2452422))

(assert (not start!239392))

(assert (not b!2452419))

(assert (not b!2452418))

(assert (not b!2452417))

(assert tp_is_empty!11829)

(assert (not b!2452421))

(assert (not b!2452420))

(assert (not b!2452413))

(assert (not b!2452416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!706947 () Bool)

(declare-fun res!1039927 () Bool)

(declare-fun e!1556437 () Bool)

(assert (=> d!706947 (=> res!1039927 e!1556437)))

(assert (=> d!706947 (= res!1039927 (is-Nil!28554 l!9164))))

(assert (=> d!706947 (= (forall!5842 l!9164 lambda!92884) e!1556437)))

(declare-fun b!2452469 () Bool)

(declare-fun e!1556438 () Bool)

(assert (=> b!2452469 (= e!1556437 e!1556438)))

(declare-fun res!1039928 () Bool)

(assert (=> b!2452469 (=> (not res!1039928) (not e!1556438))))

(declare-fun dynLambda!12267 (Int Regex!7208) Bool)

(assert (=> b!2452469 (= res!1039928 (dynLambda!12267 lambda!92884 (h!33955 l!9164)))))

(declare-fun b!2452470 () Bool)

(assert (=> b!2452470 (= e!1556438 (forall!5842 (t!208629 l!9164) lambda!92884))))

(assert (= (and d!706947 (not res!1039927)) b!2452469))

(assert (= (and b!2452469 res!1039928) b!2452470))

(declare-fun b_lambda!75119 () Bool)

(assert (=> (not b_lambda!75119) (not b!2452469)))

(declare-fun m!2825375 () Bool)

(assert (=> b!2452469 m!2825375))

(declare-fun m!2825377 () Bool)

(assert (=> b!2452470 m!2825377))

(assert (=> start!239392 d!706947))

(declare-fun b!2452499 () Bool)

(declare-fun e!1556454 () Bool)

(declare-fun lt!879855 () Bool)

(declare-fun call!150669 () Bool)

(assert (=> b!2452499 (= e!1556454 (= lt!879855 call!150669))))

(declare-fun b!2452500 () Bool)

(declare-fun res!1039952 () Bool)

(declare-fun e!1556453 () Bool)

(assert (=> b!2452500 (=> res!1039952 e!1556453)))

(assert (=> b!2452500 (= res!1039952 (not (is-ElementMatch!7208 lt!879836)))))

(declare-fun e!1556459 () Bool)

(assert (=> b!2452500 (= e!1556459 e!1556453)))

(declare-fun b!2452501 () Bool)

(declare-fun res!1039949 () Bool)

(declare-fun e!1556455 () Bool)

(assert (=> b!2452501 (=> (not res!1039949) (not e!1556455))))

(assert (=> b!2452501 (= res!1039949 (not call!150669))))

(declare-fun b!2452502 () Bool)

(declare-fun e!1556457 () Bool)

(declare-fun e!1556456 () Bool)

(assert (=> b!2452502 (= e!1556457 e!1556456)))

(declare-fun res!1039946 () Bool)

(assert (=> b!2452502 (=> res!1039946 e!1556456)))

(assert (=> b!2452502 (= res!1039946 call!150669)))

(declare-fun b!2452503 () Bool)

(declare-fun res!1039945 () Bool)

(assert (=> b!2452503 (=> res!1039945 e!1556453)))

(assert (=> b!2452503 (= res!1039945 e!1556455)))

(declare-fun res!1039951 () Bool)

(assert (=> b!2452503 (=> (not res!1039951) (not e!1556455))))

(assert (=> b!2452503 (= res!1039951 lt!879855)))

(declare-fun b!2452504 () Bool)

(assert (=> b!2452504 (= e!1556453 e!1556457)))

(declare-fun res!1039948 () Bool)

(assert (=> b!2452504 (=> (not res!1039948) (not e!1556457))))

(assert (=> b!2452504 (= res!1039948 (not lt!879855))))

(declare-fun b!2452505 () Bool)

(declare-fun e!1556458 () Bool)

(declare-fun derivativeStep!1863 (Regex!7208 C!14574) Regex!7208)

(declare-fun head!5582 (List!28653) C!14574)

(declare-fun tail!3855 (List!28653) List!28653)

(assert (=> b!2452505 (= e!1556458 (matchR!3323 (derivativeStep!1863 lt!879836 (head!5582 s!9460)) (tail!3855 s!9460)))))

(declare-fun b!2452506 () Bool)

(declare-fun nullable!2209 (Regex!7208) Bool)

(assert (=> b!2452506 (= e!1556458 (nullable!2209 lt!879836))))

(declare-fun b!2452507 () Bool)

(assert (=> b!2452507 (= e!1556455 (= (head!5582 s!9460) (c!391358 lt!879836)))))

(declare-fun b!2452508 () Bool)

(assert (=> b!2452508 (= e!1556456 (not (= (head!5582 s!9460) (c!391358 lt!879836))))))

(declare-fun b!2452509 () Bool)

(assert (=> b!2452509 (= e!1556454 e!1556459)))

(declare-fun c!391367 () Bool)

(assert (=> b!2452509 (= c!391367 (is-EmptyLang!7208 lt!879836))))

(declare-fun b!2452510 () Bool)

(assert (=> b!2452510 (= e!1556459 (not lt!879855))))

(declare-fun b!2452511 () Bool)

(declare-fun res!1039947 () Bool)

(assert (=> b!2452511 (=> res!1039947 e!1556456)))

(declare-fun isEmpty!16589 (List!28653) Bool)

(assert (=> b!2452511 (= res!1039947 (not (isEmpty!16589 (tail!3855 s!9460))))))

(declare-fun b!2452512 () Bool)

(declare-fun res!1039950 () Bool)

(assert (=> b!2452512 (=> (not res!1039950) (not e!1556455))))

(assert (=> b!2452512 (= res!1039950 (isEmpty!16589 (tail!3855 s!9460)))))

(declare-fun d!706949 () Bool)

(assert (=> d!706949 e!1556454))

(declare-fun c!391366 () Bool)

(assert (=> d!706949 (= c!391366 (is-EmptyExpr!7208 lt!879836))))

(assert (=> d!706949 (= lt!879855 e!1556458)))

(declare-fun c!391368 () Bool)

(assert (=> d!706949 (= c!391368 (isEmpty!16589 s!9460))))

(declare-fun validRegex!2902 (Regex!7208) Bool)

(assert (=> d!706949 (validRegex!2902 lt!879836)))

(assert (=> d!706949 (= (matchR!3323 lt!879836 s!9460) lt!879855)))

(declare-fun bm!150664 () Bool)

(assert (=> bm!150664 (= call!150669 (isEmpty!16589 s!9460))))

(assert (= (and d!706949 c!391368) b!2452506))

(assert (= (and d!706949 (not c!391368)) b!2452505))

(assert (= (and d!706949 c!391366) b!2452499))

(assert (= (and d!706949 (not c!391366)) b!2452509))

(assert (= (and b!2452509 c!391367) b!2452510))

(assert (= (and b!2452509 (not c!391367)) b!2452500))

(assert (= (and b!2452500 (not res!1039952)) b!2452503))

(assert (= (and b!2452503 res!1039951) b!2452501))

(assert (= (and b!2452501 res!1039949) b!2452512))

(assert (= (and b!2452512 res!1039950) b!2452507))

(assert (= (and b!2452503 (not res!1039945)) b!2452504))

(assert (= (and b!2452504 res!1039948) b!2452502))

(assert (= (and b!2452502 (not res!1039946)) b!2452511))

(assert (= (and b!2452511 (not res!1039947)) b!2452508))

(assert (= (or b!2452499 b!2452501 b!2452502) bm!150664))

(declare-fun m!2825379 () Bool)

(assert (=> bm!150664 m!2825379))

(declare-fun m!2825381 () Bool)

(assert (=> b!2452506 m!2825381))

(declare-fun m!2825383 () Bool)

(assert (=> b!2452508 m!2825383))

(assert (=> b!2452507 m!2825383))

(declare-fun m!2825385 () Bool)

(assert (=> b!2452512 m!2825385))

(assert (=> b!2452512 m!2825385))

(declare-fun m!2825387 () Bool)

(assert (=> b!2452512 m!2825387))

(assert (=> d!706949 m!2825379))

(declare-fun m!2825389 () Bool)

(assert (=> d!706949 m!2825389))

(assert (=> b!2452505 m!2825383))

(assert (=> b!2452505 m!2825383))

(declare-fun m!2825391 () Bool)

(assert (=> b!2452505 m!2825391))

(assert (=> b!2452505 m!2825385))

(assert (=> b!2452505 m!2825391))

(assert (=> b!2452505 m!2825385))

(declare-fun m!2825393 () Bool)

(assert (=> b!2452505 m!2825393))

(assert (=> b!2452511 m!2825385))

(assert (=> b!2452511 m!2825385))

(assert (=> b!2452511 m!2825387))

(assert (=> b!2452423 d!706949))

(declare-fun b!2452513 () Bool)

(declare-fun e!1556461 () Bool)

(declare-fun lt!879856 () Bool)

(declare-fun call!150670 () Bool)

(assert (=> b!2452513 (= e!1556461 (= lt!879856 call!150670))))

(declare-fun b!2452514 () Bool)

(declare-fun res!1039960 () Bool)

(declare-fun e!1556460 () Bool)

(assert (=> b!2452514 (=> res!1039960 e!1556460)))

(assert (=> b!2452514 (= res!1039960 (not (is-ElementMatch!7208 lt!879836)))))

(declare-fun e!1556466 () Bool)

(assert (=> b!2452514 (= e!1556466 e!1556460)))

(declare-fun b!2452515 () Bool)

(declare-fun res!1039957 () Bool)

(declare-fun e!1556462 () Bool)

(assert (=> b!2452515 (=> (not res!1039957) (not e!1556462))))

(assert (=> b!2452515 (= res!1039957 (not call!150670))))

(declare-fun b!2452516 () Bool)

(declare-fun e!1556464 () Bool)

(declare-fun e!1556463 () Bool)

(assert (=> b!2452516 (= e!1556464 e!1556463)))

(declare-fun res!1039954 () Bool)

(assert (=> b!2452516 (=> res!1039954 e!1556463)))

(assert (=> b!2452516 (= res!1039954 call!150670)))

(declare-fun b!2452517 () Bool)

(declare-fun res!1039953 () Bool)

(assert (=> b!2452517 (=> res!1039953 e!1556460)))

(assert (=> b!2452517 (= res!1039953 e!1556462)))

(declare-fun res!1039959 () Bool)

(assert (=> b!2452517 (=> (not res!1039959) (not e!1556462))))

(assert (=> b!2452517 (= res!1039959 lt!879856)))

(declare-fun b!2452518 () Bool)

(assert (=> b!2452518 (= e!1556460 e!1556464)))

(declare-fun res!1039956 () Bool)

(assert (=> b!2452518 (=> (not res!1039956) (not e!1556464))))

(assert (=> b!2452518 (= res!1039956 (not lt!879856))))

(declare-fun b!2452519 () Bool)

(declare-fun e!1556465 () Bool)

(assert (=> b!2452519 (= e!1556465 (matchR!3323 (derivativeStep!1863 lt!879836 (head!5582 (++!7099 s!9460 Nil!28555))) (tail!3855 (++!7099 s!9460 Nil!28555))))))

(declare-fun b!2452520 () Bool)

(assert (=> b!2452520 (= e!1556465 (nullable!2209 lt!879836))))

(declare-fun b!2452521 () Bool)

(assert (=> b!2452521 (= e!1556462 (= (head!5582 (++!7099 s!9460 Nil!28555)) (c!391358 lt!879836)))))

(declare-fun b!2452522 () Bool)

(assert (=> b!2452522 (= e!1556463 (not (= (head!5582 (++!7099 s!9460 Nil!28555)) (c!391358 lt!879836))))))

(declare-fun b!2452523 () Bool)

(assert (=> b!2452523 (= e!1556461 e!1556466)))

(declare-fun c!391370 () Bool)

(assert (=> b!2452523 (= c!391370 (is-EmptyLang!7208 lt!879836))))

(declare-fun b!2452524 () Bool)

(assert (=> b!2452524 (= e!1556466 (not lt!879856))))

(declare-fun b!2452525 () Bool)

(declare-fun res!1039955 () Bool)

(assert (=> b!2452525 (=> res!1039955 e!1556463)))

(assert (=> b!2452525 (= res!1039955 (not (isEmpty!16589 (tail!3855 (++!7099 s!9460 Nil!28555)))))))

(declare-fun b!2452526 () Bool)

(declare-fun res!1039958 () Bool)

(assert (=> b!2452526 (=> (not res!1039958) (not e!1556462))))

(assert (=> b!2452526 (= res!1039958 (isEmpty!16589 (tail!3855 (++!7099 s!9460 Nil!28555))))))

(declare-fun d!706957 () Bool)

(assert (=> d!706957 e!1556461))

(declare-fun c!391369 () Bool)

(assert (=> d!706957 (= c!391369 (is-EmptyExpr!7208 lt!879836))))

(assert (=> d!706957 (= lt!879856 e!1556465)))

(declare-fun c!391371 () Bool)

(assert (=> d!706957 (= c!391371 (isEmpty!16589 (++!7099 s!9460 Nil!28555)))))

(assert (=> d!706957 (validRegex!2902 lt!879836)))

(assert (=> d!706957 (= (matchR!3323 lt!879836 (++!7099 s!9460 Nil!28555)) lt!879856)))

(declare-fun bm!150665 () Bool)

(assert (=> bm!150665 (= call!150670 (isEmpty!16589 (++!7099 s!9460 Nil!28555)))))

(assert (= (and d!706957 c!391371) b!2452520))

(assert (= (and d!706957 (not c!391371)) b!2452519))

(assert (= (and d!706957 c!391369) b!2452513))

(assert (= (and d!706957 (not c!391369)) b!2452523))

(assert (= (and b!2452523 c!391370) b!2452524))

(assert (= (and b!2452523 (not c!391370)) b!2452514))

(assert (= (and b!2452514 (not res!1039960)) b!2452517))

(assert (= (and b!2452517 res!1039959) b!2452515))

(assert (= (and b!2452515 res!1039957) b!2452526))

(assert (= (and b!2452526 res!1039958) b!2452521))

(assert (= (and b!2452517 (not res!1039953)) b!2452518))

(assert (= (and b!2452518 res!1039956) b!2452516))

(assert (= (and b!2452516 (not res!1039954)) b!2452525))

(assert (= (and b!2452525 (not res!1039955)) b!2452522))

(assert (= (or b!2452513 b!2452515 b!2452516) bm!150665))

(assert (=> bm!150665 m!2825325))

(declare-fun m!2825395 () Bool)

(assert (=> bm!150665 m!2825395))

(assert (=> b!2452520 m!2825381))

(assert (=> b!2452522 m!2825325))

(declare-fun m!2825397 () Bool)

(assert (=> b!2452522 m!2825397))

(assert (=> b!2452521 m!2825325))

(assert (=> b!2452521 m!2825397))

(assert (=> b!2452526 m!2825325))

(declare-fun m!2825399 () Bool)

(assert (=> b!2452526 m!2825399))

(assert (=> b!2452526 m!2825399))

(declare-fun m!2825401 () Bool)

(assert (=> b!2452526 m!2825401))

(assert (=> d!706957 m!2825325))

(assert (=> d!706957 m!2825395))

(assert (=> d!706957 m!2825389))

(assert (=> b!2452519 m!2825325))

(assert (=> b!2452519 m!2825397))

(assert (=> b!2452519 m!2825397))

(declare-fun m!2825403 () Bool)

(assert (=> b!2452519 m!2825403))

(assert (=> b!2452519 m!2825325))

(assert (=> b!2452519 m!2825399))

(assert (=> b!2452519 m!2825403))

(assert (=> b!2452519 m!2825399))

(declare-fun m!2825405 () Bool)

(assert (=> b!2452519 m!2825405))

(assert (=> b!2452525 m!2825325))

(assert (=> b!2452525 m!2825399))

(assert (=> b!2452525 m!2825399))

(assert (=> b!2452525 m!2825401))

(assert (=> b!2452423 d!706957))

(declare-fun b!2452538 () Bool)

(declare-fun e!1556472 () Bool)

(declare-fun lt!879859 () List!28653)

(assert (=> b!2452538 (= e!1556472 (or (not (= Nil!28555 Nil!28555)) (= lt!879859 s!9460)))))

(declare-fun b!2452535 () Bool)

(declare-fun e!1556471 () List!28653)

(assert (=> b!2452535 (= e!1556471 Nil!28555)))

(declare-fun d!706959 () Bool)

(assert (=> d!706959 e!1556472))

(declare-fun res!1039966 () Bool)

(assert (=> d!706959 (=> (not res!1039966) (not e!1556472))))

(declare-fun content!3931 (List!28653) (Set C!14574))

(assert (=> d!706959 (= res!1039966 (= (content!3931 lt!879859) (set.union (content!3931 s!9460) (content!3931 Nil!28555))))))

(assert (=> d!706959 (= lt!879859 e!1556471)))

(declare-fun c!391374 () Bool)

(assert (=> d!706959 (= c!391374 (is-Nil!28555 s!9460))))

(assert (=> d!706959 (= (++!7099 s!9460 Nil!28555) lt!879859)))

(declare-fun b!2452536 () Bool)

(assert (=> b!2452536 (= e!1556471 (Cons!28555 (h!33956 s!9460) (++!7099 (t!208630 s!9460) Nil!28555)))))

(declare-fun b!2452537 () Bool)

(declare-fun res!1039965 () Bool)

(assert (=> b!2452537 (=> (not res!1039965) (not e!1556472))))

(declare-fun size!22269 (List!28653) Int)

(assert (=> b!2452537 (= res!1039965 (= (size!22269 lt!879859) (+ (size!22269 s!9460) (size!22269 Nil!28555))))))

(assert (= (and d!706959 c!391374) b!2452535))

(assert (= (and d!706959 (not c!391374)) b!2452536))

(assert (= (and d!706959 res!1039966) b!2452537))

(assert (= (and b!2452537 res!1039965) b!2452538))

(declare-fun m!2825407 () Bool)

(assert (=> d!706959 m!2825407))

(declare-fun m!2825409 () Bool)

(assert (=> d!706959 m!2825409))

(declare-fun m!2825411 () Bool)

(assert (=> d!706959 m!2825411))

(declare-fun m!2825413 () Bool)

(assert (=> b!2452536 m!2825413))

(declare-fun m!2825415 () Bool)

(assert (=> b!2452537 m!2825415))

(declare-fun m!2825417 () Bool)

(assert (=> b!2452537 m!2825417))

(declare-fun m!2825419 () Bool)

(assert (=> b!2452537 m!2825419))

(assert (=> b!2452423 d!706959))

(declare-fun d!706961 () Bool)

(assert (=> d!706961 (matchR!3323 (Concat!11844 lt!879837 EmptyExpr!7208) (++!7099 s!9460 Nil!28555))))

(declare-fun lt!879862 () Unit!41871)

(declare-fun choose!14531 (Regex!7208 Regex!7208 List!28653 List!28653) Unit!41871)

(assert (=> d!706961 (= lt!879862 (choose!14531 lt!879837 EmptyExpr!7208 s!9460 Nil!28555))))

(declare-fun e!1556475 () Bool)

(assert (=> d!706961 e!1556475))

(declare-fun res!1039969 () Bool)

(assert (=> d!706961 (=> (not res!1039969) (not e!1556475))))

(assert (=> d!706961 (= res!1039969 (validRegex!2902 lt!879837))))

(assert (=> d!706961 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!125 lt!879837 EmptyExpr!7208 s!9460 Nil!28555) lt!879862)))

(declare-fun b!2452541 () Bool)

(assert (=> b!2452541 (= e!1556475 (validRegex!2902 EmptyExpr!7208))))

(assert (= (and d!706961 res!1039969) b!2452541))

(assert (=> d!706961 m!2825325))

(assert (=> d!706961 m!2825325))

(declare-fun m!2825421 () Bool)

(assert (=> d!706961 m!2825421))

(declare-fun m!2825423 () Bool)

(assert (=> d!706961 m!2825423))

(declare-fun m!2825425 () Bool)

(assert (=> d!706961 m!2825425))

(declare-fun m!2825427 () Bool)

(assert (=> b!2452541 m!2825427))

(assert (=> b!2452423 d!706961))

(declare-fun d!706963 () Bool)

(assert (=> d!706963 (= (isEmpty!16587 lt!879834) (is-Nil!28554 lt!879834))))

(assert (=> b!2452418 d!706963))

(declare-fun d!706965 () Bool)

(assert (=> d!706965 (= (tail!3853 l!9164) (t!208629 l!9164))))

(assert (=> b!2452418 d!706965))

(declare-fun d!706967 () Bool)

(assert (=> d!706967 (= (isEmpty!16587 l!9164) (is-Nil!28554 l!9164))))

(assert (=> b!2452417 d!706967))

(declare-fun bs!465788 () Bool)

(declare-fun d!706969 () Bool)

(assert (= bs!465788 (and d!706969 start!239392)))

(declare-fun lambda!92890 () Int)

(assert (=> bs!465788 (= lambda!92890 lambda!92884)))

(declare-fun b!2452590 () Bool)

(declare-fun e!1556505 () Regex!7208)

(declare-fun e!1556507 () Regex!7208)

(assert (=> b!2452590 (= e!1556505 e!1556507)))

(declare-fun c!391389 () Bool)

(assert (=> b!2452590 (= c!391389 (is-Cons!28554 lt!879834))))

(declare-fun b!2452591 () Bool)

(declare-fun e!1556503 () Bool)

(assert (=> b!2452591 (= e!1556503 (isEmpty!16587 (t!208629 lt!879834)))))

(declare-fun b!2452592 () Bool)

(declare-fun e!1556506 () Bool)

(declare-fun lt!879867 () Regex!7208)

(assert (=> b!2452592 (= e!1556506 (= lt!879867 (head!5580 lt!879834)))))

(declare-fun b!2452593 () Bool)

(assert (=> b!2452593 (= e!1556507 EmptyExpr!7208)))

(declare-fun b!2452594 () Bool)

(declare-fun isConcat!228 (Regex!7208) Bool)

(assert (=> b!2452594 (= e!1556506 (isConcat!228 lt!879867))))

(declare-fun b!2452595 () Bool)

(declare-fun e!1556504 () Bool)

(assert (=> b!2452595 (= e!1556504 e!1556506)))

(declare-fun c!391390 () Bool)

(assert (=> b!2452595 (= c!391390 (isEmpty!16587 (tail!3853 lt!879834)))))

(declare-fun b!2452596 () Bool)

(declare-fun isEmptyExpr!228 (Regex!7208) Bool)

(assert (=> b!2452596 (= e!1556504 (isEmptyExpr!228 lt!879867))))

(declare-fun b!2452597 () Bool)

(declare-fun e!1556502 () Bool)

(assert (=> b!2452597 (= e!1556502 e!1556504)))

(declare-fun c!391391 () Bool)

(assert (=> b!2452597 (= c!391391 (isEmpty!16587 lt!879834))))

(assert (=> d!706969 e!1556502))

(declare-fun res!1039990 () Bool)

(assert (=> d!706969 (=> (not res!1039990) (not e!1556502))))

(assert (=> d!706969 (= res!1039990 (validRegex!2902 lt!879867))))

(assert (=> d!706969 (= lt!879867 e!1556505)))

(declare-fun c!391392 () Bool)

(assert (=> d!706969 (= c!391392 e!1556503)))

(declare-fun res!1039991 () Bool)

(assert (=> d!706969 (=> (not res!1039991) (not e!1556503))))

(assert (=> d!706969 (= res!1039991 (is-Cons!28554 lt!879834))))

(assert (=> d!706969 (forall!5842 lt!879834 lambda!92890)))

(assert (=> d!706969 (= (generalisedConcat!309 lt!879834) lt!879867)))

(declare-fun b!2452598 () Bool)

(assert (=> b!2452598 (= e!1556507 (Concat!11844 (h!33955 lt!879834) (generalisedConcat!309 (t!208629 lt!879834))))))

(declare-fun b!2452599 () Bool)

(assert (=> b!2452599 (= e!1556505 (h!33955 lt!879834))))

(assert (= (and d!706969 res!1039991) b!2452591))

(assert (= (and d!706969 c!391392) b!2452599))

(assert (= (and d!706969 (not c!391392)) b!2452590))

(assert (= (and b!2452590 c!391389) b!2452598))

(assert (= (and b!2452590 (not c!391389)) b!2452593))

(assert (= (and d!706969 res!1039990) b!2452597))

(assert (= (and b!2452597 c!391391) b!2452596))

(assert (= (and b!2452597 (not c!391391)) b!2452595))

(assert (= (and b!2452595 c!391390) b!2452592))

(assert (= (and b!2452595 (not c!391390)) b!2452594))

(declare-fun m!2825429 () Bool)

(assert (=> b!2452594 m!2825429))

(declare-fun m!2825431 () Bool)

(assert (=> b!2452596 m!2825431))

(declare-fun m!2825433 () Bool)

(assert (=> b!2452598 m!2825433))

(assert (=> b!2452597 m!2825331))

(declare-fun m!2825435 () Bool)

(assert (=> d!706969 m!2825435))

(declare-fun m!2825437 () Bool)

(assert (=> d!706969 m!2825437))

(declare-fun m!2825439 () Bool)

(assert (=> b!2452591 m!2825439))

(declare-fun m!2825441 () Bool)

(assert (=> b!2452595 m!2825441))

(assert (=> b!2452595 m!2825441))

(declare-fun m!2825443 () Bool)

(assert (=> b!2452595 m!2825443))

(declare-fun m!2825445 () Bool)

(assert (=> b!2452592 m!2825445))

(assert (=> b!2452419 d!706969))

(declare-fun bs!465789 () Bool)

(declare-fun d!706971 () Bool)

(assert (= bs!465789 (and d!706971 start!239392)))

(declare-fun lambda!92891 () Int)

(assert (=> bs!465789 (= lambda!92891 lambda!92884)))

(declare-fun bs!465790 () Bool)

(assert (= bs!465790 (and d!706971 d!706969)))

(assert (=> bs!465790 (= lambda!92891 lambda!92890)))

(declare-fun b!2452600 () Bool)

(declare-fun e!1556511 () Regex!7208)

(declare-fun e!1556513 () Regex!7208)

(assert (=> b!2452600 (= e!1556511 e!1556513)))

(declare-fun c!391393 () Bool)

(assert (=> b!2452600 (= c!391393 (is-Cons!28554 l!9164))))

(declare-fun b!2452601 () Bool)

(declare-fun e!1556509 () Bool)

(assert (=> b!2452601 (= e!1556509 (isEmpty!16587 (t!208629 l!9164)))))

(declare-fun b!2452602 () Bool)

(declare-fun e!1556512 () Bool)

(declare-fun lt!879868 () Regex!7208)

(assert (=> b!2452602 (= e!1556512 (= lt!879868 (head!5580 l!9164)))))

(declare-fun b!2452603 () Bool)

(assert (=> b!2452603 (= e!1556513 EmptyExpr!7208)))

(declare-fun b!2452604 () Bool)

(assert (=> b!2452604 (= e!1556512 (isConcat!228 lt!879868))))

(declare-fun b!2452605 () Bool)

(declare-fun e!1556510 () Bool)

(assert (=> b!2452605 (= e!1556510 e!1556512)))

(declare-fun c!391394 () Bool)

(assert (=> b!2452605 (= c!391394 (isEmpty!16587 (tail!3853 l!9164)))))

(declare-fun b!2452606 () Bool)

(assert (=> b!2452606 (= e!1556510 (isEmptyExpr!228 lt!879868))))

(declare-fun b!2452607 () Bool)

(declare-fun e!1556508 () Bool)

(assert (=> b!2452607 (= e!1556508 e!1556510)))

(declare-fun c!391395 () Bool)

(assert (=> b!2452607 (= c!391395 (isEmpty!16587 l!9164))))

(assert (=> d!706971 e!1556508))

(declare-fun res!1039992 () Bool)

(assert (=> d!706971 (=> (not res!1039992) (not e!1556508))))

(assert (=> d!706971 (= res!1039992 (validRegex!2902 lt!879868))))

(assert (=> d!706971 (= lt!879868 e!1556511)))

(declare-fun c!391396 () Bool)

(assert (=> d!706971 (= c!391396 e!1556509)))

(declare-fun res!1039993 () Bool)

(assert (=> d!706971 (=> (not res!1039993) (not e!1556509))))

(assert (=> d!706971 (= res!1039993 (is-Cons!28554 l!9164))))

(assert (=> d!706971 (forall!5842 l!9164 lambda!92891)))

(assert (=> d!706971 (= (generalisedConcat!309 l!9164) lt!879868)))

(declare-fun b!2452608 () Bool)

(assert (=> b!2452608 (= e!1556513 (Concat!11844 (h!33955 l!9164) (generalisedConcat!309 (t!208629 l!9164))))))

(declare-fun b!2452609 () Bool)

(assert (=> b!2452609 (= e!1556511 (h!33955 l!9164))))

(assert (= (and d!706971 res!1039993) b!2452601))

(assert (= (and d!706971 c!391396) b!2452609))

(assert (= (and d!706971 (not c!391396)) b!2452600))

(assert (= (and b!2452600 c!391393) b!2452608))

(assert (= (and b!2452600 (not c!391393)) b!2452603))

(assert (= (and d!706971 res!1039992) b!2452607))

(assert (= (and b!2452607 c!391395) b!2452606))

(assert (= (and b!2452607 (not c!391395)) b!2452605))

(assert (= (and b!2452605 c!391394) b!2452602))

(assert (= (and b!2452605 (not c!391394)) b!2452604))

(declare-fun m!2825447 () Bool)

(assert (=> b!2452604 m!2825447))

(declare-fun m!2825449 () Bool)

(assert (=> b!2452606 m!2825449))

(declare-fun m!2825451 () Bool)

(assert (=> b!2452608 m!2825451))

(assert (=> b!2452607 m!2825341))

(declare-fun m!2825453 () Bool)

(assert (=> d!706971 m!2825453))

(declare-fun m!2825455 () Bool)

(assert (=> d!706971 m!2825455))

(declare-fun m!2825457 () Bool)

(assert (=> b!2452601 m!2825457))

(assert (=> b!2452605 m!2825333))

(assert (=> b!2452605 m!2825333))

(declare-fun m!2825459 () Bool)

(assert (=> b!2452605 m!2825459))

(assert (=> b!2452602 m!2825319))

(assert (=> b!2452414 d!706971))

(declare-fun b!2452610 () Bool)

(declare-fun e!1556515 () Bool)

(declare-fun lt!879869 () Bool)

(declare-fun call!150673 () Bool)

(assert (=> b!2452610 (= e!1556515 (= lt!879869 call!150673))))

(declare-fun b!2452611 () Bool)

(declare-fun res!1040001 () Bool)

(declare-fun e!1556514 () Bool)

(assert (=> b!2452611 (=> res!1040001 e!1556514)))

(assert (=> b!2452611 (= res!1040001 (not (is-ElementMatch!7208 lt!879837)))))

(declare-fun e!1556520 () Bool)

(assert (=> b!2452611 (= e!1556520 e!1556514)))

(declare-fun b!2452612 () Bool)

(declare-fun res!1039998 () Bool)

(declare-fun e!1556516 () Bool)

(assert (=> b!2452612 (=> (not res!1039998) (not e!1556516))))

(assert (=> b!2452612 (= res!1039998 (not call!150673))))

(declare-fun b!2452613 () Bool)

(declare-fun e!1556518 () Bool)

(declare-fun e!1556517 () Bool)

(assert (=> b!2452613 (= e!1556518 e!1556517)))

(declare-fun res!1039995 () Bool)

(assert (=> b!2452613 (=> res!1039995 e!1556517)))

(assert (=> b!2452613 (= res!1039995 call!150673)))

(declare-fun b!2452614 () Bool)

(declare-fun res!1039994 () Bool)

(assert (=> b!2452614 (=> res!1039994 e!1556514)))

(assert (=> b!2452614 (= res!1039994 e!1556516)))

(declare-fun res!1040000 () Bool)

(assert (=> b!2452614 (=> (not res!1040000) (not e!1556516))))

(assert (=> b!2452614 (= res!1040000 lt!879869)))

(declare-fun b!2452615 () Bool)

(assert (=> b!2452615 (= e!1556514 e!1556518)))

(declare-fun res!1039997 () Bool)

(assert (=> b!2452615 (=> (not res!1039997) (not e!1556518))))

(assert (=> b!2452615 (= res!1039997 (not lt!879869))))

(declare-fun b!2452616 () Bool)

(declare-fun e!1556519 () Bool)

(assert (=> b!2452616 (= e!1556519 (matchR!3323 (derivativeStep!1863 lt!879837 (head!5582 s!9460)) (tail!3855 s!9460)))))

(declare-fun b!2452617 () Bool)

(assert (=> b!2452617 (= e!1556519 (nullable!2209 lt!879837))))

(declare-fun b!2452618 () Bool)

(assert (=> b!2452618 (= e!1556516 (= (head!5582 s!9460) (c!391358 lt!879837)))))

(declare-fun b!2452619 () Bool)

(assert (=> b!2452619 (= e!1556517 (not (= (head!5582 s!9460) (c!391358 lt!879837))))))

(declare-fun b!2452620 () Bool)

(assert (=> b!2452620 (= e!1556515 e!1556520)))

(declare-fun c!391398 () Bool)

(assert (=> b!2452620 (= c!391398 (is-EmptyLang!7208 lt!879837))))

(declare-fun b!2452621 () Bool)

(assert (=> b!2452621 (= e!1556520 (not lt!879869))))

(declare-fun b!2452622 () Bool)

(declare-fun res!1039996 () Bool)

(assert (=> b!2452622 (=> res!1039996 e!1556517)))

(assert (=> b!2452622 (= res!1039996 (not (isEmpty!16589 (tail!3855 s!9460))))))

(declare-fun b!2452623 () Bool)

(declare-fun res!1039999 () Bool)

(assert (=> b!2452623 (=> (not res!1039999) (not e!1556516))))

(assert (=> b!2452623 (= res!1039999 (isEmpty!16589 (tail!3855 s!9460)))))

(declare-fun d!706973 () Bool)

(assert (=> d!706973 e!1556515))

(declare-fun c!391397 () Bool)

(assert (=> d!706973 (= c!391397 (is-EmptyExpr!7208 lt!879837))))

(assert (=> d!706973 (= lt!879869 e!1556519)))

(declare-fun c!391399 () Bool)

(assert (=> d!706973 (= c!391399 (isEmpty!16589 s!9460))))

(assert (=> d!706973 (validRegex!2902 lt!879837)))

(assert (=> d!706973 (= (matchR!3323 lt!879837 s!9460) lt!879869)))

(declare-fun bm!150668 () Bool)

(assert (=> bm!150668 (= call!150673 (isEmpty!16589 s!9460))))

(assert (= (and d!706973 c!391399) b!2452617))

(assert (= (and d!706973 (not c!391399)) b!2452616))

(assert (= (and d!706973 c!391397) b!2452610))

(assert (= (and d!706973 (not c!391397)) b!2452620))

(assert (= (and b!2452620 c!391398) b!2452621))

(assert (= (and b!2452620 (not c!391398)) b!2452611))

(assert (= (and b!2452611 (not res!1040001)) b!2452614))

(assert (= (and b!2452614 res!1040000) b!2452612))

(assert (= (and b!2452612 res!1039998) b!2452623))

(assert (= (and b!2452623 res!1039999) b!2452618))

(assert (= (and b!2452614 (not res!1039994)) b!2452615))

(assert (= (and b!2452615 res!1039997) b!2452613))

(assert (= (and b!2452613 (not res!1039995)) b!2452622))

(assert (= (and b!2452622 (not res!1039996)) b!2452619))

(assert (= (or b!2452610 b!2452612 b!2452613) bm!150668))

(assert (=> bm!150668 m!2825379))

(declare-fun m!2825461 () Bool)

(assert (=> b!2452617 m!2825461))

(assert (=> b!2452619 m!2825383))

(assert (=> b!2452618 m!2825383))

(assert (=> b!2452623 m!2825385))

(assert (=> b!2452623 m!2825385))

(assert (=> b!2452623 m!2825387))

(assert (=> d!706973 m!2825379))

(assert (=> d!706973 m!2825425))

(assert (=> b!2452616 m!2825383))

(assert (=> b!2452616 m!2825383))

(declare-fun m!2825463 () Bool)

(assert (=> b!2452616 m!2825463))

(assert (=> b!2452616 m!2825385))

(assert (=> b!2452616 m!2825463))

(assert (=> b!2452616 m!2825385))

(declare-fun m!2825465 () Bool)

(assert (=> b!2452616 m!2825465))

(assert (=> b!2452622 m!2825385))

(assert (=> b!2452622 m!2825385))

(assert (=> b!2452622 m!2825387))

(assert (=> b!2452420 d!706973))

(declare-fun d!706975 () Bool)

(assert (=> d!706975 (= (head!5580 l!9164) (h!33955 l!9164))))

(assert (=> b!2452420 d!706975))

(declare-fun b!2452624 () Bool)

(declare-fun e!1556522 () Bool)

(declare-fun lt!879870 () Bool)

(declare-fun call!150674 () Bool)

(assert (=> b!2452624 (= e!1556522 (= lt!879870 call!150674))))

(declare-fun b!2452625 () Bool)

(declare-fun res!1040009 () Bool)

(declare-fun e!1556521 () Bool)

(assert (=> b!2452625 (=> res!1040009 e!1556521)))

(assert (=> b!2452625 (= res!1040009 (not (is-ElementMatch!7208 r!13927)))))

(declare-fun e!1556527 () Bool)

(assert (=> b!2452625 (= e!1556527 e!1556521)))

(declare-fun b!2452626 () Bool)

(declare-fun res!1040006 () Bool)

(declare-fun e!1556523 () Bool)

(assert (=> b!2452626 (=> (not res!1040006) (not e!1556523))))

(assert (=> b!2452626 (= res!1040006 (not call!150674))))

(declare-fun b!2452627 () Bool)

(declare-fun e!1556525 () Bool)

(declare-fun e!1556524 () Bool)

(assert (=> b!2452627 (= e!1556525 e!1556524)))

(declare-fun res!1040003 () Bool)

(assert (=> b!2452627 (=> res!1040003 e!1556524)))

(assert (=> b!2452627 (= res!1040003 call!150674)))

(declare-fun b!2452628 () Bool)

(declare-fun res!1040002 () Bool)

(assert (=> b!2452628 (=> res!1040002 e!1556521)))

(assert (=> b!2452628 (= res!1040002 e!1556523)))

(declare-fun res!1040008 () Bool)

(assert (=> b!2452628 (=> (not res!1040008) (not e!1556523))))

(assert (=> b!2452628 (= res!1040008 lt!879870)))

(declare-fun b!2452629 () Bool)

(assert (=> b!2452629 (= e!1556521 e!1556525)))

(declare-fun res!1040005 () Bool)

(assert (=> b!2452629 (=> (not res!1040005) (not e!1556525))))

(assert (=> b!2452629 (= res!1040005 (not lt!879870))))

(declare-fun b!2452630 () Bool)

(declare-fun e!1556526 () Bool)

(assert (=> b!2452630 (= e!1556526 (matchR!3323 (derivativeStep!1863 r!13927 (head!5582 s!9460)) (tail!3855 s!9460)))))

(declare-fun b!2452631 () Bool)

(assert (=> b!2452631 (= e!1556526 (nullable!2209 r!13927))))

(declare-fun b!2452632 () Bool)

(assert (=> b!2452632 (= e!1556523 (= (head!5582 s!9460) (c!391358 r!13927)))))

(declare-fun b!2452633 () Bool)

(assert (=> b!2452633 (= e!1556524 (not (= (head!5582 s!9460) (c!391358 r!13927))))))

(declare-fun b!2452634 () Bool)

(assert (=> b!2452634 (= e!1556522 e!1556527)))

(declare-fun c!391401 () Bool)

(assert (=> b!2452634 (= c!391401 (is-EmptyLang!7208 r!13927))))

(declare-fun b!2452635 () Bool)

(assert (=> b!2452635 (= e!1556527 (not lt!879870))))

(declare-fun b!2452636 () Bool)

(declare-fun res!1040004 () Bool)

(assert (=> b!2452636 (=> res!1040004 e!1556524)))

(assert (=> b!2452636 (= res!1040004 (not (isEmpty!16589 (tail!3855 s!9460))))))

(declare-fun b!2452637 () Bool)

(declare-fun res!1040007 () Bool)

(assert (=> b!2452637 (=> (not res!1040007) (not e!1556523))))

(assert (=> b!2452637 (= res!1040007 (isEmpty!16589 (tail!3855 s!9460)))))

(declare-fun d!706977 () Bool)

(assert (=> d!706977 e!1556522))

(declare-fun c!391400 () Bool)

(assert (=> d!706977 (= c!391400 (is-EmptyExpr!7208 r!13927))))

(assert (=> d!706977 (= lt!879870 e!1556526)))

(declare-fun c!391402 () Bool)

(assert (=> d!706977 (= c!391402 (isEmpty!16589 s!9460))))

(assert (=> d!706977 (validRegex!2902 r!13927)))

(assert (=> d!706977 (= (matchR!3323 r!13927 s!9460) lt!879870)))

(declare-fun bm!150669 () Bool)

(assert (=> bm!150669 (= call!150674 (isEmpty!16589 s!9460))))

(assert (= (and d!706977 c!391402) b!2452631))

(assert (= (and d!706977 (not c!391402)) b!2452630))

(assert (= (and d!706977 c!391400) b!2452624))

(assert (= (and d!706977 (not c!391400)) b!2452634))

(assert (= (and b!2452634 c!391401) b!2452635))

(assert (= (and b!2452634 (not c!391401)) b!2452625))

(assert (= (and b!2452625 (not res!1040009)) b!2452628))

(assert (= (and b!2452628 res!1040008) b!2452626))

(assert (= (and b!2452626 res!1040006) b!2452637))

(assert (= (and b!2452637 res!1040007) b!2452632))

(assert (= (and b!2452628 (not res!1040002)) b!2452629))

(assert (= (and b!2452629 res!1040005) b!2452627))

(assert (= (and b!2452627 (not res!1040003)) b!2452636))

(assert (= (and b!2452636 (not res!1040004)) b!2452633))

(assert (= (or b!2452624 b!2452626 b!2452627) bm!150669))

(assert (=> bm!150669 m!2825379))

(declare-fun m!2825467 () Bool)

(assert (=> b!2452631 m!2825467))

(assert (=> b!2452633 m!2825383))

(assert (=> b!2452632 m!2825383))

(assert (=> b!2452637 m!2825385))

(assert (=> b!2452637 m!2825385))

(assert (=> b!2452637 m!2825387))

(assert (=> d!706977 m!2825379))

(declare-fun m!2825469 () Bool)

(assert (=> d!706977 m!2825469))

(assert (=> b!2452630 m!2825383))

(assert (=> b!2452630 m!2825383))

(declare-fun m!2825471 () Bool)

(assert (=> b!2452630 m!2825471))

(assert (=> b!2452630 m!2825385))

(assert (=> b!2452630 m!2825471))

(assert (=> b!2452630 m!2825385))

(declare-fun m!2825473 () Bool)

(assert (=> b!2452630 m!2825473))

(assert (=> b!2452636 m!2825385))

(assert (=> b!2452636 m!2825385))

(assert (=> b!2452636 m!2825387))

(assert (=> b!2452421 d!706977))

(declare-fun b!2452708 () Bool)

(assert (=> b!2452708 true))

(assert (=> b!2452708 true))

(declare-fun bs!465791 () Bool)

(declare-fun b!2452714 () Bool)

(assert (= bs!465791 (and b!2452714 b!2452708)))

(declare-fun lambda!92897 () Int)

(declare-fun lambda!92896 () Int)

(assert (=> bs!465791 (not (= lambda!92897 lambda!92896))))

(assert (=> b!2452714 true))

(assert (=> b!2452714 true))

(declare-fun b!2452706 () Bool)

(declare-fun e!1556569 () Bool)

(declare-fun e!1556564 () Bool)

(assert (=> b!2452706 (= e!1556569 e!1556564)))

(declare-fun res!1040048 () Bool)

(assert (=> b!2452706 (= res!1040048 (matchRSpec!1055 (regOne!14929 r!13927) s!9460))))

(assert (=> b!2452706 (=> res!1040048 e!1556564)))

(declare-fun b!2452707 () Bool)

(declare-fun res!1040046 () Bool)

(declare-fun e!1556570 () Bool)

(assert (=> b!2452707 (=> res!1040046 e!1556570)))

(declare-fun call!150682 () Bool)

(assert (=> b!2452707 (= res!1040046 call!150682)))

(declare-fun e!1556565 () Bool)

(assert (=> b!2452707 (= e!1556565 e!1556570)))

(declare-fun call!150681 () Bool)

(assert (=> b!2452708 (= e!1556570 call!150681)))

(declare-fun b!2452709 () Bool)

(declare-fun e!1556567 () Bool)

(assert (=> b!2452709 (= e!1556567 (= s!9460 (Cons!28555 (c!391358 r!13927) Nil!28555)))))

(declare-fun b!2452710 () Bool)

(declare-fun e!1556568 () Bool)

(declare-fun e!1556566 () Bool)

(assert (=> b!2452710 (= e!1556568 e!1556566)))

(declare-fun res!1040047 () Bool)

(assert (=> b!2452710 (= res!1040047 (not (is-EmptyLang!7208 r!13927)))))

(assert (=> b!2452710 (=> (not res!1040047) (not e!1556566))))

(declare-fun b!2452711 () Bool)

(declare-fun c!391420 () Bool)

(assert (=> b!2452711 (= c!391420 (is-ElementMatch!7208 r!13927))))

(assert (=> b!2452711 (= e!1556566 e!1556567)))

(declare-fun b!2452712 () Bool)

(assert (=> b!2452712 (= e!1556568 call!150682)))

(declare-fun d!706979 () Bool)

(declare-fun c!391422 () Bool)

(assert (=> d!706979 (= c!391422 (is-EmptyExpr!7208 r!13927))))

(assert (=> d!706979 (= (matchRSpec!1055 r!13927 s!9460) e!1556568)))

(declare-fun b!2452713 () Bool)

(assert (=> b!2452713 (= e!1556569 e!1556565)))

(declare-fun c!391421 () Bool)

(assert (=> b!2452713 (= c!391421 (is-Star!7208 r!13927))))

(assert (=> b!2452714 (= e!1556565 call!150681)))

(declare-fun bm!150676 () Bool)

(declare-fun Exists!1235 (Int) Bool)

(assert (=> bm!150676 (= call!150681 (Exists!1235 (ite c!391421 lambda!92896 lambda!92897)))))

(declare-fun bm!150677 () Bool)

(assert (=> bm!150677 (= call!150682 (isEmpty!16589 s!9460))))

(declare-fun b!2452715 () Bool)

(assert (=> b!2452715 (= e!1556564 (matchRSpec!1055 (regTwo!14929 r!13927) s!9460))))

(declare-fun b!2452716 () Bool)

(declare-fun c!391419 () Bool)

(assert (=> b!2452716 (= c!391419 (is-Union!7208 r!13927))))

(assert (=> b!2452716 (= e!1556567 e!1556569)))

(assert (= (and d!706979 c!391422) b!2452712))

(assert (= (and d!706979 (not c!391422)) b!2452710))

(assert (= (and b!2452710 res!1040047) b!2452711))

(assert (= (and b!2452711 c!391420) b!2452709))

(assert (= (and b!2452711 (not c!391420)) b!2452716))

(assert (= (and b!2452716 c!391419) b!2452706))

(assert (= (and b!2452716 (not c!391419)) b!2452713))

(assert (= (and b!2452706 (not res!1040048)) b!2452715))

(assert (= (and b!2452713 c!391421) b!2452707))

(assert (= (and b!2452713 (not c!391421)) b!2452714))

(assert (= (and b!2452707 (not res!1040046)) b!2452708))

(assert (= (or b!2452708 b!2452714) bm!150676))

(assert (= (or b!2452712 b!2452707) bm!150677))

(declare-fun m!2825503 () Bool)

(assert (=> b!2452706 m!2825503))

(declare-fun m!2825505 () Bool)

(assert (=> bm!150676 m!2825505))

(assert (=> bm!150677 m!2825379))

(declare-fun m!2825507 () Bool)

(assert (=> b!2452715 m!2825507))

(assert (=> b!2452421 d!706979))

(declare-fun d!706985 () Bool)

(assert (=> d!706985 (= (matchR!3323 r!13927 s!9460) (matchRSpec!1055 r!13927 s!9460))))

(declare-fun lt!879878 () Unit!41871)

(declare-fun choose!14532 (Regex!7208 List!28653) Unit!41871)

(assert (=> d!706985 (= lt!879878 (choose!14532 r!13927 s!9460))))

(assert (=> d!706985 (validRegex!2902 r!13927)))

(assert (=> d!706985 (= (mainMatchTheorem!1055 r!13927 s!9460) lt!879878)))

(declare-fun bs!465792 () Bool)

(assert (= bs!465792 d!706985))

(assert (=> bs!465792 m!2825335))

(assert (=> bs!465792 m!2825337))

(declare-fun m!2825523 () Bool)

(assert (=> bs!465792 m!2825523))

(assert (=> bs!465792 m!2825469))

(assert (=> b!2452421 d!706985))

(declare-fun b!2452736 () Bool)

(declare-fun e!1556575 () Bool)

(declare-fun tp!780180 () Bool)

(declare-fun tp!780178 () Bool)

(assert (=> b!2452736 (= e!1556575 (and tp!780180 tp!780178))))

(declare-fun b!2452738 () Bool)

(declare-fun tp!780179 () Bool)

(declare-fun tp!780177 () Bool)

(assert (=> b!2452738 (= e!1556575 (and tp!780179 tp!780177))))

(assert (=> b!2452413 (= tp!780136 e!1556575)))

(declare-fun b!2452735 () Bool)

(assert (=> b!2452735 (= e!1556575 tp_is_empty!11829)))

(declare-fun b!2452737 () Bool)

(declare-fun tp!780176 () Bool)

(assert (=> b!2452737 (= e!1556575 tp!780176)))

(assert (= (and b!2452413 (is-ElementMatch!7208 (h!33955 l!9164))) b!2452735))

(assert (= (and b!2452413 (is-Concat!11844 (h!33955 l!9164))) b!2452736))

(assert (= (and b!2452413 (is-Star!7208 (h!33955 l!9164))) b!2452737))

(assert (= (and b!2452413 (is-Union!7208 (h!33955 l!9164))) b!2452738))

(declare-fun b!2452743 () Bool)

(declare-fun e!1556578 () Bool)

(declare-fun tp!780185 () Bool)

(declare-fun tp!780186 () Bool)

(assert (=> b!2452743 (= e!1556578 (and tp!780185 tp!780186))))

(assert (=> b!2452413 (= tp!780134 e!1556578)))

(assert (= (and b!2452413 (is-Cons!28554 (t!208629 l!9164))) b!2452743))

(declare-fun b!2452745 () Bool)

(declare-fun e!1556579 () Bool)

(declare-fun tp!780191 () Bool)

(declare-fun tp!780189 () Bool)

(assert (=> b!2452745 (= e!1556579 (and tp!780191 tp!780189))))

(declare-fun b!2452747 () Bool)

(declare-fun tp!780190 () Bool)

(declare-fun tp!780188 () Bool)

(assert (=> b!2452747 (= e!1556579 (and tp!780190 tp!780188))))

(assert (=> b!2452424 (= tp!780140 e!1556579)))

(declare-fun b!2452744 () Bool)

(assert (=> b!2452744 (= e!1556579 tp_is_empty!11829)))

(declare-fun b!2452746 () Bool)

(declare-fun tp!780187 () Bool)

(assert (=> b!2452746 (= e!1556579 tp!780187)))

(assert (= (and b!2452424 (is-ElementMatch!7208 (regOne!14929 r!13927))) b!2452744))

(assert (= (and b!2452424 (is-Concat!11844 (regOne!14929 r!13927))) b!2452745))

(assert (= (and b!2452424 (is-Star!7208 (regOne!14929 r!13927))) b!2452746))

(assert (= (and b!2452424 (is-Union!7208 (regOne!14929 r!13927))) b!2452747))

(declare-fun b!2452749 () Bool)

(declare-fun e!1556580 () Bool)

(declare-fun tp!780196 () Bool)

(declare-fun tp!780194 () Bool)

(assert (=> b!2452749 (= e!1556580 (and tp!780196 tp!780194))))

(declare-fun b!2452751 () Bool)

(declare-fun tp!780195 () Bool)

(declare-fun tp!780193 () Bool)

(assert (=> b!2452751 (= e!1556580 (and tp!780195 tp!780193))))

(assert (=> b!2452424 (= tp!780135 e!1556580)))

(declare-fun b!2452748 () Bool)

(assert (=> b!2452748 (= e!1556580 tp_is_empty!11829)))

(declare-fun b!2452750 () Bool)

(declare-fun tp!780192 () Bool)

(assert (=> b!2452750 (= e!1556580 tp!780192)))

(assert (= (and b!2452424 (is-ElementMatch!7208 (regTwo!14929 r!13927))) b!2452748))

(assert (= (and b!2452424 (is-Concat!11844 (regTwo!14929 r!13927))) b!2452749))

(assert (= (and b!2452424 (is-Star!7208 (regTwo!14929 r!13927))) b!2452750))

(assert (= (and b!2452424 (is-Union!7208 (regTwo!14929 r!13927))) b!2452751))

(declare-fun b!2452756 () Bool)

(declare-fun e!1556583 () Bool)

(declare-fun tp!780199 () Bool)

(assert (=> b!2452756 (= e!1556583 (and tp_is_empty!11829 tp!780199))))

(assert (=> b!2452425 (= tp!780139 e!1556583)))

(assert (= (and b!2452425 (is-Cons!28555 (t!208630 s!9460))) b!2452756))

(declare-fun b!2452758 () Bool)

(declare-fun e!1556584 () Bool)

(declare-fun tp!780204 () Bool)

(declare-fun tp!780202 () Bool)

(assert (=> b!2452758 (= e!1556584 (and tp!780204 tp!780202))))

(declare-fun b!2452760 () Bool)

(declare-fun tp!780203 () Bool)

(declare-fun tp!780201 () Bool)

(assert (=> b!2452760 (= e!1556584 (and tp!780203 tp!780201))))

(assert (=> b!2452422 (= tp!780138 e!1556584)))

(declare-fun b!2452757 () Bool)

(assert (=> b!2452757 (= e!1556584 tp_is_empty!11829)))

(declare-fun b!2452759 () Bool)

(declare-fun tp!780200 () Bool)

(assert (=> b!2452759 (= e!1556584 tp!780200)))

(assert (= (and b!2452422 (is-ElementMatch!7208 (regOne!14928 r!13927))) b!2452757))

(assert (= (and b!2452422 (is-Concat!11844 (regOne!14928 r!13927))) b!2452758))

(assert (= (and b!2452422 (is-Star!7208 (regOne!14928 r!13927))) b!2452759))

(assert (= (and b!2452422 (is-Union!7208 (regOne!14928 r!13927))) b!2452760))

(declare-fun b!2452762 () Bool)

(declare-fun e!1556585 () Bool)

(declare-fun tp!780209 () Bool)

(declare-fun tp!780207 () Bool)

(assert (=> b!2452762 (= e!1556585 (and tp!780209 tp!780207))))

(declare-fun b!2452764 () Bool)

(declare-fun tp!780208 () Bool)

(declare-fun tp!780206 () Bool)

(assert (=> b!2452764 (= e!1556585 (and tp!780208 tp!780206))))

(assert (=> b!2452422 (= tp!780137 e!1556585)))

(declare-fun b!2452761 () Bool)

(assert (=> b!2452761 (= e!1556585 tp_is_empty!11829)))

(declare-fun b!2452763 () Bool)

(declare-fun tp!780205 () Bool)

(assert (=> b!2452763 (= e!1556585 tp!780205)))

(assert (= (and b!2452422 (is-ElementMatch!7208 (regTwo!14928 r!13927))) b!2452761))

(assert (= (and b!2452422 (is-Concat!11844 (regTwo!14928 r!13927))) b!2452762))

(assert (= (and b!2452422 (is-Star!7208 (regTwo!14928 r!13927))) b!2452763))

(assert (= (and b!2452422 (is-Union!7208 (regTwo!14928 r!13927))) b!2452764))

(declare-fun b!2452766 () Bool)

(declare-fun e!1556586 () Bool)

(declare-fun tp!780214 () Bool)

(declare-fun tp!780212 () Bool)

(assert (=> b!2452766 (= e!1556586 (and tp!780214 tp!780212))))

(declare-fun b!2452768 () Bool)

(declare-fun tp!780213 () Bool)

(declare-fun tp!780211 () Bool)

(assert (=> b!2452768 (= e!1556586 (and tp!780213 tp!780211))))

(assert (=> b!2452416 (= tp!780141 e!1556586)))

(declare-fun b!2452765 () Bool)

(assert (=> b!2452765 (= e!1556586 tp_is_empty!11829)))

(declare-fun b!2452767 () Bool)

(declare-fun tp!780210 () Bool)

(assert (=> b!2452767 (= e!1556586 tp!780210)))

(assert (= (and b!2452416 (is-ElementMatch!7208 (reg!7537 r!13927))) b!2452765))

(assert (= (and b!2452416 (is-Concat!11844 (reg!7537 r!13927))) b!2452766))

(assert (= (and b!2452416 (is-Star!7208 (reg!7537 r!13927))) b!2452767))

(assert (= (and b!2452416 (is-Union!7208 (reg!7537 r!13927))) b!2452768))

(declare-fun b_lambda!75121 () Bool)

(assert (= b_lambda!75119 (or start!239392 b_lambda!75121)))

(declare-fun bs!465793 () Bool)

(declare-fun d!706989 () Bool)

(assert (= bs!465793 (and d!706989 start!239392)))

(assert (=> bs!465793 (= (dynLambda!12267 lambda!92884 (h!33955 l!9164)) (validRegex!2902 (h!33955 l!9164)))))

(declare-fun m!2825525 () Bool)

(assert (=> bs!465793 m!2825525))

(assert (=> b!2452469 d!706989))

(push 1)

(assert (not b!2452636))

(assert (not b!2452622))

(assert (not d!706961))

(assert (not b!2452630))

(assert (not b_lambda!75121))

(assert (not b!2452758))

(assert (not b!2452507))

(assert (not b!2452743))

(assert (not b!2452768))

(assert (not b!2452470))

(assert (not b!2452715))

(assert (not b!2452508))

(assert (not b!2452595))

(assert (not b!2452592))

(assert (not b!2452736))

(assert (not b!2452512))

(assert (not b!2452541))

(assert (not b!2452526))

(assert (not b!2452607))

(assert (not d!706969))

(assert (not bm!150676))

(assert (not b!2452597))

(assert (not bm!150665))

(assert (not b!2452616))

(assert (not b!2452706))

(assert (not d!706957))

(assert (not bm!150668))

(assert (not b!2452537))

(assert (not bs!465793))

(assert (not d!706973))

(assert (not b!2452608))

(assert (not b!2452746))

(assert (not bm!150664))

(assert (not bm!150677))

(assert (not b!2452606))

(assert (not b!2452632))

(assert (not b!2452760))

(assert (not d!706959))

(assert (not b!2452749))

(assert (not b!2452604))

(assert (not bm!150669))

(assert (not b!2452617))

(assert (not b!2452751))

(assert (not b!2452521))

(assert (not b!2452511))

(assert (not b!2452525))

(assert (not b!2452591))

(assert (not b!2452633))

(assert (not b!2452619))

(assert (not b!2452505))

(assert (not b!2452598))

(assert (not b!2452536))

(assert (not b!2452631))

(assert (not b!2452762))

(assert (not b!2452767))

(assert (not d!706949))

(assert (not b!2452759))

(assert (not b!2452602))

(assert (not b!2452522))

(assert (not b!2452763))

(assert (not b!2452737))

(assert (not d!706971))

(assert (not b!2452519))

(assert (not d!706985))

(assert (not b!2452738))

(assert (not d!706977))

(assert (not b!2452605))

(assert (not b!2452506))

(assert (not b!2452596))

(assert (not b!2452766))

(assert (not b!2452520))

(assert (not b!2452618))

(assert (not b!2452750))

(assert (not b!2452745))

(assert (not b!2452747))

(assert (not b!2452756))

(assert tp_is_empty!11829)

(assert (not b!2452601))

(assert (not b!2452764))

(assert (not b!2452594))

(assert (not b!2452637))

(assert (not b!2452623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

