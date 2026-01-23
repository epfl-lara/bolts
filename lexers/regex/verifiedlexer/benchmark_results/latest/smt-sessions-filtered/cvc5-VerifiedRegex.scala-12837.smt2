; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709088 () Bool)

(assert start!709088)

(declare-fun b!7268400 () Bool)

(assert (=> b!7268400 true))

(declare-fun b!7268392 () Bool)

(declare-fun e!4358646 () Bool)

(declare-fun e!4358644 () Bool)

(assert (=> b!7268392 (= e!4358646 e!4358644)))

(declare-fun res!2946621 () Bool)

(assert (=> b!7268392 (=> res!2946621 e!4358644)))

(declare-datatypes ((C!37838 0))(
  ( (C!37839 (val!28867 Int)) )
))
(declare-datatypes ((Regex!18782 0))(
  ( (ElementMatch!18782 (c!1352712 C!37838)) (Concat!27627 (regOne!38076 Regex!18782) (regTwo!38076 Regex!18782)) (EmptyExpr!18782) (Star!18782 (reg!19111 Regex!18782)) (EmptyLang!18782) (Union!18782 (regOne!38077 Regex!18782) (regTwo!38077 Regex!18782)) )
))
(declare-datatypes ((List!70879 0))(
  ( (Nil!70755) (Cons!70755 (h!77203 Regex!18782) (t!384949 List!70879)) )
))
(declare-fun lt!2593403 () List!70879)

(declare-fun lambda!447944 () Int)

(declare-fun forall!17613 (List!70879 Int) Bool)

(assert (=> b!7268392 (= res!2946621 (not (forall!17613 lt!2593403 lambda!447944)))))

(declare-datatypes ((Unit!164182 0))(
  ( (Unit!164183) )
))
(declare-fun lt!2593405 () Unit!164182)

(declare-datatypes ((Context!15444 0))(
  ( (Context!15445 (exprs!8222 List!70879)) )
))
(declare-fun ct2!346 () Context!15444)

(declare-fun lemmaConcatPreservesForall!1539 (List!70879 List!70879 Int) Unit!164182)

