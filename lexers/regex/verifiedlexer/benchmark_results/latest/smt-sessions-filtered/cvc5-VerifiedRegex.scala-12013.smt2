; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673650 () Bool)

(assert start!673650)

(declare-fun b!7001543 () Bool)

(assert (=> b!7001543 true))

(declare-fun b!7001524 () Bool)

(assert (=> b!7001524 true))

(declare-fun b!7001527 () Bool)

(assert (=> b!7001527 true))

(declare-fun b!7001512 () Bool)

(declare-fun res!2856180 () Bool)

(declare-fun e!4208468 () Bool)

(assert (=> b!7001512 (=> res!2856180 e!4208468)))

(declare-datatypes ((C!34814 0))(
  ( (C!34815 (val!27109 Int)) )
))
(declare-datatypes ((List!67361 0))(
  ( (Nil!67237) (Cons!67237 (h!73685 C!34814) (t!381114 List!67361)) )
))
(declare-datatypes ((tuple2!67890 0))(
  ( (tuple2!67891 (_1!37248 List!67361) (_2!37248 List!67361)) )
))
(declare-fun lt!2496470 () tuple2!67890)

(declare-fun s!7408 () List!67361)

(declare-fun ++!15245 (List!67361 List!67361) List!67361)

(assert (=> b!7001512 (= res!2856180 (not (= (++!15245 (_1!37248 lt!2496470) (_2!37248 lt!2496470)) s!7408)))))

(declare-fun b!7001513 () Bool)

(declare-fun e!4208469 () Bool)

(declare-fun e!4208485 () Bool)

(assert (=> b!7001513 (= e!4208469 e!4208485)))

(declare-fun res!2856177 () Bool)

(assert (=> b!7001513 (=> res!2856177 e!4208485)))

(declare-datatypes ((Regex!17272 0))(
  ( (ElementMatch!17272 (c!1299758 C!34814)) (Concat!26117 (regOne!35056 Regex!17272) (regTwo!35056 Regex!17272)) (EmptyExpr!17272) (Star!17272 (reg!17601 Regex!17272)) (EmptyLang!17272) (Union!17272 (regOne!35057 Regex!17272) (regTwo!35057 Regex!17272)) )
))
(declare-datatypes ((List!67362 0))(
  ( (Nil!67238) (Cons!67238 (h!73686 Regex!17272) (t!381115 List!67362)) )
))
(declare-datatypes ((Context!12536 0))(
  ( (Context!12537 (exprs!6768 List!67362)) )
))
(declare-fun lt!2496469 () (Set Context!12536))

(declare-fun matchZipper!2812 ((Set Context!12536) List!67361) Bool)

(assert (=> b!7001513 (= res!2856177 (not (matchZipper!2812 lt!2496469 (t!381114 s!7408))))))

(declare-fun lt!2496495 () List!67362)

(declare-fun lambda!405493 () Int)

(declare-datatypes ((Unit!161204 0))(
  ( (Unit!161205) )
))
(declare-fun lt!2496453 () Unit!161204)

(declare-fun ct2!306 () Context!12536)

(declare-fun lemmaConcatPreservesForall!608 (List!67362 List!67362 Int) Unit!161204)

