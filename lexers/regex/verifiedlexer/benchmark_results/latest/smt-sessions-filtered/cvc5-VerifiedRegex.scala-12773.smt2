; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706154 () Bool)

(assert start!706154)

(declare-fun b!7253487 () Bool)

(assert (=> b!7253487 true))

(declare-fun b!7253478 () Bool)

(assert (=> b!7253478 true))

(declare-fun b!7253477 () Bool)

(declare-fun e!4349283 () Bool)

(declare-fun e!4349284 () Bool)

(assert (=> b!7253477 (= e!4349283 e!4349284)))

(declare-fun res!2941650 () Bool)

(assert (=> b!7253477 (=> res!2941650 e!4349284)))

(declare-datatypes ((C!37582 0))(
  ( (C!37583 (val!28739 Int)) )
))
(declare-datatypes ((Regex!18654 0))(
  ( (ElementMatch!18654 (c!1348326 C!37582)) (Concat!27499 (regOne!37820 Regex!18654) (regTwo!37820 Regex!18654)) (EmptyExpr!18654) (Star!18654 (reg!18983 Regex!18654)) (EmptyLang!18654) (Union!18654 (regOne!37821 Regex!18654) (regTwo!37821 Regex!18654)) )
))
(declare-datatypes ((List!70542 0))(
  ( (Nil!70418) (Cons!70418 (h!76866 Regex!18654) (t!384602 List!70542)) )
))
(declare-datatypes ((Context!15188 0))(
  ( (Context!15189 (exprs!8094 List!70542)) )
))
(declare-fun lt!2585950 () (Set Context!15188))

(declare-fun lt!2585967 () (Set Context!15188))

(declare-fun lt!2585951 () (Set Context!15188))

(assert (=> b!7253477 (= res!2941650 (or (not (= lt!2585967 lt!2585950)) (not (= lt!2585951 lt!2585967))))))

(declare-fun lt!2585957 () (Set Context!15188))

(declare-fun lt!2585956 () (Set Context!15188))

(assert (=> b!7253477 (= lt!2585950 (set.union lt!2585957 lt!2585956))))

(declare-fun lt!2585944 () Context!15188)

(declare-datatypes ((List!70543 0))(
  ( (Nil!70419) (Cons!70419 (h!76867 C!37582) (t!384603 List!70543)) )
))
(declare-fun s1!1971 () List!70543)

(declare-fun derivationStepZipperUp!2478 (Context!15188 C!37582) (Set Context!15188))

(assert (=> b!7253477 (= lt!2585956 (derivationStepZipperUp!2478 lt!2585944 (h!76867 s1!1971)))))

(declare-fun e!4349278 () Bool)

(assert (=> b!7253478 (= e!4349278 e!4349283)))

(declare-fun res!2941641 () Bool)

(assert (=> b!7253478 (=> res!2941641 e!4349283)))

(declare-fun ct1!232 () Context!15188)

(declare-fun nullable!7914 (Regex!18654) Bool)

(assert (=> b!7253478 (= res!2941641 (not (nullable!7914 (h!76866 (exprs!8094 ct1!232)))))))

(declare-fun lambda!444643 () Int)

(declare-fun lt!2585960 () Context!15188)

(declare-fun lt!2585946 () (Set Context!15188))

(declare-fun flatMap!2819 ((Set Context!15188) Int) (Set Context!15188))

(assert (=> b!7253478 (= (flatMap!2819 lt!2585946 lambda!444643) (derivationStepZipperUp!2478 lt!2585960 (h!76867 s1!1971)))))

(declare-datatypes ((Unit!163897 0))(
  ( (Unit!163898) )
))
(declare-fun lt!2585953 () Unit!163897)

(declare-fun lemmaFlatMapOnSingletonSet!2223 ((Set Context!15188) Context!15188 Int) Unit!163897)

(assert (=> b!7253478 (= lt!2585953 (lemmaFlatMapOnSingletonSet!2223 lt!2585946 lt!2585960 lambda!444643))))

(declare-fun lt!2585961 () Unit!163897)

(declare-fun lambda!444641 () Int)

(declare-fun ct2!328 () Context!15188)

(declare-fun lemmaConcatPreservesForall!1461 (List!70542 List!70542 Int) Unit!163897)

(assert (=> b!7253478 (= lt!2585961 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun lt!2585963 () (Set Context!15188))

(assert (=> b!7253478 (= (flatMap!2819 lt!2585963 lambda!444643) (derivationStepZipperUp!2478 ct1!232 (h!76867 s1!1971)))))

(declare-fun lt!2585958 () Unit!163897)

(assert (=> b!7253478 (= lt!2585958 (lemmaFlatMapOnSingletonSet!2223 lt!2585963 ct1!232 lambda!444643))))

(declare-fun lt!2585966 () Context!15188)

(declare-fun lt!2585940 () (Set Context!15188))

(declare-fun derivationStepZipperDown!2648 (Regex!18654 Context!15188 C!37582) (Set Context!15188))

(assert (=> b!7253478 (= lt!2585940 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 ct1!232)) lt!2585966 (h!76867 s1!1971)))))

(declare-fun lt!2585964 () List!70542)

(declare-fun tail!14334 (List!70542) List!70542)

(assert (=> b!7253478 (= lt!2585966 (Context!15189 (tail!14334 lt!2585964)))))

(declare-fun b!7253479 () Bool)

(declare-fun e!4349277 () Bool)

(declare-fun inv!89646 (Context!15188) Bool)

(assert (=> b!7253479 (= e!4349277 (inv!89646 lt!2585960))))

(declare-fun lt!2585965 () Unit!163897)