(assert (=> b!7268392 (= lt!2593405 (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593409 () Unit!164182)

(assert (=> b!7268392 (= lt!2593409 (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593411 () Context!15444)

(declare-datatypes ((List!70880 0))(
  ( (Nil!70756) (Cons!70756 (h!77204 C!37838) (t!384950 List!70880)) )
))
(declare-fun s!7854 () List!70880)

(declare-fun matchZipper!3686 ((Set Context!15444) List!70880) Bool)

(assert (=> b!7268392 (matchZipper!3686 (set.insert lt!2593411 (as set.empty (Set Context!15444))) s!7854)))

(declare-fun lt!2593414 () Unit!164182)

(assert (=> b!7268392 (= lt!2593414 (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593412 () Context!15444)

(declare-fun lt!2593404 () Unit!164182)

(declare-fun lemmaPrependingNullableCtxStillMatches!19 (Context!15444 Context!15444 List!70880) Unit!164182)

(assert (=> b!7268392 (= lt!2593404 (lemmaPrependingNullableCtxStillMatches!19 lt!2593412 ct2!346 s!7854))))

(declare-fun b!7268393 () Bool)

(declare-fun res!2946622 () Bool)

(declare-fun e!4358648 () Bool)

(assert (=> b!7268393 (=> (not res!2946622) (not e!4358648))))

(assert (=> b!7268393 (= res!2946622 (is-Cons!70756 s!7854))))

(declare-fun b!7268394 () Bool)

(declare-fun res!2946620 () Bool)

(declare-fun e!4358647 () Bool)

(assert (=> b!7268394 (=> res!2946620 e!4358647)))

(declare-fun ct1!250 () Context!15444)

(declare-fun isEmpty!40683 (List!70879) Bool)

(assert (=> b!7268394 (= res!2946620 (isEmpty!40683 (exprs!8222 ct1!250)))))

(declare-fun b!7268395 () Bool)

(declare-fun e!4358649 () Bool)

(declare-fun tp_is_empty!47029 () Bool)

(declare-fun tp!2040785 () Bool)

(assert (=> b!7268395 (= e!4358649 (and tp_is_empty!47029 tp!2040785))))

(declare-fun b!7268396 () Bool)

(declare-fun e!4358642 () Bool)

(assert (=> b!7268396 (= e!4358642 e!4358646)))

(declare-fun res!2946619 () Bool)

(assert (=> b!7268396 (=> res!2946619 e!4358646)))

(declare-fun lt!2593401 () (Set Context!15444))

(declare-fun derivationStepZipperDown!2716 (Regex!18782 Context!15444 C!37838) (Set Context!15444))

(declare-fun derivationStepZipperUp!2552 (Context!15444 C!37838) (Set Context!15444))

(assert (=> b!7268396 (= res!2946619 (not (= lt!2593401 (set.union (derivationStepZipperDown!2716 (h!77203 (exprs!8222 ct1!250)) lt!2593411 (h!77204 s!7854)) (derivationStepZipperUp!2552 lt!2593411 (h!77204 s!7854))))))))

(declare-fun ++!16682 (List!70879 List!70879) List!70879)

(assert (=> b!7268396 (= lt!2593411 (Context!15445 (++!16682 lt!2593403 (exprs!8222 ct2!346))))))

(declare-fun lt!2593406 () Unit!164182)

(assert (=> b!7268396 (= lt!2593406 (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593413 () Unit!164182)

(assert (=> b!7268396 (= lt!2593413 (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(declare-fun res!2946623 () Bool)

(assert (=> start!709088 (=> (not res!2946623) (not e!4358648))))

(assert (=> start!709088 (= res!2946623 (matchZipper!3686 (set.insert ct2!346 (as set.empty (Set Context!15444))) s!7854))))

(assert (=> start!709088 e!4358648))

(declare-fun e!4358645 () Bool)

(declare-fun inv!89966 (Context!15444) Bool)

(assert (=> start!709088 (and (inv!89966 ct2!346) e!4358645)))

(assert (=> start!709088 e!4358649))

(declare-fun e!4358643 () Bool)

(assert (=> start!709088 (and (inv!89966 ct1!250) e!4358643)))

(declare-fun b!7268397 () Bool)

(declare-fun res!2946618 () Bool)

(assert (=> b!7268397 (=> res!2946618 e!4358642)))

(declare-fun lt!2593407 () (Set Context!15444))

(assert (=> b!7268397 (= res!2946618 (not (= lt!2593407 (set.union (derivationStepZipperDown!2716 (h!77203 (exprs!8222 ct1!250)) lt!2593412 (h!77204 s!7854)) (derivationStepZipperUp!2552 lt!2593412 (h!77204 s!7854))))))))

(declare-fun b!7268398 () Bool)

(declare-fun res!2946615 () Bool)

(assert (=> b!7268398 (=> (not res!2946615) (not e!4358648))))

(declare-fun nullableContext!272 (Context!15444) Bool)

(assert (=> b!7268398 (= res!2946615 (nullableContext!272 ct1!250))))

(declare-fun b!7268399 () Bool)

(declare-fun res!2946616 () Bool)

(assert (=> b!7268399 (=> res!2946616 e!4358647)))

(assert (=> b!7268399 (= res!2946616 (not (is-Cons!70755 (exprs!8222 ct1!250))))))

(assert (=> b!7268400 (= e!4358648 (not e!4358647))))

(declare-fun res!2946614 () Bool)

(assert (=> b!7268400 (=> res!2946614 e!4358647)))

(declare-fun lt!2593415 () (Set Context!15444))

(declare-fun derivationStepZipper!3522 ((Set Context!15444) C!37838) (Set Context!15444))

(assert (=> b!7268400 (= res!2946614 (not (= lt!2593401 (derivationStepZipper!3522 lt!2593415 (h!77204 s!7854)))))))

(declare-fun lt!2593400 () Unit!164182)

(assert (=> b!7268400 (= lt!2593400 (lemmaConcatPreservesForall!1539 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lambda!447945 () Int)

(declare-fun lt!2593410 () Context!15444)

(declare-fun flatMap!2895 ((Set Context!15444) Int) (Set Context!15444))

(assert (=> b!7268400 (= (flatMap!2895 lt!2593415 lambda!447945) (derivationStepZipperUp!2552 lt!2593410 (h!77204 s!7854)))))

(declare-fun lt!2593419 () Unit!164182)

(declare-fun lemmaFlatMapOnSingletonSet!2295 ((Set Context!15444) Context!15444 Int) Unit!164182)

(assert (=> b!7268400 (= lt!2593419 (lemmaFlatMapOnSingletonSet!2295 lt!2593415 lt!2593410 lambda!447945))))

(assert (=> b!7268400 (= lt!2593415 (set.insert lt!2593410 (as set.empty (Set Context!15444))))))

(declare-fun lt!2593408 () Unit!164182)

(assert (=> b!7268400 (= lt!2593408 (lemmaConcatPreservesForall!1539 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593416 () Unit!164182)

(assert (=> b!7268400 (= lt!2593416 (lemmaConcatPreservesForall!1539 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944))))

(declare-fun lt!2593417 () (Set Context!15444))

(assert (=> b!7268400 (= (flatMap!2895 lt!2593417 lambda!447945) (derivationStepZipperUp!2552 ct1!250 (h!77204 s!7854)))))

(declare-fun lt!2593418 () Unit!164182)

(assert (=> b!7268400 (= lt!2593418 (lemmaFlatMapOnSingletonSet!2295 lt!2593417 ct1!250 lambda!447945))))

(assert (=> b!7268400 (= lt!2593417 (set.insert ct1!250 (as set.empty (Set Context!15444))))))

(assert (=> b!7268400 (= lt!2593401 (derivationStepZipperUp!2552 lt!2593410 (h!77204 s!7854)))))

(assert (=> b!7268400 (= lt!2593410 (Context!15445 (++!16682 (exprs!8222 ct1!250) (exprs!8222 ct2!346))))))

(declare-fun lt!2593402 () Unit!164182)

(assert (=> b!7268400 (= lt!2593402 (lemmaConcatPreservesForall!1539 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944))))

(declare-fun b!7268401 () Bool)

(declare-fun tp!2040786 () Bool)

(assert (=> b!7268401 (= e!4358643 tp!2040786)))

(declare-fun b!7268402 () Bool)

(declare-fun tp!2040787 () Bool)

(assert (=> b!7268402 (= e!4358645 tp!2040787)))

(declare-fun b!7268403 () Bool)

(assert (=> b!7268403 (= e!4358647 e!4358642)))

(declare-fun res!2946617 () Bool)

(assert (=> b!7268403 (=> res!2946617 e!4358642)))

(declare-fun nullable!7982 (Regex!18782) Bool)

(assert (=> b!7268403 (= res!2946617 (not (nullable!7982 (h!77203 (exprs!8222 ct1!250)))))))

(assert (=> b!7268403 (= lt!2593407 (derivationStepZipperUp!2552 ct1!250 (h!77204 s!7854)))))

(assert (=> b!7268403 (= lt!2593412 (Context!15445 lt!2593403))))

(declare-fun tail!14470 (List!70879) List!70879)

(assert (=> b!7268403 (= lt!2593403 (tail!14470 (exprs!8222 ct1!250)))))

(declare-fun b!7268404 () Bool)

(assert (=> b!7268404 (= e!4358644 (forall!17613 (exprs!8222 ct2!346) lambda!447944))))

(assert (= (and start!709088 res!2946623) b!7268398))

(assert (= (and b!7268398 res!2946615) b!7268393))

(assert (= (and b!7268393 res!2946622) b!7268400))

(assert (= (and b!7268400 (not res!2946614)) b!7268399))

(assert (= (and b!7268399 (not res!2946616)) b!7268394))

(assert (= (and b!7268394 (not res!2946620)) b!7268403))

(assert (= (and b!7268403 (not res!2946617)) b!7268397))

(assert (= (and b!7268397 (not res!2946618)) b!7268396))

(assert (= (and b!7268396 (not res!2946619)) b!7268392))

(assert (= (and b!7268392 (not res!2946621)) b!7268404))

(assert (= start!709088 b!7268402))

(assert (= (and start!709088 (is-Cons!70756 s!7854)) b!7268395))

(assert (= start!709088 b!7268401))

(declare-fun m!7953402 () Bool)

(assert (=> b!7268397 m!7953402))

(declare-fun m!7953404 () Bool)

(assert (=> b!7268397 m!7953404))

(declare-fun m!7953406 () Bool)

(assert (=> b!7268404 m!7953406))

(declare-fun m!7953408 () Bool)

(assert (=> b!7268394 m!7953408))

(declare-fun m!7953410 () Bool)

(assert (=> b!7268398 m!7953410))

(declare-fun m!7953412 () Bool)

(assert (=> b!7268403 m!7953412))

(declare-fun m!7953414 () Bool)

(assert (=> b!7268403 m!7953414))

(declare-fun m!7953416 () Bool)

(assert (=> b!7268403 m!7953416))

(declare-fun m!7953418 () Bool)

(assert (=> b!7268396 m!7953418))

(declare-fun m!7953420 () Bool)

(assert (=> b!7268396 m!7953420))

(declare-fun m!7953422 () Bool)

(assert (=> b!7268396 m!7953422))

(declare-fun m!7953424 () Bool)

(assert (=> b!7268396 m!7953424))

(assert (=> b!7268396 m!7953422))

(declare-fun m!7953426 () Bool)

(assert (=> start!709088 m!7953426))

(assert (=> start!709088 m!7953426))

(declare-fun m!7953428 () Bool)

(assert (=> start!709088 m!7953428))

(declare-fun m!7953430 () Bool)

(assert (=> start!709088 m!7953430))

(declare-fun m!7953432 () Bool)

(assert (=> start!709088 m!7953432))

(declare-fun m!7953434 () Bool)

(assert (=> b!7268400 m!7953434))

(declare-fun m!7953436 () Bool)

(assert (=> b!7268400 m!7953436))

(declare-fun m!7953438 () Bool)

(assert (=> b!7268400 m!7953438))

(assert (=> b!7268400 m!7953438))

(assert (=> b!7268400 m!7953438))

(declare-fun m!7953440 () Bool)

(assert (=> b!7268400 m!7953440))

(declare-fun m!7953442 () Bool)

(assert (=> b!7268400 m!7953442))

(declare-fun m!7953444 () Bool)

(assert (=> b!7268400 m!7953444))

(declare-fun m!7953446 () Bool)

(assert (=> b!7268400 m!7953446))

(declare-fun m!7953448 () Bool)

(assert (=> b!7268400 m!7953448))

(assert (=> b!7268400 m!7953438))

(declare-fun m!7953450 () Bool)

(assert (=> b!7268400 m!7953450))

(declare-fun m!7953452 () Bool)

(assert (=> b!7268400 m!7953452))

(assert (=> b!7268400 m!7953414))

(assert (=> b!7268392 m!7953422))

(declare-fun m!7953454 () Bool)

(assert (=> b!7268392 m!7953454))

(declare-fun m!7953456 () Bool)

(assert (=> b!7268392 m!7953456))

(declare-fun m!7953458 () Bool)

(assert (=> b!7268392 m!7953458))

(assert (=> b!7268392 m!7953422))

(assert (=> b!7268392 m!7953422))

(assert (=> b!7268392 m!7953456))

(declare-fun m!7953460 () Bool)

(assert (=> b!7268392 m!7953460))

(push 1)

(assert (not b!7268398))

(assert (not b!7268392))

(assert tp_is_empty!47029)

(assert (not b!7268404))

(assert (not b!7268395))

(assert (not b!7268403))

(assert (not b!7268402))

(assert (not b!7268401))

(assert (not b!7268396))

(assert (not b!7268397))

(assert (not start!709088))

(assert (not b!7268400))

(assert (not b!7268394))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2261626 () Bool)

(assert (=> d!2261626 (forall!17613 (++!16682 lt!2593403 (exprs!8222 ct2!346)) lambda!447944)))

(declare-fun lt!2593482 () Unit!164182)

(declare-fun choose!56355 (List!70879 List!70879 Int) Unit!164182)

(assert (=> d!2261626 (= lt!2593482 (choose!56355 lt!2593403 (exprs!8222 ct2!346) lambda!447944))))

(assert (=> d!2261626 (forall!17613 lt!2593403 lambda!447944)))

(assert (=> d!2261626 (= (lemmaConcatPreservesForall!1539 lt!2593403 (exprs!8222 ct2!346) lambda!447944) lt!2593482)))

(declare-fun bs!1910629 () Bool)

(assert (= bs!1910629 d!2261626))

(assert (=> bs!1910629 m!7953424))

(assert (=> bs!1910629 m!7953424))

(declare-fun m!7953522 () Bool)

(assert (=> bs!1910629 m!7953522))

(declare-fun m!7953524 () Bool)

(assert (=> bs!1910629 m!7953524))

(assert (=> bs!1910629 m!7953458))

(assert (=> b!7268392 d!2261626))

(declare-fun d!2261628 () Bool)

(declare-fun c!1352720 () Bool)

(declare-fun isEmpty!40685 (List!70880) Bool)

(assert (=> d!2261628 (= c!1352720 (isEmpty!40685 s!7854))))

(declare-fun e!4358676 () Bool)

(assert (=> d!2261628 (= (matchZipper!3686 (set.insert lt!2593411 (as set.empty (Set Context!15444))) s!7854) e!4358676)))

(declare-fun b!7268452 () Bool)

(declare-fun nullableZipper!2991 ((Set Context!15444)) Bool)

(assert (=> b!7268452 (= e!4358676 (nullableZipper!2991 (set.insert lt!2593411 (as set.empty (Set Context!15444)))))))

(declare-fun b!7268453 () Bool)

(declare-fun head!14989 (List!70880) C!37838)

(declare-fun tail!14472 (List!70880) List!70880)

(assert (=> b!7268453 (= e!4358676 (matchZipper!3686 (derivationStepZipper!3522 (set.insert lt!2593411 (as set.empty (Set Context!15444))) (head!14989 s!7854)) (tail!14472 s!7854)))))

(assert (= (and d!2261628 c!1352720) b!7268452))

(assert (= (and d!2261628 (not c!1352720)) b!7268453))

(declare-fun m!7953526 () Bool)

(assert (=> d!2261628 m!7953526))

(assert (=> b!7268452 m!7953456))

(declare-fun m!7953528 () Bool)

(assert (=> b!7268452 m!7953528))

(declare-fun m!7953530 () Bool)

(assert (=> b!7268453 m!7953530))

(assert (=> b!7268453 m!7953456))

(assert (=> b!7268453 m!7953530))

(declare-fun m!7953532 () Bool)

(assert (=> b!7268453 m!7953532))

(declare-fun m!7953534 () Bool)

(assert (=> b!7268453 m!7953534))

(assert (=> b!7268453 m!7953532))

(assert (=> b!7268453 m!7953534))

(declare-fun m!7953536 () Bool)

(assert (=> b!7268453 m!7953536))

(assert (=> b!7268392 d!2261628))

(declare-fun bs!1910630 () Bool)

(declare-fun d!2261632 () Bool)

(assert (= bs!1910630 (and d!2261632 b!7268400)))

(declare-fun lambda!447974 () Int)

(assert (=> bs!1910630 (= lambda!447974 lambda!447944)))

(assert (=> d!2261632 (matchZipper!3686 (set.insert (Context!15445 (++!16682 (exprs!8222 lt!2593412) (exprs!8222 ct2!346))) (as set.empty (Set Context!15444))) s!7854)))

(declare-fun lt!2593490 () Unit!164182)

(assert (=> d!2261632 (= lt!2593490 (lemmaConcatPreservesForall!1539 (exprs!8222 lt!2593412) (exprs!8222 ct2!346) lambda!447974))))

(declare-fun lt!2593489 () Unit!164182)

(declare-fun choose!56356 (Context!15444 Context!15444 List!70880) Unit!164182)

(assert (=> d!2261632 (= lt!2593489 (choose!56356 lt!2593412 ct2!346 s!7854))))

(assert (=> d!2261632 (matchZipper!3686 (set.insert ct2!346 (as set.empty (Set Context!15444))) s!7854)))

(assert (=> d!2261632 (= (lemmaPrependingNullableCtxStillMatches!19 lt!2593412 ct2!346 s!7854) lt!2593489)))

(declare-fun bs!1910631 () Bool)

(assert (= bs!1910631 d!2261632))

(assert (=> bs!1910631 m!7953426))

(assert (=> bs!1910631 m!7953428))

(declare-fun m!7953538 () Bool)

(assert (=> bs!1910631 m!7953538))

(assert (=> bs!1910631 m!7953426))

(declare-fun m!7953540 () Bool)

(assert (=> bs!1910631 m!7953540))

(declare-fun m!7953542 () Bool)

(assert (=> bs!1910631 m!7953542))

(assert (=> bs!1910631 m!7953540))

(declare-fun m!7953544 () Bool)

(assert (=> bs!1910631 m!7953544))

(declare-fun m!7953546 () Bool)

(assert (=> bs!1910631 m!7953546))

(assert (=> b!7268392 d!2261632))

(declare-fun d!2261634 () Bool)

(declare-fun res!2946662 () Bool)

(declare-fun e!4358685 () Bool)

(assert (=> d!2261634 (=> res!2946662 e!4358685)))

(assert (=> d!2261634 (= res!2946662 (is-Nil!70755 lt!2593403))))

(assert (=> d!2261634 (= (forall!17613 lt!2593403 lambda!447944) e!4358685)))

(declare-fun b!7268466 () Bool)

(declare-fun e!4358686 () Bool)

(assert (=> b!7268466 (= e!4358685 e!4358686)))

(declare-fun res!2946663 () Bool)

(assert (=> b!7268466 (=> (not res!2946663) (not e!4358686))))

(declare-fun dynLambda!28907 (Int Regex!18782) Bool)

(assert (=> b!7268466 (= res!2946663 (dynLambda!28907 lambda!447944 (h!77203 lt!2593403)))))

(declare-fun b!7268467 () Bool)

(assert (=> b!7268467 (= e!4358686 (forall!17613 (t!384949 lt!2593403) lambda!447944))))

(assert (= (and d!2261634 (not res!2946662)) b!7268466))

(assert (= (and b!7268466 res!2946663) b!7268467))

(declare-fun b_lambda!280013 () Bool)

(assert (=> (not b_lambda!280013) (not b!7268466)))

(declare-fun m!7953548 () Bool)

(assert (=> b!7268466 m!7953548))

(declare-fun m!7953550 () Bool)

(assert (=> b!7268467 m!7953550))

(assert (=> b!7268392 d!2261634))

(declare-fun b!7268494 () Bool)

(declare-fun e!4358702 () (Set Context!15444))

(declare-fun call!662697 () (Set Context!15444))

(assert (=> b!7268494 (= e!4358702 call!662697)))

(declare-fun bm!662689 () Bool)

(declare-fun call!662694 () (Set Context!15444))

(assert (=> bm!662689 (= call!662697 call!662694)))

(declare-fun bm!662690 () Bool)

(declare-fun call!662699 () List!70879)

(declare-fun call!662695 () List!70879)

(assert (=> bm!662690 (= call!662699 call!662695)))

(declare-fun b!7268495 () Bool)

(declare-fun c!1352734 () Bool)

(declare-fun e!4358701 () Bool)

(assert (=> b!7268495 (= c!1352734 e!4358701)))

(declare-fun res!2946668 () Bool)

(assert (=> b!7268495 (=> (not res!2946668) (not e!4358701))))

(assert (=> b!7268495 (= res!2946668 (is-Concat!27627 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun e!4358703 () (Set Context!15444))

(declare-fun e!4358705 () (Set Context!15444))

(assert (=> b!7268495 (= e!4358703 e!4358705)))

(declare-fun b!7268496 () Bool)

(declare-fun c!1352735 () Bool)

(assert (=> b!7268496 (= c!1352735 (is-Star!18782 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun e!4358706 () (Set Context!15444))

(assert (=> b!7268496 (= e!4358706 e!4358702)))

(declare-fun b!7268497 () Bool)

(declare-fun call!662698 () (Set Context!15444))

(assert (=> b!7268497 (= e!4358705 (set.union call!662698 call!662694))))

(declare-fun d!2261636 () Bool)

(declare-fun c!1352738 () Bool)

(assert (=> d!2261636 (= c!1352738 (and (is-ElementMatch!18782 (h!77203 (exprs!8222 ct1!250))) (= (c!1352712 (h!77203 (exprs!8222 ct1!250))) (h!77204 s!7854))))))

(declare-fun e!4358704 () (Set Context!15444))

(assert (=> d!2261636 (= (derivationStepZipperDown!2716 (h!77203 (exprs!8222 ct1!250)) lt!2593412 (h!77204 s!7854)) e!4358704)))

(declare-fun b!7268498 () Bool)

(assert (=> b!7268498 (= e!4358704 e!4358703)))

(declare-fun c!1352737 () Bool)

(assert (=> b!7268498 (= c!1352737 (is-Union!18782 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun bm!662691 () Bool)

(declare-fun call!662696 () (Set Context!15444))

(assert (=> bm!662691 (= call!662694 call!662696)))

(declare-fun b!7268499 () Bool)

(assert (=> b!7268499 (= e!4358704 (set.insert lt!2593412 (as set.empty (Set Context!15444))))))

(declare-fun bm!662692 () Bool)

(declare-fun c!1352736 () Bool)

(assert (=> bm!662692 (= call!662696 (derivationStepZipperDown!2716 (ite c!1352737 (regTwo!38077 (h!77203 (exprs!8222 ct1!250))) (ite c!1352734 (regTwo!38076 (h!77203 (exprs!8222 ct1!250))) (ite c!1352736 (regOne!38076 (h!77203 (exprs!8222 ct1!250))) (reg!19111 (h!77203 (exprs!8222 ct1!250)))))) (ite (or c!1352737 c!1352734) lt!2593412 (Context!15445 call!662699)) (h!77204 s!7854)))))

(declare-fun b!7268500 () Bool)

(assert (=> b!7268500 (= e!4358701 (nullable!7982 (regOne!38076 (h!77203 (exprs!8222 ct1!250)))))))

(declare-fun b!7268501 () Bool)

(assert (=> b!7268501 (= e!4358703 (set.union call!662698 call!662696))))

(declare-fun b!7268502 () Bool)

(assert (=> b!7268502 (= e!4358702 (as set.empty (Set Context!15444)))))

(declare-fun b!7268503 () Bool)

(assert (=> b!7268503 (= e!4358705 e!4358706)))

(assert (=> b!7268503 (= c!1352736 (is-Concat!27627 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun b!7268504 () Bool)

(assert (=> b!7268504 (= e!4358706 call!662697)))

(declare-fun bm!662693 () Bool)

(declare-fun $colon$colon!2958 (List!70879 Regex!18782) List!70879)

(assert (=> bm!662693 (= call!662695 ($colon$colon!2958 (exprs!8222 lt!2593412) (ite (or c!1352734 c!1352736) (regTwo!38076 (h!77203 (exprs!8222 ct1!250))) (h!77203 (exprs!8222 ct1!250)))))))

(declare-fun bm!662694 () Bool)

(assert (=> bm!662694 (= call!662698 (derivationStepZipperDown!2716 (ite c!1352737 (regOne!38077 (h!77203 (exprs!8222 ct1!250))) (regOne!38076 (h!77203 (exprs!8222 ct1!250)))) (ite c!1352737 lt!2593412 (Context!15445 call!662695)) (h!77204 s!7854)))))

(assert (= (and d!2261636 c!1352738) b!7268499))

(assert (= (and d!2261636 (not c!1352738)) b!7268498))

(assert (= (and b!7268498 c!1352737) b!7268501))

(assert (= (and b!7268498 (not c!1352737)) b!7268495))

(assert (= (and b!7268495 res!2946668) b!7268500))

(assert (= (and b!7268495 c!1352734) b!7268497))

(assert (= (and b!7268495 (not c!1352734)) b!7268503))

(assert (= (and b!7268503 c!1352736) b!7268504))

(assert (= (and b!7268503 (not c!1352736)) b!7268496))

(assert (= (and b!7268496 c!1352735) b!7268494))

(assert (= (and b!7268496 (not c!1352735)) b!7268502))

(assert (= (or b!7268504 b!7268494) bm!662690))

(assert (= (or b!7268504 b!7268494) bm!662689))

(assert (= (or b!7268497 bm!662690) bm!662693))

(assert (= (or b!7268497 bm!662689) bm!662691))

(assert (= (or b!7268501 b!7268497) bm!662694))

(assert (= (or b!7268501 bm!662691) bm!662692))

(declare-fun m!7953570 () Bool)

(assert (=> bm!662692 m!7953570))

(declare-fun m!7953572 () Bool)

(assert (=> b!7268500 m!7953572))

(declare-fun m!7953574 () Bool)

(assert (=> b!7268499 m!7953574))

(declare-fun m!7953576 () Bool)

(assert (=> bm!662694 m!7953576))

(declare-fun m!7953578 () Bool)

(assert (=> bm!662693 m!7953578))

(assert (=> b!7268397 d!2261636))

(declare-fun b!7268517 () Bool)

(declare-fun e!4358715 () (Set Context!15444))

(declare-fun call!662702 () (Set Context!15444))

(assert (=> b!7268517 (= e!4358715 call!662702)))

(declare-fun b!7268518 () Bool)

(assert (=> b!7268518 (= e!4358715 (as set.empty (Set Context!15444)))))

(declare-fun d!2261642 () Bool)

(declare-fun c!1352744 () Bool)

(declare-fun e!4358714 () Bool)

(assert (=> d!2261642 (= c!1352744 e!4358714)))

(declare-fun res!2946671 () Bool)

(assert (=> d!2261642 (=> (not res!2946671) (not e!4358714))))

(assert (=> d!2261642 (= res!2946671 (is-Cons!70755 (exprs!8222 lt!2593412)))))

(declare-fun e!4358713 () (Set Context!15444))

(assert (=> d!2261642 (= (derivationStepZipperUp!2552 lt!2593412 (h!77204 s!7854)) e!4358713)))

(declare-fun b!7268519 () Bool)

(assert (=> b!7268519 (= e!4358714 (nullable!7982 (h!77203 (exprs!8222 lt!2593412))))))

(declare-fun b!7268520 () Bool)

(assert (=> b!7268520 (= e!4358713 e!4358715)))

(declare-fun c!1352743 () Bool)

(assert (=> b!7268520 (= c!1352743 (is-Cons!70755 (exprs!8222 lt!2593412)))))

(declare-fun b!7268521 () Bool)

(assert (=> b!7268521 (= e!4358713 (set.union call!662702 (derivationStepZipperUp!2552 (Context!15445 (t!384949 (exprs!8222 lt!2593412))) (h!77204 s!7854))))))

(declare-fun bm!662697 () Bool)

(assert (=> bm!662697 (= call!662702 (derivationStepZipperDown!2716 (h!77203 (exprs!8222 lt!2593412)) (Context!15445 (t!384949 (exprs!8222 lt!2593412))) (h!77204 s!7854)))))

(assert (= (and d!2261642 res!2946671) b!7268519))

(assert (= (and d!2261642 c!1352744) b!7268521))

(assert (= (and d!2261642 (not c!1352744)) b!7268520))

(assert (= (and b!7268520 c!1352743) b!7268517))

(assert (= (and b!7268520 (not c!1352743)) b!7268518))

(assert (= (or b!7268521 b!7268517) bm!662697))

(declare-fun m!7953580 () Bool)

(assert (=> b!7268519 m!7953580))

(declare-fun m!7953582 () Bool)

(assert (=> b!7268521 m!7953582))

(declare-fun m!7953584 () Bool)

(assert (=> bm!662697 m!7953584))

(assert (=> b!7268397 d!2261642))

(declare-fun d!2261644 () Bool)

(declare-fun c!1352751 () Bool)

(assert (=> d!2261644 (= c!1352751 (isEmpty!40685 s!7854))))

(declare-fun e!4358722 () Bool)

(assert (=> d!2261644 (= (matchZipper!3686 (set.insert ct2!346 (as set.empty (Set Context!15444))) s!7854) e!4358722)))

(declare-fun b!7268532 () Bool)

(assert (=> b!7268532 (= e!4358722 (nullableZipper!2991 (set.insert ct2!346 (as set.empty (Set Context!15444)))))))

(declare-fun b!7268533 () Bool)

(assert (=> b!7268533 (= e!4358722 (matchZipper!3686 (derivationStepZipper!3522 (set.insert ct2!346 (as set.empty (Set Context!15444))) (head!14989 s!7854)) (tail!14472 s!7854)))))

(assert (= (and d!2261644 c!1352751) b!7268532))

(assert (= (and d!2261644 (not c!1352751)) b!7268533))

(assert (=> d!2261644 m!7953526))

(assert (=> b!7268532 m!7953426))

(declare-fun m!7953586 () Bool)

(assert (=> b!7268532 m!7953586))

(assert (=> b!7268533 m!7953530))

(assert (=> b!7268533 m!7953426))

(assert (=> b!7268533 m!7953530))

(declare-fun m!7953588 () Bool)

(assert (=> b!7268533 m!7953588))

(assert (=> b!7268533 m!7953534))

(assert (=> b!7268533 m!7953588))

(assert (=> b!7268533 m!7953534))

(declare-fun m!7953590 () Bool)

(assert (=> b!7268533 m!7953590))

(assert (=> start!709088 d!2261644))

(declare-fun bs!1910633 () Bool)

(declare-fun d!2261646 () Bool)

(assert (= bs!1910633 (and d!2261646 b!7268400)))

(declare-fun lambda!447977 () Int)

(assert (=> bs!1910633 (= lambda!447977 lambda!447944)))

(declare-fun bs!1910634 () Bool)

(assert (= bs!1910634 (and d!2261646 d!2261632)))

(assert (=> bs!1910634 (= lambda!447977 lambda!447974)))

(assert (=> d!2261646 (= (inv!89966 ct2!346) (forall!17613 (exprs!8222 ct2!346) lambda!447977))))

(declare-fun bs!1910635 () Bool)

(assert (= bs!1910635 d!2261646))

(declare-fun m!7953592 () Bool)

(assert (=> bs!1910635 m!7953592))

(assert (=> start!709088 d!2261646))

(declare-fun bs!1910636 () Bool)

(declare-fun d!2261648 () Bool)

(assert (= bs!1910636 (and d!2261648 b!7268400)))

(declare-fun lambda!447978 () Int)

(assert (=> bs!1910636 (= lambda!447978 lambda!447944)))

(declare-fun bs!1910637 () Bool)

(assert (= bs!1910637 (and d!2261648 d!2261632)))

(assert (=> bs!1910637 (= lambda!447978 lambda!447974)))

(declare-fun bs!1910638 () Bool)

(assert (= bs!1910638 (and d!2261648 d!2261646)))

(assert (=> bs!1910638 (= lambda!447978 lambda!447977)))

(assert (=> d!2261648 (= (inv!89966 ct1!250) (forall!17613 (exprs!8222 ct1!250) lambda!447978))))

(declare-fun bs!1910639 () Bool)

(assert (= bs!1910639 d!2261648))

(declare-fun m!7953594 () Bool)

(assert (=> bs!1910639 m!7953594))

(assert (=> start!709088 d!2261648))

(declare-fun lt!2593497 () List!70879)

(declare-fun e!4358733 () Bool)

(declare-fun b!7268555 () Bool)

(assert (=> b!7268555 (= e!4358733 (or (not (= (exprs!8222 ct2!346) Nil!70755)) (= lt!2593497 lt!2593403)))))

(declare-fun d!2261650 () Bool)

(assert (=> d!2261650 e!4358733))

(declare-fun res!2946678 () Bool)

(assert (=> d!2261650 (=> (not res!2946678) (not e!4358733))))

(declare-fun content!14762 (List!70879) (Set Regex!18782))

(assert (=> d!2261650 (= res!2946678 (= (content!14762 lt!2593497) (set.union (content!14762 lt!2593403) (content!14762 (exprs!8222 ct2!346)))))))

(declare-fun e!4358734 () List!70879)

(assert (=> d!2261650 (= lt!2593497 e!4358734)))

(declare-fun c!1352758 () Bool)

(assert (=> d!2261650 (= c!1352758 (is-Nil!70755 lt!2593403))))

(assert (=> d!2261650 (= (++!16682 lt!2593403 (exprs!8222 ct2!346)) lt!2593497)))

(declare-fun b!7268554 () Bool)

(declare-fun res!2946679 () Bool)

(assert (=> b!7268554 (=> (not res!2946679) (not e!4358733))))

(declare-fun size!41810 (List!70879) Int)

(assert (=> b!7268554 (= res!2946679 (= (size!41810 lt!2593497) (+ (size!41810 lt!2593403) (size!41810 (exprs!8222 ct2!346)))))))

(declare-fun b!7268552 () Bool)

(assert (=> b!7268552 (= e!4358734 (exprs!8222 ct2!346))))

(declare-fun b!7268553 () Bool)

(assert (=> b!7268553 (= e!4358734 (Cons!70755 (h!77203 lt!2593403) (++!16682 (t!384949 lt!2593403) (exprs!8222 ct2!346))))))

(assert (= (and d!2261650 c!1352758) b!7268552))

(assert (= (and d!2261650 (not c!1352758)) b!7268553))

(assert (= (and d!2261650 res!2946678) b!7268554))

(assert (= (and b!7268554 res!2946679) b!7268555))

(declare-fun m!7953596 () Bool)

(assert (=> d!2261650 m!7953596))

(declare-fun m!7953598 () Bool)

(assert (=> d!2261650 m!7953598))

(declare-fun m!7953600 () Bool)

(assert (=> d!2261650 m!7953600))

(declare-fun m!7953602 () Bool)

(assert (=> b!7268554 m!7953602))

(declare-fun m!7953604 () Bool)

(assert (=> b!7268554 m!7953604))

(declare-fun m!7953606 () Bool)

(assert (=> b!7268554 m!7953606))

(declare-fun m!7953608 () Bool)

(assert (=> b!7268553 m!7953608))

(assert (=> b!7268396 d!2261650))

(declare-fun b!7268556 () Bool)

(declare-fun e!4358736 () (Set Context!15444))

(declare-fun call!662718 () (Set Context!15444))

(assert (=> b!7268556 (= e!4358736 call!662718)))

(declare-fun bm!662710 () Bool)

(declare-fun call!662715 () (Set Context!15444))

(assert (=> bm!662710 (= call!662718 call!662715)))

(declare-fun bm!662711 () Bool)

(declare-fun call!662720 () List!70879)

(declare-fun call!662716 () List!70879)

(assert (=> bm!662711 (= call!662720 call!662716)))

(declare-fun b!7268557 () Bool)

(declare-fun c!1352759 () Bool)

(declare-fun e!4358735 () Bool)

(assert (=> b!7268557 (= c!1352759 e!4358735)))

(declare-fun res!2946680 () Bool)

(assert (=> b!7268557 (=> (not res!2946680) (not e!4358735))))

(assert (=> b!7268557 (= res!2946680 (is-Concat!27627 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun e!4358737 () (Set Context!15444))

(declare-fun e!4358739 () (Set Context!15444))

(assert (=> b!7268557 (= e!4358737 e!4358739)))

(declare-fun b!7268558 () Bool)

(declare-fun c!1352760 () Bool)

(assert (=> b!7268558 (= c!1352760 (is-Star!18782 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun e!4358740 () (Set Context!15444))

(assert (=> b!7268558 (= e!4358740 e!4358736)))

(declare-fun b!7268559 () Bool)

(declare-fun call!662719 () (Set Context!15444))

(assert (=> b!7268559 (= e!4358739 (set.union call!662719 call!662715))))

(declare-fun d!2261652 () Bool)

(declare-fun c!1352763 () Bool)

(assert (=> d!2261652 (= c!1352763 (and (is-ElementMatch!18782 (h!77203 (exprs!8222 ct1!250))) (= (c!1352712 (h!77203 (exprs!8222 ct1!250))) (h!77204 s!7854))))))

(declare-fun e!4358738 () (Set Context!15444))

(assert (=> d!2261652 (= (derivationStepZipperDown!2716 (h!77203 (exprs!8222 ct1!250)) lt!2593411 (h!77204 s!7854)) e!4358738)))

(declare-fun b!7268560 () Bool)

(assert (=> b!7268560 (= e!4358738 e!4358737)))

(declare-fun c!1352762 () Bool)

(assert (=> b!7268560 (= c!1352762 (is-Union!18782 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun bm!662712 () Bool)

(declare-fun call!662717 () (Set Context!15444))

(assert (=> bm!662712 (= call!662715 call!662717)))

(declare-fun b!7268561 () Bool)

(assert (=> b!7268561 (= e!4358738 (set.insert lt!2593411 (as set.empty (Set Context!15444))))))

(declare-fun c!1352761 () Bool)

(declare-fun bm!662713 () Bool)

(assert (=> bm!662713 (= call!662717 (derivationStepZipperDown!2716 (ite c!1352762 (regTwo!38077 (h!77203 (exprs!8222 ct1!250))) (ite c!1352759 (regTwo!38076 (h!77203 (exprs!8222 ct1!250))) (ite c!1352761 (regOne!38076 (h!77203 (exprs!8222 ct1!250))) (reg!19111 (h!77203 (exprs!8222 ct1!250)))))) (ite (or c!1352762 c!1352759) lt!2593411 (Context!15445 call!662720)) (h!77204 s!7854)))))

(declare-fun b!7268562 () Bool)

(assert (=> b!7268562 (= e!4358735 (nullable!7982 (regOne!38076 (h!77203 (exprs!8222 ct1!250)))))))

(declare-fun b!7268563 () Bool)

(assert (=> b!7268563 (= e!4358737 (set.union call!662719 call!662717))))

(declare-fun b!7268564 () Bool)

(assert (=> b!7268564 (= e!4358736 (as set.empty (Set Context!15444)))))

(declare-fun b!7268565 () Bool)

(assert (=> b!7268565 (= e!4358739 e!4358740)))

(assert (=> b!7268565 (= c!1352761 (is-Concat!27627 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun b!7268566 () Bool)

(assert (=> b!7268566 (= e!4358740 call!662718)))

(declare-fun bm!662714 () Bool)

(assert (=> bm!662714 (= call!662716 ($colon$colon!2958 (exprs!8222 lt!2593411) (ite (or c!1352759 c!1352761) (regTwo!38076 (h!77203 (exprs!8222 ct1!250))) (h!77203 (exprs!8222 ct1!250)))))))

(declare-fun bm!662715 () Bool)

(assert (=> bm!662715 (= call!662719 (derivationStepZipperDown!2716 (ite c!1352762 (regOne!38077 (h!77203 (exprs!8222 ct1!250))) (regOne!38076 (h!77203 (exprs!8222 ct1!250)))) (ite c!1352762 lt!2593411 (Context!15445 call!662716)) (h!77204 s!7854)))))

(assert (= (and d!2261652 c!1352763) b!7268561))

(assert (= (and d!2261652 (not c!1352763)) b!7268560))

(assert (= (and b!7268560 c!1352762) b!7268563))

(assert (= (and b!7268560 (not c!1352762)) b!7268557))

(assert (= (and b!7268557 res!2946680) b!7268562))

(assert (= (and b!7268557 c!1352759) b!7268559))

(assert (= (and b!7268557 (not c!1352759)) b!7268565))

(assert (= (and b!7268565 c!1352761) b!7268566))

(assert (= (and b!7268565 (not c!1352761)) b!7268558))

(assert (= (and b!7268558 c!1352760) b!7268556))

(assert (= (and b!7268558 (not c!1352760)) b!7268564))

(assert (= (or b!7268566 b!7268556) bm!662711))

(assert (= (or b!7268566 b!7268556) bm!662710))

(assert (= (or b!7268559 bm!662711) bm!662714))

(assert (= (or b!7268559 bm!662710) bm!662712))

(assert (= (or b!7268563 b!7268559) bm!662715))

(assert (= (or b!7268563 bm!662712) bm!662713))

(declare-fun m!7953610 () Bool)

(assert (=> bm!662713 m!7953610))

(assert (=> b!7268562 m!7953572))

(assert (=> b!7268561 m!7953456))

(declare-fun m!7953612 () Bool)

(assert (=> bm!662715 m!7953612))

(declare-fun m!7953614 () Bool)

(assert (=> bm!662714 m!7953614))

(assert (=> b!7268396 d!2261652))

(assert (=> b!7268396 d!2261626))

(declare-fun b!7268567 () Bool)

(declare-fun e!4358743 () (Set Context!15444))

(declare-fun call!662721 () (Set Context!15444))

(assert (=> b!7268567 (= e!4358743 call!662721)))

(declare-fun b!7268568 () Bool)

(assert (=> b!7268568 (= e!4358743 (as set.empty (Set Context!15444)))))

(declare-fun d!2261654 () Bool)

(declare-fun c!1352765 () Bool)

(declare-fun e!4358742 () Bool)

(assert (=> d!2261654 (= c!1352765 e!4358742)))

(declare-fun res!2946681 () Bool)

(assert (=> d!2261654 (=> (not res!2946681) (not e!4358742))))

(assert (=> d!2261654 (= res!2946681 (is-Cons!70755 (exprs!8222 lt!2593411)))))

(declare-fun e!4358741 () (Set Context!15444))

(assert (=> d!2261654 (= (derivationStepZipperUp!2552 lt!2593411 (h!77204 s!7854)) e!4358741)))

(declare-fun b!7268569 () Bool)

(assert (=> b!7268569 (= e!4358742 (nullable!7982 (h!77203 (exprs!8222 lt!2593411))))))

(declare-fun b!7268570 () Bool)

(assert (=> b!7268570 (= e!4358741 e!4358743)))

(declare-fun c!1352764 () Bool)

(assert (=> b!7268570 (= c!1352764 (is-Cons!70755 (exprs!8222 lt!2593411)))))

(declare-fun b!7268571 () Bool)

(assert (=> b!7268571 (= e!4358741 (set.union call!662721 (derivationStepZipperUp!2552 (Context!15445 (t!384949 (exprs!8222 lt!2593411))) (h!77204 s!7854))))))

(declare-fun bm!662716 () Bool)

(assert (=> bm!662716 (= call!662721 (derivationStepZipperDown!2716 (h!77203 (exprs!8222 lt!2593411)) (Context!15445 (t!384949 (exprs!8222 lt!2593411))) (h!77204 s!7854)))))

(assert (= (and d!2261654 res!2946681) b!7268569))

(assert (= (and d!2261654 c!1352765) b!7268571))

(assert (= (and d!2261654 (not c!1352765)) b!7268570))

(assert (= (and b!7268570 c!1352764) b!7268567))

(assert (= (and b!7268570 (not c!1352764)) b!7268568))

(assert (= (or b!7268571 b!7268567) bm!662716))

(declare-fun m!7953616 () Bool)

(assert (=> b!7268569 m!7953616))

(declare-fun m!7953618 () Bool)

(assert (=> b!7268571 m!7953618))

(declare-fun m!7953620 () Bool)

(assert (=> bm!662716 m!7953620))

(assert (=> b!7268396 d!2261654))

(declare-fun d!2261656 () Bool)

(assert (=> d!2261656 (= (isEmpty!40683 (exprs!8222 ct1!250)) (is-Nil!70755 (exprs!8222 ct1!250)))))

(assert (=> b!7268394 d!2261656))

(declare-fun d!2261658 () Bool)

(assert (=> d!2261658 (forall!17613 (++!16682 (exprs!8222 ct1!250) (exprs!8222 ct2!346)) lambda!447944)))

(declare-fun lt!2593498 () Unit!164182)

(assert (=> d!2261658 (= lt!2593498 (choose!56355 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944))))

(assert (=> d!2261658 (forall!17613 (exprs!8222 ct1!250) lambda!447944)))

(assert (=> d!2261658 (= (lemmaConcatPreservesForall!1539 (exprs!8222 ct1!250) (exprs!8222 ct2!346) lambda!447944) lt!2593498)))

(declare-fun bs!1910640 () Bool)

(assert (= bs!1910640 d!2261658))

(assert (=> bs!1910640 m!7953446))

(assert (=> bs!1910640 m!7953446))

(declare-fun m!7953622 () Bool)

(assert (=> bs!1910640 m!7953622))

(declare-fun m!7953624 () Bool)

(assert (=> bs!1910640 m!7953624))

(declare-fun m!7953626 () Bool)

(assert (=> bs!1910640 m!7953626))

(assert (=> b!7268400 d!2261658))

(declare-fun d!2261660 () Bool)

(declare-fun choose!56357 ((Set Context!15444) Int) (Set Context!15444))

(assert (=> d!2261660 (= (flatMap!2895 lt!2593417 lambda!447945) (choose!56357 lt!2593417 lambda!447945))))

(declare-fun bs!1910641 () Bool)

(assert (= bs!1910641 d!2261660))

(declare-fun m!7953628 () Bool)

(assert (=> bs!1910641 m!7953628))

(assert (=> b!7268400 d!2261660))

(declare-fun b!7268572 () Bool)

(declare-fun e!4358746 () (Set Context!15444))

(declare-fun call!662722 () (Set Context!15444))

(assert (=> b!7268572 (= e!4358746 call!662722)))

(declare-fun b!7268573 () Bool)

(assert (=> b!7268573 (= e!4358746 (as set.empty (Set Context!15444)))))

(declare-fun d!2261662 () Bool)

(declare-fun c!1352767 () Bool)

(declare-fun e!4358745 () Bool)

(assert (=> d!2261662 (= c!1352767 e!4358745)))

(declare-fun res!2946682 () Bool)

(assert (=> d!2261662 (=> (not res!2946682) (not e!4358745))))

(assert (=> d!2261662 (= res!2946682 (is-Cons!70755 (exprs!8222 lt!2593410)))))

(declare-fun e!4358744 () (Set Context!15444))

(assert (=> d!2261662 (= (derivationStepZipperUp!2552 lt!2593410 (h!77204 s!7854)) e!4358744)))

(declare-fun b!7268574 () Bool)

(assert (=> b!7268574 (= e!4358745 (nullable!7982 (h!77203 (exprs!8222 lt!2593410))))))

(declare-fun b!7268575 () Bool)

(assert (=> b!7268575 (= e!4358744 e!4358746)))

(declare-fun c!1352766 () Bool)

(assert (=> b!7268575 (= c!1352766 (is-Cons!70755 (exprs!8222 lt!2593410)))))

(declare-fun b!7268576 () Bool)

(assert (=> b!7268576 (= e!4358744 (set.union call!662722 (derivationStepZipperUp!2552 (Context!15445 (t!384949 (exprs!8222 lt!2593410))) (h!77204 s!7854))))))

(declare-fun bm!662717 () Bool)

(assert (=> bm!662717 (= call!662722 (derivationStepZipperDown!2716 (h!77203 (exprs!8222 lt!2593410)) (Context!15445 (t!384949 (exprs!8222 lt!2593410))) (h!77204 s!7854)))))

(assert (= (and d!2261662 res!2946682) b!7268574))

(assert (= (and d!2261662 c!1352767) b!7268576))

(assert (= (and d!2261662 (not c!1352767)) b!7268575))

(assert (= (and b!7268575 c!1352766) b!7268572))

(assert (= (and b!7268575 (not c!1352766)) b!7268573))

(assert (= (or b!7268576 b!7268572) bm!662717))

(declare-fun m!7953630 () Bool)

(assert (=> b!7268574 m!7953630))

(declare-fun m!7953632 () Bool)

(assert (=> b!7268576 m!7953632))

(declare-fun m!7953634 () Bool)

(assert (=> bm!662717 m!7953634))

(assert (=> b!7268400 d!2261662))

(declare-fun b!7268577 () Bool)

(declare-fun e!4358749 () (Set Context!15444))

(declare-fun call!662723 () (Set Context!15444))

(assert (=> b!7268577 (= e!4358749 call!662723)))

(declare-fun b!7268578 () Bool)

(assert (=> b!7268578 (= e!4358749 (as set.empty (Set Context!15444)))))

(declare-fun d!2261664 () Bool)

(declare-fun c!1352769 () Bool)

(declare-fun e!4358748 () Bool)

(assert (=> d!2261664 (= c!1352769 e!4358748)))

(declare-fun res!2946683 () Bool)

(assert (=> d!2261664 (=> (not res!2946683) (not e!4358748))))

(assert (=> d!2261664 (= res!2946683 (is-Cons!70755 (exprs!8222 ct1!250)))))

(declare-fun e!4358747 () (Set Context!15444))

(assert (=> d!2261664 (= (derivationStepZipperUp!2552 ct1!250 (h!77204 s!7854)) e!4358747)))

(declare-fun b!7268579 () Bool)

(assert (=> b!7268579 (= e!4358748 (nullable!7982 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun b!7268580 () Bool)

(assert (=> b!7268580 (= e!4358747 e!4358749)))

(declare-fun c!1352768 () Bool)

(assert (=> b!7268580 (= c!1352768 (is-Cons!70755 (exprs!8222 ct1!250)))))

(declare-fun b!7268581 () Bool)

(assert (=> b!7268581 (= e!4358747 (set.union call!662723 (derivationStepZipperUp!2552 (Context!15445 (t!384949 (exprs!8222 ct1!250))) (h!77204 s!7854))))))

(declare-fun bm!662718 () Bool)

(assert (=> bm!662718 (= call!662723 (derivationStepZipperDown!2716 (h!77203 (exprs!8222 ct1!250)) (Context!15445 (t!384949 (exprs!8222 ct1!250))) (h!77204 s!7854)))))

(assert (= (and d!2261664 res!2946683) b!7268579))

(assert (= (and d!2261664 c!1352769) b!7268581))

(assert (= (and d!2261664 (not c!1352769)) b!7268580))

(assert (= (and b!7268580 c!1352768) b!7268577))

(assert (= (and b!7268580 (not c!1352768)) b!7268578))

(assert (= (or b!7268581 b!7268577) bm!662718))

(assert (=> b!7268579 m!7953412))

(declare-fun m!7953636 () Bool)

(assert (=> b!7268581 m!7953636))

(declare-fun m!7953638 () Bool)

(assert (=> bm!662718 m!7953638))

(assert (=> b!7268400 d!2261664))

(declare-fun lt!2593499 () List!70879)

(declare-fun b!7268585 () Bool)

(declare-fun e!4358750 () Bool)

(assert (=> b!7268585 (= e!4358750 (or (not (= (exprs!8222 ct2!346) Nil!70755)) (= lt!2593499 (exprs!8222 ct1!250))))))

(declare-fun d!2261666 () Bool)

(assert (=> d!2261666 e!4358750))

(declare-fun res!2946684 () Bool)

(assert (=> d!2261666 (=> (not res!2946684) (not e!4358750))))

(assert (=> d!2261666 (= res!2946684 (= (content!14762 lt!2593499) (set.union (content!14762 (exprs!8222 ct1!250)) (content!14762 (exprs!8222 ct2!346)))))))

(declare-fun e!4358751 () List!70879)

(assert (=> d!2261666 (= lt!2593499 e!4358751)))

(declare-fun c!1352770 () Bool)

(assert (=> d!2261666 (= c!1352770 (is-Nil!70755 (exprs!8222 ct1!250)))))

(assert (=> d!2261666 (= (++!16682 (exprs!8222 ct1!250) (exprs!8222 ct2!346)) lt!2593499)))

(declare-fun b!7268584 () Bool)

(declare-fun res!2946685 () Bool)

(assert (=> b!7268584 (=> (not res!2946685) (not e!4358750))))

(assert (=> b!7268584 (= res!2946685 (= (size!41810 lt!2593499) (+ (size!41810 (exprs!8222 ct1!250)) (size!41810 (exprs!8222 ct2!346)))))))

(declare-fun b!7268582 () Bool)

(assert (=> b!7268582 (= e!4358751 (exprs!8222 ct2!346))))

(declare-fun b!7268583 () Bool)

(assert (=> b!7268583 (= e!4358751 (Cons!70755 (h!77203 (exprs!8222 ct1!250)) (++!16682 (t!384949 (exprs!8222 ct1!250)) (exprs!8222 ct2!346))))))

(assert (= (and d!2261666 c!1352770) b!7268582))

(assert (= (and d!2261666 (not c!1352770)) b!7268583))

(assert (= (and d!2261666 res!2946684) b!7268584))

(assert (= (and b!7268584 res!2946685) b!7268585))

(declare-fun m!7953640 () Bool)

(assert (=> d!2261666 m!7953640))

(declare-fun m!7953642 () Bool)

(assert (=> d!2261666 m!7953642))

(assert (=> d!2261666 m!7953600))

(declare-fun m!7953644 () Bool)

(assert (=> b!7268584 m!7953644))

(declare-fun m!7953646 () Bool)

(assert (=> b!7268584 m!7953646))

(assert (=> b!7268584 m!7953606))

(declare-fun m!7953648 () Bool)

(assert (=> b!7268583 m!7953648))

(assert (=> b!7268400 d!2261666))

(declare-fun d!2261668 () Bool)

(assert (=> d!2261668 (= (flatMap!2895 lt!2593415 lambda!447945) (choose!56357 lt!2593415 lambda!447945))))

(declare-fun bs!1910642 () Bool)

(assert (= bs!1910642 d!2261668))

(declare-fun m!7953650 () Bool)

(assert (=> bs!1910642 m!7953650))

(assert (=> b!7268400 d!2261668))

(declare-fun bs!1910643 () Bool)

(declare-fun d!2261670 () Bool)

(assert (= bs!1910643 (and d!2261670 b!7268400)))

(declare-fun lambda!447981 () Int)

(assert (=> bs!1910643 (= lambda!447981 lambda!447945)))

(assert (=> d!2261670 true))

(assert (=> d!2261670 (= (derivationStepZipper!3522 lt!2593415 (h!77204 s!7854)) (flatMap!2895 lt!2593415 lambda!447981))))

(declare-fun bs!1910644 () Bool)

(assert (= bs!1910644 d!2261670))

(declare-fun m!7953652 () Bool)

(assert (=> bs!1910644 m!7953652))

(assert (=> b!7268400 d!2261670))

(declare-fun d!2261672 () Bool)

(declare-fun dynLambda!28908 (Int Context!15444) (Set Context!15444))

(assert (=> d!2261672 (= (flatMap!2895 lt!2593415 lambda!447945) (dynLambda!28908 lambda!447945 lt!2593410))))

(declare-fun lt!2593502 () Unit!164182)

(declare-fun choose!56359 ((Set Context!15444) Context!15444 Int) Unit!164182)

(assert (=> d!2261672 (= lt!2593502 (choose!56359 lt!2593415 lt!2593410 lambda!447945))))

(assert (=> d!2261672 (= lt!2593415 (set.insert lt!2593410 (as set.empty (Set Context!15444))))))

(assert (=> d!2261672 (= (lemmaFlatMapOnSingletonSet!2295 lt!2593415 lt!2593410 lambda!447945) lt!2593502)))

(declare-fun b_lambda!280015 () Bool)

(assert (=> (not b_lambda!280015) (not d!2261672)))

(declare-fun bs!1910645 () Bool)

(assert (= bs!1910645 d!2261672))

(assert (=> bs!1910645 m!7953436))

(declare-fun m!7953654 () Bool)

(assert (=> bs!1910645 m!7953654))

(declare-fun m!7953656 () Bool)

(assert (=> bs!1910645 m!7953656))

(assert (=> bs!1910645 m!7953444))

(assert (=> b!7268400 d!2261672))

(declare-fun d!2261674 () Bool)

(assert (=> d!2261674 (= (flatMap!2895 lt!2593417 lambda!447945) (dynLambda!28908 lambda!447945 ct1!250))))

(declare-fun lt!2593503 () Unit!164182)

(assert (=> d!2261674 (= lt!2593503 (choose!56359 lt!2593417 ct1!250 lambda!447945))))

(assert (=> d!2261674 (= lt!2593417 (set.insert ct1!250 (as set.empty (Set Context!15444))))))

(assert (=> d!2261674 (= (lemmaFlatMapOnSingletonSet!2295 lt!2593417 ct1!250 lambda!447945) lt!2593503)))

(declare-fun b_lambda!280017 () Bool)

(assert (=> (not b_lambda!280017) (not d!2261674)))

(declare-fun bs!1910646 () Bool)

(assert (= bs!1910646 d!2261674))

(assert (=> bs!1910646 m!7953434))

(declare-fun m!7953658 () Bool)

(assert (=> bs!1910646 m!7953658))

(declare-fun m!7953660 () Bool)

(assert (=> bs!1910646 m!7953660))

(assert (=> bs!1910646 m!7953442))

(assert (=> b!7268400 d!2261674))

(declare-fun bs!1910647 () Bool)

(declare-fun d!2261676 () Bool)

(assert (= bs!1910647 (and d!2261676 b!7268400)))

(declare-fun lambda!447984 () Int)

(assert (=> bs!1910647 (not (= lambda!447984 lambda!447944))))

(declare-fun bs!1910648 () Bool)

(assert (= bs!1910648 (and d!2261676 d!2261632)))

(assert (=> bs!1910648 (not (= lambda!447984 lambda!447974))))

(declare-fun bs!1910649 () Bool)

(assert (= bs!1910649 (and d!2261676 d!2261646)))

(assert (=> bs!1910649 (not (= lambda!447984 lambda!447977))))

(declare-fun bs!1910650 () Bool)

(assert (= bs!1910650 (and d!2261676 d!2261648)))

(assert (=> bs!1910650 (not (= lambda!447984 lambda!447978))))

(assert (=> d!2261676 (= (nullableContext!272 ct1!250) (forall!17613 (exprs!8222 ct1!250) lambda!447984))))

(declare-fun bs!1910651 () Bool)

(assert (= bs!1910651 d!2261676))

(declare-fun m!7953668 () Bool)

(assert (=> bs!1910651 m!7953668))

(assert (=> b!7268398 d!2261676))

(declare-fun d!2261678 () Bool)

(declare-fun nullableFct!3144 (Regex!18782) Bool)

(assert (=> d!2261678 (= (nullable!7982 (h!77203 (exprs!8222 ct1!250))) (nullableFct!3144 (h!77203 (exprs!8222 ct1!250))))))

(declare-fun bs!1910652 () Bool)

(assert (= bs!1910652 d!2261678))

(declare-fun m!7953672 () Bool)

(assert (=> bs!1910652 m!7953672))

(assert (=> b!7268403 d!2261678))

(assert (=> b!7268403 d!2261664))

(declare-fun d!2261682 () Bool)

(assert (=> d!2261682 (= (tail!14470 (exprs!8222 ct1!250)) (t!384949 (exprs!8222 ct1!250)))))

(assert (=> b!7268403 d!2261682))

(declare-fun d!2261684 () Bool)

(declare-fun res!2946687 () Bool)

(declare-fun e!4358758 () Bool)

(assert (=> d!2261684 (=> res!2946687 e!4358758)))

(assert (=> d!2261684 (= res!2946687 (is-Nil!70755 (exprs!8222 ct2!346)))))

(assert (=> d!2261684 (= (forall!17613 (exprs!8222 ct2!346) lambda!447944) e!4358758)))

(declare-fun b!7268599 () Bool)

(declare-fun e!4358759 () Bool)

(assert (=> b!7268599 (= e!4358758 e!4358759)))

(declare-fun res!2946688 () Bool)

(assert (=> b!7268599 (=> (not res!2946688) (not e!4358759))))

(assert (=> b!7268599 (= res!2946688 (dynLambda!28907 lambda!447944 (h!77203 (exprs!8222 ct2!346))))))

(declare-fun b!7268600 () Bool)

(assert (=> b!7268600 (= e!4358759 (forall!17613 (t!384949 (exprs!8222 ct2!346)) lambda!447944))))

(assert (= (and d!2261684 (not res!2946687)) b!7268599))

(assert (= (and b!7268599 res!2946688) b!7268600))

(declare-fun b_lambda!280019 () Bool)

(assert (=> (not b_lambda!280019) (not b!7268599)))

(declare-fun m!7953674 () Bool)

(assert (=> b!7268599 m!7953674))

(declare-fun m!7953676 () Bool)

(assert (=> b!7268600 m!7953676))

(assert (=> b!7268404 d!2261684))

(declare-fun b!7268605 () Bool)

(declare-fun e!4358762 () Bool)

(declare-fun tp!2040801 () Bool)

(declare-fun tp!2040802 () Bool)

(assert (=> b!7268605 (= e!4358762 (and tp!2040801 tp!2040802))))

(assert (=> b!7268402 (= tp!2040787 e!4358762)))

(assert (= (and b!7268402 (is-Cons!70755 (exprs!8222 ct2!346))) b!7268605))

(declare-fun b!7268610 () Bool)

(declare-fun e!4358765 () Bool)

(declare-fun tp!2040805 () Bool)

(assert (=> b!7268610 (= e!4358765 (and tp_is_empty!47029 tp!2040805))))

(assert (=> b!7268395 (= tp!2040785 e!4358765)))

(assert (= (and b!7268395 (is-Cons!70756 (t!384950 s!7854))) b!7268610))

(declare-fun b!7268611 () Bool)

(declare-fun e!4358766 () Bool)

(declare-fun tp!2040806 () Bool)

(declare-fun tp!2040807 () Bool)

(assert (=> b!7268611 (= e!4358766 (and tp!2040806 tp!2040807))))

(assert (=> b!7268401 (= tp!2040786 e!4358766)))

(assert (= (and b!7268401 (is-Cons!70755 (exprs!8222 ct1!250))) b!7268611))

(declare-fun b_lambda!280021 () Bool)

(assert (= b_lambda!280013 (or b!7268400 b_lambda!280021)))

(declare-fun bs!1910653 () Bool)

(declare-fun d!2261686 () Bool)

(assert (= bs!1910653 (and d!2261686 b!7268400)))

(declare-fun validRegex!9578 (Regex!18782) Bool)

(assert (=> bs!1910653 (= (dynLambda!28907 lambda!447944 (h!77203 lt!2593403)) (validRegex!9578 (h!77203 lt!2593403)))))

(declare-fun m!7953678 () Bool)

(assert (=> bs!1910653 m!7953678))

(assert (=> b!7268466 d!2261686))

(declare-fun b_lambda!280023 () Bool)

(assert (= b_lambda!280015 (or b!7268400 b_lambda!280023)))

(declare-fun bs!1910654 () Bool)

(declare-fun d!2261688 () Bool)

(assert (= bs!1910654 (and d!2261688 b!7268400)))

(assert (=> bs!1910654 (= (dynLambda!28908 lambda!447945 lt!2593410) (derivationStepZipperUp!2552 lt!2593410 (h!77204 s!7854)))))

(assert (=> bs!1910654 m!7953448))

(assert (=> d!2261672 d!2261688))

(declare-fun b_lambda!280025 () Bool)

(assert (= b_lambda!280019 (or b!7268400 b_lambda!280025)))

(declare-fun bs!1910655 () Bool)

(declare-fun d!2261690 () Bool)

(assert (= bs!1910655 (and d!2261690 b!7268400)))

(assert (=> bs!1910655 (= (dynLambda!28907 lambda!447944 (h!77203 (exprs!8222 ct2!346))) (validRegex!9578 (h!77203 (exprs!8222 ct2!346))))))

(declare-fun m!7953680 () Bool)

(assert (=> bs!1910655 m!7953680))

(assert (=> b!7268599 d!2261690))

(declare-fun b_lambda!280027 () Bool)

(assert (= b_lambda!280017 (or b!7268400 b_lambda!280027)))

(declare-fun bs!1910656 () Bool)

(declare-fun d!2261692 () Bool)

(assert (= bs!1910656 (and d!2261692 b!7268400)))

(assert (=> bs!1910656 (= (dynLambda!28908 lambda!447945 ct1!250) (derivationStepZipperUp!2552 ct1!250 (h!77204 s!7854)))))

(assert (=> bs!1910656 m!7953414))

(assert (=> d!2261674 d!2261692))

(push 1)

(assert (not d!2261674))

(assert (not d!2261660))

(assert (not b!7268467))

(assert tp_is_empty!47029)

(assert (not d!2261670))

(assert (not b_lambda!280023))

(assert (not b!7268569))

(assert (not b_lambda!280025))

(assert (not d!2261626))

(assert (not bs!1910655))

(assert (not b!7268581))

(assert (not b!7268452))

(assert (not d!2261632))

(assert (not b_lambda!280027))

(assert (not b!7268500))

(assert (not b!7268571))

(assert (not d!2261650))

(assert (not bm!662713))

(assert (not b!7268453))

(assert (not b!7268532))

(assert (not bs!1910656))

(assert (not b!7268600))

(assert (not b!7268554))

(assert (not bm!662697))

(assert (not d!2261644))

(assert (not b!7268553))

(assert (not d!2261668))

(assert (not bm!662718))

(assert (not b_lambda!280021))

(assert (not b!7268584))

(assert (not b!7268605))

(assert (not b!7268519))

(assert (not bm!662714))

(assert (not b!7268533))

(assert (not bm!662694))

(assert (not b!7268576))

(assert (not b!7268579))

(assert (not d!2261658))

(assert (not bm!662716))

(assert (not bs!1910654))

(assert (not bm!662715))

(assert (not bs!1910653))

(assert (not bm!662692))

(assert (not d!2261666))

(assert (not d!2261628))

(assert (not b!7268574))

(assert (not bm!662717))

(assert (not b!7268610))

(assert (not b!7268521))

(assert (not b!7268583))

(assert (not b!7268611))

(assert (not d!2261676))

(assert (not d!2261678))

(assert (not d!2261672))

(assert (not b!7268562))

(assert (not bm!662693))

(assert (not d!2261646))

(assert (not d!2261648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