(assert (=> b!7001513 (= lt!2496453 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001514 () Bool)

(declare-fun e!4208474 () Bool)

(declare-fun e!4208471 () Bool)

(assert (=> b!7001514 (= e!4208474 e!4208471)))

(declare-fun res!2856171 () Bool)

(assert (=> b!7001514 (=> res!2856171 e!4208471)))

(declare-fun lt!2496482 () (Set Context!12536))

(assert (=> b!7001514 (= res!2856171 (not (matchZipper!2812 lt!2496482 s!7408)))))

(declare-fun lt!2496491 () Unit!161204)

(assert (=> b!7001514 (= lt!2496491 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001515 () Bool)

(declare-fun e!4208476 () Bool)

(declare-fun lt!2496494 () (Set Context!12536))

(declare-fun lt!2496492 () List!67361)

(assert (=> b!7001515 (= e!4208476 (not (matchZipper!2812 lt!2496494 lt!2496492)))))

(declare-fun b!7001516 () Bool)

(declare-fun e!4208473 () Bool)

(assert (=> b!7001516 (= e!4208473 e!4208468)))

(declare-fun res!2856173 () Bool)

(assert (=> b!7001516 (=> res!2856173 e!4208468)))

(declare-fun lt!2496444 () (Set Context!12536))

(assert (=> b!7001516 (= res!2856173 (not (matchZipper!2812 lt!2496444 (_1!37248 lt!2496470))))))

(declare-datatypes ((Option!16777 0))(
  ( (None!16776) (Some!16776 (v!53054 tuple2!67890)) )
))
(declare-fun lt!2496448 () Option!16777)

(declare-fun get!23578 (Option!16777) tuple2!67890)

(assert (=> b!7001516 (= lt!2496470 (get!23578 lt!2496448))))

(declare-fun isDefined!13478 (Option!16777) Bool)

(assert (=> b!7001516 (isDefined!13478 lt!2496448)))

(declare-fun lt!2496473 () (Set Context!12536))

(declare-fun findConcatSeparationZippers!293 ((Set Context!12536) (Set Context!12536) List!67361 List!67361 List!67361) Option!16777)

(assert (=> b!7001516 (= lt!2496448 (findConcatSeparationZippers!293 lt!2496444 lt!2496473 Nil!67237 s!7408 s!7408))))

(assert (=> b!7001516 (= lt!2496473 (set.insert ct2!306 (as set.empty (Set Context!12536))))))

(declare-fun lt!2496445 () Unit!161204)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!293 ((Set Context!12536) Context!12536 List!67361) Unit!161204)

(assert (=> b!7001516 (= lt!2496445 (lemmaConcatZipperMatchesStringThenFindConcatDefined!293 lt!2496444 ct2!306 s!7408))))

(declare-fun b!7001517 () Bool)

(declare-fun res!2856162 () Bool)

(declare-fun e!4208481 () Bool)

(assert (=> b!7001517 (=> res!2856162 e!4208481)))

(declare-fun lt!2496471 () Context!12536)

(declare-fun lt!2496446 () (Set Context!12536))

(assert (=> b!7001517 (= res!2856162 (not (set.member lt!2496471 lt!2496446)))))

(declare-fun b!7001519 () Bool)

(declare-fun e!4208477 () Bool)

(assert (=> b!7001519 (= e!4208477 e!4208469)))

(declare-fun res!2856181 () Bool)

(assert (=> b!7001519 (=> res!2856181 e!4208469)))

(declare-fun e!4208479 () Bool)

(assert (=> b!7001519 (= res!2856181 e!4208479)))

(declare-fun res!2856178 () Bool)

(assert (=> b!7001519 (=> (not res!2856178) (not e!4208479))))

(declare-fun lt!2496479 () Bool)

(declare-fun lt!2496466 () Bool)

(assert (=> b!7001519 (= res!2856178 (not (= lt!2496479 lt!2496466)))))

(declare-fun lt!2496476 () (Set Context!12536))

(assert (=> b!7001519 (= lt!2496479 (matchZipper!2812 lt!2496476 (t!381114 s!7408)))))

(declare-fun lt!2496450 () Unit!161204)

(assert (=> b!7001519 (= lt!2496450 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496467 () (Set Context!12536))

(declare-fun e!4208480 () Bool)

(assert (=> b!7001519 (= (matchZipper!2812 lt!2496467 (t!381114 s!7408)) e!4208480)))

(declare-fun res!2856183 () Bool)

(assert (=> b!7001519 (=> res!2856183 e!4208480)))

(assert (=> b!7001519 (= res!2856183 lt!2496466)))

(declare-fun lt!2496497 () (Set Context!12536))

(assert (=> b!7001519 (= lt!2496466 (matchZipper!2812 lt!2496497 (t!381114 s!7408)))))

(declare-fun lt!2496485 () Unit!161204)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1445 ((Set Context!12536) (Set Context!12536) List!67361) Unit!161204)

(assert (=> b!7001519 (= lt!2496485 (lemmaZipperConcatMatchesSameAsBothZippers!1445 lt!2496497 lt!2496469 (t!381114 s!7408)))))

(declare-fun lt!2496498 () Unit!161204)

(assert (=> b!7001519 (= lt!2496498 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496472 () Unit!161204)

(assert (=> b!7001519 (= lt!2496472 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001520 () Bool)

(assert (=> b!7001520 (= e!4208480 (matchZipper!2812 lt!2496469 (t!381114 s!7408)))))

(declare-fun b!7001521 () Bool)

(declare-fun e!4208470 () Bool)

(declare-fun tp!1931205 () Bool)

(assert (=> b!7001521 (= e!4208470 tp!1931205)))

(declare-fun b!7001522 () Bool)

(declare-fun res!2856168 () Bool)

(assert (=> b!7001522 (=> res!2856168 e!4208469)))

(assert (=> b!7001522 (= res!2856168 (not lt!2496479))))

(declare-fun b!7001523 () Bool)

(declare-fun e!4208484 () Bool)

(declare-fun e!4208464 () Bool)

(assert (=> b!7001523 (= e!4208484 e!4208464)))

(declare-fun res!2856170 () Bool)

(assert (=> b!7001523 (=> res!2856170 e!4208464)))

(declare-fun lt!2496475 () (Set Context!12536))

(declare-fun lt!2496474 () (Set Context!12536))

(assert (=> b!7001523 (= res!2856170 (not (= lt!2496475 lt!2496474)))))

(declare-fun lt!2496484 () Context!12536)

(assert (=> b!7001523 (= lt!2496475 (set.insert lt!2496484 (as set.empty (Set Context!12536))))))

(declare-fun lt!2496458 () Unit!161204)

(declare-fun lt!2496457 () Context!12536)

(assert (=> b!7001523 (= lt!2496458 (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496457) (exprs!6768 ct2!306) lambda!405493))))

(assert (=> b!7001524 (= e!4208481 e!4208484)))

(declare-fun res!2856167 () Bool)

(assert (=> b!7001524 (=> res!2856167 e!4208484)))

(declare-fun z1!570 () (Set Context!12536))

(assert (=> b!7001524 (= res!2856167 (or (not (= lt!2496484 lt!2496471)) (not (set.member lt!2496457 z1!570))))))

(declare-fun ++!15246 (List!67362 List!67362) List!67362)

(assert (=> b!7001524 (= lt!2496484 (Context!12537 (++!15246 (exprs!6768 lt!2496457) (exprs!6768 ct2!306))))))

(declare-fun lt!2496454 () Unit!161204)

(assert (=> b!7001524 (= lt!2496454 (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496457) (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lambda!405492 () Int)

(declare-fun mapPost2!127 ((Set Context!12536) Int Context!12536) Context!12536)

(assert (=> b!7001524 (= lt!2496457 (mapPost2!127 z1!570 lambda!405492 lt!2496471))))

(declare-fun b!7001525 () Bool)

(declare-fun e!4208483 () Bool)

(declare-fun e!4208482 () Bool)

(assert (=> b!7001525 (= e!4208483 e!4208482)))

(declare-fun res!2856165 () Bool)

(assert (=> b!7001525 (=> res!2856165 e!4208482)))

(assert (=> b!7001525 (= res!2856165 e!4208476)))

(declare-fun res!2856163 () Bool)

(assert (=> b!7001525 (=> (not res!2856163) (not e!4208476))))

(declare-fun lt!2496447 () Bool)

(declare-fun lt!2496442 () (Set Context!12536))

(assert (=> b!7001525 (= res!2856163 (not (= (matchZipper!2812 lt!2496442 (_1!37248 lt!2496470)) lt!2496447)))))

(declare-fun lt!2496465 () (Set Context!12536))

(declare-fun e!4208465 () Bool)

(assert (=> b!7001525 (= (matchZipper!2812 lt!2496465 lt!2496492) e!4208465)))

(declare-fun res!2856160 () Bool)

(assert (=> b!7001525 (=> res!2856160 e!4208465)))

(assert (=> b!7001525 (= res!2856160 lt!2496447)))

(declare-fun lt!2496443 () (Set Context!12536))

(assert (=> b!7001525 (= lt!2496447 (matchZipper!2812 lt!2496443 lt!2496492))))

(declare-fun lt!2496456 () Unit!161204)

(assert (=> b!7001525 (= lt!2496456 (lemmaZipperConcatMatchesSameAsBothZippers!1445 lt!2496443 lt!2496494 lt!2496492))))

(declare-fun tail!13312 (List!67361) List!67361)

(assert (=> b!7001525 (= lt!2496492 (tail!13312 (_1!37248 lt!2496470)))))

(declare-fun b!7001526 () Bool)

(declare-fun res!2856187 () Bool)

(declare-fun e!4208475 () Bool)

(assert (=> b!7001526 (=> res!2856187 e!4208475)))

(declare-fun isEmpty!39257 (List!67362) Bool)

(assert (=> b!7001526 (= res!2856187 (isEmpty!39257 (exprs!6768 lt!2496457)))))

(assert (=> b!7001527 (= e!4208464 e!4208475)))

(declare-fun res!2856166 () Bool)

(assert (=> b!7001527 (=> res!2856166 e!4208475)))

(declare-fun derivationStepZipper!2752 ((Set Context!12536) C!34814) (Set Context!12536))

(assert (=> b!7001527 (= res!2856166 (not (= (derivationStepZipper!2752 lt!2496475 (h!73685 s!7408)) lt!2496476)))))

(declare-fun lambda!405494 () Int)

(declare-fun flatMap!2258 ((Set Context!12536) Int) (Set Context!12536))

(declare-fun derivationStepZipperUp!1922 (Context!12536 C!34814) (Set Context!12536))

(assert (=> b!7001527 (= (flatMap!2258 lt!2496475 lambda!405494) (derivationStepZipperUp!1922 lt!2496484 (h!73685 s!7408)))))

(declare-fun lt!2496499 () Unit!161204)

(declare-fun lemmaFlatMapOnSingletonSet!1773 ((Set Context!12536) Context!12536 Int) Unit!161204)

(assert (=> b!7001527 (= lt!2496499 (lemmaFlatMapOnSingletonSet!1773 lt!2496475 lt!2496484 lambda!405494))))

(assert (=> b!7001527 (= lt!2496476 (derivationStepZipperUp!1922 lt!2496484 (h!73685 s!7408)))))

(declare-fun lt!2496489 () Unit!161204)

(assert (=> b!7001527 (= lt!2496489 (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496457) (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001528 () Bool)

(declare-fun res!2856175 () Bool)

(assert (=> b!7001528 (=> res!2856175 e!4208468)))

(assert (=> b!7001528 (= res!2856175 (not (matchZipper!2812 lt!2496473 (_2!37248 lt!2496470))))))

(declare-fun b!7001529 () Bool)

(assert (=> b!7001529 (= e!4208482 (not (= (_1!37248 lt!2496470) Nil!67237)))))

(declare-fun lt!2496460 () Context!12536)

(assert (=> b!7001529 (= (flatMap!2258 lt!2496444 lambda!405494) (derivationStepZipperUp!1922 lt!2496460 (h!73685 s!7408)))))

(declare-fun lt!2496487 () Unit!161204)

(assert (=> b!7001529 (= lt!2496487 (lemmaFlatMapOnSingletonSet!1773 lt!2496444 lt!2496460 lambda!405494))))

(declare-fun b!7001530 () Bool)

(declare-fun e!4208478 () Bool)

(declare-fun tp_is_empty!43769 () Bool)

(declare-fun tp!1931203 () Bool)

(assert (=> b!7001530 (= e!4208478 (and tp_is_empty!43769 tp!1931203))))

(declare-fun b!7001531 () Bool)

(declare-fun res!2856176 () Bool)

(declare-fun e!4208466 () Bool)

(assert (=> b!7001531 (=> (not res!2856176) (not e!4208466))))

(assert (=> b!7001531 (= res!2856176 (is-Cons!67237 s!7408))))

(declare-fun b!7001532 () Bool)

(assert (=> b!7001532 (= e!4208485 e!4208474)))

(declare-fun res!2856186 () Bool)

(assert (=> b!7001532 (=> res!2856186 e!4208474)))

(assert (=> b!7001532 (= res!2856186 (not (= (derivationStepZipper!2752 lt!2496482 (h!73685 s!7408)) lt!2496469)))))

(declare-fun lt!2496464 () Unit!161204)

(assert (=> b!7001532 (= lt!2496464 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496461 () Unit!161204)

(assert (=> b!7001532 (= lt!2496461 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496480 () Context!12536)

(assert (=> b!7001532 (= (flatMap!2258 lt!2496482 lambda!405494) (derivationStepZipperUp!1922 lt!2496480 (h!73685 s!7408)))))

(declare-fun lt!2496455 () Unit!161204)

(assert (=> b!7001532 (= lt!2496455 (lemmaFlatMapOnSingletonSet!1773 lt!2496482 lt!2496480 lambda!405494))))

(assert (=> b!7001532 (= lt!2496482 (set.insert lt!2496480 (as set.empty (Set Context!12536))))))

(declare-fun lt!2496459 () Unit!161204)

(assert (=> b!7001532 (= lt!2496459 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496486 () Unit!161204)

(assert (=> b!7001532 (= lt!2496486 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001533 () Bool)

(assert (=> b!7001533 (= e!4208479 (not (matchZipper!2812 lt!2496469 (t!381114 s!7408))))))

(declare-fun lt!2496483 () Unit!161204)

(assert (=> b!7001533 (= lt!2496483 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001534 () Bool)

(declare-fun e!4208472 () Bool)

(declare-fun tp!1931206 () Bool)

(assert (=> b!7001534 (= e!4208472 tp!1931206)))

(declare-fun b!7001535 () Bool)

(declare-fun e!4208486 () Bool)

(assert (=> b!7001535 (= e!4208468 e!4208486)))

(declare-fun res!2856169 () Bool)

(assert (=> b!7001535 (=> res!2856169 e!4208486)))

(declare-fun lt!2496451 () (Set Context!12536))

(assert (=> b!7001535 (= res!2856169 (not (= (derivationStepZipper!2752 lt!2496442 (h!73685 s!7408)) lt!2496451)))))

(assert (=> b!7001535 (= lt!2496451 (derivationStepZipperUp!1922 lt!2496457 (h!73685 s!7408)))))

(assert (=> b!7001535 (= (flatMap!2258 lt!2496442 lambda!405494) (derivationStepZipperUp!1922 lt!2496457 (h!73685 s!7408)))))

(declare-fun lt!2496488 () Unit!161204)

(assert (=> b!7001535 (= lt!2496488 (lemmaFlatMapOnSingletonSet!1773 lt!2496442 lt!2496457 lambda!405494))))

(assert (=> b!7001535 (= lt!2496442 (set.insert lt!2496457 (as set.empty (Set Context!12536))))))

(declare-fun res!2856174 () Bool)

(assert (=> start!673650 (=> (not res!2856174) (not e!4208466))))

(assert (=> start!673650 (= res!2856174 (matchZipper!2812 lt!2496446 s!7408))))

(declare-fun appendTo!393 ((Set Context!12536) Context!12536) (Set Context!12536))

(assert (=> start!673650 (= lt!2496446 (appendTo!393 z1!570 ct2!306))))

(assert (=> start!673650 e!4208466))

(declare-fun condSetEmpty!48120 () Bool)

(assert (=> start!673650 (= condSetEmpty!48120 (= z1!570 (as set.empty (Set Context!12536))))))

(declare-fun setRes!48120 () Bool)

(assert (=> start!673650 setRes!48120))

(declare-fun inv!86040 (Context!12536) Bool)

(assert (=> start!673650 (and (inv!86040 ct2!306) e!4208472)))

(assert (=> start!673650 e!4208478))

(declare-fun b!7001518 () Bool)

(declare-fun e!4208467 () Bool)

(assert (=> b!7001518 (= e!4208467 e!4208477)))

(declare-fun res!2856188 () Bool)

(assert (=> b!7001518 (=> res!2856188 e!4208477)))

(assert (=> b!7001518 (= res!2856188 (not (= lt!2496476 lt!2496467)))))

(assert (=> b!7001518 (= lt!2496467 (set.union lt!2496497 lt!2496469))))

(assert (=> b!7001518 (= lt!2496469 (derivationStepZipperUp!1922 lt!2496480 (h!73685 s!7408)))))

(declare-fun derivationStepZipperDown!1990 (Regex!17272 Context!12536 C!34814) (Set Context!12536))

(assert (=> b!7001518 (= lt!2496497 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496457)) lt!2496480 (h!73685 s!7408)))))

(assert (=> b!7001518 (= lt!2496480 (Context!12537 (++!15246 lt!2496495 (exprs!6768 ct2!306))))))

(declare-fun lt!2496496 () Unit!161204)

(assert (=> b!7001518 (= lt!2496496 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496468 () Unit!161204)

(assert (=> b!7001518 (= lt!2496468 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun b!7001536 () Bool)

(declare-fun res!2856182 () Bool)

(assert (=> b!7001536 (=> res!2856182 e!4208475)))

(assert (=> b!7001536 (= res!2856182 (not (is-Cons!67238 (exprs!6768 lt!2496457))))))

(declare-fun b!7001537 () Bool)

(assert (=> b!7001537 (= e!4208471 e!4208473)))

(declare-fun res!2856164 () Bool)

(assert (=> b!7001537 (=> res!2856164 e!4208473)))

(declare-fun lt!2496463 () Int)

(declare-fun contextDepthTotal!465 (Context!12536) Int)

(assert (=> b!7001537 (= res!2856164 (<= lt!2496463 (contextDepthTotal!465 lt!2496460)))))

(declare-fun lt!2496490 () Int)

(assert (=> b!7001537 (<= lt!2496463 lt!2496490)))

(declare-datatypes ((List!67363 0))(
  ( (Nil!67239) (Cons!67239 (h!73687 Context!12536) (t!381116 List!67363)) )
))
(declare-fun lt!2496440 () List!67363)

(declare-fun zipperDepthTotal!493 (List!67363) Int)

(assert (=> b!7001537 (= lt!2496490 (zipperDepthTotal!493 lt!2496440))))

(assert (=> b!7001537 (= lt!2496463 (contextDepthTotal!465 lt!2496457))))

(declare-fun lt!2496493 () Unit!161204)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!33 (List!67363 Context!12536) Unit!161204)

(assert (=> b!7001537 (= lt!2496493 (lemmaTotalDepthZipperLargerThanOfAnyContext!33 lt!2496440 lt!2496457))))

(declare-fun toList!10632 ((Set Context!12536)) List!67363)

(assert (=> b!7001537 (= lt!2496440 (toList!10632 z1!570))))

(declare-fun lt!2496449 () Unit!161204)

(assert (=> b!7001537 (= lt!2496449 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496478 () Unit!161204)

(assert (=> b!7001537 (= lt!2496478 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496441 () Unit!161204)

(assert (=> b!7001537 (= lt!2496441 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(assert (=> b!7001537 (= (flatMap!2258 lt!2496444 lambda!405494) (derivationStepZipperUp!1922 lt!2496460 (h!73685 s!7408)))))

(declare-fun lt!2496477 () Unit!161204)

(assert (=> b!7001537 (= lt!2496477 (lemmaFlatMapOnSingletonSet!1773 lt!2496444 lt!2496460 lambda!405494))))

(declare-fun map!15555 ((Set Context!12536) Int) (Set Context!12536))

(assert (=> b!7001537 (= (map!15555 lt!2496444 lambda!405492) (set.insert (Context!12537 (++!15246 lt!2496495 (exprs!6768 ct2!306))) (as set.empty (Set Context!12536))))))

(declare-fun lt!2496452 () Unit!161204)

(assert (=> b!7001537 (= lt!2496452 (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(declare-fun lt!2496439 () Unit!161204)

(declare-fun lemmaMapOnSingletonSet!337 ((Set Context!12536) Context!12536 Int) Unit!161204)

(assert (=> b!7001537 (= lt!2496439 (lemmaMapOnSingletonSet!337 lt!2496444 lt!2496460 lambda!405492))))

(assert (=> b!7001537 (= lt!2496444 (set.insert lt!2496460 (as set.empty (Set Context!12536))))))

(declare-fun b!7001538 () Bool)

(assert (=> b!7001538 (= e!4208475 e!4208467)))

(declare-fun res!2856179 () Bool)

(assert (=> b!7001538 (=> res!2856179 e!4208467)))

(declare-fun nullable!7032 (Regex!17272) Bool)

(assert (=> b!7001538 (= res!2856179 (not (nullable!7032 (h!73686 (exprs!6768 lt!2496457)))))))

(assert (=> b!7001538 (= lt!2496460 (Context!12537 lt!2496495))))

(declare-fun tail!13313 (List!67362) List!67362)

(assert (=> b!7001538 (= lt!2496495 (tail!13313 (exprs!6768 lt!2496457)))))

(declare-fun b!7001539 () Bool)

(declare-fun res!2856185 () Bool)

(assert (=> b!7001539 (=> res!2856185 e!4208473)))

(assert (=> b!7001539 (= res!2856185 (>= (zipperDepthTotal!493 (Cons!67239 lt!2496460 Nil!67239)) lt!2496490))))

(declare-fun b!7001540 () Bool)

(assert (=> b!7001540 (= e!4208486 e!4208483)))

(declare-fun res!2856184 () Bool)

(assert (=> b!7001540 (=> res!2856184 e!4208483)))

(assert (=> b!7001540 (= res!2856184 (not (= lt!2496451 lt!2496465)))))

(assert (=> b!7001540 (= lt!2496465 (set.union lt!2496443 lt!2496494))))

(assert (=> b!7001540 (= lt!2496494 (derivationStepZipperUp!1922 lt!2496460 (h!73685 s!7408)))))

(assert (=> b!7001540 (= lt!2496443 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496457)) lt!2496460 (h!73685 s!7408)))))

(declare-fun b!7001541 () Bool)

(declare-fun res!2856172 () Bool)

(assert (=> b!7001541 (=> res!2856172 e!4208468)))

(declare-fun isEmpty!39258 (List!67361) Bool)

(assert (=> b!7001541 (= res!2856172 (isEmpty!39258 (_1!37248 lt!2496470)))))

(declare-fun b!7001542 () Bool)

(assert (=> b!7001542 (= e!4208465 (matchZipper!2812 lt!2496494 lt!2496492))))

(declare-fun setIsEmpty!48120 () Bool)

(assert (=> setIsEmpty!48120 setRes!48120))

(assert (=> b!7001543 (= e!4208466 (not e!4208481))))

(declare-fun res!2856161 () Bool)

(assert (=> b!7001543 (=> res!2856161 e!4208481)))

(assert (=> b!7001543 (= res!2856161 (not (matchZipper!2812 lt!2496474 s!7408)))))

(assert (=> b!7001543 (= lt!2496474 (set.insert lt!2496471 (as set.empty (Set Context!12536))))))

(declare-fun lambda!405491 () Int)

(declare-fun getWitness!1193 ((Set Context!12536) Int) Context!12536)

(assert (=> b!7001543 (= lt!2496471 (getWitness!1193 lt!2496446 lambda!405491))))

(declare-fun lt!2496481 () List!67363)

(declare-fun exists!3089 (List!67363 Int) Bool)

(assert (=> b!7001543 (exists!3089 lt!2496481 lambda!405491)))

(declare-fun lt!2496462 () Unit!161204)

(declare-fun lemmaZipperMatchesExistsMatchingContext!241 (List!67363 List!67361) Unit!161204)

(assert (=> b!7001543 (= lt!2496462 (lemmaZipperMatchesExistsMatchingContext!241 lt!2496481 s!7408))))

(assert (=> b!7001543 (= lt!2496481 (toList!10632 lt!2496446))))

(declare-fun setElem!48120 () Context!12536)

(declare-fun setNonEmpty!48120 () Bool)

(declare-fun tp!1931204 () Bool)

(assert (=> setNonEmpty!48120 (= setRes!48120 (and tp!1931204 (inv!86040 setElem!48120) e!4208470))))

(declare-fun setRest!48120 () (Set Context!12536))

(assert (=> setNonEmpty!48120 (= z1!570 (set.union (set.insert setElem!48120 (as set.empty (Set Context!12536))) setRest!48120))))

(assert (= (and start!673650 res!2856174) b!7001531))

(assert (= (and b!7001531 res!2856176) b!7001543))

(assert (= (and b!7001543 (not res!2856161)) b!7001517))

(assert (= (and b!7001517 (not res!2856162)) b!7001524))

(assert (= (and b!7001524 (not res!2856167)) b!7001523))

(assert (= (and b!7001523 (not res!2856170)) b!7001527))

(assert (= (and b!7001527 (not res!2856166)) b!7001536))

(assert (= (and b!7001536 (not res!2856182)) b!7001526))

(assert (= (and b!7001526 (not res!2856187)) b!7001538))

(assert (= (and b!7001538 (not res!2856179)) b!7001518))

(assert (= (and b!7001518 (not res!2856188)) b!7001519))

(assert (= (and b!7001519 (not res!2856183)) b!7001520))

(assert (= (and b!7001519 res!2856178) b!7001533))

(assert (= (and b!7001519 (not res!2856181)) b!7001522))

(assert (= (and b!7001522 (not res!2856168)) b!7001513))

(assert (= (and b!7001513 (not res!2856177)) b!7001532))

(assert (= (and b!7001532 (not res!2856186)) b!7001514))

(assert (= (and b!7001514 (not res!2856171)) b!7001537))

(assert (= (and b!7001537 (not res!2856164)) b!7001539))

(assert (= (and b!7001539 (not res!2856185)) b!7001516))

(assert (= (and b!7001516 (not res!2856173)) b!7001528))

(assert (= (and b!7001528 (not res!2856175)) b!7001512))

(assert (= (and b!7001512 (not res!2856180)) b!7001541))

(assert (= (and b!7001541 (not res!2856172)) b!7001535))

(assert (= (and b!7001535 (not res!2856169)) b!7001540))

(assert (= (and b!7001540 (not res!2856184)) b!7001525))

(assert (= (and b!7001525 (not res!2856160)) b!7001542))

(assert (= (and b!7001525 res!2856163) b!7001515))

(assert (= (and b!7001525 (not res!2856165)) b!7001529))

(assert (= (and start!673650 condSetEmpty!48120) setIsEmpty!48120))

(assert (= (and start!673650 (not condSetEmpty!48120)) setNonEmpty!48120))

(assert (= setNonEmpty!48120 b!7001521))

(assert (= start!673650 b!7001534))

(assert (= (and start!673650 (is-Cons!67237 s!7408)) b!7001530))

(declare-fun m!7695862 () Bool)

(assert (=> b!7001518 m!7695862))

(declare-fun m!7695864 () Bool)

(assert (=> b!7001518 m!7695864))

(assert (=> b!7001518 m!7695862))

(declare-fun m!7695866 () Bool)

(assert (=> b!7001518 m!7695866))

(declare-fun m!7695868 () Bool)

(assert (=> b!7001518 m!7695868))

(declare-fun m!7695870 () Bool)

(assert (=> b!7001529 m!7695870))

(declare-fun m!7695872 () Bool)

(assert (=> b!7001529 m!7695872))

(declare-fun m!7695874 () Bool)

(assert (=> b!7001529 m!7695874))

(declare-fun m!7695876 () Bool)

(assert (=> b!7001520 m!7695876))

(declare-fun m!7695878 () Bool)

(assert (=> b!7001514 m!7695878))

(assert (=> b!7001514 m!7695862))

(declare-fun m!7695880 () Bool)

(assert (=> b!7001524 m!7695880))

(declare-fun m!7695882 () Bool)

(assert (=> b!7001524 m!7695882))

(declare-fun m!7695884 () Bool)

(assert (=> b!7001524 m!7695884))

(declare-fun m!7695886 () Bool)

(assert (=> b!7001524 m!7695886))

(declare-fun m!7695888 () Bool)

(assert (=> b!7001516 m!7695888))

(declare-fun m!7695890 () Bool)

(assert (=> b!7001516 m!7695890))

(declare-fun m!7695892 () Bool)

(assert (=> b!7001516 m!7695892))

(declare-fun m!7695894 () Bool)

(assert (=> b!7001516 m!7695894))

(declare-fun m!7695896 () Bool)

(assert (=> b!7001516 m!7695896))

(declare-fun m!7695898 () Bool)

(assert (=> b!7001516 m!7695898))

(assert (=> b!7001513 m!7695876))

(assert (=> b!7001513 m!7695862))

(declare-fun m!7695900 () Bool)

(assert (=> b!7001542 m!7695900))

(declare-fun m!7695902 () Bool)

(assert (=> b!7001538 m!7695902))

(declare-fun m!7695904 () Bool)

(assert (=> b!7001538 m!7695904))

(declare-fun m!7695906 () Bool)

(assert (=> b!7001532 m!7695906))

(assert (=> b!7001532 m!7695862))

(assert (=> b!7001532 m!7695862))

(assert (=> b!7001532 m!7695862))

(assert (=> b!7001532 m!7695866))

(declare-fun m!7695908 () Bool)

(assert (=> b!7001532 m!7695908))

(declare-fun m!7695910 () Bool)

(assert (=> b!7001532 m!7695910))

(declare-fun m!7695912 () Bool)

(assert (=> b!7001532 m!7695912))

(assert (=> b!7001532 m!7695862))

(declare-fun m!7695914 () Bool)

(assert (=> b!7001543 m!7695914))

(declare-fun m!7695916 () Bool)

(assert (=> b!7001543 m!7695916))

(declare-fun m!7695918 () Bool)

(assert (=> b!7001543 m!7695918))

(declare-fun m!7695920 () Bool)

(assert (=> b!7001543 m!7695920))

(declare-fun m!7695922 () Bool)

(assert (=> b!7001543 m!7695922))

(declare-fun m!7695924 () Bool)

(assert (=> b!7001543 m!7695924))

(declare-fun m!7695926 () Bool)

(assert (=> b!7001535 m!7695926))

(declare-fun m!7695928 () Bool)

(assert (=> b!7001535 m!7695928))

(declare-fun m!7695930 () Bool)

(assert (=> b!7001535 m!7695930))

(declare-fun m!7695932 () Bool)

(assert (=> b!7001535 m!7695932))

(declare-fun m!7695934 () Bool)

(assert (=> b!7001535 m!7695934))

(declare-fun m!7695936 () Bool)

(assert (=> b!7001512 m!7695936))

(declare-fun m!7695938 () Bool)

(assert (=> b!7001539 m!7695938))

(declare-fun m!7695940 () Bool)

(assert (=> b!7001519 m!7695940))

(assert (=> b!7001519 m!7695862))

(declare-fun m!7695942 () Bool)

(assert (=> b!7001519 m!7695942))

(assert (=> b!7001519 m!7695862))

(assert (=> b!7001519 m!7695862))

(declare-fun m!7695944 () Bool)

(assert (=> b!7001519 m!7695944))

(declare-fun m!7695946 () Bool)

(assert (=> b!7001519 m!7695946))

(assert (=> b!7001527 m!7695884))

(declare-fun m!7695948 () Bool)

(assert (=> b!7001527 m!7695948))

(declare-fun m!7695950 () Bool)

(assert (=> b!7001527 m!7695950))

(declare-fun m!7695952 () Bool)

(assert (=> b!7001527 m!7695952))

(declare-fun m!7695954 () Bool)

(assert (=> b!7001527 m!7695954))

(assert (=> b!7001540 m!7695872))

(declare-fun m!7695956 () Bool)

(assert (=> b!7001540 m!7695956))

(declare-fun m!7695958 () Bool)

(assert (=> b!7001526 m!7695958))

(assert (=> b!7001515 m!7695900))

(declare-fun m!7695960 () Bool)

(assert (=> b!7001528 m!7695960))

(declare-fun m!7695962 () Bool)

(assert (=> b!7001525 m!7695962))

(declare-fun m!7695964 () Bool)

(assert (=> b!7001525 m!7695964))

(declare-fun m!7695966 () Bool)

(assert (=> b!7001525 m!7695966))

(declare-fun m!7695968 () Bool)

(assert (=> b!7001525 m!7695968))

(declare-fun m!7695970 () Bool)

(assert (=> b!7001525 m!7695970))

(assert (=> b!7001537 m!7695862))

(declare-fun m!7695972 () Bool)

(assert (=> b!7001537 m!7695972))

(declare-fun m!7695974 () Bool)

(assert (=> b!7001537 m!7695974))

(declare-fun m!7695976 () Bool)

(assert (=> b!7001537 m!7695976))

(declare-fun m!7695978 () Bool)

(assert (=> b!7001537 m!7695978))

(declare-fun m!7695980 () Bool)

(assert (=> b!7001537 m!7695980))

(declare-fun m!7695982 () Bool)

(assert (=> b!7001537 m!7695982))

(assert (=> b!7001537 m!7695868))

(declare-fun m!7695984 () Bool)

(assert (=> b!7001537 m!7695984))

(declare-fun m!7695986 () Bool)

(assert (=> b!7001537 m!7695986))

(declare-fun m!7695988 () Bool)

(assert (=> b!7001537 m!7695988))

(assert (=> b!7001537 m!7695870))

(assert (=> b!7001537 m!7695862))

(assert (=> b!7001537 m!7695862))

(assert (=> b!7001537 m!7695874))

(assert (=> b!7001537 m!7695862))

(assert (=> b!7001537 m!7695872))

(declare-fun m!7695990 () Bool)

(assert (=> b!7001523 m!7695990))

(assert (=> b!7001523 m!7695884))

(assert (=> b!7001533 m!7695876))

(assert (=> b!7001533 m!7695862))

(declare-fun m!7695992 () Bool)

(assert (=> b!7001541 m!7695992))

(declare-fun m!7695994 () Bool)

(assert (=> setNonEmpty!48120 m!7695994))

(declare-fun m!7695996 () Bool)

(assert (=> start!673650 m!7695996))

(declare-fun m!7695998 () Bool)

(assert (=> start!673650 m!7695998))

(declare-fun m!7696000 () Bool)

(assert (=> start!673650 m!7696000))

(declare-fun m!7696002 () Bool)

(assert (=> b!7001517 m!7696002))

(push 1)

(assert (not b!7001513))

(assert (not b!7001526))

(assert (not b!7001534))

(assert (not b!7001529))

(assert (not b!7001530))

(assert (not setNonEmpty!48120))

(assert (not b!7001527))

(assert (not b!7001538))

(assert (not b!7001518))

(assert (not b!7001524))

(assert (not b!7001542))

(assert (not b!7001519))

(assert (not b!7001525))

(assert (not b!7001520))

(assert tp_is_empty!43769)

(assert (not b!7001512))

(assert (not b!7001528))

(assert (not b!7001514))

(assert (not b!7001535))

(assert (not b!7001541))

(assert (not b!7001515))

(assert (not b!7001537))

(assert (not b!7001521))

(assert (not b!7001540))

(assert (not b!7001543))

(assert (not b!7001533))

(assert (not start!673650))

(assert (not b!7001523))

(assert (not b!7001539))

(assert (not b!7001532))

(assert (not b!7001516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2182334 () Bool)

(declare-fun c!1299780 () Bool)

(assert (=> d!2182334 (= c!1299780 (isEmpty!39258 (_2!37248 lt!2496470)))))

(declare-fun e!4208558 () Bool)

(assert (=> d!2182334 (= (matchZipper!2812 lt!2496473 (_2!37248 lt!2496470)) e!4208558)))

(declare-fun b!7001656 () Bool)

(declare-fun nullableZipper!2463 ((Set Context!12536)) Bool)

(assert (=> b!7001656 (= e!4208558 (nullableZipper!2463 lt!2496473))))

(declare-fun b!7001657 () Bool)

(declare-fun head!14143 (List!67361) C!34814)

(assert (=> b!7001657 (= e!4208558 (matchZipper!2812 (derivationStepZipper!2752 lt!2496473 (head!14143 (_2!37248 lt!2496470))) (tail!13312 (_2!37248 lt!2496470))))))

(assert (= (and d!2182334 c!1299780) b!7001656))

(assert (= (and d!2182334 (not c!1299780)) b!7001657))

(declare-fun m!7696146 () Bool)

(assert (=> d!2182334 m!7696146))

(declare-fun m!7696148 () Bool)

(assert (=> b!7001656 m!7696148))

(declare-fun m!7696150 () Bool)

(assert (=> b!7001657 m!7696150))

(assert (=> b!7001657 m!7696150))

(declare-fun m!7696152 () Bool)

(assert (=> b!7001657 m!7696152))

(declare-fun m!7696154 () Bool)

(assert (=> b!7001657 m!7696154))

(assert (=> b!7001657 m!7696152))

(assert (=> b!7001657 m!7696154))

(declare-fun m!7696156 () Bool)

(assert (=> b!7001657 m!7696156))

(assert (=> b!7001528 d!2182334))

(declare-fun d!2182336 () Bool)

(declare-fun forall!16186 (List!67362 Int) Bool)

(assert (=> d!2182336 (forall!16186 (++!15246 (exprs!6768 lt!2496457) (exprs!6768 ct2!306)) lambda!405493)))

(declare-fun lt!2496689 () Unit!161204)

(declare-fun choose!52496 (List!67362 List!67362 Int) Unit!161204)

(assert (=> d!2182336 (= lt!2496689 (choose!52496 (exprs!6768 lt!2496457) (exprs!6768 ct2!306) lambda!405493))))

(assert (=> d!2182336 (forall!16186 (exprs!6768 lt!2496457) lambda!405493)))

(assert (=> d!2182336 (= (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496457) (exprs!6768 ct2!306) lambda!405493) lt!2496689)))

(declare-fun bs!1864873 () Bool)

(assert (= bs!1864873 d!2182336))

(assert (=> bs!1864873 m!7695882))

(assert (=> bs!1864873 m!7695882))

(declare-fun m!7696158 () Bool)

(assert (=> bs!1864873 m!7696158))

(declare-fun m!7696160 () Bool)

(assert (=> bs!1864873 m!7696160))

(declare-fun m!7696162 () Bool)

(assert (=> bs!1864873 m!7696162))

(assert (=> b!7001527 d!2182336))

(declare-fun d!2182338 () Bool)

(declare-fun choose!52497 ((Set Context!12536) Int) (Set Context!12536))

(assert (=> d!2182338 (= (flatMap!2258 lt!2496475 lambda!405494) (choose!52497 lt!2496475 lambda!405494))))

(declare-fun bs!1864874 () Bool)

(assert (= bs!1864874 d!2182338))

(declare-fun m!7696164 () Bool)

(assert (=> bs!1864874 m!7696164))

(assert (=> b!7001527 d!2182338))

(declare-fun d!2182340 () Bool)

(declare-fun dynLambda!27006 (Int Context!12536) (Set Context!12536))

(assert (=> d!2182340 (= (flatMap!2258 lt!2496475 lambda!405494) (dynLambda!27006 lambda!405494 lt!2496484))))

(declare-fun lt!2496692 () Unit!161204)

(declare-fun choose!52498 ((Set Context!12536) Context!12536 Int) Unit!161204)

(assert (=> d!2182340 (= lt!2496692 (choose!52498 lt!2496475 lt!2496484 lambda!405494))))

(assert (=> d!2182340 (= lt!2496475 (set.insert lt!2496484 (as set.empty (Set Context!12536))))))

(assert (=> d!2182340 (= (lemmaFlatMapOnSingletonSet!1773 lt!2496475 lt!2496484 lambda!405494) lt!2496692)))

(declare-fun b_lambda!263727 () Bool)

(assert (=> (not b_lambda!263727) (not d!2182340)))

(declare-fun bs!1864875 () Bool)

(assert (= bs!1864875 d!2182340))

(assert (=> bs!1864875 m!7695954))

(declare-fun m!7696166 () Bool)

(assert (=> bs!1864875 m!7696166))

(declare-fun m!7696168 () Bool)

(assert (=> bs!1864875 m!7696168))

(assert (=> bs!1864875 m!7695990))

(assert (=> b!7001527 d!2182340))

(declare-fun b!7001668 () Bool)

(declare-fun e!4208565 () (Set Context!12536))

(declare-fun e!4208567 () (Set Context!12536))

(assert (=> b!7001668 (= e!4208565 e!4208567)))

(declare-fun c!1299785 () Bool)

(assert (=> b!7001668 (= c!1299785 (is-Cons!67238 (exprs!6768 lt!2496484)))))

(declare-fun b!7001669 () Bool)

(declare-fun call!635743 () (Set Context!12536))

(assert (=> b!7001669 (= e!4208565 (set.union call!635743 (derivationStepZipperUp!1922 (Context!12537 (t!381115 (exprs!6768 lt!2496484))) (h!73685 s!7408))))))

(declare-fun d!2182342 () Bool)

(declare-fun c!1299786 () Bool)

(declare-fun e!4208566 () Bool)

(assert (=> d!2182342 (= c!1299786 e!4208566)))

(declare-fun res!2856279 () Bool)

(assert (=> d!2182342 (=> (not res!2856279) (not e!4208566))))

(assert (=> d!2182342 (= res!2856279 (is-Cons!67238 (exprs!6768 lt!2496484)))))

(assert (=> d!2182342 (= (derivationStepZipperUp!1922 lt!2496484 (h!73685 s!7408)) e!4208565)))

(declare-fun b!7001670 () Bool)

(assert (=> b!7001670 (= e!4208567 call!635743)))

(declare-fun bm!635738 () Bool)

(assert (=> bm!635738 (= call!635743 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496484)) (Context!12537 (t!381115 (exprs!6768 lt!2496484))) (h!73685 s!7408)))))

(declare-fun b!7001671 () Bool)

(assert (=> b!7001671 (= e!4208566 (nullable!7032 (h!73686 (exprs!6768 lt!2496484))))))

(declare-fun b!7001672 () Bool)

(assert (=> b!7001672 (= e!4208567 (as set.empty (Set Context!12536)))))

(assert (= (and d!2182342 res!2856279) b!7001671))

(assert (= (and d!2182342 c!1299786) b!7001669))

(assert (= (and d!2182342 (not c!1299786)) b!7001668))

(assert (= (and b!7001668 c!1299785) b!7001670))

(assert (= (and b!7001668 (not c!1299785)) b!7001672))

(assert (= (or b!7001669 b!7001670) bm!635738))

(declare-fun m!7696170 () Bool)

(assert (=> b!7001669 m!7696170))

(declare-fun m!7696172 () Bool)

(assert (=> bm!635738 m!7696172))

(declare-fun m!7696174 () Bool)

(assert (=> b!7001671 m!7696174))

(assert (=> b!7001527 d!2182342))

(declare-fun bs!1864876 () Bool)

(declare-fun d!2182344 () Bool)

(assert (= bs!1864876 (and d!2182344 b!7001527)))

(declare-fun lambda!405561 () Int)

(assert (=> bs!1864876 (= lambda!405561 lambda!405494)))

(assert (=> d!2182344 true))

(assert (=> d!2182344 (= (derivationStepZipper!2752 lt!2496475 (h!73685 s!7408)) (flatMap!2258 lt!2496475 lambda!405561))))

(declare-fun bs!1864877 () Bool)

(assert (= bs!1864877 d!2182344))

(declare-fun m!7696176 () Bool)

(assert (=> bs!1864877 m!7696176))

(assert (=> b!7001527 d!2182344))

(declare-fun d!2182346 () Bool)

(declare-fun c!1299789 () Bool)

(assert (=> d!2182346 (= c!1299789 (isEmpty!39258 lt!2496492))))

(declare-fun e!4208568 () Bool)

(assert (=> d!2182346 (= (matchZipper!2812 lt!2496465 lt!2496492) e!4208568)))

(declare-fun b!7001675 () Bool)

(assert (=> b!7001675 (= e!4208568 (nullableZipper!2463 lt!2496465))))

(declare-fun b!7001676 () Bool)

(assert (=> b!7001676 (= e!4208568 (matchZipper!2812 (derivationStepZipper!2752 lt!2496465 (head!14143 lt!2496492)) (tail!13312 lt!2496492)))))

(assert (= (and d!2182346 c!1299789) b!7001675))

(assert (= (and d!2182346 (not c!1299789)) b!7001676))

(declare-fun m!7696178 () Bool)

(assert (=> d!2182346 m!7696178))

(declare-fun m!7696180 () Bool)

(assert (=> b!7001675 m!7696180))

(declare-fun m!7696182 () Bool)

(assert (=> b!7001676 m!7696182))

(assert (=> b!7001676 m!7696182))

(declare-fun m!7696184 () Bool)

(assert (=> b!7001676 m!7696184))

(declare-fun m!7696186 () Bool)

(assert (=> b!7001676 m!7696186))

(assert (=> b!7001676 m!7696184))

(assert (=> b!7001676 m!7696186))

(declare-fun m!7696188 () Bool)

(assert (=> b!7001676 m!7696188))

(assert (=> b!7001525 d!2182346))

(declare-fun e!4208571 () Bool)

(declare-fun d!2182348 () Bool)

(assert (=> d!2182348 (= (matchZipper!2812 (set.union lt!2496443 lt!2496494) lt!2496492) e!4208571)))

(declare-fun res!2856282 () Bool)

(assert (=> d!2182348 (=> res!2856282 e!4208571)))

(assert (=> d!2182348 (= res!2856282 (matchZipper!2812 lt!2496443 lt!2496492))))

(declare-fun lt!2496695 () Unit!161204)

(declare-fun choose!52499 ((Set Context!12536) (Set Context!12536) List!67361) Unit!161204)

(assert (=> d!2182348 (= lt!2496695 (choose!52499 lt!2496443 lt!2496494 lt!2496492))))

(assert (=> d!2182348 (= (lemmaZipperConcatMatchesSameAsBothZippers!1445 lt!2496443 lt!2496494 lt!2496492) lt!2496695)))

(declare-fun b!7001679 () Bool)

(assert (=> b!7001679 (= e!4208571 (matchZipper!2812 lt!2496494 lt!2496492))))

(assert (= (and d!2182348 (not res!2856282)) b!7001679))

(declare-fun m!7696190 () Bool)

(assert (=> d!2182348 m!7696190))

(assert (=> d!2182348 m!7695962))

(declare-fun m!7696192 () Bool)

(assert (=> d!2182348 m!7696192))

(assert (=> b!7001679 m!7695900))

(assert (=> b!7001525 d!2182348))

(declare-fun d!2182350 () Bool)

(declare-fun c!1299790 () Bool)

(assert (=> d!2182350 (= c!1299790 (isEmpty!39258 lt!2496492))))

(declare-fun e!4208572 () Bool)

(assert (=> d!2182350 (= (matchZipper!2812 lt!2496443 lt!2496492) e!4208572)))

(declare-fun b!7001680 () Bool)

(assert (=> b!7001680 (= e!4208572 (nullableZipper!2463 lt!2496443))))

(declare-fun b!7001681 () Bool)

(assert (=> b!7001681 (= e!4208572 (matchZipper!2812 (derivationStepZipper!2752 lt!2496443 (head!14143 lt!2496492)) (tail!13312 lt!2496492)))))

(assert (= (and d!2182350 c!1299790) b!7001680))

(assert (= (and d!2182350 (not c!1299790)) b!7001681))

(assert (=> d!2182350 m!7696178))

(declare-fun m!7696194 () Bool)

(assert (=> b!7001680 m!7696194))

(assert (=> b!7001681 m!7696182))

(assert (=> b!7001681 m!7696182))

(declare-fun m!7696196 () Bool)

(assert (=> b!7001681 m!7696196))

(assert (=> b!7001681 m!7696186))

(assert (=> b!7001681 m!7696196))

(assert (=> b!7001681 m!7696186))

(declare-fun m!7696198 () Bool)

(assert (=> b!7001681 m!7696198))

(assert (=> b!7001525 d!2182350))

(declare-fun d!2182352 () Bool)

(assert (=> d!2182352 (= (tail!13312 (_1!37248 lt!2496470)) (t!381114 (_1!37248 lt!2496470)))))

(assert (=> b!7001525 d!2182352))

(declare-fun d!2182354 () Bool)

(declare-fun c!1299791 () Bool)

(assert (=> d!2182354 (= c!1299791 (isEmpty!39258 (_1!37248 lt!2496470)))))

(declare-fun e!4208573 () Bool)

(assert (=> d!2182354 (= (matchZipper!2812 lt!2496442 (_1!37248 lt!2496470)) e!4208573)))

(declare-fun b!7001682 () Bool)

(assert (=> b!7001682 (= e!4208573 (nullableZipper!2463 lt!2496442))))

(declare-fun b!7001683 () Bool)

(assert (=> b!7001683 (= e!4208573 (matchZipper!2812 (derivationStepZipper!2752 lt!2496442 (head!14143 (_1!37248 lt!2496470))) (tail!13312 (_1!37248 lt!2496470))))))

(assert (= (and d!2182354 c!1299791) b!7001682))

(assert (= (and d!2182354 (not c!1299791)) b!7001683))

(assert (=> d!2182354 m!7695992))

(declare-fun m!7696200 () Bool)

(assert (=> b!7001682 m!7696200))

(declare-fun m!7696202 () Bool)

(assert (=> b!7001683 m!7696202))

(assert (=> b!7001683 m!7696202))

(declare-fun m!7696204 () Bool)

(assert (=> b!7001683 m!7696204))

(assert (=> b!7001683 m!7695968))

(assert (=> b!7001683 m!7696204))

(assert (=> b!7001683 m!7695968))

(declare-fun m!7696206 () Bool)

(assert (=> b!7001683 m!7696206))

(assert (=> b!7001525 d!2182354))

(declare-fun d!2182356 () Bool)

(assert (=> d!2182356 (= (isEmpty!39257 (exprs!6768 lt!2496457)) (is-Nil!67238 (exprs!6768 lt!2496457)))))

(assert (=> b!7001526 d!2182356))

(declare-fun lt!2496698 () List!67362)

(declare-fun b!7001695 () Bool)

(declare-fun e!4208578 () Bool)

(assert (=> b!7001695 (= e!4208578 (or (not (= (exprs!6768 ct2!306) Nil!67238)) (= lt!2496698 (exprs!6768 lt!2496457))))))

(declare-fun b!7001694 () Bool)

(declare-fun res!2856288 () Bool)

(assert (=> b!7001694 (=> (not res!2856288) (not e!4208578))))

(declare-fun size!40941 (List!67362) Int)

(assert (=> b!7001694 (= res!2856288 (= (size!40941 lt!2496698) (+ (size!40941 (exprs!6768 lt!2496457)) (size!40941 (exprs!6768 ct2!306)))))))

(declare-fun b!7001692 () Bool)

(declare-fun e!4208579 () List!67362)

(assert (=> b!7001692 (= e!4208579 (exprs!6768 ct2!306))))

(declare-fun d!2182358 () Bool)

(assert (=> d!2182358 e!4208578))

(declare-fun res!2856287 () Bool)

(assert (=> d!2182358 (=> (not res!2856287) (not e!4208578))))

(declare-fun content!13318 (List!67362) (Set Regex!17272))

(assert (=> d!2182358 (= res!2856287 (= (content!13318 lt!2496698) (set.union (content!13318 (exprs!6768 lt!2496457)) (content!13318 (exprs!6768 ct2!306)))))))

(assert (=> d!2182358 (= lt!2496698 e!4208579)))

(declare-fun c!1299794 () Bool)

(assert (=> d!2182358 (= c!1299794 (is-Nil!67238 (exprs!6768 lt!2496457)))))

(assert (=> d!2182358 (= (++!15246 (exprs!6768 lt!2496457) (exprs!6768 ct2!306)) lt!2496698)))

(declare-fun b!7001693 () Bool)

(assert (=> b!7001693 (= e!4208579 (Cons!67238 (h!73686 (exprs!6768 lt!2496457)) (++!15246 (t!381115 (exprs!6768 lt!2496457)) (exprs!6768 ct2!306))))))

(assert (= (and d!2182358 c!1299794) b!7001692))

(assert (= (and d!2182358 (not c!1299794)) b!7001693))

(assert (= (and d!2182358 res!2856287) b!7001694))

(assert (= (and b!7001694 res!2856288) b!7001695))

(declare-fun m!7696208 () Bool)

(assert (=> b!7001694 m!7696208))

(declare-fun m!7696210 () Bool)

(assert (=> b!7001694 m!7696210))

(declare-fun m!7696212 () Bool)

(assert (=> b!7001694 m!7696212))

(declare-fun m!7696214 () Bool)

(assert (=> d!2182358 m!7696214))

(declare-fun m!7696216 () Bool)

(assert (=> d!2182358 m!7696216))

(declare-fun m!7696218 () Bool)

(assert (=> d!2182358 m!7696218))

(declare-fun m!7696220 () Bool)

(assert (=> b!7001693 m!7696220))

(assert (=> b!7001524 d!2182358))

(assert (=> b!7001524 d!2182336))

(declare-fun d!2182360 () Bool)

(declare-fun e!4208582 () Bool)

(assert (=> d!2182360 e!4208582))

(declare-fun res!2856292 () Bool)

(assert (=> d!2182360 (=> (not res!2856292) (not e!4208582))))

(declare-fun lt!2496701 () Context!12536)

(declare-fun dynLambda!27007 (Int Context!12536) Context!12536)

(assert (=> d!2182360 (= res!2856292 (= lt!2496471 (dynLambda!27007 lambda!405492 lt!2496701)))))

(declare-fun choose!52500 ((Set Context!12536) Int Context!12536) Context!12536)

(assert (=> d!2182360 (= lt!2496701 (choose!52500 z1!570 lambda!405492 lt!2496471))))

(assert (=> d!2182360 (set.member lt!2496471 (map!15555 z1!570 lambda!405492))))

(assert (=> d!2182360 (= (mapPost2!127 z1!570 lambda!405492 lt!2496471) lt!2496701)))

(declare-fun b!7001699 () Bool)

(assert (=> b!7001699 (= e!4208582 (set.member lt!2496701 z1!570))))

(assert (= (and d!2182360 res!2856292) b!7001699))

(declare-fun b_lambda!263729 () Bool)

(assert (=> (not b_lambda!263729) (not d!2182360)))

(declare-fun m!7696222 () Bool)

(assert (=> d!2182360 m!7696222))

(declare-fun m!7696224 () Bool)

(assert (=> d!2182360 m!7696224))

(declare-fun m!7696226 () Bool)

(assert (=> d!2182360 m!7696226))

(declare-fun m!7696228 () Bool)

(assert (=> d!2182360 m!7696228))

(declare-fun m!7696230 () Bool)

(assert (=> b!7001699 m!7696230))

(assert (=> b!7001524 d!2182360))

(declare-fun bs!1864878 () Bool)

(declare-fun d!2182362 () Bool)

(assert (= bs!1864878 (and d!2182362 b!7001524)))

(declare-fun lambda!405564 () Int)

(assert (=> bs!1864878 (= lambda!405564 lambda!405493)))

(assert (=> d!2182362 (= (inv!86040 setElem!48120) (forall!16186 (exprs!6768 setElem!48120) lambda!405564))))

(declare-fun bs!1864879 () Bool)

(assert (= bs!1864879 d!2182362))

(declare-fun m!7696232 () Bool)

(assert (=> bs!1864879 m!7696232))

(assert (=> setNonEmpty!48120 d!2182362))

(declare-fun b!7001711 () Bool)

(declare-fun e!4208587 () Bool)

(declare-fun lt!2496704 () List!67361)

(assert (=> b!7001711 (= e!4208587 (or (not (= (_2!37248 lt!2496470) Nil!67237)) (= lt!2496704 (_1!37248 lt!2496470))))))

(declare-fun b!7001708 () Bool)

(declare-fun e!4208588 () List!67361)

(assert (=> b!7001708 (= e!4208588 (_2!37248 lt!2496470))))

(declare-fun b!7001709 () Bool)

(assert (=> b!7001709 (= e!4208588 (Cons!67237 (h!73685 (_1!37248 lt!2496470)) (++!15245 (t!381114 (_1!37248 lt!2496470)) (_2!37248 lt!2496470))))))

(declare-fun b!7001710 () Bool)

(declare-fun res!2856297 () Bool)

(assert (=> b!7001710 (=> (not res!2856297) (not e!4208587))))

(declare-fun size!40942 (List!67361) Int)

(assert (=> b!7001710 (= res!2856297 (= (size!40942 lt!2496704) (+ (size!40942 (_1!37248 lt!2496470)) (size!40942 (_2!37248 lt!2496470)))))))

(declare-fun d!2182364 () Bool)

(assert (=> d!2182364 e!4208587))

(declare-fun res!2856298 () Bool)

(assert (=> d!2182364 (=> (not res!2856298) (not e!4208587))))

(declare-fun content!13319 (List!67361) (Set C!34814))

(assert (=> d!2182364 (= res!2856298 (= (content!13319 lt!2496704) (set.union (content!13319 (_1!37248 lt!2496470)) (content!13319 (_2!37248 lt!2496470)))))))

(assert (=> d!2182364 (= lt!2496704 e!4208588)))

(declare-fun c!1299797 () Bool)

(assert (=> d!2182364 (= c!1299797 (is-Nil!67237 (_1!37248 lt!2496470)))))

(assert (=> d!2182364 (= (++!15245 (_1!37248 lt!2496470) (_2!37248 lt!2496470)) lt!2496704)))

(assert (= (and d!2182364 c!1299797) b!7001708))

(assert (= (and d!2182364 (not c!1299797)) b!7001709))

(assert (= (and d!2182364 res!2856298) b!7001710))

(assert (= (and b!7001710 res!2856297) b!7001711))

(declare-fun m!7696234 () Bool)

(assert (=> b!7001709 m!7696234))

(declare-fun m!7696236 () Bool)

(assert (=> b!7001710 m!7696236))

(declare-fun m!7696238 () Bool)

(assert (=> b!7001710 m!7696238))

(declare-fun m!7696240 () Bool)

(assert (=> b!7001710 m!7696240))

(declare-fun m!7696242 () Bool)

(assert (=> d!2182364 m!7696242))

(declare-fun m!7696244 () Bool)

(assert (=> d!2182364 m!7696244))

(declare-fun m!7696246 () Bool)

(assert (=> d!2182364 m!7696246))

(assert (=> b!7001512 d!2182364))

(declare-fun d!2182366 () Bool)

(declare-fun c!1299798 () Bool)

(assert (=> d!2182366 (= c!1299798 (isEmpty!39258 (t!381114 s!7408)))))

(declare-fun e!4208589 () Bool)

(assert (=> d!2182366 (= (matchZipper!2812 lt!2496469 (t!381114 s!7408)) e!4208589)))

(declare-fun b!7001712 () Bool)

(assert (=> b!7001712 (= e!4208589 (nullableZipper!2463 lt!2496469))))

(declare-fun b!7001713 () Bool)

(assert (=> b!7001713 (= e!4208589 (matchZipper!2812 (derivationStepZipper!2752 lt!2496469 (head!14143 (t!381114 s!7408))) (tail!13312 (t!381114 s!7408))))))

(assert (= (and d!2182366 c!1299798) b!7001712))

(assert (= (and d!2182366 (not c!1299798)) b!7001713))

(declare-fun m!7696248 () Bool)

(assert (=> d!2182366 m!7696248))

(declare-fun m!7696250 () Bool)

(assert (=> b!7001712 m!7696250))

(declare-fun m!7696252 () Bool)

(assert (=> b!7001713 m!7696252))

(assert (=> b!7001713 m!7696252))

(declare-fun m!7696254 () Bool)

(assert (=> b!7001713 m!7696254))

(declare-fun m!7696256 () Bool)

(assert (=> b!7001713 m!7696256))

(assert (=> b!7001713 m!7696254))

(assert (=> b!7001713 m!7696256))

(declare-fun m!7696258 () Bool)

(assert (=> b!7001713 m!7696258))

(assert (=> b!7001533 d!2182366))

(declare-fun d!2182368 () Bool)

(assert (=> d!2182368 (forall!16186 (++!15246 lt!2496495 (exprs!6768 ct2!306)) lambda!405493)))

(declare-fun lt!2496705 () Unit!161204)

(assert (=> d!2182368 (= lt!2496705 (choose!52496 lt!2496495 (exprs!6768 ct2!306) lambda!405493))))

(assert (=> d!2182368 (forall!16186 lt!2496495 lambda!405493)))

(assert (=> d!2182368 (= (lemmaConcatPreservesForall!608 lt!2496495 (exprs!6768 ct2!306) lambda!405493) lt!2496705)))

(declare-fun bs!1864880 () Bool)

(assert (= bs!1864880 d!2182368))

(assert (=> bs!1864880 m!7695868))

(assert (=> bs!1864880 m!7695868))

(declare-fun m!7696260 () Bool)

(assert (=> bs!1864880 m!7696260))

(declare-fun m!7696262 () Bool)

(assert (=> bs!1864880 m!7696262))

(declare-fun m!7696264 () Bool)

(assert (=> bs!1864880 m!7696264))

(assert (=> b!7001533 d!2182368))

(declare-fun d!2182370 () Bool)

(assert (=> d!2182370 (= (flatMap!2258 lt!2496482 lambda!405494) (choose!52497 lt!2496482 lambda!405494))))

(declare-fun bs!1864881 () Bool)

(assert (= bs!1864881 d!2182370))

(declare-fun m!7696266 () Bool)

(assert (=> bs!1864881 m!7696266))

(assert (=> b!7001532 d!2182370))

(declare-fun bs!1864882 () Bool)

(declare-fun d!2182372 () Bool)

(assert (= bs!1864882 (and d!2182372 b!7001527)))

(declare-fun lambda!405565 () Int)

(assert (=> bs!1864882 (= lambda!405565 lambda!405494)))

(declare-fun bs!1864883 () Bool)

(assert (= bs!1864883 (and d!2182372 d!2182344)))

(assert (=> bs!1864883 (= lambda!405565 lambda!405561)))

(assert (=> d!2182372 true))

(assert (=> d!2182372 (= (derivationStepZipper!2752 lt!2496482 (h!73685 s!7408)) (flatMap!2258 lt!2496482 lambda!405565))))

(declare-fun bs!1864884 () Bool)

(assert (= bs!1864884 d!2182372))

(declare-fun m!7696268 () Bool)

(assert (=> bs!1864884 m!7696268))

(assert (=> b!7001532 d!2182372))

(declare-fun d!2182374 () Bool)

(assert (=> d!2182374 (= (flatMap!2258 lt!2496482 lambda!405494) (dynLambda!27006 lambda!405494 lt!2496480))))

(declare-fun lt!2496706 () Unit!161204)

(assert (=> d!2182374 (= lt!2496706 (choose!52498 lt!2496482 lt!2496480 lambda!405494))))

(assert (=> d!2182374 (= lt!2496482 (set.insert lt!2496480 (as set.empty (Set Context!12536))))))

(assert (=> d!2182374 (= (lemmaFlatMapOnSingletonSet!1773 lt!2496482 lt!2496480 lambda!405494) lt!2496706)))

(declare-fun b_lambda!263731 () Bool)

(assert (=> (not b_lambda!263731) (not d!2182374)))

(declare-fun bs!1864885 () Bool)

(assert (= bs!1864885 d!2182374))

(assert (=> bs!1864885 m!7695908))

(declare-fun m!7696270 () Bool)

(assert (=> bs!1864885 m!7696270))

(declare-fun m!7696272 () Bool)

(assert (=> bs!1864885 m!7696272))

(assert (=> bs!1864885 m!7695910))

(assert (=> b!7001532 d!2182374))

(assert (=> b!7001532 d!2182368))

(declare-fun b!7001714 () Bool)

(declare-fun e!4208590 () (Set Context!12536))

(declare-fun e!4208592 () (Set Context!12536))

(assert (=> b!7001714 (= e!4208590 e!4208592)))

(declare-fun c!1299799 () Bool)

(assert (=> b!7001714 (= c!1299799 (is-Cons!67238 (exprs!6768 lt!2496480)))))

(declare-fun b!7001715 () Bool)

(declare-fun call!635744 () (Set Context!12536))

(assert (=> b!7001715 (= e!4208590 (set.union call!635744 (derivationStepZipperUp!1922 (Context!12537 (t!381115 (exprs!6768 lt!2496480))) (h!73685 s!7408))))))

(declare-fun d!2182376 () Bool)

(declare-fun c!1299800 () Bool)

(declare-fun e!4208591 () Bool)

(assert (=> d!2182376 (= c!1299800 e!4208591)))

(declare-fun res!2856299 () Bool)

(assert (=> d!2182376 (=> (not res!2856299) (not e!4208591))))

(assert (=> d!2182376 (= res!2856299 (is-Cons!67238 (exprs!6768 lt!2496480)))))

(assert (=> d!2182376 (= (derivationStepZipperUp!1922 lt!2496480 (h!73685 s!7408)) e!4208590)))

(declare-fun b!7001716 () Bool)

(assert (=> b!7001716 (= e!4208592 call!635744)))

(declare-fun bm!635739 () Bool)

(assert (=> bm!635739 (= call!635744 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496480)) (Context!12537 (t!381115 (exprs!6768 lt!2496480))) (h!73685 s!7408)))))

(declare-fun b!7001717 () Bool)

(assert (=> b!7001717 (= e!4208591 (nullable!7032 (h!73686 (exprs!6768 lt!2496480))))))

(declare-fun b!7001718 () Bool)

(assert (=> b!7001718 (= e!4208592 (as set.empty (Set Context!12536)))))

(assert (= (and d!2182376 res!2856299) b!7001717))

(assert (= (and d!2182376 c!1299800) b!7001715))

(assert (= (and d!2182376 (not c!1299800)) b!7001714))

(assert (= (and b!7001714 c!1299799) b!7001716))

(assert (= (and b!7001714 (not c!1299799)) b!7001718))

(assert (= (or b!7001715 b!7001716) bm!635739))

(declare-fun m!7696274 () Bool)

(assert (=> b!7001715 m!7696274))

(declare-fun m!7696276 () Bool)

(assert (=> bm!635739 m!7696276))

(declare-fun m!7696278 () Bool)

(assert (=> b!7001717 m!7696278))

(assert (=> b!7001532 d!2182376))

(declare-fun d!2182378 () Bool)

(assert (=> d!2182378 (= (flatMap!2258 lt!2496444 lambda!405494) (choose!52497 lt!2496444 lambda!405494))))

(declare-fun bs!1864886 () Bool)

(assert (= bs!1864886 d!2182378))

(declare-fun m!7696280 () Bool)

(assert (=> bs!1864886 m!7696280))

(assert (=> b!7001529 d!2182378))

(declare-fun b!7001719 () Bool)

(declare-fun e!4208593 () (Set Context!12536))

(declare-fun e!4208595 () (Set Context!12536))

(assert (=> b!7001719 (= e!4208593 e!4208595)))

(declare-fun c!1299801 () Bool)

(assert (=> b!7001719 (= c!1299801 (is-Cons!67238 (exprs!6768 lt!2496460)))))

(declare-fun b!7001720 () Bool)

(declare-fun call!635745 () (Set Context!12536))

(assert (=> b!7001720 (= e!4208593 (set.union call!635745 (derivationStepZipperUp!1922 (Context!12537 (t!381115 (exprs!6768 lt!2496460))) (h!73685 s!7408))))))

(declare-fun d!2182380 () Bool)

(declare-fun c!1299802 () Bool)

(declare-fun e!4208594 () Bool)

(assert (=> d!2182380 (= c!1299802 e!4208594)))

(declare-fun res!2856300 () Bool)

(assert (=> d!2182380 (=> (not res!2856300) (not e!4208594))))

(assert (=> d!2182380 (= res!2856300 (is-Cons!67238 (exprs!6768 lt!2496460)))))

(assert (=> d!2182380 (= (derivationStepZipperUp!1922 lt!2496460 (h!73685 s!7408)) e!4208593)))

(declare-fun b!7001721 () Bool)

(assert (=> b!7001721 (= e!4208595 call!635745)))

(declare-fun bm!635740 () Bool)

(assert (=> bm!635740 (= call!635745 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496460)) (Context!12537 (t!381115 (exprs!6768 lt!2496460))) (h!73685 s!7408)))))

(declare-fun b!7001722 () Bool)

(assert (=> b!7001722 (= e!4208594 (nullable!7032 (h!73686 (exprs!6768 lt!2496460))))))

(declare-fun b!7001723 () Bool)

(assert (=> b!7001723 (= e!4208595 (as set.empty (Set Context!12536)))))

(assert (= (and d!2182380 res!2856300) b!7001722))

(assert (= (and d!2182380 c!1299802) b!7001720))

(assert (= (and d!2182380 (not c!1299802)) b!7001719))

(assert (= (and b!7001719 c!1299801) b!7001721))

(assert (= (and b!7001719 (not c!1299801)) b!7001723))

(assert (= (or b!7001720 b!7001721) bm!635740))

(declare-fun m!7696282 () Bool)

(assert (=> b!7001720 m!7696282))

(declare-fun m!7696284 () Bool)

(assert (=> bm!635740 m!7696284))

(declare-fun m!7696286 () Bool)

(assert (=> b!7001722 m!7696286))

(assert (=> b!7001529 d!2182380))

(declare-fun d!2182382 () Bool)

(assert (=> d!2182382 (= (flatMap!2258 lt!2496444 lambda!405494) (dynLambda!27006 lambda!405494 lt!2496460))))

(declare-fun lt!2496707 () Unit!161204)

(assert (=> d!2182382 (= lt!2496707 (choose!52498 lt!2496444 lt!2496460 lambda!405494))))

(assert (=> d!2182382 (= lt!2496444 (set.insert lt!2496460 (as set.empty (Set Context!12536))))))

(assert (=> d!2182382 (= (lemmaFlatMapOnSingletonSet!1773 lt!2496444 lt!2496460 lambda!405494) lt!2496707)))

(declare-fun b_lambda!263733 () Bool)

(assert (=> (not b_lambda!263733) (not d!2182382)))

(declare-fun bs!1864887 () Bool)

(assert (= bs!1864887 d!2182382))

(assert (=> bs!1864887 m!7695870))

(declare-fun m!7696288 () Bool)

(assert (=> bs!1864887 m!7696288))

(declare-fun m!7696290 () Bool)

(assert (=> bs!1864887 m!7696290))

(assert (=> bs!1864887 m!7695982))

(assert (=> b!7001529 d!2182382))

(assert (=> b!7001518 d!2182368))

(declare-fun b!7001746 () Bool)

(declare-fun c!1299816 () Bool)

(declare-fun e!4208609 () Bool)

(assert (=> b!7001746 (= c!1299816 e!4208609)))

(declare-fun res!2856303 () Bool)

(assert (=> b!7001746 (=> (not res!2856303) (not e!4208609))))

(assert (=> b!7001746 (= res!2856303 (is-Concat!26117 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun e!4208613 () (Set Context!12536))

(declare-fun e!4208610 () (Set Context!12536))

(assert (=> b!7001746 (= e!4208613 e!4208610)))

(declare-fun c!1299813 () Bool)

(declare-fun call!635758 () (Set Context!12536))

(declare-fun c!1299814 () Bool)

(declare-fun bm!635753 () Bool)

(declare-fun call!635760 () List!67362)

(assert (=> bm!635753 (= call!635758 (derivationStepZipperDown!1990 (ite c!1299813 (regOne!35057 (h!73686 (exprs!6768 lt!2496457))) (ite c!1299816 (regTwo!35056 (h!73686 (exprs!6768 lt!2496457))) (ite c!1299814 (regOne!35056 (h!73686 (exprs!6768 lt!2496457))) (reg!17601 (h!73686 (exprs!6768 lt!2496457)))))) (ite (or c!1299813 c!1299816) lt!2496480 (Context!12537 call!635760)) (h!73685 s!7408)))))

(declare-fun d!2182384 () Bool)

(declare-fun c!1299815 () Bool)

(assert (=> d!2182384 (= c!1299815 (and (is-ElementMatch!17272 (h!73686 (exprs!6768 lt!2496457))) (= (c!1299758 (h!73686 (exprs!6768 lt!2496457))) (h!73685 s!7408))))))

(declare-fun e!4208611 () (Set Context!12536))

(assert (=> d!2182384 (= (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496457)) lt!2496480 (h!73685 s!7408)) e!4208611)))

(declare-fun bm!635754 () Bool)

(declare-fun call!635763 () (Set Context!12536))

(declare-fun call!635759 () (Set Context!12536))

(assert (=> bm!635754 (= call!635763 call!635759)))

(declare-fun b!7001747 () Bool)

(declare-fun e!4208612 () (Set Context!12536))

(assert (=> b!7001747 (= e!4208612 call!635763)))

(declare-fun b!7001748 () Bool)

(declare-fun e!4208608 () (Set Context!12536))

(assert (=> b!7001748 (= e!4208608 (as set.empty (Set Context!12536)))))

(declare-fun b!7001749 () Bool)

(declare-fun call!635762 () (Set Context!12536))

(assert (=> b!7001749 (= e!4208610 (set.union call!635762 call!635759))))

(declare-fun b!7001750 () Bool)

(assert (=> b!7001750 (= e!4208611 e!4208613)))

(assert (=> b!7001750 (= c!1299813 (is-Union!17272 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun b!7001751 () Bool)

(assert (=> b!7001751 (= e!4208611 (set.insert lt!2496480 (as set.empty (Set Context!12536))))))

(declare-fun bm!635755 () Bool)

(assert (=> bm!635755 (= call!635759 call!635758)))

(declare-fun b!7001752 () Bool)

(assert (=> b!7001752 (= e!4208609 (nullable!7032 (regOne!35056 (h!73686 (exprs!6768 lt!2496457)))))))

(declare-fun bm!635756 () Bool)

(declare-fun call!635761 () List!67362)

(assert (=> bm!635756 (= call!635760 call!635761)))

(declare-fun b!7001753 () Bool)

(assert (=> b!7001753 (= e!4208610 e!4208612)))

(assert (=> b!7001753 (= c!1299814 (is-Concat!26117 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun b!7001754 () Bool)

(declare-fun c!1299817 () Bool)

(assert (=> b!7001754 (= c!1299817 (is-Star!17272 (h!73686 (exprs!6768 lt!2496457))))))

(assert (=> b!7001754 (= e!4208612 e!4208608)))

(declare-fun bm!635757 () Bool)

(assert (=> bm!635757 (= call!635762 (derivationStepZipperDown!1990 (ite c!1299813 (regTwo!35057 (h!73686 (exprs!6768 lt!2496457))) (regOne!35056 (h!73686 (exprs!6768 lt!2496457)))) (ite c!1299813 lt!2496480 (Context!12537 call!635761)) (h!73685 s!7408)))))

(declare-fun b!7001755 () Bool)

(assert (=> b!7001755 (= e!4208613 (set.union call!635758 call!635762))))

(declare-fun b!7001756 () Bool)

(assert (=> b!7001756 (= e!4208608 call!635763)))

(declare-fun bm!635758 () Bool)

(declare-fun $colon$colon!2507 (List!67362 Regex!17272) List!67362)

(assert (=> bm!635758 (= call!635761 ($colon$colon!2507 (exprs!6768 lt!2496480) (ite (or c!1299816 c!1299814) (regTwo!35056 (h!73686 (exprs!6768 lt!2496457))) (h!73686 (exprs!6768 lt!2496457)))))))

(assert (= (and d!2182384 c!1299815) b!7001751))

(assert (= (and d!2182384 (not c!1299815)) b!7001750))

(assert (= (and b!7001750 c!1299813) b!7001755))

(assert (= (and b!7001750 (not c!1299813)) b!7001746))

(assert (= (and b!7001746 res!2856303) b!7001752))

(assert (= (and b!7001746 c!1299816) b!7001749))

(assert (= (and b!7001746 (not c!1299816)) b!7001753))

(assert (= (and b!7001753 c!1299814) b!7001747))

(assert (= (and b!7001753 (not c!1299814)) b!7001754))

(assert (= (and b!7001754 c!1299817) b!7001756))

(assert (= (and b!7001754 (not c!1299817)) b!7001748))

(assert (= (or b!7001747 b!7001756) bm!635756))

(assert (= (or b!7001747 b!7001756) bm!635754))

(assert (= (or b!7001749 bm!635754) bm!635755))

(assert (= (or b!7001749 bm!635756) bm!635758))

(assert (= (or b!7001755 bm!635755) bm!635753))

(assert (= (or b!7001755 b!7001749) bm!635757))

(declare-fun m!7696292 () Bool)

(assert (=> bm!635757 m!7696292))

(declare-fun m!7696294 () Bool)

(assert (=> bm!635753 m!7696294))

(declare-fun m!7696296 () Bool)

(assert (=> bm!635758 m!7696296))

(assert (=> b!7001751 m!7695910))

(declare-fun m!7696298 () Bool)

(assert (=> b!7001752 m!7696298))

(assert (=> b!7001518 d!2182384))

(assert (=> b!7001518 d!2182376))

(declare-fun b!7001760 () Bool)

(declare-fun e!4208614 () Bool)

(declare-fun lt!2496708 () List!67362)

(assert (=> b!7001760 (= e!4208614 (or (not (= (exprs!6768 ct2!306) Nil!67238)) (= lt!2496708 lt!2496495)))))

(declare-fun b!7001759 () Bool)

(declare-fun res!2856305 () Bool)

(assert (=> b!7001759 (=> (not res!2856305) (not e!4208614))))

(assert (=> b!7001759 (= res!2856305 (= (size!40941 lt!2496708) (+ (size!40941 lt!2496495) (size!40941 (exprs!6768 ct2!306)))))))

(declare-fun b!7001757 () Bool)

(declare-fun e!4208615 () List!67362)

(assert (=> b!7001757 (= e!4208615 (exprs!6768 ct2!306))))

(declare-fun d!2182386 () Bool)

(assert (=> d!2182386 e!4208614))

(declare-fun res!2856304 () Bool)

(assert (=> d!2182386 (=> (not res!2856304) (not e!4208614))))

(assert (=> d!2182386 (= res!2856304 (= (content!13318 lt!2496708) (set.union (content!13318 lt!2496495) (content!13318 (exprs!6768 ct2!306)))))))

(assert (=> d!2182386 (= lt!2496708 e!4208615)))

(declare-fun c!1299818 () Bool)

(assert (=> d!2182386 (= c!1299818 (is-Nil!67238 lt!2496495))))

(assert (=> d!2182386 (= (++!15246 lt!2496495 (exprs!6768 ct2!306)) lt!2496708)))

(declare-fun b!7001758 () Bool)

(assert (=> b!7001758 (= e!4208615 (Cons!67238 (h!73686 lt!2496495) (++!15246 (t!381115 lt!2496495) (exprs!6768 ct2!306))))))

(assert (= (and d!2182386 c!1299818) b!7001757))

(assert (= (and d!2182386 (not c!1299818)) b!7001758))

(assert (= (and d!2182386 res!2856304) b!7001759))

(assert (= (and b!7001759 res!2856305) b!7001760))

(declare-fun m!7696300 () Bool)

(assert (=> b!7001759 m!7696300))

(declare-fun m!7696302 () Bool)

(assert (=> b!7001759 m!7696302))

(assert (=> b!7001759 m!7696212))

(declare-fun m!7696304 () Bool)

(assert (=> d!2182386 m!7696304))

(declare-fun m!7696306 () Bool)

(assert (=> d!2182386 m!7696306))

(assert (=> d!2182386 m!7696218))

(declare-fun m!7696308 () Bool)

(assert (=> b!7001758 m!7696308))

(assert (=> b!7001518 d!2182386))

(declare-fun d!2182388 () Bool)

(declare-fun lt!2496711 () Int)

(assert (=> d!2182388 (>= lt!2496711 0)))

(declare-fun e!4208618 () Int)

(assert (=> d!2182388 (= lt!2496711 e!4208618)))

(declare-fun c!1299821 () Bool)

(assert (=> d!2182388 (= c!1299821 (is-Cons!67239 (Cons!67239 lt!2496460 Nil!67239)))))

(assert (=> d!2182388 (= (zipperDepthTotal!493 (Cons!67239 lt!2496460 Nil!67239)) lt!2496711)))

(declare-fun b!7001765 () Bool)

(assert (=> b!7001765 (= e!4208618 (+ (contextDepthTotal!465 (h!73687 (Cons!67239 lt!2496460 Nil!67239))) (zipperDepthTotal!493 (t!381116 (Cons!67239 lt!2496460 Nil!67239)))))))

(declare-fun b!7001766 () Bool)

(assert (=> b!7001766 (= e!4208618 0)))

(assert (= (and d!2182388 c!1299821) b!7001765))

(assert (= (and d!2182388 (not c!1299821)) b!7001766))

(declare-fun m!7696310 () Bool)

(assert (=> b!7001765 m!7696310))

(declare-fun m!7696312 () Bool)

(assert (=> b!7001765 m!7696312))

(assert (=> b!7001539 d!2182388))

(declare-fun d!2182390 () Bool)

(declare-fun isEmpty!39261 (Option!16777) Bool)

(assert (=> d!2182390 (= (isDefined!13478 lt!2496448) (not (isEmpty!39261 lt!2496448)))))

(declare-fun bs!1864888 () Bool)

(assert (= bs!1864888 d!2182390))

(declare-fun m!7696314 () Bool)

(assert (=> bs!1864888 m!7696314))

(assert (=> b!7001516 d!2182390))

(declare-fun b!7001785 () Bool)

(declare-fun e!4208633 () Option!16777)

(declare-fun e!4208630 () Option!16777)

(assert (=> b!7001785 (= e!4208633 e!4208630)))

(declare-fun c!1299827 () Bool)

(assert (=> b!7001785 (= c!1299827 (is-Nil!67237 s!7408))))

(declare-fun b!7001786 () Bool)

(declare-fun e!4208632 () Bool)

(assert (=> b!7001786 (= e!4208632 (matchZipper!2812 lt!2496473 s!7408))))

(declare-fun b!7001787 () Bool)

(assert (=> b!7001787 (= e!4208633 (Some!16776 (tuple2!67891 Nil!67237 s!7408)))))

(declare-fun b!7001788 () Bool)

(declare-fun res!2856320 () Bool)

(declare-fun e!4208629 () Bool)

(assert (=> b!7001788 (=> (not res!2856320) (not e!4208629))))

(declare-fun lt!2496719 () Option!16777)

(assert (=> b!7001788 (= res!2856320 (matchZipper!2812 lt!2496444 (_1!37248 (get!23578 lt!2496719))))))

(declare-fun b!7001789 () Bool)

(declare-fun res!2856318 () Bool)

(assert (=> b!7001789 (=> (not res!2856318) (not e!4208629))))

(assert (=> b!7001789 (= res!2856318 (matchZipper!2812 lt!2496473 (_2!37248 (get!23578 lt!2496719))))))

(declare-fun b!7001790 () Bool)

(declare-fun lt!2496718 () Unit!161204)

(declare-fun lt!2496720 () Unit!161204)

(assert (=> b!7001790 (= lt!2496718 lt!2496720)))

(assert (=> b!7001790 (= (++!15245 (++!15245 Nil!67237 (Cons!67237 (h!73685 s!7408) Nil!67237)) (t!381114 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2883 (List!67361 C!34814 List!67361 List!67361) Unit!161204)

(assert (=> b!7001790 (= lt!2496720 (lemmaMoveElementToOtherListKeepsConcatEq!2883 Nil!67237 (h!73685 s!7408) (t!381114 s!7408) s!7408))))

(assert (=> b!7001790 (= e!4208630 (findConcatSeparationZippers!293 lt!2496444 lt!2496473 (++!15245 Nil!67237 (Cons!67237 (h!73685 s!7408) Nil!67237)) (t!381114 s!7408) s!7408))))

(declare-fun b!7001791 () Bool)

(assert (=> b!7001791 (= e!4208630 None!16776)))

(declare-fun b!7001792 () Bool)

(declare-fun e!4208631 () Bool)

(assert (=> b!7001792 (= e!4208631 (not (isDefined!13478 lt!2496719)))))

(declare-fun b!7001793 () Bool)

(assert (=> b!7001793 (= e!4208629 (= (++!15245 (_1!37248 (get!23578 lt!2496719)) (_2!37248 (get!23578 lt!2496719))) s!7408))))

(declare-fun d!2182392 () Bool)

(assert (=> d!2182392 e!4208631))

(declare-fun res!2856319 () Bool)

(assert (=> d!2182392 (=> res!2856319 e!4208631)))

(assert (=> d!2182392 (= res!2856319 e!4208629)))

(declare-fun res!2856316 () Bool)

(assert (=> d!2182392 (=> (not res!2856316) (not e!4208629))))

(assert (=> d!2182392 (= res!2856316 (isDefined!13478 lt!2496719))))

(assert (=> d!2182392 (= lt!2496719 e!4208633)))

(declare-fun c!1299826 () Bool)

(assert (=> d!2182392 (= c!1299826 e!4208632)))

(declare-fun res!2856317 () Bool)

(assert (=> d!2182392 (=> (not res!2856317) (not e!4208632))))

(assert (=> d!2182392 (= res!2856317 (matchZipper!2812 lt!2496444 Nil!67237))))

(assert (=> d!2182392 (= (++!15245 Nil!67237 s!7408) s!7408)))

(assert (=> d!2182392 (= (findConcatSeparationZippers!293 lt!2496444 lt!2496473 Nil!67237 s!7408 s!7408) lt!2496719)))

(assert (= (and d!2182392 res!2856317) b!7001786))

(assert (= (and d!2182392 c!1299826) b!7001787))

(assert (= (and d!2182392 (not c!1299826)) b!7001785))

(assert (= (and b!7001785 c!1299827) b!7001791))

(assert (= (and b!7001785 (not c!1299827)) b!7001790))

(assert (= (and d!2182392 res!2856316) b!7001788))

(assert (= (and b!7001788 res!2856320) b!7001789))

(assert (= (and b!7001789 res!2856318) b!7001793))

(assert (= (and d!2182392 (not res!2856319)) b!7001792))

(declare-fun m!7696316 () Bool)

(assert (=> d!2182392 m!7696316))

(declare-fun m!7696318 () Bool)

(assert (=> d!2182392 m!7696318))

(declare-fun m!7696320 () Bool)

(assert (=> d!2182392 m!7696320))

(declare-fun m!7696322 () Bool)

(assert (=> b!7001790 m!7696322))

(assert (=> b!7001790 m!7696322))

(declare-fun m!7696324 () Bool)

(assert (=> b!7001790 m!7696324))

(declare-fun m!7696326 () Bool)

(assert (=> b!7001790 m!7696326))

(assert (=> b!7001790 m!7696322))

(declare-fun m!7696328 () Bool)

(assert (=> b!7001790 m!7696328))

(declare-fun m!7696330 () Bool)

(assert (=> b!7001793 m!7696330))

(declare-fun m!7696332 () Bool)

(assert (=> b!7001793 m!7696332))

(assert (=> b!7001788 m!7696330))

(declare-fun m!7696334 () Bool)

(assert (=> b!7001788 m!7696334))

(declare-fun m!7696336 () Bool)

(assert (=> b!7001786 m!7696336))

(assert (=> b!7001789 m!7696330))

(declare-fun m!7696338 () Bool)

(assert (=> b!7001789 m!7696338))

(assert (=> b!7001792 m!7696316))

(assert (=> b!7001516 d!2182392))

(declare-fun d!2182394 () Bool)

(assert (=> d!2182394 (= (get!23578 lt!2496448) (v!53054 lt!2496448))))

(assert (=> b!7001516 d!2182394))

(declare-fun d!2182396 () Bool)

(declare-fun c!1299828 () Bool)

(assert (=> d!2182396 (= c!1299828 (isEmpty!39258 (_1!37248 lt!2496470)))))

(declare-fun e!4208634 () Bool)

(assert (=> d!2182396 (= (matchZipper!2812 lt!2496444 (_1!37248 lt!2496470)) e!4208634)))

(declare-fun b!7001794 () Bool)

(assert (=> b!7001794 (= e!4208634 (nullableZipper!2463 lt!2496444))))

(declare-fun b!7001795 () Bool)

(assert (=> b!7001795 (= e!4208634 (matchZipper!2812 (derivationStepZipper!2752 lt!2496444 (head!14143 (_1!37248 lt!2496470))) (tail!13312 (_1!37248 lt!2496470))))))

(assert (= (and d!2182396 c!1299828) b!7001794))

(assert (= (and d!2182396 (not c!1299828)) b!7001795))

(assert (=> d!2182396 m!7695992))

(declare-fun m!7696340 () Bool)

(assert (=> b!7001794 m!7696340))

(assert (=> b!7001795 m!7696202))

(assert (=> b!7001795 m!7696202))

(declare-fun m!7696342 () Bool)

(assert (=> b!7001795 m!7696342))

(assert (=> b!7001795 m!7695968))

(assert (=> b!7001795 m!7696342))

(assert (=> b!7001795 m!7695968))

(declare-fun m!7696344 () Bool)

(assert (=> b!7001795 m!7696344))

(assert (=> b!7001516 d!2182396))

(declare-fun d!2182398 () Bool)

(assert (=> d!2182398 (isDefined!13478 (findConcatSeparationZippers!293 lt!2496444 (set.insert ct2!306 (as set.empty (Set Context!12536))) Nil!67237 s!7408 s!7408))))

(declare-fun lt!2496723 () Unit!161204)

(declare-fun choose!52501 ((Set Context!12536) Context!12536 List!67361) Unit!161204)

(assert (=> d!2182398 (= lt!2496723 (choose!52501 lt!2496444 ct2!306 s!7408))))

(assert (=> d!2182398 (matchZipper!2812 (appendTo!393 lt!2496444 ct2!306) s!7408)))

(assert (=> d!2182398 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!293 lt!2496444 ct2!306 s!7408) lt!2496723)))

(declare-fun bs!1864889 () Bool)

(assert (= bs!1864889 d!2182398))

(assert (=> bs!1864889 m!7695888))

(declare-fun m!7696346 () Bool)

(assert (=> bs!1864889 m!7696346))

(declare-fun m!7696348 () Bool)

(assert (=> bs!1864889 m!7696348))

(assert (=> bs!1864889 m!7696346))

(declare-fun m!7696350 () Bool)

(assert (=> bs!1864889 m!7696350))

(declare-fun m!7696352 () Bool)

(assert (=> bs!1864889 m!7696352))

(assert (=> bs!1864889 m!7695888))

(assert (=> bs!1864889 m!7696350))

(declare-fun m!7696354 () Bool)

(assert (=> bs!1864889 m!7696354))

(assert (=> b!7001516 d!2182398))

(assert (=> b!7001537 d!2182380))

(assert (=> b!7001537 d!2182378))

(declare-fun d!2182400 () Bool)

(declare-fun e!4208637 () Bool)

(assert (=> d!2182400 e!4208637))

(declare-fun res!2856323 () Bool)

(assert (=> d!2182400 (=> (not res!2856323) (not e!4208637))))

(declare-fun lt!2496726 () List!67363)

(declare-fun noDuplicate!2545 (List!67363) Bool)

(assert (=> d!2182400 (= res!2856323 (noDuplicate!2545 lt!2496726))))

(declare-fun choose!52502 ((Set Context!12536)) List!67363)

(assert (=> d!2182400 (= lt!2496726 (choose!52502 z1!570))))

(assert (=> d!2182400 (= (toList!10632 z1!570) lt!2496726)))

(declare-fun b!7001798 () Bool)

(declare-fun content!13320 (List!67363) (Set Context!12536))

(assert (=> b!7001798 (= e!4208637 (= (content!13320 lt!2496726) z1!570))))

(assert (= (and d!2182400 res!2856323) b!7001798))

(declare-fun m!7696356 () Bool)

(assert (=> d!2182400 m!7696356))

(declare-fun m!7696358 () Bool)

(assert (=> d!2182400 m!7696358))

(declare-fun m!7696360 () Bool)

(assert (=> b!7001798 m!7696360))

(assert (=> b!7001537 d!2182400))

(declare-fun d!2182402 () Bool)

(declare-fun lt!2496729 () Int)

(assert (=> d!2182402 (>= lt!2496729 0)))

(declare-fun e!4208640 () Int)

(assert (=> d!2182402 (= lt!2496729 e!4208640)))

(declare-fun c!1299832 () Bool)

(assert (=> d!2182402 (= c!1299832 (is-Cons!67238 (exprs!6768 lt!2496460)))))

(assert (=> d!2182402 (= (contextDepthTotal!465 lt!2496460) lt!2496729)))

(declare-fun b!7001803 () Bool)

(declare-fun regexDepthTotal!283 (Regex!17272) Int)

(assert (=> b!7001803 (= e!4208640 (+ (regexDepthTotal!283 (h!73686 (exprs!6768 lt!2496460))) (contextDepthTotal!465 (Context!12537 (t!381115 (exprs!6768 lt!2496460))))))))

(declare-fun b!7001804 () Bool)

(assert (=> b!7001804 (= e!4208640 1)))

(assert (= (and d!2182402 c!1299832) b!7001803))

(assert (= (and d!2182402 (not c!1299832)) b!7001804))

(declare-fun m!7696362 () Bool)

(assert (=> b!7001803 m!7696362))

(declare-fun m!7696364 () Bool)

(assert (=> b!7001803 m!7696364))

(assert (=> b!7001537 d!2182402))

(declare-fun d!2182404 () Bool)

(assert (=> d!2182404 (<= (contextDepthTotal!465 lt!2496457) (zipperDepthTotal!493 lt!2496440))))

(declare-fun lt!2496732 () Unit!161204)

(declare-fun choose!52503 (List!67363 Context!12536) Unit!161204)

(assert (=> d!2182404 (= lt!2496732 (choose!52503 lt!2496440 lt!2496457))))

(declare-fun contains!20425 (List!67363 Context!12536) Bool)

(assert (=> d!2182404 (contains!20425 lt!2496440 lt!2496457)))

(assert (=> d!2182404 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!33 lt!2496440 lt!2496457) lt!2496732)))

(declare-fun bs!1864890 () Bool)

(assert (= bs!1864890 d!2182404))

(assert (=> bs!1864890 m!7695988))

(assert (=> bs!1864890 m!7695972))

(declare-fun m!7696366 () Bool)

(assert (=> bs!1864890 m!7696366))

(declare-fun m!7696368 () Bool)

(assert (=> bs!1864890 m!7696368))

(assert (=> b!7001537 d!2182404))

(assert (=> b!7001537 d!2182386))

(declare-fun d!2182406 () Bool)

(declare-fun lt!2496733 () Int)

(assert (=> d!2182406 (>= lt!2496733 0)))

(declare-fun e!4208641 () Int)

(assert (=> d!2182406 (= lt!2496733 e!4208641)))

(declare-fun c!1299834 () Bool)

(assert (=> d!2182406 (= c!1299834 (is-Cons!67239 lt!2496440))))

(assert (=> d!2182406 (= (zipperDepthTotal!493 lt!2496440) lt!2496733)))

(declare-fun b!7001805 () Bool)

(assert (=> b!7001805 (= e!4208641 (+ (contextDepthTotal!465 (h!73687 lt!2496440)) (zipperDepthTotal!493 (t!381116 lt!2496440))))))

(declare-fun b!7001806 () Bool)

(assert (=> b!7001806 (= e!4208641 0)))

(assert (= (and d!2182406 c!1299834) b!7001805))

(assert (= (and d!2182406 (not c!1299834)) b!7001806))

(declare-fun m!7696370 () Bool)

(assert (=> b!7001805 m!7696370))

(declare-fun m!7696372 () Bool)

(assert (=> b!7001805 m!7696372))

(assert (=> b!7001537 d!2182406))

(assert (=> b!7001537 d!2182368))

(declare-fun d!2182408 () Bool)

(assert (=> d!2182408 (= (map!15555 lt!2496444 lambda!405492) (set.insert (dynLambda!27007 lambda!405492 lt!2496460) (as set.empty (Set Context!12536))))))

(declare-fun lt!2496736 () Unit!161204)

(declare-fun choose!52504 ((Set Context!12536) Context!12536 Int) Unit!161204)

(assert (=> d!2182408 (= lt!2496736 (choose!52504 lt!2496444 lt!2496460 lambda!405492))))

(assert (=> d!2182408 (= lt!2496444 (set.insert lt!2496460 (as set.empty (Set Context!12536))))))

(assert (=> d!2182408 (= (lemmaMapOnSingletonSet!337 lt!2496444 lt!2496460 lambda!405492) lt!2496736)))

(declare-fun b_lambda!263735 () Bool)

(assert (=> (not b_lambda!263735) (not d!2182408)))

(declare-fun bs!1864891 () Bool)

(assert (= bs!1864891 d!2182408))

(declare-fun m!7696374 () Bool)

(assert (=> bs!1864891 m!7696374))

(assert (=> bs!1864891 m!7695978))

(declare-fun m!7696376 () Bool)

(assert (=> bs!1864891 m!7696376))

(assert (=> bs!1864891 m!7696374))

(declare-fun m!7696378 () Bool)

(assert (=> bs!1864891 m!7696378))

(assert (=> bs!1864891 m!7695982))

(assert (=> b!7001537 d!2182408))

(assert (=> b!7001537 d!2182382))

(declare-fun d!2182410 () Bool)

(declare-fun choose!52505 ((Set Context!12536) Int) (Set Context!12536))

(assert (=> d!2182410 (= (map!15555 lt!2496444 lambda!405492) (choose!52505 lt!2496444 lambda!405492))))

(declare-fun bs!1864892 () Bool)

(assert (= bs!1864892 d!2182410))

(declare-fun m!7696380 () Bool)

(assert (=> bs!1864892 m!7696380))

(assert (=> b!7001537 d!2182410))

(declare-fun d!2182412 () Bool)

(declare-fun lt!2496737 () Int)

(assert (=> d!2182412 (>= lt!2496737 0)))

(declare-fun e!4208642 () Int)

(assert (=> d!2182412 (= lt!2496737 e!4208642)))

(declare-fun c!1299835 () Bool)

(assert (=> d!2182412 (= c!1299835 (is-Cons!67238 (exprs!6768 lt!2496457)))))

(assert (=> d!2182412 (= (contextDepthTotal!465 lt!2496457) lt!2496737)))

(declare-fun b!7001807 () Bool)

(assert (=> b!7001807 (= e!4208642 (+ (regexDepthTotal!283 (h!73686 (exprs!6768 lt!2496457))) (contextDepthTotal!465 (Context!12537 (t!381115 (exprs!6768 lt!2496457))))))))

(declare-fun b!7001808 () Bool)

(assert (=> b!7001808 (= e!4208642 1)))

(assert (= (and d!2182412 c!1299835) b!7001807))

(assert (= (and d!2182412 (not c!1299835)) b!7001808))

(declare-fun m!7696382 () Bool)

(assert (=> b!7001807 m!7696382))

(declare-fun m!7696384 () Bool)

(assert (=> b!7001807 m!7696384))

(assert (=> b!7001537 d!2182412))

(declare-fun d!2182414 () Bool)

(declare-fun nullableFct!2660 (Regex!17272) Bool)

(assert (=> d!2182414 (= (nullable!7032 (h!73686 (exprs!6768 lt!2496457))) (nullableFct!2660 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun bs!1864893 () Bool)

(assert (= bs!1864893 d!2182414))

(declare-fun m!7696386 () Bool)

(assert (=> bs!1864893 m!7696386))

(assert (=> b!7001538 d!2182414))

(declare-fun d!2182416 () Bool)

(assert (=> d!2182416 (= (tail!13313 (exprs!6768 lt!2496457)) (t!381115 (exprs!6768 lt!2496457)))))

(assert (=> b!7001538 d!2182416))

(declare-fun d!2182418 () Bool)

(declare-fun c!1299836 () Bool)

(assert (=> d!2182418 (= c!1299836 (isEmpty!39258 lt!2496492))))

(declare-fun e!4208643 () Bool)

(assert (=> d!2182418 (= (matchZipper!2812 lt!2496494 lt!2496492) e!4208643)))

(declare-fun b!7001809 () Bool)

(assert (=> b!7001809 (= e!4208643 (nullableZipper!2463 lt!2496494))))

(declare-fun b!7001810 () Bool)

(assert (=> b!7001810 (= e!4208643 (matchZipper!2812 (derivationStepZipper!2752 lt!2496494 (head!14143 lt!2496492)) (tail!13312 lt!2496492)))))

(assert (= (and d!2182418 c!1299836) b!7001809))

(assert (= (and d!2182418 (not c!1299836)) b!7001810))

(assert (=> d!2182418 m!7696178))

(declare-fun m!7696388 () Bool)

(assert (=> b!7001809 m!7696388))

(assert (=> b!7001810 m!7696182))

(assert (=> b!7001810 m!7696182))

(declare-fun m!7696390 () Bool)

(assert (=> b!7001810 m!7696390))

(assert (=> b!7001810 m!7696186))

(assert (=> b!7001810 m!7696390))

(assert (=> b!7001810 m!7696186))

(declare-fun m!7696392 () Bool)

(assert (=> b!7001810 m!7696392))

(assert (=> b!7001515 d!2182418))

(assert (=> b!7001513 d!2182366))

(assert (=> b!7001513 d!2182368))

(declare-fun d!2182420 () Bool)

(declare-fun c!1299837 () Bool)

(assert (=> d!2182420 (= c!1299837 (isEmpty!39258 s!7408))))

(declare-fun e!4208644 () Bool)

(assert (=> d!2182420 (= (matchZipper!2812 lt!2496482 s!7408) e!4208644)))

(declare-fun b!7001811 () Bool)

(assert (=> b!7001811 (= e!4208644 (nullableZipper!2463 lt!2496482))))

(declare-fun b!7001812 () Bool)

(assert (=> b!7001812 (= e!4208644 (matchZipper!2812 (derivationStepZipper!2752 lt!2496482 (head!14143 s!7408)) (tail!13312 s!7408)))))

(assert (= (and d!2182420 c!1299837) b!7001811))

(assert (= (and d!2182420 (not c!1299837)) b!7001812))

(declare-fun m!7696394 () Bool)

(assert (=> d!2182420 m!7696394))

(declare-fun m!7696396 () Bool)

(assert (=> b!7001811 m!7696396))

(declare-fun m!7696398 () Bool)

(assert (=> b!7001812 m!7696398))

(assert (=> b!7001812 m!7696398))

(declare-fun m!7696400 () Bool)

(assert (=> b!7001812 m!7696400))

(declare-fun m!7696402 () Bool)

(assert (=> b!7001812 m!7696402))

(assert (=> b!7001812 m!7696400))

(assert (=> b!7001812 m!7696402))

(declare-fun m!7696404 () Bool)

(assert (=> b!7001812 m!7696404))

(assert (=> b!7001514 d!2182420))

(assert (=> b!7001514 d!2182368))

(declare-fun bs!1864894 () Bool)

(declare-fun d!2182422 () Bool)

(assert (= bs!1864894 (and d!2182422 b!7001527)))

(declare-fun lambda!405566 () Int)

(assert (=> bs!1864894 (= lambda!405566 lambda!405494)))

(declare-fun bs!1864895 () Bool)

(assert (= bs!1864895 (and d!2182422 d!2182344)))

(assert (=> bs!1864895 (= lambda!405566 lambda!405561)))

(declare-fun bs!1864896 () Bool)

(assert (= bs!1864896 (and d!2182422 d!2182372)))

(assert (=> bs!1864896 (= lambda!405566 lambda!405565)))

(assert (=> d!2182422 true))

(assert (=> d!2182422 (= (derivationStepZipper!2752 lt!2496442 (h!73685 s!7408)) (flatMap!2258 lt!2496442 lambda!405566))))

(declare-fun bs!1864897 () Bool)

(assert (= bs!1864897 d!2182422))

(declare-fun m!7696406 () Bool)

(assert (=> bs!1864897 m!7696406))

(assert (=> b!7001535 d!2182422))

(declare-fun b!7001813 () Bool)

(declare-fun e!4208645 () (Set Context!12536))

(declare-fun e!4208647 () (Set Context!12536))

(assert (=> b!7001813 (= e!4208645 e!4208647)))

(declare-fun c!1299838 () Bool)

(assert (=> b!7001813 (= c!1299838 (is-Cons!67238 (exprs!6768 lt!2496457)))))

(declare-fun b!7001814 () Bool)

(declare-fun call!635764 () (Set Context!12536))

(assert (=> b!7001814 (= e!4208645 (set.union call!635764 (derivationStepZipperUp!1922 (Context!12537 (t!381115 (exprs!6768 lt!2496457))) (h!73685 s!7408))))))

(declare-fun d!2182424 () Bool)

(declare-fun c!1299839 () Bool)

(declare-fun e!4208646 () Bool)

(assert (=> d!2182424 (= c!1299839 e!4208646)))

(declare-fun res!2856324 () Bool)

(assert (=> d!2182424 (=> (not res!2856324) (not e!4208646))))

(assert (=> d!2182424 (= res!2856324 (is-Cons!67238 (exprs!6768 lt!2496457)))))

(assert (=> d!2182424 (= (derivationStepZipperUp!1922 lt!2496457 (h!73685 s!7408)) e!4208645)))

(declare-fun b!7001815 () Bool)

(assert (=> b!7001815 (= e!4208647 call!635764)))

(declare-fun bm!635759 () Bool)

(assert (=> bm!635759 (= call!635764 (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496457)) (Context!12537 (t!381115 (exprs!6768 lt!2496457))) (h!73685 s!7408)))))

(declare-fun b!7001816 () Bool)

(assert (=> b!7001816 (= e!4208646 (nullable!7032 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun b!7001817 () Bool)

(assert (=> b!7001817 (= e!4208647 (as set.empty (Set Context!12536)))))

(assert (= (and d!2182424 res!2856324) b!7001816))

(assert (= (and d!2182424 c!1299839) b!7001814))

(assert (= (and d!2182424 (not c!1299839)) b!7001813))

(assert (= (and b!7001813 c!1299838) b!7001815))

(assert (= (and b!7001813 (not c!1299838)) b!7001817))

(assert (= (or b!7001814 b!7001815) bm!635759))

(declare-fun m!7696408 () Bool)

(assert (=> b!7001814 m!7696408))

(declare-fun m!7696410 () Bool)

(assert (=> bm!635759 m!7696410))

(assert (=> b!7001816 m!7695902))

(assert (=> b!7001535 d!2182424))

(declare-fun d!2182426 () Bool)

(assert (=> d!2182426 (= (flatMap!2258 lt!2496442 lambda!405494) (choose!52497 lt!2496442 lambda!405494))))

(declare-fun bs!1864898 () Bool)

(assert (= bs!1864898 d!2182426))

(declare-fun m!7696412 () Bool)

(assert (=> bs!1864898 m!7696412))

(assert (=> b!7001535 d!2182426))

(declare-fun d!2182428 () Bool)

(assert (=> d!2182428 (= (flatMap!2258 lt!2496442 lambda!405494) (dynLambda!27006 lambda!405494 lt!2496457))))

(declare-fun lt!2496738 () Unit!161204)

(assert (=> d!2182428 (= lt!2496738 (choose!52498 lt!2496442 lt!2496457 lambda!405494))))

(assert (=> d!2182428 (= lt!2496442 (set.insert lt!2496457 (as set.empty (Set Context!12536))))))

(assert (=> d!2182428 (= (lemmaFlatMapOnSingletonSet!1773 lt!2496442 lt!2496457 lambda!405494) lt!2496738)))

(declare-fun b_lambda!263737 () Bool)

(assert (=> (not b_lambda!263737) (not d!2182428)))

(declare-fun bs!1864899 () Bool)

(assert (= bs!1864899 d!2182428))

(assert (=> bs!1864899 m!7695930))

(declare-fun m!7696414 () Bool)

(assert (=> bs!1864899 m!7696414))

(declare-fun m!7696416 () Bool)

(assert (=> bs!1864899 m!7696416))

(assert (=> bs!1864899 m!7695926))

(assert (=> b!7001535 d!2182428))

(declare-fun d!2182430 () Bool)

(declare-fun e!4208648 () Bool)

(assert (=> d!2182430 e!4208648))

(declare-fun res!2856325 () Bool)

(assert (=> d!2182430 (=> (not res!2856325) (not e!4208648))))

(declare-fun lt!2496739 () List!67363)

(assert (=> d!2182430 (= res!2856325 (noDuplicate!2545 lt!2496739))))

(assert (=> d!2182430 (= lt!2496739 (choose!52502 lt!2496446))))

(assert (=> d!2182430 (= (toList!10632 lt!2496446) lt!2496739)))

(declare-fun b!7001818 () Bool)

(assert (=> b!7001818 (= e!4208648 (= (content!13320 lt!2496739) lt!2496446))))

(assert (= (and d!2182430 res!2856325) b!7001818))

(declare-fun m!7696418 () Bool)

(assert (=> d!2182430 m!7696418))

(declare-fun m!7696420 () Bool)

(assert (=> d!2182430 m!7696420))

(declare-fun m!7696422 () Bool)

(assert (=> b!7001818 m!7696422))

(assert (=> b!7001543 d!2182430))

(declare-fun bs!1864900 () Bool)

(declare-fun d!2182432 () Bool)

(assert (= bs!1864900 (and d!2182432 b!7001543)))

(declare-fun lambda!405569 () Int)

(assert (=> bs!1864900 (not (= lambda!405569 lambda!405491))))

(assert (=> d!2182432 true))

(declare-fun order!27977 () Int)

(declare-fun dynLambda!27008 (Int Int) Int)

(assert (=> d!2182432 (< (dynLambda!27008 order!27977 lambda!405491) (dynLambda!27008 order!27977 lambda!405569))))

(declare-fun forall!16187 (List!67363 Int) Bool)

(assert (=> d!2182432 (= (exists!3089 lt!2496481 lambda!405491) (not (forall!16187 lt!2496481 lambda!405569)))))

(declare-fun bs!1864901 () Bool)

(assert (= bs!1864901 d!2182432))

(declare-fun m!7696424 () Bool)

(assert (=> bs!1864901 m!7696424))

(assert (=> b!7001543 d!2182432))

(declare-fun bs!1864902 () Bool)

(declare-fun d!2182434 () Bool)

(assert (= bs!1864902 (and d!2182434 b!7001543)))

(declare-fun lambda!405572 () Int)

(assert (=> bs!1864902 (= lambda!405572 lambda!405491)))

(declare-fun bs!1864903 () Bool)

(assert (= bs!1864903 (and d!2182434 d!2182432)))

(assert (=> bs!1864903 (not (= lambda!405572 lambda!405569))))

(assert (=> d!2182434 true))

(assert (=> d!2182434 (exists!3089 lt!2496481 lambda!405572)))

(declare-fun lt!2496742 () Unit!161204)

(declare-fun choose!52506 (List!67363 List!67361) Unit!161204)

(assert (=> d!2182434 (= lt!2496742 (choose!52506 lt!2496481 s!7408))))

(assert (=> d!2182434 (matchZipper!2812 (content!13320 lt!2496481) s!7408)))

(assert (=> d!2182434 (= (lemmaZipperMatchesExistsMatchingContext!241 lt!2496481 s!7408) lt!2496742)))

(declare-fun bs!1864904 () Bool)

(assert (= bs!1864904 d!2182434))

(declare-fun m!7696426 () Bool)

(assert (=> bs!1864904 m!7696426))

(declare-fun m!7696428 () Bool)

(assert (=> bs!1864904 m!7696428))

(declare-fun m!7696430 () Bool)

(assert (=> bs!1864904 m!7696430))

(assert (=> bs!1864904 m!7696430))

(declare-fun m!7696432 () Bool)

(assert (=> bs!1864904 m!7696432))

(assert (=> b!7001543 d!2182434))

(declare-fun d!2182436 () Bool)

(declare-fun c!1299842 () Bool)

(assert (=> d!2182436 (= c!1299842 (isEmpty!39258 s!7408))))

(declare-fun e!4208649 () Bool)

(assert (=> d!2182436 (= (matchZipper!2812 lt!2496474 s!7408) e!4208649)))

(declare-fun b!7001821 () Bool)

(assert (=> b!7001821 (= e!4208649 (nullableZipper!2463 lt!2496474))))

(declare-fun b!7001822 () Bool)

(assert (=> b!7001822 (= e!4208649 (matchZipper!2812 (derivationStepZipper!2752 lt!2496474 (head!14143 s!7408)) (tail!13312 s!7408)))))

(assert (= (and d!2182436 c!1299842) b!7001821))

(assert (= (and d!2182436 (not c!1299842)) b!7001822))

(assert (=> d!2182436 m!7696394))

(declare-fun m!7696434 () Bool)

(assert (=> b!7001821 m!7696434))

(assert (=> b!7001822 m!7696398))

(assert (=> b!7001822 m!7696398))

(declare-fun m!7696436 () Bool)

(assert (=> b!7001822 m!7696436))

(assert (=> b!7001822 m!7696402))

(assert (=> b!7001822 m!7696436))

(assert (=> b!7001822 m!7696402))

(declare-fun m!7696438 () Bool)

(assert (=> b!7001822 m!7696438))

(assert (=> b!7001543 d!2182436))

(declare-fun d!2182438 () Bool)

(declare-fun e!4208652 () Bool)

(assert (=> d!2182438 e!4208652))

(declare-fun res!2856328 () Bool)

(assert (=> d!2182438 (=> (not res!2856328) (not e!4208652))))

(declare-fun lt!2496745 () Context!12536)

(declare-fun dynLambda!27009 (Int Context!12536) Bool)

(assert (=> d!2182438 (= res!2856328 (dynLambda!27009 lambda!405491 lt!2496745))))

(declare-fun getWitness!1195 (List!67363 Int) Context!12536)

(assert (=> d!2182438 (= lt!2496745 (getWitness!1195 (toList!10632 lt!2496446) lambda!405491))))

(declare-fun exists!3091 ((Set Context!12536) Int) Bool)

(assert (=> d!2182438 (exists!3091 lt!2496446 lambda!405491)))

(assert (=> d!2182438 (= (getWitness!1193 lt!2496446 lambda!405491) lt!2496745)))

(declare-fun b!7001825 () Bool)

(assert (=> b!7001825 (= e!4208652 (set.member lt!2496745 lt!2496446))))

(assert (= (and d!2182438 res!2856328) b!7001825))

(declare-fun b_lambda!263739 () Bool)

(assert (=> (not b_lambda!263739) (not d!2182438)))

(declare-fun m!7696440 () Bool)

(assert (=> d!2182438 m!7696440))

(assert (=> d!2182438 m!7695918))

(assert (=> d!2182438 m!7695918))

(declare-fun m!7696442 () Bool)

(assert (=> d!2182438 m!7696442))

(declare-fun m!7696444 () Bool)

(assert (=> d!2182438 m!7696444))

(declare-fun m!7696446 () Bool)

(assert (=> b!7001825 m!7696446))

(assert (=> b!7001543 d!2182438))

(assert (=> b!7001523 d!2182336))

(assert (=> b!7001520 d!2182366))

(declare-fun d!2182440 () Bool)

(assert (=> d!2182440 (= (isEmpty!39258 (_1!37248 lt!2496470)) (is-Nil!67237 (_1!37248 lt!2496470)))))

(assert (=> b!7001541 d!2182440))

(assert (=> b!7001542 d!2182418))

(assert (=> b!7001540 d!2182380))

(declare-fun b!7001826 () Bool)

(declare-fun c!1299846 () Bool)

(declare-fun e!4208654 () Bool)

(assert (=> b!7001826 (= c!1299846 e!4208654)))

(declare-fun res!2856329 () Bool)

(assert (=> b!7001826 (=> (not res!2856329) (not e!4208654))))

(assert (=> b!7001826 (= res!2856329 (is-Concat!26117 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun e!4208658 () (Set Context!12536))

(declare-fun e!4208655 () (Set Context!12536))

(assert (=> b!7001826 (= e!4208658 e!4208655)))

(declare-fun c!1299844 () Bool)

(declare-fun c!1299843 () Bool)

(declare-fun call!635765 () (Set Context!12536))

(declare-fun bm!635760 () Bool)

(declare-fun call!635767 () List!67362)

(assert (=> bm!635760 (= call!635765 (derivationStepZipperDown!1990 (ite c!1299843 (regOne!35057 (h!73686 (exprs!6768 lt!2496457))) (ite c!1299846 (regTwo!35056 (h!73686 (exprs!6768 lt!2496457))) (ite c!1299844 (regOne!35056 (h!73686 (exprs!6768 lt!2496457))) (reg!17601 (h!73686 (exprs!6768 lt!2496457)))))) (ite (or c!1299843 c!1299846) lt!2496460 (Context!12537 call!635767)) (h!73685 s!7408)))))

(declare-fun d!2182442 () Bool)

(declare-fun c!1299845 () Bool)

(assert (=> d!2182442 (= c!1299845 (and (is-ElementMatch!17272 (h!73686 (exprs!6768 lt!2496457))) (= (c!1299758 (h!73686 (exprs!6768 lt!2496457))) (h!73685 s!7408))))))

(declare-fun e!4208656 () (Set Context!12536))

(assert (=> d!2182442 (= (derivationStepZipperDown!1990 (h!73686 (exprs!6768 lt!2496457)) lt!2496460 (h!73685 s!7408)) e!4208656)))

(declare-fun bm!635761 () Bool)

(declare-fun call!635770 () (Set Context!12536))

(declare-fun call!635766 () (Set Context!12536))

(assert (=> bm!635761 (= call!635770 call!635766)))

(declare-fun b!7001827 () Bool)

(declare-fun e!4208657 () (Set Context!12536))

(assert (=> b!7001827 (= e!4208657 call!635770)))

(declare-fun b!7001828 () Bool)

(declare-fun e!4208653 () (Set Context!12536))

(assert (=> b!7001828 (= e!4208653 (as set.empty (Set Context!12536)))))

(declare-fun b!7001829 () Bool)

(declare-fun call!635769 () (Set Context!12536))

(assert (=> b!7001829 (= e!4208655 (set.union call!635769 call!635766))))

(declare-fun b!7001830 () Bool)

(assert (=> b!7001830 (= e!4208656 e!4208658)))

(assert (=> b!7001830 (= c!1299843 (is-Union!17272 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun b!7001831 () Bool)

(assert (=> b!7001831 (= e!4208656 (set.insert lt!2496460 (as set.empty (Set Context!12536))))))

(declare-fun bm!635762 () Bool)

(assert (=> bm!635762 (= call!635766 call!635765)))

(declare-fun b!7001832 () Bool)

(assert (=> b!7001832 (= e!4208654 (nullable!7032 (regOne!35056 (h!73686 (exprs!6768 lt!2496457)))))))

(declare-fun bm!635763 () Bool)

(declare-fun call!635768 () List!67362)

(assert (=> bm!635763 (= call!635767 call!635768)))

(declare-fun b!7001833 () Bool)

(assert (=> b!7001833 (= e!4208655 e!4208657)))

(assert (=> b!7001833 (= c!1299844 (is-Concat!26117 (h!73686 (exprs!6768 lt!2496457))))))

(declare-fun b!7001834 () Bool)

(declare-fun c!1299847 () Bool)

(assert (=> b!7001834 (= c!1299847 (is-Star!17272 (h!73686 (exprs!6768 lt!2496457))))))

(assert (=> b!7001834 (= e!4208657 e!4208653)))

(declare-fun bm!635764 () Bool)

(assert (=> bm!635764 (= call!635769 (derivationStepZipperDown!1990 (ite c!1299843 (regTwo!35057 (h!73686 (exprs!6768 lt!2496457))) (regOne!35056 (h!73686 (exprs!6768 lt!2496457)))) (ite c!1299843 lt!2496460 (Context!12537 call!635768)) (h!73685 s!7408)))))

(declare-fun b!7001835 () Bool)

(assert (=> b!7001835 (= e!4208658 (set.union call!635765 call!635769))))

(declare-fun b!7001836 () Bool)

(assert (=> b!7001836 (= e!4208653 call!635770)))

(declare-fun bm!635765 () Bool)

(assert (=> bm!635765 (= call!635768 ($colon$colon!2507 (exprs!6768 lt!2496460) (ite (or c!1299846 c!1299844) (regTwo!35056 (h!73686 (exprs!6768 lt!2496457))) (h!73686 (exprs!6768 lt!2496457)))))))

(assert (= (and d!2182442 c!1299845) b!7001831))

(assert (= (and d!2182442 (not c!1299845)) b!7001830))

(assert (= (and b!7001830 c!1299843) b!7001835))

(assert (= (and b!7001830 (not c!1299843)) b!7001826))

(assert (= (and b!7001826 res!2856329) b!7001832))

(assert (= (and b!7001826 c!1299846) b!7001829))

(assert (= (and b!7001826 (not c!1299846)) b!7001833))

(assert (= (and b!7001833 c!1299844) b!7001827))

(assert (= (and b!7001833 (not c!1299844)) b!7001834))

(assert (= (and b!7001834 c!1299847) b!7001836))

(assert (= (and b!7001834 (not c!1299847)) b!7001828))

(assert (= (or b!7001827 b!7001836) bm!635763))

(assert (= (or b!7001827 b!7001836) bm!635761))

(assert (= (or b!7001829 bm!635761) bm!635762))

(assert (= (or b!7001829 bm!635763) bm!635765))

(assert (= (or b!7001835 bm!635762) bm!635760))

(assert (= (or b!7001835 b!7001829) bm!635764))

(declare-fun m!7696448 () Bool)

(assert (=> bm!635764 m!7696448))

(declare-fun m!7696450 () Bool)

(assert (=> bm!635760 m!7696450))

(declare-fun m!7696452 () Bool)

(assert (=> bm!635765 m!7696452))

(assert (=> b!7001831 m!7695982))

(assert (=> b!7001832 m!7696298))

(assert (=> b!7001540 d!2182442))

(declare-fun d!2182444 () Bool)

(declare-fun c!1299848 () Bool)

(assert (=> d!2182444 (= c!1299848 (isEmpty!39258 s!7408))))

(declare-fun e!4208659 () Bool)

(assert (=> d!2182444 (= (matchZipper!2812 lt!2496446 s!7408) e!4208659)))

(declare-fun b!7001837 () Bool)

(assert (=> b!7001837 (= e!4208659 (nullableZipper!2463 lt!2496446))))

(declare-fun b!7001838 () Bool)

(assert (=> b!7001838 (= e!4208659 (matchZipper!2812 (derivationStepZipper!2752 lt!2496446 (head!14143 s!7408)) (tail!13312 s!7408)))))

(assert (= (and d!2182444 c!1299848) b!7001837))

(assert (= (and d!2182444 (not c!1299848)) b!7001838))

(assert (=> d!2182444 m!7696394))

(declare-fun m!7696454 () Bool)

(assert (=> b!7001837 m!7696454))

(assert (=> b!7001838 m!7696398))

(assert (=> b!7001838 m!7696398))

(declare-fun m!7696456 () Bool)

(assert (=> b!7001838 m!7696456))

(assert (=> b!7001838 m!7696402))

(assert (=> b!7001838 m!7696456))

(assert (=> b!7001838 m!7696402))

(declare-fun m!7696458 () Bool)

(assert (=> b!7001838 m!7696458))

(assert (=> start!673650 d!2182444))

(declare-fun bs!1864905 () Bool)

(declare-fun d!2182446 () Bool)

(assert (= bs!1864905 (and d!2182446 b!7001524)))

(declare-fun lambda!405577 () Int)

(assert (=> bs!1864905 (= lambda!405577 lambda!405492)))

(assert (=> d!2182446 true))

(assert (=> d!2182446 (= (appendTo!393 z1!570 ct2!306) (map!15555 z1!570 lambda!405577))))

(declare-fun bs!1864906 () Bool)

(assert (= bs!1864906 d!2182446))

(declare-fun m!7696460 () Bool)

(assert (=> bs!1864906 m!7696460))

(assert (=> start!673650 d!2182446))

(declare-fun bs!1864907 () Bool)

(declare-fun d!2182448 () Bool)

(assert (= bs!1864907 (and d!2182448 b!7001524)))

(declare-fun lambda!405578 () Int)

(assert (=> bs!1864907 (= lambda!405578 lambda!405493)))

(declare-fun bs!1864908 () Bool)

(assert (= bs!1864908 (and d!2182448 d!2182362)))

(assert (=> bs!1864908 (= lambda!405578 lambda!405564)))

(assert (=> d!2182448 (= (inv!86040 ct2!306) (forall!16186 (exprs!6768 ct2!306) lambda!405578))))

(declare-fun bs!1864909 () Bool)

(assert (= bs!1864909 d!2182448))

(declare-fun m!7696462 () Bool)

(assert (=> bs!1864909 m!7696462))

(assert (=> start!673650 d!2182448))

(declare-fun d!2182450 () Bool)

(declare-fun c!1299850 () Bool)

(assert (=> d!2182450 (= c!1299850 (isEmpty!39258 (t!381114 s!7408)))))

(declare-fun e!4208660 () Bool)

(assert (=> d!2182450 (= (matchZipper!2812 lt!2496476 (t!381114 s!7408)) e!4208660)))

(declare-fun b!7001839 () Bool)

(assert (=> b!7001839 (= e!4208660 (nullableZipper!2463 lt!2496476))))

(declare-fun b!7001840 () Bool)

(assert (=> b!7001840 (= e!4208660 (matchZipper!2812 (derivationStepZipper!2752 lt!2496476 (head!14143 (t!381114 s!7408))) (tail!13312 (t!381114 s!7408))))))

(assert (= (and d!2182450 c!1299850) b!7001839))

(assert (= (and d!2182450 (not c!1299850)) b!7001840))

(assert (=> d!2182450 m!7696248))

(declare-fun m!7696464 () Bool)

(assert (=> b!7001839 m!7696464))

(assert (=> b!7001840 m!7696252))

(assert (=> b!7001840 m!7696252))

(declare-fun m!7696466 () Bool)

(assert (=> b!7001840 m!7696466))

(assert (=> b!7001840 m!7696256))

(assert (=> b!7001840 m!7696466))

(assert (=> b!7001840 m!7696256))

(declare-fun m!7696468 () Bool)

(assert (=> b!7001840 m!7696468))

(assert (=> b!7001519 d!2182450))

(declare-fun d!2182452 () Bool)

(declare-fun c!1299851 () Bool)

(assert (=> d!2182452 (= c!1299851 (isEmpty!39258 (t!381114 s!7408)))))

(declare-fun e!4208661 () Bool)

(assert (=> d!2182452 (= (matchZipper!2812 lt!2496467 (t!381114 s!7408)) e!4208661)))

(declare-fun b!7001841 () Bool)

(assert (=> b!7001841 (= e!4208661 (nullableZipper!2463 lt!2496467))))

(declare-fun b!7001842 () Bool)

(assert (=> b!7001842 (= e!4208661 (matchZipper!2812 (derivationStepZipper!2752 lt!2496467 (head!14143 (t!381114 s!7408))) (tail!13312 (t!381114 s!7408))))))

(assert (= (and d!2182452 c!1299851) b!7001841))

(assert (= (and d!2182452 (not c!1299851)) b!7001842))

(assert (=> d!2182452 m!7696248))

(declare-fun m!7696470 () Bool)

(assert (=> b!7001841 m!7696470))

(assert (=> b!7001842 m!7696252))

(assert (=> b!7001842 m!7696252))

(declare-fun m!7696472 () Bool)

(assert (=> b!7001842 m!7696472))

(assert (=> b!7001842 m!7696256))

(assert (=> b!7001842 m!7696472))

(assert (=> b!7001842 m!7696256))

(declare-fun m!7696474 () Bool)

(assert (=> b!7001842 m!7696474))

(assert (=> b!7001519 d!2182452))

(declare-fun e!4208662 () Bool)

(declare-fun d!2182454 () Bool)

(assert (=> d!2182454 (= (matchZipper!2812 (set.union lt!2496497 lt!2496469) (t!381114 s!7408)) e!4208662)))

(declare-fun res!2856330 () Bool)

(assert (=> d!2182454 (=> res!2856330 e!4208662)))

(assert (=> d!2182454 (= res!2856330 (matchZipper!2812 lt!2496497 (t!381114 s!7408)))))

(declare-fun lt!2496748 () Unit!161204)

(assert (=> d!2182454 (= lt!2496748 (choose!52499 lt!2496497 lt!2496469 (t!381114 s!7408)))))

(assert (=> d!2182454 (= (lemmaZipperConcatMatchesSameAsBothZippers!1445 lt!2496497 lt!2496469 (t!381114 s!7408)) lt!2496748)))

(declare-fun b!7001843 () Bool)

(assert (=> b!7001843 (= e!4208662 (matchZipper!2812 lt!2496469 (t!381114 s!7408)))))

(assert (= (and d!2182454 (not res!2856330)) b!7001843))

(declare-fun m!7696476 () Bool)

(assert (=> d!2182454 m!7696476))

(assert (=> d!2182454 m!7695940))

(declare-fun m!7696478 () Bool)

(assert (=> d!2182454 m!7696478))

(assert (=> b!7001843 m!7695876))

(assert (=> b!7001519 d!2182454))

(declare-fun d!2182456 () Bool)

(declare-fun c!1299852 () Bool)

(assert (=> d!2182456 (= c!1299852 (isEmpty!39258 (t!381114 s!7408)))))

(declare-fun e!4208663 () Bool)

(assert (=> d!2182456 (= (matchZipper!2812 lt!2496497 (t!381114 s!7408)) e!4208663)))

(declare-fun b!7001844 () Bool)

(assert (=> b!7001844 (= e!4208663 (nullableZipper!2463 lt!2496497))))

(declare-fun b!7001845 () Bool)

(assert (=> b!7001845 (= e!4208663 (matchZipper!2812 (derivationStepZipper!2752 lt!2496497 (head!14143 (t!381114 s!7408))) (tail!13312 (t!381114 s!7408))))))

(assert (= (and d!2182456 c!1299852) b!7001844))

(assert (= (and d!2182456 (not c!1299852)) b!7001845))

(assert (=> d!2182456 m!7696248))

(declare-fun m!7696480 () Bool)

(assert (=> b!7001844 m!7696480))

(assert (=> b!7001845 m!7696252))

(assert (=> b!7001845 m!7696252))

(declare-fun m!7696482 () Bool)

(assert (=> b!7001845 m!7696482))

(assert (=> b!7001845 m!7696256))

(assert (=> b!7001845 m!7696482))

(assert (=> b!7001845 m!7696256))

(declare-fun m!7696484 () Bool)

(assert (=> b!7001845 m!7696484))

(assert (=> b!7001519 d!2182456))

(assert (=> b!7001519 d!2182368))

(declare-fun b!7001850 () Bool)

(declare-fun e!4208666 () Bool)

(declare-fun tp!1931223 () Bool)

(declare-fun tp!1931224 () Bool)

(assert (=> b!7001850 (= e!4208666 (and tp!1931223 tp!1931224))))

(assert (=> b!7001534 (= tp!1931206 e!4208666)))

(assert (= (and b!7001534 (is-Cons!67238 (exprs!6768 ct2!306))) b!7001850))

(declare-fun b!7001851 () Bool)

(declare-fun e!4208667 () Bool)

(declare-fun tp!1931225 () Bool)

(declare-fun tp!1931226 () Bool)

(assert (=> b!7001851 (= e!4208667 (and tp!1931225 tp!1931226))))

(assert (=> b!7001521 (= tp!1931205 e!4208667)))

(assert (= (and b!7001521 (is-Cons!67238 (exprs!6768 setElem!48120))) b!7001851))

(declare-fun condSetEmpty!48126 () Bool)

(assert (=> setNonEmpty!48120 (= condSetEmpty!48126 (= setRest!48120 (as set.empty (Set Context!12536))))))

(declare-fun setRes!48126 () Bool)

(assert (=> setNonEmpty!48120 (= tp!1931204 setRes!48126)))

(declare-fun setIsEmpty!48126 () Bool)

(assert (=> setIsEmpty!48126 setRes!48126))

(declare-fun e!4208670 () Bool)

(declare-fun setElem!48126 () Context!12536)

(declare-fun tp!1931232 () Bool)

(declare-fun setNonEmpty!48126 () Bool)

(assert (=> setNonEmpty!48126 (= setRes!48126 (and tp!1931232 (inv!86040 setElem!48126) e!4208670))))

(declare-fun setRest!48126 () (Set Context!12536))

(assert (=> setNonEmpty!48126 (= setRest!48120 (set.union (set.insert setElem!48126 (as set.empty (Set Context!12536))) setRest!48126))))

(declare-fun b!7001856 () Bool)

(declare-fun tp!1931231 () Bool)

(assert (=> b!7001856 (= e!4208670 tp!1931231)))

(assert (= (and setNonEmpty!48120 condSetEmpty!48126) setIsEmpty!48126))

(assert (= (and setNonEmpty!48120 (not condSetEmpty!48126)) setNonEmpty!48126))

(assert (= setNonEmpty!48126 b!7001856))

(declare-fun m!7696486 () Bool)

(assert (=> setNonEmpty!48126 m!7696486))

(declare-fun b!7001861 () Bool)

(declare-fun e!4208673 () Bool)

(declare-fun tp!1931235 () Bool)

(assert (=> b!7001861 (= e!4208673 (and tp_is_empty!43769 tp!1931235))))

(assert (=> b!7001530 (= tp!1931203 e!4208673)))

(assert (= (and b!7001530 (is-Cons!67237 (t!381114 s!7408))) b!7001861))

(declare-fun b_lambda!263741 () Bool)

(assert (= b_lambda!263729 (or b!7001524 b_lambda!263741)))

(declare-fun bs!1864910 () Bool)

(declare-fun d!2182458 () Bool)

(assert (= bs!1864910 (and d!2182458 b!7001524)))

(declare-fun lt!2496749 () Unit!161204)

(assert (=> bs!1864910 (= lt!2496749 (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496701) (exprs!6768 ct2!306) lambda!405493))))

(assert (=> bs!1864910 (= (dynLambda!27007 lambda!405492 lt!2496701) (Context!12537 (++!15246 (exprs!6768 lt!2496701) (exprs!6768 ct2!306))))))

(declare-fun m!7696488 () Bool)

(assert (=> bs!1864910 m!7696488))

(declare-fun m!7696490 () Bool)

(assert (=> bs!1864910 m!7696490))

(assert (=> d!2182360 d!2182458))

(declare-fun b_lambda!263743 () Bool)

(assert (= b_lambda!263727 (or b!7001527 b_lambda!263743)))

(declare-fun bs!1864911 () Bool)

(declare-fun d!2182460 () Bool)

(assert (= bs!1864911 (and d!2182460 b!7001527)))

(assert (=> bs!1864911 (= (dynLambda!27006 lambda!405494 lt!2496484) (derivationStepZipperUp!1922 lt!2496484 (h!73685 s!7408)))))

(assert (=> bs!1864911 m!7695952))

(assert (=> d!2182340 d!2182460))

(declare-fun b_lambda!263745 () Bool)

(assert (= b_lambda!263737 (or b!7001527 b_lambda!263745)))

(declare-fun bs!1864912 () Bool)

(declare-fun d!2182462 () Bool)

(assert (= bs!1864912 (and d!2182462 b!7001527)))

(assert (=> bs!1864912 (= (dynLambda!27006 lambda!405494 lt!2496457) (derivationStepZipperUp!1922 lt!2496457 (h!73685 s!7408)))))

(assert (=> bs!1864912 m!7695934))

(assert (=> d!2182428 d!2182462))

(declare-fun b_lambda!263747 () Bool)

(assert (= b_lambda!263733 (or b!7001527 b_lambda!263747)))

(declare-fun bs!1864913 () Bool)

(declare-fun d!2182464 () Bool)

(assert (= bs!1864913 (and d!2182464 b!7001527)))

(assert (=> bs!1864913 (= (dynLambda!27006 lambda!405494 lt!2496460) (derivationStepZipperUp!1922 lt!2496460 (h!73685 s!7408)))))

(assert (=> bs!1864913 m!7695872))

(assert (=> d!2182382 d!2182464))

(declare-fun b_lambda!263749 () Bool)

(assert (= b_lambda!263735 (or b!7001524 b_lambda!263749)))

(declare-fun bs!1864914 () Bool)

(declare-fun d!2182466 () Bool)

(assert (= bs!1864914 (and d!2182466 b!7001524)))

(declare-fun lt!2496750 () Unit!161204)

(assert (=> bs!1864914 (= lt!2496750 (lemmaConcatPreservesForall!608 (exprs!6768 lt!2496460) (exprs!6768 ct2!306) lambda!405493))))

(assert (=> bs!1864914 (= (dynLambda!27007 lambda!405492 lt!2496460) (Context!12537 (++!15246 (exprs!6768 lt!2496460) (exprs!6768 ct2!306))))))

(declare-fun m!7696492 () Bool)

(assert (=> bs!1864914 m!7696492))

(declare-fun m!7696494 () Bool)

(assert (=> bs!1864914 m!7696494))

(assert (=> d!2182408 d!2182466))

(declare-fun b_lambda!263751 () Bool)

(assert (= b_lambda!263739 (or b!7001543 b_lambda!263751)))

(declare-fun bs!1864915 () Bool)

(declare-fun d!2182468 () Bool)

(assert (= bs!1864915 (and d!2182468 b!7001543)))

(assert (=> bs!1864915 (= (dynLambda!27009 lambda!405491 lt!2496745) (matchZipper!2812 (set.insert lt!2496745 (as set.empty (Set Context!12536))) s!7408))))

(declare-fun m!7696496 () Bool)

(assert (=> bs!1864915 m!7696496))

(assert (=> bs!1864915 m!7696496))

(declare-fun m!7696498 () Bool)

(assert (=> bs!1864915 m!7696498))

(assert (=> d!2182438 d!2182468))

(declare-fun b_lambda!263753 () Bool)

(assert (= b_lambda!263731 (or b!7001527 b_lambda!263753)))

(declare-fun bs!1864916 () Bool)

(declare-fun d!2182470 () Bool)

(assert (= bs!1864916 (and d!2182470 b!7001527)))

(assert (=> bs!1864916 (= (dynLambda!27006 lambda!405494 lt!2496480) (derivationStepZipperUp!1922 lt!2496480 (h!73685 s!7408)))))

(assert (=> bs!1864916 m!7695866))

(assert (=> d!2182374 d!2182470))

(push 1)

(assert (not d!2182362))

(assert (not b!7001837))

(assert (not b!7001842))

(assert (not b!7001803))

(assert (not d!2182408))

(assert (not b!7001681))

(assert (not d!2182430))

(assert (not b!7001810))

(assert (not b!7001821))

(assert (not b!7001722))

(assert (not bs!1864910))

(assert (not b!7001789))

(assert (not b!7001838))

(assert (not b!7001856))

(assert (not b!7001694))

(assert (not bm!635758))

(assert (not d!2182410))

(assert (not bs!1864911))

(assert (not b!7001683))

(assert (not b!7001788))

(assert (not bm!635765))

(assert (not b!7001759))

(assert (not b!7001758))

(assert (not d!2182374))

(assert (not b!7001675))

(assert (not d!2182450))

(assert (not b_lambda!263751))

(assert (not b!7001818))

(assert (not b!7001844))

(assert (not d!2182370))

(assert (not d!2182390))

(assert (not bm!635740))

(assert (not d!2182364))

(assert (not b!7001805))

(assert (not d!2182372))

(assert (not b!7001794))

(assert (not b_lambda!263749))

(assert tp_is_empty!43769)

(assert (not bm!635738))

(assert (not d!2182452))

(assert (not d!2182420))

(assert (not d!2182448))

(assert (not b!7001713))

(assert (not b_lambda!263745))

(assert (not d!2182392))

(assert (not b_lambda!263741))

(assert (not bm!635759))

(assert (not d!2182434))

(assert (not d!2182344))

(assert (not b!7001812))

(assert (not b!7001682))

(assert (not d!2182422))

(assert (not bm!635760))

(assert (not d!2182454))

(assert (not b!7001680))

(assert (not bs!1864913))

(assert (not b_lambda!263747))

(assert (not d!2182346))

(assert (not b!7001841))

(assert (not d!2182350))

(assert (not d!2182436))

(assert (not b!7001676))

(assert (not d!2182444))

(assert (not b!7001840))

(assert (not d!2182428))

(assert (not d!2182404))

(assert (not b!7001710))

(assert (not d!2182432))

(assert (not d!2182360))

(assert (not d!2182400))

(assert (not b_lambda!263753))

(assert (not b!7001669))

(assert (not d!2182334))

(assert (not b!7001712))

(assert (not bs!1864914))

(assert (not b!7001798))

(assert (not d!2182358))

(assert (not b!7001816))

(assert (not b!7001793))

(assert (not b!7001832))

(assert (not d!2182382))

(assert (not b!7001679))

(assert (not d!2182336))

(assert (not b!7001811))

(assert (not bs!1864912))

(assert (not b!7001693))

(assert (not setNonEmpty!48126))

(assert (not b!7001792))

(assert (not b!7001752))

(assert (not b!7001709))

(assert (not b!7001786))

(assert (not d!2182414))

(assert (not d!2182396))

(assert (not d!2182348))

(assert (not b!7001765))

(assert (not d!2182338))

(assert (not b!7001807))

(assert (not d!2182446))

(assert (not b!7001861))

(assert (not b!7001790))

(assert (not b!7001656))

(assert (not b!7001850))

(assert (not d!2182438))

(assert (not b!7001720))

(assert (not b!7001845))

(assert (not b_lambda!263743))

(assert (not d!2182398))

(assert (not d!2182378))

(assert (not d!2182368))

(assert (not bm!635764))

(assert (not bm!635739))

(assert (not b!7001851))

(assert (not b!7001795))

(assert (not b!7001657))

(assert (not bs!1864916))

(assert (not d!2182456))

(assert (not d!2182340))

(assert (not b!7001843))

(assert (not b!7001671))

(assert (not b!7001717))

(assert (not d!2182354))

(assert (not b!7001809))

(assert (not d!2182418))

(assert (not b!7001715))

(assert (not d!2182426))

(assert (not bs!1864915))

(assert (not d!2182366))

(assert (not b!7001839))

(assert (not b!7001814))

(assert (not d!2182386))

(assert (not b!7001822))

(assert (not bm!635757))

(assert (not bm!635753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