(assert (=> b!7253479 (= lt!2585965 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun e!4349276 () Bool)

(declare-fun matchZipper!3564 ((Set Context!15188) List!70543) Bool)

(assert (=> b!7253479 (= (matchZipper!3564 lt!2585950 (t!384603 s1!1971)) e!4349276)))

(declare-fun res!2941648 () Bool)

(assert (=> b!7253479 (=> res!2941648 e!4349276)))

(assert (=> b!7253479 (= res!2941648 (matchZipper!3564 lt!2585957 (t!384603 s1!1971)))))

(declare-fun lt!2585943 () Unit!163897)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1709 ((Set Context!15188) (Set Context!15188) List!70543) Unit!163897)

(assert (=> b!7253479 (= lt!2585943 (lemmaZipperConcatMatchesSameAsBothZippers!1709 lt!2585957 lt!2585956 (t!384603 s1!1971)))))

(declare-fun b!7253480 () Bool)

(declare-fun e!4349282 () Bool)

(declare-fun e!4349271 () Bool)

(assert (=> b!7253480 (= e!4349282 e!4349271)))

(declare-fun res!2941642 () Bool)

(assert (=> b!7253480 (=> (not res!2941642) (not e!4349271))))

(assert (=> b!7253480 (= res!2941642 (matchZipper!3564 lt!2585951 (t!384603 s1!1971)))))

(declare-fun derivationStepZipper!3432 ((Set Context!15188) C!37582) (Set Context!15188))

(assert (=> b!7253480 (= lt!2585951 (derivationStepZipper!3432 lt!2585963 (h!76867 s1!1971)))))

(declare-fun b!7253481 () Bool)

(assert (=> b!7253481 (= e!4349276 (matchZipper!3564 lt!2585956 (t!384603 s1!1971)))))

(declare-fun b!7253482 () Bool)

(declare-fun res!2941649 () Bool)

(declare-fun e!4349280 () Bool)

(assert (=> b!7253482 (=> (not res!2941649) (not e!4349280))))

(declare-fun s2!1849 () List!70543)

(assert (=> b!7253482 (= res!2941649 (matchZipper!3564 (set.insert ct2!328 (as set.empty (Set Context!15188))) s2!1849))))

(declare-fun b!7253484 () Bool)

(declare-fun e!4349273 () Bool)

(declare-fun e!4349279 () Bool)

(assert (=> b!7253484 (= e!4349273 e!4349279)))

(declare-fun res!2941640 () Bool)

(assert (=> b!7253484 (=> res!2941640 e!4349279)))

(declare-fun isEmpty!40552 (List!70542) Bool)

(assert (=> b!7253484 (= res!2941640 (isEmpty!40552 (exprs!8094 ct1!232)))))

(assert (=> b!7253484 (= lt!2585967 (derivationStepZipperUp!2478 ct1!232 (h!76867 s1!1971)))))

(declare-fun lt!2585962 () Unit!163897)

(declare-fun lt!2585945 () Context!15188)

(assert (=> b!7253484 (= lt!2585962 (lemmaConcatPreservesForall!1461 (exprs!8094 lt!2585945) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun ++!16570 (List!70542 List!70542) List!70542)

(declare-fun ++!16571 (List!70543 List!70543) List!70543)

(assert (=> b!7253484 (matchZipper!3564 (set.insert (Context!15189 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328))) (as set.empty (Set Context!15188))) (++!16571 (t!384603 s1!1971) s2!1849))))

(declare-fun lt!2585952 () Unit!163897)

(assert (=> b!7253484 (= lt!2585952 (lemmaConcatPreservesForall!1461 (exprs!8094 lt!2585945) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun lt!2585941 () Unit!163897)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!399 (Context!15188 Context!15188 List!70543 List!70543) Unit!163897)

(assert (=> b!7253484 (= lt!2585941 (lemmaConcatenateContextMatchesConcatOfStrings!399 lt!2585945 ct2!328 (t!384603 s1!1971) s2!1849))))

(declare-fun lambda!444642 () Int)

(declare-fun getWitness!2218 ((Set Context!15188) Int) Context!15188)

(assert (=> b!7253484 (= lt!2585945 (getWitness!2218 lt!2585951 lambda!444642))))

(declare-fun b!7253485 () Bool)

(declare-fun e!4349281 () Bool)

(declare-fun tp_is_empty!46773 () Bool)

(declare-fun tp!2037836 () Bool)

(assert (=> b!7253485 (= e!4349281 (and tp_is_empty!46773 tp!2037836))))

(declare-fun b!7253486 () Bool)

(assert (=> b!7253486 (= e!4349279 e!4349278)))

(declare-fun res!2941645 () Bool)

(assert (=> b!7253486 (=> res!2941645 e!4349278)))

(assert (=> b!7253486 (= res!2941645 (isEmpty!40552 lt!2585964))))

(declare-fun lt!2585947 () Unit!163897)

(assert (=> b!7253486 (= lt!2585947 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun lt!2585949 () (Set Context!15188))

(assert (=> b!7253486 (= lt!2585949 (derivationStepZipperUp!2478 lt!2585960 (h!76867 s1!1971)))))

(declare-fun lt!2585954 () Unit!163897)

(assert (=> b!7253486 (= lt!2585954 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(assert (=> b!7253486 (= lt!2585957 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 ct1!232)) lt!2585944 (h!76867 s1!1971)))))

(assert (=> b!7253486 (= lt!2585944 (Context!15189 (tail!14334 (exprs!8094 ct1!232))))))

(assert (=> b!7253487 (= e!4349271 (not e!4349273))))

(declare-fun res!2941646 () Bool)

(assert (=> b!7253487 (=> res!2941646 e!4349273)))

(declare-fun exists!4386 ((Set Context!15188) Int) Bool)

(assert (=> b!7253487 (= res!2941646 (not (exists!4386 lt!2585951 lambda!444642)))))

(declare-datatypes ((List!70544 0))(
  ( (Nil!70420) (Cons!70420 (h!76868 Context!15188) (t!384604 List!70544)) )
))
(declare-fun lt!2585955 () List!70544)

(declare-fun exists!4387 (List!70544 Int) Bool)

(assert (=> b!7253487 (exists!4387 lt!2585955 lambda!444642)))

(declare-fun lt!2585948 () Unit!163897)

(declare-fun lemmaZipperMatchesExistsMatchingContext!757 (List!70544 List!70543) Unit!163897)

(assert (=> b!7253487 (= lt!2585948 (lemmaZipperMatchesExistsMatchingContext!757 lt!2585955 (t!384603 s1!1971)))))

(declare-fun toList!11483 ((Set Context!15188)) List!70544)

(assert (=> b!7253487 (= lt!2585955 (toList!11483 lt!2585951))))

(declare-fun b!7253488 () Bool)

(declare-fun e!4349275 () Bool)

(declare-fun tp!2037838 () Bool)

(assert (=> b!7253488 (= e!4349275 tp!2037838)))

(declare-fun b!7253489 () Bool)

(assert (=> b!7253489 (= e!4349280 e!4349282)))

(declare-fun res!2941647 () Bool)

(assert (=> b!7253489 (=> (not res!2941647) (not e!4349282))))

(assert (=> b!7253489 (= res!2941647 (and (not (is-Nil!70418 (exprs!8094 ct1!232))) (is-Cons!70419 s1!1971)))))

(assert (=> b!7253489 (= lt!2585946 (set.insert lt!2585960 (as set.empty (Set Context!15188))))))

(assert (=> b!7253489 (= lt!2585960 (Context!15189 lt!2585964))))

(assert (=> b!7253489 (= lt!2585964 (++!16570 (exprs!8094 ct1!232) (exprs!8094 ct2!328)))))

(declare-fun lt!2585942 () Unit!163897)

(assert (=> b!7253489 (= lt!2585942 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun b!7253490 () Bool)

(declare-fun res!2941643 () Bool)

(assert (=> b!7253490 (=> res!2941643 e!4349277)))

(assert (=> b!7253490 (= res!2941643 (not (= (derivationStepZipper!3432 lt!2585946 (h!76867 s1!1971)) lt!2585949)))))

(declare-fun b!7253491 () Bool)

(declare-fun e!4349272 () Bool)

(declare-fun tp!2037835 () Bool)

(assert (=> b!7253491 (= e!4349272 (and tp_is_empty!46773 tp!2037835))))

(declare-fun b!7253492 () Bool)

(declare-fun e!4349274 () Bool)

(declare-fun tp!2037837 () Bool)

(assert (=> b!7253492 (= e!4349274 tp!2037837)))

(declare-fun b!7253483 () Bool)

(assert (=> b!7253483 (= e!4349284 e!4349277)))

(declare-fun res!2941639 () Bool)

(assert (=> b!7253483 (=> res!2941639 e!4349277)))

(assert (=> b!7253483 (= res!2941639 (not (= lt!2585949 (set.union lt!2585940 (derivationStepZipperUp!2478 lt!2585966 (h!76867 s1!1971))))))))

(declare-fun lt!2585959 () Unit!163897)

(assert (=> b!7253483 (= lt!2585959 (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(declare-fun res!2941644 () Bool)

(assert (=> start!706154 (=> (not res!2941644) (not e!4349280))))

(assert (=> start!706154 (= res!2941644 (matchZipper!3564 lt!2585963 s1!1971))))

(assert (=> start!706154 (= lt!2585963 (set.insert ct1!232 (as set.empty (Set Context!15188))))))

(assert (=> start!706154 e!4349280))

(assert (=> start!706154 (and (inv!89646 ct1!232) e!4349274)))

(assert (=> start!706154 e!4349281))

(assert (=> start!706154 e!4349272))

(assert (=> start!706154 (and (inv!89646 ct2!328) e!4349275)))

(assert (= (and start!706154 res!2941644) b!7253482))

(assert (= (and b!7253482 res!2941649) b!7253489))

(assert (= (and b!7253489 res!2941647) b!7253480))

(assert (= (and b!7253480 res!2941642) b!7253487))

(assert (= (and b!7253487 (not res!2941646)) b!7253484))

(assert (= (and b!7253484 (not res!2941640)) b!7253486))

(assert (= (and b!7253486 (not res!2941645)) b!7253478))

(assert (= (and b!7253478 (not res!2941641)) b!7253477))

(assert (= (and b!7253477 (not res!2941650)) b!7253483))

(assert (= (and b!7253483 (not res!2941639)) b!7253490))

(assert (= (and b!7253490 (not res!2941643)) b!7253479))

(assert (= (and b!7253479 (not res!2941648)) b!7253481))

(assert (= start!706154 b!7253492))

(assert (= (and start!706154 (is-Cons!70419 s1!1971)) b!7253485))

(assert (= (and start!706154 (is-Cons!70419 s2!1849)) b!7253491))

(assert (= start!706154 b!7253488))

(declare-fun m!7933386 () Bool)

(assert (=> b!7253481 m!7933386))

(declare-fun m!7933388 () Bool)

(assert (=> b!7253484 m!7933388))

(declare-fun m!7933390 () Bool)

(assert (=> b!7253484 m!7933390))

(declare-fun m!7933392 () Bool)

(assert (=> b!7253484 m!7933392))

(declare-fun m!7933394 () Bool)

(assert (=> b!7253484 m!7933394))

(declare-fun m!7933396 () Bool)

(assert (=> b!7253484 m!7933396))

(assert (=> b!7253484 m!7933394))

(declare-fun m!7933398 () Bool)

(assert (=> b!7253484 m!7933398))

(declare-fun m!7933400 () Bool)

(assert (=> b!7253484 m!7933400))

(assert (=> b!7253484 m!7933396))

(declare-fun m!7933402 () Bool)

(assert (=> b!7253484 m!7933402))

(declare-fun m!7933404 () Bool)

(assert (=> b!7253484 m!7933404))

(assert (=> b!7253484 m!7933398))

(declare-fun m!7933406 () Bool)

(assert (=> b!7253479 m!7933406))

(declare-fun m!7933408 () Bool)

(assert (=> b!7253479 m!7933408))

(declare-fun m!7933410 () Bool)

(assert (=> b!7253479 m!7933410))

(declare-fun m!7933412 () Bool)

(assert (=> b!7253479 m!7933412))

(declare-fun m!7933414 () Bool)

(assert (=> b!7253479 m!7933414))

(declare-fun m!7933416 () Bool)

(assert (=> b!7253480 m!7933416))

(declare-fun m!7933418 () Bool)

(assert (=> b!7253480 m!7933418))

(declare-fun m!7933420 () Bool)

(assert (=> b!7253486 m!7933420))

(declare-fun m!7933422 () Bool)

(assert (=> b!7253486 m!7933422))

(declare-fun m!7933424 () Bool)

(assert (=> b!7253486 m!7933424))

(assert (=> b!7253486 m!7933414))

(assert (=> b!7253486 m!7933414))

(declare-fun m!7933426 () Bool)

(assert (=> b!7253486 m!7933426))

(declare-fun m!7933428 () Bool)

(assert (=> start!706154 m!7933428))

(declare-fun m!7933430 () Bool)

(assert (=> start!706154 m!7933430))

(declare-fun m!7933432 () Bool)

(assert (=> start!706154 m!7933432))

(declare-fun m!7933434 () Bool)

(assert (=> start!706154 m!7933434))

(declare-fun m!7933436 () Bool)

(assert (=> b!7253483 m!7933436))

(assert (=> b!7253483 m!7933414))

(declare-fun m!7933438 () Bool)

(assert (=> b!7253487 m!7933438))

(declare-fun m!7933440 () Bool)

(assert (=> b!7253487 m!7933440))

(declare-fun m!7933442 () Bool)

(assert (=> b!7253487 m!7933442))

(declare-fun m!7933444 () Bool)

(assert (=> b!7253487 m!7933444))

(declare-fun m!7933446 () Bool)

(assert (=> b!7253477 m!7933446))

(declare-fun m!7933448 () Bool)

(assert (=> b!7253478 m!7933448))

(declare-fun m!7933450 () Bool)

(assert (=> b!7253478 m!7933450))

(assert (=> b!7253478 m!7933420))

(assert (=> b!7253478 m!7933392))

(declare-fun m!7933452 () Bool)

(assert (=> b!7253478 m!7933452))

(assert (=> b!7253478 m!7933414))

(declare-fun m!7933454 () Bool)

(assert (=> b!7253478 m!7933454))

(declare-fun m!7933456 () Bool)

(assert (=> b!7253478 m!7933456))

(declare-fun m!7933458 () Bool)

(assert (=> b!7253478 m!7933458))

(declare-fun m!7933460 () Bool)

(assert (=> b!7253478 m!7933460))

(declare-fun m!7933462 () Bool)

(assert (=> b!7253489 m!7933462))

(declare-fun m!7933464 () Bool)

(assert (=> b!7253489 m!7933464))

(assert (=> b!7253489 m!7933414))

(declare-fun m!7933466 () Bool)

(assert (=> b!7253482 m!7933466))

(assert (=> b!7253482 m!7933466))

(declare-fun m!7933468 () Bool)

(assert (=> b!7253482 m!7933468))

(declare-fun m!7933470 () Bool)

(assert (=> b!7253490 m!7933470))

(push 1)

(assert (not b!7253478))

(assert (not b!7253489))

(assert tp_is_empty!46773)

(assert (not b!7253487))

(assert (not b!7253488))

(assert (not b!7253491))

(assert (not b!7253490))

(assert (not b!7253482))

(assert (not b!7253479))

(assert (not b!7253483))

(assert (not b!7253480))

(assert (not start!706154))

(assert (not b!7253486))

(assert (not b!7253485))

(assert (not b!7253484))

(assert (not b!7253477))

(assert (not b!7253481))

(assert (not b!7253492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2255234 () Bool)

(declare-fun c!1348340 () Bool)

(declare-fun isEmpty!40554 (List!70543) Bool)

(assert (=> d!2255234 (= c!1348340 (isEmpty!40554 s2!1849))))

(declare-fun e!4349329 () Bool)

(assert (=> d!2255234 (= (matchZipper!3564 (set.insert ct2!328 (as set.empty (Set Context!15188))) s2!1849) e!4349329)))

(declare-fun b!7253553 () Bool)

(declare-fun nullableZipper!2918 ((Set Context!15188)) Bool)

(assert (=> b!7253553 (= e!4349329 (nullableZipper!2918 (set.insert ct2!328 (as set.empty (Set Context!15188)))))))

(declare-fun b!7253554 () Bool)

(declare-fun head!14912 (List!70543) C!37582)

(declare-fun tail!14336 (List!70543) List!70543)

(assert (=> b!7253554 (= e!4349329 (matchZipper!3564 (derivationStepZipper!3432 (set.insert ct2!328 (as set.empty (Set Context!15188))) (head!14912 s2!1849)) (tail!14336 s2!1849)))))

(assert (= (and d!2255234 c!1348340) b!7253553))

(assert (= (and d!2255234 (not c!1348340)) b!7253554))

(declare-fun m!7933558 () Bool)

(assert (=> d!2255234 m!7933558))

(assert (=> b!7253553 m!7933466))

(declare-fun m!7933560 () Bool)

(assert (=> b!7253553 m!7933560))

(declare-fun m!7933562 () Bool)

(assert (=> b!7253554 m!7933562))

(assert (=> b!7253554 m!7933466))

(assert (=> b!7253554 m!7933562))

(declare-fun m!7933564 () Bool)

(assert (=> b!7253554 m!7933564))

(declare-fun m!7933566 () Bool)

(assert (=> b!7253554 m!7933566))

(assert (=> b!7253554 m!7933564))

(assert (=> b!7253554 m!7933566))

(declare-fun m!7933568 () Bool)

(assert (=> b!7253554 m!7933568))

(assert (=> b!7253482 d!2255234))

(declare-fun d!2255236 () Bool)

(declare-fun c!1348345 () Bool)

(declare-fun e!4349338 () Bool)

(assert (=> d!2255236 (= c!1348345 e!4349338)))

(declare-fun res!2941689 () Bool)

(assert (=> d!2255236 (=> (not res!2941689) (not e!4349338))))

(assert (=> d!2255236 (= res!2941689 (is-Cons!70418 (exprs!8094 lt!2585966)))))

(declare-fun e!4349336 () (Set Context!15188))

(assert (=> d!2255236 (= (derivationStepZipperUp!2478 lt!2585966 (h!76867 s1!1971)) e!4349336)))

(declare-fun bm!660826 () Bool)

(declare-fun call!660831 () (Set Context!15188))

(assert (=> bm!660826 (= call!660831 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 lt!2585966)) (Context!15189 (t!384602 (exprs!8094 lt!2585966))) (h!76867 s1!1971)))))

(declare-fun b!7253565 () Bool)

(declare-fun e!4349337 () (Set Context!15188))

(assert (=> b!7253565 (= e!4349337 (as set.empty (Set Context!15188)))))

(declare-fun b!7253566 () Bool)

(assert (=> b!7253566 (= e!4349336 (set.union call!660831 (derivationStepZipperUp!2478 (Context!15189 (t!384602 (exprs!8094 lt!2585966))) (h!76867 s1!1971))))))

(declare-fun b!7253567 () Bool)

(assert (=> b!7253567 (= e!4349338 (nullable!7914 (h!76866 (exprs!8094 lt!2585966))))))

(declare-fun b!7253568 () Bool)

(assert (=> b!7253568 (= e!4349337 call!660831)))

(declare-fun b!7253569 () Bool)

(assert (=> b!7253569 (= e!4349336 e!4349337)))

(declare-fun c!1348346 () Bool)

(assert (=> b!7253569 (= c!1348346 (is-Cons!70418 (exprs!8094 lt!2585966)))))

(assert (= (and d!2255236 res!2941689) b!7253567))

(assert (= (and d!2255236 c!1348345) b!7253566))

(assert (= (and d!2255236 (not c!1348345)) b!7253569))

(assert (= (and b!7253569 c!1348346) b!7253568))

(assert (= (and b!7253569 (not c!1348346)) b!7253565))

(assert (= (or b!7253566 b!7253568) bm!660826))

(declare-fun m!7933570 () Bool)

(assert (=> bm!660826 m!7933570))

(declare-fun m!7933572 () Bool)

(assert (=> b!7253566 m!7933572))

(declare-fun m!7933574 () Bool)

(assert (=> b!7253567 m!7933574))

(assert (=> b!7253483 d!2255236))

(declare-fun d!2255238 () Bool)

(declare-fun forall!17503 (List!70542 Int) Bool)

(assert (=> d!2255238 (forall!17503 (++!16570 (exprs!8094 ct1!232) (exprs!8094 ct2!328)) lambda!444641)))

(declare-fun lt!2586054 () Unit!163897)

(declare-fun choose!56052 (List!70542 List!70542 Int) Unit!163897)

(assert (=> d!2255238 (= lt!2586054 (choose!56052 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641))))

(assert (=> d!2255238 (forall!17503 (exprs!8094 ct1!232) lambda!444641)))

(assert (=> d!2255238 (= (lemmaConcatPreservesForall!1461 (exprs!8094 ct1!232) (exprs!8094 ct2!328) lambda!444641) lt!2586054)))

(declare-fun bs!1906906 () Bool)

(assert (= bs!1906906 d!2255238))

(assert (=> bs!1906906 m!7933464))

(assert (=> bs!1906906 m!7933464))

(declare-fun m!7933576 () Bool)

(assert (=> bs!1906906 m!7933576))

(declare-fun m!7933578 () Bool)

(assert (=> bs!1906906 m!7933578))

(declare-fun m!7933580 () Bool)

(assert (=> bs!1906906 m!7933580))

(assert (=> b!7253483 d!2255238))

(declare-fun b!7253578 () Bool)

(declare-fun e!4349343 () List!70542)

(assert (=> b!7253578 (= e!4349343 (exprs!8094 ct2!328))))

(declare-fun d!2255240 () Bool)

(declare-fun e!4349344 () Bool)

(assert (=> d!2255240 e!4349344))

(declare-fun res!2941694 () Bool)

(assert (=> d!2255240 (=> (not res!2941694) (not e!4349344))))

(declare-fun lt!2586057 () List!70542)

(declare-fun content!14625 (List!70542) (Set Regex!18654))

(assert (=> d!2255240 (= res!2941694 (= (content!14625 lt!2586057) (set.union (content!14625 (exprs!8094 lt!2585945)) (content!14625 (exprs!8094 ct2!328)))))))

(assert (=> d!2255240 (= lt!2586057 e!4349343)))

(declare-fun c!1348349 () Bool)

(assert (=> d!2255240 (= c!1348349 (is-Nil!70418 (exprs!8094 lt!2585945)))))

(assert (=> d!2255240 (= (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328)) lt!2586057)))

(declare-fun b!7253579 () Bool)

(assert (=> b!7253579 (= e!4349343 (Cons!70418 (h!76866 (exprs!8094 lt!2585945)) (++!16570 (t!384602 (exprs!8094 lt!2585945)) (exprs!8094 ct2!328))))))

(declare-fun b!7253581 () Bool)

(assert (=> b!7253581 (= e!4349344 (or (not (= (exprs!8094 ct2!328) Nil!70418)) (= lt!2586057 (exprs!8094 lt!2585945))))))

(declare-fun b!7253580 () Bool)

(declare-fun res!2941695 () Bool)

(assert (=> b!7253580 (=> (not res!2941695) (not e!4349344))))

(declare-fun size!41726 (List!70542) Int)

(assert (=> b!7253580 (= res!2941695 (= (size!41726 lt!2586057) (+ (size!41726 (exprs!8094 lt!2585945)) (size!41726 (exprs!8094 ct2!328)))))))

(assert (= (and d!2255240 c!1348349) b!7253578))

(assert (= (and d!2255240 (not c!1348349)) b!7253579))

(assert (= (and d!2255240 res!2941694) b!7253580))

(assert (= (and b!7253580 res!2941695) b!7253581))

(declare-fun m!7933582 () Bool)

(assert (=> d!2255240 m!7933582))

(declare-fun m!7933584 () Bool)

(assert (=> d!2255240 m!7933584))

(declare-fun m!7933586 () Bool)

(assert (=> d!2255240 m!7933586))

(declare-fun m!7933588 () Bool)

(assert (=> b!7253579 m!7933588))

(declare-fun m!7933590 () Bool)

(assert (=> b!7253580 m!7933590))

(declare-fun m!7933592 () Bool)

(assert (=> b!7253580 m!7933592))

(declare-fun m!7933594 () Bool)

(assert (=> b!7253580 m!7933594))

(assert (=> b!7253484 d!2255240))

(declare-fun d!2255242 () Bool)

(assert (=> d!2255242 (= (isEmpty!40552 (exprs!8094 ct1!232)) (is-Nil!70418 (exprs!8094 ct1!232)))))

(assert (=> b!7253484 d!2255242))

(declare-fun bs!1906907 () Bool)

(declare-fun d!2255244 () Bool)

(assert (= bs!1906907 (and d!2255244 b!7253489)))

(declare-fun lambda!444675 () Int)

(assert (=> bs!1906907 (= lambda!444675 lambda!444641)))

(assert (=> d!2255244 (matchZipper!3564 (set.insert (Context!15189 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328))) (as set.empty (Set Context!15188))) (++!16571 (t!384603 s1!1971) s2!1849))))

(declare-fun lt!2586063 () Unit!163897)

(assert (=> d!2255244 (= lt!2586063 (lemmaConcatPreservesForall!1461 (exprs!8094 lt!2585945) (exprs!8094 ct2!328) lambda!444675))))

(declare-fun lt!2586062 () Unit!163897)

(declare-fun choose!56053 (Context!15188 Context!15188 List!70543 List!70543) Unit!163897)

(assert (=> d!2255244 (= lt!2586062 (choose!56053 lt!2585945 ct2!328 (t!384603 s1!1971) s2!1849))))

(assert (=> d!2255244 (matchZipper!3564 (set.insert lt!2585945 (as set.empty (Set Context!15188))) (t!384603 s1!1971))))

(assert (=> d!2255244 (= (lemmaConcatenateContextMatchesConcatOfStrings!399 lt!2585945 ct2!328 (t!384603 s1!1971) s2!1849) lt!2586062)))

(declare-fun bs!1906908 () Bool)

(assert (= bs!1906908 d!2255244))

(assert (=> bs!1906908 m!7933394))

(declare-fun m!7933596 () Bool)

(assert (=> bs!1906908 m!7933596))

(declare-fun m!7933598 () Bool)

(assert (=> bs!1906908 m!7933598))

(declare-fun m!7933600 () Bool)

(assert (=> bs!1906908 m!7933600))

(assert (=> bs!1906908 m!7933402))

(assert (=> bs!1906908 m!7933394))

(assert (=> bs!1906908 m!7933398))

(assert (=> bs!1906908 m!7933400))

(declare-fun m!7933602 () Bool)

(assert (=> bs!1906908 m!7933602))

(assert (=> bs!1906908 m!7933398))

(assert (=> bs!1906908 m!7933596))

(assert (=> b!7253484 d!2255244))

(declare-fun b!7253591 () Bool)

(declare-fun e!4349350 () List!70543)

(assert (=> b!7253591 (= e!4349350 (Cons!70419 (h!76867 (t!384603 s1!1971)) (++!16571 (t!384603 (t!384603 s1!1971)) s2!1849)))))

(declare-fun b!7253590 () Bool)

(assert (=> b!7253590 (= e!4349350 s2!1849)))

(declare-fun b!7253592 () Bool)

(declare-fun res!2941701 () Bool)

(declare-fun e!4349349 () Bool)

(assert (=> b!7253592 (=> (not res!2941701) (not e!4349349))))

(declare-fun lt!2586066 () List!70543)

(declare-fun size!41727 (List!70543) Int)

(assert (=> b!7253592 (= res!2941701 (= (size!41727 lt!2586066) (+ (size!41727 (t!384603 s1!1971)) (size!41727 s2!1849))))))

(declare-fun b!7253593 () Bool)

(assert (=> b!7253593 (= e!4349349 (or (not (= s2!1849 Nil!70419)) (= lt!2586066 (t!384603 s1!1971))))))

(declare-fun d!2255246 () Bool)

(assert (=> d!2255246 e!4349349))

(declare-fun res!2941700 () Bool)

(assert (=> d!2255246 (=> (not res!2941700) (not e!4349349))))

(declare-fun content!14626 (List!70543) (Set C!37582))

(assert (=> d!2255246 (= res!2941700 (= (content!14626 lt!2586066) (set.union (content!14626 (t!384603 s1!1971)) (content!14626 s2!1849))))))

(assert (=> d!2255246 (= lt!2586066 e!4349350)))

(declare-fun c!1348352 () Bool)

(assert (=> d!2255246 (= c!1348352 (is-Nil!70419 (t!384603 s1!1971)))))

(assert (=> d!2255246 (= (++!16571 (t!384603 s1!1971) s2!1849) lt!2586066)))

(assert (= (and d!2255246 c!1348352) b!7253590))

(assert (= (and d!2255246 (not c!1348352)) b!7253591))

(assert (= (and d!2255246 res!2941700) b!7253592))

(assert (= (and b!7253592 res!2941701) b!7253593))

(declare-fun m!7933604 () Bool)

(assert (=> b!7253591 m!7933604))

(declare-fun m!7933606 () Bool)

(assert (=> b!7253592 m!7933606))

(declare-fun m!7933608 () Bool)

(assert (=> b!7253592 m!7933608))

(declare-fun m!7933610 () Bool)

(assert (=> b!7253592 m!7933610))

(declare-fun m!7933612 () Bool)

(assert (=> d!2255246 m!7933612))

(declare-fun m!7933614 () Bool)

(assert (=> d!2255246 m!7933614))

(declare-fun m!7933616 () Bool)

(assert (=> d!2255246 m!7933616))

(assert (=> b!7253484 d!2255246))

(declare-fun d!2255248 () Bool)

(declare-fun c!1348353 () Bool)

(declare-fun e!4349353 () Bool)

(assert (=> d!2255248 (= c!1348353 e!4349353)))

(declare-fun res!2941702 () Bool)

(assert (=> d!2255248 (=> (not res!2941702) (not e!4349353))))

(assert (=> d!2255248 (= res!2941702 (is-Cons!70418 (exprs!8094 ct1!232)))))

(declare-fun e!4349351 () (Set Context!15188))

(assert (=> d!2255248 (= (derivationStepZipperUp!2478 ct1!232 (h!76867 s1!1971)) e!4349351)))

(declare-fun bm!660827 () Bool)

(declare-fun call!660832 () (Set Context!15188))

(assert (=> bm!660827 (= call!660832 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 ct1!232)) (Context!15189 (t!384602 (exprs!8094 ct1!232))) (h!76867 s1!1971)))))

(declare-fun b!7253594 () Bool)

(declare-fun e!4349352 () (Set Context!15188))

(assert (=> b!7253594 (= e!4349352 (as set.empty (Set Context!15188)))))

(declare-fun b!7253595 () Bool)

(assert (=> b!7253595 (= e!4349351 (set.union call!660832 (derivationStepZipperUp!2478 (Context!15189 (t!384602 (exprs!8094 ct1!232))) (h!76867 s1!1971))))))

(declare-fun b!7253596 () Bool)

(assert (=> b!7253596 (= e!4349353 (nullable!7914 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun b!7253597 () Bool)

(assert (=> b!7253597 (= e!4349352 call!660832)))

(declare-fun b!7253598 () Bool)

(assert (=> b!7253598 (= e!4349351 e!4349352)))

(declare-fun c!1348354 () Bool)

(assert (=> b!7253598 (= c!1348354 (is-Cons!70418 (exprs!8094 ct1!232)))))

(assert (= (and d!2255248 res!2941702) b!7253596))

(assert (= (and d!2255248 c!1348353) b!7253595))

(assert (= (and d!2255248 (not c!1348353)) b!7253598))

(assert (= (and b!7253598 c!1348354) b!7253597))

(assert (= (and b!7253598 (not c!1348354)) b!7253594))

(assert (= (or b!7253595 b!7253597) bm!660827))

(declare-fun m!7933618 () Bool)

(assert (=> bm!660827 m!7933618))

(declare-fun m!7933620 () Bool)

(assert (=> b!7253595 m!7933620))

(assert (=> b!7253596 m!7933450))

(assert (=> b!7253484 d!2255248))

(declare-fun d!2255250 () Bool)

(declare-fun e!4349356 () Bool)

(assert (=> d!2255250 e!4349356))

(declare-fun res!2941705 () Bool)

(assert (=> d!2255250 (=> (not res!2941705) (not e!4349356))))

(declare-fun lt!2586069 () Context!15188)

(declare-fun dynLambda!28761 (Int Context!15188) Bool)

(assert (=> d!2255250 (= res!2941705 (dynLambda!28761 lambda!444642 lt!2586069))))

(declare-fun getWitness!2220 (List!70544 Int) Context!15188)

(assert (=> d!2255250 (= lt!2586069 (getWitness!2220 (toList!11483 lt!2585951) lambda!444642))))

(assert (=> d!2255250 (exists!4386 lt!2585951 lambda!444642)))

(assert (=> d!2255250 (= (getWitness!2218 lt!2585951 lambda!444642) lt!2586069)))

(declare-fun b!7253601 () Bool)

(assert (=> b!7253601 (= e!4349356 (set.member lt!2586069 lt!2585951))))

(assert (= (and d!2255250 res!2941705) b!7253601))

(declare-fun b_lambda!278747 () Bool)

(assert (=> (not b_lambda!278747) (not d!2255250)))

(declare-fun m!7933622 () Bool)

(assert (=> d!2255250 m!7933622))

(assert (=> d!2255250 m!7933444))

(assert (=> d!2255250 m!7933444))

(declare-fun m!7933624 () Bool)

(assert (=> d!2255250 m!7933624))

(assert (=> d!2255250 m!7933438))

(declare-fun m!7933626 () Bool)

(assert (=> b!7253601 m!7933626))

(assert (=> b!7253484 d!2255250))

(declare-fun d!2255252 () Bool)

(declare-fun c!1348355 () Bool)

(assert (=> d!2255252 (= c!1348355 (isEmpty!40554 (++!16571 (t!384603 s1!1971) s2!1849)))))

(declare-fun e!4349357 () Bool)

(assert (=> d!2255252 (= (matchZipper!3564 (set.insert (Context!15189 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328))) (as set.empty (Set Context!15188))) (++!16571 (t!384603 s1!1971) s2!1849)) e!4349357)))

(declare-fun b!7253602 () Bool)

(assert (=> b!7253602 (= e!4349357 (nullableZipper!2918 (set.insert (Context!15189 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328))) (as set.empty (Set Context!15188)))))))

(declare-fun b!7253603 () Bool)

(assert (=> b!7253603 (= e!4349357 (matchZipper!3564 (derivationStepZipper!3432 (set.insert (Context!15189 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328))) (as set.empty (Set Context!15188))) (head!14912 (++!16571 (t!384603 s1!1971) s2!1849))) (tail!14336 (++!16571 (t!384603 s1!1971) s2!1849))))))

(assert (= (and d!2255252 c!1348355) b!7253602))

(assert (= (and d!2255252 (not c!1348355)) b!7253603))

(assert (=> d!2255252 m!7933398))

(declare-fun m!7933628 () Bool)

(assert (=> d!2255252 m!7933628))

(assert (=> b!7253602 m!7933394))

(declare-fun m!7933630 () Bool)

(assert (=> b!7253602 m!7933630))

(assert (=> b!7253603 m!7933398))

(declare-fun m!7933632 () Bool)

(assert (=> b!7253603 m!7933632))

(assert (=> b!7253603 m!7933394))

(assert (=> b!7253603 m!7933632))

(declare-fun m!7933634 () Bool)

(assert (=> b!7253603 m!7933634))

(assert (=> b!7253603 m!7933398))

(declare-fun m!7933636 () Bool)

(assert (=> b!7253603 m!7933636))

(assert (=> b!7253603 m!7933634))

(assert (=> b!7253603 m!7933636))

(declare-fun m!7933638 () Bool)

(assert (=> b!7253603 m!7933638))

(assert (=> b!7253484 d!2255252))

(declare-fun d!2255254 () Bool)

(assert (=> d!2255254 (forall!17503 (++!16570 (exprs!8094 lt!2585945) (exprs!8094 ct2!328)) lambda!444641)))

(declare-fun lt!2586070 () Unit!163897)

(assert (=> d!2255254 (= lt!2586070 (choose!56052 (exprs!8094 lt!2585945) (exprs!8094 ct2!328) lambda!444641))))

(assert (=> d!2255254 (forall!17503 (exprs!8094 lt!2585945) lambda!444641)))

(assert (=> d!2255254 (= (lemmaConcatPreservesForall!1461 (exprs!8094 lt!2585945) (exprs!8094 ct2!328) lambda!444641) lt!2586070)))

(declare-fun bs!1906909 () Bool)

(assert (= bs!1906909 d!2255254))

(assert (=> bs!1906909 m!7933402))

(assert (=> bs!1906909 m!7933402))

(declare-fun m!7933640 () Bool)

(assert (=> bs!1906909 m!7933640))

(declare-fun m!7933642 () Bool)

(assert (=> bs!1906909 m!7933642))

(declare-fun m!7933644 () Bool)

(assert (=> bs!1906909 m!7933644))

(assert (=> b!7253484 d!2255254))

(declare-fun d!2255256 () Bool)

(declare-fun c!1348356 () Bool)

(assert (=> d!2255256 (= c!1348356 (isEmpty!40554 s1!1971))))

(declare-fun e!4349358 () Bool)

(assert (=> d!2255256 (= (matchZipper!3564 lt!2585963 s1!1971) e!4349358)))

(declare-fun b!7253604 () Bool)

(assert (=> b!7253604 (= e!4349358 (nullableZipper!2918 lt!2585963))))

(declare-fun b!7253605 () Bool)

(assert (=> b!7253605 (= e!4349358 (matchZipper!3564 (derivationStepZipper!3432 lt!2585963 (head!14912 s1!1971)) (tail!14336 s1!1971)))))

(assert (= (and d!2255256 c!1348356) b!7253604))

(assert (= (and d!2255256 (not c!1348356)) b!7253605))

(declare-fun m!7933646 () Bool)

(assert (=> d!2255256 m!7933646))

(declare-fun m!7933648 () Bool)

(assert (=> b!7253604 m!7933648))

(declare-fun m!7933650 () Bool)

(assert (=> b!7253605 m!7933650))

(assert (=> b!7253605 m!7933650))

(declare-fun m!7933652 () Bool)

(assert (=> b!7253605 m!7933652))

(declare-fun m!7933654 () Bool)

(assert (=> b!7253605 m!7933654))

(assert (=> b!7253605 m!7933652))

(assert (=> b!7253605 m!7933654))

(declare-fun m!7933656 () Bool)

(assert (=> b!7253605 m!7933656))

(assert (=> start!706154 d!2255256))

(declare-fun bs!1906910 () Bool)

(declare-fun d!2255258 () Bool)

(assert (= bs!1906910 (and d!2255258 b!7253489)))

(declare-fun lambda!444678 () Int)

(assert (=> bs!1906910 (= lambda!444678 lambda!444641)))

(declare-fun bs!1906911 () Bool)

(assert (= bs!1906911 (and d!2255258 d!2255244)))

(assert (=> bs!1906911 (= lambda!444678 lambda!444675)))

(assert (=> d!2255258 (= (inv!89646 ct1!232) (forall!17503 (exprs!8094 ct1!232) lambda!444678))))

(declare-fun bs!1906912 () Bool)

(assert (= bs!1906912 d!2255258))

(declare-fun m!7933658 () Bool)

(assert (=> bs!1906912 m!7933658))

(assert (=> start!706154 d!2255258))

(declare-fun bs!1906913 () Bool)

(declare-fun d!2255260 () Bool)

(assert (= bs!1906913 (and d!2255260 b!7253489)))

(declare-fun lambda!444679 () Int)

(assert (=> bs!1906913 (= lambda!444679 lambda!444641)))

(declare-fun bs!1906914 () Bool)

(assert (= bs!1906914 (and d!2255260 d!2255244)))

(assert (=> bs!1906914 (= lambda!444679 lambda!444675)))

(declare-fun bs!1906915 () Bool)

(assert (= bs!1906915 (and d!2255260 d!2255258)))

(assert (=> bs!1906915 (= lambda!444679 lambda!444678)))

(assert (=> d!2255260 (= (inv!89646 ct2!328) (forall!17503 (exprs!8094 ct2!328) lambda!444679))))

(declare-fun bs!1906916 () Bool)

(assert (= bs!1906916 d!2255260))

(declare-fun m!7933660 () Bool)

(assert (=> bs!1906916 m!7933660))

(assert (=> start!706154 d!2255260))

(declare-fun d!2255262 () Bool)

(declare-fun c!1348357 () Bool)

(declare-fun e!4349361 () Bool)

(assert (=> d!2255262 (= c!1348357 e!4349361)))

(declare-fun res!2941706 () Bool)

(assert (=> d!2255262 (=> (not res!2941706) (not e!4349361))))

(assert (=> d!2255262 (= res!2941706 (is-Cons!70418 (exprs!8094 lt!2585960)))))

(declare-fun e!4349359 () (Set Context!15188))

(assert (=> d!2255262 (= (derivationStepZipperUp!2478 lt!2585960 (h!76867 s1!1971)) e!4349359)))

(declare-fun bm!660828 () Bool)

(declare-fun call!660833 () (Set Context!15188))

(assert (=> bm!660828 (= call!660833 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 lt!2585960)) (Context!15189 (t!384602 (exprs!8094 lt!2585960))) (h!76867 s1!1971)))))

(declare-fun b!7253606 () Bool)

(declare-fun e!4349360 () (Set Context!15188))

(assert (=> b!7253606 (= e!4349360 (as set.empty (Set Context!15188)))))

(declare-fun b!7253607 () Bool)

(assert (=> b!7253607 (= e!4349359 (set.union call!660833 (derivationStepZipperUp!2478 (Context!15189 (t!384602 (exprs!8094 lt!2585960))) (h!76867 s1!1971))))))

(declare-fun b!7253608 () Bool)

(assert (=> b!7253608 (= e!4349361 (nullable!7914 (h!76866 (exprs!8094 lt!2585960))))))

(declare-fun b!7253609 () Bool)

(assert (=> b!7253609 (= e!4349360 call!660833)))

(declare-fun b!7253610 () Bool)

(assert (=> b!7253610 (= e!4349359 e!4349360)))

(declare-fun c!1348358 () Bool)

(assert (=> b!7253610 (= c!1348358 (is-Cons!70418 (exprs!8094 lt!2585960)))))

(assert (= (and d!2255262 res!2941706) b!7253608))

(assert (= (and d!2255262 c!1348357) b!7253607))

(assert (= (and d!2255262 (not c!1348357)) b!7253610))

(assert (= (and b!7253610 c!1348358) b!7253609))

(assert (= (and b!7253610 (not c!1348358)) b!7253606))

(assert (= (or b!7253607 b!7253609) bm!660828))

(declare-fun m!7933662 () Bool)

(assert (=> bm!660828 m!7933662))

(declare-fun m!7933664 () Bool)

(assert (=> b!7253607 m!7933664))

(declare-fun m!7933666 () Bool)

(assert (=> b!7253608 m!7933666))

(assert (=> b!7253486 d!2255262))

(declare-fun d!2255264 () Bool)

(assert (=> d!2255264 (= (tail!14334 (exprs!8094 ct1!232)) (t!384602 (exprs!8094 ct1!232)))))

(assert (=> b!7253486 d!2255264))

(declare-fun b!7253633 () Bool)

(declare-fun c!1348371 () Bool)

(assert (=> b!7253633 (= c!1348371 (is-Star!18654 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun e!4349374 () (Set Context!15188))

(declare-fun e!4349378 () (Set Context!15188))

(assert (=> b!7253633 (= e!4349374 e!4349378)))

(declare-fun b!7253634 () Bool)

(declare-fun c!1348369 () Bool)

(declare-fun e!4349376 () Bool)

(assert (=> b!7253634 (= c!1348369 e!4349376)))

(declare-fun res!2941709 () Bool)

(assert (=> b!7253634 (=> (not res!2941709) (not e!4349376))))

(assert (=> b!7253634 (= res!2941709 (is-Concat!27499 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun e!4349377 () (Set Context!15188))

(declare-fun e!4349375 () (Set Context!15188))

(assert (=> b!7253634 (= e!4349377 e!4349375)))

(declare-fun call!660847 () List!70542)

(declare-fun c!1348370 () Bool)

(declare-fun bm!660841 () Bool)

(declare-fun call!660851 () (Set Context!15188))

(assert (=> bm!660841 (= call!660851 (derivationStepZipperDown!2648 (ite c!1348370 (regTwo!37821 (h!76866 (exprs!8094 ct1!232))) (regOne!37820 (h!76866 (exprs!8094 ct1!232)))) (ite c!1348370 lt!2585944 (Context!15189 call!660847)) (h!76867 s1!1971)))))

(declare-fun b!7253635 () Bool)

(assert (=> b!7253635 (= e!4349375 e!4349374)))

(declare-fun c!1348372 () Bool)

(assert (=> b!7253635 (= c!1348372 (is-Concat!27499 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun b!7253636 () Bool)

(declare-fun call!660850 () (Set Context!15188))

(assert (=> b!7253636 (= e!4349375 (set.union call!660851 call!660850))))

(declare-fun bm!660842 () Bool)

(declare-fun $colon$colon!2922 (List!70542 Regex!18654) List!70542)

(assert (=> bm!660842 (= call!660847 ($colon$colon!2922 (exprs!8094 lt!2585944) (ite (or c!1348369 c!1348372) (regTwo!37820 (h!76866 (exprs!8094 ct1!232))) (h!76866 (exprs!8094 ct1!232)))))))

(declare-fun b!7253637 () Bool)

(declare-fun call!660846 () (Set Context!15188))

(assert (=> b!7253637 (= e!4349377 (set.union call!660846 call!660851))))

(declare-fun bm!660843 () Bool)

(declare-fun call!660848 () (Set Context!15188))

(assert (=> bm!660843 (= call!660848 call!660850)))

(declare-fun bm!660844 () Bool)

(assert (=> bm!660844 (= call!660850 call!660846)))

(declare-fun d!2255266 () Bool)

(declare-fun c!1348373 () Bool)

(assert (=> d!2255266 (= c!1348373 (and (is-ElementMatch!18654 (h!76866 (exprs!8094 ct1!232))) (= (c!1348326 (h!76866 (exprs!8094 ct1!232))) (h!76867 s1!1971))))))

(declare-fun e!4349379 () (Set Context!15188))

(assert (=> d!2255266 (= (derivationStepZipperDown!2648 (h!76866 (exprs!8094 ct1!232)) lt!2585944 (h!76867 s1!1971)) e!4349379)))

(declare-fun b!7253638 () Bool)

(assert (=> b!7253638 (= e!4349378 (as set.empty (Set Context!15188)))))

(declare-fun b!7253639 () Bool)

(assert (=> b!7253639 (= e!4349376 (nullable!7914 (regOne!37820 (h!76866 (exprs!8094 ct1!232)))))))

(declare-fun b!7253640 () Bool)

(assert (=> b!7253640 (= e!4349374 call!660848)))

(declare-fun bm!660845 () Bool)

(declare-fun call!660849 () List!70542)

(assert (=> bm!660845 (= call!660849 call!660847)))

(declare-fun b!7253641 () Bool)

(assert (=> b!7253641 (= e!4349379 (set.insert lt!2585944 (as set.empty (Set Context!15188))))))

(declare-fun b!7253642 () Bool)

(assert (=> b!7253642 (= e!4349379 e!4349377)))

(assert (=> b!7253642 (= c!1348370 (is-Union!18654 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun bm!660846 () Bool)

(assert (=> bm!660846 (= call!660846 (derivationStepZipperDown!2648 (ite c!1348370 (regOne!37821 (h!76866 (exprs!8094 ct1!232))) (ite c!1348369 (regTwo!37820 (h!76866 (exprs!8094 ct1!232))) (ite c!1348372 (regOne!37820 (h!76866 (exprs!8094 ct1!232))) (reg!18983 (h!76866 (exprs!8094 ct1!232)))))) (ite (or c!1348370 c!1348369) lt!2585944 (Context!15189 call!660849)) (h!76867 s1!1971)))))

(declare-fun b!7253643 () Bool)

(assert (=> b!7253643 (= e!4349378 call!660848)))

(assert (= (and d!2255266 c!1348373) b!7253641))

(assert (= (and d!2255266 (not c!1348373)) b!7253642))

(assert (= (and b!7253642 c!1348370) b!7253637))

(assert (= (and b!7253642 (not c!1348370)) b!7253634))

(assert (= (and b!7253634 res!2941709) b!7253639))

(assert (= (and b!7253634 c!1348369) b!7253636))

(assert (= (and b!7253634 (not c!1348369)) b!7253635))

(assert (= (and b!7253635 c!1348372) b!7253640))

(assert (= (and b!7253635 (not c!1348372)) b!7253633))

(assert (= (and b!7253633 c!1348371) b!7253643))

(assert (= (and b!7253633 (not c!1348371)) b!7253638))

(assert (= (or b!7253640 b!7253643) bm!660845))

(assert (= (or b!7253640 b!7253643) bm!660843))

(assert (= (or b!7253636 bm!660845) bm!660842))

(assert (= (or b!7253636 bm!660843) bm!660844))

(assert (= (or b!7253637 b!7253636) bm!660841))

(assert (= (or b!7253637 bm!660844) bm!660846))

(declare-fun m!7933668 () Bool)

(assert (=> bm!660846 m!7933668))

(declare-fun m!7933670 () Bool)

(assert (=> b!7253641 m!7933670))

(declare-fun m!7933672 () Bool)

(assert (=> bm!660841 m!7933672))

(declare-fun m!7933674 () Bool)

(assert (=> b!7253639 m!7933674))

(declare-fun m!7933676 () Bool)

(assert (=> bm!660842 m!7933676))

(assert (=> b!7253486 d!2255266))

(assert (=> b!7253486 d!2255238))

(declare-fun d!2255268 () Bool)

(assert (=> d!2255268 (= (isEmpty!40552 lt!2585964) (is-Nil!70418 lt!2585964))))

(assert (=> b!7253486 d!2255268))

(declare-fun d!2255270 () Bool)

(declare-fun c!1348374 () Bool)

(declare-fun e!4349382 () Bool)

(assert (=> d!2255270 (= c!1348374 e!4349382)))

(declare-fun res!2941710 () Bool)

(assert (=> d!2255270 (=> (not res!2941710) (not e!4349382))))

(assert (=> d!2255270 (= res!2941710 (is-Cons!70418 (exprs!8094 lt!2585944)))))

(declare-fun e!4349380 () (Set Context!15188))

(assert (=> d!2255270 (= (derivationStepZipperUp!2478 lt!2585944 (h!76867 s1!1971)) e!4349380)))

(declare-fun bm!660847 () Bool)

(declare-fun call!660852 () (Set Context!15188))

(assert (=> bm!660847 (= call!660852 (derivationStepZipperDown!2648 (h!76866 (exprs!8094 lt!2585944)) (Context!15189 (t!384602 (exprs!8094 lt!2585944))) (h!76867 s1!1971)))))

(declare-fun b!7253644 () Bool)

(declare-fun e!4349381 () (Set Context!15188))

(assert (=> b!7253644 (= e!4349381 (as set.empty (Set Context!15188)))))

(declare-fun b!7253645 () Bool)

(assert (=> b!7253645 (= e!4349380 (set.union call!660852 (derivationStepZipperUp!2478 (Context!15189 (t!384602 (exprs!8094 lt!2585944))) (h!76867 s1!1971))))))

(declare-fun b!7253646 () Bool)

(assert (=> b!7253646 (= e!4349382 (nullable!7914 (h!76866 (exprs!8094 lt!2585944))))))

(declare-fun b!7253647 () Bool)

(assert (=> b!7253647 (= e!4349381 call!660852)))

(declare-fun b!7253648 () Bool)

(assert (=> b!7253648 (= e!4349380 e!4349381)))

(declare-fun c!1348375 () Bool)

(assert (=> b!7253648 (= c!1348375 (is-Cons!70418 (exprs!8094 lt!2585944)))))

(assert (= (and d!2255270 res!2941710) b!7253646))

(assert (= (and d!2255270 c!1348374) b!7253645))

(assert (= (and d!2255270 (not c!1348374)) b!7253648))

(assert (= (and b!7253648 c!1348375) b!7253647))

(assert (= (and b!7253648 (not c!1348375)) b!7253644))

(assert (= (or b!7253645 b!7253647) bm!660847))

(declare-fun m!7933678 () Bool)

(assert (=> bm!660847 m!7933678))

(declare-fun m!7933680 () Bool)

(assert (=> b!7253645 m!7933680))

(declare-fun m!7933682 () Bool)

(assert (=> b!7253646 m!7933682))

(assert (=> b!7253477 d!2255270))

(declare-fun d!2255272 () Bool)

(declare-fun lt!2586073 () Bool)

(assert (=> d!2255272 (= lt!2586073 (exists!4387 (toList!11483 lt!2585951) lambda!444642))))

(declare-fun choose!56054 ((Set Context!15188) Int) Bool)

(assert (=> d!2255272 (= lt!2586073 (choose!56054 lt!2585951 lambda!444642))))

(assert (=> d!2255272 (= (exists!4386 lt!2585951 lambda!444642) lt!2586073)))

(declare-fun bs!1906917 () Bool)

(assert (= bs!1906917 d!2255272))

(assert (=> bs!1906917 m!7933444))

(assert (=> bs!1906917 m!7933444))

(declare-fun m!7933684 () Bool)

(assert (=> bs!1906917 m!7933684))

(declare-fun m!7933686 () Bool)

(assert (=> bs!1906917 m!7933686))

(assert (=> b!7253487 d!2255272))

(declare-fun bs!1906918 () Bool)

(declare-fun d!2255274 () Bool)

(assert (= bs!1906918 (and d!2255274 b!7253487)))

(declare-fun lambda!444682 () Int)

(assert (=> bs!1906918 (not (= lambda!444682 lambda!444642))))

(assert (=> d!2255274 true))

(declare-fun order!28991 () Int)

(declare-fun dynLambda!28762 (Int Int) Int)

(assert (=> d!2255274 (< (dynLambda!28762 order!28991 lambda!444642) (dynLambda!28762 order!28991 lambda!444682))))

(declare-fun forall!17504 (List!70544 Int) Bool)

(assert (=> d!2255274 (= (exists!4387 lt!2585955 lambda!444642) (not (forall!17504 lt!2585955 lambda!444682)))))

(declare-fun bs!1906919 () Bool)

(assert (= bs!1906919 d!2255274))

(declare-fun m!7933688 () Bool)

(assert (=> bs!1906919 m!7933688))

(assert (=> b!7253487 d!2255274))

(declare-fun bs!1906920 () Bool)

(declare-fun d!2255276 () Bool)

(assert (= bs!1906920 (and d!2255276 b!7253487)))

(declare-fun lambda!444685 () Int)

(assert (=> bs!1906920 (= lambda!444685 lambda!444642)))

(declare-fun bs!1906921 () Bool)

(assert (= bs!1906921 (and d!2255276 d!2255274)))

(assert (=> bs!1906921 (not (= lambda!444685 lambda!444682))))

(assert (=> d!2255276 true))

(assert (=> d!2255276 (exists!4387 lt!2585955 lambda!444685)))

(declare-fun lt!2586076 () Unit!163897)

(declare-fun choose!56055 (List!70544 List!70543) Unit!163897)

(assert (=> d!2255276 (= lt!2586076 (choose!56055 lt!2585955 (t!384603 s1!1971)))))

(declare-fun content!14627 (List!70544) (Set Context!15188))

(assert (=> d!2255276 (matchZipper!3564 (content!14627 lt!2585955) (t!384603 s1!1971))))

(assert (=> d!2255276 (= (lemmaZipperMatchesExistsMatchingContext!757 lt!2585955 (t!384603 s1!1971)) lt!2586076)))

(declare-fun bs!1906922 () Bool)

(assert (= bs!1906922 d!2255276))

(declare-fun m!7933690 () Bool)

(assert (=> bs!1906922 m!7933690))

(declare-fun m!7933692 () Bool)

(assert (=> bs!1906922 m!7933692))

(declare-fun m!7933694 () Bool)

(assert (=> bs!1906922 m!7933694))

(assert (=> bs!1906922 m!7933694))

(declare-fun m!7933696 () Bool)

(assert (=> bs!1906922 m!7933696))

(assert (=> b!7253487 d!2255276))

(declare-fun d!2255278 () Bool)

(declare-fun e!4349385 () Bool)

(assert (=> d!2255278 e!4349385))

(declare-fun res!2941713 () Bool)

(assert (=> d!2255278 (=> (not res!2941713) (not e!4349385))))

(declare-fun lt!2586079 () List!70544)

(declare-fun noDuplicate!2995 (List!70544) Bool)

(assert (=> d!2255278 (= res!2941713 (noDuplicate!2995 lt!2586079))))

(declare-fun choose!56056 ((Set Context!15188)) List!70544)

(assert (=> d!2255278 (= lt!2586079 (choose!56056 lt!2585951))))

(assert (=> d!2255278 (= (toList!11483 lt!2585951) lt!2586079)))

(declare-fun b!7253653 () Bool)

(assert (=> b!7253653 (= e!4349385 (= (content!14627 lt!2586079) lt!2585951))))

(assert (= (and d!2255278 res!2941713) b!7253653))

(declare-fun m!7933698 () Bool)

(assert (=> d!2255278 m!7933698))

(declare-fun m!7933700 () Bool)

(assert (=> d!2255278 m!7933700))

(declare-fun m!7933702 () Bool)

(assert (=> b!7253653 m!7933702))

(assert (=> b!7253487 d!2255278))

(assert (=> b!7253478 d!2255262))

(declare-fun b!7253654 () Bool)

(declare-fun c!1348380 () Bool)

(assert (=> b!7253654 (= c!1348380 (is-Star!18654 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun e!4349386 () (Set Context!15188))

(declare-fun e!4349390 () (Set Context!15188))

(assert (=> b!7253654 (= e!4349386 e!4349390)))

(declare-fun b!7253655 () Bool)

(declare-fun c!1348378 () Bool)

(declare-fun e!4349388 () Bool)

(assert (=> b!7253655 (= c!1348378 e!4349388)))

(declare-fun res!2941714 () Bool)

(assert (=> b!7253655 (=> (not res!2941714) (not e!4349388))))

(assert (=> b!7253655 (= res!2941714 (is-Concat!27499 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun e!4349389 () (Set Context!15188))

(declare-fun e!4349387 () (Set Context!15188))

(assert (=> b!7253655 (= e!4349389 e!4349387)))

(declare-fun call!660858 () (Set Context!15188))

(declare-fun c!1348379 () Bool)

(declare-fun call!660854 () List!70542)

(declare-fun bm!660848 () Bool)

(assert (=> bm!660848 (= call!660858 (derivationStepZipperDown!2648 (ite c!1348379 (regTwo!37821 (h!76866 (exprs!8094 ct1!232))) (regOne!37820 (h!76866 (exprs!8094 ct1!232)))) (ite c!1348379 lt!2585966 (Context!15189 call!660854)) (h!76867 s1!1971)))))

(declare-fun b!7253656 () Bool)

(assert (=> b!7253656 (= e!4349387 e!4349386)))

(declare-fun c!1348381 () Bool)

(assert (=> b!7253656 (= c!1348381 (is-Concat!27499 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun b!7253657 () Bool)

(declare-fun call!660857 () (Set Context!15188))

(assert (=> b!7253657 (= e!4349387 (set.union call!660858 call!660857))))

(declare-fun bm!660849 () Bool)

(assert (=> bm!660849 (= call!660854 ($colon$colon!2922 (exprs!8094 lt!2585966) (ite (or c!1348378 c!1348381) (regTwo!37820 (h!76866 (exprs!8094 ct1!232))) (h!76866 (exprs!8094 ct1!232)))))))

(declare-fun b!7253658 () Bool)

(declare-fun call!660853 () (Set Context!15188))

(assert (=> b!7253658 (= e!4349389 (set.union call!660853 call!660858))))

(declare-fun bm!660850 () Bool)

(declare-fun call!660855 () (Set Context!15188))

(assert (=> bm!660850 (= call!660855 call!660857)))

(declare-fun bm!660851 () Bool)

(assert (=> bm!660851 (= call!660857 call!660853)))

(declare-fun d!2255280 () Bool)

(declare-fun c!1348382 () Bool)

(assert (=> d!2255280 (= c!1348382 (and (is-ElementMatch!18654 (h!76866 (exprs!8094 ct1!232))) (= (c!1348326 (h!76866 (exprs!8094 ct1!232))) (h!76867 s1!1971))))))

(declare-fun e!4349391 () (Set Context!15188))

(assert (=> d!2255280 (= (derivationStepZipperDown!2648 (h!76866 (exprs!8094 ct1!232)) lt!2585966 (h!76867 s1!1971)) e!4349391)))

(declare-fun b!7253659 () Bool)

(assert (=> b!7253659 (= e!4349390 (as set.empty (Set Context!15188)))))

(declare-fun b!7253660 () Bool)

(assert (=> b!7253660 (= e!4349388 (nullable!7914 (regOne!37820 (h!76866 (exprs!8094 ct1!232)))))))

(declare-fun b!7253661 () Bool)

(assert (=> b!7253661 (= e!4349386 call!660855)))

(declare-fun bm!660852 () Bool)

(declare-fun call!660856 () List!70542)

(assert (=> bm!660852 (= call!660856 call!660854)))

(declare-fun b!7253662 () Bool)

(assert (=> b!7253662 (= e!4349391 (set.insert lt!2585966 (as set.empty (Set Context!15188))))))

(declare-fun b!7253663 () Bool)

(assert (=> b!7253663 (= e!4349391 e!4349389)))

(assert (=> b!7253663 (= c!1348379 (is-Union!18654 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun bm!660853 () Bool)

(assert (=> bm!660853 (= call!660853 (derivationStepZipperDown!2648 (ite c!1348379 (regOne!37821 (h!76866 (exprs!8094 ct1!232))) (ite c!1348378 (regTwo!37820 (h!76866 (exprs!8094 ct1!232))) (ite c!1348381 (regOne!37820 (h!76866 (exprs!8094 ct1!232))) (reg!18983 (h!76866 (exprs!8094 ct1!232)))))) (ite (or c!1348379 c!1348378) lt!2585966 (Context!15189 call!660856)) (h!76867 s1!1971)))))

(declare-fun b!7253664 () Bool)

(assert (=> b!7253664 (= e!4349390 call!660855)))

(assert (= (and d!2255280 c!1348382) b!7253662))

(assert (= (and d!2255280 (not c!1348382)) b!7253663))

(assert (= (and b!7253663 c!1348379) b!7253658))

(assert (= (and b!7253663 (not c!1348379)) b!7253655))

(assert (= (and b!7253655 res!2941714) b!7253660))

(assert (= (and b!7253655 c!1348378) b!7253657))

(assert (= (and b!7253655 (not c!1348378)) b!7253656))

(assert (= (and b!7253656 c!1348381) b!7253661))

(assert (= (and b!7253656 (not c!1348381)) b!7253654))

(assert (= (and b!7253654 c!1348380) b!7253664))

(assert (= (and b!7253654 (not c!1348380)) b!7253659))

(assert (= (or b!7253661 b!7253664) bm!660852))

(assert (= (or b!7253661 b!7253664) bm!660850))

(assert (= (or b!7253657 bm!660852) bm!660849))

(assert (= (or b!7253657 bm!660850) bm!660851))

(assert (= (or b!7253658 b!7253657) bm!660848))

(assert (= (or b!7253658 bm!660851) bm!660853))

(declare-fun m!7933704 () Bool)

(assert (=> bm!660853 m!7933704))

(declare-fun m!7933706 () Bool)

(assert (=> b!7253662 m!7933706))

(declare-fun m!7933708 () Bool)

(assert (=> bm!660848 m!7933708))

(assert (=> b!7253660 m!7933674))

(declare-fun m!7933710 () Bool)

(assert (=> bm!660849 m!7933710))

(assert (=> b!7253478 d!2255280))

(declare-fun d!2255282 () Bool)

(declare-fun choose!56057 ((Set Context!15188) Int) (Set Context!15188))

(assert (=> d!2255282 (= (flatMap!2819 lt!2585963 lambda!444643) (choose!56057 lt!2585963 lambda!444643))))

(declare-fun bs!1906923 () Bool)

(assert (= bs!1906923 d!2255282))

(declare-fun m!7933712 () Bool)

(assert (=> bs!1906923 m!7933712))

(assert (=> b!7253478 d!2255282))

(declare-fun d!2255284 () Bool)

(declare-fun dynLambda!28763 (Int Context!15188) (Set Context!15188))

(assert (=> d!2255284 (= (flatMap!2819 lt!2585946 lambda!444643) (dynLambda!28763 lambda!444643 lt!2585960))))

(declare-fun lt!2586082 () Unit!163897)

(declare-fun choose!56058 ((Set Context!15188) Context!15188 Int) Unit!163897)

(assert (=> d!2255284 (= lt!2586082 (choose!56058 lt!2585946 lt!2585960 lambda!444643))))

(assert (=> d!2255284 (= lt!2585946 (set.insert lt!2585960 (as set.empty (Set Context!15188))))))

(assert (=> d!2255284 (= (lemmaFlatMapOnSingletonSet!2223 lt!2585946 lt!2585960 lambda!444643) lt!2586082)))

(declare-fun b_lambda!278749 () Bool)

(assert (=> (not b_lambda!278749) (not d!2255284)))

(declare-fun bs!1906924 () Bool)

(assert (= bs!1906924 d!2255284))

(assert (=> bs!1906924 m!7933452))

(declare-fun m!7933714 () Bool)

(assert (=> bs!1906924 m!7933714))

(declare-fun m!7933716 () Bool)

(assert (=> bs!1906924 m!7933716))

(assert (=> bs!1906924 m!7933462))

(assert (=> b!7253478 d!2255284))

(declare-fun d!2255286 () Bool)

(declare-fun nullableFct!3107 (Regex!18654) Bool)

(assert (=> d!2255286 (= (nullable!7914 (h!76866 (exprs!8094 ct1!232))) (nullableFct!3107 (h!76866 (exprs!8094 ct1!232))))))

(declare-fun bs!1906925 () Bool)

(assert (= bs!1906925 d!2255286))

(declare-fun m!7933718 () Bool)

(assert (=> bs!1906925 m!7933718))

(assert (=> b!7253478 d!2255286))

(declare-fun d!2255288 () Bool)

(assert (=> d!2255288 (= (tail!14334 lt!2585964) (t!384602 lt!2585964))))

(assert (=> b!7253478 d!2255288))

(assert (=> b!7253478 d!2255248))

(assert (=> b!7253478 d!2255238))

(declare-fun d!2255290 () Bool)

(assert (=> d!2255290 (= (flatMap!2819 lt!2585946 lambda!444643) (choose!56057 lt!2585946 lambda!444643))))

(declare-fun bs!1906926 () Bool)

(assert (= bs!1906926 d!2255290))

(declare-fun m!7933720 () Bool)

(assert (=> bs!1906926 m!7933720))

(assert (=> b!7253478 d!2255290))

(declare-fun d!2255292 () Bool)

(assert (=> d!2255292 (= (flatMap!2819 lt!2585963 lambda!444643) (dynLambda!28763 lambda!444643 ct1!232))))

(declare-fun lt!2586083 () Unit!163897)

(assert (=> d!2255292 (= lt!2586083 (choose!56058 lt!2585963 ct1!232 lambda!444643))))

(assert (=> d!2255292 (= lt!2585963 (set.insert ct1!232 (as set.empty (Set Context!15188))))))

(assert (=> d!2255292 (= (lemmaFlatMapOnSingletonSet!2223 lt!2585963 ct1!232 lambda!444643) lt!2586083)))

(declare-fun b_lambda!278751 () Bool)

(assert (=> (not b_lambda!278751) (not d!2255292)))

(declare-fun bs!1906927 () Bool)

(assert (= bs!1906927 d!2255292))

(assert (=> bs!1906927 m!7933458))

(declare-fun m!7933722 () Bool)

(assert (=> bs!1906927 m!7933722))

(declare-fun m!7933724 () Bool)

(assert (=> bs!1906927 m!7933724))

(assert (=> bs!1906927 m!7933430))

(assert (=> b!7253478 d!2255292))

(declare-fun b!7253665 () Bool)

(declare-fun e!4349392 () List!70542)

(assert (=> b!7253665 (= e!4349392 (exprs!8094 ct2!328))))

(declare-fun d!2255294 () Bool)

(declare-fun e!4349393 () Bool)

(assert (=> d!2255294 e!4349393))

(declare-fun res!2941715 () Bool)

(assert (=> d!2255294 (=> (not res!2941715) (not e!4349393))))

(declare-fun lt!2586084 () List!70542)

(assert (=> d!2255294 (= res!2941715 (= (content!14625 lt!2586084) (set.union (content!14625 (exprs!8094 ct1!232)) (content!14625 (exprs!8094 ct2!328)))))))

(assert (=> d!2255294 (= lt!2586084 e!4349392)))

(declare-fun c!1348383 () Bool)

(assert (=> d!2255294 (= c!1348383 (is-Nil!70418 (exprs!8094 ct1!232)))))

(assert (=> d!2255294 (= (++!16570 (exprs!8094 ct1!232) (exprs!8094 ct2!328)) lt!2586084)))

(declare-fun b!7253666 () Bool)

(assert (=> b!7253666 (= e!4349392 (Cons!70418 (h!76866 (exprs!8094 ct1!232)) (++!16570 (t!384602 (exprs!8094 ct1!232)) (exprs!8094 ct2!328))))))

(declare-fun b!7253668 () Bool)

(assert (=> b!7253668 (= e!4349393 (or (not (= (exprs!8094 ct2!328) Nil!70418)) (= lt!2586084 (exprs!8094 ct1!232))))))

(declare-fun b!7253667 () Bool)

(declare-fun res!2941716 () Bool)

(assert (=> b!7253667 (=> (not res!2941716) (not e!4349393))))

(assert (=> b!7253667 (= res!2941716 (= (size!41726 lt!2586084) (+ (size!41726 (exprs!8094 ct1!232)) (size!41726 (exprs!8094 ct2!328)))))))

(assert (= (and d!2255294 c!1348383) b!7253665))

(assert (= (and d!2255294 (not c!1348383)) b!7253666))

(assert (= (and d!2255294 res!2941715) b!7253667))

(assert (= (and b!7253667 res!2941716) b!7253668))

(declare-fun m!7933726 () Bool)

(assert (=> d!2255294 m!7933726))

(declare-fun m!7933728 () Bool)

(assert (=> d!2255294 m!7933728))

(assert (=> d!2255294 m!7933586))

(declare-fun m!7933730 () Bool)

(assert (=> b!7253666 m!7933730))

(declare-fun m!7933732 () Bool)

(assert (=> b!7253667 m!7933732))

(declare-fun m!7933734 () Bool)

(assert (=> b!7253667 m!7933734))

(assert (=> b!7253667 m!7933594))

(assert (=> b!7253489 d!2255294))

(assert (=> b!7253489 d!2255238))

(declare-fun bs!1906928 () Bool)

(declare-fun d!2255296 () Bool)

(assert (= bs!1906928 (and d!2255296 b!7253478)))

(declare-fun lambda!444688 () Int)

(assert (=> bs!1906928 (= lambda!444688 lambda!444643)))

(assert (=> d!2255296 true))

(assert (=> d!2255296 (= (derivationStepZipper!3432 lt!2585946 (h!76867 s1!1971)) (flatMap!2819 lt!2585946 lambda!444688))))

(declare-fun bs!1906929 () Bool)

(assert (= bs!1906929 d!2255296))

(declare-fun m!7933736 () Bool)

(assert (=> bs!1906929 m!7933736))

(assert (=> b!7253490 d!2255296))

(declare-fun e!4349396 () Bool)

(declare-fun d!2255298 () Bool)

(assert (=> d!2255298 (= (matchZipper!3564 (set.union lt!2585957 lt!2585956) (t!384603 s1!1971)) e!4349396)))

(declare-fun res!2941719 () Bool)

(assert (=> d!2255298 (=> res!2941719 e!4349396)))

(assert (=> d!2255298 (= res!2941719 (matchZipper!3564 lt!2585957 (t!384603 s1!1971)))))

(declare-fun lt!2586087 () Unit!163897)

(declare-fun choose!56059 ((Set Context!15188) (Set Context!15188) List!70543) Unit!163897)

(assert (=> d!2255298 (= lt!2586087 (choose!56059 lt!2585957 lt!2585956 (t!384603 s1!1971)))))

(assert (=> d!2255298 (= (lemmaZipperConcatMatchesSameAsBothZippers!1709 lt!2585957 lt!2585956 (t!384603 s1!1971)) lt!2586087)))

(declare-fun b!7253673 () Bool)

(assert (=> b!7253673 (= e!4349396 (matchZipper!3564 lt!2585956 (t!384603 s1!1971)))))

(assert (= (and d!2255298 (not res!2941719)) b!7253673))

(declare-fun m!7933738 () Bool)

(assert (=> d!2255298 m!7933738))

(assert (=> d!2255298 m!7933412))

(declare-fun m!7933740 () Bool)

(assert (=> d!2255298 m!7933740))

(assert (=> b!7253673 m!7933386))

(assert (=> b!7253479 d!2255298))

(declare-fun d!2255300 () Bool)

(declare-fun c!1348386 () Bool)

(assert (=> d!2255300 (= c!1348386 (isEmpty!40554 (t!384603 s1!1971)))))

(declare-fun e!4349397 () Bool)

(assert (=> d!2255300 (= (matchZipper!3564 lt!2585950 (t!384603 s1!1971)) e!4349397)))

(declare-fun b!7253674 () Bool)

(assert (=> b!7253674 (= e!4349397 (nullableZipper!2918 lt!2585950))))

(declare-fun b!7253675 () Bool)

(assert (=> b!7253675 (= e!4349397 (matchZipper!3564 (derivationStepZipper!3432 lt!2585950 (head!14912 (t!384603 s1!1971))) (tail!14336 (t!384603 s1!1971))))))

(assert (= (and d!2255300 c!1348386) b!7253674))

(assert (= (and d!2255300 (not c!1348386)) b!7253675))

(declare-fun m!7933742 () Bool)

(assert (=> d!2255300 m!7933742))

(declare-fun m!7933744 () Bool)

(assert (=> b!7253674 m!7933744))

(declare-fun m!7933746 () Bool)

(assert (=> b!7253675 m!7933746))

(assert (=> b!7253675 m!7933746))

(declare-fun m!7933748 () Bool)

(assert (=> b!7253675 m!7933748))

(declare-fun m!7933750 () Bool)

(assert (=> b!7253675 m!7933750))

(assert (=> b!7253675 m!7933748))

(assert (=> b!7253675 m!7933750))

(declare-fun m!7933752 () Bool)

(assert (=> b!7253675 m!7933752))

(assert (=> b!7253479 d!2255300))

(declare-fun d!2255302 () Bool)

(declare-fun c!1348387 () Bool)

(assert (=> d!2255302 (= c!1348387 (isEmpty!40554 (t!384603 s1!1971)))))

(declare-fun e!4349398 () Bool)

(assert (=> d!2255302 (= (matchZipper!3564 lt!2585957 (t!384603 s1!1971)) e!4349398)))

(declare-fun b!7253676 () Bool)

(assert (=> b!7253676 (= e!4349398 (nullableZipper!2918 lt!2585957))))

(declare-fun b!7253677 () Bool)

(assert (=> b!7253677 (= e!4349398 (matchZipper!3564 (derivationStepZipper!3432 lt!2585957 (head!14912 (t!384603 s1!1971))) (tail!14336 (t!384603 s1!1971))))))

(assert (= (and d!2255302 c!1348387) b!7253676))

(assert (= (and d!2255302 (not c!1348387)) b!7253677))

(assert (=> d!2255302 m!7933742))

(declare-fun m!7933754 () Bool)

(assert (=> b!7253676 m!7933754))

(assert (=> b!7253677 m!7933746))

(assert (=> b!7253677 m!7933746))

(declare-fun m!7933756 () Bool)

(assert (=> b!7253677 m!7933756))

(assert (=> b!7253677 m!7933750))

(assert (=> b!7253677 m!7933756))

(assert (=> b!7253677 m!7933750))

(declare-fun m!7933758 () Bool)

(assert (=> b!7253677 m!7933758))

(assert (=> b!7253479 d!2255302))

(declare-fun bs!1906930 () Bool)

(declare-fun d!2255304 () Bool)

(assert (= bs!1906930 (and d!2255304 b!7253489)))

(declare-fun lambda!444689 () Int)

(assert (=> bs!1906930 (= lambda!444689 lambda!444641)))

(declare-fun bs!1906931 () Bool)

(assert (= bs!1906931 (and d!2255304 d!2255244)))

(assert (=> bs!1906931 (= lambda!444689 lambda!444675)))

(declare-fun bs!1906932 () Bool)

(assert (= bs!1906932 (and d!2255304 d!2255258)))

(assert (=> bs!1906932 (= lambda!444689 lambda!444678)))

(declare-fun bs!1906933 () Bool)

(assert (= bs!1906933 (and d!2255304 d!2255260)))

(assert (=> bs!1906933 (= lambda!444689 lambda!444679)))

(assert (=> d!2255304 (= (inv!89646 lt!2585960) (forall!17503 (exprs!8094 lt!2585960) lambda!444689))))

(declare-fun bs!1906934 () Bool)

(assert (= bs!1906934 d!2255304))

(declare-fun m!7933760 () Bool)

(assert (=> bs!1906934 m!7933760))

(assert (=> b!7253479 d!2255304))

(assert (=> b!7253479 d!2255238))

(declare-fun d!2255306 () Bool)

(declare-fun c!1348388 () Bool)

(assert (=> d!2255306 (= c!1348388 (isEmpty!40554 (t!384603 s1!1971)))))

(declare-fun e!4349399 () Bool)

(assert (=> d!2255306 (= (matchZipper!3564 lt!2585956 (t!384603 s1!1971)) e!4349399)))

(declare-fun b!7253678 () Bool)

(assert (=> b!7253678 (= e!4349399 (nullableZipper!2918 lt!2585956))))

(declare-fun b!7253679 () Bool)

(assert (=> b!7253679 (= e!4349399 (matchZipper!3564 (derivationStepZipper!3432 lt!2585956 (head!14912 (t!384603 s1!1971))) (tail!14336 (t!384603 s1!1971))))))

(assert (= (and d!2255306 c!1348388) b!7253678))

(assert (= (and d!2255306 (not c!1348388)) b!7253679))

(assert (=> d!2255306 m!7933742))

(declare-fun m!7933762 () Bool)

(assert (=> b!7253678 m!7933762))

(assert (=> b!7253679 m!7933746))

(assert (=> b!7253679 m!7933746))

(declare-fun m!7933764 () Bool)

(assert (=> b!7253679 m!7933764))

(assert (=> b!7253679 m!7933750))

(assert (=> b!7253679 m!7933764))

(assert (=> b!7253679 m!7933750))

(declare-fun m!7933766 () Bool)

(assert (=> b!7253679 m!7933766))

(assert (=> b!7253481 d!2255306))

(declare-fun d!2255308 () Bool)

(declare-fun c!1348389 () Bool)

(assert (=> d!2255308 (= c!1348389 (isEmpty!40554 (t!384603 s1!1971)))))

(declare-fun e!4349400 () Bool)

(assert (=> d!2255308 (= (matchZipper!3564 lt!2585951 (t!384603 s1!1971)) e!4349400)))

(declare-fun b!7253680 () Bool)

(assert (=> b!7253680 (= e!4349400 (nullableZipper!2918 lt!2585951))))

(declare-fun b!7253681 () Bool)

(assert (=> b!7253681 (= e!4349400 (matchZipper!3564 (derivationStepZipper!3432 lt!2585951 (head!14912 (t!384603 s1!1971))) (tail!14336 (t!384603 s1!1971))))))

(assert (= (and d!2255308 c!1348389) b!7253680))

(assert (= (and d!2255308 (not c!1348389)) b!7253681))

(assert (=> d!2255308 m!7933742))

(declare-fun m!7933768 () Bool)

(assert (=> b!7253680 m!7933768))

(assert (=> b!7253681 m!7933746))

(assert (=> b!7253681 m!7933746))

(declare-fun m!7933770 () Bool)

(assert (=> b!7253681 m!7933770))

(assert (=> b!7253681 m!7933750))

(assert (=> b!7253681 m!7933770))

(assert (=> b!7253681 m!7933750))

(declare-fun m!7933772 () Bool)

(assert (=> b!7253681 m!7933772))

(assert (=> b!7253480 d!2255308))

(declare-fun bs!1906935 () Bool)

(declare-fun d!2255310 () Bool)

(assert (= bs!1906935 (and d!2255310 b!7253478)))

(declare-fun lambda!444690 () Int)

(assert (=> bs!1906935 (= lambda!444690 lambda!444643)))

(declare-fun bs!1906936 () Bool)

(assert (= bs!1906936 (and d!2255310 d!2255296)))

(assert (=> bs!1906936 (= lambda!444690 lambda!444688)))

(assert (=> d!2255310 true))

(assert (=> d!2255310 (= (derivationStepZipper!3432 lt!2585963 (h!76867 s1!1971)) (flatMap!2819 lt!2585963 lambda!444690))))

(declare-fun bs!1906937 () Bool)

(assert (= bs!1906937 d!2255310))

(declare-fun m!7933774 () Bool)

(assert (=> bs!1906937 m!7933774))

(assert (=> b!7253480 d!2255310))

(declare-fun b!7253686 () Bool)

(declare-fun e!4349403 () Bool)

(declare-fun tp!2037855 () Bool)

(declare-fun tp!2037856 () Bool)

(assert (=> b!7253686 (= e!4349403 (and tp!2037855 tp!2037856))))

(assert (=> b!7253492 (= tp!2037837 e!4349403)))

(assert (= (and b!7253492 (is-Cons!70418 (exprs!8094 ct1!232))) b!7253686))

(declare-fun b!7253687 () Bool)

(declare-fun e!4349404 () Bool)

(declare-fun tp!2037857 () Bool)

(declare-fun tp!2037858 () Bool)

(assert (=> b!7253687 (= e!4349404 (and tp!2037857 tp!2037858))))

(assert (=> b!7253488 (= tp!2037838 e!4349404)))

(assert (= (and b!7253488 (is-Cons!70418 (exprs!8094 ct2!328))) b!7253687))

(declare-fun b!7253692 () Bool)

(declare-fun e!4349407 () Bool)

(declare-fun tp!2037861 () Bool)

(assert (=> b!7253692 (= e!4349407 (and tp_is_empty!46773 tp!2037861))))

(assert (=> b!7253485 (= tp!2037836 e!4349407)))

(assert (= (and b!7253485 (is-Cons!70419 (t!384603 s1!1971))) b!7253692))

(declare-fun b!7253693 () Bool)

(declare-fun e!4349408 () Bool)

(declare-fun tp!2037862 () Bool)

(assert (=> b!7253693 (= e!4349408 (and tp_is_empty!46773 tp!2037862))))

(assert (=> b!7253491 (= tp!2037835 e!4349408)))

(assert (= (and b!7253491 (is-Cons!70419 (t!384603 s2!1849))) b!7253693))

(declare-fun b_lambda!278753 () Bool)

(assert (= b_lambda!278751 (or b!7253478 b_lambda!278753)))

(declare-fun bs!1906938 () Bool)

(declare-fun d!2255312 () Bool)

(assert (= bs!1906938 (and d!2255312 b!7253478)))

(assert (=> bs!1906938 (= (dynLambda!28763 lambda!444643 ct1!232) (derivationStepZipperUp!2478 ct1!232 (h!76867 s1!1971)))))

(assert (=> bs!1906938 m!7933392))

(assert (=> d!2255292 d!2255312))

(declare-fun b_lambda!278755 () Bool)

(assert (= b_lambda!278747 (or b!7253487 b_lambda!278755)))

(declare-fun bs!1906939 () Bool)

(declare-fun d!2255314 () Bool)

(assert (= bs!1906939 (and d!2255314 b!7253487)))

(assert (=> bs!1906939 (= (dynLambda!28761 lambda!444642 lt!2586069) (matchZipper!3564 (set.insert lt!2586069 (as set.empty (Set Context!15188))) (t!384603 s1!1971)))))

(declare-fun m!7933776 () Bool)

(assert (=> bs!1906939 m!7933776))

(assert (=> bs!1906939 m!7933776))

(declare-fun m!7933778 () Bool)

(assert (=> bs!1906939 m!7933778))

(assert (=> d!2255250 d!2255314))

(declare-fun b_lambda!278757 () Bool)

(assert (= b_lambda!278749 (or b!7253478 b_lambda!278757)))

(declare-fun bs!1906940 () Bool)

(declare-fun d!2255316 () Bool)

(assert (= bs!1906940 (and d!2255316 b!7253478)))

(assert (=> bs!1906940 (= (dynLambda!28763 lambda!444643 lt!2585960) (derivationStepZipperUp!2478 lt!2585960 (h!76867 s1!1971)))))

(assert (=> bs!1906940 m!7933420))

(assert (=> d!2255284 d!2255316))

(push 1)

(assert (not b!7253681))

(assert (not d!2255260))

(assert (not d!2255282))

(assert (not d!2255272))

(assert (not b!7253692))

(assert (not d!2255256))

(assert (not d!2255284))

(assert (not d!2255300))

(assert (not b!7253602))

(assert (not b!7253673))

(assert (not bm!660853))

(assert (not b!7253607))

(assert (not b!7253591))

(assert (not b_lambda!278755))

(assert (not b!7253674))

(assert (not d!2255278))

(assert (not b_lambda!278757))

(assert (not b!7253645))

(assert (not d!2255274))

(assert (not d!2255296))

(assert (not bs!1906939))

(assert (not b!7253676))

(assert (not bm!660827))

(assert (not b!7253675))

(assert (not b!7253596))

(assert (not bm!660828))

(assert (not d!2255246))

(assert (not b!7253595))

(assert (not bs!1906938))

(assert (not d!2255302))

(assert (not b!7253608))

(assert (not b!7253653))

(assert (not b!7253603))

(assert (not b!7253604))

(assert (not b!7253687))

(assert (not b!7253553))

(assert (not d!2255244))

(assert (not d!2255276))

(assert (not d!2255308))

(assert tp_is_empty!46773)

(assert (not d!2255290))

(assert (not bs!1906940))

(assert (not d!2255234))

(assert (not d!2255304))

(assert (not b!7253679))

(assert (not bm!660826))

(assert (not b!7253660))

(assert (not b!7253677))

(assert (not b!7253666))

(assert (not b!7253579))

(assert (not b!7253678))

(assert (not d!2255298))

(assert (not d!2255286))

(assert (not bm!660841))

(assert (not bm!660847))

(assert (not b!7253566))

(assert (not d!2255252))

(assert (not d!2255294))

(assert (not b!7253580))

(assert (not d!2255258))

(assert (not bm!660848))

(assert (not b!7253567))

(assert (not d!2255310))

(assert (not d!2255240))

(assert (not d!2255306))

(assert (not b!7253693))

(assert (not d!2255250))

(assert (not b!7253686))

(assert (not b!7253605))

(assert (not b!7253646))

(assert (not b!7253680))

(assert (not b!7253667))

(assert (not d!2255238))

(assert (not b_lambda!278753))

(assert (not bm!660849))

(assert (not b!7253592))

(assert (not bm!660842))

(assert (not d!2255254))

(assert (not d!2255292))

(assert (not bm!660846))

(assert (not b!7253554))

(assert (not b!7253639))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

